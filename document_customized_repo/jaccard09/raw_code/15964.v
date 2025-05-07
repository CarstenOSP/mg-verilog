module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,work_x_0_address0,work_x_0_ce0,work_x_0_we0,work_x_0_d0,work_x_0_address1,work_x_0_ce1,work_x_0_we1,work_x_0_d1,work_y_0_address0,work_y_0_ce0,work_y_0_we0,work_y_0_d0,work_y_0_address1,work_y_0_ce1,work_y_0_we1,work_y_0_d1,work_y_7_address0,work_y_7_ce0,work_y_7_we0,work_y_7_d0,work_y_7_address1,work_y_7_ce1,work_y_7_we1,work_y_7_d1,work_y_6_address0,work_y_6_ce0,work_y_6_we0,work_y_6_d0,work_y_6_address1,work_y_6_ce1,work_y_6_we1,work_y_6_d1,work_y_5_address0,work_y_5_ce0,work_y_5_we0,work_y_5_d0,work_y_5_address1,work_y_5_ce1,work_y_5_we1,work_y_5_d1,work_y_4_address0,work_y_4_ce0,work_y_4_we0,work_y_4_d0,work_y_4_address1,work_y_4_ce1,work_y_4_we1,work_y_4_d1,work_y_3_address0,work_y_3_ce0,work_y_3_we0,work_y_3_d0,work_y_3_address1,work_y_3_ce1,work_y_3_we1,work_y_3_d1,work_y_2_address0,work_y_2_ce0,work_y_2_we0,work_y_2_d0,work_y_2_address1,work_y_2_ce1,work_y_2_we1,work_y_2_d1,work_y_1_address0,work_y_1_ce0,work_y_1_we0,work_y_1_d0,work_y_1_address1,work_y_1_ce1,work_y_1_we1,work_y_1_d1,work_x_7_address0,work_x_7_ce0,work_x_7_we0,work_x_7_d0,work_x_7_address1,work_x_7_ce1,work_x_7_we1,work_x_7_d1,work_x_6_address0,work_x_6_ce0,work_x_6_we0,work_x_6_d0,work_x_6_address1,work_x_6_ce1,work_x_6_we1,work_x_6_d1,work_x_5_address0,work_x_5_ce0,work_x_5_we0,work_x_5_d0,work_x_5_address1,work_x_5_ce1,work_x_5_we1,work_x_5_d1,work_x_4_address0,work_x_4_ce0,work_x_4_we0,work_x_4_d0,work_x_4_address1,work_x_4_ce1,work_x_4_we1,work_x_4_d1,work_x_3_address0,work_x_3_ce0,work_x_3_we0,work_x_3_d0,work_x_3_address1,work_x_3_ce1,work_x_3_we1,work_x_3_d1,work_x_2_address0,work_x_2_ce0,work_x_2_we0,work_x_2_d0,work_x_2_address1,work_x_2_ce1,work_x_2_we1,work_x_2_d1,work_x_1_address0,work_x_1_ce0,work_x_1_we0,work_x_1_d0,work_x_1_address1,work_x_1_ce1,work_x_1_we1,work_x_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,grp_fu_6936_p_din0,grp_fu_6936_p_din1,grp_fu_6936_p_opcode,grp_fu_6936_p_dout0,grp_fu_6936_p_ce,grp_fu_6940_p_din0,grp_fu_6940_p_din1,grp_fu_6940_p_opcode,grp_fu_6940_p_dout0,grp_fu_6940_p_ce,grp_fu_6944_p_din0,grp_fu_6944_p_din1,grp_fu_6944_p_opcode,grp_fu_6944_p_dout0,grp_fu_6944_p_ce,grp_fu_6948_p_din0,grp_fu_6948_p_din1,grp_fu_6948_p_opcode,grp_fu_6948_p_dout0,grp_fu_6948_p_ce,grp_fu_6952_p_din0,grp_fu_6952_p_din1,grp_fu_6952_p_opcode,grp_fu_6952_p_dout0,grp_fu_6952_p_ce,grp_fu_6956_p_din0,grp_fu_6956_p_din1,grp_fu_6956_p_opcode,grp_fu_6956_p_dout0,grp_fu_6956_p_ce,grp_fu_6960_p_din0,grp_fu_6960_p_din1,grp_fu_6960_p_opcode,grp_fu_6960_p_dout0,grp_fu_6960_p_ce,grp_fu_6964_p_din0,grp_fu_6964_p_din1,grp_fu_6964_p_opcode,grp_fu_6964_p_dout0,grp_fu_6964_p_ce,grp_fu_6968_p_din0,grp_fu_6968_p_din1,grp_fu_6968_p_opcode,grp_fu_6968_p_dout0,grp_fu_6968_p_ce,grp_fu_6972_p_din0,grp_fu_6972_p_din1,grp_fu_6972_p_opcode,grp_fu_6972_p_dout0,grp_fu_6972_p_ce,grp_fu_6976_p_din0,grp_fu_6976_p_din1,grp_fu_6976_p_opcode,grp_fu_6976_p_dout0,grp_fu_6976_p_ce,grp_fu_6980_p_din0,grp_fu_6980_p_din1,grp_fu_6980_p_opcode,grp_fu_6980_p_dout0,grp_fu_6980_p_ce,grp_fu_6984_p_din0,grp_fu_6984_p_din1,grp_fu_6984_p_opcode,grp_fu_6984_p_dout0,grp_fu_6984_p_ce,grp_fu_6988_p_din0,grp_fu_6988_p_din1,grp_fu_6988_p_opcode,grp_fu_6988_p_dout0,grp_fu_6988_p_ce,grp_fu_6992_p_din0,grp_fu_6992_p_din1,grp_fu_6992_p_opcode,grp_fu_6992_p_dout0,grp_fu_6992_p_ce,grp_fu_7168_p_din0,grp_fu_7168_p_din1,grp_fu_7168_p_dout0,grp_fu_7168_p_ce,grp_fu_7172_p_din0,grp_fu_7172_p_din1,grp_fu_7172_p_dout0,grp_fu_7172_p_ce,grp_fu_7176_p_din0,grp_fu_7176_p_din1,grp_fu_7176_p_dout0,grp_fu_7176_p_ce); 
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
output  [5:0] work_x_0_address0;
output   work_x_0_ce0;
output   work_x_0_we0;
output  [63:0] work_x_0_d0;
output  [5:0] work_x_0_address1;
output   work_x_0_ce1;
output   work_x_0_we1;
output  [63:0] work_x_0_d1;
output  [5:0] work_y_0_address0;
output   work_y_0_ce0;
output   work_y_0_we0;
output  [63:0] work_y_0_d0;
output  [5:0] work_y_0_address1;
output   work_y_0_ce1;
output   work_y_0_we1;
output  [63:0] work_y_0_d1;
output  [5:0] work_y_7_address0;
output   work_y_7_ce0;
output   work_y_7_we0;
output  [63:0] work_y_7_d0;
output  [5:0] work_y_7_address1;
output   work_y_7_ce1;
output   work_y_7_we1;
output  [63:0] work_y_7_d1;
output  [5:0] work_y_6_address0;
output   work_y_6_ce0;
output   work_y_6_we0;
output  [63:0] work_y_6_d0;
output  [5:0] work_y_6_address1;
output   work_y_6_ce1;
output   work_y_6_we1;
output  [63:0] work_y_6_d1;
output  [5:0] work_y_5_address0;
output   work_y_5_ce0;
output   work_y_5_we0;
output  [63:0] work_y_5_d0;
output  [5:0] work_y_5_address1;
output   work_y_5_ce1;
output   work_y_5_we1;
output  [63:0] work_y_5_d1;
output  [5:0] work_y_4_address0;
output   work_y_4_ce0;
output   work_y_4_we0;
output  [63:0] work_y_4_d0;
output  [5:0] work_y_4_address1;
output   work_y_4_ce1;
output   work_y_4_we1;
output  [63:0] work_y_4_d1;
output  [5:0] work_y_3_address0;
output   work_y_3_ce0;
output   work_y_3_we0;
output  [63:0] work_y_3_d0;
output  [5:0] work_y_3_address1;
output   work_y_3_ce1;
output   work_y_3_we1;
output  [63:0] work_y_3_d1;
output  [5:0] work_y_2_address0;
output   work_y_2_ce0;
output   work_y_2_we0;
output  [63:0] work_y_2_d0;
output  [5:0] work_y_2_address1;
output   work_y_2_ce1;
output   work_y_2_we1;
output  [63:0] work_y_2_d1;
output  [5:0] work_y_1_address0;
output   work_y_1_ce0;
output   work_y_1_we0;
output  [63:0] work_y_1_d0;
output  [5:0] work_y_1_address1;
output   work_y_1_ce1;
output   work_y_1_we1;
output  [63:0] work_y_1_d1;
output  [5:0] work_x_7_address0;
output   work_x_7_ce0;
output   work_x_7_we0;
output  [63:0] work_x_7_d0;
output  [5:0] work_x_7_address1;
output   work_x_7_ce1;
output   work_x_7_we1;
output  [63:0] work_x_7_d1;
output  [5:0] work_x_6_address0;
output   work_x_6_ce0;
output   work_x_6_we0;
output  [63:0] work_x_6_d0;
output  [5:0] work_x_6_address1;
output   work_x_6_ce1;
output   work_x_6_we1;
output  [63:0] work_x_6_d1;
output  [5:0] work_x_5_address0;
output   work_x_5_ce0;
output   work_x_5_we0;
output  [63:0] work_x_5_d0;
output  [5:0] work_x_5_address1;
output   work_x_5_ce1;
output   work_x_5_we1;
output  [63:0] work_x_5_d1;
output  [5:0] work_x_4_address0;
output   work_x_4_ce0;
output   work_x_4_we0;
output  [63:0] work_x_4_d0;
output  [5:0] work_x_4_address1;
output   work_x_4_ce1;
output   work_x_4_we1;
output  [63:0] work_x_4_d1;
output  [5:0] work_x_3_address0;
output   work_x_3_ce0;
output   work_x_3_we0;
output  [63:0] work_x_3_d0;
output  [5:0] work_x_3_address1;
output   work_x_3_ce1;
output   work_x_3_we1;
output  [63:0] work_x_3_d1;
output  [5:0] work_x_2_address0;
output   work_x_2_ce0;
output   work_x_2_we0;
output  [63:0] work_x_2_d0;
output  [5:0] work_x_2_address1;
output   work_x_2_ce1;
output   work_x_2_we1;
output  [63:0] work_x_2_d1;
output  [5:0] work_x_1_address0;
output   work_x_1_ce0;
output   work_x_1_we0;
output  [63:0] work_x_1_d0;
output  [5:0] work_x_1_address1;
output   work_x_1_ce1;
output   work_x_1_we1;
output  [63:0] work_x_1_d1;
output  [5:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [5:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [5:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [5:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [5:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [5:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [5:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [5:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [63:0] grp_fu_6936_p_din0;
output  [63:0] grp_fu_6936_p_din1;
output  [0:0] grp_fu_6936_p_opcode;
input  [63:0] grp_fu_6936_p_dout0;
output   grp_fu_6936_p_ce;
output  [63:0] grp_fu_6940_p_din0;
output  [63:0] grp_fu_6940_p_din1;
output  [0:0] grp_fu_6940_p_opcode;
input  [63:0] grp_fu_6940_p_dout0;
output   grp_fu_6940_p_ce;
output  [63:0] grp_fu_6944_p_din0;
output  [63:0] grp_fu_6944_p_din1;
output  [1:0] grp_fu_6944_p_opcode;
input  [63:0] grp_fu_6944_p_dout0;
output   grp_fu_6944_p_ce;
output  [63:0] grp_fu_6948_p_din0;
output  [63:0] grp_fu_6948_p_din1;
output  [1:0] grp_fu_6948_p_opcode;
input  [63:0] grp_fu_6948_p_dout0;
output   grp_fu_6948_p_ce;
output  [63:0] grp_fu_6952_p_din0;
output  [63:0] grp_fu_6952_p_din1;
output  [1:0] grp_fu_6952_p_opcode;
input  [63:0] grp_fu_6952_p_dout0;
output   grp_fu_6952_p_ce;
output  [63:0] grp_fu_6956_p_din0;
output  [63:0] grp_fu_6956_p_din1;
output  [1:0] grp_fu_6956_p_opcode;
input  [63:0] grp_fu_6956_p_dout0;
output   grp_fu_6956_p_ce;
output  [63:0] grp_fu_6960_p_din0;
output  [63:0] grp_fu_6960_p_din1;
output  [1:0] grp_fu_6960_p_opcode;
input  [63:0] grp_fu_6960_p_dout0;
output   grp_fu_6960_p_ce;
output  [63:0] grp_fu_6964_p_din0;
output  [63:0] grp_fu_6964_p_din1;
output  [1:0] grp_fu_6964_p_opcode;
input  [63:0] grp_fu_6964_p_dout0;
output   grp_fu_6964_p_ce;
output  [63:0] grp_fu_6968_p_din0;
output  [63:0] grp_fu_6968_p_din1;
output  [1:0] grp_fu_6968_p_opcode;
input  [63:0] grp_fu_6968_p_dout0;
output   grp_fu_6968_p_ce;
output  [63:0] grp_fu_6972_p_din0;
output  [63:0] grp_fu_6972_p_din1;
output  [1:0] grp_fu_6972_p_opcode;
input  [63:0] grp_fu_6972_p_dout0;
output   grp_fu_6972_p_ce;
output  [63:0] grp_fu_6976_p_din0;
output  [63:0] grp_fu_6976_p_din1;
output  [1:0] grp_fu_6976_p_opcode;
input  [63:0] grp_fu_6976_p_dout0;
output   grp_fu_6976_p_ce;
output  [63:0] grp_fu_6980_p_din0;
output  [63:0] grp_fu_6980_p_din1;
output  [1:0] grp_fu_6980_p_opcode;
input  [63:0] grp_fu_6980_p_dout0;
output   grp_fu_6980_p_ce;
output  [63:0] grp_fu_6984_p_din0;
output  [63:0] grp_fu_6984_p_din1;
output  [1:0] grp_fu_6984_p_opcode;
input  [63:0] grp_fu_6984_p_dout0;
output   grp_fu_6984_p_ce;
output  [63:0] grp_fu_6988_p_din0;
output  [63:0] grp_fu_6988_p_din1;
output  [1:0] grp_fu_6988_p_opcode;
input  [63:0] grp_fu_6988_p_dout0;
output   grp_fu_6988_p_ce;
output  [63:0] grp_fu_6992_p_din0;
output  [63:0] grp_fu_6992_p_din1;
output  [0:0] grp_fu_6992_p_opcode;
input  [63:0] grp_fu_6992_p_dout0;
output   grp_fu_6992_p_ce;
output  [63:0] grp_fu_7168_p_din0;
output  [63:0] grp_fu_7168_p_din1;
input  [63:0] grp_fu_7168_p_dout0;
output   grp_fu_7168_p_ce;
output  [63:0] grp_fu_7172_p_din0;
output  [63:0] grp_fu_7172_p_din1;
input  [63:0] grp_fu_7172_p_dout0;
output   grp_fu_7172_p_ce;
output  [63:0] grp_fu_7176_p_din0;
output  [63:0] grp_fu_7176_p_din1;
input  [63:0] grp_fu_7176_p_dout0;
output   grp_fu_7176_p_ce;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln365_reg_2298;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1592;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_5_reg_2292;
wire   [0:0] icmp_ln365_fu_1604_p2;
wire   [2:0] trunc_ln365_fu_1630_p1;
reg   [2:0] trunc_ln365_reg_2302;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter1_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter2_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter3_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter4_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter5_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter6_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter7_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter8_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter9_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter10_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter11_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter12_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter13_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter14_reg;
reg   [2:0] trunc_ln365_reg_2302_pp0_iter15_reg;
reg   [2:0] lshr_ln114_1_reg_2386;
reg   [2:0] lshr_ln114_1_reg_2386_pp0_iter1_reg;
reg   [2:0] lshr_ln114_1_reg_2386_pp0_iter2_reg;
reg   [2:0] lshr_ln114_1_reg_2386_pp0_iter3_reg;
reg   [2:0] lshr_ln114_1_reg_2386_pp0_iter4_reg;
reg   [2:0] lshr_ln114_1_reg_2386_pp0_iter5_reg;
reg   [2:0] lshr_ln114_1_reg_2386_pp0_iter6_reg;
reg   [2:0] lshr_ln114_1_reg_2386_pp0_iter7_reg;
reg   [2:0] lshr_ln114_1_reg_2386_pp0_iter8_reg;
reg   [2:0] lshr_ln114_1_reg_2386_pp0_iter9_reg;
reg   [2:0] lshr_ln114_1_reg_2386_pp0_iter10_reg;
reg   [2:0] lshr_ln114_1_reg_2386_pp0_iter11_reg;
reg   [63:0] c0_y_reg_2395;
reg   [63:0] c0_y_96_reg_2401;
reg   [63:0] c0_y_98_reg_2407;
reg   [63:0] c0_y_99_reg_2412;
reg   [63:0] DATA_y_4_load_reg_2418;
reg   [63:0] DATA_y_5_load_reg_2424;
reg   [63:0] DATA_y_6_load_reg_2430;
reg   [63:0] DATA_y_7_load_reg_2435;
reg   [63:0] c0_x_reg_2441;
reg   [63:0] c0_x_96_reg_2447;
reg   [63:0] c0_x_98_reg_2453;
reg   [63:0] c0_x_99_reg_2458;
reg   [63:0] DATA_x_4_load_reg_2464;
reg   [63:0] DATA_x_5_load_reg_2470;
reg   [63:0] DATA_x_6_load_reg_2476;
reg   [63:0] DATA_x_7_load_reg_2481;
reg   [63:0] c0_x_97_reg_2487;
reg   [63:0] c0_y_97_reg_2493;
reg   [63:0] tmp_1_reg_2499;
reg   [63:0] sub_reg_2505;
reg   [63:0] tmp_1_23_reg_2511;
reg   [63:0] tmp_1_23_reg_2511_pp0_iter3_reg;
reg   [63:0] tmp_1_23_reg_2511_pp0_iter4_reg;
reg   [63:0] sub12_reg_2517;
reg   [63:0] sub12_reg_2517_pp0_iter3_reg;
reg   [63:0] sub12_reg_2517_pp0_iter4_reg;
reg   [63:0] add12_reg_2523;
reg   [63:0] add13_reg_2529;
reg   [63:0] tmp_1_24_reg_2535;
reg   [63:0] c0_x_101_reg_2540;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_101_reg_2546;
reg   [63:0] c0_x_95_reg_2552;
reg   [63:0] c0_x_95_reg_2552_pp0_iter3_reg;
reg   [63:0] c0_x_95_reg_2552_pp0_iter4_reg;
reg   [63:0] c0_x_95_reg_2552_pp0_iter5_reg;
reg   [63:0] c0_x_95_reg_2552_pp0_iter6_reg;
reg   [63:0] c0_y_95_reg_2558;
reg   [63:0] c0_y_95_reg_2558_pp0_iter3_reg;
reg   [63:0] c0_y_95_reg_2558_pp0_iter4_reg;
reg   [63:0] c0_y_95_reg_2558_pp0_iter5_reg;
reg   [63:0] c0_y_95_reg_2558_pp0_iter6_reg;
reg   [63:0] add_reg_2564;
reg   [63:0] add11_reg_2570;
wire   [63:0] bitcast_ln386_1_fu_1682_p1;
wire   [63:0] bitcast_ln386_3_fu_1716_p1;
wire   [63:0] bitcast_ln386_9_fu_1750_p1;
wire   [63:0] bitcast_ln386_11_fu_1786_p1;
reg   [63:0] sub14_reg_2598;
reg   [63:0] add14_reg_2603;
reg   [63:0] mul_reg_2608;
reg   [63:0] mul6_reg_2613;
reg   [63:0] sub16_reg_2618;
reg   [63:0] add16_reg_2623;
reg   [63:0] tmp_95_reg_2628;
reg   [63:0] tmp_95_reg_2628_pp0_iter5_reg;
reg   [63:0] tmp_95_reg_2628_pp0_iter6_reg;
reg   [63:0] c0_x_102_reg_2634;
reg   [63:0] c0_x_102_reg_2634_pp0_iter5_reg;
reg   [63:0] c0_x_102_reg_2634_pp0_iter6_reg;
reg   [63:0] c0_x_102_reg_2634_pp0_iter7_reg;
reg   [63:0] c0_x_102_reg_2634_pp0_iter8_reg;
reg   [63:0] c0_y_102_reg_2640;
reg   [63:0] c0_y_102_reg_2640_pp0_iter5_reg;
reg   [63:0] c0_y_102_reg_2640_pp0_iter6_reg;
reg   [63:0] c0_y_102_reg_2640_pp0_iter7_reg;
reg   [63:0] c0_y_102_reg_2640_pp0_iter8_reg;
reg   [63:0] sub17_reg_2646;
reg   [63:0] sub17_reg_2646_pp0_iter5_reg;
reg   [63:0] sub17_reg_2646_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_5_fu_1821_p1;
wire   [63:0] bitcast_ln386_7_fu_1855_p1;
reg   [63:0] c0_x_103_reg_2662;
reg   [63:0] c0_y_103_reg_2668;
reg   [63:0] add17_reg_2674;
reg   [63:0] add18_reg_2680;
reg   [63:0] c0_x_100_reg_2686;
reg   [63:0] c0_y_100_reg_2692;
reg   [63:0] mul7_reg_2698;
reg   [63:0] mul8_reg_2704;
reg   [63:0] sub15_reg_2710;
reg   [63:0] add15_reg_2716;
reg   [63:0] mul9_reg_2722;
reg   [63:0] mul10_reg_2727;
wire   [63:0] bitcast_ln386_13_fu_1889_p1;
wire   [63:0] bitcast_ln386_15_fu_1923_p1;
wire   [63:0] bitcast_ln393_fu_1928_p1;
reg   [63:0] bitcast_ln393_reg_2742;
reg   [63:0] bitcast_ln393_reg_2742_pp0_iter7_reg;
reg   [63:0] bitcast_ln393_reg_2742_pp0_iter8_reg;
reg   [63:0] bitcast_ln393_reg_2742_pp0_iter9_reg;
reg   [63:0] bitcast_ln393_reg_2742_pp0_iter10_reg;
wire   [63:0] bitcast_ln389_fu_1932_p1;
reg   [63:0] bitcast_ln389_reg_2754;
wire   [63:0] bitcast_ln398_fu_1936_p1;
reg   [63:0] bitcast_ln398_reg_2766;
wire   [63:0] bitcast_ln402_fu_1940_p1;
reg   [63:0] bitcast_ln402_reg_2778;
reg   [63:0] bitcast_ln402_reg_2778_pp0_iter8_reg;
reg   [63:0] bitcast_ln402_reg_2778_pp0_iter9_reg;
reg   [63:0] bitcast_ln402_reg_2778_pp0_iter10_reg;
reg   [63:0] bitcast_ln402_reg_2778_pp0_iter11_reg;
reg   [63:0] add23_reg_2790;
reg   [63:0] add23_reg_2790_pp0_iter9_reg;
reg   [63:0] tmp_96_reg_2796;
reg   [63:0] tmp_96_reg_2796_pp0_iter9_reg;
reg   [63:0] tmp_96_reg_2796_pp0_iter10_reg;
reg   [63:0] sub18_reg_2802;
reg   [63:0] sub19_reg_2808;
reg   [63:0] c0_x_105_reg_2814;
reg   [63:0] sub24_reg_2820;
reg   [63:0] sub24_reg_2820_pp0_iter9_reg;
reg   [63:0] c0_y_105_reg_2826;
reg   [63:0] c0_x_104_reg_2832;
reg   [63:0] c0_x_104_reg_2832_pp0_iter9_reg;
reg   [63:0] c0_x_104_reg_2832_pp0_iter10_reg;
reg   [63:0] c0_x_104_reg_2832_pp0_iter11_reg;
reg   [63:0] c0_y_104_reg_2838;
reg   [63:0] c0_y_104_reg_2838_pp0_iter9_reg;
reg   [63:0] c0_y_104_reg_2838_pp0_iter10_reg;
reg   [63:0] c0_y_104_reg_2838_pp0_iter11_reg;
reg   [63:0] c0_y_104_reg_2838_pp0_iter12_reg;
reg   [63:0] add24_reg_2844;
reg   [63:0] mul11_reg_2850;
wire   [63:0] bitcast_ln386_17_fu_1992_p1;
reg   [63:0] mul12_reg_2860;
reg   [63:0] add22_reg_2865;
reg   [63:0] add25_reg_2870;
reg   [63:0] add26_reg_2875;
wire   [63:0] bitcast_ln386_19_fu_2026_p1;
wire  signed [3:0] zext_ln391_cast_fu_2031_p3;
reg  signed [3:0] zext_ln391_cast_reg_2885;
reg  signed [3:0] zext_ln391_cast_reg_2885_pp0_iter12_reg;
reg  signed [3:0] zext_ln391_cast_reg_2885_pp0_iter13_reg;
reg  signed [3:0] zext_ln391_cast_reg_2885_pp0_iter14_reg;
wire  signed [4:0] zext_ln392_cast_fu_2061_p3;
reg  signed [4:0] zext_ln392_cast_reg_2891;
wire   [63:0] bitcast_ln394_fu_2112_p1;
reg   [63:0] bitcast_ln394_reg_2896;
wire   [63:0] bitcast_ln395_fu_2116_p1;
reg   [63:0] bitcast_ln395_reg_2908;
wire   [63:0] bitcast_ln403_fu_2142_p1;
reg   [63:0] bitcast_ln403_reg_2920;
wire   [63:0] bitcast_ln404_fu_2146_p1;
reg   [63:0] bitcast_ln404_reg_2932;
reg   [63:0] sub25_reg_2944;
reg   [63:0] sub26_reg_2950;
wire   [63:0] bitcast_ln396_fu_2231_p1;
reg   [63:0] bitcast_ln396_reg_2956;
wire   [63:0] zext_ln393_fu_2238_p1;
reg   [63:0] zext_ln393_reg_2968;
wire   [63:0] zext_ln389_fu_2265_p1;
reg   [63:0] zext_ln389_reg_2980;
wire   [63:0] bitcast_ln401_fu_2277_p1;
reg   [63:0] bitcast_ln401_reg_2992;
wire   [63:0] bitcast_ln405_fu_2281_p1;
reg   [63:0] bitcast_ln405_reg_3004;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln365_fu_1610_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln114_fu_1944_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln391_fu_2038_p1;
wire   [63:0] zext_ln392_fu_2069_p1;
wire   [63:0] zext_ln394_fu_2161_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_2188_p1;
wire   [63:0] zext_ln396_fu_2211_p1;
wire    ap_block_pp0_stage3;
reg   [6:0] tid_fu_134;
wire   [6:0] add_ln365_fu_1634_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_7_ce0_local;
reg    work_x_6_we1_local;
reg   [63:0] work_x_6_d1_local;
reg    work_x_6_ce1_local;
reg   [5:0] work_x_6_address1_local;
wire   [63:0] bitcast_ln390_fu_2089_p1;
reg    work_x_6_we0_local;
reg   [63:0] work_x_6_d0_local;
wire   [63:0] bitcast_ln391_fu_2100_p1;
reg    work_x_6_ce0_local;
reg   [5:0] work_x_6_address0_local;
wire   [63:0] bitcast_ln392_fu_2250_p1;
reg    work_y_6_we1_local;
reg   [63:0] work_y_6_d1_local;
reg    work_y_6_ce1_local;
reg   [5:0] work_y_6_address1_local;
wire   [63:0] bitcast_ln399_fu_2120_p1;
reg    work_y_6_we0_local;
reg   [63:0] work_y_6_d0_local;
wire   [63:0] bitcast_ln400_fu_2131_p1;
reg    work_y_6_ce0_local;
reg   [5:0] work_y_6_address0_local;
reg    work_x_5_we1_local;
reg   [63:0] work_x_5_d1_local;
reg    work_x_5_ce1_local;
reg   [5:0] work_x_5_address1_local;
reg    work_x_5_we0_local;
reg   [63:0] work_x_5_d0_local;
reg    work_x_5_ce0_local;
reg   [5:0] work_x_5_address0_local;
reg    work_y_5_we1_local;
reg   [63:0] work_y_5_d1_local;
reg    work_y_5_ce1_local;
reg   [5:0] work_y_5_address1_local;
reg    work_y_5_we0_local;
reg   [63:0] work_y_5_d0_local;
reg    work_y_5_ce0_local;
reg   [5:0] work_y_5_address0_local;
reg    work_x_4_we1_local;
reg   [63:0] work_x_4_d1_local;
reg    work_x_4_ce1_local;
reg   [5:0] work_x_4_address1_local;
reg    work_x_4_we0_local;
reg   [63:0] work_x_4_d0_local;
reg    work_x_4_ce0_local;
reg   [5:0] work_x_4_address0_local;
reg    work_y_4_we1_local;
reg   [63:0] work_y_4_d1_local;
reg    work_y_4_ce1_local;
reg   [5:0] work_y_4_address1_local;
reg    work_y_4_we0_local;
reg   [63:0] work_y_4_d0_local;
reg    work_y_4_ce0_local;
reg   [5:0] work_y_4_address0_local;
reg    work_x_3_we1_local;
reg   [63:0] work_x_3_d1_local;
reg    work_x_3_ce1_local;
reg   [5:0] work_x_3_address1_local;
reg    work_x_3_we0_local;
reg   [63:0] work_x_3_d0_local;
reg    work_x_3_ce0_local;
reg   [5:0] work_x_3_address0_local;
reg    work_y_3_we1_local;
reg   [63:0] work_y_3_d1_local;
reg    work_y_3_ce1_local;
reg   [5:0] work_y_3_address1_local;
reg    work_y_3_we0_local;
reg   [63:0] work_y_3_d0_local;
reg    work_y_3_ce0_local;
reg   [5:0] work_y_3_address0_local;
reg    work_x_2_we1_local;
reg   [63:0] work_x_2_d1_local;
reg    work_x_2_ce1_local;
reg   [5:0] work_x_2_address1_local;
reg    work_x_2_we0_local;
reg   [63:0] work_x_2_d0_local;
reg    work_x_2_ce0_local;
reg   [5:0] work_x_2_address0_local;
reg    work_y_2_we1_local;
reg   [63:0] work_y_2_d1_local;
reg    work_y_2_ce1_local;
reg   [5:0] work_y_2_address1_local;
reg    work_y_2_we0_local;
reg   [63:0] work_y_2_d0_local;
reg    work_y_2_ce0_local;
reg   [5:0] work_y_2_address0_local;
reg    work_x_1_we1_local;
reg   [63:0] work_x_1_d1_local;
reg    work_x_1_ce1_local;
reg   [5:0] work_x_1_address1_local;
reg    work_x_1_we0_local;
reg   [63:0] work_x_1_d0_local;
reg    work_x_1_ce0_local;
reg   [5:0] work_x_1_address0_local;
reg    work_y_1_we1_local;
reg   [63:0] work_y_1_d1_local;
reg    work_y_1_ce1_local;
reg   [5:0] work_y_1_address1_local;
reg    work_y_1_we0_local;
reg   [63:0] work_y_1_d0_local;
reg    work_y_1_ce0_local;
reg   [5:0] work_y_1_address0_local;
reg    work_x_0_we1_local;
reg   [63:0] work_x_0_d1_local;
reg    work_x_0_ce1_local;
reg   [5:0] work_x_0_address1_local;
reg    work_x_0_we0_local;
reg   [63:0] work_x_0_d0_local;
reg    work_x_0_ce0_local;
reg   [5:0] work_x_0_address0_local;
reg    work_y_0_we1_local;
reg   [63:0] work_y_0_d1_local;
reg    work_y_0_ce1_local;
reg   [5:0] work_y_0_address1_local;
reg    work_y_0_we0_local;
reg   [63:0] work_y_0_d0_local;
reg    work_y_0_ce0_local;
reg   [5:0] work_y_0_address0_local;
reg    work_x_7_we1_local;
reg   [63:0] work_x_7_d1_local;
reg    work_x_7_ce1_local;
reg   [5:0] work_x_7_address1_local;
reg    work_x_7_we0_local;
reg   [63:0] work_x_7_d0_local;
reg    work_x_7_ce0_local;
reg   [5:0] work_x_7_address0_local;
reg    work_y_7_we1_local;
reg   [63:0] work_y_7_d1_local;
reg    work_y_7_ce1_local;
reg   [5:0] work_y_7_address1_local;
reg    work_y_7_we0_local;
reg   [63:0] work_y_7_d0_local;
reg    work_y_7_ce0_local;
reg   [5:0] work_y_7_address0_local;
reg   [63:0] grp_fu_1514_p0;
reg   [63:0] grp_fu_1514_p1;
reg   [63:0] grp_fu_1518_p0;
reg   [63:0] grp_fu_1518_p1;
reg   [63:0] grp_fu_1522_p0;
reg   [63:0] grp_fu_1522_p1;
reg   [63:0] grp_fu_1526_p0;
reg   [63:0] grp_fu_1526_p1;
reg   [63:0] grp_fu_1530_p0;
reg   [63:0] grp_fu_1530_p1;
reg   [63:0] grp_fu_1534_p0;
reg   [63:0] grp_fu_1534_p1;
reg   [63:0] grp_fu_1538_p0;
reg   [63:0] grp_fu_1538_p1;
reg   [63:0] grp_fu_1542_p0;
reg   [63:0] grp_fu_1542_p1;
reg   [63:0] grp_fu_1546_p0;
reg   [63:0] grp_fu_1546_p1;
reg   [63:0] grp_fu_1550_p0;
reg   [63:0] grp_fu_1550_p1;
reg   [63:0] grp_fu_1554_p0;
reg   [63:0] grp_fu_1554_p1;
reg   [63:0] grp_fu_1558_p0;
reg   [63:0] grp_fu_1558_p1;
reg   [63:0] grp_fu_1562_p0;
reg   [63:0] grp_fu_1562_p1;
reg   [63:0] grp_fu_1566_p0;
reg   [63:0] grp_fu_1566_p1;
reg   [63:0] grp_fu_1570_p0;
reg   [63:0] grp_fu_1570_p1;
reg   [63:0] grp_fu_1574_p0;
reg   [63:0] grp_fu_1574_p1;
reg   [63:0] grp_fu_1579_p0;
reg   [63:0] grp_fu_1579_p1;
reg   [63:0] grp_fu_1586_p0;
reg   [63:0] grp_fu_1586_p1;
wire   [63:0] bitcast_ln386_fu_1653_p1;
wire   [0:0] bit_sel_fu_1656_p3;
wire   [0:0] xor_ln386_10_fu_1664_p2;
wire   [62:0] trunc_ln386_fu_1670_p1;
wire   [63:0] xor_ln4_fu_1674_p3;
wire   [63:0] bitcast_ln386_2_fu_1687_p1;
wire   [0:0] bit_sel80_fu_1690_p3;
wire   [0:0] xor_ln386_fu_1698_p2;
wire   [62:0] trunc_ln386_1_fu_1704_p1;
wire   [63:0] xor_ln386_1_fu_1708_p3;
wire   [63:0] bitcast_ln386_8_fu_1721_p1;
wire   [0:0] bit_sel83_fu_1724_p3;
wire   [0:0] xor_ln386_13_fu_1732_p2;
wire   [62:0] trunc_ln386_4_fu_1738_p1;
wire   [63:0] xor_ln386_4_fu_1742_p3;
wire   [63:0] bitcast_ln386_10_fu_1756_p1;
wire   [0:0] bit_sel84_fu_1760_p3;
wire   [0:0] xor_ln386_14_fu_1768_p2;
wire   [62:0] trunc_ln386_5_fu_1774_p1;
wire   [63:0] xor_ln386_5_fu_1778_p3;
wire   [63:0] bitcast_ln386_4_fu_1792_p1;
wire   [0:0] bit_sel81_fu_1795_p3;
wire   [0:0] xor_ln386_11_fu_1803_p2;
wire   [62:0] trunc_ln386_2_fu_1809_p1;
wire   [63:0] xor_ln386_2_fu_1813_p3;
wire   [63:0] bitcast_ln386_6_fu_1826_p1;
wire   [0:0] bit_sel82_fu_1829_p3;
wire   [0:0] xor_ln386_12_fu_1837_p2;
wire   [62:0] trunc_ln386_3_fu_1843_p1;
wire   [63:0] xor_ln386_3_fu_1847_p3;
wire   [63:0] bitcast_ln386_12_fu_1860_p1;
wire   [0:0] bit_sel85_fu_1863_p3;
wire   [0:0] xor_ln386_15_fu_1871_p2;
wire   [62:0] trunc_ln386_6_fu_1877_p1;
wire   [63:0] xor_ln386_6_fu_1881_p3;
wire   [63:0] bitcast_ln386_14_fu_1894_p1;
wire   [0:0] bit_sel86_fu_1897_p3;
wire   [0:0] xor_ln386_16_fu_1905_p2;
wire   [62:0] trunc_ln386_7_fu_1911_p1;
wire   [63:0] xor_ln386_7_fu_1915_p3;
wire   [63:0] bitcast_ln386_16_fu_1963_p1;
wire   [0:0] bit_sel87_fu_1966_p3;
wire   [0:0] xor_ln386_17_fu_1974_p2;
wire   [62:0] trunc_ln386_8_fu_1980_p1;
wire   [63:0] xor_ln386_8_fu_1984_p3;
wire   [63:0] bitcast_ln386_18_fu_1997_p1;
wire   [0:0] bit_sel88_fu_2000_p3;
wire   [0:0] xor_ln386_18_fu_2008_p2;
wire   [62:0] trunc_ln386_9_fu_2014_p1;
wire   [63:0] xor_ln386_9_fu_2018_p3;
wire   [3:0] zext_ln391_1_fu_2058_p1;
wire   [4:0] zext_ln393_1_fu_2150_p1;
wire   [5:0] zext_ln394_cast_fu_2153_p3;
wire   [5:0] zext_ln395_cast_fu_2181_p3;
wire  signed [5:0] sext_ln396_fu_2208_p1;
wire  signed [4:0] sext_ln393_fu_2235_p1;
wire  signed [5:0] sext_ln389_fu_2262_p1;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg   [1:0] grp_fu_1522_opcode;
reg   [1:0] grp_fu_1526_opcode;
reg   [1:0] grp_fu_1530_opcode;
reg   [1:0] grp_fu_1534_opcode;
reg   [1:0] grp_fu_1538_opcode;
reg   [1:0] grp_fu_1542_opcode;
reg   [1:0] grp_fu_1546_opcode;
reg   [1:0] grp_fu_1550_opcode;
reg   [1:0] grp_fu_1554_opcode;
reg   [1:0] grp_fu_1558_opcode;
reg   [1:0] grp_fu_1562_opcode;
reg   [1:0] grp_fu_1566_opcode;
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
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to15;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_134 = 7'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        tid_fu_134 <= 7'd0;
    end else if (((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_134 <= add_ln365_fu_1634_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_load_reg_2464 <= DATA_x_4_q0;
        DATA_x_5_load_reg_2470 <= DATA_x_5_q0;
        DATA_x_6_load_reg_2476 <= DATA_x_6_q0;
        DATA_x_7_load_reg_2481 <= DATA_x_7_q0;
        DATA_y_4_load_reg_2418 <= DATA_y_4_q0;
        DATA_y_5_load_reg_2424 <= DATA_y_5_q0;
        DATA_y_6_load_reg_2430 <= DATA_y_6_q0;
        DATA_y_7_load_reg_2435 <= DATA_y_7_q0;
        c0_x_96_reg_2447 <= DATA_x_1_q0;
        c0_x_98_reg_2453 <= DATA_x_2_q0;
        c0_x_99_reg_2458 <= DATA_x_3_q0;
        c0_x_reg_2441 <= DATA_x_q0;
        c0_y_96_reg_2401 <= DATA_y_1_q0;
        c0_y_98_reg_2407 <= DATA_y_2_q0;
        c0_y_99_reg_2412 <= DATA_y_3_q0;
        c0_y_reg_2395 <= DATA_y_q0;
        lshr_ln114_1_reg_2386 <= {{tid_5_reg_2292[5:3]}};
        lshr_ln114_1_reg_2386_pp0_iter10_reg <= lshr_ln114_1_reg_2386_pp0_iter9_reg;
        lshr_ln114_1_reg_2386_pp0_iter11_reg <= lshr_ln114_1_reg_2386_pp0_iter10_reg;
        lshr_ln114_1_reg_2386_pp0_iter1_reg <= lshr_ln114_1_reg_2386;
        lshr_ln114_1_reg_2386_pp0_iter2_reg <= lshr_ln114_1_reg_2386_pp0_iter1_reg;
        lshr_ln114_1_reg_2386_pp0_iter3_reg <= lshr_ln114_1_reg_2386_pp0_iter2_reg;
        lshr_ln114_1_reg_2386_pp0_iter4_reg <= lshr_ln114_1_reg_2386_pp0_iter3_reg;
        lshr_ln114_1_reg_2386_pp0_iter5_reg <= lshr_ln114_1_reg_2386_pp0_iter4_reg;
        lshr_ln114_1_reg_2386_pp0_iter6_reg <= lshr_ln114_1_reg_2386_pp0_iter5_reg;
        lshr_ln114_1_reg_2386_pp0_iter7_reg <= lshr_ln114_1_reg_2386_pp0_iter6_reg;
        lshr_ln114_1_reg_2386_pp0_iter8_reg <= lshr_ln114_1_reg_2386_pp0_iter7_reg;
        lshr_ln114_1_reg_2386_pp0_iter9_reg <= lshr_ln114_1_reg_2386_pp0_iter8_reg;
        sub12_reg_2517_pp0_iter3_reg <= sub12_reg_2517;
        sub12_reg_2517_pp0_iter4_reg <= sub12_reg_2517_pp0_iter3_reg;
        tmp_1_23_reg_2511_pp0_iter3_reg <= tmp_1_23_reg_2511;
        tmp_1_23_reg_2511_pp0_iter4_reg <= tmp_1_23_reg_2511_pp0_iter3_reg;
        tmp_95_reg_2628_pp0_iter5_reg <= tmp_95_reg_2628;
        tmp_95_reg_2628_pp0_iter6_reg <= tmp_95_reg_2628_pp0_iter5_reg;
        zext_ln393_reg_2968[2 : 0] <= zext_ln393_fu_2238_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_reg_2570 <= grp_fu_6956_p_dout0;
        add_reg_2564 <= grp_fu_6952_p_dout0;
        c0_x_101_reg_2540 <= grp_fu_6936_p_dout0;
        c0_x_95_reg_2552 <= grp_fu_6944_p_dout0;
        c0_y_101_reg_2546 <= grp_fu_6940_p_dout0;
        c0_y_95_reg_2558 <= grp_fu_6948_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add12_reg_2523 <= grp_fu_6960_p_dout0;
        add13_reg_2529 <= grp_fu_6964_p_dout0;
        c0_x_97_reg_2487 <= grp_fu_6936_p_dout0;
        c0_y_97_reg_2493 <= grp_fu_6940_p_dout0;
        sub12_reg_2517 <= grp_fu_6956_p_dout0;
        sub_reg_2505 <= grp_fu_6948_p_dout0;
        tmp_1_23_reg_2511 <= grp_fu_6952_p_dout0;
        tmp_1_24_reg_2535 <= grp_fu_6968_p_dout0;
        tmp_1_reg_2499 <= grp_fu_6944_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add14_reg_2603 <= grp_fu_6980_p_dout0;
        add16_reg_2623 <= grp_fu_6988_p_dout0;
        mul6_reg_2613 <= grp_fu_7172_p_dout0;
        mul_reg_2608 <= grp_fu_7168_p_dout0;
        sub14_reg_2598 <= grp_fu_6976_p_dout0;
        sub16_reg_2618 <= grp_fu_6984_p_dout0;
        tmp_95_reg_2628 <= grp_fu_6992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_2716 <= grp_fu_6976_p_dout0;
        mul10_reg_2727 <= grp_fu_7172_p_dout0;
        mul9_reg_2722 <= grp_fu_7168_p_dout0;
        sub15_reg_2710 <= grp_fu_6972_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add17_reg_2674 <= grp_fu_6944_p_dout0;
        add18_reg_2680 <= grp_fu_6948_p_dout0;
        c0_x_103_reg_2662 <= grp_fu_6936_p_dout0;
        c0_y_103_reg_2668 <= grp_fu_6940_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add22_reg_2865 <= grp_fu_6976_p_dout0;
        add25_reg_2870 <= grp_fu_6980_p_dout0;
        add26_reg_2875 <= grp_fu_6984_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_2790 <= grp_fu_6948_p_dout0;
        tmp_96_reg_2796 <= grp_fu_6952_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_2790_pp0_iter9_reg <= add23_reg_2790;
        bitcast_ln389_reg_2754 <= bitcast_ln389_fu_1932_p1;
        bitcast_ln394_reg_2896 <= bitcast_ln394_fu_2112_p1;
        bitcast_ln395_reg_2908 <= bitcast_ln395_fu_2116_p1;
        bitcast_ln396_reg_2956 <= bitcast_ln396_fu_2231_p1;
        bitcast_ln398_reg_2766 <= bitcast_ln398_fu_1936_p1;
        bitcast_ln401_reg_2992 <= bitcast_ln401_fu_2277_p1;
        bitcast_ln402_reg_2778 <= bitcast_ln402_fu_1940_p1;
        bitcast_ln402_reg_2778_pp0_iter10_reg <= bitcast_ln402_reg_2778_pp0_iter9_reg;
        bitcast_ln402_reg_2778_pp0_iter11_reg <= bitcast_ln402_reg_2778_pp0_iter10_reg;
        bitcast_ln402_reg_2778_pp0_iter8_reg <= bitcast_ln402_reg_2778;
        bitcast_ln402_reg_2778_pp0_iter9_reg <= bitcast_ln402_reg_2778_pp0_iter8_reg;
        bitcast_ln403_reg_2920 <= bitcast_ln403_fu_2142_p1;
        bitcast_ln404_reg_2932 <= bitcast_ln404_fu_2146_p1;
        bitcast_ln405_reg_3004 <= bitcast_ln405_fu_2281_p1;
        icmp_ln365_reg_2298 <= icmp_ln365_fu_1604_p2;
        tid_5_reg_2292 <= ap_sig_allocacmp_tid_5;
        tmp_96_reg_2796_pp0_iter10_reg <= tmp_96_reg_2796_pp0_iter9_reg;
        tmp_96_reg_2796_pp0_iter9_reg <= tmp_96_reg_2796;
        trunc_ln365_reg_2302 <= trunc_ln365_fu_1630_p1;
        trunc_ln365_reg_2302_pp0_iter10_reg <= trunc_ln365_reg_2302_pp0_iter9_reg;
        trunc_ln365_reg_2302_pp0_iter11_reg <= trunc_ln365_reg_2302_pp0_iter10_reg;
        trunc_ln365_reg_2302_pp0_iter12_reg <= trunc_ln365_reg_2302_pp0_iter11_reg;
        trunc_ln365_reg_2302_pp0_iter13_reg <= trunc_ln365_reg_2302_pp0_iter12_reg;
        trunc_ln365_reg_2302_pp0_iter14_reg <= trunc_ln365_reg_2302_pp0_iter13_reg;
        trunc_ln365_reg_2302_pp0_iter15_reg <= trunc_ln365_reg_2302_pp0_iter14_reg;
        trunc_ln365_reg_2302_pp0_iter1_reg <= trunc_ln365_reg_2302;
        trunc_ln365_reg_2302_pp0_iter2_reg <= trunc_ln365_reg_2302_pp0_iter1_reg;
        trunc_ln365_reg_2302_pp0_iter3_reg <= trunc_ln365_reg_2302_pp0_iter2_reg;
        trunc_ln365_reg_2302_pp0_iter4_reg <= trunc_ln365_reg_2302_pp0_iter3_reg;
        trunc_ln365_reg_2302_pp0_iter5_reg <= trunc_ln365_reg_2302_pp0_iter4_reg;
        trunc_ln365_reg_2302_pp0_iter6_reg <= trunc_ln365_reg_2302_pp0_iter5_reg;
        trunc_ln365_reg_2302_pp0_iter7_reg <= trunc_ln365_reg_2302_pp0_iter6_reg;
        trunc_ln365_reg_2302_pp0_iter8_reg <= trunc_ln365_reg_2302_pp0_iter7_reg;
        trunc_ln365_reg_2302_pp0_iter9_reg <= trunc_ln365_reg_2302_pp0_iter8_reg;
        zext_ln391_cast_reg_2885[2 : 0] <= zext_ln391_cast_fu_2031_p3[2 : 0];
        zext_ln391_cast_reg_2885_pp0_iter12_reg[2 : 0] <= zext_ln391_cast_reg_2885[2 : 0];
        zext_ln391_cast_reg_2885_pp0_iter13_reg[2 : 0] <= zext_ln391_cast_reg_2885_pp0_iter12_reg[2 : 0];
        zext_ln391_cast_reg_2885_pp0_iter14_reg[2 : 0] <= zext_ln391_cast_reg_2885_pp0_iter13_reg[2 : 0];
        zext_ln392_cast_reg_2891[2 : 0] <= zext_ln392_cast_fu_2061_p3[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add24_reg_2844 <= grp_fu_6968_p_dout0;
        c0_x_104_reg_2832 <= grp_fu_6960_p_dout0;
        c0_y_104_reg_2838 <= grp_fu_6964_p_dout0;
        c0_y_105_reg_2826 <= grp_fu_6956_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        bitcast_ln393_reg_2742 <= bitcast_ln393_fu_1928_p1;
        bitcast_ln393_reg_2742_pp0_iter10_reg <= bitcast_ln393_reg_2742_pp0_iter9_reg;
        bitcast_ln393_reg_2742_pp0_iter7_reg <= bitcast_ln393_reg_2742;
        bitcast_ln393_reg_2742_pp0_iter8_reg <= bitcast_ln393_reg_2742_pp0_iter7_reg;
        bitcast_ln393_reg_2742_pp0_iter9_reg <= bitcast_ln393_reg_2742_pp0_iter8_reg;
        c0_x_104_reg_2832_pp0_iter10_reg <= c0_x_104_reg_2832_pp0_iter9_reg;
        c0_x_104_reg_2832_pp0_iter11_reg <= c0_x_104_reg_2832_pp0_iter10_reg;
        c0_x_104_reg_2832_pp0_iter9_reg <= c0_x_104_reg_2832;
        c0_y_104_reg_2838_pp0_iter10_reg <= c0_y_104_reg_2838_pp0_iter9_reg;
        c0_y_104_reg_2838_pp0_iter11_reg <= c0_y_104_reg_2838_pp0_iter10_reg;
        c0_y_104_reg_2838_pp0_iter12_reg <= c0_y_104_reg_2838_pp0_iter11_reg;
        c0_y_104_reg_2838_pp0_iter9_reg <= c0_y_104_reg_2838;
        zext_ln389_reg_2980[2 : 0] <= zext_ln389_fu_2265_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_100_reg_2686 <= grp_fu_7168_p_dout0;
        c0_y_100_reg_2692 <= grp_fu_7172_p_dout0;
        mul7_reg_2698 <= grp_fu_7176_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_102_reg_2634 <= grp_fu_6960_p_dout0;
        c0_y_102_reg_2640 <= grp_fu_6964_p_dout0;
        sub17_reg_2646 <= grp_fu_6968_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_102_reg_2634_pp0_iter5_reg <= c0_x_102_reg_2634;
        c0_x_102_reg_2634_pp0_iter6_reg <= c0_x_102_reg_2634_pp0_iter5_reg;
        c0_x_102_reg_2634_pp0_iter7_reg <= c0_x_102_reg_2634_pp0_iter6_reg;
        c0_x_102_reg_2634_pp0_iter8_reg <= c0_x_102_reg_2634_pp0_iter7_reg;
        c0_x_95_reg_2552_pp0_iter3_reg <= c0_x_95_reg_2552;
        c0_x_95_reg_2552_pp0_iter4_reg <= c0_x_95_reg_2552_pp0_iter3_reg;
        c0_x_95_reg_2552_pp0_iter5_reg <= c0_x_95_reg_2552_pp0_iter4_reg;
        c0_x_95_reg_2552_pp0_iter6_reg <= c0_x_95_reg_2552_pp0_iter5_reg;
        c0_y_102_reg_2640_pp0_iter5_reg <= c0_y_102_reg_2640;
        c0_y_102_reg_2640_pp0_iter6_reg <= c0_y_102_reg_2640_pp0_iter5_reg;
        c0_y_102_reg_2640_pp0_iter7_reg <= c0_y_102_reg_2640_pp0_iter6_reg;
        c0_y_102_reg_2640_pp0_iter8_reg <= c0_y_102_reg_2640_pp0_iter7_reg;
        c0_y_95_reg_2558_pp0_iter3_reg <= c0_y_95_reg_2558;
        c0_y_95_reg_2558_pp0_iter4_reg <= c0_y_95_reg_2558_pp0_iter3_reg;
        c0_y_95_reg_2558_pp0_iter5_reg <= c0_y_95_reg_2558_pp0_iter4_reg;
        c0_y_95_reg_2558_pp0_iter6_reg <= c0_y_95_reg_2558_pp0_iter5_reg;
        sub17_reg_2646_pp0_iter5_reg <= sub17_reg_2646;
        sub17_reg_2646_pp0_iter6_reg <= sub17_reg_2646_pp0_iter5_reg;
        sub24_reg_2820_pp0_iter9_reg <= sub24_reg_2820;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_105_reg_2814 <= grp_fu_6988_p_dout0;
        sub18_reg_2802 <= grp_fu_6980_p_dout0;
        sub19_reg_2808 <= grp_fu_6984_p_dout0;
        sub24_reg_2820 <= grp_fu_6992_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul11_reg_2850 <= grp_fu_7168_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul12_reg_2860 <= grp_fu_7176_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_reg_2704 <= grp_fu_7176_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1592 <= grp_fu_6972_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_2944 <= grp_fu_6988_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub26_reg_2950 <= grp_fu_6992_p_dout0;
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
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
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
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
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
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
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
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln365_reg_2298 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to15 = 1'b1;
    end else begin
        ap_idle_pp0_1to15 = 1'b0;
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
        ap_sig_allocacmp_tid_5 = tid_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1514_p0 = c0_x_103_reg_2662;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1514_p0 = c0_x_101_reg_2540;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1514_p0 = c0_x_reg_2441;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1514_p0 = c0_x_96_reg_2447;
    end else begin
        grp_fu_1514_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1514_p1 = add17_reg_2674;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1514_p1 = add_reg_2564;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1514_p1 = DATA_x_4_load_reg_2464;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1514_p1 = DATA_x_5_load_reg_2470;
    end else begin
        grp_fu_1514_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1518_p0 = c0_y_103_reg_2668;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1518_p0 = c0_y_101_reg_2546;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1518_p0 = c0_y_reg_2395;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1518_p0 = c0_y_96_reg_2401;
    end else begin
        grp_fu_1518_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1518_p1 = add18_reg_2680;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1518_p1 = add11_reg_2570;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1518_p1 = DATA_y_4_load_reg_2418;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1518_p1 = DATA_y_5_load_reg_2424;
    end else begin
        grp_fu_1518_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1522_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1522_opcode = 2'd0;
    end else begin
        grp_fu_1522_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1522_p0 = c0_y_103_reg_2668;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1522_p0 = c0_x_97_reg_2487;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1522_p0 = c0_x_reg_2441;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1522_p0 = c0_x_96_reg_2447;
    end else begin
        grp_fu_1522_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1522_p1 = add18_reg_2680;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1522_p1 = add12_reg_2523;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1522_p1 = DATA_x_4_load_reg_2464;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1522_p1 = DATA_x_5_load_reg_2470;
    end else begin
        grp_fu_1522_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1526_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1526_opcode = 2'd0;
    end else begin
        grp_fu_1526_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1526_p0 = c0_x_100_reg_2686;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1526_p0 = c0_y_97_reg_2493;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1526_p0 = c0_y_reg_2395;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1526_p0 = c0_y_96_reg_2401;
    end else begin
        grp_fu_1526_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1526_p1 = mul7_reg_2698;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1526_p1 = add13_reg_2529;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1526_p1 = DATA_y_4_load_reg_2418;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1526_p1 = DATA_y_5_load_reg_2424;
    end else begin
        grp_fu_1526_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1530_opcode = 2'd1;
    end else if (((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1530_opcode = 2'd0;
    end else begin
        grp_fu_1530_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1530_p0 = c0_x_100_reg_2686;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1530_p0 = c0_x_103_reg_2662;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1530_p0 = c0_x_98_reg_2453;
    end else begin
        grp_fu_1530_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1530_p1 = mul7_reg_2698;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1530_p1 = add17_reg_2674;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1530_p1 = DATA_x_6_load_reg_2476;
    end else begin
        grp_fu_1530_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1534_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1534_opcode = 2'd0;
    end else begin
        grp_fu_1534_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1534_p0 = c0_x_102_reg_2634_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1534_p0 = c0_y_95_reg_2558_pp0_iter6_reg;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1534_p0 = c0_y_98_reg_2407;
    end else begin
        grp_fu_1534_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1534_p1 = sub18_reg_2802;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1534_p1 = add15_reg_2716;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1534_p1 = DATA_y_6_load_reg_2430;
    end else begin
        grp_fu_1534_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1538_opcode = 2'd1;
    end else if (((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1538_opcode = 2'd0;
    end else begin
        grp_fu_1538_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1538_p0 = c0_y_102_reg_2640_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1538_p0 = c0_x_95_reg_2552_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1538_p0 = c0_x_101_reg_2540;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1538_p0 = c0_x_99_reg_2458;
    end else begin
        grp_fu_1538_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1538_p1 = sub19_reg_2808;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1538_p1 = sub15_reg_2710;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1538_p1 = add_reg_2564;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1538_p1 = DATA_x_7_load_reg_2481;
    end else begin
        grp_fu_1538_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1542_opcode = 2'd1;
    end else if (((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1542_opcode = 2'd0;
    end else begin
        grp_fu_1542_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1542_p0 = c0_x_105_reg_2814;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1542_p0 = c0_y_95_reg_2558_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1542_p0 = c0_y_101_reg_2546;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1542_p0 = c0_y_99_reg_2412;
    end else begin
        grp_fu_1542_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1542_p1 = add23_reg_2790_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1542_p1 = add15_reg_2716;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1542_p1 = add11_reg_2570;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1542_p1 = DATA_y_7_load_reg_2435;
    end else begin
        grp_fu_1542_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1546_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1546_opcode = 2'd0;
    end else begin
        grp_fu_1546_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1546_p0 = c0_y_105_reg_2826;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1546_p0 = c0_y_100_reg_2692;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1546_p0 = c0_y_97_reg_2493;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1546_p0 = c0_x_99_reg_2458;
    end else begin
        grp_fu_1546_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1546_p1 = add24_reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1546_p1 = mul8_reg_2704;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1546_p1 = add13_reg_2529;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1546_p1 = DATA_x_7_load_reg_2481;
    end else begin
        grp_fu_1546_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_2298 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1550_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1550_opcode = 2'd0;
    end else begin
        grp_fu_1550_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1550_p0 = c0_x_104_reg_2832_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1550_p0 = c0_x_102_reg_2634_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1550_p0 = mul_reg_2608;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1550_p0 = c0_y_99_reg_2412;
    end else begin
        grp_fu_1550_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1550_p1 = sub25_reg_2944;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1550_p1 = sub18_reg_2802;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1550_p1 = bitcast_ln386_5_fu_1821_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1550_p1 = DATA_y_7_load_reg_2435;
    end else begin
        grp_fu_1550_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1554_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1554_opcode = 2'd0;
    end else begin
        grp_fu_1554_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1554_p0 = c0_x_104_reg_2832_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1554_p0 = c0_y_102_reg_2640_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1554_p0 = bitcast_ln386_7_fu_1855_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1554_p0 = tmp_1_reg_2499;
    end else begin
        grp_fu_1554_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1554_p1 = sub25_reg_2944;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1554_p1 = sub19_reg_2808;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1554_p1 = mul6_reg_2613;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1554_p1 = bitcast_ln386_1_fu_1682_p1;
    end else begin
        grp_fu_1554_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1558_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1558_opcode = 2'd0;
    end else begin
        grp_fu_1558_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1558_p0 = c0_y_104_reg_2838_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1558_p0 = c0_x_105_reg_2814;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1558_p0 = mul9_reg_2722;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1558_p0 = bitcast_ln386_3_fu_1716_p1;
    end else begin
        grp_fu_1558_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1558_p1 = sub26_reg_2950;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1558_p1 = add23_reg_2790;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1558_p1 = bitcast_ln386_13_fu_1889_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1558_p1 = sub_reg_2505;
    end else begin
        grp_fu_1558_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1562_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1562_opcode = 2'd0;
    end else begin
        grp_fu_1562_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1562_p0 = c0_y_104_reg_2838_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1562_p0 = c0_y_105_reg_2826;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1562_p0 = bitcast_ln386_15_fu_1923_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1562_p0 = bitcast_ln386_9_fu_1750_p1;
    end else begin
        grp_fu_1562_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1562_p1 = sub26_reg_2950;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1562_p1 = add24_reg_2844;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1562_p1 = mul10_reg_2727;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1562_p1 = bitcast_ln386_11_fu_1786_p1;
    end else begin
        grp_fu_1562_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1566_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1566_opcode = 2'd0;
    end else begin
        grp_fu_1566_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1566_p0 = mul11_reg_2850;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1566_p0 = c0_x_95_reg_2552_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1566_p0 = bitcast_ln386_9_fu_1750_p1;
    end else begin
        grp_fu_1566_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1566_p1 = bitcast_ln386_17_fu_1992_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1566_p1 = sub15_reg_2710;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1566_p1 = bitcast_ln386_11_fu_1786_p1;
    end else begin
        grp_fu_1566_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1570_p0 = bitcast_ln386_19_fu_2026_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1570_p0 = c0_y_100_reg_2692;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1570_p0 = c0_x_97_reg_2487;
    end else begin
        grp_fu_1570_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1570_p1 = mul12_reg_2860;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1570_p1 = mul8_reg_2704;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1570_p1 = add12_reg_2523;
    end else begin
        grp_fu_1570_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1574_p0 = tmp_96_reg_2796;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1574_p0 = tmp_95_reg_2628;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1574_p0 = sub14_reg_2598;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1574_p0 = tmp_1_23_reg_2511;
    end else begin
        grp_fu_1574_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1574_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1574_p1 = 64'd0;
    end else begin
        grp_fu_1574_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1579_p0 = sub17_reg_2646;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1579_p0 = add14_reg_2603;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1579_p0 = sub12_reg_2517;
    end else begin
        grp_fu_1579_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1579_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1579_p1 = 64'd0;
    end else begin
        grp_fu_1579_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1586_p0 = sub24_reg_2820;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1586_p0 = add16_reg_2623;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1586_p0 = sub16_reg_2618;
    end else begin
        grp_fu_1586_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1586_p1 = 64'd0;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1586_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_1586_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_address0_local = zext_ln389_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_address0_local = zext_ln393_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_0_ce0_local = 1'b1;
    end else begin
        work_x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_0_ce1_local = 1'b1;
    end else begin
        work_x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_d0_local = bitcast_ln396_reg_2956;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_d0_local = bitcast_ln392_fu_2250_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_d0_local = bitcast_ln394_reg_2896;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_d0_local = bitcast_ln391_fu_2100_p1;
    end else begin
        work_x_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_d1_local = bitcast_ln395_reg_2908;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_d1_local = bitcast_ln393_reg_2742_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_d1_local = bitcast_ln390_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_d1_local = bitcast_ln389_reg_2754;
    end else begin
        work_x_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_0_we0_local = 1'b1;
    end else begin
        work_x_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_0_we1_local = 1'b1;
    end else begin
        work_x_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_address0_local = zext_ln389_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_address0_local = zext_ln393_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_1_ce0_local = 1'b1;
    end else begin
        work_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_1_ce1_local = 1'b1;
    end else begin
        work_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_d0_local = bitcast_ln396_reg_2956;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_d0_local = bitcast_ln392_fu_2250_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_d0_local = bitcast_ln394_reg_2896;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_d0_local = bitcast_ln391_fu_2100_p1;
    end else begin
        work_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_d1_local = bitcast_ln395_reg_2908;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_d1_local = bitcast_ln393_reg_2742_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_d1_local = bitcast_ln390_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_d1_local = bitcast_ln389_reg_2754;
    end else begin
        work_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_1_we0_local = 1'b1;
    end else begin
        work_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_1_we1_local = 1'b1;
    end else begin
        work_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_address0_local = zext_ln389_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_address0_local = zext_ln393_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_x_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_x_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_2_ce0_local = 1'b1;
    end else begin
        work_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_2_ce1_local = 1'b1;
    end else begin
        work_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_d0_local = bitcast_ln396_reg_2956;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_d0_local = bitcast_ln392_fu_2250_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_d0_local = bitcast_ln394_reg_2896;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_d0_local = bitcast_ln391_fu_2100_p1;
    end else begin
        work_x_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_2_d1_local = bitcast_ln395_reg_2908;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_2_d1_local = bitcast_ln393_reg_2742_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_2_d1_local = bitcast_ln390_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_2_d1_local = bitcast_ln389_reg_2754;
    end else begin
        work_x_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_2_we0_local = 1'b1;
    end else begin
        work_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_2_we1_local = 1'b1;
    end else begin
        work_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_address0_local = zext_ln389_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_address0_local = zext_ln393_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_x_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_x_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_3_ce0_local = 1'b1;
    end else begin
        work_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_3_ce1_local = 1'b1;
    end else begin
        work_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_d0_local = bitcast_ln396_reg_2956;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_d0_local = bitcast_ln392_fu_2250_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_d0_local = bitcast_ln394_reg_2896;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_d0_local = bitcast_ln391_fu_2100_p1;
    end else begin
        work_x_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_3_d1_local = bitcast_ln395_reg_2908;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_3_d1_local = bitcast_ln393_reg_2742_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_3_d1_local = bitcast_ln390_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_3_d1_local = bitcast_ln389_reg_2754;
    end else begin
        work_x_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_3_we0_local = 1'b1;
    end else begin
        work_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_3_we1_local = 1'b1;
    end else begin
        work_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_4_address0_local = zext_ln389_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_4_address0_local = zext_ln393_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_4_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_4_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_x_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_4_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_4_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_4_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_4_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_x_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_4_ce0_local = 1'b1;
    end else begin
        work_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_4_ce1_local = 1'b1;
    end else begin
        work_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_4_d0_local = bitcast_ln396_reg_2956;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_4_d0_local = bitcast_ln392_fu_2250_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_4_d0_local = bitcast_ln394_reg_2896;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_4_d0_local = bitcast_ln391_fu_2100_p1;
    end else begin
        work_x_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_4_d1_local = bitcast_ln395_reg_2908;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_4_d1_local = bitcast_ln393_reg_2742_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_4_d1_local = bitcast_ln390_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_4_d1_local = bitcast_ln389_reg_2754;
    end else begin
        work_x_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_4_we0_local = 1'b1;
    end else begin
        work_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_4_we1_local = 1'b1;
    end else begin
        work_x_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_5_address0_local = zext_ln389_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_5_address0_local = zext_ln393_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_5_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_5_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_x_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_5_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_5_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_5_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_5_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_x_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_5_ce0_local = 1'b1;
    end else begin
        work_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_5_ce1_local = 1'b1;
    end else begin
        work_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_5_d0_local = bitcast_ln396_reg_2956;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_5_d0_local = bitcast_ln392_fu_2250_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_5_d0_local = bitcast_ln394_reg_2896;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_5_d0_local = bitcast_ln391_fu_2100_p1;
    end else begin
        work_x_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_5_d1_local = bitcast_ln395_reg_2908;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_5_d1_local = bitcast_ln393_reg_2742_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_5_d1_local = bitcast_ln390_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_5_d1_local = bitcast_ln389_reg_2754;
    end else begin
        work_x_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_5_we0_local = 1'b1;
    end else begin
        work_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_5_we1_local = 1'b1;
    end else begin
        work_x_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_6_address0_local = zext_ln389_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_6_address0_local = zext_ln393_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_6_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_6_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_x_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_6_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_6_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_6_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_6_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_x_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_6_ce0_local = 1'b1;
    end else begin
        work_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_6_ce1_local = 1'b1;
    end else begin
        work_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_6_d0_local = bitcast_ln396_reg_2956;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_6_d0_local = bitcast_ln392_fu_2250_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_6_d0_local = bitcast_ln394_reg_2896;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_6_d0_local = bitcast_ln391_fu_2100_p1;
    end else begin
        work_x_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_6_d1_local = bitcast_ln395_reg_2908;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_6_d1_local = bitcast_ln393_reg_2742_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_6_d1_local = bitcast_ln390_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_6_d1_local = bitcast_ln389_reg_2754;
    end else begin
        work_x_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_6_we0_local = 1'b1;
    end else begin
        work_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_6_we1_local = 1'b1;
    end else begin
        work_x_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_7_address0_local = zext_ln389_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_7_address0_local = zext_ln393_fu_2238_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_7_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_7_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_x_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_7_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_7_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_7_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_7_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_x_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_7_ce0_local = 1'b1;
    end else begin
        work_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_7_ce1_local = 1'b1;
    end else begin
        work_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_7_d0_local = bitcast_ln396_reg_2956;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_7_d0_local = bitcast_ln392_fu_2250_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_7_d0_local = bitcast_ln394_reg_2896;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_7_d0_local = bitcast_ln391_fu_2100_p1;
    end else begin
        work_x_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_7_d1_local = bitcast_ln395_reg_2908;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_7_d1_local = bitcast_ln393_reg_2742_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_7_d1_local = bitcast_ln390_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_7_d1_local = bitcast_ln389_reg_2754;
    end else begin
        work_x_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter14_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_7_we0_local = 1'b1;
    end else begin
        work_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_x_7_we1_local = 1'b1;
    end else begin
        work_x_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_address0_local = zext_ln389_reg_2980;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_address0_local = zext_ln393_reg_2968;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_y_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_y_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_0_ce0_local = 1'b1;
    end else begin
        work_y_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_0_ce1_local = 1'b1;
    end else begin
        work_y_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_d0_local = bitcast_ln405_reg_3004;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_d0_local = bitcast_ln401_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_d0_local = bitcast_ln403_reg_2920;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_d0_local = bitcast_ln400_fu_2131_p1;
    end else begin
        work_y_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_d1_local = bitcast_ln404_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_d1_local = bitcast_ln402_reg_2778_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_d1_local = bitcast_ln399_fu_2120_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_d1_local = bitcast_ln398_reg_2766;
    end else begin
        work_y_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_0_we0_local = 1'b1;
    end else begin
        work_y_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_0_we1_local = 1'b1;
    end else begin
        work_y_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_address0_local = zext_ln389_reg_2980;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_address0_local = zext_ln393_reg_2968;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_1_ce0_local = 1'b1;
    end else begin
        work_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_1_ce1_local = 1'b1;
    end else begin
        work_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_d0_local = bitcast_ln405_reg_3004;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_d0_local = bitcast_ln401_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_d0_local = bitcast_ln403_reg_2920;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_d0_local = bitcast_ln400_fu_2131_p1;
    end else begin
        work_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_d1_local = bitcast_ln404_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_d1_local = bitcast_ln402_reg_2778_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_d1_local = bitcast_ln399_fu_2120_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_d1_local = bitcast_ln398_reg_2766;
    end else begin
        work_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_1_we0_local = 1'b1;
    end else begin
        work_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_1_we1_local = 1'b1;
    end else begin
        work_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_address0_local = zext_ln389_reg_2980;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_address0_local = zext_ln393_reg_2968;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_y_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_2_ce0_local = 1'b1;
    end else begin
        work_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_2_ce1_local = 1'b1;
    end else begin
        work_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_d0_local = bitcast_ln405_reg_3004;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_d0_local = bitcast_ln401_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_d0_local = bitcast_ln403_reg_2920;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_d0_local = bitcast_ln400_fu_2131_p1;
    end else begin
        work_y_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_2_d1_local = bitcast_ln404_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_2_d1_local = bitcast_ln402_reg_2778_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_2_d1_local = bitcast_ln399_fu_2120_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_2_d1_local = bitcast_ln398_reg_2766;
    end else begin
        work_y_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_2_we0_local = 1'b1;
    end else begin
        work_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_2_we1_local = 1'b1;
    end else begin
        work_y_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_address0_local = zext_ln389_reg_2980;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_address0_local = zext_ln393_reg_2968;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_y_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_3_ce0_local = 1'b1;
    end else begin
        work_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_3_ce1_local = 1'b1;
    end else begin
        work_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_d0_local = bitcast_ln405_reg_3004;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_d0_local = bitcast_ln401_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_d0_local = bitcast_ln403_reg_2920;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_d0_local = bitcast_ln400_fu_2131_p1;
    end else begin
        work_y_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_3_d1_local = bitcast_ln404_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_3_d1_local = bitcast_ln402_reg_2778_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_3_d1_local = bitcast_ln399_fu_2120_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_3_d1_local = bitcast_ln398_reg_2766;
    end else begin
        work_y_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_3_we0_local = 1'b1;
    end else begin
        work_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_3_we1_local = 1'b1;
    end else begin
        work_y_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_4_address0_local = zext_ln389_reg_2980;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_4_address0_local = zext_ln393_reg_2968;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_4_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_4_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_y_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_4_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_4_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_4_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_4_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_y_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_4_ce0_local = 1'b1;
    end else begin
        work_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_4_ce1_local = 1'b1;
    end else begin
        work_y_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_4_d0_local = bitcast_ln405_reg_3004;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_4_d0_local = bitcast_ln401_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_4_d0_local = bitcast_ln403_reg_2920;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_4_d0_local = bitcast_ln400_fu_2131_p1;
    end else begin
        work_y_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_4_d1_local = bitcast_ln404_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_4_d1_local = bitcast_ln402_reg_2778_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_4_d1_local = bitcast_ln399_fu_2120_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_4_d1_local = bitcast_ln398_reg_2766;
    end else begin
        work_y_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_4_we0_local = 1'b1;
    end else begin
        work_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_4_we1_local = 1'b1;
    end else begin
        work_y_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_5_address0_local = zext_ln389_reg_2980;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_5_address0_local = zext_ln393_reg_2968;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_5_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_5_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_y_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_5_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_5_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_5_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_5_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_y_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_5_ce0_local = 1'b1;
    end else begin
        work_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_5_ce1_local = 1'b1;
    end else begin
        work_y_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_5_d0_local = bitcast_ln405_reg_3004;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_5_d0_local = bitcast_ln401_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_5_d0_local = bitcast_ln403_reg_2920;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_5_d0_local = bitcast_ln400_fu_2131_p1;
    end else begin
        work_y_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_5_d1_local = bitcast_ln404_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_5_d1_local = bitcast_ln402_reg_2778_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_5_d1_local = bitcast_ln399_fu_2120_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_5_d1_local = bitcast_ln398_reg_2766;
    end else begin
        work_y_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_5_we0_local = 1'b1;
    end else begin
        work_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_5_we1_local = 1'b1;
    end else begin
        work_y_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_6_address0_local = zext_ln389_reg_2980;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_6_address0_local = zext_ln393_reg_2968;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_6_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_6_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_y_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_6_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_6_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_6_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_6_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_y_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_6_ce0_local = 1'b1;
    end else begin
        work_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_6_ce1_local = 1'b1;
    end else begin
        work_y_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_6_d0_local = bitcast_ln405_reg_3004;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_6_d0_local = bitcast_ln401_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_6_d0_local = bitcast_ln403_reg_2920;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_6_d0_local = bitcast_ln400_fu_2131_p1;
    end else begin
        work_y_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_6_d1_local = bitcast_ln404_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_6_d1_local = bitcast_ln402_reg_2778_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_6_d1_local = bitcast_ln399_fu_2120_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_6_d1_local = bitcast_ln398_reg_2766;
    end else begin
        work_y_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_6_we0_local = 1'b1;
    end else begin
        work_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_6_we1_local = 1'b1;
    end else begin
        work_y_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_7_address0_local = zext_ln389_reg_2980;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_7_address0_local = zext_ln393_reg_2968;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_7_address0_local = zext_ln395_fu_2188_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_7_address0_local = zext_ln392_fu_2069_p1;
    end else begin
        work_y_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_7_address1_local = zext_ln396_fu_2211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_7_address1_local = zext_ln394_fu_2161_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_7_address1_local = zext_ln391_fu_2038_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_7_address1_local = zext_ln114_fu_1944_p1;
    end else begin
        work_y_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_7_ce0_local = 1'b1;
    end else begin
        work_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_7_ce1_local = 1'b1;
    end else begin
        work_y_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_7_d0_local = bitcast_ln405_reg_3004;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_7_d0_local = bitcast_ln401_reg_2992;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_7_d0_local = bitcast_ln403_reg_2920;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_7_d0_local = bitcast_ln400_fu_2131_p1;
    end else begin
        work_y_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_7_d1_local = bitcast_ln404_reg_2932;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_7_d1_local = bitcast_ln402_reg_2778_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_7_d1_local = bitcast_ln399_fu_2120_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_7_d1_local = bitcast_ln398_reg_2766;
    end else begin
        work_y_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter15_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_7_we0_local = 1'b1;
    end else begin
        work_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter7_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter10_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_2302_pp0_iter11_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        work_y_7_we1_local = 1'b1;
    end else begin
        work_y_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to15 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign DATA_x_1_address0 = zext_ln365_fu_1610_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_2_address0 = zext_ln365_fu_1610_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_3_address0 = zext_ln365_fu_1610_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln365_fu_1610_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln365_fu_1610_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln365_fu_1610_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln365_fu_1610_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_address0 = zext_ln365_fu_1610_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_1_address0 = zext_ln365_fu_1610_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_2_address0 = zext_ln365_fu_1610_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_3_address0 = zext_ln365_fu_1610_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln365_fu_1610_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln365_fu_1610_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln365_fu_1610_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln365_fu_1610_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_address0 = zext_ln365_fu_1610_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln365_fu_1634_p2 = (tid_5_reg_2292 + 7'd1);
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
assign bit_sel80_fu_1690_p3 = bitcast_ln386_2_fu_1687_p1[64'd63];
assign bit_sel81_fu_1795_p3 = bitcast_ln386_4_fu_1792_p1[64'd63];
assign bit_sel82_fu_1829_p3 = bitcast_ln386_6_fu_1826_p1[64'd63];
assign bit_sel83_fu_1724_p3 = bitcast_ln386_8_fu_1721_p1[64'd63];
assign bit_sel84_fu_1760_p3 = bitcast_ln386_10_fu_1756_p1[64'd63];
assign bit_sel85_fu_1863_p3 = bitcast_ln386_12_fu_1860_p1[64'd63];
assign bit_sel86_fu_1897_p3 = bitcast_ln386_14_fu_1894_p1[64'd63];
assign bit_sel87_fu_1966_p3 = bitcast_ln386_16_fu_1963_p1[64'd63];
assign bit_sel88_fu_2000_p3 = bitcast_ln386_18_fu_1997_p1[64'd63];
assign bit_sel_fu_1656_p3 = bitcast_ln386_fu_1653_p1[64'd63];
assign bitcast_ln386_10_fu_1756_p1 = reg_1592;
assign bitcast_ln386_11_fu_1786_p1 = xor_ln386_5_fu_1778_p3;
assign bitcast_ln386_12_fu_1860_p1 = sub17_reg_2646_pp0_iter6_reg;
assign bitcast_ln386_13_fu_1889_p1 = xor_ln386_6_fu_1881_p3;
assign bitcast_ln386_14_fu_1894_p1 = tmp_95_reg_2628_pp0_iter6_reg;
assign bitcast_ln386_15_fu_1923_p1 = xor_ln386_7_fu_1915_p3;
assign bitcast_ln386_16_fu_1963_p1 = sub24_reg_2820_pp0_iter9_reg;
assign bitcast_ln386_17_fu_1992_p1 = xor_ln386_8_fu_1984_p3;
assign bitcast_ln386_18_fu_1997_p1 = tmp_96_reg_2796_pp0_iter10_reg;
assign bitcast_ln386_19_fu_2026_p1 = xor_ln386_9_fu_2018_p3;
assign bitcast_ln386_1_fu_1682_p1 = xor_ln4_fu_1674_p3;
assign bitcast_ln386_2_fu_1687_p1 = tmp_1_reg_2499;
assign bitcast_ln386_3_fu_1716_p1 = xor_ln386_1_fu_1708_p3;
assign bitcast_ln386_4_fu_1792_p1 = sub12_reg_2517_pp0_iter4_reg;
assign bitcast_ln386_5_fu_1821_p1 = xor_ln386_2_fu_1813_p3;
assign bitcast_ln386_6_fu_1826_p1 = tmp_1_23_reg_2511_pp0_iter4_reg;
assign bitcast_ln386_7_fu_1855_p1 = xor_ln386_3_fu_1847_p3;
assign bitcast_ln386_8_fu_1721_p1 = tmp_1_24_reg_2535;
assign bitcast_ln386_9_fu_1750_p1 = xor_ln386_4_fu_1742_p3;
assign bitcast_ln386_fu_1653_p1 = sub_reg_2505;
assign bitcast_ln389_fu_1932_p1 = grp_fu_6936_p_dout0;
assign bitcast_ln390_fu_2089_p1 = add25_reg_2870;
assign bitcast_ln391_fu_2100_p1 = reg_1592;
assign bitcast_ln392_fu_2250_p1 = reg_1592;
assign bitcast_ln393_fu_1928_p1 = grp_fu_6952_p_dout0;
assign bitcast_ln394_fu_2112_p1 = grp_fu_6964_p_dout0;
assign bitcast_ln395_fu_2116_p1 = grp_fu_6956_p_dout0;
assign bitcast_ln396_fu_2231_p1 = grp_fu_6976_p_dout0;
assign bitcast_ln398_fu_1936_p1 = grp_fu_6940_p_dout0;
assign bitcast_ln399_fu_2120_p1 = add26_reg_2875;
assign bitcast_ln400_fu_2131_p1 = add22_reg_2865;
assign bitcast_ln401_fu_2277_p1 = grp_fu_6980_p_dout0;
assign bitcast_ln402_fu_1940_p1 = grp_fu_6944_p_dout0;
assign bitcast_ln403_fu_2142_p1 = grp_fu_6968_p_dout0;
assign bitcast_ln404_fu_2146_p1 = grp_fu_6960_p_dout0;
assign bitcast_ln405_fu_2281_p1 = grp_fu_6984_p_dout0;
assign grp_fu_6936_p_ce = 1'b1;
assign grp_fu_6936_p_din0 = grp_fu_1514_p0;
assign grp_fu_6936_p_din1 = grp_fu_1514_p1;
assign grp_fu_6936_p_opcode = 2'd0;
assign grp_fu_6940_p_ce = 1'b1;
assign grp_fu_6940_p_din0 = grp_fu_1518_p0;
assign grp_fu_6940_p_din1 = grp_fu_1518_p1;
assign grp_fu_6940_p_opcode = 2'd0;
assign grp_fu_6944_p_ce = 1'b1;
assign grp_fu_6944_p_din0 = grp_fu_1522_p0;
assign grp_fu_6944_p_din1 = grp_fu_1522_p1;
assign grp_fu_6944_p_opcode = grp_fu_1522_opcode;
assign grp_fu_6948_p_ce = 1'b1;
assign grp_fu_6948_p_din0 = grp_fu_1526_p0;
assign grp_fu_6948_p_din1 = grp_fu_1526_p1;
assign grp_fu_6948_p_opcode = grp_fu_1526_opcode;
assign grp_fu_6952_p_ce = 1'b1;
assign grp_fu_6952_p_din0 = grp_fu_1530_p0;
assign grp_fu_6952_p_din1 = grp_fu_1530_p1;
assign grp_fu_6952_p_opcode = grp_fu_1530_opcode;
assign grp_fu_6956_p_ce = 1'b1;
assign grp_fu_6956_p_din0 = grp_fu_1534_p0;
assign grp_fu_6956_p_din1 = grp_fu_1534_p1;
assign grp_fu_6956_p_opcode = grp_fu_1534_opcode;
assign grp_fu_6960_p_ce = 1'b1;
assign grp_fu_6960_p_din0 = grp_fu_1538_p0;
assign grp_fu_6960_p_din1 = grp_fu_1538_p1;
assign grp_fu_6960_p_opcode = grp_fu_1538_opcode;
assign grp_fu_6964_p_ce = 1'b1;
assign grp_fu_6964_p_din0 = grp_fu_1542_p0;
assign grp_fu_6964_p_din1 = grp_fu_1542_p1;
assign grp_fu_6964_p_opcode = grp_fu_1542_opcode;
assign grp_fu_6968_p_ce = 1'b1;
assign grp_fu_6968_p_din0 = grp_fu_1546_p0;
assign grp_fu_6968_p_din1 = grp_fu_1546_p1;
assign grp_fu_6968_p_opcode = grp_fu_1546_opcode;
assign grp_fu_6972_p_ce = 1'b1;
assign grp_fu_6972_p_din0 = grp_fu_1550_p0;
assign grp_fu_6972_p_din1 = grp_fu_1550_p1;
assign grp_fu_6972_p_opcode = grp_fu_1550_opcode;
assign grp_fu_6976_p_ce = 1'b1;
assign grp_fu_6976_p_din0 = grp_fu_1554_p0;
assign grp_fu_6976_p_din1 = grp_fu_1554_p1;
assign grp_fu_6976_p_opcode = grp_fu_1554_opcode;
assign grp_fu_6980_p_ce = 1'b1;
assign grp_fu_6980_p_din0 = grp_fu_1558_p0;
assign grp_fu_6980_p_din1 = grp_fu_1558_p1;
assign grp_fu_6980_p_opcode = grp_fu_1558_opcode;
assign grp_fu_6984_p_ce = 1'b1;
assign grp_fu_6984_p_din0 = grp_fu_1562_p0;
assign grp_fu_6984_p_din1 = grp_fu_1562_p1;
assign grp_fu_6984_p_opcode = grp_fu_1562_opcode;
assign grp_fu_6988_p_ce = 1'b1;
assign grp_fu_6988_p_din0 = grp_fu_1566_p0;
assign grp_fu_6988_p_din1 = grp_fu_1566_p1;
assign grp_fu_6988_p_opcode = grp_fu_1566_opcode;
assign grp_fu_6992_p_ce = 1'b1;
assign grp_fu_6992_p_din0 = grp_fu_1570_p0;
assign grp_fu_6992_p_din1 = grp_fu_1570_p1;
assign grp_fu_6992_p_opcode = 2'd1;
assign grp_fu_7168_p_ce = 1'b1;
assign grp_fu_7168_p_din0 = grp_fu_1574_p0;
assign grp_fu_7168_p_din1 = grp_fu_1574_p1;
assign grp_fu_7172_p_ce = 1'b1;
assign grp_fu_7172_p_din0 = grp_fu_1579_p0;
assign grp_fu_7172_p_din1 = grp_fu_1579_p1;
assign grp_fu_7176_p_ce = 1'b1;
assign grp_fu_7176_p_din0 = grp_fu_1586_p0;
assign grp_fu_7176_p_din1 = grp_fu_1586_p1;
assign icmp_ln365_fu_1604_p2 = ((ap_sig_allocacmp_tid_5 == 7'd64) ? 1'b1 : 1'b0);
assign sext_ln389_fu_2262_p1 = zext_ln391_cast_reg_2885_pp0_iter14_reg;
assign sext_ln393_fu_2235_p1 = zext_ln391_cast_reg_2885_pp0_iter14_reg;
assign sext_ln396_fu_2208_p1 = zext_ln392_cast_reg_2891;
assign trunc_ln365_fu_1630_p1 = ap_sig_allocacmp_tid_5[2:0];
assign trunc_ln386_1_fu_1704_p1 = bitcast_ln386_2_fu_1687_p1[62:0];
assign trunc_ln386_2_fu_1809_p1 = bitcast_ln386_4_fu_1792_p1[62:0];
assign trunc_ln386_3_fu_1843_p1 = bitcast_ln386_6_fu_1826_p1[62:0];
assign trunc_ln386_4_fu_1738_p1 = bitcast_ln386_8_fu_1721_p1[62:0];
assign trunc_ln386_5_fu_1774_p1 = bitcast_ln386_10_fu_1756_p1[62:0];
assign trunc_ln386_6_fu_1877_p1 = bitcast_ln386_12_fu_1860_p1[62:0];
assign trunc_ln386_7_fu_1911_p1 = bitcast_ln386_14_fu_1894_p1[62:0];
assign trunc_ln386_8_fu_1980_p1 = bitcast_ln386_16_fu_1963_p1[62:0];
assign trunc_ln386_9_fu_2014_p1 = bitcast_ln386_18_fu_1997_p1[62:0];
assign trunc_ln386_fu_1670_p1 = bitcast_ln386_fu_1653_p1[62:0];
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
assign work_x_4_address0 = work_x_4_address0_local;
assign work_x_4_address1 = work_x_4_address1_local;
assign work_x_4_ce0 = work_x_4_ce0_local;
assign work_x_4_ce1 = work_x_4_ce1_local;
assign work_x_4_d0 = work_x_4_d0_local;
assign work_x_4_d1 = work_x_4_d1_local;
assign work_x_4_we0 = work_x_4_we0_local;
assign work_x_4_we1 = work_x_4_we1_local;
assign work_x_5_address0 = work_x_5_address0_local;
assign work_x_5_address1 = work_x_5_address1_local;
assign work_x_5_ce0 = work_x_5_ce0_local;
assign work_x_5_ce1 = work_x_5_ce1_local;
assign work_x_5_d0 = work_x_5_d0_local;
assign work_x_5_d1 = work_x_5_d1_local;
assign work_x_5_we0 = work_x_5_we0_local;
assign work_x_5_we1 = work_x_5_we1_local;
assign work_x_6_address0 = work_x_6_address0_local;
assign work_x_6_address1 = work_x_6_address1_local;
assign work_x_6_ce0 = work_x_6_ce0_local;
assign work_x_6_ce1 = work_x_6_ce1_local;
assign work_x_6_d0 = work_x_6_d0_local;
assign work_x_6_d1 = work_x_6_d1_local;
assign work_x_6_we0 = work_x_6_we0_local;
assign work_x_6_we1 = work_x_6_we1_local;
assign work_x_7_address0 = work_x_7_address0_local;
assign work_x_7_address1 = work_x_7_address1_local;
assign work_x_7_ce0 = work_x_7_ce0_local;
assign work_x_7_ce1 = work_x_7_ce1_local;
assign work_x_7_d0 = work_x_7_d0_local;
assign work_x_7_d1 = work_x_7_d1_local;
assign work_x_7_we0 = work_x_7_we0_local;
assign work_x_7_we1 = work_x_7_we1_local;
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
assign work_y_4_address0 = work_y_4_address0_local;
assign work_y_4_address1 = work_y_4_address1_local;
assign work_y_4_ce0 = work_y_4_ce0_local;
assign work_y_4_ce1 = work_y_4_ce1_local;
assign work_y_4_d0 = work_y_4_d0_local;
assign work_y_4_d1 = work_y_4_d1_local;
assign work_y_4_we0 = work_y_4_we0_local;
assign work_y_4_we1 = work_y_4_we1_local;
assign work_y_5_address0 = work_y_5_address0_local;
assign work_y_5_address1 = work_y_5_address1_local;
assign work_y_5_ce0 = work_y_5_ce0_local;
assign work_y_5_ce1 = work_y_5_ce1_local;
assign work_y_5_d0 = work_y_5_d0_local;
assign work_y_5_d1 = work_y_5_d1_local;
assign work_y_5_we0 = work_y_5_we0_local;
assign work_y_5_we1 = work_y_5_we1_local;
assign work_y_6_address0 = work_y_6_address0_local;
assign work_y_6_address1 = work_y_6_address1_local;
assign work_y_6_ce0 = work_y_6_ce0_local;
assign work_y_6_ce1 = work_y_6_ce1_local;
assign work_y_6_d0 = work_y_6_d0_local;
assign work_y_6_d1 = work_y_6_d1_local;
assign work_y_6_we0 = work_y_6_we0_local;
assign work_y_6_we1 = work_y_6_we1_local;
assign work_y_7_address0 = work_y_7_address0_local;
assign work_y_7_address1 = work_y_7_address1_local;
assign work_y_7_ce0 = work_y_7_ce0_local;
assign work_y_7_ce1 = work_y_7_ce1_local;
assign work_y_7_d0 = work_y_7_d0_local;
assign work_y_7_d1 = work_y_7_d1_local;
assign work_y_7_we0 = work_y_7_we0_local;
assign work_y_7_we1 = work_y_7_we1_local;
assign xor_ln386_10_fu_1664_p2 = (bit_sel_fu_1656_p3 ^ 1'd1);
assign xor_ln386_11_fu_1803_p2 = (bit_sel81_fu_1795_p3 ^ 1'd1);
assign xor_ln386_12_fu_1837_p2 = (bit_sel82_fu_1829_p3 ^ 1'd1);
assign xor_ln386_13_fu_1732_p2 = (bit_sel83_fu_1724_p3 ^ 1'd1);
assign xor_ln386_14_fu_1768_p2 = (bit_sel84_fu_1760_p3 ^ 1'd1);
assign xor_ln386_15_fu_1871_p2 = (bit_sel85_fu_1863_p3 ^ 1'd1);
assign xor_ln386_16_fu_1905_p2 = (bit_sel86_fu_1897_p3 ^ 1'd1);
assign xor_ln386_17_fu_1974_p2 = (bit_sel87_fu_1966_p3 ^ 1'd1);
assign xor_ln386_18_fu_2008_p2 = (bit_sel88_fu_2000_p3 ^ 1'd1);
assign xor_ln386_1_fu_1708_p3 = {{xor_ln386_fu_1698_p2}, {trunc_ln386_1_fu_1704_p1}};
assign xor_ln386_2_fu_1813_p3 = {{xor_ln386_11_fu_1803_p2}, {trunc_ln386_2_fu_1809_p1}};
assign xor_ln386_3_fu_1847_p3 = {{xor_ln386_12_fu_1837_p2}, {trunc_ln386_3_fu_1843_p1}};
assign xor_ln386_4_fu_1742_p3 = {{xor_ln386_13_fu_1732_p2}, {trunc_ln386_4_fu_1738_p1}};
assign xor_ln386_5_fu_1778_p3 = {{xor_ln386_14_fu_1768_p2}, {trunc_ln386_5_fu_1774_p1}};
assign xor_ln386_6_fu_1881_p3 = {{xor_ln386_15_fu_1871_p2}, {trunc_ln386_6_fu_1877_p1}};
assign xor_ln386_7_fu_1915_p3 = {{xor_ln386_16_fu_1905_p2}, {trunc_ln386_7_fu_1911_p1}};
assign xor_ln386_8_fu_1984_p3 = {{xor_ln386_17_fu_1974_p2}, {trunc_ln386_8_fu_1980_p1}};
assign xor_ln386_9_fu_2018_p3 = {{xor_ln386_18_fu_2008_p2}, {trunc_ln386_9_fu_2014_p1}};
assign xor_ln386_fu_1698_p2 = (bit_sel80_fu_1690_p3 ^ 1'd1);
assign xor_ln4_fu_1674_p3 = {{xor_ln386_10_fu_1664_p2}, {trunc_ln386_fu_1670_p1}};
assign zext_ln114_fu_1944_p1 = lshr_ln114_1_reg_2386_pp0_iter7_reg;
assign zext_ln365_fu_1610_p1 = ap_sig_allocacmp_tid_5;
assign zext_ln389_fu_2265_p1 = $unsigned(sext_ln389_fu_2262_p1);
assign zext_ln391_1_fu_2058_p1 = lshr_ln114_1_reg_2386_pp0_iter10_reg;
assign zext_ln391_cast_fu_2031_p3 = {{1'd1}, {lshr_ln114_1_reg_2386_pp0_iter10_reg}};
assign zext_ln391_fu_2038_p1 = $unsigned(zext_ln391_cast_fu_2031_p3);
assign zext_ln392_cast_fu_2061_p3 = {{1'd1}, {zext_ln391_1_fu_2058_p1}};
assign zext_ln392_fu_2069_p1 = $unsigned(zext_ln392_cast_fu_2061_p3);
assign zext_ln393_1_fu_2150_p1 = lshr_ln114_1_reg_2386_pp0_iter10_reg;
assign zext_ln393_fu_2238_p1 = $unsigned(sext_ln393_fu_2235_p1);
assign zext_ln394_cast_fu_2153_p3 = {{1'd1}, {zext_ln393_1_fu_2150_p1}};
assign zext_ln394_fu_2161_p1 = zext_ln394_cast_fu_2153_p3;
assign zext_ln395_cast_fu_2181_p3 = {{3'd5}, {lshr_ln114_1_reg_2386_pp0_iter11_reg}};
assign zext_ln395_fu_2188_p1 = zext_ln395_cast_fu_2181_p3;
assign zext_ln396_fu_2211_p1 = $unsigned(sext_ln396_fu_2208_p1);
always @ (posedge ap_clk) begin
    zext_ln391_cast_reg_2885[3] <= 1'b1;
    zext_ln391_cast_reg_2885_pp0_iter12_reg[3] <= 1'b1;
    zext_ln391_cast_reg_2885_pp0_iter13_reg[3] <= 1'b1;
    zext_ln391_cast_reg_2885_pp0_iter14_reg[3] <= 1'b1;
    zext_ln392_cast_reg_2891[4:3] <= 2'b10;
    zext_ln393_reg_2968[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000011;
    zext_ln389_reg_2980[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000111;
end
endmodule 