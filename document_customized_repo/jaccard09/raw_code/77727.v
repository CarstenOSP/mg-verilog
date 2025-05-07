module backprop_backprop_Pipeline_delta_matrix_weights3_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_31_address0,delta_weights3_31_ce0,delta_weights3_31_we0,delta_weights3_31_d0,delta_weights3_30_address0,delta_weights3_30_ce0,delta_weights3_30_we0,delta_weights3_30_d0,delta_weights3_29_address0,delta_weights3_29_ce0,delta_weights3_29_we0,delta_weights3_29_d0,delta_weights3_28_address0,delta_weights3_28_ce0,delta_weights3_28_we0,delta_weights3_28_d0,delta_weights3_27_address0,delta_weights3_27_ce0,delta_weights3_27_we0,delta_weights3_27_d0,delta_weights3_26_address0,delta_weights3_26_ce0,delta_weights3_26_we0,delta_weights3_26_d0,delta_weights3_25_address0,delta_weights3_25_ce0,delta_weights3_25_we0,delta_weights3_25_d0,delta_weights3_24_address0,delta_weights3_24_ce0,delta_weights3_24_we0,delta_weights3_24_d0,delta_weights3_23_address0,delta_weights3_23_ce0,delta_weights3_23_we0,delta_weights3_23_d0,delta_weights3_22_address0,delta_weights3_22_ce0,delta_weights3_22_we0,delta_weights3_22_d0,delta_weights3_21_address0,delta_weights3_21_ce0,delta_weights3_21_we0,delta_weights3_21_d0,delta_weights3_20_address0,delta_weights3_20_ce0,delta_weights3_20_we0,delta_weights3_20_d0,delta_weights3_19_address0,delta_weights3_19_ce0,delta_weights3_19_we0,delta_weights3_19_d0,delta_weights3_18_address0,delta_weights3_18_ce0,delta_weights3_18_we0,delta_weights3_18_d0,delta_weights3_17_address0,delta_weights3_17_ce0,delta_weights3_17_we0,delta_weights3_17_d0,delta_weights3_16_address0,delta_weights3_16_ce0,delta_weights3_16_we0,delta_weights3_16_d0,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_address0,delta_weights3_ce0,delta_weights3_we0,delta_weights3_d0,activations2_address0,activations2_ce0,activations2_q0,activations2_4_address0,activations2_4_ce0,activations2_4_q0,activations2_8_address0,activations2_8_ce0,activations2_8_q0,activations2_12_address0,activations2_12_ce0,activations2_12_q0,activations2_16_address0,activations2_16_ce0,activations2_16_q0,activations2_20_address0,activations2_20_ce0,activations2_20_q0,activations2_24_address0,activations2_24_ce0,activations2_24_q0,activations2_28_address0,activations2_28_ce0,activations2_28_q0,p_reload86,p_reload85,p_reload,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_5_address0,activations2_5_ce0,activations2_5_q0,activations2_9_address0,activations2_9_ce0,activations2_9_q0,activations2_13_address0,activations2_13_ce0,activations2_13_q0,activations2_17_address0,activations2_17_ce0,activations2_17_q0,activations2_21_address0,activations2_21_ce0,activations2_21_q0,activations2_25_address0,activations2_25_ce0,activations2_25_q0,activations2_29_address0,activations2_29_ce0,activations2_29_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,activations2_6_address0,activations2_6_ce0,activations2_6_q0,activations2_10_address0,activations2_10_ce0,activations2_10_q0,activations2_14_address0,activations2_14_ce0,activations2_14_q0,activations2_18_address0,activations2_18_ce0,activations2_18_q0,activations2_22_address0,activations2_22_ce0,activations2_22_q0,activations2_26_address0,activations2_26_ce0,activations2_26_q0,activations2_30_address0,activations2_30_ce0,activations2_30_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0,activations2_7_address0,activations2_7_ce0,activations2_7_q0,activations2_11_address0,activations2_11_ce0,activations2_11_q0,activations2_15_address0,activations2_15_ce0,activations2_15_q0,activations2_19_address0,activations2_19_ce0,activations2_19_q0,activations2_23_address0,activations2_23_ce0,activations2_23_q0,activations2_27_address0,activations2_27_ce0,activations2_27_q0,activations2_31_address0,activations2_31_ce0,activations2_31_q0,grp_fu_8501_p_din0,grp_fu_8501_p_din1,grp_fu_8501_p_dout0,grp_fu_8501_p_ce,grp_fu_8505_p_din0,grp_fu_8505_p_din1,grp_fu_8505_p_dout0,grp_fu_8505_p_ce,grp_fu_8509_p_din0,grp_fu_8509_p_din1,grp_fu_8509_p_dout0,grp_fu_8509_p_ce,grp_fu_8513_p_din0,grp_fu_8513_p_din1,grp_fu_8513_p_dout0,grp_fu_8513_p_ce,grp_fu_8517_p_din0,grp_fu_8517_p_din1,grp_fu_8517_p_dout0,grp_fu_8517_p_ce,grp_fu_8521_p_din0,grp_fu_8521_p_din1,grp_fu_8521_p_dout0,grp_fu_8521_p_ce,grp_fu_8525_p_din0,grp_fu_8525_p_din1,grp_fu_8525_p_dout0,grp_fu_8525_p_ce,grp_fu_8529_p_din0,grp_fu_8529_p_din1,grp_fu_8529_p_dout0,grp_fu_8529_p_ce,grp_fu_8533_p_din0,grp_fu_8533_p_din1,grp_fu_8533_p_dout0,grp_fu_8533_p_ce,grp_fu_8537_p_din0,grp_fu_8537_p_din1,grp_fu_8537_p_dout0,grp_fu_8537_p_ce,grp_fu_8541_p_din0,grp_fu_8541_p_din1,grp_fu_8541_p_dout0,grp_fu_8541_p_ce,grp_fu_8545_p_din0,grp_fu_8545_p_din1,grp_fu_8545_p_dout0,grp_fu_8545_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] delta_weights3_31_address0;
output   delta_weights3_31_ce0;
output   delta_weights3_31_we0;
output  [63:0] delta_weights3_31_d0;
output  [2:0] delta_weights3_30_address0;
output   delta_weights3_30_ce0;
output   delta_weights3_30_we0;
output  [63:0] delta_weights3_30_d0;
output  [2:0] delta_weights3_29_address0;
output   delta_weights3_29_ce0;
output   delta_weights3_29_we0;
output  [63:0] delta_weights3_29_d0;
output  [2:0] delta_weights3_28_address0;
output   delta_weights3_28_ce0;
output   delta_weights3_28_we0;
output  [63:0] delta_weights3_28_d0;
output  [2:0] delta_weights3_27_address0;
output   delta_weights3_27_ce0;
output   delta_weights3_27_we0;
output  [63:0] delta_weights3_27_d0;
output  [2:0] delta_weights3_26_address0;
output   delta_weights3_26_ce0;
output   delta_weights3_26_we0;
output  [63:0] delta_weights3_26_d0;
output  [2:0] delta_weights3_25_address0;
output   delta_weights3_25_ce0;
output   delta_weights3_25_we0;
output  [63:0] delta_weights3_25_d0;
output  [2:0] delta_weights3_24_address0;
output   delta_weights3_24_ce0;
output   delta_weights3_24_we0;
output  [63:0] delta_weights3_24_d0;
output  [2:0] delta_weights3_23_address0;
output   delta_weights3_23_ce0;
output   delta_weights3_23_we0;
output  [63:0] delta_weights3_23_d0;
output  [2:0] delta_weights3_22_address0;
output   delta_weights3_22_ce0;
output   delta_weights3_22_we0;
output  [63:0] delta_weights3_22_d0;
output  [2:0] delta_weights3_21_address0;
output   delta_weights3_21_ce0;
output   delta_weights3_21_we0;
output  [63:0] delta_weights3_21_d0;
output  [2:0] delta_weights3_20_address0;
output   delta_weights3_20_ce0;
output   delta_weights3_20_we0;
output  [63:0] delta_weights3_20_d0;
output  [2:0] delta_weights3_19_address0;
output   delta_weights3_19_ce0;
output   delta_weights3_19_we0;
output  [63:0] delta_weights3_19_d0;
output  [2:0] delta_weights3_18_address0;
output   delta_weights3_18_ce0;
output   delta_weights3_18_we0;
output  [63:0] delta_weights3_18_d0;
output  [2:0] delta_weights3_17_address0;
output   delta_weights3_17_ce0;
output   delta_weights3_17_we0;
output  [63:0] delta_weights3_17_d0;
output  [2:0] delta_weights3_16_address0;
output   delta_weights3_16_ce0;
output   delta_weights3_16_we0;
output  [63:0] delta_weights3_16_d0;
output  [2:0] delta_weights3_15_address0;
output   delta_weights3_15_ce0;
output   delta_weights3_15_we0;
output  [63:0] delta_weights3_15_d0;
output  [2:0] delta_weights3_14_address0;
output   delta_weights3_14_ce0;
output   delta_weights3_14_we0;
output  [63:0] delta_weights3_14_d0;
output  [2:0] delta_weights3_13_address0;
output   delta_weights3_13_ce0;
output   delta_weights3_13_we0;
output  [63:0] delta_weights3_13_d0;
output  [2:0] delta_weights3_12_address0;
output   delta_weights3_12_ce0;
output   delta_weights3_12_we0;
output  [63:0] delta_weights3_12_d0;
output  [2:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [2:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [2:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [2:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [2:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [2:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [2:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [2:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [2:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [2:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [2:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [2:0] delta_weights3_address0;
output   delta_weights3_ce0;
output   delta_weights3_we0;
output  [63:0] delta_weights3_d0;
output  [0:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [0:0] activations2_4_address0;
output   activations2_4_ce0;
input  [63:0] activations2_4_q0;
output  [0:0] activations2_8_address0;
output   activations2_8_ce0;
input  [63:0] activations2_8_q0;
output  [0:0] activations2_12_address0;
output   activations2_12_ce0;
input  [63:0] activations2_12_q0;
output  [0:0] activations2_16_address0;
output   activations2_16_ce0;
input  [63:0] activations2_16_q0;
output  [0:0] activations2_20_address0;
output   activations2_20_ce0;
input  [63:0] activations2_20_q0;
output  [0:0] activations2_24_address0;
output   activations2_24_ce0;
input  [63:0] activations2_24_q0;
output  [0:0] activations2_28_address0;
output   activations2_28_ce0;
input  [63:0] activations2_28_q0;
input  [63:0] p_reload86;
input  [63:0] p_reload85;
input  [63:0] p_reload;
output  [0:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [0:0] activations2_5_address0;
output   activations2_5_ce0;
input  [63:0] activations2_5_q0;
output  [0:0] activations2_9_address0;
output   activations2_9_ce0;
input  [63:0] activations2_9_q0;
output  [0:0] activations2_13_address0;
output   activations2_13_ce0;
input  [63:0] activations2_13_q0;
output  [0:0] activations2_17_address0;
output   activations2_17_ce0;
input  [63:0] activations2_17_q0;
output  [0:0] activations2_21_address0;
output   activations2_21_ce0;
input  [63:0] activations2_21_q0;
output  [0:0] activations2_25_address0;
output   activations2_25_ce0;
input  [63:0] activations2_25_q0;
output  [0:0] activations2_29_address0;
output   activations2_29_ce0;
input  [63:0] activations2_29_q0;
output  [0:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
output  [0:0] activations2_6_address0;
output   activations2_6_ce0;
input  [63:0] activations2_6_q0;
output  [0:0] activations2_10_address0;
output   activations2_10_ce0;
input  [63:0] activations2_10_q0;
output  [0:0] activations2_14_address0;
output   activations2_14_ce0;
input  [63:0] activations2_14_q0;
output  [0:0] activations2_18_address0;
output   activations2_18_ce0;
input  [63:0] activations2_18_q0;
output  [0:0] activations2_22_address0;
output   activations2_22_ce0;
input  [63:0] activations2_22_q0;
output  [0:0] activations2_26_address0;
output   activations2_26_ce0;
input  [63:0] activations2_26_q0;
output  [0:0] activations2_30_address0;
output   activations2_30_ce0;
input  [63:0] activations2_30_q0;
output  [0:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
output  [0:0] activations2_7_address0;
output   activations2_7_ce0;
input  [63:0] activations2_7_q0;
output  [0:0] activations2_11_address0;
output   activations2_11_ce0;
input  [63:0] activations2_11_q0;
output  [0:0] activations2_15_address0;
output   activations2_15_ce0;
input  [63:0] activations2_15_q0;
output  [0:0] activations2_19_address0;
output   activations2_19_ce0;
input  [63:0] activations2_19_q0;
output  [0:0] activations2_23_address0;
output   activations2_23_ce0;
input  [63:0] activations2_23_q0;
output  [0:0] activations2_27_address0;
output   activations2_27_ce0;
input  [63:0] activations2_27_q0;
output  [0:0] activations2_31_address0;
output   activations2_31_ce0;
input  [63:0] activations2_31_q0;
output  [63:0] grp_fu_8501_p_din0;
output  [63:0] grp_fu_8501_p_din1;
input  [63:0] grp_fu_8501_p_dout0;
output   grp_fu_8501_p_ce;
output  [63:0] grp_fu_8505_p_din0;
output  [63:0] grp_fu_8505_p_din1;
input  [63:0] grp_fu_8505_p_dout0;
output   grp_fu_8505_p_ce;
output  [63:0] grp_fu_8509_p_din0;
output  [63:0] grp_fu_8509_p_din1;
input  [63:0] grp_fu_8509_p_dout0;
output   grp_fu_8509_p_ce;
output  [63:0] grp_fu_8513_p_din0;
output  [63:0] grp_fu_8513_p_din1;
input  [63:0] grp_fu_8513_p_dout0;
output   grp_fu_8513_p_ce;
output  [63:0] grp_fu_8517_p_din0;
output  [63:0] grp_fu_8517_p_din1;
input  [63:0] grp_fu_8517_p_dout0;
output   grp_fu_8517_p_ce;
output  [63:0] grp_fu_8521_p_din0;
output  [63:0] grp_fu_8521_p_din1;
input  [63:0] grp_fu_8521_p_dout0;
output   grp_fu_8521_p_ce;
output  [63:0] grp_fu_8525_p_din0;
output  [63:0] grp_fu_8525_p_din1;
input  [63:0] grp_fu_8525_p_dout0;
output   grp_fu_8525_p_ce;
output  [63:0] grp_fu_8529_p_din0;
output  [63:0] grp_fu_8529_p_din1;
input  [63:0] grp_fu_8529_p_dout0;
output   grp_fu_8529_p_ce;
output  [63:0] grp_fu_8533_p_din0;
output  [63:0] grp_fu_8533_p_din1;
input  [63:0] grp_fu_8533_p_dout0;
output   grp_fu_8533_p_ce;
output  [63:0] grp_fu_8537_p_din0;
output  [63:0] grp_fu_8537_p_din1;
input  [63:0] grp_fu_8537_p_dout0;
output   grp_fu_8537_p_ce;
output  [63:0] grp_fu_8541_p_din0;
output  [63:0] grp_fu_8541_p_din1;
input  [63:0] grp_fu_8541_p_dout0;
output   grp_fu_8541_p_ce;
output  [63:0] grp_fu_8545_p_din0;
output  [63:0] grp_fu_8545_p_din1;
input  [63:0] grp_fu_8545_p_dout0;
output   grp_fu_8545_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_1638_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_8_reg_2203;
reg   [6:0] i_8_reg_2203_pp0_iter1_reg;
reg   [6:0] i_8_reg_2203_pp0_iter2_reg;
reg   [6:0] i_8_reg_2203_pp0_iter3_reg;
reg   [6:0] i_8_reg_2203_pp0_iter4_reg;
reg   [6:0] i_8_reg_2203_pp0_iter5_reg;
reg   [6:0] i_8_reg_2203_pp0_iter6_reg;
reg   [6:0] i_8_reg_2203_pp0_iter7_reg;
reg   [6:0] i_8_reg_2203_pp0_iter8_reg;
wire   [4:0] trunc_ln73_fu_1701_p1;
reg   [4:0] trunc_ln73_reg_2374;
reg   [4:0] trunc_ln73_reg_2374_pp0_iter2_reg;
reg   [4:0] trunc_ln73_reg_2374_pp0_iter3_reg;
reg   [4:0] trunc_ln73_reg_2374_pp0_iter4_reg;
reg   [4:0] trunc_ln73_reg_2374_pp0_iter5_reg;
reg   [4:0] trunc_ln73_reg_2374_pp0_iter6_reg;
reg   [4:0] trunc_ln73_reg_2374_pp0_iter7_reg;
wire   [63:0] tmp_s_fu_1704_p19;
reg   [63:0] tmp_s_reg_2378;
wire   [63:0] tmp_179_fu_1744_p19;
reg   [63:0] tmp_179_reg_2385;
wire   [63:0] tmp_180_fu_1784_p19;
reg   [63:0] tmp_180_reg_2392;
wire   [63:0] tmp_181_fu_1824_p19;
reg   [63:0] tmp_181_reg_2399;
reg   [63:0] mul_i3_reg_2406;
reg   [63:0] mul_16_i_reg_2418;
reg   [63:0] mul_216_i_reg_2430;
reg   [63:0] mul_1_i_reg_2442;
reg   [63:0] mul_1_1_i_reg_2454;
reg   [63:0] mul_1_2_i_reg_2466;
reg   [63:0] mul_2_i_reg_2478;
reg   [63:0] mul_2_1_i_reg_2490;
reg   [63:0] mul_2_2_i_reg_2502;
reg   [63:0] mul_3_i_reg_2514;
reg   [63:0] mul_3_1_i_reg_2526;
reg   [63:0] mul_3_2_i_reg_2538;
wire   [63:0] zext_ln72_fu_1654_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_1_fu_1894_p1;
wire   [63:0] zext_ln75_2_fu_1964_p1;
wire   [63:0] zext_ln75_3_fu_1992_p1;
wire   [63:0] zext_ln75_4_fu_2020_p1;
wire   [63:0] zext_ln75_5_fu_2048_p1;
wire   [63:0] zext_ln75_6_fu_2076_p1;
wire   [63:0] zext_ln75_7_fu_2104_p1;
wire   [63:0] zext_ln75_8_fu_2132_p1;
wire   [63:0] zext_ln75_9_fu_2160_p1;
reg   [6:0] i_fu_216;
wire   [6:0] add_ln73_fu_1690_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_8;
reg    activations2_ce0_local;
reg    activations2_4_ce0_local;
reg    activations2_8_ce0_local;
reg    activations2_12_ce0_local;
reg    activations2_16_ce0_local;
reg    activations2_20_ce0_local;
reg    activations2_24_ce0_local;
reg    activations2_28_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_5_ce0_local;
reg    activations2_9_ce0_local;
reg    activations2_13_ce0_local;
reg    activations2_17_ce0_local;
reg    activations2_21_ce0_local;
reg    activations2_25_ce0_local;
reg    activations2_29_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_6_ce0_local;
reg    activations2_10_ce0_local;
reg    activations2_14_ce0_local;
reg    activations2_18_ce0_local;
reg    activations2_22_ce0_local;
reg    activations2_26_ce0_local;
reg    activations2_30_ce0_local;
reg    activations2_3_ce0_local;
reg    activations2_7_ce0_local;
reg    activations2_11_ce0_local;
reg    activations2_15_ce0_local;
reg    activations2_19_ce0_local;
reg    activations2_23_ce0_local;
reg    activations2_27_ce0_local;
reg    activations2_31_ce0_local;
reg    delta_weights3_24_we0_local;
reg    ap_predicate_pred902_state10;
reg   [63:0] delta_weights3_24_d0_local;
reg    delta_weights3_24_ce0_local;
reg   [2:0] delta_weights3_24_address0_local;
reg    ap_predicate_pred911_state10;
reg    ap_predicate_pred939_state10;
reg    delta_weights3_25_we0_local;
reg   [63:0] delta_weights3_25_d0_local;
reg    delta_weights3_25_ce0_local;
reg   [2:0] delta_weights3_25_address0_local;
reg    delta_weights3_26_we0_local;
reg   [63:0] delta_weights3_26_d0_local;
reg    delta_weights3_26_ce0_local;
reg   [2:0] delta_weights3_26_address0_local;
reg    delta_weights3_27_we0_local;
reg   [63:0] delta_weights3_27_d0_local;
reg    delta_weights3_27_ce0_local;
reg   [2:0] delta_weights3_27_address0_local;
reg    delta_weights3_28_we0_local;
reg   [63:0] delta_weights3_28_d0_local;
reg    delta_weights3_28_ce0_local;
reg   [2:0] delta_weights3_28_address0_local;
reg    ap_predicate_pred935_state10;
reg    delta_weights3_29_we0_local;
reg   [63:0] delta_weights3_29_d0_local;
reg    delta_weights3_29_ce0_local;
reg   [2:0] delta_weights3_29_address0_local;
reg    delta_weights3_30_we0_local;
reg   [63:0] delta_weights3_30_d0_local;
reg    delta_weights3_30_ce0_local;
reg   [2:0] delta_weights3_30_address0_local;
reg    delta_weights3_31_we0_local;
reg   [63:0] delta_weights3_31_d0_local;
reg    delta_weights3_31_ce0_local;
reg   [2:0] delta_weights3_31_address0_local;
reg    delta_weights3_we0_local;
reg   [63:0] delta_weights3_d0_local;
reg    delta_weights3_ce0_local;
reg   [2:0] delta_weights3_address0_local;
reg    ap_predicate_pred918_state10;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [2:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [2:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [2:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [2:0] delta_weights3_4_address0_local;
reg    ap_predicate_pred921_state10;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [2:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [2:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we0_local;
reg   [63:0] delta_weights3_7_d0_local;
reg    delta_weights3_7_ce0_local;
reg   [2:0] delta_weights3_7_address0_local;
reg    delta_weights3_16_we0_local;
reg   [63:0] delta_weights3_16_d0_local;
reg    delta_weights3_16_ce0_local;
reg   [2:0] delta_weights3_16_address0_local;
reg    ap_predicate_pred929_state10;
reg    ap_predicate_pred925_state10;
reg    delta_weights3_17_we0_local;
reg   [63:0] delta_weights3_17_d0_local;
reg    delta_weights3_17_ce0_local;
reg   [2:0] delta_weights3_17_address0_local;
reg    delta_weights3_18_we0_local;
reg   [63:0] delta_weights3_18_d0_local;
reg    delta_weights3_18_ce0_local;
reg   [2:0] delta_weights3_18_address0_local;
reg    delta_weights3_19_we0_local;
reg   [63:0] delta_weights3_19_d0_local;
reg    delta_weights3_19_ce0_local;
reg   [2:0] delta_weights3_19_address0_local;
reg    delta_weights3_20_we0_local;
reg   [63:0] delta_weights3_20_d0_local;
reg    delta_weights3_20_ce0_local;
reg   [2:0] delta_weights3_20_address0_local;
reg    delta_weights3_21_we0_local;
reg   [63:0] delta_weights3_21_d0_local;
reg    delta_weights3_21_ce0_local;
reg   [2:0] delta_weights3_21_address0_local;
reg    delta_weights3_22_we0_local;
reg   [63:0] delta_weights3_22_d0_local;
reg    delta_weights3_22_ce0_local;
reg   [2:0] delta_weights3_22_address0_local;
reg    delta_weights3_23_we0_local;
reg   [63:0] delta_weights3_23_d0_local;
reg    delta_weights3_23_ce0_local;
reg   [2:0] delta_weights3_23_address0_local;
reg    delta_weights3_12_we0_local;
reg   [63:0] delta_weights3_12_d0_local;
reg    delta_weights3_12_ce0_local;
reg   [2:0] delta_weights3_12_address0_local;
reg    delta_weights3_13_we0_local;
reg   [63:0] delta_weights3_13_d0_local;
reg    delta_weights3_13_ce0_local;
reg   [2:0] delta_weights3_13_address0_local;
reg    delta_weights3_14_we0_local;
reg   [63:0] delta_weights3_14_d0_local;
reg    delta_weights3_14_ce0_local;
reg   [2:0] delta_weights3_14_address0_local;
reg    delta_weights3_15_we0_local;
reg   [63:0] delta_weights3_15_d0_local;
reg    delta_weights3_15_ce0_local;
reg   [2:0] delta_weights3_15_address0_local;
reg    delta_weights3_8_we0_local;
reg   [63:0] delta_weights3_8_d0_local;
reg    delta_weights3_8_ce0_local;
reg   [2:0] delta_weights3_8_address0_local;
reg    delta_weights3_9_we0_local;
reg   [63:0] delta_weights3_9_d0_local;
reg    delta_weights3_9_ce0_local;
reg   [2:0] delta_weights3_9_address0_local;
reg    delta_weights3_10_we0_local;
reg   [63:0] delta_weights3_10_d0_local;
reg    delta_weights3_10_ce0_local;
reg   [2:0] delta_weights3_10_address0_local;
reg    delta_weights3_11_we0_local;
reg   [63:0] delta_weights3_11_d0_local;
reg    delta_weights3_11_ce0_local;
reg   [2:0] delta_weights3_11_address0_local;
wire   [0:0] tmp_35_fu_1646_p3;
wire   [63:0] tmp_s_fu_1704_p17;
wire   [63:0] tmp_179_fu_1744_p17;
wire   [63:0] tmp_180_fu_1784_p17;
wire   [63:0] tmp_181_fu_1824_p17;
wire   [5:0] trunc_ln75_fu_1867_p1;
wire   [7:0] p_shl_fu_1870_p3;
wire   [7:0] zext_ln75_fu_1864_p1;
wire   [7:0] sub_ln75_fu_1878_p2;
wire   [2:0] lshr_ln_fu_1884_p4;
wire   [5:0] tmp_177_fu_1930_p4;
wire   [7:0] tmp_178_fu_1940_p3;
wire   [7:0] add_ln75_fu_1948_p2;
wire   [2:0] lshr_ln75_1_fu_1954_p4;
wire   [7:0] add_ln75_1_fu_1976_p2;
wire   [2:0] lshr_ln75_2_fu_1982_p4;
wire   [7:0] empty_fu_2004_p2;
wire   [2:0] lshr_ln75_3_fu_2010_p4;
wire   [7:0] add_ln75_2_fu_2032_p2;
wire   [2:0] lshr_ln75_4_fu_2038_p4;
wire   [7:0] add_ln75_3_fu_2060_p2;
wire   [2:0] lshr_ln75_5_fu_2066_p4;
wire   [7:0] empty_467_fu_2088_p2;
wire   [2:0] lshr_ln75_6_fu_2094_p4;
wire   [7:0] add_ln75_4_fu_2116_p2;
wire   [2:0] lshr_ln75_7_fu_2122_p4;
wire   [7:0] add_ln75_5_fu_2144_p2;
wire   [2:0] lshr_ln75_8_fu_2150_p4;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_s_fu_1704_p1;
wire   [4:0] tmp_s_fu_1704_p3;
wire   [4:0] tmp_s_fu_1704_p5;
wire   [4:0] tmp_s_fu_1704_p7;
wire  signed [4:0] tmp_s_fu_1704_p9;
wire  signed [4:0] tmp_s_fu_1704_p11;
wire  signed [4:0] tmp_s_fu_1704_p13;
wire  signed [4:0] tmp_s_fu_1704_p15;
wire   [4:0] tmp_179_fu_1744_p1;
wire   [4:0] tmp_179_fu_1744_p3;
wire   [4:0] tmp_179_fu_1744_p5;
wire   [4:0] tmp_179_fu_1744_p7;
wire  signed [4:0] tmp_179_fu_1744_p9;
wire  signed [4:0] tmp_179_fu_1744_p11;
wire  signed [4:0] tmp_179_fu_1744_p13;
wire  signed [4:0] tmp_179_fu_1744_p15;
wire   [4:0] tmp_180_fu_1784_p1;
wire   [4:0] tmp_180_fu_1784_p3;
wire   [4:0] tmp_180_fu_1784_p5;
wire   [4:0] tmp_180_fu_1784_p7;
wire  signed [4:0] tmp_180_fu_1784_p9;
wire  signed [4:0] tmp_180_fu_1784_p11;
wire  signed [4:0] tmp_180_fu_1784_p13;
wire  signed [4:0] tmp_180_fu_1784_p15;
wire   [4:0] tmp_181_fu_1824_p1;
wire   [4:0] tmp_181_fu_1824_p3;
wire   [4:0] tmp_181_fu_1824_p5;
wire   [4:0] tmp_181_fu_1824_p7;
wire  signed [4:0] tmp_181_fu_1824_p9;
wire  signed [4:0] tmp_181_fu_1824_p11;
wire  signed [4:0] tmp_181_fu_1824_p13;
wire  signed [4:0] tmp_181_fu_1824_p15;
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
#0 i_fu_216 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U982(.din0(activations2_q0),.din1(activations2_4_q0),.din2(activations2_8_q0),.din3(activations2_12_q0),.din4(activations2_16_q0),.din5(activations2_20_q0),.din6(activations2_24_q0),.din7(activations2_28_q0),.def(tmp_s_fu_1704_p17),.sel(trunc_ln73_fu_1701_p1),.dout(tmp_s_fu_1704_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U983(.din0(activations2_1_q0),.din1(activations2_5_q0),.din2(activations2_9_q0),.din3(activations2_13_q0),.din4(activations2_17_q0),.din5(activations2_21_q0),.din6(activations2_25_q0),.din7(activations2_29_q0),.def(tmp_179_fu_1744_p17),.sel(trunc_ln73_fu_1701_p1),.dout(tmp_179_fu_1744_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U984(.din0(activations2_2_q0),.din1(activations2_6_q0),.din2(activations2_10_q0),.din3(activations2_14_q0),.din4(activations2_18_q0),.din5(activations2_22_q0),.din6(activations2_26_q0),.din7(activations2_30_q0),.def(tmp_180_fu_1784_p17),.sel(trunc_ln73_fu_1701_p1),.dout(tmp_180_fu_1784_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U985(.din0(activations2_3_q0),.din1(activations2_7_q0),.din2(activations2_11_q0),.din3(activations2_15_q0),.din4(activations2_19_q0),.din5(activations2_23_q0),.din6(activations2_27_q0),.din7(activations2_31_q0),.def(tmp_181_fu_1824_p17),.sel(trunc_ln73_fu_1701_p1),.dout(tmp_181_fu_1824_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
        if (((tmp_fu_1638_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_216 <= add_ln73_fu_1690_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_216 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_8_reg_2203 <= ap_sig_allocacmp_i_8;
        i_8_reg_2203_pp0_iter1_reg <= i_8_reg_2203;
        tmp_179_reg_2385 <= tmp_179_fu_1744_p19;
        tmp_180_reg_2392 <= tmp_180_fu_1784_p19;
        tmp_181_reg_2399 <= tmp_181_fu_1824_p19;
        tmp_s_reg_2378 <= tmp_s_fu_1704_p19;
        trunc_ln73_reg_2374 <= trunc_ln73_fu_1701_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_predicate_pred902_state10 <= (trunc_ln73_reg_2374_pp0_iter7_reg == 5'd8);
        ap_predicate_pred911_state10 <= (trunc_ln73_reg_2374_pp0_iter7_reg == 5'd16);
        ap_predicate_pred918_state10 <= (trunc_ln73_reg_2374_pp0_iter7_reg == 5'd0);
        ap_predicate_pred921_state10 <= (trunc_ln73_reg_2374_pp0_iter7_reg == 5'd12);
        ap_predicate_pred925_state10 <= (trunc_ln73_reg_2374_pp0_iter7_reg == 5'd24);
        ap_predicate_pred929_state10 <= (trunc_ln73_reg_2374_pp0_iter7_reg == 5'd4);
        ap_predicate_pred935_state10 <= (trunc_ln73_reg_2374_pp0_iter7_reg == 5'd20);
        ap_predicate_pred939_state10 <= (~(trunc_ln73_reg_2374_pp0_iter7_reg == 5'd20) & ~(trunc_ln73_reg_2374_pp0_iter7_reg == 5'd4) & ~(trunc_ln73_reg_2374_pp0_iter7_reg == 5'd24) & ~(trunc_ln73_reg_2374_pp0_iter7_reg == 5'd12) & ~(trunc_ln73_reg_2374_pp0_iter7_reg == 5'd0) & ~(trunc_ln73_reg_2374_pp0_iter7_reg == 5'd16) & ~(trunc_ln73_reg_2374_pp0_iter7_reg == 5'd8));
        i_8_reg_2203_pp0_iter2_reg <= i_8_reg_2203_pp0_iter1_reg;
        i_8_reg_2203_pp0_iter3_reg <= i_8_reg_2203_pp0_iter2_reg;
        i_8_reg_2203_pp0_iter4_reg <= i_8_reg_2203_pp0_iter3_reg;
        i_8_reg_2203_pp0_iter5_reg <= i_8_reg_2203_pp0_iter4_reg;
        i_8_reg_2203_pp0_iter6_reg <= i_8_reg_2203_pp0_iter5_reg;
        i_8_reg_2203_pp0_iter7_reg <= i_8_reg_2203_pp0_iter6_reg;
        i_8_reg_2203_pp0_iter8_reg <= i_8_reg_2203_pp0_iter7_reg;
        mul_16_i_reg_2418 <= grp_fu_8505_p_dout0;
        mul_1_1_i_reg_2454 <= grp_fu_8517_p_dout0;
        mul_1_2_i_reg_2466 <= grp_fu_8521_p_dout0;
        mul_1_i_reg_2442 <= grp_fu_8513_p_dout0;
        mul_216_i_reg_2430 <= grp_fu_8509_p_dout0;
        mul_2_1_i_reg_2490 <= grp_fu_8529_p_dout0;
        mul_2_2_i_reg_2502 <= grp_fu_8533_p_dout0;
        mul_2_i_reg_2478 <= grp_fu_8525_p_dout0;
        mul_3_1_i_reg_2526 <= grp_fu_8541_p_dout0;
        mul_3_2_i_reg_2538 <= grp_fu_8545_p_dout0;
        mul_3_i_reg_2514 <= grp_fu_8537_p_dout0;
        mul_i3_reg_2406 <= grp_fu_8501_p_dout0;
        trunc_ln73_reg_2374_pp0_iter2_reg <= trunc_ln73_reg_2374;
        trunc_ln73_reg_2374_pp0_iter3_reg <= trunc_ln73_reg_2374_pp0_iter2_reg;
        trunc_ln73_reg_2374_pp0_iter4_reg <= trunc_ln73_reg_2374_pp0_iter3_reg;
        trunc_ln73_reg_2374_pp0_iter5_reg <= trunc_ln73_reg_2374_pp0_iter4_reg;
        trunc_ln73_reg_2374_pp0_iter6_reg <= trunc_ln73_reg_2374_pp0_iter5_reg;
        trunc_ln73_reg_2374_pp0_iter7_reg <= trunc_ln73_reg_2374_pp0_iter6_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_10_ce0_local = 1'b1;
    end else begin
        activations2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_11_ce0_local = 1'b1;
    end else begin
        activations2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_12_ce0_local = 1'b1;
    end else begin
        activations2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_13_ce0_local = 1'b1;
    end else begin
        activations2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_14_ce0_local = 1'b1;
    end else begin
        activations2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_15_ce0_local = 1'b1;
    end else begin
        activations2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_16_ce0_local = 1'b1;
    end else begin
        activations2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_17_ce0_local = 1'b1;
    end else begin
        activations2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_18_ce0_local = 1'b1;
    end else begin
        activations2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_19_ce0_local = 1'b1;
    end else begin
        activations2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_20_ce0_local = 1'b1;
    end else begin
        activations2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_21_ce0_local = 1'b1;
    end else begin
        activations2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_22_ce0_local = 1'b1;
    end else begin
        activations2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_23_ce0_local = 1'b1;
    end else begin
        activations2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_24_ce0_local = 1'b1;
    end else begin
        activations2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_25_ce0_local = 1'b1;
    end else begin
        activations2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_26_ce0_local = 1'b1;
    end else begin
        activations2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_27_ce0_local = 1'b1;
    end else begin
        activations2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_28_ce0_local = 1'b1;
    end else begin
        activations2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_29_ce0_local = 1'b1;
    end else begin
        activations2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_2_ce0_local = 1'b1;
    end else begin
        activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_30_ce0_local = 1'b1;
    end else begin
        activations2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_31_ce0_local = 1'b1;
    end else begin
        activations2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_3_ce0_local = 1'b1;
    end else begin
        activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_4_ce0_local = 1'b1;
    end else begin
        activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_5_ce0_local = 1'b1;
    end else begin
        activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_6_ce0_local = 1'b1;
    end else begin
        activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_7_ce0_local = 1'b1;
    end else begin
        activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_8_ce0_local = 1'b1;
    end else begin
        activations2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_9_ce0_local = 1'b1;
    end else begin
        activations2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_1638_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_8 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_8 = i_fu_216;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_8_fu_2132_p1;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_4_fu_2020_p1;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_10_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_10_address0_local = 'bx;
        end
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_3_1_i_reg_2526;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_2_i_reg_2478;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_10_d0_local = mul_216_i_reg_2430;
        end else begin
            delta_weights3_10_d0_local = 'bx;
        end
    end else begin
        delta_weights3_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_9_fu_2160_p1;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_5_fu_2048_p1;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_11_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_11_address0_local = 'bx;
        end
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_3_2_i_reg_2538;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_2_1_i_reg_2490;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_11_d0_local = mul_1_i_reg_2442;
        end else begin
            delta_weights3_11_d0_local = 'bx;
        end
    end else begin
        delta_weights3_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_6_fu_2076_p1;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_2_fu_1964_p1;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_12_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_12_address0_local = 'bx;
        end
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_2_2_i_reg_2502;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_1_1_i_reg_2454;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_12_d0_local = mul_i3_reg_2406;
        end else begin
            delta_weights3_12_d0_local = 'bx;
        end
    end else begin
        delta_weights3_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_7_fu_2104_p1;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_3_fu_1992_p1;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_13_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_13_address0_local = 'bx;
        end
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_3_i_reg_2514;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_1_2_i_reg_2466;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_13_d0_local = mul_16_i_reg_2418;
        end else begin
            delta_weights3_13_d0_local = 'bx;
        end
    end else begin
        delta_weights3_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_8_fu_2132_p1;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_4_fu_2020_p1;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_14_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_14_address0_local = 'bx;
        end
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_3_1_i_reg_2526;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_2_i_reg_2478;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_14_d0_local = mul_216_i_reg_2430;
        end else begin
            delta_weights3_14_d0_local = 'bx;
        end
    end else begin
        delta_weights3_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_9_fu_2160_p1;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_5_fu_2048_p1;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_15_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_15_address0_local = 'bx;
        end
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_3_2_i_reg_2538;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_2_1_i_reg_2490;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_15_d0_local = mul_1_i_reg_2442;
        end else begin
            delta_weights3_15_d0_local = 'bx;
        end
    end else begin
        delta_weights3_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_6_fu_2076_p1;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_2_fu_1964_p1;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_16_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_16_address0_local = 'bx;
        end
    end else begin
        delta_weights3_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_16_ce0_local = 1'b1;
    end else begin
        delta_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_2_2_i_reg_2502;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_1_1_i_reg_2454;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_16_d0_local = mul_i3_reg_2406;
        end else begin
            delta_weights3_16_d0_local = 'bx;
        end
    end else begin
        delta_weights3_16_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_16_we0_local = 1'b1;
    end else begin
        delta_weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_7_fu_2104_p1;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_3_fu_1992_p1;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_17_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_17_address0_local = 'bx;
        end
    end else begin
        delta_weights3_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_17_ce0_local = 1'b1;
    end else begin
        delta_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_3_i_reg_2514;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_1_2_i_reg_2466;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_17_d0_local = mul_16_i_reg_2418;
        end else begin
            delta_weights3_17_d0_local = 'bx;
        end
    end else begin
        delta_weights3_17_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_17_we0_local = 1'b1;
    end else begin
        delta_weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_8_fu_2132_p1;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_4_fu_2020_p1;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_18_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_18_address0_local = 'bx;
        end
    end else begin
        delta_weights3_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_18_ce0_local = 1'b1;
    end else begin
        delta_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_3_1_i_reg_2526;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_2_i_reg_2478;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_18_d0_local = mul_216_i_reg_2430;
        end else begin
            delta_weights3_18_d0_local = 'bx;
        end
    end else begin
        delta_weights3_18_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_18_we0_local = 1'b1;
    end else begin
        delta_weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_9_fu_2160_p1;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_5_fu_2048_p1;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_19_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_19_address0_local = 'bx;
        end
    end else begin
        delta_weights3_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_19_ce0_local = 1'b1;
    end else begin
        delta_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_3_2_i_reg_2538;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_2_1_i_reg_2490;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_19_d0_local = mul_1_i_reg_2442;
        end else begin
            delta_weights3_19_d0_local = 'bx;
        end
    end else begin
        delta_weights3_19_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_19_we0_local = 1'b1;
    end else begin
        delta_weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_3_fu_1992_p1;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_1_address0_local = zext_ln75_7_fu_2104_p1;
        end else begin
            delta_weights3_1_address0_local = 'bx;
        end
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_16_i_reg_2418;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_1_2_i_reg_2466;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_1_d0_local = mul_3_i_reg_2514;
        end else begin
            delta_weights3_1_d0_local = 'bx;
        end
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_6_fu_2076_p1;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_20_address0_local = zext_ln75_2_fu_1964_p1;
        end else begin
            delta_weights3_20_address0_local = 'bx;
        end
    end else begin
        delta_weights3_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_20_ce0_local = 1'b1;
    end else begin
        delta_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_i3_reg_2406;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_2_2_i_reg_2502;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_20_d0_local = mul_1_1_i_reg_2454;
        end else begin
            delta_weights3_20_d0_local = 'bx;
        end
    end else begin
        delta_weights3_20_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_20_we0_local = 1'b1;
    end else begin
        delta_weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_7_fu_2104_p1;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_21_address0_local = zext_ln75_3_fu_1992_p1;
        end else begin
            delta_weights3_21_address0_local = 'bx;
        end
    end else begin
        delta_weights3_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_21_ce0_local = 1'b1;
    end else begin
        delta_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_16_i_reg_2418;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_3_i_reg_2514;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_21_d0_local = mul_1_2_i_reg_2466;
        end else begin
            delta_weights3_21_d0_local = 'bx;
        end
    end else begin
        delta_weights3_21_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_21_we0_local = 1'b1;
    end else begin
        delta_weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_8_fu_2132_p1;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_22_address0_local = zext_ln75_4_fu_2020_p1;
        end else begin
            delta_weights3_22_address0_local = 'bx;
        end
    end else begin
        delta_weights3_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_22_ce0_local = 1'b1;
    end else begin
        delta_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_216_i_reg_2430;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_3_1_i_reg_2526;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_22_d0_local = mul_2_i_reg_2478;
        end else begin
            delta_weights3_22_d0_local = 'bx;
        end
    end else begin
        delta_weights3_22_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_22_we0_local = 1'b1;
    end else begin
        delta_weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_9_fu_2160_p1;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_23_address0_local = zext_ln75_5_fu_2048_p1;
        end else begin
            delta_weights3_23_address0_local = 'bx;
        end
    end else begin
        delta_weights3_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_23_ce0_local = 1'b1;
    end else begin
        delta_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_1_i_reg_2442;
        end else if ((ap_predicate_pred929_state10 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_3_2_i_reg_2538;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_23_d0_local = mul_2_1_i_reg_2490;
        end else begin
            delta_weights3_23_d0_local = 'bx;
        end
    end else begin
        delta_weights3_23_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred929_state10 == 1'b1)))) begin
        delta_weights3_23_we0_local = 1'b1;
    end else begin
        delta_weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_2_fu_1964_p1;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_6_fu_2076_p1;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_24_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_24_address0_local = 'bx;
        end
    end else begin
        delta_weights3_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_24_ce0_local = 1'b1;
    end else begin
        delta_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_1_1_i_reg_2454;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_2_2_i_reg_2502;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_24_d0_local = mul_i3_reg_2406;
        end else begin
            delta_weights3_24_d0_local = 'bx;
        end
    end else begin
        delta_weights3_24_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_24_we0_local = 1'b1;
    end else begin
        delta_weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_3_fu_1992_p1;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_7_fu_2104_p1;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_25_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_25_address0_local = 'bx;
        end
    end else begin
        delta_weights3_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_25_ce0_local = 1'b1;
    end else begin
        delta_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_1_2_i_reg_2466;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_3_i_reg_2514;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_25_d0_local = mul_16_i_reg_2418;
        end else begin
            delta_weights3_25_d0_local = 'bx;
        end
    end else begin
        delta_weights3_25_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_25_we0_local = 1'b1;
    end else begin
        delta_weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_4_fu_2020_p1;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_8_fu_2132_p1;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_26_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_26_address0_local = 'bx;
        end
    end else begin
        delta_weights3_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_26_ce0_local = 1'b1;
    end else begin
        delta_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_2_i_reg_2478;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_3_1_i_reg_2526;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_26_d0_local = mul_216_i_reg_2430;
        end else begin
            delta_weights3_26_d0_local = 'bx;
        end
    end else begin
        delta_weights3_26_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_26_we0_local = 1'b1;
    end else begin
        delta_weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_5_fu_2048_p1;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_9_fu_2160_p1;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_27_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_27_address0_local = 'bx;
        end
    end else begin
        delta_weights3_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_27_ce0_local = 1'b1;
    end else begin
        delta_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_2_1_i_reg_2490;
        end else if ((ap_predicate_pred911_state10 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_3_2_i_reg_2538;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_27_d0_local = mul_1_i_reg_2442;
        end else begin
            delta_weights3_27_d0_local = 'bx;
        end
    end else begin
        delta_weights3_27_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred911_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_27_we0_local = 1'b1;
    end else begin
        delta_weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_6_fu_2076_p1;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_28_address0_local = zext_ln75_2_fu_1964_p1;
        end else begin
            delta_weights3_28_address0_local = 'bx;
        end
    end else begin
        delta_weights3_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_28_ce0_local = 1'b1;
    end else begin
        delta_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_2_2_i_reg_2502;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_i3_reg_2406;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_28_d0_local = mul_1_1_i_reg_2454;
        end else begin
            delta_weights3_28_d0_local = 'bx;
        end
    end else begin
        delta_weights3_28_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_28_we0_local = 1'b1;
    end else begin
        delta_weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_7_fu_2104_p1;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_29_address0_local = zext_ln75_3_fu_1992_p1;
        end else begin
            delta_weights3_29_address0_local = 'bx;
        end
    end else begin
        delta_weights3_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_29_ce0_local = 1'b1;
    end else begin
        delta_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_3_i_reg_2514;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_16_i_reg_2418;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_29_d0_local = mul_1_2_i_reg_2466;
        end else begin
            delta_weights3_29_d0_local = 'bx;
        end
    end else begin
        delta_weights3_29_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_29_we0_local = 1'b1;
    end else begin
        delta_weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_4_fu_2020_p1;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_2_address0_local = zext_ln75_8_fu_2132_p1;
        end else begin
            delta_weights3_2_address0_local = 'bx;
        end
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_216_i_reg_2430;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_2_i_reg_2478;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_2_d0_local = mul_3_1_i_reg_2526;
        end else begin
            delta_weights3_2_d0_local = 'bx;
        end
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_8_fu_2132_p1;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_30_address0_local = zext_ln75_4_fu_2020_p1;
        end else begin
            delta_weights3_30_address0_local = 'bx;
        end
    end else begin
        delta_weights3_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_30_ce0_local = 1'b1;
    end else begin
        delta_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_3_1_i_reg_2526;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_216_i_reg_2430;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_30_d0_local = mul_2_i_reg_2478;
        end else begin
            delta_weights3_30_d0_local = 'bx;
        end
    end else begin
        delta_weights3_30_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_30_we0_local = 1'b1;
    end else begin
        delta_weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_9_fu_2160_p1;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_31_address0_local = zext_ln75_5_fu_2048_p1;
        end else begin
            delta_weights3_31_address0_local = 'bx;
        end
    end else begin
        delta_weights3_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_31_ce0_local = 1'b1;
    end else begin
        delta_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred939_state10 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_3_2_i_reg_2538;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_1_i_reg_2442;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_31_d0_local = mul_2_1_i_reg_2490;
        end else begin
            delta_weights3_31_d0_local = 'bx;
        end
    end else begin
        delta_weights3_31_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred939_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_31_we0_local = 1'b1;
    end else begin
        delta_weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_5_fu_2048_p1;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_3_address0_local = zext_ln75_9_fu_2160_p1;
        end else begin
            delta_weights3_3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_1_i_reg_2442;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_2_1_i_reg_2490;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_3_d0_local = mul_3_2_i_reg_2538;
        end else begin
            delta_weights3_3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_2_fu_1964_p1;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_4_address0_local = zext_ln75_6_fu_2076_p1;
        end else begin
            delta_weights3_4_address0_local = 'bx;
        end
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_1_1_i_reg_2454;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_i3_reg_2406;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_4_d0_local = mul_2_2_i_reg_2502;
        end else begin
            delta_weights3_4_d0_local = 'bx;
        end
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_3_fu_1992_p1;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_5_address0_local = zext_ln75_7_fu_2104_p1;
        end else begin
            delta_weights3_5_address0_local = 'bx;
        end
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_1_2_i_reg_2466;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_16_i_reg_2418;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_5_d0_local = mul_3_i_reg_2514;
        end else begin
            delta_weights3_5_d0_local = 'bx;
        end
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_4_fu_2020_p1;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_6_address0_local = zext_ln75_8_fu_2132_p1;
        end else begin
            delta_weights3_6_address0_local = 'bx;
        end
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_2_i_reg_2478;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_216_i_reg_2430;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_6_d0_local = mul_3_1_i_reg_2526;
        end else begin
            delta_weights3_6_d0_local = 'bx;
        end
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_5_fu_2048_p1;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_7_address0_local = zext_ln75_9_fu_2160_p1;
        end else begin
            delta_weights3_7_address0_local = 'bx;
        end
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_2_1_i_reg_2490;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_1_i_reg_2442;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_7_d0_local = mul_3_2_i_reg_2538;
        end else begin
            delta_weights3_7_d0_local = 'bx;
        end
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_6_fu_2076_p1;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_2_fu_1964_p1;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_8_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_8_address0_local = 'bx;
        end
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_2_2_i_reg_2502;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_1_1_i_reg_2454;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_8_d0_local = mul_i3_reg_2406;
        end else begin
            delta_weights3_8_d0_local = 'bx;
        end
    end else begin
        delta_weights3_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_7_fu_2104_p1;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_3_fu_1992_p1;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_9_address0_local = zext_ln75_1_fu_1894_p1;
        end else begin
            delta_weights3_9_address0_local = 'bx;
        end
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_3_i_reg_2514;
        end else if ((ap_predicate_pred921_state10 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_1_2_i_reg_2466;
        end else if ((ap_predicate_pred925_state10 == 1'b1)) begin
            delta_weights3_9_d0_local = mul_16_i_reg_2418;
        end else begin
            delta_weights3_9_d0_local = 'bx;
        end
    end else begin
        delta_weights3_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred925_state10 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred921_state10 == 1'b1)))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_address0_local = zext_ln75_1_fu_1894_p1;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_address0_local = zext_ln75_2_fu_1964_p1;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_address0_local = zext_ln75_6_fu_2076_p1;
        end else begin
            delta_weights3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_ce0_local = 1'b1;
    end else begin
        delta_weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((ap_predicate_pred918_state10 == 1'b1)) begin
            delta_weights3_d0_local = mul_i3_reg_2406;
        end else if ((ap_predicate_pred935_state10 == 1'b1)) begin
            delta_weights3_d0_local = mul_1_1_i_reg_2454;
        end else if ((ap_predicate_pred902_state10 == 1'b1)) begin
            delta_weights3_d0_local = mul_2_2_i_reg_2502;
        end else begin
            delta_weights3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred918_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred935_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((ap_predicate_pred902_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)))) begin
        delta_weights3_we0_local = 1'b1;
    end else begin
        delta_weights3_we0_local = 1'b0;
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
assign activations2_10_address0 = zext_ln72_fu_1654_p1;
assign activations2_10_ce0 = activations2_10_ce0_local;
assign activations2_11_address0 = zext_ln72_fu_1654_p1;
assign activations2_11_ce0 = activations2_11_ce0_local;
assign activations2_12_address0 = zext_ln72_fu_1654_p1;
assign activations2_12_ce0 = activations2_12_ce0_local;
assign activations2_13_address0 = zext_ln72_fu_1654_p1;
assign activations2_13_ce0 = activations2_13_ce0_local;
assign activations2_14_address0 = zext_ln72_fu_1654_p1;
assign activations2_14_ce0 = activations2_14_ce0_local;
assign activations2_15_address0 = zext_ln72_fu_1654_p1;
assign activations2_15_ce0 = activations2_15_ce0_local;
assign activations2_16_address0 = zext_ln72_fu_1654_p1;
assign activations2_16_ce0 = activations2_16_ce0_local;
assign activations2_17_address0 = zext_ln72_fu_1654_p1;
assign activations2_17_ce0 = activations2_17_ce0_local;
assign activations2_18_address0 = zext_ln72_fu_1654_p1;
assign activations2_18_ce0 = activations2_18_ce0_local;
assign activations2_19_address0 = zext_ln72_fu_1654_p1;
assign activations2_19_ce0 = activations2_19_ce0_local;
assign activations2_1_address0 = zext_ln72_fu_1654_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_20_address0 = zext_ln72_fu_1654_p1;
assign activations2_20_ce0 = activations2_20_ce0_local;
assign activations2_21_address0 = zext_ln72_fu_1654_p1;
assign activations2_21_ce0 = activations2_21_ce0_local;
assign activations2_22_address0 = zext_ln72_fu_1654_p1;
assign activations2_22_ce0 = activations2_22_ce0_local;
assign activations2_23_address0 = zext_ln72_fu_1654_p1;
assign activations2_23_ce0 = activations2_23_ce0_local;
assign activations2_24_address0 = zext_ln72_fu_1654_p1;
assign activations2_24_ce0 = activations2_24_ce0_local;
assign activations2_25_address0 = zext_ln72_fu_1654_p1;
assign activations2_25_ce0 = activations2_25_ce0_local;
assign activations2_26_address0 = zext_ln72_fu_1654_p1;
assign activations2_26_ce0 = activations2_26_ce0_local;
assign activations2_27_address0 = zext_ln72_fu_1654_p1;
assign activations2_27_ce0 = activations2_27_ce0_local;
assign activations2_28_address0 = zext_ln72_fu_1654_p1;
assign activations2_28_ce0 = activations2_28_ce0_local;
assign activations2_29_address0 = zext_ln72_fu_1654_p1;
assign activations2_29_ce0 = activations2_29_ce0_local;
assign activations2_2_address0 = zext_ln72_fu_1654_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_30_address0 = zext_ln72_fu_1654_p1;
assign activations2_30_ce0 = activations2_30_ce0_local;
assign activations2_31_address0 = zext_ln72_fu_1654_p1;
assign activations2_31_ce0 = activations2_31_ce0_local;
assign activations2_3_address0 = zext_ln72_fu_1654_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_4_address0 = zext_ln72_fu_1654_p1;
assign activations2_4_ce0 = activations2_4_ce0_local;
assign activations2_5_address0 = zext_ln72_fu_1654_p1;
assign activations2_5_ce0 = activations2_5_ce0_local;
assign activations2_6_address0 = zext_ln72_fu_1654_p1;
assign activations2_6_ce0 = activations2_6_ce0_local;
assign activations2_7_address0 = zext_ln72_fu_1654_p1;
assign activations2_7_ce0 = activations2_7_ce0_local;
assign activations2_8_address0 = zext_ln72_fu_1654_p1;
assign activations2_8_ce0 = activations2_8_ce0_local;
assign activations2_9_address0 = zext_ln72_fu_1654_p1;
assign activations2_9_ce0 = activations2_9_ce0_local;
assign activations2_address0 = zext_ln72_fu_1654_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln73_fu_1690_p2 = (ap_sig_allocacmp_i_8 + 7'd4);
assign add_ln75_1_fu_1976_p2 = (tmp_178_fu_1940_p3 + 8'd2);
assign add_ln75_2_fu_2032_p2 = (tmp_178_fu_1940_p3 + 8'd4);
assign add_ln75_3_fu_2060_p2 = (tmp_178_fu_1940_p3 + 8'd5);
assign add_ln75_4_fu_2116_p2 = (tmp_178_fu_1940_p3 + 8'd7);
assign add_ln75_5_fu_2144_p2 = (tmp_178_fu_1940_p3 + 8'd8);
assign add_ln75_fu_1948_p2 = (tmp_178_fu_1940_p3 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_10_address0 = delta_weights3_10_address0_local;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_d0 = delta_weights3_10_d0_local;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_11_address0 = delta_weights3_11_address0_local;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_d0 = delta_weights3_11_d0_local;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_12_address0 = delta_weights3_12_address0_local;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_d0 = delta_weights3_12_d0_local;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_13_address0 = delta_weights3_13_address0_local;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_d0 = delta_weights3_13_d0_local;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_14_address0 = delta_weights3_14_address0_local;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_d0 = delta_weights3_14_d0_local;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_15_address0 = delta_weights3_15_address0_local;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_d0 = delta_weights3_15_d0_local;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_16_address0 = delta_weights3_16_address0_local;
assign delta_weights3_16_ce0 = delta_weights3_16_ce0_local;
assign delta_weights3_16_d0 = delta_weights3_16_d0_local;
assign delta_weights3_16_we0 = delta_weights3_16_we0_local;
assign delta_weights3_17_address0 = delta_weights3_17_address0_local;
assign delta_weights3_17_ce0 = delta_weights3_17_ce0_local;
assign delta_weights3_17_d0 = delta_weights3_17_d0_local;
assign delta_weights3_17_we0 = delta_weights3_17_we0_local;
assign delta_weights3_18_address0 = delta_weights3_18_address0_local;
assign delta_weights3_18_ce0 = delta_weights3_18_ce0_local;
assign delta_weights3_18_d0 = delta_weights3_18_d0_local;
assign delta_weights3_18_we0 = delta_weights3_18_we0_local;
assign delta_weights3_19_address0 = delta_weights3_19_address0_local;
assign delta_weights3_19_ce0 = delta_weights3_19_ce0_local;
assign delta_weights3_19_d0 = delta_weights3_19_d0_local;
assign delta_weights3_19_we0 = delta_weights3_19_we0_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_20_address0 = delta_weights3_20_address0_local;
assign delta_weights3_20_ce0 = delta_weights3_20_ce0_local;
assign delta_weights3_20_d0 = delta_weights3_20_d0_local;
assign delta_weights3_20_we0 = delta_weights3_20_we0_local;
assign delta_weights3_21_address0 = delta_weights3_21_address0_local;
assign delta_weights3_21_ce0 = delta_weights3_21_ce0_local;
assign delta_weights3_21_d0 = delta_weights3_21_d0_local;
assign delta_weights3_21_we0 = delta_weights3_21_we0_local;
assign delta_weights3_22_address0 = delta_weights3_22_address0_local;
assign delta_weights3_22_ce0 = delta_weights3_22_ce0_local;
assign delta_weights3_22_d0 = delta_weights3_22_d0_local;
assign delta_weights3_22_we0 = delta_weights3_22_we0_local;
assign delta_weights3_23_address0 = delta_weights3_23_address0_local;
assign delta_weights3_23_ce0 = delta_weights3_23_ce0_local;
assign delta_weights3_23_d0 = delta_weights3_23_d0_local;
assign delta_weights3_23_we0 = delta_weights3_23_we0_local;
assign delta_weights3_24_address0 = delta_weights3_24_address0_local;
assign delta_weights3_24_ce0 = delta_weights3_24_ce0_local;
assign delta_weights3_24_d0 = delta_weights3_24_d0_local;
assign delta_weights3_24_we0 = delta_weights3_24_we0_local;
assign delta_weights3_25_address0 = delta_weights3_25_address0_local;
assign delta_weights3_25_ce0 = delta_weights3_25_ce0_local;
assign delta_weights3_25_d0 = delta_weights3_25_d0_local;
assign delta_weights3_25_we0 = delta_weights3_25_we0_local;
assign delta_weights3_26_address0 = delta_weights3_26_address0_local;
assign delta_weights3_26_ce0 = delta_weights3_26_ce0_local;
assign delta_weights3_26_d0 = delta_weights3_26_d0_local;
assign delta_weights3_26_we0 = delta_weights3_26_we0_local;
assign delta_weights3_27_address0 = delta_weights3_27_address0_local;
assign delta_weights3_27_ce0 = delta_weights3_27_ce0_local;
assign delta_weights3_27_d0 = delta_weights3_27_d0_local;
assign delta_weights3_27_we0 = delta_weights3_27_we0_local;
assign delta_weights3_28_address0 = delta_weights3_28_address0_local;
assign delta_weights3_28_ce0 = delta_weights3_28_ce0_local;
assign delta_weights3_28_d0 = delta_weights3_28_d0_local;
assign delta_weights3_28_we0 = delta_weights3_28_we0_local;
assign delta_weights3_29_address0 = delta_weights3_29_address0_local;
assign delta_weights3_29_ce0 = delta_weights3_29_ce0_local;
assign delta_weights3_29_d0 = delta_weights3_29_d0_local;
assign delta_weights3_29_we0 = delta_weights3_29_we0_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_30_address0 = delta_weights3_30_address0_local;
assign delta_weights3_30_ce0 = delta_weights3_30_ce0_local;
assign delta_weights3_30_d0 = delta_weights3_30_d0_local;
assign delta_weights3_30_we0 = delta_weights3_30_we0_local;
assign delta_weights3_31_address0 = delta_weights3_31_address0_local;
assign delta_weights3_31_ce0 = delta_weights3_31_ce0_local;
assign delta_weights3_31_d0 = delta_weights3_31_d0_local;
assign delta_weights3_31_we0 = delta_weights3_31_we0_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_d0 = delta_weights3_6_d0_local;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_d0 = delta_weights3_7_d0_local;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_8_address0 = delta_weights3_8_address0_local;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_d0 = delta_weights3_8_d0_local;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_9_address0 = delta_weights3_9_address0_local;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_d0 = delta_weights3_9_d0_local;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign delta_weights3_address0 = delta_weights3_address0_local;
assign delta_weights3_ce0 = delta_weights3_ce0_local;
assign delta_weights3_d0 = delta_weights3_d0_local;
assign delta_weights3_we0 = delta_weights3_we0_local;
assign empty_467_fu_2088_p2 = (tmp_178_fu_1940_p3 + 8'd6);
assign empty_fu_2004_p2 = (tmp_178_fu_1940_p3 + 8'd3);
assign grp_fu_8501_p_ce = 1'b1;
assign grp_fu_8501_p_din0 = tmp_s_reg_2378;
assign grp_fu_8501_p_din1 = p_reload86;
assign grp_fu_8505_p_ce = 1'b1;
assign grp_fu_8505_p_din0 = tmp_s_reg_2378;
assign grp_fu_8505_p_din1 = p_reload85;
assign grp_fu_8509_p_ce = 1'b1;
assign grp_fu_8509_p_din0 = tmp_s_reg_2378;
assign grp_fu_8509_p_din1 = p_reload;
assign grp_fu_8513_p_ce = 1'b1;
assign grp_fu_8513_p_din0 = tmp_179_reg_2385;
assign grp_fu_8513_p_din1 = p_reload86;
assign grp_fu_8517_p_ce = 1'b1;
assign grp_fu_8517_p_din0 = tmp_179_reg_2385;
assign grp_fu_8517_p_din1 = p_reload85;
assign grp_fu_8521_p_ce = 1'b1;
assign grp_fu_8521_p_din0 = tmp_179_reg_2385;
assign grp_fu_8521_p_din1 = p_reload;
assign grp_fu_8525_p_ce = 1'b1;
assign grp_fu_8525_p_din0 = tmp_180_reg_2392;
assign grp_fu_8525_p_din1 = p_reload86;
assign grp_fu_8529_p_ce = 1'b1;
assign grp_fu_8529_p_din0 = tmp_180_reg_2392;
assign grp_fu_8529_p_din1 = p_reload85;
assign grp_fu_8533_p_ce = 1'b1;
assign grp_fu_8533_p_din0 = tmp_180_reg_2392;
assign grp_fu_8533_p_din1 = p_reload;
assign grp_fu_8537_p_ce = 1'b1;
assign grp_fu_8537_p_din0 = tmp_181_reg_2399;
assign grp_fu_8537_p_din1 = p_reload86;
assign grp_fu_8541_p_ce = 1'b1;
assign grp_fu_8541_p_din0 = tmp_181_reg_2399;
assign grp_fu_8541_p_din1 = p_reload85;
assign grp_fu_8545_p_ce = 1'b1;
assign grp_fu_8545_p_din0 = tmp_181_reg_2399;
assign grp_fu_8545_p_din1 = p_reload;
assign lshr_ln75_1_fu_1954_p4 = {{add_ln75_fu_1948_p2[7:5]}};
assign lshr_ln75_2_fu_1982_p4 = {{add_ln75_1_fu_1976_p2[7:5]}};
assign lshr_ln75_3_fu_2010_p4 = {{empty_fu_2004_p2[7:5]}};
assign lshr_ln75_4_fu_2038_p4 = {{add_ln75_2_fu_2032_p2[7:5]}};
assign lshr_ln75_5_fu_2066_p4 = {{add_ln75_3_fu_2060_p2[7:5]}};
assign lshr_ln75_6_fu_2094_p4 = {{empty_467_fu_2088_p2[7:5]}};
assign lshr_ln75_7_fu_2122_p4 = {{add_ln75_4_fu_2116_p2[7:5]}};
assign lshr_ln75_8_fu_2150_p4 = {{add_ln75_5_fu_2144_p2[7:5]}};
assign lshr_ln_fu_1884_p4 = {{sub_ln75_fu_1878_p2[7:5]}};
assign p_shl_fu_1870_p3 = {{trunc_ln75_fu_1867_p1}, {2'd0}};
assign sub_ln75_fu_1878_p2 = (p_shl_fu_1870_p3 - zext_ln75_fu_1864_p1);
assign tmp_177_fu_1930_p4 = {{sub_ln75_fu_1878_p2[7:2]}};
assign tmp_178_fu_1940_p3 = {{tmp_177_fu_1930_p4}, {2'd3}};
assign tmp_179_fu_1744_p17 = 'bx;
assign tmp_180_fu_1784_p17 = 'bx;
assign tmp_181_fu_1824_p17 = 'bx;
assign tmp_35_fu_1646_p3 = ap_sig_allocacmp_i_8[32'd5];
assign tmp_fu_1638_p3 = ap_sig_allocacmp_i_8[32'd6];
assign tmp_s_fu_1704_p17 = 'bx;
assign trunc_ln73_fu_1701_p1 = i_8_reg_2203[4:0];
assign trunc_ln75_fu_1867_p1 = i_8_reg_2203_pp0_iter8_reg[5:0];
assign zext_ln72_fu_1654_p1 = tmp_35_fu_1646_p3;
assign zext_ln75_1_fu_1894_p1 = lshr_ln_fu_1884_p4;
assign zext_ln75_2_fu_1964_p1 = lshr_ln75_1_fu_1954_p4;
assign zext_ln75_3_fu_1992_p1 = lshr_ln75_2_fu_1982_p4;
assign zext_ln75_4_fu_2020_p1 = lshr_ln75_3_fu_2010_p4;
assign zext_ln75_5_fu_2048_p1 = lshr_ln75_4_fu_2038_p4;
assign zext_ln75_6_fu_2076_p1 = lshr_ln75_5_fu_2066_p4;
assign zext_ln75_7_fu_2104_p1 = lshr_ln75_6_fu_2094_p4;
assign zext_ln75_8_fu_2132_p1 = lshr_ln75_7_fu_2122_p4;
assign zext_ln75_9_fu_2160_p1 = lshr_ln75_8_fu_2150_p4;
assign zext_ln75_fu_1864_p1 = i_8_reg_2203_pp0_iter8_reg;
endmodule 