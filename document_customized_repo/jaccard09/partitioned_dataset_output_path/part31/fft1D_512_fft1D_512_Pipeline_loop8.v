
module fft1D_512_fft1D_512_Pipeline_loop8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_7_address1,DATA_x_7_ce1,DATA_x_7_we1,DATA_x_7_d1,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_6_address1,DATA_x_6_ce1,DATA_x_6_we1,DATA_x_6_d1,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_5_address1,DATA_x_5_ce1,DATA_x_5_we1,DATA_x_5_d1,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_4_address1,DATA_x_4_ce1,DATA_x_4_we1,DATA_x_4_d1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_we1,DATA_x_3_d1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_we1,DATA_x_2_d1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_we1,DATA_x_1_d1,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,DATA_x_address1,DATA_x_ce1,DATA_x_we1,DATA_x_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1,smem_8_address0,smem_8_ce0,smem_8_q0,smem_8_address1,smem_8_ce1,smem_8_q1,smem_9_address0,smem_9_ce0,smem_9_q0,smem_9_address1,smem_9_ce1,smem_9_q1,smem_10_address0,smem_10_ce0,smem_10_q0,smem_10_address1,smem_10_ce1,smem_10_q1,smem_11_address0,smem_11_ce0,smem_11_q0,smem_11_address1,smem_11_ce1,smem_11_q1,smem_12_address0,smem_12_ce0,smem_12_q0,smem_12_address1,smem_12_ce1,smem_12_q1,smem_13_address0,smem_13_ce0,smem_13_q0,smem_13_address1,smem_13_ce1,smem_13_q1,smem_14_address0,smem_14_ce0,smem_14_q0,smem_14_address1,smem_14_ce1,smem_14_q1,smem_15_address0,smem_15_ce0,smem_15_q0,smem_15_address1,smem_15_ce1,smem_15_q1,smem_16_address0,smem_16_ce0,smem_16_q0,smem_16_address1,smem_16_ce1,smem_16_q1,smem_17_address0,smem_17_ce0,smem_17_q0,smem_17_address1,smem_17_ce1,smem_17_q1,smem_18_address0,smem_18_ce0,smem_18_q0,smem_18_address1,smem_18_ce1,smem_18_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [5:0] DATA_x_7_address1;
output   DATA_x_7_ce1;
output   DATA_x_7_we1;
output  [63:0] DATA_x_7_d1;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [5:0] DATA_x_6_address1;
output   DATA_x_6_ce1;
output   DATA_x_6_we1;
output  [63:0] DATA_x_6_d1;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [5:0] DATA_x_5_address1;
output   DATA_x_5_ce1;
output   DATA_x_5_we1;
output  [63:0] DATA_x_5_d1;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [5:0] DATA_x_4_address1;
output   DATA_x_4_ce1;
output   DATA_x_4_we1;
output  [63:0] DATA_x_4_d1;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [5:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
output   DATA_x_3_we1;
output  [63:0] DATA_x_3_d1;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [5:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
output   DATA_x_2_we1;
output  [63:0] DATA_x_2_d1;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [5:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
output   DATA_x_1_we1;
output  [63:0] DATA_x_1_d1;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [5:0] DATA_x_address1;
output   DATA_x_ce1;
output   DATA_x_we1;
output  [63:0] DATA_x_d1;
output  [4:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [4:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [4:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [4:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [4:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [4:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [4:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [4:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [4:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [4:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
output  [4:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [4:0] smem_5_address1;
output   smem_5_ce1;
input  [63:0] smem_5_q1;
output  [4:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [4:0] smem_6_address1;
output   smem_6_ce1;
input  [63:0] smem_6_q1;
output  [4:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [4:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
output  [4:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [4:0] smem_8_address1;
output   smem_8_ce1;
input  [63:0] smem_8_q1;
output  [4:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [4:0] smem_9_address1;
output   smem_9_ce1;
input  [63:0] smem_9_q1;
output  [4:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [4:0] smem_10_address1;
output   smem_10_ce1;
input  [63:0] smem_10_q1;
output  [4:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [4:0] smem_11_address1;
output   smem_11_ce1;
input  [63:0] smem_11_q1;
output  [4:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
output  [4:0] smem_12_address1;
output   smem_12_ce1;
input  [63:0] smem_12_q1;
output  [4:0] smem_13_address0;
output   smem_13_ce0;
input  [63:0] smem_13_q0;
output  [4:0] smem_13_address1;
output   smem_13_ce1;
input  [63:0] smem_13_q1;
output  [4:0] smem_14_address0;
output   smem_14_ce0;
input  [63:0] smem_14_q0;
output  [4:0] smem_14_address1;
output   smem_14_ce1;
input  [63:0] smem_14_q1;
output  [4:0] smem_15_address0;
output   smem_15_ce0;
input  [63:0] smem_15_q0;
output  [4:0] smem_15_address1;
output   smem_15_ce1;
input  [63:0] smem_15_q1;
output  [4:0] smem_16_address0;
output   smem_16_ce0;
input  [63:0] smem_16_q0;
output  [4:0] smem_16_address1;
output   smem_16_ce1;
input  [63:0] smem_16_q1;
output  [4:0] smem_17_address0;
output   smem_17_ce0;
input  [63:0] smem_17_q0;
output  [4:0] smem_17_address1;
output   smem_17_ce1;
input  [63:0] smem_17_q1;
output  [4:0] smem_18_address0;
output   smem_18_ce0;
input  [63:0] smem_18_q0;
output  [4:0] smem_18_address1;
output   smem_18_ce1;
input  [63:0] smem_18_q1;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_2987_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_2_reg_5105;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_2_reg_5105_pp0_iter1_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter2_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter3_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter4_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter5_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter6_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter7_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter8_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter9_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter10_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter11_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter12_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter13_reg;
reg   [6:0] tid_2_reg_5105_pp0_iter14_reg;
wire   [8:0] offset_2_fu_3009_p3;
reg   [8:0] offset_2_reg_5115;
reg   [8:0] offset_2_reg_5115_pp0_iter1_reg;
reg   [8:0] offset_2_reg_5115_pp0_iter2_reg;
reg   [8:0] offset_2_reg_5115_pp0_iter3_reg;
reg   [8:0] offset_2_reg_5115_pp0_iter4_reg;
reg   [8:0] offset_2_reg_5115_pp0_iter5_reg;
reg   [8:0] offset_2_reg_5115_pp0_iter6_reg;
reg   [8:0] offset_2_reg_5115_pp0_iter7_reg;
reg   [8:0] offset_2_reg_5115_pp0_iter8_reg;
reg   [8:0] offset_2_reg_5115_pp0_iter9_reg;
wire   [8:0] offset_3_fu_3033_p4;
reg   [8:0] offset_3_reg_5122;
reg   [8:0] offset_3_reg_5122_pp0_iter1_reg;
reg   [8:0] offset_3_reg_5122_pp0_iter2_reg;
reg   [8:0] offset_3_reg_5122_pp0_iter3_reg;
reg   [8:0] offset_3_reg_5122_pp0_iter4_reg;
reg   [8:0] offset_3_reg_5122_pp0_iter5_reg;
reg   [8:0] offset_3_reg_5122_pp0_iter6_reg;
reg   [8:0] offset_3_reg_5122_pp0_iter7_reg;
reg   [8:0] offset_3_reg_5122_pp0_iter8_reg;
reg   [8:0] offset_3_reg_5122_pp0_iter9_reg;
reg   [4:0] tmp_62_reg_5129;
reg   [4:0] tmp_62_reg_5129_pp0_iter11_reg;
reg   [4:0] tmp_62_reg_5129_pp0_iter12_reg;
reg   [4:0] tmp_71_reg_5134;
reg   [4:0] tmp_71_reg_5134_pp0_iter11_reg;
reg   [4:0] tmp_71_reg_5134_pp0_iter12_reg;
wire   [4:0] trunc_ln172_fu_3104_p1;
reg   [4:0] trunc_ln172_reg_5139;
reg   [4:0] trunc_ln172_reg_5139_pp0_iter13_reg;
wire   [4:0] trunc_ln172_4_fu_3108_p1;
reg   [4:0] trunc_ln172_4_reg_5151;
reg   [4:0] trunc_ln172_4_reg_5151_pp0_iter13_reg;
wire   [63:0] tmp_s_fu_3604_p41;
reg   [63:0] tmp_s_reg_6683;
wire   [63:0] tmp_21_fu_3687_p41;
reg   [63:0] tmp_21_reg_6688;
wire   [63:0] tmp_22_fu_3770_p41;
reg   [63:0] tmp_22_reg_6693;
wire   [63:0] tmp_23_fu_3853_p41;
reg   [63:0] tmp_23_reg_6698;
wire   [63:0] tmp_24_fu_3936_p41;
reg   [63:0] tmp_24_reg_6703;
wire   [63:0] tmp_25_fu_4019_p41;
reg   [63:0] tmp_25_reg_6708;
wire   [63:0] tmp_26_fu_4102_p41;
reg   [63:0] tmp_26_reg_6713;
wire   [63:0] tmp_27_fu_4185_p41;
reg   [63:0] tmp_27_reg_6718;
wire   [63:0] tmp_29_fu_4268_p41;
reg   [63:0] tmp_29_reg_6723;
wire   [63:0] tmp_30_fu_4351_p41;
reg   [63:0] tmp_30_reg_6728;
wire   [63:0] tmp_31_fu_4434_p41;
reg   [63:0] tmp_31_reg_6733;
wire   [63:0] tmp_32_fu_4517_p41;
reg   [63:0] tmp_32_reg_6738;
wire   [63:0] tmp_33_fu_4600_p41;
reg   [63:0] tmp_33_reg_6743;
wire   [63:0] tmp_34_fu_4683_p41;
reg   [63:0] tmp_34_reg_6748;
wire   [63:0] tmp_35_fu_4766_p41;
reg   [63:0] tmp_35_reg_6753;
wire   [63:0] tmp_36_fu_4849_p41;
reg   [63:0] tmp_36_reg_6758;
wire   [63:0] zext_ln172_2_fu_3112_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln315_fu_3143_p1;
wire   [63:0] zext_ln316_fu_3175_p1;
wire   [63:0] zext_ln317_fu_3207_p1;
wire   [63:0] zext_ln318_fu_3239_p1;
wire   [63:0] zext_ln319_fu_3271_p1;
wire   [63:0] zext_ln320_fu_3303_p1;
wire   [63:0] zext_ln321_fu_3335_p1;
wire   [63:0] zext_ln172_3_fu_3358_p1;
wire   [63:0] zext_ln315_1_fu_3389_p1;
wire   [63:0] zext_ln316_1_fu_3421_p1;
wire   [63:0] zext_ln317_1_fu_3453_p1;
wire   [63:0] zext_ln318_1_fu_3485_p1;
wire   [63:0] zext_ln319_1_fu_3517_p1;
wire   [63:0] zext_ln320_1_fu_3549_p1;
wire   [63:0] zext_ln321_1_fu_3581_p1;
wire   [63:0] zext_ln309_fu_4932_p1;
wire   [63:0] zext_ln312_fu_4960_p1;
reg   [6:0] tid_fu_172;
wire   [6:0] add_ln309_fu_3049_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_2;
reg    smem_ce1_local;
reg   [4:0] smem_address1_local;
reg    smem_ce0_local;
reg   [4:0] smem_address0_local;
reg    smem_1_ce1_local;
reg   [4:0] smem_1_address1_local;
reg    smem_1_ce0_local;
reg   [4:0] smem_1_address0_local;
reg    smem_2_ce1_local;
reg   [4:0] smem_2_address1_local;
reg    smem_2_ce0_local;
reg   [4:0] smem_2_address0_local;
reg    smem_3_ce1_local;
reg   [4:0] smem_3_address1_local;
reg    smem_3_ce0_local;
reg   [4:0] smem_3_address0_local;
reg    smem_4_ce1_local;
reg   [4:0] smem_4_address1_local;
reg    smem_4_ce0_local;
reg   [4:0] smem_4_address0_local;
reg    smem_5_ce1_local;
reg   [4:0] smem_5_address1_local;
reg    smem_5_ce0_local;
reg   [4:0] smem_5_address0_local;
reg    smem_6_ce1_local;
reg   [4:0] smem_6_address1_local;
reg    smem_6_ce0_local;
reg   [4:0] smem_6_address0_local;
reg    smem_7_ce1_local;
reg   [4:0] smem_7_address1_local;
reg    smem_7_ce0_local;
reg   [4:0] smem_7_address0_local;
reg    smem_8_ce1_local;
reg   [4:0] smem_8_address1_local;
reg    smem_8_ce0_local;
reg   [4:0] smem_8_address0_local;
reg    smem_9_ce1_local;
reg   [4:0] smem_9_address1_local;
reg    smem_9_ce0_local;
reg   [4:0] smem_9_address0_local;
reg    smem_10_ce1_local;
reg   [4:0] smem_10_address1_local;
reg    smem_10_ce0_local;
reg   [4:0] smem_10_address0_local;
reg    smem_11_ce1_local;
reg   [4:0] smem_11_address1_local;
reg    smem_11_ce0_local;
reg   [4:0] smem_11_address0_local;
reg    smem_12_ce1_local;
reg   [4:0] smem_12_address1_local;
reg    smem_12_ce0_local;
reg   [4:0] smem_12_address0_local;
reg    smem_13_ce1_local;
reg   [4:0] smem_13_address1_local;
reg    smem_13_ce0_local;
reg   [4:0] smem_13_address0_local;
reg    smem_14_ce1_local;
reg   [4:0] smem_14_address1_local;
reg    smem_14_ce0_local;
reg   [4:0] smem_14_address0_local;
reg    smem_15_ce1_local;
reg   [4:0] smem_15_address1_local;
reg    smem_15_ce0_local;
reg   [4:0] smem_15_address0_local;
reg    smem_16_ce1_local;
reg   [4:0] smem_16_address1_local;
reg    smem_16_ce0_local;
reg   [4:0] smem_16_address0_local;
reg    smem_17_ce1_local;
reg   [4:0] smem_17_address1_local;
reg    smem_17_ce0_local;
reg   [4:0] smem_17_address0_local;
reg    smem_18_ce1_local;
reg   [4:0] smem_18_address1_local;
reg    smem_18_ce0_local;
reg   [4:0] smem_18_address0_local;
reg    DATA_x_we1_local;
reg    DATA_x_ce1_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_4_we1_local;
reg    DATA_x_4_ce1_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_1_we1_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_5_we1_local;
reg    DATA_x_5_ce1_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_2_we1_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_6_we1_local;
reg    DATA_x_6_ce1_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_3_we1_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_7_we1_local;
reg    DATA_x_7_ce1_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
wire   [2:0] tmp_61_fu_2995_p4;
wire   [5:0] trunc_ln312_fu_3005_p1;
wire   [8:0] grp_fu_3017_p0;
wire   [5:0] grp_fu_3017_p1;
wire   [4:0] tmp_70_fu_3023_p4;
wire   [8:0] grp_fu_3043_p0;
wire   [5:0] grp_fu_3043_p1;
wire   [8:0] mul_ln172_2_fu_3066_p0;
wire   [10:0] mul_ln172_2_fu_3066_p1;
wire   [18:0] mul_ln172_2_fu_3066_p2;
wire   [8:0] mul_ln172_3_fu_3088_p0;
wire   [10:0] mul_ln172_3_fu_3088_p1;
wire   [18:0] mul_ln172_3_fu_3088_p2;
wire   [4:0] grp_fu_3017_p2;
wire   [4:0] grp_fu_3043_p2;
wire   [20:0] tmp_63_fu_3134_p1;
wire  signed [20:0] grp_fu_4972_p3;
wire   [5:0] tmp_63_fu_3134_p4;
wire   [20:0] tmp_64_fu_3166_p1;
wire  signed [20:0] grp_fu_4981_p3;
wire   [5:0] tmp_64_fu_3166_p4;
wire   [20:0] tmp_65_fu_3198_p1;
wire  signed [20:0] grp_fu_4990_p3;
wire   [5:0] tmp_65_fu_3198_p4;
wire   [20:0] tmp_66_fu_3230_p1;
wire  signed [20:0] grp_fu_4999_p3;
wire   [5:0] tmp_66_fu_3230_p4;
wire   [20:0] tmp_67_fu_3262_p1;
wire  signed [20:0] grp_fu_5008_p3;
wire   [5:0] tmp_67_fu_3262_p4;
wire   [20:0] tmp_68_fu_3294_p1;
wire  signed [20:0] grp_fu_5017_p3;
wire   [5:0] tmp_68_fu_3294_p4;
wire   [20:0] tmp_69_fu_3326_p1;
wire  signed [20:0] grp_fu_5026_p3;
wire   [5:0] tmp_69_fu_3326_p4;
wire   [20:0] tmp_72_fu_3380_p1;
wire  signed [20:0] grp_fu_5035_p3;
wire   [5:0] tmp_72_fu_3380_p4;
wire   [20:0] tmp_73_fu_3412_p1;
wire  signed [20:0] grp_fu_5044_p3;
wire   [5:0] tmp_73_fu_3412_p4;
wire   [20:0] tmp_74_fu_3444_p1;
wire  signed [20:0] grp_fu_5053_p3;
wire   [5:0] tmp_74_fu_3444_p4;
wire   [20:0] tmp_75_fu_3476_p1;
wire  signed [20:0] grp_fu_5062_p3;
wire   [5:0] tmp_75_fu_3476_p4;
wire   [20:0] tmp_76_fu_3508_p1;
wire  signed [20:0] grp_fu_5071_p3;
wire   [5:0] tmp_76_fu_3508_p4;
wire   [20:0] tmp_77_fu_3540_p1;
wire  signed [20:0] grp_fu_5080_p3;
wire   [5:0] tmp_77_fu_3540_p4;
wire   [20:0] tmp_78_fu_3572_p1;
wire  signed [20:0] grp_fu_5089_p3;
wire   [5:0] tmp_78_fu_3572_p4;
wire   [63:0] tmp_s_fu_3604_p39;
wire   [63:0] tmp_21_fu_3687_p39;
wire   [63:0] tmp_22_fu_3770_p39;
wire   [63:0] tmp_23_fu_3853_p39;
wire   [63:0] tmp_24_fu_3936_p39;
wire   [63:0] tmp_25_fu_4019_p39;
wire   [63:0] tmp_26_fu_4102_p39;
wire   [63:0] tmp_27_fu_4185_p39;
wire   [63:0] tmp_29_fu_4268_p39;
wire   [63:0] tmp_30_fu_4351_p39;
wire   [63:0] tmp_31_fu_4434_p39;
wire   [63:0] tmp_32_fu_4517_p39;
wire   [63:0] tmp_33_fu_4600_p39;
wire   [63:0] tmp_34_fu_4683_p39;
wire   [63:0] tmp_35_fu_4766_p39;
wire   [63:0] tmp_36_fu_4849_p39;
wire   [4:0] tmp_28_fu_4943_p4;
wire   [5:0] or_ln_fu_4952_p3;
wire   [8:0] grp_fu_4972_p0;
wire   [9:0] zext_ln172_12_fu_3060_p1;
wire   [5:0] grp_fu_4972_p1;
wire   [10:0] grp_fu_4972_p2;
wire   [8:0] grp_fu_4981_p0;
wire   [3:0] grp_fu_4981_p1;
wire   [10:0] grp_fu_4981_p2;
wire   [8:0] grp_fu_4990_p0;
wire   [5:0] grp_fu_4990_p1;
wire   [10:0] grp_fu_4990_p2;
wire   [8:0] grp_fu_4999_p0;
wire   [4:0] grp_fu_4999_p1;
wire   [10:0] grp_fu_4999_p2;
wire   [8:0] grp_fu_5008_p0;
wire   [5:0] grp_fu_5008_p1;
wire   [10:0] grp_fu_5008_p2;
wire   [8:0] grp_fu_5017_p0;
wire   [4:0] grp_fu_5017_p1;
wire   [10:0] grp_fu_5017_p2;
wire   [8:0] grp_fu_5026_p0;
wire   [5:0] grp_fu_5026_p1;
wire   [10:0] grp_fu_5026_p2;
wire   [8:0] grp_fu_5035_p0;
wire   [9:0] zext_ln172_13_fu_3082_p1;
wire   [5:0] grp_fu_5035_p1;
wire   [10:0] grp_fu_5035_p2;
wire   [8:0] grp_fu_5044_p0;
wire   [3:0] grp_fu_5044_p1;
wire   [10:0] grp_fu_5044_p2;
wire   [8:0] grp_fu_5053_p0;
wire   [5:0] grp_fu_5053_p1;
wire   [10:0] grp_fu_5053_p2;
wire   [8:0] grp_fu_5062_p0;
wire   [4:0] grp_fu_5062_p1;
wire   [10:0] grp_fu_5062_p2;
wire   [8:0] grp_fu_5071_p0;
wire   [5:0] grp_fu_5071_p1;
wire   [10:0] grp_fu_5071_p2;
wire   [8:0] grp_fu_5080_p0;
wire   [4:0] grp_fu_5080_p1;
wire   [10:0] grp_fu_5080_p2;
wire   [8:0] grp_fu_5089_p0;
wire   [5:0] grp_fu_5089_p1;
wire   [10:0] grp_fu_5089_p2;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln172_2_fu_3066_p00;
wire   [18:0] mul_ln172_3_fu_3088_p00;
wire   [4:0] tmp_s_fu_3604_p1;
wire   [4:0] tmp_s_fu_3604_p3;
wire   [4:0] tmp_s_fu_3604_p5;
wire   [4:0] tmp_s_fu_3604_p7;
wire   [4:0] tmp_s_fu_3604_p9;
wire   [4:0] tmp_s_fu_3604_p11;
wire   [4:0] tmp_s_fu_3604_p13;
wire   [4:0] tmp_s_fu_3604_p15;
wire   [4:0] tmp_s_fu_3604_p17;
wire   [4:0] tmp_s_fu_3604_p19;
wire   [4:0] tmp_s_fu_3604_p21;
wire   [4:0] tmp_s_fu_3604_p23;
wire   [4:0] tmp_s_fu_3604_p25;
wire   [4:0] tmp_s_fu_3604_p27;
wire   [4:0] tmp_s_fu_3604_p29;
wire   [4:0] tmp_s_fu_3604_p31;
wire  signed [4:0] tmp_s_fu_3604_p33;
wire  signed [4:0] tmp_s_fu_3604_p35;
wire  signed [4:0] tmp_s_fu_3604_p37;
wire   [4:0] tmp_21_fu_3687_p1;
wire   [4:0] tmp_21_fu_3687_p3;
wire   [4:0] tmp_21_fu_3687_p5;
wire   [4:0] tmp_21_fu_3687_p7;
wire   [4:0] tmp_21_fu_3687_p9;
wire   [4:0] tmp_21_fu_3687_p11;
wire   [4:0] tmp_21_fu_3687_p13;
wire   [4:0] tmp_21_fu_3687_p15;
wire   [4:0] tmp_21_fu_3687_p17;
wire   [4:0] tmp_21_fu_3687_p19;
wire  signed [4:0] tmp_21_fu_3687_p21;
wire  signed [4:0] tmp_21_fu_3687_p23;
wire  signed [4:0] tmp_21_fu_3687_p25;
wire   [4:0] tmp_21_fu_3687_p27;
wire   [4:0] tmp_21_fu_3687_p29;
wire   [4:0] tmp_21_fu_3687_p31;
wire   [4:0] tmp_21_fu_3687_p33;
wire   [4:0] tmp_21_fu_3687_p35;
wire   [4:0] tmp_21_fu_3687_p37;
wire   [4:0] tmp_22_fu_3770_p1;
wire   [4:0] tmp_22_fu_3770_p3;
wire   [4:0] tmp_22_fu_3770_p5;
wire   [4:0] tmp_22_fu_3770_p7;
wire   [4:0] tmp_22_fu_3770_p9;
wire  signed [4:0] tmp_22_fu_3770_p11;
wire  signed [4:0] tmp_22_fu_3770_p13;
wire  signed [4:0] tmp_22_fu_3770_p15;
wire   [4:0] tmp_22_fu_3770_p17;
wire   [4:0] tmp_22_fu_3770_p19;
wire   [4:0] tmp_22_fu_3770_p21;
wire   [4:0] tmp_22_fu_3770_p23;
wire   [4:0] tmp_22_fu_3770_p25;
wire   [4:0] tmp_22_fu_3770_p27;
wire   [4:0] tmp_22_fu_3770_p29;
wire   [4:0] tmp_22_fu_3770_p31;
wire   [4:0] tmp_22_fu_3770_p33;
wire   [4:0] tmp_22_fu_3770_p35;
wire   [4:0] tmp_22_fu_3770_p37;
wire  signed [4:0] tmp_23_fu_3853_p1;
wire  signed [4:0] tmp_23_fu_3853_p3;
wire   [4:0] tmp_23_fu_3853_p5;
wire   [4:0] tmp_23_fu_3853_p7;
wire   [4:0] tmp_23_fu_3853_p9;
wire   [4:0] tmp_23_fu_3853_p11;
wire   [4:0] tmp_23_fu_3853_p13;
wire   [4:0] tmp_23_fu_3853_p15;
wire   [4:0] tmp_23_fu_3853_p17;
wire   [4:0] tmp_23_fu_3853_p19;
wire   [4:0] tmp_23_fu_3853_p21;
wire   [4:0] tmp_23_fu_3853_p23;
wire   [4:0] tmp_23_fu_3853_p25;
wire   [4:0] tmp_23_fu_3853_p27;
wire   [4:0] tmp_23_fu_3853_p29;
wire   [4:0] tmp_23_fu_3853_p31;
wire   [4:0] tmp_23_fu_3853_p33;
wire   [4:0] tmp_23_fu_3853_p35;
wire  signed [4:0] tmp_23_fu_3853_p37;
wire   [4:0] tmp_24_fu_3936_p1;
wire   [4:0] tmp_24_fu_3936_p3;
wire   [4:0] tmp_24_fu_3936_p5;
wire   [4:0] tmp_24_fu_3936_p7;
wire   [4:0] tmp_24_fu_3936_p9;
wire   [4:0] tmp_24_fu_3936_p11;
wire   [4:0] tmp_24_fu_3936_p13;
wire   [4:0] tmp_24_fu_3936_p15;
wire   [4:0] tmp_24_fu_3936_p17;
wire   [4:0] tmp_24_fu_3936_p19;
wire   [4:0] tmp_24_fu_3936_p21;
wire   [4:0] tmp_24_fu_3936_p23;
wire   [4:0] tmp_24_fu_3936_p25;
wire  signed [4:0] tmp_24_fu_3936_p27;
wire  signed [4:0] tmp_24_fu_3936_p29;
wire  signed [4:0] tmp_24_fu_3936_p31;
wire   [4:0] tmp_24_fu_3936_p33;
wire   [4:0] tmp_24_fu_3936_p35;
wire   [4:0] tmp_24_fu_3936_p37;
wire   [4:0] tmp_25_fu_4019_p1;
wire   [4:0] tmp_25_fu_4019_p3;
wire   [4:0] tmp_25_fu_4019_p5;
wire   [4:0] tmp_25_fu_4019_p7;
wire   [4:0] tmp_25_fu_4019_p9;
wire   [4:0] tmp_25_fu_4019_p11;
wire   [4:0] tmp_25_fu_4019_p13;
wire  signed [4:0] tmp_25_fu_4019_p15;
wire  signed [4:0] tmp_25_fu_4019_p17;
wire  signed [4:0] tmp_25_fu_4019_p19;
wire   [4:0] tmp_25_fu_4019_p21;
wire   [4:0] tmp_25_fu_4019_p23;
wire   [4:0] tmp_25_fu_4019_p25;
wire   [4:0] tmp_25_fu_4019_p27;
wire   [4:0] tmp_25_fu_4019_p29;
wire   [4:0] tmp_25_fu_4019_p31;
wire   [4:0] tmp_25_fu_4019_p33;
wire   [4:0] tmp_25_fu_4019_p35;
wire   [4:0] tmp_25_fu_4019_p37;
wire   [4:0] tmp_26_fu_4102_p1;
wire   [4:0] tmp_26_fu_4102_p3;
wire  signed [4:0] tmp_26_fu_4102_p5;
wire  signed [4:0] tmp_26_fu_4102_p7;
wire  signed [4:0] tmp_26_fu_4102_p9;
wire   [4:0] tmp_26_fu_4102_p11;
wire   [4:0] tmp_26_fu_4102_p13;
wire   [4:0] tmp_26_fu_4102_p15;
wire   [4:0] tmp_26_fu_4102_p17;
wire   [4:0] tmp_26_fu_4102_p19;
wire   [4:0] tmp_26_fu_4102_p21;
wire   [4:0] tmp_26_fu_4102_p23;
wire   [4:0] tmp_26_fu_4102_p25;
wire   [4:0] tmp_26_fu_4102_p27;
wire   [4:0] tmp_26_fu_4102_p29;
wire   [4:0] tmp_26_fu_4102_p31;
wire   [4:0] tmp_26_fu_4102_p33;
wire   [4:0] tmp_26_fu_4102_p35;
wire   [4:0] tmp_26_fu_4102_p37;
wire   [4:0] tmp_27_fu_4185_p1;
wire   [4:0] tmp_27_fu_4185_p3;
wire   [4:0] tmp_27_fu_4185_p5;
wire   [4:0] tmp_27_fu_4185_p7;
wire   [4:0] tmp_27_fu_4185_p9;
wire   [4:0] tmp_27_fu_4185_p11;
wire   [4:0] tmp_27_fu_4185_p13;
wire   [4:0] tmp_27_fu_4185_p15;
wire   [4:0] tmp_27_fu_4185_p17;
wire   [4:0] tmp_27_fu_4185_p19;
wire   [4:0] tmp_27_fu_4185_p21;
wire   [4:0] tmp_27_fu_4185_p23;
wire   [4:0] tmp_27_fu_4185_p25;
wire   [4:0] tmp_27_fu_4185_p27;
wire   [4:0] tmp_27_fu_4185_p29;
wire  signed [4:0] tmp_27_fu_4185_p31;
wire  signed [4:0] tmp_27_fu_4185_p33;
wire  signed [4:0] tmp_27_fu_4185_p35;
wire   [4:0] tmp_27_fu_4185_p37;
wire   [4:0] tmp_29_fu_4268_p1;
wire   [4:0] tmp_29_fu_4268_p3;
wire   [4:0] tmp_29_fu_4268_p5;
wire   [4:0] tmp_29_fu_4268_p7;
wire   [4:0] tmp_29_fu_4268_p9;
wire   [4:0] tmp_29_fu_4268_p11;
wire   [4:0] tmp_29_fu_4268_p13;
wire   [4:0] tmp_29_fu_4268_p15;
wire   [4:0] tmp_29_fu_4268_p17;
wire   [4:0] tmp_29_fu_4268_p19;
wire   [4:0] tmp_29_fu_4268_p21;
wire   [4:0] tmp_29_fu_4268_p23;
wire   [4:0] tmp_29_fu_4268_p25;
wire   [4:0] tmp_29_fu_4268_p27;
wire   [4:0] tmp_29_fu_4268_p29;
wire   [4:0] tmp_29_fu_4268_p31;
wire  signed [4:0] tmp_29_fu_4268_p33;
wire  signed [4:0] tmp_29_fu_4268_p35;
wire  signed [4:0] tmp_29_fu_4268_p37;
wire   [4:0] tmp_30_fu_4351_p1;
wire   [4:0] tmp_30_fu_4351_p3;
wire   [4:0] tmp_30_fu_4351_p5;
wire   [4:0] tmp_30_fu_4351_p7;
wire   [4:0] tmp_30_fu_4351_p9;
wire   [4:0] tmp_30_fu_4351_p11;
wire   [4:0] tmp_30_fu_4351_p13;
wire   [4:0] tmp_30_fu_4351_p15;
wire   [4:0] tmp_30_fu_4351_p17;
wire   [4:0] tmp_30_fu_4351_p19;
wire  signed [4:0] tmp_30_fu_4351_p21;
wire  signed [4:0] tmp_30_fu_4351_p23;
wire  signed [4:0] tmp_30_fu_4351_p25;
wire   [4:0] tmp_30_fu_4351_p27;
wire   [4:0] tmp_30_fu_4351_p29;
wire   [4:0] tmp_30_fu_4351_p31;
wire   [4:0] tmp_30_fu_4351_p33;
wire   [4:0] tmp_30_fu_4351_p35;
wire   [4:0] tmp_30_fu_4351_p37;
wire   [4:0] tmp_31_fu_4434_p1;
wire   [4:0] tmp_31_fu_4434_p3;
wire   [4:0] tmp_31_fu_4434_p5;
wire   [4:0] tmp_31_fu_4434_p7;
wire   [4:0] tmp_31_fu_4434_p9;
wire  signed [4:0] tmp_31_fu_4434_p11;
wire  signed [4:0] tmp_31_fu_4434_p13;
wire  signed [4:0] tmp_31_fu_4434_p15;
wire   [4:0] tmp_31_fu_4434_p17;
wire   [4:0] tmp_31_fu_4434_p19;
wire   [4:0] tmp_31_fu_4434_p21;
wire   [4:0] tmp_31_fu_4434_p23;
wire   [4:0] tmp_31_fu_4434_p25;
wire   [4:0] tmp_31_fu_4434_p27;
wire   [4:0] tmp_31_fu_4434_p29;
wire   [4:0] tmp_31_fu_4434_p31;
wire   [4:0] tmp_31_fu_4434_p33;
wire   [4:0] tmp_31_fu_4434_p35;
wire   [4:0] tmp_31_fu_4434_p37;
wire  signed [4:0] tmp_32_fu_4517_p1;
wire  signed [4:0] tmp_32_fu_4517_p3;
wire   [4:0] tmp_32_fu_4517_p5;
wire   [4:0] tmp_32_fu_4517_p7;
wire   [4:0] tmp_32_fu_4517_p9;
wire   [4:0] tmp_32_fu_4517_p11;
wire   [4:0] tmp_32_fu_4517_p13;
wire   [4:0] tmp_32_fu_4517_p15;
wire   [4:0] tmp_32_fu_4517_p17;
wire   [4:0] tmp_32_fu_4517_p19;
wire   [4:0] tmp_32_fu_4517_p21;
wire   [4:0] tmp_32_fu_4517_p23;
wire   [4:0] tmp_32_fu_4517_p25;
wire   [4:0] tmp_32_fu_4517_p27;
wire   [4:0] tmp_32_fu_4517_p29;
wire   [4:0] tmp_32_fu_4517_p31;
wire   [4:0] tmp_32_fu_4517_p33;
wire   [4:0] tmp_32_fu_4517_p35;
wire  signed [4:0] tmp_32_fu_4517_p37;
wire   [4:0] tmp_33_fu_4600_p1;
wire   [4:0] tmp_33_fu_4600_p3;
wire   [4:0] tmp_33_fu_4600_p5;
wire   [4:0] tmp_33_fu_4600_p7;
wire   [4:0] tmp_33_fu_4600_p9;
wire   [4:0] tmp_33_fu_4600_p11;
wire   [4:0] tmp_33_fu_4600_p13;
wire   [4:0] tmp_33_fu_4600_p15;
wire   [4:0] tmp_33_fu_4600_p17;
wire   [4:0] tmp_33_fu_4600_p19;
wire   [4:0] tmp_33_fu_4600_p21;
wire   [4:0] tmp_33_fu_4600_p23;
wire   [4:0] tmp_33_fu_4600_p25;
wire  signed [4:0] tmp_33_fu_4600_p27;
wire  signed [4:0] tmp_33_fu_4600_p29;
wire  signed [4:0] tmp_33_fu_4600_p31;
wire   [4:0] tmp_33_fu_4600_p33;
wire   [4:0] tmp_33_fu_4600_p35;
wire   [4:0] tmp_33_fu_4600_p37;
wire   [4:0] tmp_34_fu_4683_p1;
wire   [4:0] tmp_34_fu_4683_p3;
wire   [4:0] tmp_34_fu_4683_p5;
wire   [4:0] tmp_34_fu_4683_p7;
wire   [4:0] tmp_34_fu_4683_p9;
wire   [4:0] tmp_34_fu_4683_p11;
wire   [4:0] tmp_34_fu_4683_p13;
wire  signed [4:0] tmp_34_fu_4683_p15;
wire  signed [4:0] tmp_34_fu_4683_p17;
wire  signed [4:0] tmp_34_fu_4683_p19;
wire   [4:0] tmp_34_fu_4683_p21;
wire   [4:0] tmp_34_fu_4683_p23;
wire   [4:0] tmp_34_fu_4683_p25;
wire   [4:0] tmp_34_fu_4683_p27;
wire   [4:0] tmp_34_fu_4683_p29;
wire   [4:0] tmp_34_fu_4683_p31;
wire   [4:0] tmp_34_fu_4683_p33;
wire   [4:0] tmp_34_fu_4683_p35;
wire   [4:0] tmp_34_fu_4683_p37;
wire   [4:0] tmp_35_fu_4766_p1;
wire   [4:0] tmp_35_fu_4766_p3;
wire  signed [4:0] tmp_35_fu_4766_p5;
wire  signed [4:0] tmp_35_fu_4766_p7;
wire  signed [4:0] tmp_35_fu_4766_p9;
wire   [4:0] tmp_35_fu_4766_p11;
wire   [4:0] tmp_35_fu_4766_p13;
wire   [4:0] tmp_35_fu_4766_p15;
wire   [4:0] tmp_35_fu_4766_p17;
wire   [4:0] tmp_35_fu_4766_p19;
wire   [4:0] tmp_35_fu_4766_p21;
wire   [4:0] tmp_35_fu_4766_p23;
wire   [4:0] tmp_35_fu_4766_p25;
wire   [4:0] tmp_35_fu_4766_p27;
wire   [4:0] tmp_35_fu_4766_p29;
wire   [4:0] tmp_35_fu_4766_p31;
wire   [4:0] tmp_35_fu_4766_p33;
wire   [4:0] tmp_35_fu_4766_p35;
wire   [4:0] tmp_35_fu_4766_p37;
wire   [4:0] tmp_36_fu_4849_p1;
wire   [4:0] tmp_36_fu_4849_p3;
wire   [4:0] tmp_36_fu_4849_p5;
wire   [4:0] tmp_36_fu_4849_p7;
wire   [4:0] tmp_36_fu_4849_p9;
wire   [4:0] tmp_36_fu_4849_p11;
wire   [4:0] tmp_36_fu_4849_p13;
wire   [4:0] tmp_36_fu_4849_p15;
wire   [4:0] tmp_36_fu_4849_p17;
wire   [4:0] tmp_36_fu_4849_p19;
wire   [4:0] tmp_36_fu_4849_p21;
wire   [4:0] tmp_36_fu_4849_p23;
wire   [4:0] tmp_36_fu_4849_p25;
wire   [4:0] tmp_36_fu_4849_p27;
wire   [4:0] tmp_36_fu_4849_p29;
wire  signed [4:0] tmp_36_fu_4849_p31;
wire  signed [4:0] tmp_36_fu_4849_p33;
wire  signed [4:0] tmp_36_fu_4849_p35;
wire   [4:0] tmp_36_fu_4849_p37;
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
#0 tid_fu_172 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_6ns_5_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.dout_WIDTH( 5 ))
urem_9ns_6ns_5_13_1_U1109(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3017_p0),.din1(grp_fu_3017_p1),.ce(1'b1),.dout(grp_fu_3017_p2));
fft1D_512_urem_9ns_6ns_5_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.dout_WIDTH( 5 ))
urem_9ns_6ns_5_13_1_U1110(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3043_p0),.din1(grp_fu_3043_p1),.ce(1'b1),.dout(grp_fu_3043_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U1111(.din0(mul_ln172_2_fu_3066_p0),.din1(mul_ln172_2_fu_3066_p1),.dout(mul_ln172_2_fu_3066_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U1112(.din0(mul_ln172_3_fu_3088_p0),.din1(mul_ln172_3_fu_3088_p1),.dout(mul_ln172_3_fu_3088_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1113(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.din13(smem_13_q1),.din14(smem_14_q1),.din15(smem_15_q1),.din16(smem_16_q1),.din17(smem_17_q1),.din18(smem_18_q1),.def(tmp_s_fu_3604_p39),.sel(trunc_ln172_reg_5139_pp0_iter13_reg),.dout(tmp_s_fu_3604_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h6 ),.din0_WIDTH( 64 ),.CASE1( 5'h7 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'h9 ),.din3_WIDTH( 64 ),.CASE4( 5'hA ),.din4_WIDTH( 64 ),.CASE5( 5'hB ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hD ),.din7_WIDTH( 64 ),.CASE8( 5'hE ),.din8_WIDTH( 64 ),.CASE9( 5'hF ),.din9_WIDTH( 64 ),.CASE10( 5'h10 ),.din10_WIDTH( 64 ),.CASE11( 5'h11 ),.din11_WIDTH( 64 ),.CASE12( 5'h12 ),.din12_WIDTH( 64 ),.CASE13( 5'h0 ),.din13_WIDTH( 64 ),.CASE14( 5'h1 ),.din14_WIDTH( 64 ),.CASE15( 5'h2 ),.din15_WIDTH( 64 ),.CASE16( 5'h3 ),.din16_WIDTH( 64 ),.CASE17( 5'h4 ),.din17_WIDTH( 64 ),.CASE18( 5'h5 ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1114(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.din13(smem_13_q1),.din14(smem_14_q1),.din15(smem_15_q1),.din16(smem_16_q1),.din17(smem_17_q1),.din18(smem_18_q1),.def(tmp_21_fu_3687_p39),.sel(trunc_ln172_reg_5139_pp0_iter13_reg),.dout(tmp_21_fu_3687_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'hB ),.din0_WIDTH( 64 ),.CASE1( 5'hC ),.din1_WIDTH( 64 ),.CASE2( 5'hD ),.din2_WIDTH( 64 ),.CASE3( 5'hE ),.din3_WIDTH( 64 ),.CASE4( 5'hF ),.din4_WIDTH( 64 ),.CASE5( 5'h10 ),.din5_WIDTH( 64 ),.CASE6( 5'h11 ),.din6_WIDTH( 64 ),.CASE7( 5'h12 ),.din7_WIDTH( 64 ),.CASE8( 5'h0 ),.din8_WIDTH( 64 ),.CASE9( 5'h1 ),.din9_WIDTH( 64 ),.CASE10( 5'h2 ),.din10_WIDTH( 64 ),.CASE11( 5'h3 ),.din11_WIDTH( 64 ),.CASE12( 5'h4 ),.din12_WIDTH( 64 ),.CASE13( 5'h5 ),.din13_WIDTH( 64 ),.CASE14( 5'h6 ),.din14_WIDTH( 64 ),.CASE15( 5'h7 ),.din15_WIDTH( 64 ),.CASE16( 5'h8 ),.din16_WIDTH( 64 ),.CASE17( 5'h9 ),.din17_WIDTH( 64 ),.CASE18( 5'hA ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1115(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.din13(smem_13_q1),.din14(smem_14_q1),.din15(smem_15_q1),.din16(smem_16_q1),.din17(smem_17_q1),.din18(smem_18_q1),.def(tmp_22_fu_3770_p39),.sel(trunc_ln172_reg_5139_pp0_iter13_reg),.dout(tmp_22_fu_3770_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h11 ),.din0_WIDTH( 64 ),.CASE1( 5'h12 ),.din1_WIDTH( 64 ),.CASE2( 5'h0 ),.din2_WIDTH( 64 ),.CASE3( 5'h1 ),.din3_WIDTH( 64 ),.CASE4( 5'h2 ),.din4_WIDTH( 64 ),.CASE5( 5'h3 ),.din5_WIDTH( 64 ),.CASE6( 5'h4 ),.din6_WIDTH( 64 ),.CASE7( 5'h5 ),.din7_WIDTH( 64 ),.CASE8( 5'h6 ),.din8_WIDTH( 64 ),.CASE9( 5'h7 ),.din9_WIDTH( 64 ),.CASE10( 5'h8 ),.din10_WIDTH( 64 ),.CASE11( 5'h9 ),.din11_WIDTH( 64 ),.CASE12( 5'hA ),.din12_WIDTH( 64 ),.CASE13( 5'hB ),.din13_WIDTH( 64 ),.CASE14( 5'hC ),.din14_WIDTH( 64 ),.CASE15( 5'hD ),.din15_WIDTH( 64 ),.CASE16( 5'hE ),.din16_WIDTH( 64 ),.CASE17( 5'hF ),.din17_WIDTH( 64 ),.CASE18( 5'h10 ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1116(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.din13(smem_13_q1),.din14(smem_14_q1),.din15(smem_15_q1),.din16(smem_16_q1),.din17(smem_17_q1),.din18(smem_18_q1),.def(tmp_23_fu_3853_p39),.sel(trunc_ln172_reg_5139_pp0_iter13_reg),.dout(tmp_23_fu_3853_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h3 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h5 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h7 ),.din4_WIDTH( 64 ),.CASE5( 5'h8 ),.din5_WIDTH( 64 ),.CASE6( 5'h9 ),.din6_WIDTH( 64 ),.CASE7( 5'hA ),.din7_WIDTH( 64 ),.CASE8( 5'hB ),.din8_WIDTH( 64 ),.CASE9( 5'hC ),.din9_WIDTH( 64 ),.CASE10( 5'hD ),.din10_WIDTH( 64 ),.CASE11( 5'hE ),.din11_WIDTH( 64 ),.CASE12( 5'hF ),.din12_WIDTH( 64 ),.CASE13( 5'h10 ),.din13_WIDTH( 64 ),.CASE14( 5'h11 ),.din14_WIDTH( 64 ),.CASE15( 5'h12 ),.din15_WIDTH( 64 ),.CASE16( 5'h0 ),.din16_WIDTH( 64 ),.CASE17( 5'h1 ),.din17_WIDTH( 64 ),.CASE18( 5'h2 ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1117(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.din13(smem_13_q1),.din14(smem_14_q1),.din15(smem_15_q1),.din16(smem_16_q1),.din17(smem_17_q1),.din18(smem_18_q1),.def(tmp_24_fu_3936_p39),.sel(trunc_ln172_reg_5139_pp0_iter13_reg),.dout(tmp_24_fu_3936_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h9 ),.din0_WIDTH( 64 ),.CASE1( 5'hA ),.din1_WIDTH( 64 ),.CASE2( 5'hB ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'hD ),.din4_WIDTH( 64 ),.CASE5( 5'hE ),.din5_WIDTH( 64 ),.CASE6( 5'hF ),.din6_WIDTH( 64 ),.CASE7( 5'h10 ),.din7_WIDTH( 64 ),.CASE8( 5'h11 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h0 ),.din10_WIDTH( 64 ),.CASE11( 5'h1 ),.din11_WIDTH( 64 ),.CASE12( 5'h2 ),.din12_WIDTH( 64 ),.CASE13( 5'h3 ),.din13_WIDTH( 64 ),.CASE14( 5'h4 ),.din14_WIDTH( 64 ),.CASE15( 5'h5 ),.din15_WIDTH( 64 ),.CASE16( 5'h6 ),.din16_WIDTH( 64 ),.CASE17( 5'h7 ),.din17_WIDTH( 64 ),.CASE18( 5'h8 ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1118(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.din13(smem_13_q1),.din14(smem_14_q1),.din15(smem_15_q1),.din16(smem_16_q1),.din17(smem_17_q1),.din18(smem_18_q1),.def(tmp_25_fu_4019_p39),.sel(trunc_ln172_reg_5139_pp0_iter13_reg),.dout(tmp_25_fu_4019_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'hE ),.din0_WIDTH( 64 ),.CASE1( 5'hF ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h11 ),.din3_WIDTH( 64 ),.CASE4( 5'h12 ),.din4_WIDTH( 64 ),.CASE5( 5'h0 ),.din5_WIDTH( 64 ),.CASE6( 5'h1 ),.din6_WIDTH( 64 ),.CASE7( 5'h2 ),.din7_WIDTH( 64 ),.CASE8( 5'h3 ),.din8_WIDTH( 64 ),.CASE9( 5'h4 ),.din9_WIDTH( 64 ),.CASE10( 5'h5 ),.din10_WIDTH( 64 ),.CASE11( 5'h6 ),.din11_WIDTH( 64 ),.CASE12( 5'h7 ),.din12_WIDTH( 64 ),.CASE13( 5'h8 ),.din13_WIDTH( 64 ),.CASE14( 5'h9 ),.din14_WIDTH( 64 ),.CASE15( 5'hA ),.din15_WIDTH( 64 ),.CASE16( 5'hB ),.din16_WIDTH( 64 ),.CASE17( 5'hC ),.din17_WIDTH( 64 ),.CASE18( 5'hD ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1119(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.din13(smem_13_q1),.din14(smem_14_q1),.din15(smem_15_q1),.din16(smem_16_q1),.din17(smem_17_q1),.din18(smem_18_q1),.def(tmp_26_fu_4102_p39),.sel(trunc_ln172_reg_5139_pp0_iter13_reg),.dout(tmp_26_fu_4102_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h3 ),.din2_WIDTH( 64 ),.CASE3( 5'h4 ),.din3_WIDTH( 64 ),.CASE4( 5'h5 ),.din4_WIDTH( 64 ),.CASE5( 5'h6 ),.din5_WIDTH( 64 ),.CASE6( 5'h7 ),.din6_WIDTH( 64 ),.CASE7( 5'h8 ),.din7_WIDTH( 64 ),.CASE8( 5'h9 ),.din8_WIDTH( 64 ),.CASE9( 5'hA ),.din9_WIDTH( 64 ),.CASE10( 5'hB ),.din10_WIDTH( 64 ),.CASE11( 5'hC ),.din11_WIDTH( 64 ),.CASE12( 5'hD ),.din12_WIDTH( 64 ),.CASE13( 5'hE ),.din13_WIDTH( 64 ),.CASE14( 5'hF ),.din14_WIDTH( 64 ),.CASE15( 5'h10 ),.din15_WIDTH( 64 ),.CASE16( 5'h11 ),.din16_WIDTH( 64 ),.CASE17( 5'h12 ),.din17_WIDTH( 64 ),.CASE18( 5'h0 ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1120(.din0(smem_q1),.din1(smem_1_q1),.din2(smem_2_q1),.din3(smem_3_q1),.din4(smem_4_q1),.din5(smem_5_q1),.din6(smem_6_q1),.din7(smem_7_q1),.din8(smem_8_q1),.din9(smem_9_q1),.din10(smem_10_q1),.din11(smem_11_q1),.din12(smem_12_q1),.din13(smem_13_q1),.din14(smem_14_q1),.din15(smem_15_q1),.din16(smem_16_q1),.din17(smem_17_q1),.din18(smem_18_q1),.def(tmp_27_fu_4185_p39),.sel(trunc_ln172_reg_5139_pp0_iter13_reg),.dout(tmp_27_fu_4185_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1121(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.din13(smem_13_q0),.din14(smem_14_q0),.din15(smem_15_q0),.din16(smem_16_q0),.din17(smem_17_q0),.din18(smem_18_q0),.def(tmp_29_fu_4268_p39),.sel(trunc_ln172_4_reg_5151_pp0_iter13_reg),.dout(tmp_29_fu_4268_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h6 ),.din0_WIDTH( 64 ),.CASE1( 5'h7 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'h9 ),.din3_WIDTH( 64 ),.CASE4( 5'hA ),.din4_WIDTH( 64 ),.CASE5( 5'hB ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hD ),.din7_WIDTH( 64 ),.CASE8( 5'hE ),.din8_WIDTH( 64 ),.CASE9( 5'hF ),.din9_WIDTH( 64 ),.CASE10( 5'h10 ),.din10_WIDTH( 64 ),.CASE11( 5'h11 ),.din11_WIDTH( 64 ),.CASE12( 5'h12 ),.din12_WIDTH( 64 ),.CASE13( 5'h0 ),.din13_WIDTH( 64 ),.CASE14( 5'h1 ),.din14_WIDTH( 64 ),.CASE15( 5'h2 ),.din15_WIDTH( 64 ),.CASE16( 5'h3 ),.din16_WIDTH( 64 ),.CASE17( 5'h4 ),.din17_WIDTH( 64 ),.CASE18( 5'h5 ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1122(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.din13(smem_13_q0),.din14(smem_14_q0),.din15(smem_15_q0),.din16(smem_16_q0),.din17(smem_17_q0),.din18(smem_18_q0),.def(tmp_30_fu_4351_p39),.sel(trunc_ln172_4_reg_5151_pp0_iter13_reg),.dout(tmp_30_fu_4351_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'hB ),.din0_WIDTH( 64 ),.CASE1( 5'hC ),.din1_WIDTH( 64 ),.CASE2( 5'hD ),.din2_WIDTH( 64 ),.CASE3( 5'hE ),.din3_WIDTH( 64 ),.CASE4( 5'hF ),.din4_WIDTH( 64 ),.CASE5( 5'h10 ),.din5_WIDTH( 64 ),.CASE6( 5'h11 ),.din6_WIDTH( 64 ),.CASE7( 5'h12 ),.din7_WIDTH( 64 ),.CASE8( 5'h0 ),.din8_WIDTH( 64 ),.CASE9( 5'h1 ),.din9_WIDTH( 64 ),.CASE10( 5'h2 ),.din10_WIDTH( 64 ),.CASE11( 5'h3 ),.din11_WIDTH( 64 ),.CASE12( 5'h4 ),.din12_WIDTH( 64 ),.CASE13( 5'h5 ),.din13_WIDTH( 64 ),.CASE14( 5'h6 ),.din14_WIDTH( 64 ),.CASE15( 5'h7 ),.din15_WIDTH( 64 ),.CASE16( 5'h8 ),.din16_WIDTH( 64 ),.CASE17( 5'h9 ),.din17_WIDTH( 64 ),.CASE18( 5'hA ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1123(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.din13(smem_13_q0),.din14(smem_14_q0),.din15(smem_15_q0),.din16(smem_16_q0),.din17(smem_17_q0),.din18(smem_18_q0),.def(tmp_31_fu_4434_p39),.sel(trunc_ln172_4_reg_5151_pp0_iter13_reg),.dout(tmp_31_fu_4434_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h11 ),.din0_WIDTH( 64 ),.CASE1( 5'h12 ),.din1_WIDTH( 64 ),.CASE2( 5'h0 ),.din2_WIDTH( 64 ),.CASE3( 5'h1 ),.din3_WIDTH( 64 ),.CASE4( 5'h2 ),.din4_WIDTH( 64 ),.CASE5( 5'h3 ),.din5_WIDTH( 64 ),.CASE6( 5'h4 ),.din6_WIDTH( 64 ),.CASE7( 5'h5 ),.din7_WIDTH( 64 ),.CASE8( 5'h6 ),.din8_WIDTH( 64 ),.CASE9( 5'h7 ),.din9_WIDTH( 64 ),.CASE10( 5'h8 ),.din10_WIDTH( 64 ),.CASE11( 5'h9 ),.din11_WIDTH( 64 ),.CASE12( 5'hA ),.din12_WIDTH( 64 ),.CASE13( 5'hB ),.din13_WIDTH( 64 ),.CASE14( 5'hC ),.din14_WIDTH( 64 ),.CASE15( 5'hD ),.din15_WIDTH( 64 ),.CASE16( 5'hE ),.din16_WIDTH( 64 ),.CASE17( 5'hF ),.din17_WIDTH( 64 ),.CASE18( 5'h10 ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1124(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.din13(smem_13_q0),.din14(smem_14_q0),.din15(smem_15_q0),.din16(smem_16_q0),.din17(smem_17_q0),.din18(smem_18_q0),.def(tmp_32_fu_4517_p39),.sel(trunc_ln172_4_reg_5151_pp0_iter13_reg),.dout(tmp_32_fu_4517_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h3 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h5 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h7 ),.din4_WIDTH( 64 ),.CASE5( 5'h8 ),.din5_WIDTH( 64 ),.CASE6( 5'h9 ),.din6_WIDTH( 64 ),.CASE7( 5'hA ),.din7_WIDTH( 64 ),.CASE8( 5'hB ),.din8_WIDTH( 64 ),.CASE9( 5'hC ),.din9_WIDTH( 64 ),.CASE10( 5'hD ),.din10_WIDTH( 64 ),.CASE11( 5'hE ),.din11_WIDTH( 64 ),.CASE12( 5'hF ),.din12_WIDTH( 64 ),.CASE13( 5'h10 ),.din13_WIDTH( 64 ),.CASE14( 5'h11 ),.din14_WIDTH( 64 ),.CASE15( 5'h12 ),.din15_WIDTH( 64 ),.CASE16( 5'h0 ),.din16_WIDTH( 64 ),.CASE17( 5'h1 ),.din17_WIDTH( 64 ),.CASE18( 5'h2 ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1125(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.din13(smem_13_q0),.din14(smem_14_q0),.din15(smem_15_q0),.din16(smem_16_q0),.din17(smem_17_q0),.din18(smem_18_q0),.def(tmp_33_fu_4600_p39),.sel(trunc_ln172_4_reg_5151_pp0_iter13_reg),.dout(tmp_33_fu_4600_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h9 ),.din0_WIDTH( 64 ),.CASE1( 5'hA ),.din1_WIDTH( 64 ),.CASE2( 5'hB ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'hD ),.din4_WIDTH( 64 ),.CASE5( 5'hE ),.din5_WIDTH( 64 ),.CASE6( 5'hF ),.din6_WIDTH( 64 ),.CASE7( 5'h10 ),.din7_WIDTH( 64 ),.CASE8( 5'h11 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h0 ),.din10_WIDTH( 64 ),.CASE11( 5'h1 ),.din11_WIDTH( 64 ),.CASE12( 5'h2 ),.din12_WIDTH( 64 ),.CASE13( 5'h3 ),.din13_WIDTH( 64 ),.CASE14( 5'h4 ),.din14_WIDTH( 64 ),.CASE15( 5'h5 ),.din15_WIDTH( 64 ),.CASE16( 5'h6 ),.din16_WIDTH( 64 ),.CASE17( 5'h7 ),.din17_WIDTH( 64 ),.CASE18( 5'h8 ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1126(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.din13(smem_13_q0),.din14(smem_14_q0),.din15(smem_15_q0),.din16(smem_16_q0),.din17(smem_17_q0),.din18(smem_18_q0),.def(tmp_34_fu_4683_p39),.sel(trunc_ln172_4_reg_5151_pp0_iter13_reg),.dout(tmp_34_fu_4683_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'hE ),.din0_WIDTH( 64 ),.CASE1( 5'hF ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h11 ),.din3_WIDTH( 64 ),.CASE4( 5'h12 ),.din4_WIDTH( 64 ),.CASE5( 5'h0 ),.din5_WIDTH( 64 ),.CASE6( 5'h1 ),.din6_WIDTH( 64 ),.CASE7( 5'h2 ),.din7_WIDTH( 64 ),.CASE8( 5'h3 ),.din8_WIDTH( 64 ),.CASE9( 5'h4 ),.din9_WIDTH( 64 ),.CASE10( 5'h5 ),.din10_WIDTH( 64 ),.CASE11( 5'h6 ),.din11_WIDTH( 64 ),.CASE12( 5'h7 ),.din12_WIDTH( 64 ),.CASE13( 5'h8 ),.din13_WIDTH( 64 ),.CASE14( 5'h9 ),.din14_WIDTH( 64 ),.CASE15( 5'hA ),.din15_WIDTH( 64 ),.CASE16( 5'hB ),.din16_WIDTH( 64 ),.CASE17( 5'hC ),.din17_WIDTH( 64 ),.CASE18( 5'hD ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1127(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.din13(smem_13_q0),.din14(smem_14_q0),.din15(smem_15_q0),.din16(smem_16_q0),.din17(smem_17_q0),.din18(smem_18_q0),.def(tmp_35_fu_4766_p39),.sel(trunc_ln172_4_reg_5151_pp0_iter13_reg),.dout(tmp_35_fu_4766_p41));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_39_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h3 ),.din2_WIDTH( 64 ),.CASE3( 5'h4 ),.din3_WIDTH( 64 ),.CASE4( 5'h5 ),.din4_WIDTH( 64 ),.CASE5( 5'h6 ),.din5_WIDTH( 64 ),.CASE6( 5'h7 ),.din6_WIDTH( 64 ),.CASE7( 5'h8 ),.din7_WIDTH( 64 ),.CASE8( 5'h9 ),.din8_WIDTH( 64 ),.CASE9( 5'hA ),.din9_WIDTH( 64 ),.CASE10( 5'hB ),.din10_WIDTH( 64 ),.CASE11( 5'hC ),.din11_WIDTH( 64 ),.CASE12( 5'hD ),.din12_WIDTH( 64 ),.CASE13( 5'hE ),.din13_WIDTH( 64 ),.CASE14( 5'hF ),.din14_WIDTH( 64 ),.CASE15( 5'h10 ),.din15_WIDTH( 64 ),.CASE16( 5'h11 ),.din16_WIDTH( 64 ),.CASE17( 5'h12 ),.din17_WIDTH( 64 ),.CASE18( 5'h0 ),.din18_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_39_5_64_1_1_U1128(.din0(smem_q0),.din1(smem_1_q0),.din2(smem_2_q0),.din3(smem_3_q0),.din4(smem_4_q0),.din5(smem_5_q0),.din6(smem_6_q0),.din7(smem_7_q0),.din8(smem_8_q0),.din9(smem_9_q0),.din10(smem_10_q0),.din11(smem_11_q0),.din12(smem_12_q0),.din13(smem_13_q0),.din14(smem_14_q0),.din15(smem_15_q0),.din16(smem_16_q0),.din17(smem_17_q0),.din18(smem_18_q0),.def(tmp_36_fu_4849_p39),.sel(trunc_ln172_4_reg_5151_pp0_iter13_reg),.dout(tmp_36_fu_4849_p41));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U1129(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4972_p0),.din1(grp_fu_4972_p1),.din2(grp_fu_4972_p2),.ce(1'b1),.dout(grp_fu_4972_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U1130(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4981_p0),.din1(grp_fu_4981_p1),.din2(grp_fu_4981_p2),.ce(1'b1),.dout(grp_fu_4981_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U1131(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4990_p0),.din1(grp_fu_4990_p1),.din2(grp_fu_4990_p2),.ce(1'b1),.dout(grp_fu_4990_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U1132(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4999_p0),.din1(grp_fu_4999_p1),.din2(grp_fu_4999_p2),.ce(1'b1),.dout(grp_fu_4999_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U1133(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5008_p0),.din1(grp_fu_5008_p1),.din2(grp_fu_5008_p2),.ce(1'b1),.dout(grp_fu_5008_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U1134(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5017_p0),.din1(grp_fu_5017_p1),.din2(grp_fu_5017_p2),.ce(1'b1),.dout(grp_fu_5017_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U1135(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5026_p0),.din1(grp_fu_5026_p1),.din2(grp_fu_5026_p2),.ce(1'b1),.dout(grp_fu_5026_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U1136(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5035_p0),.din1(grp_fu_5035_p1),.din2(grp_fu_5035_p2),.ce(1'b1),.dout(grp_fu_5035_p3));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U1137(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5044_p0),.din1(grp_fu_5044_p1),.din2(grp_fu_5044_p2),.ce(1'b1),.dout(grp_fu_5044_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U1138(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5053_p0),.din1(grp_fu_5053_p1),.din2(grp_fu_5053_p2),.ce(1'b1),.dout(grp_fu_5053_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U1139(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5062_p0),.din1(grp_fu_5062_p1),.din2(grp_fu_5062_p2),.ce(1'b1),.dout(grp_fu_5062_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U1140(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5071_p0),.din1(grp_fu_5071_p1),.din2(grp_fu_5071_p2),.ce(1'b1),.dout(grp_fu_5071_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U1141(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5080_p0),.din1(grp_fu_5080_p1),.din2(grp_fu_5080_p2),.ce(1'b1),.dout(grp_fu_5080_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U1142(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5089_p0),.din1(grp_fu_5089_p1),.din2(grp_fu_5089_p2),.ce(1'b1),.dout(grp_fu_5089_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
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
        if (((tmp_fu_2987_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_172 <= add_ln309_fu_3049_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_172 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        offset_2_reg_5115_pp0_iter2_reg <= offset_2_reg_5115_pp0_iter1_reg;
        offset_2_reg_5115_pp0_iter3_reg <= offset_2_reg_5115_pp0_iter2_reg;
        offset_2_reg_5115_pp0_iter4_reg <= offset_2_reg_5115_pp0_iter3_reg;
        offset_2_reg_5115_pp0_iter5_reg <= offset_2_reg_5115_pp0_iter4_reg;
        offset_2_reg_5115_pp0_iter6_reg <= offset_2_reg_5115_pp0_iter5_reg;
        offset_2_reg_5115_pp0_iter7_reg <= offset_2_reg_5115_pp0_iter6_reg;
        offset_2_reg_5115_pp0_iter8_reg <= offset_2_reg_5115_pp0_iter7_reg;
        offset_2_reg_5115_pp0_iter9_reg <= offset_2_reg_5115_pp0_iter8_reg;
        offset_3_reg_5122_pp0_iter2_reg[8 : 1] <= offset_3_reg_5122_pp0_iter1_reg[8 : 1];
        offset_3_reg_5122_pp0_iter3_reg[8 : 1] <= offset_3_reg_5122_pp0_iter2_reg[8 : 1];
        offset_3_reg_5122_pp0_iter4_reg[8 : 1] <= offset_3_reg_5122_pp0_iter3_reg[8 : 1];
        offset_3_reg_5122_pp0_iter5_reg[8 : 1] <= offset_3_reg_5122_pp0_iter4_reg[8 : 1];
        offset_3_reg_5122_pp0_iter6_reg[8 : 1] <= offset_3_reg_5122_pp0_iter5_reg[8 : 1];
        offset_3_reg_5122_pp0_iter7_reg[8 : 1] <= offset_3_reg_5122_pp0_iter6_reg[8 : 1];
        offset_3_reg_5122_pp0_iter8_reg[8 : 1] <= offset_3_reg_5122_pp0_iter7_reg[8 : 1];
        offset_3_reg_5122_pp0_iter9_reg[8 : 1] <= offset_3_reg_5122_pp0_iter8_reg[8 : 1];
        tid_2_reg_5105_pp0_iter10_reg <= tid_2_reg_5105_pp0_iter9_reg;
        tid_2_reg_5105_pp0_iter11_reg <= tid_2_reg_5105_pp0_iter10_reg;
        tid_2_reg_5105_pp0_iter12_reg <= tid_2_reg_5105_pp0_iter11_reg;
        tid_2_reg_5105_pp0_iter13_reg <= tid_2_reg_5105_pp0_iter12_reg;
        tid_2_reg_5105_pp0_iter14_reg <= tid_2_reg_5105_pp0_iter13_reg;
        tid_2_reg_5105_pp0_iter2_reg <= tid_2_reg_5105_pp0_iter1_reg;
        tid_2_reg_5105_pp0_iter3_reg <= tid_2_reg_5105_pp0_iter2_reg;
        tid_2_reg_5105_pp0_iter4_reg <= tid_2_reg_5105_pp0_iter3_reg;
        tid_2_reg_5105_pp0_iter5_reg <= tid_2_reg_5105_pp0_iter4_reg;
        tid_2_reg_5105_pp0_iter6_reg <= tid_2_reg_5105_pp0_iter5_reg;
        tid_2_reg_5105_pp0_iter7_reg <= tid_2_reg_5105_pp0_iter6_reg;
        tid_2_reg_5105_pp0_iter8_reg <= tid_2_reg_5105_pp0_iter7_reg;
        tid_2_reg_5105_pp0_iter9_reg <= tid_2_reg_5105_pp0_iter8_reg;
        tmp_21_reg_6688 <= tmp_21_fu_3687_p41;
        tmp_22_reg_6693 <= tmp_22_fu_3770_p41;
        tmp_23_reg_6698 <= tmp_23_fu_3853_p41;
        tmp_24_reg_6703 <= tmp_24_fu_3936_p41;
        tmp_25_reg_6708 <= tmp_25_fu_4019_p41;
        tmp_26_reg_6713 <= tmp_26_fu_4102_p41;
        tmp_27_reg_6718 <= tmp_27_fu_4185_p41;
        tmp_29_reg_6723 <= tmp_29_fu_4268_p41;
        tmp_30_reg_6728 <= tmp_30_fu_4351_p41;
        tmp_31_reg_6733 <= tmp_31_fu_4434_p41;
        tmp_32_reg_6738 <= tmp_32_fu_4517_p41;
        tmp_33_reg_6743 <= tmp_33_fu_4600_p41;
        tmp_34_reg_6748 <= tmp_34_fu_4683_p41;
        tmp_35_reg_6753 <= tmp_35_fu_4766_p41;
        tmp_36_reg_6758 <= tmp_36_fu_4849_p41;
        tmp_62_reg_5129 <= {{mul_ln172_2_fu_3066_p2[18:14]}};
        tmp_62_reg_5129_pp0_iter11_reg <= tmp_62_reg_5129;
        tmp_62_reg_5129_pp0_iter12_reg <= tmp_62_reg_5129_pp0_iter11_reg;
        tmp_71_reg_5134 <= {{mul_ln172_3_fu_3088_p2[18:14]}};
        tmp_71_reg_5134_pp0_iter11_reg <= tmp_71_reg_5134;
        tmp_71_reg_5134_pp0_iter12_reg <= tmp_71_reg_5134_pp0_iter11_reg;
        tmp_s_reg_6683 <= tmp_s_fu_3604_p41;
        trunc_ln172_4_reg_5151 <= trunc_ln172_4_fu_3108_p1;
        trunc_ln172_4_reg_5151_pp0_iter13_reg <= trunc_ln172_4_reg_5151;
        trunc_ln172_reg_5139 <= trunc_ln172_fu_3104_p1;
        trunc_ln172_reg_5139_pp0_iter13_reg <= trunc_ln172_reg_5139;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        offset_2_reg_5115 <= offset_2_fu_3009_p3;
        offset_2_reg_5115_pp0_iter1_reg <= offset_2_reg_5115;
        offset_3_reg_5122[8 : 1] <= offset_3_fu_3033_p4[8 : 1];
        offset_3_reg_5122_pp0_iter1_reg[8 : 1] <= offset_3_reg_5122[8 : 1];
        tid_2_reg_5105 <= ap_sig_allocacmp_tid_2;
        tid_2_reg_5105_pp0_iter1_reg <= tid_2_reg_5105;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_1_we1_local = 1'b1;
    end else begin
        DATA_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_2_we1_local = 1'b1;
    end else begin
        DATA_x_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_3_we1_local = 1'b1;
    end else begin
        DATA_x_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_ce1_local = 1'b1;
    end else begin
        DATA_x_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_4_we1_local = 1'b1;
    end else begin
        DATA_x_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_ce1_local = 1'b1;
    end else begin
        DATA_x_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_5_we1_local = 1'b1;
    end else begin
        DATA_x_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_ce1_local = 1'b1;
    end else begin
        DATA_x_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_6_we1_local = 1'b1;
    end else begin
        DATA_x_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_ce1_local = 1'b1;
    end else begin
        DATA_x_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_7_we1_local = 1'b1;
    end else begin
        DATA_x_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_x_we1_local = 1'b1;
    end else begin
        DATA_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_2987_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_tid_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_2 = tid_fu_172;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd11)) begin
            smem_10_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd5)) begin
            smem_10_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd0)) begin
            smem_10_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd13)) begin
            smem_10_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd8)) begin
            smem_10_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd2)) begin
            smem_10_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd16)) begin
            smem_10_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd10)) begin
            smem_10_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_10_address0_local = 'bx;
        end
    end else begin
        smem_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd11)) begin
            smem_10_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd5)) begin
            smem_10_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd0)) begin
            smem_10_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd13)) begin
            smem_10_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd8)) begin
            smem_10_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd2)) begin
            smem_10_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd16)) begin
            smem_10_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd10)) begin
            smem_10_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_10_address1_local = 'bx;
        end
    end else begin
        smem_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd0)))) begin
        smem_10_ce0_local = 1'b1;
    end else begin
        smem_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd0)))) begin
        smem_10_ce1_local = 1'b1;
    end else begin
        smem_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd12)) begin
            smem_11_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd6)) begin
            smem_11_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd1)) begin
            smem_11_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd14)) begin
            smem_11_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd9)) begin
            smem_11_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd3)) begin
            smem_11_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd17)) begin
            smem_11_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd11)) begin
            smem_11_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_11_address0_local = 'bx;
        end
    end else begin
        smem_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd12)) begin
            smem_11_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd6)) begin
            smem_11_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd1)) begin
            smem_11_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd14)) begin
            smem_11_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd9)) begin
            smem_11_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd3)) begin
            smem_11_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd17)) begin
            smem_11_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd11)) begin
            smem_11_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_11_address1_local = 'bx;
        end
    end else begin
        smem_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd1)))) begin
        smem_11_ce0_local = 1'b1;
    end else begin
        smem_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd1)))) begin
        smem_11_ce1_local = 1'b1;
    end else begin
        smem_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd13)) begin
            smem_12_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd7)) begin
            smem_12_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd2)) begin
            smem_12_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd15)) begin
            smem_12_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd10)) begin
            smem_12_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd4)) begin
            smem_12_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd18)) begin
            smem_12_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd12)) begin
            smem_12_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_12_address0_local = 'bx;
        end
    end else begin
        smem_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd13)) begin
            smem_12_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd7)) begin
            smem_12_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd2)) begin
            smem_12_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd15)) begin
            smem_12_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd10)) begin
            smem_12_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd4)) begin
            smem_12_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd18)) begin
            smem_12_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd12)) begin
            smem_12_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_12_address1_local = 'bx;
        end
    end else begin
        smem_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd2)))) begin
        smem_12_ce0_local = 1'b1;
    end else begin
        smem_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd2)))) begin
        smem_12_ce1_local = 1'b1;
    end else begin
        smem_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd14)) begin
            smem_13_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd8)) begin
            smem_13_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd3)) begin
            smem_13_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd16)) begin
            smem_13_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd11)) begin
            smem_13_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd5)) begin
            smem_13_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd0)) begin
            smem_13_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd13)) begin
            smem_13_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_13_address0_local = 'bx;
        end
    end else begin
        smem_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd14)) begin
            smem_13_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd8)) begin
            smem_13_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd3)) begin
            smem_13_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd16)) begin
            smem_13_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd11)) begin
            smem_13_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd5)) begin
            smem_13_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd0)) begin
            smem_13_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd13)) begin
            smem_13_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_13_address1_local = 'bx;
        end
    end else begin
        smem_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd0)))) begin
        smem_13_ce0_local = 1'b1;
    end else begin
        smem_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd0)))) begin
        smem_13_ce1_local = 1'b1;
    end else begin
        smem_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd15)) begin
            smem_14_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd9)) begin
            smem_14_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd4)) begin
            smem_14_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd17)) begin
            smem_14_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd12)) begin
            smem_14_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd6)) begin
            smem_14_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd1)) begin
            smem_14_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd14)) begin
            smem_14_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_14_address0_local = 'bx;
        end
    end else begin
        smem_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd15)) begin
            smem_14_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd9)) begin
            smem_14_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd4)) begin
            smem_14_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd17)) begin
            smem_14_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd12)) begin
            smem_14_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd6)) begin
            smem_14_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd1)) begin
            smem_14_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd14)) begin
            smem_14_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_14_address1_local = 'bx;
        end
    end else begin
        smem_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd1)))) begin
        smem_14_ce0_local = 1'b1;
    end else begin
        smem_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd1)))) begin
        smem_14_ce1_local = 1'b1;
    end else begin
        smem_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd16)) begin
            smem_15_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd10)) begin
            smem_15_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd5)) begin
            smem_15_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd18)) begin
            smem_15_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd13)) begin
            smem_15_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd7)) begin
            smem_15_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd2)) begin
            smem_15_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd15)) begin
            smem_15_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_15_address0_local = 'bx;
        end
    end else begin
        smem_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd16)) begin
            smem_15_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd10)) begin
            smem_15_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd5)) begin
            smem_15_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd18)) begin
            smem_15_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd13)) begin
            smem_15_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd7)) begin
            smem_15_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd2)) begin
            smem_15_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd15)) begin
            smem_15_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_15_address1_local = 'bx;
        end
    end else begin
        smem_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd2)))) begin
        smem_15_ce0_local = 1'b1;
    end else begin
        smem_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd2)))) begin
        smem_15_ce1_local = 1'b1;
    end else begin
        smem_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd17)) begin
            smem_16_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd11)) begin
            smem_16_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd6)) begin
            smem_16_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd0)) begin
            smem_16_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd14)) begin
            smem_16_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd8)) begin
            smem_16_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd3)) begin
            smem_16_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd16)) begin
            smem_16_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_16_address0_local = 'bx;
        end
    end else begin
        smem_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd17)) begin
            smem_16_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd11)) begin
            smem_16_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd6)) begin
            smem_16_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd0)) begin
            smem_16_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd14)) begin
            smem_16_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd8)) begin
            smem_16_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd3)) begin
            smem_16_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd16)) begin
            smem_16_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_16_address1_local = 'bx;
        end
    end else begin
        smem_16_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd0)))) begin
        smem_16_ce0_local = 1'b1;
    end else begin
        smem_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd0)))) begin
        smem_16_ce1_local = 1'b1;
    end else begin
        smem_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd18)) begin
            smem_17_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd12)) begin
            smem_17_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd7)) begin
            smem_17_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd1)) begin
            smem_17_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd15)) begin
            smem_17_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd9)) begin
            smem_17_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd4)) begin
            smem_17_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd17)) begin
            smem_17_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_17_address0_local = 'bx;
        end
    end else begin
        smem_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd18)) begin
            smem_17_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd12)) begin
            smem_17_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd7)) begin
            smem_17_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd1)) begin
            smem_17_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd15)) begin
            smem_17_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd9)) begin
            smem_17_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd4)) begin
            smem_17_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd17)) begin
            smem_17_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_17_address1_local = 'bx;
        end
    end else begin
        smem_17_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd1)))) begin
        smem_17_ce0_local = 1'b1;
    end else begin
        smem_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd1)))) begin
        smem_17_ce1_local = 1'b1;
    end else begin
        smem_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd0)) begin
            smem_18_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd13)) begin
            smem_18_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd8)) begin
            smem_18_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd2)) begin
            smem_18_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd16)) begin
            smem_18_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd10)) begin
            smem_18_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd5)) begin
            smem_18_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd18)) begin
            smem_18_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_18_address0_local = 'bx;
        end
    end else begin
        smem_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd0)) begin
            smem_18_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd13)) begin
            smem_18_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd8)) begin
            smem_18_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd2)) begin
            smem_18_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd16)) begin
            smem_18_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd10)) begin
            smem_18_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd5)) begin
            smem_18_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd18)) begin
            smem_18_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_18_address1_local = 'bx;
        end
    end else begin
        smem_18_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd0)))) begin
        smem_18_ce0_local = 1'b1;
    end else begin
        smem_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd0)))) begin
        smem_18_ce1_local = 1'b1;
    end else begin
        smem_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd2)) begin
            smem_1_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd15)) begin
            smem_1_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd10)) begin
            smem_1_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd4)) begin
            smem_1_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd18)) begin
            smem_1_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd12)) begin
            smem_1_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd7)) begin
            smem_1_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd1)) begin
            smem_1_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_1_address0_local = 'bx;
        end
    end else begin
        smem_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd2)) begin
            smem_1_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd15)) begin
            smem_1_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd10)) begin
            smem_1_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd4)) begin
            smem_1_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd18)) begin
            smem_1_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd12)) begin
            smem_1_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd7)) begin
            smem_1_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd1)) begin
            smem_1_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_1_address1_local = 'bx;
        end
    end else begin
        smem_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd1)))) begin
        smem_1_ce0_local = 1'b1;
    end else begin
        smem_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd1)))) begin
        smem_1_ce1_local = 1'b1;
    end else begin
        smem_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd3)) begin
            smem_2_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd16)) begin
            smem_2_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd11)) begin
            smem_2_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd5)) begin
            smem_2_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd0)) begin
            smem_2_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd13)) begin
            smem_2_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd8)) begin
            smem_2_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd2)) begin
            smem_2_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_2_address0_local = 'bx;
        end
    end else begin
        smem_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd3)) begin
            smem_2_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd16)) begin
            smem_2_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd11)) begin
            smem_2_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd5)) begin
            smem_2_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd0)) begin
            smem_2_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd13)) begin
            smem_2_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd8)) begin
            smem_2_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd2)) begin
            smem_2_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_2_address1_local = 'bx;
        end
    end else begin
        smem_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd0)))) begin
        smem_2_ce0_local = 1'b1;
    end else begin
        smem_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd0)))) begin
        smem_2_ce1_local = 1'b1;
    end else begin
        smem_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd4)) begin
            smem_3_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd17)) begin
            smem_3_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd12)) begin
            smem_3_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd6)) begin
            smem_3_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd1)) begin
            smem_3_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd14)) begin
            smem_3_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd9)) begin
            smem_3_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd3)) begin
            smem_3_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_3_address0_local = 'bx;
        end
    end else begin
        smem_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd4)) begin
            smem_3_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd17)) begin
            smem_3_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd12)) begin
            smem_3_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd6)) begin
            smem_3_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd1)) begin
            smem_3_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd14)) begin
            smem_3_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd9)) begin
            smem_3_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd3)) begin
            smem_3_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_3_address1_local = 'bx;
        end
    end else begin
        smem_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd1)))) begin
        smem_3_ce0_local = 1'b1;
    end else begin
        smem_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd1)))) begin
        smem_3_ce1_local = 1'b1;
    end else begin
        smem_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd5)) begin
            smem_4_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd18)) begin
            smem_4_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd13)) begin
            smem_4_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd7)) begin
            smem_4_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd2)) begin
            smem_4_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd15)) begin
            smem_4_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd10)) begin
            smem_4_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd4)) begin
            smem_4_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_4_address0_local = 'bx;
        end
    end else begin
        smem_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd5)) begin
            smem_4_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd18)) begin
            smem_4_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd13)) begin
            smem_4_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd7)) begin
            smem_4_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd2)) begin
            smem_4_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd15)) begin
            smem_4_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd10)) begin
            smem_4_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd4)) begin
            smem_4_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_4_address1_local = 'bx;
        end
    end else begin
        smem_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd2)))) begin
        smem_4_ce0_local = 1'b1;
    end else begin
        smem_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd2)))) begin
        smem_4_ce1_local = 1'b1;
    end else begin
        smem_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd6)) begin
            smem_5_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd0)) begin
            smem_5_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd14)) begin
            smem_5_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd8)) begin
            smem_5_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd3)) begin
            smem_5_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd16)) begin
            smem_5_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd11)) begin
            smem_5_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd5)) begin
            smem_5_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_5_address0_local = 'bx;
        end
    end else begin
        smem_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd6)) begin
            smem_5_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd0)) begin
            smem_5_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd14)) begin
            smem_5_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd8)) begin
            smem_5_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd3)) begin
            smem_5_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd16)) begin
            smem_5_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd11)) begin
            smem_5_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd5)) begin
            smem_5_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_5_address1_local = 'bx;
        end
    end else begin
        smem_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd0)))) begin
        smem_5_ce0_local = 1'b1;
    end else begin
        smem_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd0)))) begin
        smem_5_ce1_local = 1'b1;
    end else begin
        smem_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd7)) begin
            smem_6_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd1)) begin
            smem_6_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd15)) begin
            smem_6_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd9)) begin
            smem_6_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd4)) begin
            smem_6_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd17)) begin
            smem_6_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd12)) begin
            smem_6_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd6)) begin
            smem_6_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_6_address0_local = 'bx;
        end
    end else begin
        smem_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd7)) begin
            smem_6_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd1)) begin
            smem_6_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd15)) begin
            smem_6_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd9)) begin
            smem_6_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd4)) begin
            smem_6_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd17)) begin
            smem_6_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd12)) begin
            smem_6_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd6)) begin
            smem_6_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_6_address1_local = 'bx;
        end
    end else begin
        smem_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd1)))) begin
        smem_6_ce0_local = 1'b1;
    end else begin
        smem_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd1)))) begin
        smem_6_ce1_local = 1'b1;
    end else begin
        smem_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd8)) begin
            smem_7_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd2)) begin
            smem_7_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd16)) begin
            smem_7_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd10)) begin
            smem_7_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd5)) begin
            smem_7_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd18)) begin
            smem_7_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd13)) begin
            smem_7_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd7)) begin
            smem_7_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_7_address0_local = 'bx;
        end
    end else begin
        smem_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd8)) begin
            smem_7_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd2)) begin
            smem_7_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd16)) begin
            smem_7_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd10)) begin
            smem_7_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd5)) begin
            smem_7_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd18)) begin
            smem_7_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd13)) begin
            smem_7_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd7)) begin
            smem_7_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_7_address1_local = 'bx;
        end
    end else begin
        smem_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd2)))) begin
        smem_7_ce0_local = 1'b1;
    end else begin
        smem_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd13)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd2)))) begin
        smem_7_ce1_local = 1'b1;
    end else begin
        smem_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd9)) begin
            smem_8_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd3)) begin
            smem_8_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd17)) begin
            smem_8_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd11)) begin
            smem_8_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd6)) begin
            smem_8_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd0)) begin
            smem_8_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd14)) begin
            smem_8_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd8)) begin
            smem_8_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_8_address0_local = 'bx;
        end
    end else begin
        smem_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd9)) begin
            smem_8_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd3)) begin
            smem_8_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd17)) begin
            smem_8_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd11)) begin
            smem_8_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd6)) begin
            smem_8_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd0)) begin
            smem_8_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd14)) begin
            smem_8_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd8)) begin
            smem_8_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_8_address1_local = 'bx;
        end
    end else begin
        smem_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd0)))) begin
        smem_8_ce0_local = 1'b1;
    end else begin
        smem_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd0)))) begin
        smem_8_ce1_local = 1'b1;
    end else begin
        smem_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd10)) begin
            smem_9_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd4)) begin
            smem_9_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd18)) begin
            smem_9_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd12)) begin
            smem_9_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd7)) begin
            smem_9_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd1)) begin
            smem_9_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd15)) begin
            smem_9_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd9)) begin
            smem_9_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_9_address0_local = 'bx;
        end
    end else begin
        smem_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd10)) begin
            smem_9_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd4)) begin
            smem_9_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd18)) begin
            smem_9_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd12)) begin
            smem_9_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd7)) begin
            smem_9_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd1)) begin
            smem_9_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd15)) begin
            smem_9_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd9)) begin
            smem_9_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_9_address1_local = 'bx;
        end
    end else begin
        smem_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd1)))) begin
        smem_9_ce0_local = 1'b1;
    end else begin
        smem_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd18)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd1)))) begin
        smem_9_ce1_local = 1'b1;
    end else begin
        smem_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_4_reg_5151 == 5'd1)) begin
            smem_address0_local = zext_ln321_1_fu_3581_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd14)) begin
            smem_address0_local = zext_ln320_1_fu_3549_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd9)) begin
            smem_address0_local = zext_ln319_1_fu_3517_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd3)) begin
            smem_address0_local = zext_ln318_1_fu_3485_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd17)) begin
            smem_address0_local = zext_ln317_1_fu_3453_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd11)) begin
            smem_address0_local = zext_ln316_1_fu_3421_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd6)) begin
            smem_address0_local = zext_ln315_1_fu_3389_p1;
        end else if ((trunc_ln172_4_reg_5151 == 5'd0)) begin
            smem_address0_local = zext_ln172_3_fu_3358_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln172_reg_5139 == 5'd1)) begin
            smem_address1_local = zext_ln321_fu_3335_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd14)) begin
            smem_address1_local = zext_ln320_fu_3303_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd9)) begin
            smem_address1_local = zext_ln319_fu_3271_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd3)) begin
            smem_address1_local = zext_ln318_fu_3239_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd17)) begin
            smem_address1_local = zext_ln317_fu_3207_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd11)) begin
            smem_address1_local = zext_ln316_fu_3175_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd6)) begin
            smem_address1_local = zext_ln315_fu_3143_p1;
        end else if ((trunc_ln172_reg_5139 == 5'd0)) begin
            smem_address1_local = zext_ln172_2_fu_3112_p1;
        end else begin
            smem_address1_local = 'bx;
        end
    end else begin
        smem_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_4_reg_5151 == 5'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd14)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln172_reg_5139 == 5'd0)))) begin
        smem_ce1_local = 1'b1;
    end else begin
        smem_ce1_local = 1'b0;
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
assign DATA_x_1_address0 = zext_ln312_fu_4960_p1;
assign DATA_x_1_address1 = zext_ln309_fu_4932_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_1_d0 = tmp_31_reg_6733;
assign DATA_x_1_d1 = tmp_22_reg_6693;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_1_we1 = DATA_x_1_we1_local;
assign DATA_x_2_address0 = zext_ln312_fu_4960_p1;
assign DATA_x_2_address1 = zext_ln309_fu_4932_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_2_d0 = tmp_33_reg_6743;
assign DATA_x_2_d1 = tmp_24_reg_6703;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_2_we1 = DATA_x_2_we1_local;
assign DATA_x_3_address0 = zext_ln312_fu_4960_p1;
assign DATA_x_3_address1 = zext_ln309_fu_4932_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_3_d0 = tmp_35_reg_6753;
assign DATA_x_3_d1 = tmp_26_reg_6713;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_3_we1 = DATA_x_3_we1_local;
assign DATA_x_4_address0 = zext_ln312_fu_4960_p1;
assign DATA_x_4_address1 = zext_ln309_fu_4932_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_ce1 = DATA_x_4_ce1_local;
assign DATA_x_4_d0 = tmp_30_reg_6728;
assign DATA_x_4_d1 = tmp_21_reg_6688;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_4_we1 = DATA_x_4_we1_local;
assign DATA_x_5_address0 = zext_ln312_fu_4960_p1;
assign DATA_x_5_address1 = zext_ln309_fu_4932_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_ce1 = DATA_x_5_ce1_local;
assign DATA_x_5_d0 = tmp_32_reg_6738;
assign DATA_x_5_d1 = tmp_23_reg_6698;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_5_we1 = DATA_x_5_we1_local;
assign DATA_x_6_address0 = zext_ln312_fu_4960_p1;
assign DATA_x_6_address1 = zext_ln309_fu_4932_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_ce1 = DATA_x_6_ce1_local;
assign DATA_x_6_d0 = tmp_34_reg_6748;
assign DATA_x_6_d1 = tmp_25_reg_6708;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_6_we1 = DATA_x_6_we1_local;
assign DATA_x_7_address0 = zext_ln312_fu_4960_p1;
assign DATA_x_7_address1 = zext_ln309_fu_4932_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_ce1 = DATA_x_7_ce1_local;
assign DATA_x_7_d0 = tmp_36_reg_6758;
assign DATA_x_7_d1 = tmp_27_reg_6718;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_7_we1 = DATA_x_7_we1_local;
assign DATA_x_address0 = zext_ln312_fu_4960_p1;
assign DATA_x_address1 = zext_ln309_fu_4932_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_x_d0 = tmp_29_reg_6723;
assign DATA_x_d1 = tmp_s_reg_6683;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_x_we1 = DATA_x_we1_local;
assign add_ln309_fu_3049_p2 = (ap_sig_allocacmp_tid_2 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_3017_p0 = {{tmp_61_fu_2995_p4}, {trunc_ln312_fu_3005_p1}};
assign grp_fu_3017_p1 = 9'd19;
assign grp_fu_3043_p0 = {{{tmp_61_fu_2995_p4}, {tmp_70_fu_3023_p4}}, {1'd1}};
assign grp_fu_3043_p1 = 9'd19;
assign grp_fu_4972_p0 = zext_ln172_12_fu_3060_p1;
assign grp_fu_4972_p1 = 10'd32;
assign grp_fu_4972_p2 = 21'd1725;
assign grp_fu_4981_p0 = zext_ln172_12_fu_3060_p1;
assign grp_fu_4981_p1 = 10'd8;
assign grp_fu_4981_p2 = 21'd1725;
assign grp_fu_4990_p0 = zext_ln172_12_fu_3060_p1;
assign grp_fu_4990_p1 = 10'd40;
assign grp_fu_4990_p2 = 21'd1725;
assign grp_fu_4999_p0 = zext_ln172_12_fu_3060_p1;
assign grp_fu_4999_p1 = 10'd16;
assign grp_fu_4999_p2 = 21'd1725;
assign grp_fu_5008_p0 = zext_ln172_12_fu_3060_p1;
assign grp_fu_5008_p1 = 10'd48;
assign grp_fu_5008_p2 = 21'd1725;
assign grp_fu_5017_p0 = zext_ln172_12_fu_3060_p1;
assign grp_fu_5017_p1 = 10'd24;
assign grp_fu_5017_p2 = 21'd1725;
assign grp_fu_5026_p0 = zext_ln172_12_fu_3060_p1;
assign grp_fu_5026_p1 = 10'd56;
assign grp_fu_5026_p2 = 21'd1725;
assign grp_fu_5035_p0 = zext_ln172_13_fu_3082_p1;
assign grp_fu_5035_p1 = 10'd32;
assign grp_fu_5035_p2 = 21'd1725;
assign grp_fu_5044_p0 = zext_ln172_13_fu_3082_p1;
assign grp_fu_5044_p1 = 10'd8;
assign grp_fu_5044_p2 = 21'd1725;
assign grp_fu_5053_p0 = zext_ln172_13_fu_3082_p1;
assign grp_fu_5053_p1 = 10'd40;
assign grp_fu_5053_p2 = 21'd1725;
assign grp_fu_5062_p0 = zext_ln172_13_fu_3082_p1;
assign grp_fu_5062_p1 = 10'd16;
assign grp_fu_5062_p2 = 21'd1725;
assign grp_fu_5071_p0 = zext_ln172_13_fu_3082_p1;
assign grp_fu_5071_p1 = 10'd48;
assign grp_fu_5071_p2 = 21'd1725;
assign grp_fu_5080_p0 = zext_ln172_13_fu_3082_p1;
assign grp_fu_5080_p1 = 10'd24;
assign grp_fu_5080_p2 = 21'd1725;
assign grp_fu_5089_p0 = zext_ln172_13_fu_3082_p1;
assign grp_fu_5089_p1 = 10'd56;
assign grp_fu_5089_p2 = 21'd1725;
assign mul_ln172_2_fu_3066_p0 = mul_ln172_2_fu_3066_p00;
assign mul_ln172_2_fu_3066_p00 = offset_2_reg_5115_pp0_iter9_reg;
assign mul_ln172_2_fu_3066_p1 = 19'd863;
assign mul_ln172_3_fu_3088_p0 = mul_ln172_3_fu_3088_p00;
assign mul_ln172_3_fu_3088_p00 = offset_3_reg_5122_pp0_iter9_reg;
assign mul_ln172_3_fu_3088_p1 = 19'd863;
assign offset_2_fu_3009_p3 = {{tmp_61_fu_2995_p4}, {trunc_ln312_fu_3005_p1}};
assign offset_3_fu_3033_p4 = {{{tmp_61_fu_2995_p4}, {tmp_70_fu_3023_p4}}, {1'd1}};
assign or_ln_fu_4952_p3 = {{tmp_28_fu_4943_p4}, {1'd1}};
assign smem_10_address0 = smem_10_address0_local;
assign smem_10_address1 = smem_10_address1_local;
assign smem_10_ce0 = smem_10_ce0_local;
assign smem_10_ce1 = smem_10_ce1_local;
assign smem_11_address0 = smem_11_address0_local;
assign smem_11_address1 = smem_11_address1_local;
assign smem_11_ce0 = smem_11_ce0_local;
assign smem_11_ce1 = smem_11_ce1_local;
assign smem_12_address0 = smem_12_address0_local;
assign smem_12_address1 = smem_12_address1_local;
assign smem_12_ce0 = smem_12_ce0_local;
assign smem_12_ce1 = smem_12_ce1_local;
assign smem_13_address0 = smem_13_address0_local;
assign smem_13_address1 = smem_13_address1_local;
assign smem_13_ce0 = smem_13_ce0_local;
assign smem_13_ce1 = smem_13_ce1_local;
assign smem_14_address0 = smem_14_address0_local;
assign smem_14_address1 = smem_14_address1_local;
assign smem_14_ce0 = smem_14_ce0_local;
assign smem_14_ce1 = smem_14_ce1_local;
assign smem_15_address0 = smem_15_address0_local;
assign smem_15_address1 = smem_15_address1_local;
assign smem_15_ce0 = smem_15_ce0_local;
assign smem_15_ce1 = smem_15_ce1_local;
assign smem_16_address0 = smem_16_address0_local;
assign smem_16_address1 = smem_16_address1_local;
assign smem_16_ce0 = smem_16_ce0_local;
assign smem_16_ce1 = smem_16_ce1_local;
assign smem_17_address0 = smem_17_address0_local;
assign smem_17_address1 = smem_17_address1_local;
assign smem_17_ce0 = smem_17_ce0_local;
assign smem_17_ce1 = smem_17_ce1_local;
assign smem_18_address0 = smem_18_address0_local;
assign smem_18_address1 = smem_18_address1_local;
assign smem_18_ce0 = smem_18_ce0_local;
assign smem_18_ce1 = smem_18_ce1_local;
assign smem_1_address0 = smem_1_address0_local;
assign smem_1_address1 = smem_1_address1_local;
assign smem_1_ce0 = smem_1_ce0_local;
assign smem_1_ce1 = smem_1_ce1_local;
assign smem_2_address0 = smem_2_address0_local;
assign smem_2_address1 = smem_2_address1_local;
assign smem_2_ce0 = smem_2_ce0_local;
assign smem_2_ce1 = smem_2_ce1_local;
assign smem_3_address0 = smem_3_address0_local;
assign smem_3_address1 = smem_3_address1_local;
assign smem_3_ce0 = smem_3_ce0_local;
assign smem_3_ce1 = smem_3_ce1_local;
assign smem_4_address0 = smem_4_address0_local;
assign smem_4_address1 = smem_4_address1_local;
assign smem_4_ce0 = smem_4_ce0_local;
assign smem_4_ce1 = smem_4_ce1_local;
assign smem_5_address0 = smem_5_address0_local;
assign smem_5_address1 = smem_5_address1_local;
assign smem_5_ce0 = smem_5_ce0_local;
assign smem_5_ce1 = smem_5_ce1_local;
assign smem_6_address0 = smem_6_address0_local;
assign smem_6_address1 = smem_6_address1_local;
assign smem_6_ce0 = smem_6_ce0_local;
assign smem_6_ce1 = smem_6_ce1_local;
assign smem_7_address0 = smem_7_address0_local;
assign smem_7_address1 = smem_7_address1_local;
assign smem_7_ce0 = smem_7_ce0_local;
assign smem_7_ce1 = smem_7_ce1_local;
assign smem_8_address0 = smem_8_address0_local;
assign smem_8_address1 = smem_8_address1_local;
assign smem_8_ce0 = smem_8_ce0_local;
assign smem_8_ce1 = smem_8_ce1_local;
assign smem_9_address0 = smem_9_address0_local;
assign smem_9_address1 = smem_9_address1_local;
assign smem_9_ce0 = smem_9_ce0_local;
assign smem_9_ce1 = smem_9_ce1_local;
assign smem_address0 = smem_address0_local;
assign smem_address1 = smem_address1_local;
assign smem_ce0 = smem_ce0_local;
assign smem_ce1 = smem_ce1_local;
assign tmp_21_fu_3687_p39 = 'bx;
assign tmp_22_fu_3770_p39 = 'bx;
assign tmp_23_fu_3853_p39 = 'bx;
assign tmp_24_fu_3936_p39 = 'bx;
assign tmp_25_fu_4019_p39 = 'bx;
assign tmp_26_fu_4102_p39 = 'bx;
assign tmp_27_fu_4185_p39 = 'bx;
assign tmp_28_fu_4943_p4 = {{tid_2_reg_5105_pp0_iter14_reg[5:1]}};
assign tmp_29_fu_4268_p39 = 'bx;
assign tmp_30_fu_4351_p39 = 'bx;
assign tmp_31_fu_4434_p39 = 'bx;
assign tmp_32_fu_4517_p39 = 'bx;
assign tmp_33_fu_4600_p39 = 'bx;
assign tmp_34_fu_4683_p39 = 'bx;
assign tmp_35_fu_4766_p39 = 'bx;
assign tmp_36_fu_4849_p39 = 'bx;
assign tmp_61_fu_2995_p4 = {{ap_sig_allocacmp_tid_2[5:3]}};
assign tmp_63_fu_3134_p1 = grp_fu_4972_p3;
assign tmp_63_fu_3134_p4 = {{tmp_63_fu_3134_p1[20:15]}};
assign tmp_64_fu_3166_p1 = grp_fu_4981_p3;
assign tmp_64_fu_3166_p4 = {{tmp_64_fu_3166_p1[20:15]}};
assign tmp_65_fu_3198_p1 = grp_fu_4990_p3;
assign tmp_65_fu_3198_p4 = {{tmp_65_fu_3198_p1[20:15]}};
assign tmp_66_fu_3230_p1 = grp_fu_4999_p3;
assign tmp_66_fu_3230_p4 = {{tmp_66_fu_3230_p1[20:15]}};
assign tmp_67_fu_3262_p1 = grp_fu_5008_p3;
assign tmp_67_fu_3262_p4 = {{tmp_67_fu_3262_p1[20:15]}};
assign tmp_68_fu_3294_p1 = grp_fu_5017_p3;
assign tmp_68_fu_3294_p4 = {{tmp_68_fu_3294_p1[20:15]}};
assign tmp_69_fu_3326_p1 = grp_fu_5026_p3;
assign tmp_69_fu_3326_p4 = {{tmp_69_fu_3326_p1[20:15]}};
assign tmp_70_fu_3023_p4 = {{ap_sig_allocacmp_tid_2[5:1]}};
assign tmp_72_fu_3380_p1 = grp_fu_5035_p3;
assign tmp_72_fu_3380_p4 = {{tmp_72_fu_3380_p1[20:15]}};
assign tmp_73_fu_3412_p1 = grp_fu_5044_p3;
assign tmp_73_fu_3412_p4 = {{tmp_73_fu_3412_p1[20:15]}};
assign tmp_74_fu_3444_p1 = grp_fu_5053_p3;
assign tmp_74_fu_3444_p4 = {{tmp_74_fu_3444_p1[20:15]}};
assign tmp_75_fu_3476_p1 = grp_fu_5062_p3;
assign tmp_75_fu_3476_p4 = {{tmp_75_fu_3476_p1[20:15]}};
assign tmp_76_fu_3508_p1 = grp_fu_5071_p3;
assign tmp_76_fu_3508_p4 = {{tmp_76_fu_3508_p1[20:15]}};
assign tmp_77_fu_3540_p1 = grp_fu_5080_p3;
assign tmp_77_fu_3540_p4 = {{tmp_77_fu_3540_p1[20:15]}};
assign tmp_78_fu_3572_p1 = grp_fu_5089_p3;
assign tmp_78_fu_3572_p4 = {{tmp_78_fu_3572_p1[20:15]}};
assign tmp_fu_2987_p3 = ap_sig_allocacmp_tid_2[32'd6];
assign tmp_s_fu_3604_p39 = 'bx;
assign trunc_ln172_4_fu_3108_p1 = grp_fu_3043_p2[4:0];
assign trunc_ln172_fu_3104_p1 = grp_fu_3017_p2[4:0];
assign trunc_ln312_fu_3005_p1 = ap_sig_allocacmp_tid_2[5:0];
assign zext_ln172_12_fu_3060_p1 = offset_2_reg_5115_pp0_iter9_reg;
assign zext_ln172_13_fu_3082_p1 = offset_3_reg_5122_pp0_iter9_reg;
assign zext_ln172_2_fu_3112_p1 = tmp_62_reg_5129_pp0_iter12_reg;
assign zext_ln172_3_fu_3358_p1 = tmp_71_reg_5134_pp0_iter12_reg;
assign zext_ln309_fu_4932_p1 = tid_2_reg_5105_pp0_iter14_reg;
assign zext_ln312_fu_4960_p1 = or_ln_fu_4952_p3;
assign zext_ln315_1_fu_3389_p1 = tmp_72_fu_3380_p4;
assign zext_ln315_fu_3143_p1 = tmp_63_fu_3134_p4;
assign zext_ln316_1_fu_3421_p1 = tmp_73_fu_3412_p4;
assign zext_ln316_fu_3175_p1 = tmp_64_fu_3166_p4;
assign zext_ln317_1_fu_3453_p1 = tmp_74_fu_3444_p4;
assign zext_ln317_fu_3207_p1 = tmp_65_fu_3198_p4;
assign zext_ln318_1_fu_3485_p1 = tmp_75_fu_3476_p4;
assign zext_ln318_fu_3239_p1 = tmp_66_fu_3230_p4;
assign zext_ln319_1_fu_3517_p1 = tmp_76_fu_3508_p4;
assign zext_ln319_fu_3271_p1 = tmp_67_fu_3262_p4;
assign zext_ln320_1_fu_3549_p1 = tmp_77_fu_3540_p4;
assign zext_ln320_fu_3303_p1 = tmp_68_fu_3294_p4;
assign zext_ln321_1_fu_3581_p1 = tmp_78_fu_3572_p4;
assign zext_ln321_fu_3335_p1 = tmp_69_fu_3326_p4;
always @ (posedge ap_clk) begin
    offset_3_reg_5122[0] <= 1'b1;
    offset_3_reg_5122_pp0_iter1_reg[0] <= 1'b1;
    offset_3_reg_5122_pp0_iter2_reg[0] <= 1'b1;
    offset_3_reg_5122_pp0_iter3_reg[0] <= 1'b1;
    offset_3_reg_5122_pp0_iter4_reg[0] <= 1'b1;
    offset_3_reg_5122_pp0_iter5_reg[0] <= 1'b1;
    offset_3_reg_5122_pp0_iter6_reg[0] <= 1'b1;
    offset_3_reg_5122_pp0_iter7_reg[0] <= 1'b1;
    offset_3_reg_5122_pp0_iter8_reg[0] <= 1'b1;
    offset_3_reg_5122_pp0_iter9_reg[0] <= 1'b1;
end
endmodule 
