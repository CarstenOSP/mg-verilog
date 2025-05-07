module syr2k_syr2k_Pipeline_lp7_lp8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_C_address0,buff_C_ce0,buff_C_q0,buff_C_address1,buff_C_ce1,buff_C_q1,buff_C_1_address0,buff_C_1_ce0,buff_C_1_q0,buff_C_1_address1,buff_C_1_ce1,buff_C_1_q1,buff_C_2_address0,buff_C_2_ce0,buff_C_2_q0,buff_C_2_address1,buff_C_2_ce1,buff_C_2_q1,buff_C_3_address0,buff_C_3_ce0,buff_C_3_q0,buff_C_3_address1,buff_C_3_ce1,buff_C_3_q1,buff_D_out_address0,buff_D_out_ce0,buff_D_out_we0,buff_D_out_d0,buff_D_out_address1,buff_D_out_ce1,buff_D_out_we1,buff_D_out_d1,buff_D_out_1_address0,buff_D_out_1_ce0,buff_D_out_1_we0,buff_D_out_1_d0,buff_D_out_1_address1,buff_D_out_1_ce1,buff_D_out_1_we1,buff_D_out_1_d1,buff_D_out_2_address0,buff_D_out_2_ce0,buff_D_out_2_we0,buff_D_out_2_d0,buff_D_out_2_address1,buff_D_out_2_ce1,buff_D_out_2_we1,buff_D_out_2_d1,buff_D_out_3_address0,buff_D_out_3_ce0,buff_D_out_3_we0,buff_D_out_3_d0,buff_D_out_3_address1,buff_D_out_3_ce1,buff_D_out_3_we1,buff_D_out_3_d1,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_address1,tmp1_ce1,tmp1_q1,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_1_address1,tmp1_1_ce1,tmp1_1_q1,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_2_address1,tmp1_2_ce1,tmp1_2_q1,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,tmp1_3_address1,tmp1_3_ce1,tmp1_3_q1,tmp2_address0,tmp2_ce0,tmp2_q0,tmp2_address1,tmp2_ce1,tmp2_q1,tmp2_1_address0,tmp2_1_ce0,tmp2_1_q0,tmp2_1_address1,tmp2_1_ce1,tmp2_1_q1,tmp2_2_address0,tmp2_2_ce0,tmp2_2_q0,tmp2_2_address1,tmp2_2_ce1,tmp2_2_q1,tmp2_3_address0,tmp2_3_ce0,tmp2_3_q0,tmp2_3_address1,tmp2_3_ce1,tmp2_3_q1,beta,grp_fu_1202_p_din0,grp_fu_1202_p_din1,grp_fu_1202_p_opcode,grp_fu_1202_p_dout0,grp_fu_1202_p_ce,grp_fu_1210_p_din0,grp_fu_1210_p_din1,grp_fu_1210_p_opcode,grp_fu_1210_p_dout0,grp_fu_1210_p_ce,grp_fu_1214_p_din0,grp_fu_1214_p_din1,grp_fu_1214_p_opcode,grp_fu_1214_p_dout0,grp_fu_1214_p_ce,grp_fu_1218_p_din0,grp_fu_1218_p_din1,grp_fu_1218_p_opcode,grp_fu_1218_p_dout0,grp_fu_1218_p_ce,grp_fu_1222_p_din0,grp_fu_1222_p_din1,grp_fu_1222_p_opcode,grp_fu_1222_p_dout0,grp_fu_1222_p_ce,grp_fu_1226_p_din0,grp_fu_1226_p_din1,grp_fu_1226_p_opcode,grp_fu_1226_p_dout0,grp_fu_1226_p_ce,grp_fu_1230_p_din0,grp_fu_1230_p_din1,grp_fu_1230_p_opcode,grp_fu_1230_p_dout0,grp_fu_1230_p_ce,grp_fu_1234_p_din0,grp_fu_1234_p_din1,grp_fu_1234_p_opcode,grp_fu_1234_p_dout0,grp_fu_1234_p_ce,grp_fu_1238_p_din0,grp_fu_1238_p_din1,grp_fu_1238_p_opcode,grp_fu_1238_p_dout0,grp_fu_1238_p_ce,grp_fu_1242_p_din0,grp_fu_1242_p_din1,grp_fu_1242_p_opcode,grp_fu_1242_p_dout0,grp_fu_1242_p_ce,grp_fu_1246_p_din0,grp_fu_1246_p_din1,grp_fu_1246_p_opcode,grp_fu_1246_p_dout0,grp_fu_1246_p_ce,grp_fu_1250_p_din0,grp_fu_1250_p_din1,grp_fu_1250_p_opcode,grp_fu_1250_p_dout0,grp_fu_1250_p_ce,grp_fu_1254_p_din0,grp_fu_1254_p_din1,grp_fu_1254_p_opcode,grp_fu_1254_p_dout0,grp_fu_1254_p_ce,grp_fu_1258_p_din0,grp_fu_1258_p_din1,grp_fu_1258_p_opcode,grp_fu_1258_p_dout0,grp_fu_1258_p_ce,grp_fu_1262_p_din0,grp_fu_1262_p_din1,grp_fu_1262_p_opcode,grp_fu_1262_p_dout0,grp_fu_1262_p_ce,grp_fu_1266_p_din0,grp_fu_1266_p_din1,grp_fu_1266_p_opcode,grp_fu_1266_p_dout0,grp_fu_1266_p_ce,grp_fu_1206_p_din0,grp_fu_1206_p_din1,grp_fu_1206_p_dout0,grp_fu_1206_p_ce,grp_fu_1270_p_din0,grp_fu_1270_p_din1,grp_fu_1270_p_dout0,grp_fu_1270_p_ce,grp_fu_1274_p_din0,grp_fu_1274_p_din1,grp_fu_1274_p_dout0,grp_fu_1274_p_ce,grp_fu_1278_p_din0,grp_fu_1278_p_din1,grp_fu_1278_p_dout0,grp_fu_1278_p_ce,grp_fu_1282_p_din0,grp_fu_1282_p_din1,grp_fu_1282_p_dout0,grp_fu_1282_p_ce,grp_fu_1286_p_din0,grp_fu_1286_p_din1,grp_fu_1286_p_dout0,grp_fu_1286_p_ce,grp_fu_1290_p_din0,grp_fu_1290_p_din1,grp_fu_1290_p_dout0,grp_fu_1290_p_ce,grp_fu_1294_p_din0,grp_fu_1294_p_din1,grp_fu_1294_p_dout0,grp_fu_1294_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] buff_C_address0;
output   buff_C_ce0;
input  [31:0] buff_C_q0;
output  [9:0] buff_C_address1;
output   buff_C_ce1;
input  [31:0] buff_C_q1;
output  [9:0] buff_C_1_address0;
output   buff_C_1_ce0;
input  [31:0] buff_C_1_q0;
output  [9:0] buff_C_1_address1;
output   buff_C_1_ce1;
input  [31:0] buff_C_1_q1;
output  [9:0] buff_C_2_address0;
output   buff_C_2_ce0;
input  [31:0] buff_C_2_q0;
output  [9:0] buff_C_2_address1;
output   buff_C_2_ce1;
input  [31:0] buff_C_2_q1;
output  [9:0] buff_C_3_address0;
output   buff_C_3_ce0;
input  [31:0] buff_C_3_q0;
output  [9:0] buff_C_3_address1;
output   buff_C_3_ce1;
input  [31:0] buff_C_3_q1;
output  [9:0] buff_D_out_address0;
output   buff_D_out_ce0;
output   buff_D_out_we0;
output  [31:0] buff_D_out_d0;
output  [9:0] buff_D_out_address1;
output   buff_D_out_ce1;
output   buff_D_out_we1;
output  [31:0] buff_D_out_d1;
output  [9:0] buff_D_out_1_address0;
output   buff_D_out_1_ce0;
output   buff_D_out_1_we0;
output  [31:0] buff_D_out_1_d0;
output  [9:0] buff_D_out_1_address1;
output   buff_D_out_1_ce1;
output   buff_D_out_1_we1;
output  [31:0] buff_D_out_1_d1;
output  [9:0] buff_D_out_2_address0;
output   buff_D_out_2_ce0;
output   buff_D_out_2_we0;
output  [31:0] buff_D_out_2_d0;
output  [9:0] buff_D_out_2_address1;
output   buff_D_out_2_ce1;
output   buff_D_out_2_we1;
output  [31:0] buff_D_out_2_d1;
output  [9:0] buff_D_out_3_address0;
output   buff_D_out_3_ce0;
output   buff_D_out_3_we0;
output  [31:0] buff_D_out_3_d0;
output  [9:0] buff_D_out_3_address1;
output   buff_D_out_3_ce1;
output   buff_D_out_3_we1;
output  [31:0] buff_D_out_3_d1;
output  [9:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [9:0] tmp1_address1;
output   tmp1_ce1;
input  [31:0] tmp1_q1;
output  [9:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [9:0] tmp1_1_address1;
output   tmp1_1_ce1;
input  [31:0] tmp1_1_q1;
output  [9:0] tmp1_2_address0;
output   tmp1_2_ce0;
input  [31:0] tmp1_2_q0;
output  [9:0] tmp1_2_address1;
output   tmp1_2_ce1;
input  [31:0] tmp1_2_q1;
output  [9:0] tmp1_3_address0;
output   tmp1_3_ce0;
input  [31:0] tmp1_3_q0;
output  [9:0] tmp1_3_address1;
output   tmp1_3_ce1;
input  [31:0] tmp1_3_q1;
output  [9:0] tmp2_address0;
output   tmp2_ce0;
input  [31:0] tmp2_q0;
output  [9:0] tmp2_address1;
output   tmp2_ce1;
input  [31:0] tmp2_q1;
output  [9:0] tmp2_1_address0;
output   tmp2_1_ce0;
input  [31:0] tmp2_1_q0;
output  [9:0] tmp2_1_address1;
output   tmp2_1_ce1;
input  [31:0] tmp2_1_q1;
output  [9:0] tmp2_2_address0;
output   tmp2_2_ce0;
input  [31:0] tmp2_2_q0;
output  [9:0] tmp2_2_address1;
output   tmp2_2_ce1;
input  [31:0] tmp2_2_q1;
output  [9:0] tmp2_3_address0;
output   tmp2_3_ce0;
input  [31:0] tmp2_3_q0;
output  [9:0] tmp2_3_address1;
output   tmp2_3_ce1;
input  [31:0] tmp2_3_q1;
input  [31:0] beta;
output  [31:0] grp_fu_1202_p_din0;
output  [31:0] grp_fu_1202_p_din1;
output  [1:0] grp_fu_1202_p_opcode;
input  [31:0] grp_fu_1202_p_dout0;
output   grp_fu_1202_p_ce;
output  [31:0] grp_fu_1210_p_din0;
output  [31:0] grp_fu_1210_p_din1;
output  [1:0] grp_fu_1210_p_opcode;
input  [31:0] grp_fu_1210_p_dout0;
output   grp_fu_1210_p_ce;
output  [31:0] grp_fu_1214_p_din0;
output  [31:0] grp_fu_1214_p_din1;
output  [1:0] grp_fu_1214_p_opcode;
input  [31:0] grp_fu_1214_p_dout0;
output   grp_fu_1214_p_ce;
output  [31:0] grp_fu_1218_p_din0;
output  [31:0] grp_fu_1218_p_din1;
output  [1:0] grp_fu_1218_p_opcode;
input  [31:0] grp_fu_1218_p_dout0;
output   grp_fu_1218_p_ce;
output  [31:0] grp_fu_1222_p_din0;
output  [31:0] grp_fu_1222_p_din1;
output  [1:0] grp_fu_1222_p_opcode;
input  [31:0] grp_fu_1222_p_dout0;
output   grp_fu_1222_p_ce;
output  [31:0] grp_fu_1226_p_din0;
output  [31:0] grp_fu_1226_p_din1;
output  [1:0] grp_fu_1226_p_opcode;
input  [31:0] grp_fu_1226_p_dout0;
output   grp_fu_1226_p_ce;
output  [31:0] grp_fu_1230_p_din0;
output  [31:0] grp_fu_1230_p_din1;
output  [1:0] grp_fu_1230_p_opcode;
input  [31:0] grp_fu_1230_p_dout0;
output   grp_fu_1230_p_ce;
output  [31:0] grp_fu_1234_p_din0;
output  [31:0] grp_fu_1234_p_din1;
output  [1:0] grp_fu_1234_p_opcode;
input  [31:0] grp_fu_1234_p_dout0;
output   grp_fu_1234_p_ce;
output  [31:0] grp_fu_1238_p_din0;
output  [31:0] grp_fu_1238_p_din1;
output  [1:0] grp_fu_1238_p_opcode;
input  [31:0] grp_fu_1238_p_dout0;
output   grp_fu_1238_p_ce;
output  [31:0] grp_fu_1242_p_din0;
output  [31:0] grp_fu_1242_p_din1;
output  [1:0] grp_fu_1242_p_opcode;
input  [31:0] grp_fu_1242_p_dout0;
output   grp_fu_1242_p_ce;
output  [31:0] grp_fu_1246_p_din0;
output  [31:0] grp_fu_1246_p_din1;
output  [1:0] grp_fu_1246_p_opcode;
input  [31:0] grp_fu_1246_p_dout0;
output   grp_fu_1246_p_ce;
output  [31:0] grp_fu_1250_p_din0;
output  [31:0] grp_fu_1250_p_din1;
output  [1:0] grp_fu_1250_p_opcode;
input  [31:0] grp_fu_1250_p_dout0;
output   grp_fu_1250_p_ce;
output  [31:0] grp_fu_1254_p_din0;
output  [31:0] grp_fu_1254_p_din1;
output  [1:0] grp_fu_1254_p_opcode;
input  [31:0] grp_fu_1254_p_dout0;
output   grp_fu_1254_p_ce;
output  [31:0] grp_fu_1258_p_din0;
output  [31:0] grp_fu_1258_p_din1;
output  [1:0] grp_fu_1258_p_opcode;
input  [31:0] grp_fu_1258_p_dout0;
output   grp_fu_1258_p_ce;
output  [31:0] grp_fu_1262_p_din0;
output  [31:0] grp_fu_1262_p_din1;
output  [1:0] grp_fu_1262_p_opcode;
input  [31:0] grp_fu_1262_p_dout0;
output   grp_fu_1262_p_ce;
output  [31:0] grp_fu_1266_p_din0;
output  [31:0] grp_fu_1266_p_din1;
output  [1:0] grp_fu_1266_p_opcode;
input  [31:0] grp_fu_1266_p_dout0;
output   grp_fu_1266_p_ce;
output  [31:0] grp_fu_1206_p_din0;
output  [31:0] grp_fu_1206_p_din1;
input  [31:0] grp_fu_1206_p_dout0;
output   grp_fu_1206_p_ce;
output  [31:0] grp_fu_1270_p_din0;
output  [31:0] grp_fu_1270_p_din1;
input  [31:0] grp_fu_1270_p_dout0;
output   grp_fu_1270_p_ce;
output  [31:0] grp_fu_1274_p_din0;
output  [31:0] grp_fu_1274_p_din1;
input  [31:0] grp_fu_1274_p_dout0;
output   grp_fu_1274_p_ce;
output  [31:0] grp_fu_1278_p_din0;
output  [31:0] grp_fu_1278_p_din1;
input  [31:0] grp_fu_1278_p_dout0;
output   grp_fu_1278_p_ce;
output  [31:0] grp_fu_1282_p_din0;
output  [31:0] grp_fu_1282_p_din1;
input  [31:0] grp_fu_1282_p_dout0;
output   grp_fu_1282_p_ce;
output  [31:0] grp_fu_1286_p_din0;
output  [31:0] grp_fu_1286_p_din1;
input  [31:0] grp_fu_1286_p_dout0;
output   grp_fu_1286_p_ce;
output  [31:0] grp_fu_1290_p_din0;
output  [31:0] grp_fu_1290_p_din1;
input  [31:0] grp_fu_1290_p_dout0;
output   grp_fu_1290_p_ce;
output  [31:0] grp_fu_1294_p_din0;
output  [31:0] grp_fu_1294_p_din1;
input  [31:0] grp_fu_1294_p_dout0;
output   grp_fu_1294_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln45_fu_620_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln48_fu_695_p1;
reg   [63:0] zext_ln48_reg_792;
reg   [63:0] zext_ln48_reg_792_pp0_iter2_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter3_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter4_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter5_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter6_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter7_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter8_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter9_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter10_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter11_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter12_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter13_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter14_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter15_reg;
reg   [63:0] zext_ln48_reg_792_pp0_iter16_reg;
wire   [63:0] zext_ln48_1_fu_727_p1;
reg   [63:0] zext_ln48_1_reg_844;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter2_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter3_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter4_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter5_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter6_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter7_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter8_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter9_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter10_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter11_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter12_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter13_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter14_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter15_reg;
reg   [63:0] zext_ln48_1_reg_844_pp0_iter16_reg;
reg   [31:0] mux_case_024_reg_896;
reg   [31:0] mux_case_025_reg_901;
reg   [31:0] tmp1_1_load_reg_906;
reg   [31:0] tmp1_2_load_reg_911;
reg   [31:0] tmp1_3_load_reg_916;
reg   [31:0] mux_case_030_reg_921;
reg   [31:0] tmp1_1_load_1_reg_926;
reg   [31:0] tmp1_2_load_1_reg_931;
reg   [31:0] tmp1_3_load_1_reg_936;
reg   [31:0] tmp2_1_load_reg_941;
reg   [31:0] tmp2_2_load_reg_946;
reg   [31:0] tmp2_3_load_reg_951;
reg   [31:0] mux_case_037_reg_956;
reg   [31:0] tmp2_1_load_1_reg_961;
reg   [31:0] tmp2_2_load_1_reg_966;
reg   [31:0] tmp2_3_load_1_reg_971;
reg   [31:0] buff_C_load_reg_1016;
reg   [31:0] buff_C_1_load_reg_1021;
reg   [31:0] buff_C_2_load_reg_1026;
reg   [31:0] buff_C_3_load_reg_1031;
reg   [31:0] buff_C_load_1_reg_1036;
reg   [31:0] buff_C_1_load_1_reg_1041;
reg   [31:0] buff_C_2_load_1_reg_1046;
reg   [31:0] buff_C_3_load_1_reg_1051;
reg   [31:0] add2_reg_1056;
reg   [31:0] mul4_reg_1061;
reg   [31:0] add135_1_reg_1066;
reg   [31:0] add135_2_reg_1071;
reg   [31:0] add135_3_reg_1076;
reg   [31:0] add135_4_reg_1081;
reg   [31:0] add135_5_reg_1086;
reg   [31:0] add135_6_reg_1091;
reg   [31:0] add135_7_reg_1096;
reg   [31:0] mul140_1_reg_1101;
reg   [31:0] mul140_2_reg_1106;
reg   [31:0] mul140_3_reg_1111;
reg   [31:0] mul140_4_reg_1116;
reg   [31:0] mul140_5_reg_1121;
reg   [31:0] mul140_6_reg_1126;
reg   [31:0] mul140_7_reg_1131;
reg   [31:0] add3_reg_1136;
reg   [31:0] add141_1_reg_1141;
reg   [31:0] add141_2_reg_1146;
reg   [31:0] add141_3_reg_1151;
reg   [31:0] add141_4_reg_1156;
reg   [31:0] add141_5_reg_1161;
reg   [31:0] add141_6_reg_1166;
reg   [31:0] add141_7_reg_1171;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_88;
wire   [6:0] add_ln46_fu_739_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_92;
wire   [6:0] select_ln45_fu_665_p3;
reg   [9:0] indvar_flatten37_fu_96;
wire   [9:0] add_ln45_1_fu_626_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten37_load;
reg    tmp1_ce1_local;
reg    tmp1_ce0_local;
reg    tmp2_ce1_local;
reg    tmp2_ce0_local;
reg    tmp1_1_ce1_local;
reg    tmp1_1_ce0_local;
reg    tmp1_2_ce1_local;
reg    tmp1_2_ce0_local;
reg    tmp1_3_ce1_local;
reg    tmp1_3_ce0_local;
reg    tmp2_1_ce1_local;
reg    tmp2_1_ce0_local;
reg    tmp2_2_ce1_local;
reg    tmp2_2_ce0_local;
reg    tmp2_3_ce1_local;
reg    tmp2_3_ce0_local;
reg    buff_C_ce1_local;
reg    buff_C_ce0_local;
reg    buff_C_1_ce1_local;
reg    buff_C_1_ce0_local;
reg    buff_C_2_ce1_local;
reg    buff_C_2_ce0_local;
reg    buff_C_3_ce1_local;
reg    buff_C_3_ce0_local;
reg    buff_D_out_we1_local;
reg    buff_D_out_ce1_local;
reg    buff_D_out_we0_local;
reg    buff_D_out_ce0_local;
reg    buff_D_out_1_we1_local;
reg    buff_D_out_1_ce1_local;
reg    buff_D_out_1_we0_local;
reg    buff_D_out_1_ce0_local;
reg    buff_D_out_2_we1_local;
reg    buff_D_out_2_ce1_local;
reg    buff_D_out_2_we0_local;
reg    buff_D_out_2_ce0_local;
reg    buff_D_out_3_we1_local;
reg    buff_D_out_3_ce1_local;
reg    buff_D_out_3_we0_local;
reg    buff_D_out_3_ce0_local;
wire   [0:0] tmp_fu_649_p3;
wire   [6:0] add_ln45_fu_643_p2;
wire   [6:0] select_ln5_fu_657_p3;
wire   [5:0] trunc_ln5_fu_673_p1;
wire   [3:0] lshr_ln5_5_fu_677_p4;
wire   [9:0] tmp_s_fu_687_p3;
wire   [2:0] tmp_1_fu_707_p4;
wire   [9:0] tmp_2_fu_717_p4;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
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
#0 j_fu_88 = 7'd0;
#0 i_fu_92 = 7'd0;
#0 indvar_flatten37_fu_96 = 10'd0;
#0 ap_done_reg = 1'b0;
end
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_92 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_92 <= select_ln45_fu_665_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln45_fu_620_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten37_fu_96 <= add_ln45_1_fu_626_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten37_fu_96 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_88 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_88 <= add_ln46_fu_739_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add135_1_reg_1066 <= grp_fu_1210_p_dout0;
        add135_2_reg_1071 <= grp_fu_1214_p_dout0;
        add135_3_reg_1076 <= grp_fu_1218_p_dout0;
        add135_4_reg_1081 <= grp_fu_1222_p_dout0;
        add135_5_reg_1086 <= grp_fu_1226_p_dout0;
        add135_6_reg_1091 <= grp_fu_1230_p_dout0;
        add135_7_reg_1096 <= grp_fu_1234_p_dout0;
        add141_1_reg_1141 <= grp_fu_1242_p_dout0;
        add141_2_reg_1146 <= grp_fu_1246_p_dout0;
        add141_3_reg_1151 <= grp_fu_1250_p_dout0;
        add141_4_reg_1156 <= grp_fu_1254_p_dout0;
        add141_5_reg_1161 <= grp_fu_1258_p_dout0;
        add141_6_reg_1166 <= grp_fu_1262_p_dout0;
        add141_7_reg_1171 <= grp_fu_1266_p_dout0;
        add2_reg_1056 <= grp_fu_1202_p_dout0;
        add3_reg_1136 <= grp_fu_1238_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul140_1_reg_1101 <= grp_fu_1270_p_dout0;
        mul140_2_reg_1106 <= grp_fu_1274_p_dout0;
        mul140_3_reg_1111 <= grp_fu_1278_p_dout0;
        mul140_4_reg_1116 <= grp_fu_1282_p_dout0;
        mul140_5_reg_1121 <= grp_fu_1286_p_dout0;
        mul140_6_reg_1126 <= grp_fu_1290_p_dout0;
        mul140_7_reg_1131 <= grp_fu_1294_p_dout0;
        mul4_reg_1061 <= grp_fu_1206_p_dout0;
        zext_ln48_1_reg_844_pp0_iter10_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter9_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter11_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter10_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter12_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter11_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter13_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter12_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter14_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter13_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter15_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter14_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter16_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter15_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter2_reg[9 : 1] <= zext_ln48_1_reg_844[9 : 1];
        zext_ln48_1_reg_844_pp0_iter3_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter2_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter4_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter3_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter5_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter4_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter6_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter5_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter7_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter6_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter8_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter7_reg[9 : 1];
        zext_ln48_1_reg_844_pp0_iter9_reg[9 : 1] <= zext_ln48_1_reg_844_pp0_iter8_reg[9 : 1];
        zext_ln48_reg_792_pp0_iter10_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter9_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter11_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter10_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter12_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter11_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter13_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter12_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter14_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter13_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter15_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter14_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter16_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter15_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter2_reg[9 : 0] <= zext_ln48_reg_792[9 : 0];
        zext_ln48_reg_792_pp0_iter3_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter2_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter4_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter3_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter5_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter4_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter6_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter5_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter7_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter6_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter8_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter7_reg[9 : 0];
        zext_ln48_reg_792_pp0_iter9_reg[9 : 0] <= zext_ln48_reg_792_pp0_iter8_reg[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        zext_ln48_1_reg_844[9 : 1] <= zext_ln48_1_fu_727_p1[9 : 1];
        zext_ln48_reg_792[9 : 0] <= zext_ln48_fu_695_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_1_load_1_reg_1041 <= buff_C_1_q0;
        buff_C_1_load_reg_1021 <= buff_C_1_q1;
        buff_C_2_load_1_reg_1046 <= buff_C_2_q0;
        buff_C_2_load_reg_1026 <= buff_C_2_q1;
        buff_C_3_load_1_reg_1051 <= buff_C_3_q0;
        buff_C_3_load_reg_1031 <= buff_C_3_q1;
        buff_C_load_1_reg_1036 <= buff_C_q0;
        buff_C_load_reg_1016 <= buff_C_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        mux_case_024_reg_896 <= tmp1_q1;
        mux_case_025_reg_901 <= tmp2_q1;
        mux_case_030_reg_921 <= tmp1_q0;
        mux_case_037_reg_956 <= tmp2_q0;
        tmp1_1_load_1_reg_926 <= tmp1_1_q0;
        tmp1_1_load_reg_906 <= tmp1_1_q1;
        tmp1_2_load_1_reg_931 <= tmp1_2_q0;
        tmp1_2_load_reg_911 <= tmp1_2_q1;
        tmp1_3_load_1_reg_936 <= tmp1_3_q0;
        tmp1_3_load_reg_916 <= tmp1_3_q1;
        tmp2_1_load_1_reg_961 <= tmp2_1_q0;
        tmp2_1_load_reg_941 <= tmp2_1_q1;
        tmp2_2_load_1_reg_966 <= tmp2_2_q0;
        tmp2_2_load_reg_946 <= tmp2_2_q1;
        tmp2_3_load_1_reg_971 <= tmp2_3_q0;
        tmp2_3_load_reg_951 <= tmp2_3_q1;
    end
end
always @ (*) begin
    if (((icmp_ln45_fu_620_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten37_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten37_load = indvar_flatten37_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_1_ce0_local = 1'b1;
    end else begin
        buff_C_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_1_ce1_local = 1'b1;
    end else begin
        buff_C_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_2_ce0_local = 1'b1;
    end else begin
        buff_C_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_2_ce1_local = 1'b1;
    end else begin
        buff_C_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_3_ce0_local = 1'b1;
    end else begin
        buff_C_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_3_ce1_local = 1'b1;
    end else begin
        buff_C_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_ce0_local = 1'b1;
    end else begin
        buff_C_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_ce1_local = 1'b1;
    end else begin
        buff_C_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_1_ce0_local = 1'b1;
    end else begin
        buff_D_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_1_ce1_local = 1'b1;
    end else begin
        buff_D_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_1_we0_local = 1'b1;
    end else begin
        buff_D_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_1_we1_local = 1'b1;
    end else begin
        buff_D_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_2_ce0_local = 1'b1;
    end else begin
        buff_D_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_2_ce1_local = 1'b1;
    end else begin
        buff_D_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_2_we0_local = 1'b1;
    end else begin
        buff_D_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_2_we1_local = 1'b1;
    end else begin
        buff_D_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_3_ce0_local = 1'b1;
    end else begin
        buff_D_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_3_ce1_local = 1'b1;
    end else begin
        buff_D_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_3_we0_local = 1'b1;
    end else begin
        buff_D_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_3_we1_local = 1'b1;
    end else begin
        buff_D_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_ce0_local = 1'b1;
    end else begin
        buff_D_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_ce1_local = 1'b1;
    end else begin
        buff_D_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_we0_local = 1'b1;
    end else begin
        buff_D_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_we1_local = 1'b1;
    end else begin
        buff_D_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_ce1_local = 1'b1;
    end else begin
        tmp1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_2_ce1_local = 1'b1;
    end else begin
        tmp1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_3_ce1_local = 1'b1;
    end else begin
        tmp1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce1_local = 1'b1;
    end else begin
        tmp1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_ce1_local = 1'b1;
    end else begin
        tmp2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_2_ce0_local = 1'b1;
    end else begin
        tmp2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_2_ce1_local = 1'b1;
    end else begin
        tmp2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_3_ce0_local = 1'b1;
    end else begin
        tmp2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_3_ce1_local = 1'b1;
    end else begin
        tmp2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_ce1_local = 1'b1;
    end else begin
        tmp2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln45_1_fu_626_p2 = (ap_sig_allocacmp_indvar_flatten37_load + 10'd1);
assign add_ln45_fu_643_p2 = (i_fu_92 + 7'd1);
assign add_ln46_fu_739_p2 = (select_ln5_fu_657_p3 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buff_C_1_address0 = zext_ln48_1_reg_844_pp0_iter3_reg;
assign buff_C_1_address1 = zext_ln48_reg_792_pp0_iter3_reg;
assign buff_C_1_ce0 = buff_C_1_ce0_local;
assign buff_C_1_ce1 = buff_C_1_ce1_local;
assign buff_C_2_address0 = zext_ln48_1_reg_844_pp0_iter3_reg;
assign buff_C_2_address1 = zext_ln48_reg_792_pp0_iter3_reg;
assign buff_C_2_ce0 = buff_C_2_ce0_local;
assign buff_C_2_ce1 = buff_C_2_ce1_local;
assign buff_C_3_address0 = zext_ln48_1_reg_844_pp0_iter3_reg;
assign buff_C_3_address1 = zext_ln48_reg_792_pp0_iter3_reg;
assign buff_C_3_ce0 = buff_C_3_ce0_local;
assign buff_C_3_ce1 = buff_C_3_ce1_local;
assign buff_C_address0 = zext_ln48_1_reg_844_pp0_iter3_reg;
assign buff_C_address1 = zext_ln48_reg_792_pp0_iter3_reg;
assign buff_C_ce0 = buff_C_ce0_local;
assign buff_C_ce1 = buff_C_ce1_local;
assign buff_D_out_1_address0 = zext_ln48_1_reg_844_pp0_iter16_reg;
assign buff_D_out_1_address1 = zext_ln48_reg_792_pp0_iter16_reg;
assign buff_D_out_1_ce0 = buff_D_out_1_ce0_local;
assign buff_D_out_1_ce1 = buff_D_out_1_ce1_local;
assign buff_D_out_1_d0 = add141_5_reg_1161;
assign buff_D_out_1_d1 = add141_1_reg_1141;
assign buff_D_out_1_we0 = buff_D_out_1_we0_local;
assign buff_D_out_1_we1 = buff_D_out_1_we1_local;
assign buff_D_out_2_address0 = zext_ln48_1_reg_844_pp0_iter16_reg;
assign buff_D_out_2_address1 = zext_ln48_reg_792_pp0_iter16_reg;
assign buff_D_out_2_ce0 = buff_D_out_2_ce0_local;
assign buff_D_out_2_ce1 = buff_D_out_2_ce1_local;
assign buff_D_out_2_d0 = add141_6_reg_1166;
assign buff_D_out_2_d1 = add141_2_reg_1146;
assign buff_D_out_2_we0 = buff_D_out_2_we0_local;
assign buff_D_out_2_we1 = buff_D_out_2_we1_local;
assign buff_D_out_3_address0 = zext_ln48_1_reg_844_pp0_iter16_reg;
assign buff_D_out_3_address1 = zext_ln48_reg_792_pp0_iter16_reg;
assign buff_D_out_3_ce0 = buff_D_out_3_ce0_local;
assign buff_D_out_3_ce1 = buff_D_out_3_ce1_local;
assign buff_D_out_3_d0 = add141_7_reg_1171;
assign buff_D_out_3_d1 = add141_3_reg_1151;
assign buff_D_out_3_we0 = buff_D_out_3_we0_local;
assign buff_D_out_3_we1 = buff_D_out_3_we1_local;
assign buff_D_out_address0 = zext_ln48_1_reg_844_pp0_iter16_reg;
assign buff_D_out_address1 = zext_ln48_reg_792_pp0_iter16_reg;
assign buff_D_out_ce0 = buff_D_out_ce0_local;
assign buff_D_out_ce1 = buff_D_out_ce1_local;
assign buff_D_out_d0 = add141_4_reg_1156;
assign buff_D_out_d1 = add3_reg_1136;
assign buff_D_out_we0 = buff_D_out_we0_local;
assign buff_D_out_we1 = buff_D_out_we1_local;
assign grp_fu_1202_p_ce = 1'b1;
assign grp_fu_1202_p_din0 = mux_case_024_reg_896;
assign grp_fu_1202_p_din1 = mux_case_025_reg_901;
assign grp_fu_1202_p_opcode = 2'd0;
assign grp_fu_1206_p_ce = 1'b1;
assign grp_fu_1206_p_din0 = buff_C_load_reg_1016;
assign grp_fu_1206_p_din1 = beta;
assign grp_fu_1210_p_ce = 1'b1;
assign grp_fu_1210_p_din0 = tmp1_1_load_reg_906;
assign grp_fu_1210_p_din1 = tmp2_1_load_reg_941;
assign grp_fu_1210_p_opcode = 2'd0;
assign grp_fu_1214_p_ce = 1'b1;
assign grp_fu_1214_p_din0 = tmp1_2_load_reg_911;
assign grp_fu_1214_p_din1 = tmp2_2_load_reg_946;
assign grp_fu_1214_p_opcode = 2'd0;
assign grp_fu_1218_p_ce = 1'b1;
assign grp_fu_1218_p_din0 = tmp1_3_load_reg_916;
assign grp_fu_1218_p_din1 = tmp2_3_load_reg_951;
assign grp_fu_1218_p_opcode = 2'd0;
assign grp_fu_1222_p_ce = 1'b1;
assign grp_fu_1222_p_din0 = mux_case_030_reg_921;
assign grp_fu_1222_p_din1 = mux_case_037_reg_956;
assign grp_fu_1222_p_opcode = 2'd0;
assign grp_fu_1226_p_ce = 1'b1;
assign grp_fu_1226_p_din0 = tmp1_1_load_1_reg_926;
assign grp_fu_1226_p_din1 = tmp2_1_load_1_reg_961;
assign grp_fu_1226_p_opcode = 2'd0;
assign grp_fu_1230_p_ce = 1'b1;
assign grp_fu_1230_p_din0 = tmp1_2_load_1_reg_931;
assign grp_fu_1230_p_din1 = tmp2_2_load_1_reg_966;
assign grp_fu_1230_p_opcode = 2'd0;
assign grp_fu_1234_p_ce = 1'b1;
assign grp_fu_1234_p_din0 = tmp1_3_load_1_reg_936;
assign grp_fu_1234_p_din1 = tmp2_3_load_1_reg_971;
assign grp_fu_1234_p_opcode = 2'd0;
assign grp_fu_1238_p_ce = 1'b1;
assign grp_fu_1238_p_din0 = add2_reg_1056;
assign grp_fu_1238_p_din1 = mul4_reg_1061;
assign grp_fu_1238_p_opcode = 2'd0;
assign grp_fu_1242_p_ce = 1'b1;
assign grp_fu_1242_p_din0 = add135_1_reg_1066;
assign grp_fu_1242_p_din1 = mul140_1_reg_1101;
assign grp_fu_1242_p_opcode = 2'd0;
assign grp_fu_1246_p_ce = 1'b1;
assign grp_fu_1246_p_din0 = add135_2_reg_1071;
assign grp_fu_1246_p_din1 = mul140_2_reg_1106;
assign grp_fu_1246_p_opcode = 2'd0;
assign grp_fu_1250_p_ce = 1'b1;
assign grp_fu_1250_p_din0 = add135_3_reg_1076;
assign grp_fu_1250_p_din1 = mul140_3_reg_1111;
assign grp_fu_1250_p_opcode = 2'd0;
assign grp_fu_1254_p_ce = 1'b1;
assign grp_fu_1254_p_din0 = add135_4_reg_1081;
assign grp_fu_1254_p_din1 = mul140_4_reg_1116;
assign grp_fu_1254_p_opcode = 2'd0;
assign grp_fu_1258_p_ce = 1'b1;
assign grp_fu_1258_p_din0 = add135_5_reg_1086;
assign grp_fu_1258_p_din1 = mul140_5_reg_1121;
assign grp_fu_1258_p_opcode = 2'd0;
assign grp_fu_1262_p_ce = 1'b1;
assign grp_fu_1262_p_din0 = add135_6_reg_1091;
assign grp_fu_1262_p_din1 = mul140_6_reg_1126;
assign grp_fu_1262_p_opcode = 2'd0;
assign grp_fu_1266_p_ce = 1'b1;
assign grp_fu_1266_p_din0 = add135_7_reg_1096;
assign grp_fu_1266_p_din1 = mul140_7_reg_1131;
assign grp_fu_1266_p_opcode = 2'd0;
assign grp_fu_1270_p_ce = 1'b1;
assign grp_fu_1270_p_din0 = buff_C_1_load_reg_1021;
assign grp_fu_1270_p_din1 = beta;
assign grp_fu_1274_p_ce = 1'b1;
assign grp_fu_1274_p_din0 = buff_C_2_load_reg_1026;
assign grp_fu_1274_p_din1 = beta;
assign grp_fu_1278_p_ce = 1'b1;
assign grp_fu_1278_p_din0 = buff_C_3_load_reg_1031;
assign grp_fu_1278_p_din1 = beta;
assign grp_fu_1282_p_ce = 1'b1;
assign grp_fu_1282_p_din0 = buff_C_load_1_reg_1036;
assign grp_fu_1282_p_din1 = beta;
assign grp_fu_1286_p_ce = 1'b1;
assign grp_fu_1286_p_din0 = buff_C_1_load_1_reg_1041;
assign grp_fu_1286_p_din1 = beta;
assign grp_fu_1290_p_ce = 1'b1;
assign grp_fu_1290_p_din0 = buff_C_2_load_1_reg_1046;
assign grp_fu_1290_p_din1 = beta;
assign grp_fu_1294_p_ce = 1'b1;
assign grp_fu_1294_p_din0 = buff_C_3_load_1_reg_1051;
assign grp_fu_1294_p_din1 = beta;
assign icmp_ln45_fu_620_p2 = ((ap_sig_allocacmp_indvar_flatten37_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_5_fu_677_p4 = {{select_ln5_fu_657_p3[5:2]}};
assign select_ln45_fu_665_p3 = ((tmp_fu_649_p3[0:0] == 1'b1) ? add_ln45_fu_643_p2 : i_fu_92);
assign select_ln5_fu_657_p3 = ((tmp_fu_649_p3[0:0] == 1'b1) ? 7'd0 : j_fu_88);
assign tmp1_1_address0 = zext_ln48_1_fu_727_p1;
assign tmp1_1_address1 = zext_ln48_fu_695_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_1_ce1 = tmp1_1_ce1_local;
assign tmp1_2_address0 = zext_ln48_1_fu_727_p1;
assign tmp1_2_address1 = zext_ln48_fu_695_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_2_ce1 = tmp1_2_ce1_local;
assign tmp1_3_address0 = zext_ln48_1_fu_727_p1;
assign tmp1_3_address1 = zext_ln48_fu_695_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_3_ce1 = tmp1_3_ce1_local;
assign tmp1_address0 = zext_ln48_1_fu_727_p1;
assign tmp1_address1 = zext_ln48_fu_695_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_ce1 = tmp1_ce1_local;
assign tmp2_1_address0 = zext_ln48_1_fu_727_p1;
assign tmp2_1_address1 = zext_ln48_fu_695_p1;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_1_ce1 = tmp2_1_ce1_local;
assign tmp2_2_address0 = zext_ln48_1_fu_727_p1;
assign tmp2_2_address1 = zext_ln48_fu_695_p1;
assign tmp2_2_ce0 = tmp2_2_ce0_local;
assign tmp2_2_ce1 = tmp2_2_ce1_local;
assign tmp2_3_address0 = zext_ln48_1_fu_727_p1;
assign tmp2_3_address1 = zext_ln48_fu_695_p1;
assign tmp2_3_ce0 = tmp2_3_ce0_local;
assign tmp2_3_ce1 = tmp2_3_ce1_local;
assign tmp2_address0 = zext_ln48_1_fu_727_p1;
assign tmp2_address1 = zext_ln48_fu_695_p1;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp2_ce1 = tmp2_ce1_local;
assign tmp_1_fu_707_p4 = {{select_ln5_fu_657_p3[5:3]}};
assign tmp_2_fu_717_p4 = {{{trunc_ln5_fu_673_p1}, {tmp_1_fu_707_p4}}, {1'd1}};
assign tmp_fu_649_p3 = j_fu_88[32'd6];
assign tmp_s_fu_687_p3 = {{trunc_ln5_fu_673_p1}, {lshr_ln5_5_fu_677_p4}};
assign trunc_ln5_fu_673_p1 = select_ln45_fu_665_p3[5:0];
assign zext_ln48_1_fu_727_p1 = tmp_2_fu_717_p4;
assign zext_ln48_fu_695_p1 = tmp_s_fu_687_p3;
always @ (posedge ap_clk) begin
    zext_ln48_reg_792[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter4_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter9_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter10_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter11_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter12_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter13_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter14_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter15_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_792_pp0_iter16_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844[0] <= 1'b1;
    zext_ln48_1_reg_844[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter2_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter3_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter4_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter4_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter5_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter6_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter7_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter8_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter9_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter9_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter10_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter10_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter11_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter11_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter12_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter12_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter13_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter13_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter14_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter14_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter15_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter15_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_1_reg_844_pp0_iter16_reg[0] <= 1'b1;
    zext_ln48_1_reg_844_pp0_iter16_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 