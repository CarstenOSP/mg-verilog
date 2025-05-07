module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_4_address1,DATA_y_4_ce1,DATA_y_4_q1,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_5_address1,DATA_y_5_ce1,DATA_y_5_q1,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_6_address1,DATA_y_6_ce1,DATA_y_6_q1,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_7_address1,DATA_y_7_ce1,DATA_y_7_q1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_16_address0,DATA_x_16_ce0,DATA_x_16_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_17_address0,DATA_x_17_ce0,DATA_x_17_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_18_address0,DATA_x_18_ce0,DATA_x_18_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_19_address0,DATA_x_19_ce0,DATA_x_19_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_20_address0,DATA_x_20_ce0,DATA_x_20_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_21_address0,DATA_x_21_ce0,DATA_x_21_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_22_address0,DATA_x_22_ce0,DATA_x_22_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_23_address0,DATA_x_23_ce0,DATA_x_23_q0,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_24_address0,DATA_x_24_ce0,DATA_x_24_q0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_25_address0,DATA_x_25_ce0,DATA_x_25_q0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_26_address0,DATA_x_26_ce0,DATA_x_26_q0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_27_address0,DATA_x_27_ce0,DATA_x_27_q0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_28_address0,DATA_x_28_ce0,DATA_x_28_q0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_29_address0,DATA_x_29_ce0,DATA_x_29_q0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_30_address0,DATA_x_30_ce0,DATA_x_30_q0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,DATA_x_31_address0,DATA_x_31_ce0,DATA_x_31_q0,grp_fu_2121_p_din0,grp_fu_2121_p_din1,grp_fu_2121_p_opcode,grp_fu_2121_p_dout0,grp_fu_2121_p_ce,grp_fu_2125_p_din0,grp_fu_2125_p_din1,grp_fu_2125_p_opcode,grp_fu_2125_p_dout0,grp_fu_2125_p_ce,grp_fu_2129_p_din0,grp_fu_2129_p_din1,grp_fu_2129_p_opcode,grp_fu_2129_p_dout0,grp_fu_2129_p_ce,grp_fu_2133_p_din0,grp_fu_2133_p_din1,grp_fu_2133_p_opcode,grp_fu_2133_p_dout0,grp_fu_2133_p_ce,grp_fu_2137_p_din0,grp_fu_2137_p_din1,grp_fu_2137_p_opcode,grp_fu_2137_p_dout0,grp_fu_2137_p_ce,grp_fu_2141_p_din0,grp_fu_2141_p_din1,grp_fu_2141_p_opcode,grp_fu_2141_p_dout0,grp_fu_2141_p_ce,grp_fu_2145_p_din0,grp_fu_2145_p_din1,grp_fu_2145_p_opcode,grp_fu_2145_p_dout0,grp_fu_2145_p_ce,grp_fu_2149_p_din0,grp_fu_2149_p_din1,grp_fu_2149_p_opcode,grp_fu_2149_p_dout0,grp_fu_2149_p_ce,grp_fu_2153_p_din0,grp_fu_2153_p_din1,grp_fu_2153_p_opcode,grp_fu_2153_p_dout0,grp_fu_2153_p_ce,grp_fu_2157_p_din0,grp_fu_2157_p_din1,grp_fu_2157_p_opcode,grp_fu_2157_p_dout0,grp_fu_2157_p_ce,grp_fu_2161_p_din0,grp_fu_2161_p_din1,grp_fu_2161_p_dout0,grp_fu_2161_p_ce,grp_fu_2166_p_din0,grp_fu_2166_p_din1,grp_fu_2166_p_dout0,grp_fu_2166_p_ce,grp_fu_2171_p_din0,grp_fu_2171_p_din1,grp_fu_2171_p_dout0,grp_fu_2171_p_ce,grp_fu_2176_p_din0,grp_fu_2176_p_din1,grp_fu_2176_p_dout0,grp_fu_2176_p_ce); 
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
output  [63:0] grp_fu_2121_p_din0;
output  [63:0] grp_fu_2121_p_din1;
output  [1:0] grp_fu_2121_p_opcode;
input  [63:0] grp_fu_2121_p_dout0;
output   grp_fu_2121_p_ce;
output  [63:0] grp_fu_2125_p_din0;
output  [63:0] grp_fu_2125_p_din1;
output  [1:0] grp_fu_2125_p_opcode;
input  [63:0] grp_fu_2125_p_dout0;
output   grp_fu_2125_p_ce;
output  [63:0] grp_fu_2129_p_din0;
output  [63:0] grp_fu_2129_p_din1;
output  [1:0] grp_fu_2129_p_opcode;
input  [63:0] grp_fu_2129_p_dout0;
output   grp_fu_2129_p_ce;
output  [63:0] grp_fu_2133_p_din0;
output  [63:0] grp_fu_2133_p_din1;
output  [1:0] grp_fu_2133_p_opcode;
input  [63:0] grp_fu_2133_p_dout0;
output   grp_fu_2133_p_ce;
output  [63:0] grp_fu_2137_p_din0;
output  [63:0] grp_fu_2137_p_din1;
output  [1:0] grp_fu_2137_p_opcode;
input  [63:0] grp_fu_2137_p_dout0;
output   grp_fu_2137_p_ce;
output  [63:0] grp_fu_2141_p_din0;
output  [63:0] grp_fu_2141_p_din1;
output  [1:0] grp_fu_2141_p_opcode;
input  [63:0] grp_fu_2141_p_dout0;
output   grp_fu_2141_p_ce;
output  [63:0] grp_fu_2145_p_din0;
output  [63:0] grp_fu_2145_p_din1;
output  [1:0] grp_fu_2145_p_opcode;
input  [63:0] grp_fu_2145_p_dout0;
output   grp_fu_2145_p_ce;
output  [63:0] grp_fu_2149_p_din0;
output  [63:0] grp_fu_2149_p_din1;
output  [1:0] grp_fu_2149_p_opcode;
input  [63:0] grp_fu_2149_p_dout0;
output   grp_fu_2149_p_ce;
output  [63:0] grp_fu_2153_p_din0;
output  [63:0] grp_fu_2153_p_din1;
output  [1:0] grp_fu_2153_p_opcode;
input  [63:0] grp_fu_2153_p_dout0;
output   grp_fu_2153_p_ce;
output  [63:0] grp_fu_2157_p_din0;
output  [63:0] grp_fu_2157_p_din1;
output  [1:0] grp_fu_2157_p_opcode;
input  [63:0] grp_fu_2157_p_dout0;
output   grp_fu_2157_p_ce;
output  [63:0] grp_fu_2161_p_din0;
output  [63:0] grp_fu_2161_p_din1;
input  [63:0] grp_fu_2161_p_dout0;
output   grp_fu_2161_p_ce;
output  [63:0] grp_fu_2166_p_din0;
output  [63:0] grp_fu_2166_p_din1;
input  [63:0] grp_fu_2166_p_dout0;
output   grp_fu_2166_p_ce;
output  [63:0] grp_fu_2171_p_din0;
output  [63:0] grp_fu_2171_p_din1;
input  [63:0] grp_fu_2171_p_dout0;
output   grp_fu_2171_p_ce;
output  [63:0] grp_fu_2176_p_din0;
output  [63:0] grp_fu_2176_p_din1;
input  [63:0] grp_fu_2176_p_dout0;
output   grp_fu_2176_p_ce;
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
reg   [0:0] tmp_reg_2467;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1152;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1158;
wire   [63:0] grp_fu_1120_p2;
reg   [63:0] reg_1164;
wire    ap_block_pp0_stage10_11001;
wire   [63:0] grp_fu_1124_p2;
reg   [63:0] reg_1169;
reg   [63:0] reg_1174;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_1180;
reg   [6:0] tid_5_reg_2455;
reg   [6:0] tid_5_reg_2455_pp0_iter1_reg;
reg   [6:0] tid_5_reg_2455_pp0_iter2_reg;
reg   [6:0] tid_5_reg_2455_pp0_iter3_reg;
reg   [6:0] tid_5_reg_2455_pp0_iter4_reg;
reg   [6:0] tid_5_reg_2455_pp0_iter5_reg;
wire   [63:0] zext_ln365_fu_1202_p1;
reg   [63:0] zext_ln365_reg_2471;
reg   [63:0] zext_ln365_reg_2471_pp0_iter1_reg;
reg   [63:0] zext_ln365_reg_2471_pp0_iter2_reg;
reg   [63:0] zext_ln365_reg_2471_pp0_iter3_reg;
reg   [63:0] zext_ln365_reg_2471_pp0_iter4_reg;
wire   [63:0] zext_ln367_1_fu_1278_p1;
reg   [63:0] zext_ln367_1_reg_2597;
reg   [63:0] zext_ln367_1_reg_2597_pp0_iter1_reg;
reg   [63:0] zext_ln367_1_reg_2597_pp0_iter2_reg;
reg   [63:0] zext_ln367_1_reg_2597_pp0_iter3_reg;
reg   [63:0] zext_ln367_1_reg_2597_pp0_iter4_reg;
reg   [63:0] zext_ln367_1_reg_2597_pp0_iter5_reg;
reg   [63:0] c0_y_reg_2723;
reg   [63:0] c0_y_2_reg_2729;
reg   [63:0] c0_y_4_reg_2735;
reg   [63:0] c0_y_5_reg_2740;
reg   [63:0] DATA_y_4_load_reg_2746;
reg   [63:0] DATA_y_5_load_reg_2752;
reg   [63:0] DATA_y_6_load_reg_2758;
reg   [63:0] DATA_y_7_load_reg_2763;
wire   [63:0] c0_x_fu_1299_p3;
reg   [63:0] c0_x_reg_2769;
wire   [63:0] c0_x_2_fu_1307_p3;
reg   [63:0] c0_x_2_reg_2775;
wire   [63:0] c0_x_4_fu_1315_p3;
reg   [63:0] c0_x_4_reg_2781;
wire   [63:0] c0_x_5_fu_1323_p3;
reg   [63:0] c0_x_5_reg_2786;
wire   [63:0] select_ln380_fu_1331_p3;
reg   [63:0] select_ln380_reg_2792;
wire   [63:0] select_ln381_fu_1339_p3;
reg   [63:0] select_ln381_reg_2798;
wire   [63:0] select_ln382_fu_1347_p3;
reg   [63:0] select_ln382_reg_2804;
wire   [63:0] select_ln383_fu_1355_p3;
reg   [63:0] select_ln383_reg_2809;
reg   [63:0] c0_y_12_reg_2815;
reg   [63:0] c0_y_14_reg_2821;
reg   [63:0] c0_y_16_reg_2827;
reg   [63:0] c0_y_17_reg_2833;
reg   [63:0] DATA_y_4_load_2_reg_2839;
reg   [63:0] DATA_y_5_load_2_reg_2845;
reg   [63:0] DATA_y_6_load_2_reg_2851;
reg   [63:0] DATA_y_7_load_2_reg_2857;
wire   [63:0] c0_x_12_fu_1363_p3;
reg   [63:0] c0_x_12_reg_2863;
wire   [63:0] c0_x_14_fu_1371_p3;
reg   [63:0] c0_x_14_reg_2869;
wire   [63:0] c0_x_16_fu_1379_p3;
reg   [63:0] c0_x_16_reg_2875;
wire   [63:0] c0_x_17_fu_1387_p3;
reg   [63:0] c0_x_17_reg_2881;
wire   [63:0] select_ln380_1_fu_1395_p3;
reg   [63:0] select_ln380_1_reg_2887;
wire   [63:0] select_ln381_1_fu_1403_p3;
reg   [63:0] select_ln381_1_reg_2893;
wire   [63:0] select_ln382_1_fu_1411_p3;
reg   [63:0] select_ln382_1_reg_2899;
wire   [63:0] select_ln383_1_fu_1419_p3;
reg   [63:0] select_ln383_1_reg_2905;
reg   [63:0] c0_x_3_reg_2911;
reg   [63:0] c0_y_3_reg_2917;
reg   [63:0] tmp_1_reg_2923;
reg   [63:0] sub_reg_2929;
reg   [63:0] tmp_1_1_reg_2935;
reg   [63:0] sub1_reg_2941;
reg   [63:0] add2_reg_2947;
reg   [63:0] add3_reg_2953;
wire   [63:0] grp_fu_1096_p2;
reg   [63:0] c0_x_15_reg_2959;
wire   [63:0] grp_fu_1100_p2;
reg   [63:0] c0_y_15_reg_2965;
wire   [63:0] grp_fu_1104_p2;
reg   [63:0] tmp_1_4_reg_2971;
wire   [63:0] grp_fu_1108_p2;
reg   [63:0] sub1591_1_reg_2977;
wire   [63:0] grp_fu_1112_p2;
reg   [63:0] tmp_1_5_reg_2983;
wire   [63:0] grp_fu_1116_p2;
reg   [63:0] sub1607_1_reg_2989;
reg   [63:0] c0_x_7_reg_2995;
reg   [63:0] c0_y_7_reg_3001;
reg   [63:0] c0_x_1_reg_3007;
reg   [63:0] c0_x_1_reg_3007_pp0_iter1_reg;
reg   [63:0] c0_y_1_reg_3013;
reg   [63:0] c0_y_1_reg_3013_pp0_iter1_reg;
reg   [63:0] add_reg_3019;
reg   [63:0] add1_reg_3025;
wire   [63:0] bitcast_ln386_1_fu_1456_p1;
wire   [63:0] bitcast_ln386_3_fu_1490_p1;
wire   [63:0] bitcast_ln386_9_fu_1525_p1;
wire   [63:0] bitcast_ln386_11_fu_1561_p1;
reg   [63:0] c0_x_19_reg_3053;
reg   [63:0] c0_y_19_reg_3059;
reg   [63:0] c0_x_13_reg_3065;
reg   [63:0] c0_x_13_reg_3065_pp0_iter1_reg;
reg   [63:0] c0_y_13_reg_3071;
reg   [63:0] c0_y_13_reg_3071_pp0_iter1_reg;
reg   [63:0] add1598_1_reg_3077;
reg   [63:0] add1601_1_reg_3083;
reg   [63:0] add1614_1_reg_3089;
reg   [63:0] add1617_1_reg_3095;
wire   [63:0] bitcast_ln386_21_fu_1596_p1;
wire   [63:0] bitcast_ln386_23_fu_1630_p1;
wire   [63:0] bitcast_ln386_29_fu_1665_p1;
wire   [63:0] bitcast_ln386_31_fu_1701_p1;
reg   [63:0] mul_reg_3123;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] mul1_reg_3128;
reg   [63:0] mul1641_1_reg_3133;
reg   [63:0] mul1648_1_reg_3138;
reg   [63:0] sub3_reg_3143;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] add4_reg_3148;
wire   [63:0] bitcast_ln386_5_fu_1746_p1;
wire   [63:0] bitcast_ln386_7_fu_1780_p1;
reg   [63:0] sub5_reg_3163;
reg   [63:0] add6_reg_3168;
reg   [63:0] add7_reg_3173;
reg   [63:0] add8_reg_3179;
reg   [63:0] tmp_6_reg_3185;
reg   [63:0] sub6_reg_3191;
reg   [63:0] sub1630_1_reg_3197;
reg   [63:0] add1636_1_reg_3202;
wire   [63:0] bitcast_ln386_25_fu_1814_p1;
wire   [63:0] bitcast_ln386_27_fu_1848_p1;
reg   [63:0] sub1656_1_reg_3217;
reg   [63:0] add1662_1_reg_3222;
reg   [63:0] c0_x_9_reg_3227;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] c0_y_9_reg_3233;
reg   [63:0] c0_x_8_reg_3239;
reg   [63:0] c0_x_8_reg_3239_pp0_iter2_reg;
reg   [63:0] c0_y_8_reg_3245;
reg   [63:0] c0_y_8_reg_3245_pp0_iter2_reg;
reg   [63:0] c0_x_21_reg_3251;
reg   [63:0] c0_y_21_reg_3257;
reg   [63:0] c0_x_20_reg_3263;
reg   [63:0] c0_x_20_reg_3263_pp0_iter2_reg;
reg   [63:0] c0_y_20_reg_3269;
reg   [63:0] c0_y_20_reg_3269_pp0_iter2_reg;
reg   [63:0] add1689_1_reg_3275;
reg   [63:0] add1692_1_reg_3281;
reg   [63:0] tmp_8_reg_3287;
reg   [63:0] sub1698_1_reg_3293;
reg   [63:0] c0_x_6_reg_3299;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_6_reg_3305;
reg   [63:0] sub4_reg_3311;
reg   [63:0] add5_reg_3317;
reg   [63:0] mul2_reg_3323;
reg   [63:0] mul3_reg_3329;
reg   [63:0] sub1644_1_reg_3335;
reg   [63:0] add1649_1_reg_3341;
reg   [63:0] c0_x_18_reg_3347;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] c0_y_18_reg_3353;
reg   [63:0] mul1657_1_reg_3359;
reg   [63:0] mul1663_1_reg_3365;
reg   [63:0] mul4_reg_3371;
reg   [63:0] mul5_reg_3376;
reg   [63:0] add9_reg_3381;
reg   [63:0] add9_reg_3381_pp0_iter3_reg;
reg   [63:0] add9_reg_3381_pp0_iter4_reg;
reg   [63:0] add10_reg_3386;
reg   [63:0] add10_reg_3386_pp0_iter3_reg;
reg   [63:0] add10_reg_3386_pp0_iter4_reg;
reg   [63:0] sub9_reg_3391;
reg   [63:0] sub9_reg_3391_pp0_iter3_reg;
reg   [63:0] sub9_reg_3391_pp0_iter4_reg;
reg   [63:0] sub10_reg_3396;
reg   [63:0] sub10_reg_3396_pp0_iter3_reg;
reg   [63:0] sub10_reg_3396_pp0_iter4_reg;
reg   [63:0] mul1702_1_reg_3401;
reg   [63:0] mul1709_1_reg_3406;
reg   [63:0] add1717_1_reg_3411;
reg   [63:0] add1717_1_reg_3411_pp0_iter3_reg;
reg   [63:0] add1717_1_reg_3411_pp0_iter4_reg;
reg   [63:0] add1720_1_reg_3416;
reg   [63:0] add1720_1_reg_3416_pp0_iter3_reg;
reg   [63:0] add1720_1_reg_3416_pp0_iter4_reg;
reg   [63:0] sub1723_1_reg_3421;
reg   [63:0] sub1723_1_reg_3421_pp0_iter3_reg;
reg   [63:0] sub1723_1_reg_3421_pp0_iter4_reg;
reg   [63:0] sub1723_1_reg_3421_pp0_iter5_reg;
reg   [63:0] sub1726_1_reg_3426;
reg   [63:0] sub1726_1_reg_3426_pp0_iter3_reg;
reg   [63:0] sub1726_1_reg_3426_pp0_iter4_reg;
reg   [63:0] sub1726_1_reg_3426_pp0_iter5_reg;
wire   [63:0] bitcast_ln386_13_fu_1882_p1;
wire   [63:0] bitcast_ln386_15_fu_1916_p1;
wire   [63:0] bitcast_ln386_33_fu_1950_p1;
wire   [63:0] bitcast_ln386_35_fu_1984_p1;
reg   [63:0] c0_x_11_reg_3451;
reg   [63:0] c0_y_11_reg_3457;
reg   [63:0] c0_x_10_reg_3463;
reg   [63:0] c0_x_10_reg_3463_pp0_iter4_reg;
reg   [63:0] c0_y_10_reg_3469;
reg   [63:0] c0_y_10_reg_3469_pp0_iter4_reg;
reg   [63:0] add13_reg_3475;
reg   [63:0] add14_reg_3481;
reg   [63:0] c0_x_23_reg_3487;
reg   [63:0] c0_y_23_reg_3493;
reg   [63:0] c0_x_22_reg_3499;
reg   [63:0] c0_x_22_reg_3499_pp0_iter4_reg;
reg   [63:0] c0_y_22_reg_3505;
reg   [63:0] c0_y_22_reg_3505_pp0_iter4_reg;
reg   [63:0] tmp_9_reg_3511;
reg   [63:0] sub1777_1_reg_3517;
reg   [63:0] sub7_reg_3523;
reg   [63:0] sub8_reg_3529;
reg   [63:0] sub1705_1_reg_3535;
reg   [63:0] sub1710_1_reg_3541;
reg   [63:0] mul6_reg_3547;
reg   [63:0] mul7_reg_3552;
wire   [63:0] bitcast_ln386_17_fu_2019_p1;
wire   [63:0] bitcast_ln386_19_fu_2054_p1;
reg   [63:0] mul1781_1_reg_3567;
reg   [63:0] mul1788_1_reg_3572;
reg   [63:0] add15_reg_3577;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] add15_reg_3577_pp0_iter4_reg;
reg   [63:0] add16_reg_3582;
reg   [63:0] add16_reg_3582_pp0_iter4_reg;
reg   [63:0] sub16_reg_3587;
reg   [63:0] sub16_reg_3587_pp0_iter4_reg;
reg   [63:0] sub17_reg_3592;
reg   [63:0] sub17_reg_3592_pp0_iter4_reg;
wire   [63:0] bitcast_ln386_37_fu_2088_p1;
wire   [63:0] bitcast_ln386_39_fu_2122_p1;
reg   [63:0] add1796_1_reg_3607;
reg   [63:0] add1796_1_reg_3607_pp0_iter4_reg;
reg   [63:0] add1799_1_reg_3612;
reg   [63:0] add1799_1_reg_3612_pp0_iter4_reg;
reg   [63:0] sub1802_1_reg_3617;
reg   [63:0] sub1802_1_reg_3617_pp0_iter4_reg;
reg   [63:0] sub1805_1_reg_3622;
reg   [63:0] sub1805_1_reg_3622_pp0_iter4_reg;
reg   [63:0] add11_reg_3627;
reg   [63:0] add12_reg_3632;
reg   [63:0] sub11_reg_3637;
reg   [63:0] sub11_reg_3637_pp0_iter5_reg;
reg   [63:0] sub12_reg_3642;
reg   [63:0] sub12_reg_3642_pp0_iter5_reg;
reg   [63:0] add1733_1_reg_3647;
reg   [63:0] add1733_1_reg_3647_pp0_iter5_reg;
reg   [63:0] add1736_1_reg_3652;
reg   [63:0] add1736_1_reg_3652_pp0_iter5_reg;
reg   [63:0] sub1739_1_reg_3657;
reg   [63:0] sub1739_1_reg_3657_pp0_iter5_reg;
reg   [63:0] sub1742_1_reg_3662;
reg   [63:0] sub1742_1_reg_3662_pp0_iter5_reg;
reg   [63:0] sub14_reg_3667;
reg   [63:0] sub15_reg_3673;
wire  signed [6:0] zext_ln390_cast_fu_2130_p3;
reg  signed [6:0] zext_ln390_cast_reg_3679;
reg   [63:0] add17_reg_3685;
reg   [63:0] add18_reg_3690;
wire  signed [7:0] zext_ln391_cast_fu_2156_p3;
reg  signed [7:0] zext_ln391_cast_reg_3695;
reg   [63:0] add1812_1_reg_3700;
reg   [63:0] add1815_1_reg_3705;
reg   [63:0] sub1818_1_reg_3710;
reg   [63:0] sub1821_1_reg_3715;
wire   [8:0] zext_ln365_1_fu_2260_p1;
reg   [8:0] zext_ln365_1_reg_3720;
wire   [5:0] tmp_78_fu_2310_p4;
reg   [5:0] tmp_78_reg_3726;
wire  signed [7:0] zext_ln391_1_cast_fu_2319_p4;
reg  signed [7:0] zext_ln391_1_cast_reg_3731;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln367_fu_1224_p1;
wire   [63:0] zext_ln390_fu_2138_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln391_fu_2163_p1;
wire   [63:0] zext_ln392_fu_2184_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_2197_p1;
wire   [63:0] zext_ln393_fu_2226_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln390_1_fu_2246_p1;
wire   [63:0] zext_ln394_fu_2269_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln396_fu_2282_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln391_1_fu_2329_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln392_1_fu_2348_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln393_2_fu_2375_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln394_1_fu_2394_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln395_1_fu_2411_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln396_1_fu_2434_p1;
reg   [6:0] tid_fu_162;
wire   [6:0] add_ln365_fu_1707_p2;
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
wire   [63:0] bitcast_ln390_fu_2144_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
wire   [63:0] bitcast_ln389_fu_2152_p1;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_2169_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln392_fu_2190_p1;
wire   [63:0] bitcast_ln395_fu_2203_p1;
wire   [63:0] bitcast_ln393_fu_2232_p1;
wire   [63:0] bitcast_ln390_1_fu_2252_p1;
wire   [63:0] bitcast_ln394_fu_2275_p1;
wire   [63:0] bitcast_ln396_fu_2288_p1;
wire   [63:0] bitcast_ln389_1_fu_2302_p1;
wire   [63:0] bitcast_ln391_1_fu_2335_p1;
wire   [63:0] bitcast_ln392_1_fu_2354_p1;
wire   [63:0] bitcast_ln393_1_fu_2381_p1;
wire   [63:0] bitcast_ln394_1_fu_2400_p1;
wire   [63:0] bitcast_ln395_1_fu_2417_p1;
wire   [63:0] bitcast_ln396_1_fu_2440_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_2148_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
wire   [63:0] bitcast_ln398_fu_2173_p1;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_2177_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln401_fu_2207_p1;
wire   [63:0] bitcast_ln404_fu_2211_p1;
wire   [63:0] bitcast_ln402_fu_2236_p1;
wire   [63:0] bitcast_ln399_1_fu_2256_p1;
wire   [63:0] bitcast_ln403_fu_2293_p1;
wire   [63:0] bitcast_ln405_fu_2297_p1;
wire   [63:0] bitcast_ln398_1_fu_2306_p1;
wire   [63:0] bitcast_ln400_1_fu_2339_p1;
wire   [63:0] bitcast_ln401_1_fu_2358_p1;
wire   [63:0] bitcast_ln402_1_fu_2385_p1;
wire   [63:0] bitcast_ln403_1_fu_2404_p1;
wire   [63:0] bitcast_ln404_1_fu_2421_p1;
wire   [63:0] bitcast_ln405_1_fu_2444_p1;
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
reg   [63:0] grp_fu_1133_p0;
reg   [63:0] grp_fu_1133_p1;
reg   [63:0] grp_fu_1138_p0;
reg   [63:0] grp_fu_1138_p1;
reg   [63:0] grp_fu_1143_p0;
reg   [63:0] grp_fu_1143_p1;
wire   [3:0] lshr_ln_fu_1214_p4;
wire   [4:0] tmp_s_fu_1260_p4;
wire   [5:0] or_ln_fu_1270_p3;
wire   [1:0] trunc_ln365_fu_1290_p1;
wire   [0:0] icmp_ln376_fu_1293_p2;
wire   [63:0] bitcast_ln386_fu_1427_p1;
wire   [0:0] bit_sel_fu_1430_p3;
wire   [0:0] xor_ln386_19_fu_1438_p2;
wire   [62:0] trunc_ln386_fu_1444_p1;
wire   [63:0] xor_ln3_fu_1448_p3;
wire   [63:0] bitcast_ln386_2_fu_1461_p1;
wire   [0:0] bit_sel1_fu_1464_p3;
wire   [0:0] xor_ln386_fu_1472_p2;
wire   [62:0] trunc_ln386_1_fu_1478_p1;
wire   [63:0] xor_ln386_1_fu_1482_p3;
wire   [63:0] bitcast_ln386_8_fu_1495_p1;
wire   [0:0] bit_sel4_fu_1499_p3;
wire   [0:0] xor_ln386_22_fu_1507_p2;
wire   [62:0] trunc_ln386_4_fu_1513_p1;
wire   [63:0] xor_ln386_4_fu_1517_p3;
wire   [63:0] bitcast_ln386_10_fu_1531_p1;
wire   [0:0] bit_sel5_fu_1535_p3;
wire   [0:0] xor_ln386_23_fu_1543_p2;
wire   [62:0] trunc_ln386_5_fu_1549_p1;
wire   [63:0] xor_ln386_5_fu_1553_p3;
wire   [63:0] bitcast_ln386_20_fu_1567_p1;
wire   [0:0] bit_sel10_fu_1570_p3;
wire   [0:0] xor_ln386_28_fu_1578_p2;
wire   [62:0] trunc_ln386_10_fu_1584_p1;
wire   [63:0] xor_ln386_s_fu_1588_p3;
wire   [63:0] bitcast_ln386_22_fu_1601_p1;
wire   [0:0] bit_sel11_fu_1604_p3;
wire   [0:0] xor_ln386_29_fu_1612_p2;
wire   [62:0] trunc_ln386_11_fu_1618_p1;
wire   [63:0] xor_ln386_10_fu_1622_p3;
wire   [63:0] bitcast_ln386_28_fu_1635_p1;
wire   [0:0] bit_sel14_fu_1639_p3;
wire   [0:0] xor_ln386_32_fu_1647_p2;
wire   [62:0] trunc_ln386_14_fu_1653_p1;
wire   [63:0] xor_ln386_13_fu_1657_p3;
wire   [63:0] bitcast_ln386_30_fu_1671_p1;
wire   [0:0] bit_sel15_fu_1675_p3;
wire   [0:0] xor_ln386_33_fu_1683_p2;
wire   [62:0] trunc_ln386_15_fu_1689_p1;
wire   [63:0] xor_ln386_14_fu_1693_p3;
wire   [63:0] bitcast_ln386_4_fu_1717_p1;
wire   [0:0] bit_sel2_fu_1720_p3;
wire   [0:0] xor_ln386_20_fu_1728_p2;
wire   [62:0] trunc_ln386_2_fu_1734_p1;
wire   [63:0] xor_ln386_2_fu_1738_p3;
wire   [63:0] bitcast_ln386_6_fu_1751_p1;
wire   [0:0] bit_sel3_fu_1754_p3;
wire   [0:0] xor_ln386_21_fu_1762_p2;
wire   [62:0] trunc_ln386_3_fu_1768_p1;
wire   [63:0] xor_ln386_3_fu_1772_p3;
wire   [63:0] bitcast_ln386_24_fu_1785_p1;
wire   [0:0] bit_sel12_fu_1788_p3;
wire   [0:0] xor_ln386_30_fu_1796_p2;
wire   [62:0] trunc_ln386_12_fu_1802_p1;
wire   [63:0] xor_ln386_11_fu_1806_p3;
wire   [63:0] bitcast_ln386_26_fu_1819_p1;
wire   [0:0] bit_sel13_fu_1822_p3;
wire   [0:0] xor_ln386_31_fu_1830_p2;
wire   [62:0] trunc_ln386_13_fu_1836_p1;
wire   [63:0] xor_ln386_12_fu_1840_p3;
wire   [63:0] bitcast_ln386_12_fu_1853_p1;
wire   [0:0] bit_sel6_fu_1856_p3;
wire   [0:0] xor_ln386_24_fu_1864_p2;
wire   [62:0] trunc_ln386_6_fu_1870_p1;
wire   [63:0] xor_ln386_6_fu_1874_p3;
wire   [63:0] bitcast_ln386_14_fu_1887_p1;
wire   [0:0] bit_sel7_fu_1890_p3;
wire   [0:0] xor_ln386_25_fu_1898_p2;
wire   [62:0] trunc_ln386_7_fu_1904_p1;
wire   [63:0] xor_ln386_7_fu_1908_p3;
wire   [63:0] bitcast_ln386_32_fu_1921_p1;
wire   [0:0] bit_sel16_fu_1924_p3;
wire   [0:0] xor_ln386_34_fu_1932_p2;
wire   [62:0] trunc_ln386_16_fu_1938_p1;
wire   [63:0] xor_ln386_15_fu_1942_p3;
wire   [63:0] bitcast_ln386_34_fu_1955_p1;
wire   [0:0] bit_sel17_fu_1958_p3;
wire   [0:0] xor_ln386_35_fu_1966_p2;
wire   [62:0] trunc_ln386_17_fu_1972_p1;
wire   [63:0] xor_ln386_16_fu_1976_p3;
wire   [63:0] bitcast_ln386_16_fu_1989_p1;
wire   [0:0] bit_sel8_fu_1993_p3;
wire   [0:0] xor_ln386_26_fu_2001_p2;
wire   [62:0] trunc_ln386_8_fu_2007_p1;
wire   [63:0] xor_ln386_8_fu_2011_p3;
wire   [63:0] bitcast_ln386_18_fu_2024_p1;
wire   [0:0] bit_sel9_fu_2028_p3;
wire   [0:0] xor_ln386_27_fu_2036_p2;
wire   [62:0] trunc_ln386_9_fu_2042_p1;
wire   [63:0] xor_ln386_9_fu_2046_p3;
wire   [63:0] bitcast_ln386_36_fu_2059_p1;
wire   [0:0] bit_sel18_fu_2062_p3;
wire   [0:0] xor_ln386_36_fu_2070_p2;
wire   [62:0] trunc_ln386_18_fu_2076_p1;
wire   [63:0] xor_ln386_17_fu_2080_p3;
wire   [63:0] bitcast_ln386_38_fu_2093_p1;
wire   [0:0] bit_sel19_fu_2096_p3;
wire   [0:0] xor_ln386_37_fu_2104_p2;
wire   [62:0] trunc_ln386_19_fu_2110_p1;
wire   [63:0] xor_ln386_18_fu_2114_p3;
wire   [5:0] trunc_ln390_fu_2127_p1;
wire  signed [7:0] sext_ln392_fu_2181_p1;
wire  signed [8:0] sext_ln395_fu_2194_p1;
wire   [7:0] zext_ln365_2_fu_2215_p1;
wire   [8:0] zext_ln393_cast_fu_2218_p3;
wire   [7:0] add_ln390_fu_2240_p2;
wire   [8:0] add_ln394_fu_2263_p2;
wire  signed [8:0] sext_ln396_fu_2279_p1;
wire   [8:0] add_ln392_fu_2343_p2;
wire   [6:0] zext_ln393_1_fu_2362_p1;
wire   [8:0] zext_ln393_1_cast_fu_2365_p4;
wire   [8:0] add_ln394_1_fu_2389_p2;
wire  signed [8:0] sext_ln395_1_fu_2408_p1;
wire   [6:0] add_ln396_fu_2425_p2;
wire  signed [8:0] sext_ln396_1_fu_2430_p1;
reg   [1:0] grp_fu_1056_opcode;
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
reg   [1:0] grp_fu_1100_opcode;
reg   [1:0] grp_fu_1104_opcode;
reg   [1:0] grp_fu_1108_opcode;
reg   [1:0] grp_fu_1112_opcode;
reg   [1:0] grp_fu_1116_opcode;
reg   [1:0] grp_fu_1120_opcode;
reg   [1:0] grp_fu_1124_opcode;
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
#0 tid_fu_162 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U615(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1096_p0),.din1(grp_fu_1096_p1),.opcode(grp_fu_1096_opcode),.ce(1'b1),.dout(grp_fu_1096_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U616(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1100_p0),.din1(grp_fu_1100_p1),.opcode(grp_fu_1100_opcode),.ce(1'b1),.dout(grp_fu_1100_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U617(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1104_p0),.din1(grp_fu_1104_p1),.opcode(grp_fu_1104_opcode),.ce(1'b1),.dout(grp_fu_1104_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U618(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1108_p0),.din1(grp_fu_1108_p1),.opcode(grp_fu_1108_opcode),.ce(1'b1),.dout(grp_fu_1108_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U619(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1112_p0),.din1(grp_fu_1112_p1),.opcode(grp_fu_1112_opcode),.ce(1'b1),.dout(grp_fu_1112_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U620(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1116_p0),.din1(grp_fu_1116_p1),.opcode(grp_fu_1116_opcode),.ce(1'b1),.dout(grp_fu_1116_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U621(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1120_p0),.din1(grp_fu_1120_p1),.opcode(grp_fu_1120_opcode),.ce(1'b1),.dout(grp_fu_1120_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U622(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1124_p0),.din1(grp_fu_1124_p1),.opcode(grp_fu_1124_opcode),.ce(1'b1),.dout(grp_fu_1124_p2));
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
        tid_fu_162 <= 7'd0;
    end else if (((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tid_fu_162 <= add_ln365_fu_1707_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_4_load_2_reg_2839 <= DATA_y_4_q0;
        DATA_y_4_load_reg_2746 <= DATA_y_4_q1;
        DATA_y_5_load_2_reg_2845 <= DATA_y_5_q0;
        DATA_y_5_load_reg_2752 <= DATA_y_5_q1;
        DATA_y_6_load_2_reg_2851 <= DATA_y_6_q0;
        DATA_y_6_load_reg_2758 <= DATA_y_6_q1;
        DATA_y_7_load_2_reg_2857 <= DATA_y_7_q0;
        DATA_y_7_load_reg_2763 <= DATA_y_7_q1;
        c0_y_12_reg_2815 <= DATA_y_q0;
        c0_y_14_reg_2821 <= DATA_y_1_q0;
        c0_y_16_reg_2827 <= DATA_y_2_q0;
        c0_y_17_reg_2833 <= DATA_y_3_q0;
        c0_y_2_reg_2729 <= DATA_y_1_q1;
        c0_y_4_reg_2735 <= DATA_y_2_q1;
        c0_y_5_reg_2740 <= DATA_y_3_q1;
        c0_y_reg_2723 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add10_reg_3386 <= grp_fu_2125_p_dout0;
        add1717_1_reg_3411 <= grp_fu_2137_p_dout0;
        add1720_1_reg_3416 <= grp_fu_2141_p_dout0;
        add9_reg_3381 <= grp_fu_2121_p_dout0;
        mul1702_1_reg_3401 <= grp_fu_2171_p_dout0;
        mul1709_1_reg_3406 <= grp_fu_2176_p_dout0;
        mul4_reg_3371 <= grp_fu_2161_p_dout0;
        mul5_reg_3376 <= grp_fu_2166_p_dout0;
        sub10_reg_3396 <= grp_fu_2133_p_dout0;
        sub1723_1_reg_3421 <= grp_fu_2145_p_dout0;
        sub1726_1_reg_3426 <= grp_fu_2149_p_dout0;
        sub9_reg_3391 <= grp_fu_2129_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add10_reg_3386_pp0_iter3_reg <= add10_reg_3386;
        add10_reg_3386_pp0_iter4_reg <= add10_reg_3386_pp0_iter3_reg;
        add1717_1_reg_3411_pp0_iter3_reg <= add1717_1_reg_3411;
        add1717_1_reg_3411_pp0_iter4_reg <= add1717_1_reg_3411_pp0_iter3_reg;
        add1720_1_reg_3416_pp0_iter3_reg <= add1720_1_reg_3416;
        add1720_1_reg_3416_pp0_iter4_reg <= add1720_1_reg_3416_pp0_iter3_reg;
        add9_reg_3381_pp0_iter3_reg <= add9_reg_3381;
        add9_reg_3381_pp0_iter4_reg <= add9_reg_3381_pp0_iter3_reg;
        sub10_reg_3396_pp0_iter3_reg <= sub10_reg_3396;
        sub10_reg_3396_pp0_iter4_reg <= sub10_reg_3396_pp0_iter3_reg;
        sub1723_1_reg_3421_pp0_iter3_reg <= sub1723_1_reg_3421;
        sub1723_1_reg_3421_pp0_iter4_reg <= sub1723_1_reg_3421_pp0_iter3_reg;
        sub1723_1_reg_3421_pp0_iter5_reg <= sub1723_1_reg_3421_pp0_iter4_reg;
        sub1726_1_reg_3426_pp0_iter3_reg <= sub1726_1_reg_3426;
        sub1726_1_reg_3426_pp0_iter4_reg <= sub1726_1_reg_3426_pp0_iter3_reg;
        sub1726_1_reg_3426_pp0_iter5_reg <= sub1726_1_reg_3426_pp0_iter4_reg;
        sub9_reg_3391_pp0_iter3_reg <= sub9_reg_3391;
        sub9_reg_3391_pp0_iter4_reg <= sub9_reg_3391_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_reg_3627 <= grp_fu_1104_p2;
        add12_reg_3632 <= grp_fu_1108_p2;
        sub11_reg_3637 <= grp_fu_1112_p2;
        sub12_reg_3642 <= grp_fu_1116_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add13_reg_3475 <= grp_fu_2129_p_dout0;
        add14_reg_3481 <= grp_fu_2133_p_dout0;
        c0_x_10_reg_3463 <= grp_fu_2121_p_dout0;
        c0_x_22_reg_3499 <= grp_fu_2145_p_dout0;
        c0_x_23_reg_3487 <= grp_fu_2137_p_dout0;
        c0_y_10_reg_3469 <= grp_fu_2125_p_dout0;
        c0_y_22_reg_3505 <= grp_fu_2149_p_dout0;
        c0_y_23_reg_3493 <= grp_fu_2141_p_dout0;
        sub1777_1_reg_3517 <= grp_fu_1100_p2;
        tmp_9_reg_3511 <= grp_fu_1096_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add1598_1_reg_3077 <= grp_fu_1096_p2;
        add1601_1_reg_3083 <= grp_fu_1100_p2;
        add1614_1_reg_3089 <= grp_fu_1104_p2;
        add1617_1_reg_3095 <= grp_fu_1108_p2;
        add1_reg_3025 <= grp_fu_2141_p_dout0;
        add_reg_3019 <= grp_fu_2137_p_dout0;
        c0_x_13_reg_3065 <= grp_fu_2153_p_dout0;
        c0_x_19_reg_3053 <= grp_fu_2145_p_dout0;
        c0_x_1_reg_3007 <= grp_fu_2129_p_dout0;
        c0_x_7_reg_2995 <= grp_fu_2121_p_dout0;
        c0_y_13_reg_3071 <= grp_fu_2157_p_dout0;
        c0_y_19_reg_3059 <= grp_fu_2149_p_dout0;
        c0_y_1_reg_3013 <= grp_fu_2133_p_dout0;
        c0_y_7_reg_3001 <= grp_fu_2125_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add15_reg_3577 <= grp_fu_2121_p_dout0;
        add16_reg_3582 <= grp_fu_2125_p_dout0;
        add1796_1_reg_3607 <= grp_fu_2137_p_dout0;
        add1799_1_reg_3612 <= grp_fu_2141_p_dout0;
        sub16_reg_3587 <= grp_fu_2129_p_dout0;
        sub17_reg_3592 <= grp_fu_2133_p_dout0;
        sub1802_1_reg_3617 <= grp_fu_2145_p_dout0;
        sub1805_1_reg_3622 <= grp_fu_2149_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add15_reg_3577_pp0_iter4_reg <= add15_reg_3577;
        add16_reg_3582_pp0_iter4_reg <= add16_reg_3582;
        add1796_1_reg_3607_pp0_iter4_reg <= add1796_1_reg_3607;
        add1799_1_reg_3612_pp0_iter4_reg <= add1799_1_reg_3612;
        sub16_reg_3587_pp0_iter4_reg <= sub16_reg_3587;
        sub17_reg_3592_pp0_iter4_reg <= sub17_reg_3592;
        sub1802_1_reg_3617_pp0_iter4_reg <= sub1802_1_reg_3617;
        sub1805_1_reg_3622_pp0_iter4_reg <= sub1805_1_reg_3622;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add1636_1_reg_3202 <= grp_fu_2157_p_dout0;
        add1662_1_reg_3222 <= grp_fu_1100_p2;
        add4_reg_3148 <= grp_fu_2125_p_dout0;
        add6_reg_3168 <= grp_fu_2133_p_dout0;
        add7_reg_3173 <= grp_fu_2137_p_dout0;
        add8_reg_3179 <= grp_fu_2141_p_dout0;
        sub1630_1_reg_3197 <= grp_fu_2153_p_dout0;
        sub1656_1_reg_3217 <= grp_fu_1096_p2;
        sub3_reg_3143 <= grp_fu_2121_p_dout0;
        sub5_reg_3163 <= grp_fu_2129_p_dout0;
        sub6_reg_3191 <= grp_fu_2149_p_dout0;
        tmp_6_reg_3185 <= grp_fu_2145_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add1649_1_reg_3341 <= grp_fu_2133_p_dout0;
        add5_reg_3317 <= grp_fu_2125_p_dout0;
        c0_x_6_reg_3299 <= grp_fu_2161_p_dout0;
        c0_y_6_reg_3305 <= grp_fu_2166_p_dout0;
        mul2_reg_3323 <= grp_fu_2171_p_dout0;
        mul3_reg_3329 <= grp_fu_2176_p_dout0;
        sub1644_1_reg_3335 <= grp_fu_2129_p_dout0;
        sub4_reg_3311 <= grp_fu_2121_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add1689_1_reg_3275 <= grp_fu_2153_p_dout0;
        add1692_1_reg_3281 <= grp_fu_2157_p_dout0;
        c0_x_20_reg_3263 <= grp_fu_2145_p_dout0;
        c0_x_21_reg_3251 <= grp_fu_2137_p_dout0;
        c0_x_8_reg_3239 <= grp_fu_2129_p_dout0;
        c0_x_9_reg_3227 <= grp_fu_2121_p_dout0;
        c0_y_20_reg_3269 <= grp_fu_2149_p_dout0;
        c0_y_21_reg_3257 <= grp_fu_2141_p_dout0;
        c0_y_8_reg_3245 <= grp_fu_2133_p_dout0;
        c0_y_9_reg_3233 <= grp_fu_2125_p_dout0;
        sub1698_1_reg_3293 <= grp_fu_1100_p2;
        tmp_8_reg_3287 <= grp_fu_1096_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1733_1_reg_3647 <= grp_fu_2137_p_dout0;
        add1736_1_reg_3652 <= grp_fu_2141_p_dout0;
        sub1739_1_reg_3657 <= grp_fu_2145_p_dout0;
        sub1742_1_reg_3662 <= grp_fu_2149_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1733_1_reg_3647_pp0_iter5_reg <= add1733_1_reg_3647;
        add1736_1_reg_3652_pp0_iter5_reg <= add1736_1_reg_3652;
        c0_x_12_reg_2863 <= c0_x_12_fu_1363_p3;
        c0_x_14_reg_2869 <= c0_x_14_fu_1371_p3;
        c0_x_16_reg_2875 <= c0_x_16_fu_1379_p3;
        c0_x_17_reg_2881 <= c0_x_17_fu_1387_p3;
        c0_x_2_reg_2775 <= c0_x_2_fu_1307_p3;
        c0_x_4_reg_2781 <= c0_x_4_fu_1315_p3;
        c0_x_5_reg_2786 <= c0_x_5_fu_1323_p3;
        c0_x_reg_2769 <= c0_x_fu_1299_p3;
        select_ln380_1_reg_2887 <= select_ln380_1_fu_1395_p3;
        select_ln380_reg_2792 <= select_ln380_fu_1331_p3;
        select_ln381_1_reg_2893 <= select_ln381_1_fu_1403_p3;
        select_ln381_reg_2798 <= select_ln381_fu_1339_p3;
        select_ln382_1_reg_2899 <= select_ln382_1_fu_1411_p3;
        select_ln382_reg_2804 <= select_ln382_fu_1347_p3;
        select_ln383_1_reg_2905 <= select_ln383_1_fu_1419_p3;
        select_ln383_reg_2809 <= select_ln383_fu_1355_p3;
        sub1739_1_reg_3657_pp0_iter5_reg <= sub1739_1_reg_3657;
        sub1742_1_reg_3662_pp0_iter5_reg <= sub1742_1_reg_3662;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add17_reg_3685 <= grp_fu_1120_p2;
        add18_reg_3690 <= grp_fu_1124_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1812_1_reg_3700 <= grp_fu_1096_p2;
        add1815_1_reg_3705 <= grp_fu_1100_p2;
        sub1818_1_reg_3710 <= grp_fu_1104_p2;
        sub1821_1_reg_3715 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add2_reg_2947 <= grp_fu_2145_p_dout0;
        add3_reg_2953 <= grp_fu_2149_p_dout0;
        c0_x_15_reg_2959 <= grp_fu_1096_p2;
        c0_x_3_reg_2911 <= grp_fu_2121_p_dout0;
        c0_y_15_reg_2965 <= grp_fu_1100_p2;
        c0_y_3_reg_2917 <= grp_fu_2125_p_dout0;
        sub1591_1_reg_2977 <= grp_fu_1108_p2;
        sub1607_1_reg_2989 <= grp_fu_1116_p2;
        sub1_reg_2941 <= grp_fu_2141_p_dout0;
        sub_reg_2929 <= grp_fu_2133_p_dout0;
        tmp_1_1_reg_2935 <= grp_fu_2137_p_dout0;
        tmp_1_4_reg_2971 <= grp_fu_1104_p2;
        tmp_1_5_reg_2983 <= grp_fu_1112_p2;
        tmp_1_reg_2923 <= grp_fu_2129_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        c0_x_13_reg_3065_pp0_iter1_reg <= c0_x_13_reg_3065;
        c0_x_1_reg_3007_pp0_iter1_reg <= c0_x_1_reg_3007;
        c0_y_13_reg_3071_pp0_iter1_reg <= c0_y_13_reg_3071;
        c0_y_1_reg_3013_pp0_iter1_reg <= c0_y_1_reg_3013;
        zext_ln390_cast_reg_3679[5 : 0] <= zext_ln390_cast_fu_2130_p3[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_10_reg_3463_pp0_iter4_reg <= c0_x_10_reg_3463;
        c0_x_22_reg_3499_pp0_iter4_reg <= c0_x_22_reg_3499;
        c0_y_10_reg_3469_pp0_iter4_reg <= c0_y_10_reg_3469;
        c0_y_22_reg_3505_pp0_iter4_reg <= c0_y_22_reg_3505;
        sub11_reg_3637_pp0_iter5_reg <= sub11_reg_3637;
        sub12_reg_3642_pp0_iter5_reg <= sub12_reg_3642;
        tid_5_reg_2455 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_2455_pp0_iter1_reg <= tid_5_reg_2455;
        tid_5_reg_2455_pp0_iter2_reg <= tid_5_reg_2455_pp0_iter1_reg;
        tid_5_reg_2455_pp0_iter3_reg <= tid_5_reg_2455_pp0_iter2_reg;
        tid_5_reg_2455_pp0_iter4_reg <= tid_5_reg_2455_pp0_iter3_reg;
        tid_5_reg_2455_pp0_iter5_reg <= tid_5_reg_2455_pp0_iter4_reg;
        tmp_reg_2467 <= ap_sig_allocacmp_tid_5[32'd6];
        zext_ln365_reg_2471[6 : 0] <= zext_ln365_fu_1202_p1[6 : 0];
        zext_ln365_reg_2471_pp0_iter1_reg[6 : 0] <= zext_ln365_reg_2471[6 : 0];
        zext_ln365_reg_2471_pp0_iter2_reg[6 : 0] <= zext_ln365_reg_2471_pp0_iter1_reg[6 : 0];
        zext_ln365_reg_2471_pp0_iter3_reg[6 : 0] <= zext_ln365_reg_2471_pp0_iter2_reg[6 : 0];
        zext_ln365_reg_2471_pp0_iter4_reg[6 : 0] <= zext_ln365_reg_2471_pp0_iter3_reg[6 : 0];
        zext_ln367_1_reg_2597[5 : 1] <= zext_ln367_1_fu_1278_p1[5 : 1];
        zext_ln367_1_reg_2597_pp0_iter1_reg[5 : 1] <= zext_ln367_1_reg_2597[5 : 1];
        zext_ln367_1_reg_2597_pp0_iter2_reg[5 : 1] <= zext_ln367_1_reg_2597_pp0_iter1_reg[5 : 1];
        zext_ln367_1_reg_2597_pp0_iter3_reg[5 : 1] <= zext_ln367_1_reg_2597_pp0_iter2_reg[5 : 1];
        zext_ln367_1_reg_2597_pp0_iter4_reg[5 : 1] <= zext_ln367_1_reg_2597_pp0_iter3_reg[5 : 1];
        zext_ln367_1_reg_2597_pp0_iter5_reg[5 : 1] <= zext_ln367_1_reg_2597_pp0_iter4_reg[5 : 1];
        zext_ln391_cast_reg_3695[6 : 0] <= zext_ln391_cast_fu_2156_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        c0_x_11_reg_3451 <= grp_fu_1112_p2;
        c0_y_11_reg_3457 <= grp_fu_1116_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c0_x_18_reg_3347 <= grp_fu_2161_p_dout0;
        c0_y_18_reg_3353 <= grp_fu_2166_p_dout0;
        mul1657_1_reg_3359 <= grp_fu_2171_p_dout0;
        mul1663_1_reg_3365 <= grp_fu_2176_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        c0_x_20_reg_3263_pp0_iter2_reg <= c0_x_20_reg_3263;
        c0_x_8_reg_3239_pp0_iter2_reg <= c0_x_8_reg_3239;
        c0_y_20_reg_3269_pp0_iter2_reg <= c0_y_20_reg_3269;
        c0_y_8_reg_3245_pp0_iter2_reg <= c0_y_8_reg_3245;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul1641_1_reg_3133 <= grp_fu_2171_p_dout0;
        mul1648_1_reg_3138 <= grp_fu_2176_p_dout0;
        mul1_reg_3128 <= grp_fu_2166_p_dout0;
        mul_reg_3123 <= grp_fu_2161_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul1781_1_reg_3567 <= grp_fu_2161_p_dout0;
        mul1788_1_reg_3572 <= grp_fu_2166_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul6_reg_3547 <= grp_fu_2161_p_dout0;
        mul7_reg_3552 <= grp_fu_2166_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1152 <= grp_fu_2153_p_dout0;
        reg_1158 <= grp_fu_2157_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1164 <= grp_fu_1120_p2;
        reg_1169 <= grp_fu_1124_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_1174 <= grp_fu_2153_p_dout0;
        reg_1180 <= grp_fu_2157_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub14_reg_3667 <= grp_fu_2121_p_dout0;
        sub15_reg_3673 <= grp_fu_2125_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub1705_1_reg_3535 <= grp_fu_2129_p_dout0;
        sub1710_1_reg_3541 <= grp_fu_2133_p_dout0;
        sub7_reg_3523 <= grp_fu_2121_p_dout0;
        sub8_reg_3529 <= grp_fu_2125_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_78_reg_3726 <= {{tid_5_reg_2455_pp0_iter5_reg[6:1]}};
        zext_ln391_1_cast_reg_3731[6 : 1] <= zext_ln391_1_cast_fu_2319_p4[6 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln365_1_reg_3720[6 : 0] <= zext_ln365_1_fu_2260_p1[6 : 0];
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
    if (((tmp_reg_2467 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
        ap_sig_allocacmp_tid_5 = tid_fu_162;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1056_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1056_opcode = 2'd0;
    end else begin
        grp_fu_1056_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1056_p0 = mul6_reg_3547;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1056_p0 = c0_x_11_reg_3451;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1056_p0 = mul4_reg_3371;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1056_p0 = c0_x_1_reg_3007_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1056_p0 = c0_x_9_reg_3227;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1056_p0 = mul_reg_3123;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1056_p0 = c0_x_7_reg_2995;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1056_p0 = tmp_1_reg_2923;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1056_p0 = c0_x_reg_2769;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1056_p0 = c0_x_2_reg_2775;
    end else begin
        grp_fu_1056_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1056_p1 = bitcast_ln386_17_fu_2019_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1056_p1 = add13_reg_3475;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1056_p1 = bitcast_ln386_13_fu_1882_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1056_p1 = sub4_reg_3311;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1056_p1 = add7_reg_3173;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1056_p1 = bitcast_ln386_5_fu_1746_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1056_p1 = add_reg_3019;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1056_p1 = bitcast_ln386_1_fu_1456_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1056_p1 = select_ln380_reg_2792;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1056_p1 = select_ln381_reg_2798;
    end else begin
        grp_fu_1056_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_1060_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1060_opcode = 2'd0;
    end else begin
        grp_fu_1060_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1060_p0 = bitcast_ln386_19_fu_2054_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1060_p0 = c0_y_11_reg_3457;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1060_p0 = bitcast_ln386_15_fu_1916_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1060_p0 = c0_y_1_reg_3013_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1060_p0 = c0_y_9_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1060_p0 = bitcast_ln386_7_fu_1780_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1060_p0 = c0_y_7_reg_3001;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1060_p0 = bitcast_ln386_3_fu_1490_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1060_p0 = c0_y_reg_2723;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1060_p0 = c0_y_2_reg_2729;
    end else begin
        grp_fu_1060_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1060_p1 = mul7_reg_3552;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1060_p1 = add14_reg_3481;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1060_p1 = mul5_reg_3376;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1060_p1 = add5_reg_3317;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1060_p1 = add8_reg_3179;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1060_p1 = mul1_reg_3128;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1060_p1 = add1_reg_3025;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1060_p1 = sub_reg_2929;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1060_p1 = DATA_y_4_load_reg_2746;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1060_p1 = DATA_y_5_load_reg_2752;
    end else begin
        grp_fu_1060_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1064_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1064_opcode = 2'd0;
    end else begin
        grp_fu_1064_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1064_p0 = c0_x_11_reg_3451;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1064_p0 = mul1702_1_reg_3401;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1064_p0 = c0_x_6_reg_3299;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1064_p0 = c0_x_9_reg_3227;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1064_p0 = mul1641_1_reg_3133;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1064_p0 = c0_x_7_reg_2995;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1064_p0 = bitcast_ln386_9_fu_1525_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1064_p0 = c0_x_reg_2769;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1064_p0 = c0_x_2_reg_2775;
    end else begin
        grp_fu_1064_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1064_p1 = add13_reg_3475;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1064_p1 = bitcast_ln386_33_fu_1950_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1064_p1 = mul2_reg_3323;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1064_p1 = add7_reg_3173;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1064_p1 = bitcast_ln386_25_fu_1814_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1064_p1 = add_reg_3019;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1064_p1 = bitcast_ln386_11_fu_1561_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1064_p1 = select_ln380_reg_2792;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1064_p1 = select_ln381_reg_2798;
    end else begin
        grp_fu_1064_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1068_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1068_opcode = 2'd0;
    end else begin
        grp_fu_1068_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1068_p0 = c0_y_11_reg_3457;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1068_p0 = bitcast_ln386_35_fu_1984_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1068_p0 = c0_y_6_reg_3305;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1068_p0 = c0_y_9_reg_3233;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1068_p0 = bitcast_ln386_27_fu_1848_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1068_p0 = c0_y_7_reg_3001;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1068_p0 = bitcast_ln386_9_fu_1525_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1068_p0 = c0_y_reg_2723;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1068_p0 = c0_y_2_reg_2729;
    end else begin
        grp_fu_1068_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1068_p1 = add14_reg_3481;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1068_p1 = mul1709_1_reg_3406;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1068_p1 = mul3_reg_3329;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1068_p1 = add8_reg_3179;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1068_p1 = mul1648_1_reg_3138;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1068_p1 = add1_reg_3025;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1068_p1 = bitcast_ln386_11_fu_1561_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1068_p1 = DATA_y_4_load_reg_2746;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1068_p1 = DATA_y_5_load_reg_2752;
    end else begin
        grp_fu_1068_p1 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1072_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1072_opcode = 2'd0;
    end else begin
        grp_fu_1072_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1072_p0 = c0_x_20_reg_3263_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1072_p0 = c0_x_23_reg_3487;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1072_p0 = c0_x_13_reg_3065_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1072_p0 = c0_x_21_reg_3251;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1072_p0 = c0_x_19_reg_3053;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1072_p0 = c0_x_3_reg_2911;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1072_p0 = c0_x_4_reg_2781;
    end else begin
        grp_fu_1072_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1072_p1 = sub1705_1_reg_3535;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1072_p1 = reg_1152;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1072_p1 = sub1644_1_reg_3335;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1072_p1 = add1689_1_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1072_p1 = add1598_1_reg_3077;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1072_p1 = add2_reg_2947;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1072_p1 = select_ln382_reg_2804;
    end else begin
        grp_fu_1072_p1 = 'bx;
    end
end
always @ (*) begin
    if (((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1076_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1076_opcode = 2'd0;
    end else begin
        grp_fu_1076_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1076_p0 = c0_y_20_reg_3269_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1076_p0 = c0_y_23_reg_3493;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1076_p0 = c0_y_13_reg_3071_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1076_p0 = c0_y_21_reg_3257;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1076_p0 = c0_y_19_reg_3059;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1076_p0 = c0_y_3_reg_2917;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1076_p0 = c0_y_4_reg_2735;
    end else begin
        grp_fu_1076_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1076_p1 = sub1710_1_reg_3541;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1076_p1 = reg_1158;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1076_p1 = add1649_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1076_p1 = add1692_1_reg_3281;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1076_p1 = add1601_1_reg_3083;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1076_p1 = add3_reg_2953;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1076_p1 = DATA_y_6_load_reg_2758;
    end else begin
        grp_fu_1076_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1080_opcode = 2'd1;
    end else if ((((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1080_opcode = 2'd0;
    end else begin
        grp_fu_1080_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1080_p0 = c0_x_20_reg_3263_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1080_p0 = c0_x_23_reg_3487;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1080_p0 = c0_x_13_reg_3065_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1080_p0 = c0_x_21_reg_3251;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1080_p0 = c0_x_19_reg_3053;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1080_p0 = c0_x_3_reg_2911;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1080_p0 = c0_x_12_reg_2863;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1080_p0 = c0_x_5_reg_2786;
    end else begin
        grp_fu_1080_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1080_p1 = sub1705_1_reg_3535;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1080_p1 = reg_1152;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1080_p1 = sub1644_1_reg_3335;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1080_p1 = add1689_1_reg_3275;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1080_p1 = add1598_1_reg_3077;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1080_p1 = add2_reg_2947;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1080_p1 = select_ln380_1_reg_2887;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1080_p1 = select_ln383_reg_2809;
    end else begin
        grp_fu_1080_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1084_opcode = 2'd1;
    end else if ((((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1084_opcode = 2'd0;
    end else begin
        grp_fu_1084_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1084_p0 = c0_y_20_reg_3269_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1084_p0 = c0_y_23_reg_3493;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1084_p0 = c0_y_13_reg_3071_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1084_p0 = c0_y_21_reg_3257;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1084_p0 = c0_y_19_reg_3059;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1084_p0 = c0_y_3_reg_2917;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1084_p0 = c0_y_12_reg_2815;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1084_p0 = c0_y_5_reg_2740;
    end else begin
        grp_fu_1084_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1084_p1 = sub1710_1_reg_3541;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1084_p1 = reg_1158;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1084_p1 = add1649_1_reg_3341;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1084_p1 = add1692_1_reg_3281;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1084_p1 = add1601_1_reg_3083;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1084_p1 = add3_reg_2953;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1084_p1 = DATA_y_4_load_2_reg_2839;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1084_p1 = DATA_y_7_load_reg_2763;
    end else begin
        grp_fu_1084_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1088_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1088_opcode = 2'd0;
    end else begin
        grp_fu_1088_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1088_p0 = c0_x_10_reg_3463_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1088_p0 = mul1781_1_reg_3567;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1088_p0 = c0_x_18_reg_3347;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1088_p0 = c0_x_15_reg_2959;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1088_p0 = tmp_1_4_reg_2971;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1088_p0 = c0_x_12_reg_2863;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1088_p0 = c0_x_5_reg_2786;
    end else begin
        grp_fu_1088_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1088_p1 = sub14_reg_3667;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1088_p1 = bitcast_ln386_37_fu_2088_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1088_p1 = mul1657_1_reg_3359;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1088_p1 = add1614_1_reg_3089;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1088_p1 = bitcast_ln386_21_fu_1596_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1088_p1 = select_ln380_1_reg_2887;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1088_p1 = select_ln383_reg_2809;
    end else begin
        grp_fu_1088_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1092_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1092_opcode = 2'd0;
    end else begin
        grp_fu_1092_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1092_p0 = c0_y_10_reg_3469_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1092_p0 = bitcast_ln386_39_fu_2122_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1092_p0 = c0_y_18_reg_3353;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1092_p0 = c0_y_15_reg_2965;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1092_p0 = bitcast_ln386_23_fu_1630_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1092_p0 = c0_y_12_reg_2815;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1092_p0 = c0_y_5_reg_2740;
    end else begin
        grp_fu_1092_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1092_p1 = sub15_reg_3673;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1092_p1 = mul1788_1_reg_3572;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1092_p1 = mul1663_1_reg_3365;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1092_p1 = add1617_1_reg_3095;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1092_p1 = sub1591_1_reg_2977;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1092_p1 = DATA_y_4_load_2_reg_2839;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1092_p1 = DATA_y_7_load_reg_2763;
    end else begin
        grp_fu_1092_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1096_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1096_opcode = 2'd0;
    end else begin
        grp_fu_1096_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1096_p0 = c0_x_22_reg_3499_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1096_p0 = c0_x_18_reg_3347;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1096_p0 = c0_x_15_reg_2959;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1096_p0 = bitcast_ln386_29_fu_1665_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1096_p0 = c0_x_16_reg_2875;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1096_p0 = c0_x_14_reg_2869;
    end else begin
        grp_fu_1096_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1096_p1 = reg_1174;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1096_p1 = mul1657_1_reg_3359;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1096_p1 = add1614_1_reg_3089;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1096_p1 = bitcast_ln386_31_fu_1701_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1096_p1 = select_ln382_1_reg_2899;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1096_p1 = select_ln381_1_reg_2893;
    end else begin
        grp_fu_1096_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1100_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1100_opcode = 2'd0;
    end else begin
        grp_fu_1100_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1100_p0 = c0_y_22_reg_3505_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1100_p0 = c0_y_18_reg_3353;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1100_p0 = c0_y_15_reg_2965;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1100_p0 = bitcast_ln386_29_fu_1665_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1100_p0 = c0_y_16_reg_2827;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1100_p0 = c0_y_14_reg_2821;
    end else begin
        grp_fu_1100_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1100_p1 = reg_1180;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1100_p1 = mul1663_1_reg_3365;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1100_p1 = add1617_1_reg_3095;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1100_p1 = bitcast_ln386_31_fu_1701_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1100_p1 = DATA_y_6_load_2_reg_2851;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1100_p1 = DATA_y_5_load_2_reg_2845;
    end else begin
        grp_fu_1100_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1104_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1104_opcode = 2'd0;
    end else begin
        grp_fu_1104_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1104_p0 = c0_x_22_reg_3499_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1104_p0 = c0_x_8_reg_3239_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1104_p0 = c0_x_17_reg_2881;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1104_p0 = c0_x_14_reg_2869;
    end else begin
        grp_fu_1104_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1104_p1 = reg_1174;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1104_p1 = sub7_reg_3523;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1104_p1 = select_ln383_1_reg_2905;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1104_p1 = select_ln381_1_reg_2893;
    end else begin
        grp_fu_1104_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1108_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1108_opcode = 2'd0;
    end else begin
        grp_fu_1108_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1108_p0 = c0_y_22_reg_3505_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1108_p0 = c0_y_8_reg_3245_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1108_p0 = c0_y_17_reg_2833;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1108_p0 = c0_y_14_reg_2821;
    end else begin
        grp_fu_1108_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1108_p1 = reg_1180;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1108_p1 = sub8_reg_3529;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1108_p1 = DATA_y_7_load_2_reg_2857;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1108_p1 = DATA_y_5_load_2_reg_2845;
    end else begin
        grp_fu_1108_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1112_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1112_opcode = 2'd0;
    end else begin
        grp_fu_1112_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1112_p0 = c0_x_8_reg_3239_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1112_p0 = c0_x_1_reg_3007_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1112_p0 = c0_x_16_reg_2875;
    end else begin
        grp_fu_1112_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1112_p1 = sub7_reg_3523;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1112_p1 = sub4_reg_3311;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1112_p1 = select_ln382_1_reg_2899;
    end else begin
        grp_fu_1112_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1116_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1116_opcode = 2'd0;
    end else begin
        grp_fu_1116_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1116_p0 = c0_y_8_reg_3245_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1116_p0 = c0_y_1_reg_3013_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1116_p0 = c0_y_16_reg_2827;
    end else begin
        grp_fu_1116_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1116_p1 = sub8_reg_3529;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1116_p1 = add5_reg_3317;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1116_p1 = DATA_y_6_load_2_reg_2851;
    end else begin
        grp_fu_1116_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1120_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1120_opcode = 2'd0;
    end else begin
        grp_fu_1120_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1120_p0 = c0_x_10_reg_3463_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1120_p0 = c0_x_6_reg_3299;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1120_p0 = c0_x_17_reg_2881;
    end else begin
        grp_fu_1120_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1120_p1 = sub14_reg_3667;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1120_p1 = mul2_reg_3323;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1120_p1 = select_ln383_1_reg_2905;
    end else begin
        grp_fu_1120_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_1124_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1124_opcode = 2'd0;
    end else begin
        grp_fu_1124_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1124_p0 = c0_y_10_reg_3469_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1124_p0 = c0_y_6_reg_3305;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1124_p0 = c0_y_17_reg_2833;
    end else begin
        grp_fu_1124_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1124_p1 = sub15_reg_3673;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1124_p1 = mul3_reg_3329;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1124_p1 = DATA_y_7_load_2_reg_2857;
    end else begin
        grp_fu_1124_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1128_p0 = tmp_9_reg_3511;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1128_p0 = reg_1164;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1128_p0 = tmp_6_reg_3185;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1128_p0 = sub1630_1_reg_3197;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1128_p0 = sub3_reg_3143;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1128_p0 = tmp_1_1_reg_2935;
    end else begin
        grp_fu_1128_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1128_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1128_p1 = 64'd0;
    end else begin
        grp_fu_1128_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1133_p0 = sub1777_1_reg_3517;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1133_p0 = reg_1169;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1133_p0 = sub6_reg_3191;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1133_p0 = add1636_1_reg_3202;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1133_p0 = add4_reg_3148;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1133_p0 = sub1_reg_2941;
    end else begin
        grp_fu_1133_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1133_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1133_p1 = 64'd0;
    end else begin
        grp_fu_1133_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1138_p0 = tmp_8_reg_3287;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1138_p0 = sub1656_1_reg_3217;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1138_p0 = sub5_reg_3163;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1138_p0 = tmp_1_5_reg_2983;
    end else begin
        grp_fu_1138_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1138_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1138_p1 = 64'd0;
    end else begin
        grp_fu_1138_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1143_p0 = sub1698_1_reg_3293;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1143_p0 = add1662_1_reg_3222;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1143_p0 = add6_reg_3168;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1143_p0 = sub1607_1_reg_2989;
    end else begin
        grp_fu_1143_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1143_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1143_p1 = 64'd0;
    end else begin
        grp_fu_1143_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            work_x_address0_local = zext_ln396_1_fu_2434_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_x_address0_local = zext_ln394_1_fu_2394_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_x_address0_local = zext_ln392_1_fu_2348_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_x_address0_local = zext_ln367_1_reg_2597_pp0_iter5_reg;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_x_address0_local = zext_ln396_fu_2282_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_x_address0_local = zext_ln390_1_fu_2246_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_x_address0_local = zext_ln395_fu_2197_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_x_address0_local = zext_ln391_fu_2163_p1;
        end else begin
            work_x_address0_local = 'bx;
        end
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_x_address1_local = zext_ln395_1_fu_2411_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_x_address1_local = zext_ln393_2_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_x_address1_local = zext_ln391_1_fu_2329_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln394_fu_2269_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln393_fu_2226_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln392_fu_2184_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_reg_2471_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_x_address1_local = zext_ln390_fu_2138_p1;
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
            work_x_d0_local = bitcast_ln396_1_fu_2440_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_x_d0_local = bitcast_ln394_1_fu_2400_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_x_d0_local = bitcast_ln392_1_fu_2354_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_x_d0_local = bitcast_ln389_1_fu_2302_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_x_d0_local = bitcast_ln396_fu_2288_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_x_d0_local = bitcast_ln390_1_fu_2252_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_x_d0_local = bitcast_ln395_fu_2203_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_x_d0_local = bitcast_ln391_fu_2169_p1;
        end else begin
            work_x_d0_local = 'bx;
        end
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_x_d1_local = bitcast_ln395_1_fu_2417_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_x_d1_local = bitcast_ln393_1_fu_2381_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_x_d1_local = bitcast_ln391_1_fu_2335_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln394_fu_2275_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln393_fu_2232_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln392_fu_2190_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_2152_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_x_d1_local = bitcast_ln390_fu_2144_p1;
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
            work_y_address0_local = zext_ln396_1_fu_2434_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_y_address0_local = zext_ln394_1_fu_2394_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_y_address0_local = zext_ln392_1_fu_2348_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_y_address0_local = zext_ln367_1_reg_2597_pp0_iter5_reg;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_y_address0_local = zext_ln396_fu_2282_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_y_address0_local = zext_ln390_1_fu_2246_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_y_address0_local = zext_ln395_fu_2197_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_y_address0_local = zext_ln391_fu_2163_p1;
        end else begin
            work_y_address0_local = 'bx;
        end
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_y_address1_local = zext_ln395_1_fu_2411_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_y_address1_local = zext_ln393_2_fu_2375_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_y_address1_local = zext_ln391_1_fu_2329_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln394_fu_2269_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln393_fu_2226_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln392_fu_2184_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_reg_2471_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_y_address1_local = zext_ln390_fu_2138_p1;
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
            work_y_d0_local = bitcast_ln405_1_fu_2444_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            work_y_d0_local = bitcast_ln403_1_fu_2404_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            work_y_d0_local = bitcast_ln401_1_fu_2358_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            work_y_d0_local = bitcast_ln398_1_fu_2306_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            work_y_d0_local = bitcast_ln405_fu_2297_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            work_y_d0_local = bitcast_ln399_1_fu_2256_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            work_y_d0_local = bitcast_ln404_fu_2211_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            work_y_d0_local = bitcast_ln400_fu_2177_p1;
        end else begin
            work_y_d0_local = 'bx;
        end
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        work_y_d1_local = bitcast_ln404_1_fu_2421_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        work_y_d1_local = bitcast_ln402_1_fu_2385_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        work_y_d1_local = bitcast_ln400_1_fu_2339_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln403_fu_2293_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln402_fu_2236_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln401_fu_2207_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_2173_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        work_y_d1_local = bitcast_ln399_fu_2148_p1;
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
assign DATA_x_10_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_11_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_12_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_13_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_14_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_15_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_16_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_16_ce0 = DATA_x_16_ce0_local;
assign DATA_x_17_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_17_ce0 = DATA_x_17_ce0_local;
assign DATA_x_18_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_18_ce0 = DATA_x_18_ce0_local;
assign DATA_x_19_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_19_ce0 = DATA_x_19_ce0_local;
assign DATA_x_1_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_20_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_20_ce0 = DATA_x_20_ce0_local;
assign DATA_x_21_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_21_ce0 = DATA_x_21_ce0_local;
assign DATA_x_22_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_22_ce0 = DATA_x_22_ce0_local;
assign DATA_x_23_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_23_ce0 = DATA_x_23_ce0_local;
assign DATA_x_24_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_24_ce0 = DATA_x_24_ce0_local;
assign DATA_x_25_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_25_ce0 = DATA_x_25_ce0_local;
assign DATA_x_26_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_26_ce0 = DATA_x_26_ce0_local;
assign DATA_x_27_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_27_ce0 = DATA_x_27_ce0_local;
assign DATA_x_28_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_28_ce0 = DATA_x_28_ce0_local;
assign DATA_x_29_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_29_ce0 = DATA_x_29_ce0_local;
assign DATA_x_2_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_30_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_30_ce0 = DATA_x_30_ce0_local;
assign DATA_x_31_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_31_ce0 = DATA_x_31_ce0_local;
assign DATA_x_3_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_8_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_9_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_address0 = zext_ln367_fu_1224_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_1_address0 = zext_ln367_1_fu_1278_p1;
assign DATA_y_1_address1 = zext_ln365_fu_1202_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = zext_ln367_1_fu_1278_p1;
assign DATA_y_2_address1 = zext_ln365_fu_1202_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = zext_ln367_1_fu_1278_p1;
assign DATA_y_3_address1 = zext_ln365_fu_1202_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_4_address0 = zext_ln367_1_fu_1278_p1;
assign DATA_y_4_address1 = zext_ln365_fu_1202_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_ce1 = DATA_y_4_ce1_local;
assign DATA_y_5_address0 = zext_ln367_1_fu_1278_p1;
assign DATA_y_5_address1 = zext_ln365_fu_1202_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_ce1 = DATA_y_5_ce1_local;
assign DATA_y_6_address0 = zext_ln367_1_fu_1278_p1;
assign DATA_y_6_address1 = zext_ln365_fu_1202_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_ce1 = DATA_y_6_ce1_local;
assign DATA_y_7_address0 = zext_ln367_1_fu_1278_p1;
assign DATA_y_7_address1 = zext_ln365_fu_1202_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_ce1 = DATA_y_7_ce1_local;
assign DATA_y_address0 = zext_ln367_1_fu_1278_p1;
assign DATA_y_address1 = zext_ln365_fu_1202_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln365_fu_1707_p2 = (tid_5_reg_2455 + 7'd2);
assign add_ln390_fu_2240_p2 = (zext_ln365_2_fu_2215_p1 + 8'd65);
assign add_ln392_fu_2343_p2 = (zext_ln365_1_reg_3720 + 9'd193);
assign add_ln394_1_fu_2389_p2 = ($signed(zext_ln365_1_reg_3720) + $signed(9'd321));
assign add_ln394_fu_2263_p2 = ($signed(zext_ln365_1_fu_2260_p1) + $signed(9'd320));
assign add_ln396_fu_2425_p2 = ($signed(tid_5_reg_2455_pp0_iter5_reg) + $signed(7'd65));
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
assign bit_sel10_fu_1570_p3 = bitcast_ln386_20_fu_1567_p1[64'd63];
assign bit_sel11_fu_1604_p3 = bitcast_ln386_22_fu_1601_p1[64'd63];
assign bit_sel12_fu_1788_p3 = bitcast_ln386_24_fu_1785_p1[64'd63];
assign bit_sel13_fu_1822_p3 = bitcast_ln386_26_fu_1819_p1[64'd63];
assign bit_sel14_fu_1639_p3 = bitcast_ln386_28_fu_1635_p1[64'd63];
assign bit_sel15_fu_1675_p3 = bitcast_ln386_30_fu_1671_p1[64'd63];
assign bit_sel16_fu_1924_p3 = bitcast_ln386_32_fu_1921_p1[64'd63];
assign bit_sel17_fu_1958_p3 = bitcast_ln386_34_fu_1955_p1[64'd63];
assign bit_sel18_fu_2062_p3 = bitcast_ln386_36_fu_2059_p1[64'd63];
assign bit_sel19_fu_2096_p3 = bitcast_ln386_38_fu_2093_p1[64'd63];
assign bit_sel1_fu_1464_p3 = bitcast_ln386_2_fu_1461_p1[64'd63];
assign bit_sel2_fu_1720_p3 = bitcast_ln386_4_fu_1717_p1[64'd63];
assign bit_sel3_fu_1754_p3 = bitcast_ln386_6_fu_1751_p1[64'd63];
assign bit_sel4_fu_1499_p3 = bitcast_ln386_8_fu_1495_p1[64'd63];
assign bit_sel5_fu_1535_p3 = bitcast_ln386_10_fu_1531_p1[64'd63];
assign bit_sel6_fu_1856_p3 = bitcast_ln386_12_fu_1853_p1[64'd63];
assign bit_sel7_fu_1890_p3 = bitcast_ln386_14_fu_1887_p1[64'd63];
assign bit_sel8_fu_1993_p3 = bitcast_ln386_16_fu_1989_p1[64'd63];
assign bit_sel9_fu_2028_p3 = bitcast_ln386_18_fu_2024_p1[64'd63];
assign bit_sel_fu_1430_p3 = bitcast_ln386_fu_1427_p1[64'd63];
assign bitcast_ln386_10_fu_1531_p1 = reg_1158;
assign bitcast_ln386_11_fu_1561_p1 = xor_ln386_5_fu_1553_p3;
assign bitcast_ln386_12_fu_1853_p1 = sub6_reg_3191;
assign bitcast_ln386_13_fu_1882_p1 = xor_ln386_6_fu_1874_p3;
assign bitcast_ln386_14_fu_1887_p1 = tmp_6_reg_3185;
assign bitcast_ln386_15_fu_1916_p1 = xor_ln386_7_fu_1908_p3;
assign bitcast_ln386_16_fu_1989_p1 = reg_1169;
assign bitcast_ln386_17_fu_2019_p1 = xor_ln386_8_fu_2011_p3;
assign bitcast_ln386_18_fu_2024_p1 = reg_1164;
assign bitcast_ln386_19_fu_2054_p1 = xor_ln386_9_fu_2046_p3;
assign bitcast_ln386_1_fu_1456_p1 = xor_ln3_fu_1448_p3;
assign bitcast_ln386_20_fu_1567_p1 = sub1591_1_reg_2977;
assign bitcast_ln386_21_fu_1596_p1 = xor_ln386_s_fu_1588_p3;
assign bitcast_ln386_22_fu_1601_p1 = tmp_1_4_reg_2971;
assign bitcast_ln386_23_fu_1630_p1 = xor_ln386_10_fu_1622_p3;
assign bitcast_ln386_24_fu_1785_p1 = sub1607_1_reg_2989;
assign bitcast_ln386_25_fu_1814_p1 = xor_ln386_11_fu_1806_p3;
assign bitcast_ln386_26_fu_1819_p1 = tmp_1_5_reg_2983;
assign bitcast_ln386_27_fu_1848_p1 = xor_ln386_12_fu_1840_p3;
assign bitcast_ln386_28_fu_1635_p1 = reg_1164;
assign bitcast_ln386_29_fu_1665_p1 = xor_ln386_13_fu_1657_p3;
assign bitcast_ln386_2_fu_1461_p1 = tmp_1_reg_2923;
assign bitcast_ln386_30_fu_1671_p1 = reg_1169;
assign bitcast_ln386_31_fu_1701_p1 = xor_ln386_14_fu_1693_p3;
assign bitcast_ln386_32_fu_1921_p1 = sub1698_1_reg_3293;
assign bitcast_ln386_33_fu_1950_p1 = xor_ln386_15_fu_1942_p3;
assign bitcast_ln386_34_fu_1955_p1 = tmp_8_reg_3287;
assign bitcast_ln386_35_fu_1984_p1 = xor_ln386_16_fu_1976_p3;
assign bitcast_ln386_36_fu_2059_p1 = sub1777_1_reg_3517;
assign bitcast_ln386_37_fu_2088_p1 = xor_ln386_17_fu_2080_p3;
assign bitcast_ln386_38_fu_2093_p1 = tmp_9_reg_3511;
assign bitcast_ln386_39_fu_2122_p1 = xor_ln386_18_fu_2114_p3;
assign bitcast_ln386_3_fu_1490_p1 = xor_ln386_1_fu_1482_p3;
assign bitcast_ln386_4_fu_1717_p1 = sub1_reg_2941;
assign bitcast_ln386_5_fu_1746_p1 = xor_ln386_2_fu_1738_p3;
assign bitcast_ln386_6_fu_1751_p1 = tmp_1_1_reg_2935;
assign bitcast_ln386_7_fu_1780_p1 = xor_ln386_3_fu_1772_p3;
assign bitcast_ln386_8_fu_1495_p1 = reg_1152;
assign bitcast_ln386_9_fu_1525_p1 = xor_ln386_4_fu_1517_p3;
assign bitcast_ln386_fu_1427_p1 = sub_reg_2929;
assign bitcast_ln389_1_fu_2302_p1 = add1717_1_reg_3411_pp0_iter4_reg;
assign bitcast_ln389_fu_2152_p1 = add9_reg_3381_pp0_iter4_reg;
assign bitcast_ln390_1_fu_2252_p1 = add1796_1_reg_3607_pp0_iter4_reg;
assign bitcast_ln390_fu_2144_p1 = add15_reg_3577_pp0_iter4_reg;
assign bitcast_ln391_1_fu_2335_p1 = add1733_1_reg_3647_pp0_iter5_reg;
assign bitcast_ln391_fu_2169_p1 = add11_reg_3627;
assign bitcast_ln392_1_fu_2354_p1 = add1812_1_reg_3700;
assign bitcast_ln392_fu_2190_p1 = add17_reg_3685;
assign bitcast_ln393_1_fu_2381_p1 = sub1723_1_reg_3421_pp0_iter5_reg;
assign bitcast_ln393_fu_2232_p1 = sub9_reg_3391_pp0_iter4_reg;
assign bitcast_ln394_1_fu_2400_p1 = sub1802_1_reg_3617_pp0_iter4_reg;
assign bitcast_ln394_fu_2275_p1 = sub16_reg_3587_pp0_iter4_reg;
assign bitcast_ln395_1_fu_2417_p1 = sub1739_1_reg_3657_pp0_iter5_reg;
assign bitcast_ln395_fu_2203_p1 = sub11_reg_3637_pp0_iter5_reg;
assign bitcast_ln396_1_fu_2440_p1 = sub1818_1_reg_3710;
assign bitcast_ln396_fu_2288_p1 = reg_1174;
assign bitcast_ln398_1_fu_2306_p1 = add1720_1_reg_3416_pp0_iter4_reg;
assign bitcast_ln398_fu_2173_p1 = add10_reg_3386_pp0_iter4_reg;
assign bitcast_ln399_1_fu_2256_p1 = add1799_1_reg_3612_pp0_iter4_reg;
assign bitcast_ln399_fu_2148_p1 = add16_reg_3582_pp0_iter4_reg;
assign bitcast_ln400_1_fu_2339_p1 = add1736_1_reg_3652_pp0_iter5_reg;
assign bitcast_ln400_fu_2177_p1 = add12_reg_3632;
assign bitcast_ln401_1_fu_2358_p1 = add1815_1_reg_3705;
assign bitcast_ln401_fu_2207_p1 = add18_reg_3690;
assign bitcast_ln402_1_fu_2385_p1 = sub1726_1_reg_3426_pp0_iter5_reg;
assign bitcast_ln402_fu_2236_p1 = sub10_reg_3396_pp0_iter4_reg;
assign bitcast_ln403_1_fu_2404_p1 = sub1805_1_reg_3622_pp0_iter4_reg;
assign bitcast_ln403_fu_2293_p1 = sub17_reg_3592_pp0_iter4_reg;
assign bitcast_ln404_1_fu_2421_p1 = sub1742_1_reg_3662_pp0_iter5_reg;
assign bitcast_ln404_fu_2211_p1 = sub12_reg_3642_pp0_iter5_reg;
assign bitcast_ln405_1_fu_2444_p1 = sub1821_1_reg_3715;
assign bitcast_ln405_fu_2297_p1 = reg_1180;
assign c0_x_12_fu_1363_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_24_q0 : DATA_x_8_q0);
assign c0_x_14_fu_1371_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_25_q0 : DATA_x_9_q0);
assign c0_x_16_fu_1379_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_26_q0 : DATA_x_10_q0);
assign c0_x_17_fu_1387_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_27_q0 : DATA_x_11_q0);
assign c0_x_2_fu_1307_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_17_q0 : DATA_x_1_q0);
assign c0_x_4_fu_1315_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_18_q0 : DATA_x_2_q0);
assign c0_x_5_fu_1323_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_19_q0 : DATA_x_3_q0);
assign c0_x_fu_1299_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_16_q0 : DATA_x_q0);
assign grp_fu_2121_p_ce = 1'b1;
assign grp_fu_2121_p_din0 = grp_fu_1056_p0;
assign grp_fu_2121_p_din1 = grp_fu_1056_p1;
assign grp_fu_2121_p_opcode = grp_fu_1056_opcode;
assign grp_fu_2125_p_ce = 1'b1;
assign grp_fu_2125_p_din0 = grp_fu_1060_p0;
assign grp_fu_2125_p_din1 = grp_fu_1060_p1;
assign grp_fu_2125_p_opcode = grp_fu_1060_opcode;
assign grp_fu_2129_p_ce = 1'b1;
assign grp_fu_2129_p_din0 = grp_fu_1064_p0;
assign grp_fu_2129_p_din1 = grp_fu_1064_p1;
assign grp_fu_2129_p_opcode = grp_fu_1064_opcode;
assign grp_fu_2133_p_ce = 1'b1;
assign grp_fu_2133_p_din0 = grp_fu_1068_p0;
assign grp_fu_2133_p_din1 = grp_fu_1068_p1;
assign grp_fu_2133_p_opcode = grp_fu_1068_opcode;
assign grp_fu_2137_p_ce = 1'b1;
assign grp_fu_2137_p_din0 = grp_fu_1072_p0;
assign grp_fu_2137_p_din1 = grp_fu_1072_p1;
assign grp_fu_2137_p_opcode = grp_fu_1072_opcode;
assign grp_fu_2141_p_ce = 1'b1;
assign grp_fu_2141_p_din0 = grp_fu_1076_p0;
assign grp_fu_2141_p_din1 = grp_fu_1076_p1;
assign grp_fu_2141_p_opcode = grp_fu_1076_opcode;
assign grp_fu_2145_p_ce = 1'b1;
assign grp_fu_2145_p_din0 = grp_fu_1080_p0;
assign grp_fu_2145_p_din1 = grp_fu_1080_p1;
assign grp_fu_2145_p_opcode = grp_fu_1080_opcode;
assign grp_fu_2149_p_ce = 1'b1;
assign grp_fu_2149_p_din0 = grp_fu_1084_p0;
assign grp_fu_2149_p_din1 = grp_fu_1084_p1;
assign grp_fu_2149_p_opcode = grp_fu_1084_opcode;
assign grp_fu_2153_p_ce = 1'b1;
assign grp_fu_2153_p_din0 = grp_fu_1088_p0;
assign grp_fu_2153_p_din1 = grp_fu_1088_p1;
assign grp_fu_2153_p_opcode = grp_fu_1088_opcode;
assign grp_fu_2157_p_ce = 1'b1;
assign grp_fu_2157_p_din0 = grp_fu_1092_p0;
assign grp_fu_2157_p_din1 = grp_fu_1092_p1;
assign grp_fu_2157_p_opcode = grp_fu_1092_opcode;
assign grp_fu_2161_p_ce = 1'b1;
assign grp_fu_2161_p_din0 = grp_fu_1128_p0;
assign grp_fu_2161_p_din1 = grp_fu_1128_p1;
assign grp_fu_2166_p_ce = 1'b1;
assign grp_fu_2166_p_din0 = grp_fu_1133_p0;
assign grp_fu_2166_p_din1 = grp_fu_1133_p1;
assign grp_fu_2171_p_ce = 1'b1;
assign grp_fu_2171_p_din0 = grp_fu_1138_p0;
assign grp_fu_2171_p_din1 = grp_fu_1138_p1;
assign grp_fu_2176_p_ce = 1'b1;
assign grp_fu_2176_p_din0 = grp_fu_1143_p0;
assign grp_fu_2176_p_din1 = grp_fu_1143_p1;
assign icmp_ln376_fu_1293_p2 = ((trunc_ln365_fu_1290_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1214_p4 = {{ap_sig_allocacmp_tid_5[5:2]}};
assign or_ln_fu_1270_p3 = {{tmp_s_fu_1260_p4}, {1'd1}};
assign select_ln380_1_fu_1395_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_28_q0 : DATA_x_12_q0);
assign select_ln380_fu_1331_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_20_q0 : DATA_x_4_q0);
assign select_ln381_1_fu_1403_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_29_q0 : DATA_x_13_q0);
assign select_ln381_fu_1339_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_21_q0 : DATA_x_5_q0);
assign select_ln382_1_fu_1411_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_30_q0 : DATA_x_14_q0);
assign select_ln382_fu_1347_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_22_q0 : DATA_x_6_q0);
assign select_ln383_1_fu_1419_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_31_q0 : DATA_x_15_q0);
assign select_ln383_fu_1355_p3 = ((icmp_ln376_fu_1293_p2[0:0] == 1'b1) ? DATA_x_23_q0 : DATA_x_7_q0);
assign sext_ln392_fu_2181_p1 = zext_ln390_cast_reg_3679;
assign sext_ln395_1_fu_2408_p1 = zext_ln391_1_cast_reg_3731;
assign sext_ln395_fu_2194_p1 = zext_ln391_cast_reg_3695;
assign sext_ln396_1_fu_2430_p1 = $signed(add_ln396_fu_2425_p2);
assign sext_ln396_fu_2279_p1 = zext_ln390_cast_reg_3679;
assign tmp_78_fu_2310_p4 = {{tid_5_reg_2455_pp0_iter5_reg[6:1]}};
assign tmp_s_fu_1260_p4 = {{ap_sig_allocacmp_tid_5[5:1]}};
assign trunc_ln365_fu_1290_p1 = tid_5_reg_2455[1:0];
assign trunc_ln386_10_fu_1584_p1 = bitcast_ln386_20_fu_1567_p1[62:0];
assign trunc_ln386_11_fu_1618_p1 = bitcast_ln386_22_fu_1601_p1[62:0];
assign trunc_ln386_12_fu_1802_p1 = bitcast_ln386_24_fu_1785_p1[62:0];
assign trunc_ln386_13_fu_1836_p1 = bitcast_ln386_26_fu_1819_p1[62:0];
assign trunc_ln386_14_fu_1653_p1 = bitcast_ln386_28_fu_1635_p1[62:0];
assign trunc_ln386_15_fu_1689_p1 = bitcast_ln386_30_fu_1671_p1[62:0];
assign trunc_ln386_16_fu_1938_p1 = bitcast_ln386_32_fu_1921_p1[62:0];
assign trunc_ln386_17_fu_1972_p1 = bitcast_ln386_34_fu_1955_p1[62:0];
assign trunc_ln386_18_fu_2076_p1 = bitcast_ln386_36_fu_2059_p1[62:0];
assign trunc_ln386_19_fu_2110_p1 = bitcast_ln386_38_fu_2093_p1[62:0];
assign trunc_ln386_1_fu_1478_p1 = bitcast_ln386_2_fu_1461_p1[62:0];
assign trunc_ln386_2_fu_1734_p1 = bitcast_ln386_4_fu_1717_p1[62:0];
assign trunc_ln386_3_fu_1768_p1 = bitcast_ln386_6_fu_1751_p1[62:0];
assign trunc_ln386_4_fu_1513_p1 = bitcast_ln386_8_fu_1495_p1[62:0];
assign trunc_ln386_5_fu_1549_p1 = bitcast_ln386_10_fu_1531_p1[62:0];
assign trunc_ln386_6_fu_1870_p1 = bitcast_ln386_12_fu_1853_p1[62:0];
assign trunc_ln386_7_fu_1904_p1 = bitcast_ln386_14_fu_1887_p1[62:0];
assign trunc_ln386_8_fu_2007_p1 = bitcast_ln386_16_fu_1989_p1[62:0];
assign trunc_ln386_9_fu_2042_p1 = bitcast_ln386_18_fu_2024_p1[62:0];
assign trunc_ln386_fu_1444_p1 = bitcast_ln386_fu_1427_p1[62:0];
assign trunc_ln390_fu_2127_p1 = tid_5_reg_2455_pp0_iter4_reg[5:0];
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
assign xor_ln386_10_fu_1622_p3 = {{xor_ln386_29_fu_1612_p2}, {trunc_ln386_11_fu_1618_p1}};
assign xor_ln386_11_fu_1806_p3 = {{xor_ln386_30_fu_1796_p2}, {trunc_ln386_12_fu_1802_p1}};
assign xor_ln386_12_fu_1840_p3 = {{xor_ln386_31_fu_1830_p2}, {trunc_ln386_13_fu_1836_p1}};
assign xor_ln386_13_fu_1657_p3 = {{xor_ln386_32_fu_1647_p2}, {trunc_ln386_14_fu_1653_p1}};
assign xor_ln386_14_fu_1693_p3 = {{xor_ln386_33_fu_1683_p2}, {trunc_ln386_15_fu_1689_p1}};
assign xor_ln386_15_fu_1942_p3 = {{xor_ln386_34_fu_1932_p2}, {trunc_ln386_16_fu_1938_p1}};
assign xor_ln386_16_fu_1976_p3 = {{xor_ln386_35_fu_1966_p2}, {trunc_ln386_17_fu_1972_p1}};
assign xor_ln386_17_fu_2080_p3 = {{xor_ln386_36_fu_2070_p2}, {trunc_ln386_18_fu_2076_p1}};
assign xor_ln386_18_fu_2114_p3 = {{xor_ln386_37_fu_2104_p2}, {trunc_ln386_19_fu_2110_p1}};
assign xor_ln386_19_fu_1438_p2 = (bit_sel_fu_1430_p3 ^ 1'd1);
assign xor_ln386_1_fu_1482_p3 = {{xor_ln386_fu_1472_p2}, {trunc_ln386_1_fu_1478_p1}};
assign xor_ln386_20_fu_1728_p2 = (bit_sel2_fu_1720_p3 ^ 1'd1);
assign xor_ln386_21_fu_1762_p2 = (bit_sel3_fu_1754_p3 ^ 1'd1);
assign xor_ln386_22_fu_1507_p2 = (bit_sel4_fu_1499_p3 ^ 1'd1);
assign xor_ln386_23_fu_1543_p2 = (bit_sel5_fu_1535_p3 ^ 1'd1);
assign xor_ln386_24_fu_1864_p2 = (bit_sel6_fu_1856_p3 ^ 1'd1);
assign xor_ln386_25_fu_1898_p2 = (bit_sel7_fu_1890_p3 ^ 1'd1);
assign xor_ln386_26_fu_2001_p2 = (bit_sel8_fu_1993_p3 ^ 1'd1);
assign xor_ln386_27_fu_2036_p2 = (bit_sel9_fu_2028_p3 ^ 1'd1);
assign xor_ln386_28_fu_1578_p2 = (bit_sel10_fu_1570_p3 ^ 1'd1);
assign xor_ln386_29_fu_1612_p2 = (bit_sel11_fu_1604_p3 ^ 1'd1);
assign xor_ln386_2_fu_1738_p3 = {{xor_ln386_20_fu_1728_p2}, {trunc_ln386_2_fu_1734_p1}};
assign xor_ln386_30_fu_1796_p2 = (bit_sel12_fu_1788_p3 ^ 1'd1);
assign xor_ln386_31_fu_1830_p2 = (bit_sel13_fu_1822_p3 ^ 1'd1);
assign xor_ln386_32_fu_1647_p2 = (bit_sel14_fu_1639_p3 ^ 1'd1);
assign xor_ln386_33_fu_1683_p2 = (bit_sel15_fu_1675_p3 ^ 1'd1);
assign xor_ln386_34_fu_1932_p2 = (bit_sel16_fu_1924_p3 ^ 1'd1);
assign xor_ln386_35_fu_1966_p2 = (bit_sel17_fu_1958_p3 ^ 1'd1);
assign xor_ln386_36_fu_2070_p2 = (bit_sel18_fu_2062_p3 ^ 1'd1);
assign xor_ln386_37_fu_2104_p2 = (bit_sel19_fu_2096_p3 ^ 1'd1);
assign xor_ln386_3_fu_1772_p3 = {{xor_ln386_21_fu_1762_p2}, {trunc_ln386_3_fu_1768_p1}};
assign xor_ln386_4_fu_1517_p3 = {{xor_ln386_22_fu_1507_p2}, {trunc_ln386_4_fu_1513_p1}};
assign xor_ln386_5_fu_1553_p3 = {{xor_ln386_23_fu_1543_p2}, {trunc_ln386_5_fu_1549_p1}};
assign xor_ln386_6_fu_1874_p3 = {{xor_ln386_24_fu_1864_p2}, {trunc_ln386_6_fu_1870_p1}};
assign xor_ln386_7_fu_1908_p3 = {{xor_ln386_25_fu_1898_p2}, {trunc_ln386_7_fu_1904_p1}};
assign xor_ln386_8_fu_2011_p3 = {{xor_ln386_26_fu_2001_p2}, {trunc_ln386_8_fu_2007_p1}};
assign xor_ln386_9_fu_2046_p3 = {{xor_ln386_27_fu_2036_p2}, {trunc_ln386_9_fu_2042_p1}};
assign xor_ln386_fu_1472_p2 = (bit_sel1_fu_1464_p3 ^ 1'd1);
assign xor_ln386_s_fu_1588_p3 = {{xor_ln386_28_fu_1578_p2}, {trunc_ln386_10_fu_1584_p1}};
assign xor_ln3_fu_1448_p3 = {{xor_ln386_19_fu_1438_p2}, {trunc_ln386_fu_1444_p1}};
assign zext_ln365_1_fu_2260_p1 = tid_5_reg_2455_pp0_iter5_reg;
assign zext_ln365_2_fu_2215_p1 = tid_5_reg_2455_pp0_iter5_reg;
assign zext_ln365_fu_1202_p1 = ap_sig_allocacmp_tid_5;
assign zext_ln367_1_fu_1278_p1 = or_ln_fu_1270_p3;
assign zext_ln367_fu_1224_p1 = lshr_ln_fu_1214_p4;
assign zext_ln390_1_fu_2246_p1 = add_ln390_fu_2240_p2;
assign zext_ln390_cast_fu_2130_p3 = {{1'd1}, {trunc_ln390_fu_2127_p1}};
assign zext_ln390_fu_2138_p1 = $unsigned(zext_ln390_cast_fu_2130_p3);
assign zext_ln391_1_cast_fu_2319_p4 = {{{{1'd1}, {tmp_78_fu_2310_p4}}}, {1'd1}};
assign zext_ln391_1_fu_2329_p1 = $unsigned(zext_ln391_1_cast_fu_2319_p4);
assign zext_ln391_cast_fu_2156_p3 = {{1'd1}, {tid_5_reg_2455_pp0_iter4_reg}};
assign zext_ln391_fu_2163_p1 = $unsigned(zext_ln391_cast_fu_2156_p3);
assign zext_ln392_1_fu_2348_p1 = add_ln392_fu_2343_p2;
assign zext_ln392_fu_2184_p1 = $unsigned(sext_ln392_fu_2181_p1);
assign zext_ln393_1_cast_fu_2365_p4 = {{{{1'd1}, {zext_ln393_1_fu_2362_p1}}}, {1'd1}};
assign zext_ln393_1_fu_2362_p1 = tmp_78_reg_3726;
assign zext_ln393_2_fu_2375_p1 = zext_ln393_1_cast_fu_2365_p4;
assign zext_ln393_cast_fu_2218_p3 = {{1'd1}, {zext_ln365_2_fu_2215_p1}};
assign zext_ln393_fu_2226_p1 = zext_ln393_cast_fu_2218_p3;
assign zext_ln394_1_fu_2394_p1 = add_ln394_1_fu_2389_p2;
assign zext_ln394_fu_2269_p1 = add_ln394_fu_2263_p2;
assign zext_ln395_1_fu_2411_p1 = $unsigned(sext_ln395_1_fu_2408_p1);
assign zext_ln395_fu_2197_p1 = $unsigned(sext_ln395_fu_2194_p1);
assign zext_ln396_1_fu_2434_p1 = $unsigned(sext_ln396_1_fu_2430_p1);
assign zext_ln396_fu_2282_p1 = $unsigned(sext_ln396_fu_2279_p1);
always @ (posedge ap_clk) begin
    zext_ln365_reg_2471[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_2471_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_2471_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_2471_pp0_iter3_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_2471_pp0_iter4_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln367_1_reg_2597[0] <= 1'b1;
    zext_ln367_1_reg_2597[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_1_reg_2597_pp0_iter1_reg[0] <= 1'b1;
    zext_ln367_1_reg_2597_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_1_reg_2597_pp0_iter2_reg[0] <= 1'b1;
    zext_ln367_1_reg_2597_pp0_iter2_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_1_reg_2597_pp0_iter3_reg[0] <= 1'b1;
    zext_ln367_1_reg_2597_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_1_reg_2597_pp0_iter4_reg[0] <= 1'b1;
    zext_ln367_1_reg_2597_pp0_iter4_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln367_1_reg_2597_pp0_iter5_reg[0] <= 1'b1;
    zext_ln367_1_reg_2597_pp0_iter5_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln390_cast_reg_3679[6] <= 1'b1;
    zext_ln391_cast_reg_3695[7] <= 1'b1;
    zext_ln365_1_reg_3720[8:7] <= 2'b00;
    zext_ln391_1_cast_reg_3731[0] <= 1'b1;
    zext_ln391_1_cast_reg_3731[7] <= 1'b1;
end
endmodule 