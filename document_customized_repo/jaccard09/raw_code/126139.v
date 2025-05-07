module syr2k_syr2k_Pipeline_lp7_lp8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_C_address0,buff_C_ce0,buff_C_q0,buff_C_address1,buff_C_ce1,buff_C_q1,buff_C_1_address0,buff_C_1_ce0,buff_C_1_q0,buff_C_1_address1,buff_C_1_ce1,buff_C_1_q1,buff_C_2_address0,buff_C_2_ce0,buff_C_2_q0,buff_C_2_address1,buff_C_2_ce1,buff_C_2_q1,buff_C_3_address0,buff_C_3_ce0,buff_C_3_q0,buff_C_3_address1,buff_C_3_ce1,buff_C_3_q1,buff_D_out_address0,buff_D_out_ce0,buff_D_out_we0,buff_D_out_d0,buff_D_out_address1,buff_D_out_ce1,buff_D_out_we1,buff_D_out_d1,buff_D_out_1_address0,buff_D_out_1_ce0,buff_D_out_1_we0,buff_D_out_1_d0,buff_D_out_1_address1,buff_D_out_1_ce1,buff_D_out_1_we1,buff_D_out_1_d1,buff_D_out_2_address0,buff_D_out_2_ce0,buff_D_out_2_we0,buff_D_out_2_d0,buff_D_out_2_address1,buff_D_out_2_ce1,buff_D_out_2_we1,buff_D_out_2_d1,buff_D_out_3_address0,buff_D_out_3_ce0,buff_D_out_3_we0,buff_D_out_3_d0,buff_D_out_3_address1,buff_D_out_3_ce1,buff_D_out_3_we1,buff_D_out_3_d1,tmp2_address0,tmp2_ce0,tmp2_q0,tmp2_address1,tmp2_ce1,tmp2_q1,tmp2_1_address0,tmp2_1_ce0,tmp2_1_q0,tmp2_1_address1,tmp2_1_ce1,tmp2_1_q1,tmp2_2_address0,tmp2_2_ce0,tmp2_2_q0,tmp2_2_address1,tmp2_2_ce1,tmp2_2_q1,tmp2_3_address0,tmp2_3_ce0,tmp2_3_q0,tmp2_3_address1,tmp2_3_ce1,tmp2_3_q1,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_q0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_q0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_q0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_q0,beta,grp_fu_3204_p_din0,grp_fu_3204_p_din1,grp_fu_3204_p_opcode,grp_fu_3204_p_dout0,grp_fu_3204_p_ce,grp_fu_3208_p_din0,grp_fu_3208_p_din1,grp_fu_3208_p_opcode,grp_fu_3208_p_dout0,grp_fu_3208_p_ce,grp_fu_3212_p_din0,grp_fu_3212_p_din1,grp_fu_3212_p_opcode,grp_fu_3212_p_dout0,grp_fu_3212_p_ce,grp_fu_3216_p_din0,grp_fu_3216_p_din1,grp_fu_3216_p_opcode,grp_fu_3216_p_dout0,grp_fu_3216_p_ce,grp_fu_3220_p_din0,grp_fu_3220_p_din1,grp_fu_3220_p_opcode,grp_fu_3220_p_dout0,grp_fu_3220_p_ce,grp_fu_3224_p_din0,grp_fu_3224_p_din1,grp_fu_3224_p_opcode,grp_fu_3224_p_dout0,grp_fu_3224_p_ce,grp_fu_3228_p_din0,grp_fu_3228_p_din1,grp_fu_3228_p_opcode,grp_fu_3228_p_dout0,grp_fu_3228_p_ce,grp_fu_3232_p_din0,grp_fu_3232_p_din1,grp_fu_3232_p_opcode,grp_fu_3232_p_dout0,grp_fu_3232_p_ce,grp_fu_3236_p_din0,grp_fu_3236_p_din1,grp_fu_3236_p_opcode,grp_fu_3236_p_dout0,grp_fu_3236_p_ce,grp_fu_3240_p_din0,grp_fu_3240_p_din1,grp_fu_3240_p_opcode,grp_fu_3240_p_dout0,grp_fu_3240_p_ce,grp_fu_3244_p_din0,grp_fu_3244_p_din1,grp_fu_3244_p_opcode,grp_fu_3244_p_dout0,grp_fu_3244_p_ce,grp_fu_3248_p_din0,grp_fu_3248_p_din1,grp_fu_3248_p_opcode,grp_fu_3248_p_dout0,grp_fu_3248_p_ce,grp_fu_3252_p_din0,grp_fu_3252_p_din1,grp_fu_3252_p_opcode,grp_fu_3252_p_dout0,grp_fu_3252_p_ce,grp_fu_3256_p_din0,grp_fu_3256_p_din1,grp_fu_3256_p_opcode,grp_fu_3256_p_dout0,grp_fu_3256_p_ce,grp_fu_3260_p_din0,grp_fu_3260_p_din1,grp_fu_3260_p_opcode,grp_fu_3260_p_dout0,grp_fu_3260_p_ce,grp_fu_3264_p_din0,grp_fu_3264_p_din1,grp_fu_3264_p_opcode,grp_fu_3264_p_dout0,grp_fu_3264_p_ce,grp_fu_3348_p_din0,grp_fu_3348_p_din1,grp_fu_3348_p_dout0,grp_fu_3348_p_ce,grp_fu_3352_p_din0,grp_fu_3352_p_din1,grp_fu_3352_p_dout0,grp_fu_3352_p_ce,grp_fu_3356_p_din0,grp_fu_3356_p_din1,grp_fu_3356_p_dout0,grp_fu_3356_p_ce,grp_fu_3360_p_din0,grp_fu_3360_p_din1,grp_fu_3360_p_dout0,grp_fu_3360_p_ce,grp_fu_3364_p_din0,grp_fu_3364_p_din1,grp_fu_3364_p_dout0,grp_fu_3364_p_ce,grp_fu_3368_p_din0,grp_fu_3368_p_din1,grp_fu_3368_p_dout0,grp_fu_3368_p_ce,grp_fu_3372_p_din0,grp_fu_3372_p_din1,grp_fu_3372_p_dout0,grp_fu_3372_p_ce,grp_fu_3376_p_din0,grp_fu_3376_p_din1,grp_fu_3376_p_dout0,grp_fu_3376_p_ce); 
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
output  [8:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [8:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [8:0] tmp1_2_address0;
output   tmp1_2_ce0;
input  [31:0] tmp1_2_q0;
output  [8:0] tmp1_3_address0;
output   tmp1_3_ce0;
input  [31:0] tmp1_3_q0;
output  [8:0] tmp1_4_address0;
output   tmp1_4_ce0;
input  [31:0] tmp1_4_q0;
output  [8:0] tmp1_5_address0;
output   tmp1_5_ce0;
input  [31:0] tmp1_5_q0;
output  [8:0] tmp1_6_address0;
output   tmp1_6_ce0;
input  [31:0] tmp1_6_q0;
output  [8:0] tmp1_7_address0;
output   tmp1_7_ce0;
input  [31:0] tmp1_7_q0;
input  [31:0] beta;
output  [31:0] grp_fu_3204_p_din0;
output  [31:0] grp_fu_3204_p_din1;
output  [1:0] grp_fu_3204_p_opcode;
input  [31:0] grp_fu_3204_p_dout0;
output   grp_fu_3204_p_ce;
output  [31:0] grp_fu_3208_p_din0;
output  [31:0] grp_fu_3208_p_din1;
output  [1:0] grp_fu_3208_p_opcode;
input  [31:0] grp_fu_3208_p_dout0;
output   grp_fu_3208_p_ce;
output  [31:0] grp_fu_3212_p_din0;
output  [31:0] grp_fu_3212_p_din1;
output  [1:0] grp_fu_3212_p_opcode;
input  [31:0] grp_fu_3212_p_dout0;
output   grp_fu_3212_p_ce;
output  [31:0] grp_fu_3216_p_din0;
output  [31:0] grp_fu_3216_p_din1;
output  [1:0] grp_fu_3216_p_opcode;
input  [31:0] grp_fu_3216_p_dout0;
output   grp_fu_3216_p_ce;
output  [31:0] grp_fu_3220_p_din0;
output  [31:0] grp_fu_3220_p_din1;
output  [1:0] grp_fu_3220_p_opcode;
input  [31:0] grp_fu_3220_p_dout0;
output   grp_fu_3220_p_ce;
output  [31:0] grp_fu_3224_p_din0;
output  [31:0] grp_fu_3224_p_din1;
output  [1:0] grp_fu_3224_p_opcode;
input  [31:0] grp_fu_3224_p_dout0;
output   grp_fu_3224_p_ce;
output  [31:0] grp_fu_3228_p_din0;
output  [31:0] grp_fu_3228_p_din1;
output  [1:0] grp_fu_3228_p_opcode;
input  [31:0] grp_fu_3228_p_dout0;
output   grp_fu_3228_p_ce;
output  [31:0] grp_fu_3232_p_din0;
output  [31:0] grp_fu_3232_p_din1;
output  [1:0] grp_fu_3232_p_opcode;
input  [31:0] grp_fu_3232_p_dout0;
output   grp_fu_3232_p_ce;
output  [31:0] grp_fu_3236_p_din0;
output  [31:0] grp_fu_3236_p_din1;
output  [1:0] grp_fu_3236_p_opcode;
input  [31:0] grp_fu_3236_p_dout0;
output   grp_fu_3236_p_ce;
output  [31:0] grp_fu_3240_p_din0;
output  [31:0] grp_fu_3240_p_din1;
output  [1:0] grp_fu_3240_p_opcode;
input  [31:0] grp_fu_3240_p_dout0;
output   grp_fu_3240_p_ce;
output  [31:0] grp_fu_3244_p_din0;
output  [31:0] grp_fu_3244_p_din1;
output  [1:0] grp_fu_3244_p_opcode;
input  [31:0] grp_fu_3244_p_dout0;
output   grp_fu_3244_p_ce;
output  [31:0] grp_fu_3248_p_din0;
output  [31:0] grp_fu_3248_p_din1;
output  [1:0] grp_fu_3248_p_opcode;
input  [31:0] grp_fu_3248_p_dout0;
output   grp_fu_3248_p_ce;
output  [31:0] grp_fu_3252_p_din0;
output  [31:0] grp_fu_3252_p_din1;
output  [1:0] grp_fu_3252_p_opcode;
input  [31:0] grp_fu_3252_p_dout0;
output   grp_fu_3252_p_ce;
output  [31:0] grp_fu_3256_p_din0;
output  [31:0] grp_fu_3256_p_din1;
output  [1:0] grp_fu_3256_p_opcode;
input  [31:0] grp_fu_3256_p_dout0;
output   grp_fu_3256_p_ce;
output  [31:0] grp_fu_3260_p_din0;
output  [31:0] grp_fu_3260_p_din1;
output  [1:0] grp_fu_3260_p_opcode;
input  [31:0] grp_fu_3260_p_dout0;
output   grp_fu_3260_p_ce;
output  [31:0] grp_fu_3264_p_din0;
output  [31:0] grp_fu_3264_p_din1;
output  [1:0] grp_fu_3264_p_opcode;
input  [31:0] grp_fu_3264_p_dout0;
output   grp_fu_3264_p_ce;
output  [31:0] grp_fu_3348_p_din0;
output  [31:0] grp_fu_3348_p_din1;
input  [31:0] grp_fu_3348_p_dout0;
output   grp_fu_3348_p_ce;
output  [31:0] grp_fu_3352_p_din0;
output  [31:0] grp_fu_3352_p_din1;
input  [31:0] grp_fu_3352_p_dout0;
output   grp_fu_3352_p_ce;
output  [31:0] grp_fu_3356_p_din0;
output  [31:0] grp_fu_3356_p_din1;
input  [31:0] grp_fu_3356_p_dout0;
output   grp_fu_3356_p_ce;
output  [31:0] grp_fu_3360_p_din0;
output  [31:0] grp_fu_3360_p_din1;
input  [31:0] grp_fu_3360_p_dout0;
output   grp_fu_3360_p_ce;
output  [31:0] grp_fu_3364_p_din0;
output  [31:0] grp_fu_3364_p_din1;
input  [31:0] grp_fu_3364_p_dout0;
output   grp_fu_3364_p_ce;
output  [31:0] grp_fu_3368_p_din0;
output  [31:0] grp_fu_3368_p_din1;
input  [31:0] grp_fu_3368_p_dout0;
output   grp_fu_3368_p_ce;
output  [31:0] grp_fu_3372_p_din0;
output  [31:0] grp_fu_3372_p_din1;
input  [31:0] grp_fu_3372_p_dout0;
output   grp_fu_3372_p_ce;
output  [31:0] grp_fu_3376_p_din0;
output  [31:0] grp_fu_3376_p_din1;
input  [31:0] grp_fu_3376_p_dout0;
output   grp_fu_3376_p_ce;
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
wire   [0:0] icmp_ln45_fu_634_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln48_fu_709_p1;
reg   [63:0] zext_ln48_reg_818;
reg   [63:0] zext_ln48_reg_818_pp0_iter2_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter3_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter4_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter5_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter6_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter7_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter8_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter9_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter10_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter11_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter12_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter13_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter14_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter15_reg;
reg   [63:0] zext_ln48_reg_818_pp0_iter16_reg;
wire   [63:0] zext_ln48_2_fu_757_p1;
reg   [63:0] zext_ln48_2_reg_890;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter2_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter3_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter4_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter5_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter6_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter7_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter8_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter9_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter10_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter11_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter12_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter13_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter14_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter15_reg;
reg   [63:0] zext_ln48_2_reg_890_pp0_iter16_reg;
reg   [31:0] mux_case_0988_reg_922;
reg   [31:0] mux_case_0989_reg_927;
reg   [31:0] tmp1_1_load_reg_932;
reg   [31:0] tmp1_2_load_reg_937;
reg   [31:0] tmp1_3_load_reg_942;
reg   [31:0] tmp1_4_load_reg_947;
reg   [31:0] tmp1_5_load_reg_952;
reg   [31:0] tmp1_6_load_reg_957;
reg   [31:0] tmp1_7_load_reg_962;
reg   [31:0] tmp2_1_load_reg_967;
reg   [31:0] tmp2_2_load_reg_972;
reg   [31:0] tmp2_3_load_reg_977;
reg   [31:0] mux_case_01001_reg_982;
reg   [31:0] tmp2_1_load_1_reg_987;
reg   [31:0] tmp2_2_load_1_reg_992;
reg   [31:0] tmp2_3_load_1_reg_997;
reg   [31:0] buff_C_load_reg_1042;
reg   [31:0] buff_C_1_load_reg_1047;
reg   [31:0] buff_C_2_load_reg_1052;
reg   [31:0] buff_C_3_load_reg_1057;
reg   [31:0] buff_C_load_1_reg_1062;
reg   [31:0] buff_C_1_load_1_reg_1067;
reg   [31:0] buff_C_2_load_1_reg_1072;
reg   [31:0] buff_C_3_load_1_reg_1077;
reg   [31:0] add2_reg_1082;
reg   [31:0] mul4_reg_1087;
reg   [31:0] add135_1_reg_1092;
reg   [31:0] add135_2_reg_1097;
reg   [31:0] add135_3_reg_1102;
reg   [31:0] add135_4_reg_1107;
reg   [31:0] add135_5_reg_1112;
reg   [31:0] add135_6_reg_1117;
reg   [31:0] add135_7_reg_1122;
reg   [31:0] mul140_1_reg_1127;
reg   [31:0] mul140_2_reg_1132;
reg   [31:0] mul140_3_reg_1137;
reg   [31:0] mul140_4_reg_1142;
reg   [31:0] mul140_5_reg_1147;
reg   [31:0] mul140_6_reg_1152;
reg   [31:0] mul140_7_reg_1157;
reg   [31:0] add3_reg_1162;
reg   [31:0] add141_1_reg_1167;
reg   [31:0] add141_2_reg_1172;
reg   [31:0] add141_3_reg_1177;
reg   [31:0] add141_4_reg_1182;
reg   [31:0] add141_5_reg_1187;
reg   [31:0] add141_6_reg_1192;
reg   [31:0] add141_7_reg_1197;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln48_1_fu_735_p1;
reg   [6:0] j_fu_98;
wire   [6:0] add_ln46_fu_765_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_102;
wire   [6:0] select_ln45_fu_679_p3;
reg   [9:0] indvar_flatten20_fu_106;
wire   [9:0] add_ln45_1_fu_640_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten20_load;
reg    tmp1_ce0_local;
reg    tmp2_ce1_local;
reg    tmp2_ce0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_3_ce0_local;
reg    tmp1_4_ce0_local;
reg    tmp1_5_ce0_local;
reg    tmp1_6_ce0_local;
reg    tmp1_7_ce0_local;
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
wire   [0:0] tmp_fu_663_p3;
wire   [6:0] add_ln45_fu_657_p2;
wire   [6:0] select_ln5_fu_671_p3;
wire   [5:0] trunc_ln12_fu_687_p1;
wire   [3:0] lshr_ln5_7_fu_691_p4;
wire   [9:0] tmp_s_fu_701_p3;
wire   [2:0] lshr_ln5_8_fu_717_p4;
wire   [8:0] tmp_4_fu_727_p3;
wire   [9:0] tmp_5_fu_747_p4;
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
#0 j_fu_98 = 7'd0;
#0 i_fu_102 = 7'd0;
#0 indvar_flatten20_fu_106 = 10'd0;
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
            i_fu_102 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_102 <= select_ln45_fu_679_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln45_fu_634_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten20_fu_106 <= add_ln45_1_fu_640_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_106 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_98 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_98 <= add_ln46_fu_765_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add135_1_reg_1092 <= grp_fu_3208_p_dout0;
        add135_2_reg_1097 <= grp_fu_3212_p_dout0;
        add135_3_reg_1102 <= grp_fu_3216_p_dout0;
        add135_4_reg_1107 <= grp_fu_3220_p_dout0;
        add135_5_reg_1112 <= grp_fu_3224_p_dout0;
        add135_6_reg_1117 <= grp_fu_3228_p_dout0;
        add135_7_reg_1122 <= grp_fu_3232_p_dout0;
        add141_1_reg_1167 <= grp_fu_3240_p_dout0;
        add141_2_reg_1172 <= grp_fu_3244_p_dout0;
        add141_3_reg_1177 <= grp_fu_3248_p_dout0;
        add141_4_reg_1182 <= grp_fu_3252_p_dout0;
        add141_5_reg_1187 <= grp_fu_3256_p_dout0;
        add141_6_reg_1192 <= grp_fu_3260_p_dout0;
        add141_7_reg_1197 <= grp_fu_3264_p_dout0;
        add2_reg_1082 <= grp_fu_3204_p_dout0;
        add3_reg_1162 <= grp_fu_3236_p_dout0;
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
        mul140_1_reg_1127 <= grp_fu_3352_p_dout0;
        mul140_2_reg_1132 <= grp_fu_3356_p_dout0;
        mul140_3_reg_1137 <= grp_fu_3360_p_dout0;
        mul140_4_reg_1142 <= grp_fu_3364_p_dout0;
        mul140_5_reg_1147 <= grp_fu_3368_p_dout0;
        mul140_6_reg_1152 <= grp_fu_3372_p_dout0;
        mul140_7_reg_1157 <= grp_fu_3376_p_dout0;
        mul4_reg_1087 <= grp_fu_3348_p_dout0;
        mux_case_0988_reg_922 <= tmp1_q0;
        tmp1_1_load_reg_932 <= tmp1_1_q0;
        tmp1_2_load_reg_937 <= tmp1_2_q0;
        tmp1_3_load_reg_942 <= tmp1_3_q0;
        tmp1_4_load_reg_947 <= tmp1_4_q0;
        tmp1_5_load_reg_952 <= tmp1_5_q0;
        tmp1_6_load_reg_957 <= tmp1_6_q0;
        tmp1_7_load_reg_962 <= tmp1_7_q0;
        zext_ln48_2_reg_890_pp0_iter10_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter9_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter11_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter10_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter12_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter11_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter13_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter12_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter14_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter13_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter15_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter14_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter16_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter15_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter2_reg[9 : 1] <= zext_ln48_2_reg_890[9 : 1];
        zext_ln48_2_reg_890_pp0_iter3_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter2_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter4_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter3_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter5_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter4_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter6_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter5_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter7_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter6_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter8_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter7_reg[9 : 1];
        zext_ln48_2_reg_890_pp0_iter9_reg[9 : 1] <= zext_ln48_2_reg_890_pp0_iter8_reg[9 : 1];
        zext_ln48_reg_818_pp0_iter10_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter9_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter11_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter10_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter12_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter11_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter13_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter12_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter14_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter13_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter15_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter14_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter16_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter15_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter2_reg[9 : 0] <= zext_ln48_reg_818[9 : 0];
        zext_ln48_reg_818_pp0_iter3_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter2_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter4_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter3_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter5_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter4_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter6_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter5_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter7_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter6_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter8_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter7_reg[9 : 0];
        zext_ln48_reg_818_pp0_iter9_reg[9 : 0] <= zext_ln48_reg_818_pp0_iter8_reg[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        zext_ln48_2_reg_890[9 : 1] <= zext_ln48_2_fu_757_p1[9 : 1];
        zext_ln48_reg_818[9 : 0] <= zext_ln48_fu_709_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_1_load_1_reg_1067 <= buff_C_1_q0;
        buff_C_1_load_reg_1047 <= buff_C_1_q1;
        buff_C_2_load_1_reg_1072 <= buff_C_2_q0;
        buff_C_2_load_reg_1052 <= buff_C_2_q1;
        buff_C_3_load_1_reg_1077 <= buff_C_3_q0;
        buff_C_3_load_reg_1057 <= buff_C_3_q1;
        buff_C_load_1_reg_1062 <= buff_C_q0;
        buff_C_load_reg_1042 <= buff_C_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        mux_case_01001_reg_982 <= tmp2_q0;
        mux_case_0989_reg_927 <= tmp2_q1;
        tmp2_1_load_1_reg_987 <= tmp2_1_q0;
        tmp2_1_load_reg_967 <= tmp2_1_q1;
        tmp2_2_load_1_reg_992 <= tmp2_2_q0;
        tmp2_2_load_reg_972 <= tmp2_2_q1;
        tmp2_3_load_1_reg_997 <= tmp2_3_q0;
        tmp2_3_load_reg_977 <= tmp2_3_q1;
    end
end
always @ (*) begin
    if (((icmp_ln45_fu_634_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten20_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_106;
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
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
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
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
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
assign add_ln45_1_fu_640_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 10'd1);
assign add_ln45_fu_657_p2 = (i_fu_102 + 7'd1);
assign add_ln46_fu_765_p2 = (select_ln5_fu_671_p3 + 7'd8);
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
assign buff_C_1_address0 = zext_ln48_2_reg_890_pp0_iter3_reg;
assign buff_C_1_address1 = zext_ln48_reg_818_pp0_iter3_reg;
assign buff_C_1_ce0 = buff_C_1_ce0_local;
assign buff_C_1_ce1 = buff_C_1_ce1_local;
assign buff_C_2_address0 = zext_ln48_2_reg_890_pp0_iter3_reg;
assign buff_C_2_address1 = zext_ln48_reg_818_pp0_iter3_reg;
assign buff_C_2_ce0 = buff_C_2_ce0_local;
assign buff_C_2_ce1 = buff_C_2_ce1_local;
assign buff_C_3_address0 = zext_ln48_2_reg_890_pp0_iter3_reg;
assign buff_C_3_address1 = zext_ln48_reg_818_pp0_iter3_reg;
assign buff_C_3_ce0 = buff_C_3_ce0_local;
assign buff_C_3_ce1 = buff_C_3_ce1_local;
assign buff_C_address0 = zext_ln48_2_reg_890_pp0_iter3_reg;
assign buff_C_address1 = zext_ln48_reg_818_pp0_iter3_reg;
assign buff_C_ce0 = buff_C_ce0_local;
assign buff_C_ce1 = buff_C_ce1_local;
assign buff_D_out_1_address0 = zext_ln48_2_reg_890_pp0_iter16_reg;
assign buff_D_out_1_address1 = zext_ln48_reg_818_pp0_iter16_reg;
assign buff_D_out_1_ce0 = buff_D_out_1_ce0_local;
assign buff_D_out_1_ce1 = buff_D_out_1_ce1_local;
assign buff_D_out_1_d0 = add141_5_reg_1187;
assign buff_D_out_1_d1 = add141_1_reg_1167;
assign buff_D_out_1_we0 = buff_D_out_1_we0_local;
assign buff_D_out_1_we1 = buff_D_out_1_we1_local;
assign buff_D_out_2_address0 = zext_ln48_2_reg_890_pp0_iter16_reg;
assign buff_D_out_2_address1 = zext_ln48_reg_818_pp0_iter16_reg;
assign buff_D_out_2_ce0 = buff_D_out_2_ce0_local;
assign buff_D_out_2_ce1 = buff_D_out_2_ce1_local;
assign buff_D_out_2_d0 = add141_6_reg_1192;
assign buff_D_out_2_d1 = add141_2_reg_1172;
assign buff_D_out_2_we0 = buff_D_out_2_we0_local;
assign buff_D_out_2_we1 = buff_D_out_2_we1_local;
assign buff_D_out_3_address0 = zext_ln48_2_reg_890_pp0_iter16_reg;
assign buff_D_out_3_address1 = zext_ln48_reg_818_pp0_iter16_reg;
assign buff_D_out_3_ce0 = buff_D_out_3_ce0_local;
assign buff_D_out_3_ce1 = buff_D_out_3_ce1_local;
assign buff_D_out_3_d0 = add141_7_reg_1197;
assign buff_D_out_3_d1 = add141_3_reg_1177;
assign buff_D_out_3_we0 = buff_D_out_3_we0_local;
assign buff_D_out_3_we1 = buff_D_out_3_we1_local;
assign buff_D_out_address0 = zext_ln48_2_reg_890_pp0_iter16_reg;
assign buff_D_out_address1 = zext_ln48_reg_818_pp0_iter16_reg;
assign buff_D_out_ce0 = buff_D_out_ce0_local;
assign buff_D_out_ce1 = buff_D_out_ce1_local;
assign buff_D_out_d0 = add141_4_reg_1182;
assign buff_D_out_d1 = add3_reg_1162;
assign buff_D_out_we0 = buff_D_out_we0_local;
assign buff_D_out_we1 = buff_D_out_we1_local;
assign grp_fu_3204_p_ce = 1'b1;
assign grp_fu_3204_p_din0 = mux_case_0988_reg_922;
assign grp_fu_3204_p_din1 = mux_case_0989_reg_927;
assign grp_fu_3204_p_opcode = 2'd0;
assign grp_fu_3208_p_ce = 1'b1;
assign grp_fu_3208_p_din0 = tmp1_1_load_reg_932;
assign grp_fu_3208_p_din1 = tmp2_1_load_reg_967;
assign grp_fu_3208_p_opcode = 2'd0;
assign grp_fu_3212_p_ce = 1'b1;
assign grp_fu_3212_p_din0 = tmp1_2_load_reg_937;
assign grp_fu_3212_p_din1 = tmp2_2_load_reg_972;
assign grp_fu_3212_p_opcode = 2'd0;
assign grp_fu_3216_p_ce = 1'b1;
assign grp_fu_3216_p_din0 = tmp1_3_load_reg_942;
assign grp_fu_3216_p_din1 = tmp2_3_load_reg_977;
assign grp_fu_3216_p_opcode = 2'd0;
assign grp_fu_3220_p_ce = 1'b1;
assign grp_fu_3220_p_din0 = tmp1_4_load_reg_947;
assign grp_fu_3220_p_din1 = mux_case_01001_reg_982;
assign grp_fu_3220_p_opcode = 2'd0;
assign grp_fu_3224_p_ce = 1'b1;
assign grp_fu_3224_p_din0 = tmp1_5_load_reg_952;
assign grp_fu_3224_p_din1 = tmp2_1_load_1_reg_987;
assign grp_fu_3224_p_opcode = 2'd0;
assign grp_fu_3228_p_ce = 1'b1;
assign grp_fu_3228_p_din0 = tmp1_6_load_reg_957;
assign grp_fu_3228_p_din1 = tmp2_2_load_1_reg_992;
assign grp_fu_3228_p_opcode = 2'd0;
assign grp_fu_3232_p_ce = 1'b1;
assign grp_fu_3232_p_din0 = tmp1_7_load_reg_962;
assign grp_fu_3232_p_din1 = tmp2_3_load_1_reg_997;
assign grp_fu_3232_p_opcode = 2'd0;
assign grp_fu_3236_p_ce = 1'b1;
assign grp_fu_3236_p_din0 = add2_reg_1082;
assign grp_fu_3236_p_din1 = mul4_reg_1087;
assign grp_fu_3236_p_opcode = 2'd0;
assign grp_fu_3240_p_ce = 1'b1;
assign grp_fu_3240_p_din0 = add135_1_reg_1092;
assign grp_fu_3240_p_din1 = mul140_1_reg_1127;
assign grp_fu_3240_p_opcode = 2'd0;
assign grp_fu_3244_p_ce = 1'b1;
assign grp_fu_3244_p_din0 = add135_2_reg_1097;
assign grp_fu_3244_p_din1 = mul140_2_reg_1132;
assign grp_fu_3244_p_opcode = 2'd0;
assign grp_fu_3248_p_ce = 1'b1;
assign grp_fu_3248_p_din0 = add135_3_reg_1102;
assign grp_fu_3248_p_din1 = mul140_3_reg_1137;
assign grp_fu_3248_p_opcode = 2'd0;
assign grp_fu_3252_p_ce = 1'b1;
assign grp_fu_3252_p_din0 = add135_4_reg_1107;
assign grp_fu_3252_p_din1 = mul140_4_reg_1142;
assign grp_fu_3252_p_opcode = 2'd0;
assign grp_fu_3256_p_ce = 1'b1;
assign grp_fu_3256_p_din0 = add135_5_reg_1112;
assign grp_fu_3256_p_din1 = mul140_5_reg_1147;
assign grp_fu_3256_p_opcode = 2'd0;
assign grp_fu_3260_p_ce = 1'b1;
assign grp_fu_3260_p_din0 = add135_6_reg_1117;
assign grp_fu_3260_p_din1 = mul140_6_reg_1152;
assign grp_fu_3260_p_opcode = 2'd0;
assign grp_fu_3264_p_ce = 1'b1;
assign grp_fu_3264_p_din0 = add135_7_reg_1122;
assign grp_fu_3264_p_din1 = mul140_7_reg_1157;
assign grp_fu_3264_p_opcode = 2'd0;
assign grp_fu_3348_p_ce = 1'b1;
assign grp_fu_3348_p_din0 = buff_C_load_reg_1042;
assign grp_fu_3348_p_din1 = beta;
assign grp_fu_3352_p_ce = 1'b1;
assign grp_fu_3352_p_din0 = buff_C_1_load_reg_1047;
assign grp_fu_3352_p_din1 = beta;
assign grp_fu_3356_p_ce = 1'b1;
assign grp_fu_3356_p_din0 = buff_C_2_load_reg_1052;
assign grp_fu_3356_p_din1 = beta;
assign grp_fu_3360_p_ce = 1'b1;
assign grp_fu_3360_p_din0 = buff_C_3_load_reg_1057;
assign grp_fu_3360_p_din1 = beta;
assign grp_fu_3364_p_ce = 1'b1;
assign grp_fu_3364_p_din0 = buff_C_load_1_reg_1062;
assign grp_fu_3364_p_din1 = beta;
assign grp_fu_3368_p_ce = 1'b1;
assign grp_fu_3368_p_din0 = buff_C_1_load_1_reg_1067;
assign grp_fu_3368_p_din1 = beta;
assign grp_fu_3372_p_ce = 1'b1;
assign grp_fu_3372_p_din0 = buff_C_2_load_1_reg_1072;
assign grp_fu_3372_p_din1 = beta;
assign grp_fu_3376_p_ce = 1'b1;
assign grp_fu_3376_p_din0 = buff_C_3_load_1_reg_1077;
assign grp_fu_3376_p_din1 = beta;
assign icmp_ln45_fu_634_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_7_fu_691_p4 = {{select_ln5_fu_671_p3[5:2]}};
assign lshr_ln5_8_fu_717_p4 = {{select_ln5_fu_671_p3[5:3]}};
assign select_ln45_fu_679_p3 = ((tmp_fu_663_p3[0:0] == 1'b1) ? add_ln45_fu_657_p2 : i_fu_102);
assign select_ln5_fu_671_p3 = ((tmp_fu_663_p3[0:0] == 1'b1) ? 7'd0 : j_fu_98);
assign tmp1_1_address0 = zext_ln48_1_fu_735_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_2_address0 = zext_ln48_1_fu_735_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_3_address0 = zext_ln48_1_fu_735_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_4_address0 = zext_ln48_1_fu_735_p1;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_5_address0 = zext_ln48_1_fu_735_p1;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_6_address0 = zext_ln48_1_fu_735_p1;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_7_address0 = zext_ln48_1_fu_735_p1;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_address0 = zext_ln48_1_fu_735_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp2_1_address0 = zext_ln48_2_fu_757_p1;
assign tmp2_1_address1 = zext_ln48_fu_709_p1;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_1_ce1 = tmp2_1_ce1_local;
assign tmp2_2_address0 = zext_ln48_2_fu_757_p1;
assign tmp2_2_address1 = zext_ln48_fu_709_p1;
assign tmp2_2_ce0 = tmp2_2_ce0_local;
assign tmp2_2_ce1 = tmp2_2_ce1_local;
assign tmp2_3_address0 = zext_ln48_2_fu_757_p1;
assign tmp2_3_address1 = zext_ln48_fu_709_p1;
assign tmp2_3_ce0 = tmp2_3_ce0_local;
assign tmp2_3_ce1 = tmp2_3_ce1_local;
assign tmp2_address0 = zext_ln48_2_fu_757_p1;
assign tmp2_address1 = zext_ln48_fu_709_p1;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp2_ce1 = tmp2_ce1_local;
assign tmp_4_fu_727_p3 = {{trunc_ln12_fu_687_p1}, {lshr_ln5_8_fu_717_p4}};
assign tmp_5_fu_747_p4 = {{{trunc_ln12_fu_687_p1}, {lshr_ln5_8_fu_717_p4}}, {1'd1}};
assign tmp_fu_663_p3 = j_fu_98[32'd6];
assign tmp_s_fu_701_p3 = {{trunc_ln12_fu_687_p1}, {lshr_ln5_7_fu_691_p4}};
assign trunc_ln12_fu_687_p1 = select_ln45_fu_679_p3[5:0];
assign zext_ln48_1_fu_735_p1 = tmp_4_fu_727_p3;
assign zext_ln48_2_fu_757_p1 = tmp_5_fu_747_p4;
assign zext_ln48_fu_709_p1 = tmp_s_fu_701_p3;
always @ (posedge ap_clk) begin
    zext_ln48_reg_818[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter4_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter9_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter10_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter11_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter12_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter13_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter14_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter15_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_reg_818_pp0_iter16_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890[0] <= 1'b1;
    zext_ln48_2_reg_890[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter2_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter2_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter3_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter3_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter4_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter4_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter5_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter5_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter6_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter6_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter7_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter7_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter8_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter8_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter9_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter9_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter10_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter10_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter11_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter11_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter12_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter12_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter13_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter13_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter14_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter14_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter15_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter15_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_890_pp0_iter16_reg[0] <= 1'b1;
    zext_ln48_2_reg_890_pp0_iter16_reg[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 