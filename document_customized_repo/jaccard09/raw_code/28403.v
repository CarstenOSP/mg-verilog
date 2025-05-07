module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_6_address1,delta_weights3_6_ce1,delta_weights3_6_we1,delta_weights3_6_d1,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_7_address1,delta_weights3_7_ce1,delta_weights3_7_we1,delta_weights3_7_d1,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_8_address1,delta_weights3_8_ce1,delta_weights3_8_we1,delta_weights3_8_d1,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_9_address1,delta_weights3_9_ce1,delta_weights3_9_we1,delta_weights3_9_d1,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_10_address1,delta_weights3_10_ce1,delta_weights3_10_we1,delta_weights3_10_d1,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_11_address1,delta_weights3_11_ce1,delta_weights3_11_we1,delta_weights3_11_d1,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_12_address1,delta_weights3_12_ce1,delta_weights3_12_we1,delta_weights3_12_d1,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_13_address1,delta_weights3_13_ce1,delta_weights3_13_we1,delta_weights3_13_d1,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_14_address1,delta_weights3_14_ce1,delta_weights3_14_we1,delta_weights3_14_d1,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_15_address1,delta_weights3_15_ce1,delta_weights3_15_we1,delta_weights3_15_d1,delta_weights3_16_address0,delta_weights3_16_ce0,delta_weights3_16_we0,delta_weights3_16_d0,delta_weights3_16_address1,delta_weights3_16_ce1,delta_weights3_16_we1,delta_weights3_16_d1,delta_weights3_17_address0,delta_weights3_17_ce0,delta_weights3_17_we0,delta_weights3_17_d0,delta_weights3_17_address1,delta_weights3_17_ce1,delta_weights3_17_we1,delta_weights3_17_d1,delta_weights3_18_address0,delta_weights3_18_ce0,delta_weights3_18_we0,delta_weights3_18_d0,delta_weights3_18_address1,delta_weights3_18_ce1,delta_weights3_18_we1,delta_weights3_18_d1,delta_weights3_19_address0,delta_weights3_19_ce0,delta_weights3_19_we0,delta_weights3_19_d0,delta_weights3_19_address1,delta_weights3_19_ce1,delta_weights3_19_we1,delta_weights3_19_d1,delta_weights3_20_address0,delta_weights3_20_ce0,delta_weights3_20_we0,delta_weights3_20_d0,delta_weights3_20_address1,delta_weights3_20_ce1,delta_weights3_20_we1,delta_weights3_20_d1,delta_weights3_21_address0,delta_weights3_21_ce0,delta_weights3_21_we0,delta_weights3_21_d0,delta_weights3_21_address1,delta_weights3_21_ce1,delta_weights3_21_we1,delta_weights3_21_d1,delta_weights3_22_address0,delta_weights3_22_ce0,delta_weights3_22_we0,delta_weights3_22_d0,delta_weights3_22_address1,delta_weights3_22_ce1,delta_weights3_22_we1,delta_weights3_22_d1,delta_weights3_23_address0,delta_weights3_23_ce0,delta_weights3_23_we0,delta_weights3_23_d0,delta_weights3_23_address1,delta_weights3_23_ce1,delta_weights3_23_we1,delta_weights3_23_d1,delta_weights3_24_address0,delta_weights3_24_ce0,delta_weights3_24_we0,delta_weights3_24_d0,delta_weights3_24_address1,delta_weights3_24_ce1,delta_weights3_24_we1,delta_weights3_24_d1,delta_weights3_25_address0,delta_weights3_25_ce0,delta_weights3_25_we0,delta_weights3_25_d0,delta_weights3_25_address1,delta_weights3_25_ce1,delta_weights3_25_we1,delta_weights3_25_d1,delta_weights3_26_address0,delta_weights3_26_ce0,delta_weights3_26_we0,delta_weights3_26_d0,delta_weights3_26_address1,delta_weights3_26_ce1,delta_weights3_26_we1,delta_weights3_26_d1,delta_weights3_27_address0,delta_weights3_27_ce0,delta_weights3_27_we0,delta_weights3_27_d0,delta_weights3_27_address1,delta_weights3_27_ce1,delta_weights3_27_we1,delta_weights3_27_d1,delta_weights3_28_address0,delta_weights3_28_ce0,delta_weights3_28_we0,delta_weights3_28_d0,delta_weights3_28_address1,delta_weights3_28_ce1,delta_weights3_28_we1,delta_weights3_28_d1,delta_weights3_29_address0,delta_weights3_29_ce0,delta_weights3_29_we0,delta_weights3_29_d0,delta_weights3_29_address1,delta_weights3_29_ce1,delta_weights3_29_we1,delta_weights3_29_d1,delta_weights3_30_address0,delta_weights3_30_ce0,delta_weights3_30_we0,delta_weights3_30_d0,delta_weights3_30_address1,delta_weights3_30_ce1,delta_weights3_30_we1,delta_weights3_30_d1,delta_weights3_31_address0,delta_weights3_31_ce0,delta_weights3_31_we0,delta_weights3_31_d0,delta_weights3_31_address1,delta_weights3_31_ce1,delta_weights3_31_we1,delta_weights3_31_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,last_activations_8_address0,last_activations_8_ce0,last_activations_8_q0,last_activations_9_address0,last_activations_9_ce0,last_activations_9_q0,last_activations_10_address0,last_activations_10_ce0,last_activations_10_q0,last_activations_11_address0,last_activations_11_ce0,last_activations_11_q0,last_activations_12_address0,last_activations_12_ce0,last_activations_12_q0,last_activations_13_address0,last_activations_13_ce0,last_activations_13_q0,last_activations_14_address0,last_activations_14_ce0,last_activations_14_q0,last_activations_15_address0,last_activations_15_ce0,last_activations_15_q0,last_activations_16_address0,last_activations_16_ce0,last_activations_16_q0,last_activations_17_address0,last_activations_17_ce0,last_activations_17_q0,last_activations_18_address0,last_activations_18_ce0,last_activations_18_q0,last_activations_19_address0,last_activations_19_ce0,last_activations_19_q0,last_activations_20_address0,last_activations_20_ce0,last_activations_20_q0,last_activations_21_address0,last_activations_21_ce0,last_activations_21_q0,last_activations_22_address0,last_activations_22_ce0,last_activations_22_q0,last_activations_23_address0,last_activations_23_ce0,last_activations_23_q0,last_activations_24_address0,last_activations_24_ce0,last_activations_24_q0,last_activations_25_address0,last_activations_25_ce0,last_activations_25_q0,last_activations_26_address0,last_activations_26_ce0,last_activations_26_q0,last_activations_27_address0,last_activations_27_ce0,last_activations_27_q0,last_activations_28_address0,last_activations_28_ce0,last_activations_28_q0,last_activations_29_address0,last_activations_29_ce0,last_activations_29_q0,last_activations_30_address0,last_activations_30_ce0,last_activations_30_q0,last_activations_31_address0,last_activations_31_ce0,last_activations_31_q0,grp_fu_6784_p_din0,grp_fu_6784_p_din1,grp_fu_6784_p_dout0,grp_fu_6784_p_ce,grp_fu_6788_p_din0,grp_fu_6788_p_din1,grp_fu_6788_p_dout0,grp_fu_6788_p_ce,grp_fu_6792_p_din0,grp_fu_6792_p_din1,grp_fu_6792_p_dout0,grp_fu_6792_p_ce,grp_fu_6796_p_din0,grp_fu_6796_p_din1,grp_fu_6796_p_dout0,grp_fu_6796_p_ce,grp_fu_6800_p_din0,grp_fu_6800_p_din1,grp_fu_6800_p_dout0,grp_fu_6800_p_ce,grp_fu_6804_p_din0,grp_fu_6804_p_din1,grp_fu_6804_p_dout0,grp_fu_6804_p_ce,grp_fu_6808_p_din0,grp_fu_6808_p_din1,grp_fu_6808_p_dout0,grp_fu_6808_p_ce,grp_fu_6812_p_din0,grp_fu_6812_p_din1,grp_fu_6812_p_dout0,grp_fu_6812_p_ce,grp_fu_6816_p_din0,grp_fu_6816_p_din1,grp_fu_6816_p_dout0,grp_fu_6816_p_ce,grp_fu_6820_p_din0,grp_fu_6820_p_din1,grp_fu_6820_p_dout0,grp_fu_6820_p_ce,grp_fu_6824_p_din0,grp_fu_6824_p_din1,grp_fu_6824_p_dout0,grp_fu_6824_p_ce,grp_fu_6828_p_din0,grp_fu_6828_p_din1,grp_fu_6828_p_dout0,grp_fu_6828_p_ce,grp_fu_6832_p_din0,grp_fu_6832_p_din1,grp_fu_6832_p_dout0,grp_fu_6832_p_ce,grp_fu_6836_p_din0,grp_fu_6836_p_din1,grp_fu_6836_p_dout0,grp_fu_6836_p_ce,grp_fu_6840_p_din0,grp_fu_6840_p_din1,grp_fu_6840_p_dout0,grp_fu_6840_p_ce,grp_fu_6844_p_din0,grp_fu_6844_p_din1,grp_fu_6844_p_dout0,grp_fu_6844_p_ce,grp_fu_6848_p_din0,grp_fu_6848_p_din1,grp_fu_6848_p_dout0,grp_fu_6848_p_ce,grp_fu_6852_p_din0,grp_fu_6852_p_din1,grp_fu_6852_p_dout0,grp_fu_6852_p_ce,grp_fu_6856_p_din0,grp_fu_6856_p_din1,grp_fu_6856_p_dout0,grp_fu_6856_p_ce,grp_fu_6860_p_din0,grp_fu_6860_p_din1,grp_fu_6860_p_dout0,grp_fu_6860_p_ce,grp_fu_6864_p_din0,grp_fu_6864_p_din1,grp_fu_6864_p_dout0,grp_fu_6864_p_ce,grp_fu_6868_p_din0,grp_fu_6868_p_din1,grp_fu_6868_p_dout0,grp_fu_6868_p_ce,grp_fu_6872_p_din0,grp_fu_6872_p_din1,grp_fu_6872_p_dout0,grp_fu_6872_p_ce,grp_fu_6876_p_din0,grp_fu_6876_p_din1,grp_fu_6876_p_dout0,grp_fu_6876_p_ce,grp_fu_6880_p_din0,grp_fu_6880_p_din1,grp_fu_6880_p_dout0,grp_fu_6880_p_ce,grp_fu_6884_p_din0,grp_fu_6884_p_din1,grp_fu_6884_p_dout0,grp_fu_6884_p_ce,grp_fu_6888_p_din0,grp_fu_6888_p_din1,grp_fu_6888_p_dout0,grp_fu_6888_p_ce,grp_fu_6892_p_din0,grp_fu_6892_p_din1,grp_fu_6892_p_dout0,grp_fu_6892_p_ce,grp_fu_6896_p_din0,grp_fu_6896_p_din1,grp_fu_6896_p_dout0,grp_fu_6896_p_ce,grp_fu_6900_p_din0,grp_fu_6900_p_din1,grp_fu_6900_p_dout0,grp_fu_6900_p_ce,grp_fu_6904_p_din0,grp_fu_6904_p_din1,grp_fu_6904_p_dout0,grp_fu_6904_p_ce,grp_fu_6908_p_din0,grp_fu_6908_p_din1,grp_fu_6908_p_dout0,grp_fu_6908_p_ce,grp_fu_6912_p_din0,grp_fu_6912_p_din1,grp_fu_6912_p_dout0,grp_fu_6912_p_ce,grp_fu_6916_p_din0,grp_fu_6916_p_din1,grp_fu_6916_p_dout0,grp_fu_6916_p_ce,grp_fu_6920_p_din0,grp_fu_6920_p_din1,grp_fu_6920_p_dout0,grp_fu_6920_p_ce,grp_fu_6924_p_din0,grp_fu_6924_p_din1,grp_fu_6924_p_dout0,grp_fu_6924_p_ce,grp_fu_6928_p_din0,grp_fu_6928_p_din1,grp_fu_6928_p_dout0,grp_fu_6928_p_ce,grp_fu_6932_p_din0,grp_fu_6932_p_din1,grp_fu_6932_p_dout0,grp_fu_6932_p_ce,grp_fu_6936_p_din0,grp_fu_6936_p_din1,grp_fu_6936_p_dout0,grp_fu_6936_p_ce,grp_fu_6940_p_din0,grp_fu_6940_p_din1,grp_fu_6940_p_dout0,grp_fu_6940_p_ce,grp_fu_6944_p_din0,grp_fu_6944_p_din1,grp_fu_6944_p_dout0,grp_fu_6944_p_ce,grp_fu_6948_p_din0,grp_fu_6948_p_din1,grp_fu_6948_p_dout0,grp_fu_6948_p_ce,grp_fu_6952_p_din0,grp_fu_6952_p_din1,grp_fu_6952_p_dout0,grp_fu_6952_p_ce,grp_fu_6956_p_din0,grp_fu_6956_p_din1,grp_fu_6956_p_dout0,grp_fu_6956_p_ce,grp_fu_6960_p_din0,grp_fu_6960_p_din1,grp_fu_6960_p_dout0,grp_fu_6960_p_ce,grp_fu_6964_p_din0,grp_fu_6964_p_din1,grp_fu_6964_p_dout0,grp_fu_6964_p_ce,grp_fu_6968_p_din0,grp_fu_6968_p_din1,grp_fu_6968_p_dout0,grp_fu_6968_p_ce,grp_fu_6972_p_din0,grp_fu_6972_p_din1,grp_fu_6972_p_dout0,grp_fu_6972_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [2:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [2:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [2:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [2:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [2:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [2:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [2:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
output  [2:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [2:0] delta_weights3_4_address1;
output   delta_weights3_4_ce1;
output   delta_weights3_4_we1;
output  [63:0] delta_weights3_4_d1;
output  [2:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [2:0] delta_weights3_5_address1;
output   delta_weights3_5_ce1;
output   delta_weights3_5_we1;
output  [63:0] delta_weights3_5_d1;
output  [2:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [2:0] delta_weights3_6_address1;
output   delta_weights3_6_ce1;
output   delta_weights3_6_we1;
output  [63:0] delta_weights3_6_d1;
output  [2:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [2:0] delta_weights3_7_address1;
output   delta_weights3_7_ce1;
output   delta_weights3_7_we1;
output  [63:0] delta_weights3_7_d1;
output  [2:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [2:0] delta_weights3_8_address1;
output   delta_weights3_8_ce1;
output   delta_weights3_8_we1;
output  [63:0] delta_weights3_8_d1;
output  [2:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [2:0] delta_weights3_9_address1;
output   delta_weights3_9_ce1;
output   delta_weights3_9_we1;
output  [63:0] delta_weights3_9_d1;
output  [2:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [2:0] delta_weights3_10_address1;
output   delta_weights3_10_ce1;
output   delta_weights3_10_we1;
output  [63:0] delta_weights3_10_d1;
output  [2:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [2:0] delta_weights3_11_address1;
output   delta_weights3_11_ce1;
output   delta_weights3_11_we1;
output  [63:0] delta_weights3_11_d1;
output  [2:0] delta_weights3_12_address0;
output   delta_weights3_12_ce0;
output   delta_weights3_12_we0;
output  [63:0] delta_weights3_12_d0;
output  [2:0] delta_weights3_12_address1;
output   delta_weights3_12_ce1;
output   delta_weights3_12_we1;
output  [63:0] delta_weights3_12_d1;
output  [2:0] delta_weights3_13_address0;
output   delta_weights3_13_ce0;
output   delta_weights3_13_we0;
output  [63:0] delta_weights3_13_d0;
output  [2:0] delta_weights3_13_address1;
output   delta_weights3_13_ce1;
output   delta_weights3_13_we1;
output  [63:0] delta_weights3_13_d1;
output  [2:0] delta_weights3_14_address0;
output   delta_weights3_14_ce0;
output   delta_weights3_14_we0;
output  [63:0] delta_weights3_14_d0;
output  [2:0] delta_weights3_14_address1;
output   delta_weights3_14_ce1;
output   delta_weights3_14_we1;
output  [63:0] delta_weights3_14_d1;
output  [2:0] delta_weights3_15_address0;
output   delta_weights3_15_ce0;
output   delta_weights3_15_we0;
output  [63:0] delta_weights3_15_d0;
output  [2:0] delta_weights3_15_address1;
output   delta_weights3_15_ce1;
output   delta_weights3_15_we1;
output  [63:0] delta_weights3_15_d1;
output  [2:0] delta_weights3_16_address0;
output   delta_weights3_16_ce0;
output   delta_weights3_16_we0;
output  [63:0] delta_weights3_16_d0;
output  [2:0] delta_weights3_16_address1;
output   delta_weights3_16_ce1;
output   delta_weights3_16_we1;
output  [63:0] delta_weights3_16_d1;
output  [2:0] delta_weights3_17_address0;
output   delta_weights3_17_ce0;
output   delta_weights3_17_we0;
output  [63:0] delta_weights3_17_d0;
output  [2:0] delta_weights3_17_address1;
output   delta_weights3_17_ce1;
output   delta_weights3_17_we1;
output  [63:0] delta_weights3_17_d1;
output  [2:0] delta_weights3_18_address0;
output   delta_weights3_18_ce0;
output   delta_weights3_18_we0;
output  [63:0] delta_weights3_18_d0;
output  [2:0] delta_weights3_18_address1;
output   delta_weights3_18_ce1;
output   delta_weights3_18_we1;
output  [63:0] delta_weights3_18_d1;
output  [2:0] delta_weights3_19_address0;
output   delta_weights3_19_ce0;
output   delta_weights3_19_we0;
output  [63:0] delta_weights3_19_d0;
output  [2:0] delta_weights3_19_address1;
output   delta_weights3_19_ce1;
output   delta_weights3_19_we1;
output  [63:0] delta_weights3_19_d1;
output  [2:0] delta_weights3_20_address0;
output   delta_weights3_20_ce0;
output   delta_weights3_20_we0;
output  [63:0] delta_weights3_20_d0;
output  [2:0] delta_weights3_20_address1;
output   delta_weights3_20_ce1;
output   delta_weights3_20_we1;
output  [63:0] delta_weights3_20_d1;
output  [2:0] delta_weights3_21_address0;
output   delta_weights3_21_ce0;
output   delta_weights3_21_we0;
output  [63:0] delta_weights3_21_d0;
output  [2:0] delta_weights3_21_address1;
output   delta_weights3_21_ce1;
output   delta_weights3_21_we1;
output  [63:0] delta_weights3_21_d1;
output  [2:0] delta_weights3_22_address0;
output   delta_weights3_22_ce0;
output   delta_weights3_22_we0;
output  [63:0] delta_weights3_22_d0;
output  [2:0] delta_weights3_22_address1;
output   delta_weights3_22_ce1;
output   delta_weights3_22_we1;
output  [63:0] delta_weights3_22_d1;
output  [2:0] delta_weights3_23_address0;
output   delta_weights3_23_ce0;
output   delta_weights3_23_we0;
output  [63:0] delta_weights3_23_d0;
output  [2:0] delta_weights3_23_address1;
output   delta_weights3_23_ce1;
output   delta_weights3_23_we1;
output  [63:0] delta_weights3_23_d1;
output  [2:0] delta_weights3_24_address0;
output   delta_weights3_24_ce0;
output   delta_weights3_24_we0;
output  [63:0] delta_weights3_24_d0;
output  [2:0] delta_weights3_24_address1;
output   delta_weights3_24_ce1;
output   delta_weights3_24_we1;
output  [63:0] delta_weights3_24_d1;
output  [2:0] delta_weights3_25_address0;
output   delta_weights3_25_ce0;
output   delta_weights3_25_we0;
output  [63:0] delta_weights3_25_d0;
output  [2:0] delta_weights3_25_address1;
output   delta_weights3_25_ce1;
output   delta_weights3_25_we1;
output  [63:0] delta_weights3_25_d1;
output  [2:0] delta_weights3_26_address0;
output   delta_weights3_26_ce0;
output   delta_weights3_26_we0;
output  [63:0] delta_weights3_26_d0;
output  [2:0] delta_weights3_26_address1;
output   delta_weights3_26_ce1;
output   delta_weights3_26_we1;
output  [63:0] delta_weights3_26_d1;
output  [2:0] delta_weights3_27_address0;
output   delta_weights3_27_ce0;
output   delta_weights3_27_we0;
output  [63:0] delta_weights3_27_d0;
output  [2:0] delta_weights3_27_address1;
output   delta_weights3_27_ce1;
output   delta_weights3_27_we1;
output  [63:0] delta_weights3_27_d1;
output  [2:0] delta_weights3_28_address0;
output   delta_weights3_28_ce0;
output   delta_weights3_28_we0;
output  [63:0] delta_weights3_28_d0;
output  [2:0] delta_weights3_28_address1;
output   delta_weights3_28_ce1;
output   delta_weights3_28_we1;
output  [63:0] delta_weights3_28_d1;
output  [2:0] delta_weights3_29_address0;
output   delta_weights3_29_ce0;
output   delta_weights3_29_we0;
output  [63:0] delta_weights3_29_d0;
output  [2:0] delta_weights3_29_address1;
output   delta_weights3_29_ce1;
output   delta_weights3_29_we1;
output  [63:0] delta_weights3_29_d1;
output  [2:0] delta_weights3_30_address0;
output   delta_weights3_30_ce0;
output   delta_weights3_30_we0;
output  [63:0] delta_weights3_30_d0;
output  [2:0] delta_weights3_30_address1;
output   delta_weights3_30_ce1;
output   delta_weights3_30_we1;
output  [63:0] delta_weights3_30_d1;
output  [2:0] delta_weights3_31_address0;
output   delta_weights3_31_ce0;
output   delta_weights3_31_we0;
output  [63:0] delta_weights3_31_d0;
output  [2:0] delta_weights3_31_address1;
output   delta_weights3_31_ce1;
output   delta_weights3_31_we1;
output  [63:0] delta_weights3_31_d1;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [0:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [0:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [0:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [0:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [0:0] last_activations_4_address0;
output   last_activations_4_ce0;
input  [63:0] last_activations_4_q0;
output  [0:0] last_activations_5_address0;
output   last_activations_5_ce0;
input  [63:0] last_activations_5_q0;
output  [0:0] last_activations_6_address0;
output   last_activations_6_ce0;
input  [63:0] last_activations_6_q0;
output  [0:0] last_activations_7_address0;
output   last_activations_7_ce0;
input  [63:0] last_activations_7_q0;
output  [0:0] last_activations_8_address0;
output   last_activations_8_ce0;
input  [63:0] last_activations_8_q0;
output  [0:0] last_activations_9_address0;
output   last_activations_9_ce0;
input  [63:0] last_activations_9_q0;
output  [0:0] last_activations_10_address0;
output   last_activations_10_ce0;
input  [63:0] last_activations_10_q0;
output  [0:0] last_activations_11_address0;
output   last_activations_11_ce0;
input  [63:0] last_activations_11_q0;
output  [0:0] last_activations_12_address0;
output   last_activations_12_ce0;
input  [63:0] last_activations_12_q0;
output  [0:0] last_activations_13_address0;
output   last_activations_13_ce0;
input  [63:0] last_activations_13_q0;
output  [0:0] last_activations_14_address0;
output   last_activations_14_ce0;
input  [63:0] last_activations_14_q0;
output  [0:0] last_activations_15_address0;
output   last_activations_15_ce0;
input  [63:0] last_activations_15_q0;
output  [0:0] last_activations_16_address0;
output   last_activations_16_ce0;
input  [63:0] last_activations_16_q0;
output  [0:0] last_activations_17_address0;
output   last_activations_17_ce0;
input  [63:0] last_activations_17_q0;
output  [0:0] last_activations_18_address0;
output   last_activations_18_ce0;
input  [63:0] last_activations_18_q0;
output  [0:0] last_activations_19_address0;
output   last_activations_19_ce0;
input  [63:0] last_activations_19_q0;
output  [0:0] last_activations_20_address0;
output   last_activations_20_ce0;
input  [63:0] last_activations_20_q0;
output  [0:0] last_activations_21_address0;
output   last_activations_21_ce0;
input  [63:0] last_activations_21_q0;
output  [0:0] last_activations_22_address0;
output   last_activations_22_ce0;
input  [63:0] last_activations_22_q0;
output  [0:0] last_activations_23_address0;
output   last_activations_23_ce0;
input  [63:0] last_activations_23_q0;
output  [0:0] last_activations_24_address0;
output   last_activations_24_ce0;
input  [63:0] last_activations_24_q0;
output  [0:0] last_activations_25_address0;
output   last_activations_25_ce0;
input  [63:0] last_activations_25_q0;
output  [0:0] last_activations_26_address0;
output   last_activations_26_ce0;
input  [63:0] last_activations_26_q0;
output  [0:0] last_activations_27_address0;
output   last_activations_27_ce0;
input  [63:0] last_activations_27_q0;
output  [0:0] last_activations_28_address0;
output   last_activations_28_ce0;
input  [63:0] last_activations_28_q0;
output  [0:0] last_activations_29_address0;
output   last_activations_29_ce0;
input  [63:0] last_activations_29_q0;
output  [0:0] last_activations_30_address0;
output   last_activations_30_ce0;
input  [63:0] last_activations_30_q0;
output  [0:0] last_activations_31_address0;
output   last_activations_31_ce0;
input  [63:0] last_activations_31_q0;
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
output  [63:0] grp_fu_6912_p_din0;
output  [63:0] grp_fu_6912_p_din1;
input  [63:0] grp_fu_6912_p_dout0;
output   grp_fu_6912_p_ce;
output  [63:0] grp_fu_6916_p_din0;
output  [63:0] grp_fu_6916_p_din1;
input  [63:0] grp_fu_6916_p_dout0;
output   grp_fu_6916_p_ce;
output  [63:0] grp_fu_6920_p_din0;
output  [63:0] grp_fu_6920_p_din1;
input  [63:0] grp_fu_6920_p_dout0;
output   grp_fu_6920_p_ce;
output  [63:0] grp_fu_6924_p_din0;
output  [63:0] grp_fu_6924_p_din1;
input  [63:0] grp_fu_6924_p_dout0;
output   grp_fu_6924_p_ce;
output  [63:0] grp_fu_6928_p_din0;
output  [63:0] grp_fu_6928_p_din1;
input  [63:0] grp_fu_6928_p_dout0;
output   grp_fu_6928_p_ce;
output  [63:0] grp_fu_6932_p_din0;
output  [63:0] grp_fu_6932_p_din1;
input  [63:0] grp_fu_6932_p_dout0;
output   grp_fu_6932_p_ce;
output  [63:0] grp_fu_6936_p_din0;
output  [63:0] grp_fu_6936_p_din1;
input  [63:0] grp_fu_6936_p_dout0;
output   grp_fu_6936_p_ce;
output  [63:0] grp_fu_6940_p_din0;
output  [63:0] grp_fu_6940_p_din1;
input  [63:0] grp_fu_6940_p_dout0;
output   grp_fu_6940_p_ce;
output  [63:0] grp_fu_6944_p_din0;
output  [63:0] grp_fu_6944_p_din1;
input  [63:0] grp_fu_6944_p_dout0;
output   grp_fu_6944_p_ce;
output  [63:0] grp_fu_6948_p_din0;
output  [63:0] grp_fu_6948_p_din1;
input  [63:0] grp_fu_6948_p_dout0;
output   grp_fu_6948_p_ce;
output  [63:0] grp_fu_6952_p_din0;
output  [63:0] grp_fu_6952_p_din1;
input  [63:0] grp_fu_6952_p_dout0;
output   grp_fu_6952_p_ce;
output  [63:0] grp_fu_6956_p_din0;
output  [63:0] grp_fu_6956_p_din1;
input  [63:0] grp_fu_6956_p_dout0;
output   grp_fu_6956_p_ce;
output  [63:0] grp_fu_6960_p_din0;
output  [63:0] grp_fu_6960_p_din1;
input  [63:0] grp_fu_6960_p_dout0;
output   grp_fu_6960_p_ce;
output  [63:0] grp_fu_6964_p_din0;
output  [63:0] grp_fu_6964_p_din1;
input  [63:0] grp_fu_6964_p_dout0;
output   grp_fu_6964_p_ce;
output  [63:0] grp_fu_6968_p_din0;
output  [63:0] grp_fu_6968_p_din1;
input  [63:0] grp_fu_6968_p_dout0;
output   grp_fu_6968_p_ce;
output  [63:0] grp_fu_6972_p_din0;
output  [63:0] grp_fu_6972_p_din1;
input  [63:0] grp_fu_6972_p_dout0;
output   grp_fu_6972_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_3175;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1940;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_1946;
reg   [63:0] reg_1952;
reg   [63:0] reg_1958;
reg   [63:0] reg_1964;
reg   [63:0] reg_1970;
reg   [63:0] reg_1976;
reg   [63:0] reg_1982;
reg   [63:0] reg_1988;
reg   [63:0] reg_1994;
reg   [63:0] reg_2000;
reg   [63:0] reg_2006;
reg   [63:0] reg_2012;
reg   [63:0] reg_2018;
reg   [63:0] reg_2024;
reg   [63:0] reg_2030;
reg   [63:0] reg_2036;
reg   [63:0] reg_2042;
reg   [63:0] reg_2048;
reg   [63:0] reg_2054;
reg   [63:0] reg_2060;
reg   [63:0] reg_2066;
reg   [63:0] reg_2072;
reg   [63:0] reg_2078;
reg   [63:0] reg_2084;
reg   [63:0] reg_2090;
reg   [63:0] reg_2096;
reg   [63:0] reg_2102;
reg   [63:0] reg_2108;
reg   [63:0] reg_2114;
reg   [63:0] reg_2120;
reg   [63:0] reg_2126;
reg   [63:0] reg_2132;
reg   [63:0] reg_2138;
reg   [63:0] reg_2144;
reg   [63:0] reg_2150;
reg   [63:0] reg_2156;
reg   [63:0] reg_2162;
reg   [63:0] reg_2168;
reg   [63:0] reg_2174;
reg   [63:0] reg_2180;
reg   [63:0] reg_2186;
reg   [63:0] reg_2192;
reg   [63:0] reg_2198;
reg   [63:0] reg_2204;
reg   [63:0] reg_2210;
reg   [63:0] reg_2216;
reg   [63:0] reg_2222;
reg   [6:0] i_13_reg_3169;
reg   [0:0] tmp_reg_3175_pp0_iter1_reg;
reg   [0:0] tmp_reg_3175_pp0_iter2_reg;
reg   [0:0] tmp_reg_3175_pp0_iter3_reg;
wire   [0:0] tmp_17_fu_2244_p3;
reg   [0:0] tmp_17_reg_3179;
reg   [0:0] tmp_17_reg_3179_pp0_iter1_reg;
reg   [0:0] tmp_17_reg_3179_pp0_iter2_reg;
reg   [0:0] tmp_17_reg_3179_pp0_iter3_reg;
reg   [0:0] tmp_17_reg_3179_pp0_iter4_reg;
reg   [63:0] last_activations_0_load_reg_3344;
reg   [4:0] tmp_s_reg_3351;
reg   [4:0] tmp_s_reg_3351_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_3351_pp0_iter2_reg;
reg   [4:0] tmp_s_reg_3351_pp0_iter3_reg;
reg   [63:0] last_activations_1_load_reg_3357;
reg   [63:0] last_activations_2_load_reg_3364;
reg   [63:0] last_activations_3_load_reg_3371;
reg   [63:0] last_activations_4_load_reg_3378;
reg   [63:0] last_activations_5_load_reg_3385;
reg   [63:0] last_activations_6_load_reg_3392;
reg   [63:0] last_activations_7_load_reg_3399;
reg   [63:0] last_activations_8_load_reg_3406;
reg   [63:0] last_activations_9_load_reg_3413;
reg   [63:0] last_activations_10_load_reg_3420;
reg   [63:0] last_activations_11_load_reg_3427;
reg   [63:0] last_activations_12_load_reg_3434;
reg   [63:0] last_activations_13_load_reg_3441;
reg   [63:0] last_activations_14_load_reg_3448;
reg   [63:0] last_activations_15_load_reg_3455;
reg   [63:0] last_activations_16_load_reg_3462;
reg   [63:0] last_activations_17_load_reg_3469;
reg   [63:0] last_activations_18_load_reg_3476;
reg   [63:0] last_activations_19_load_reg_3483;
reg   [63:0] last_activations_20_load_reg_3490;
reg   [63:0] last_activations_21_load_reg_3497;
reg   [63:0] last_activations_22_load_reg_3504;
reg   [63:0] last_activations_23_load_reg_3511;
reg   [63:0] last_activations_24_load_reg_3518;
reg   [63:0] last_activations_25_load_reg_3525;
reg   [63:0] last_activations_26_load_reg_3532;
reg   [63:0] last_activations_27_load_reg_3539;
reg   [63:0] last_activations_28_load_reg_3546;
reg   [63:0] last_activations_29_load_reg_3553;
reg   [63:0] last_activations_30_load_reg_3560;
reg   [63:0] last_activations_31_load_reg_3567;
wire   [7:0] empty_fu_2347_p2;
reg   [7:0] empty_reg_3574;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln72_fu_2252_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_2322_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln75_1_fu_2363_p1;
wire   [63:0] zext_ln75_2_fu_2386_p1;
wire   [63:0] zext_ln75_3_fu_2409_p1;
wire   [63:0] zext_ln75_4_fu_2432_p1;
wire   [63:0] zext_ln75_5_fu_2455_p1;
wire   [63:0] zext_ln75_6_fu_2478_p1;
wire   [63:0] zext_ln75_7_fu_2501_p1;
wire   [63:0] zext_ln75_8_fu_2524_p1;
wire   [63:0] zext_ln75_9_fu_2547_p1;
wire   [63:0] zext_ln75_10_fu_2570_p1;
wire   [63:0] zext_ln75_11_fu_2592_p1;
wire   [63:0] zext_ln75_12_fu_2613_p1;
wire   [63:0] zext_ln75_13_fu_2636_p1;
wire   [63:0] zext_ln75_14_fu_2659_p1;
wire   [63:0] zext_ln75_15_fu_2682_p1;
wire   [63:0] zext_ln75_16_fu_2705_p1;
wire   [63:0] zext_ln75_17_fu_2727_p1;
wire   [63:0] zext_ln75_18_fu_2749_p1;
wire   [63:0] zext_ln75_19_fu_2771_p1;
wire   [63:0] zext_ln75_20_fu_2793_p1;
wire   [63:0] zext_ln75_21_fu_2815_p1;
wire   [63:0] zext_ln75_22_fu_2837_p1;
wire   [63:0] zext_ln75_23_fu_2857_p1;
wire   [63:0] zext_ln75_24_fu_2877_p1;
wire   [63:0] zext_ln75_25_fu_2897_p1;
wire   [63:0] zext_ln75_26_fu_2919_p1;
wire   [63:0] zext_ln75_27_fu_2941_p1;
wire   [63:0] zext_ln75_28_fu_2963_p1;
wire   [63:0] zext_ln75_29_fu_2985_p1;
wire   [63:0] zext_ln75_30_fu_3007_p1;
wire   [63:0] zext_ln75_31_fu_3029_p1;
wire   [63:0] zext_ln75_32_fu_3051_p1;
wire   [63:0] zext_ln75_33_fu_3073_p1;
wire   [63:0] zext_ln75_34_fu_3095_p1;
reg   [6:0] i_fu_254;
wire   [6:0] add_ln73_fu_2297_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_13;
reg    last_activations_0_ce0_local;
reg    last_activations_1_ce0_local;
reg    last_activations_2_ce0_local;
reg    last_activations_3_ce0_local;
reg    last_activations_4_ce0_local;
reg    last_activations_5_ce0_local;
reg    last_activations_6_ce0_local;
reg    last_activations_7_ce0_local;
reg    last_activations_8_ce0_local;
reg    last_activations_9_ce0_local;
reg    last_activations_10_ce0_local;
reg    last_activations_11_ce0_local;
reg    last_activations_12_ce0_local;
reg    last_activations_13_ce0_local;
reg    last_activations_14_ce0_local;
reg    last_activations_15_ce0_local;
reg    last_activations_16_ce0_local;
reg    last_activations_17_ce0_local;
reg    last_activations_18_ce0_local;
reg    last_activations_19_ce0_local;
reg    last_activations_20_ce0_local;
reg    last_activations_21_ce0_local;
reg    last_activations_22_ce0_local;
reg    last_activations_23_ce0_local;
reg    last_activations_24_ce0_local;
reg    last_activations_25_ce0_local;
reg    last_activations_26_ce0_local;
reg    last_activations_27_ce0_local;
reg    last_activations_28_ce0_local;
reg    last_activations_29_ce0_local;
reg    last_activations_30_ce0_local;
reg    last_activations_31_ce0_local;
reg    delta_weights3_0_we1_local;
reg    delta_weights3_0_ce1_local;
reg    delta_weights3_0_we0_local;
reg   [63:0] delta_weights3_0_d0_local;
reg    delta_weights3_0_ce0_local;
reg   [2:0] delta_weights3_0_address0_local;
reg    delta_weights3_1_we1_local;
reg    delta_weights3_1_ce1_local;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [2:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we1_local;
reg    delta_weights3_2_ce1_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [2:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we1_local;
reg    delta_weights3_3_ce1_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [2:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we1_local;
reg    delta_weights3_4_ce1_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [2:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we1_local;
reg    delta_weights3_5_ce1_local;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [2:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we1_local;
reg    delta_weights3_6_ce1_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [2:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we1_local;
reg    delta_weights3_7_ce1_local;
reg    delta_weights3_7_we0_local;
reg   [63:0] delta_weights3_7_d0_local;
reg    delta_weights3_7_ce0_local;
reg   [2:0] delta_weights3_7_address0_local;
reg    delta_weights3_8_we1_local;
reg    delta_weights3_8_ce1_local;
reg    delta_weights3_8_we0_local;
reg   [63:0] delta_weights3_8_d0_local;
reg    delta_weights3_8_ce0_local;
reg   [2:0] delta_weights3_8_address0_local;
reg    delta_weights3_9_we1_local;
reg    delta_weights3_9_ce1_local;
reg    delta_weights3_9_we0_local;
reg   [63:0] delta_weights3_9_d0_local;
reg    delta_weights3_9_ce0_local;
reg   [2:0] delta_weights3_9_address0_local;
reg    delta_weights3_10_we1_local;
reg    delta_weights3_10_ce1_local;
reg    delta_weights3_10_we0_local;
reg   [63:0] delta_weights3_10_d0_local;
reg    delta_weights3_10_ce0_local;
reg   [2:0] delta_weights3_10_address0_local;
reg    delta_weights3_11_we1_local;
reg    delta_weights3_11_ce1_local;
reg    delta_weights3_11_we0_local;
reg   [63:0] delta_weights3_11_d0_local;
reg    delta_weights3_11_ce0_local;
reg   [2:0] delta_weights3_11_address0_local;
reg    delta_weights3_12_we1_local;
reg    delta_weights3_12_ce1_local;
reg    delta_weights3_12_we0_local;
reg   [63:0] delta_weights3_12_d0_local;
reg    delta_weights3_12_ce0_local;
reg   [2:0] delta_weights3_12_address0_local;
reg    delta_weights3_13_we1_local;
reg    delta_weights3_13_ce1_local;
reg    delta_weights3_13_we0_local;
reg   [63:0] delta_weights3_13_d0_local;
reg    delta_weights3_13_ce0_local;
reg   [2:0] delta_weights3_13_address0_local;
reg    delta_weights3_14_we1_local;
reg    delta_weights3_14_ce1_local;
reg    delta_weights3_14_we0_local;
reg   [63:0] delta_weights3_14_d0_local;
reg    delta_weights3_14_ce0_local;
reg   [2:0] delta_weights3_14_address0_local;
reg    delta_weights3_15_we1_local;
reg    delta_weights3_15_ce1_local;
reg    delta_weights3_15_we0_local;
reg   [63:0] delta_weights3_15_d0_local;
reg    delta_weights3_15_ce0_local;
reg   [2:0] delta_weights3_15_address0_local;
reg    delta_weights3_16_we0_local;
reg   [63:0] delta_weights3_16_d0_local;
reg    delta_weights3_16_ce0_local;
reg   [2:0] delta_weights3_16_address0_local;
reg    delta_weights3_16_we1_local;
reg    delta_weights3_16_ce1_local;
reg    delta_weights3_17_we0_local;
reg   [63:0] delta_weights3_17_d0_local;
reg    delta_weights3_17_ce0_local;
reg   [2:0] delta_weights3_17_address0_local;
reg    delta_weights3_17_we1_local;
reg    delta_weights3_17_ce1_local;
reg    delta_weights3_18_we0_local;
reg   [63:0] delta_weights3_18_d0_local;
reg    delta_weights3_18_ce0_local;
reg   [2:0] delta_weights3_18_address0_local;
reg    delta_weights3_18_we1_local;
reg    delta_weights3_18_ce1_local;
reg    delta_weights3_19_we0_local;
reg   [63:0] delta_weights3_19_d0_local;
reg    delta_weights3_19_ce0_local;
reg   [2:0] delta_weights3_19_address0_local;
reg    delta_weights3_19_we1_local;
reg    delta_weights3_19_ce1_local;
reg    delta_weights3_20_we0_local;
reg   [63:0] delta_weights3_20_d0_local;
reg    delta_weights3_20_ce0_local;
reg   [2:0] delta_weights3_20_address0_local;
reg    delta_weights3_20_we1_local;
reg    delta_weights3_20_ce1_local;
reg    delta_weights3_21_we0_local;
reg   [63:0] delta_weights3_21_d0_local;
reg    delta_weights3_21_ce0_local;
reg   [2:0] delta_weights3_21_address0_local;
reg    delta_weights3_21_we1_local;
reg    delta_weights3_21_ce1_local;
reg    delta_weights3_22_we0_local;
reg   [63:0] delta_weights3_22_d0_local;
reg    delta_weights3_22_ce0_local;
reg   [2:0] delta_weights3_22_address0_local;
reg    delta_weights3_22_we1_local;
reg    delta_weights3_22_ce1_local;
reg    delta_weights3_23_we0_local;
reg   [63:0] delta_weights3_23_d0_local;
reg    delta_weights3_23_ce0_local;
reg   [2:0] delta_weights3_23_address0_local;
reg    delta_weights3_23_we1_local;
reg    delta_weights3_23_ce1_local;
reg    delta_weights3_24_we0_local;
reg   [63:0] delta_weights3_24_d0_local;
reg    delta_weights3_24_ce0_local;
reg   [2:0] delta_weights3_24_address0_local;
reg    delta_weights3_24_we1_local;
reg    delta_weights3_24_ce1_local;
reg    delta_weights3_25_we0_local;
reg   [63:0] delta_weights3_25_d0_local;
reg    delta_weights3_25_ce0_local;
reg   [2:0] delta_weights3_25_address0_local;
reg    delta_weights3_25_we1_local;
reg    delta_weights3_25_ce1_local;
reg    delta_weights3_26_we0_local;
reg   [63:0] delta_weights3_26_d0_local;
reg    delta_weights3_26_ce0_local;
reg   [2:0] delta_weights3_26_address0_local;
reg    delta_weights3_26_we1_local;
reg    delta_weights3_26_ce1_local;
reg    delta_weights3_27_we0_local;
reg   [63:0] delta_weights3_27_d0_local;
reg    delta_weights3_27_ce0_local;
reg   [2:0] delta_weights3_27_address0_local;
reg    delta_weights3_27_we1_local;
reg    delta_weights3_27_ce1_local;
reg    delta_weights3_28_we0_local;
reg   [63:0] delta_weights3_28_d0_local;
reg    delta_weights3_28_ce0_local;
reg   [2:0] delta_weights3_28_address0_local;
reg    delta_weights3_28_we1_local;
reg    delta_weights3_28_ce1_local;
reg    delta_weights3_29_we0_local;
reg   [63:0] delta_weights3_29_d0_local;
reg    delta_weights3_29_ce0_local;
reg   [2:0] delta_weights3_29_address0_local;
reg    delta_weights3_29_we1_local;
reg    delta_weights3_29_ce1_local;
reg    delta_weights3_30_we0_local;
reg   [63:0] delta_weights3_30_d0_local;
reg    delta_weights3_30_ce0_local;
reg   [2:0] delta_weights3_30_address0_local;
reg    delta_weights3_30_we1_local;
reg    delta_weights3_30_ce1_local;
reg    delta_weights3_31_we0_local;
reg   [63:0] delta_weights3_31_d0_local;
reg    delta_weights3_31_ce0_local;
reg   [2:0] delta_weights3_31_address0_local;
reg    delta_weights3_31_we1_local;
reg    delta_weights3_31_ce1_local;
reg   [63:0] grp_fu_1748_p0;
reg   [63:0] grp_fu_1752_p0;
reg   [63:0] grp_fu_1756_p0;
reg   [63:0] grp_fu_1760_p0;
reg   [63:0] grp_fu_1764_p0;
reg   [63:0] grp_fu_1768_p0;
reg   [63:0] grp_fu_1772_p0;
reg   [63:0] grp_fu_1776_p0;
reg   [63:0] grp_fu_1780_p0;
reg   [63:0] grp_fu_1784_p0;
reg   [63:0] grp_fu_1788_p0;
reg   [63:0] grp_fu_1792_p0;
reg   [63:0] grp_fu_1796_p0;
reg   [63:0] grp_fu_1800_p0;
reg   [63:0] grp_fu_1804_p0;
reg   [63:0] grp_fu_1808_p0;
reg   [63:0] grp_fu_1812_p0;
reg   [63:0] grp_fu_1816_p0;
reg   [63:0] grp_fu_1820_p0;
reg   [63:0] grp_fu_1824_p0;
reg   [63:0] grp_fu_1828_p0;
reg   [63:0] grp_fu_1832_p0;
reg   [63:0] grp_fu_1836_p0;
reg   [63:0] grp_fu_1840_p0;
reg   [63:0] grp_fu_1844_p0;
reg   [63:0] grp_fu_1848_p0;
reg   [63:0] grp_fu_1852_p0;
reg   [63:0] grp_fu_1856_p0;
reg   [63:0] grp_fu_1860_p0;
reg   [63:0] grp_fu_1864_p0;
reg   [63:0] grp_fu_1868_p0;
reg   [63:0] grp_fu_1872_p0;
reg   [63:0] grp_fu_1876_p0;
reg   [63:0] grp_fu_1880_p0;
reg   [63:0] grp_fu_1884_p0;
reg   [63:0] grp_fu_1888_p0;
reg   [63:0] grp_fu_1892_p0;
reg   [63:0] grp_fu_1896_p0;
reg   [63:0] grp_fu_1900_p0;
reg   [63:0] grp_fu_1904_p0;
reg   [63:0] grp_fu_1908_p0;
reg   [63:0] grp_fu_1912_p0;
reg   [63:0] grp_fu_1916_p0;
reg   [63:0] grp_fu_1920_p0;
reg   [63:0] grp_fu_1924_p0;
reg   [63:0] grp_fu_1928_p0;
reg   [63:0] grp_fu_1932_p0;
reg   [63:0] grp_fu_1936_p0;
wire   [1:0] select_ln75_fu_2307_p3;
wire   [2:0] and_ln_fu_2314_p3;
wire   [5:0] or_ln_fu_2329_p3;
wire   [7:0] p_shl_fu_2340_p3;
wire   [7:0] or_ln73_cast_fu_2336_p1;
wire   [2:0] lshr_ln_fu_2353_p4;
wire   [7:0] empty_537_fu_2370_p2;
wire   [2:0] lshr_ln75_1_fu_2376_p4;
wire   [7:0] empty_538_fu_2393_p2;
wire   [2:0] lshr_ln75_2_fu_2399_p4;
wire   [7:0] empty_539_fu_2416_p2;
wire   [2:0] lshr_ln75_3_fu_2422_p4;
wire   [7:0] empty_540_fu_2439_p2;
wire   [2:0] lshr_ln75_4_fu_2445_p4;
wire   [7:0] empty_541_fu_2462_p2;
wire   [2:0] lshr_ln75_5_fu_2468_p4;
wire   [7:0] empty_542_fu_2485_p2;
wire   [2:0] lshr_ln75_6_fu_2491_p4;
wire   [7:0] empty_543_fu_2508_p2;
wire   [2:0] lshr_ln75_7_fu_2514_p4;
wire   [7:0] empty_544_fu_2531_p2;
wire   [2:0] lshr_ln75_8_fu_2537_p4;
wire   [7:0] empty_545_fu_2554_p2;
wire   [2:0] lshr_ln75_9_fu_2560_p4;
wire   [7:0] add_ln75_fu_2576_p2;
wire   [2:0] lshr_ln75_s_fu_2582_p4;
wire   [7:0] empty_546_fu_2597_p2;
wire   [2:0] lshr_ln75_10_fu_2603_p4;
wire   [7:0] empty_547_fu_2620_p2;
wire   [2:0] lshr_ln75_11_fu_2626_p4;
wire   [7:0] empty_548_fu_2643_p2;
wire   [2:0] lshr_ln75_12_fu_2649_p4;
wire   [7:0] empty_549_fu_2666_p2;
wire   [2:0] lshr_ln75_13_fu_2672_p4;
wire   [7:0] empty_550_fu_2689_p2;
wire   [2:0] lshr_ln75_14_fu_2695_p4;
wire   [7:0] empty_551_fu_2712_p2;
wire   [2:0] lshr_ln75_15_fu_2717_p4;
wire   [7:0] empty_552_fu_2734_p2;
wire   [2:0] lshr_ln75_16_fu_2739_p4;
wire   [7:0] empty_553_fu_2756_p2;
wire   [2:0] lshr_ln75_17_fu_2761_p4;
wire   [7:0] empty_554_fu_2778_p2;
wire   [2:0] lshr_ln75_18_fu_2783_p4;
wire   [7:0] empty_555_fu_2800_p2;
wire   [2:0] lshr_ln75_19_fu_2805_p4;
wire   [7:0] empty_556_fu_2822_p2;
wire   [2:0] lshr_ln75_20_fu_2827_p4;
wire   [7:0] add_ln75_1_fu_2842_p2;
wire   [2:0] lshr_ln75_21_fu_2847_p4;
wire   [7:0] add_ln75_2_fu_2862_p2;
wire   [2:0] lshr_ln75_22_fu_2867_p4;
wire   [7:0] empty_557_fu_2882_p2;
wire   [2:0] lshr_ln75_23_fu_2887_p4;
wire   [7:0] empty_558_fu_2904_p2;
wire   [2:0] lshr_ln75_24_fu_2909_p4;
wire   [7:0] empty_559_fu_2926_p2;
wire   [2:0] lshr_ln75_25_fu_2931_p4;
wire   [7:0] empty_560_fu_2948_p2;
wire   [2:0] lshr_ln75_26_fu_2953_p4;
wire   [7:0] empty_561_fu_2970_p2;
wire   [2:0] lshr_ln75_27_fu_2975_p4;
wire   [7:0] empty_562_fu_2992_p2;
wire   [2:0] lshr_ln75_28_fu_2997_p4;
wire   [7:0] empty_563_fu_3014_p2;
wire   [2:0] lshr_ln75_29_fu_3019_p4;
wire   [7:0] empty_564_fu_3036_p2;
wire   [2:0] lshr_ln75_30_fu_3041_p4;
wire   [7:0] empty_565_fu_3058_p2;
wire   [2:0] lshr_ln75_31_fu_3063_p4;
wire   [7:0] empty_566_fu_3080_p2;
wire   [2:0] lshr_ln75_32_fu_3085_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage0;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_254 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_254 <= 7'd0;
    end else if (((tmp_reg_3175 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_254 <= add_ln73_fu_2297_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_3574[7 : 1] <= empty_fu_2347_p2[7 : 1];
        last_activations_0_load_reg_3344 <= last_activations_0_q0;
        last_activations_10_load_reg_3420 <= last_activations_10_q0;
        last_activations_11_load_reg_3427 <= last_activations_11_q0;
        last_activations_12_load_reg_3434 <= last_activations_12_q0;
        last_activations_13_load_reg_3441 <= last_activations_13_q0;
        last_activations_14_load_reg_3448 <= last_activations_14_q0;
        last_activations_15_load_reg_3455 <= last_activations_15_q0;
        last_activations_16_load_reg_3462 <= last_activations_16_q0;
        last_activations_17_load_reg_3469 <= last_activations_17_q0;
        last_activations_18_load_reg_3476 <= last_activations_18_q0;
        last_activations_19_load_reg_3483 <= last_activations_19_q0;
        last_activations_1_load_reg_3357 <= last_activations_1_q0;
        last_activations_20_load_reg_3490 <= last_activations_20_q0;
        last_activations_21_load_reg_3497 <= last_activations_21_q0;
        last_activations_22_load_reg_3504 <= last_activations_22_q0;
        last_activations_23_load_reg_3511 <= last_activations_23_q0;
        last_activations_24_load_reg_3518 <= last_activations_24_q0;
        last_activations_25_load_reg_3525 <= last_activations_25_q0;
        last_activations_26_load_reg_3532 <= last_activations_26_q0;
        last_activations_27_load_reg_3539 <= last_activations_27_q0;
        last_activations_28_load_reg_3546 <= last_activations_28_q0;
        last_activations_29_load_reg_3553 <= last_activations_29_q0;
        last_activations_2_load_reg_3364 <= last_activations_2_q0;
        last_activations_30_load_reg_3560 <= last_activations_30_q0;
        last_activations_31_load_reg_3567 <= last_activations_31_q0;
        last_activations_3_load_reg_3371 <= last_activations_3_q0;
        last_activations_4_load_reg_3378 <= last_activations_4_q0;
        last_activations_5_load_reg_3385 <= last_activations_5_q0;
        last_activations_6_load_reg_3392 <= last_activations_6_q0;
        last_activations_7_load_reg_3399 <= last_activations_7_q0;
        last_activations_8_load_reg_3406 <= last_activations_8_q0;
        last_activations_9_load_reg_3413 <= last_activations_9_q0;
        tmp_s_reg_3351 <= {{i_13_reg_3169[5:1]}};
        tmp_s_reg_3351_pp0_iter1_reg <= tmp_s_reg_3351;
        tmp_s_reg_3351_pp0_iter2_reg <= tmp_s_reg_3351_pp0_iter1_reg;
        tmp_s_reg_3351_pp0_iter3_reg <= tmp_s_reg_3351_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_13_reg_3169 <= ap_sig_allocacmp_i_13;
        tmp_17_reg_3179 <= ap_sig_allocacmp_i_13[32'd5];
        tmp_17_reg_3179_pp0_iter1_reg <= tmp_17_reg_3179;
        tmp_17_reg_3179_pp0_iter2_reg <= tmp_17_reg_3179_pp0_iter1_reg;
        tmp_17_reg_3179_pp0_iter3_reg <= tmp_17_reg_3179_pp0_iter2_reg;
        tmp_17_reg_3179_pp0_iter4_reg <= tmp_17_reg_3179_pp0_iter3_reg;
        tmp_reg_3175 <= ap_sig_allocacmp_i_13[32'd6];
        tmp_reg_3175_pp0_iter1_reg <= tmp_reg_3175;
        tmp_reg_3175_pp0_iter2_reg <= tmp_reg_3175_pp0_iter1_reg;
        tmp_reg_3175_pp0_iter3_reg <= tmp_reg_3175_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1940 <= grp_fu_6784_p_dout0;
        reg_1946 <= grp_fu_6788_p_dout0;
        reg_1952 <= grp_fu_6792_p_dout0;
        reg_1958 <= grp_fu_6796_p_dout0;
        reg_1964 <= grp_fu_6800_p_dout0;
        reg_1970 <= grp_fu_6804_p_dout0;
        reg_1976 <= grp_fu_6808_p_dout0;
        reg_1982 <= grp_fu_6812_p_dout0;
        reg_1988 <= grp_fu_6816_p_dout0;
        reg_1994 <= grp_fu_6820_p_dout0;
        reg_2000 <= grp_fu_6824_p_dout0;
        reg_2006 <= grp_fu_6828_p_dout0;
        reg_2012 <= grp_fu_6832_p_dout0;
        reg_2018 <= grp_fu_6836_p_dout0;
        reg_2024 <= grp_fu_6840_p_dout0;
        reg_2030 <= grp_fu_6844_p_dout0;
        reg_2036 <= grp_fu_6848_p_dout0;
        reg_2042 <= grp_fu_6852_p_dout0;
        reg_2048 <= grp_fu_6856_p_dout0;
        reg_2054 <= grp_fu_6860_p_dout0;
        reg_2060 <= grp_fu_6864_p_dout0;
        reg_2066 <= grp_fu_6868_p_dout0;
        reg_2072 <= grp_fu_6872_p_dout0;
        reg_2078 <= grp_fu_6876_p_dout0;
        reg_2084 <= grp_fu_6880_p_dout0;
        reg_2090 <= grp_fu_6884_p_dout0;
        reg_2096 <= grp_fu_6888_p_dout0;
        reg_2102 <= grp_fu_6892_p_dout0;
        reg_2108 <= grp_fu_6896_p_dout0;
        reg_2114 <= grp_fu_6900_p_dout0;
        reg_2120 <= grp_fu_6904_p_dout0;
        reg_2126 <= grp_fu_6908_p_dout0;
        reg_2132 <= grp_fu_6912_p_dout0;
        reg_2138 <= grp_fu_6916_p_dout0;
        reg_2144 <= grp_fu_6920_p_dout0;
        reg_2150 <= grp_fu_6924_p_dout0;
        reg_2156 <= grp_fu_6928_p_dout0;
        reg_2162 <= grp_fu_6932_p_dout0;
        reg_2168 <= grp_fu_6936_p_dout0;
        reg_2174 <= grp_fu_6940_p_dout0;
        reg_2180 <= grp_fu_6944_p_dout0;
        reg_2186 <= grp_fu_6948_p_dout0;
        reg_2192 <= grp_fu_6952_p_dout0;
        reg_2198 <= grp_fu_6956_p_dout0;
        reg_2204 <= grp_fu_6960_p_dout0;
        reg_2210 <= grp_fu_6964_p_dout0;
        reg_2216 <= grp_fu_6968_p_dout0;
        reg_2222 <= grp_fu_6972_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_3175 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3175_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_13 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_13 = i_fu_254;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_0_address0_local = zext_ln75_23_fu_2857_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_address0_local = zext_ln75_11_fu_2592_p1;
    end else begin
        delta_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_0_d0_local = reg_2036;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_d0_local = reg_2132;
    end else begin
        delta_weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_10_address0_local = zext_ln75_27_fu_2941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_10_address0_local = zext_ln75_15_fu_2682_p1;
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_10_ce1_local = 1'b1;
    end else begin
        delta_weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_10_d0_local = reg_2096;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_10_d0_local = reg_2192;
    end else begin
        delta_weights3_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_10_we1_local = 1'b1;
    end else begin
        delta_weights3_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_11_address0_local = zext_ln75_28_fu_2963_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_11_address0_local = zext_ln75_15_fu_2682_p1;
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_11_ce1_local = 1'b1;
    end else begin
        delta_weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_11_d0_local = reg_2102;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_11_d0_local = reg_2198;
    end else begin
        delta_weights3_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_11_we1_local = 1'b1;
    end else begin
        delta_weights3_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_12_address0_local = zext_ln75_28_fu_2963_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_12_address0_local = zext_ln75_15_fu_2682_p1;
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_12_ce1_local = 1'b1;
    end else begin
        delta_weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_12_d0_local = reg_2108;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_12_d0_local = reg_2204;
    end else begin
        delta_weights3_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_12_we1_local = 1'b1;
    end else begin
        delta_weights3_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_13_address0_local = zext_ln75_28_fu_2963_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_13_address0_local = zext_ln75_16_fu_2705_p1;
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_13_ce1_local = 1'b1;
    end else begin
        delta_weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_13_d0_local = reg_2114;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_13_d0_local = reg_2210;
    end else begin
        delta_weights3_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_13_we1_local = 1'b1;
    end else begin
        delta_weights3_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_14_address0_local = zext_ln75_29_fu_2985_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_14_address0_local = zext_ln75_16_fu_2705_p1;
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_14_ce1_local = 1'b1;
    end else begin
        delta_weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_14_d0_local = reg_2120;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_14_d0_local = reg_2216;
    end else begin
        delta_weights3_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_14_we1_local = 1'b1;
    end else begin
        delta_weights3_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_15_address0_local = zext_ln75_29_fu_2985_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_15_address0_local = zext_ln75_16_fu_2705_p1;
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_15_ce1_local = 1'b1;
    end else begin
        delta_weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_15_d0_local = reg_2126;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_15_d0_local = reg_2222;
    end else begin
        delta_weights3_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_15_we1_local = 1'b1;
    end else begin
        delta_weights3_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_16_address0_local = zext_ln75_29_fu_2985_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_16_address0_local = zext_ln75_5_fu_2455_p1;
    end else begin
        delta_weights3_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_16_ce0_local = 1'b1;
    end else begin
        delta_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_16_ce1_local = 1'b1;
    end else begin
        delta_weights3_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_16_d0_local = reg_2132;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_16_d0_local = reg_2036;
    end else begin
        delta_weights3_16_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_16_we0_local = 1'b1;
    end else begin
        delta_weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_16_we1_local = 1'b1;
    end else begin
        delta_weights3_16_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_17_address0_local = zext_ln75_30_fu_3007_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_17_address0_local = zext_ln75_5_fu_2455_p1;
    end else begin
        delta_weights3_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_17_ce0_local = 1'b1;
    end else begin
        delta_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_17_ce1_local = 1'b1;
    end else begin
        delta_weights3_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_17_d0_local = reg_2138;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_17_d0_local = reg_2042;
    end else begin
        delta_weights3_17_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_17_we0_local = 1'b1;
    end else begin
        delta_weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_17_we1_local = 1'b1;
    end else begin
        delta_weights3_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_18_address0_local = zext_ln75_30_fu_3007_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_18_address0_local = zext_ln75_6_fu_2478_p1;
    end else begin
        delta_weights3_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_18_ce0_local = 1'b1;
    end else begin
        delta_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_18_ce1_local = 1'b1;
    end else begin
        delta_weights3_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_18_d0_local = reg_2144;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_18_d0_local = reg_2048;
    end else begin
        delta_weights3_18_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_18_we0_local = 1'b1;
    end else begin
        delta_weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_18_we1_local = 1'b1;
    end else begin
        delta_weights3_18_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_19_address0_local = zext_ln75_30_fu_3007_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_19_address0_local = zext_ln75_6_fu_2478_p1;
    end else begin
        delta_weights3_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_19_ce0_local = 1'b1;
    end else begin
        delta_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_19_ce1_local = 1'b1;
    end else begin
        delta_weights3_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_19_d0_local = reg_2150;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_19_d0_local = reg_2054;
    end else begin
        delta_weights3_19_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_19_we0_local = 1'b1;
    end else begin
        delta_weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_19_we1_local = 1'b1;
    end else begin
        delta_weights3_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_1_address0_local = zext_ln75_24_fu_2877_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_address0_local = zext_ln75_12_fu_2613_p1;
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_1_d0_local = reg_2042;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_d0_local = reg_2138;
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_20_address0_local = zext_ln75_31_fu_3029_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_20_address0_local = zext_ln75_6_fu_2478_p1;
    end else begin
        delta_weights3_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_20_ce0_local = 1'b1;
    end else begin
        delta_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_20_ce1_local = 1'b1;
    end else begin
        delta_weights3_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_20_d0_local = reg_2156;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_20_d0_local = reg_2060;
    end else begin
        delta_weights3_20_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_20_we0_local = 1'b1;
    end else begin
        delta_weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_20_we1_local = 1'b1;
    end else begin
        delta_weights3_20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_21_address0_local = zext_ln75_31_fu_3029_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_21_address0_local = zext_ln75_7_fu_2501_p1;
    end else begin
        delta_weights3_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_21_ce0_local = 1'b1;
    end else begin
        delta_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_21_ce1_local = 1'b1;
    end else begin
        delta_weights3_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_21_d0_local = reg_2162;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_21_d0_local = reg_2066;
    end else begin
        delta_weights3_21_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_21_we0_local = 1'b1;
    end else begin
        delta_weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_21_we1_local = 1'b1;
    end else begin
        delta_weights3_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_22_address0_local = zext_ln75_31_fu_3029_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_22_address0_local = zext_ln75_7_fu_2501_p1;
    end else begin
        delta_weights3_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_22_ce0_local = 1'b1;
    end else begin
        delta_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_22_ce1_local = 1'b1;
    end else begin
        delta_weights3_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_22_d0_local = reg_2168;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_22_d0_local = reg_2072;
    end else begin
        delta_weights3_22_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_22_we0_local = 1'b1;
    end else begin
        delta_weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_22_we1_local = 1'b1;
    end else begin
        delta_weights3_22_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_23_address0_local = zext_ln75_32_fu_3051_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_23_address0_local = zext_ln75_7_fu_2501_p1;
    end else begin
        delta_weights3_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_23_ce0_local = 1'b1;
    end else begin
        delta_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_23_ce1_local = 1'b1;
    end else begin
        delta_weights3_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_23_d0_local = reg_2174;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_23_d0_local = reg_2078;
    end else begin
        delta_weights3_23_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_23_we0_local = 1'b1;
    end else begin
        delta_weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_23_we1_local = 1'b1;
    end else begin
        delta_weights3_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_24_address0_local = zext_ln75_32_fu_3051_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_24_address0_local = zext_ln75_8_fu_2524_p1;
    end else begin
        delta_weights3_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_24_ce0_local = 1'b1;
    end else begin
        delta_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_24_ce1_local = 1'b1;
    end else begin
        delta_weights3_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_24_d0_local = reg_2180;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_24_d0_local = reg_2084;
    end else begin
        delta_weights3_24_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_24_we0_local = 1'b1;
    end else begin
        delta_weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_24_we1_local = 1'b1;
    end else begin
        delta_weights3_24_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_25_address0_local = zext_ln75_32_fu_3051_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_25_address0_local = zext_ln75_8_fu_2524_p1;
    end else begin
        delta_weights3_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_25_ce0_local = 1'b1;
    end else begin
        delta_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_25_ce1_local = 1'b1;
    end else begin
        delta_weights3_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_25_d0_local = reg_2186;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_25_d0_local = reg_2090;
    end else begin
        delta_weights3_25_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_25_we0_local = 1'b1;
    end else begin
        delta_weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_25_we1_local = 1'b1;
    end else begin
        delta_weights3_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_26_address0_local = zext_ln75_33_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_26_address0_local = zext_ln75_8_fu_2524_p1;
    end else begin
        delta_weights3_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_26_ce0_local = 1'b1;
    end else begin
        delta_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_26_ce1_local = 1'b1;
    end else begin
        delta_weights3_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_26_d0_local = reg_2192;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_26_d0_local = reg_2096;
    end else begin
        delta_weights3_26_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_26_we0_local = 1'b1;
    end else begin
        delta_weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_26_we1_local = 1'b1;
    end else begin
        delta_weights3_26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_27_address0_local = zext_ln75_33_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_27_address0_local = zext_ln75_9_fu_2547_p1;
    end else begin
        delta_weights3_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_27_ce0_local = 1'b1;
    end else begin
        delta_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_27_ce1_local = 1'b1;
    end else begin
        delta_weights3_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_27_d0_local = reg_2198;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_27_d0_local = reg_2102;
    end else begin
        delta_weights3_27_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_27_we0_local = 1'b1;
    end else begin
        delta_weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_27_we1_local = 1'b1;
    end else begin
        delta_weights3_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_28_address0_local = zext_ln75_33_fu_3073_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_28_address0_local = zext_ln75_9_fu_2547_p1;
    end else begin
        delta_weights3_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_28_ce0_local = 1'b1;
    end else begin
        delta_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_28_ce1_local = 1'b1;
    end else begin
        delta_weights3_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_28_d0_local = reg_2204;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_28_d0_local = reg_2108;
    end else begin
        delta_weights3_28_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_28_we0_local = 1'b1;
    end else begin
        delta_weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_28_we1_local = 1'b1;
    end else begin
        delta_weights3_28_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_29_address0_local = zext_ln75_34_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_29_address0_local = zext_ln75_9_fu_2547_p1;
    end else begin
        delta_weights3_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_29_ce0_local = 1'b1;
    end else begin
        delta_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_29_ce1_local = 1'b1;
    end else begin
        delta_weights3_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_29_d0_local = reg_2210;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_29_d0_local = reg_2114;
    end else begin
        delta_weights3_29_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_29_we0_local = 1'b1;
    end else begin
        delta_weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_29_we1_local = 1'b1;
    end else begin
        delta_weights3_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_2_address0_local = zext_ln75_25_fu_2897_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_2_address0_local = zext_ln75_12_fu_2613_p1;
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_2_d0_local = reg_2048;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_2_d0_local = reg_2144;
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_30_address0_local = zext_ln75_34_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_30_address0_local = zext_ln75_10_fu_2570_p1;
    end else begin
        delta_weights3_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_30_ce0_local = 1'b1;
    end else begin
        delta_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_30_ce1_local = 1'b1;
    end else begin
        delta_weights3_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_30_d0_local = reg_2216;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_30_d0_local = reg_2120;
    end else begin
        delta_weights3_30_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_30_we0_local = 1'b1;
    end else begin
        delta_weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_30_we1_local = 1'b1;
    end else begin
        delta_weights3_30_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_31_address0_local = zext_ln75_34_fu_3095_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_31_address0_local = zext_ln75_10_fu_2570_p1;
    end else begin
        delta_weights3_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_31_ce0_local = 1'b1;
    end else begin
        delta_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_31_ce1_local = 1'b1;
    end else begin
        delta_weights3_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_31_d0_local = reg_2222;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_31_d0_local = reg_2126;
    end else begin
        delta_weights3_31_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_31_we0_local = 1'b1;
    end else begin
        delta_weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_31_we1_local = 1'b1;
    end else begin
        delta_weights3_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_3_address0_local = zext_ln75_25_fu_2897_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_3_address0_local = zext_ln75_12_fu_2613_p1;
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_3_d0_local = reg_2054;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_3_d0_local = reg_2150;
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_4_address0_local = zext_ln75_25_fu_2897_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_4_address0_local = zext_ln75_13_fu_2636_p1;
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_4_ce1_local = 1'b1;
    end else begin
        delta_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_4_d0_local = reg_2060;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_4_d0_local = reg_2156;
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_5_address0_local = zext_ln75_26_fu_2919_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_5_address0_local = zext_ln75_13_fu_2636_p1;
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_5_ce1_local = 1'b1;
    end else begin
        delta_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_5_d0_local = reg_2066;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_5_d0_local = reg_2162;
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_6_address0_local = zext_ln75_26_fu_2919_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_6_address0_local = zext_ln75_13_fu_2636_p1;
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_6_ce1_local = 1'b1;
    end else begin
        delta_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_6_d0_local = reg_2072;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_6_d0_local = reg_2168;
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_6_we1_local = 1'b1;
    end else begin
        delta_weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_7_address0_local = zext_ln75_26_fu_2919_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_7_address0_local = zext_ln75_14_fu_2659_p1;
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_7_ce1_local = 1'b1;
    end else begin
        delta_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_7_d0_local = reg_2078;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_7_d0_local = reg_2174;
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_7_we1_local = 1'b1;
    end else begin
        delta_weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_8_address0_local = zext_ln75_27_fu_2941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_8_address0_local = zext_ln75_14_fu_2659_p1;
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_8_ce1_local = 1'b1;
    end else begin
        delta_weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_8_d0_local = reg_2084;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_8_d0_local = reg_2180;
    end else begin
        delta_weights3_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_8_we1_local = 1'b1;
    end else begin
        delta_weights3_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_9_address0_local = zext_ln75_27_fu_2941_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_9_address0_local = zext_ln75_14_fu_2659_p1;
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_9_ce1_local = 1'b1;
    end else begin
        delta_weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights3_9_d0_local = reg_2090;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_9_d0_local = reg_2186;
    end else begin
        delta_weights3_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights3_9_we1_local = 1'b1;
    end else begin
        delta_weights3_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1748_p0 = last_activations_16_load_reg_3462;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1748_p0 = last_activations_0_load_reg_3344;
        end else begin
            grp_fu_1748_p0 = 'bx;
        end
    end else begin
        grp_fu_1748_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1752_p0 = last_activations_16_load_reg_3462;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1752_p0 = last_activations_0_load_reg_3344;
        end else begin
            grp_fu_1752_p0 = 'bx;
        end
    end else begin
        grp_fu_1752_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1756_p0 = last_activations_16_load_reg_3462;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1756_p0 = last_activations_0_load_reg_3344;
        end else begin
            grp_fu_1756_p0 = 'bx;
        end
    end else begin
        grp_fu_1756_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1760_p0 = last_activations_17_load_reg_3469;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1760_p0 = last_activations_1_load_reg_3357;
        end else begin
            grp_fu_1760_p0 = 'bx;
        end
    end else begin
        grp_fu_1760_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1764_p0 = last_activations_17_load_reg_3469;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1764_p0 = last_activations_1_load_reg_3357;
        end else begin
            grp_fu_1764_p0 = 'bx;
        end
    end else begin
        grp_fu_1764_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1768_p0 = last_activations_17_load_reg_3469;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1768_p0 = last_activations_1_load_reg_3357;
        end else begin
            grp_fu_1768_p0 = 'bx;
        end
    end else begin
        grp_fu_1768_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1772_p0 = last_activations_18_load_reg_3476;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1772_p0 = last_activations_2_load_reg_3364;
        end else begin
            grp_fu_1772_p0 = 'bx;
        end
    end else begin
        grp_fu_1772_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1776_p0 = last_activations_18_load_reg_3476;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1776_p0 = last_activations_2_load_reg_3364;
        end else begin
            grp_fu_1776_p0 = 'bx;
        end
    end else begin
        grp_fu_1776_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1780_p0 = last_activations_18_load_reg_3476;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1780_p0 = last_activations_2_load_reg_3364;
        end else begin
            grp_fu_1780_p0 = 'bx;
        end
    end else begin
        grp_fu_1780_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1784_p0 = last_activations_19_load_reg_3483;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1784_p0 = last_activations_3_load_reg_3371;
        end else begin
            grp_fu_1784_p0 = 'bx;
        end
    end else begin
        grp_fu_1784_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1788_p0 = last_activations_19_load_reg_3483;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1788_p0 = last_activations_3_load_reg_3371;
        end else begin
            grp_fu_1788_p0 = 'bx;
        end
    end else begin
        grp_fu_1788_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1792_p0 = last_activations_19_load_reg_3483;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1792_p0 = last_activations_3_load_reg_3371;
        end else begin
            grp_fu_1792_p0 = 'bx;
        end
    end else begin
        grp_fu_1792_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1796_p0 = last_activations_20_load_reg_3490;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1796_p0 = last_activations_4_load_reg_3378;
        end else begin
            grp_fu_1796_p0 = 'bx;
        end
    end else begin
        grp_fu_1796_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1800_p0 = last_activations_20_load_reg_3490;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1800_p0 = last_activations_4_load_reg_3378;
        end else begin
            grp_fu_1800_p0 = 'bx;
        end
    end else begin
        grp_fu_1800_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1804_p0 = last_activations_20_load_reg_3490;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1804_p0 = last_activations_4_load_reg_3378;
        end else begin
            grp_fu_1804_p0 = 'bx;
        end
    end else begin
        grp_fu_1804_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1808_p0 = last_activations_21_load_reg_3497;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1808_p0 = last_activations_5_load_reg_3385;
        end else begin
            grp_fu_1808_p0 = 'bx;
        end
    end else begin
        grp_fu_1808_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1812_p0 = last_activations_21_load_reg_3497;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1812_p0 = last_activations_5_load_reg_3385;
        end else begin
            grp_fu_1812_p0 = 'bx;
        end
    end else begin
        grp_fu_1812_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1816_p0 = last_activations_21_load_reg_3497;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1816_p0 = last_activations_5_load_reg_3385;
        end else begin
            grp_fu_1816_p0 = 'bx;
        end
    end else begin
        grp_fu_1816_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1820_p0 = last_activations_22_load_reg_3504;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1820_p0 = last_activations_6_load_reg_3392;
        end else begin
            grp_fu_1820_p0 = 'bx;
        end
    end else begin
        grp_fu_1820_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1824_p0 = last_activations_22_load_reg_3504;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1824_p0 = last_activations_6_load_reg_3392;
        end else begin
            grp_fu_1824_p0 = 'bx;
        end
    end else begin
        grp_fu_1824_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1828_p0 = last_activations_22_load_reg_3504;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1828_p0 = last_activations_6_load_reg_3392;
        end else begin
            grp_fu_1828_p0 = 'bx;
        end
    end else begin
        grp_fu_1828_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1832_p0 = last_activations_23_load_reg_3511;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1832_p0 = last_activations_7_load_reg_3399;
        end else begin
            grp_fu_1832_p0 = 'bx;
        end
    end else begin
        grp_fu_1832_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1836_p0 = last_activations_23_load_reg_3511;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1836_p0 = last_activations_7_load_reg_3399;
        end else begin
            grp_fu_1836_p0 = 'bx;
        end
    end else begin
        grp_fu_1836_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1840_p0 = last_activations_23_load_reg_3511;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1840_p0 = last_activations_7_load_reg_3399;
        end else begin
            grp_fu_1840_p0 = 'bx;
        end
    end else begin
        grp_fu_1840_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1844_p0 = last_activations_24_load_reg_3518;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1844_p0 = last_activations_8_load_reg_3406;
        end else begin
            grp_fu_1844_p0 = 'bx;
        end
    end else begin
        grp_fu_1844_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1848_p0 = last_activations_24_load_reg_3518;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1848_p0 = last_activations_8_load_reg_3406;
        end else begin
            grp_fu_1848_p0 = 'bx;
        end
    end else begin
        grp_fu_1848_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1852_p0 = last_activations_24_load_reg_3518;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1852_p0 = last_activations_8_load_reg_3406;
        end else begin
            grp_fu_1852_p0 = 'bx;
        end
    end else begin
        grp_fu_1852_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1856_p0 = last_activations_25_load_reg_3525;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1856_p0 = last_activations_9_load_reg_3413;
        end else begin
            grp_fu_1856_p0 = 'bx;
        end
    end else begin
        grp_fu_1856_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1860_p0 = last_activations_25_load_reg_3525;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1860_p0 = last_activations_9_load_reg_3413;
        end else begin
            grp_fu_1860_p0 = 'bx;
        end
    end else begin
        grp_fu_1860_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1864_p0 = last_activations_25_load_reg_3525;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1864_p0 = last_activations_9_load_reg_3413;
        end else begin
            grp_fu_1864_p0 = 'bx;
        end
    end else begin
        grp_fu_1864_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1868_p0 = last_activations_26_load_reg_3532;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1868_p0 = last_activations_10_load_reg_3420;
        end else begin
            grp_fu_1868_p0 = 'bx;
        end
    end else begin
        grp_fu_1868_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1872_p0 = last_activations_26_load_reg_3532;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1872_p0 = last_activations_10_load_reg_3420;
        end else begin
            grp_fu_1872_p0 = 'bx;
        end
    end else begin
        grp_fu_1872_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1876_p0 = last_activations_26_load_reg_3532;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1876_p0 = last_activations_10_load_reg_3420;
        end else begin
            grp_fu_1876_p0 = 'bx;
        end
    end else begin
        grp_fu_1876_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1880_p0 = last_activations_27_load_reg_3539;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1880_p0 = last_activations_11_load_reg_3427;
        end else begin
            grp_fu_1880_p0 = 'bx;
        end
    end else begin
        grp_fu_1880_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1884_p0 = last_activations_27_load_reg_3539;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1884_p0 = last_activations_11_load_reg_3427;
        end else begin
            grp_fu_1884_p0 = 'bx;
        end
    end else begin
        grp_fu_1884_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1888_p0 = last_activations_27_load_reg_3539;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1888_p0 = last_activations_11_load_reg_3427;
        end else begin
            grp_fu_1888_p0 = 'bx;
        end
    end else begin
        grp_fu_1888_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1892_p0 = last_activations_28_load_reg_3546;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1892_p0 = last_activations_12_load_reg_3434;
        end else begin
            grp_fu_1892_p0 = 'bx;
        end
    end else begin
        grp_fu_1892_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1896_p0 = last_activations_28_load_reg_3546;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1896_p0 = last_activations_12_load_reg_3434;
        end else begin
            grp_fu_1896_p0 = 'bx;
        end
    end else begin
        grp_fu_1896_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1900_p0 = last_activations_28_load_reg_3546;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1900_p0 = last_activations_12_load_reg_3434;
        end else begin
            grp_fu_1900_p0 = 'bx;
        end
    end else begin
        grp_fu_1900_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1904_p0 = last_activations_29_load_reg_3553;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1904_p0 = last_activations_13_load_reg_3441;
        end else begin
            grp_fu_1904_p0 = 'bx;
        end
    end else begin
        grp_fu_1904_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1908_p0 = last_activations_29_load_reg_3553;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1908_p0 = last_activations_13_load_reg_3441;
        end else begin
            grp_fu_1908_p0 = 'bx;
        end
    end else begin
        grp_fu_1908_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1912_p0 = last_activations_29_load_reg_3553;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1912_p0 = last_activations_13_load_reg_3441;
        end else begin
            grp_fu_1912_p0 = 'bx;
        end
    end else begin
        grp_fu_1912_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1916_p0 = last_activations_30_load_reg_3560;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1916_p0 = last_activations_14_load_reg_3448;
        end else begin
            grp_fu_1916_p0 = 'bx;
        end
    end else begin
        grp_fu_1916_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1920_p0 = last_activations_30_load_reg_3560;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1920_p0 = last_activations_14_load_reg_3448;
        end else begin
            grp_fu_1920_p0 = 'bx;
        end
    end else begin
        grp_fu_1920_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1924_p0 = last_activations_30_load_reg_3560;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1924_p0 = last_activations_14_load_reg_3448;
        end else begin
            grp_fu_1924_p0 = 'bx;
        end
    end else begin
        grp_fu_1924_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1928_p0 = last_activations_31_load_reg_3567;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1928_p0 = last_activations_15_load_reg_3455;
        end else begin
            grp_fu_1928_p0 = 'bx;
        end
    end else begin
        grp_fu_1928_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1932_p0 = last_activations_31_load_reg_3567;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1932_p0 = last_activations_15_load_reg_3455;
        end else begin
            grp_fu_1932_p0 = 'bx;
        end
    end else begin
        grp_fu_1932_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1936_p0 = last_activations_31_load_reg_3567;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1936_p0 = last_activations_15_load_reg_3455;
        end else begin
            grp_fu_1936_p0 = 'bx;
        end
    end else begin
        grp_fu_1936_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_10_ce0_local = 1'b1;
    end else begin
        last_activations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_11_ce0_local = 1'b1;
    end else begin
        last_activations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_12_ce0_local = 1'b1;
    end else begin
        last_activations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_13_ce0_local = 1'b1;
    end else begin
        last_activations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_14_ce0_local = 1'b1;
    end else begin
        last_activations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_15_ce0_local = 1'b1;
    end else begin
        last_activations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_16_ce0_local = 1'b1;
    end else begin
        last_activations_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_17_ce0_local = 1'b1;
    end else begin
        last_activations_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_18_ce0_local = 1'b1;
    end else begin
        last_activations_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_19_ce0_local = 1'b1;
    end else begin
        last_activations_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_20_ce0_local = 1'b1;
    end else begin
        last_activations_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_21_ce0_local = 1'b1;
    end else begin
        last_activations_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_22_ce0_local = 1'b1;
    end else begin
        last_activations_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_23_ce0_local = 1'b1;
    end else begin
        last_activations_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_24_ce0_local = 1'b1;
    end else begin
        last_activations_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_25_ce0_local = 1'b1;
    end else begin
        last_activations_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_26_ce0_local = 1'b1;
    end else begin
        last_activations_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_27_ce0_local = 1'b1;
    end else begin
        last_activations_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_28_ce0_local = 1'b1;
    end else begin
        last_activations_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_29_ce0_local = 1'b1;
    end else begin
        last_activations_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_30_ce0_local = 1'b1;
    end else begin
        last_activations_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_31_ce0_local = 1'b1;
    end else begin
        last_activations_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_3_ce0_local = 1'b1;
    end else begin
        last_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_4_ce0_local = 1'b1;
    end else begin
        last_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_5_ce0_local = 1'b1;
    end else begin
        last_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_6_ce0_local = 1'b1;
    end else begin
        last_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_7_ce0_local = 1'b1;
    end else begin
        last_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_8_ce0_local = 1'b1;
    end else begin
        last_activations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_9_ce0_local = 1'b1;
    end else begin
        last_activations_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln73_fu_2297_p2 = (i_13_reg_3169 + 7'd32);
assign add_ln75_1_fu_2842_p2 = (empty_reg_3574 + 8'd61);
assign add_ln75_2_fu_2862_p2 = (empty_reg_3574 + 8'd62);
assign add_ln75_fu_2576_p2 = (empty_fu_2347_p2 + 8'd29);
assign and_ln_fu_2314_p3 = {{1'd0}, {select_ln75_fu_2307_p3}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign delta_weights3_0_address0 = delta_weights3_0_address0_local;
assign delta_weights3_0_address1 = zext_ln75_fu_2322_p1;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = delta_weights3_0_d0_local;
assign delta_weights3_0_d1 = reg_1940;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_10_address0 = delta_weights3_10_address0_local;
assign delta_weights3_10_address1 = zext_ln75_3_fu_2409_p1;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_ce1 = delta_weights3_10_ce1_local;
assign delta_weights3_10_d0 = delta_weights3_10_d0_local;
assign delta_weights3_10_d1 = reg_2000;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_10_we1 = delta_weights3_10_we1_local;
assign delta_weights3_11_address0 = delta_weights3_11_address0_local;
assign delta_weights3_11_address1 = zext_ln75_3_fu_2409_p1;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_ce1 = delta_weights3_11_ce1_local;
assign delta_weights3_11_d0 = delta_weights3_11_d0_local;
assign delta_weights3_11_d1 = reg_2006;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_11_we1 = delta_weights3_11_we1_local;
assign delta_weights3_12_address0 = delta_weights3_12_address0_local;
assign delta_weights3_12_address1 = zext_ln75_4_fu_2432_p1;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_ce1 = delta_weights3_12_ce1_local;
assign delta_weights3_12_d0 = delta_weights3_12_d0_local;
assign delta_weights3_12_d1 = reg_2012;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_12_we1 = delta_weights3_12_we1_local;
assign delta_weights3_13_address0 = delta_weights3_13_address0_local;
assign delta_weights3_13_address1 = zext_ln75_4_fu_2432_p1;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_ce1 = delta_weights3_13_ce1_local;
assign delta_weights3_13_d0 = delta_weights3_13_d0_local;
assign delta_weights3_13_d1 = reg_2018;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_13_we1 = delta_weights3_13_we1_local;
assign delta_weights3_14_address0 = delta_weights3_14_address0_local;
assign delta_weights3_14_address1 = zext_ln75_4_fu_2432_p1;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_ce1 = delta_weights3_14_ce1_local;
assign delta_weights3_14_d0 = delta_weights3_14_d0_local;
assign delta_weights3_14_d1 = reg_2024;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_14_we1 = delta_weights3_14_we1_local;
assign delta_weights3_15_address0 = delta_weights3_15_address0_local;
assign delta_weights3_15_address1 = zext_ln75_5_fu_2455_p1;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_ce1 = delta_weights3_15_ce1_local;
assign delta_weights3_15_d0 = delta_weights3_15_d0_local;
assign delta_weights3_15_d1 = reg_2030;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_15_we1 = delta_weights3_15_we1_local;
assign delta_weights3_16_address0 = delta_weights3_16_address0_local;
assign delta_weights3_16_address1 = zext_ln75_17_fu_2727_p1;
assign delta_weights3_16_ce0 = delta_weights3_16_ce0_local;
assign delta_weights3_16_ce1 = delta_weights3_16_ce1_local;
assign delta_weights3_16_d0 = delta_weights3_16_d0_local;
assign delta_weights3_16_d1 = reg_1940;
assign delta_weights3_16_we0 = delta_weights3_16_we0_local;
assign delta_weights3_16_we1 = delta_weights3_16_we1_local;
assign delta_weights3_17_address0 = delta_weights3_17_address0_local;
assign delta_weights3_17_address1 = zext_ln75_17_fu_2727_p1;
assign delta_weights3_17_ce0 = delta_weights3_17_ce0_local;
assign delta_weights3_17_ce1 = delta_weights3_17_ce1_local;
assign delta_weights3_17_d0 = delta_weights3_17_d0_local;
assign delta_weights3_17_d1 = reg_1946;
assign delta_weights3_17_we0 = delta_weights3_17_we0_local;
assign delta_weights3_17_we1 = delta_weights3_17_we1_local;
assign delta_weights3_18_address0 = delta_weights3_18_address0_local;
assign delta_weights3_18_address1 = zext_ln75_17_fu_2727_p1;
assign delta_weights3_18_ce0 = delta_weights3_18_ce0_local;
assign delta_weights3_18_ce1 = delta_weights3_18_ce1_local;
assign delta_weights3_18_d0 = delta_weights3_18_d0_local;
assign delta_weights3_18_d1 = reg_1952;
assign delta_weights3_18_we0 = delta_weights3_18_we0_local;
assign delta_weights3_18_we1 = delta_weights3_18_we1_local;
assign delta_weights3_19_address0 = delta_weights3_19_address0_local;
assign delta_weights3_19_address1 = zext_ln75_18_fu_2749_p1;
assign delta_weights3_19_ce0 = delta_weights3_19_ce0_local;
assign delta_weights3_19_ce1 = delta_weights3_19_ce1_local;
assign delta_weights3_19_d0 = delta_weights3_19_d0_local;
assign delta_weights3_19_d1 = reg_1958;
assign delta_weights3_19_we0 = delta_weights3_19_we0_local;
assign delta_weights3_19_we1 = delta_weights3_19_we1_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_address1 = zext_ln75_fu_2322_p1;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_d1 = reg_1946;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_20_address0 = delta_weights3_20_address0_local;
assign delta_weights3_20_address1 = zext_ln75_18_fu_2749_p1;
assign delta_weights3_20_ce0 = delta_weights3_20_ce0_local;
assign delta_weights3_20_ce1 = delta_weights3_20_ce1_local;
assign delta_weights3_20_d0 = delta_weights3_20_d0_local;
assign delta_weights3_20_d1 = reg_1964;
assign delta_weights3_20_we0 = delta_weights3_20_we0_local;
assign delta_weights3_20_we1 = delta_weights3_20_we1_local;
assign delta_weights3_21_address0 = delta_weights3_21_address0_local;
assign delta_weights3_21_address1 = zext_ln75_18_fu_2749_p1;
assign delta_weights3_21_ce0 = delta_weights3_21_ce0_local;
assign delta_weights3_21_ce1 = delta_weights3_21_ce1_local;
assign delta_weights3_21_d0 = delta_weights3_21_d0_local;
assign delta_weights3_21_d1 = reg_1970;
assign delta_weights3_21_we0 = delta_weights3_21_we0_local;
assign delta_weights3_21_we1 = delta_weights3_21_we1_local;
assign delta_weights3_22_address0 = delta_weights3_22_address0_local;
assign delta_weights3_22_address1 = zext_ln75_19_fu_2771_p1;
assign delta_weights3_22_ce0 = delta_weights3_22_ce0_local;
assign delta_weights3_22_ce1 = delta_weights3_22_ce1_local;
assign delta_weights3_22_d0 = delta_weights3_22_d0_local;
assign delta_weights3_22_d1 = reg_1976;
assign delta_weights3_22_we0 = delta_weights3_22_we0_local;
assign delta_weights3_22_we1 = delta_weights3_22_we1_local;
assign delta_weights3_23_address0 = delta_weights3_23_address0_local;
assign delta_weights3_23_address1 = zext_ln75_19_fu_2771_p1;
assign delta_weights3_23_ce0 = delta_weights3_23_ce0_local;
assign delta_weights3_23_ce1 = delta_weights3_23_ce1_local;
assign delta_weights3_23_d0 = delta_weights3_23_d0_local;
assign delta_weights3_23_d1 = reg_1982;
assign delta_weights3_23_we0 = delta_weights3_23_we0_local;
assign delta_weights3_23_we1 = delta_weights3_23_we1_local;
assign delta_weights3_24_address0 = delta_weights3_24_address0_local;
assign delta_weights3_24_address1 = zext_ln75_19_fu_2771_p1;
assign delta_weights3_24_ce0 = delta_weights3_24_ce0_local;
assign delta_weights3_24_ce1 = delta_weights3_24_ce1_local;
assign delta_weights3_24_d0 = delta_weights3_24_d0_local;
assign delta_weights3_24_d1 = reg_1988;
assign delta_weights3_24_we0 = delta_weights3_24_we0_local;
assign delta_weights3_24_we1 = delta_weights3_24_we1_local;
assign delta_weights3_25_address0 = delta_weights3_25_address0_local;
assign delta_weights3_25_address1 = zext_ln75_20_fu_2793_p1;
assign delta_weights3_25_ce0 = delta_weights3_25_ce0_local;
assign delta_weights3_25_ce1 = delta_weights3_25_ce1_local;
assign delta_weights3_25_d0 = delta_weights3_25_d0_local;
assign delta_weights3_25_d1 = reg_1994;
assign delta_weights3_25_we0 = delta_weights3_25_we0_local;
assign delta_weights3_25_we1 = delta_weights3_25_we1_local;
assign delta_weights3_26_address0 = delta_weights3_26_address0_local;
assign delta_weights3_26_address1 = zext_ln75_20_fu_2793_p1;
assign delta_weights3_26_ce0 = delta_weights3_26_ce0_local;
assign delta_weights3_26_ce1 = delta_weights3_26_ce1_local;
assign delta_weights3_26_d0 = delta_weights3_26_d0_local;
assign delta_weights3_26_d1 = reg_2000;
assign delta_weights3_26_we0 = delta_weights3_26_we0_local;
assign delta_weights3_26_we1 = delta_weights3_26_we1_local;
assign delta_weights3_27_address0 = delta_weights3_27_address0_local;
assign delta_weights3_27_address1 = zext_ln75_20_fu_2793_p1;
assign delta_weights3_27_ce0 = delta_weights3_27_ce0_local;
assign delta_weights3_27_ce1 = delta_weights3_27_ce1_local;
assign delta_weights3_27_d0 = delta_weights3_27_d0_local;
assign delta_weights3_27_d1 = reg_2006;
assign delta_weights3_27_we0 = delta_weights3_27_we0_local;
assign delta_weights3_27_we1 = delta_weights3_27_we1_local;
assign delta_weights3_28_address0 = delta_weights3_28_address0_local;
assign delta_weights3_28_address1 = zext_ln75_21_fu_2815_p1;
assign delta_weights3_28_ce0 = delta_weights3_28_ce0_local;
assign delta_weights3_28_ce1 = delta_weights3_28_ce1_local;
assign delta_weights3_28_d0 = delta_weights3_28_d0_local;
assign delta_weights3_28_d1 = reg_2012;
assign delta_weights3_28_we0 = delta_weights3_28_we0_local;
assign delta_weights3_28_we1 = delta_weights3_28_we1_local;
assign delta_weights3_29_address0 = delta_weights3_29_address0_local;
assign delta_weights3_29_address1 = zext_ln75_21_fu_2815_p1;
assign delta_weights3_29_ce0 = delta_weights3_29_ce0_local;
assign delta_weights3_29_ce1 = delta_weights3_29_ce1_local;
assign delta_weights3_29_d0 = delta_weights3_29_d0_local;
assign delta_weights3_29_d1 = reg_2018;
assign delta_weights3_29_we0 = delta_weights3_29_we0_local;
assign delta_weights3_29_we1 = delta_weights3_29_we1_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_address1 = zext_ln75_fu_2322_p1;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_d1 = reg_1952;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_30_address0 = delta_weights3_30_address0_local;
assign delta_weights3_30_address1 = zext_ln75_21_fu_2815_p1;
assign delta_weights3_30_ce0 = delta_weights3_30_ce0_local;
assign delta_weights3_30_ce1 = delta_weights3_30_ce1_local;
assign delta_weights3_30_d0 = delta_weights3_30_d0_local;
assign delta_weights3_30_d1 = reg_2024;
assign delta_weights3_30_we0 = delta_weights3_30_we0_local;
assign delta_weights3_30_we1 = delta_weights3_30_we1_local;
assign delta_weights3_31_address0 = delta_weights3_31_address0_local;
assign delta_weights3_31_address1 = zext_ln75_22_fu_2837_p1;
assign delta_weights3_31_ce0 = delta_weights3_31_ce0_local;
assign delta_weights3_31_ce1 = delta_weights3_31_ce1_local;
assign delta_weights3_31_d0 = delta_weights3_31_d0_local;
assign delta_weights3_31_d1 = reg_2030;
assign delta_weights3_31_we0 = delta_weights3_31_we0_local;
assign delta_weights3_31_we1 = delta_weights3_31_we1_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_address1 = zext_ln75_1_fu_2363_p1;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_d1 = reg_1958;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_address1 = zext_ln75_1_fu_2363_p1;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_d1 = reg_1964;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_address1 = zext_ln75_1_fu_2363_p1;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_d1 = reg_1970;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_address1 = zext_ln75_2_fu_2386_p1;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_ce1 = delta_weights3_6_ce1_local;
assign delta_weights3_6_d0 = delta_weights3_6_d0_local;
assign delta_weights3_6_d1 = reg_1976;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_6_we1 = delta_weights3_6_we1_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_address1 = zext_ln75_2_fu_2386_p1;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_ce1 = delta_weights3_7_ce1_local;
assign delta_weights3_7_d0 = delta_weights3_7_d0_local;
assign delta_weights3_7_d1 = reg_1982;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_7_we1 = delta_weights3_7_we1_local;
assign delta_weights3_8_address0 = delta_weights3_8_address0_local;
assign delta_weights3_8_address1 = zext_ln75_2_fu_2386_p1;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_ce1 = delta_weights3_8_ce1_local;
assign delta_weights3_8_d0 = delta_weights3_8_d0_local;
assign delta_weights3_8_d1 = reg_1988;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_8_we1 = delta_weights3_8_we1_local;
assign delta_weights3_9_address0 = delta_weights3_9_address0_local;
assign delta_weights3_9_address1 = zext_ln75_3_fu_2409_p1;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_ce1 = delta_weights3_9_ce1_local;
assign delta_weights3_9_d0 = delta_weights3_9_d0_local;
assign delta_weights3_9_d1 = reg_1994;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign delta_weights3_9_we1 = delta_weights3_9_we1_local;
assign empty_537_fu_2370_p2 = (empty_fu_2347_p2 + 8'd3);
assign empty_538_fu_2393_p2 = (empty_fu_2347_p2 + 8'd6);
assign empty_539_fu_2416_p2 = (empty_fu_2347_p2 + 8'd9);
assign empty_540_fu_2439_p2 = (empty_fu_2347_p2 + 8'd12);
assign empty_541_fu_2462_p2 = (empty_fu_2347_p2 + 8'd15);
assign empty_542_fu_2485_p2 = (empty_fu_2347_p2 + 8'd18);
assign empty_543_fu_2508_p2 = (empty_fu_2347_p2 + 8'd21);
assign empty_544_fu_2531_p2 = (empty_fu_2347_p2 + 8'd24);
assign empty_545_fu_2554_p2 = (empty_fu_2347_p2 + 8'd27);
assign empty_546_fu_2597_p2 = (empty_fu_2347_p2 + 8'd30);
assign empty_547_fu_2620_p2 = (empty_fu_2347_p2 + 8'd33);
assign empty_548_fu_2643_p2 = (empty_fu_2347_p2 + 8'd36);
assign empty_549_fu_2666_p2 = (empty_fu_2347_p2 + 8'd39);
assign empty_550_fu_2689_p2 = (empty_fu_2347_p2 + 8'd42);
assign empty_551_fu_2712_p2 = (empty_reg_3574 + 8'd45);
assign empty_552_fu_2734_p2 = (empty_reg_3574 + 8'd48);
assign empty_553_fu_2756_p2 = (empty_reg_3574 + 8'd51);
assign empty_554_fu_2778_p2 = (empty_reg_3574 + 8'd54);
assign empty_555_fu_2800_p2 = (empty_reg_3574 + 8'd57);
assign empty_556_fu_2822_p2 = (empty_reg_3574 + 8'd60);
assign empty_557_fu_2882_p2 = (empty_reg_3574 + 8'd63);
assign empty_558_fu_2904_p2 = (empty_reg_3574 + 8'd66);
assign empty_559_fu_2926_p2 = (empty_reg_3574 + 8'd69);
assign empty_560_fu_2948_p2 = (empty_reg_3574 + 8'd72);
assign empty_561_fu_2970_p2 = (empty_reg_3574 + 8'd75);
assign empty_562_fu_2992_p2 = (empty_reg_3574 + 8'd78);
assign empty_563_fu_3014_p2 = (empty_reg_3574 + 8'd81);
assign empty_564_fu_3036_p2 = (empty_reg_3574 + 8'd84);
assign empty_565_fu_3058_p2 = (empty_reg_3574 + 8'd87);
assign empty_566_fu_3080_p2 = (empty_reg_3574 + 8'd90);
assign empty_fu_2347_p2 = (p_shl_fu_2340_p3 - or_ln73_cast_fu_2336_p1);
assign grp_fu_6784_p_ce = 1'b1;
assign grp_fu_6784_p_din0 = grp_fu_1748_p0;
assign grp_fu_6784_p_din1 = output_difference_0_0_val;
assign grp_fu_6788_p_ce = 1'b1;
assign grp_fu_6788_p_din0 = grp_fu_1752_p0;
assign grp_fu_6788_p_din1 = output_difference_0_1_val;
assign grp_fu_6792_p_ce = 1'b1;
assign grp_fu_6792_p_din0 = grp_fu_1756_p0;
assign grp_fu_6792_p_din1 = output_difference_0_2_val;
assign grp_fu_6796_p_ce = 1'b1;
assign grp_fu_6796_p_din0 = grp_fu_1760_p0;
assign grp_fu_6796_p_din1 = output_difference_0_0_val;
assign grp_fu_6800_p_ce = 1'b1;
assign grp_fu_6800_p_din0 = grp_fu_1764_p0;
assign grp_fu_6800_p_din1 = output_difference_0_1_val;
assign grp_fu_6804_p_ce = 1'b1;
assign grp_fu_6804_p_din0 = grp_fu_1768_p0;
assign grp_fu_6804_p_din1 = output_difference_0_2_val;
assign grp_fu_6808_p_ce = 1'b1;
assign grp_fu_6808_p_din0 = grp_fu_1772_p0;
assign grp_fu_6808_p_din1 = output_difference_0_0_val;
assign grp_fu_6812_p_ce = 1'b1;
assign grp_fu_6812_p_din0 = grp_fu_1776_p0;
assign grp_fu_6812_p_din1 = output_difference_0_1_val;
assign grp_fu_6816_p_ce = 1'b1;
assign grp_fu_6816_p_din0 = grp_fu_1780_p0;
assign grp_fu_6816_p_din1 = output_difference_0_2_val;
assign grp_fu_6820_p_ce = 1'b1;
assign grp_fu_6820_p_din0 = grp_fu_1784_p0;
assign grp_fu_6820_p_din1 = output_difference_0_0_val;
assign grp_fu_6824_p_ce = 1'b1;
assign grp_fu_6824_p_din0 = grp_fu_1788_p0;
assign grp_fu_6824_p_din1 = output_difference_0_1_val;
assign grp_fu_6828_p_ce = 1'b1;
assign grp_fu_6828_p_din0 = grp_fu_1792_p0;
assign grp_fu_6828_p_din1 = output_difference_0_2_val;
assign grp_fu_6832_p_ce = 1'b1;
assign grp_fu_6832_p_din0 = grp_fu_1796_p0;
assign grp_fu_6832_p_din1 = output_difference_0_0_val;
assign grp_fu_6836_p_ce = 1'b1;
assign grp_fu_6836_p_din0 = grp_fu_1800_p0;
assign grp_fu_6836_p_din1 = output_difference_0_1_val;
assign grp_fu_6840_p_ce = 1'b1;
assign grp_fu_6840_p_din0 = grp_fu_1804_p0;
assign grp_fu_6840_p_din1 = output_difference_0_2_val;
assign grp_fu_6844_p_ce = 1'b1;
assign grp_fu_6844_p_din0 = grp_fu_1808_p0;
assign grp_fu_6844_p_din1 = output_difference_0_0_val;
assign grp_fu_6848_p_ce = 1'b1;
assign grp_fu_6848_p_din0 = grp_fu_1812_p0;
assign grp_fu_6848_p_din1 = output_difference_0_1_val;
assign grp_fu_6852_p_ce = 1'b1;
assign grp_fu_6852_p_din0 = grp_fu_1816_p0;
assign grp_fu_6852_p_din1 = output_difference_0_2_val;
assign grp_fu_6856_p_ce = 1'b1;
assign grp_fu_6856_p_din0 = grp_fu_1820_p0;
assign grp_fu_6856_p_din1 = output_difference_0_0_val;
assign grp_fu_6860_p_ce = 1'b1;
assign grp_fu_6860_p_din0 = grp_fu_1824_p0;
assign grp_fu_6860_p_din1 = output_difference_0_1_val;
assign grp_fu_6864_p_ce = 1'b1;
assign grp_fu_6864_p_din0 = grp_fu_1828_p0;
assign grp_fu_6864_p_din1 = output_difference_0_2_val;
assign grp_fu_6868_p_ce = 1'b1;
assign grp_fu_6868_p_din0 = grp_fu_1832_p0;
assign grp_fu_6868_p_din1 = output_difference_0_0_val;
assign grp_fu_6872_p_ce = 1'b1;
assign grp_fu_6872_p_din0 = grp_fu_1836_p0;
assign grp_fu_6872_p_din1 = output_difference_0_1_val;
assign grp_fu_6876_p_ce = 1'b1;
assign grp_fu_6876_p_din0 = grp_fu_1840_p0;
assign grp_fu_6876_p_din1 = output_difference_0_2_val;
assign grp_fu_6880_p_ce = 1'b1;
assign grp_fu_6880_p_din0 = grp_fu_1844_p0;
assign grp_fu_6880_p_din1 = output_difference_0_0_val;
assign grp_fu_6884_p_ce = 1'b1;
assign grp_fu_6884_p_din0 = grp_fu_1848_p0;
assign grp_fu_6884_p_din1 = output_difference_0_1_val;
assign grp_fu_6888_p_ce = 1'b1;
assign grp_fu_6888_p_din0 = grp_fu_1852_p0;
assign grp_fu_6888_p_din1 = output_difference_0_2_val;
assign grp_fu_6892_p_ce = 1'b1;
assign grp_fu_6892_p_din0 = grp_fu_1856_p0;
assign grp_fu_6892_p_din1 = output_difference_0_0_val;
assign grp_fu_6896_p_ce = 1'b1;
assign grp_fu_6896_p_din0 = grp_fu_1860_p0;
assign grp_fu_6896_p_din1 = output_difference_0_1_val;
assign grp_fu_6900_p_ce = 1'b1;
assign grp_fu_6900_p_din0 = grp_fu_1864_p0;
assign grp_fu_6900_p_din1 = output_difference_0_2_val;
assign grp_fu_6904_p_ce = 1'b1;
assign grp_fu_6904_p_din0 = grp_fu_1868_p0;
assign grp_fu_6904_p_din1 = output_difference_0_0_val;
assign grp_fu_6908_p_ce = 1'b1;
assign grp_fu_6908_p_din0 = grp_fu_1872_p0;
assign grp_fu_6908_p_din1 = output_difference_0_1_val;
assign grp_fu_6912_p_ce = 1'b1;
assign grp_fu_6912_p_din0 = grp_fu_1876_p0;
assign grp_fu_6912_p_din1 = output_difference_0_2_val;
assign grp_fu_6916_p_ce = 1'b1;
assign grp_fu_6916_p_din0 = grp_fu_1880_p0;
assign grp_fu_6916_p_din1 = output_difference_0_0_val;
assign grp_fu_6920_p_ce = 1'b1;
assign grp_fu_6920_p_din0 = grp_fu_1884_p0;
assign grp_fu_6920_p_din1 = output_difference_0_1_val;
assign grp_fu_6924_p_ce = 1'b1;
assign grp_fu_6924_p_din0 = grp_fu_1888_p0;
assign grp_fu_6924_p_din1 = output_difference_0_2_val;
assign grp_fu_6928_p_ce = 1'b1;
assign grp_fu_6928_p_din0 = grp_fu_1892_p0;
assign grp_fu_6928_p_din1 = output_difference_0_0_val;
assign grp_fu_6932_p_ce = 1'b1;
assign grp_fu_6932_p_din0 = grp_fu_1896_p0;
assign grp_fu_6932_p_din1 = output_difference_0_1_val;
assign grp_fu_6936_p_ce = 1'b1;
assign grp_fu_6936_p_din0 = grp_fu_1900_p0;
assign grp_fu_6936_p_din1 = output_difference_0_2_val;
assign grp_fu_6940_p_ce = 1'b1;
assign grp_fu_6940_p_din0 = grp_fu_1904_p0;
assign grp_fu_6940_p_din1 = output_difference_0_0_val;
assign grp_fu_6944_p_ce = 1'b1;
assign grp_fu_6944_p_din0 = grp_fu_1908_p0;
assign grp_fu_6944_p_din1 = output_difference_0_1_val;
assign grp_fu_6948_p_ce = 1'b1;
assign grp_fu_6948_p_din0 = grp_fu_1912_p0;
assign grp_fu_6948_p_din1 = output_difference_0_2_val;
assign grp_fu_6952_p_ce = 1'b1;
assign grp_fu_6952_p_din0 = grp_fu_1916_p0;
assign grp_fu_6952_p_din1 = output_difference_0_0_val;
assign grp_fu_6956_p_ce = 1'b1;
assign grp_fu_6956_p_din0 = grp_fu_1920_p0;
assign grp_fu_6956_p_din1 = output_difference_0_1_val;
assign grp_fu_6960_p_ce = 1'b1;
assign grp_fu_6960_p_din0 = grp_fu_1924_p0;
assign grp_fu_6960_p_din1 = output_difference_0_2_val;
assign grp_fu_6964_p_ce = 1'b1;
assign grp_fu_6964_p_din0 = grp_fu_1928_p0;
assign grp_fu_6964_p_din1 = output_difference_0_0_val;
assign grp_fu_6968_p_ce = 1'b1;
assign grp_fu_6968_p_din0 = grp_fu_1932_p0;
assign grp_fu_6968_p_din1 = output_difference_0_1_val;
assign grp_fu_6972_p_ce = 1'b1;
assign grp_fu_6972_p_din0 = grp_fu_1936_p0;
assign grp_fu_6972_p_din1 = output_difference_0_2_val;
assign last_activations_0_address0 = zext_ln72_fu_2252_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_10_address0 = zext_ln72_fu_2252_p1;
assign last_activations_10_ce0 = last_activations_10_ce0_local;
assign last_activations_11_address0 = zext_ln72_fu_2252_p1;
assign last_activations_11_ce0 = last_activations_11_ce0_local;
assign last_activations_12_address0 = zext_ln72_fu_2252_p1;
assign last_activations_12_ce0 = last_activations_12_ce0_local;
assign last_activations_13_address0 = zext_ln72_fu_2252_p1;
assign last_activations_13_ce0 = last_activations_13_ce0_local;
assign last_activations_14_address0 = zext_ln72_fu_2252_p1;
assign last_activations_14_ce0 = last_activations_14_ce0_local;
assign last_activations_15_address0 = zext_ln72_fu_2252_p1;
assign last_activations_15_ce0 = last_activations_15_ce0_local;
assign last_activations_16_address0 = zext_ln72_fu_2252_p1;
assign last_activations_16_ce0 = last_activations_16_ce0_local;
assign last_activations_17_address0 = zext_ln72_fu_2252_p1;
assign last_activations_17_ce0 = last_activations_17_ce0_local;
assign last_activations_18_address0 = zext_ln72_fu_2252_p1;
assign last_activations_18_ce0 = last_activations_18_ce0_local;
assign last_activations_19_address0 = zext_ln72_fu_2252_p1;
assign last_activations_19_ce0 = last_activations_19_ce0_local;
assign last_activations_1_address0 = zext_ln72_fu_2252_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_20_address0 = zext_ln72_fu_2252_p1;
assign last_activations_20_ce0 = last_activations_20_ce0_local;
assign last_activations_21_address0 = zext_ln72_fu_2252_p1;
assign last_activations_21_ce0 = last_activations_21_ce0_local;
assign last_activations_22_address0 = zext_ln72_fu_2252_p1;
assign last_activations_22_ce0 = last_activations_22_ce0_local;
assign last_activations_23_address0 = zext_ln72_fu_2252_p1;
assign last_activations_23_ce0 = last_activations_23_ce0_local;
assign last_activations_24_address0 = zext_ln72_fu_2252_p1;
assign last_activations_24_ce0 = last_activations_24_ce0_local;
assign last_activations_25_address0 = zext_ln72_fu_2252_p1;
assign last_activations_25_ce0 = last_activations_25_ce0_local;
assign last_activations_26_address0 = zext_ln72_fu_2252_p1;
assign last_activations_26_ce0 = last_activations_26_ce0_local;
assign last_activations_27_address0 = zext_ln72_fu_2252_p1;
assign last_activations_27_ce0 = last_activations_27_ce0_local;
assign last_activations_28_address0 = zext_ln72_fu_2252_p1;
assign last_activations_28_ce0 = last_activations_28_ce0_local;
assign last_activations_29_address0 = zext_ln72_fu_2252_p1;
assign last_activations_29_ce0 = last_activations_29_ce0_local;
assign last_activations_2_address0 = zext_ln72_fu_2252_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_30_address0 = zext_ln72_fu_2252_p1;
assign last_activations_30_ce0 = last_activations_30_ce0_local;
assign last_activations_31_address0 = zext_ln72_fu_2252_p1;
assign last_activations_31_ce0 = last_activations_31_ce0_local;
assign last_activations_3_address0 = zext_ln72_fu_2252_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_4_address0 = zext_ln72_fu_2252_p1;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_5_address0 = zext_ln72_fu_2252_p1;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_6_address0 = zext_ln72_fu_2252_p1;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_7_address0 = zext_ln72_fu_2252_p1;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
assign last_activations_8_address0 = zext_ln72_fu_2252_p1;
assign last_activations_8_ce0 = last_activations_8_ce0_local;
assign last_activations_9_address0 = zext_ln72_fu_2252_p1;
assign last_activations_9_ce0 = last_activations_9_ce0_local;
assign lshr_ln75_10_fu_2603_p4 = {{empty_546_fu_2597_p2[7:5]}};
assign lshr_ln75_11_fu_2626_p4 = {{empty_547_fu_2620_p2[7:5]}};
assign lshr_ln75_12_fu_2649_p4 = {{empty_548_fu_2643_p2[7:5]}};
assign lshr_ln75_13_fu_2672_p4 = {{empty_549_fu_2666_p2[7:5]}};
assign lshr_ln75_14_fu_2695_p4 = {{empty_550_fu_2689_p2[7:5]}};
assign lshr_ln75_15_fu_2717_p4 = {{empty_551_fu_2712_p2[7:5]}};
assign lshr_ln75_16_fu_2739_p4 = {{empty_552_fu_2734_p2[7:5]}};
assign lshr_ln75_17_fu_2761_p4 = {{empty_553_fu_2756_p2[7:5]}};
assign lshr_ln75_18_fu_2783_p4 = {{empty_554_fu_2778_p2[7:5]}};
assign lshr_ln75_19_fu_2805_p4 = {{empty_555_fu_2800_p2[7:5]}};
assign lshr_ln75_1_fu_2376_p4 = {{empty_537_fu_2370_p2[7:5]}};
assign lshr_ln75_20_fu_2827_p4 = {{empty_556_fu_2822_p2[7:5]}};
assign lshr_ln75_21_fu_2847_p4 = {{add_ln75_1_fu_2842_p2[7:5]}};
assign lshr_ln75_22_fu_2867_p4 = {{add_ln75_2_fu_2862_p2[7:5]}};
assign lshr_ln75_23_fu_2887_p4 = {{empty_557_fu_2882_p2[7:5]}};
assign lshr_ln75_24_fu_2909_p4 = {{empty_558_fu_2904_p2[7:5]}};
assign lshr_ln75_25_fu_2931_p4 = {{empty_559_fu_2926_p2[7:5]}};
assign lshr_ln75_26_fu_2953_p4 = {{empty_560_fu_2948_p2[7:5]}};
assign lshr_ln75_27_fu_2975_p4 = {{empty_561_fu_2970_p2[7:5]}};
assign lshr_ln75_28_fu_2997_p4 = {{empty_562_fu_2992_p2[7:5]}};
assign lshr_ln75_29_fu_3019_p4 = {{empty_563_fu_3014_p2[7:5]}};
assign lshr_ln75_2_fu_2399_p4 = {{empty_538_fu_2393_p2[7:5]}};
assign lshr_ln75_30_fu_3041_p4 = {{empty_564_fu_3036_p2[7:5]}};
assign lshr_ln75_31_fu_3063_p4 = {{empty_565_fu_3058_p2[7:5]}};
assign lshr_ln75_32_fu_3085_p4 = {{empty_566_fu_3080_p2[7:5]}};
assign lshr_ln75_3_fu_2422_p4 = {{empty_539_fu_2416_p2[7:5]}};
assign lshr_ln75_4_fu_2445_p4 = {{empty_540_fu_2439_p2[7:5]}};
assign lshr_ln75_5_fu_2468_p4 = {{empty_541_fu_2462_p2[7:5]}};
assign lshr_ln75_6_fu_2491_p4 = {{empty_542_fu_2485_p2[7:5]}};
assign lshr_ln75_7_fu_2514_p4 = {{empty_543_fu_2508_p2[7:5]}};
assign lshr_ln75_8_fu_2537_p4 = {{empty_544_fu_2531_p2[7:5]}};
assign lshr_ln75_9_fu_2560_p4 = {{empty_545_fu_2554_p2[7:5]}};
assign lshr_ln75_s_fu_2582_p4 = {{add_ln75_fu_2576_p2[7:5]}};
assign lshr_ln_fu_2353_p4 = {{empty_fu_2347_p2[7:5]}};
assign or_ln73_cast_fu_2336_p1 = or_ln_fu_2329_p3;
assign or_ln_fu_2329_p3 = {{tmp_s_reg_3351_pp0_iter3_reg}, {1'd1}};
assign p_shl_fu_2340_p3 = {{tmp_s_reg_3351_pp0_iter3_reg}, {3'd4}};
assign select_ln75_fu_2307_p3 = ((tmp_17_reg_3179_pp0_iter4_reg[0:0] == 1'b1) ? 2'd3 : 2'd0);
assign tmp_17_fu_2244_p3 = ap_sig_allocacmp_i_13[32'd5];
assign zext_ln72_fu_2252_p1 = tmp_17_fu_2244_p3;
assign zext_ln75_10_fu_2570_p1 = lshr_ln75_9_fu_2560_p4;
assign zext_ln75_11_fu_2592_p1 = lshr_ln75_s_fu_2582_p4;
assign zext_ln75_12_fu_2613_p1 = lshr_ln75_10_fu_2603_p4;
assign zext_ln75_13_fu_2636_p1 = lshr_ln75_11_fu_2626_p4;
assign zext_ln75_14_fu_2659_p1 = lshr_ln75_12_fu_2649_p4;
assign zext_ln75_15_fu_2682_p1 = lshr_ln75_13_fu_2672_p4;
assign zext_ln75_16_fu_2705_p1 = lshr_ln75_14_fu_2695_p4;
assign zext_ln75_17_fu_2727_p1 = lshr_ln75_15_fu_2717_p4;
assign zext_ln75_18_fu_2749_p1 = lshr_ln75_16_fu_2739_p4;
assign zext_ln75_19_fu_2771_p1 = lshr_ln75_17_fu_2761_p4;
assign zext_ln75_1_fu_2363_p1 = lshr_ln_fu_2353_p4;
assign zext_ln75_20_fu_2793_p1 = lshr_ln75_18_fu_2783_p4;
assign zext_ln75_21_fu_2815_p1 = lshr_ln75_19_fu_2805_p4;
assign zext_ln75_22_fu_2837_p1 = lshr_ln75_20_fu_2827_p4;
assign zext_ln75_23_fu_2857_p1 = lshr_ln75_21_fu_2847_p4;
assign zext_ln75_24_fu_2877_p1 = lshr_ln75_22_fu_2867_p4;
assign zext_ln75_25_fu_2897_p1 = lshr_ln75_23_fu_2887_p4;
assign zext_ln75_26_fu_2919_p1 = lshr_ln75_24_fu_2909_p4;
assign zext_ln75_27_fu_2941_p1 = lshr_ln75_25_fu_2931_p4;
assign zext_ln75_28_fu_2963_p1 = lshr_ln75_26_fu_2953_p4;
assign zext_ln75_29_fu_2985_p1 = lshr_ln75_27_fu_2975_p4;
assign zext_ln75_2_fu_2386_p1 = lshr_ln75_1_fu_2376_p4;
assign zext_ln75_30_fu_3007_p1 = lshr_ln75_28_fu_2997_p4;
assign zext_ln75_31_fu_3029_p1 = lshr_ln75_29_fu_3019_p4;
assign zext_ln75_32_fu_3051_p1 = lshr_ln75_30_fu_3041_p4;
assign zext_ln75_33_fu_3073_p1 = lshr_ln75_31_fu_3063_p4;
assign zext_ln75_34_fu_3095_p1 = lshr_ln75_32_fu_3085_p4;
assign zext_ln75_3_fu_2409_p1 = lshr_ln75_2_fu_2399_p4;
assign zext_ln75_4_fu_2432_p1 = lshr_ln75_3_fu_2422_p4;
assign zext_ln75_5_fu_2455_p1 = lshr_ln75_4_fu_2445_p4;
assign zext_ln75_6_fu_2478_p1 = lshr_ln75_5_fu_2468_p4;
assign zext_ln75_7_fu_2501_p1 = lshr_ln75_6_fu_2491_p4;
assign zext_ln75_8_fu_2524_p1 = lshr_ln75_7_fu_2514_p4;
assign zext_ln75_9_fu_2547_p1 = lshr_ln75_8_fu_2537_p4;
assign zext_ln75_fu_2322_p1 = and_ln_fu_2314_p3;
always @ (posedge ap_clk) begin
    empty_reg_3574[0] <= 1'b1;
end
endmodule 