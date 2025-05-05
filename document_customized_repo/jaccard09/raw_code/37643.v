module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_16_address0,DATA_y_16_ce0,DATA_y_16_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_17_address0,DATA_y_17_ce0,DATA_y_17_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_18_address0,DATA_y_18_ce0,DATA_y_18_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_19_address0,DATA_y_19_ce0,DATA_y_19_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_20_address0,DATA_y_20_ce0,DATA_y_20_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_21_address0,DATA_y_21_ce0,DATA_y_21_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_22_address0,DATA_y_22_ce0,DATA_y_22_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_23_address0,DATA_y_23_ce0,DATA_y_23_q0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_16_address0,DATA_x_16_ce0,DATA_x_16_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_17_address0,DATA_x_17_ce0,DATA_x_17_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_18_address0,DATA_x_18_ce0,DATA_x_18_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_19_address0,DATA_x_19_ce0,DATA_x_19_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_20_address0,DATA_x_20_ce0,DATA_x_20_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_21_address0,DATA_x_21_ce0,DATA_x_21_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_22_address0,DATA_x_22_ce0,DATA_x_22_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_23_address0,DATA_x_23_ce0,DATA_x_23_q0,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_q0,DATA_y_24_address0,DATA_y_24_ce0,DATA_y_24_q0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_q0,DATA_y_25_address0,DATA_y_25_ce0,DATA_y_25_q0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_q0,DATA_y_26_address0,DATA_y_26_ce0,DATA_y_26_q0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_q0,DATA_y_27_address0,DATA_y_27_ce0,DATA_y_27_q0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_q0,DATA_y_28_address0,DATA_y_28_ce0,DATA_y_28_q0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_q0,DATA_y_29_address0,DATA_y_29_ce0,DATA_y_29_q0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_q0,DATA_y_30_address0,DATA_y_30_ce0,DATA_y_30_q0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_q0,DATA_y_31_address0,DATA_y_31_ce0,DATA_y_31_q0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_24_address0,DATA_x_24_ce0,DATA_x_24_q0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_25_address0,DATA_x_25_ce0,DATA_x_25_q0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_26_address0,DATA_x_26_ce0,DATA_x_26_q0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_27_address0,DATA_x_27_ce0,DATA_x_27_q0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_28_address0,DATA_x_28_ce0,DATA_x_28_q0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_29_address0,DATA_x_29_ce0,DATA_x_29_q0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_30_address0,DATA_x_30_ce0,DATA_x_30_q0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,DATA_x_31_address0,DATA_x_31_ce0,DATA_x_31_q0,grp_fu_11139_p_din0,grp_fu_11139_p_din1,grp_fu_11139_p_opcode,grp_fu_11139_p_dout0,grp_fu_11139_p_ce,grp_fu_11143_p_din0,grp_fu_11143_p_din1,grp_fu_11143_p_opcode,grp_fu_11143_p_dout0,grp_fu_11143_p_ce,grp_fu_11147_p_din0,grp_fu_11147_p_din1,grp_fu_11147_p_opcode,grp_fu_11147_p_dout0,grp_fu_11147_p_ce,grp_fu_11151_p_din0,grp_fu_11151_p_din1,grp_fu_11151_p_opcode,grp_fu_11151_p_dout0,grp_fu_11151_p_ce,grp_fu_11155_p_din0,grp_fu_11155_p_din1,grp_fu_11155_p_opcode,grp_fu_11155_p_dout0,grp_fu_11155_p_ce,grp_fu_11159_p_din0,grp_fu_11159_p_din1,grp_fu_11159_p_opcode,grp_fu_11159_p_dout0,grp_fu_11159_p_ce,grp_fu_11163_p_din0,grp_fu_11163_p_din1,grp_fu_11163_p_opcode,grp_fu_11163_p_dout0,grp_fu_11163_p_ce,grp_fu_11167_p_din0,grp_fu_11167_p_din1,grp_fu_11167_p_opcode,grp_fu_11167_p_dout0,grp_fu_11167_p_ce,grp_fu_11171_p_din0,grp_fu_11171_p_din1,grp_fu_11171_p_opcode,grp_fu_11171_p_dout0,grp_fu_11171_p_ce,grp_fu_11175_p_din0,grp_fu_11175_p_din1,grp_fu_11175_p_opcode,grp_fu_11175_p_dout0,grp_fu_11175_p_ce,grp_fu_11179_p_din0,grp_fu_11179_p_din1,grp_fu_11179_p_opcode,grp_fu_11179_p_dout0,grp_fu_11179_p_ce,grp_fu_11183_p_din0,grp_fu_11183_p_din1,grp_fu_11183_p_opcode,grp_fu_11183_p_dout0,grp_fu_11183_p_ce,grp_fu_11187_p_din0,grp_fu_11187_p_din1,grp_fu_11187_p_opcode,grp_fu_11187_p_dout0,grp_fu_11187_p_ce,grp_fu_11191_p_din0,grp_fu_11191_p_din1,grp_fu_11191_p_opcode,grp_fu_11191_p_dout0,grp_fu_11191_p_ce,grp_fu_11195_p_din0,grp_fu_11195_p_din1,grp_fu_11195_p_opcode,grp_fu_11195_p_dout0,grp_fu_11195_p_ce,grp_fu_11236_p_din0,grp_fu_11236_p_din1,grp_fu_11236_p_opcode,grp_fu_11236_p_dout0,grp_fu_11236_p_ce,grp_fu_11240_p_din0,grp_fu_11240_p_din1,grp_fu_11240_p_opcode,grp_fu_11240_p_dout0,grp_fu_11240_p_ce,grp_fu_11244_p_din0,grp_fu_11244_p_din1,grp_fu_11244_p_opcode,grp_fu_11244_p_dout0,grp_fu_11244_p_ce,grp_fu_11199_p_din0,grp_fu_11199_p_din1,grp_fu_11199_p_dout0,grp_fu_11199_p_ce,grp_fu_11203_p_din0,grp_fu_11203_p_din1,grp_fu_11203_p_dout0,grp_fu_11203_p_ce,grp_fu_11207_p_din0,grp_fu_11207_p_din1,grp_fu_11207_p_dout0,grp_fu_11207_p_ce,grp_fu_11248_p_din0,grp_fu_11248_p_din1,grp_fu_11248_p_dout0,grp_fu_11248_p_ce); 
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
output  [3:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [3:0] DATA_y_16_address0;
output   DATA_y_16_ce0;
input  [63:0] DATA_y_16_q0;
output  [3:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [3:0] DATA_y_17_address0;
output   DATA_y_17_ce0;
input  [63:0] DATA_y_17_q0;
output  [3:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [3:0] DATA_y_18_address0;
output   DATA_y_18_ce0;
input  [63:0] DATA_y_18_q0;
output  [3:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [3:0] DATA_y_19_address0;
output   DATA_y_19_ce0;
input  [63:0] DATA_y_19_q0;
output  [3:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [3:0] DATA_y_20_address0;
output   DATA_y_20_ce0;
input  [63:0] DATA_y_20_q0;
output  [3:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [3:0] DATA_y_21_address0;
output   DATA_y_21_ce0;
input  [63:0] DATA_y_21_q0;
output  [3:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [3:0] DATA_y_22_address0;
output   DATA_y_22_ce0;
input  [63:0] DATA_y_22_q0;
output  [3:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [3:0] DATA_y_23_address0;
output   DATA_y_23_ce0;
input  [63:0] DATA_y_23_q0;
output  [3:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [3:0] DATA_x_16_address0;
output   DATA_x_16_ce0;
input  [63:0] DATA_x_16_q0;
output  [3:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [3:0] DATA_x_17_address0;
output   DATA_x_17_ce0;
input  [63:0] DATA_x_17_q0;
output  [3:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [3:0] DATA_x_18_address0;
output   DATA_x_18_ce0;
input  [63:0] DATA_x_18_q0;
output  [3:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [3:0] DATA_x_19_address0;
output   DATA_x_19_ce0;
input  [63:0] DATA_x_19_q0;
output  [3:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [3:0] DATA_x_20_address0;
output   DATA_x_20_ce0;
input  [63:0] DATA_x_20_q0;
output  [3:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [3:0] DATA_x_21_address0;
output   DATA_x_21_ce0;
input  [63:0] DATA_x_21_q0;
output  [3:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [3:0] DATA_x_22_address0;
output   DATA_x_22_ce0;
input  [63:0] DATA_x_22_q0;
output  [3:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [3:0] DATA_x_23_address0;
output   DATA_x_23_ce0;
input  [63:0] DATA_x_23_q0;
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
output  [3:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
input  [63:0] DATA_y_8_q0;
output  [3:0] DATA_y_24_address0;
output   DATA_y_24_ce0;
input  [63:0] DATA_y_24_q0;
output  [3:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
input  [63:0] DATA_y_9_q0;
output  [3:0] DATA_y_25_address0;
output   DATA_y_25_ce0;
input  [63:0] DATA_y_25_q0;
output  [3:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
input  [63:0] DATA_y_10_q0;
output  [3:0] DATA_y_26_address0;
output   DATA_y_26_ce0;
input  [63:0] DATA_y_26_q0;
output  [3:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
input  [63:0] DATA_y_11_q0;
output  [3:0] DATA_y_27_address0;
output   DATA_y_27_ce0;
input  [63:0] DATA_y_27_q0;
output  [3:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
input  [63:0] DATA_y_12_q0;
output  [3:0] DATA_y_28_address0;
output   DATA_y_28_ce0;
input  [63:0] DATA_y_28_q0;
output  [3:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
input  [63:0] DATA_y_13_q0;
output  [3:0] DATA_y_29_address0;
output   DATA_y_29_ce0;
input  [63:0] DATA_y_29_q0;
output  [3:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
input  [63:0] DATA_y_14_q0;
output  [3:0] DATA_y_30_address0;
output   DATA_y_30_ce0;
input  [63:0] DATA_y_30_q0;
output  [3:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
input  [63:0] DATA_y_15_q0;
output  [3:0] DATA_y_31_address0;
output   DATA_y_31_ce0;
input  [63:0] DATA_y_31_q0;
output  [3:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
input  [63:0] DATA_x_8_q0;
output  [3:0] DATA_x_24_address0;
output   DATA_x_24_ce0;
input  [63:0] DATA_x_24_q0;
output  [3:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
input  [63:0] DATA_x_9_q0;
output  [3:0] DATA_x_25_address0;
output   DATA_x_25_ce0;
input  [63:0] DATA_x_25_q0;
output  [3:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
input  [63:0] DATA_x_10_q0;
output  [3:0] DATA_x_26_address0;
output   DATA_x_26_ce0;
input  [63:0] DATA_x_26_q0;
output  [3:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
input  [63:0] DATA_x_11_q0;
output  [3:0] DATA_x_27_address0;
output   DATA_x_27_ce0;
input  [63:0] DATA_x_27_q0;
output  [3:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
input  [63:0] DATA_x_12_q0;
output  [3:0] DATA_x_28_address0;
output   DATA_x_28_ce0;
input  [63:0] DATA_x_28_q0;
output  [3:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
input  [63:0] DATA_x_13_q0;
output  [3:0] DATA_x_29_address0;
output   DATA_x_29_ce0;
input  [63:0] DATA_x_29_q0;
output  [3:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
input  [63:0] DATA_x_14_q0;
output  [3:0] DATA_x_30_address0;
output   DATA_x_30_ce0;
input  [63:0] DATA_x_30_q0;
output  [3:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
input  [63:0] DATA_x_15_q0;
output  [3:0] DATA_x_31_address0;
output   DATA_x_31_ce0;
input  [63:0] DATA_x_31_q0;
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
output  [63:0] grp_fu_11236_p_din0;
output  [63:0] grp_fu_11236_p_din1;
output  [1:0] grp_fu_11236_p_opcode;
input  [63:0] grp_fu_11236_p_dout0;
output   grp_fu_11236_p_ce;
output  [63:0] grp_fu_11240_p_din0;
output  [63:0] grp_fu_11240_p_din1;
output  [1:0] grp_fu_11240_p_opcode;
input  [63:0] grp_fu_11240_p_dout0;
output   grp_fu_11240_p_ce;
output  [63:0] grp_fu_11244_p_din0;
output  [63:0] grp_fu_11244_p_din1;
output  [1:0] grp_fu_11244_p_opcode;
input  [63:0] grp_fu_11244_p_dout0;
output   grp_fu_11244_p_ce;
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
output  [63:0] grp_fu_11248_p_din0;
output  [63:0] grp_fu_11248_p_din1;
input  [63:0] grp_fu_11248_p_dout0;
output   grp_fu_11248_p_ce;
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
reg   [0:0] tmp_reg_2879;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1416;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1422;
reg   [63:0] reg_1428;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_1433;
reg   [63:0] reg_1438;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_1444;
reg   [6:0] tid_5_reg_2865;
reg   [6:0] tid_5_reg_2865_pp0_iter1_reg;
reg   [6:0] tid_5_reg_2865_pp0_iter2_reg;
reg   [6:0] tid_5_reg_2865_pp0_iter3_reg;
reg   [6:0] tid_5_reg_2865_pp0_iter4_reg;
reg   [6:0] tid_5_reg_2865_pp0_iter5_reg;
wire   [63:0] c0_y_fu_1553_p3;
reg   [63:0] c0_y_reg_3203;
wire   [63:0] c0_y_96_fu_1561_p3;
reg   [63:0] c0_y_96_reg_3209;
wire   [63:0] c0_y_98_fu_1569_p3;
reg   [63:0] c0_y_98_reg_3215;
wire   [63:0] c0_y_99_fu_1577_p3;
reg   [63:0] c0_y_99_reg_3220;
wire   [63:0] select_ln371_fu_1585_p3;
reg   [63:0] select_ln371_reg_3226;
wire   [63:0] select_ln372_fu_1593_p3;
reg   [63:0] select_ln372_reg_3232;
wire   [63:0] select_ln373_fu_1601_p3;
reg   [63:0] select_ln373_reg_3238;
wire   [63:0] select_ln374_fu_1609_p3;
reg   [63:0] select_ln374_reg_3243;
wire   [63:0] c0_x_fu_1617_p3;
reg   [63:0] c0_x_reg_3249;
wire   [63:0] c0_x_96_fu_1625_p3;
reg   [63:0] c0_x_96_reg_3255;
wire   [63:0] c0_x_98_fu_1633_p3;
reg   [63:0] c0_x_98_reg_3261;
wire   [63:0] c0_x_99_fu_1641_p3;
reg   [63:0] c0_x_99_reg_3266;
wire   [63:0] select_ln380_fu_1649_p3;
reg   [63:0] select_ln380_reg_3272;
wire   [63:0] select_ln381_fu_1657_p3;
reg   [63:0] select_ln381_reg_3278;
wire   [63:0] select_ln382_fu_1665_p3;
reg   [63:0] select_ln382_reg_3284;
wire   [63:0] select_ln383_fu_1673_p3;
reg   [63:0] select_ln383_reg_3289;
wire   [63:0] c0_y_106_fu_1681_p3;
reg   [63:0] c0_y_106_reg_3295;
wire   [63:0] c0_y_108_fu_1689_p3;
reg   [63:0] c0_y_108_reg_3301;
wire   [63:0] c0_y_110_fu_1697_p3;
reg   [63:0] c0_y_110_reg_3307;
wire   [63:0] c0_y_111_fu_1705_p3;
reg   [63:0] c0_y_111_reg_3313;
wire   [63:0] select_ln371_1_fu_1713_p3;
reg   [63:0] select_ln371_1_reg_3319;
wire   [63:0] select_ln372_1_fu_1721_p3;
reg   [63:0] select_ln372_1_reg_3325;
wire   [63:0] select_ln373_1_fu_1729_p3;
reg   [63:0] select_ln373_1_reg_3331;
wire   [63:0] select_ln374_1_fu_1737_p3;
reg   [63:0] select_ln374_1_reg_3337;
wire   [63:0] c0_x_106_fu_1745_p3;
reg   [63:0] c0_x_106_reg_3343;
wire   [63:0] c0_x_108_fu_1753_p3;
reg   [63:0] c0_x_108_reg_3349;
wire   [63:0] c0_x_110_fu_1761_p3;
reg   [63:0] c0_x_110_reg_3355;
wire   [63:0] c0_x_111_fu_1769_p3;
reg   [63:0] c0_x_111_reg_3361;
wire   [63:0] select_ln380_1_fu_1777_p3;
reg   [63:0] select_ln380_1_reg_3367;
wire   [63:0] select_ln381_1_fu_1785_p3;
reg   [63:0] select_ln381_1_reg_3373;
wire   [63:0] select_ln382_1_fu_1793_p3;
reg   [63:0] select_ln382_1_reg_3379;
wire   [63:0] select_ln383_1_fu_1801_p3;
reg   [63:0] select_ln383_1_reg_3385;
reg   [63:0] c0_x_97_reg_3391;
reg   [63:0] c0_y_97_reg_3397;
reg   [63:0] tmp_1_reg_3403;
reg   [63:0] sub_reg_3409;
reg   [63:0] tmp_1_23_reg_3415;
reg   [63:0] sub12_reg_3421;
reg   [63:0] add12_reg_3427;
reg   [63:0] add13_reg_3433;
reg   [63:0] c0_x_109_reg_3439;
reg   [63:0] c0_y_109_reg_3445;
reg   [63:0] tmp_1_27_reg_3451;
reg   [63:0] sub1591_1_reg_3457;
reg   [63:0] tmp_1_25_reg_3463;
reg   [63:0] sub1607_1_reg_3469;
reg   [63:0] c0_x_101_reg_3475;
reg   [63:0] c0_y_101_reg_3481;
reg   [63:0] c0_x_95_reg_3487;
reg   [63:0] c0_x_95_reg_3487_pp0_iter1_reg;
reg   [63:0] c0_y_95_reg_3493;
reg   [63:0] c0_y_95_reg_3493_pp0_iter1_reg;
reg   [63:0] add_reg_3499;
reg   [63:0] add11_reg_3505;
wire   [63:0] bitcast_ln386_1_fu_1838_p1;
wire   [63:0] bitcast_ln386_3_fu_1872_p1;
wire   [63:0] bitcast_ln386_9_fu_1907_p1;
wire   [63:0] bitcast_ln386_11_fu_1943_p1;
reg   [63:0] c0_x_113_reg_3533;
reg   [63:0] c0_y_113_reg_3539;
reg   [63:0] c0_x_107_reg_3545;
reg   [63:0] c0_x_107_reg_3545_pp0_iter1_reg;
reg   [63:0] c0_y_107_reg_3551;
reg   [63:0] c0_y_107_reg_3551_pp0_iter1_reg;
reg   [63:0] add1598_1_reg_3557;
reg   [63:0] add1601_1_reg_3563;
reg   [63:0] add1614_1_reg_3569;
reg   [63:0] add1617_1_reg_3575;
wire   [63:0] bitcast_ln386_21_fu_1978_p1;
wire   [63:0] bitcast_ln386_23_fu_2012_p1;
wire   [63:0] bitcast_ln386_29_fu_2047_p1;
wire   [63:0] bitcast_ln386_31_fu_2083_p1;
reg   [63:0] mul_reg_3603;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] mul6_reg_3608;
reg   [63:0] mul1641_1_reg_3613;
reg   [63:0] mul1648_1_reg_3618;
reg   [63:0] sub14_reg_3623;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] add14_reg_3628;
wire   [63:0] bitcast_ln386_5_fu_2128_p1;
wire   [63:0] bitcast_ln386_7_fu_2162_p1;
reg   [63:0] sub16_reg_3643;
reg   [63:0] add16_reg_3648;
reg   [63:0] add17_reg_3653;
reg   [63:0] add18_reg_3659;
reg   [63:0] tmp_95_reg_3665;
reg   [63:0] sub17_reg_3671;
reg   [63:0] sub1630_1_reg_3677;
reg   [63:0] add1636_1_reg_3682;
wire   [63:0] bitcast_ln386_25_fu_2196_p1;
wire   [63:0] bitcast_ln386_27_fu_2230_p1;
reg   [63:0] sub1656_1_reg_3697;
reg   [63:0] add1662_1_reg_3702;
reg   [63:0] c0_x_103_reg_3707;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] c0_y_103_reg_3713;
reg   [63:0] c0_x_102_reg_3719;
reg   [63:0] c0_x_102_reg_3719_pp0_iter2_reg;
reg   [63:0] c0_y_102_reg_3725;
reg   [63:0] c0_y_102_reg_3725_pp0_iter2_reg;
reg   [63:0] c0_x_115_reg_3731;
reg   [63:0] c0_y_115_reg_3737;
reg   [63:0] c0_x_114_reg_3743;
reg   [63:0] c0_x_114_reg_3743_pp0_iter2_reg;
reg   [63:0] c0_y_114_reg_3749;
reg   [63:0] c0_y_114_reg_3749_pp0_iter2_reg;
reg   [63:0] add1689_1_reg_3755;
reg   [63:0] add1692_1_reg_3761;
reg   [63:0] tmp_97_reg_3767;
reg   [63:0] sub1698_1_reg_3773;
reg   [63:0] c0_x_100_reg_3779;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_100_reg_3785;
reg   [63:0] sub15_reg_3791;
reg   [63:0] add15_reg_3797;
reg   [63:0] mul7_reg_3803;
reg   [63:0] mul8_reg_3809;
reg   [63:0] sub1644_1_reg_3815;
reg   [63:0] add1649_1_reg_3821;
reg   [63:0] c0_x_112_reg_3827;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] c0_y_112_reg_3833;
reg   [63:0] mul1657_1_reg_3839;
reg   [63:0] mul1663_1_reg_3845;
reg   [63:0] mul9_reg_3851;
reg   [63:0] mul10_reg_3856;
reg   [63:0] add19_reg_3861;
reg   [63:0] add19_reg_3861_pp0_iter3_reg;
reg   [63:0] add19_reg_3861_pp0_iter4_reg;
reg   [63:0] add20_reg_3866;
reg   [63:0] add20_reg_3866_pp0_iter3_reg;
reg   [63:0] add20_reg_3866_pp0_iter4_reg;
reg   [63:0] sub20_reg_3871;
reg   [63:0] sub20_reg_3871_pp0_iter3_reg;
reg   [63:0] sub20_reg_3871_pp0_iter4_reg;
reg   [63:0] sub21_reg_3876;
reg   [63:0] sub21_reg_3876_pp0_iter3_reg;
reg   [63:0] sub21_reg_3876_pp0_iter4_reg;
reg   [63:0] mul1702_1_reg_3881;
reg   [63:0] mul1709_1_reg_3886;
reg   [63:0] add1717_1_reg_3891;
reg   [63:0] add1717_1_reg_3891_pp0_iter3_reg;
reg   [63:0] add1717_1_reg_3891_pp0_iter4_reg;
reg   [63:0] add1720_1_reg_3896;
reg   [63:0] add1720_1_reg_3896_pp0_iter3_reg;
reg   [63:0] add1720_1_reg_3896_pp0_iter4_reg;
reg   [63:0] sub1723_1_reg_3901;
reg   [63:0] sub1723_1_reg_3901_pp0_iter3_reg;
reg   [63:0] sub1723_1_reg_3901_pp0_iter4_reg;
reg   [63:0] sub1723_1_reg_3901_pp0_iter5_reg;
reg   [63:0] sub1726_1_reg_3906;
reg   [63:0] sub1726_1_reg_3906_pp0_iter3_reg;
reg   [63:0] sub1726_1_reg_3906_pp0_iter4_reg;
reg   [63:0] sub1726_1_reg_3906_pp0_iter5_reg;
wire   [63:0] bitcast_ln386_13_fu_2264_p1;
wire   [63:0] bitcast_ln386_15_fu_2298_p1;
wire   [63:0] bitcast_ln386_33_fu_2332_p1;
wire   [63:0] bitcast_ln386_35_fu_2366_p1;
reg   [63:0] c0_x_105_reg_3931;
reg   [63:0] c0_y_105_reg_3937;
reg   [63:0] c0_x_104_reg_3943;
reg   [63:0] c0_x_104_reg_3943_pp0_iter4_reg;
reg   [63:0] c0_y_104_reg_3949;
reg   [63:0] c0_y_104_reg_3949_pp0_iter4_reg;
reg   [63:0] add23_reg_3955;
reg   [63:0] add24_reg_3961;
reg   [63:0] c0_x_117_reg_3967;
reg   [63:0] c0_y_117_reg_3973;
reg   [63:0] c0_x_116_reg_3979;
reg   [63:0] c0_x_116_reg_3979_pp0_iter4_reg;
reg   [63:0] c0_y_116_reg_3985;
reg   [63:0] c0_y_116_reg_3985_pp0_iter4_reg;
reg   [63:0] tmp_98_reg_3991;
reg   [63:0] sub1777_1_reg_3997;
reg   [63:0] sub18_reg_4003;
reg   [63:0] sub19_reg_4009;
reg   [63:0] sub1705_1_reg_4015;
reg   [63:0] sub1710_1_reg_4021;
reg   [63:0] mul11_reg_4027;
reg   [63:0] mul12_reg_4032;
wire   [63:0] bitcast_ln386_17_fu_2401_p1;
wire   [63:0] bitcast_ln386_19_fu_2436_p1;
reg   [63:0] mul1781_1_reg_4047;
reg   [63:0] mul1788_1_reg_4052;
reg   [63:0] add25_reg_4057;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] add25_reg_4057_pp0_iter4_reg;
reg   [63:0] add26_reg_4062;
reg   [63:0] add26_reg_4062_pp0_iter4_reg;
reg   [63:0] sub27_reg_4067;
reg   [63:0] sub27_reg_4067_pp0_iter4_reg;
reg   [63:0] sub28_reg_4072;
reg   [63:0] sub28_reg_4072_pp0_iter4_reg;
wire   [63:0] bitcast_ln386_37_fu_2470_p1;
wire   [63:0] bitcast_ln386_39_fu_2504_p1;
reg   [63:0] add1796_1_reg_4087;
reg   [63:0] add1796_1_reg_4087_pp0_iter4_reg;
reg   [63:0] add1799_1_reg_4092;
reg   [63:0] add1799_1_reg_4092_pp0_iter4_reg;
reg   [63:0] sub1802_1_reg_4097;
reg   [63:0] sub1802_1_reg_4097_pp0_iter4_reg;
reg   [63:0] sub1805_1_reg_4102;
reg   [63:0] sub1805_1_reg_4102_pp0_iter4_reg;
reg   [63:0] add21_reg_4107;
reg   [63:0] add22_reg_4112;
reg   [63:0] sub22_reg_4117;
reg   [63:0] sub22_reg_4117_pp0_iter5_reg;
reg   [63:0] sub23_reg_4122;
reg   [63:0] sub23_reg_4122_pp0_iter5_reg;
reg   [63:0] add1733_1_reg_4127;
reg   [63:0] add1733_1_reg_4127_pp0_iter5_reg;
reg   [63:0] add1736_1_reg_4132;
reg   [63:0] add1736_1_reg_4132_pp0_iter5_reg;
reg   [63:0] sub1739_1_reg_4137;
reg   [63:0] sub1739_1_reg_4137_pp0_iter5_reg;
reg   [63:0] sub1742_1_reg_4142;
reg   [63:0] sub1742_1_reg_4142_pp0_iter5_reg;
reg   [63:0] sub25_reg_4147;
reg   [63:0] sub26_reg_4153;
wire  signed [6:0] zext_ln390_cast_fu_2512_p3;
reg  signed [6:0] zext_ln390_cast_reg_4159;
reg   [63:0] add27_reg_4165;
reg   [63:0] add28_reg_4170;
wire  signed [7:0] zext_ln391_cast_fu_2543_p3;
reg  signed [7:0] zext_ln391_cast_reg_4175;
reg   [63:0] add1812_1_reg_4180;
reg   [63:0] add1815_1_reg_4185;
reg   [63:0] sub1818_1_reg_4190;
reg   [63:0] sub1821_1_reg_4195;
wire   [8:0] zext_ln365_1_fu_2647_p1;
reg   [8:0] zext_ln365_1_reg_4200;
wire   [5:0] tmp_141_fu_2720_p4;
reg   [5:0] tmp_141_reg_4206;
wire  signed [7:0] zext_ln391_1_cast_fu_2729_p4;
reg  signed [7:0] zext_ln391_1_cast_reg_4211;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln367_fu_1476_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln390_fu_2520_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln365_fu_2534_p1;
wire   [63:0] zext_ln391_fu_2550_p1;
wire   [63:0] zext_ln392_fu_2571_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_2584_p1;
wire   [63:0] zext_ln393_fu_2613_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln390_1_fu_2633_p1;
wire   [63:0] zext_ln394_fu_2656_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln396_fu_2669_p1;
wire   [63:0] zext_ln367_1_fu_2706_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln391_1_fu_2739_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln392_1_fu_2758_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln393_2_fu_2785_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln394_1_fu_2804_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln395_1_fu_2821_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln396_1_fu_2844_p1;
reg   [6:0] tid_fu_210;
wire   [6:0] add_ln365_fu_2089_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce0_local;
reg    DATA_y_16_ce0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_17_ce0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_18_ce0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_19_ce0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_20_ce0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_21_ce0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_22_ce0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_y_23_ce0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_16_ce0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_17_ce0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_18_ce0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_19_ce0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_20_ce0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_21_ce0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_22_ce0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_x_23_ce0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_y_24_ce0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_25_ce0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_26_ce0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_27_ce0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_28_ce0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_29_ce0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_30_ce0_local;
reg    DATA_y_15_ce0_local;
reg    DATA_y_31_ce0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_24_ce0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_25_ce0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_26_ce0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_27_ce0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_28_ce0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_29_ce0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_30_ce0_local;
reg    DATA_x_15_ce0_local;
reg    DATA_x_31_ce0_local;
reg    work_x_we1_local;
reg   [63:0] work_x_d1_local;
wire   [63:0] bitcast_ln390_fu_2526_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
wire   [63:0] bitcast_ln389_fu_2539_p1;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_2556_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln392_fu_2577_p1;
wire   [63:0] bitcast_ln395_fu_2590_p1;
wire   [63:0] bitcast_ln393_fu_2619_p1;
wire   [63:0] bitcast_ln390_1_fu_2639_p1;
wire   [63:0] bitcast_ln394_fu_2662_p1;
wire   [63:0] bitcast_ln396_fu_2675_p1;
wire   [63:0] bitcast_ln389_1_fu_2712_p1;
wire   [63:0] bitcast_ln391_1_fu_2745_p1;
wire   [63:0] bitcast_ln392_1_fu_2764_p1;
wire   [63:0] bitcast_ln393_1_fu_2791_p1;
wire   [63:0] bitcast_ln394_1_fu_2810_p1;
wire   [63:0] bitcast_ln395_1_fu_2827_p1;
wire   [63:0] bitcast_ln396_1_fu_2850_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_2530_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
wire   [63:0] bitcast_ln398_fu_2560_p1;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_2564_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln401_fu_2594_p1;
wire   [63:0] bitcast_ln404_fu_2598_p1;
wire   [63:0] bitcast_ln402_fu_2623_p1;
wire   [63:0] bitcast_ln399_1_fu_2643_p1;
wire   [63:0] bitcast_ln403_fu_2680_p1;
wire   [63:0] bitcast_ln405_fu_2684_p1;
wire   [63:0] bitcast_ln398_1_fu_2716_p1;
wire   [63:0] bitcast_ln400_1_fu_2749_p1;
wire   [63:0] bitcast_ln401_1_fu_2768_p1;
wire   [63:0] bitcast_ln402_1_fu_2795_p1;
wire   [63:0] bitcast_ln403_1_fu_2814_p1;
wire   [63:0] bitcast_ln404_1_fu_2831_p1;
wire   [63:0] bitcast_ln405_1_fu_2854_p1;
reg   [63:0] grp_fu_1320_p0;
reg   [63:0] grp_fu_1320_p1;
reg   [63:0] grp_fu_1324_p0;
reg   [63:0] grp_fu_1324_p1;
reg   [63:0] grp_fu_1328_p0;
reg   [63:0] grp_fu_1328_p1;
reg   [63:0] grp_fu_1332_p0;
reg   [63:0] grp_fu_1332_p1;
reg   [63:0] grp_fu_1336_p0;
reg   [63:0] grp_fu_1336_p1;
reg   [63:0] grp_fu_1340_p0;
reg   [63:0] grp_fu_1340_p1;
reg   [63:0] grp_fu_1344_p0;
reg   [63:0] grp_fu_1344_p1;
reg   [63:0] grp_fu_1348_p0;
reg   [63:0] grp_fu_1348_p1;
reg   [63:0] grp_fu_1352_p0;
reg   [63:0] grp_fu_1352_p1;
reg   [63:0] grp_fu_1356_p0;
reg   [63:0] grp_fu_1356_p1;
reg   [63:0] grp_fu_1360_p0;
reg   [63:0] grp_fu_1360_p1;
reg   [63:0] grp_fu_1364_p0;
reg   [63:0] grp_fu_1364_p1;
reg   [63:0] grp_fu_1368_p0;
reg   [63:0] grp_fu_1368_p1;
reg   [63:0] grp_fu_1372_p0;
reg   [63:0] grp_fu_1372_p1;
reg   [63:0] grp_fu_1376_p0;
reg   [63:0] grp_fu_1376_p1;
reg   [63:0] grp_fu_1380_p0;
reg   [63:0] grp_fu_1380_p1;
reg   [63:0] grp_fu_1384_p0;
reg   [63:0] grp_fu_1384_p1;
reg   [63:0] grp_fu_1388_p0;
reg   [63:0] grp_fu_1388_p1;
reg   [63:0] grp_fu_1392_p0;
reg   [63:0] grp_fu_1392_p1;
reg   [63:0] grp_fu_1397_p0;
reg   [63:0] grp_fu_1397_p1;
reg   [63:0] grp_fu_1402_p0;
reg   [63:0] grp_fu_1402_p1;
reg   [63:0] grp_fu_1407_p0;
reg   [63:0] grp_fu_1407_p1;
wire   [3:0] lshr_ln_fu_1466_p4;
wire   [1:0] trunc_ln365_fu_1544_p1;
wire   [0:0] icmp_ln367_fu_1547_p2;
wire   [63:0] bitcast_ln386_fu_1809_p1;
wire   [0:0] bit_sel_fu_1812_p3;
wire   [0:0] xor_ln386_19_fu_1820_p2;
wire   [62:0] trunc_ln386_fu_1826_p1;
wire   [63:0] xor_ln3_fu_1830_p3;
wire   [63:0] bitcast_ln386_2_fu_1843_p1;
wire   [0:0] bit_sel80_fu_1846_p3;
wire   [0:0] xor_ln386_fu_1854_p2;
wire   [62:0] trunc_ln386_1_fu_1860_p1;
wire   [63:0] xor_ln386_1_fu_1864_p3;
wire   [63:0] bitcast_ln386_8_fu_1877_p1;
wire   [0:0] bit_sel83_fu_1881_p3;
wire   [0:0] xor_ln386_22_fu_1889_p2;
wire   [62:0] trunc_ln386_4_fu_1895_p1;
wire   [63:0] xor_ln386_4_fu_1899_p3;
wire   [63:0] bitcast_ln386_10_fu_1913_p1;
wire   [0:0] bit_sel84_fu_1917_p3;
wire   [0:0] xor_ln386_23_fu_1925_p2;
wire   [62:0] trunc_ln386_5_fu_1931_p1;
wire   [63:0] xor_ln386_5_fu_1935_p3;
wire   [63:0] bitcast_ln386_20_fu_1949_p1;
wire   [0:0] bit_sel89_fu_1952_p3;
wire   [0:0] xor_ln386_28_fu_1960_p2;
wire   [62:0] trunc_ln386_10_fu_1966_p1;
wire   [63:0] xor_ln386_s_fu_1970_p3;
wire   [63:0] bitcast_ln386_22_fu_1983_p1;
wire   [0:0] bit_sel90_fu_1986_p3;
wire   [0:0] xor_ln386_29_fu_1994_p2;
wire   [62:0] trunc_ln386_11_fu_2000_p1;
wire   [63:0] xor_ln386_10_fu_2004_p3;
wire   [63:0] bitcast_ln386_28_fu_2017_p1;
wire   [0:0] bit_sel93_fu_2021_p3;
wire   [0:0] xor_ln386_32_fu_2029_p2;
wire   [62:0] trunc_ln386_14_fu_2035_p1;
wire   [63:0] xor_ln386_13_fu_2039_p3;
wire   [63:0] bitcast_ln386_30_fu_2053_p1;
wire   [0:0] bit_sel94_fu_2057_p3;
wire   [0:0] xor_ln386_33_fu_2065_p2;
wire   [62:0] trunc_ln386_15_fu_2071_p1;
wire   [63:0] xor_ln386_14_fu_2075_p3;
wire   [63:0] bitcast_ln386_4_fu_2099_p1;
wire   [0:0] bit_sel81_fu_2102_p3;
wire   [0:0] xor_ln386_20_fu_2110_p2;
wire   [62:0] trunc_ln386_2_fu_2116_p1;
wire   [63:0] xor_ln386_2_fu_2120_p3;
wire   [63:0] bitcast_ln386_6_fu_2133_p1;
wire   [0:0] bit_sel82_fu_2136_p3;
wire   [0:0] xor_ln386_21_fu_2144_p2;
wire   [62:0] trunc_ln386_3_fu_2150_p1;
wire   [63:0] xor_ln386_3_fu_2154_p3;
wire   [63:0] bitcast_ln386_24_fu_2167_p1;
wire   [0:0] bit_sel91_fu_2170_p3;
wire   [0:0] xor_ln386_30_fu_2178_p2;
wire   [62:0] trunc_ln386_12_fu_2184_p1;
wire   [63:0] xor_ln386_11_fu_2188_p3;
wire   [63:0] bitcast_ln386_26_fu_2201_p1;
wire   [0:0] bit_sel92_fu_2204_p3;
wire   [0:0] xor_ln386_31_fu_2212_p2;
wire   [62:0] trunc_ln386_13_fu_2218_p1;
wire   [63:0] xor_ln386_12_fu_2222_p3;
wire   [63:0] bitcast_ln386_12_fu_2235_p1;
wire   [0:0] bit_sel85_fu_2238_p3;
wire   [0:0] xor_ln386_24_fu_2246_p2;
wire   [62:0] trunc_ln386_6_fu_2252_p1;
wire   [63:0] xor_ln386_6_fu_2256_p3;
wire   [63:0] bitcast_ln386_14_fu_2269_p1;
wire   [0:0] bit_sel86_fu_2272_p3;
wire   [0:0] xor_ln386_25_fu_2280_p2;
wire   [62:0] trunc_ln386_7_fu_2286_p1;
wire   [63:0] xor_ln386_7_fu_2290_p3;
wire   [63:0] bitcast_ln386_32_fu_2303_p1;
wire   [0:0] bit_sel95_fu_2306_p3;
wire   [0:0] xor_ln386_34_fu_2314_p2;
wire   [62:0] trunc_ln386_16_fu_2320_p1;
wire   [63:0] xor_ln386_15_fu_2324_p3;
wire   [63:0] bitcast_ln386_34_fu_2337_p1;
wire   [0:0] bit_sel96_fu_2340_p3;
wire   [0:0] xor_ln386_35_fu_2348_p2;
wire   [62:0] trunc_ln386_17_fu_2354_p1;
wire   [63:0] xor_ln386_16_fu_2358_p3;
wire   [63:0] bitcast_ln386_16_fu_2371_p1;
wire   [0:0] bit_sel87_fu_2375_p3;
wire   [0:0] xor_ln386_26_fu_2383_p2;
wire   [62:0] trunc_ln386_8_fu_2389_p1;
wire   [63:0] xor_ln386_8_fu_2393_p3;
wire   [63:0] bitcast_ln386_18_fu_2406_p1;
wire   [0:0] bit_sel88_fu_2410_p3;
wire   [0:0] xor_ln386_27_fu_2418_p2;
wire   [62:0] trunc_ln386_9_fu_2424_p1;
wire   [63:0] xor_ln386_9_fu_2428_p3;
wire   [63:0] bitcast_ln386_36_fu_2441_p1;
wire   [0:0] bit_sel97_fu_2444_p3;
wire   [0:0] xor_ln386_36_fu_2452_p2;
wire   [62:0] trunc_ln386_18_fu_2458_p1;
wire   [63:0] xor_ln386_17_fu_2462_p3;
wire   [63:0] bitcast_ln386_38_fu_2475_p1;
wire   [0:0] bit_sel98_fu_2478_p3;
wire   [0:0] xor_ln386_37_fu_2486_p2;
wire   [62:0] trunc_ln386_19_fu_2492_p1;
wire   [63:0] xor_ln386_18_fu_2496_p3;
wire   [5:0] trunc_ln390_fu_2509_p1;
wire  signed [7:0] sext_ln392_fu_2568_p1;
wire  signed [8:0] sext_ln395_fu_2581_p1;
wire   [7:0] zext_ln365_2_fu_2602_p1;
wire   [8:0] zext_ln393_cast_fu_2605_p3;
wire   [7:0] add_ln390_fu_2627_p2;
wire   [8:0] add_ln394_fu_2650_p2;
wire  signed [8:0] sext_ln396_fu_2666_p1;
wire   [4:0] tmp_s_fu_2689_p4;
wire   [5:0] or_ln_fu_2698_p3;
wire   [8:0] add_ln392_fu_2753_p2;
wire   [6:0] zext_ln393_1_fu_2772_p1;
wire   [8:0] zext_ln393_1_cast_fu_2775_p4;
wire   [8:0] add_ln394_1_fu_2799_p2;
wire  signed [8:0] sext_ln395_1_fu_2818_p1;
wire   [6:0] add_ln396_fu_2835_p2;
wire  signed [8:0] sext_ln396_1_fu_2840_p1;
reg   [1:0] grp_fu_1320_opcode;
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
reg   [1:0] grp_fu_1324_opcode;
reg   [1:0] grp_fu_1328_opcode;
reg   [1:0] grp_fu_1332_opcode;
reg   [1:0] grp_fu_1336_opcode;
reg   [1:0] grp_fu_1340_opcode;
reg   [1:0] grp_fu_1344_opcode;
reg   [1:0] grp_fu_1348_opcode;
reg   [1:0] grp_fu_1352_opcode;
reg   [1:0] grp_fu_1356_opcode;
reg   [1:0] grp_fu_1360_opcode;
reg   [1:0] grp_fu_1364_opcode;
reg   [1:0] grp_fu_1368_opcode;
reg   [1:0] grp_fu_1372_opcode;
reg   [1:0] grp_fu_1376_opcode;
reg   [1:0] grp_fu_1380_opcode;
reg   [1:0] grp_fu_1384_opcode;
reg   [1:0] grp_fu_1388_opcode;
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
#0 tid_fu_210 = 7'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_210 <= 7'd0;
    end else if (((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tid_fu_210 <= add_ln365_fu_2089_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add11_reg_3505 <= grp_fu_11159_p_dout0;
        add1598_1_reg_3557 <= grp_fu_11179_p_dout0;
        add1601_1_reg_3563 <= grp_fu_11183_p_dout0;
        add1614_1_reg_3569 <= grp_fu_11187_p_dout0;
        add1617_1_reg_3575 <= grp_fu_11191_p_dout0;
        add_reg_3499 <= grp_fu_11155_p_dout0;
        c0_x_101_reg_3475 <= grp_fu_11139_p_dout0;
        c0_x_107_reg_3545 <= grp_fu_11171_p_dout0;
        c0_x_113_reg_3533 <= grp_fu_11163_p_dout0;
        c0_x_95_reg_3487 <= grp_fu_11147_p_dout0;
        c0_y_101_reg_3481 <= grp_fu_11143_p_dout0;
        c0_y_107_reg_3551 <= grp_fu_11175_p_dout0;
        c0_y_113_reg_3539 <= grp_fu_11167_p_dout0;
        c0_y_95_reg_3493 <= grp_fu_11151_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add12_reg_3427 <= grp_fu_11163_p_dout0;
        add13_reg_3433 <= grp_fu_11167_p_dout0;
        c0_x_109_reg_3439 <= grp_fu_11179_p_dout0;
        c0_x_97_reg_3391 <= grp_fu_11139_p_dout0;
        c0_y_109_reg_3445 <= grp_fu_11183_p_dout0;
        c0_y_97_reg_3397 <= grp_fu_11143_p_dout0;
        sub12_reg_3421 <= grp_fu_11159_p_dout0;
        sub1591_1_reg_3457 <= grp_fu_11191_p_dout0;
        sub1607_1_reg_3469 <= grp_fu_11236_p_dout0;
        sub_reg_3409 <= grp_fu_11151_p_dout0;
        tmp_1_23_reg_3415 <= grp_fu_11155_p_dout0;
        tmp_1_25_reg_3463 <= grp_fu_11195_p_dout0;
        tmp_1_27_reg_3451 <= grp_fu_11187_p_dout0;
        tmp_1_reg_3403 <= grp_fu_11147_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add14_reg_3628 <= grp_fu_11143_p_dout0;
        add1636_1_reg_3682 <= grp_fu_11175_p_dout0;
        add1662_1_reg_3702 <= grp_fu_11183_p_dout0;
        add16_reg_3648 <= grp_fu_11151_p_dout0;
        add17_reg_3653 <= grp_fu_11155_p_dout0;
        add18_reg_3659 <= grp_fu_11159_p_dout0;
        sub14_reg_3623 <= grp_fu_11139_p_dout0;
        sub1630_1_reg_3677 <= grp_fu_11171_p_dout0;
        sub1656_1_reg_3697 <= grp_fu_11179_p_dout0;
        sub16_reg_3643 <= grp_fu_11147_p_dout0;
        sub17_reg_3671 <= grp_fu_11167_p_dout0;
        tmp_95_reg_3665 <= grp_fu_11163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_3797 <= grp_fu_11143_p_dout0;
        add1649_1_reg_3821 <= grp_fu_11151_p_dout0;
        c0_x_100_reg_3779 <= grp_fu_11199_p_dout0;
        c0_y_100_reg_3785 <= grp_fu_11203_p_dout0;
        mul7_reg_3803 <= grp_fu_11207_p_dout0;
        mul8_reg_3809 <= grp_fu_11248_p_dout0;
        sub15_reg_3791 <= grp_fu_11139_p_dout0;
        sub1644_1_reg_3815 <= grp_fu_11147_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add1689_1_reg_3755 <= grp_fu_11171_p_dout0;
        add1692_1_reg_3761 <= grp_fu_11175_p_dout0;
        c0_x_102_reg_3719 <= grp_fu_11147_p_dout0;
        c0_x_103_reg_3707 <= grp_fu_11139_p_dout0;
        c0_x_114_reg_3743 <= grp_fu_11163_p_dout0;
        c0_x_115_reg_3731 <= grp_fu_11155_p_dout0;
        c0_y_102_reg_3725 <= grp_fu_11151_p_dout0;
        c0_y_103_reg_3713 <= grp_fu_11143_p_dout0;
        c0_y_114_reg_3749 <= grp_fu_11167_p_dout0;
        c0_y_115_reg_3737 <= grp_fu_11159_p_dout0;
        sub1698_1_reg_3773 <= grp_fu_11183_p_dout0;
        tmp_97_reg_3767 <= grp_fu_11179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add1717_1_reg_3891 <= grp_fu_11155_p_dout0;
        add1720_1_reg_3896 <= grp_fu_11159_p_dout0;
        add19_reg_3861 <= grp_fu_11139_p_dout0;
        add20_reg_3866 <= grp_fu_11143_p_dout0;
        mul10_reg_3856 <= grp_fu_11203_p_dout0;
        mul1702_1_reg_3881 <= grp_fu_11207_p_dout0;
        mul1709_1_reg_3886 <= grp_fu_11248_p_dout0;
        mul9_reg_3851 <= grp_fu_11199_p_dout0;
        sub1723_1_reg_3901 <= grp_fu_11163_p_dout0;
        sub1726_1_reg_3906 <= grp_fu_11167_p_dout0;
        sub20_reg_3871 <= grp_fu_11147_p_dout0;
        sub21_reg_3876 <= grp_fu_11151_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add1717_1_reg_3891_pp0_iter3_reg <= add1717_1_reg_3891;
        add1717_1_reg_3891_pp0_iter4_reg <= add1717_1_reg_3891_pp0_iter3_reg;
        add1720_1_reg_3896_pp0_iter3_reg <= add1720_1_reg_3896;
        add1720_1_reg_3896_pp0_iter4_reg <= add1720_1_reg_3896_pp0_iter3_reg;
        add19_reg_3861_pp0_iter3_reg <= add19_reg_3861;
        add19_reg_3861_pp0_iter4_reg <= add19_reg_3861_pp0_iter3_reg;
        add20_reg_3866_pp0_iter3_reg <= add20_reg_3866;
        add20_reg_3866_pp0_iter4_reg <= add20_reg_3866_pp0_iter3_reg;
        sub1723_1_reg_3901_pp0_iter3_reg <= sub1723_1_reg_3901;
        sub1723_1_reg_3901_pp0_iter4_reg <= sub1723_1_reg_3901_pp0_iter3_reg;
        sub1723_1_reg_3901_pp0_iter5_reg <= sub1723_1_reg_3901_pp0_iter4_reg;
        sub1726_1_reg_3906_pp0_iter3_reg <= sub1726_1_reg_3906;
        sub1726_1_reg_3906_pp0_iter4_reg <= sub1726_1_reg_3906_pp0_iter3_reg;
        sub1726_1_reg_3906_pp0_iter5_reg <= sub1726_1_reg_3906_pp0_iter4_reg;
        sub20_reg_3871_pp0_iter3_reg <= sub20_reg_3871;
        sub20_reg_3871_pp0_iter4_reg <= sub20_reg_3871_pp0_iter3_reg;
        sub21_reg_3876_pp0_iter3_reg <= sub21_reg_3876;
        sub21_reg_3876_pp0_iter4_reg <= sub21_reg_3876_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1733_1_reg_4127 <= grp_fu_11155_p_dout0;
        add1736_1_reg_4132 <= grp_fu_11159_p_dout0;
        sub1739_1_reg_4137 <= grp_fu_11163_p_dout0;
        sub1742_1_reg_4142 <= grp_fu_11167_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1733_1_reg_4127_pp0_iter5_reg <= add1733_1_reg_4127;
        add1736_1_reg_4132_pp0_iter5_reg <= add1736_1_reg_4132;
        c0_x_106_reg_3343 <= c0_x_106_fu_1745_p3;
        c0_x_108_reg_3349 <= c0_x_108_fu_1753_p3;
        c0_x_110_reg_3355 <= c0_x_110_fu_1761_p3;
        c0_x_111_reg_3361 <= c0_x_111_fu_1769_p3;
        c0_x_96_reg_3255 <= c0_x_96_fu_1625_p3;
        c0_x_98_reg_3261 <= c0_x_98_fu_1633_p3;
        c0_x_99_reg_3266 <= c0_x_99_fu_1641_p3;
        c0_x_reg_3249 <= c0_x_fu_1617_p3;
        c0_y_106_reg_3295 <= c0_y_106_fu_1681_p3;
        c0_y_108_reg_3301 <= c0_y_108_fu_1689_p3;
        c0_y_110_reg_3307 <= c0_y_110_fu_1697_p3;
        c0_y_111_reg_3313 <= c0_y_111_fu_1705_p3;
        c0_y_96_reg_3209 <= c0_y_96_fu_1561_p3;
        c0_y_98_reg_3215 <= c0_y_98_fu_1569_p3;
        c0_y_99_reg_3220 <= c0_y_99_fu_1577_p3;
        c0_y_reg_3203 <= c0_y_fu_1553_p3;
        select_ln371_1_reg_3319 <= select_ln371_1_fu_1713_p3;
        select_ln371_reg_3226 <= select_ln371_fu_1585_p3;
        select_ln372_1_reg_3325 <= select_ln372_1_fu_1721_p3;
        select_ln372_reg_3232 <= select_ln372_fu_1593_p3;
        select_ln373_1_reg_3331 <= select_ln373_1_fu_1729_p3;
        select_ln373_reg_3238 <= select_ln373_fu_1601_p3;
        select_ln374_1_reg_3337 <= select_ln374_1_fu_1737_p3;
        select_ln374_reg_3243 <= select_ln374_fu_1609_p3;
        select_ln380_1_reg_3367 <= select_ln380_1_fu_1777_p3;
        select_ln380_reg_3272 <= select_ln380_fu_1649_p3;
        select_ln381_1_reg_3373 <= select_ln381_1_fu_1785_p3;
        select_ln381_reg_3278 <= select_ln381_fu_1657_p3;
        select_ln382_1_reg_3379 <= select_ln382_1_fu_1793_p3;
        select_ln382_reg_3284 <= select_ln382_fu_1665_p3;
        select_ln383_1_reg_3385 <= select_ln383_1_fu_1801_p3;
        select_ln383_reg_3289 <= select_ln383_fu_1673_p3;
        sub1739_1_reg_4137_pp0_iter5_reg <= sub1739_1_reg_4137;
        sub1742_1_reg_4142_pp0_iter5_reg <= sub1742_1_reg_4142;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add1796_1_reg_4087 <= grp_fu_11155_p_dout0;
        add1799_1_reg_4092 <= grp_fu_11159_p_dout0;
        add25_reg_4057 <= grp_fu_11139_p_dout0;
        add26_reg_4062 <= grp_fu_11143_p_dout0;
        sub1802_1_reg_4097 <= grp_fu_11163_p_dout0;
        sub1805_1_reg_4102 <= grp_fu_11167_p_dout0;
        sub27_reg_4067 <= grp_fu_11147_p_dout0;
        sub28_reg_4072 <= grp_fu_11151_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add1796_1_reg_4087_pp0_iter4_reg <= add1796_1_reg_4087;
        add1799_1_reg_4092_pp0_iter4_reg <= add1799_1_reg_4092;
        add25_reg_4057_pp0_iter4_reg <= add25_reg_4057;
        add26_reg_4062_pp0_iter4_reg <= add26_reg_4062;
        sub1802_1_reg_4097_pp0_iter4_reg <= sub1802_1_reg_4097;
        sub1805_1_reg_4102_pp0_iter4_reg <= sub1805_1_reg_4102;
        sub27_reg_4067_pp0_iter4_reg <= sub27_reg_4067;
        sub28_reg_4072_pp0_iter4_reg <= sub28_reg_4072;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1812_1_reg_4180 <= grp_fu_11179_p_dout0;
        add1815_1_reg_4185 <= grp_fu_11183_p_dout0;
        sub1818_1_reg_4190 <= grp_fu_11187_p_dout0;
        sub1821_1_reg_4195 <= grp_fu_11191_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add21_reg_4107 <= grp_fu_11187_p_dout0;
        add22_reg_4112 <= grp_fu_11191_p_dout0;
        sub22_reg_4117 <= grp_fu_11195_p_dout0;
        sub23_reg_4122 <= grp_fu_11236_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_3955 <= grp_fu_11147_p_dout0;
        add24_reg_3961 <= grp_fu_11151_p_dout0;
        c0_x_104_reg_3943 <= grp_fu_11139_p_dout0;
        c0_x_116_reg_3979 <= grp_fu_11163_p_dout0;
        c0_x_117_reg_3967 <= grp_fu_11155_p_dout0;
        c0_y_104_reg_3949 <= grp_fu_11143_p_dout0;
        c0_y_116_reg_3985 <= grp_fu_11167_p_dout0;
        c0_y_117_reg_3973 <= grp_fu_11159_p_dout0;
        sub1777_1_reg_3997 <= grp_fu_11183_p_dout0;
        tmp_98_reg_3991 <= grp_fu_11179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add27_reg_4165 <= grp_fu_11240_p_dout0;
        add28_reg_4170 <= grp_fu_11244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        c0_x_107_reg_3545_pp0_iter1_reg <= c0_x_107_reg_3545;
        c0_x_95_reg_3487_pp0_iter1_reg <= c0_x_95_reg_3487;
        c0_y_107_reg_3551_pp0_iter1_reg <= c0_y_107_reg_3551;
        c0_y_95_reg_3493_pp0_iter1_reg <= c0_y_95_reg_3493;
        zext_ln390_cast_reg_4159[5 : 0] <= zext_ln390_cast_fu_2512_p3[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        c0_x_102_reg_3719_pp0_iter2_reg <= c0_x_102_reg_3719;
        c0_x_114_reg_3743_pp0_iter2_reg <= c0_x_114_reg_3743;
        c0_y_102_reg_3725_pp0_iter2_reg <= c0_y_102_reg_3725;
        c0_y_114_reg_3749_pp0_iter2_reg <= c0_y_114_reg_3749;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_104_reg_3943_pp0_iter4_reg <= c0_x_104_reg_3943;
        c0_x_116_reg_3979_pp0_iter4_reg <= c0_x_116_reg_3979;
        c0_y_104_reg_3949_pp0_iter4_reg <= c0_y_104_reg_3949;
        c0_y_116_reg_3985_pp0_iter4_reg <= c0_y_116_reg_3985;
        sub22_reg_4117_pp0_iter5_reg <= sub22_reg_4117;
        sub23_reg_4122_pp0_iter5_reg <= sub23_reg_4122;
        tid_5_reg_2865 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_2865_pp0_iter1_reg <= tid_5_reg_2865;
        tid_5_reg_2865_pp0_iter2_reg <= tid_5_reg_2865_pp0_iter1_reg;
        tid_5_reg_2865_pp0_iter3_reg <= tid_5_reg_2865_pp0_iter2_reg;
        tid_5_reg_2865_pp0_iter4_reg <= tid_5_reg_2865_pp0_iter3_reg;
        tid_5_reg_2865_pp0_iter5_reg <= tid_5_reg_2865_pp0_iter4_reg;
        tmp_reg_2879 <= ap_sig_allocacmp_tid_5[32'd6];
        zext_ln391_cast_reg_4175[6 : 0] <= zext_ln391_cast_fu_2543_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        c0_x_105_reg_3931 <= grp_fu_11195_p_dout0;
        c0_y_105_reg_3937 <= grp_fu_11236_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c0_x_112_reg_3827 <= grp_fu_11199_p_dout0;
        c0_y_112_reg_3833 <= grp_fu_11203_p_dout0;
        mul1657_1_reg_3839 <= grp_fu_11207_p_dout0;
        mul1663_1_reg_3845 <= grp_fu_11248_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul11_reg_4027 <= grp_fu_11199_p_dout0;
        mul12_reg_4032 <= grp_fu_11203_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul1641_1_reg_3613 <= grp_fu_11207_p_dout0;
        mul1648_1_reg_3618 <= grp_fu_11248_p_dout0;
        mul6_reg_3608 <= grp_fu_11203_p_dout0;
        mul_reg_3603 <= grp_fu_11199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul1781_1_reg_4047 <= grp_fu_11199_p_dout0;
        mul1788_1_reg_4052 <= grp_fu_11203_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1416 <= grp_fu_11171_p_dout0;
        reg_1422 <= grp_fu_11175_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1428 <= grp_fu_11240_p_dout0;
        reg_1433 <= grp_fu_11244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1438 <= grp_fu_11171_p_dout0;
        reg_1444 <= grp_fu_11175_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub1705_1_reg_4015 <= grp_fu_11147_p_dout0;
        sub1710_1_reg_4021 <= grp_fu_11151_p_dout0;
        sub18_reg_4003 <= grp_fu_11139_p_dout0;
        sub19_reg_4009 <= grp_fu_11143_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_4147 <= grp_fu_11139_p_dout0;
        sub26_reg_4153 <= grp_fu_11143_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_141_reg_4206 <= {{tid_5_reg_2865_pp0_iter5_reg[6:1]}};
        zext_ln391_1_cast_reg_4211[6 : 1] <= zext_ln391_1_cast_fu_2729_p4[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln365_1_reg_4200[6 : 0] <= zext_ln365_1_fu_2647_p1[6 : 0];
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
    if (((tmp_reg_2879 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_5 = tid_fu_210;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1320_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1320_opcode = 2'd0;
    end else begin
        grp_fu_1320_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1320_p0 = mul11_reg_4027;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1320_p0 = c0_x_105_reg_3931;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1320_p0 = mul9_reg_3851;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1320_p0 = c0_x_95_reg_3487_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1320_p0 = c0_x_103_reg_3707;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1320_p0 = mul_reg_3603;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1320_p0 = c0_x_101_reg_3475;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1320_p0 = tmp_1_reg_3403;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1320_p0 = c0_x_reg_3249;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1320_p0 = c0_x_96_reg_3255;
    end else begin
        grp_fu_1320_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1320_p1 = bitcast_ln386_17_fu_2401_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1320_p1 = add23_reg_3955;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1320_p1 = bitcast_ln386_13_fu_2264_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1320_p1 = sub15_reg_3791;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1320_p1 = add17_reg_3653;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1320_p1 = bitcast_ln386_5_fu_2128_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1320_p1 = add_reg_3499;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1320_p1 = bitcast_ln386_1_fu_1838_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1320_p1 = select_ln380_reg_3272;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1320_p1 = select_ln381_reg_3278;
    end else begin
        grp_fu_1320_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1324_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1324_opcode = 2'd0;
    end else begin
        grp_fu_1324_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1324_p0 = bitcast_ln386_19_fu_2436_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1324_p0 = c0_y_105_reg_3937;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1324_p0 = bitcast_ln386_15_fu_2298_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1324_p0 = c0_y_95_reg_3493_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1324_p0 = c0_y_103_reg_3713;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1324_p0 = bitcast_ln386_7_fu_2162_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1324_p0 = c0_y_101_reg_3481;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1324_p0 = bitcast_ln386_3_fu_1872_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1324_p0 = c0_y_reg_3203;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1324_p0 = c0_y_96_reg_3209;
    end else begin
        grp_fu_1324_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1324_p1 = mul12_reg_4032;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1324_p1 = add24_reg_3961;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1324_p1 = mul10_reg_3856;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1324_p1 = add15_reg_3797;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1324_p1 = add18_reg_3659;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1324_p1 = mul6_reg_3608;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1324_p1 = add11_reg_3505;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1324_p1 = sub_reg_3409;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1324_p1 = select_ln371_reg_3226;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1324_p1 = select_ln372_reg_3232;
    end else begin
        grp_fu_1324_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1328_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1328_opcode = 2'd0;
    end else begin
        grp_fu_1328_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1328_p0 = c0_x_105_reg_3931;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1328_p0 = mul1702_1_reg_3881;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1328_p0 = c0_x_100_reg_3779;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1328_p0 = c0_x_103_reg_3707;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1328_p0 = mul1641_1_reg_3613;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1328_p0 = c0_x_101_reg_3475;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1328_p0 = bitcast_ln386_9_fu_1907_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1328_p0 = c0_x_reg_3249;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1328_p0 = c0_x_96_reg_3255;
    end else begin
        grp_fu_1328_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1328_p1 = add23_reg_3955;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1328_p1 = bitcast_ln386_33_fu_2332_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1328_p1 = mul7_reg_3803;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1328_p1 = add17_reg_3653;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1328_p1 = bitcast_ln386_25_fu_2196_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1328_p1 = add_reg_3499;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1328_p1 = bitcast_ln386_11_fu_1943_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1328_p1 = select_ln380_reg_3272;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1328_p1 = select_ln381_reg_3278;
    end else begin
        grp_fu_1328_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1332_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1332_opcode = 2'd0;
    end else begin
        grp_fu_1332_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1332_p0 = c0_y_105_reg_3937;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1332_p0 = bitcast_ln386_35_fu_2366_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1332_p0 = c0_y_100_reg_3785;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1332_p0 = c0_y_103_reg_3713;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1332_p0 = bitcast_ln386_27_fu_2230_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1332_p0 = c0_y_101_reg_3481;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1332_p0 = bitcast_ln386_9_fu_1907_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1332_p0 = c0_y_reg_3203;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1332_p0 = c0_y_96_reg_3209;
    end else begin
        grp_fu_1332_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1332_p1 = add24_reg_3961;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1332_p1 = mul1709_1_reg_3886;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1332_p1 = mul8_reg_3809;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1332_p1 = add18_reg_3659;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1332_p1 = mul1648_1_reg_3618;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1332_p1 = add11_reg_3505;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1332_p1 = bitcast_ln386_11_fu_1943_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1332_p1 = select_ln371_reg_3226;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1332_p1 = select_ln372_reg_3232;
    end else begin
        grp_fu_1332_p1 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1336_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1336_opcode = 2'd0;
    end else begin
        grp_fu_1336_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1336_p0 = c0_x_114_reg_3743_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1336_p0 = c0_x_117_reg_3967;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1336_p0 = c0_x_107_reg_3545_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1336_p0 = c0_x_115_reg_3731;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1336_p0 = c0_x_113_reg_3533;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1336_p0 = c0_x_97_reg_3391;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1336_p0 = c0_x_98_reg_3261;
    end else begin
        grp_fu_1336_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1336_p1 = sub1705_1_reg_4015;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1336_p1 = reg_1416;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1336_p1 = sub1644_1_reg_3815;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1336_p1 = add1689_1_reg_3755;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1336_p1 = add1598_1_reg_3557;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1336_p1 = add12_reg_3427;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1336_p1 = select_ln382_reg_3284;
    end else begin
        grp_fu_1336_p1 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1340_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1340_opcode = 2'd0;
    end else begin
        grp_fu_1340_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1340_p0 = c0_y_114_reg_3749_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1340_p0 = c0_y_117_reg_3973;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1340_p0 = c0_y_107_reg_3551_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1340_p0 = c0_y_115_reg_3737;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1340_p0 = c0_y_113_reg_3539;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1340_p0 = c0_y_97_reg_3397;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1340_p0 = c0_y_98_reg_3215;
    end else begin
        grp_fu_1340_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1340_p1 = sub1710_1_reg_4021;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1340_p1 = reg_1422;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1340_p1 = add1649_1_reg_3821;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1340_p1 = add1692_1_reg_3761;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1340_p1 = add1601_1_reg_3563;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1340_p1 = add13_reg_3433;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1340_p1 = select_ln373_reg_3238;
    end else begin
        grp_fu_1340_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1344_opcode = 2'd1;
    end else if ((((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1344_opcode = 2'd0;
    end else begin
        grp_fu_1344_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1344_p0 = c0_x_114_reg_3743_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1344_p0 = c0_x_117_reg_3967;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1344_p0 = c0_x_107_reg_3545_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1344_p0 = c0_x_115_reg_3731;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1344_p0 = c0_x_113_reg_3533;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1344_p0 = c0_x_97_reg_3391;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1344_p0 = c0_x_106_reg_3343;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1344_p0 = c0_x_99_reg_3266;
    end else begin
        grp_fu_1344_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1344_p1 = sub1705_1_reg_4015;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1344_p1 = reg_1416;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1344_p1 = sub1644_1_reg_3815;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1344_p1 = add1689_1_reg_3755;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1344_p1 = add1598_1_reg_3557;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1344_p1 = add12_reg_3427;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1344_p1 = select_ln380_1_reg_3367;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1344_p1 = select_ln383_reg_3289;
    end else begin
        grp_fu_1344_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1348_opcode = 2'd1;
    end else if ((((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1348_opcode = 2'd0;
    end else begin
        grp_fu_1348_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1348_p0 = c0_y_114_reg_3749_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1348_p0 = c0_y_117_reg_3973;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1348_p0 = c0_y_107_reg_3551_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1348_p0 = c0_y_115_reg_3737;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1348_p0 = c0_y_113_reg_3539;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1348_p0 = c0_y_97_reg_3397;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1348_p0 = c0_y_106_reg_3295;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1348_p0 = c0_y_99_reg_3220;
    end else begin
        grp_fu_1348_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1348_p1 = sub1710_1_reg_4021;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1348_p1 = reg_1422;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1348_p1 = add1649_1_reg_3821;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1348_p1 = add1692_1_reg_3761;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1348_p1 = add1601_1_reg_3563;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1348_p1 = add13_reg_3433;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1348_p1 = select_ln371_1_reg_3319;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1348_p1 = select_ln374_reg_3243;
    end else begin
        grp_fu_1348_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1352_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1352_opcode = 2'd0;
    end else begin
        grp_fu_1352_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1352_p0 = c0_x_104_reg_3943_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1352_p0 = mul1781_1_reg_4047;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1352_p0 = c0_x_112_reg_3827;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1352_p0 = c0_x_109_reg_3439;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1352_p0 = tmp_1_27_reg_3451;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1352_p0 = c0_x_106_reg_3343;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1352_p0 = c0_x_99_reg_3266;
    end else begin
        grp_fu_1352_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1352_p1 = sub25_reg_4147;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1352_p1 = bitcast_ln386_37_fu_2470_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1352_p1 = mul1657_1_reg_3839;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1352_p1 = add1614_1_reg_3569;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1352_p1 = bitcast_ln386_21_fu_1978_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1352_p1 = select_ln380_1_reg_3367;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1352_p1 = select_ln383_reg_3289;
    end else begin
        grp_fu_1352_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1356_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1356_opcode = 2'd0;
    end else begin
        grp_fu_1356_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1356_p0 = c0_y_104_reg_3949_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1356_p0 = bitcast_ln386_39_fu_2504_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1356_p0 = c0_y_112_reg_3833;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1356_p0 = c0_y_109_reg_3445;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1356_p0 = bitcast_ln386_23_fu_2012_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1356_p0 = c0_y_106_reg_3295;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1356_p0 = c0_y_99_reg_3220;
    end else begin
        grp_fu_1356_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1356_p1 = sub26_reg_4153;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1356_p1 = mul1788_1_reg_4052;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1356_p1 = mul1663_1_reg_3845;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1356_p1 = add1617_1_reg_3575;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1356_p1 = sub1591_1_reg_3457;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1356_p1 = select_ln371_1_reg_3319;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1356_p1 = select_ln374_reg_3243;
    end else begin
        grp_fu_1356_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1360_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1360_opcode = 2'd0;
    end else begin
        grp_fu_1360_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1360_p0 = c0_x_116_reg_3979_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1360_p0 = c0_x_112_reg_3827;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1360_p0 = c0_x_109_reg_3439;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1360_p0 = bitcast_ln386_29_fu_2047_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1360_p0 = c0_x_110_reg_3355;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1360_p0 = c0_x_108_reg_3349;
    end else begin
        grp_fu_1360_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1360_p1 = reg_1438;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1360_p1 = mul1657_1_reg_3839;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1360_p1 = add1614_1_reg_3569;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1360_p1 = bitcast_ln386_31_fu_2083_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1360_p1 = select_ln382_1_reg_3379;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1360_p1 = select_ln381_1_reg_3373;
    end else begin
        grp_fu_1360_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1364_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1364_opcode = 2'd0;
    end else begin
        grp_fu_1364_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1364_p0 = c0_y_116_reg_3985_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1364_p0 = c0_y_112_reg_3833;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1364_p0 = c0_y_109_reg_3445;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1364_p0 = bitcast_ln386_29_fu_2047_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1364_p0 = c0_y_110_reg_3307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1364_p0 = c0_y_108_reg_3301;
    end else begin
        grp_fu_1364_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1364_p1 = reg_1444;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1364_p1 = mul1663_1_reg_3845;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1364_p1 = add1617_1_reg_3575;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1364_p1 = bitcast_ln386_31_fu_2083_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1364_p1 = select_ln373_1_reg_3331;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1364_p1 = select_ln372_1_reg_3325;
    end else begin
        grp_fu_1364_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1368_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1368_opcode = 2'd0;
    end else begin
        grp_fu_1368_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1368_p0 = c0_x_116_reg_3979_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1368_p0 = c0_x_102_reg_3719_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1368_p0 = c0_x_111_reg_3361;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1368_p0 = c0_x_108_reg_3349;
    end else begin
        grp_fu_1368_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1368_p1 = reg_1438;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1368_p1 = sub18_reg_4003;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1368_p1 = select_ln383_1_reg_3385;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1368_p1 = select_ln381_1_reg_3373;
    end else begin
        grp_fu_1368_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1372_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1372_opcode = 2'd0;
    end else begin
        grp_fu_1372_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1372_p0 = c0_y_116_reg_3985_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1372_p0 = c0_y_102_reg_3725_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1372_p0 = c0_y_111_reg_3313;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1372_p0 = c0_y_108_reg_3301;
    end else begin
        grp_fu_1372_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1372_p1 = reg_1444;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1372_p1 = sub19_reg_4009;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1372_p1 = select_ln374_1_reg_3337;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1372_p1 = select_ln372_1_reg_3325;
    end else begin
        grp_fu_1372_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1376_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1376_opcode = 2'd0;
    end else begin
        grp_fu_1376_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1376_p0 = c0_x_102_reg_3719_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1376_p0 = c0_x_95_reg_3487_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1376_p0 = c0_x_110_reg_3355;
    end else begin
        grp_fu_1376_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1376_p1 = sub18_reg_4003;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1376_p1 = sub15_reg_3791;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1376_p1 = select_ln382_1_reg_3379;
    end else begin
        grp_fu_1376_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1380_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1380_opcode = 2'd0;
    end else begin
        grp_fu_1380_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1380_p0 = c0_y_102_reg_3725_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1380_p0 = c0_y_95_reg_3493_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1380_p0 = c0_y_110_reg_3307;
    end else begin
        grp_fu_1380_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1380_p1 = sub19_reg_4009;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1380_p1 = add15_reg_3797;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1380_p1 = select_ln373_1_reg_3331;
    end else begin
        grp_fu_1380_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1384_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1384_opcode = 2'd0;
    end else begin
        grp_fu_1384_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1384_p0 = c0_x_104_reg_3943_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1384_p0 = c0_x_100_reg_3779;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1384_p0 = c0_x_111_reg_3361;
    end else begin
        grp_fu_1384_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1384_p1 = sub25_reg_4147;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1384_p1 = mul7_reg_3803;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1384_p1 = select_ln383_1_reg_3385;
    end else begin
        grp_fu_1384_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2879 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1388_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1388_opcode = 2'd0;
    end else begin
        grp_fu_1388_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1388_p0 = c0_y_104_reg_3949_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1388_p0 = c0_y_100_reg_3785;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1388_p0 = c0_y_111_reg_3313;
    end else begin
        grp_fu_1388_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1388_p1 = sub26_reg_4153;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1388_p1 = mul8_reg_3809;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1388_p1 = select_ln374_1_reg_3337;
    end else begin
        grp_fu_1388_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1392_p0 = tmp_98_reg_3991;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1392_p0 = reg_1428;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1392_p0 = tmp_95_reg_3665;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1392_p0 = sub1630_1_reg_3677;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1392_p0 = sub14_reg_3623;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1392_p0 = tmp_1_23_reg_3415;
    end else begin
        grp_fu_1392_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1392_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1392_p1 = 64'd0;
    end else begin
        grp_fu_1392_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1397_p0 = sub1777_1_reg_3997;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1397_p0 = reg_1433;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1397_p0 = sub17_reg_3671;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1397_p0 = add1636_1_reg_3682;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1397_p0 = add14_reg_3628;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1397_p0 = sub12_reg_3421;
    end else begin
        grp_fu_1397_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1397_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1397_p1 = 64'd0;
    end else begin
        grp_fu_1397_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1402_p0 = tmp_97_reg_3767;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1402_p0 = sub1656_1_reg_3697;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1402_p0 = sub16_reg_3643;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1402_p0 = tmp_1_25_reg_3463;
    end else begin
        grp_fu_1402_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1402_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1402_p1 = 64'd0;
    end else begin
        grp_fu_1402_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1407_p0 = sub1698_1_reg_3773;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1407_p0 = add1662_1_reg_3702;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1407_p0 = add16_reg_3648;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1407_p0 = sub1607_1_reg_3469;
    end else begin
        grp_fu_1407_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1407_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1407_p1 = 64'd0;
    end else begin
        grp_fu_1407_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_x_address0_local = zext_ln396_1_fu_2844_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_x_address0_local = zext_ln394_1_fu_2804_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_x_address0_local = zext_ln392_1_fu_2758_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_x_address0_local = zext_ln367_1_fu_2706_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_x_address0_local = zext_ln396_fu_2669_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_x_address0_local = zext_ln390_1_fu_2633_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_x_address0_local = zext_ln395_fu_2584_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_x_address0_local = zext_ln391_fu_2550_p1;
        end else begin
            work_x_address0_local = 'bx;
        end
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_x_address1_local = zext_ln395_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_x_address1_local = zext_ln393_2_fu_2785_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_x_address1_local = zext_ln391_1_fu_2739_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln394_fu_2656_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln393_fu_2613_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln392_fu_2571_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_fu_2534_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_x_address1_local = zext_ln390_fu_2520_p1;
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
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
            work_x_d0_local = bitcast_ln396_1_fu_2850_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_x_d0_local = bitcast_ln394_1_fu_2810_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_x_d0_local = bitcast_ln392_1_fu_2764_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_x_d0_local = bitcast_ln389_1_fu_2712_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_x_d0_local = bitcast_ln396_fu_2675_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_x_d0_local = bitcast_ln390_1_fu_2639_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_x_d0_local = bitcast_ln395_fu_2590_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_x_d0_local = bitcast_ln391_fu_2556_p1;
        end else begin
            work_x_d0_local = 'bx;
        end
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_x_d1_local = bitcast_ln395_1_fu_2827_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_x_d1_local = bitcast_ln393_1_fu_2791_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_x_d1_local = bitcast_ln391_1_fu_2745_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln394_fu_2662_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln393_fu_2619_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln392_fu_2577_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_2539_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_x_d1_local = bitcast_ln390_fu_2526_p1;
    end else begin
        work_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
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
            work_y_address0_local = zext_ln396_1_fu_2844_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_y_address0_local = zext_ln394_1_fu_2804_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_y_address0_local = zext_ln392_1_fu_2758_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_y_address0_local = zext_ln367_1_fu_2706_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_y_address0_local = zext_ln396_fu_2669_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_y_address0_local = zext_ln390_1_fu_2633_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_y_address0_local = zext_ln395_fu_2584_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_y_address0_local = zext_ln391_fu_2550_p1;
        end else begin
            work_y_address0_local = 'bx;
        end
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_y_address1_local = zext_ln395_1_fu_2821_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_y_address1_local = zext_ln393_2_fu_2785_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_y_address1_local = zext_ln391_1_fu_2739_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln394_fu_2656_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln393_fu_2613_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln392_fu_2571_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_fu_2534_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_y_address1_local = zext_ln390_fu_2520_p1;
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
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
            work_y_d0_local = bitcast_ln405_1_fu_2854_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_y_d0_local = bitcast_ln403_1_fu_2814_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_y_d0_local = bitcast_ln401_1_fu_2768_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_y_d0_local = bitcast_ln398_1_fu_2716_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_y_d0_local = bitcast_ln405_fu_2684_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_y_d0_local = bitcast_ln399_1_fu_2643_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_y_d0_local = bitcast_ln404_fu_2598_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_y_d0_local = bitcast_ln400_fu_2564_p1;
        end else begin
            work_y_d0_local = 'bx;
        end
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_y_d1_local = bitcast_ln404_1_fu_2831_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_y_d1_local = bitcast_ln402_1_fu_2795_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_y_d1_local = bitcast_ln400_1_fu_2749_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln403_fu_2680_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln402_fu_2623_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln401_fu_2594_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_2560_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_y_d1_local = bitcast_ln399_fu_2530_p1;
    end else begin
        work_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
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
assign DATA_x_10_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_11_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_12_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_13_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_14_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_15_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_16_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_16_ce0 = DATA_x_16_ce0_local;
assign DATA_x_17_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_17_ce0 = DATA_x_17_ce0_local;
assign DATA_x_18_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_18_ce0 = DATA_x_18_ce0_local;
assign DATA_x_19_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_19_ce0 = DATA_x_19_ce0_local;
assign DATA_x_1_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_20_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_20_ce0 = DATA_x_20_ce0_local;
assign DATA_x_21_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_21_ce0 = DATA_x_21_ce0_local;
assign DATA_x_22_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_22_ce0 = DATA_x_22_ce0_local;
assign DATA_x_23_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_23_ce0 = DATA_x_23_ce0_local;
assign DATA_x_24_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_24_ce0 = DATA_x_24_ce0_local;
assign DATA_x_25_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_25_ce0 = DATA_x_25_ce0_local;
assign DATA_x_26_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_26_ce0 = DATA_x_26_ce0_local;
assign DATA_x_27_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_27_ce0 = DATA_x_27_ce0_local;
assign DATA_x_28_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_28_ce0 = DATA_x_28_ce0_local;
assign DATA_x_29_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_29_ce0 = DATA_x_29_ce0_local;
assign DATA_x_2_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_30_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_30_ce0 = DATA_x_30_ce0_local;
assign DATA_x_31_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_31_ce0 = DATA_x_31_ce0_local;
assign DATA_x_3_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_8_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_9_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_address0 = zext_ln367_fu_1476_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_10_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_11_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_12_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_13_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_14_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_15_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_16_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_16_ce0 = DATA_y_16_ce0_local;
assign DATA_y_17_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_17_ce0 = DATA_y_17_ce0_local;
assign DATA_y_18_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_18_ce0 = DATA_y_18_ce0_local;
assign DATA_y_19_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_19_ce0 = DATA_y_19_ce0_local;
assign DATA_y_1_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_20_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_20_ce0 = DATA_y_20_ce0_local;
assign DATA_y_21_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_21_ce0 = DATA_y_21_ce0_local;
assign DATA_y_22_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_22_ce0 = DATA_y_22_ce0_local;
assign DATA_y_23_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_23_ce0 = DATA_y_23_ce0_local;
assign DATA_y_24_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_24_ce0 = DATA_y_24_ce0_local;
assign DATA_y_25_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_25_ce0 = DATA_y_25_ce0_local;
assign DATA_y_26_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_26_ce0 = DATA_y_26_ce0_local;
assign DATA_y_27_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_27_ce0 = DATA_y_27_ce0_local;
assign DATA_y_28_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_28_ce0 = DATA_y_28_ce0_local;
assign DATA_y_29_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_29_ce0 = DATA_y_29_ce0_local;
assign DATA_y_2_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_30_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_30_ce0 = DATA_y_30_ce0_local;
assign DATA_y_31_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_31_ce0 = DATA_y_31_ce0_local;
assign DATA_y_3_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_8_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_9_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_address0 = zext_ln367_fu_1476_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln365_fu_2089_p2 = (tid_5_reg_2865 + 7'd2);
assign add_ln390_fu_2627_p2 = (zext_ln365_2_fu_2602_p1 + 8'd65);
assign add_ln392_fu_2753_p2 = (zext_ln365_1_reg_4200 + 9'd193);
assign add_ln394_1_fu_2799_p2 = ($signed(zext_ln365_1_reg_4200) + $signed(9'd321));
assign add_ln394_fu_2650_p2 = ($signed(zext_ln365_1_fu_2647_p1) + $signed(9'd320));
assign add_ln396_fu_2835_p2 = ($signed(tid_5_reg_2865_pp0_iter5_reg) + $signed(7'd65));
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
assign bit_sel80_fu_1846_p3 = bitcast_ln386_2_fu_1843_p1[64'd63];
assign bit_sel81_fu_2102_p3 = bitcast_ln386_4_fu_2099_p1[64'd63];
assign bit_sel82_fu_2136_p3 = bitcast_ln386_6_fu_2133_p1[64'd63];
assign bit_sel83_fu_1881_p3 = bitcast_ln386_8_fu_1877_p1[64'd63];
assign bit_sel84_fu_1917_p3 = bitcast_ln386_10_fu_1913_p1[64'd63];
assign bit_sel85_fu_2238_p3 = bitcast_ln386_12_fu_2235_p1[64'd63];
assign bit_sel86_fu_2272_p3 = bitcast_ln386_14_fu_2269_p1[64'd63];
assign bit_sel87_fu_2375_p3 = bitcast_ln386_16_fu_2371_p1[64'd63];
assign bit_sel88_fu_2410_p3 = bitcast_ln386_18_fu_2406_p1[64'd63];
assign bit_sel89_fu_1952_p3 = bitcast_ln386_20_fu_1949_p1[64'd63];
assign bit_sel90_fu_1986_p3 = bitcast_ln386_22_fu_1983_p1[64'd63];
assign bit_sel91_fu_2170_p3 = bitcast_ln386_24_fu_2167_p1[64'd63];
assign bit_sel92_fu_2204_p3 = bitcast_ln386_26_fu_2201_p1[64'd63];
assign bit_sel93_fu_2021_p3 = bitcast_ln386_28_fu_2017_p1[64'd63];
assign bit_sel94_fu_2057_p3 = bitcast_ln386_30_fu_2053_p1[64'd63];
assign bit_sel95_fu_2306_p3 = bitcast_ln386_32_fu_2303_p1[64'd63];
assign bit_sel96_fu_2340_p3 = bitcast_ln386_34_fu_2337_p1[64'd63];
assign bit_sel97_fu_2444_p3 = bitcast_ln386_36_fu_2441_p1[64'd63];
assign bit_sel98_fu_2478_p3 = bitcast_ln386_38_fu_2475_p1[64'd63];
assign bit_sel_fu_1812_p3 = bitcast_ln386_fu_1809_p1[64'd63];
assign bitcast_ln386_10_fu_1913_p1 = reg_1422;
assign bitcast_ln386_11_fu_1943_p1 = xor_ln386_5_fu_1935_p3;
assign bitcast_ln386_12_fu_2235_p1 = sub17_reg_3671;
assign bitcast_ln386_13_fu_2264_p1 = xor_ln386_6_fu_2256_p3;
assign bitcast_ln386_14_fu_2269_p1 = tmp_95_reg_3665;
assign bitcast_ln386_15_fu_2298_p1 = xor_ln386_7_fu_2290_p3;
assign bitcast_ln386_16_fu_2371_p1 = reg_1433;
assign bitcast_ln386_17_fu_2401_p1 = xor_ln386_8_fu_2393_p3;
assign bitcast_ln386_18_fu_2406_p1 = reg_1428;
assign bitcast_ln386_19_fu_2436_p1 = xor_ln386_9_fu_2428_p3;
assign bitcast_ln386_1_fu_1838_p1 = xor_ln3_fu_1830_p3;
assign bitcast_ln386_20_fu_1949_p1 = sub1591_1_reg_3457;
assign bitcast_ln386_21_fu_1978_p1 = xor_ln386_s_fu_1970_p3;
assign bitcast_ln386_22_fu_1983_p1 = tmp_1_27_reg_3451;
assign bitcast_ln386_23_fu_2012_p1 = xor_ln386_10_fu_2004_p3;
assign bitcast_ln386_24_fu_2167_p1 = sub1607_1_reg_3469;
assign bitcast_ln386_25_fu_2196_p1 = xor_ln386_11_fu_2188_p3;
assign bitcast_ln386_26_fu_2201_p1 = tmp_1_25_reg_3463;
assign bitcast_ln386_27_fu_2230_p1 = xor_ln386_12_fu_2222_p3;
assign bitcast_ln386_28_fu_2017_p1 = reg_1428;
assign bitcast_ln386_29_fu_2047_p1 = xor_ln386_13_fu_2039_p3;
assign bitcast_ln386_2_fu_1843_p1 = tmp_1_reg_3403;
assign bitcast_ln386_30_fu_2053_p1 = reg_1433;
assign bitcast_ln386_31_fu_2083_p1 = xor_ln386_14_fu_2075_p3;
assign bitcast_ln386_32_fu_2303_p1 = sub1698_1_reg_3773;
assign bitcast_ln386_33_fu_2332_p1 = xor_ln386_15_fu_2324_p3;
assign bitcast_ln386_34_fu_2337_p1 = tmp_97_reg_3767;
assign bitcast_ln386_35_fu_2366_p1 = xor_ln386_16_fu_2358_p3;
assign bitcast_ln386_36_fu_2441_p1 = sub1777_1_reg_3997;
assign bitcast_ln386_37_fu_2470_p1 = xor_ln386_17_fu_2462_p3;
assign bitcast_ln386_38_fu_2475_p1 = tmp_98_reg_3991;
assign bitcast_ln386_39_fu_2504_p1 = xor_ln386_18_fu_2496_p3;
assign bitcast_ln386_3_fu_1872_p1 = xor_ln386_1_fu_1864_p3;
assign bitcast_ln386_4_fu_2099_p1 = sub12_reg_3421;
assign bitcast_ln386_5_fu_2128_p1 = xor_ln386_2_fu_2120_p3;
assign bitcast_ln386_6_fu_2133_p1 = tmp_1_23_reg_3415;
assign bitcast_ln386_7_fu_2162_p1 = xor_ln386_3_fu_2154_p3;
assign bitcast_ln386_8_fu_1877_p1 = reg_1416;
assign bitcast_ln386_9_fu_1907_p1 = xor_ln386_4_fu_1899_p3;
assign bitcast_ln386_fu_1809_p1 = sub_reg_3409;
assign bitcast_ln389_1_fu_2712_p1 = add1717_1_reg_3891_pp0_iter4_reg;
assign bitcast_ln389_fu_2539_p1 = add19_reg_3861_pp0_iter4_reg;
assign bitcast_ln390_1_fu_2639_p1 = add1796_1_reg_4087_pp0_iter4_reg;
assign bitcast_ln390_fu_2526_p1 = add25_reg_4057_pp0_iter4_reg;
assign bitcast_ln391_1_fu_2745_p1 = add1733_1_reg_4127_pp0_iter5_reg;
assign bitcast_ln391_fu_2556_p1 = add21_reg_4107;
assign bitcast_ln392_1_fu_2764_p1 = add1812_1_reg_4180;
assign bitcast_ln392_fu_2577_p1 = add27_reg_4165;
assign bitcast_ln393_1_fu_2791_p1 = sub1723_1_reg_3901_pp0_iter5_reg;
assign bitcast_ln393_fu_2619_p1 = sub20_reg_3871_pp0_iter4_reg;
assign bitcast_ln394_1_fu_2810_p1 = sub1802_1_reg_4097_pp0_iter4_reg;
assign bitcast_ln394_fu_2662_p1 = sub27_reg_4067_pp0_iter4_reg;
assign bitcast_ln395_1_fu_2827_p1 = sub1739_1_reg_4137_pp0_iter5_reg;
assign bitcast_ln395_fu_2590_p1 = sub22_reg_4117_pp0_iter5_reg;
assign bitcast_ln396_1_fu_2850_p1 = sub1818_1_reg_4190;
assign bitcast_ln396_fu_2675_p1 = reg_1438;
assign bitcast_ln398_1_fu_2716_p1 = add1720_1_reg_3896_pp0_iter4_reg;
assign bitcast_ln398_fu_2560_p1 = add20_reg_3866_pp0_iter4_reg;
assign bitcast_ln399_1_fu_2643_p1 = add1799_1_reg_4092_pp0_iter4_reg;
assign bitcast_ln399_fu_2530_p1 = add26_reg_4062_pp0_iter4_reg;
assign bitcast_ln400_1_fu_2749_p1 = add1736_1_reg_4132_pp0_iter5_reg;
assign bitcast_ln400_fu_2564_p1 = add22_reg_4112;
assign bitcast_ln401_1_fu_2768_p1 = add1815_1_reg_4185;
assign bitcast_ln401_fu_2594_p1 = add28_reg_4170;
assign bitcast_ln402_1_fu_2795_p1 = sub1726_1_reg_3906_pp0_iter5_reg;
assign bitcast_ln402_fu_2623_p1 = sub21_reg_3876_pp0_iter4_reg;
assign bitcast_ln403_1_fu_2814_p1 = sub1805_1_reg_4102_pp0_iter4_reg;
assign bitcast_ln403_fu_2680_p1 = sub28_reg_4072_pp0_iter4_reg;
assign bitcast_ln404_1_fu_2831_p1 = sub1742_1_reg_4142_pp0_iter5_reg;
assign bitcast_ln404_fu_2598_p1 = sub23_reg_4122_pp0_iter5_reg;
assign bitcast_ln405_1_fu_2854_p1 = sub1821_1_reg_4195;
assign bitcast_ln405_fu_2684_p1 = reg_1444;
assign c0_x_106_fu_1745_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_24_q0 : DATA_x_8_q0);
assign c0_x_108_fu_1753_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_25_q0 : DATA_x_9_q0);
assign c0_x_110_fu_1761_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_26_q0 : DATA_x_10_q0);
assign c0_x_111_fu_1769_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_27_q0 : DATA_x_11_q0);
assign c0_x_96_fu_1625_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_17_q0 : DATA_x_1_q0);
assign c0_x_98_fu_1633_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_18_q0 : DATA_x_2_q0);
assign c0_x_99_fu_1641_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_19_q0 : DATA_x_3_q0);
assign c0_x_fu_1617_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_16_q0 : DATA_x_q0);
assign c0_y_106_fu_1681_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_24_q0 : DATA_y_8_q0);
assign c0_y_108_fu_1689_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_25_q0 : DATA_y_9_q0);
assign c0_y_110_fu_1697_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_26_q0 : DATA_y_10_q0);
assign c0_y_111_fu_1705_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_27_q0 : DATA_y_11_q0);
assign c0_y_96_fu_1561_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_17_q0 : DATA_y_1_q0);
assign c0_y_98_fu_1569_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_18_q0 : DATA_y_2_q0);
assign c0_y_99_fu_1577_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_19_q0 : DATA_y_3_q0);
assign c0_y_fu_1553_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_16_q0 : DATA_y_q0);
assign grp_fu_11139_p_ce = 1'b1;
assign grp_fu_11139_p_din0 = grp_fu_1320_p0;
assign grp_fu_11139_p_din1 = grp_fu_1320_p1;
assign grp_fu_11139_p_opcode = grp_fu_1320_opcode;
assign grp_fu_11143_p_ce = 1'b1;
assign grp_fu_11143_p_din0 = grp_fu_1324_p0;
assign grp_fu_11143_p_din1 = grp_fu_1324_p1;
assign grp_fu_11143_p_opcode = grp_fu_1324_opcode;
assign grp_fu_11147_p_ce = 1'b1;
assign grp_fu_11147_p_din0 = grp_fu_1328_p0;
assign grp_fu_11147_p_din1 = grp_fu_1328_p1;
assign grp_fu_11147_p_opcode = grp_fu_1328_opcode;
assign grp_fu_11151_p_ce = 1'b1;
assign grp_fu_11151_p_din0 = grp_fu_1332_p0;
assign grp_fu_11151_p_din1 = grp_fu_1332_p1;
assign grp_fu_11151_p_opcode = grp_fu_1332_opcode;
assign grp_fu_11155_p_ce = 1'b1;
assign grp_fu_11155_p_din0 = grp_fu_1336_p0;
assign grp_fu_11155_p_din1 = grp_fu_1336_p1;
assign grp_fu_11155_p_opcode = grp_fu_1336_opcode;
assign grp_fu_11159_p_ce = 1'b1;
assign grp_fu_11159_p_din0 = grp_fu_1340_p0;
assign grp_fu_11159_p_din1 = grp_fu_1340_p1;
assign grp_fu_11159_p_opcode = grp_fu_1340_opcode;
assign grp_fu_11163_p_ce = 1'b1;
assign grp_fu_11163_p_din0 = grp_fu_1344_p0;
assign grp_fu_11163_p_din1 = grp_fu_1344_p1;
assign grp_fu_11163_p_opcode = grp_fu_1344_opcode;
assign grp_fu_11167_p_ce = 1'b1;
assign grp_fu_11167_p_din0 = grp_fu_1348_p0;
assign grp_fu_11167_p_din1 = grp_fu_1348_p1;
assign grp_fu_11167_p_opcode = grp_fu_1348_opcode;
assign grp_fu_11171_p_ce = 1'b1;
assign grp_fu_11171_p_din0 = grp_fu_1352_p0;
assign grp_fu_11171_p_din1 = grp_fu_1352_p1;
assign grp_fu_11171_p_opcode = grp_fu_1352_opcode;
assign grp_fu_11175_p_ce = 1'b1;
assign grp_fu_11175_p_din0 = grp_fu_1356_p0;
assign grp_fu_11175_p_din1 = grp_fu_1356_p1;
assign grp_fu_11175_p_opcode = grp_fu_1356_opcode;
assign grp_fu_11179_p_ce = 1'b1;
assign grp_fu_11179_p_din0 = grp_fu_1360_p0;
assign grp_fu_11179_p_din1 = grp_fu_1360_p1;
assign grp_fu_11179_p_opcode = grp_fu_1360_opcode;
assign grp_fu_11183_p_ce = 1'b1;
assign grp_fu_11183_p_din0 = grp_fu_1364_p0;
assign grp_fu_11183_p_din1 = grp_fu_1364_p1;
assign grp_fu_11183_p_opcode = grp_fu_1364_opcode;
assign grp_fu_11187_p_ce = 1'b1;
assign grp_fu_11187_p_din0 = grp_fu_1368_p0;
assign grp_fu_11187_p_din1 = grp_fu_1368_p1;
assign grp_fu_11187_p_opcode = grp_fu_1368_opcode;
assign grp_fu_11191_p_ce = 1'b1;
assign grp_fu_11191_p_din0 = grp_fu_1372_p0;
assign grp_fu_11191_p_din1 = grp_fu_1372_p1;
assign grp_fu_11191_p_opcode = grp_fu_1372_opcode;
assign grp_fu_11195_p_ce = 1'b1;
assign grp_fu_11195_p_din0 = grp_fu_1376_p0;
assign grp_fu_11195_p_din1 = grp_fu_1376_p1;
assign grp_fu_11195_p_opcode = grp_fu_1376_opcode;
assign grp_fu_11199_p_ce = 1'b1;
assign grp_fu_11199_p_din0 = grp_fu_1392_p0;
assign grp_fu_11199_p_din1 = grp_fu_1392_p1;
assign grp_fu_11203_p_ce = 1'b1;
assign grp_fu_11203_p_din0 = grp_fu_1397_p0;
assign grp_fu_11203_p_din1 = grp_fu_1397_p1;
assign grp_fu_11207_p_ce = 1'b1;
assign grp_fu_11207_p_din0 = grp_fu_1402_p0;
assign grp_fu_11207_p_din1 = grp_fu_1402_p1;
assign grp_fu_11236_p_ce = 1'b1;
assign grp_fu_11236_p_din0 = grp_fu_1380_p0;
assign grp_fu_11236_p_din1 = grp_fu_1380_p1;
assign grp_fu_11236_p_opcode = grp_fu_1380_opcode;
assign grp_fu_11240_p_ce = 1'b1;
assign grp_fu_11240_p_din0 = grp_fu_1384_p0;
assign grp_fu_11240_p_din1 = grp_fu_1384_p1;
assign grp_fu_11240_p_opcode = grp_fu_1384_opcode;
assign grp_fu_11244_p_ce = 1'b1;
assign grp_fu_11244_p_din0 = grp_fu_1388_p0;
assign grp_fu_11244_p_din1 = grp_fu_1388_p1;
assign grp_fu_11244_p_opcode = grp_fu_1388_opcode;
assign grp_fu_11248_p_ce = 1'b1;
assign grp_fu_11248_p_din0 = grp_fu_1407_p0;
assign grp_fu_11248_p_din1 = grp_fu_1407_p1;
assign icmp_ln367_fu_1547_p2 = ((trunc_ln365_fu_1544_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1466_p4 = {{ap_sig_allocacmp_tid_5[5:2]}};
assign or_ln_fu_2698_p3 = {{tmp_s_fu_2689_p4}, {1'd1}};
assign select_ln371_1_fu_1713_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_28_q0 : DATA_y_12_q0);
assign select_ln371_fu_1585_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_20_q0 : DATA_y_4_q0);
assign select_ln372_1_fu_1721_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_29_q0 : DATA_y_13_q0);
assign select_ln372_fu_1593_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_21_q0 : DATA_y_5_q0);
assign select_ln373_1_fu_1729_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_30_q0 : DATA_y_14_q0);
assign select_ln373_fu_1601_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_22_q0 : DATA_y_6_q0);
assign select_ln374_1_fu_1737_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_31_q0 : DATA_y_15_q0);
assign select_ln374_fu_1609_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_y_23_q0 : DATA_y_7_q0);
assign select_ln380_1_fu_1777_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_28_q0 : DATA_x_12_q0);
assign select_ln380_fu_1649_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_20_q0 : DATA_x_4_q0);
assign select_ln381_1_fu_1785_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_29_q0 : DATA_x_13_q0);
assign select_ln381_fu_1657_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_21_q0 : DATA_x_5_q0);
assign select_ln382_1_fu_1793_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_30_q0 : DATA_x_14_q0);
assign select_ln382_fu_1665_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_22_q0 : DATA_x_6_q0);
assign select_ln383_1_fu_1801_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_31_q0 : DATA_x_15_q0);
assign select_ln383_fu_1673_p3 = ((icmp_ln367_fu_1547_p2[0:0] == 1'b1) ? DATA_x_23_q0 : DATA_x_7_q0);
assign sext_ln392_fu_2568_p1 = zext_ln390_cast_reg_4159;
assign sext_ln395_1_fu_2818_p1 = zext_ln391_1_cast_reg_4211;
assign sext_ln395_fu_2581_p1 = zext_ln391_cast_reg_4175;
assign sext_ln396_1_fu_2840_p1 = $signed(add_ln396_fu_2835_p2);
assign sext_ln396_fu_2666_p1 = zext_ln390_cast_reg_4159;
assign tmp_141_fu_2720_p4 = {{tid_5_reg_2865_pp0_iter5_reg[6:1]}};
assign tmp_s_fu_2689_p4 = {{tid_5_reg_2865_pp0_iter5_reg[5:1]}};
assign trunc_ln365_fu_1544_p1 = tid_5_reg_2865[1:0];
assign trunc_ln386_10_fu_1966_p1 = bitcast_ln386_20_fu_1949_p1[62:0];
assign trunc_ln386_11_fu_2000_p1 = bitcast_ln386_22_fu_1983_p1[62:0];
assign trunc_ln386_12_fu_2184_p1 = bitcast_ln386_24_fu_2167_p1[62:0];
assign trunc_ln386_13_fu_2218_p1 = bitcast_ln386_26_fu_2201_p1[62:0];
assign trunc_ln386_14_fu_2035_p1 = bitcast_ln386_28_fu_2017_p1[62:0];
assign trunc_ln386_15_fu_2071_p1 = bitcast_ln386_30_fu_2053_p1[62:0];
assign trunc_ln386_16_fu_2320_p1 = bitcast_ln386_32_fu_2303_p1[62:0];
assign trunc_ln386_17_fu_2354_p1 = bitcast_ln386_34_fu_2337_p1[62:0];
assign trunc_ln386_18_fu_2458_p1 = bitcast_ln386_36_fu_2441_p1[62:0];
assign trunc_ln386_19_fu_2492_p1 = bitcast_ln386_38_fu_2475_p1[62:0];
assign trunc_ln386_1_fu_1860_p1 = bitcast_ln386_2_fu_1843_p1[62:0];
assign trunc_ln386_2_fu_2116_p1 = bitcast_ln386_4_fu_2099_p1[62:0];
assign trunc_ln386_3_fu_2150_p1 = bitcast_ln386_6_fu_2133_p1[62:0];
assign trunc_ln386_4_fu_1895_p1 = bitcast_ln386_8_fu_1877_p1[62:0];
assign trunc_ln386_5_fu_1931_p1 = bitcast_ln386_10_fu_1913_p1[62:0];
assign trunc_ln386_6_fu_2252_p1 = bitcast_ln386_12_fu_2235_p1[62:0];
assign trunc_ln386_7_fu_2286_p1 = bitcast_ln386_14_fu_2269_p1[62:0];
assign trunc_ln386_8_fu_2389_p1 = bitcast_ln386_16_fu_2371_p1[62:0];
assign trunc_ln386_9_fu_2424_p1 = bitcast_ln386_18_fu_2406_p1[62:0];
assign trunc_ln386_fu_1826_p1 = bitcast_ln386_fu_1809_p1[62:0];
assign trunc_ln390_fu_2509_p1 = tid_5_reg_2865_pp0_iter4_reg[5:0];
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
assign xor_ln386_10_fu_2004_p3 = {{xor_ln386_29_fu_1994_p2}, {trunc_ln386_11_fu_2000_p1}};
assign xor_ln386_11_fu_2188_p3 = {{xor_ln386_30_fu_2178_p2}, {trunc_ln386_12_fu_2184_p1}};
assign xor_ln386_12_fu_2222_p3 = {{xor_ln386_31_fu_2212_p2}, {trunc_ln386_13_fu_2218_p1}};
assign xor_ln386_13_fu_2039_p3 = {{xor_ln386_32_fu_2029_p2}, {trunc_ln386_14_fu_2035_p1}};
assign xor_ln386_14_fu_2075_p3 = {{xor_ln386_33_fu_2065_p2}, {trunc_ln386_15_fu_2071_p1}};
assign xor_ln386_15_fu_2324_p3 = {{xor_ln386_34_fu_2314_p2}, {trunc_ln386_16_fu_2320_p1}};
assign xor_ln386_16_fu_2358_p3 = {{xor_ln386_35_fu_2348_p2}, {trunc_ln386_17_fu_2354_p1}};
assign xor_ln386_17_fu_2462_p3 = {{xor_ln386_36_fu_2452_p2}, {trunc_ln386_18_fu_2458_p1}};
assign xor_ln386_18_fu_2496_p3 = {{xor_ln386_37_fu_2486_p2}, {trunc_ln386_19_fu_2492_p1}};
assign xor_ln386_19_fu_1820_p2 = (bit_sel_fu_1812_p3 ^ 1'd1);
assign xor_ln386_1_fu_1864_p3 = {{xor_ln386_fu_1854_p2}, {trunc_ln386_1_fu_1860_p1}};
assign xor_ln386_20_fu_2110_p2 = (bit_sel81_fu_2102_p3 ^ 1'd1);
assign xor_ln386_21_fu_2144_p2 = (bit_sel82_fu_2136_p3 ^ 1'd1);
assign xor_ln386_22_fu_1889_p2 = (bit_sel83_fu_1881_p3 ^ 1'd1);
assign xor_ln386_23_fu_1925_p2 = (bit_sel84_fu_1917_p3 ^ 1'd1);
assign xor_ln386_24_fu_2246_p2 = (bit_sel85_fu_2238_p3 ^ 1'd1);
assign xor_ln386_25_fu_2280_p2 = (bit_sel86_fu_2272_p3 ^ 1'd1);
assign xor_ln386_26_fu_2383_p2 = (bit_sel87_fu_2375_p3 ^ 1'd1);
assign xor_ln386_27_fu_2418_p2 = (bit_sel88_fu_2410_p3 ^ 1'd1);
assign xor_ln386_28_fu_1960_p2 = (bit_sel89_fu_1952_p3 ^ 1'd1);
assign xor_ln386_29_fu_1994_p2 = (bit_sel90_fu_1986_p3 ^ 1'd1);
assign xor_ln386_2_fu_2120_p3 = {{xor_ln386_20_fu_2110_p2}, {trunc_ln386_2_fu_2116_p1}};
assign xor_ln386_30_fu_2178_p2 = (bit_sel91_fu_2170_p3 ^ 1'd1);
assign xor_ln386_31_fu_2212_p2 = (bit_sel92_fu_2204_p3 ^ 1'd1);
assign xor_ln386_32_fu_2029_p2 = (bit_sel93_fu_2021_p3 ^ 1'd1);
assign xor_ln386_33_fu_2065_p2 = (bit_sel94_fu_2057_p3 ^ 1'd1);
assign xor_ln386_34_fu_2314_p2 = (bit_sel95_fu_2306_p3 ^ 1'd1);
assign xor_ln386_35_fu_2348_p2 = (bit_sel96_fu_2340_p3 ^ 1'd1);
assign xor_ln386_36_fu_2452_p2 = (bit_sel97_fu_2444_p3 ^ 1'd1);
assign xor_ln386_37_fu_2486_p2 = (bit_sel98_fu_2478_p3 ^ 1'd1);
assign xor_ln386_3_fu_2154_p3 = {{xor_ln386_21_fu_2144_p2}, {trunc_ln386_3_fu_2150_p1}};
assign xor_ln386_4_fu_1899_p3 = {{xor_ln386_22_fu_1889_p2}, {trunc_ln386_4_fu_1895_p1}};
assign xor_ln386_5_fu_1935_p3 = {{xor_ln386_23_fu_1925_p2}, {trunc_ln386_5_fu_1931_p1}};
assign xor_ln386_6_fu_2256_p3 = {{xor_ln386_24_fu_2246_p2}, {trunc_ln386_6_fu_2252_p1}};
assign xor_ln386_7_fu_2290_p3 = {{xor_ln386_25_fu_2280_p2}, {trunc_ln386_7_fu_2286_p1}};
assign xor_ln386_8_fu_2393_p3 = {{xor_ln386_26_fu_2383_p2}, {trunc_ln386_8_fu_2389_p1}};
assign xor_ln386_9_fu_2428_p3 = {{xor_ln386_27_fu_2418_p2}, {trunc_ln386_9_fu_2424_p1}};
assign xor_ln386_fu_1854_p2 = (bit_sel80_fu_1846_p3 ^ 1'd1);
assign xor_ln386_s_fu_1970_p3 = {{xor_ln386_28_fu_1960_p2}, {trunc_ln386_10_fu_1966_p1}};
assign xor_ln3_fu_1830_p3 = {{xor_ln386_19_fu_1820_p2}, {trunc_ln386_fu_1826_p1}};
assign zext_ln365_1_fu_2647_p1 = tid_5_reg_2865_pp0_iter5_reg;
assign zext_ln365_2_fu_2602_p1 = tid_5_reg_2865_pp0_iter5_reg;
assign zext_ln365_fu_2534_p1 = tid_5_reg_2865_pp0_iter4_reg;
assign zext_ln367_1_fu_2706_p1 = or_ln_fu_2698_p3;
assign zext_ln367_fu_1476_p1 = lshr_ln_fu_1466_p4;
assign zext_ln390_1_fu_2633_p1 = add_ln390_fu_2627_p2;
assign zext_ln390_cast_fu_2512_p3 = {{1'd1}, {trunc_ln390_fu_2509_p1}};
assign zext_ln390_fu_2520_p1 = $unsigned(zext_ln390_cast_fu_2512_p3);
assign zext_ln391_1_cast_fu_2729_p4 = {{{{1'd1}, {tmp_141_fu_2720_p4}}}, {1'd1}};
assign zext_ln391_1_fu_2739_p1 = $unsigned(zext_ln391_1_cast_fu_2729_p4);
assign zext_ln391_cast_fu_2543_p3 = {{1'd1}, {tid_5_reg_2865_pp0_iter4_reg}};
assign zext_ln391_fu_2550_p1 = $unsigned(zext_ln391_cast_fu_2543_p3);
assign zext_ln392_1_fu_2758_p1 = add_ln392_fu_2753_p2;
assign zext_ln392_fu_2571_p1 = $unsigned(sext_ln392_fu_2568_p1);
assign zext_ln393_1_cast_fu_2775_p4 = {{{{1'd1}, {zext_ln393_1_fu_2772_p1}}}, {1'd1}};
assign zext_ln393_1_fu_2772_p1 = tmp_141_reg_4206;
assign zext_ln393_2_fu_2785_p1 = zext_ln393_1_cast_fu_2775_p4;
assign zext_ln393_cast_fu_2605_p3 = {{1'd1}, {zext_ln365_2_fu_2602_p1}};
assign zext_ln393_fu_2613_p1 = zext_ln393_cast_fu_2605_p3;
assign zext_ln394_1_fu_2804_p1 = add_ln394_1_fu_2799_p2;
assign zext_ln394_fu_2656_p1 = add_ln394_fu_2650_p2;
assign zext_ln395_1_fu_2821_p1 = $unsigned(sext_ln395_1_fu_2818_p1);
assign zext_ln395_fu_2584_p1 = $unsigned(sext_ln395_fu_2581_p1);
assign zext_ln396_1_fu_2844_p1 = $unsigned(sext_ln396_1_fu_2840_p1);
assign zext_ln396_fu_2669_p1 = $unsigned(sext_ln396_fu_2666_p1);
always @ (posedge ap_clk) begin
    zext_ln390_cast_reg_4159[6] <= 1'b1;
    zext_ln391_cast_reg_4175[7] <= 1'b1;
    zext_ln365_1_reg_4200[8:7] <= 2'b00;
    zext_ln391_1_cast_reg_4211[0] <= 1'b1;
    zext_ln391_1_cast_reg_4211[7] <= 1'b1;
end
endmodule 