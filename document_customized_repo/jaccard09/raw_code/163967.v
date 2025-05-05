module kernel_syr2k_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v4,v227_15_address0,v227_15_ce0,v227_15_we0,v227_15_d0,v227_15_address1,v227_15_ce1,v227_15_q1,v227_14_address0,v227_14_ce0,v227_14_we0,v227_14_d0,v227_14_address1,v227_14_ce1,v227_14_q1,v227_13_address0,v227_13_ce0,v227_13_we0,v227_13_d0,v227_13_address1,v227_13_ce1,v227_13_q1,v227_12_address0,v227_12_ce0,v227_12_we0,v227_12_d0,v227_12_address1,v227_12_ce1,v227_12_q1,v227_11_address0,v227_11_ce0,v227_11_we0,v227_11_d0,v227_11_address1,v227_11_ce1,v227_11_q1,v227_10_address0,v227_10_ce0,v227_10_we0,v227_10_d0,v227_10_address1,v227_10_ce1,v227_10_q1,v227_9_address0,v227_9_ce0,v227_9_we0,v227_9_d0,v227_9_address1,v227_9_ce1,v227_9_q1,v227_8_address0,v227_8_ce0,v227_8_we0,v227_8_d0,v227_8_address1,v227_8_ce1,v227_8_q1,v227_7_address0,v227_7_ce0,v227_7_we0,v227_7_d0,v227_7_address1,v227_7_ce1,v227_7_q1,v227_6_address0,v227_6_ce0,v227_6_we0,v227_6_d0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_5_address0,v227_5_ce0,v227_5_we0,v227_5_d0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_4_address0,v227_4_ce0,v227_4_we0,v227_4_d0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_3_address0,v227_3_ce0,v227_3_we0,v227_3_d0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_2_address0,v227_2_ce0,v227_2_we0,v227_2_d0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_1_address0,v227_1_ce0,v227_1_we0,v227_1_d0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_0_address0,v227_0_ce0,v227_0_we0,v227_0_d0,v227_0_address1,v227_0_ce1,v227_0_q1,mul_ln37,v3_cast1,grp_fu_268_p_din0,grp_fu_268_p_din1,grp_fu_268_p_dout0,grp_fu_268_p_ce,grp_fu_272_p_din0,grp_fu_272_p_din1,grp_fu_272_p_dout0,grp_fu_272_p_ce,grp_fu_276_p_din0,grp_fu_276_p_din1,grp_fu_276_p_dout0,grp_fu_276_p_ce,grp_fu_280_p_din0,grp_fu_280_p_din1,grp_fu_280_p_dout0,grp_fu_280_p_ce,grp_fu_284_p_din0,grp_fu_284_p_din1,grp_fu_284_p_dout0,grp_fu_284_p_ce,grp_fu_288_p_din0,grp_fu_288_p_din1,grp_fu_288_p_dout0,grp_fu_288_p_ce,grp_fu_292_p_din0,grp_fu_292_p_din1,grp_fu_292_p_dout0,grp_fu_292_p_ce,grp_fu_296_p_din0,grp_fu_296_p_din1,grp_fu_296_p_dout0,grp_fu_296_p_ce,grp_fu_300_p_din0,grp_fu_300_p_din1,grp_fu_300_p_dout0,grp_fu_300_p_ce,grp_fu_304_p_din0,grp_fu_304_p_din1,grp_fu_304_p_dout0,grp_fu_304_p_ce,grp_fu_308_p_din0,grp_fu_308_p_din1,grp_fu_308_p_dout0,grp_fu_308_p_ce,grp_fu_312_p_din0,grp_fu_312_p_din1,grp_fu_312_p_dout0,grp_fu_312_p_ce,grp_fu_316_p_din0,grp_fu_316_p_din1,grp_fu_316_p_dout0,grp_fu_316_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] v4;
output  [11:0] v227_15_address0;
output   v227_15_ce0;
output   v227_15_we0;
output  [31:0] v227_15_d0;
output  [11:0] v227_15_address1;
output   v227_15_ce1;
input  [31:0] v227_15_q1;
output  [11:0] v227_14_address0;
output   v227_14_ce0;
output   v227_14_we0;
output  [31:0] v227_14_d0;
output  [11:0] v227_14_address1;
output   v227_14_ce1;
input  [31:0] v227_14_q1;
output  [11:0] v227_13_address0;
output   v227_13_ce0;
output   v227_13_we0;
output  [31:0] v227_13_d0;
output  [11:0] v227_13_address1;
output   v227_13_ce1;
input  [31:0] v227_13_q1;
output  [11:0] v227_12_address0;
output   v227_12_ce0;
output   v227_12_we0;
output  [31:0] v227_12_d0;
output  [11:0] v227_12_address1;
output   v227_12_ce1;
input  [31:0] v227_12_q1;
output  [11:0] v227_11_address0;
output   v227_11_ce0;
output   v227_11_we0;
output  [31:0] v227_11_d0;
output  [11:0] v227_11_address1;
output   v227_11_ce1;
input  [31:0] v227_11_q1;
output  [11:0] v227_10_address0;
output   v227_10_ce0;
output   v227_10_we0;
output  [31:0] v227_10_d0;
output  [11:0] v227_10_address1;
output   v227_10_ce1;
input  [31:0] v227_10_q1;
output  [11:0] v227_9_address0;
output   v227_9_ce0;
output   v227_9_we0;
output  [31:0] v227_9_d0;
output  [11:0] v227_9_address1;
output   v227_9_ce1;
input  [31:0] v227_9_q1;
output  [11:0] v227_8_address0;
output   v227_8_ce0;
output   v227_8_we0;
output  [31:0] v227_8_d0;
output  [11:0] v227_8_address1;
output   v227_8_ce1;
input  [31:0] v227_8_q1;
output  [11:0] v227_7_address0;
output   v227_7_ce0;
output   v227_7_we0;
output  [31:0] v227_7_d0;
output  [11:0] v227_7_address1;
output   v227_7_ce1;
input  [31:0] v227_7_q1;
output  [11:0] v227_6_address0;
output   v227_6_ce0;
output   v227_6_we0;
output  [31:0] v227_6_d0;
output  [11:0] v227_6_address1;
output   v227_6_ce1;
input  [31:0] v227_6_q1;
output  [11:0] v227_5_address0;
output   v227_5_ce0;
output   v227_5_we0;
output  [31:0] v227_5_d0;
output  [11:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
output  [11:0] v227_4_address0;
output   v227_4_ce0;
output   v227_4_we0;
output  [31:0] v227_4_d0;
output  [11:0] v227_4_address1;
output   v227_4_ce1;
input  [31:0] v227_4_q1;
output  [11:0] v227_3_address0;
output   v227_3_ce0;
output   v227_3_we0;
output  [31:0] v227_3_d0;
output  [11:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [11:0] v227_2_address0;
output   v227_2_ce0;
output   v227_2_we0;
output  [31:0] v227_2_d0;
output  [11:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [11:0] v227_1_address0;
output   v227_1_ce0;
output   v227_1_we0;
output  [31:0] v227_1_d0;
output  [11:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [11:0] v227_0_address0;
output   v227_0_ce0;
output   v227_0_we0;
output  [31:0] v227_0_d0;
output  [11:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
input  [11:0] mul_ln37;
input  [7:0] v3_cast1;
output  [31:0] grp_fu_268_p_din0;
output  [31:0] grp_fu_268_p_din1;
input  [31:0] grp_fu_268_p_dout0;
output   grp_fu_268_p_ce;
output  [31:0] grp_fu_272_p_din0;
output  [31:0] grp_fu_272_p_din1;
input  [31:0] grp_fu_272_p_dout0;
output   grp_fu_272_p_ce;
output  [31:0] grp_fu_276_p_din0;
output  [31:0] grp_fu_276_p_din1;
input  [31:0] grp_fu_276_p_dout0;
output   grp_fu_276_p_ce;
output  [31:0] grp_fu_280_p_din0;
output  [31:0] grp_fu_280_p_din1;
input  [31:0] grp_fu_280_p_dout0;
output   grp_fu_280_p_ce;
output  [31:0] grp_fu_284_p_din0;
output  [31:0] grp_fu_284_p_din1;
input  [31:0] grp_fu_284_p_dout0;
output   grp_fu_284_p_ce;
output  [31:0] grp_fu_288_p_din0;
output  [31:0] grp_fu_288_p_din1;
input  [31:0] grp_fu_288_p_dout0;
output   grp_fu_288_p_ce;
output  [31:0] grp_fu_292_p_din0;
output  [31:0] grp_fu_292_p_din1;
input  [31:0] grp_fu_292_p_dout0;
output   grp_fu_292_p_ce;
output  [31:0] grp_fu_296_p_din0;
output  [31:0] grp_fu_296_p_din1;
input  [31:0] grp_fu_296_p_dout0;
output   grp_fu_296_p_ce;
output  [31:0] grp_fu_300_p_din0;
output  [31:0] grp_fu_300_p_din1;
input  [31:0] grp_fu_300_p_dout0;
output   grp_fu_300_p_ce;
output  [31:0] grp_fu_304_p_din0;
output  [31:0] grp_fu_304_p_din1;
input  [31:0] grp_fu_304_p_dout0;
output   grp_fu_304_p_ce;
output  [31:0] grp_fu_308_p_din0;
output  [31:0] grp_fu_308_p_din1;
input  [31:0] grp_fu_308_p_dout0;
output   grp_fu_308_p_ce;
output  [31:0] grp_fu_312_p_din0;
output  [31:0] grp_fu_312_p_din1;
input  [31:0] grp_fu_312_p_dout0;
output   grp_fu_312_p_ce;
output  [31:0] grp_fu_316_p_din0;
output  [31:0] grp_fu_316_p_din1;
input  [31:0] grp_fu_316_p_dout0;
output   grp_fu_316_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln34_fu_488_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [11:0] v227_0_addr_reg_924;
reg   [11:0] v227_0_addr_reg_924_pp0_iter1_reg;
reg   [11:0] v227_0_addr_reg_924_pp0_iter2_reg;
reg   [11:0] v227_0_addr_reg_924_pp0_iter3_reg;
reg   [11:0] v227_0_addr_reg_924_pp0_iter4_reg;
reg   [11:0] v227_0_addr_reg_924_pp0_iter5_reg;
reg   [11:0] v227_1_addr_reg_930;
reg   [11:0] v227_1_addr_reg_930_pp0_iter1_reg;
reg   [11:0] v227_1_addr_reg_930_pp0_iter2_reg;
reg   [11:0] v227_1_addr_reg_930_pp0_iter3_reg;
reg   [11:0] v227_1_addr_reg_930_pp0_iter4_reg;
reg   [11:0] v227_1_addr_reg_930_pp0_iter5_reg;
reg   [11:0] v227_2_addr_reg_936;
reg   [11:0] v227_2_addr_reg_936_pp0_iter1_reg;
reg   [11:0] v227_2_addr_reg_936_pp0_iter2_reg;
reg   [11:0] v227_2_addr_reg_936_pp0_iter3_reg;
reg   [11:0] v227_2_addr_reg_936_pp0_iter4_reg;
reg   [11:0] v227_2_addr_reg_936_pp0_iter5_reg;
reg   [11:0] v227_3_addr_reg_942;
reg   [11:0] v227_3_addr_reg_942_pp0_iter1_reg;
reg   [11:0] v227_3_addr_reg_942_pp0_iter2_reg;
reg   [11:0] v227_3_addr_reg_942_pp0_iter3_reg;
reg   [11:0] v227_3_addr_reg_942_pp0_iter4_reg;
reg   [11:0] v227_3_addr_reg_942_pp0_iter5_reg;
reg   [11:0] v227_4_addr_reg_948;
reg   [11:0] v227_4_addr_reg_948_pp0_iter1_reg;
reg   [11:0] v227_4_addr_reg_948_pp0_iter2_reg;
reg   [11:0] v227_4_addr_reg_948_pp0_iter3_reg;
reg   [11:0] v227_4_addr_reg_948_pp0_iter4_reg;
reg   [11:0] v227_4_addr_reg_948_pp0_iter5_reg;
reg   [11:0] v227_5_addr_reg_954;
reg   [11:0] v227_5_addr_reg_954_pp0_iter1_reg;
reg   [11:0] v227_5_addr_reg_954_pp0_iter2_reg;
reg   [11:0] v227_5_addr_reg_954_pp0_iter3_reg;
reg   [11:0] v227_5_addr_reg_954_pp0_iter4_reg;
reg   [11:0] v227_5_addr_reg_954_pp0_iter5_reg;
reg   [11:0] v227_6_addr_reg_960;
reg   [11:0] v227_6_addr_reg_960_pp0_iter1_reg;
reg   [11:0] v227_6_addr_reg_960_pp0_iter2_reg;
reg   [11:0] v227_6_addr_reg_960_pp0_iter3_reg;
reg   [11:0] v227_6_addr_reg_960_pp0_iter4_reg;
reg   [11:0] v227_6_addr_reg_960_pp0_iter5_reg;
reg   [11:0] v227_7_addr_reg_966;
reg   [11:0] v227_7_addr_reg_966_pp0_iter1_reg;
reg   [11:0] v227_7_addr_reg_966_pp0_iter2_reg;
reg   [11:0] v227_7_addr_reg_966_pp0_iter3_reg;
reg   [11:0] v227_7_addr_reg_966_pp0_iter4_reg;
reg   [11:0] v227_7_addr_reg_966_pp0_iter5_reg;
reg   [11:0] v227_8_addr_reg_972;
reg   [11:0] v227_8_addr_reg_972_pp0_iter1_reg;
reg   [11:0] v227_8_addr_reg_972_pp0_iter2_reg;
reg   [11:0] v227_8_addr_reg_972_pp0_iter3_reg;
reg   [11:0] v227_8_addr_reg_972_pp0_iter4_reg;
reg   [11:0] v227_8_addr_reg_972_pp0_iter5_reg;
reg   [11:0] v227_9_addr_reg_978;
reg   [11:0] v227_9_addr_reg_978_pp0_iter1_reg;
reg   [11:0] v227_9_addr_reg_978_pp0_iter2_reg;
reg   [11:0] v227_9_addr_reg_978_pp0_iter3_reg;
reg   [11:0] v227_9_addr_reg_978_pp0_iter4_reg;
reg   [11:0] v227_9_addr_reg_978_pp0_iter5_reg;
reg   [11:0] v227_10_addr_reg_984;
reg   [11:0] v227_10_addr_reg_984_pp0_iter1_reg;
reg   [11:0] v227_10_addr_reg_984_pp0_iter2_reg;
reg   [11:0] v227_10_addr_reg_984_pp0_iter3_reg;
reg   [11:0] v227_10_addr_reg_984_pp0_iter4_reg;
reg   [11:0] v227_10_addr_reg_984_pp0_iter5_reg;
reg   [11:0] v227_11_addr_reg_990;
reg   [11:0] v227_11_addr_reg_990_pp0_iter1_reg;
reg   [11:0] v227_11_addr_reg_990_pp0_iter2_reg;
reg   [11:0] v227_11_addr_reg_990_pp0_iter3_reg;
reg   [11:0] v227_11_addr_reg_990_pp0_iter4_reg;
reg   [11:0] v227_11_addr_reg_990_pp0_iter5_reg;
reg   [11:0] v227_12_addr_reg_996;
reg   [11:0] v227_12_addr_reg_996_pp0_iter1_reg;
reg   [11:0] v227_12_addr_reg_996_pp0_iter2_reg;
reg   [11:0] v227_12_addr_reg_996_pp0_iter3_reg;
reg   [11:0] v227_12_addr_reg_996_pp0_iter4_reg;
reg   [11:0] v227_12_addr_reg_996_pp0_iter5_reg;
reg   [11:0] v227_13_addr_reg_1002;
reg   [11:0] v227_13_addr_reg_1002_pp0_iter1_reg;
reg   [11:0] v227_13_addr_reg_1002_pp0_iter2_reg;
reg   [11:0] v227_13_addr_reg_1002_pp0_iter3_reg;
reg   [11:0] v227_13_addr_reg_1002_pp0_iter4_reg;
reg   [11:0] v227_13_addr_reg_1002_pp0_iter5_reg;
reg   [11:0] v227_14_addr_reg_1008;
reg   [11:0] v227_14_addr_reg_1008_pp0_iter1_reg;
reg   [11:0] v227_14_addr_reg_1008_pp0_iter2_reg;
reg   [11:0] v227_14_addr_reg_1008_pp0_iter3_reg;
reg   [11:0] v227_14_addr_reg_1008_pp0_iter4_reg;
reg   [11:0] v227_14_addr_reg_1008_pp0_iter5_reg;
reg   [11:0] v227_15_addr_reg_1014;
reg   [11:0] v227_15_addr_reg_1014_pp0_iter1_reg;
reg   [11:0] v227_15_addr_reg_1014_pp0_iter2_reg;
reg   [11:0] v227_15_addr_reg_1014_pp0_iter3_reg;
reg   [11:0] v227_15_addr_reg_1014_pp0_iter4_reg;
reg   [11:0] v227_15_addr_reg_1014_pp0_iter5_reg;
reg   [0:0] tmp_reg_1020;
reg   [0:0] tmp_reg_1020_pp0_iter1_reg;
reg   [0:0] tmp_reg_1020_pp0_iter2_reg;
reg   [0:0] tmp_reg_1020_pp0_iter3_reg;
reg   [0:0] tmp_reg_1020_pp0_iter4_reg;
reg   [0:0] tmp_reg_1020_pp0_iter5_reg;
wire   [0:0] icmp_ln41_fu_552_p2;
reg   [0:0] icmp_ln41_reg_1024;
reg   [0:0] icmp_ln41_reg_1024_pp0_iter1_reg;
reg   [0:0] icmp_ln41_reg_1024_pp0_iter2_reg;
reg   [0:0] icmp_ln41_reg_1024_pp0_iter3_reg;
reg   [0:0] icmp_ln41_reg_1024_pp0_iter4_reg;
reg   [0:0] icmp_ln41_reg_1024_pp0_iter5_reg;
reg   [0:0] tmp_1_reg_1028;
reg   [0:0] tmp_1_reg_1028_pp0_iter1_reg;
reg   [0:0] tmp_1_reg_1028_pp0_iter2_reg;
reg   [0:0] tmp_1_reg_1028_pp0_iter3_reg;
reg   [0:0] tmp_1_reg_1028_pp0_iter4_reg;
reg   [0:0] tmp_1_reg_1028_pp0_iter5_reg;
reg   [0:0] tmp_2_reg_1032;
reg   [0:0] tmp_2_reg_1032_pp0_iter1_reg;
reg   [0:0] tmp_2_reg_1032_pp0_iter2_reg;
reg   [0:0] tmp_2_reg_1032_pp0_iter3_reg;
reg   [0:0] tmp_2_reg_1032_pp0_iter4_reg;
reg   [0:0] tmp_2_reg_1032_pp0_iter5_reg;
reg   [0:0] tmp_3_reg_1036;
reg   [0:0] tmp_3_reg_1036_pp0_iter1_reg;
reg   [0:0] tmp_3_reg_1036_pp0_iter2_reg;
reg   [0:0] tmp_3_reg_1036_pp0_iter3_reg;
reg   [0:0] tmp_3_reg_1036_pp0_iter4_reg;
reg   [0:0] tmp_3_reg_1036_pp0_iter5_reg;
reg   [0:0] tmp_4_reg_1040;
reg   [0:0] tmp_4_reg_1040_pp0_iter1_reg;
reg   [0:0] tmp_4_reg_1040_pp0_iter2_reg;
reg   [0:0] tmp_4_reg_1040_pp0_iter3_reg;
reg   [0:0] tmp_4_reg_1040_pp0_iter4_reg;
reg   [0:0] tmp_4_reg_1040_pp0_iter5_reg;
reg   [0:0] tmp_5_reg_1044;
reg   [0:0] tmp_5_reg_1044_pp0_iter1_reg;
reg   [0:0] tmp_5_reg_1044_pp0_iter2_reg;
reg   [0:0] tmp_5_reg_1044_pp0_iter3_reg;
reg   [0:0] tmp_5_reg_1044_pp0_iter4_reg;
reg   [0:0] tmp_5_reg_1044_pp0_iter5_reg;
reg   [0:0] tmp_6_reg_1048;
reg   [0:0] tmp_6_reg_1048_pp0_iter1_reg;
reg   [0:0] tmp_6_reg_1048_pp0_iter2_reg;
reg   [0:0] tmp_6_reg_1048_pp0_iter3_reg;
reg   [0:0] tmp_6_reg_1048_pp0_iter4_reg;
reg   [0:0] tmp_6_reg_1048_pp0_iter5_reg;
reg   [0:0] tmp_7_reg_1052;
reg   [0:0] tmp_7_reg_1052_pp0_iter1_reg;
reg   [0:0] tmp_7_reg_1052_pp0_iter2_reg;
reg   [0:0] tmp_7_reg_1052_pp0_iter3_reg;
reg   [0:0] tmp_7_reg_1052_pp0_iter4_reg;
reg   [0:0] tmp_7_reg_1052_pp0_iter5_reg;
reg   [0:0] tmp_8_reg_1056;
reg   [0:0] tmp_8_reg_1056_pp0_iter1_reg;
reg   [0:0] tmp_8_reg_1056_pp0_iter2_reg;
reg   [0:0] tmp_8_reg_1056_pp0_iter3_reg;
reg   [0:0] tmp_8_reg_1056_pp0_iter4_reg;
reg   [0:0] tmp_8_reg_1056_pp0_iter5_reg;
reg   [0:0] tmp_9_reg_1060;
reg   [0:0] tmp_9_reg_1060_pp0_iter1_reg;
reg   [0:0] tmp_9_reg_1060_pp0_iter2_reg;
reg   [0:0] tmp_9_reg_1060_pp0_iter3_reg;
reg   [0:0] tmp_9_reg_1060_pp0_iter4_reg;
reg   [0:0] tmp_9_reg_1060_pp0_iter5_reg;
reg   [0:0] tmp_10_reg_1064;
reg   [0:0] tmp_10_reg_1064_pp0_iter1_reg;
reg   [0:0] tmp_10_reg_1064_pp0_iter2_reg;
reg   [0:0] tmp_10_reg_1064_pp0_iter3_reg;
reg   [0:0] tmp_10_reg_1064_pp0_iter4_reg;
reg   [0:0] tmp_10_reg_1064_pp0_iter5_reg;
reg   [0:0] tmp_11_reg_1068;
reg   [0:0] tmp_11_reg_1068_pp0_iter1_reg;
reg   [0:0] tmp_11_reg_1068_pp0_iter2_reg;
reg   [0:0] tmp_11_reg_1068_pp0_iter3_reg;
reg   [0:0] tmp_11_reg_1068_pp0_iter4_reg;
reg   [0:0] tmp_11_reg_1068_pp0_iter5_reg;
reg   [0:0] tmp_12_reg_1072;
reg   [0:0] tmp_12_reg_1072_pp0_iter1_reg;
reg   [0:0] tmp_12_reg_1072_pp0_iter2_reg;
reg   [0:0] tmp_12_reg_1072_pp0_iter3_reg;
reg   [0:0] tmp_12_reg_1072_pp0_iter4_reg;
reg   [0:0] tmp_12_reg_1072_pp0_iter5_reg;
reg   [0:0] tmp_13_reg_1076;
reg   [0:0] tmp_13_reg_1076_pp0_iter1_reg;
reg   [0:0] tmp_13_reg_1076_pp0_iter2_reg;
reg   [0:0] tmp_13_reg_1076_pp0_iter3_reg;
reg   [0:0] tmp_13_reg_1076_pp0_iter4_reg;
reg   [0:0] tmp_13_reg_1076_pp0_iter5_reg;
reg   [0:0] tmp_14_reg_1080;
reg   [0:0] tmp_14_reg_1080_pp0_iter1_reg;
reg   [0:0] tmp_14_reg_1080_pp0_iter2_reg;
reg   [0:0] tmp_14_reg_1080_pp0_iter3_reg;
reg   [0:0] tmp_14_reg_1080_pp0_iter4_reg;
reg   [0:0] tmp_14_reg_1080_pp0_iter5_reg;
reg   [31:0] v227_0_load_reg_1084;
reg   [31:0] v227_1_load_reg_1089;
reg   [31:0] v227_2_load_reg_1094;
reg   [31:0] v227_3_load_reg_1099;
reg   [31:0] v227_4_load_reg_1104;
reg   [31:0] v227_5_load_reg_1109;
reg   [31:0] v227_6_load_reg_1114;
reg   [31:0] v227_7_load_reg_1119;
reg   [31:0] v227_8_load_reg_1124;
reg   [31:0] v227_9_load_reg_1129;
reg   [31:0] v227_10_load_reg_1134;
reg   [31:0] v227_11_load_reg_1139;
reg   [31:0] v227_12_load_reg_1144;
reg   [31:0] v227_13_load_reg_1149;
reg   [31:0] v227_14_load_reg_1154;
reg   [31:0] v227_15_load_reg_1159;
wire   [31:0] v7_fu_765_p1;
wire   [31:0] v9_fu_769_p1;
wire   [31:0] v11_fu_773_p1;
wire   [31:0] v13_fu_777_p1;
wire   [31:0] v15_fu_781_p1;
wire   [31:0] v17_fu_785_p1;
wire   [31:0] v19_fu_789_p1;
wire   [31:0] v21_fu_793_p1;
wire   [31:0] v23_fu_797_p1;
wire   [31:0] v25_fu_801_p1;
wire   [31:0] v27_fu_805_p1;
wire   [31:0] v29_fu_809_p1;
wire   [31:0] v31_fu_813_p1;
reg   [31:0] v8_reg_1244;
reg   [31:0] v10_reg_1249;
reg   [31:0] v12_reg_1254;
reg   [31:0] v14_reg_1259;
reg   [31:0] v16_reg_1264;
reg   [31:0] v18_reg_1269;
reg   [31:0] v20_reg_1274;
reg   [31:0] v22_reg_1279;
reg   [31:0] v24_reg_1284;
reg   [31:0] v26_reg_1289;
reg   [31:0] v28_reg_1294;
reg   [31:0] v30_reg_1299;
reg   [31:0] v32_reg_1304;
wire   [31:0] grp_fu_464_p2;
reg   [31:0] v34_reg_1309;
wire   [31:0] grp_fu_468_p2;
reg   [31:0] v36_reg_1314;
wire   [31:0] grp_fu_472_p2;
reg   [31:0] v38_reg_1319;
wire   [63:0] zext_ln37_1_fu_518_p1;
wire    ap_block_pp0_stage0;
reg   [7:0] v6_fu_118;
wire   [7:0] add_ln34_fu_754_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v6_1;
reg    v227_0_ce1_local;
reg    v227_0_we0_local;
wire   [31:0] bitcast_ln39_fu_829_p1;
reg    v227_0_ce0_local;
reg    v227_1_ce1_local;
reg    v227_1_we0_local;
wire   [31:0] bitcast_ln44_fu_833_p1;
reg    v227_1_ce0_local;
reg    v227_2_ce1_local;
reg    v227_2_we0_local;
wire   [31:0] bitcast_ln49_fu_837_p1;
reg    v227_2_ce0_local;
reg    v227_3_ce1_local;
reg    v227_3_we0_local;
wire   [31:0] bitcast_ln54_fu_841_p1;
reg    v227_3_ce0_local;
reg    v227_4_ce1_local;
reg    v227_4_we0_local;
wire   [31:0] bitcast_ln59_fu_845_p1;
reg    v227_4_ce0_local;
reg    v227_5_ce1_local;
reg    v227_5_we0_local;
wire   [31:0] bitcast_ln64_fu_849_p1;
reg    v227_5_ce0_local;
reg    v227_6_ce1_local;
reg    v227_6_we0_local;
wire   [31:0] bitcast_ln69_fu_853_p1;
reg    v227_6_ce0_local;
reg    v227_7_ce1_local;
reg    v227_7_we0_local;
wire   [31:0] bitcast_ln74_fu_857_p1;
reg    v227_7_ce0_local;
reg    v227_8_ce1_local;
reg    v227_8_we0_local;
wire   [31:0] bitcast_ln79_fu_861_p1;
reg    v227_8_ce0_local;
reg    v227_9_ce1_local;
reg    v227_9_we0_local;
wire   [31:0] bitcast_ln84_fu_865_p1;
reg    v227_9_ce0_local;
reg    v227_10_ce1_local;
reg    v227_10_we0_local;
wire   [31:0] bitcast_ln89_fu_869_p1;
reg    v227_10_ce0_local;
reg    v227_11_ce1_local;
reg    v227_11_we0_local;
wire   [31:0] bitcast_ln94_fu_873_p1;
reg    v227_11_ce0_local;
reg    v227_12_ce1_local;
reg    v227_12_we0_local;
wire   [31:0] bitcast_ln99_fu_877_p1;
reg    v227_12_ce0_local;
reg    v227_13_ce1_local;
reg    v227_13_we0_local;
wire   [31:0] bitcast_ln104_fu_881_p1;
reg    v227_13_ce0_local;
reg    v227_14_ce1_local;
reg    v227_14_we0_local;
wire   [31:0] bitcast_ln109_fu_885_p1;
reg    v227_14_ce0_local;
reg    v227_15_ce1_local;
reg    v227_15_we0_local;
wire   [31:0] bitcast_ln114_fu_889_p1;
reg    v227_15_ce0_local;
wire   [31:0] grp_fu_464_p0;
wire   [31:0] grp_fu_468_p0;
wire   [31:0] grp_fu_472_p0;
wire   [3:0] lshr_ln1_fu_498_p4;
wire   [11:0] zext_ln37_fu_508_p1;
wire   [11:0] add_ln37_fu_512_p2;
wire   [8:0] v3_cast1_cast_fu_476_p1;
wire   [8:0] zext_ln34_fu_494_p1;
wire   [8:0] sub_ln36_fu_538_p2;
wire   [8:0] add_ln46_fu_558_p2;
wire   [8:0] add_ln51_fu_572_p2;
wire   [8:0] add_ln56_fu_586_p2;
wire   [8:0] add_ln61_fu_600_p2;
wire   [8:0] add_ln66_fu_614_p2;
wire   [8:0] add_ln71_fu_628_p2;
wire   [8:0] add_ln76_fu_642_p2;
wire   [8:0] add_ln81_fu_656_p2;
wire   [8:0] add_ln86_fu_670_p2;
wire   [8:0] add_ln91_fu_684_p2;
wire   [8:0] add_ln96_fu_698_p2;
wire   [8:0] add_ln101_fu_712_p2;
wire   [8:0] add_ln106_fu_726_p2;
wire   [8:0] add_ln111_fu_740_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 v6_fu_118 = 8'd0;
#0 ap_done_reg = 1'b0;
end
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_464_p0),.din1(v4),.ce(1'b1),.dout(grp_fu_464_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_468_p0),.din1(v4),.ce(1'b1),.dout(grp_fu_468_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_472_p0),.din1(v4),.ce(1'b1),.dout(grp_fu_472_p2));
kernel_syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln34_fu_488_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v6_fu_118 <= add_ln34_fu_754_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v6_fu_118 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln41_reg_1024 <= icmp_ln41_fu_552_p2;
        icmp_ln41_reg_1024_pp0_iter1_reg <= icmp_ln41_reg_1024;
        tmp_10_reg_1064 <= add_ln91_fu_684_p2[32'd8];
        tmp_10_reg_1064_pp0_iter1_reg <= tmp_10_reg_1064;
        tmp_11_reg_1068 <= add_ln96_fu_698_p2[32'd8];
        tmp_11_reg_1068_pp0_iter1_reg <= tmp_11_reg_1068;
        tmp_12_reg_1072 <= add_ln101_fu_712_p2[32'd8];
        tmp_12_reg_1072_pp0_iter1_reg <= tmp_12_reg_1072;
        tmp_13_reg_1076 <= add_ln106_fu_726_p2[32'd8];
        tmp_13_reg_1076_pp0_iter1_reg <= tmp_13_reg_1076;
        tmp_14_reg_1080 <= add_ln111_fu_740_p2[32'd8];
        tmp_14_reg_1080_pp0_iter1_reg <= tmp_14_reg_1080;
        tmp_1_reg_1028 <= add_ln46_fu_558_p2[32'd8];
        tmp_1_reg_1028_pp0_iter1_reg <= tmp_1_reg_1028;
        tmp_2_reg_1032 <= add_ln51_fu_572_p2[32'd8];
        tmp_2_reg_1032_pp0_iter1_reg <= tmp_2_reg_1032;
        tmp_3_reg_1036 <= add_ln56_fu_586_p2[32'd8];
        tmp_3_reg_1036_pp0_iter1_reg <= tmp_3_reg_1036;
        tmp_4_reg_1040 <= add_ln61_fu_600_p2[32'd8];
        tmp_4_reg_1040_pp0_iter1_reg <= tmp_4_reg_1040;
        tmp_5_reg_1044 <= add_ln66_fu_614_p2[32'd8];
        tmp_5_reg_1044_pp0_iter1_reg <= tmp_5_reg_1044;
        tmp_6_reg_1048 <= add_ln71_fu_628_p2[32'd8];
        tmp_6_reg_1048_pp0_iter1_reg <= tmp_6_reg_1048;
        tmp_7_reg_1052 <= add_ln76_fu_642_p2[32'd8];
        tmp_7_reg_1052_pp0_iter1_reg <= tmp_7_reg_1052;
        tmp_8_reg_1056 <= add_ln81_fu_656_p2[32'd8];
        tmp_8_reg_1056_pp0_iter1_reg <= tmp_8_reg_1056;
        tmp_9_reg_1060 <= add_ln86_fu_670_p2[32'd8];
        tmp_9_reg_1060_pp0_iter1_reg <= tmp_9_reg_1060;
        tmp_reg_1020 <= sub_ln36_fu_538_p2[32'd8];
        tmp_reg_1020_pp0_iter1_reg <= tmp_reg_1020;
        v227_0_addr_reg_924 <= zext_ln37_1_fu_518_p1;
        v227_0_addr_reg_924_pp0_iter1_reg <= v227_0_addr_reg_924;
        v227_10_addr_reg_984 <= zext_ln37_1_fu_518_p1;
        v227_10_addr_reg_984_pp0_iter1_reg <= v227_10_addr_reg_984;
        v227_11_addr_reg_990 <= zext_ln37_1_fu_518_p1;
        v227_11_addr_reg_990_pp0_iter1_reg <= v227_11_addr_reg_990;
        v227_12_addr_reg_996 <= zext_ln37_1_fu_518_p1;
        v227_12_addr_reg_996_pp0_iter1_reg <= v227_12_addr_reg_996;
        v227_13_addr_reg_1002 <= zext_ln37_1_fu_518_p1;
        v227_13_addr_reg_1002_pp0_iter1_reg <= v227_13_addr_reg_1002;
        v227_14_addr_reg_1008 <= zext_ln37_1_fu_518_p1;
        v227_14_addr_reg_1008_pp0_iter1_reg <= v227_14_addr_reg_1008;
        v227_15_addr_reg_1014 <= zext_ln37_1_fu_518_p1;
        v227_15_addr_reg_1014_pp0_iter1_reg <= v227_15_addr_reg_1014;
        v227_1_addr_reg_930 <= zext_ln37_1_fu_518_p1;
        v227_1_addr_reg_930_pp0_iter1_reg <= v227_1_addr_reg_930;
        v227_2_addr_reg_936 <= zext_ln37_1_fu_518_p1;
        v227_2_addr_reg_936_pp0_iter1_reg <= v227_2_addr_reg_936;
        v227_3_addr_reg_942 <= zext_ln37_1_fu_518_p1;
        v227_3_addr_reg_942_pp0_iter1_reg <= v227_3_addr_reg_942;
        v227_4_addr_reg_948 <= zext_ln37_1_fu_518_p1;
        v227_4_addr_reg_948_pp0_iter1_reg <= v227_4_addr_reg_948;
        v227_5_addr_reg_954 <= zext_ln37_1_fu_518_p1;
        v227_5_addr_reg_954_pp0_iter1_reg <= v227_5_addr_reg_954;
        v227_6_addr_reg_960 <= zext_ln37_1_fu_518_p1;
        v227_6_addr_reg_960_pp0_iter1_reg <= v227_6_addr_reg_960;
        v227_7_addr_reg_966 <= zext_ln37_1_fu_518_p1;
        v227_7_addr_reg_966_pp0_iter1_reg <= v227_7_addr_reg_966;
        v227_8_addr_reg_972 <= zext_ln37_1_fu_518_p1;
        v227_8_addr_reg_972_pp0_iter1_reg <= v227_8_addr_reg_972;
        v227_9_addr_reg_978 <= zext_ln37_1_fu_518_p1;
        v227_9_addr_reg_978_pp0_iter1_reg <= v227_9_addr_reg_978;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        icmp_ln41_reg_1024_pp0_iter2_reg <= icmp_ln41_reg_1024_pp0_iter1_reg;
        icmp_ln41_reg_1024_pp0_iter3_reg <= icmp_ln41_reg_1024_pp0_iter2_reg;
        icmp_ln41_reg_1024_pp0_iter4_reg <= icmp_ln41_reg_1024_pp0_iter3_reg;
        icmp_ln41_reg_1024_pp0_iter5_reg <= icmp_ln41_reg_1024_pp0_iter4_reg;
        tmp_10_reg_1064_pp0_iter2_reg <= tmp_10_reg_1064_pp0_iter1_reg;
        tmp_10_reg_1064_pp0_iter3_reg <= tmp_10_reg_1064_pp0_iter2_reg;
        tmp_10_reg_1064_pp0_iter4_reg <= tmp_10_reg_1064_pp0_iter3_reg;
        tmp_10_reg_1064_pp0_iter5_reg <= tmp_10_reg_1064_pp0_iter4_reg;
        tmp_11_reg_1068_pp0_iter2_reg <= tmp_11_reg_1068_pp0_iter1_reg;
        tmp_11_reg_1068_pp0_iter3_reg <= tmp_11_reg_1068_pp0_iter2_reg;
        tmp_11_reg_1068_pp0_iter4_reg <= tmp_11_reg_1068_pp0_iter3_reg;
        tmp_11_reg_1068_pp0_iter5_reg <= tmp_11_reg_1068_pp0_iter4_reg;
        tmp_12_reg_1072_pp0_iter2_reg <= tmp_12_reg_1072_pp0_iter1_reg;
        tmp_12_reg_1072_pp0_iter3_reg <= tmp_12_reg_1072_pp0_iter2_reg;
        tmp_12_reg_1072_pp0_iter4_reg <= tmp_12_reg_1072_pp0_iter3_reg;
        tmp_12_reg_1072_pp0_iter5_reg <= tmp_12_reg_1072_pp0_iter4_reg;
        tmp_13_reg_1076_pp0_iter2_reg <= tmp_13_reg_1076_pp0_iter1_reg;
        tmp_13_reg_1076_pp0_iter3_reg <= tmp_13_reg_1076_pp0_iter2_reg;
        tmp_13_reg_1076_pp0_iter4_reg <= tmp_13_reg_1076_pp0_iter3_reg;
        tmp_13_reg_1076_pp0_iter5_reg <= tmp_13_reg_1076_pp0_iter4_reg;
        tmp_14_reg_1080_pp0_iter2_reg <= tmp_14_reg_1080_pp0_iter1_reg;
        tmp_14_reg_1080_pp0_iter3_reg <= tmp_14_reg_1080_pp0_iter2_reg;
        tmp_14_reg_1080_pp0_iter4_reg <= tmp_14_reg_1080_pp0_iter3_reg;
        tmp_14_reg_1080_pp0_iter5_reg <= tmp_14_reg_1080_pp0_iter4_reg;
        tmp_1_reg_1028_pp0_iter2_reg <= tmp_1_reg_1028_pp0_iter1_reg;
        tmp_1_reg_1028_pp0_iter3_reg <= tmp_1_reg_1028_pp0_iter2_reg;
        tmp_1_reg_1028_pp0_iter4_reg <= tmp_1_reg_1028_pp0_iter3_reg;
        tmp_1_reg_1028_pp0_iter5_reg <= tmp_1_reg_1028_pp0_iter4_reg;
        tmp_2_reg_1032_pp0_iter2_reg <= tmp_2_reg_1032_pp0_iter1_reg;
        tmp_2_reg_1032_pp0_iter3_reg <= tmp_2_reg_1032_pp0_iter2_reg;
        tmp_2_reg_1032_pp0_iter4_reg <= tmp_2_reg_1032_pp0_iter3_reg;
        tmp_2_reg_1032_pp0_iter5_reg <= tmp_2_reg_1032_pp0_iter4_reg;
        tmp_3_reg_1036_pp0_iter2_reg <= tmp_3_reg_1036_pp0_iter1_reg;
        tmp_3_reg_1036_pp0_iter3_reg <= tmp_3_reg_1036_pp0_iter2_reg;
        tmp_3_reg_1036_pp0_iter4_reg <= tmp_3_reg_1036_pp0_iter3_reg;
        tmp_3_reg_1036_pp0_iter5_reg <= tmp_3_reg_1036_pp0_iter4_reg;
        tmp_4_reg_1040_pp0_iter2_reg <= tmp_4_reg_1040_pp0_iter1_reg;
        tmp_4_reg_1040_pp0_iter3_reg <= tmp_4_reg_1040_pp0_iter2_reg;
        tmp_4_reg_1040_pp0_iter4_reg <= tmp_4_reg_1040_pp0_iter3_reg;
        tmp_4_reg_1040_pp0_iter5_reg <= tmp_4_reg_1040_pp0_iter4_reg;
        tmp_5_reg_1044_pp0_iter2_reg <= tmp_5_reg_1044_pp0_iter1_reg;
        tmp_5_reg_1044_pp0_iter3_reg <= tmp_5_reg_1044_pp0_iter2_reg;
        tmp_5_reg_1044_pp0_iter4_reg <= tmp_5_reg_1044_pp0_iter3_reg;
        tmp_5_reg_1044_pp0_iter5_reg <= tmp_5_reg_1044_pp0_iter4_reg;
        tmp_6_reg_1048_pp0_iter2_reg <= tmp_6_reg_1048_pp0_iter1_reg;
        tmp_6_reg_1048_pp0_iter3_reg <= tmp_6_reg_1048_pp0_iter2_reg;
        tmp_6_reg_1048_pp0_iter4_reg <= tmp_6_reg_1048_pp0_iter3_reg;
        tmp_6_reg_1048_pp0_iter5_reg <= tmp_6_reg_1048_pp0_iter4_reg;
        tmp_7_reg_1052_pp0_iter2_reg <= tmp_7_reg_1052_pp0_iter1_reg;
        tmp_7_reg_1052_pp0_iter3_reg <= tmp_7_reg_1052_pp0_iter2_reg;
        tmp_7_reg_1052_pp0_iter4_reg <= tmp_7_reg_1052_pp0_iter3_reg;
        tmp_7_reg_1052_pp0_iter5_reg <= tmp_7_reg_1052_pp0_iter4_reg;
        tmp_8_reg_1056_pp0_iter2_reg <= tmp_8_reg_1056_pp0_iter1_reg;
        tmp_8_reg_1056_pp0_iter3_reg <= tmp_8_reg_1056_pp0_iter2_reg;
        tmp_8_reg_1056_pp0_iter4_reg <= tmp_8_reg_1056_pp0_iter3_reg;
        tmp_8_reg_1056_pp0_iter5_reg <= tmp_8_reg_1056_pp0_iter4_reg;
        tmp_9_reg_1060_pp0_iter2_reg <= tmp_9_reg_1060_pp0_iter1_reg;
        tmp_9_reg_1060_pp0_iter3_reg <= tmp_9_reg_1060_pp0_iter2_reg;
        tmp_9_reg_1060_pp0_iter4_reg <= tmp_9_reg_1060_pp0_iter3_reg;
        tmp_9_reg_1060_pp0_iter5_reg <= tmp_9_reg_1060_pp0_iter4_reg;
        tmp_reg_1020_pp0_iter2_reg <= tmp_reg_1020_pp0_iter1_reg;
        tmp_reg_1020_pp0_iter3_reg <= tmp_reg_1020_pp0_iter2_reg;
        tmp_reg_1020_pp0_iter4_reg <= tmp_reg_1020_pp0_iter3_reg;
        tmp_reg_1020_pp0_iter5_reg <= tmp_reg_1020_pp0_iter4_reg;
        v10_reg_1249 <= grp_fu_272_p_dout0;
        v12_reg_1254 <= grp_fu_276_p_dout0;
        v14_reg_1259 <= grp_fu_280_p_dout0;
        v16_reg_1264 <= grp_fu_284_p_dout0;
        v18_reg_1269 <= grp_fu_288_p_dout0;
        v20_reg_1274 <= grp_fu_292_p_dout0;
        v227_0_addr_reg_924_pp0_iter2_reg <= v227_0_addr_reg_924_pp0_iter1_reg;
        v227_0_addr_reg_924_pp0_iter3_reg <= v227_0_addr_reg_924_pp0_iter2_reg;
        v227_0_addr_reg_924_pp0_iter4_reg <= v227_0_addr_reg_924_pp0_iter3_reg;
        v227_0_addr_reg_924_pp0_iter5_reg <= v227_0_addr_reg_924_pp0_iter4_reg;
        v227_10_addr_reg_984_pp0_iter2_reg <= v227_10_addr_reg_984_pp0_iter1_reg;
        v227_10_addr_reg_984_pp0_iter3_reg <= v227_10_addr_reg_984_pp0_iter2_reg;
        v227_10_addr_reg_984_pp0_iter4_reg <= v227_10_addr_reg_984_pp0_iter3_reg;
        v227_10_addr_reg_984_pp0_iter5_reg <= v227_10_addr_reg_984_pp0_iter4_reg;
        v227_11_addr_reg_990_pp0_iter2_reg <= v227_11_addr_reg_990_pp0_iter1_reg;
        v227_11_addr_reg_990_pp0_iter3_reg <= v227_11_addr_reg_990_pp0_iter2_reg;
        v227_11_addr_reg_990_pp0_iter4_reg <= v227_11_addr_reg_990_pp0_iter3_reg;
        v227_11_addr_reg_990_pp0_iter5_reg <= v227_11_addr_reg_990_pp0_iter4_reg;
        v227_12_addr_reg_996_pp0_iter2_reg <= v227_12_addr_reg_996_pp0_iter1_reg;
        v227_12_addr_reg_996_pp0_iter3_reg <= v227_12_addr_reg_996_pp0_iter2_reg;
        v227_12_addr_reg_996_pp0_iter4_reg <= v227_12_addr_reg_996_pp0_iter3_reg;
        v227_12_addr_reg_996_pp0_iter5_reg <= v227_12_addr_reg_996_pp0_iter4_reg;
        v227_13_addr_reg_1002_pp0_iter2_reg <= v227_13_addr_reg_1002_pp0_iter1_reg;
        v227_13_addr_reg_1002_pp0_iter3_reg <= v227_13_addr_reg_1002_pp0_iter2_reg;
        v227_13_addr_reg_1002_pp0_iter4_reg <= v227_13_addr_reg_1002_pp0_iter3_reg;
        v227_13_addr_reg_1002_pp0_iter5_reg <= v227_13_addr_reg_1002_pp0_iter4_reg;
        v227_14_addr_reg_1008_pp0_iter2_reg <= v227_14_addr_reg_1008_pp0_iter1_reg;
        v227_14_addr_reg_1008_pp0_iter3_reg <= v227_14_addr_reg_1008_pp0_iter2_reg;
        v227_14_addr_reg_1008_pp0_iter4_reg <= v227_14_addr_reg_1008_pp0_iter3_reg;
        v227_14_addr_reg_1008_pp0_iter5_reg <= v227_14_addr_reg_1008_pp0_iter4_reg;
        v227_15_addr_reg_1014_pp0_iter2_reg <= v227_15_addr_reg_1014_pp0_iter1_reg;
        v227_15_addr_reg_1014_pp0_iter3_reg <= v227_15_addr_reg_1014_pp0_iter2_reg;
        v227_15_addr_reg_1014_pp0_iter4_reg <= v227_15_addr_reg_1014_pp0_iter3_reg;
        v227_15_addr_reg_1014_pp0_iter5_reg <= v227_15_addr_reg_1014_pp0_iter4_reg;
        v227_1_addr_reg_930_pp0_iter2_reg <= v227_1_addr_reg_930_pp0_iter1_reg;
        v227_1_addr_reg_930_pp0_iter3_reg <= v227_1_addr_reg_930_pp0_iter2_reg;
        v227_1_addr_reg_930_pp0_iter4_reg <= v227_1_addr_reg_930_pp0_iter3_reg;
        v227_1_addr_reg_930_pp0_iter5_reg <= v227_1_addr_reg_930_pp0_iter4_reg;
        v227_2_addr_reg_936_pp0_iter2_reg <= v227_2_addr_reg_936_pp0_iter1_reg;
        v227_2_addr_reg_936_pp0_iter3_reg <= v227_2_addr_reg_936_pp0_iter2_reg;
        v227_2_addr_reg_936_pp0_iter4_reg <= v227_2_addr_reg_936_pp0_iter3_reg;
        v227_2_addr_reg_936_pp0_iter5_reg <= v227_2_addr_reg_936_pp0_iter4_reg;
        v227_3_addr_reg_942_pp0_iter2_reg <= v227_3_addr_reg_942_pp0_iter1_reg;
        v227_3_addr_reg_942_pp0_iter3_reg <= v227_3_addr_reg_942_pp0_iter2_reg;
        v227_3_addr_reg_942_pp0_iter4_reg <= v227_3_addr_reg_942_pp0_iter3_reg;
        v227_3_addr_reg_942_pp0_iter5_reg <= v227_3_addr_reg_942_pp0_iter4_reg;
        v227_4_addr_reg_948_pp0_iter2_reg <= v227_4_addr_reg_948_pp0_iter1_reg;
        v227_4_addr_reg_948_pp0_iter3_reg <= v227_4_addr_reg_948_pp0_iter2_reg;
        v227_4_addr_reg_948_pp0_iter4_reg <= v227_4_addr_reg_948_pp0_iter3_reg;
        v227_4_addr_reg_948_pp0_iter5_reg <= v227_4_addr_reg_948_pp0_iter4_reg;
        v227_5_addr_reg_954_pp0_iter2_reg <= v227_5_addr_reg_954_pp0_iter1_reg;
        v227_5_addr_reg_954_pp0_iter3_reg <= v227_5_addr_reg_954_pp0_iter2_reg;
        v227_5_addr_reg_954_pp0_iter4_reg <= v227_5_addr_reg_954_pp0_iter3_reg;
        v227_5_addr_reg_954_pp0_iter5_reg <= v227_5_addr_reg_954_pp0_iter4_reg;
        v227_6_addr_reg_960_pp0_iter2_reg <= v227_6_addr_reg_960_pp0_iter1_reg;
        v227_6_addr_reg_960_pp0_iter3_reg <= v227_6_addr_reg_960_pp0_iter2_reg;
        v227_6_addr_reg_960_pp0_iter4_reg <= v227_6_addr_reg_960_pp0_iter3_reg;
        v227_6_addr_reg_960_pp0_iter5_reg <= v227_6_addr_reg_960_pp0_iter4_reg;
        v227_7_addr_reg_966_pp0_iter2_reg <= v227_7_addr_reg_966_pp0_iter1_reg;
        v227_7_addr_reg_966_pp0_iter3_reg <= v227_7_addr_reg_966_pp0_iter2_reg;
        v227_7_addr_reg_966_pp0_iter4_reg <= v227_7_addr_reg_966_pp0_iter3_reg;
        v227_7_addr_reg_966_pp0_iter5_reg <= v227_7_addr_reg_966_pp0_iter4_reg;
        v227_8_addr_reg_972_pp0_iter2_reg <= v227_8_addr_reg_972_pp0_iter1_reg;
        v227_8_addr_reg_972_pp0_iter3_reg <= v227_8_addr_reg_972_pp0_iter2_reg;
        v227_8_addr_reg_972_pp0_iter4_reg <= v227_8_addr_reg_972_pp0_iter3_reg;
        v227_8_addr_reg_972_pp0_iter5_reg <= v227_8_addr_reg_972_pp0_iter4_reg;
        v227_9_addr_reg_978_pp0_iter2_reg <= v227_9_addr_reg_978_pp0_iter1_reg;
        v227_9_addr_reg_978_pp0_iter3_reg <= v227_9_addr_reg_978_pp0_iter2_reg;
        v227_9_addr_reg_978_pp0_iter4_reg <= v227_9_addr_reg_978_pp0_iter3_reg;
        v227_9_addr_reg_978_pp0_iter5_reg <= v227_9_addr_reg_978_pp0_iter4_reg;
        v22_reg_1279 <= grp_fu_296_p_dout0;
        v24_reg_1284 <= grp_fu_300_p_dout0;
        v26_reg_1289 <= grp_fu_304_p_dout0;
        v28_reg_1294 <= grp_fu_308_p_dout0;
        v30_reg_1299 <= grp_fu_312_p_dout0;
        v32_reg_1304 <= grp_fu_316_p_dout0;
        v34_reg_1309 <= grp_fu_464_p2;
        v36_reg_1314 <= grp_fu_468_p2;
        v38_reg_1319 <= grp_fu_472_p2;
        v8_reg_1244 <= grp_fu_268_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_0_load_reg_1084 <= v227_0_q1;
        v227_10_load_reg_1134 <= v227_10_q1;
        v227_11_load_reg_1139 <= v227_11_q1;
        v227_12_load_reg_1144 <= v227_12_q1;
        v227_13_load_reg_1149 <= v227_13_q1;
        v227_14_load_reg_1154 <= v227_14_q1;
        v227_15_load_reg_1159 <= v227_15_q1;
        v227_1_load_reg_1089 <= v227_1_q1;
        v227_2_load_reg_1094 <= v227_2_q1;
        v227_3_load_reg_1099 <= v227_3_q1;
        v227_4_load_reg_1104 <= v227_4_q1;
        v227_5_load_reg_1109 <= v227_5_q1;
        v227_6_load_reg_1114 <= v227_6_q1;
        v227_7_load_reg_1119 <= v227_7_q1;
        v227_8_load_reg_1124 <= v227_8_q1;
        v227_9_load_reg_1129 <= v227_9_q1;
    end
end
always @ (*) begin
    if (((icmp_ln34_fu_488_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v6_1 = 8'd0;
    end else begin
        ap_sig_allocacmp_v6_1 = v6_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_0_ce0_local = 1'b1;
    end else begin
        v227_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_0_ce1_local = 1'b1;
    end else begin
        v227_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (tmp_reg_1020_pp0_iter5_reg == 1'd0))) begin
        v227_0_we0_local = 1'b1;
    end else begin
        v227_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_10_ce0_local = 1'b1;
    end else begin
        v227_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_10_ce1_local = 1'b1;
    end else begin
        v227_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_9_reg_1060_pp0_iter5_reg == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_10_we0_local = 1'b1;
    end else begin
        v227_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_11_ce0_local = 1'b1;
    end else begin
        v227_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_11_ce1_local = 1'b1;
    end else begin
        v227_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_10_reg_1064_pp0_iter5_reg == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_11_we0_local = 1'b1;
    end else begin
        v227_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_12_ce0_local = 1'b1;
    end else begin
        v227_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_12_ce1_local = 1'b1;
    end else begin
        v227_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_11_reg_1068_pp0_iter5_reg == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_12_we0_local = 1'b1;
    end else begin
        v227_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_13_ce0_local = 1'b1;
    end else begin
        v227_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_13_ce1_local = 1'b1;
    end else begin
        v227_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_12_reg_1072_pp0_iter5_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_13_we0_local = 1'b1;
    end else begin
        v227_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_14_ce0_local = 1'b1;
    end else begin
        v227_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_14_ce1_local = 1'b1;
    end else begin
        v227_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_13_reg_1076_pp0_iter5_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_14_we0_local = 1'b1;
    end else begin
        v227_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_15_ce0_local = 1'b1;
    end else begin
        v227_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_15_ce1_local = 1'b1;
    end else begin
        v227_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_14_reg_1080_pp0_iter5_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_15_we0_local = 1'b1;
    end else begin
        v227_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_1_ce0_local = 1'b1;
    end else begin
        v227_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_1_ce1_local = 1'b1;
    end else begin
        v227_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln41_reg_1024_pp0_iter5_reg == 1'd1) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_1_we0_local = 1'b1;
    end else begin
        v227_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_2_ce0_local = 1'b1;
    end else begin
        v227_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_2_ce1_local = 1'b1;
    end else begin
        v227_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_1_reg_1028_pp0_iter5_reg == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_2_we0_local = 1'b1;
    end else begin
        v227_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_3_ce0_local = 1'b1;
    end else begin
        v227_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_3_ce1_local = 1'b1;
    end else begin
        v227_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_2_reg_1032_pp0_iter5_reg == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_3_we0_local = 1'b1;
    end else begin
        v227_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_4_ce0_local = 1'b1;
    end else begin
        v227_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_4_ce1_local = 1'b1;
    end else begin
        v227_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_3_reg_1036_pp0_iter5_reg == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_4_we0_local = 1'b1;
    end else begin
        v227_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_5_ce0_local = 1'b1;
    end else begin
        v227_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_5_ce1_local = 1'b1;
    end else begin
        v227_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_4_reg_1040_pp0_iter5_reg == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_5_we0_local = 1'b1;
    end else begin
        v227_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_6_ce0_local = 1'b1;
    end else begin
        v227_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_6_ce1_local = 1'b1;
    end else begin
        v227_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_5_reg_1044_pp0_iter5_reg == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_6_we0_local = 1'b1;
    end else begin
        v227_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_7_ce0_local = 1'b1;
    end else begin
        v227_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_7_ce1_local = 1'b1;
    end else begin
        v227_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_6_reg_1048_pp0_iter5_reg == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_7_we0_local = 1'b1;
    end else begin
        v227_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_8_ce0_local = 1'b1;
    end else begin
        v227_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_8_ce1_local = 1'b1;
    end else begin
        v227_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_7_reg_1052_pp0_iter5_reg == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_8_we0_local = 1'b1;
    end else begin
        v227_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_9_ce0_local = 1'b1;
    end else begin
        v227_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_9_ce1_local = 1'b1;
    end else begin
        v227_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_8_reg_1056_pp0_iter5_reg == 1'd0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v227_9_we0_local = 1'b1;
    end else begin
        v227_9_we0_local = 1'b0;
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
assign add_ln101_fu_712_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd499));
assign add_ln106_fu_726_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd498));
assign add_ln111_fu_740_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd497));
assign add_ln34_fu_754_p2 = (ap_sig_allocacmp_v6_1 + 8'd16);
assign add_ln37_fu_512_p2 = (mul_ln37 + zext_ln37_fu_508_p1);
assign add_ln46_fu_558_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd510));
assign add_ln51_fu_572_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd509));
assign add_ln56_fu_586_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd508));
assign add_ln61_fu_600_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd507));
assign add_ln66_fu_614_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd506));
assign add_ln71_fu_628_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd505));
assign add_ln76_fu_642_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd504));
assign add_ln81_fu_656_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd503));
assign add_ln86_fu_670_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd502));
assign add_ln91_fu_684_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd501));
assign add_ln96_fu_698_p2 = ($signed(sub_ln36_fu_538_p2) + $signed(9'd500));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln104_fu_881_p1 = v34_reg_1309;
assign bitcast_ln109_fu_885_p1 = v36_reg_1314;
assign bitcast_ln114_fu_889_p1 = v38_reg_1319;
assign bitcast_ln39_fu_829_p1 = v8_reg_1244;
assign bitcast_ln44_fu_833_p1 = v10_reg_1249;
assign bitcast_ln49_fu_837_p1 = v12_reg_1254;
assign bitcast_ln54_fu_841_p1 = v14_reg_1259;
assign bitcast_ln59_fu_845_p1 = v16_reg_1264;
assign bitcast_ln64_fu_849_p1 = v18_reg_1269;
assign bitcast_ln69_fu_853_p1 = v20_reg_1274;
assign bitcast_ln74_fu_857_p1 = v22_reg_1279;
assign bitcast_ln79_fu_861_p1 = v24_reg_1284;
assign bitcast_ln84_fu_865_p1 = v26_reg_1289;
assign bitcast_ln89_fu_869_p1 = v28_reg_1294;
assign bitcast_ln94_fu_873_p1 = v30_reg_1299;
assign bitcast_ln99_fu_877_p1 = v32_reg_1304;
assign grp_fu_268_p_ce = 1'b1;
assign grp_fu_268_p_din0 = v7_fu_765_p1;
assign grp_fu_268_p_din1 = v4;
assign grp_fu_272_p_ce = 1'b1;
assign grp_fu_272_p_din0 = v9_fu_769_p1;
assign grp_fu_272_p_din1 = v4;
assign grp_fu_276_p_ce = 1'b1;
assign grp_fu_276_p_din0 = v11_fu_773_p1;
assign grp_fu_276_p_din1 = v4;
assign grp_fu_280_p_ce = 1'b1;
assign grp_fu_280_p_din0 = v13_fu_777_p1;
assign grp_fu_280_p_din1 = v4;
assign grp_fu_284_p_ce = 1'b1;
assign grp_fu_284_p_din0 = v15_fu_781_p1;
assign grp_fu_284_p_din1 = v4;
assign grp_fu_288_p_ce = 1'b1;
assign grp_fu_288_p_din0 = v17_fu_785_p1;
assign grp_fu_288_p_din1 = v4;
assign grp_fu_292_p_ce = 1'b1;
assign grp_fu_292_p_din0 = v19_fu_789_p1;
assign grp_fu_292_p_din1 = v4;
assign grp_fu_296_p_ce = 1'b1;
assign grp_fu_296_p_din0 = v21_fu_793_p1;
assign grp_fu_296_p_din1 = v4;
assign grp_fu_300_p_ce = 1'b1;
assign grp_fu_300_p_din0 = v23_fu_797_p1;
assign grp_fu_300_p_din1 = v4;
assign grp_fu_304_p_ce = 1'b1;
assign grp_fu_304_p_din0 = v25_fu_801_p1;
assign grp_fu_304_p_din1 = v4;
assign grp_fu_308_p_ce = 1'b1;
assign grp_fu_308_p_din0 = v27_fu_805_p1;
assign grp_fu_308_p_din1 = v4;
assign grp_fu_312_p_ce = 1'b1;
assign grp_fu_312_p_din0 = v29_fu_809_p1;
assign grp_fu_312_p_din1 = v4;
assign grp_fu_316_p_ce = 1'b1;
assign grp_fu_316_p_din0 = v31_fu_813_p1;
assign grp_fu_316_p_din1 = v4;
assign grp_fu_464_p0 = v227_13_load_reg_1149;
assign grp_fu_468_p0 = v227_14_load_reg_1154;
assign grp_fu_472_p0 = v227_15_load_reg_1159;
assign icmp_ln34_fu_488_p2 = ((ap_sig_allocacmp_v6_1 == 8'd240) ? 1'b1 : 1'b0);
assign icmp_ln41_fu_552_p2 = (($signed(sub_ln36_fu_538_p2) > $signed(9'd0)) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_498_p4 = {{ap_sig_allocacmp_v6_1[7:4]}};
assign sub_ln36_fu_538_p2 = (v3_cast1_cast_fu_476_p1 - zext_ln34_fu_494_p1);
assign v11_fu_773_p1 = v227_2_load_reg_1094;
assign v13_fu_777_p1 = v227_3_load_reg_1099;
assign v15_fu_781_p1 = v227_4_load_reg_1104;
assign v17_fu_785_p1 = v227_5_load_reg_1109;
assign v19_fu_789_p1 = v227_6_load_reg_1114;
assign v21_fu_793_p1 = v227_7_load_reg_1119;
assign v227_0_address0 = v227_0_addr_reg_924_pp0_iter5_reg;
assign v227_0_address1 = zext_ln37_1_fu_518_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_0_d0 = bitcast_ln39_fu_829_p1;
assign v227_0_we0 = v227_0_we0_local;
assign v227_10_address0 = v227_10_addr_reg_984_pp0_iter5_reg;
assign v227_10_address1 = zext_ln37_1_fu_518_p1;
assign v227_10_ce0 = v227_10_ce0_local;
assign v227_10_ce1 = v227_10_ce1_local;
assign v227_10_d0 = bitcast_ln89_fu_869_p1;
assign v227_10_we0 = v227_10_we0_local;
assign v227_11_address0 = v227_11_addr_reg_990_pp0_iter5_reg;
assign v227_11_address1 = zext_ln37_1_fu_518_p1;
assign v227_11_ce0 = v227_11_ce0_local;
assign v227_11_ce1 = v227_11_ce1_local;
assign v227_11_d0 = bitcast_ln94_fu_873_p1;
assign v227_11_we0 = v227_11_we0_local;
assign v227_12_address0 = v227_12_addr_reg_996_pp0_iter5_reg;
assign v227_12_address1 = zext_ln37_1_fu_518_p1;
assign v227_12_ce0 = v227_12_ce0_local;
assign v227_12_ce1 = v227_12_ce1_local;
assign v227_12_d0 = bitcast_ln99_fu_877_p1;
assign v227_12_we0 = v227_12_we0_local;
assign v227_13_address0 = v227_13_addr_reg_1002_pp0_iter5_reg;
assign v227_13_address1 = zext_ln37_1_fu_518_p1;
assign v227_13_ce0 = v227_13_ce0_local;
assign v227_13_ce1 = v227_13_ce1_local;
assign v227_13_d0 = bitcast_ln104_fu_881_p1;
assign v227_13_we0 = v227_13_we0_local;
assign v227_14_address0 = v227_14_addr_reg_1008_pp0_iter5_reg;
assign v227_14_address1 = zext_ln37_1_fu_518_p1;
assign v227_14_ce0 = v227_14_ce0_local;
assign v227_14_ce1 = v227_14_ce1_local;
assign v227_14_d0 = bitcast_ln109_fu_885_p1;
assign v227_14_we0 = v227_14_we0_local;
assign v227_15_address0 = v227_15_addr_reg_1014_pp0_iter5_reg;
assign v227_15_address1 = zext_ln37_1_fu_518_p1;
assign v227_15_ce0 = v227_15_ce0_local;
assign v227_15_ce1 = v227_15_ce1_local;
assign v227_15_d0 = bitcast_ln114_fu_889_p1;
assign v227_15_we0 = v227_15_we0_local;
assign v227_1_address0 = v227_1_addr_reg_930_pp0_iter5_reg;
assign v227_1_address1 = zext_ln37_1_fu_518_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign v227_1_d0 = bitcast_ln44_fu_833_p1;
assign v227_1_we0 = v227_1_we0_local;
assign v227_2_address0 = v227_2_addr_reg_936_pp0_iter5_reg;
assign v227_2_address1 = zext_ln37_1_fu_518_p1;
assign v227_2_ce0 = v227_2_ce0_local;
assign v227_2_ce1 = v227_2_ce1_local;
assign v227_2_d0 = bitcast_ln49_fu_837_p1;
assign v227_2_we0 = v227_2_we0_local;
assign v227_3_address0 = v227_3_addr_reg_942_pp0_iter5_reg;
assign v227_3_address1 = zext_ln37_1_fu_518_p1;
assign v227_3_ce0 = v227_3_ce0_local;
assign v227_3_ce1 = v227_3_ce1_local;
assign v227_3_d0 = bitcast_ln54_fu_841_p1;
assign v227_3_we0 = v227_3_we0_local;
assign v227_4_address0 = v227_4_addr_reg_948_pp0_iter5_reg;
assign v227_4_address1 = zext_ln37_1_fu_518_p1;
assign v227_4_ce0 = v227_4_ce0_local;
assign v227_4_ce1 = v227_4_ce1_local;
assign v227_4_d0 = bitcast_ln59_fu_845_p1;
assign v227_4_we0 = v227_4_we0_local;
assign v227_5_address0 = v227_5_addr_reg_954_pp0_iter5_reg;
assign v227_5_address1 = zext_ln37_1_fu_518_p1;
assign v227_5_ce0 = v227_5_ce0_local;
assign v227_5_ce1 = v227_5_ce1_local;
assign v227_5_d0 = bitcast_ln64_fu_849_p1;
assign v227_5_we0 = v227_5_we0_local;
assign v227_6_address0 = v227_6_addr_reg_960_pp0_iter5_reg;
assign v227_6_address1 = zext_ln37_1_fu_518_p1;
assign v227_6_ce0 = v227_6_ce0_local;
assign v227_6_ce1 = v227_6_ce1_local;
assign v227_6_d0 = bitcast_ln69_fu_853_p1;
assign v227_6_we0 = v227_6_we0_local;
assign v227_7_address0 = v227_7_addr_reg_966_pp0_iter5_reg;
assign v227_7_address1 = zext_ln37_1_fu_518_p1;
assign v227_7_ce0 = v227_7_ce0_local;
assign v227_7_ce1 = v227_7_ce1_local;
assign v227_7_d0 = bitcast_ln74_fu_857_p1;
assign v227_7_we0 = v227_7_we0_local;
assign v227_8_address0 = v227_8_addr_reg_972_pp0_iter5_reg;
assign v227_8_address1 = zext_ln37_1_fu_518_p1;
assign v227_8_ce0 = v227_8_ce0_local;
assign v227_8_ce1 = v227_8_ce1_local;
assign v227_8_d0 = bitcast_ln79_fu_861_p1;
assign v227_8_we0 = v227_8_we0_local;
assign v227_9_address0 = v227_9_addr_reg_978_pp0_iter5_reg;
assign v227_9_address1 = zext_ln37_1_fu_518_p1;
assign v227_9_ce0 = v227_9_ce0_local;
assign v227_9_ce1 = v227_9_ce1_local;
assign v227_9_d0 = bitcast_ln84_fu_865_p1;
assign v227_9_we0 = v227_9_we0_local;
assign v23_fu_797_p1 = v227_8_load_reg_1124;
assign v25_fu_801_p1 = v227_9_load_reg_1129;
assign v27_fu_805_p1 = v227_10_load_reg_1134;
assign v29_fu_809_p1 = v227_11_load_reg_1139;
assign v31_fu_813_p1 = v227_12_load_reg_1144;
assign v3_cast1_cast_fu_476_p1 = v3_cast1;
assign v7_fu_765_p1 = v227_0_load_reg_1084;
assign v9_fu_769_p1 = v227_1_load_reg_1089;
assign zext_ln34_fu_494_p1 = ap_sig_allocacmp_v6_1;
assign zext_ln37_1_fu_518_p1 = add_ln37_fu_512_p2;
assign zext_ln37_fu_508_p1 = lshr_ln1_fu_498_p4;
endmodule 