module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_8_address0,delta_weights1_8_ce0,delta_weights1_8_we0,delta_weights1_8_d0,delta_weights1_9_address0,delta_weights1_9_ce0,delta_weights1_9_we0,delta_weights1_9_d0,delta_weights1_10_address0,delta_weights1_10_ce0,delta_weights1_10_we0,delta_weights1_10_d0,delta_weights1_11_address0,delta_weights1_11_ce0,delta_weights1_11_we0,delta_weights1_11_d0,delta_weights1_12_address0,delta_weights1_12_ce0,delta_weights1_12_we0,delta_weights1_12_d0,delta_weights1_13_address0,delta_weights1_13_ce0,delta_weights1_13_we0,delta_weights1_13_d0,delta_weights1_14_address0,delta_weights1_14_ce0,delta_weights1_14_we0,delta_weights1_14_d0,delta_weights1_15_address0,delta_weights1_15_ce0,delta_weights1_15_we0,delta_weights1_15_d0,delta_weights1_16_address0,delta_weights1_16_ce0,delta_weights1_16_we0,delta_weights1_16_d0,delta_weights1_17_address0,delta_weights1_17_ce0,delta_weights1_17_we0,delta_weights1_17_d0,delta_weights1_18_address0,delta_weights1_18_ce0,delta_weights1_18_we0,delta_weights1_18_d0,delta_weights1_19_address0,delta_weights1_19_ce0,delta_weights1_19_we0,delta_weights1_19_d0,delta_weights1_20_address0,delta_weights1_20_ce0,delta_weights1_20_we0,delta_weights1_20_d0,delta_weights1_21_address0,delta_weights1_21_ce0,delta_weights1_21_we0,delta_weights1_21_d0,delta_weights1_22_address0,delta_weights1_22_ce0,delta_weights1_22_we0,delta_weights1_22_d0,delta_weights1_23_address0,delta_weights1_23_ce0,delta_weights1_23_we0,delta_weights1_23_d0,delta_weights1_24_address0,delta_weights1_24_ce0,delta_weights1_24_we0,delta_weights1_24_d0,delta_weights1_25_address0,delta_weights1_25_ce0,delta_weights1_25_we0,delta_weights1_25_d0,delta_weights1_26_address0,delta_weights1_26_ce0,delta_weights1_26_we0,delta_weights1_26_d0,delta_weights1_27_address0,delta_weights1_27_ce0,delta_weights1_27_we0,delta_weights1_27_d0,delta_weights1_28_address0,delta_weights1_28_ce0,delta_weights1_28_we0,delta_weights1_28_d0,delta_weights1_29_address0,delta_weights1_29_ce0,delta_weights1_29_we0,delta_weights1_29_d0,delta_weights1_30_address0,delta_weights1_30_ce0,delta_weights1_30_we0,delta_weights1_30_d0,delta_weights1_31_address0,delta_weights1_31_ce0,delta_weights1_31_we0,delta_weights1_31_d0,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_4_address0,output_difference_4_ce0,output_difference_4_q0,output_difference_5_address0,output_difference_5_ce0,output_difference_5_q0,output_difference_6_address0,output_difference_6_ce0,output_difference_6_q0,output_difference_7_address0,output_difference_7_ce0,output_difference_7_q0,output_difference_8_address0,output_difference_8_ce0,output_difference_8_q0,output_difference_9_address0,output_difference_9_ce0,output_difference_9_q0,output_difference_10_address0,output_difference_10_ce0,output_difference_10_q0,output_difference_11_address0,output_difference_11_ce0,output_difference_11_q0,output_difference_12_address0,output_difference_12_ce0,output_difference_12_q0,output_difference_13_address0,output_difference_13_ce0,output_difference_13_q0,output_difference_14_address0,output_difference_14_ce0,output_difference_14_q0,output_difference_15_address0,output_difference_15_ce0,output_difference_15_q0,output_difference_16_address0,output_difference_16_ce0,output_difference_16_q0,output_difference_17_address0,output_difference_17_ce0,output_difference_17_q0,output_difference_18_address0,output_difference_18_ce0,output_difference_18_q0,output_difference_19_address0,output_difference_19_ce0,output_difference_19_q0,output_difference_20_address0,output_difference_20_ce0,output_difference_20_q0,output_difference_21_address0,output_difference_21_ce0,output_difference_21_q0,output_difference_22_address0,output_difference_22_ce0,output_difference_22_q0,output_difference_23_address0,output_difference_23_ce0,output_difference_23_q0,output_difference_24_address0,output_difference_24_ce0,output_difference_24_q0,output_difference_25_address0,output_difference_25_ce0,output_difference_25_q0,output_difference_26_address0,output_difference_26_ce0,output_difference_26_q0,output_difference_27_address0,output_difference_27_ce0,output_difference_27_q0,output_difference_28_address0,output_difference_28_ce0,output_difference_28_q0,output_difference_29_address0,output_difference_29_ce0,output_difference_29_q0,output_difference_30_address0,output_difference_30_ce0,output_difference_30_q0,output_difference_31_address0,output_difference_31_ce0,output_difference_31_q0,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,training_data_8_address0,training_data_8_ce0,training_data_8_q0,training_data_9_address0,training_data_9_ce0,training_data_9_q0,training_data_10_address0,training_data_10_ce0,training_data_10_q0,training_data_11_address0,training_data_11_ce0,training_data_11_q0,training_data_12_address0,training_data_12_ce0,training_data_12_q0,training_data_13_address0,training_data_13_ce0,training_data_13_q0,training_data_14_address0,training_data_14_ce0,training_data_14_q0,training_data_15_address0,training_data_15_ce0,training_data_15_q0,training_data_16_address0,training_data_16_ce0,training_data_16_q0,training_data_17_address0,training_data_17_ce0,training_data_17_q0,training_data_18_address0,training_data_18_ce0,training_data_18_q0,training_data_19_address0,training_data_19_ce0,training_data_19_q0,training_data_20_address0,training_data_20_ce0,training_data_20_q0,training_data_21_address0,training_data_21_ce0,training_data_21_q0,training_data_22_address0,training_data_22_ce0,training_data_22_q0,training_data_23_address0,training_data_23_ce0,training_data_23_q0,training_data_24_address0,training_data_24_ce0,training_data_24_q0,training_data_25_address0,training_data_25_ce0,training_data_25_q0,training_data_26_address0,training_data_26_ce0,training_data_26_q0,training_data_27_address0,training_data_27_ce0,training_data_27_q0,training_data_28_address0,training_data_28_ce0,training_data_28_q0,training_data_29_address0,training_data_29_ce0,training_data_29_q0,training_data_30_address0,training_data_30_ce0,training_data_30_q0,training_data_31_address0,training_data_31_ce0,training_data_31_q0,idx,grp_fu_6784_p_din0,grp_fu_6784_p_din1,grp_fu_6784_p_dout0,grp_fu_6784_p_ce,grp_fu_6788_p_din0,grp_fu_6788_p_din1,grp_fu_6788_p_dout0,grp_fu_6788_p_ce,grp_fu_6792_p_din0,grp_fu_6792_p_din1,grp_fu_6792_p_dout0,grp_fu_6792_p_ce,grp_fu_6796_p_din0,grp_fu_6796_p_din1,grp_fu_6796_p_dout0,grp_fu_6796_p_ce,grp_fu_6800_p_din0,grp_fu_6800_p_din1,grp_fu_6800_p_dout0,grp_fu_6800_p_ce,grp_fu_6804_p_din0,grp_fu_6804_p_din1,grp_fu_6804_p_dout0,grp_fu_6804_p_ce,grp_fu_6808_p_din0,grp_fu_6808_p_din1,grp_fu_6808_p_dout0,grp_fu_6808_p_ce,grp_fu_6812_p_din0,grp_fu_6812_p_din1,grp_fu_6812_p_dout0,grp_fu_6812_p_ce,grp_fu_6816_p_din0,grp_fu_6816_p_din1,grp_fu_6816_p_dout0,grp_fu_6816_p_ce,grp_fu_6820_p_din0,grp_fu_6820_p_din1,grp_fu_6820_p_dout0,grp_fu_6820_p_ce,grp_fu_6824_p_din0,grp_fu_6824_p_din1,grp_fu_6824_p_dout0,grp_fu_6824_p_ce,grp_fu_6828_p_din0,grp_fu_6828_p_din1,grp_fu_6828_p_dout0,grp_fu_6828_p_ce,grp_fu_6832_p_din0,grp_fu_6832_p_din1,grp_fu_6832_p_dout0,grp_fu_6832_p_ce,grp_fu_6836_p_din0,grp_fu_6836_p_din1,grp_fu_6836_p_dout0,grp_fu_6836_p_ce,grp_fu_6840_p_din0,grp_fu_6840_p_din1,grp_fu_6840_p_dout0,grp_fu_6840_p_ce,grp_fu_6844_p_din0,grp_fu_6844_p_din1,grp_fu_6844_p_dout0,grp_fu_6844_p_ce,grp_fu_6848_p_din0,grp_fu_6848_p_din1,grp_fu_6848_p_dout0,grp_fu_6848_p_ce,grp_fu_6852_p_din0,grp_fu_6852_p_din1,grp_fu_6852_p_dout0,grp_fu_6852_p_ce,grp_fu_6856_p_din0,grp_fu_6856_p_din1,grp_fu_6856_p_dout0,grp_fu_6856_p_ce,grp_fu_6860_p_din0,grp_fu_6860_p_din1,grp_fu_6860_p_dout0,grp_fu_6860_p_ce,grp_fu_6864_p_din0,grp_fu_6864_p_din1,grp_fu_6864_p_dout0,grp_fu_6864_p_ce,grp_fu_6868_p_din0,grp_fu_6868_p_din1,grp_fu_6868_p_dout0,grp_fu_6868_p_ce,grp_fu_6872_p_din0,grp_fu_6872_p_din1,grp_fu_6872_p_dout0,grp_fu_6872_p_ce,grp_fu_6876_p_din0,grp_fu_6876_p_din1,grp_fu_6876_p_dout0,grp_fu_6876_p_ce,grp_fu_6880_p_din0,grp_fu_6880_p_din1,grp_fu_6880_p_dout0,grp_fu_6880_p_ce,grp_fu_6884_p_din0,grp_fu_6884_p_din1,grp_fu_6884_p_dout0,grp_fu_6884_p_ce,grp_fu_6888_p_din0,grp_fu_6888_p_din1,grp_fu_6888_p_dout0,grp_fu_6888_p_ce,grp_fu_6892_p_din0,grp_fu_6892_p_din1,grp_fu_6892_p_dout0,grp_fu_6892_p_ce,grp_fu_6896_p_din0,grp_fu_6896_p_din1,grp_fu_6896_p_dout0,grp_fu_6896_p_ce,grp_fu_6900_p_din0,grp_fu_6900_p_din1,grp_fu_6900_p_dout0,grp_fu_6900_p_ce,grp_fu_6904_p_din0,grp_fu_6904_p_din1,grp_fu_6904_p_dout0,grp_fu_6904_p_ce,grp_fu_6908_p_din0,grp_fu_6908_p_din1,grp_fu_6908_p_dout0,grp_fu_6908_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [4:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [4:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [4:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [4:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [4:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [4:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [4:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [4:0] delta_weights1_8_address0;
output   delta_weights1_8_ce0;
output   delta_weights1_8_we0;
output  [63:0] delta_weights1_8_d0;
output  [4:0] delta_weights1_9_address0;
output   delta_weights1_9_ce0;
output   delta_weights1_9_we0;
output  [63:0] delta_weights1_9_d0;
output  [4:0] delta_weights1_10_address0;
output   delta_weights1_10_ce0;
output   delta_weights1_10_we0;
output  [63:0] delta_weights1_10_d0;
output  [4:0] delta_weights1_11_address0;
output   delta_weights1_11_ce0;
output   delta_weights1_11_we0;
output  [63:0] delta_weights1_11_d0;
output  [4:0] delta_weights1_12_address0;
output   delta_weights1_12_ce0;
output   delta_weights1_12_we0;
output  [63:0] delta_weights1_12_d0;
output  [4:0] delta_weights1_13_address0;
output   delta_weights1_13_ce0;
output   delta_weights1_13_we0;
output  [63:0] delta_weights1_13_d0;
output  [4:0] delta_weights1_14_address0;
output   delta_weights1_14_ce0;
output   delta_weights1_14_we0;
output  [63:0] delta_weights1_14_d0;
output  [4:0] delta_weights1_15_address0;
output   delta_weights1_15_ce0;
output   delta_weights1_15_we0;
output  [63:0] delta_weights1_15_d0;
output  [4:0] delta_weights1_16_address0;
output   delta_weights1_16_ce0;
output   delta_weights1_16_we0;
output  [63:0] delta_weights1_16_d0;
output  [4:0] delta_weights1_17_address0;
output   delta_weights1_17_ce0;
output   delta_weights1_17_we0;
output  [63:0] delta_weights1_17_d0;
output  [4:0] delta_weights1_18_address0;
output   delta_weights1_18_ce0;
output   delta_weights1_18_we0;
output  [63:0] delta_weights1_18_d0;
output  [4:0] delta_weights1_19_address0;
output   delta_weights1_19_ce0;
output   delta_weights1_19_we0;
output  [63:0] delta_weights1_19_d0;
output  [4:0] delta_weights1_20_address0;
output   delta_weights1_20_ce0;
output   delta_weights1_20_we0;
output  [63:0] delta_weights1_20_d0;
output  [4:0] delta_weights1_21_address0;
output   delta_weights1_21_ce0;
output   delta_weights1_21_we0;
output  [63:0] delta_weights1_21_d0;
output  [4:0] delta_weights1_22_address0;
output   delta_weights1_22_ce0;
output   delta_weights1_22_we0;
output  [63:0] delta_weights1_22_d0;
output  [4:0] delta_weights1_23_address0;
output   delta_weights1_23_ce0;
output   delta_weights1_23_we0;
output  [63:0] delta_weights1_23_d0;
output  [4:0] delta_weights1_24_address0;
output   delta_weights1_24_ce0;
output   delta_weights1_24_we0;
output  [63:0] delta_weights1_24_d0;
output  [4:0] delta_weights1_25_address0;
output   delta_weights1_25_ce0;
output   delta_weights1_25_we0;
output  [63:0] delta_weights1_25_d0;
output  [4:0] delta_weights1_26_address0;
output   delta_weights1_26_ce0;
output   delta_weights1_26_we0;
output  [63:0] delta_weights1_26_d0;
output  [4:0] delta_weights1_27_address0;
output   delta_weights1_27_ce0;
output   delta_weights1_27_we0;
output  [63:0] delta_weights1_27_d0;
output  [4:0] delta_weights1_28_address0;
output   delta_weights1_28_ce0;
output   delta_weights1_28_we0;
output  [63:0] delta_weights1_28_d0;
output  [4:0] delta_weights1_29_address0;
output   delta_weights1_29_ce0;
output   delta_weights1_29_we0;
output  [63:0] delta_weights1_29_d0;
output  [4:0] delta_weights1_30_address0;
output   delta_weights1_30_ce0;
output   delta_weights1_30_we0;
output  [63:0] delta_weights1_30_d0;
output  [4:0] delta_weights1_31_address0;
output   delta_weights1_31_ce0;
output   delta_weights1_31_we0;
output  [63:0] delta_weights1_31_d0;
output  [0:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [0:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [0:0] output_difference_2_address0;
output   output_difference_2_ce0;
input  [63:0] output_difference_2_q0;
output  [0:0] output_difference_3_address0;
output   output_difference_3_ce0;
input  [63:0] output_difference_3_q0;
output  [0:0] output_difference_4_address0;
output   output_difference_4_ce0;
input  [63:0] output_difference_4_q0;
output  [0:0] output_difference_5_address0;
output   output_difference_5_ce0;
input  [63:0] output_difference_5_q0;
output  [0:0] output_difference_6_address0;
output   output_difference_6_ce0;
input  [63:0] output_difference_6_q0;
output  [0:0] output_difference_7_address0;
output   output_difference_7_ce0;
input  [63:0] output_difference_7_q0;
output  [0:0] output_difference_8_address0;
output   output_difference_8_ce0;
input  [63:0] output_difference_8_q0;
output  [0:0] output_difference_9_address0;
output   output_difference_9_ce0;
input  [63:0] output_difference_9_q0;
output  [0:0] output_difference_10_address0;
output   output_difference_10_ce0;
input  [63:0] output_difference_10_q0;
output  [0:0] output_difference_11_address0;
output   output_difference_11_ce0;
input  [63:0] output_difference_11_q0;
output  [0:0] output_difference_12_address0;
output   output_difference_12_ce0;
input  [63:0] output_difference_12_q0;
output  [0:0] output_difference_13_address0;
output   output_difference_13_ce0;
input  [63:0] output_difference_13_q0;
output  [0:0] output_difference_14_address0;
output   output_difference_14_ce0;
input  [63:0] output_difference_14_q0;
output  [0:0] output_difference_15_address0;
output   output_difference_15_ce0;
input  [63:0] output_difference_15_q0;
output  [0:0] output_difference_16_address0;
output   output_difference_16_ce0;
input  [63:0] output_difference_16_q0;
output  [0:0] output_difference_17_address0;
output   output_difference_17_ce0;
input  [63:0] output_difference_17_q0;
output  [0:0] output_difference_18_address0;
output   output_difference_18_ce0;
input  [63:0] output_difference_18_q0;
output  [0:0] output_difference_19_address0;
output   output_difference_19_ce0;
input  [63:0] output_difference_19_q0;
output  [0:0] output_difference_20_address0;
output   output_difference_20_ce0;
input  [63:0] output_difference_20_q0;
output  [0:0] output_difference_21_address0;
output   output_difference_21_ce0;
input  [63:0] output_difference_21_q0;
output  [0:0] output_difference_22_address0;
output   output_difference_22_ce0;
input  [63:0] output_difference_22_q0;
output  [0:0] output_difference_23_address0;
output   output_difference_23_ce0;
input  [63:0] output_difference_23_q0;
output  [0:0] output_difference_24_address0;
output   output_difference_24_ce0;
input  [63:0] output_difference_24_q0;
output  [0:0] output_difference_25_address0;
output   output_difference_25_ce0;
input  [63:0] output_difference_25_q0;
output  [0:0] output_difference_26_address0;
output   output_difference_26_ce0;
input  [63:0] output_difference_26_q0;
output  [0:0] output_difference_27_address0;
output   output_difference_27_ce0;
input  [63:0] output_difference_27_q0;
output  [0:0] output_difference_28_address0;
output   output_difference_28_ce0;
input  [63:0] output_difference_28_q0;
output  [0:0] output_difference_29_address0;
output   output_difference_29_ce0;
input  [63:0] output_difference_29_q0;
output  [0:0] output_difference_30_address0;
output   output_difference_30_ce0;
input  [63:0] output_difference_30_q0;
output  [0:0] output_difference_31_address0;
output   output_difference_31_ce0;
input  [63:0] output_difference_31_q0;
output  [6:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [6:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [6:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [6:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [6:0] training_data_4_address0;
output   training_data_4_ce0;
input  [63:0] training_data_4_q0;
output  [6:0] training_data_5_address0;
output   training_data_5_ce0;
input  [63:0] training_data_5_q0;
output  [6:0] training_data_6_address0;
output   training_data_6_ce0;
input  [63:0] training_data_6_q0;
output  [6:0] training_data_7_address0;
output   training_data_7_ce0;
input  [63:0] training_data_7_q0;
output  [6:0] training_data_8_address0;
output   training_data_8_ce0;
input  [63:0] training_data_8_q0;
output  [6:0] training_data_9_address0;
output   training_data_9_ce0;
input  [63:0] training_data_9_q0;
output  [6:0] training_data_10_address0;
output   training_data_10_ce0;
input  [63:0] training_data_10_q0;
output  [6:0] training_data_11_address0;
output   training_data_11_ce0;
input  [63:0] training_data_11_q0;
output  [6:0] training_data_12_address0;
output   training_data_12_ce0;
input  [63:0] training_data_12_q0;
output  [6:0] training_data_13_address0;
output   training_data_13_ce0;
input  [63:0] training_data_13_q0;
output  [6:0] training_data_14_address0;
output   training_data_14_ce0;
input  [63:0] training_data_14_q0;
output  [6:0] training_data_15_address0;
output   training_data_15_ce0;
input  [63:0] training_data_15_q0;
output  [6:0] training_data_16_address0;
output   training_data_16_ce0;
input  [63:0] training_data_16_q0;
output  [6:0] training_data_17_address0;
output   training_data_17_ce0;
input  [63:0] training_data_17_q0;
output  [6:0] training_data_18_address0;
output   training_data_18_ce0;
input  [63:0] training_data_18_q0;
output  [6:0] training_data_19_address0;
output   training_data_19_ce0;
input  [63:0] training_data_19_q0;
output  [6:0] training_data_20_address0;
output   training_data_20_ce0;
input  [63:0] training_data_20_q0;
output  [6:0] training_data_21_address0;
output   training_data_21_ce0;
input  [63:0] training_data_21_q0;
output  [6:0] training_data_22_address0;
output   training_data_22_ce0;
input  [63:0] training_data_22_q0;
output  [6:0] training_data_23_address0;
output   training_data_23_ce0;
input  [63:0] training_data_23_q0;
output  [6:0] training_data_24_address0;
output   training_data_24_ce0;
input  [63:0] training_data_24_q0;
output  [6:0] training_data_25_address0;
output   training_data_25_ce0;
input  [63:0] training_data_25_q0;
output  [6:0] training_data_26_address0;
output   training_data_26_ce0;
input  [63:0] training_data_26_q0;
output  [6:0] training_data_27_address0;
output   training_data_27_ce0;
input  [63:0] training_data_27_q0;
output  [6:0] training_data_28_address0;
output   training_data_28_ce0;
input  [63:0] training_data_28_q0;
output  [6:0] training_data_29_address0;
output   training_data_29_ce0;
input  [63:0] training_data_29_q0;
output  [6:0] training_data_30_address0;
output   training_data_30_ce0;
input  [63:0] training_data_30_q0;
output  [6:0] training_data_31_address0;
output   training_data_31_ce0;
input  [63:0] training_data_31_q0;
input  [11:0] idx;
output  [63:0] grp_fu_6784_p_din0;
output  [63:0] grp_fu_6784_p_din1;
input  [63:0] grp_fu_6784_p_dout0;
output   grp_fu_6784_p_ce;
output  [63:0] grp_fu_6788_p_din0;
output  [63:0] grp_fu_6788_p_din1;
input  [63:0] grp_fu_6788_p_dout0;
output   grp_fu_6788_p_ce;
output  [63:0] grp_fu_6792_p_din0;
output  [63:0] grp_fu_6792_p_din1;
input  [63:0] grp_fu_6792_p_dout0;
output   grp_fu_6792_p_ce;
output  [63:0] grp_fu_6796_p_din0;
output  [63:0] grp_fu_6796_p_din1;
input  [63:0] grp_fu_6796_p_dout0;
output   grp_fu_6796_p_ce;
output  [63:0] grp_fu_6800_p_din0;
output  [63:0] grp_fu_6800_p_din1;
input  [63:0] grp_fu_6800_p_dout0;
output   grp_fu_6800_p_ce;
output  [63:0] grp_fu_6804_p_din0;
output  [63:0] grp_fu_6804_p_din1;
input  [63:0] grp_fu_6804_p_dout0;
output   grp_fu_6804_p_ce;
output  [63:0] grp_fu_6808_p_din0;
output  [63:0] grp_fu_6808_p_din1;
input  [63:0] grp_fu_6808_p_dout0;
output   grp_fu_6808_p_ce;
output  [63:0] grp_fu_6812_p_din0;
output  [63:0] grp_fu_6812_p_din1;
input  [63:0] grp_fu_6812_p_dout0;
output   grp_fu_6812_p_ce;
output  [63:0] grp_fu_6816_p_din0;
output  [63:0] grp_fu_6816_p_din1;
input  [63:0] grp_fu_6816_p_dout0;
output   grp_fu_6816_p_ce;
output  [63:0] grp_fu_6820_p_din0;
output  [63:0] grp_fu_6820_p_din1;
input  [63:0] grp_fu_6820_p_dout0;
output   grp_fu_6820_p_ce;
output  [63:0] grp_fu_6824_p_din0;
output  [63:0] grp_fu_6824_p_din1;
input  [63:0] grp_fu_6824_p_dout0;
output   grp_fu_6824_p_ce;
output  [63:0] grp_fu_6828_p_din0;
output  [63:0] grp_fu_6828_p_din1;
input  [63:0] grp_fu_6828_p_dout0;
output   grp_fu_6828_p_ce;
output  [63:0] grp_fu_6832_p_din0;
output  [63:0] grp_fu_6832_p_din1;
input  [63:0] grp_fu_6832_p_dout0;
output   grp_fu_6832_p_ce;
output  [63:0] grp_fu_6836_p_din0;
output  [63:0] grp_fu_6836_p_din1;
input  [63:0] grp_fu_6836_p_dout0;
output   grp_fu_6836_p_ce;
output  [63:0] grp_fu_6840_p_din0;
output  [63:0] grp_fu_6840_p_din1;
input  [63:0] grp_fu_6840_p_dout0;
output   grp_fu_6840_p_ce;
output  [63:0] grp_fu_6844_p_din0;
output  [63:0] grp_fu_6844_p_din1;
input  [63:0] grp_fu_6844_p_dout0;
output   grp_fu_6844_p_ce;
output  [63:0] grp_fu_6848_p_din0;
output  [63:0] grp_fu_6848_p_din1;
input  [63:0] grp_fu_6848_p_dout0;
output   grp_fu_6848_p_ce;
output  [63:0] grp_fu_6852_p_din0;
output  [63:0] grp_fu_6852_p_din1;
input  [63:0] grp_fu_6852_p_dout0;
output   grp_fu_6852_p_ce;
output  [63:0] grp_fu_6856_p_din0;
output  [63:0] grp_fu_6856_p_din1;
input  [63:0] grp_fu_6856_p_dout0;
output   grp_fu_6856_p_ce;
output  [63:0] grp_fu_6860_p_din0;
output  [63:0] grp_fu_6860_p_din1;
input  [63:0] grp_fu_6860_p_dout0;
output   grp_fu_6860_p_ce;
output  [63:0] grp_fu_6864_p_din0;
output  [63:0] grp_fu_6864_p_din1;
input  [63:0] grp_fu_6864_p_dout0;
output   grp_fu_6864_p_ce;
output  [63:0] grp_fu_6868_p_din0;
output  [63:0] grp_fu_6868_p_din1;
input  [63:0] grp_fu_6868_p_dout0;
output   grp_fu_6868_p_ce;
output  [63:0] grp_fu_6872_p_din0;
output  [63:0] grp_fu_6872_p_din1;
input  [63:0] grp_fu_6872_p_dout0;
output   grp_fu_6872_p_ce;
output  [63:0] grp_fu_6876_p_din0;
output  [63:0] grp_fu_6876_p_din1;
input  [63:0] grp_fu_6876_p_dout0;
output   grp_fu_6876_p_ce;
output  [63:0] grp_fu_6880_p_din0;
output  [63:0] grp_fu_6880_p_din1;
input  [63:0] grp_fu_6880_p_dout0;
output   grp_fu_6880_p_ce;
output  [63:0] grp_fu_6884_p_din0;
output  [63:0] grp_fu_6884_p_din1;
input  [63:0] grp_fu_6884_p_dout0;
output   grp_fu_6884_p_ce;
output  [63:0] grp_fu_6888_p_din0;
output  [63:0] grp_fu_6888_p_din1;
input  [63:0] grp_fu_6888_p_dout0;
output   grp_fu_6888_p_ce;
output  [63:0] grp_fu_6892_p_din0;
output  [63:0] grp_fu_6892_p_din1;
input  [63:0] grp_fu_6892_p_dout0;
output   grp_fu_6892_p_ce;
output  [63:0] grp_fu_6896_p_din0;
output  [63:0] grp_fu_6896_p_din1;
input  [63:0] grp_fu_6896_p_dout0;
output   grp_fu_6896_p_ce;
output  [63:0] grp_fu_6900_p_din0;
output  [63:0] grp_fu_6900_p_din1;
input  [63:0] grp_fu_6900_p_dout0;
output   grp_fu_6900_p_ce;
output  [63:0] grp_fu_6904_p_din0;
output  [63:0] grp_fu_6904_p_din1;
input  [63:0] grp_fu_6904_p_dout0;
output   grp_fu_6904_p_ce;
output  [63:0] grp_fu_6908_p_din0;
output  [63:0] grp_fu_6908_p_din1;
input  [63:0] grp_fu_6908_p_dout0;
output   grp_fu_6908_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln113_fu_1720_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln113_fu_1760_p3;
reg   [3:0] select_ln113_reg_2225;
reg   [3:0] select_ln113_reg_2225_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_2225_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_2225_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_2225_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_2225_pp0_iter5_reg;
reg   [3:0] select_ln113_reg_2225_pp0_iter6_reg;
reg   [3:0] select_ln113_reg_2225_pp0_iter7_reg;
reg   [3:0] select_ln113_reg_2225_pp0_iter8_reg;
reg   [3:0] select_ln113_reg_2225_pp0_iter9_reg;
reg   [0:0] tmp_21_reg_2231;
reg   [0:0] tmp_21_reg_2231_pp0_iter1_reg;
reg   [0:0] tmp_21_reg_2231_pp0_iter2_reg;
reg   [0:0] tmp_21_reg_2231_pp0_iter3_reg;
reg   [0:0] tmp_21_reg_2231_pp0_iter4_reg;
reg   [0:0] tmp_21_reg_2231_pp0_iter5_reg;
reg   [0:0] tmp_21_reg_2231_pp0_iter6_reg;
reg   [0:0] tmp_21_reg_2231_pp0_iter7_reg;
reg   [0:0] tmp_21_reg_2231_pp0_iter8_reg;
reg   [0:0] tmp_21_reg_2231_pp0_iter9_reg;
wire   [4:0] empty_fu_1805_p1;
reg   [4:0] empty_reg_2237;
wire   [63:0] tmp_fu_2018_p67;
reg   [63:0] tmp_reg_2562;
reg   [63:0] output_difference_0_load_reg_2598;
reg   [63:0] output_difference_1_load_reg_2603;
reg   [63:0] output_difference_2_load_reg_2608;
reg   [63:0] output_difference_3_load_reg_2613;
reg   [63:0] output_difference_4_load_reg_2618;
reg   [63:0] output_difference_5_load_reg_2623;
reg   [63:0] output_difference_6_load_reg_2628;
reg   [63:0] output_difference_7_load_reg_2633;
reg   [63:0] output_difference_8_load_reg_2638;
reg   [63:0] output_difference_9_load_reg_2643;
reg   [63:0] output_difference_10_load_reg_2648;
reg   [63:0] output_difference_11_load_reg_2653;
reg   [63:0] output_difference_12_load_reg_2658;
reg   [63:0] output_difference_13_load_reg_2663;
reg   [63:0] output_difference_14_load_reg_2668;
reg   [63:0] output_difference_15_load_reg_2673;
reg   [63:0] output_difference_16_load_reg_2678;
reg   [63:0] output_difference_17_load_reg_2683;
reg   [63:0] output_difference_18_load_reg_2688;
reg   [63:0] output_difference_19_load_reg_2693;
reg   [63:0] output_difference_20_load_reg_2698;
reg   [63:0] output_difference_21_load_reg_2703;
reg   [63:0] output_difference_22_load_reg_2708;
reg   [63:0] output_difference_23_load_reg_2713;
reg   [63:0] output_difference_24_load_reg_2718;
reg   [63:0] output_difference_25_load_reg_2723;
reg   [63:0] output_difference_26_load_reg_2728;
reg   [63:0] output_difference_27_load_reg_2733;
reg   [63:0] output_difference_28_load_reg_2738;
reg   [63:0] output_difference_29_load_reg_2743;
reg   [63:0] output_difference_30_load_reg_2748;
reg   [63:0] output_difference_31_load_reg_2753;
reg   [63:0] mul_reg_2758;
reg   [63:0] mul_1_reg_2763;
reg   [63:0] mul_2_reg_2768;
reg   [63:0] mul_3_reg_2773;
reg   [63:0] mul_4_reg_2778;
reg   [63:0] mul_5_reg_2783;
reg   [63:0] mul_6_reg_2788;
reg   [63:0] mul_7_reg_2793;
reg   [63:0] mul_8_reg_2798;
reg   [63:0] mul_9_reg_2803;
reg   [63:0] mul_10_reg_2808;
reg   [63:0] mul_11_reg_2813;
reg   [63:0] mul_12_reg_2818;
reg   [63:0] mul_13_reg_2823;
reg   [63:0] mul_14_reg_2828;
reg   [63:0] mul_15_reg_2833;
reg   [63:0] mul_16_reg_2838;
reg   [63:0] mul_17_reg_2843;
reg   [63:0] mul_18_reg_2848;
reg   [63:0] mul_19_reg_2853;
reg   [63:0] mul_20_reg_2858;
reg   [63:0] mul_21_reg_2863;
reg   [63:0] mul_22_reg_2868;
reg   [63:0] mul_23_reg_2873;
reg   [63:0] mul_24_reg_2878;
reg   [63:0] mul_25_reg_2883;
reg   [63:0] mul_26_reg_2888;
reg   [63:0] mul_27_reg_2893;
reg   [63:0] mul_28_reg_2898;
reg   [63:0] mul_29_reg_2903;
reg   [63:0] mul_30_reg_2908;
reg   [63:0] mul_31_reg_2913;
wire   [63:0] p_cast_fu_1819_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln112_fu_1855_p1;
wire   [63:0] zext_ln115_fu_2159_p1;
reg   [6:0] j_fu_308;
wire   [6:0] add_ln114_fu_1776_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_312;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [4:0] indvar_flatten_fu_316;
wire   [4:0] add_ln113_fu_1726_p2;
reg   [4:0] ap_sig_allocacmp_indvar_flatten_load;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    training_data_2_ce0_local;
reg    training_data_3_ce0_local;
reg    training_data_4_ce0_local;
reg    training_data_5_ce0_local;
reg    training_data_6_ce0_local;
reg    training_data_7_ce0_local;
reg    training_data_8_ce0_local;
reg    training_data_9_ce0_local;
reg    training_data_10_ce0_local;
reg    training_data_11_ce0_local;
reg    training_data_12_ce0_local;
reg    training_data_13_ce0_local;
reg    training_data_14_ce0_local;
reg    training_data_15_ce0_local;
reg    training_data_16_ce0_local;
reg    training_data_17_ce0_local;
reg    training_data_18_ce0_local;
reg    training_data_19_ce0_local;
reg    training_data_20_ce0_local;
reg    training_data_21_ce0_local;
reg    training_data_22_ce0_local;
reg    training_data_23_ce0_local;
reg    training_data_24_ce0_local;
reg    training_data_25_ce0_local;
reg    training_data_26_ce0_local;
reg    training_data_27_ce0_local;
reg    training_data_28_ce0_local;
reg    training_data_29_ce0_local;
reg    training_data_30_ce0_local;
reg    training_data_31_ce0_local;
reg    output_difference_0_ce0_local;
reg    output_difference_1_ce0_local;
reg    output_difference_2_ce0_local;
reg    output_difference_3_ce0_local;
reg    output_difference_4_ce0_local;
reg    output_difference_5_ce0_local;
reg    output_difference_6_ce0_local;
reg    output_difference_7_ce0_local;
reg    output_difference_8_ce0_local;
reg    output_difference_9_ce0_local;
reg    output_difference_10_ce0_local;
reg    output_difference_11_ce0_local;
reg    output_difference_12_ce0_local;
reg    output_difference_13_ce0_local;
reg    output_difference_14_ce0_local;
reg    output_difference_15_ce0_local;
reg    output_difference_16_ce0_local;
reg    output_difference_17_ce0_local;
reg    output_difference_18_ce0_local;
reg    output_difference_19_ce0_local;
reg    output_difference_20_ce0_local;
reg    output_difference_21_ce0_local;
reg    output_difference_22_ce0_local;
reg    output_difference_23_ce0_local;
reg    output_difference_24_ce0_local;
reg    output_difference_25_ce0_local;
reg    output_difference_26_ce0_local;
reg    output_difference_27_ce0_local;
reg    output_difference_28_ce0_local;
reg    output_difference_29_ce0_local;
reg    output_difference_30_ce0_local;
reg    output_difference_31_ce0_local;
reg    delta_weights1_0_we0_local;
reg    delta_weights1_0_ce0_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
reg    delta_weights1_4_we0_local;
reg    delta_weights1_4_ce0_local;
reg    delta_weights1_5_we0_local;
reg    delta_weights1_5_ce0_local;
reg    delta_weights1_6_we0_local;
reg    delta_weights1_6_ce0_local;
reg    delta_weights1_7_we0_local;
reg    delta_weights1_7_ce0_local;
reg    delta_weights1_8_we0_local;
reg    delta_weights1_8_ce0_local;
reg    delta_weights1_9_we0_local;
reg    delta_weights1_9_ce0_local;
reg    delta_weights1_10_we0_local;
reg    delta_weights1_10_ce0_local;
reg    delta_weights1_11_we0_local;
reg    delta_weights1_11_ce0_local;
reg    delta_weights1_12_we0_local;
reg    delta_weights1_12_ce0_local;
reg    delta_weights1_13_we0_local;
reg    delta_weights1_13_ce0_local;
reg    delta_weights1_14_we0_local;
reg    delta_weights1_14_ce0_local;
reg    delta_weights1_15_we0_local;
reg    delta_weights1_15_ce0_local;
reg    delta_weights1_16_we0_local;
reg    delta_weights1_16_ce0_local;
reg    delta_weights1_17_we0_local;
reg    delta_weights1_17_ce0_local;
reg    delta_weights1_18_we0_local;
reg    delta_weights1_18_ce0_local;
reg    delta_weights1_19_we0_local;
reg    delta_weights1_19_ce0_local;
reg    delta_weights1_20_we0_local;
reg    delta_weights1_20_ce0_local;
reg    delta_weights1_21_we0_local;
reg    delta_weights1_21_ce0_local;
reg    delta_weights1_22_we0_local;
reg    delta_weights1_22_ce0_local;
reg    delta_weights1_23_we0_local;
reg    delta_weights1_23_ce0_local;
reg    delta_weights1_24_we0_local;
reg    delta_weights1_24_ce0_local;
reg    delta_weights1_25_we0_local;
reg    delta_weights1_25_ce0_local;
reg    delta_weights1_26_we0_local;
reg    delta_weights1_26_ce0_local;
reg    delta_weights1_27_we0_local;
reg    delta_weights1_27_ce0_local;
reg    delta_weights1_28_we0_local;
reg    delta_weights1_28_ce0_local;
reg    delta_weights1_29_we0_local;
reg    delta_weights1_29_ce0_local;
reg    delta_weights1_30_we0_local;
reg    delta_weights1_30_ce0_local;
reg    delta_weights1_31_we0_local;
reg    delta_weights1_31_ce0_local;
wire   [0:0] tmp_20_fu_1738_p3;
wire   [3:0] add_ln113_1_fu_1754_p2;
wire   [6:0] select_ln112_fu_1746_p3;
wire   [11:0] zext_ln113_fu_1797_p1;
wire   [11:0] p_sum_fu_1800_p2;
wire   [6:0] tmp_s_fu_1809_p4;
wire   [63:0] tmp_fu_2018_p2;
wire   [63:0] tmp_fu_2018_p4;
wire   [63:0] tmp_fu_2018_p6;
wire   [63:0] tmp_fu_2018_p8;
wire   [63:0] tmp_fu_2018_p10;
wire   [63:0] tmp_fu_2018_p12;
wire   [63:0] tmp_fu_2018_p14;
wire   [63:0] tmp_fu_2018_p16;
wire   [63:0] tmp_fu_2018_p18;
wire   [63:0] tmp_fu_2018_p20;
wire   [63:0] tmp_fu_2018_p22;
wire   [63:0] tmp_fu_2018_p24;
wire   [63:0] tmp_fu_2018_p26;
wire   [63:0] tmp_fu_2018_p28;
wire   [63:0] tmp_fu_2018_p30;
wire   [63:0] tmp_fu_2018_p32;
wire   [63:0] tmp_fu_2018_p34;
wire   [63:0] tmp_fu_2018_p36;
wire   [63:0] tmp_fu_2018_p38;
wire   [63:0] tmp_fu_2018_p40;
wire   [63:0] tmp_fu_2018_p42;
wire   [63:0] tmp_fu_2018_p44;
wire   [63:0] tmp_fu_2018_p46;
wire   [63:0] tmp_fu_2018_p48;
wire   [63:0] tmp_fu_2018_p50;
wire   [63:0] tmp_fu_2018_p52;
wire   [63:0] tmp_fu_2018_p54;
wire   [63:0] tmp_fu_2018_p56;
wire   [63:0] tmp_fu_2018_p58;
wire   [63:0] tmp_fu_2018_p60;
wire   [63:0] tmp_fu_2018_p62;
wire   [63:0] tmp_fu_2018_p64;
wire   [63:0] tmp_fu_2018_p65;
wire   [4:0] or_ln_fu_2153_p3;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_fu_2018_p1;
wire   [4:0] tmp_fu_2018_p3;
wire   [4:0] tmp_fu_2018_p5;
wire   [4:0] tmp_fu_2018_p7;
wire   [4:0] tmp_fu_2018_p9;
wire   [4:0] tmp_fu_2018_p11;
wire   [4:0] tmp_fu_2018_p13;
wire   [4:0] tmp_fu_2018_p15;
wire   [4:0] tmp_fu_2018_p17;
wire   [4:0] tmp_fu_2018_p19;
wire   [4:0] tmp_fu_2018_p21;
wire   [4:0] tmp_fu_2018_p23;
wire   [4:0] tmp_fu_2018_p25;
wire   [4:0] tmp_fu_2018_p27;
wire   [4:0] tmp_fu_2018_p29;
wire   [4:0] tmp_fu_2018_p31;
wire  signed [4:0] tmp_fu_2018_p33;
wire  signed [4:0] tmp_fu_2018_p35;
wire  signed [4:0] tmp_fu_2018_p37;
wire  signed [4:0] tmp_fu_2018_p39;
wire  signed [4:0] tmp_fu_2018_p41;
wire  signed [4:0] tmp_fu_2018_p43;
wire  signed [4:0] tmp_fu_2018_p45;
wire  signed [4:0] tmp_fu_2018_p47;
wire  signed [4:0] tmp_fu_2018_p49;
wire  signed [4:0] tmp_fu_2018_p51;
wire  signed [4:0] tmp_fu_2018_p53;
wire  signed [4:0] tmp_fu_2018_p55;
wire  signed [4:0] tmp_fu_2018_p57;
wire  signed [4:0] tmp_fu_2018_p59;
wire  signed [4:0] tmp_fu_2018_p61;
wire  signed [4:0] tmp_fu_2018_p63;
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
#0 j_fu_308 = 7'd0;
#0 i_fu_312 = 4'd0;
#0 indvar_flatten_fu_316 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1859(.din0(tmp_fu_2018_p2),.din1(tmp_fu_2018_p4),.din2(tmp_fu_2018_p6),.din3(tmp_fu_2018_p8),.din4(tmp_fu_2018_p10),.din5(tmp_fu_2018_p12),.din6(tmp_fu_2018_p14),.din7(tmp_fu_2018_p16),.din8(tmp_fu_2018_p18),.din9(tmp_fu_2018_p20),.din10(tmp_fu_2018_p22),.din11(tmp_fu_2018_p24),.din12(tmp_fu_2018_p26),.din13(tmp_fu_2018_p28),.din14(tmp_fu_2018_p30),.din15(tmp_fu_2018_p32),.din16(tmp_fu_2018_p34),.din17(tmp_fu_2018_p36),.din18(tmp_fu_2018_p38),.din19(tmp_fu_2018_p40),.din20(tmp_fu_2018_p42),.din21(tmp_fu_2018_p44),.din22(tmp_fu_2018_p46),.din23(tmp_fu_2018_p48),.din24(tmp_fu_2018_p50),.din25(tmp_fu_2018_p52),.din26(tmp_fu_2018_p54),.din27(tmp_fu_2018_p56),.din28(tmp_fu_2018_p58),.din29(tmp_fu_2018_p60),.din30(tmp_fu_2018_p62),.din31(tmp_fu_2018_p64),.def(tmp_fu_2018_p65),.sel(empty_reg_2237),.dout(tmp_fu_2018_p67));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        if (((icmp_ln113_fu_1720_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_312 <= select_ln113_fu_1760_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_312 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_1720_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_316 <= add_ln113_fu_1726_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_316 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_1720_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_308 <= add_ln114_fu_1776_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_308 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_2237 <= empty_fu_1805_p1;
        select_ln113_reg_2225 <= select_ln113_fu_1760_p3;
        select_ln113_reg_2225_pp0_iter1_reg <= select_ln113_reg_2225;
        tmp_21_reg_2231 <= select_ln112_fu_1746_p3[32'd5];
        tmp_21_reg_2231_pp0_iter1_reg <= tmp_21_reg_2231;
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
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul_10_reg_2808 <= grp_fu_6824_p_dout0;
        mul_11_reg_2813 <= grp_fu_6828_p_dout0;
        mul_12_reg_2818 <= grp_fu_6832_p_dout0;
        mul_13_reg_2823 <= grp_fu_6836_p_dout0;
        mul_14_reg_2828 <= grp_fu_6840_p_dout0;
        mul_15_reg_2833 <= grp_fu_6844_p_dout0;
        mul_16_reg_2838 <= grp_fu_6848_p_dout0;
        mul_17_reg_2843 <= grp_fu_6852_p_dout0;
        mul_18_reg_2848 <= grp_fu_6856_p_dout0;
        mul_19_reg_2853 <= grp_fu_6860_p_dout0;
        mul_1_reg_2763 <= grp_fu_6788_p_dout0;
        mul_20_reg_2858 <= grp_fu_6864_p_dout0;
        mul_21_reg_2863 <= grp_fu_6868_p_dout0;
        mul_22_reg_2868 <= grp_fu_6872_p_dout0;
        mul_23_reg_2873 <= grp_fu_6876_p_dout0;
        mul_24_reg_2878 <= grp_fu_6880_p_dout0;
        mul_25_reg_2883 <= grp_fu_6884_p_dout0;
        mul_26_reg_2888 <= grp_fu_6888_p_dout0;
        mul_27_reg_2893 <= grp_fu_6892_p_dout0;
        mul_28_reg_2898 <= grp_fu_6896_p_dout0;
        mul_29_reg_2903 <= grp_fu_6900_p_dout0;
        mul_2_reg_2768 <= grp_fu_6792_p_dout0;
        mul_30_reg_2908 <= grp_fu_6904_p_dout0;
        mul_31_reg_2913 <= grp_fu_6908_p_dout0;
        mul_3_reg_2773 <= grp_fu_6796_p_dout0;
        mul_4_reg_2778 <= grp_fu_6800_p_dout0;
        mul_5_reg_2783 <= grp_fu_6804_p_dout0;
        mul_6_reg_2788 <= grp_fu_6808_p_dout0;
        mul_7_reg_2793 <= grp_fu_6812_p_dout0;
        mul_8_reg_2798 <= grp_fu_6816_p_dout0;
        mul_9_reg_2803 <= grp_fu_6820_p_dout0;
        mul_reg_2758 <= grp_fu_6784_p_dout0;
        output_difference_0_load_reg_2598 <= output_difference_0_q0;
        output_difference_10_load_reg_2648 <= output_difference_10_q0;
        output_difference_11_load_reg_2653 <= output_difference_11_q0;
        output_difference_12_load_reg_2658 <= output_difference_12_q0;
        output_difference_13_load_reg_2663 <= output_difference_13_q0;
        output_difference_14_load_reg_2668 <= output_difference_14_q0;
        output_difference_15_load_reg_2673 <= output_difference_15_q0;
        output_difference_16_load_reg_2678 <= output_difference_16_q0;
        output_difference_17_load_reg_2683 <= output_difference_17_q0;
        output_difference_18_load_reg_2688 <= output_difference_18_q0;
        output_difference_19_load_reg_2693 <= output_difference_19_q0;
        output_difference_1_load_reg_2603 <= output_difference_1_q0;
        output_difference_20_load_reg_2698 <= output_difference_20_q0;
        output_difference_21_load_reg_2703 <= output_difference_21_q0;
        output_difference_22_load_reg_2708 <= output_difference_22_q0;
        output_difference_23_load_reg_2713 <= output_difference_23_q0;
        output_difference_24_load_reg_2718 <= output_difference_24_q0;
        output_difference_25_load_reg_2723 <= output_difference_25_q0;
        output_difference_26_load_reg_2728 <= output_difference_26_q0;
        output_difference_27_load_reg_2733 <= output_difference_27_q0;
        output_difference_28_load_reg_2738 <= output_difference_28_q0;
        output_difference_29_load_reg_2743 <= output_difference_29_q0;
        output_difference_2_load_reg_2608 <= output_difference_2_q0;
        output_difference_30_load_reg_2748 <= output_difference_30_q0;
        output_difference_31_load_reg_2753 <= output_difference_31_q0;
        output_difference_3_load_reg_2613 <= output_difference_3_q0;
        output_difference_4_load_reg_2618 <= output_difference_4_q0;
        output_difference_5_load_reg_2623 <= output_difference_5_q0;
        output_difference_6_load_reg_2628 <= output_difference_6_q0;
        output_difference_7_load_reg_2633 <= output_difference_7_q0;
        output_difference_8_load_reg_2638 <= output_difference_8_q0;
        output_difference_9_load_reg_2643 <= output_difference_9_q0;
        select_ln113_reg_2225_pp0_iter2_reg <= select_ln113_reg_2225_pp0_iter1_reg;
        select_ln113_reg_2225_pp0_iter3_reg <= select_ln113_reg_2225_pp0_iter2_reg;
        select_ln113_reg_2225_pp0_iter4_reg <= select_ln113_reg_2225_pp0_iter3_reg;
        select_ln113_reg_2225_pp0_iter5_reg <= select_ln113_reg_2225_pp0_iter4_reg;
        select_ln113_reg_2225_pp0_iter6_reg <= select_ln113_reg_2225_pp0_iter5_reg;
        select_ln113_reg_2225_pp0_iter7_reg <= select_ln113_reg_2225_pp0_iter6_reg;
        select_ln113_reg_2225_pp0_iter8_reg <= select_ln113_reg_2225_pp0_iter7_reg;
        select_ln113_reg_2225_pp0_iter9_reg <= select_ln113_reg_2225_pp0_iter8_reg;
        tmp_21_reg_2231_pp0_iter2_reg <= tmp_21_reg_2231_pp0_iter1_reg;
        tmp_21_reg_2231_pp0_iter3_reg <= tmp_21_reg_2231_pp0_iter2_reg;
        tmp_21_reg_2231_pp0_iter4_reg <= tmp_21_reg_2231_pp0_iter3_reg;
        tmp_21_reg_2231_pp0_iter5_reg <= tmp_21_reg_2231_pp0_iter4_reg;
        tmp_21_reg_2231_pp0_iter6_reg <= tmp_21_reg_2231_pp0_iter5_reg;
        tmp_21_reg_2231_pp0_iter7_reg <= tmp_21_reg_2231_pp0_iter6_reg;
        tmp_21_reg_2231_pp0_iter8_reg <= tmp_21_reg_2231_pp0_iter7_reg;
        tmp_21_reg_2231_pp0_iter9_reg <= tmp_21_reg_2231_pp0_iter8_reg;
        tmp_reg_2562 <= tmp_fu_2018_p67;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_1720_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_312;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_316;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_308;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_0_ce0_local = 1'b1;
    end else begin
        delta_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_0_we0_local = 1'b1;
    end else begin
        delta_weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_10_ce0_local = 1'b1;
    end else begin
        delta_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_10_we0_local = 1'b1;
    end else begin
        delta_weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_11_ce0_local = 1'b1;
    end else begin
        delta_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_11_we0_local = 1'b1;
    end else begin
        delta_weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_12_ce0_local = 1'b1;
    end else begin
        delta_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_12_we0_local = 1'b1;
    end else begin
        delta_weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_13_ce0_local = 1'b1;
    end else begin
        delta_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_13_we0_local = 1'b1;
    end else begin
        delta_weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_14_ce0_local = 1'b1;
    end else begin
        delta_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_14_we0_local = 1'b1;
    end else begin
        delta_weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_15_ce0_local = 1'b1;
    end else begin
        delta_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_15_we0_local = 1'b1;
    end else begin
        delta_weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_16_ce0_local = 1'b1;
    end else begin
        delta_weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_16_we0_local = 1'b1;
    end else begin
        delta_weights1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_17_ce0_local = 1'b1;
    end else begin
        delta_weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_17_we0_local = 1'b1;
    end else begin
        delta_weights1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_18_ce0_local = 1'b1;
    end else begin
        delta_weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_18_we0_local = 1'b1;
    end else begin
        delta_weights1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_19_ce0_local = 1'b1;
    end else begin
        delta_weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_19_we0_local = 1'b1;
    end else begin
        delta_weights1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_20_ce0_local = 1'b1;
    end else begin
        delta_weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_20_we0_local = 1'b1;
    end else begin
        delta_weights1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_21_ce0_local = 1'b1;
    end else begin
        delta_weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_21_we0_local = 1'b1;
    end else begin
        delta_weights1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_22_ce0_local = 1'b1;
    end else begin
        delta_weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_22_we0_local = 1'b1;
    end else begin
        delta_weights1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_23_ce0_local = 1'b1;
    end else begin
        delta_weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_23_we0_local = 1'b1;
    end else begin
        delta_weights1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_24_ce0_local = 1'b1;
    end else begin
        delta_weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_24_we0_local = 1'b1;
    end else begin
        delta_weights1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_25_ce0_local = 1'b1;
    end else begin
        delta_weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_25_we0_local = 1'b1;
    end else begin
        delta_weights1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_26_ce0_local = 1'b1;
    end else begin
        delta_weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_26_we0_local = 1'b1;
    end else begin
        delta_weights1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_27_ce0_local = 1'b1;
    end else begin
        delta_weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_27_we0_local = 1'b1;
    end else begin
        delta_weights1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_28_ce0_local = 1'b1;
    end else begin
        delta_weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_28_we0_local = 1'b1;
    end else begin
        delta_weights1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_29_ce0_local = 1'b1;
    end else begin
        delta_weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_29_we0_local = 1'b1;
    end else begin
        delta_weights1_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_30_ce0_local = 1'b1;
    end else begin
        delta_weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_30_we0_local = 1'b1;
    end else begin
        delta_weights1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_31_ce0_local = 1'b1;
    end else begin
        delta_weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_31_we0_local = 1'b1;
    end else begin
        delta_weights1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_4_ce0_local = 1'b1;
    end else begin
        delta_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_5_ce0_local = 1'b1;
    end else begin
        delta_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_ce0_local = 1'b1;
    end else begin
        delta_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_ce0_local = 1'b1;
    end else begin
        delta_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_8_ce0_local = 1'b1;
    end else begin
        delta_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_8_we0_local = 1'b1;
    end else begin
        delta_weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_9_ce0_local = 1'b1;
    end else begin
        delta_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_9_we0_local = 1'b1;
    end else begin
        delta_weights1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_10_ce0_local = 1'b1;
    end else begin
        output_difference_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_11_ce0_local = 1'b1;
    end else begin
        output_difference_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_12_ce0_local = 1'b1;
    end else begin
        output_difference_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_13_ce0_local = 1'b1;
    end else begin
        output_difference_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_14_ce0_local = 1'b1;
    end else begin
        output_difference_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_15_ce0_local = 1'b1;
    end else begin
        output_difference_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_16_ce0_local = 1'b1;
    end else begin
        output_difference_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_17_ce0_local = 1'b1;
    end else begin
        output_difference_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_18_ce0_local = 1'b1;
    end else begin
        output_difference_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_19_ce0_local = 1'b1;
    end else begin
        output_difference_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_20_ce0_local = 1'b1;
    end else begin
        output_difference_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_21_ce0_local = 1'b1;
    end else begin
        output_difference_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_22_ce0_local = 1'b1;
    end else begin
        output_difference_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_23_ce0_local = 1'b1;
    end else begin
        output_difference_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_24_ce0_local = 1'b1;
    end else begin
        output_difference_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_25_ce0_local = 1'b1;
    end else begin
        output_difference_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_26_ce0_local = 1'b1;
    end else begin
        output_difference_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_27_ce0_local = 1'b1;
    end else begin
        output_difference_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_28_ce0_local = 1'b1;
    end else begin
        output_difference_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_29_ce0_local = 1'b1;
    end else begin
        output_difference_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_30_ce0_local = 1'b1;
    end else begin
        output_difference_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_31_ce0_local = 1'b1;
    end else begin
        output_difference_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_4_ce0_local = 1'b1;
    end else begin
        output_difference_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_5_ce0_local = 1'b1;
    end else begin
        output_difference_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_6_ce0_local = 1'b1;
    end else begin
        output_difference_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_7_ce0_local = 1'b1;
    end else begin
        output_difference_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_8_ce0_local = 1'b1;
    end else begin
        output_difference_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_9_ce0_local = 1'b1;
    end else begin
        output_difference_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_10_ce0_local = 1'b1;
    end else begin
        training_data_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_11_ce0_local = 1'b1;
    end else begin
        training_data_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_12_ce0_local = 1'b1;
    end else begin
        training_data_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_13_ce0_local = 1'b1;
    end else begin
        training_data_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_14_ce0_local = 1'b1;
    end else begin
        training_data_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_15_ce0_local = 1'b1;
    end else begin
        training_data_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_16_ce0_local = 1'b1;
    end else begin
        training_data_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_17_ce0_local = 1'b1;
    end else begin
        training_data_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_18_ce0_local = 1'b1;
    end else begin
        training_data_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_19_ce0_local = 1'b1;
    end else begin
        training_data_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_20_ce0_local = 1'b1;
    end else begin
        training_data_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_21_ce0_local = 1'b1;
    end else begin
        training_data_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_22_ce0_local = 1'b1;
    end else begin
        training_data_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_23_ce0_local = 1'b1;
    end else begin
        training_data_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_24_ce0_local = 1'b1;
    end else begin
        training_data_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_25_ce0_local = 1'b1;
    end else begin
        training_data_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_26_ce0_local = 1'b1;
    end else begin
        training_data_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_27_ce0_local = 1'b1;
    end else begin
        training_data_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_28_ce0_local = 1'b1;
    end else begin
        training_data_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_29_ce0_local = 1'b1;
    end else begin
        training_data_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_30_ce0_local = 1'b1;
    end else begin
        training_data_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_31_ce0_local = 1'b1;
    end else begin
        training_data_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_4_ce0_local = 1'b1;
    end else begin
        training_data_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_5_ce0_local = 1'b1;
    end else begin
        training_data_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_6_ce0_local = 1'b1;
    end else begin
        training_data_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_7_ce0_local = 1'b1;
    end else begin
        training_data_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_8_ce0_local = 1'b1;
    end else begin
        training_data_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_9_ce0_local = 1'b1;
    end else begin
        training_data_9_ce0_local = 1'b0;
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
assign add_ln113_1_fu_1754_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_1726_p2 = (ap_sig_allocacmp_indvar_flatten_load + 5'd1);
assign add_ln114_fu_1776_p2 = (select_ln112_fu_1746_p3 + 7'd32);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights1_0_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_0_ce0 = delta_weights1_0_ce0_local;
assign delta_weights1_0_d0 = mul_reg_2758;
assign delta_weights1_0_we0 = delta_weights1_0_we0_local;
assign delta_weights1_10_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_10_ce0 = delta_weights1_10_ce0_local;
assign delta_weights1_10_d0 = mul_10_reg_2808;
assign delta_weights1_10_we0 = delta_weights1_10_we0_local;
assign delta_weights1_11_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_11_ce0 = delta_weights1_11_ce0_local;
assign delta_weights1_11_d0 = mul_11_reg_2813;
assign delta_weights1_11_we0 = delta_weights1_11_we0_local;
assign delta_weights1_12_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_12_ce0 = delta_weights1_12_ce0_local;
assign delta_weights1_12_d0 = mul_12_reg_2818;
assign delta_weights1_12_we0 = delta_weights1_12_we0_local;
assign delta_weights1_13_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_13_ce0 = delta_weights1_13_ce0_local;
assign delta_weights1_13_d0 = mul_13_reg_2823;
assign delta_weights1_13_we0 = delta_weights1_13_we0_local;
assign delta_weights1_14_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_14_ce0 = delta_weights1_14_ce0_local;
assign delta_weights1_14_d0 = mul_14_reg_2828;
assign delta_weights1_14_we0 = delta_weights1_14_we0_local;
assign delta_weights1_15_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_15_ce0 = delta_weights1_15_ce0_local;
assign delta_weights1_15_d0 = mul_15_reg_2833;
assign delta_weights1_15_we0 = delta_weights1_15_we0_local;
assign delta_weights1_16_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_16_ce0 = delta_weights1_16_ce0_local;
assign delta_weights1_16_d0 = mul_16_reg_2838;
assign delta_weights1_16_we0 = delta_weights1_16_we0_local;
assign delta_weights1_17_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_17_ce0 = delta_weights1_17_ce0_local;
assign delta_weights1_17_d0 = mul_17_reg_2843;
assign delta_weights1_17_we0 = delta_weights1_17_we0_local;
assign delta_weights1_18_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_18_ce0 = delta_weights1_18_ce0_local;
assign delta_weights1_18_d0 = mul_18_reg_2848;
assign delta_weights1_18_we0 = delta_weights1_18_we0_local;
assign delta_weights1_19_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_19_ce0 = delta_weights1_19_ce0_local;
assign delta_weights1_19_d0 = mul_19_reg_2853;
assign delta_weights1_19_we0 = delta_weights1_19_we0_local;
assign delta_weights1_1_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_d0 = mul_1_reg_2763;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_20_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_20_ce0 = delta_weights1_20_ce0_local;
assign delta_weights1_20_d0 = mul_20_reg_2858;
assign delta_weights1_20_we0 = delta_weights1_20_we0_local;
assign delta_weights1_21_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_21_ce0 = delta_weights1_21_ce0_local;
assign delta_weights1_21_d0 = mul_21_reg_2863;
assign delta_weights1_21_we0 = delta_weights1_21_we0_local;
assign delta_weights1_22_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_22_ce0 = delta_weights1_22_ce0_local;
assign delta_weights1_22_d0 = mul_22_reg_2868;
assign delta_weights1_22_we0 = delta_weights1_22_we0_local;
assign delta_weights1_23_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_23_ce0 = delta_weights1_23_ce0_local;
assign delta_weights1_23_d0 = mul_23_reg_2873;
assign delta_weights1_23_we0 = delta_weights1_23_we0_local;
assign delta_weights1_24_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_24_ce0 = delta_weights1_24_ce0_local;
assign delta_weights1_24_d0 = mul_24_reg_2878;
assign delta_weights1_24_we0 = delta_weights1_24_we0_local;
assign delta_weights1_25_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_25_ce0 = delta_weights1_25_ce0_local;
assign delta_weights1_25_d0 = mul_25_reg_2883;
assign delta_weights1_25_we0 = delta_weights1_25_we0_local;
assign delta_weights1_26_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_26_ce0 = delta_weights1_26_ce0_local;
assign delta_weights1_26_d0 = mul_26_reg_2888;
assign delta_weights1_26_we0 = delta_weights1_26_we0_local;
assign delta_weights1_27_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_27_ce0 = delta_weights1_27_ce0_local;
assign delta_weights1_27_d0 = mul_27_reg_2893;
assign delta_weights1_27_we0 = delta_weights1_27_we0_local;
assign delta_weights1_28_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_28_ce0 = delta_weights1_28_ce0_local;
assign delta_weights1_28_d0 = mul_28_reg_2898;
assign delta_weights1_28_we0 = delta_weights1_28_we0_local;
assign delta_weights1_29_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_29_ce0 = delta_weights1_29_ce0_local;
assign delta_weights1_29_d0 = mul_29_reg_2903;
assign delta_weights1_29_we0 = delta_weights1_29_we0_local;
assign delta_weights1_2_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_d0 = mul_2_reg_2768;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_30_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_30_ce0 = delta_weights1_30_ce0_local;
assign delta_weights1_30_d0 = mul_30_reg_2908;
assign delta_weights1_30_we0 = delta_weights1_30_we0_local;
assign delta_weights1_31_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_31_ce0 = delta_weights1_31_ce0_local;
assign delta_weights1_31_d0 = mul_31_reg_2913;
assign delta_weights1_31_we0 = delta_weights1_31_we0_local;
assign delta_weights1_3_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_d0 = mul_3_reg_2773;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_4_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_d0 = mul_4_reg_2778;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_5_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_d0 = mul_5_reg_2783;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_6_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_d0 = mul_6_reg_2788;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_7_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_d0 = mul_7_reg_2793;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_8_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_8_ce0 = delta_weights1_8_ce0_local;
assign delta_weights1_8_d0 = mul_8_reg_2798;
assign delta_weights1_8_we0 = delta_weights1_8_we0_local;
assign delta_weights1_9_address0 = zext_ln115_fu_2159_p1;
assign delta_weights1_9_ce0 = delta_weights1_9_ce0_local;
assign delta_weights1_9_d0 = mul_9_reg_2803;
assign delta_weights1_9_we0 = delta_weights1_9_we0_local;
assign empty_fu_1805_p1 = p_sum_fu_1800_p2[4:0];
assign grp_fu_6784_p_ce = 1'b1;
assign grp_fu_6784_p_din0 = tmp_reg_2562;
assign grp_fu_6784_p_din1 = output_difference_0_load_reg_2598;
assign grp_fu_6788_p_ce = 1'b1;
assign grp_fu_6788_p_din0 = tmp_reg_2562;
assign grp_fu_6788_p_din1 = output_difference_1_load_reg_2603;
assign grp_fu_6792_p_ce = 1'b1;
assign grp_fu_6792_p_din0 = tmp_reg_2562;
assign grp_fu_6792_p_din1 = output_difference_2_load_reg_2608;
assign grp_fu_6796_p_ce = 1'b1;
assign grp_fu_6796_p_din0 = tmp_reg_2562;
assign grp_fu_6796_p_din1 = output_difference_3_load_reg_2613;
assign grp_fu_6800_p_ce = 1'b1;
assign grp_fu_6800_p_din0 = tmp_reg_2562;
assign grp_fu_6800_p_din1 = output_difference_4_load_reg_2618;
assign grp_fu_6804_p_ce = 1'b1;
assign grp_fu_6804_p_din0 = tmp_reg_2562;
assign grp_fu_6804_p_din1 = output_difference_5_load_reg_2623;
assign grp_fu_6808_p_ce = 1'b1;
assign grp_fu_6808_p_din0 = tmp_reg_2562;
assign grp_fu_6808_p_din1 = output_difference_6_load_reg_2628;
assign grp_fu_6812_p_ce = 1'b1;
assign grp_fu_6812_p_din0 = tmp_reg_2562;
assign grp_fu_6812_p_din1 = output_difference_7_load_reg_2633;
assign grp_fu_6816_p_ce = 1'b1;
assign grp_fu_6816_p_din0 = tmp_reg_2562;
assign grp_fu_6816_p_din1 = output_difference_8_load_reg_2638;
assign grp_fu_6820_p_ce = 1'b1;
assign grp_fu_6820_p_din0 = tmp_reg_2562;
assign grp_fu_6820_p_din1 = output_difference_9_load_reg_2643;
assign grp_fu_6824_p_ce = 1'b1;
assign grp_fu_6824_p_din0 = tmp_reg_2562;
assign grp_fu_6824_p_din1 = output_difference_10_load_reg_2648;
assign grp_fu_6828_p_ce = 1'b1;
assign grp_fu_6828_p_din0 = tmp_reg_2562;
assign grp_fu_6828_p_din1 = output_difference_11_load_reg_2653;
assign grp_fu_6832_p_ce = 1'b1;
assign grp_fu_6832_p_din0 = tmp_reg_2562;
assign grp_fu_6832_p_din1 = output_difference_12_load_reg_2658;
assign grp_fu_6836_p_ce = 1'b1;
assign grp_fu_6836_p_din0 = tmp_reg_2562;
assign grp_fu_6836_p_din1 = output_difference_13_load_reg_2663;
assign grp_fu_6840_p_ce = 1'b1;
assign grp_fu_6840_p_din0 = tmp_reg_2562;
assign grp_fu_6840_p_din1 = output_difference_14_load_reg_2668;
assign grp_fu_6844_p_ce = 1'b1;
assign grp_fu_6844_p_din0 = tmp_reg_2562;
assign grp_fu_6844_p_din1 = output_difference_15_load_reg_2673;
assign grp_fu_6848_p_ce = 1'b1;
assign grp_fu_6848_p_din0 = tmp_reg_2562;
assign grp_fu_6848_p_din1 = output_difference_16_load_reg_2678;
assign grp_fu_6852_p_ce = 1'b1;
assign grp_fu_6852_p_din0 = tmp_reg_2562;
assign grp_fu_6852_p_din1 = output_difference_17_load_reg_2683;
assign grp_fu_6856_p_ce = 1'b1;
assign grp_fu_6856_p_din0 = tmp_reg_2562;
assign grp_fu_6856_p_din1 = output_difference_18_load_reg_2688;
assign grp_fu_6860_p_ce = 1'b1;
assign grp_fu_6860_p_din0 = tmp_reg_2562;
assign grp_fu_6860_p_din1 = output_difference_19_load_reg_2693;
assign grp_fu_6864_p_ce = 1'b1;
assign grp_fu_6864_p_din0 = tmp_reg_2562;
assign grp_fu_6864_p_din1 = output_difference_20_load_reg_2698;
assign grp_fu_6868_p_ce = 1'b1;
assign grp_fu_6868_p_din0 = tmp_reg_2562;
assign grp_fu_6868_p_din1 = output_difference_21_load_reg_2703;
assign grp_fu_6872_p_ce = 1'b1;
assign grp_fu_6872_p_din0 = tmp_reg_2562;
assign grp_fu_6872_p_din1 = output_difference_22_load_reg_2708;
assign grp_fu_6876_p_ce = 1'b1;
assign grp_fu_6876_p_din0 = tmp_reg_2562;
assign grp_fu_6876_p_din1 = output_difference_23_load_reg_2713;
assign grp_fu_6880_p_ce = 1'b1;
assign grp_fu_6880_p_din0 = tmp_reg_2562;
assign grp_fu_6880_p_din1 = output_difference_24_load_reg_2718;
assign grp_fu_6884_p_ce = 1'b1;
assign grp_fu_6884_p_din0 = tmp_reg_2562;
assign grp_fu_6884_p_din1 = output_difference_25_load_reg_2723;
assign grp_fu_6888_p_ce = 1'b1;
assign grp_fu_6888_p_din0 = tmp_reg_2562;
assign grp_fu_6888_p_din1 = output_difference_26_load_reg_2728;
assign grp_fu_6892_p_ce = 1'b1;
assign grp_fu_6892_p_din0 = tmp_reg_2562;
assign grp_fu_6892_p_din1 = output_difference_27_load_reg_2733;
assign grp_fu_6896_p_ce = 1'b1;
assign grp_fu_6896_p_din0 = tmp_reg_2562;
assign grp_fu_6896_p_din1 = output_difference_28_load_reg_2738;
assign grp_fu_6900_p_ce = 1'b1;
assign grp_fu_6900_p_din0 = tmp_reg_2562;
assign grp_fu_6900_p_din1 = output_difference_29_load_reg_2743;
assign grp_fu_6904_p_ce = 1'b1;
assign grp_fu_6904_p_din0 = tmp_reg_2562;
assign grp_fu_6904_p_din1 = output_difference_30_load_reg_2748;
assign grp_fu_6908_p_ce = 1'b1;
assign grp_fu_6908_p_din0 = tmp_reg_2562;
assign grp_fu_6908_p_din1 = output_difference_31_load_reg_2753;
assign icmp_ln113_fu_1720_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 5'd26) ? 1'b1 : 1'b0);
assign or_ln_fu_2153_p3 = {{select_ln113_reg_2225_pp0_iter9_reg}, {tmp_21_reg_2231_pp0_iter9_reg}};
assign output_difference_0_address0 = zext_ln112_fu_1855_p1;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_10_address0 = zext_ln112_fu_1855_p1;
assign output_difference_10_ce0 = output_difference_10_ce0_local;
assign output_difference_11_address0 = zext_ln112_fu_1855_p1;
assign output_difference_11_ce0 = output_difference_11_ce0_local;
assign output_difference_12_address0 = zext_ln112_fu_1855_p1;
assign output_difference_12_ce0 = output_difference_12_ce0_local;
assign output_difference_13_address0 = zext_ln112_fu_1855_p1;
assign output_difference_13_ce0 = output_difference_13_ce0_local;
assign output_difference_14_address0 = zext_ln112_fu_1855_p1;
assign output_difference_14_ce0 = output_difference_14_ce0_local;
assign output_difference_15_address0 = zext_ln112_fu_1855_p1;
assign output_difference_15_ce0 = output_difference_15_ce0_local;
assign output_difference_16_address0 = zext_ln112_fu_1855_p1;
assign output_difference_16_ce0 = output_difference_16_ce0_local;
assign output_difference_17_address0 = zext_ln112_fu_1855_p1;
assign output_difference_17_ce0 = output_difference_17_ce0_local;
assign output_difference_18_address0 = zext_ln112_fu_1855_p1;
assign output_difference_18_ce0 = output_difference_18_ce0_local;
assign output_difference_19_address0 = zext_ln112_fu_1855_p1;
assign output_difference_19_ce0 = output_difference_19_ce0_local;
assign output_difference_1_address0 = zext_ln112_fu_1855_p1;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_20_address0 = zext_ln112_fu_1855_p1;
assign output_difference_20_ce0 = output_difference_20_ce0_local;
assign output_difference_21_address0 = zext_ln112_fu_1855_p1;
assign output_difference_21_ce0 = output_difference_21_ce0_local;
assign output_difference_22_address0 = zext_ln112_fu_1855_p1;
assign output_difference_22_ce0 = output_difference_22_ce0_local;
assign output_difference_23_address0 = zext_ln112_fu_1855_p1;
assign output_difference_23_ce0 = output_difference_23_ce0_local;
assign output_difference_24_address0 = zext_ln112_fu_1855_p1;
assign output_difference_24_ce0 = output_difference_24_ce0_local;
assign output_difference_25_address0 = zext_ln112_fu_1855_p1;
assign output_difference_25_ce0 = output_difference_25_ce0_local;
assign output_difference_26_address0 = zext_ln112_fu_1855_p1;
assign output_difference_26_ce0 = output_difference_26_ce0_local;
assign output_difference_27_address0 = zext_ln112_fu_1855_p1;
assign output_difference_27_ce0 = output_difference_27_ce0_local;
assign output_difference_28_address0 = zext_ln112_fu_1855_p1;
assign output_difference_28_ce0 = output_difference_28_ce0_local;
assign output_difference_29_address0 = zext_ln112_fu_1855_p1;
assign output_difference_29_ce0 = output_difference_29_ce0_local;
assign output_difference_2_address0 = zext_ln112_fu_1855_p1;
assign output_difference_2_ce0 = output_difference_2_ce0_local;
assign output_difference_30_address0 = zext_ln112_fu_1855_p1;
assign output_difference_30_ce0 = output_difference_30_ce0_local;
assign output_difference_31_address0 = zext_ln112_fu_1855_p1;
assign output_difference_31_ce0 = output_difference_31_ce0_local;
assign output_difference_3_address0 = zext_ln112_fu_1855_p1;
assign output_difference_3_ce0 = output_difference_3_ce0_local;
assign output_difference_4_address0 = zext_ln112_fu_1855_p1;
assign output_difference_4_ce0 = output_difference_4_ce0_local;
assign output_difference_5_address0 = zext_ln112_fu_1855_p1;
assign output_difference_5_ce0 = output_difference_5_ce0_local;
assign output_difference_6_address0 = zext_ln112_fu_1855_p1;
assign output_difference_6_ce0 = output_difference_6_ce0_local;
assign output_difference_7_address0 = zext_ln112_fu_1855_p1;
assign output_difference_7_ce0 = output_difference_7_ce0_local;
assign output_difference_8_address0 = zext_ln112_fu_1855_p1;
assign output_difference_8_ce0 = output_difference_8_ce0_local;
assign output_difference_9_address0 = zext_ln112_fu_1855_p1;
assign output_difference_9_ce0 = output_difference_9_ce0_local;
assign p_cast_fu_1819_p1 = tmp_s_fu_1809_p4;
assign p_sum_fu_1800_p2 = (zext_ln113_fu_1797_p1 + idx);
assign select_ln112_fu_1746_p3 = ((tmp_20_fu_1738_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_1760_p3 = ((tmp_20_fu_1738_p3[0:0] == 1'b1) ? add_ln113_1_fu_1754_p2 : ap_sig_allocacmp_i_load);
assign tmp_20_fu_1738_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_fu_2018_p10 = training_data_4_q0;
assign tmp_fu_2018_p12 = training_data_5_q0;
assign tmp_fu_2018_p14 = training_data_6_q0;
assign tmp_fu_2018_p16 = training_data_7_q0;
assign tmp_fu_2018_p18 = training_data_8_q0;
assign tmp_fu_2018_p2 = training_data_0_q0;
assign tmp_fu_2018_p20 = training_data_9_q0;
assign tmp_fu_2018_p22 = training_data_10_q0;
assign tmp_fu_2018_p24 = training_data_11_q0;
assign tmp_fu_2018_p26 = training_data_12_q0;
assign tmp_fu_2018_p28 = training_data_13_q0;
assign tmp_fu_2018_p30 = training_data_14_q0;
assign tmp_fu_2018_p32 = training_data_15_q0;
assign tmp_fu_2018_p34 = training_data_16_q0;
assign tmp_fu_2018_p36 = training_data_17_q0;
assign tmp_fu_2018_p38 = training_data_18_q0;
assign tmp_fu_2018_p4 = training_data_1_q0;
assign tmp_fu_2018_p40 = training_data_19_q0;
assign tmp_fu_2018_p42 = training_data_20_q0;
assign tmp_fu_2018_p44 = training_data_21_q0;
assign tmp_fu_2018_p46 = training_data_22_q0;
assign tmp_fu_2018_p48 = training_data_23_q0;
assign tmp_fu_2018_p50 = training_data_24_q0;
assign tmp_fu_2018_p52 = training_data_25_q0;
assign tmp_fu_2018_p54 = training_data_26_q0;
assign tmp_fu_2018_p56 = training_data_27_q0;
assign tmp_fu_2018_p58 = training_data_28_q0;
assign tmp_fu_2018_p6 = training_data_2_q0;
assign tmp_fu_2018_p60 = training_data_29_q0;
assign tmp_fu_2018_p62 = training_data_30_q0;
assign tmp_fu_2018_p64 = training_data_31_q0;
assign tmp_fu_2018_p65 = 'bx;
assign tmp_fu_2018_p8 = training_data_3_q0;
assign tmp_s_fu_1809_p4 = {{p_sum_fu_1800_p2[11:5]}};
assign training_data_0_address0 = p_cast_fu_1819_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_10_address0 = p_cast_fu_1819_p1;
assign training_data_10_ce0 = training_data_10_ce0_local;
assign training_data_11_address0 = p_cast_fu_1819_p1;
assign training_data_11_ce0 = training_data_11_ce0_local;
assign training_data_12_address0 = p_cast_fu_1819_p1;
assign training_data_12_ce0 = training_data_12_ce0_local;
assign training_data_13_address0 = p_cast_fu_1819_p1;
assign training_data_13_ce0 = training_data_13_ce0_local;
assign training_data_14_address0 = p_cast_fu_1819_p1;
assign training_data_14_ce0 = training_data_14_ce0_local;
assign training_data_15_address0 = p_cast_fu_1819_p1;
assign training_data_15_ce0 = training_data_15_ce0_local;
assign training_data_16_address0 = p_cast_fu_1819_p1;
assign training_data_16_ce0 = training_data_16_ce0_local;
assign training_data_17_address0 = p_cast_fu_1819_p1;
assign training_data_17_ce0 = training_data_17_ce0_local;
assign training_data_18_address0 = p_cast_fu_1819_p1;
assign training_data_18_ce0 = training_data_18_ce0_local;
assign training_data_19_address0 = p_cast_fu_1819_p1;
assign training_data_19_ce0 = training_data_19_ce0_local;
assign training_data_1_address0 = p_cast_fu_1819_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_20_address0 = p_cast_fu_1819_p1;
assign training_data_20_ce0 = training_data_20_ce0_local;
assign training_data_21_address0 = p_cast_fu_1819_p1;
assign training_data_21_ce0 = training_data_21_ce0_local;
assign training_data_22_address0 = p_cast_fu_1819_p1;
assign training_data_22_ce0 = training_data_22_ce0_local;
assign training_data_23_address0 = p_cast_fu_1819_p1;
assign training_data_23_ce0 = training_data_23_ce0_local;
assign training_data_24_address0 = p_cast_fu_1819_p1;
assign training_data_24_ce0 = training_data_24_ce0_local;
assign training_data_25_address0 = p_cast_fu_1819_p1;
assign training_data_25_ce0 = training_data_25_ce0_local;
assign training_data_26_address0 = p_cast_fu_1819_p1;
assign training_data_26_ce0 = training_data_26_ce0_local;
assign training_data_27_address0 = p_cast_fu_1819_p1;
assign training_data_27_ce0 = training_data_27_ce0_local;
assign training_data_28_address0 = p_cast_fu_1819_p1;
assign training_data_28_ce0 = training_data_28_ce0_local;
assign training_data_29_address0 = p_cast_fu_1819_p1;
assign training_data_29_ce0 = training_data_29_ce0_local;
assign training_data_2_address0 = p_cast_fu_1819_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_30_address0 = p_cast_fu_1819_p1;
assign training_data_30_ce0 = training_data_30_ce0_local;
assign training_data_31_address0 = p_cast_fu_1819_p1;
assign training_data_31_ce0 = training_data_31_ce0_local;
assign training_data_3_address0 = p_cast_fu_1819_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_4_address0 = p_cast_fu_1819_p1;
assign training_data_4_ce0 = training_data_4_ce0_local;
assign training_data_5_address0 = p_cast_fu_1819_p1;
assign training_data_5_ce0 = training_data_5_ce0_local;
assign training_data_6_address0 = p_cast_fu_1819_p1;
assign training_data_6_ce0 = training_data_6_ce0_local;
assign training_data_7_address0 = p_cast_fu_1819_p1;
assign training_data_7_ce0 = training_data_7_ce0_local;
assign training_data_8_address0 = p_cast_fu_1819_p1;
assign training_data_8_ce0 = training_data_8_ce0_local;
assign training_data_9_address0 = p_cast_fu_1819_p1;
assign training_data_9_ce0 = training_data_9_ce0_local;
assign zext_ln112_fu_1855_p1 = tmp_21_reg_2231;
assign zext_ln113_fu_1797_p1 = select_ln113_reg_2225;
assign zext_ln115_fu_2159_p1 = or_ln_fu_2153_p3;
endmodule 