
module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_16_address0,DATA_x_16_ce0,DATA_x_16_q0,DATA_x_24_address0,DATA_x_24_ce0,DATA_x_24_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_17_address0,DATA_x_17_ce0,DATA_x_17_q0,DATA_x_25_address0,DATA_x_25_ce0,DATA_x_25_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_18_address0,DATA_x_18_ce0,DATA_x_18_q0,DATA_x_26_address0,DATA_x_26_ce0,DATA_x_26_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_19_address0,DATA_x_19_ce0,DATA_x_19_q0,DATA_x_27_address0,DATA_x_27_ce0,DATA_x_27_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_20_address0,DATA_x_20_ce0,DATA_x_20_q0,DATA_x_28_address0,DATA_x_28_ce0,DATA_x_28_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_21_address0,DATA_x_21_ce0,DATA_x_21_q0,DATA_x_29_address0,DATA_x_29_ce0,DATA_x_29_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_22_address0,DATA_x_22_ce0,DATA_x_22_q0,DATA_x_30_address0,DATA_x_30_ce0,DATA_x_30_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,DATA_x_23_address0,DATA_x_23_ce0,DATA_x_23_q0,DATA_x_31_address0,DATA_x_31_ce0,DATA_x_31_q0,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,grp_fu_996_p_din0,grp_fu_996_p_din1,grp_fu_996_p_opcode,grp_fu_996_p_dout0,grp_fu_996_p_ce,grp_fu_1000_p_din0,grp_fu_1000_p_din1,grp_fu_1000_p_opcode,grp_fu_1000_p_dout0,grp_fu_1000_p_ce,grp_fu_1004_p_din0,grp_fu_1004_p_din1,grp_fu_1004_p_opcode,grp_fu_1004_p_dout0,grp_fu_1004_p_ce,grp_fu_1008_p_din0,grp_fu_1008_p_din1,grp_fu_1008_p_opcode,grp_fu_1008_p_dout0,grp_fu_1008_p_ce,grp_fu_1012_p_din0,grp_fu_1012_p_din1,grp_fu_1012_p_opcode,grp_fu_1012_p_dout0,grp_fu_1012_p_ce,grp_fu_1016_p_din0,grp_fu_1016_p_din1,grp_fu_1016_p_opcode,grp_fu_1016_p_dout0,grp_fu_1016_p_ce,grp_fu_1020_p_din0,grp_fu_1020_p_din1,grp_fu_1020_p_opcode,grp_fu_1020_p_dout0,grp_fu_1020_p_ce,grp_fu_1024_p_din0,grp_fu_1024_p_din1,grp_fu_1024_p_opcode,grp_fu_1024_p_dout0,grp_fu_1024_p_ce,grp_fu_1028_p_din0,grp_fu_1028_p_din1,grp_fu_1028_p_opcode,grp_fu_1028_p_dout0,grp_fu_1028_p_ce,grp_fu_1032_p_din0,grp_fu_1032_p_din1,grp_fu_1032_p_opcode,grp_fu_1032_p_dout0,grp_fu_1032_p_ce,grp_fu_1036_p_din0,grp_fu_1036_p_din1,grp_fu_1036_p_opcode,grp_fu_1036_p_dout0,grp_fu_1036_p_ce,grp_fu_1040_p_din0,grp_fu_1040_p_din1,grp_fu_1040_p_opcode,grp_fu_1040_p_dout0,grp_fu_1040_p_ce,grp_fu_1044_p_din0,grp_fu_1044_p_din1,grp_fu_1044_p_opcode,grp_fu_1044_p_dout0,grp_fu_1044_p_ce,grp_fu_1048_p_din0,grp_fu_1048_p_din1,grp_fu_1048_p_opcode,grp_fu_1048_p_dout0,grp_fu_1048_p_ce,grp_fu_1052_p_din0,grp_fu_1052_p_din1,grp_fu_1052_p_opcode,grp_fu_1052_p_dout0,grp_fu_1052_p_ce,grp_fu_1056_p_din0,grp_fu_1056_p_din1,grp_fu_1056_p_dout0,grp_fu_1056_p_ce,grp_fu_1060_p_din0,grp_fu_1060_p_din1,grp_fu_1060_p_dout0,grp_fu_1060_p_ce,grp_fu_1064_p_din0,grp_fu_1064_p_din1,grp_fu_1064_p_dout0,grp_fu_1064_p_ce,grp_fu_1093_p_din0,grp_fu_1093_p_din1,grp_fu_1093_p_dout0,grp_fu_1093_p_ce);  
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
output  [63:0] grp_fu_996_p_din0;
output  [63:0] grp_fu_996_p_din1;
output  [1:0] grp_fu_996_p_opcode;
input  [63:0] grp_fu_996_p_dout0;
output   grp_fu_996_p_ce;
output  [63:0] grp_fu_1000_p_din0;
output  [63:0] grp_fu_1000_p_din1;
output  [1:0] grp_fu_1000_p_opcode;
input  [63:0] grp_fu_1000_p_dout0;
output   grp_fu_1000_p_ce;
output  [63:0] grp_fu_1004_p_din0;
output  [63:0] grp_fu_1004_p_din1;
output  [1:0] grp_fu_1004_p_opcode;
input  [63:0] grp_fu_1004_p_dout0;
output   grp_fu_1004_p_ce;
output  [63:0] grp_fu_1008_p_din0;
output  [63:0] grp_fu_1008_p_din1;
output  [1:0] grp_fu_1008_p_opcode;
input  [63:0] grp_fu_1008_p_dout0;
output   grp_fu_1008_p_ce;
output  [63:0] grp_fu_1012_p_din0;
output  [63:0] grp_fu_1012_p_din1;
output  [1:0] grp_fu_1012_p_opcode;
input  [63:0] grp_fu_1012_p_dout0;
output   grp_fu_1012_p_ce;
output  [63:0] grp_fu_1016_p_din0;
output  [63:0] grp_fu_1016_p_din1;
output  [1:0] grp_fu_1016_p_opcode;
input  [63:0] grp_fu_1016_p_dout0;
output   grp_fu_1016_p_ce;
output  [63:0] grp_fu_1020_p_din0;
output  [63:0] grp_fu_1020_p_din1;
output  [1:0] grp_fu_1020_p_opcode;
input  [63:0] grp_fu_1020_p_dout0;
output   grp_fu_1020_p_ce;
output  [63:0] grp_fu_1024_p_din0;
output  [63:0] grp_fu_1024_p_din1;
output  [1:0] grp_fu_1024_p_opcode;
input  [63:0] grp_fu_1024_p_dout0;
output   grp_fu_1024_p_ce;
output  [63:0] grp_fu_1028_p_din0;
output  [63:0] grp_fu_1028_p_din1;
output  [1:0] grp_fu_1028_p_opcode;
input  [63:0] grp_fu_1028_p_dout0;
output   grp_fu_1028_p_ce;
output  [63:0] grp_fu_1032_p_din0;
output  [63:0] grp_fu_1032_p_din1;
output  [1:0] grp_fu_1032_p_opcode;
input  [63:0] grp_fu_1032_p_dout0;
output   grp_fu_1032_p_ce;
output  [63:0] grp_fu_1036_p_din0;
output  [63:0] grp_fu_1036_p_din1;
output  [1:0] grp_fu_1036_p_opcode;
input  [63:0] grp_fu_1036_p_dout0;
output   grp_fu_1036_p_ce;
output  [63:0] grp_fu_1040_p_din0;
output  [63:0] grp_fu_1040_p_din1;
output  [1:0] grp_fu_1040_p_opcode;
input  [63:0] grp_fu_1040_p_dout0;
output   grp_fu_1040_p_ce;
output  [63:0] grp_fu_1044_p_din0;
output  [63:0] grp_fu_1044_p_din1;
output  [1:0] grp_fu_1044_p_opcode;
input  [63:0] grp_fu_1044_p_dout0;
output   grp_fu_1044_p_ce;
output  [63:0] grp_fu_1048_p_din0;
output  [63:0] grp_fu_1048_p_din1;
output  [1:0] grp_fu_1048_p_opcode;
input  [63:0] grp_fu_1048_p_dout0;
output   grp_fu_1048_p_ce;
output  [63:0] grp_fu_1052_p_din0;
output  [63:0] grp_fu_1052_p_din1;
output  [1:0] grp_fu_1052_p_opcode;
input  [63:0] grp_fu_1052_p_dout0;
output   grp_fu_1052_p_ce;
output  [63:0] grp_fu_1056_p_din0;
output  [63:0] grp_fu_1056_p_din1;
input  [63:0] grp_fu_1056_p_dout0;
output   grp_fu_1056_p_ce;
output  [63:0] grp_fu_1060_p_din0;
output  [63:0] grp_fu_1060_p_din1;
input  [63:0] grp_fu_1060_p_dout0;
output   grp_fu_1060_p_ce;
output  [63:0] grp_fu_1064_p_din0;
output  [63:0] grp_fu_1064_p_din1;
input  [63:0] grp_fu_1064_p_dout0;
output   grp_fu_1064_p_ce;
output  [63:0] grp_fu_1093_p_din0;
output  [63:0] grp_fu_1093_p_din1;
input  [63:0] grp_fu_1093_p_dout0;
output   grp_fu_1093_p_ce;
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
reg   [0:0] icmp_ln365_reg_1695;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_5_reg_1685;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_5_reg_1685_pp0_iter1_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter2_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter3_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter4_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter5_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter6_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter7_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter8_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter9_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter10_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter11_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter12_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter13_reg;
reg   [6:0] tid_5_reg_1685_pp0_iter14_reg;
wire   [0:0] icmp_ln365_fu_914_p2;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter1_reg;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter2_reg;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter3_reg;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter4_reg;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter5_reg;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter6_reg;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter7_reg;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter8_reg;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter9_reg;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter10_reg;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter11_reg;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter12_reg;
reg   [0:0] icmp_ln365_reg_1695_pp0_iter13_reg;
wire   [63:0] zext_ln365_fu_920_p1;
reg   [63:0] zext_ln365_reg_1699;
reg   [63:0] zext_ln365_reg_1699_pp0_iter1_reg;
reg   [63:0] zext_ln365_reg_1699_pp0_iter2_reg;
reg   [63:0] zext_ln365_reg_1699_pp0_iter3_reg;
reg   [63:0] zext_ln365_reg_1699_pp0_iter4_reg;
reg   [63:0] zext_ln365_reg_1699_pp0_iter5_reg;
reg   [63:0] zext_ln365_reg_1699_pp0_iter6_reg;
reg   [63:0] zext_ln365_reg_1699_pp0_iter7_reg;
reg   [63:0] zext_ln365_reg_1699_pp0_iter8_reg;
reg   [63:0] zext_ln365_reg_1699_pp0_iter9_reg;
reg   [63:0] zext_ln365_reg_1699_pp0_iter10_reg;
reg   [63:0] zext_ln365_reg_1699_pp0_iter11_reg;
reg   [63:0] zext_ln365_reg_1699_pp0_iter12_reg;
reg   [63:0] zext_ln365_reg_1699_pp0_iter13_reg;
reg   [63:0] c0_y_reg_1905;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] c0_y_29_reg_1911;
reg   [63:0] c0_y_30_reg_1917;
reg   [63:0] c0_y_31_reg_1922;
reg   [63:0] DATA_y_4_load_reg_1928;
reg   [63:0] DATA_y_5_load_reg_1934;
reg   [63:0] DATA_y_6_load_reg_1940;
reg   [63:0] DATA_y_7_load_reg_1945;
wire   [63:0] c0_x_fu_981_p11;
reg   [63:0] c0_x_reg_1951;
wire   [63:0] c0_x_19_fu_1005_p11;
reg   [63:0] c0_x_19_reg_1957;
wire   [63:0] c0_x_20_fu_1029_p11;
reg   [63:0] c0_x_20_reg_1963;
wire   [63:0] c0_x_21_fu_1053_p11;
reg   [63:0] c0_x_21_reg_1968;
wire   [63:0] tmp_s_fu_1077_p11;
reg   [63:0] tmp_s_reg_1974;
wire   [63:0] tmp_89_fu_1101_p11;
reg   [63:0] tmp_89_reg_1980;
wire   [63:0] tmp_90_fu_1125_p11;
reg   [63:0] tmp_90_reg_1986;
wire   [63:0] tmp_91_fu_1149_p11;
reg   [63:0] tmp_91_reg_1991;
reg   [63:0] c0_x_23_reg_1997;
reg   [63:0] c0_y_20_reg_2003;
reg   [63:0] tmp_1_reg_2009;
reg   [63:0] sub_reg_2015;
reg   [63:0] tmp_1_1_reg_2021;
reg   [63:0] tmp_1_1_reg_2021_pp0_iter3_reg;
reg   [63:0] tmp_1_1_reg_2021_pp0_iter4_reg;
reg   [63:0] sub12_reg_2027;
reg   [63:0] sub12_reg_2027_pp0_iter3_reg;
reg   [63:0] sub12_reg_2027_pp0_iter4_reg;
reg   [63:0] add12_reg_2033;
reg   [63:0] add13_reg_2039;
reg   [63:0] tmp_1_2_reg_2045;
reg   [63:0] sub13_reg_2050;
reg   [63:0] c0_x_29_reg_2055;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_32_reg_2061;
reg   [63:0] c0_x_22_reg_2067;
reg   [63:0] c0_x_22_reg_2067_pp0_iter3_reg;
reg   [63:0] c0_x_22_reg_2067_pp0_iter4_reg;
reg   [63:0] c0_x_22_reg_2067_pp0_iter5_reg;
reg   [63:0] c0_x_22_reg_2067_pp0_iter6_reg;
reg   [63:0] c0_y_19_reg_2073;
reg   [63:0] c0_y_19_reg_2073_pp0_iter3_reg;
reg   [63:0] c0_y_19_reg_2073_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_2073_pp0_iter5_reg;
reg   [63:0] c0_y_19_reg_2073_pp0_iter6_reg;
reg   [63:0] add_reg_2079;
reg   [63:0] add11_reg_2085;
wire   [63:0] bitcast_ln386_1_fu_1212_p1;
wire   [63:0] bitcast_ln386_3_fu_1246_p1;
wire   [63:0] bitcast_ln386_9_fu_1280_p1;
wire   [63:0] bitcast_ln386_11_fu_1315_p1;
reg   [63:0] sub14_reg_2113;
reg   [63:0] add14_reg_2118;
reg   [63:0] mul_reg_2123;
reg   [63:0] mul6_reg_2128;
reg   [63:0] sub16_reg_2133;
reg   [63:0] add16_reg_2138;
reg   [63:0] tmp_8_reg_2143;
reg   [63:0] tmp_8_reg_2143_pp0_iter5_reg;
reg   [63:0] tmp_8_reg_2143_pp0_iter6_reg;
reg   [63:0] c0_x_30_reg_2149;
reg   [63:0] c0_y_33_reg_2155;
reg   [63:0] sub17_reg_2161;
reg   [63:0] sub17_reg_2161_pp0_iter5_reg;
reg   [63:0] sub17_reg_2161_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_5_fu_1350_p1;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln386_7_fu_1384_p1;
reg   [63:0] c0_x_25_reg_2177;
reg   [63:0] c0_x_25_reg_2177_pp0_iter5_reg;
reg   [63:0] c0_x_25_reg_2177_pp0_iter6_reg;
reg   [63:0] c0_x_25_reg_2177_pp0_iter7_reg;
reg   [63:0] c0_x_25_reg_2177_pp0_iter8_reg;
reg   [63:0] c0_y_22_reg_2183;
reg   [63:0] c0_y_22_reg_2183_pp0_iter5_reg;
reg   [63:0] c0_y_22_reg_2183_pp0_iter6_reg;
reg   [63:0] c0_y_22_reg_2183_pp0_iter7_reg;
reg   [63:0] c0_y_22_reg_2183_pp0_iter8_reg;
reg   [63:0] add17_reg_2189;
reg   [63:0] add18_reg_2195;
reg   [63:0] c0_x_24_reg_2201;
reg   [63:0] c0_y_21_reg_2207;
reg   [63:0] mul7_reg_2213;
reg   [63:0] mul8_reg_2219;
reg   [63:0] mul9_reg_2225;
reg   [63:0] mul10_reg_2230;
reg   [63:0] sub15_reg_2235;
reg   [63:0] add15_reg_2241;
reg   [63:0] sub20_reg_2247;
reg   [63:0] sub20_reg_2247_pp0_iter7_reg;
reg   [63:0] sub20_reg_2247_pp0_iter8_reg;
reg   [63:0] sub20_reg_2247_pp0_iter9_reg;
reg   [63:0] sub20_reg_2247_pp0_iter10_reg;
reg   [63:0] sub20_reg_2247_pp0_iter11_reg;
reg   [63:0] sub20_reg_2247_pp0_iter12_reg;
reg   [63:0] sub20_reg_2247_pp0_iter13_reg;
reg   [63:0] sub21_reg_2252;
reg   [63:0] sub21_reg_2252_pp0_iter7_reg;
reg   [63:0] sub21_reg_2252_pp0_iter8_reg;
reg   [63:0] sub21_reg_2252_pp0_iter9_reg;
reg   [63:0] sub21_reg_2252_pp0_iter10_reg;
reg   [63:0] sub21_reg_2252_pp0_iter11_reg;
reg   [63:0] sub21_reg_2252_pp0_iter12_reg;
reg   [63:0] sub21_reg_2252_pp0_iter13_reg;
wire   [63:0] bitcast_ln386_13_fu_1418_p1;
wire   [63:0] bitcast_ln386_15_fu_1452_p1;
reg   [63:0] add19_reg_2267;
reg   [63:0] add19_reg_2267_pp0_iter8_reg;
reg   [63:0] add19_reg_2267_pp0_iter9_reg;
reg   [63:0] add19_reg_2267_pp0_iter10_reg;
reg   [63:0] add19_reg_2267_pp0_iter11_reg;
reg   [63:0] add19_reg_2267_pp0_iter12_reg;
reg   [63:0] add19_reg_2267_pp0_iter13_reg;
reg   [63:0] add20_reg_2272;
reg   [63:0] add20_reg_2272_pp0_iter8_reg;
reg   [63:0] add20_reg_2272_pp0_iter9_reg;
reg   [63:0] add20_reg_2272_pp0_iter10_reg;
reg   [63:0] add20_reg_2272_pp0_iter11_reg;
reg   [63:0] add20_reg_2272_pp0_iter12_reg;
reg   [63:0] add20_reg_2272_pp0_iter13_reg;
reg   [63:0] add23_reg_2277;
reg   [63:0] add23_reg_2277_pp0_iter9_reg;
reg   [63:0] add24_reg_2282;
reg   [63:0] add24_reg_2282_pp0_iter9_reg;
reg   [63:0] tmp_9_reg_2287;
reg   [63:0] tmp_9_reg_2287_pp0_iter9_reg;
reg   [63:0] sub24_reg_2293;
reg   [63:0] sub24_reg_2293_pp0_iter9_reg;
reg   [63:0] c0_x_31_reg_2299;
reg   [63:0] c0_y_34_reg_2304;
reg   [63:0] c0_x_26_reg_2309;
reg   [63:0] c0_x_26_reg_2309_pp0_iter9_reg;
reg   [63:0] c0_x_26_reg_2309_pp0_iter10_reg;
reg   [63:0] c0_x_26_reg_2309_pp0_iter11_reg;
reg   [63:0] c0_y_23_reg_2315;
reg   [63:0] c0_y_23_reg_2315_pp0_iter9_reg;
reg   [63:0] c0_y_23_reg_2315_pp0_iter10_reg;
reg   [63:0] c0_y_23_reg_2315_pp0_iter11_reg;
reg   [63:0] sub18_reg_2321;
reg   [63:0] sub19_reg_2327;
reg   [63:0] mul11_reg_2333;
reg   [63:0] mul12_reg_2338;
wire   [63:0] bitcast_ln386_17_fu_1486_p1;
wire   [63:0] bitcast_ln386_19_fu_1520_p1;
reg   [63:0] add21_reg_2353;
reg   [63:0] add21_reg_2353_pp0_iter11_reg;
reg   [63:0] add21_reg_2353_pp0_iter12_reg;
reg   [63:0] add25_reg_2358;
reg   [63:0] add25_reg_2358_pp0_iter11_reg;
reg   [63:0] add25_reg_2358_pp0_iter12_reg;
reg   [63:0] add26_reg_2363;
reg   [63:0] add26_reg_2363_pp0_iter11_reg;
reg   [63:0] add26_reg_2363_pp0_iter12_reg;
reg   [63:0] add22_reg_2368;
reg   [63:0] add22_reg_2368_pp0_iter12_reg;
reg   [63:0] add22_reg_2368_pp0_iter13_reg;
reg   [63:0] sub22_reg_2373;
reg   [63:0] sub22_reg_2373_pp0_iter12_reg;
reg   [63:0] sub22_reg_2373_pp0_iter13_reg;
reg   [63:0] sub22_reg_2373_pp0_iter14_reg;
reg   [63:0] sub23_reg_2378;
reg   [63:0] sub23_reg_2378_pp0_iter12_reg;
reg   [63:0] sub23_reg_2378_pp0_iter13_reg;
reg   [63:0] sub23_reg_2378_pp0_iter14_reg;
reg   [63:0] sub27_reg_2383;
reg   [63:0] sub27_reg_2383_pp0_iter12_reg;
reg   [63:0] sub27_reg_2383_pp0_iter13_reg;
reg   [63:0] sub27_reg_2383_pp0_iter14_reg;
reg   [63:0] sub28_reg_2388;
reg   [63:0] sub28_reg_2388_pp0_iter12_reg;
reg   [63:0] sub28_reg_2388_pp0_iter13_reg;
reg   [63:0] sub28_reg_2388_pp0_iter14_reg;
reg   [63:0] sub25_reg_2393;
reg   [63:0] sub26_reg_2399;
reg   [63:0] add27_reg_2405;
reg   [63:0] add28_reg_2410;
wire  signed [6:0] zext_ln390_cast_fu_1528_p3;
reg  signed [6:0] zext_ln390_cast_reg_2415;
wire  signed [7:0] zext_ln391_cast_fu_1546_p3;
reg  signed [7:0] zext_ln391_cast_reg_2421;
reg   [63:0] sub29_reg_2426;
reg   [63:0] sub30_reg_2431;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln367_fu_942_p1;
wire   [63:0] zext_ln390_fu_1536_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln391_fu_1553_p1;
wire   [63:0] zext_ln392_fu_1578_p1;
wire   [63:0] zext_ln393_1_fu_1607_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_1620_p1;
wire   [63:0] zext_ln394_fu_1647_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln396_fu_1660_p1;
reg   [6:0] tid_fu_152;
wire   [6:0] add_ln365_fu_1173_p2;
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
wire   [63:0] bitcast_ln390_fu_1542_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_1559_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln389_fu_1571_p1;
wire   [63:0] bitcast_ln392_fu_1584_p1;
wire   [63:0] bitcast_ln393_fu_1613_p1;
wire   [63:0] bitcast_ln395_fu_1626_p1;
wire   [63:0] bitcast_ln394_fu_1653_p1;
wire   [63:0] bitcast_ln396_fu_1666_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_1563_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_1567_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln398_fu_1588_p1;
wire   [63:0] bitcast_ln401_fu_1592_p1;
wire   [63:0] bitcast_ln402_fu_1630_p1;
wire   [63:0] bitcast_ln404_fu_1634_p1;
wire   [63:0] bitcast_ln403_fu_1670_p1;
wire   [63:0] bitcast_ln405_fu_1674_p1;
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
reg   [63:0] grp_fu_862_p0;
reg   [63:0] grp_fu_862_p1;
reg   [63:0] grp_fu_866_p0;
reg   [63:0] grp_fu_866_p1;
reg   [63:0] grp_fu_870_p0;
reg   [63:0] grp_fu_870_p1;
reg   [63:0] grp_fu_874_p0;
reg   [63:0] grp_fu_874_p1;
reg   [63:0] grp_fu_878_p0;
reg   [63:0] grp_fu_878_p1;
reg   [63:0] grp_fu_882_p0;
reg   [63:0] grp_fu_882_p1;
reg   [63:0] grp_fu_887_p0;
reg   [63:0] grp_fu_887_p1;
reg   [63:0] grp_fu_894_p0;
reg   [63:0] grp_fu_894_p1;
reg   [63:0] grp_fu_899_p0;
reg   [63:0] grp_fu_899_p1;
wire   [3:0] lshr_ln_fu_932_p4;
wire   [63:0] c0_x_fu_981_p9;
wire   [1:0] trunc_ln365_fu_978_p1;
wire   [63:0] c0_x_19_fu_1005_p9;
wire   [63:0] c0_x_20_fu_1029_p9;
wire   [63:0] c0_x_21_fu_1053_p9;
wire   [63:0] tmp_s_fu_1077_p9;
wire   [63:0] tmp_89_fu_1101_p9;
wire   [63:0] tmp_90_fu_1125_p9;
wire   [63:0] tmp_91_fu_1149_p9;
wire   [63:0] bitcast_ln386_fu_1183_p1;
wire   [0:0] bit_sel_fu_1186_p3;
wire   [0:0] xor_ln386_10_fu_1194_p2;
wire   [62:0] trunc_ln386_fu_1200_p1;
wire   [63:0] xor_ln3_fu_1204_p3;
wire   [63:0] bitcast_ln386_2_fu_1217_p1;
wire   [0:0] bit_sel20_fu_1220_p3;
wire   [0:0] xor_ln386_fu_1228_p2;
wire   [62:0] trunc_ln386_1_fu_1234_p1;
wire   [63:0] xor_ln386_1_fu_1238_p3;
wire   [63:0] bitcast_ln386_8_fu_1251_p1;
wire   [0:0] bit_sel23_fu_1254_p3;
wire   [0:0] xor_ln386_13_fu_1262_p2;
wire   [62:0] trunc_ln386_4_fu_1268_p1;
wire   [63:0] xor_ln386_4_fu_1272_p3;
wire   [63:0] bitcast_ln386_10_fu_1286_p1;
wire   [0:0] bit_sel24_fu_1289_p3;
wire   [0:0] xor_ln386_14_fu_1297_p2;
wire   [62:0] trunc_ln386_5_fu_1303_p1;
wire   [63:0] xor_ln386_5_fu_1307_p3;
wire   [63:0] bitcast_ln386_4_fu_1321_p1;
wire   [0:0] bit_sel21_fu_1324_p3;
wire   [0:0] xor_ln386_11_fu_1332_p2;
wire   [62:0] trunc_ln386_2_fu_1338_p1;
wire   [63:0] xor_ln386_2_fu_1342_p3;
wire   [63:0] bitcast_ln386_6_fu_1355_p1;
wire   [0:0] bit_sel22_fu_1358_p3;
wire   [0:0] xor_ln386_12_fu_1366_p2;
wire   [62:0] trunc_ln386_3_fu_1372_p1;
wire   [63:0] xor_ln386_3_fu_1376_p3;
wire   [63:0] bitcast_ln386_12_fu_1389_p1;
wire   [0:0] bit_sel25_fu_1392_p3;
wire   [0:0] xor_ln386_15_fu_1400_p2;
wire   [62:0] trunc_ln386_6_fu_1406_p1;
wire   [63:0] xor_ln386_6_fu_1410_p3;
wire   [63:0] bitcast_ln386_14_fu_1423_p1;
wire   [0:0] bit_sel26_fu_1426_p3;
wire   [0:0] xor_ln386_16_fu_1434_p2;
wire   [62:0] trunc_ln386_7_fu_1440_p1;
wire   [63:0] xor_ln386_7_fu_1444_p3;
wire   [63:0] bitcast_ln386_16_fu_1457_p1;
wire   [0:0] bit_sel27_fu_1460_p3;
wire   [0:0] xor_ln386_17_fu_1468_p2;
wire   [62:0] trunc_ln386_8_fu_1474_p1;
wire   [63:0] xor_ln386_8_fu_1478_p3;
wire   [63:0] bitcast_ln386_18_fu_1491_p1;
wire   [0:0] bit_sel28_fu_1494_p3;
wire   [0:0] xor_ln386_18_fu_1502_p2;
wire   [62:0] trunc_ln386_9_fu_1508_p1;
wire   [63:0] xor_ln386_9_fu_1512_p3;
wire   [5:0] trunc_ln390_fu_1525_p1;
wire  signed [7:0] sext_ln392_fu_1575_p1;
wire   [7:0] zext_ln393_fu_1596_p1;
wire   [8:0] zext_ln393_cast_fu_1599_p3;
wire  signed [8:0] sext_ln395_fu_1617_p1;
wire   [8:0] zext_ln365_1_fu_1638_p1;
wire   [8:0] add_ln394_fu_1641_p2;
wire  signed [8:0] sext_ln396_fu_1657_p1;
reg   [1:0] grp_fu_822_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
reg   [1:0] grp_fu_826_opcode;
reg   [1:0] grp_fu_830_opcode;
reg   [1:0] grp_fu_834_opcode;
reg   [1:0] grp_fu_838_opcode;
reg   [1:0] grp_fu_842_opcode;
reg   [1:0] grp_fu_846_opcode;
reg   [1:0] grp_fu_850_opcode;
reg   [1:0] grp_fu_854_opcode;
reg   [1:0] grp_fu_858_opcode;
reg   [1:0] grp_fu_862_opcode;
reg   [1:0] grp_fu_866_opcode;
reg   [1:0] grp_fu_870_opcode;
reg   [1:0] grp_fu_874_opcode;
reg   [1:0] grp_fu_878_opcode;
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
wire   [1:0] c0_x_fu_981_p1;
wire   [1:0] c0_x_fu_981_p3;
wire  signed [1:0] c0_x_fu_981_p5;
wire  signed [1:0] c0_x_fu_981_p7;
wire   [1:0] c0_x_19_fu_1005_p1;
wire   [1:0] c0_x_19_fu_1005_p3;
wire  signed [1:0] c0_x_19_fu_1005_p5;
wire  signed [1:0] c0_x_19_fu_1005_p7;
wire   [1:0] c0_x_20_fu_1029_p1;
wire   [1:0] c0_x_20_fu_1029_p3;
wire  signed [1:0] c0_x_20_fu_1029_p5;
wire  signed [1:0] c0_x_20_fu_1029_p7;
wire   [1:0] c0_x_21_fu_1053_p1;
wire   [1:0] c0_x_21_fu_1053_p3;
wire  signed [1:0] c0_x_21_fu_1053_p5;
wire  signed [1:0] c0_x_21_fu_1053_p7;
wire   [1:0] tmp_s_fu_1077_p1;
wire   [1:0] tmp_s_fu_1077_p3;
wire  signed [1:0] tmp_s_fu_1077_p5;
wire  signed [1:0] tmp_s_fu_1077_p7;
wire   [1:0] tmp_89_fu_1101_p1;
wire   [1:0] tmp_89_fu_1101_p3;
wire  signed [1:0] tmp_89_fu_1101_p5;
wire  signed [1:0] tmp_89_fu_1101_p7;
wire   [1:0] tmp_90_fu_1125_p1;
wire   [1:0] tmp_90_fu_1125_p3;
wire  signed [1:0] tmp_90_fu_1125_p5;
wire  signed [1:0] tmp_90_fu_1125_p7;
wire   [1:0] tmp_91_fu_1149_p1;
wire   [1:0] tmp_91_fu_1149_p3;
wire  signed [1:0] tmp_91_fu_1149_p5;
wire  signed [1:0] tmp_91_fu_1149_p7;
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
#0 tid_fu_152 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U846(.din0(DATA_x_q0),.din1(DATA_x_8_q0),.din2(DATA_x_16_q0),.din3(DATA_x_24_q0),.def(c0_x_fu_981_p9),.sel(trunc_ln365_fu_978_p1),.dout(c0_x_fu_981_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U847(.din0(DATA_x_1_q0),.din1(DATA_x_9_q0),.din2(DATA_x_17_q0),.din3(DATA_x_25_q0),.def(c0_x_19_fu_1005_p9),.sel(trunc_ln365_fu_978_p1),.dout(c0_x_19_fu_1005_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U848(.din0(DATA_x_2_q0),.din1(DATA_x_10_q0),.din2(DATA_x_18_q0),.din3(DATA_x_26_q0),.def(c0_x_20_fu_1029_p9),.sel(trunc_ln365_fu_978_p1),.dout(c0_x_20_fu_1029_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U849(.din0(DATA_x_3_q0),.din1(DATA_x_11_q0),.din2(DATA_x_19_q0),.din3(DATA_x_27_q0),.def(c0_x_21_fu_1053_p9),.sel(trunc_ln365_fu_978_p1),.dout(c0_x_21_fu_1053_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U850(.din0(DATA_x_4_q0),.din1(DATA_x_12_q0),.din2(DATA_x_20_q0),.din3(DATA_x_28_q0),.def(tmp_s_fu_1077_p9),.sel(trunc_ln365_fu_978_p1),.dout(tmp_s_fu_1077_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U851(.din0(DATA_x_5_q0),.din1(DATA_x_13_q0),.din2(DATA_x_21_q0),.din3(DATA_x_29_q0),.def(tmp_89_fu_1101_p9),.sel(trunc_ln365_fu_978_p1),.dout(tmp_89_fu_1101_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U852(.din0(DATA_x_6_q0),.din1(DATA_x_14_q0),.din2(DATA_x_22_q0),.din3(DATA_x_30_q0),.def(tmp_90_fu_1125_p9),.sel(trunc_ln365_fu_978_p1),.dout(tmp_90_fu_1125_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U853(.din0(DATA_x_7_q0),.din1(DATA_x_15_q0),.din2(DATA_x_23_q0),.din3(DATA_x_31_q0),.def(tmp_91_fu_1149_p9),.sel(trunc_ln365_fu_978_p1),.dout(tmp_91_fu_1149_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        tid_fu_152 <= 7'd0;
    end else if (((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_152 <= add_ln365_fu_1173_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_4_load_reg_1928 <= DATA_y_4_q0;
        DATA_y_5_load_reg_1934 <= DATA_y_5_q0;
        DATA_y_6_load_reg_1940 <= DATA_y_6_q0;
        DATA_y_7_load_reg_1945 <= DATA_y_7_q0;
        c0_x_19_reg_1957 <= c0_x_19_fu_1005_p11;
        c0_x_20_reg_1963 <= c0_x_20_fu_1029_p11;
        c0_x_21_reg_1968 <= c0_x_21_fu_1053_p11;
        c0_x_reg_1951 <= c0_x_fu_981_p11;
        c0_y_29_reg_1911 <= DATA_y_1_q0;
        c0_y_30_reg_1917 <= DATA_y_2_q0;
        c0_y_31_reg_1922 <= DATA_y_3_q0;
        c0_y_reg_1905 <= DATA_y_q0;
        sub12_reg_2027_pp0_iter3_reg <= sub12_reg_2027;
        sub12_reg_2027_pp0_iter4_reg <= sub12_reg_2027_pp0_iter3_reg;
        tmp_1_1_reg_2021_pp0_iter3_reg <= tmp_1_1_reg_2021;
        tmp_1_1_reg_2021_pp0_iter4_reg <= tmp_1_1_reg_2021_pp0_iter3_reg;
        tmp_89_reg_1980 <= tmp_89_fu_1101_p11;
        tmp_8_reg_2143_pp0_iter5_reg <= tmp_8_reg_2143;
        tmp_8_reg_2143_pp0_iter6_reg <= tmp_8_reg_2143_pp0_iter5_reg;
        tmp_90_reg_1986 <= tmp_90_fu_1125_p11;
        tmp_91_reg_1991 <= tmp_91_fu_1149_p11;
        tmp_s_reg_1974 <= tmp_s_fu_1077_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_reg_2085 <= grp_fu_1016_p_dout0;
        add_reg_2079 <= grp_fu_1012_p_dout0;
        c0_x_22_reg_2067 <= grp_fu_1004_p_dout0;
        c0_x_29_reg_2055 <= grp_fu_996_p_dout0;
        c0_y_19_reg_2073 <= grp_fu_1008_p_dout0;
        c0_y_32_reg_2061 <= grp_fu_1000_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add12_reg_2033 <= grp_fu_1020_p_dout0;
        add13_reg_2039 <= grp_fu_1024_p_dout0;
        c0_x_23_reg_1997 <= grp_fu_996_p_dout0;
        c0_y_20_reg_2003 <= grp_fu_1000_p_dout0;
        sub12_reg_2027 <= grp_fu_1016_p_dout0;
        sub13_reg_2050 <= grp_fu_1032_p_dout0;
        sub_reg_2015 <= grp_fu_1008_p_dout0;
        tmp_1_1_reg_2021 <= grp_fu_1012_p_dout0;
        tmp_1_2_reg_2045 <= grp_fu_1028_p_dout0;
        tmp_1_reg_2009 <= grp_fu_1004_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add14_reg_2118 <= grp_fu_1040_p_dout0;
        add16_reg_2138 <= grp_fu_1048_p_dout0;
        mul6_reg_2128 <= grp_fu_1060_p_dout0;
        mul_reg_2123 <= grp_fu_1056_p_dout0;
        sub14_reg_2113 <= grp_fu_1036_p_dout0;
        sub16_reg_2133 <= grp_fu_1044_p_dout0;
        tmp_8_reg_2143 <= grp_fu_1052_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_2241 <= grp_fu_1036_p_dout0;
        sub15_reg_2235 <= grp_fu_1032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add17_reg_2189 <= grp_fu_1004_p_dout0;
        add18_reg_2195 <= grp_fu_1008_p_dout0;
        c0_x_25_reg_2177 <= grp_fu_996_p_dout0;
        c0_y_22_reg_2183 <= grp_fu_1000_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_2267 <= grp_fu_996_p_dout0;
        add20_reg_2272 <= grp_fu_1000_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_2267_pp0_iter10_reg <= add19_reg_2267_pp0_iter9_reg;
        add19_reg_2267_pp0_iter11_reg <= add19_reg_2267_pp0_iter10_reg;
        add19_reg_2267_pp0_iter12_reg <= add19_reg_2267_pp0_iter11_reg;
        add19_reg_2267_pp0_iter13_reg <= add19_reg_2267_pp0_iter12_reg;
        add19_reg_2267_pp0_iter8_reg <= add19_reg_2267;
        add19_reg_2267_pp0_iter9_reg <= add19_reg_2267_pp0_iter8_reg;
        add20_reg_2272_pp0_iter10_reg <= add20_reg_2272_pp0_iter9_reg;
        add20_reg_2272_pp0_iter11_reg <= add20_reg_2272_pp0_iter10_reg;
        add20_reg_2272_pp0_iter12_reg <= add20_reg_2272_pp0_iter11_reg;
        add20_reg_2272_pp0_iter13_reg <= add20_reg_2272_pp0_iter12_reg;
        add20_reg_2272_pp0_iter8_reg <= add20_reg_2272;
        add20_reg_2272_pp0_iter9_reg <= add20_reg_2272_pp0_iter8_reg;
        add22_reg_2368_pp0_iter12_reg <= add22_reg_2368;
        add22_reg_2368_pp0_iter13_reg <= add22_reg_2368_pp0_iter12_reg;
        add23_reg_2277_pp0_iter9_reg <= add23_reg_2277;
        add24_reg_2282_pp0_iter9_reg <= add24_reg_2282;
        icmp_ln365_reg_1695 <= icmp_ln365_fu_914_p2;
        icmp_ln365_reg_1695_pp0_iter10_reg <= icmp_ln365_reg_1695_pp0_iter9_reg;
        icmp_ln365_reg_1695_pp0_iter11_reg <= icmp_ln365_reg_1695_pp0_iter10_reg;
        icmp_ln365_reg_1695_pp0_iter12_reg <= icmp_ln365_reg_1695_pp0_iter11_reg;
        icmp_ln365_reg_1695_pp0_iter13_reg <= icmp_ln365_reg_1695_pp0_iter12_reg;
        icmp_ln365_reg_1695_pp0_iter1_reg <= icmp_ln365_reg_1695;
        icmp_ln365_reg_1695_pp0_iter2_reg <= icmp_ln365_reg_1695_pp0_iter1_reg;
        icmp_ln365_reg_1695_pp0_iter3_reg <= icmp_ln365_reg_1695_pp0_iter2_reg;
        icmp_ln365_reg_1695_pp0_iter4_reg <= icmp_ln365_reg_1695_pp0_iter3_reg;
        icmp_ln365_reg_1695_pp0_iter5_reg <= icmp_ln365_reg_1695_pp0_iter4_reg;
        icmp_ln365_reg_1695_pp0_iter6_reg <= icmp_ln365_reg_1695_pp0_iter5_reg;
        icmp_ln365_reg_1695_pp0_iter7_reg <= icmp_ln365_reg_1695_pp0_iter6_reg;
        icmp_ln365_reg_1695_pp0_iter8_reg <= icmp_ln365_reg_1695_pp0_iter7_reg;
        icmp_ln365_reg_1695_pp0_iter9_reg <= icmp_ln365_reg_1695_pp0_iter8_reg;
        sub22_reg_2373_pp0_iter12_reg <= sub22_reg_2373;
        sub22_reg_2373_pp0_iter13_reg <= sub22_reg_2373_pp0_iter12_reg;
        sub22_reg_2373_pp0_iter14_reg <= sub22_reg_2373_pp0_iter13_reg;
        sub23_reg_2378_pp0_iter12_reg <= sub23_reg_2378;
        sub23_reg_2378_pp0_iter13_reg <= sub23_reg_2378_pp0_iter12_reg;
        sub23_reg_2378_pp0_iter14_reg <= sub23_reg_2378_pp0_iter13_reg;
        sub24_reg_2293_pp0_iter9_reg <= sub24_reg_2293;
        sub27_reg_2383_pp0_iter12_reg <= sub27_reg_2383;
        sub27_reg_2383_pp0_iter13_reg <= sub27_reg_2383_pp0_iter12_reg;
        sub27_reg_2383_pp0_iter14_reg <= sub27_reg_2383_pp0_iter13_reg;
        sub28_reg_2388_pp0_iter12_reg <= sub28_reg_2388;
        sub28_reg_2388_pp0_iter13_reg <= sub28_reg_2388_pp0_iter12_reg;
        sub28_reg_2388_pp0_iter14_reg <= sub28_reg_2388_pp0_iter13_reg;
        tid_5_reg_1685 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_1685_pp0_iter10_reg <= tid_5_reg_1685_pp0_iter9_reg;
        tid_5_reg_1685_pp0_iter11_reg <= tid_5_reg_1685_pp0_iter10_reg;
        tid_5_reg_1685_pp0_iter12_reg <= tid_5_reg_1685_pp0_iter11_reg;
        tid_5_reg_1685_pp0_iter13_reg <= tid_5_reg_1685_pp0_iter12_reg;
        tid_5_reg_1685_pp0_iter14_reg <= tid_5_reg_1685_pp0_iter13_reg;
        tid_5_reg_1685_pp0_iter1_reg <= tid_5_reg_1685;
        tid_5_reg_1685_pp0_iter2_reg <= tid_5_reg_1685_pp0_iter1_reg;
        tid_5_reg_1685_pp0_iter3_reg <= tid_5_reg_1685_pp0_iter2_reg;
        tid_5_reg_1685_pp0_iter4_reg <= tid_5_reg_1685_pp0_iter3_reg;
        tid_5_reg_1685_pp0_iter5_reg <= tid_5_reg_1685_pp0_iter4_reg;
        tid_5_reg_1685_pp0_iter6_reg <= tid_5_reg_1685_pp0_iter5_reg;
        tid_5_reg_1685_pp0_iter7_reg <= tid_5_reg_1685_pp0_iter6_reg;
        tid_5_reg_1685_pp0_iter8_reg <= tid_5_reg_1685_pp0_iter7_reg;
        tid_5_reg_1685_pp0_iter9_reg <= tid_5_reg_1685_pp0_iter8_reg;
        tmp_9_reg_2287_pp0_iter9_reg <= tmp_9_reg_2287;
        zext_ln365_reg_1699[6 : 0] <= zext_ln365_fu_920_p1[6 : 0];
        zext_ln365_reg_1699_pp0_iter10_reg[6 : 0] <= zext_ln365_reg_1699_pp0_iter9_reg[6 : 0];
        zext_ln365_reg_1699_pp0_iter11_reg[6 : 0] <= zext_ln365_reg_1699_pp0_iter10_reg[6 : 0];
        zext_ln365_reg_1699_pp0_iter12_reg[6 : 0] <= zext_ln365_reg_1699_pp0_iter11_reg[6 : 0];
        zext_ln365_reg_1699_pp0_iter13_reg[6 : 0] <= zext_ln365_reg_1699_pp0_iter12_reg[6 : 0];
        zext_ln365_reg_1699_pp0_iter1_reg[6 : 0] <= zext_ln365_reg_1699[6 : 0];
        zext_ln365_reg_1699_pp0_iter2_reg[6 : 0] <= zext_ln365_reg_1699_pp0_iter1_reg[6 : 0];
        zext_ln365_reg_1699_pp0_iter3_reg[6 : 0] <= zext_ln365_reg_1699_pp0_iter2_reg[6 : 0];
        zext_ln365_reg_1699_pp0_iter4_reg[6 : 0] <= zext_ln365_reg_1699_pp0_iter3_reg[6 : 0];
        zext_ln365_reg_1699_pp0_iter5_reg[6 : 0] <= zext_ln365_reg_1699_pp0_iter4_reg[6 : 0];
        zext_ln365_reg_1699_pp0_iter6_reg[6 : 0] <= zext_ln365_reg_1699_pp0_iter5_reg[6 : 0];
        zext_ln365_reg_1699_pp0_iter7_reg[6 : 0] <= zext_ln365_reg_1699_pp0_iter6_reg[6 : 0];
        zext_ln365_reg_1699_pp0_iter8_reg[6 : 0] <= zext_ln365_reg_1699_pp0_iter7_reg[6 : 0];
        zext_ln365_reg_1699_pp0_iter9_reg[6 : 0] <= zext_ln365_reg_1699_pp0_iter8_reg[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add21_reg_2353 <= grp_fu_1028_p_dout0;
        add25_reg_2358 <= grp_fu_1032_p_dout0;
        add26_reg_2363 <= grp_fu_1036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add21_reg_2353_pp0_iter11_reg <= add21_reg_2353;
        add21_reg_2353_pp0_iter12_reg <= add21_reg_2353_pp0_iter11_reg;
        add25_reg_2358_pp0_iter11_reg <= add25_reg_2358;
        add25_reg_2358_pp0_iter12_reg <= add25_reg_2358_pp0_iter11_reg;
        add26_reg_2363_pp0_iter11_reg <= add26_reg_2363;
        add26_reg_2363_pp0_iter12_reg <= add26_reg_2363_pp0_iter11_reg;
        c0_x_25_reg_2177_pp0_iter5_reg <= c0_x_25_reg_2177;
        c0_x_25_reg_2177_pp0_iter6_reg <= c0_x_25_reg_2177_pp0_iter5_reg;
        c0_x_25_reg_2177_pp0_iter7_reg <= c0_x_25_reg_2177_pp0_iter6_reg;
        c0_x_25_reg_2177_pp0_iter8_reg <= c0_x_25_reg_2177_pp0_iter7_reg;
        c0_y_22_reg_2183_pp0_iter5_reg <= c0_y_22_reg_2183;
        c0_y_22_reg_2183_pp0_iter6_reg <= c0_y_22_reg_2183_pp0_iter5_reg;
        c0_y_22_reg_2183_pp0_iter7_reg <= c0_y_22_reg_2183_pp0_iter6_reg;
        c0_y_22_reg_2183_pp0_iter8_reg <= c0_y_22_reg_2183_pp0_iter7_reg;
        sub20_reg_2247_pp0_iter10_reg <= sub20_reg_2247_pp0_iter9_reg;
        sub20_reg_2247_pp0_iter11_reg <= sub20_reg_2247_pp0_iter10_reg;
        sub20_reg_2247_pp0_iter12_reg <= sub20_reg_2247_pp0_iter11_reg;
        sub20_reg_2247_pp0_iter13_reg <= sub20_reg_2247_pp0_iter12_reg;
        sub20_reg_2247_pp0_iter7_reg <= sub20_reg_2247;
        sub20_reg_2247_pp0_iter8_reg <= sub20_reg_2247_pp0_iter7_reg;
        sub20_reg_2247_pp0_iter9_reg <= sub20_reg_2247_pp0_iter8_reg;
        sub21_reg_2252_pp0_iter10_reg <= sub21_reg_2252_pp0_iter9_reg;
        sub21_reg_2252_pp0_iter11_reg <= sub21_reg_2252_pp0_iter10_reg;
        sub21_reg_2252_pp0_iter12_reg <= sub21_reg_2252_pp0_iter11_reg;
        sub21_reg_2252_pp0_iter13_reg <= sub21_reg_2252_pp0_iter12_reg;
        sub21_reg_2252_pp0_iter7_reg <= sub21_reg_2252;
        sub21_reg_2252_pp0_iter8_reg <= sub21_reg_2252_pp0_iter7_reg;
        sub21_reg_2252_pp0_iter9_reg <= sub21_reg_2252_pp0_iter8_reg;
        zext_ln390_cast_reg_2415[5 : 0] <= zext_ln390_cast_fu_1528_p3[5 : 0];
        zext_ln391_cast_reg_2421[6 : 0] <= zext_ln391_cast_fu_1546_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add22_reg_2368 <= grp_fu_1020_p_dout0;
        sub22_reg_2373 <= grp_fu_1024_p_dout0;
        sub23_reg_2378 <= grp_fu_1028_p_dout0;
        sub27_reg_2383 <= grp_fu_1032_p_dout0;
        sub28_reg_2388 <= grp_fu_1036_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_2277 <= grp_fu_1004_p_dout0;
        add24_reg_2282 <= grp_fu_1008_p_dout0;
        sub24_reg_2293 <= grp_fu_1016_p_dout0;
        tmp_9_reg_2287 <= grp_fu_1012_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add27_reg_2405 <= grp_fu_1048_p_dout0;
        add28_reg_2410 <= grp_fu_1052_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_22_reg_2067_pp0_iter3_reg <= c0_x_22_reg_2067;
        c0_x_22_reg_2067_pp0_iter4_reg <= c0_x_22_reg_2067_pp0_iter3_reg;
        c0_x_22_reg_2067_pp0_iter5_reg <= c0_x_22_reg_2067_pp0_iter4_reg;
        c0_x_22_reg_2067_pp0_iter6_reg <= c0_x_22_reg_2067_pp0_iter5_reg;
        c0_x_26_reg_2309_pp0_iter10_reg <= c0_x_26_reg_2309_pp0_iter9_reg;
        c0_x_26_reg_2309_pp0_iter11_reg <= c0_x_26_reg_2309_pp0_iter10_reg;
        c0_x_26_reg_2309_pp0_iter9_reg <= c0_x_26_reg_2309;
        c0_y_19_reg_2073_pp0_iter3_reg <= c0_y_19_reg_2073;
        c0_y_19_reg_2073_pp0_iter4_reg <= c0_y_19_reg_2073_pp0_iter3_reg;
        c0_y_19_reg_2073_pp0_iter5_reg <= c0_y_19_reg_2073_pp0_iter4_reg;
        c0_y_19_reg_2073_pp0_iter6_reg <= c0_y_19_reg_2073_pp0_iter5_reg;
        c0_y_23_reg_2315_pp0_iter10_reg <= c0_y_23_reg_2315_pp0_iter9_reg;
        c0_y_23_reg_2315_pp0_iter11_reg <= c0_y_23_reg_2315_pp0_iter10_reg;
        c0_y_23_reg_2315_pp0_iter9_reg <= c0_y_23_reg_2315;
        sub17_reg_2161_pp0_iter5_reg <= sub17_reg_2161;
        sub17_reg_2161_pp0_iter6_reg <= sub17_reg_2161_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_24_reg_2201 <= grp_fu_1056_p_dout0;
        c0_y_21_reg_2207 <= grp_fu_1060_p_dout0;
        mul7_reg_2213 <= grp_fu_1064_p_dout0;
        mul8_reg_2219 <= grp_fu_1093_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_26_reg_2309 <= grp_fu_1048_p_dout0;
        c0_x_31_reg_2299 <= grp_fu_1040_p_dout0;
        c0_y_23_reg_2315 <= grp_fu_1052_p_dout0;
        c0_y_34_reg_2304 <= grp_fu_1044_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_30_reg_2149 <= grp_fu_1020_p_dout0;
        c0_y_33_reg_2155 <= grp_fu_1024_p_dout0;
        sub17_reg_2161 <= grp_fu_1028_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul10_reg_2230 <= grp_fu_1093_p_dout0;
        mul9_reg_2225 <= grp_fu_1064_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul11_reg_2333 <= grp_fu_1056_p_dout0;
        mul12_reg_2338 <= grp_fu_1060_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub18_reg_2321 <= grp_fu_1020_p_dout0;
        sub19_reg_2327 <= grp_fu_1024_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub20_reg_2247 <= grp_fu_1012_p_dout0;
        sub21_reg_2252 <= grp_fu_1016_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_2393 <= grp_fu_1040_p_dout0;
        sub26_reg_2399 <= grp_fu_1044_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub29_reg_2426 <= grp_fu_1040_p_dout0;
        sub30_reg_2431 <= grp_fu_1044_p_dout0;
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
    if (((icmp_ln365_reg_1695 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln365_reg_1695_pp0_iter13_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter13_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter13_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
        ap_sig_allocacmp_tid_5 = tid_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_822_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_822_opcode = 2'd0;
    end else begin
        grp_fu_822_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_822_p0 = c0_x_30_reg_2149;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_822_p0 = c0_x_29_reg_2055;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_822_p0 = c0_x_reg_1951;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_822_p0 = c0_x_19_reg_1957;
    end else begin
        grp_fu_822_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_822_p1 = add17_reg_2189;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_822_p1 = add_reg_2079;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_822_p1 = tmp_s_reg_1974;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_822_p1 = tmp_89_reg_1980;
    end else begin
        grp_fu_822_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_826_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_826_opcode = 2'd0;
    end else begin
        grp_fu_826_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_826_p0 = c0_y_33_reg_2155;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_826_p0 = c0_y_32_reg_2061;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_826_p0 = c0_y_reg_1905;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_826_p0 = c0_y_29_reg_1911;
    end else begin
        grp_fu_826_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_826_p1 = add18_reg_2195;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_826_p1 = add11_reg_2085;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_826_p1 = DATA_y_4_load_reg_1928;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_826_p1 = DATA_y_5_load_reg_1934;
    end else begin
        grp_fu_826_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_830_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_830_opcode = 2'd0;
    end else begin
        grp_fu_830_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_830_p0 = c0_x_24_reg_2201;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_830_p0 = c0_x_23_reg_1997;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_830_p0 = c0_x_reg_1951;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_830_p0 = c0_x_19_reg_1957;
    end else begin
        grp_fu_830_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_830_p1 = mul7_reg_2213;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_830_p1 = add12_reg_2033;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_830_p1 = tmp_s_reg_1974;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_830_p1 = tmp_89_reg_1980;
    end else begin
        grp_fu_830_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_834_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_834_opcode = 2'd0;
    end else begin
        grp_fu_834_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_834_p0 = c0_y_21_reg_2207;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_834_p0 = c0_y_20_reg_2003;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_834_p0 = c0_y_reg_1905;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_834_p0 = c0_y_29_reg_1911;
    end else begin
        grp_fu_834_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_834_p1 = mul8_reg_2219;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_834_p1 = add13_reg_2039;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_834_p1 = DATA_y_4_load_reg_1928;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_834_p1 = DATA_y_5_load_reg_1934;
    end else begin
        grp_fu_834_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_838_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_838_opcode = 2'd0;
    end else begin
        grp_fu_838_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_838_p0 = c0_x_24_reg_2201;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_838_p0 = c0_x_30_reg_2149;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_838_p0 = c0_x_20_reg_1963;
    end else begin
        grp_fu_838_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_838_p1 = mul7_reg_2213;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_838_p1 = add17_reg_2189;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_838_p1 = tmp_90_reg_1986;
    end else begin
        grp_fu_838_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_842_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_842_opcode = 2'd0;
    end else begin
        grp_fu_842_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_842_p0 = c0_y_21_reg_2207;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_842_p0 = c0_y_33_reg_2155;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_842_p0 = c0_y_30_reg_1917;
    end else begin
        grp_fu_842_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_842_p1 = mul8_reg_2219;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_842_p1 = add18_reg_2195;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_842_p1 = DATA_y_6_load_reg_1940;
    end else begin
        grp_fu_842_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_846_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_846_opcode = 2'd0;
    end else begin
        grp_fu_846_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_846_p0 = c0_y_22_reg_2183_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_846_p0 = mul9_reg_2225;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_846_p0 = c0_x_29_reg_2055;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_846_p0 = c0_x_21_reg_1968;
    end else begin
        grp_fu_846_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_846_p1 = sub19_reg_2327;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_846_p1 = bitcast_ln386_13_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_846_p1 = add_reg_2079;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_846_p1 = tmp_91_reg_1991;
    end else begin
        grp_fu_846_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_850_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_850_opcode = 2'd0;
    end else begin
        grp_fu_850_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_850_p0 = c0_x_25_reg_2177_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_850_p0 = bitcast_ln386_15_fu_1452_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_850_p0 = c0_y_32_reg_2061;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_850_p0 = c0_y_31_reg_1922;
    end else begin
        grp_fu_850_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_850_p1 = sub18_reg_2321;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_850_p1 = mul10_reg_2230;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_850_p1 = add11_reg_2085;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_850_p1 = DATA_y_7_load_reg_1945;
    end else begin
        grp_fu_850_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_854_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_854_opcode = 2'd0;
    end else begin
        grp_fu_854_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_854_p0 = c0_y_22_reg_2183_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_854_p0 = c0_x_25_reg_2177_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_854_p0 = c0_y_20_reg_2003;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_854_p0 = c0_x_21_reg_1968;
    end else begin
        grp_fu_854_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_854_p1 = sub19_reg_2327;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_854_p1 = sub18_reg_2321;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_854_p1 = add13_reg_2039;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_854_p1 = tmp_91_reg_1991;
    end else begin
        grp_fu_854_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1695 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_858_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_858_opcode = 2'd0;
    end else begin
        grp_fu_858_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_858_p0 = c0_x_31_reg_2299;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_858_p0 = mul_reg_2123;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_858_p0 = c0_y_31_reg_1922;
    end else begin
        grp_fu_858_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_858_p1 = add23_reg_2277_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_858_p1 = add23_reg_2277;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_858_p1 = bitcast_ln386_5_fu_1350_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_858_p1 = DATA_y_7_load_reg_1945;
    end else begin
        grp_fu_858_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_862_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_862_opcode = 2'd0;
    end else begin
        grp_fu_862_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_862_p0 = c0_y_34_reg_2304;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_862_p0 = bitcast_ln386_7_fu_1384_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_862_p0 = tmp_1_reg_2009;
    end else begin
        grp_fu_862_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_862_p1 = add24_reg_2282_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_862_p1 = add24_reg_2282;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_862_p1 = mul6_reg_2128;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_862_p1 = bitcast_ln386_1_fu_1212_p1;
    end else begin
        grp_fu_862_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_866_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_866_opcode = 2'd0;
    end else begin
        grp_fu_866_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_866_p0 = c0_x_26_reg_2309_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_866_p0 = mul11_reg_2333;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_866_p0 = c0_x_22_reg_2067_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_866_p0 = bitcast_ln386_3_fu_1246_p1;
    end else begin
        grp_fu_866_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_866_p1 = sub25_reg_2393;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_866_p1 = bitcast_ln386_17_fu_1486_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_866_p1 = sub15_reg_2235;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_866_p1 = sub_reg_2015;
    end else begin
        grp_fu_866_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_870_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_870_opcode = 2'd0;
    end else begin
        grp_fu_870_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_870_p0 = c0_y_23_reg_2315_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_870_p0 = bitcast_ln386_19_fu_1520_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_870_p0 = c0_y_19_reg_2073_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_870_p0 = bitcast_ln386_9_fu_1280_p1;
    end else begin
        grp_fu_870_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_870_p1 = sub26_reg_2399;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_870_p1 = mul12_reg_2338;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_870_p1 = add15_reg_2241;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_870_p1 = bitcast_ln386_11_fu_1315_p1;
    end else begin
        grp_fu_870_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_874_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_874_opcode = 2'd0;
    end else begin
        grp_fu_874_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_874_p0 = c0_x_26_reg_2309_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_874_p0 = c0_x_22_reg_2067_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_874_p0 = bitcast_ln386_9_fu_1280_p1;
    end else begin
        grp_fu_874_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_874_p1 = sub25_reg_2393;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_874_p1 = sub15_reg_2235;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_874_p1 = bitcast_ln386_11_fu_1315_p1;
    end else begin
        grp_fu_874_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_878_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_878_opcode = 2'd0;
    end else begin
        grp_fu_878_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_878_p0 = c0_y_23_reg_2315_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_878_p0 = c0_y_19_reg_2073_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_878_p0 = c0_x_23_reg_1997;
    end else begin
        grp_fu_878_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_878_p1 = sub26_reg_2399;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_878_p1 = add15_reg_2241;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_878_p1 = add12_reg_2033;
    end else begin
        grp_fu_878_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_882_p0 = tmp_9_reg_2287;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_882_p0 = sub14_reg_2113;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_882_p0 = tmp_1_1_reg_2021;
    end else begin
        grp_fu_882_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_882_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_882_p1 = 64'd0;
    end else begin
        grp_fu_882_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_887_p0 = sub24_reg_2293;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_887_p0 = add14_reg_2118;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_887_p0 = sub12_reg_2027;
    end else begin
        grp_fu_887_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_887_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_887_p1 = 64'd0;
    end else begin
        grp_fu_887_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_894_p0 = tmp_8_reg_2143;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_894_p0 = sub16_reg_2133;
        end else begin
            grp_fu_894_p0 = 'bx;
        end
    end else begin
        grp_fu_894_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_894_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_894_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_894_p1 = 'bx;
        end
    end else begin
        grp_fu_894_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_899_p0 = sub17_reg_2161;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_899_p0 = add16_reg_2138;
        end else begin
            grp_fu_899_p0 = 'bx;
        end
    end else begin
        grp_fu_899_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_899_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_899_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_899_p1 = 'bx;
        end
    end else begin
        grp_fu_899_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address0_local = zext_ln396_fu_1660_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address0_local = zext_ln395_fu_1620_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address0_local = zext_ln392_fu_1578_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address0_local = zext_ln391_fu_1553_p1;
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln394_fu_1647_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln393_1_fu_1607_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_reg_1699_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln390_fu_1536_p1;
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
        work_x_d0_local = bitcast_ln396_fu_1666_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d0_local = bitcast_ln395_fu_1626_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d0_local = bitcast_ln392_fu_1584_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d0_local = bitcast_ln391_fu_1559_p1;
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln394_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln393_fu_1613_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_1571_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln390_fu_1542_p1;
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
        work_y_address0_local = zext_ln396_fu_1660_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address0_local = zext_ln395_fu_1620_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address0_local = zext_ln392_fu_1578_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address0_local = zext_ln391_fu_1553_p1;
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln394_fu_1647_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln393_1_fu_1607_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_reg_1699_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln390_fu_1536_p1;
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
        work_y_d0_local = bitcast_ln405_fu_1674_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d0_local = bitcast_ln404_fu_1634_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d0_local = bitcast_ln401_fu_1592_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d0_local = bitcast_ln400_fu_1567_p1;
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln403_fu_1670_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln402_fu_1630_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_1588_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln399_fu_1563_p1;
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
            if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
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
assign DATA_x_10_address0 = zext_ln367_fu_942_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_11_address0 = zext_ln367_fu_942_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_12_address0 = zext_ln367_fu_942_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_13_address0 = zext_ln367_fu_942_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_14_address0 = zext_ln367_fu_942_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_15_address0 = zext_ln367_fu_942_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_16_address0 = zext_ln367_fu_942_p1;
assign DATA_x_16_ce0 = DATA_x_16_ce0_local;
assign DATA_x_17_address0 = zext_ln367_fu_942_p1;
assign DATA_x_17_ce0 = DATA_x_17_ce0_local;
assign DATA_x_18_address0 = zext_ln367_fu_942_p1;
assign DATA_x_18_ce0 = DATA_x_18_ce0_local;
assign DATA_x_19_address0 = zext_ln367_fu_942_p1;
assign DATA_x_19_ce0 = DATA_x_19_ce0_local;
assign DATA_x_1_address0 = zext_ln367_fu_942_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_20_address0 = zext_ln367_fu_942_p1;
assign DATA_x_20_ce0 = DATA_x_20_ce0_local;
assign DATA_x_21_address0 = zext_ln367_fu_942_p1;
assign DATA_x_21_ce0 = DATA_x_21_ce0_local;
assign DATA_x_22_address0 = zext_ln367_fu_942_p1;
assign DATA_x_22_ce0 = DATA_x_22_ce0_local;
assign DATA_x_23_address0 = zext_ln367_fu_942_p1;
assign DATA_x_23_ce0 = DATA_x_23_ce0_local;
assign DATA_x_24_address0 = zext_ln367_fu_942_p1;
assign DATA_x_24_ce0 = DATA_x_24_ce0_local;
assign DATA_x_25_address0 = zext_ln367_fu_942_p1;
assign DATA_x_25_ce0 = DATA_x_25_ce0_local;
assign DATA_x_26_address0 = zext_ln367_fu_942_p1;
assign DATA_x_26_ce0 = DATA_x_26_ce0_local;
assign DATA_x_27_address0 = zext_ln367_fu_942_p1;
assign DATA_x_27_ce0 = DATA_x_27_ce0_local;
assign DATA_x_28_address0 = zext_ln367_fu_942_p1;
assign DATA_x_28_ce0 = DATA_x_28_ce0_local;
assign DATA_x_29_address0 = zext_ln367_fu_942_p1;
assign DATA_x_29_ce0 = DATA_x_29_ce0_local;
assign DATA_x_2_address0 = zext_ln367_fu_942_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_30_address0 = zext_ln367_fu_942_p1;
assign DATA_x_30_ce0 = DATA_x_30_ce0_local;
assign DATA_x_31_address0 = zext_ln367_fu_942_p1;
assign DATA_x_31_ce0 = DATA_x_31_ce0_local;
assign DATA_x_3_address0 = zext_ln367_fu_942_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln367_fu_942_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln367_fu_942_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln367_fu_942_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln367_fu_942_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_8_address0 = zext_ln367_fu_942_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_9_address0 = zext_ln367_fu_942_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_address0 = zext_ln367_fu_942_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_1_address0 = zext_ln365_fu_920_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_2_address0 = zext_ln365_fu_920_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_3_address0 = zext_ln365_fu_920_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln365_fu_920_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln365_fu_920_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln365_fu_920_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln365_fu_920_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_address0 = zext_ln365_fu_920_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln365_fu_1173_p2 = (tid_5_reg_1685 + 7'd1);
assign add_ln394_fu_1641_p2 = ($signed(zext_ln365_1_fu_1638_p1) + $signed(9'd320));
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
assign bit_sel20_fu_1220_p3 = bitcast_ln386_2_fu_1217_p1[64'd63];
assign bit_sel21_fu_1324_p3 = bitcast_ln386_4_fu_1321_p1[64'd63];
assign bit_sel22_fu_1358_p3 = bitcast_ln386_6_fu_1355_p1[64'd63];
assign bit_sel23_fu_1254_p3 = bitcast_ln386_8_fu_1251_p1[64'd63];
assign bit_sel24_fu_1289_p3 = bitcast_ln386_10_fu_1286_p1[64'd63];
assign bit_sel25_fu_1392_p3 = bitcast_ln386_12_fu_1389_p1[64'd63];
assign bit_sel26_fu_1426_p3 = bitcast_ln386_14_fu_1423_p1[64'd63];
assign bit_sel27_fu_1460_p3 = bitcast_ln386_16_fu_1457_p1[64'd63];
assign bit_sel28_fu_1494_p3 = bitcast_ln386_18_fu_1491_p1[64'd63];
assign bit_sel_fu_1186_p3 = bitcast_ln386_fu_1183_p1[64'd63];
assign bitcast_ln386_10_fu_1286_p1 = sub13_reg_2050;
assign bitcast_ln386_11_fu_1315_p1 = xor_ln386_5_fu_1307_p3;
assign bitcast_ln386_12_fu_1389_p1 = sub17_reg_2161_pp0_iter6_reg;
assign bitcast_ln386_13_fu_1418_p1 = xor_ln386_6_fu_1410_p3;
assign bitcast_ln386_14_fu_1423_p1 = tmp_8_reg_2143_pp0_iter6_reg;
assign bitcast_ln386_15_fu_1452_p1 = xor_ln386_7_fu_1444_p3;
assign bitcast_ln386_16_fu_1457_p1 = sub24_reg_2293_pp0_iter9_reg;
assign bitcast_ln386_17_fu_1486_p1 = xor_ln386_8_fu_1478_p3;
assign bitcast_ln386_18_fu_1491_p1 = tmp_9_reg_2287_pp0_iter9_reg;
assign bitcast_ln386_19_fu_1520_p1 = xor_ln386_9_fu_1512_p3;
assign bitcast_ln386_1_fu_1212_p1 = xor_ln3_fu_1204_p3;
assign bitcast_ln386_2_fu_1217_p1 = tmp_1_reg_2009;
assign bitcast_ln386_3_fu_1246_p1 = xor_ln386_1_fu_1238_p3;
assign bitcast_ln386_4_fu_1321_p1 = sub12_reg_2027_pp0_iter4_reg;
assign bitcast_ln386_5_fu_1350_p1 = xor_ln386_2_fu_1342_p3;
assign bitcast_ln386_6_fu_1355_p1 = tmp_1_1_reg_2021_pp0_iter4_reg;
assign bitcast_ln386_7_fu_1384_p1 = xor_ln386_3_fu_1376_p3;
assign bitcast_ln386_8_fu_1251_p1 = tmp_1_2_reg_2045;
assign bitcast_ln386_9_fu_1280_p1 = xor_ln386_4_fu_1272_p3;
assign bitcast_ln386_fu_1183_p1 = sub_reg_2015;
assign bitcast_ln389_fu_1571_p1 = add19_reg_2267_pp0_iter13_reg;
assign bitcast_ln390_fu_1542_p1 = add25_reg_2358_pp0_iter12_reg;
assign bitcast_ln391_fu_1559_p1 = add21_reg_2353_pp0_iter12_reg;
assign bitcast_ln392_fu_1584_p1 = add27_reg_2405;
assign bitcast_ln393_fu_1613_p1 = sub20_reg_2247_pp0_iter13_reg;
assign bitcast_ln394_fu_1653_p1 = sub27_reg_2383_pp0_iter14_reg;
assign bitcast_ln395_fu_1626_p1 = sub22_reg_2373_pp0_iter14_reg;
assign bitcast_ln396_fu_1666_p1 = sub29_reg_2426;
assign bitcast_ln398_fu_1588_p1 = add20_reg_2272_pp0_iter13_reg;
assign bitcast_ln399_fu_1563_p1 = add26_reg_2363_pp0_iter12_reg;
assign bitcast_ln400_fu_1567_p1 = add22_reg_2368_pp0_iter13_reg;
assign bitcast_ln401_fu_1592_p1 = add28_reg_2410;
assign bitcast_ln402_fu_1630_p1 = sub21_reg_2252_pp0_iter13_reg;
assign bitcast_ln403_fu_1670_p1 = sub28_reg_2388_pp0_iter14_reg;
assign bitcast_ln404_fu_1634_p1 = sub23_reg_2378_pp0_iter14_reg;
assign bitcast_ln405_fu_1674_p1 = sub30_reg_2431;
assign c0_x_19_fu_1005_p9 = 'bx;
assign c0_x_20_fu_1029_p9 = 'bx;
assign c0_x_21_fu_1053_p9 = 'bx;
assign c0_x_fu_981_p9 = 'bx;
assign grp_fu_1000_p_ce = 1'b1;
assign grp_fu_1000_p_din0 = grp_fu_826_p0;
assign grp_fu_1000_p_din1 = grp_fu_826_p1;
assign grp_fu_1000_p_opcode = grp_fu_826_opcode;
assign grp_fu_1004_p_ce = 1'b1;
assign grp_fu_1004_p_din0 = grp_fu_830_p0;
assign grp_fu_1004_p_din1 = grp_fu_830_p1;
assign grp_fu_1004_p_opcode = grp_fu_830_opcode;
assign grp_fu_1008_p_ce = 1'b1;
assign grp_fu_1008_p_din0 = grp_fu_834_p0;
assign grp_fu_1008_p_din1 = grp_fu_834_p1;
assign grp_fu_1008_p_opcode = grp_fu_834_opcode;
assign grp_fu_1012_p_ce = 1'b1;
assign grp_fu_1012_p_din0 = grp_fu_838_p0;
assign grp_fu_1012_p_din1 = grp_fu_838_p1;
assign grp_fu_1012_p_opcode = grp_fu_838_opcode;
assign grp_fu_1016_p_ce = 1'b1;
assign grp_fu_1016_p_din0 = grp_fu_842_p0;
assign grp_fu_1016_p_din1 = grp_fu_842_p1;
assign grp_fu_1016_p_opcode = grp_fu_842_opcode;
assign grp_fu_1020_p_ce = 1'b1;
assign grp_fu_1020_p_din0 = grp_fu_846_p0;
assign grp_fu_1020_p_din1 = grp_fu_846_p1;
assign grp_fu_1020_p_opcode = grp_fu_846_opcode;
assign grp_fu_1024_p_ce = 1'b1;
assign grp_fu_1024_p_din0 = grp_fu_850_p0;
assign grp_fu_1024_p_din1 = grp_fu_850_p1;
assign grp_fu_1024_p_opcode = grp_fu_850_opcode;
assign grp_fu_1028_p_ce = 1'b1;
assign grp_fu_1028_p_din0 = grp_fu_854_p0;
assign grp_fu_1028_p_din1 = grp_fu_854_p1;
assign grp_fu_1028_p_opcode = grp_fu_854_opcode;
assign grp_fu_1032_p_ce = 1'b1;
assign grp_fu_1032_p_din0 = grp_fu_858_p0;
assign grp_fu_1032_p_din1 = grp_fu_858_p1;
assign grp_fu_1032_p_opcode = grp_fu_858_opcode;
assign grp_fu_1036_p_ce = 1'b1;
assign grp_fu_1036_p_din0 = grp_fu_862_p0;
assign grp_fu_1036_p_din1 = grp_fu_862_p1;
assign grp_fu_1036_p_opcode = grp_fu_862_opcode;
assign grp_fu_1040_p_ce = 1'b1;
assign grp_fu_1040_p_din0 = grp_fu_866_p0;
assign grp_fu_1040_p_din1 = grp_fu_866_p1;
assign grp_fu_1040_p_opcode = grp_fu_866_opcode;
assign grp_fu_1044_p_ce = 1'b1;
assign grp_fu_1044_p_din0 = grp_fu_870_p0;
assign grp_fu_1044_p_din1 = grp_fu_870_p1;
assign grp_fu_1044_p_opcode = grp_fu_870_opcode;
assign grp_fu_1048_p_ce = 1'b1;
assign grp_fu_1048_p_din0 = grp_fu_874_p0;
assign grp_fu_1048_p_din1 = grp_fu_874_p1;
assign grp_fu_1048_p_opcode = grp_fu_874_opcode;
assign grp_fu_1052_p_ce = 1'b1;
assign grp_fu_1052_p_din0 = grp_fu_878_p0;
assign grp_fu_1052_p_din1 = grp_fu_878_p1;
assign grp_fu_1052_p_opcode = grp_fu_878_opcode;
assign grp_fu_1056_p_ce = 1'b1;
assign grp_fu_1056_p_din0 = grp_fu_882_p0;
assign grp_fu_1056_p_din1 = grp_fu_882_p1;
assign grp_fu_1060_p_ce = 1'b1;
assign grp_fu_1060_p_din0 = grp_fu_887_p0;
assign grp_fu_1060_p_din1 = grp_fu_887_p1;
assign grp_fu_1064_p_ce = 1'b1;
assign grp_fu_1064_p_din0 = grp_fu_894_p0;
assign grp_fu_1064_p_din1 = grp_fu_894_p1;
assign grp_fu_1093_p_ce = 1'b1;
assign grp_fu_1093_p_din0 = grp_fu_899_p0;
assign grp_fu_1093_p_din1 = grp_fu_899_p1;
assign grp_fu_996_p_ce = 1'b1;
assign grp_fu_996_p_din0 = grp_fu_822_p0;
assign grp_fu_996_p_din1 = grp_fu_822_p1;
assign grp_fu_996_p_opcode = grp_fu_822_opcode;
assign icmp_ln365_fu_914_p2 = ((ap_sig_allocacmp_tid_5 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln_fu_932_p4 = {{ap_sig_allocacmp_tid_5[5:2]}};
assign sext_ln392_fu_1575_p1 = zext_ln390_cast_reg_2415;
assign sext_ln395_fu_1617_p1 = zext_ln391_cast_reg_2421;
assign sext_ln396_fu_1657_p1 = zext_ln390_cast_reg_2415;
assign tmp_89_fu_1101_p9 = 'bx;
assign tmp_90_fu_1125_p9 = 'bx;
assign tmp_91_fu_1149_p9 = 'bx;
assign tmp_s_fu_1077_p9 = 'bx;
assign trunc_ln365_fu_978_p1 = tid_5_reg_1685[1:0];
assign trunc_ln386_1_fu_1234_p1 = bitcast_ln386_2_fu_1217_p1[62:0];
assign trunc_ln386_2_fu_1338_p1 = bitcast_ln386_4_fu_1321_p1[62:0];
assign trunc_ln386_3_fu_1372_p1 = bitcast_ln386_6_fu_1355_p1[62:0];
assign trunc_ln386_4_fu_1268_p1 = bitcast_ln386_8_fu_1251_p1[62:0];
assign trunc_ln386_5_fu_1303_p1 = bitcast_ln386_10_fu_1286_p1[62:0];
assign trunc_ln386_6_fu_1406_p1 = bitcast_ln386_12_fu_1389_p1[62:0];
assign trunc_ln386_7_fu_1440_p1 = bitcast_ln386_14_fu_1423_p1[62:0];
assign trunc_ln386_8_fu_1474_p1 = bitcast_ln386_16_fu_1457_p1[62:0];
assign trunc_ln386_9_fu_1508_p1 = bitcast_ln386_18_fu_1491_p1[62:0];
assign trunc_ln386_fu_1200_p1 = bitcast_ln386_fu_1183_p1[62:0];
assign trunc_ln390_fu_1525_p1 = tid_5_reg_1685_pp0_iter13_reg[5:0];
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
assign xor_ln386_10_fu_1194_p2 = (bit_sel_fu_1186_p3 ^ 1'd1);
assign xor_ln386_11_fu_1332_p2 = (bit_sel21_fu_1324_p3 ^ 1'd1);
assign xor_ln386_12_fu_1366_p2 = (bit_sel22_fu_1358_p3 ^ 1'd1);
assign xor_ln386_13_fu_1262_p2 = (bit_sel23_fu_1254_p3 ^ 1'd1);
assign xor_ln386_14_fu_1297_p2 = (bit_sel24_fu_1289_p3 ^ 1'd1);
assign xor_ln386_15_fu_1400_p2 = (bit_sel25_fu_1392_p3 ^ 1'd1);
assign xor_ln386_16_fu_1434_p2 = (bit_sel26_fu_1426_p3 ^ 1'd1);
assign xor_ln386_17_fu_1468_p2 = (bit_sel27_fu_1460_p3 ^ 1'd1);
assign xor_ln386_18_fu_1502_p2 = (bit_sel28_fu_1494_p3 ^ 1'd1);
assign xor_ln386_1_fu_1238_p3 = {{xor_ln386_fu_1228_p2}, {trunc_ln386_1_fu_1234_p1}};
assign xor_ln386_2_fu_1342_p3 = {{xor_ln386_11_fu_1332_p2}, {trunc_ln386_2_fu_1338_p1}};
assign xor_ln386_3_fu_1376_p3 = {{xor_ln386_12_fu_1366_p2}, {trunc_ln386_3_fu_1372_p1}};
assign xor_ln386_4_fu_1272_p3 = {{xor_ln386_13_fu_1262_p2}, {trunc_ln386_4_fu_1268_p1}};
assign xor_ln386_5_fu_1307_p3 = {{xor_ln386_14_fu_1297_p2}, {trunc_ln386_5_fu_1303_p1}};
assign xor_ln386_6_fu_1410_p3 = {{xor_ln386_15_fu_1400_p2}, {trunc_ln386_6_fu_1406_p1}};
assign xor_ln386_7_fu_1444_p3 = {{xor_ln386_16_fu_1434_p2}, {trunc_ln386_7_fu_1440_p1}};
assign xor_ln386_8_fu_1478_p3 = {{xor_ln386_17_fu_1468_p2}, {trunc_ln386_8_fu_1474_p1}};
assign xor_ln386_9_fu_1512_p3 = {{xor_ln386_18_fu_1502_p2}, {trunc_ln386_9_fu_1508_p1}};
assign xor_ln386_fu_1228_p2 = (bit_sel20_fu_1220_p3 ^ 1'd1);
assign xor_ln3_fu_1204_p3 = {{xor_ln386_10_fu_1194_p2}, {trunc_ln386_fu_1200_p1}};
assign zext_ln365_1_fu_1638_p1 = tid_5_reg_1685_pp0_iter14_reg;
assign zext_ln365_fu_920_p1 = ap_sig_allocacmp_tid_5;
assign zext_ln367_fu_942_p1 = lshr_ln_fu_932_p4;
assign zext_ln390_cast_fu_1528_p3 = {{1'd1}, {trunc_ln390_fu_1525_p1}};
assign zext_ln390_fu_1536_p1 = $unsigned(zext_ln390_cast_fu_1528_p3);
assign zext_ln391_cast_fu_1546_p3 = {{1'd1}, {tid_5_reg_1685_pp0_iter13_reg}};
assign zext_ln391_fu_1553_p1 = $unsigned(zext_ln391_cast_fu_1546_p3);
assign zext_ln392_fu_1578_p1 = $unsigned(sext_ln392_fu_1575_p1);
assign zext_ln393_1_fu_1607_p1 = zext_ln393_cast_fu_1599_p3;
assign zext_ln393_cast_fu_1599_p3 = {{1'd1}, {zext_ln393_fu_1596_p1}};
assign zext_ln393_fu_1596_p1 = tid_5_reg_1685_pp0_iter14_reg;
assign zext_ln394_fu_1647_p1 = add_ln394_fu_1641_p2;
assign zext_ln395_fu_1620_p1 = $unsigned(sext_ln395_fu_1617_p1);
assign zext_ln396_fu_1660_p1 = $unsigned(sext_ln396_fu_1657_p1);
always @ (posedge ap_clk) begin
    zext_ln365_reg_1699[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter3_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter4_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter5_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter6_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter7_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter8_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter9_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter10_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter11_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter12_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1699_pp0_iter13_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln390_cast_reg_2415[6] <= 1'b1;
    zext_ln391_cast_reg_2421[7] <= 1'b1;
end
endmodule 
