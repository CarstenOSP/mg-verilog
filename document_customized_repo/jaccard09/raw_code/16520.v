module fft1D_512_fft1D_512_Pipeline_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_31_address0,DATA_y_31_ce0,DATA_y_31_we0,DATA_y_31_d0,DATA_y_30_address0,DATA_y_30_ce0,DATA_y_30_we0,DATA_y_30_d0,DATA_y_29_address0,DATA_y_29_ce0,DATA_y_29_we0,DATA_y_29_d0,DATA_y_28_address0,DATA_y_28_ce0,DATA_y_28_we0,DATA_y_28_d0,DATA_y_27_address0,DATA_y_27_ce0,DATA_y_27_we0,DATA_y_27_d0,DATA_y_26_address0,DATA_y_26_ce0,DATA_y_26_we0,DATA_y_26_d0,DATA_y_25_address0,DATA_y_25_ce0,DATA_y_25_we0,DATA_y_25_d0,DATA_y_24_address0,DATA_y_24_ce0,DATA_y_24_we0,DATA_y_24_d0,DATA_y_23_address0,DATA_y_23_ce0,DATA_y_23_we0,DATA_y_23_d0,DATA_y_22_address0,DATA_y_22_ce0,DATA_y_22_we0,DATA_y_22_d0,DATA_y_21_address0,DATA_y_21_ce0,DATA_y_21_we0,DATA_y_21_d0,DATA_y_20_address0,DATA_y_20_ce0,DATA_y_20_we0,DATA_y_20_d0,DATA_y_19_address0,DATA_y_19_ce0,DATA_y_19_we0,DATA_y_19_d0,DATA_y_18_address0,DATA_y_18_ce0,DATA_y_18_we0,DATA_y_18_d0,DATA_y_17_address0,DATA_y_17_ce0,DATA_y_17_we0,DATA_y_17_d0,DATA_y_16_address0,DATA_y_16_ce0,DATA_y_16_we0,DATA_y_16_d0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_we0,DATA_y_15_d0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_we0,DATA_y_14_d0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_we0,DATA_y_13_d0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_we0,DATA_y_12_d0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_we0,DATA_y_11_d0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_we0,DATA_y_10_d0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_we0,DATA_y_9_d0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_we0,DATA_y_8_d0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0,smem_11_address0,smem_11_ce0,smem_11_q0,smem_12_address0,smem_12_ce0,smem_12_q0,smem_13_address0,smem_13_ce0,smem_13_q0,smem_14_address0,smem_14_ce0,smem_14_q0,smem_15_address0,smem_15_ce0,smem_15_q0,smem_16_address0,smem_16_ce0,smem_16_q0,smem_17_address0,smem_17_ce0,smem_17_q0,smem_18_address0,smem_18_ce0,smem_18_q0,smem_19_address0,smem_19_ce0,smem_19_q0,smem_20_address0,smem_20_ce0,smem_20_q0,smem_21_address0,smem_21_ce0,smem_21_q0,smem_22_address0,smem_22_ce0,smem_22_q0,smem_23_address0,smem_23_ce0,smem_23_q0,smem_24_address0,smem_24_ce0,smem_24_q0,smem_25_address0,smem_25_ce0,smem_25_q0,smem_26_address0,smem_26_ce0,smem_26_q0,smem_27_address0,smem_27_ce0,smem_27_q0,smem_28_address0,smem_28_ce0,smem_28_q0,smem_29_address0,smem_29_ce0,smem_29_q0,smem_30_address0,smem_30_ce0,smem_30_q0,smem_31_address0,smem_31_ce0,smem_31_q0,smem_32_address0,smem_32_ce0,smem_32_q0,smem_33_address0,smem_33_ce0,smem_33_q0,smem_34_address0,smem_34_ce0,smem_34_q0,smem_35_address0,smem_35_ce0,smem_35_q0,smem_36_address0,smem_36_ce0,smem_36_q0,smem_37_address0,smem_37_ce0,smem_37_q0,smem_38_address0,smem_38_ce0,smem_38_q0,smem_39_address0,smem_39_ce0,smem_39_q0,smem_40_address0,smem_40_ce0,smem_40_q0,smem_41_address0,smem_41_ce0,smem_41_q0,smem_42_address0,smem_42_ce0,smem_42_q0,smem_43_address0,smem_43_ce0,smem_43_q0,smem_44_address0,smem_44_ce0,smem_44_q0,smem_45_address0,smem_45_ce0,smem_45_q0,smem_46_address0,smem_46_ce0,smem_46_q0,smem_47_address0,smem_47_ce0,smem_47_q0,smem_48_address0,smem_48_ce0,smem_48_q0,smem_49_address0,smem_49_ce0,smem_49_q0,smem_50_address0,smem_50_ce0,smem_50_q0,smem_51_address0,smem_51_ce0,smem_51_q0,smem_52_address0,smem_52_ce0,smem_52_q0,smem_53_address0,smem_53_ce0,smem_53_q0,smem_54_address0,smem_54_ce0,smem_54_q0,smem_55_address0,smem_55_ce0,smem_55_q0,smem_56_address0,smem_56_ce0,smem_56_q0,smem_57_address0,smem_57_ce0,smem_57_q0,smem_58_address0,smem_58_ce0,smem_58_q0,smem_59_address0,smem_59_ce0,smem_59_q0,smem_60_address0,smem_60_ce0,smem_60_q0,smem_61_address0,smem_61_ce0,smem_61_q0,smem_62_address0,smem_62_ce0,smem_62_q0,smem_63_address0,smem_63_ce0,smem_63_q0,smem_64_address0,smem_64_ce0,smem_64_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] DATA_y_31_address0;
output   DATA_y_31_ce0;
output   DATA_y_31_we0;
output  [63:0] DATA_y_31_d0;
output  [3:0] DATA_y_30_address0;
output   DATA_y_30_ce0;
output   DATA_y_30_we0;
output  [63:0] DATA_y_30_d0;
output  [3:0] DATA_y_29_address0;
output   DATA_y_29_ce0;
output   DATA_y_29_we0;
output  [63:0] DATA_y_29_d0;
output  [3:0] DATA_y_28_address0;
output   DATA_y_28_ce0;
output   DATA_y_28_we0;
output  [63:0] DATA_y_28_d0;
output  [3:0] DATA_y_27_address0;
output   DATA_y_27_ce0;
output   DATA_y_27_we0;
output  [63:0] DATA_y_27_d0;
output  [3:0] DATA_y_26_address0;
output   DATA_y_26_ce0;
output   DATA_y_26_we0;
output  [63:0] DATA_y_26_d0;
output  [3:0] DATA_y_25_address0;
output   DATA_y_25_ce0;
output   DATA_y_25_we0;
output  [63:0] DATA_y_25_d0;
output  [3:0] DATA_y_24_address0;
output   DATA_y_24_ce0;
output   DATA_y_24_we0;
output  [63:0] DATA_y_24_d0;
output  [3:0] DATA_y_23_address0;
output   DATA_y_23_ce0;
output   DATA_y_23_we0;
output  [63:0] DATA_y_23_d0;
output  [3:0] DATA_y_22_address0;
output   DATA_y_22_ce0;
output   DATA_y_22_we0;
output  [63:0] DATA_y_22_d0;
output  [3:0] DATA_y_21_address0;
output   DATA_y_21_ce0;
output   DATA_y_21_we0;
output  [63:0] DATA_y_21_d0;
output  [3:0] DATA_y_20_address0;
output   DATA_y_20_ce0;
output   DATA_y_20_we0;
output  [63:0] DATA_y_20_d0;
output  [3:0] DATA_y_19_address0;
output   DATA_y_19_ce0;
output   DATA_y_19_we0;
output  [63:0] DATA_y_19_d0;
output  [3:0] DATA_y_18_address0;
output   DATA_y_18_ce0;
output   DATA_y_18_we0;
output  [63:0] DATA_y_18_d0;
output  [3:0] DATA_y_17_address0;
output   DATA_y_17_ce0;
output   DATA_y_17_we0;
output  [63:0] DATA_y_17_d0;
output  [3:0] DATA_y_16_address0;
output   DATA_y_16_ce0;
output   DATA_y_16_we0;
output  [63:0] DATA_y_16_d0;
output  [3:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
output   DATA_y_15_we0;
output  [63:0] DATA_y_15_d0;
output  [3:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
output   DATA_y_14_we0;
output  [63:0] DATA_y_14_d0;
output  [3:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
output   DATA_y_13_we0;
output  [63:0] DATA_y_13_d0;
output  [3:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
output   DATA_y_12_we0;
output  [63:0] DATA_y_12_d0;
output  [3:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
output   DATA_y_11_we0;
output  [63:0] DATA_y_11_d0;
output  [3:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
output   DATA_y_10_we0;
output  [63:0] DATA_y_10_d0;
output  [3:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
output   DATA_y_9_we0;
output  [63:0] DATA_y_9_d0;
output  [3:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
output   DATA_y_8_we0;
output  [63:0] DATA_y_8_d0;
output  [3:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
output   DATA_y_7_we0;
output  [63:0] DATA_y_7_d0;
output  [3:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
output   DATA_y_6_we0;
output  [63:0] DATA_y_6_d0;
output  [3:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
output   DATA_y_5_we0;
output  [63:0] DATA_y_5_d0;
output  [3:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
output   DATA_y_4_we0;
output  [63:0] DATA_y_4_d0;
output  [3:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [3:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [3:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [3:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [3:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [3:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [3:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [3:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [3:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [3:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [3:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [3:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [3:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [3:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [3:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [3:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [3:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
output  [3:0] smem_13_address0;
output   smem_13_ce0;
input  [63:0] smem_13_q0;
output  [3:0] smem_14_address0;
output   smem_14_ce0;
input  [63:0] smem_14_q0;
output  [3:0] smem_15_address0;
output   smem_15_ce0;
input  [63:0] smem_15_q0;
output  [3:0] smem_16_address0;
output   smem_16_ce0;
input  [63:0] smem_16_q0;
output  [3:0] smem_17_address0;
output   smem_17_ce0;
input  [63:0] smem_17_q0;
output  [3:0] smem_18_address0;
output   smem_18_ce0;
input  [63:0] smem_18_q0;
output  [3:0] smem_19_address0;
output   smem_19_ce0;
input  [63:0] smem_19_q0;
output  [3:0] smem_20_address0;
output   smem_20_ce0;
input  [63:0] smem_20_q0;
output  [3:0] smem_21_address0;
output   smem_21_ce0;
input  [63:0] smem_21_q0;
output  [3:0] smem_22_address0;
output   smem_22_ce0;
input  [63:0] smem_22_q0;
output  [3:0] smem_23_address0;
output   smem_23_ce0;
input  [63:0] smem_23_q0;
output  [3:0] smem_24_address0;
output   smem_24_ce0;
input  [63:0] smem_24_q0;
output  [3:0] smem_25_address0;
output   smem_25_ce0;
input  [63:0] smem_25_q0;
output  [3:0] smem_26_address0;
output   smem_26_ce0;
input  [63:0] smem_26_q0;
output  [3:0] smem_27_address0;
output   smem_27_ce0;
input  [63:0] smem_27_q0;
output  [3:0] smem_28_address0;
output   smem_28_ce0;
input  [63:0] smem_28_q0;
output  [3:0] smem_29_address0;
output   smem_29_ce0;
input  [63:0] smem_29_q0;
output  [3:0] smem_30_address0;
output   smem_30_ce0;
input  [63:0] smem_30_q0;
output  [3:0] smem_31_address0;
output   smem_31_ce0;
input  [63:0] smem_31_q0;
output  [3:0] smem_32_address0;
output   smem_32_ce0;
input  [63:0] smem_32_q0;
output  [3:0] smem_33_address0;
output   smem_33_ce0;
input  [63:0] smem_33_q0;
output  [3:0] smem_34_address0;
output   smem_34_ce0;
input  [63:0] smem_34_q0;
output  [3:0] smem_35_address0;
output   smem_35_ce0;
input  [63:0] smem_35_q0;
output  [3:0] smem_36_address0;
output   smem_36_ce0;
input  [63:0] smem_36_q0;
output  [3:0] smem_37_address0;
output   smem_37_ce0;
input  [63:0] smem_37_q0;
output  [3:0] smem_38_address0;
output   smem_38_ce0;
input  [63:0] smem_38_q0;
output  [3:0] smem_39_address0;
output   smem_39_ce0;
input  [63:0] smem_39_q0;
output  [3:0] smem_40_address0;
output   smem_40_ce0;
input  [63:0] smem_40_q0;
output  [3:0] smem_41_address0;
output   smem_41_ce0;
input  [63:0] smem_41_q0;
output  [3:0] smem_42_address0;
output   smem_42_ce0;
input  [63:0] smem_42_q0;
output  [3:0] smem_43_address0;
output   smem_43_ce0;
input  [63:0] smem_43_q0;
output  [3:0] smem_44_address0;
output   smem_44_ce0;
input  [63:0] smem_44_q0;
output  [3:0] smem_45_address0;
output   smem_45_ce0;
input  [63:0] smem_45_q0;
output  [3:0] smem_46_address0;
output   smem_46_ce0;
input  [63:0] smem_46_q0;
output  [3:0] smem_47_address0;
output   smem_47_ce0;
input  [63:0] smem_47_q0;
output  [3:0] smem_48_address0;
output   smem_48_ce0;
input  [63:0] smem_48_q0;
output  [3:0] smem_49_address0;
output   smem_49_ce0;
input  [63:0] smem_49_q0;
output  [3:0] smem_50_address0;
output   smem_50_ce0;
input  [63:0] smem_50_q0;
output  [3:0] smem_51_address0;
output   smem_51_ce0;
input  [63:0] smem_51_q0;
output  [3:0] smem_52_address0;
output   smem_52_ce0;
input  [63:0] smem_52_q0;
output  [3:0] smem_53_address0;
output   smem_53_ce0;
input  [63:0] smem_53_q0;
output  [3:0] smem_54_address0;
output   smem_54_ce0;
input  [63:0] smem_54_q0;
output  [3:0] smem_55_address0;
output   smem_55_ce0;
input  [63:0] smem_55_q0;
output  [3:0] smem_56_address0;
output   smem_56_ce0;
input  [63:0] smem_56_q0;
output  [3:0] smem_57_address0;
output   smem_57_ce0;
input  [63:0] smem_57_q0;
output  [3:0] smem_58_address0;
output   smem_58_ce0;
input  [63:0] smem_58_q0;
output  [3:0] smem_59_address0;
output   smem_59_ce0;
input  [63:0] smem_59_q0;
output  [3:0] smem_60_address0;
output   smem_60_ce0;
input  [63:0] smem_60_q0;
output  [3:0] smem_61_address0;
output   smem_61_ce0;
input  [63:0] smem_61_q0;
output  [3:0] smem_62_address0;
output   smem_62_ce0;
input  [63:0] smem_62_q0;
output  [3:0] smem_63_address0;
output   smem_63_ce0;
input  [63:0] smem_63_q0;
output  [3:0] smem_64_address0;
output   smem_64_ce0;
input  [63:0] smem_64_q0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln340_fu_803_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_6_reg_927;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln340_reg_935;
reg   [0:0] icmp_ln340_reg_935_pp0_iter1_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter2_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter3_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter4_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter5_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter6_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter7_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter8_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter9_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter10_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter11_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter12_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter13_reg;
reg   [0:0] icmp_ln340_reg_935_pp0_iter14_reg;
wire   [1:0] trunc_ln340_fu_820_p1;
reg   [1:0] trunc_ln340_reg_939;
reg   [1:0] trunc_ln340_reg_939_pp0_iter2_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter3_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter4_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter5_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter6_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter7_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter8_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter9_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter10_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter11_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter12_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter13_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter14_reg;
reg   [1:0] trunc_ln340_reg_939_pp0_iter15_reg;
reg   [3:0] lshr_ln_reg_943;
reg   [3:0] lshr_ln_reg_943_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter3_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter4_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter5_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter6_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter7_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter8_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter9_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter10_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter11_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter12_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter13_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter14_reg;
reg   [3:0] lshr_ln_reg_943_pp0_iter15_reg;
reg   [63:0] data_y_0_reg_948;
reg   [63:0] data_y_1_reg_956;
reg   [63:0] data_y_2_reg_964;
reg   [63:0] data_y_3_reg_972;
reg   [63:0] data_y_4_reg_980;
reg   [63:0] data_y_5_reg_988;
reg   [63:0] data_y_6_reg_996;
reg   [63:0] data_y_7_reg_1004;
wire    grp_loady8_fu_660_ap_start;
wire    grp_loady8_fu_660_ap_done;
wire    grp_loady8_fu_660_ap_idle;
wire    grp_loady8_fu_660_ap_ready;
wire   [3:0] grp_loady8_fu_660_x_0_address0;
wire    grp_loady8_fu_660_x_0_ce0;
wire   [3:0] grp_loady8_fu_660_x_1_address0;
wire    grp_loady8_fu_660_x_1_ce0;
wire   [3:0] grp_loady8_fu_660_x_2_address0;
wire    grp_loady8_fu_660_x_2_ce0;
wire   [3:0] grp_loady8_fu_660_x_3_address0;
wire    grp_loady8_fu_660_x_3_ce0;
wire   [3:0] grp_loady8_fu_660_x_4_address0;
wire    grp_loady8_fu_660_x_4_ce0;
wire   [3:0] grp_loady8_fu_660_x_5_address0;
wire    grp_loady8_fu_660_x_5_ce0;
wire   [3:0] grp_loady8_fu_660_x_6_address0;
wire    grp_loady8_fu_660_x_6_ce0;
wire   [3:0] grp_loady8_fu_660_x_7_address0;
wire    grp_loady8_fu_660_x_7_ce0;
wire   [3:0] grp_loady8_fu_660_x_8_address0;
wire    grp_loady8_fu_660_x_8_ce0;
wire   [3:0] grp_loady8_fu_660_x_9_address0;
wire    grp_loady8_fu_660_x_9_ce0;
wire   [3:0] grp_loady8_fu_660_x_10_address0;
wire    grp_loady8_fu_660_x_10_ce0;
wire   [3:0] grp_loady8_fu_660_x_11_address0;
wire    grp_loady8_fu_660_x_11_ce0;
wire   [3:0] grp_loady8_fu_660_x_12_address0;
wire    grp_loady8_fu_660_x_12_ce0;
wire   [3:0] grp_loady8_fu_660_x_13_address0;
wire    grp_loady8_fu_660_x_13_ce0;
wire   [3:0] grp_loady8_fu_660_x_14_address0;
wire    grp_loady8_fu_660_x_14_ce0;
wire   [3:0] grp_loady8_fu_660_x_15_address0;
wire    grp_loady8_fu_660_x_15_ce0;
wire   [3:0] grp_loady8_fu_660_x_16_address0;
wire    grp_loady8_fu_660_x_16_ce0;
wire   [3:0] grp_loady8_fu_660_x_17_address0;
wire    grp_loady8_fu_660_x_17_ce0;
wire   [3:0] grp_loady8_fu_660_x_18_address0;
wire    grp_loady8_fu_660_x_18_ce0;
wire   [3:0] grp_loady8_fu_660_x_19_address0;
wire    grp_loady8_fu_660_x_19_ce0;
wire   [3:0] grp_loady8_fu_660_x_20_address0;
wire    grp_loady8_fu_660_x_20_ce0;
wire   [3:0] grp_loady8_fu_660_x_21_address0;
wire    grp_loady8_fu_660_x_21_ce0;
wire   [3:0] grp_loady8_fu_660_x_22_address0;
wire    grp_loady8_fu_660_x_22_ce0;
wire   [3:0] grp_loady8_fu_660_x_23_address0;
wire    grp_loady8_fu_660_x_23_ce0;
wire   [3:0] grp_loady8_fu_660_x_24_address0;
wire    grp_loady8_fu_660_x_24_ce0;
wire   [3:0] grp_loady8_fu_660_x_25_address0;
wire    grp_loady8_fu_660_x_25_ce0;
wire   [3:0] grp_loady8_fu_660_x_26_address0;
wire    grp_loady8_fu_660_x_26_ce0;
wire   [3:0] grp_loady8_fu_660_x_27_address0;
wire    grp_loady8_fu_660_x_27_ce0;
wire   [3:0] grp_loady8_fu_660_x_28_address0;
wire    grp_loady8_fu_660_x_28_ce0;
wire   [3:0] grp_loady8_fu_660_x_29_address0;
wire    grp_loady8_fu_660_x_29_ce0;
wire   [3:0] grp_loady8_fu_660_x_30_address0;
wire    grp_loady8_fu_660_x_30_ce0;
wire   [3:0] grp_loady8_fu_660_x_31_address0;
wire    grp_loady8_fu_660_x_31_ce0;
wire   [3:0] grp_loady8_fu_660_x_32_address0;
wire    grp_loady8_fu_660_x_32_ce0;
wire   [3:0] grp_loady8_fu_660_x_33_address0;
wire    grp_loady8_fu_660_x_33_ce0;
wire   [3:0] grp_loady8_fu_660_x_34_address0;
wire    grp_loady8_fu_660_x_34_ce0;
wire   [3:0] grp_loady8_fu_660_x_35_address0;
wire    grp_loady8_fu_660_x_35_ce0;
wire   [3:0] grp_loady8_fu_660_x_36_address0;
wire    grp_loady8_fu_660_x_36_ce0;
wire   [3:0] grp_loady8_fu_660_x_37_address0;
wire    grp_loady8_fu_660_x_37_ce0;
wire   [3:0] grp_loady8_fu_660_x_38_address0;
wire    grp_loady8_fu_660_x_38_ce0;
wire   [3:0] grp_loady8_fu_660_x_39_address0;
wire    grp_loady8_fu_660_x_39_ce0;
wire   [3:0] grp_loady8_fu_660_x_40_address0;
wire    grp_loady8_fu_660_x_40_ce0;
wire   [3:0] grp_loady8_fu_660_x_41_address0;
wire    grp_loady8_fu_660_x_41_ce0;
wire   [3:0] grp_loady8_fu_660_x_42_address0;
wire    grp_loady8_fu_660_x_42_ce0;
wire   [3:0] grp_loady8_fu_660_x_43_address0;
wire    grp_loady8_fu_660_x_43_ce0;
wire   [3:0] grp_loady8_fu_660_x_44_address0;
wire    grp_loady8_fu_660_x_44_ce0;
wire   [3:0] grp_loady8_fu_660_x_45_address0;
wire    grp_loady8_fu_660_x_45_ce0;
wire   [3:0] grp_loady8_fu_660_x_46_address0;
wire    grp_loady8_fu_660_x_46_ce0;
wire   [3:0] grp_loady8_fu_660_x_47_address0;
wire    grp_loady8_fu_660_x_47_ce0;
wire   [3:0] grp_loady8_fu_660_x_48_address0;
wire    grp_loady8_fu_660_x_48_ce0;
wire   [3:0] grp_loady8_fu_660_x_49_address0;
wire    grp_loady8_fu_660_x_49_ce0;
wire   [3:0] grp_loady8_fu_660_x_50_address0;
wire    grp_loady8_fu_660_x_50_ce0;
wire   [3:0] grp_loady8_fu_660_x_51_address0;
wire    grp_loady8_fu_660_x_51_ce0;
wire   [3:0] grp_loady8_fu_660_x_52_address0;
wire    grp_loady8_fu_660_x_52_ce0;
wire   [3:0] grp_loady8_fu_660_x_53_address0;
wire    grp_loady8_fu_660_x_53_ce0;
wire   [3:0] grp_loady8_fu_660_x_54_address0;
wire    grp_loady8_fu_660_x_54_ce0;
wire   [3:0] grp_loady8_fu_660_x_55_address0;
wire    grp_loady8_fu_660_x_55_ce0;
wire   [3:0] grp_loady8_fu_660_x_56_address0;
wire    grp_loady8_fu_660_x_56_ce0;
wire   [3:0] grp_loady8_fu_660_x_57_address0;
wire    grp_loady8_fu_660_x_57_ce0;
wire   [3:0] grp_loady8_fu_660_x_58_address0;
wire    grp_loady8_fu_660_x_58_ce0;
wire   [3:0] grp_loady8_fu_660_x_59_address0;
wire    grp_loady8_fu_660_x_59_ce0;
wire   [3:0] grp_loady8_fu_660_x_60_address0;
wire    grp_loady8_fu_660_x_60_ce0;
wire   [3:0] grp_loady8_fu_660_x_61_address0;
wire    grp_loady8_fu_660_x_61_ce0;
wire   [3:0] grp_loady8_fu_660_x_62_address0;
wire    grp_loady8_fu_660_x_62_ce0;
wire   [3:0] grp_loady8_fu_660_x_63_address0;
wire    grp_loady8_fu_660_x_63_ce0;
wire   [3:0] grp_loady8_fu_660_x_64_address0;
wire    grp_loady8_fu_660_x_64_ce0;
wire   [8:0] grp_loady8_fu_660_offset;
wire   [63:0] grp_loady8_fu_660_ap_return_0;
wire   [63:0] grp_loady8_fu_660_ap_return_1;
wire   [63:0] grp_loady8_fu_660_ap_return_2;
wire   [63:0] grp_loady8_fu_660_ap_return_3;
wire   [63:0] grp_loady8_fu_660_ap_return_4;
wire   [63:0] grp_loady8_fu_660_ap_return_5;
wire   [63:0] grp_loady8_fu_660_ap_return_6;
wire   [63:0] grp_loady8_fu_660_ap_return_7;
reg    grp_loady8_fu_660_ap_start_reg;
wire    ap_block_pp0_stage0_ignoreCallOp48;
wire    ap_block_pp0_stage0_ignoreCallOp49;
wire    ap_block_pp0_stage0_ignoreCallOp34;
wire   [63:0] zext_ln341_fu_885_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] tid_fu_240;
wire   [6:0] add_ln340_fu_809_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_6;
reg    DATA_y_16_we0_local;
reg    DATA_y_16_ce0_local;
reg    DATA_y_17_we0_local;
reg    DATA_y_17_ce0_local;
reg    DATA_y_18_we0_local;
reg    DATA_y_18_ce0_local;
reg    DATA_y_19_we0_local;
reg    DATA_y_19_ce0_local;
reg    DATA_y_20_we0_local;
reg    DATA_y_20_ce0_local;
reg    DATA_y_21_we0_local;
reg    DATA_y_21_ce0_local;
reg    DATA_y_22_we0_local;
reg    DATA_y_22_ce0_local;
reg    DATA_y_23_we0_local;
reg    DATA_y_23_ce0_local;
reg    DATA_y_8_we0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_y_9_we0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_10_we0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_11_we0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_12_we0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_13_we0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_14_we0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_15_we0_local;
reg    DATA_y_15_ce0_local;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_we0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_we0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_we0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_we0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_we0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_we0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_we0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_y_24_we0_local;
reg    DATA_y_24_ce0_local;
reg    DATA_y_25_we0_local;
reg    DATA_y_25_ce0_local;
reg    DATA_y_26_we0_local;
reg    DATA_y_26_ce0_local;
reg    DATA_y_27_we0_local;
reg    DATA_y_27_ce0_local;
reg    DATA_y_28_we0_local;
reg    DATA_y_28_ce0_local;
reg    DATA_y_29_we0_local;
reg    DATA_y_29_ce0_local;
reg    DATA_y_30_we0_local;
reg    DATA_y_30_ce0_local;
reg    DATA_y_31_we0_local;
reg    DATA_y_31_ce0_local;
wire   [2:0] tmp_fu_832_p4;
wire   [5:0] trunc_ln353_fu_841_p1;
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
#0 grp_loady8_fu_660_ap_start_reg = 1'b0;
#0 tid_fu_240 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_660(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_660_ap_start),.ap_done(grp_loady8_fu_660_ap_done),.ap_idle(grp_loady8_fu_660_ap_idle),.ap_ready(grp_loady8_fu_660_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_660_x_0_address0),.x_0_ce0(grp_loady8_fu_660_x_0_ce0),.x_0_q0(smem_q0),.x_1_address0(grp_loady8_fu_660_x_1_address0),.x_1_ce0(grp_loady8_fu_660_x_1_ce0),.x_1_q0(smem_1_q0),.x_2_address0(grp_loady8_fu_660_x_2_address0),.x_2_ce0(grp_loady8_fu_660_x_2_ce0),.x_2_q0(smem_2_q0),.x_3_address0(grp_loady8_fu_660_x_3_address0),.x_3_ce0(grp_loady8_fu_660_x_3_ce0),.x_3_q0(smem_3_q0),.x_4_address0(grp_loady8_fu_660_x_4_address0),.x_4_ce0(grp_loady8_fu_660_x_4_ce0),.x_4_q0(smem_4_q0),.x_5_address0(grp_loady8_fu_660_x_5_address0),.x_5_ce0(grp_loady8_fu_660_x_5_ce0),.x_5_q0(smem_5_q0),.x_6_address0(grp_loady8_fu_660_x_6_address0),.x_6_ce0(grp_loady8_fu_660_x_6_ce0),.x_6_q0(smem_6_q0),.x_7_address0(grp_loady8_fu_660_x_7_address0),.x_7_ce0(grp_loady8_fu_660_x_7_ce0),.x_7_q0(smem_7_q0),.x_8_address0(grp_loady8_fu_660_x_8_address0),.x_8_ce0(grp_loady8_fu_660_x_8_ce0),.x_8_q0(smem_8_q0),.x_9_address0(grp_loady8_fu_660_x_9_address0),.x_9_ce0(grp_loady8_fu_660_x_9_ce0),.x_9_q0(smem_9_q0),.x_10_address0(grp_loady8_fu_660_x_10_address0),.x_10_ce0(grp_loady8_fu_660_x_10_ce0),.x_10_q0(smem_10_q0),.x_11_address0(grp_loady8_fu_660_x_11_address0),.x_11_ce0(grp_loady8_fu_660_x_11_ce0),.x_11_q0(smem_11_q0),.x_12_address0(grp_loady8_fu_660_x_12_address0),.x_12_ce0(grp_loady8_fu_660_x_12_ce0),.x_12_q0(smem_12_q0),.x_13_address0(grp_loady8_fu_660_x_13_address0),.x_13_ce0(grp_loady8_fu_660_x_13_ce0),.x_13_q0(smem_13_q0),.x_14_address0(grp_loady8_fu_660_x_14_address0),.x_14_ce0(grp_loady8_fu_660_x_14_ce0),.x_14_q0(smem_14_q0),.x_15_address0(grp_loady8_fu_660_x_15_address0),.x_15_ce0(grp_loady8_fu_660_x_15_ce0),.x_15_q0(smem_15_q0),.x_16_address0(grp_loady8_fu_660_x_16_address0),.x_16_ce0(grp_loady8_fu_660_x_16_ce0),.x_16_q0(smem_16_q0),.x_17_address0(grp_loady8_fu_660_x_17_address0),.x_17_ce0(grp_loady8_fu_660_x_17_ce0),.x_17_q0(smem_17_q0),.x_18_address0(grp_loady8_fu_660_x_18_address0),.x_18_ce0(grp_loady8_fu_660_x_18_ce0),.x_18_q0(smem_18_q0),.x_19_address0(grp_loady8_fu_660_x_19_address0),.x_19_ce0(grp_loady8_fu_660_x_19_ce0),.x_19_q0(smem_19_q0),.x_20_address0(grp_loady8_fu_660_x_20_address0),.x_20_ce0(grp_loady8_fu_660_x_20_ce0),.x_20_q0(smem_20_q0),.x_21_address0(grp_loady8_fu_660_x_21_address0),.x_21_ce0(grp_loady8_fu_660_x_21_ce0),.x_21_q0(smem_21_q0),.x_22_address0(grp_loady8_fu_660_x_22_address0),.x_22_ce0(grp_loady8_fu_660_x_22_ce0),.x_22_q0(smem_22_q0),.x_23_address0(grp_loady8_fu_660_x_23_address0),.x_23_ce0(grp_loady8_fu_660_x_23_ce0),.x_23_q0(smem_23_q0),.x_24_address0(grp_loady8_fu_660_x_24_address0),.x_24_ce0(grp_loady8_fu_660_x_24_ce0),.x_24_q0(smem_24_q0),.x_25_address0(grp_loady8_fu_660_x_25_address0),.x_25_ce0(grp_loady8_fu_660_x_25_ce0),.x_25_q0(smem_25_q0),.x_26_address0(grp_loady8_fu_660_x_26_address0),.x_26_ce0(grp_loady8_fu_660_x_26_ce0),.x_26_q0(smem_26_q0),.x_27_address0(grp_loady8_fu_660_x_27_address0),.x_27_ce0(grp_loady8_fu_660_x_27_ce0),.x_27_q0(smem_27_q0),.x_28_address0(grp_loady8_fu_660_x_28_address0),.x_28_ce0(grp_loady8_fu_660_x_28_ce0),.x_28_q0(smem_28_q0),.x_29_address0(grp_loady8_fu_660_x_29_address0),.x_29_ce0(grp_loady8_fu_660_x_29_ce0),.x_29_q0(smem_29_q0),.x_30_address0(grp_loady8_fu_660_x_30_address0),.x_30_ce0(grp_loady8_fu_660_x_30_ce0),.x_30_q0(smem_30_q0),.x_31_address0(grp_loady8_fu_660_x_31_address0),.x_31_ce0(grp_loady8_fu_660_x_31_ce0),.x_31_q0(smem_31_q0),.x_32_address0(grp_loady8_fu_660_x_32_address0),.x_32_ce0(grp_loady8_fu_660_x_32_ce0),.x_32_q0(smem_32_q0),.x_33_address0(grp_loady8_fu_660_x_33_address0),.x_33_ce0(grp_loady8_fu_660_x_33_ce0),.x_33_q0(smem_33_q0),.x_34_address0(grp_loady8_fu_660_x_34_address0),.x_34_ce0(grp_loady8_fu_660_x_34_ce0),.x_34_q0(smem_34_q0),.x_35_address0(grp_loady8_fu_660_x_35_address0),.x_35_ce0(grp_loady8_fu_660_x_35_ce0),.x_35_q0(smem_35_q0),.x_36_address0(grp_loady8_fu_660_x_36_address0),.x_36_ce0(grp_loady8_fu_660_x_36_ce0),.x_36_q0(smem_36_q0),.x_37_address0(grp_loady8_fu_660_x_37_address0),.x_37_ce0(grp_loady8_fu_660_x_37_ce0),.x_37_q0(smem_37_q0),.x_38_address0(grp_loady8_fu_660_x_38_address0),.x_38_ce0(grp_loady8_fu_660_x_38_ce0),.x_38_q0(smem_38_q0),.x_39_address0(grp_loady8_fu_660_x_39_address0),.x_39_ce0(grp_loady8_fu_660_x_39_ce0),.x_39_q0(smem_39_q0),.x_40_address0(grp_loady8_fu_660_x_40_address0),.x_40_ce0(grp_loady8_fu_660_x_40_ce0),.x_40_q0(smem_40_q0),.x_41_address0(grp_loady8_fu_660_x_41_address0),.x_41_ce0(grp_loady8_fu_660_x_41_ce0),.x_41_q0(smem_41_q0),.x_42_address0(grp_loady8_fu_660_x_42_address0),.x_42_ce0(grp_loady8_fu_660_x_42_ce0),.x_42_q0(smem_42_q0),.x_43_address0(grp_loady8_fu_660_x_43_address0),.x_43_ce0(grp_loady8_fu_660_x_43_ce0),.x_43_q0(smem_43_q0),.x_44_address0(grp_loady8_fu_660_x_44_address0),.x_44_ce0(grp_loady8_fu_660_x_44_ce0),.x_44_q0(smem_44_q0),.x_45_address0(grp_loady8_fu_660_x_45_address0),.x_45_ce0(grp_loady8_fu_660_x_45_ce0),.x_45_q0(smem_45_q0),.x_46_address0(grp_loady8_fu_660_x_46_address0),.x_46_ce0(grp_loady8_fu_660_x_46_ce0),.x_46_q0(smem_46_q0),.x_47_address0(grp_loady8_fu_660_x_47_address0),.x_47_ce0(grp_loady8_fu_660_x_47_ce0),.x_47_q0(smem_47_q0),.x_48_address0(grp_loady8_fu_660_x_48_address0),.x_48_ce0(grp_loady8_fu_660_x_48_ce0),.x_48_q0(smem_48_q0),.x_49_address0(grp_loady8_fu_660_x_49_address0),.x_49_ce0(grp_loady8_fu_660_x_49_ce0),.x_49_q0(smem_49_q0),.x_50_address0(grp_loady8_fu_660_x_50_address0),.x_50_ce0(grp_loady8_fu_660_x_50_ce0),.x_50_q0(smem_50_q0),.x_51_address0(grp_loady8_fu_660_x_51_address0),.x_51_ce0(grp_loady8_fu_660_x_51_ce0),.x_51_q0(smem_51_q0),.x_52_address0(grp_loady8_fu_660_x_52_address0),.x_52_ce0(grp_loady8_fu_660_x_52_ce0),.x_52_q0(smem_52_q0),.x_53_address0(grp_loady8_fu_660_x_53_address0),.x_53_ce0(grp_loady8_fu_660_x_53_ce0),.x_53_q0(smem_53_q0),.x_54_address0(grp_loady8_fu_660_x_54_address0),.x_54_ce0(grp_loady8_fu_660_x_54_ce0),.x_54_q0(smem_54_q0),.x_55_address0(grp_loady8_fu_660_x_55_address0),.x_55_ce0(grp_loady8_fu_660_x_55_ce0),.x_55_q0(smem_55_q0),.x_56_address0(grp_loady8_fu_660_x_56_address0),.x_56_ce0(grp_loady8_fu_660_x_56_ce0),.x_56_q0(smem_56_q0),.x_57_address0(grp_loady8_fu_660_x_57_address0),.x_57_ce0(grp_loady8_fu_660_x_57_ce0),.x_57_q0(smem_57_q0),.x_58_address0(grp_loady8_fu_660_x_58_address0),.x_58_ce0(grp_loady8_fu_660_x_58_ce0),.x_58_q0(smem_58_q0),.x_59_address0(grp_loady8_fu_660_x_59_address0),.x_59_ce0(grp_loady8_fu_660_x_59_ce0),.x_59_q0(smem_59_q0),.x_60_address0(grp_loady8_fu_660_x_60_address0),.x_60_ce0(grp_loady8_fu_660_x_60_ce0),.x_60_q0(smem_60_q0),.x_61_address0(grp_loady8_fu_660_x_61_address0),.x_61_ce0(grp_loady8_fu_660_x_61_ce0),.x_61_q0(smem_61_q0),.x_62_address0(grp_loady8_fu_660_x_62_address0),.x_62_ce0(grp_loady8_fu_660_x_62_ce0),.x_62_q0(smem_62_q0),.x_63_address0(grp_loady8_fu_660_x_63_address0),.x_63_ce0(grp_loady8_fu_660_x_63_ce0),.x_63_q0(smem_63_q0),.x_64_address0(grp_loady8_fu_660_x_64_address0),.x_64_ce0(grp_loady8_fu_660_x_64_ce0),.x_64_q0(smem_64_q0),.offset(grp_loady8_fu_660_offset),.ap_return_0(grp_loady8_fu_660_ap_return_0),.ap_return_1(grp_loady8_fu_660_ap_return_1),.ap_return_2(grp_loady8_fu_660_ap_return_2),.ap_return_3(grp_loady8_fu_660_ap_return_3),.ap_return_4(grp_loady8_fu_660_ap_return_4),.ap_return_5(grp_loady8_fu_660_ap_return_5),.ap_return_6(grp_loady8_fu_660_ap_return_6),.ap_return_7(grp_loady8_fu_660_ap_return_7));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_660_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln340_fu_803_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_loady8_fu_660_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_660_ap_ready == 1'b1)) begin
            grp_loady8_fu_660_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln340_fu_803_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_240 <= add_ln340_fu_809_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_240 <= 7'd0;
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
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        data_y_0_reg_948 <= grp_loady8_fu_660_ap_return_0;
        data_y_1_reg_956 <= grp_loady8_fu_660_ap_return_1;
        data_y_2_reg_964 <= grp_loady8_fu_660_ap_return_2;
        data_y_3_reg_972 <= grp_loady8_fu_660_ap_return_3;
        data_y_4_reg_980 <= grp_loady8_fu_660_ap_return_4;
        data_y_5_reg_988 <= grp_loady8_fu_660_ap_return_5;
        data_y_6_reg_996 <= grp_loady8_fu_660_ap_return_6;
        data_y_7_reg_1004 <= grp_loady8_fu_660_ap_return_7;
        icmp_ln340_reg_935_pp0_iter10_reg <= icmp_ln340_reg_935_pp0_iter9_reg;
        icmp_ln340_reg_935_pp0_iter11_reg <= icmp_ln340_reg_935_pp0_iter10_reg;
        icmp_ln340_reg_935_pp0_iter12_reg <= icmp_ln340_reg_935_pp0_iter11_reg;
        icmp_ln340_reg_935_pp0_iter13_reg <= icmp_ln340_reg_935_pp0_iter12_reg;
        icmp_ln340_reg_935_pp0_iter14_reg <= icmp_ln340_reg_935_pp0_iter13_reg;
        icmp_ln340_reg_935_pp0_iter2_reg <= icmp_ln340_reg_935_pp0_iter1_reg;
        icmp_ln340_reg_935_pp0_iter3_reg <= icmp_ln340_reg_935_pp0_iter2_reg;
        icmp_ln340_reg_935_pp0_iter4_reg <= icmp_ln340_reg_935_pp0_iter3_reg;
        icmp_ln340_reg_935_pp0_iter5_reg <= icmp_ln340_reg_935_pp0_iter4_reg;
        icmp_ln340_reg_935_pp0_iter6_reg <= icmp_ln340_reg_935_pp0_iter5_reg;
        icmp_ln340_reg_935_pp0_iter7_reg <= icmp_ln340_reg_935_pp0_iter6_reg;
        icmp_ln340_reg_935_pp0_iter8_reg <= icmp_ln340_reg_935_pp0_iter7_reg;
        icmp_ln340_reg_935_pp0_iter9_reg <= icmp_ln340_reg_935_pp0_iter8_reg;
        lshr_ln_reg_943_pp0_iter10_reg <= lshr_ln_reg_943_pp0_iter9_reg;
        lshr_ln_reg_943_pp0_iter11_reg <= lshr_ln_reg_943_pp0_iter10_reg;
        lshr_ln_reg_943_pp0_iter12_reg <= lshr_ln_reg_943_pp0_iter11_reg;
        lshr_ln_reg_943_pp0_iter13_reg <= lshr_ln_reg_943_pp0_iter12_reg;
        lshr_ln_reg_943_pp0_iter14_reg <= lshr_ln_reg_943_pp0_iter13_reg;
        lshr_ln_reg_943_pp0_iter15_reg <= lshr_ln_reg_943_pp0_iter14_reg;
        lshr_ln_reg_943_pp0_iter2_reg <= lshr_ln_reg_943;
        lshr_ln_reg_943_pp0_iter3_reg <= lshr_ln_reg_943_pp0_iter2_reg;
        lshr_ln_reg_943_pp0_iter4_reg <= lshr_ln_reg_943_pp0_iter3_reg;
        lshr_ln_reg_943_pp0_iter5_reg <= lshr_ln_reg_943_pp0_iter4_reg;
        lshr_ln_reg_943_pp0_iter6_reg <= lshr_ln_reg_943_pp0_iter5_reg;
        lshr_ln_reg_943_pp0_iter7_reg <= lshr_ln_reg_943_pp0_iter6_reg;
        lshr_ln_reg_943_pp0_iter8_reg <= lshr_ln_reg_943_pp0_iter7_reg;
        lshr_ln_reg_943_pp0_iter9_reg <= lshr_ln_reg_943_pp0_iter8_reg;
        trunc_ln340_reg_939_pp0_iter10_reg <= trunc_ln340_reg_939_pp0_iter9_reg;
        trunc_ln340_reg_939_pp0_iter11_reg <= trunc_ln340_reg_939_pp0_iter10_reg;
        trunc_ln340_reg_939_pp0_iter12_reg <= trunc_ln340_reg_939_pp0_iter11_reg;
        trunc_ln340_reg_939_pp0_iter13_reg <= trunc_ln340_reg_939_pp0_iter12_reg;
        trunc_ln340_reg_939_pp0_iter14_reg <= trunc_ln340_reg_939_pp0_iter13_reg;
        trunc_ln340_reg_939_pp0_iter15_reg <= trunc_ln340_reg_939_pp0_iter14_reg;
        trunc_ln340_reg_939_pp0_iter2_reg <= trunc_ln340_reg_939;
        trunc_ln340_reg_939_pp0_iter3_reg <= trunc_ln340_reg_939_pp0_iter2_reg;
        trunc_ln340_reg_939_pp0_iter4_reg <= trunc_ln340_reg_939_pp0_iter3_reg;
        trunc_ln340_reg_939_pp0_iter5_reg <= trunc_ln340_reg_939_pp0_iter4_reg;
        trunc_ln340_reg_939_pp0_iter6_reg <= trunc_ln340_reg_939_pp0_iter5_reg;
        trunc_ln340_reg_939_pp0_iter7_reg <= trunc_ln340_reg_939_pp0_iter6_reg;
        trunc_ln340_reg_939_pp0_iter8_reg <= trunc_ln340_reg_939_pp0_iter7_reg;
        trunc_ln340_reg_939_pp0_iter9_reg <= trunc_ln340_reg_939_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln340_reg_935 <= icmp_ln340_fu_803_p2;
        icmp_ln340_reg_935_pp0_iter1_reg <= icmp_ln340_reg_935;
        lshr_ln_reg_943 <= {{tid_6_reg_927[5:2]}};
        tid_6_reg_927 <= ap_sig_allocacmp_tid_6;
        trunc_ln340_reg_939 <= trunc_ln340_fu_820_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd1) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_10_we0_local = 1'b1;
    end else begin
        DATA_y_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd1) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_11_we0_local = 1'b1;
    end else begin
        DATA_y_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd1) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_12_we0_local = 1'b1;
    end else begin
        DATA_y_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd1) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_13_we0_local = 1'b1;
    end else begin
        DATA_y_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd1) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_14_we0_local = 1'b1;
    end else begin
        DATA_y_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd1) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_15_we0_local = 1'b1;
    end else begin
        DATA_y_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_16_ce0_local = 1'b1;
    end else begin
        DATA_y_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd2) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_16_we0_local = 1'b1;
    end else begin
        DATA_y_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_17_ce0_local = 1'b1;
    end else begin
        DATA_y_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd2) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_17_we0_local = 1'b1;
    end else begin
        DATA_y_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_18_ce0_local = 1'b1;
    end else begin
        DATA_y_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd2) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_18_we0_local = 1'b1;
    end else begin
        DATA_y_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_19_ce0_local = 1'b1;
    end else begin
        DATA_y_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd2) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_19_we0_local = 1'b1;
    end else begin
        DATA_y_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd0) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_20_ce0_local = 1'b1;
    end else begin
        DATA_y_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd2) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_20_we0_local = 1'b1;
    end else begin
        DATA_y_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_21_ce0_local = 1'b1;
    end else begin
        DATA_y_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd2) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_21_we0_local = 1'b1;
    end else begin
        DATA_y_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_22_ce0_local = 1'b1;
    end else begin
        DATA_y_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd2) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_22_we0_local = 1'b1;
    end else begin
        DATA_y_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_23_ce0_local = 1'b1;
    end else begin
        DATA_y_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd2) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_23_we0_local = 1'b1;
    end else begin
        DATA_y_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_24_ce0_local = 1'b1;
    end else begin
        DATA_y_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd3) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_24_we0_local = 1'b1;
    end else begin
        DATA_y_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_25_ce0_local = 1'b1;
    end else begin
        DATA_y_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd3) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_25_we0_local = 1'b1;
    end else begin
        DATA_y_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_26_ce0_local = 1'b1;
    end else begin
        DATA_y_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd3) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_26_we0_local = 1'b1;
    end else begin
        DATA_y_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_27_ce0_local = 1'b1;
    end else begin
        DATA_y_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd3) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_27_we0_local = 1'b1;
    end else begin
        DATA_y_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_28_ce0_local = 1'b1;
    end else begin
        DATA_y_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd3) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_28_we0_local = 1'b1;
    end else begin
        DATA_y_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_29_ce0_local = 1'b1;
    end else begin
        DATA_y_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd3) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_29_we0_local = 1'b1;
    end else begin
        DATA_y_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd0) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_30_ce0_local = 1'b1;
    end else begin
        DATA_y_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd3) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_30_we0_local = 1'b1;
    end else begin
        DATA_y_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_31_ce0_local = 1'b1;
    end else begin
        DATA_y_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd3) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_31_we0_local = 1'b1;
    end else begin
        DATA_y_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd0) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd0) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_4_we0_local = 1'b1;
    end else begin
        DATA_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd0) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_5_we0_local = 1'b1;
    end else begin
        DATA_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd0) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_6_we0_local = 1'b1;
    end else begin
        DATA_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd0) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_7_we0_local = 1'b1;
    end else begin
        DATA_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd1) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_8_we0_local = 1'b1;
    end else begin
        DATA_y_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd1) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_9_we0_local = 1'b1;
    end else begin
        DATA_y_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln340_reg_939_pp0_iter15_reg == 2'd0) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln340_fu_803_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_tid_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_6 = tid_fu_240;
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
assign DATA_y_10_address0 = zext_ln341_fu_885_p1;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_10_d0 = data_y_2_reg_964;
assign DATA_y_10_we0 = DATA_y_10_we0_local;
assign DATA_y_11_address0 = zext_ln341_fu_885_p1;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_11_d0 = data_y_3_reg_972;
assign DATA_y_11_we0 = DATA_y_11_we0_local;
assign DATA_y_12_address0 = zext_ln341_fu_885_p1;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_12_d0 = data_y_4_reg_980;
assign DATA_y_12_we0 = DATA_y_12_we0_local;
assign DATA_y_13_address0 = zext_ln341_fu_885_p1;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_13_d0 = data_y_5_reg_988;
assign DATA_y_13_we0 = DATA_y_13_we0_local;
assign DATA_y_14_address0 = zext_ln341_fu_885_p1;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_14_d0 = data_y_6_reg_996;
assign DATA_y_14_we0 = DATA_y_14_we0_local;
assign DATA_y_15_address0 = zext_ln341_fu_885_p1;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_15_d0 = data_y_7_reg_1004;
assign DATA_y_15_we0 = DATA_y_15_we0_local;
assign DATA_y_16_address0 = zext_ln341_fu_885_p1;
assign DATA_y_16_ce0 = DATA_y_16_ce0_local;
assign DATA_y_16_d0 = data_y_0_reg_948;
assign DATA_y_16_we0 = DATA_y_16_we0_local;
assign DATA_y_17_address0 = zext_ln341_fu_885_p1;
assign DATA_y_17_ce0 = DATA_y_17_ce0_local;
assign DATA_y_17_d0 = data_y_1_reg_956;
assign DATA_y_17_we0 = DATA_y_17_we0_local;
assign DATA_y_18_address0 = zext_ln341_fu_885_p1;
assign DATA_y_18_ce0 = DATA_y_18_ce0_local;
assign DATA_y_18_d0 = data_y_2_reg_964;
assign DATA_y_18_we0 = DATA_y_18_we0_local;
assign DATA_y_19_address0 = zext_ln341_fu_885_p1;
assign DATA_y_19_ce0 = DATA_y_19_ce0_local;
assign DATA_y_19_d0 = data_y_3_reg_972;
assign DATA_y_19_we0 = DATA_y_19_we0_local;
assign DATA_y_1_address0 = zext_ln341_fu_885_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = data_y_1_reg_956;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_20_address0 = zext_ln341_fu_885_p1;
assign DATA_y_20_ce0 = DATA_y_20_ce0_local;
assign DATA_y_20_d0 = data_y_4_reg_980;
assign DATA_y_20_we0 = DATA_y_20_we0_local;
assign DATA_y_21_address0 = zext_ln341_fu_885_p1;
assign DATA_y_21_ce0 = DATA_y_21_ce0_local;
assign DATA_y_21_d0 = data_y_5_reg_988;
assign DATA_y_21_we0 = DATA_y_21_we0_local;
assign DATA_y_22_address0 = zext_ln341_fu_885_p1;
assign DATA_y_22_ce0 = DATA_y_22_ce0_local;
assign DATA_y_22_d0 = data_y_6_reg_996;
assign DATA_y_22_we0 = DATA_y_22_we0_local;
assign DATA_y_23_address0 = zext_ln341_fu_885_p1;
assign DATA_y_23_ce0 = DATA_y_23_ce0_local;
assign DATA_y_23_d0 = data_y_7_reg_1004;
assign DATA_y_23_we0 = DATA_y_23_we0_local;
assign DATA_y_24_address0 = zext_ln341_fu_885_p1;
assign DATA_y_24_ce0 = DATA_y_24_ce0_local;
assign DATA_y_24_d0 = data_y_0_reg_948;
assign DATA_y_24_we0 = DATA_y_24_we0_local;
assign DATA_y_25_address0 = zext_ln341_fu_885_p1;
assign DATA_y_25_ce0 = DATA_y_25_ce0_local;
assign DATA_y_25_d0 = data_y_1_reg_956;
assign DATA_y_25_we0 = DATA_y_25_we0_local;
assign DATA_y_26_address0 = zext_ln341_fu_885_p1;
assign DATA_y_26_ce0 = DATA_y_26_ce0_local;
assign DATA_y_26_d0 = data_y_2_reg_964;
assign DATA_y_26_we0 = DATA_y_26_we0_local;
assign DATA_y_27_address0 = zext_ln341_fu_885_p1;
assign DATA_y_27_ce0 = DATA_y_27_ce0_local;
assign DATA_y_27_d0 = data_y_3_reg_972;
assign DATA_y_27_we0 = DATA_y_27_we0_local;
assign DATA_y_28_address0 = zext_ln341_fu_885_p1;
assign DATA_y_28_ce0 = DATA_y_28_ce0_local;
assign DATA_y_28_d0 = data_y_4_reg_980;
assign DATA_y_28_we0 = DATA_y_28_we0_local;
assign DATA_y_29_address0 = zext_ln341_fu_885_p1;
assign DATA_y_29_ce0 = DATA_y_29_ce0_local;
assign DATA_y_29_d0 = data_y_5_reg_988;
assign DATA_y_29_we0 = DATA_y_29_we0_local;
assign DATA_y_2_address0 = zext_ln341_fu_885_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = data_y_2_reg_964;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_30_address0 = zext_ln341_fu_885_p1;
assign DATA_y_30_ce0 = DATA_y_30_ce0_local;
assign DATA_y_30_d0 = data_y_6_reg_996;
assign DATA_y_30_we0 = DATA_y_30_we0_local;
assign DATA_y_31_address0 = zext_ln341_fu_885_p1;
assign DATA_y_31_ce0 = DATA_y_31_ce0_local;
assign DATA_y_31_d0 = data_y_7_reg_1004;
assign DATA_y_31_we0 = DATA_y_31_we0_local;
assign DATA_y_3_address0 = zext_ln341_fu_885_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = data_y_3_reg_972;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = zext_ln341_fu_885_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = data_y_4_reg_980;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = zext_ln341_fu_885_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = data_y_5_reg_988;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = zext_ln341_fu_885_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = data_y_6_reg_996;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = zext_ln341_fu_885_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = data_y_7_reg_1004;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_8_address0 = zext_ln341_fu_885_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_8_d0 = data_y_0_reg_948;
assign DATA_y_8_we0 = DATA_y_8_we0_local;
assign DATA_y_9_address0 = zext_ln341_fu_885_p1;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_9_d0 = data_y_1_reg_956;
assign DATA_y_9_we0 = DATA_y_9_we0_local;
assign DATA_y_address0 = zext_ln341_fu_885_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_d0 = data_y_0_reg_948;
assign DATA_y_we0 = DATA_y_we0_local;
assign add_ln340_fu_809_p2 = (ap_sig_allocacmp_tid_6 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp34 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp48 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp49 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_loady8_fu_660_ap_start = grp_loady8_fu_660_ap_start_reg;
assign grp_loady8_fu_660_offset = {{tmp_fu_832_p4}, {trunc_ln353_fu_841_p1}};
assign icmp_ln340_fu_803_p2 = ((ap_sig_allocacmp_tid_6 == 7'd64) ? 1'b1 : 1'b0);
assign smem_10_address0 = grp_loady8_fu_660_x_10_address0;
assign smem_10_ce0 = grp_loady8_fu_660_x_10_ce0;
assign smem_11_address0 = grp_loady8_fu_660_x_11_address0;
assign smem_11_ce0 = grp_loady8_fu_660_x_11_ce0;
assign smem_12_address0 = grp_loady8_fu_660_x_12_address0;
assign smem_12_ce0 = grp_loady8_fu_660_x_12_ce0;
assign smem_13_address0 = grp_loady8_fu_660_x_13_address0;
assign smem_13_ce0 = grp_loady8_fu_660_x_13_ce0;
assign smem_14_address0 = grp_loady8_fu_660_x_14_address0;
assign smem_14_ce0 = grp_loady8_fu_660_x_14_ce0;
assign smem_15_address0 = grp_loady8_fu_660_x_15_address0;
assign smem_15_ce0 = grp_loady8_fu_660_x_15_ce0;
assign smem_16_address0 = grp_loady8_fu_660_x_16_address0;
assign smem_16_ce0 = grp_loady8_fu_660_x_16_ce0;
assign smem_17_address0 = grp_loady8_fu_660_x_17_address0;
assign smem_17_ce0 = grp_loady8_fu_660_x_17_ce0;
assign smem_18_address0 = grp_loady8_fu_660_x_18_address0;
assign smem_18_ce0 = grp_loady8_fu_660_x_18_ce0;
assign smem_19_address0 = grp_loady8_fu_660_x_19_address0;
assign smem_19_ce0 = grp_loady8_fu_660_x_19_ce0;
assign smem_1_address0 = grp_loady8_fu_660_x_1_address0;
assign smem_1_ce0 = grp_loady8_fu_660_x_1_ce0;
assign smem_20_address0 = grp_loady8_fu_660_x_20_address0;
assign smem_20_ce0 = grp_loady8_fu_660_x_20_ce0;
assign smem_21_address0 = grp_loady8_fu_660_x_21_address0;
assign smem_21_ce0 = grp_loady8_fu_660_x_21_ce0;
assign smem_22_address0 = grp_loady8_fu_660_x_22_address0;
assign smem_22_ce0 = grp_loady8_fu_660_x_22_ce0;
assign smem_23_address0 = grp_loady8_fu_660_x_23_address0;
assign smem_23_ce0 = grp_loady8_fu_660_x_23_ce0;
assign smem_24_address0 = grp_loady8_fu_660_x_24_address0;
assign smem_24_ce0 = grp_loady8_fu_660_x_24_ce0;
assign smem_25_address0 = grp_loady8_fu_660_x_25_address0;
assign smem_25_ce0 = grp_loady8_fu_660_x_25_ce0;
assign smem_26_address0 = grp_loady8_fu_660_x_26_address0;
assign smem_26_ce0 = grp_loady8_fu_660_x_26_ce0;
assign smem_27_address0 = grp_loady8_fu_660_x_27_address0;
assign smem_27_ce0 = grp_loady8_fu_660_x_27_ce0;
assign smem_28_address0 = grp_loady8_fu_660_x_28_address0;
assign smem_28_ce0 = grp_loady8_fu_660_x_28_ce0;
assign smem_29_address0 = grp_loady8_fu_660_x_29_address0;
assign smem_29_ce0 = grp_loady8_fu_660_x_29_ce0;
assign smem_2_address0 = grp_loady8_fu_660_x_2_address0;
assign smem_2_ce0 = grp_loady8_fu_660_x_2_ce0;
assign smem_30_address0 = grp_loady8_fu_660_x_30_address0;
assign smem_30_ce0 = grp_loady8_fu_660_x_30_ce0;
assign smem_31_address0 = grp_loady8_fu_660_x_31_address0;
assign smem_31_ce0 = grp_loady8_fu_660_x_31_ce0;
assign smem_32_address0 = grp_loady8_fu_660_x_32_address0;
assign smem_32_ce0 = grp_loady8_fu_660_x_32_ce0;
assign smem_33_address0 = grp_loady8_fu_660_x_33_address0;
assign smem_33_ce0 = grp_loady8_fu_660_x_33_ce0;
assign smem_34_address0 = grp_loady8_fu_660_x_34_address0;
assign smem_34_ce0 = grp_loady8_fu_660_x_34_ce0;
assign smem_35_address0 = grp_loady8_fu_660_x_35_address0;
assign smem_35_ce0 = grp_loady8_fu_660_x_35_ce0;
assign smem_36_address0 = grp_loady8_fu_660_x_36_address0;
assign smem_36_ce0 = grp_loady8_fu_660_x_36_ce0;
assign smem_37_address0 = grp_loady8_fu_660_x_37_address0;
assign smem_37_ce0 = grp_loady8_fu_660_x_37_ce0;
assign smem_38_address0 = grp_loady8_fu_660_x_38_address0;
assign smem_38_ce0 = grp_loady8_fu_660_x_38_ce0;
assign smem_39_address0 = grp_loady8_fu_660_x_39_address0;
assign smem_39_ce0 = grp_loady8_fu_660_x_39_ce0;
assign smem_3_address0 = grp_loady8_fu_660_x_3_address0;
assign smem_3_ce0 = grp_loady8_fu_660_x_3_ce0;
assign smem_40_address0 = grp_loady8_fu_660_x_40_address0;
assign smem_40_ce0 = grp_loady8_fu_660_x_40_ce0;
assign smem_41_address0 = grp_loady8_fu_660_x_41_address0;
assign smem_41_ce0 = grp_loady8_fu_660_x_41_ce0;
assign smem_42_address0 = grp_loady8_fu_660_x_42_address0;
assign smem_42_ce0 = grp_loady8_fu_660_x_42_ce0;
assign smem_43_address0 = grp_loady8_fu_660_x_43_address0;
assign smem_43_ce0 = grp_loady8_fu_660_x_43_ce0;
assign smem_44_address0 = grp_loady8_fu_660_x_44_address0;
assign smem_44_ce0 = grp_loady8_fu_660_x_44_ce0;
assign smem_45_address0 = grp_loady8_fu_660_x_45_address0;
assign smem_45_ce0 = grp_loady8_fu_660_x_45_ce0;
assign smem_46_address0 = grp_loady8_fu_660_x_46_address0;
assign smem_46_ce0 = grp_loady8_fu_660_x_46_ce0;
assign smem_47_address0 = grp_loady8_fu_660_x_47_address0;
assign smem_47_ce0 = grp_loady8_fu_660_x_47_ce0;
assign smem_48_address0 = grp_loady8_fu_660_x_48_address0;
assign smem_48_ce0 = grp_loady8_fu_660_x_48_ce0;
assign smem_49_address0 = grp_loady8_fu_660_x_49_address0;
assign smem_49_ce0 = grp_loady8_fu_660_x_49_ce0;
assign smem_4_address0 = grp_loady8_fu_660_x_4_address0;
assign smem_4_ce0 = grp_loady8_fu_660_x_4_ce0;
assign smem_50_address0 = grp_loady8_fu_660_x_50_address0;
assign smem_50_ce0 = grp_loady8_fu_660_x_50_ce0;
assign smem_51_address0 = grp_loady8_fu_660_x_51_address0;
assign smem_51_ce0 = grp_loady8_fu_660_x_51_ce0;
assign smem_52_address0 = grp_loady8_fu_660_x_52_address0;
assign smem_52_ce0 = grp_loady8_fu_660_x_52_ce0;
assign smem_53_address0 = grp_loady8_fu_660_x_53_address0;
assign smem_53_ce0 = grp_loady8_fu_660_x_53_ce0;
assign smem_54_address0 = grp_loady8_fu_660_x_54_address0;
assign smem_54_ce0 = grp_loady8_fu_660_x_54_ce0;
assign smem_55_address0 = grp_loady8_fu_660_x_55_address0;
assign smem_55_ce0 = grp_loady8_fu_660_x_55_ce0;
assign smem_56_address0 = grp_loady8_fu_660_x_56_address0;
assign smem_56_ce0 = grp_loady8_fu_660_x_56_ce0;
assign smem_57_address0 = grp_loady8_fu_660_x_57_address0;
assign smem_57_ce0 = grp_loady8_fu_660_x_57_ce0;
assign smem_58_address0 = grp_loady8_fu_660_x_58_address0;
assign smem_58_ce0 = grp_loady8_fu_660_x_58_ce0;
assign smem_59_address0 = grp_loady8_fu_660_x_59_address0;
assign smem_59_ce0 = grp_loady8_fu_660_x_59_ce0;
assign smem_5_address0 = grp_loady8_fu_660_x_5_address0;
assign smem_5_ce0 = grp_loady8_fu_660_x_5_ce0;
assign smem_60_address0 = grp_loady8_fu_660_x_60_address0;
assign smem_60_ce0 = grp_loady8_fu_660_x_60_ce0;
assign smem_61_address0 = grp_loady8_fu_660_x_61_address0;
assign smem_61_ce0 = grp_loady8_fu_660_x_61_ce0;
assign smem_62_address0 = grp_loady8_fu_660_x_62_address0;
assign smem_62_ce0 = grp_loady8_fu_660_x_62_ce0;
assign smem_63_address0 = grp_loady8_fu_660_x_63_address0;
assign smem_63_ce0 = grp_loady8_fu_660_x_63_ce0;
assign smem_64_address0 = grp_loady8_fu_660_x_64_address0;
assign smem_64_ce0 = grp_loady8_fu_660_x_64_ce0;
assign smem_6_address0 = grp_loady8_fu_660_x_6_address0;
assign smem_6_ce0 = grp_loady8_fu_660_x_6_ce0;
assign smem_7_address0 = grp_loady8_fu_660_x_7_address0;
assign smem_7_ce0 = grp_loady8_fu_660_x_7_ce0;
assign smem_8_address0 = grp_loady8_fu_660_x_8_address0;
assign smem_8_ce0 = grp_loady8_fu_660_x_8_ce0;
assign smem_9_address0 = grp_loady8_fu_660_x_9_address0;
assign smem_9_ce0 = grp_loady8_fu_660_x_9_ce0;
assign smem_address0 = grp_loady8_fu_660_x_0_address0;
assign smem_ce0 = grp_loady8_fu_660_x_0_ce0;
assign tmp_fu_832_p4 = {{tid_6_reg_927[5:3]}};
assign trunc_ln340_fu_820_p1 = tid_6_reg_927[1:0];
assign trunc_ln353_fu_841_p1 = tid_6_reg_927[5:0];
assign zext_ln341_fu_885_p1 = lshr_ln_reg_943_pp0_iter15_reg;
endmodule 