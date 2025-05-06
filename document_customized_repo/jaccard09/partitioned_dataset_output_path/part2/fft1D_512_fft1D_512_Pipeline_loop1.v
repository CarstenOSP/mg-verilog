
module fft1D_512_fft1D_512_Pipeline_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_31_address0,DATA_y_31_ce0,DATA_y_31_we0,DATA_y_31_d0,DATA_y_30_address0,DATA_y_30_ce0,DATA_y_30_we0,DATA_y_30_d0,DATA_y_29_address0,DATA_y_29_ce0,DATA_y_29_we0,DATA_y_29_d0,DATA_y_28_address0,DATA_y_28_ce0,DATA_y_28_we0,DATA_y_28_d0,DATA_y_27_address0,DATA_y_27_ce0,DATA_y_27_we0,DATA_y_27_d0,DATA_y_26_address0,DATA_y_26_ce0,DATA_y_26_we0,DATA_y_26_d0,DATA_y_25_address0,DATA_y_25_ce0,DATA_y_25_we0,DATA_y_25_d0,DATA_y_24_address0,DATA_y_24_ce0,DATA_y_24_we0,DATA_y_24_d0,DATA_y_23_address0,DATA_y_23_ce0,DATA_y_23_we0,DATA_y_23_d0,DATA_y_22_address0,DATA_y_22_ce0,DATA_y_22_we0,DATA_y_22_d0,DATA_y_21_address0,DATA_y_21_ce0,DATA_y_21_we0,DATA_y_21_d0,DATA_y_20_address0,DATA_y_20_ce0,DATA_y_20_we0,DATA_y_20_d0,DATA_y_19_address0,DATA_y_19_ce0,DATA_y_19_we0,DATA_y_19_d0,DATA_y_18_address0,DATA_y_18_ce0,DATA_y_18_we0,DATA_y_18_d0,DATA_y_17_address0,DATA_y_17_ce0,DATA_y_17_we0,DATA_y_17_d0,DATA_y_16_address0,DATA_y_16_ce0,DATA_y_16_we0,DATA_y_16_d0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_we0,DATA_y_15_d0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_we0,DATA_y_14_d0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_we0,DATA_y_13_d0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_we0,DATA_y_12_d0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_we0,DATA_y_11_d0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_we0,DATA_y_10_d0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_we0,DATA_y_9_d0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_we0,DATA_y_8_d0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_x_31_address0,DATA_x_31_ce0,DATA_x_31_we0,DATA_x_31_d0,DATA_x_30_address0,DATA_x_30_ce0,DATA_x_30_we0,DATA_x_30_d0,DATA_x_29_address0,DATA_x_29_ce0,DATA_x_29_we0,DATA_x_29_d0,DATA_x_28_address0,DATA_x_28_ce0,DATA_x_28_we0,DATA_x_28_d0,DATA_x_27_address0,DATA_x_27_ce0,DATA_x_27_we0,DATA_x_27_d0,DATA_x_26_address0,DATA_x_26_ce0,DATA_x_26_we0,DATA_x_26_d0,DATA_x_25_address0,DATA_x_25_ce0,DATA_x_25_we0,DATA_x_25_d0,DATA_x_24_address0,DATA_x_24_ce0,DATA_x_24_we0,DATA_x_24_d0,DATA_x_23_address0,DATA_x_23_ce0,DATA_x_23_we0,DATA_x_23_d0,DATA_x_22_address0,DATA_x_22_ce0,DATA_x_22_we0,DATA_x_22_d0,DATA_x_21_address0,DATA_x_21_ce0,DATA_x_21_we0,DATA_x_21_d0,DATA_x_20_address0,DATA_x_20_ce0,DATA_x_20_we0,DATA_x_20_d0,DATA_x_19_address0,DATA_x_19_ce0,DATA_x_19_we0,DATA_x_19_d0,DATA_x_18_address0,DATA_x_18_ce0,DATA_x_18_we0,DATA_x_18_d0,DATA_x_17_address0,DATA_x_17_ce0,DATA_x_17_we0,DATA_x_17_d0,DATA_x_16_address0,DATA_x_16_ce0,DATA_x_16_we0,DATA_x_16_d0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_we0,DATA_x_15_d0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_we0,DATA_x_14_d0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_we0,DATA_x_13_d0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_we0,DATA_x_12_d0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_we0,DATA_x_11_d0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_we0,DATA_x_10_d0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_we0,DATA_x_9_d0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_we0,DATA_x_8_d0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_we0,DATA_x_7_d0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_we0,DATA_x_6_d0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_we0,DATA_x_5_d0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_we0,DATA_x_4_d0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_we0,DATA_x_3_d0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_we0,DATA_x_2_d0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_we0,DATA_x_1_d0,DATA_x_address0,DATA_x_ce0,DATA_x_we0,DATA_x_d0,work_x_address0,work_x_ce0,work_x_q0,work_x_address1,work_x_ce1,work_x_q1,work_y_address0,work_y_ce0,work_y_q0,work_y_address1,work_y_ce1,work_y_q1,grp_fu_1284_p_din0,grp_fu_1284_p_din1,grp_fu_1284_p_opcode,grp_fu_1284_p_dout0,grp_fu_1284_p_ce,grp_fu_1288_p_din0,grp_fu_1288_p_din1,grp_fu_1288_p_opcode,grp_fu_1288_p_dout0,grp_fu_1288_p_ce,grp_fu_1292_p_din0,grp_fu_1292_p_din1,grp_fu_1292_p_opcode,grp_fu_1292_p_dout0,grp_fu_1292_p_ce,grp_fu_1296_p_din0,grp_fu_1296_p_din1,grp_fu_1296_p_opcode,grp_fu_1296_p_dout0,grp_fu_1296_p_ce,grp_fu_1300_p_din0,grp_fu_1300_p_din1,grp_fu_1300_p_opcode,grp_fu_1300_p_dout0,grp_fu_1300_p_ce,grp_fu_1304_p_din0,grp_fu_1304_p_din1,grp_fu_1304_p_opcode,grp_fu_1304_p_dout0,grp_fu_1304_p_ce,grp_fu_1308_p_din0,grp_fu_1308_p_din1,grp_fu_1308_p_opcode,grp_fu_1308_p_dout0,grp_fu_1308_p_ce,grp_fu_1312_p_din0,grp_fu_1312_p_din1,grp_fu_1312_p_opcode,grp_fu_1312_p_dout0,grp_fu_1312_p_ce,grp_fu_1316_p_din0,grp_fu_1316_p_din1,grp_fu_1316_p_opcode,grp_fu_1316_p_dout0,grp_fu_1316_p_ce,grp_fu_1320_p_din0,grp_fu_1320_p_din1,grp_fu_1320_p_opcode,grp_fu_1320_p_dout0,grp_fu_1320_p_ce,grp_fu_1324_p_din0,grp_fu_1324_p_din1,grp_fu_1324_p_opcode,grp_fu_1324_p_dout0,grp_fu_1324_p_ce,grp_fu_1328_p_din0,grp_fu_1328_p_din1,grp_fu_1328_p_opcode,grp_fu_1328_p_dout0,grp_fu_1328_p_ce,grp_fu_1332_p_din0,grp_fu_1332_p_din1,grp_fu_1332_p_opcode,grp_fu_1332_p_dout0,grp_fu_1332_p_ce,grp_fu_1336_p_din0,grp_fu_1336_p_din1,grp_fu_1336_p_opcode,grp_fu_1336_p_dout0,grp_fu_1336_p_ce,grp_fu_1340_p_din0,grp_fu_1340_p_din1,grp_fu_1340_p_opcode,grp_fu_1340_p_dout0,grp_fu_1340_p_ce,grp_fu_1344_p_din0,grp_fu_1344_p_din1,grp_fu_1344_p_dout0,grp_fu_1344_p_ce,grp_fu_1348_p_din0,grp_fu_1348_p_din1,grp_fu_1348_p_dout0,grp_fu_1348_p_ce,grp_fu_1352_p_din0,grp_fu_1352_p_din1,grp_fu_1352_p_dout0,grp_fu_1352_p_ce,grp_twiddles8_fu_1356_p_din1,grp_twiddles8_fu_1356_p_din2,grp_twiddles8_fu_1356_p_din3,grp_twiddles8_fu_1356_p_din4,grp_twiddles8_fu_1356_p_din5,grp_twiddles8_fu_1356_p_din6,grp_twiddles8_fu_1356_p_din7,grp_twiddles8_fu_1356_p_din8,grp_twiddles8_fu_1356_p_din9,grp_twiddles8_fu_1356_p_din10,grp_twiddles8_fu_1356_p_din11,grp_twiddles8_fu_1356_p_din12,grp_twiddles8_fu_1356_p_din13,grp_twiddles8_fu_1356_p_din14,grp_twiddles8_fu_1356_p_din15,grp_twiddles8_fu_1356_p_din16,grp_twiddles8_fu_1356_p_dout0_0,grp_twiddles8_fu_1356_p_dout0_1,grp_twiddles8_fu_1356_p_dout0_2,grp_twiddles8_fu_1356_p_dout0_3,grp_twiddles8_fu_1356_p_dout0_4,grp_twiddles8_fu_1356_p_dout0_5,grp_twiddles8_fu_1356_p_dout0_6,grp_twiddles8_fu_1356_p_dout0_7,grp_twiddles8_fu_1356_p_dout0_8,grp_twiddles8_fu_1356_p_dout0_9,grp_twiddles8_fu_1356_p_dout0_10,grp_twiddles8_fu_1356_p_dout0_11,grp_twiddles8_fu_1356_p_dout0_12,grp_twiddles8_fu_1356_p_dout0_13,grp_twiddles8_fu_1356_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
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
output  [3:0] DATA_x_31_address0;
output   DATA_x_31_ce0;
output   DATA_x_31_we0;
output  [63:0] DATA_x_31_d0;
output  [3:0] DATA_x_30_address0;
output   DATA_x_30_ce0;
output   DATA_x_30_we0;
output  [63:0] DATA_x_30_d0;
output  [3:0] DATA_x_29_address0;
output   DATA_x_29_ce0;
output   DATA_x_29_we0;
output  [63:0] DATA_x_29_d0;
output  [3:0] DATA_x_28_address0;
output   DATA_x_28_ce0;
output   DATA_x_28_we0;
output  [63:0] DATA_x_28_d0;
output  [3:0] DATA_x_27_address0;
output   DATA_x_27_ce0;
output   DATA_x_27_we0;
output  [63:0] DATA_x_27_d0;
output  [3:0] DATA_x_26_address0;
output   DATA_x_26_ce0;
output   DATA_x_26_we0;
output  [63:0] DATA_x_26_d0;
output  [3:0] DATA_x_25_address0;
output   DATA_x_25_ce0;
output   DATA_x_25_we0;
output  [63:0] DATA_x_25_d0;
output  [3:0] DATA_x_24_address0;
output   DATA_x_24_ce0;
output   DATA_x_24_we0;
output  [63:0] DATA_x_24_d0;
output  [3:0] DATA_x_23_address0;
output   DATA_x_23_ce0;
output   DATA_x_23_we0;
output  [63:0] DATA_x_23_d0;
output  [3:0] DATA_x_22_address0;
output   DATA_x_22_ce0;
output   DATA_x_22_we0;
output  [63:0] DATA_x_22_d0;
output  [3:0] DATA_x_21_address0;
output   DATA_x_21_ce0;
output   DATA_x_21_we0;
output  [63:0] DATA_x_21_d0;
output  [3:0] DATA_x_20_address0;
output   DATA_x_20_ce0;
output   DATA_x_20_we0;
output  [63:0] DATA_x_20_d0;
output  [3:0] DATA_x_19_address0;
output   DATA_x_19_ce0;
output   DATA_x_19_we0;
output  [63:0] DATA_x_19_d0;
output  [3:0] DATA_x_18_address0;
output   DATA_x_18_ce0;
output   DATA_x_18_we0;
output  [63:0] DATA_x_18_d0;
output  [3:0] DATA_x_17_address0;
output   DATA_x_17_ce0;
output   DATA_x_17_we0;
output  [63:0] DATA_x_17_d0;
output  [3:0] DATA_x_16_address0;
output   DATA_x_16_ce0;
output   DATA_x_16_we0;
output  [63:0] DATA_x_16_d0;
output  [3:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
output   DATA_x_15_we0;
output  [63:0] DATA_x_15_d0;
output  [3:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
output   DATA_x_14_we0;
output  [63:0] DATA_x_14_d0;
output  [3:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
output   DATA_x_13_we0;
output  [63:0] DATA_x_13_d0;
output  [3:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
output   DATA_x_12_we0;
output  [63:0] DATA_x_12_d0;
output  [3:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
output   DATA_x_11_we0;
output  [63:0] DATA_x_11_d0;
output  [3:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
output   DATA_x_10_we0;
output  [63:0] DATA_x_10_d0;
output  [3:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
output   DATA_x_9_we0;
output  [63:0] DATA_x_9_d0;
output  [3:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
output   DATA_x_8_we0;
output  [63:0] DATA_x_8_d0;
output  [3:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
output   DATA_x_7_we0;
output  [63:0] DATA_x_7_d0;
output  [3:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
output   DATA_x_6_we0;
output  [63:0] DATA_x_6_d0;
output  [3:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
output   DATA_x_5_we0;
output  [63:0] DATA_x_5_d0;
output  [3:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
output   DATA_x_4_we0;
output  [63:0] DATA_x_4_d0;
output  [3:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
output   DATA_x_3_we0;
output  [63:0] DATA_x_3_d0;
output  [3:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
output   DATA_x_2_we0;
output  [63:0] DATA_x_2_d0;
output  [3:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
output   DATA_x_1_we0;
output  [63:0] DATA_x_1_d0;
output  [3:0] DATA_x_address0;
output   DATA_x_ce0;
output   DATA_x_we0;
output  [63:0] DATA_x_d0;
output  [8:0] work_x_address0;
output   work_x_ce0;
input  [63:0] work_x_q0;
output  [8:0] work_x_address1;
output   work_x_ce1;
input  [63:0] work_x_q1;
output  [8:0] work_y_address0;
output   work_y_ce0;
input  [63:0] work_y_q0;
output  [8:0] work_y_address1;
output   work_y_ce1;
input  [63:0] work_y_q1;
output  [63:0] grp_fu_1284_p_din0;
output  [63:0] grp_fu_1284_p_din1;
output  [0:0] grp_fu_1284_p_opcode;
input  [63:0] grp_fu_1284_p_dout0;
output   grp_fu_1284_p_ce;
output  [63:0] grp_fu_1288_p_din0;
output  [63:0] grp_fu_1288_p_din1;
output  [0:0] grp_fu_1288_p_opcode;
input  [63:0] grp_fu_1288_p_dout0;
output   grp_fu_1288_p_ce;
output  [63:0] grp_fu_1292_p_din0;
output  [63:0] grp_fu_1292_p_din1;
output  [1:0] grp_fu_1292_p_opcode;
input  [63:0] grp_fu_1292_p_dout0;
output   grp_fu_1292_p_ce;
output  [63:0] grp_fu_1296_p_din0;
output  [63:0] grp_fu_1296_p_din1;
output  [0:0] grp_fu_1296_p_opcode;
input  [63:0] grp_fu_1296_p_dout0;
output   grp_fu_1296_p_ce;
output  [63:0] grp_fu_1300_p_din0;
output  [63:0] grp_fu_1300_p_din1;
output  [1:0] grp_fu_1300_p_opcode;
input  [63:0] grp_fu_1300_p_dout0;
output   grp_fu_1300_p_ce;
output  [63:0] grp_fu_1304_p_din0;
output  [63:0] grp_fu_1304_p_din1;
output  [0:0] grp_fu_1304_p_opcode;
input  [63:0] grp_fu_1304_p_dout0;
output   grp_fu_1304_p_ce;
output  [63:0] grp_fu_1308_p_din0;
output  [63:0] grp_fu_1308_p_din1;
output  [1:0] grp_fu_1308_p_opcode;
input  [63:0] grp_fu_1308_p_dout0;
output   grp_fu_1308_p_ce;
output  [63:0] grp_fu_1312_p_din0;
output  [63:0] grp_fu_1312_p_din1;
output  [1:0] grp_fu_1312_p_opcode;
input  [63:0] grp_fu_1312_p_dout0;
output   grp_fu_1312_p_ce;
output  [63:0] grp_fu_1316_p_din0;
output  [63:0] grp_fu_1316_p_din1;
output  [1:0] grp_fu_1316_p_opcode;
input  [63:0] grp_fu_1316_p_dout0;
output   grp_fu_1316_p_ce;
output  [63:0] grp_fu_1320_p_din0;
output  [63:0] grp_fu_1320_p_din1;
output  [1:0] grp_fu_1320_p_opcode;
input  [63:0] grp_fu_1320_p_dout0;
output   grp_fu_1320_p_ce;
output  [63:0] grp_fu_1324_p_din0;
output  [63:0] grp_fu_1324_p_din1;
output  [1:0] grp_fu_1324_p_opcode;
input  [63:0] grp_fu_1324_p_dout0;
output   grp_fu_1324_p_ce;
output  [63:0] grp_fu_1328_p_din0;
output  [63:0] grp_fu_1328_p_din1;
output  [1:0] grp_fu_1328_p_opcode;
input  [63:0] grp_fu_1328_p_dout0;
output   grp_fu_1328_p_ce;
output  [63:0] grp_fu_1332_p_din0;
output  [63:0] grp_fu_1332_p_din1;
output  [1:0] grp_fu_1332_p_opcode;
input  [63:0] grp_fu_1332_p_dout0;
output   grp_fu_1332_p_ce;
output  [63:0] grp_fu_1336_p_din0;
output  [63:0] grp_fu_1336_p_din1;
output  [1:0] grp_fu_1336_p_opcode;
input  [63:0] grp_fu_1336_p_dout0;
output   grp_fu_1336_p_ce;
output  [63:0] grp_fu_1340_p_din0;
output  [63:0] grp_fu_1340_p_din1;
output  [1:0] grp_fu_1340_p_opcode;
input  [63:0] grp_fu_1340_p_dout0;
output   grp_fu_1340_p_ce;
output  [63:0] grp_fu_1344_p_din0;
output  [63:0] grp_fu_1344_p_din1;
input  [63:0] grp_fu_1344_p_dout0;
output   grp_fu_1344_p_ce;
output  [63:0] grp_fu_1348_p_din0;
output  [63:0] grp_fu_1348_p_din1;
input  [63:0] grp_fu_1348_p_dout0;
output   grp_fu_1348_p_ce;
output  [63:0] grp_fu_1352_p_din0;
output  [63:0] grp_fu_1352_p_din1;
input  [63:0] grp_fu_1352_p_dout0;
output   grp_fu_1352_p_ce;
output  [63:0] grp_twiddles8_fu_1356_p_din1;
output  [63:0] grp_twiddles8_fu_1356_p_din2;
output  [63:0] grp_twiddles8_fu_1356_p_din3;
output  [63:0] grp_twiddles8_fu_1356_p_din4;
output  [63:0] grp_twiddles8_fu_1356_p_din5;
output  [63:0] grp_twiddles8_fu_1356_p_din6;
output  [63:0] grp_twiddles8_fu_1356_p_din7;
output  [63:0] grp_twiddles8_fu_1356_p_din8;
output  [63:0] grp_twiddles8_fu_1356_p_din9;
output  [63:0] grp_twiddles8_fu_1356_p_din10;
output  [63:0] grp_twiddles8_fu_1356_p_din11;
output  [63:0] grp_twiddles8_fu_1356_p_din12;
output  [63:0] grp_twiddles8_fu_1356_p_din13;
output  [63:0] grp_twiddles8_fu_1356_p_din14;
output  [5:0] grp_twiddles8_fu_1356_p_din15;
output  [9:0] grp_twiddles8_fu_1356_p_din16;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_0;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_1;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_2;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_3;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_4;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_5;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_6;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_7;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_8;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_9;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_10;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_11;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_12;
input  [63:0] grp_twiddles8_fu_1356_p_dout0_13;
output   grp_twiddles8_fu_1356_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_28_reg_2833;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1503;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1507;
reg   [63:0] reg_1511;
reg   [63:0] reg_1515;
reg   [63:0] reg_1519;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_1523;
reg   [63:0] reg_1527;
reg   [63:0] reg_1531;
reg   [63:0] reg_1535;
reg   [63:0] reg_1539;
reg   [63:0] reg_1543;
reg   [63:0] reg_1551;
reg   [63:0] reg_1559;
reg   [63:0] reg_1567;
reg   [63:0] reg_1575;
reg   [63:0] reg_1583;
reg   [63:0] reg_1591;
reg   [63:0] reg_1599;
reg   [63:0] reg_1607;
reg   [63:0] reg_1615;
reg   [63:0] reg_1623;
reg   [63:0] reg_1631;
reg   [63:0] reg_1639;
reg   [63:0] reg_1647;
reg   [6:0] tid_7_reg_2820;
wire   [0:0] tmp_28_fu_1663_p3;
reg   [0:0] tmp_28_reg_2833_pp0_iter1_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter2_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter3_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter4_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter5_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter6_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter7_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter8_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter9_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter10_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter11_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter12_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter13_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter14_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter15_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter16_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter17_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter18_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter19_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter20_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter21_reg;
reg   [0:0] tmp_28_reg_2833_pp0_iter22_reg;
wire   [5:0] trunc_ln127_1_fu_1675_p1;
reg   [5:0] trunc_ln127_1_reg_2837;
reg   [5:0] trunc_ln127_1_reg_2837_pp0_iter1_reg;
reg   [5:0] trunc_ln127_1_reg_2837_pp0_iter2_reg;
reg   [5:0] trunc_ln127_1_reg_2837_pp0_iter3_reg;
reg   [5:0] trunc_ln127_1_reg_2837_pp0_iter4_reg;
reg   [5:0] trunc_ln127_1_reg_2837_pp0_iter5_reg;
reg   [5:0] trunc_ln127_1_reg_2837_pp0_iter6_reg;
reg   [5:0] trunc_ln127_1_reg_2837_pp0_iter7_reg;
reg   [5:0] trunc_ln127_1_reg_2837_pp0_iter8_reg;
wire  signed [6:0] zext_ln130_cast_fu_1679_p3;
reg  signed [6:0] zext_ln130_cast_reg_2842;
wire   [0:0] icmp_ln154_fu_1703_p2;
reg   [0:0] icmp_ln154_reg_2867;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter1_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter2_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter3_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter4_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter5_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter6_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter7_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter8_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter9_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter10_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter11_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter12_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter13_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter14_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter15_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter16_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter17_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter18_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter19_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter20_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter21_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter22_reg;
reg   [0:0] icmp_ln154_reg_2867_pp0_iter23_reg;
wire   [8:0] zext_ln127_1_fu_1709_p1;
reg   [8:0] zext_ln127_1_reg_2871;
wire   [7:0] zext_ln127_2_fu_1733_p1;
reg   [7:0] zext_ln127_2_reg_2897;
wire   [63:0] c0_x_119_fu_1759_p1;
wire   [63:0] c0_x_121_fu_1765_p1;
wire   [63:0] bitcast_ln134_fu_1771_p1;
wire   [63:0] bitcast_ln136_fu_1777_p1;
wire   [63:0] c0_y_119_fu_1783_p1;
wire   [63:0] c0_y_121_fu_1789_p1;
wire   [63:0] bitcast_ln143_fu_1795_p1;
wire   [63:0] bitcast_ln145_fu_1801_p1;
wire   [63:0] c0_x_123_fu_1856_p1;
wire   [5:0] tmp_92_fu_1862_p4;
reg   [5:0] tmp_92_reg_3016;
wire   [63:0] c0_x_125_fu_1887_p1;
wire   [63:0] bitcast_ln134_1_fu_1893_p1;
wire   [63:0] bitcast_ln136_1_fu_1909_p1;
wire   [63:0] c0_y_123_fu_1915_p1;
wire   [63:0] c0_y_125_fu_1921_p1;
wire   [63:0] bitcast_ln143_1_fu_1927_p1;
wire   [63:0] bitcast_ln145_1_fu_1933_p1;
wire   [63:0] c0_x_120_fu_1944_p1;
wire   [63:0] bitcast_ln135_fu_1963_p1;
wire   [63:0] c0_y_120_fu_1969_p1;
wire   [63:0] bitcast_ln144_fu_1975_p1;
reg   [3:0] lshr_ln_reg_3127;
reg   [3:0] lshr_ln_reg_3127_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_3127_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_3127_pp0_iter3_reg;
wire   [5:0] or_ln2_fu_1999_p3;
reg   [5:0] or_ln2_reg_3132;
reg   [5:0] or_ln2_reg_3132_pp0_iter1_reg;
reg   [5:0] or_ln2_reg_3132_pp0_iter2_reg;
reg   [5:0] or_ln2_reg_3132_pp0_iter3_reg;
reg   [5:0] or_ln2_reg_3132_pp0_iter4_reg;
reg   [5:0] or_ln2_reg_3132_pp0_iter5_reg;
reg   [5:0] or_ln2_reg_3132_pp0_iter6_reg;
reg   [5:0] or_ln2_reg_3132_pp0_iter7_reg;
wire   [63:0] c0_x_124_fu_2013_p1;
wire   [63:0] bitcast_ln135_1_fu_2038_p1;
wire   [63:0] c0_y_124_fu_2044_p1;
wire   [63:0] bitcast_ln144_1_fu_2050_p1;
wire   [63:0] c0_x_fu_2066_p1;
wire   [63:0] bitcast_ln133_fu_2072_p1;
wire   [63:0] c0_y_fu_2078_p1;
wire   [63:0] bitcast_ln142_fu_2084_p1;
wire   [63:0] c0_x_122_fu_2090_p1;
wire   [63:0] bitcast_ln133_1_fu_2096_p1;
wire   [63:0] c0_y_122_fu_2102_p1;
wire   [63:0] bitcast_ln142_1_fu_2108_p1;
reg   [63:0] c0_x_5_reg_3229;
reg   [63:0] c0_y_5_reg_3235;
reg   [63:0] tmp_1_reg_3241;
reg   [63:0] sub3_reg_3247;
reg   [63:0] add6_reg_3253;
reg   [63:0] add7_reg_3259;
wire   [63:0] bitcast_ln148_1_fu_2143_p1;
wire   [63:0] bitcast_ln148_3_fu_2177_p1;
wire   [63:0] bitcast_ln148_9_fu_2212_p1;
wire   [63:0] bitcast_ln148_11_fu_2248_p1;
reg   [63:0] c0_x_15_reg_3287;
reg   [63:0] c0_y_15_reg_3293;
reg   [63:0] tmp_1_3_reg_3299;
reg   [63:0] sub104_1_reg_3305;
reg   [63:0] add127_1_reg_3311;
reg   [63:0] add130_1_reg_3317;
reg   [63:0] add4_reg_3323;
reg   [63:0] add5_reg_3329;
reg   [63:0] tmp_1_1_reg_3335;
reg   [63:0] tmp_1_1_reg_3335_pp0_iter2_reg;
reg   [63:0] sub5_reg_3341;
reg   [63:0] sub5_reg_3341_pp0_iter2_reg;
wire   [63:0] bitcast_ln148_21_fu_2283_p1;
wire   [63:0] bitcast_ln148_23_fu_2317_p1;
wire   [63:0] bitcast_ln148_29_fu_2352_p1;
wire   [63:0] bitcast_ln148_31_fu_2388_p1;
reg   [63:0] add111_1_reg_3369;
reg   [63:0] add114_1_reg_3375;
reg   [63:0] tmp_1_4_reg_3381;
reg   [63:0] sub120_1_reg_3387;
reg   [63:0] c0_x_4_reg_3393;
reg   [63:0] c0_y_4_reg_3399;
reg   [63:0] c0_x_8_reg_3405;
reg   [63:0] c0_x_8_reg_3405_pp0_iter2_reg;
reg   [63:0] c0_y_8_reg_3411;
reg   [63:0] c0_y_8_reg_3411_pp0_iter2_reg;
reg   [63:0] c0_x_21_reg_3417;
reg   [63:0] c0_y_21_reg_3423;
reg   [63:0] c0_x_13_reg_3429;
reg   [63:0] c0_x_13_reg_3429_pp0_iter3_reg;
reg   [63:0] c0_y_13_reg_3435;
reg   [63:0] c0_y_13_reg_3435_pp0_iter3_reg;
reg   [63:0] sub8_reg_3441;
reg   [63:0] add8_reg_3446;
reg   [63:0] sub1_reg_3451;
reg   [63:0] add1_reg_3456;
reg   [63:0] tmp_reg_3461;
reg   [63:0] tmp_reg_3461_pp0_iter3_reg;
reg   [63:0] sub2_reg_3467;
reg   [63:0] sub2_reg_3467_pp0_iter3_reg;
reg   [63:0] add2_reg_3473;
reg   [63:0] add3_reg_3479;
reg   [63:0] mul6_reg_3485;
reg   [63:0] mul9_reg_3490;
reg   [63:0] sub143_1_reg_3495;
reg   [63:0] add149_1_reg_3500;
reg   [63:0] sub169_1_reg_3505;
reg   [63:0] add175_1_reg_3510;
reg   [63:0] tmp_3_reg_3515;
reg   [63:0] tmp_3_reg_3515_pp0_iter3_reg;
reg   [63:0] sub208_1_reg_3521;
reg   [63:0] sub208_1_reg_3521_pp0_iter3_reg;
reg   [63:0] mul154_1_reg_3527;
reg   [63:0] mul161_1_reg_3532;
reg   [63:0] add199_1_reg_3537;
reg   [63:0] add202_1_reg_3543;
wire   [63:0] bitcast_ln148_5_fu_2423_p1;
wire   [63:0] bitcast_ln148_7_fu_2457_p1;
wire   [63:0] bitcast_ln148_25_fu_2491_p1;
wire   [63:0] bitcast_ln148_27_fu_2525_p1;
reg   [63:0] c0_x_6_reg_3569;
reg   [63:0] c0_y_6_reg_3575;
reg   [63:0] c0_x_7_reg_3581;
reg   [63:0] c0_x_7_reg_3581_pp0_iter3_reg;
reg   [63:0] c0_y_7_reg_3587;
reg   [63:0] c0_y_7_reg_3587_pp0_iter3_reg;
reg   [63:0] c0_x_18_reg_3593;
reg   [63:0] c0_y_18_reg_3599;
reg   [63:0] c0_x_19_reg_3605;
reg   [63:0] c0_x_19_reg_3605_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_3611;
reg   [63:0] c0_y_19_reg_3611_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_3611_pp0_iter5_reg;
reg   [63:0] c0_x_9_reg_3617;
reg   [63:0] c0_y_9_reg_3623;
reg   [63:0] mul3_reg_3629;
reg   [63:0] mul5_reg_3635;
reg   [63:0] mul_reg_3641;
reg   [63:0] mul1_reg_3646;
reg   [63:0] c0_x_20_reg_3651;
reg   [63:0] c0_y_20_reg_3657;
reg   [63:0] mul170_1_reg_3663;
wire   [63:0] bitcast_ln148_13_fu_2559_p1;
wire   [63:0] bitcast_ln148_15_fu_2593_p1;
reg   [63:0] mul176_1_reg_3679;
reg   [63:0] sub9_reg_3685;
reg   [63:0] add9_reg_3691;
reg   [63:0] sub157_1_reg_3697;
reg   [63:0] add162_1_reg_3703;
reg   [63:0] mul212_1_reg_3709;
wire   [63:0] bitcast_ln148_33_fu_2627_p1;
reg   [63:0] mul219_1_reg_3719;
reg   [63:0] data_x_1_reg_3724;
reg   [63:0] data_x_1_reg_3724_pp0_iter4_reg;
reg   [63:0] data_x_1_reg_3724_pp0_iter5_reg;
reg   [63:0] data_x_1_reg_3724_pp0_iter6_reg;
reg   [63:0] data_x_1_reg_3724_pp0_iter7_reg;
reg   [63:0] data_y_1_reg_3729;
reg   [63:0] data_y_1_reg_3729_pp0_iter4_reg;
reg   [63:0] data_y_1_reg_3729_pp0_iter5_reg;
reg   [63:0] data_y_1_reg_3729_pp0_iter6_reg;
reg   [63:0] data_y_1_reg_3729_pp0_iter7_reg;
wire   [63:0] bitcast_ln148_35_fu_2661_p1;
reg   [63:0] data_x_1_2_reg_3739;
reg   [63:0] data_x_1_2_reg_3739_pp0_iter5_reg;
reg   [63:0] data_x_1_2_reg_3739_pp0_iter6_reg;
reg   [63:0] data_x_1_2_reg_3739_pp0_iter7_reg;
reg   [63:0] data_x_1_2_reg_3739_pp0_iter8_reg;
reg   [63:0] data_y_1_2_reg_3744;
reg   [63:0] data_y_1_2_reg_3744_pp0_iter5_reg;
reg   [63:0] data_y_1_2_reg_3744_pp0_iter6_reg;
reg   [63:0] data_y_1_2_reg_3744_pp0_iter7_reg;
reg   [63:0] data_y_1_2_reg_3744_pp0_iter8_reg;
reg   [63:0] data_x_0_reg_3749;
reg   [63:0] data_y_0_reg_3755;
reg   [63:0] add_reg_3761;
reg   [63:0] tmp_2_reg_3767;
reg   [63:0] tmp_2_reg_3767_pp0_iter5_reg;
reg   [63:0] data_x_0_1_reg_3773;
reg   [63:0] data_y_0_1_reg_3779;
reg   [63:0] sub10_reg_3785;
wire   [63:0] zext_ln154_fu_2666_p1;
reg   [63:0] zext_ln154_reg_3791;
reg   [63:0] zext_ln154_reg_3791_pp0_iter5_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter6_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter7_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter8_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter9_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter10_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter11_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter12_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter13_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter14_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter15_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter16_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter17_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter18_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter19_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter20_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter21_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter22_reg;
reg   [63:0] zext_ln154_reg_3791_pp0_iter23_reg;
reg   [63:0] sub4_reg_3851;
reg   [63:0] sub6_reg_3857;
reg   [63:0] add10_reg_3863;
reg   [63:0] add278_1_reg_3869;
reg   [63:0] tmp_4_reg_3875;
reg   [63:0] tmp_4_reg_3875_pp0_iter5_reg;
reg   [63:0] sub287_1_reg_3881;
reg   [63:0] sub287_1_reg_3881_pp0_iter5_reg;
reg   [63:0] c0_x_11_reg_3887;
reg   [63:0] c0_y_11_reg_3893;
reg   [63:0] c0_x_10_reg_3899;
reg   [63:0] c0_x_10_reg_3899_pp0_iter5_reg;
reg   [63:0] c0_y_10_reg_3905;
reg   [63:0] c0_y_10_reg_3905_pp0_iter5_reg;
reg   [63:0] c0_y_10_reg_3905_pp0_iter6_reg;
reg   [63:0] sub215_1_reg_3911;
reg   [63:0] sub220_1_reg_3917;
reg   [63:0] c0_x_23_reg_3923;
reg   [63:0] c0_y_23_reg_3929;
reg   [63:0] c0_x_22_reg_3935;
reg   [63:0] c0_x_22_reg_3935_pp0_iter5_reg;
reg   [63:0] c0_x_22_reg_3935_pp0_iter6_reg;
reg   [63:0] c0_y_22_reg_3941;
reg   [63:0] c0_y_22_reg_3941_pp0_iter5_reg;
reg   [63:0] c0_y_22_reg_3941_pp0_iter6_reg;
reg   [63:0] add281_1_reg_3947;
reg   [63:0] mul2_reg_3953;
wire   [63:0] bitcast_ln148_17_fu_2706_p1;
reg   [63:0] data_x_2_reg_3963;
reg   [63:0] data_x_2_reg_3963_pp0_iter6_reg;
reg   [63:0] data_x_2_reg_3963_pp0_iter7_reg;
reg   [63:0] data_y_2_reg_3968;
reg   [63:0] data_y_2_reg_3968_pp0_iter6_reg;
reg   [63:0] data_y_2_reg_3968_pp0_iter7_reg;
reg   [63:0] data_x_3_reg_3973;
reg   [63:0] data_x_3_reg_3973_pp0_iter6_reg;
reg   [63:0] data_x_3_reg_3973_pp0_iter7_reg;
reg   [63:0] data_y_3_reg_3978;
reg   [63:0] data_y_3_reg_3978_pp0_iter6_reg;
reg   [63:0] data_y_3_reg_3978_pp0_iter7_reg;
reg   [63:0] mul4_reg_3983;
reg   [63:0] data_x_4_reg_3988;
reg   [63:0] data_x_4_reg_3988_pp0_iter6_reg;
reg   [63:0] data_x_4_reg_3988_pp0_iter7_reg;
reg   [63:0] data_y_4_reg_3993;
reg   [63:0] data_y_4_reg_3993_pp0_iter6_reg;
reg   [63:0] data_y_4_reg_3993_pp0_iter7_reg;
reg   [63:0] data_x_5_reg_3998;
reg   [63:0] data_x_5_reg_3998_pp0_iter6_reg;
reg   [63:0] data_x_5_reg_3998_pp0_iter7_reg;
reg   [63:0] mul291_1_reg_4003;
wire   [63:0] bitcast_ln148_19_fu_2740_p1;
reg   [63:0] data_y_5_reg_4013;
reg   [63:0] data_y_5_reg_4013_pp0_iter6_reg;
reg   [63:0] data_y_5_reg_4013_pp0_iter7_reg;
reg   [63:0] data_x_2_2_reg_4018;
reg   [63:0] data_x_2_2_reg_4018_pp0_iter6_reg;
reg   [63:0] data_x_2_2_reg_4018_pp0_iter7_reg;
reg   [63:0] data_y_2_2_reg_4023;
reg   [63:0] data_y_2_2_reg_4023_pp0_iter6_reg;
reg   [63:0] data_y_2_2_reg_4023_pp0_iter7_reg;
reg   [63:0] data_x_3_2_reg_4028;
reg   [63:0] data_x_3_2_reg_4028_pp0_iter6_reg;
reg   [63:0] data_x_3_2_reg_4028_pp0_iter7_reg;
wire   [63:0] bitcast_ln148_37_fu_2774_p1;
reg   [63:0] mul298_1_reg_4038;
reg   [63:0] sub11_reg_4043;
reg   [63:0] data_y_3_2_reg_4049;
reg   [63:0] data_y_3_2_reg_4049_pp0_iter7_reg;
reg   [63:0] data_y_3_2_reg_4049_pp0_iter8_reg;
wire   [63:0] bitcast_ln148_39_fu_2808_p1;
reg   [63:0] data_x_4_2_reg_4059;
reg   [63:0] data_x_4_2_reg_4059_pp0_iter7_reg;
reg   [63:0] data_x_4_2_reg_4059_pp0_iter8_reg;
reg   [63:0] data_y_4_2_reg_4064;
reg   [63:0] data_y_4_2_reg_4064_pp0_iter7_reg;
reg   [63:0] data_y_4_2_reg_4064_pp0_iter8_reg;
reg   [63:0] data_x_5_2_reg_4069;
reg   [63:0] data_x_5_2_reg_4069_pp0_iter7_reg;
reg   [63:0] data_x_5_2_reg_4069_pp0_iter8_reg;
reg   [63:0] data_y_5_2_reg_4074;
reg   [63:0] data_y_5_2_reg_4074_pp0_iter7_reg;
reg   [63:0] data_y_5_2_reg_4074_pp0_iter8_reg;
reg   [63:0] sub12_reg_4079;
reg   [63:0] sub294_1_reg_4085;
reg   [63:0] sub299_1_reg_4091;
reg   [63:0] data_x_6_reg_4097;
reg   [63:0] data_x_6_reg_4097_pp0_iter8_reg;
reg   [63:0] data_x_7_reg_4102;
reg   [63:0] data_x_7_reg_4102_pp0_iter8_reg;
reg   [63:0] data_y_6_reg_4107;
reg   [63:0] data_y_7_reg_4112;
reg   [63:0] data_x_6_2_reg_4117;
reg   [63:0] data_y_6_2_reg_4122;
reg   [63:0] data_x_7_2_reg_4127;
reg   [63:0] data_y_7_2_reg_4132;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage5_subdone;
reg   [63:0] grp_twiddles8_fu_1336_a_x_1_read;
reg   [63:0] grp_twiddles8_fu_1336_a_x_2_read;
reg   [63:0] grp_twiddles8_fu_1336_a_x_3_read;
reg   [63:0] grp_twiddles8_fu_1336_a_x_4_read;
reg   [63:0] grp_twiddles8_fu_1336_a_x_5_read;
reg   [63:0] grp_twiddles8_fu_1336_a_x_6_read;
reg   [63:0] grp_twiddles8_fu_1336_a_x_7_read;
reg   [63:0] grp_twiddles8_fu_1336_a_y_1_read;
reg   [63:0] grp_twiddles8_fu_1336_a_y_2_read;
reg   [63:0] grp_twiddles8_fu_1336_a_y_3_read;
reg   [63:0] grp_twiddles8_fu_1336_a_y_4_read;
reg   [63:0] grp_twiddles8_fu_1336_a_y_5_read;
reg   [63:0] grp_twiddles8_fu_1336_a_y_6_read;
reg   [63:0] grp_twiddles8_fu_1336_a_y_7_read;
reg   [5:0] grp_twiddles8_fu_1336_i;
reg    grp_twiddles8_fu_1336_ap_ce;
wire    ap_block_pp0_stage2_11001_ignoreCallOp1579;
wire    ap_block_pp0_stage3_11001_ignoreCallOp1580;
wire    ap_block_pp0_stage4_11001_ignoreCallOp1582;
wire    ap_block_pp0_stage5_11001_ignoreCallOp1584;
wire    ap_block_pp0_stage6_11001_ignoreCallOp1586;
wire    ap_block_pp0_stage7_11001_ignoreCallOp1588;
wire    ap_block_pp0_stage1_11001_ignoreCallOp1592;
wire    ap_block_pp0_stage0_11001_ignoreCallOp1590;
wire    ap_block_pp0_stage2_ignoreCallOp1579;
wire    ap_block_pp0_stage3_ignoreCallOp1581;
wire   [63:0] zext_ln130_fu_1687_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln132_fu_1697_p1;
wire   [63:0] zext_ln134_fu_1718_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln136_fu_1727_p1;
wire   [63:0] zext_ln130_1_fu_1742_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln132_1_fu_1753_p1;
wire   [63:0] zext_ln134_1_fu_1812_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln136_1_fu_1827_p1;
wire   [63:0] zext_ln131_fu_1840_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln135_fu_1850_p1;
wire   [63:0] zext_ln131_1_fu_1881_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln135_1_fu_1903_p1;
wire   [63:0] zext_ln127_fu_1939_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln133_fu_1957_p1;
wire   [63:0] zext_ln129_fu_2007_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln133_2_fu_2032_p1;
reg   [6:0] tid_fu_226;
wire   [6:0] add_ln127_fu_2056_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_7;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
reg    DATA_x_16_we0_local;
reg    DATA_x_16_ce0_local;
reg    DATA_x_24_we0_local;
reg    DATA_x_24_ce0_local;
reg    DATA_y_16_we0_local;
reg    DATA_y_16_ce0_local;
reg    DATA_y_24_we0_local;
reg    DATA_y_24_ce0_local;
reg    DATA_x_we0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_8_we0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg    DATA_y_8_we0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_x_17_we0_local;
reg    DATA_x_17_ce0_local;
reg    DATA_x_18_we0_local;
reg    DATA_x_18_ce0_local;
reg    DATA_x_19_we0_local;
reg    DATA_x_19_ce0_local;
reg    DATA_x_20_we0_local;
reg    DATA_x_20_ce0_local;
reg    DATA_x_21_we0_local;
reg    DATA_x_21_ce0_local;
reg    DATA_x_22_we0_local;
reg    DATA_x_22_ce0_local;
reg    DATA_x_23_we0_local;
reg    DATA_x_23_ce0_local;
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
reg    DATA_x_1_we0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_we0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_we0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_4_we0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_5_we0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_6_we0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_7_we0_local;
reg    DATA_x_7_ce0_local;
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
reg    DATA_x_25_we0_local;
reg    DATA_x_25_ce0_local;
reg    DATA_x_26_we0_local;
reg    DATA_x_26_ce0_local;
reg    DATA_x_27_we0_local;
reg    DATA_x_27_ce0_local;
reg    DATA_x_28_we0_local;
reg    DATA_x_28_ce0_local;
reg    DATA_x_29_we0_local;
reg    DATA_x_29_ce0_local;
reg    DATA_x_30_we0_local;
reg    DATA_x_30_ce0_local;
reg    DATA_x_31_we0_local;
reg    DATA_x_31_ce0_local;
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
reg    DATA_x_9_we0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_10_we0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_11_we0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_12_we0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_13_we0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_14_we0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_15_we0_local;
reg    DATA_x_15_ce0_local;
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
reg   [63:0] grp_fu_1369_p0;
reg   [63:0] grp_fu_1369_p1;
reg   [63:0] grp_fu_1373_p0;
reg   [63:0] grp_fu_1373_p1;
reg   [63:0] grp_fu_1377_p0;
reg   [63:0] grp_fu_1377_p1;
reg   [63:0] grp_fu_1381_p0;
reg   [63:0] grp_fu_1381_p1;
reg   [63:0] grp_fu_1385_p0;
reg   [63:0] grp_fu_1385_p1;
reg   [63:0] grp_fu_1389_p0;
reg   [63:0] grp_fu_1389_p1;
reg   [63:0] grp_fu_1393_p0;
reg   [63:0] grp_fu_1393_p1;
reg   [63:0] grp_fu_1397_p0;
reg   [63:0] grp_fu_1397_p1;
reg   [63:0] grp_fu_1401_p0;
reg   [63:0] grp_fu_1401_p1;
reg   [63:0] grp_fu_1405_p0;
reg   [63:0] grp_fu_1405_p1;
reg   [63:0] grp_fu_1409_p0;
reg   [63:0] grp_fu_1409_p1;
reg   [63:0] grp_fu_1413_p0;
reg   [63:0] grp_fu_1413_p1;
reg   [63:0] grp_fu_1417_p0;
reg   [63:0] grp_fu_1417_p1;
reg   [63:0] grp_fu_1421_p0;
reg   [63:0] grp_fu_1421_p1;
reg   [63:0] grp_fu_1425_p0;
reg   [63:0] grp_fu_1425_p1;
reg   [63:0] grp_fu_1429_p0;
reg   [63:0] grp_fu_1429_p1;
reg   [63:0] grp_fu_1434_p0;
reg   [63:0] grp_fu_1434_p1;
reg   [63:0] grp_fu_1441_p0;
reg   [63:0] grp_fu_1441_p1;
wire  signed [7:0] sext_ln132_fu_1693_p1;
wire   [1:0] trunc_ln127_fu_1671_p1;
wire   [8:0] add_ln134_fu_1712_p2;
wire  signed [8:0] sext_ln136_fu_1724_p1;
wire   [7:0] add_ln130_fu_1736_p2;
wire   [8:0] add_ln132_fu_1748_p2;
wire   [8:0] add_ln134_1_fu_1807_p2;
wire   [6:0] add_ln136_fu_1818_p2;
wire  signed [8:0] sext_ln136_1_fu_1823_p1;
wire  signed [7:0] zext_ln131_cast_fu_1833_p3;
wire  signed [8:0] sext_ln135_fu_1846_p1;
wire  signed [7:0] zext_ln131_1_cast_fu_1871_p4;
wire  signed [8:0] sext_ln135_1_fu_1899_p1;
wire   [8:0] zext_ln133_cast_fu_1950_p3;
wire   [4:0] tmp_s_fu_1990_p4;
wire   [6:0] zext_ln133_1_fu_2019_p1;
wire   [8:0] zext_ln133_1_cast_fu_2022_p4;
wire   [63:0] bitcast_ln148_fu_2114_p1;
wire   [0:0] bit_sel2_fu_2117_p3;
wire   [0:0] xor_ln148_19_fu_2125_p2;
wire   [62:0] trunc_ln148_fu_2131_p1;
wire   [63:0] xor_ln1_fu_2135_p3;
wire   [63:0] bitcast_ln148_2_fu_2148_p1;
wire   [0:0] bit_sel3_fu_2151_p3;
wire   [0:0] xor_ln148_fu_2159_p2;
wire   [62:0] trunc_ln148_1_fu_2165_p1;
wire   [63:0] xor_ln148_1_fu_2169_p3;
wire   [63:0] bitcast_ln148_8_fu_2182_p1;
wire   [0:0] bit_sel8_fu_2186_p3;
wire   [0:0] xor_ln148_22_fu_2194_p2;
wire   [62:0] trunc_ln148_4_fu_2200_p1;
wire   [63:0] xor_ln148_4_fu_2204_p3;
wire   [63:0] bitcast_ln148_10_fu_2218_p1;
wire   [0:0] bit_sel9_fu_2222_p3;
wire   [0:0] xor_ln148_23_fu_2230_p2;
wire   [62:0] trunc_ln148_5_fu_2236_p1;
wire   [63:0] xor_ln148_5_fu_2240_p3;
wire   [63:0] bitcast_ln148_20_fu_2254_p1;
wire   [0:0] bit_sel17_fu_2257_p3;
wire   [0:0] xor_ln148_28_fu_2265_p2;
wire   [62:0] trunc_ln148_10_fu_2271_p1;
wire   [63:0] xor_ln148_s_fu_2275_p3;
wire   [63:0] bitcast_ln148_22_fu_2288_p1;
wire   [0:0] bit_sel18_fu_2291_p3;
wire   [0:0] xor_ln148_29_fu_2299_p2;
wire   [62:0] trunc_ln148_11_fu_2305_p1;
wire   [63:0] xor_ln148_10_fu_2309_p3;
wire   [63:0] bitcast_ln148_28_fu_2322_p1;
wire   [0:0] bit_sel13_fu_2326_p3;
wire   [0:0] xor_ln148_32_fu_2334_p2;
wire   [62:0] trunc_ln148_14_fu_2340_p1;
wire   [63:0] xor_ln148_13_fu_2344_p3;
wire   [63:0] bitcast_ln148_30_fu_2358_p1;
wire   [0:0] bit_sel10_fu_2362_p3;
wire   [0:0] xor_ln148_33_fu_2370_p2;
wire   [62:0] trunc_ln148_15_fu_2376_p1;
wire   [63:0] xor_ln148_14_fu_2380_p3;
wire   [63:0] bitcast_ln148_4_fu_2394_p1;
wire   [0:0] bit_sel5_fu_2397_p3;
wire   [0:0] xor_ln148_20_fu_2405_p2;
wire   [62:0] trunc_ln148_2_fu_2411_p1;
wire   [63:0] xor_ln148_2_fu_2415_p3;
wire   [63:0] bitcast_ln148_6_fu_2428_p1;
wire   [0:0] bit_sel6_fu_2431_p3;
wire   [0:0] xor_ln148_21_fu_2439_p2;
wire   [62:0] trunc_ln148_3_fu_2445_p1;
wire   [63:0] xor_ln148_3_fu_2449_p3;
wire   [63:0] bitcast_ln148_24_fu_2462_p1;
wire   [0:0] bit_sel19_fu_2465_p3;
wire   [0:0] xor_ln148_30_fu_2473_p2;
wire   [62:0] trunc_ln148_12_fu_2479_p1;
wire   [63:0] xor_ln148_11_fu_2483_p3;
wire   [63:0] bitcast_ln148_26_fu_2496_p1;
wire   [0:0] bit_sel16_fu_2499_p3;
wire   [0:0] xor_ln148_31_fu_2507_p2;
wire   [62:0] trunc_ln148_13_fu_2513_p1;
wire   [63:0] xor_ln148_12_fu_2517_p3;
wire   [63:0] bitcast_ln148_12_fu_2530_p1;
wire   [0:0] bit_sel11_fu_2533_p3;
wire   [0:0] xor_ln148_24_fu_2541_p2;
wire   [62:0] trunc_ln148_6_fu_2547_p1;
wire   [63:0] xor_ln148_6_fu_2551_p3;
wire   [63:0] bitcast_ln148_14_fu_2564_p1;
wire   [0:0] bit_sel12_fu_2567_p3;
wire   [0:0] xor_ln148_25_fu_2575_p2;
wire   [62:0] trunc_ln148_7_fu_2581_p1;
wire   [63:0] xor_ln148_7_fu_2585_p3;
wire   [63:0] bitcast_ln148_32_fu_2598_p1;
wire   [0:0] bit_sel7_fu_2601_p3;
wire   [0:0] xor_ln148_34_fu_2609_p2;
wire   [62:0] trunc_ln148_16_fu_2615_p1;
wire   [63:0] xor_ln148_15_fu_2619_p3;
wire   [63:0] bitcast_ln148_34_fu_2632_p1;
wire   [0:0] bit_sel4_fu_2635_p3;
wire   [0:0] xor_ln148_35_fu_2643_p2;
wire   [62:0] trunc_ln148_17_fu_2649_p1;
wire   [63:0] xor_ln148_16_fu_2653_p3;
wire   [63:0] bitcast_ln148_16_fu_2677_p1;
wire   [0:0] bit_sel14_fu_2680_p3;
wire   [0:0] xor_ln148_26_fu_2688_p2;
wire   [62:0] trunc_ln148_8_fu_2694_p1;
wire   [63:0] xor_ln148_8_fu_2698_p3;
wire   [63:0] bitcast_ln148_18_fu_2711_p1;
wire   [0:0] bit_sel15_fu_2714_p3;
wire   [0:0] xor_ln148_27_fu_2722_p2;
wire   [62:0] trunc_ln148_9_fu_2728_p1;
wire   [63:0] xor_ln148_9_fu_2732_p3;
wire   [63:0] bitcast_ln148_36_fu_2745_p1;
wire   [0:0] bit_sel1_fu_2748_p3;
wire   [0:0] xor_ln148_36_fu_2756_p2;
wire   [62:0] trunc_ln148_18_fu_2762_p1;
wire   [63:0] xor_ln148_17_fu_2766_p3;
wire   [63:0] bitcast_ln148_38_fu_2779_p1;
wire   [0:0] bit_sel_fu_2782_p3;
wire   [0:0] xor_ln148_37_fu_2790_p2;
wire   [62:0] trunc_ln148_19_fu_2796_p1;
wire   [63:0] xor_ln148_18_fu_2800_p3;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage2_00001;
reg   [1:0] grp_fu_1377_opcode;
reg   [1:0] grp_fu_1385_opcode;
reg   [1:0] grp_fu_1393_opcode;
reg   [1:0] grp_fu_1397_opcode;
reg   [1:0] grp_fu_1401_opcode;
reg   [1:0] grp_fu_1405_opcode;
reg   [1:0] grp_fu_1409_opcode;
reg   [1:0] grp_fu_1413_opcode;
reg   [1:0] grp_fu_1417_opcode;
reg   [1:0] grp_fu_1421_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter22_stage5;
reg    ap_idle_pp0_0to21;
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
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to23;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
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
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_226 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter22_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
            ap_enable_reg_pp0_iter23 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tid_fu_226 <= 7'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_28_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        tid_fu_226 <= add_ln127_fu_2056_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add10_reg_3863 <= grp_fu_1300_p_dout0;
        add278_1_reg_3869 <= grp_fu_1304_p_dout0;
        sub4_reg_3851 <= grp_fu_1292_p_dout0;
        sub6_reg_3857 <= grp_fu_1296_p_dout0;
        tmp_4_reg_3875 <= grp_fu_1308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add111_1_reg_3369 <= grp_fu_1284_p_dout0;
        add114_1_reg_3375 <= grp_fu_1288_p_dout0;
        sub120_1_reg_3387 <= grp_fu_1296_p_dout0;
        tmp_1_4_reg_3381 <= grp_fu_1292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        add127_1_reg_3311 <= grp_fu_1300_p_dout0;
        add130_1_reg_3317 <= grp_fu_1304_p_dout0;
        c0_x_15_reg_3287 <= grp_fu_1284_p_dout0;
        c0_y_15_reg_3293 <= grp_fu_1288_p_dout0;
        sub104_1_reg_3305 <= grp_fu_1296_p_dout0;
        tmp_1_3_reg_3299 <= grp_fu_1292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        add149_1_reg_3500 <= grp_fu_1320_p_dout0;
        add175_1_reg_3510 <= grp_fu_1328_p_dout0;
        mul6_reg_3485 <= grp_fu_1344_p_dout0;
        mul9_reg_3490 <= grp_fu_1348_p_dout0;
        sub143_1_reg_3495 <= grp_fu_1316_p_dout0;
        sub169_1_reg_3505 <= grp_fu_1324_p_dout0;
        sub208_1_reg_3521 <= grp_fu_1336_p_dout0;
        tmp_3_reg_3515 <= grp_fu_1332_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add162_1_reg_3703 <= grp_fu_1320_p_dout0;
        add9_reg_3691 <= grp_fu_1312_p_dout0;
        mul212_1_reg_3709 <= grp_fu_1352_p_dout0;
        sub157_1_reg_3697 <= grp_fu_1316_p_dout0;
        sub9_reg_3685 <= grp_fu_1308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add199_1_reg_3537 <= grp_fu_1300_p_dout0;
        add202_1_reg_3543 <= grp_fu_1304_p_dout0;
        mul154_1_reg_3527 <= grp_fu_1344_p_dout0;
        mul161_1_reg_3532 <= grp_fu_1348_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add1_reg_3456 <= grp_fu_1328_p_dout0;
        add8_reg_3446 <= grp_fu_1320_p_dout0;
        sub1_reg_3451 <= grp_fu_1324_p_dout0;
        sub2_reg_3467 <= grp_fu_1336_p_dout0;
        sub8_reg_3441 <= grp_fu_1316_p_dout0;
        tmp_reg_3461 <= grp_fu_1332_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add281_1_reg_3947 <= grp_fu_1320_p_dout0;
        c0_x_22_reg_3935 <= grp_fu_1312_p_dout0;
        c0_x_23_reg_3923 <= grp_fu_1304_p_dout0;
        c0_y_22_reg_3941 <= grp_fu_1316_p_dout0;
        c0_y_23_reg_3929 <= grp_fu_1308_p_dout0;
        sub220_1_reg_3917 <= grp_fu_1300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add2_reg_3473 <= grp_fu_1284_p_dout0;
        add3_reg_3479 <= grp_fu_1288_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        add4_reg_3323 <= grp_fu_1284_p_dout0;
        add5_reg_3329 <= grp_fu_1288_p_dout0;
        sub5_reg_3341 <= grp_fu_1296_p_dout0;
        tmp_1_1_reg_3335 <= grp_fu_1292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        add6_reg_3253 <= grp_fu_1300_p_dout0;
        add7_reg_3259 <= grp_fu_1304_p_dout0;
        c0_x_5_reg_3229 <= grp_fu_1284_p_dout0;
        c0_y_5_reg_3235 <= grp_fu_1288_p_dout0;
        sub3_reg_3247 <= grp_fu_1296_p_dout0;
        tmp_1_reg_3241 <= grp_fu_1292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add_reg_3761 <= grp_fu_1292_p_dout0;
        data_x_0_1_reg_3773 <= grp_fu_1300_p_dout0;
        data_x_0_reg_3749 <= grp_fu_1284_p_dout0;
        data_y_0_1_reg_3779 <= grp_fu_1304_p_dout0;
        data_y_0_reg_3755 <= grp_fu_1288_p_dout0;
        tmp_2_reg_3767 <= grp_fu_1296_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        c0_x_10_reg_3899 <= grp_fu_1332_p_dout0;
        c0_x_11_reg_3887 <= grp_fu_1324_p_dout0;
        c0_y_10_reg_3905 <= grp_fu_1336_p_dout0;
        c0_y_11_reg_3893 <= grp_fu_1328_p_dout0;
        sub215_1_reg_3911 <= grp_fu_1340_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        c0_x_10_reg_3899_pp0_iter5_reg <= c0_x_10_reg_3899;
        c0_y_10_reg_3905_pp0_iter5_reg <= c0_y_10_reg_3905;
        c0_y_10_reg_3905_pp0_iter6_reg <= c0_y_10_reg_3905_pp0_iter5_reg;
        sub5_reg_3341_pp0_iter2_reg <= sub5_reg_3341;
        tmp_1_1_reg_3335_pp0_iter2_reg <= tmp_1_1_reg_3335;
        tmp_92_reg_3016 <= {{tid_7_reg_2820[6:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_3429 <= grp_fu_1292_p_dout0;
        c0_x_21_reg_3417 <= grp_fu_1284_p_dout0;
        c0_y_13_reg_3435 <= grp_fu_1296_p_dout0;
        c0_y_21_reg_3423 <= grp_fu_1288_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_13_reg_3429_pp0_iter3_reg <= c0_x_13_reg_3429;
        c0_x_19_reg_3605_pp0_iter4_reg <= c0_x_19_reg_3605;
        c0_y_13_reg_3435_pp0_iter3_reg <= c0_y_13_reg_3435;
        c0_y_19_reg_3611_pp0_iter4_reg <= c0_y_19_reg_3611;
        c0_y_19_reg_3611_pp0_iter5_reg <= c0_y_19_reg_3611_pp0_iter4_reg;
        data_x_1_2_reg_3739_pp0_iter5_reg <= data_x_1_2_reg_3739;
        data_x_1_2_reg_3739_pp0_iter6_reg <= data_x_1_2_reg_3739_pp0_iter5_reg;
        data_x_1_2_reg_3739_pp0_iter7_reg <= data_x_1_2_reg_3739_pp0_iter6_reg;
        data_x_1_2_reg_3739_pp0_iter8_reg <= data_x_1_2_reg_3739_pp0_iter7_reg;
        data_x_4_2_reg_4059_pp0_iter7_reg <= data_x_4_2_reg_4059;
        data_x_4_2_reg_4059_pp0_iter8_reg <= data_x_4_2_reg_4059_pp0_iter7_reg;
        data_x_5_2_reg_4069_pp0_iter7_reg <= data_x_5_2_reg_4069;
        data_x_5_2_reg_4069_pp0_iter8_reg <= data_x_5_2_reg_4069_pp0_iter7_reg;
        data_y_1_2_reg_3744_pp0_iter5_reg <= data_y_1_2_reg_3744;
        data_y_1_2_reg_3744_pp0_iter6_reg <= data_y_1_2_reg_3744_pp0_iter5_reg;
        data_y_1_2_reg_3744_pp0_iter7_reg <= data_y_1_2_reg_3744_pp0_iter6_reg;
        data_y_1_2_reg_3744_pp0_iter8_reg <= data_y_1_2_reg_3744_pp0_iter7_reg;
        data_y_3_2_reg_4049_pp0_iter7_reg <= data_y_3_2_reg_4049;
        data_y_3_2_reg_4049_pp0_iter8_reg <= data_y_3_2_reg_4049_pp0_iter7_reg;
        data_y_4_2_reg_4064_pp0_iter7_reg <= data_y_4_2_reg_4064;
        data_y_4_2_reg_4064_pp0_iter8_reg <= data_y_4_2_reg_4064_pp0_iter7_reg;
        icmp_ln154_reg_2867 <= icmp_ln154_fu_1703_p2;
        icmp_ln154_reg_2867_pp0_iter10_reg <= icmp_ln154_reg_2867_pp0_iter9_reg;
        icmp_ln154_reg_2867_pp0_iter11_reg <= icmp_ln154_reg_2867_pp0_iter10_reg;
        icmp_ln154_reg_2867_pp0_iter12_reg <= icmp_ln154_reg_2867_pp0_iter11_reg;
        icmp_ln154_reg_2867_pp0_iter13_reg <= icmp_ln154_reg_2867_pp0_iter12_reg;
        icmp_ln154_reg_2867_pp0_iter14_reg <= icmp_ln154_reg_2867_pp0_iter13_reg;
        icmp_ln154_reg_2867_pp0_iter15_reg <= icmp_ln154_reg_2867_pp0_iter14_reg;
        icmp_ln154_reg_2867_pp0_iter16_reg <= icmp_ln154_reg_2867_pp0_iter15_reg;
        icmp_ln154_reg_2867_pp0_iter17_reg <= icmp_ln154_reg_2867_pp0_iter16_reg;
        icmp_ln154_reg_2867_pp0_iter18_reg <= icmp_ln154_reg_2867_pp0_iter17_reg;
        icmp_ln154_reg_2867_pp0_iter19_reg <= icmp_ln154_reg_2867_pp0_iter18_reg;
        icmp_ln154_reg_2867_pp0_iter1_reg <= icmp_ln154_reg_2867;
        icmp_ln154_reg_2867_pp0_iter20_reg <= icmp_ln154_reg_2867_pp0_iter19_reg;
        icmp_ln154_reg_2867_pp0_iter21_reg <= icmp_ln154_reg_2867_pp0_iter20_reg;
        icmp_ln154_reg_2867_pp0_iter22_reg <= icmp_ln154_reg_2867_pp0_iter21_reg;
        icmp_ln154_reg_2867_pp0_iter23_reg <= icmp_ln154_reg_2867_pp0_iter22_reg;
        icmp_ln154_reg_2867_pp0_iter2_reg <= icmp_ln154_reg_2867_pp0_iter1_reg;
        icmp_ln154_reg_2867_pp0_iter3_reg <= icmp_ln154_reg_2867_pp0_iter2_reg;
        icmp_ln154_reg_2867_pp0_iter4_reg <= icmp_ln154_reg_2867_pp0_iter3_reg;
        icmp_ln154_reg_2867_pp0_iter5_reg <= icmp_ln154_reg_2867_pp0_iter4_reg;
        icmp_ln154_reg_2867_pp0_iter6_reg <= icmp_ln154_reg_2867_pp0_iter5_reg;
        icmp_ln154_reg_2867_pp0_iter7_reg <= icmp_ln154_reg_2867_pp0_iter6_reg;
        icmp_ln154_reg_2867_pp0_iter8_reg <= icmp_ln154_reg_2867_pp0_iter7_reg;
        icmp_ln154_reg_2867_pp0_iter9_reg <= icmp_ln154_reg_2867_pp0_iter8_reg;
        tid_7_reg_2820 <= ap_sig_allocacmp_tid_7;
        tmp_28_reg_2833 <= ap_sig_allocacmp_tid_7[32'd6];
        tmp_28_reg_2833_pp0_iter10_reg <= tmp_28_reg_2833_pp0_iter9_reg;
        tmp_28_reg_2833_pp0_iter11_reg <= tmp_28_reg_2833_pp0_iter10_reg;
        tmp_28_reg_2833_pp0_iter12_reg <= tmp_28_reg_2833_pp0_iter11_reg;
        tmp_28_reg_2833_pp0_iter13_reg <= tmp_28_reg_2833_pp0_iter12_reg;
        tmp_28_reg_2833_pp0_iter14_reg <= tmp_28_reg_2833_pp0_iter13_reg;
        tmp_28_reg_2833_pp0_iter15_reg <= tmp_28_reg_2833_pp0_iter14_reg;
        tmp_28_reg_2833_pp0_iter16_reg <= tmp_28_reg_2833_pp0_iter15_reg;
        tmp_28_reg_2833_pp0_iter17_reg <= tmp_28_reg_2833_pp0_iter16_reg;
        tmp_28_reg_2833_pp0_iter18_reg <= tmp_28_reg_2833_pp0_iter17_reg;
        tmp_28_reg_2833_pp0_iter19_reg <= tmp_28_reg_2833_pp0_iter18_reg;
        tmp_28_reg_2833_pp0_iter1_reg <= tmp_28_reg_2833;
        tmp_28_reg_2833_pp0_iter20_reg <= tmp_28_reg_2833_pp0_iter19_reg;
        tmp_28_reg_2833_pp0_iter21_reg <= tmp_28_reg_2833_pp0_iter20_reg;
        tmp_28_reg_2833_pp0_iter22_reg <= tmp_28_reg_2833_pp0_iter21_reg;
        tmp_28_reg_2833_pp0_iter2_reg <= tmp_28_reg_2833_pp0_iter1_reg;
        tmp_28_reg_2833_pp0_iter3_reg <= tmp_28_reg_2833_pp0_iter2_reg;
        tmp_28_reg_2833_pp0_iter4_reg <= tmp_28_reg_2833_pp0_iter3_reg;
        tmp_28_reg_2833_pp0_iter5_reg <= tmp_28_reg_2833_pp0_iter4_reg;
        tmp_28_reg_2833_pp0_iter6_reg <= tmp_28_reg_2833_pp0_iter5_reg;
        tmp_28_reg_2833_pp0_iter7_reg <= tmp_28_reg_2833_pp0_iter6_reg;
        tmp_28_reg_2833_pp0_iter8_reg <= tmp_28_reg_2833_pp0_iter7_reg;
        tmp_28_reg_2833_pp0_iter9_reg <= tmp_28_reg_2833_pp0_iter8_reg;
        trunc_ln127_1_reg_2837 <= trunc_ln127_1_fu_1675_p1;
        trunc_ln127_1_reg_2837_pp0_iter1_reg <= trunc_ln127_1_reg_2837;
        trunc_ln127_1_reg_2837_pp0_iter2_reg <= trunc_ln127_1_reg_2837_pp0_iter1_reg;
        trunc_ln127_1_reg_2837_pp0_iter3_reg <= trunc_ln127_1_reg_2837_pp0_iter2_reg;
        trunc_ln127_1_reg_2837_pp0_iter4_reg <= trunc_ln127_1_reg_2837_pp0_iter3_reg;
        trunc_ln127_1_reg_2837_pp0_iter5_reg <= trunc_ln127_1_reg_2837_pp0_iter4_reg;
        trunc_ln127_1_reg_2837_pp0_iter6_reg <= trunc_ln127_1_reg_2837_pp0_iter5_reg;
        trunc_ln127_1_reg_2837_pp0_iter7_reg <= trunc_ln127_1_reg_2837_pp0_iter6_reg;
        trunc_ln127_1_reg_2837_pp0_iter8_reg <= trunc_ln127_1_reg_2837_pp0_iter7_reg;
        zext_ln130_cast_reg_2842[5 : 0] <= zext_ln130_cast_fu_1679_p3[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        c0_x_18_reg_3593 <= grp_fu_1300_p_dout0;
        c0_x_19_reg_3605 <= grp_fu_1308_p_dout0;
        c0_y_18_reg_3599 <= grp_fu_1304_p_dout0;
        c0_y_19_reg_3611 <= grp_fu_1312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        c0_x_20_reg_3651 <= grp_fu_1344_p_dout0;
        c0_y_20_reg_3657 <= grp_fu_1348_p_dout0;
        mul170_1_reg_3663 <= grp_fu_1352_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        c0_x_22_reg_3935_pp0_iter5_reg <= c0_x_22_reg_3935;
        c0_x_22_reg_3935_pp0_iter6_reg <= c0_x_22_reg_3935_pp0_iter5_reg;
        c0_y_22_reg_3941_pp0_iter5_reg <= c0_y_22_reg_3941;
        c0_y_22_reg_3941_pp0_iter6_reg <= c0_y_22_reg_3941_pp0_iter5_reg;
        data_x_4_reg_3988_pp0_iter6_reg <= data_x_4_reg_3988;
        data_x_4_reg_3988_pp0_iter7_reg <= data_x_4_reg_3988_pp0_iter6_reg;
        data_x_5_reg_3998_pp0_iter6_reg <= data_x_5_reg_3998;
        data_x_5_reg_3998_pp0_iter7_reg <= data_x_5_reg_3998_pp0_iter6_reg;
        data_y_4_reg_3993_pp0_iter6_reg <= data_y_4_reg_3993;
        data_y_4_reg_3993_pp0_iter7_reg <= data_y_4_reg_3993_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_4_reg_3393 <= grp_fu_1284_p_dout0;
        c0_x_8_reg_3405 <= grp_fu_1292_p_dout0;
        c0_y_4_reg_3399 <= grp_fu_1288_p_dout0;
        c0_y_8_reg_3411 <= grp_fu_1296_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_6_reg_3569 <= grp_fu_1300_p_dout0;
        c0_x_7_reg_3581 <= grp_fu_1308_p_dout0;
        c0_y_6_reg_3575 <= grp_fu_1304_p_dout0;
        c0_y_7_reg_3587 <= grp_fu_1312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        c0_x_7_reg_3581_pp0_iter3_reg <= c0_x_7_reg_3581;
        c0_x_8_reg_3405_pp0_iter2_reg <= c0_x_8_reg_3405;
        c0_y_7_reg_3587_pp0_iter3_reg <= c0_y_7_reg_3587;
        c0_y_8_reg_3411_pp0_iter2_reg <= c0_y_8_reg_3411;
        data_x_1_reg_3724_pp0_iter4_reg <= data_x_1_reg_3724;
        data_x_1_reg_3724_pp0_iter5_reg <= data_x_1_reg_3724_pp0_iter4_reg;
        data_x_1_reg_3724_pp0_iter6_reg <= data_x_1_reg_3724_pp0_iter5_reg;
        data_x_1_reg_3724_pp0_iter7_reg <= data_x_1_reg_3724_pp0_iter6_reg;
        data_x_2_2_reg_4018_pp0_iter6_reg <= data_x_2_2_reg_4018;
        data_x_2_2_reg_4018_pp0_iter7_reg <= data_x_2_2_reg_4018_pp0_iter6_reg;
        data_x_3_2_reg_4028_pp0_iter6_reg <= data_x_3_2_reg_4028;
        data_x_3_2_reg_4028_pp0_iter7_reg <= data_x_3_2_reg_4028_pp0_iter6_reg;
        data_y_1_reg_3729_pp0_iter4_reg <= data_y_1_reg_3729;
        data_y_1_reg_3729_pp0_iter5_reg <= data_y_1_reg_3729_pp0_iter4_reg;
        data_y_1_reg_3729_pp0_iter6_reg <= data_y_1_reg_3729_pp0_iter5_reg;
        data_y_1_reg_3729_pp0_iter7_reg <= data_y_1_reg_3729_pp0_iter6_reg;
        data_y_2_2_reg_4023_pp0_iter6_reg <= data_y_2_2_reg_4023;
        data_y_2_2_reg_4023_pp0_iter7_reg <= data_y_2_2_reg_4023_pp0_iter6_reg;
        data_y_5_reg_4013_pp0_iter6_reg <= data_y_5_reg_4013;
        data_y_5_reg_4013_pp0_iter7_reg <= data_y_5_reg_4013_pp0_iter6_reg;
        lshr_ln_reg_3127 <= {{tid_7_reg_2820[5:2]}};
        lshr_ln_reg_3127_pp0_iter1_reg <= lshr_ln_reg_3127;
        lshr_ln_reg_3127_pp0_iter2_reg <= lshr_ln_reg_3127_pp0_iter1_reg;
        lshr_ln_reg_3127_pp0_iter3_reg <= lshr_ln_reg_3127_pp0_iter2_reg;
        or_ln2_reg_3132[5 : 1] <= or_ln2_fu_1999_p3[5 : 1];
        or_ln2_reg_3132_pp0_iter1_reg[5 : 1] <= or_ln2_reg_3132[5 : 1];
        or_ln2_reg_3132_pp0_iter2_reg[5 : 1] <= or_ln2_reg_3132_pp0_iter1_reg[5 : 1];
        or_ln2_reg_3132_pp0_iter3_reg[5 : 1] <= or_ln2_reg_3132_pp0_iter2_reg[5 : 1];
        or_ln2_reg_3132_pp0_iter4_reg[5 : 1] <= or_ln2_reg_3132_pp0_iter3_reg[5 : 1];
        or_ln2_reg_3132_pp0_iter5_reg[5 : 1] <= or_ln2_reg_3132_pp0_iter4_reg[5 : 1];
        or_ln2_reg_3132_pp0_iter6_reg[5 : 1] <= or_ln2_reg_3132_pp0_iter5_reg[5 : 1];
        or_ln2_reg_3132_pp0_iter7_reg[5 : 1] <= or_ln2_reg_3132_pp0_iter6_reg[5 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        c0_x_9_reg_3617 <= grp_fu_1344_p_dout0;
        c0_y_9_reg_3623 <= grp_fu_1348_p_dout0;
        mul3_reg_3629 <= grp_fu_1352_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_1_2_reg_3739 <= grp_fu_1316_p_dout0;
        data_y_1_2_reg_3744 <= grp_fu_1320_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        data_x_1_reg_3724 <= grp_fu_1316_p_dout0;
        data_y_1_reg_3729 <= grp_fu_1320_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        data_x_2_2_reg_4018 <= grp_fu_1328_p_dout0;
        data_x_3_2_reg_4028 <= grp_fu_1336_p_dout0;
        data_y_2_2_reg_4023 <= grp_fu_1332_p_dout0;
        data_y_5_reg_4013 <= grp_fu_1324_p_dout0;
        mul298_1_reg_4038 <= grp_fu_1344_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        data_x_2_reg_3963 <= grp_fu_1312_p_dout0;
        data_x_3_reg_3973 <= grp_fu_1320_p_dout0;
        data_y_2_reg_3968 <= grp_fu_1316_p_dout0;
        data_y_3_reg_3978 <= grp_fu_1324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        data_x_2_reg_3963_pp0_iter6_reg <= data_x_2_reg_3963;
        data_x_2_reg_3963_pp0_iter7_reg <= data_x_2_reg_3963_pp0_iter6_reg;
        data_x_3_reg_3973_pp0_iter6_reg <= data_x_3_reg_3973;
        data_x_3_reg_3973_pp0_iter7_reg <= data_x_3_reg_3973_pp0_iter6_reg;
        data_y_2_reg_3968_pp0_iter6_reg <= data_y_2_reg_3968;
        data_y_2_reg_3968_pp0_iter7_reg <= data_y_2_reg_3968_pp0_iter6_reg;
        data_y_3_reg_3978_pp0_iter6_reg <= data_y_3_reg_3978;
        data_y_3_reg_3978_pp0_iter7_reg <= data_y_3_reg_3978_pp0_iter6_reg;
        tmp_4_reg_3875_pp0_iter5_reg <= tmp_4_reg_3875;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_x_4_2_reg_4059 <= grp_fu_1332_p_dout0;
        data_x_5_2_reg_4069 <= grp_fu_1340_p_dout0;
        data_y_3_2_reg_4049 <= grp_fu_1328_p_dout0;
        data_y_4_2_reg_4064 <= grp_fu_1336_p_dout0;
        sub11_reg_4043 <= grp_fu_1324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        data_x_4_reg_3988 <= grp_fu_1324_p_dout0;
        data_x_5_reg_3998 <= grp_fu_1332_p_dout0;
        data_y_4_reg_3993 <= grp_fu_1328_p_dout0;
        mul291_1_reg_4003 <= grp_fu_1352_p_dout0;
        mul4_reg_3983 <= grp_fu_1348_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_2_reg_4117 <= grp_fu_1328_p_dout0;
        data_x_7_2_reg_4127 <= grp_fu_1336_p_dout0;
        data_y_6_2_reg_4122 <= grp_fu_1332_p_dout0;
        data_y_6_reg_4107 <= grp_fu_1320_p_dout0;
        data_y_7_2_reg_4132 <= grp_fu_1340_p_dout0;
        data_y_7_reg_4112 <= grp_fu_1324_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_4097 <= grp_fu_1312_p_dout0;
        data_x_7_reg_4102 <= grp_fu_1316_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_x_6_reg_4097_pp0_iter8_reg <= data_x_6_reg_4097;
        data_x_7_reg_4102_pp0_iter8_reg <= data_x_7_reg_4102;
        data_y_5_2_reg_4074_pp0_iter7_reg <= data_y_5_2_reg_4074;
        data_y_5_2_reg_4074_pp0_iter8_reg <= data_y_5_2_reg_4074_pp0_iter7_reg;
        tmp_2_reg_3767_pp0_iter5_reg <= tmp_2_reg_3767;
        zext_ln127_1_reg_2871[6 : 0] <= zext_ln127_1_fu_1709_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        data_y_5_2_reg_4074 <= grp_fu_1308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        mul176_1_reg_3679 <= grp_fu_1352_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        mul1_reg_3646 <= grp_fu_1352_p_dout0;
        mul5_reg_3635 <= grp_fu_1344_p_dout0;
        mul_reg_3641 <= grp_fu_1348_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        mul219_1_reg_3719 <= grp_fu_1344_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mul2_reg_3953 <= grp_fu_1344_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        reg_1503 <= work_x_q1;
        reg_1507 <= work_x_q0;
        reg_1511 <= work_y_q1;
        reg_1515 <= work_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_1519 <= work_x_q1;
        reg_1523 <= work_x_q0;
        reg_1527 <= work_y_q1;
        reg_1531 <= work_y_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_1535 <= grp_fu_1308_p_dout0;
        reg_1539 <= grp_fu_1312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)))) begin
        reg_1543 <= grp_twiddles8_fu_1356_p_dout0_0;
        reg_1551 <= grp_twiddles8_fu_1356_p_dout0_1;
        reg_1559 <= grp_twiddles8_fu_1356_p_dout0_2;
        reg_1567 <= grp_twiddles8_fu_1356_p_dout0_3;
        reg_1575 <= grp_twiddles8_fu_1356_p_dout0_4;
        reg_1583 <= grp_twiddles8_fu_1356_p_dout0_5;
        reg_1591 <= grp_twiddles8_fu_1356_p_dout0_6;
        reg_1599 <= grp_twiddles8_fu_1356_p_dout0_7;
        reg_1607 <= grp_twiddles8_fu_1356_p_dout0_8;
        reg_1615 <= grp_twiddles8_fu_1356_p_dout0_9;
        reg_1623 <= grp_twiddles8_fu_1356_p_dout0_10;
        reg_1631 <= grp_twiddles8_fu_1356_p_dout0_11;
        reg_1639 <= grp_twiddles8_fu_1356_p_dout0_12;
        reg_1647 <= grp_twiddles8_fu_1356_p_dout0_13;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub10_reg_3785 <= grp_fu_1340_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        sub12_reg_4079 <= grp_fu_1336_p_dout0;
        sub294_1_reg_4085 <= grp_fu_1340_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        sub208_1_reg_3521_pp0_iter3_reg <= sub208_1_reg_3521;
        sub287_1_reg_3881_pp0_iter5_reg <= sub287_1_reg_3881;
        tmp_3_reg_3515_pp0_iter3_reg <= tmp_3_reg_3515;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        sub287_1_reg_3881 <= grp_fu_1340_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        sub299_1_reg_4091 <= grp_fu_1340_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sub2_reg_3467_pp0_iter3_reg <= sub2_reg_3467;
        tmp_reg_3461_pp0_iter3_reg <= tmp_reg_3461;
        zext_ln127_2_reg_2897[6 : 0] <= zext_ln127_2_fu_1733_p1[6 : 0];
        zext_ln154_reg_3791[3 : 0] <= zext_ln154_fu_2666_p1[3 : 0];
        zext_ln154_reg_3791_pp0_iter10_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter9_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter11_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter10_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter12_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter11_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter13_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter12_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter14_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter13_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter15_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter14_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter16_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter15_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter17_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter16_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter18_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter17_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter19_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter18_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter20_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter19_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter21_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter20_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter22_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter21_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter23_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter22_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter5_reg[3 : 0] <= zext_ln154_reg_3791[3 : 0];
        zext_ln154_reg_3791_pp0_iter6_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter5_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter7_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter6_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter8_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter7_reg[3 : 0];
        zext_ln154_reg_3791_pp0_iter9_reg[3 : 0] <= zext_ln154_reg_3791_pp0_iter8_reg[3 : 0];
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_10_ce0_local = 1'b1;
    end else begin
        DATA_x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_10_we0_local = 1'b1;
    end else begin
        DATA_x_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_11_we0_local = 1'b1;
    end else begin
        DATA_x_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_12_ce0_local = 1'b1;
    end else begin
        DATA_x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_12_we0_local = 1'b1;
    end else begin
        DATA_x_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_13_we0_local = 1'b1;
    end else begin
        DATA_x_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_14_ce0_local = 1'b1;
    end else begin
        DATA_x_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_14_we0_local = 1'b1;
    end else begin
        DATA_x_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_15_we0_local = 1'b1;
    end else begin
        DATA_x_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_16_ce0_local = 1'b1;
    end else begin
        DATA_x_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln154_reg_2867_pp0_iter4_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_16_we0_local = 1'b1;
    end else begin
        DATA_x_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_17_ce0_local = 1'b1;
    end else begin
        DATA_x_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_17_we0_local = 1'b1;
    end else begin
        DATA_x_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_18_ce0_local = 1'b1;
    end else begin
        DATA_x_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_18_we0_local = 1'b1;
    end else begin
        DATA_x_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_19_ce0_local = 1'b1;
    end else begin
        DATA_x_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_19_we0_local = 1'b1;
    end else begin
        DATA_x_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_1_we0_local = 1'b1;
    end else begin
        DATA_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_20_ce0_local = 1'b1;
    end else begin
        DATA_x_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_20_we0_local = 1'b1;
    end else begin
        DATA_x_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_21_ce0_local = 1'b1;
    end else begin
        DATA_x_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_21_we0_local = 1'b1;
    end else begin
        DATA_x_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_22_ce0_local = 1'b1;
    end else begin
        DATA_x_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_22_we0_local = 1'b1;
    end else begin
        DATA_x_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_23_ce0_local = 1'b1;
    end else begin
        DATA_x_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_23_we0_local = 1'b1;
    end else begin
        DATA_x_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_24_ce0_local = 1'b1;
    end else begin
        DATA_x_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln154_reg_2867_pp0_iter4_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_24_we0_local = 1'b1;
    end else begin
        DATA_x_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_25_ce0_local = 1'b1;
    end else begin
        DATA_x_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_25_we0_local = 1'b1;
    end else begin
        DATA_x_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_26_ce0_local = 1'b1;
    end else begin
        DATA_x_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_26_we0_local = 1'b1;
    end else begin
        DATA_x_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_27_ce0_local = 1'b1;
    end else begin
        DATA_x_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_27_we0_local = 1'b1;
    end else begin
        DATA_x_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_28_ce0_local = 1'b1;
    end else begin
        DATA_x_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_28_we0_local = 1'b1;
    end else begin
        DATA_x_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_29_ce0_local = 1'b1;
    end else begin
        DATA_x_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_29_we0_local = 1'b1;
    end else begin
        DATA_x_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_2_we0_local = 1'b1;
    end else begin
        DATA_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_30_ce0_local = 1'b1;
    end else begin
        DATA_x_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_30_we0_local = 1'b1;
    end else begin
        DATA_x_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_31_ce0_local = 1'b1;
    end else begin
        DATA_x_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_31_we0_local = 1'b1;
    end else begin
        DATA_x_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_3_we0_local = 1'b1;
    end else begin
        DATA_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_4_we0_local = 1'b1;
    end else begin
        DATA_x_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_5_we0_local = 1'b1;
    end else begin
        DATA_x_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_6_we0_local = 1'b1;
    end else begin
        DATA_x_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_x_7_we0_local = 1'b1;
    end else begin
        DATA_x_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_8_ce0_local = 1'b1;
    end else begin
        DATA_x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln154_reg_2867_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_8_we0_local = 1'b1;
    end else begin
        DATA_x_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_x_9_we0_local = 1'b1;
    end else begin
        DATA_x_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln154_reg_2867_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_x_we0_local = 1'b1;
    end else begin
        DATA_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_10_we0_local = 1'b1;
    end else begin
        DATA_y_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_11_we0_local = 1'b1;
    end else begin
        DATA_y_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_12_we0_local = 1'b1;
    end else begin
        DATA_y_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_13_we0_local = 1'b1;
    end else begin
        DATA_y_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_14_we0_local = 1'b1;
    end else begin
        DATA_y_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_15_we0_local = 1'b1;
    end else begin
        DATA_y_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_16_ce0_local = 1'b1;
    end else begin
        DATA_y_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln154_reg_2867_pp0_iter4_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_16_we0_local = 1'b1;
    end else begin
        DATA_y_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_17_ce0_local = 1'b1;
    end else begin
        DATA_y_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_17_we0_local = 1'b1;
    end else begin
        DATA_y_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_18_ce0_local = 1'b1;
    end else begin
        DATA_y_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_18_we0_local = 1'b1;
    end else begin
        DATA_y_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_19_ce0_local = 1'b1;
    end else begin
        DATA_y_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_19_we0_local = 1'b1;
    end else begin
        DATA_y_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_20_ce0_local = 1'b1;
    end else begin
        DATA_y_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_20_we0_local = 1'b1;
    end else begin
        DATA_y_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_21_ce0_local = 1'b1;
    end else begin
        DATA_y_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_21_we0_local = 1'b1;
    end else begin
        DATA_y_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_22_ce0_local = 1'b1;
    end else begin
        DATA_y_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_22_we0_local = 1'b1;
    end else begin
        DATA_y_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_23_ce0_local = 1'b1;
    end else begin
        DATA_y_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_23_we0_local = 1'b1;
    end else begin
        DATA_y_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_24_ce0_local = 1'b1;
    end else begin
        DATA_y_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln154_reg_2867_pp0_iter4_reg == 1'd0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_24_we0_local = 1'b1;
    end else begin
        DATA_y_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_25_ce0_local = 1'b1;
    end else begin
        DATA_y_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_25_we0_local = 1'b1;
    end else begin
        DATA_y_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_26_ce0_local = 1'b1;
    end else begin
        DATA_y_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_26_we0_local = 1'b1;
    end else begin
        DATA_y_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_27_ce0_local = 1'b1;
    end else begin
        DATA_y_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_27_we0_local = 1'b1;
    end else begin
        DATA_y_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_28_ce0_local = 1'b1;
    end else begin
        DATA_y_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_28_we0_local = 1'b1;
    end else begin
        DATA_y_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_29_ce0_local = 1'b1;
    end else begin
        DATA_y_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_29_we0_local = 1'b1;
    end else begin
        DATA_y_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_30_ce0_local = 1'b1;
    end else begin
        DATA_y_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_30_we0_local = 1'b1;
    end else begin
        DATA_y_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_31_ce0_local = 1'b1;
    end else begin
        DATA_y_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_31_we0_local = 1'b1;
    end else begin
        DATA_y_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_4_we0_local = 1'b1;
    end else begin
        DATA_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_5_we0_local = 1'b1;
    end else begin
        DATA_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_6_we0_local = 1'b1;
    end else begin
        DATA_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        DATA_y_7_we0_local = 1'b1;
    end else begin
        DATA_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln154_reg_2867_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_8_we0_local = 1'b1;
    end else begin
        DATA_y_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b1) & (icmp_ln154_reg_2867_pp0_iter23_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        DATA_y_9_we0_local = 1'b1;
    end else begin
        DATA_y_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln154_reg_2867_pp0_iter4_reg == 1'd1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_28_reg_2833 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (tmp_28_reg_2833_pp0_iter22_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
        ap_condition_exit_pp0_iter22_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter22_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter22_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to21 = 1'b1;
    end else begin
        ap_idle_pp0_0to21 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to23 = 1'b1;
    end else begin
        ap_idle_pp0_1to23 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_tid_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_7 = tid_fu_226;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1369_p0 = c0_x_6_reg_3569;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1369_p0 = c0_x_5_reg_3229;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1369_p0 = c0_x_122_fu_2090_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1369_p0 = c0_x_fu_2066_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1369_p0 = c0_x_124_fu_2013_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1369_p0 = c0_x_120_fu_1944_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1369_p0 = c0_x_123_fu_1856_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1369_p0 = c0_x_119_fu_1759_p1;
    end else begin
        grp_fu_1369_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1369_p1 = add2_reg_3473;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1369_p1 = add6_reg_3253;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1369_p1 = bitcast_ln133_1_fu_2096_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1369_p1 = bitcast_ln133_fu_2072_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1369_p1 = bitcast_ln135_1_fu_2038_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1369_p1 = bitcast_ln135_fu_1963_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1369_p1 = bitcast_ln134_1_fu_1893_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1369_p1 = bitcast_ln134_fu_1771_p1;
    end else begin
        grp_fu_1369_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1373_p0 = c0_y_6_reg_3575;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1373_p0 = c0_y_5_reg_3235;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1373_p0 = c0_y_122_fu_2102_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1373_p0 = c0_y_fu_2078_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1373_p0 = c0_y_124_fu_2044_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1373_p0 = c0_y_120_fu_1969_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1373_p0 = c0_y_123_fu_1915_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1373_p0 = c0_y_119_fu_1783_p1;
    end else begin
        grp_fu_1373_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1373_p1 = add3_reg_3479;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1373_p1 = add7_reg_3259;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1373_p1 = bitcast_ln142_1_fu_2108_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1373_p1 = bitcast_ln142_fu_2084_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1373_p1 = bitcast_ln144_1_fu_2050_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1373_p1 = bitcast_ln144_fu_1975_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1373_p1 = bitcast_ln143_1_fu_1927_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1373_p1 = bitcast_ln143_fu_1795_p1;
    end else begin
        grp_fu_1373_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (tmp_28_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_28_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_28_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_28_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage7_00001)))) begin
        grp_fu_1377_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001))) begin
        grp_fu_1377_opcode = 2'd0;
    end else begin
        grp_fu_1377_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1377_p0 = mul_reg_3641;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1377_p0 = c0_x_9_reg_3617;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1377_p0 = c0_x_122_fu_2090_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1377_p0 = c0_x_fu_2066_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1377_p0 = c0_x_124_fu_2013_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1377_p0 = c0_x_120_fu_1944_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1377_p0 = c0_x_123_fu_1856_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1377_p0 = c0_x_119_fu_1759_p1;
    end else begin
        grp_fu_1377_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1377_p1 = bitcast_ln148_13_fu_2559_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1377_p1 = mul3_reg_3629;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1377_p1 = bitcast_ln133_1_fu_2096_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1377_p1 = bitcast_ln133_fu_2072_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1377_p1 = bitcast_ln135_1_fu_2038_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1377_p1 = bitcast_ln135_fu_1963_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1377_p1 = bitcast_ln134_1_fu_1893_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1377_p1 = bitcast_ln134_fu_1771_p1;
    end else begin
        grp_fu_1377_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1381_p0 = bitcast_ln148_15_fu_2593_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1381_p0 = c0_x_9_reg_3617;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1381_p0 = c0_y_122_fu_2102_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1381_p0 = c0_y_fu_2078_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1381_p0 = c0_y_124_fu_2044_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1381_p0 = c0_y_120_fu_1969_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1381_p0 = c0_y_123_fu_1915_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1381_p0 = c0_y_119_fu_1783_p1;
    end else begin
        grp_fu_1381_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1381_p1 = mul1_reg_3646;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1381_p1 = mul3_reg_3629;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1381_p1 = bitcast_ln142_1_fu_2108_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1381_p1 = bitcast_ln142_fu_2084_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1381_p1 = bitcast_ln144_1_fu_2050_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1381_p1 = bitcast_ln144_fu_1975_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1381_p1 = bitcast_ln143_1_fu_1927_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1381_p1 = bitcast_ln143_fu_1795_p1;
    end else begin
        grp_fu_1381_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001))) begin
        grp_fu_1385_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_28_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_28_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_1385_opcode = 2'd0;
    end else begin
        grp_fu_1385_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1385_p0 = bitcast_ln148_35_fu_2661_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1385_p0 = c0_y_9_reg_3623;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1385_p0 = c0_x_18_reg_3593;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1385_p0 = c0_x_21_reg_3417;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1385_p0 = c0_x_4_reg_3393;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1385_p0 = c0_x_15_reg_3287;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1385_p0 = c0_x_125_fu_1887_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1385_p0 = c0_x_121_fu_1765_p1;
    end else begin
        grp_fu_1385_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1385_p1 = mul219_1_reg_3719;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1385_p1 = mul5_reg_3635;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1385_p1 = add199_1_reg_3537;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1385_p1 = add111_1_reg_3369;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1385_p1 = add4_reg_3323;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1385_p1 = add127_1_reg_3311;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1385_p1 = bitcast_ln136_1_fu_1909_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1385_p1 = bitcast_ln136_fu_1777_p1;
    end else begin
        grp_fu_1385_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1389_p0 = c0_x_13_reg_3429_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1389_p0 = c0_x_20_reg_3651;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1389_p0 = c0_y_18_reg_3599;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1389_p0 = c0_y_21_reg_3423;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1389_p0 = c0_y_4_reg_3399;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1389_p0 = c0_y_15_reg_3293;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1389_p0 = c0_y_125_fu_1921_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1389_p0 = c0_y_121_fu_1789_p1;
    end else begin
        grp_fu_1389_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1389_p1 = sub157_1_reg_3697;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1389_p1 = mul170_1_reg_3663;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1389_p1 = add202_1_reg_3543;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1389_p1 = add114_1_reg_3375;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1389_p1 = add5_reg_3329;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1389_p1 = add130_1_reg_3317;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1389_p1 = bitcast_ln145_1_fu_1933_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1389_p1 = bitcast_ln145_fu_1801_p1;
    end else begin
        grp_fu_1389_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_28_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_28_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_1393_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001))) begin
        grp_fu_1393_opcode = 2'd0;
    end else begin
        grp_fu_1393_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1393_p0 = c0_y_23_reg_3929;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1393_p0 = c0_y_13_reg_3435_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1393_p0 = c0_x_20_reg_3651;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1393_p0 = mul6_reg_3485;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1393_p0 = c0_x_21_reg_3417;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1393_p0 = c0_x_4_reg_3393;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1393_p0 = c0_x_125_fu_1887_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1393_p0 = c0_x_121_fu_1765_p1;
    end else begin
        grp_fu_1393_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1393_p1 = add281_1_reg_3947;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1393_p1 = add162_1_reg_3703;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1393_p1 = mul170_1_reg_3663;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1393_p1 = bitcast_ln148_5_fu_2423_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1393_p1 = add111_1_reg_3369;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1393_p1 = add4_reg_3323;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1393_p1 = bitcast_ln136_1_fu_1909_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1393_p1 = bitcast_ln136_fu_1777_p1;
    end else begin
        grp_fu_1393_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (tmp_28_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_28_reg_2833 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_1397_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1397_opcode = 2'd0;
    end else begin
        grp_fu_1397_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1397_p0 = c0_x_10_reg_3899_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1397_p0 = c0_x_7_reg_3581_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1397_p0 = c0_x_13_reg_3429_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1397_p0 = bitcast_ln148_7_fu_2457_p1;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1397_p0 = c0_y_21_reg_3423;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1397_p0 = c0_y_4_reg_3399;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1397_p0 = c0_y_125_fu_1921_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1397_p0 = c0_y_121_fu_1789_p1;
    end else begin
        grp_fu_1397_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1397_p1 = sub11_reg_4043;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1397_p1 = sub4_reg_3851;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1397_p1 = sub157_1_reg_3697;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1397_p1 = mul9_reg_3490;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1397_p1 = add114_1_reg_3375;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1397_p1 = add5_reg_3329;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1397_p1 = bitcast_ln145_1_fu_1933_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1397_p1 = bitcast_ln145_fu_1801_p1;
    end else begin
        grp_fu_1397_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1401_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001))) begin
        grp_fu_1401_opcode = 2'd0;
    end else begin
        grp_fu_1401_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1401_p0 = c0_x_10_reg_3899_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1401_p0 = c0_y_7_reg_3587_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1401_p0 = c0_y_13_reg_3435_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1401_p0 = c0_x_18_reg_3593;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1401_p0 = c0_x_6_reg_3569;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1401_p0 = mul154_1_reg_3527;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1401_p0 = tmp_1_3_reg_3299;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1401_p0 = tmp_1_reg_3241;
    end else begin
        grp_fu_1401_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1401_p1 = sub11_reg_4043;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1401_p1 = sub6_reg_3857;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1401_p1 = add162_1_reg_3703;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1401_p1 = add199_1_reg_3537;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1401_p1 = add2_reg_3473;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1401_p1 = bitcast_ln148_25_fu_2491_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1401_p1 = bitcast_ln148_21_fu_2283_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1401_p1 = bitcast_ln148_1_fu_2143_p1;
    end else begin
        grp_fu_1401_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_1405_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1405_opcode = 2'd0;
    end else begin
        grp_fu_1405_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1405_p0 = c0_y_10_reg_3905_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1405_p0 = c0_x_7_reg_3581_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1405_p0 = c0_y_20_reg_3657;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1405_p0 = c0_y_18_reg_3599;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1405_p0 = c0_y_6_reg_3575;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1405_p0 = bitcast_ln148_27_fu_2525_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1405_p0 = bitcast_ln148_23_fu_2317_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1405_p0 = bitcast_ln148_3_fu_2177_p1;
    end else begin
        grp_fu_1405_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1405_p1 = sub12_reg_4079;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1405_p1 = sub4_reg_3851;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1405_p1 = mul176_1_reg_3679;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1405_p1 = add202_1_reg_3543;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1405_p1 = add3_reg_3479;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1405_p1 = mul161_1_reg_3532;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1405_p1 = sub104_1_reg_3305;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1405_p1 = sub3_reg_3247;
    end else begin
        grp_fu_1405_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_1409_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1409_opcode = 2'd0;
    end else begin
        grp_fu_1409_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1409_p0 = c0_y_10_reg_3905_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1409_p0 = mul2_reg_3953;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1409_p0 = c0_y_11_reg_3893;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1409_p0 = c0_x_11_reg_3887;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1409_p0 = c0_y_7_reg_3587_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1409_p0 = c0_x_8_reg_3405_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1409_p0 = bitcast_ln148_29_fu_2352_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1409_p0 = bitcast_ln148_9_fu_2212_p1;
    end else begin
        grp_fu_1409_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1409_p1 = sub12_reg_4079;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1409_p1 = bitcast_ln148_17_fu_2706_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1409_p1 = add10_reg_3863;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1409_p1 = add_reg_3761;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1409_p1 = sub6_reg_3857;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1409_p1 = sub9_reg_3685;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1409_p1 = bitcast_ln148_31_fu_2388_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1409_p1 = bitcast_ln148_11_fu_2248_p1;
    end else begin
        grp_fu_1409_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001))) begin
        grp_fu_1413_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1413_opcode = 2'd0;
    end else begin
        grp_fu_1413_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1413_p0 = c0_x_22_reg_3935_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1413_p0 = c0_y_19_reg_3611_pp0_iter5_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1413_p0 = c0_x_19_reg_3605_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1413_p0 = c0_y_11_reg_3893;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1413_p0 = c0_y_8_reg_3411_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1413_p0 = bitcast_ln148_29_fu_2352_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1413_p0 = bitcast_ln148_9_fu_2212_p1;
    end else begin
        grp_fu_1413_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1413_p1 = sub294_1_reg_4085;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1413_p1 = sub220_1_reg_3917;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1413_p1 = sub215_1_reg_3911;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1413_p1 = add10_reg_3863;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1413_p1 = add9_reg_3691;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1413_p1 = bitcast_ln148_31_fu_2388_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1413_p1 = bitcast_ln148_11_fu_2248_p1;
    end else begin
        grp_fu_1413_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1417_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)))) begin
        grp_fu_1417_opcode = 2'd0;
    end else begin
        grp_fu_1417_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1417_p0 = c0_y_22_reg_3941_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1417_p0 = c0_x_23_reg_3923;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1417_p0 = c0_y_19_reg_3611_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1417_p0 = c0_x_11_reg_3887;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1417_p0 = c0_x_8_reg_3405_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1417_p0 = c0_x_15_reg_3287;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1417_p0 = c0_x_5_reg_3229;
    end else begin
        grp_fu_1417_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1417_p1 = sub299_1_reg_4091;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1417_p1 = add278_1_reg_3869;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1417_p1 = sub220_1_reg_3917;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1417_p1 = add_reg_3761;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1417_p1 = sub9_reg_3685;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1417_p1 = add127_1_reg_3311;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1417_p1 = add6_reg_3253;
    end else begin
        grp_fu_1417_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_1421_opcode = 2'd1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001))) begin
        grp_fu_1421_opcode = 2'd0;
    end else begin
        grp_fu_1421_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1421_p0 = c0_x_22_reg_3935_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1421_p0 = bitcast_ln148_19_fu_2740_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1421_p0 = c0_y_23_reg_3929;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1421_p0 = c0_x_19_reg_3605_pp0_iter4_reg;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1421_p0 = c0_y_8_reg_3411_pp0_iter2_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1421_p0 = c0_y_15_reg_3293;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1421_p0 = c0_y_5_reg_3235;
    end else begin
        grp_fu_1421_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1421_p1 = sub294_1_reg_4085;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1421_p1 = mul4_reg_3983;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1421_p1 = add281_1_reg_3947;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1421_p1 = sub215_1_reg_3911;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1421_p1 = add9_reg_3691;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1421_p1 = add130_1_reg_3317;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1421_p1 = add7_reg_3259;
    end else begin
        grp_fu_1421_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1425_p0 = c0_y_22_reg_3941_pp0_iter6_reg;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1425_p0 = bitcast_ln148_39_fu_2808_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1425_p0 = mul291_1_reg_4003;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1425_p0 = c0_x_23_reg_3923;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1425_p0 = mul212_1_reg_3709;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1425_p0 = c0_y_20_reg_3657;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1425_p0 = c0_y_9_reg_3623;
    end else begin
        grp_fu_1425_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1425_p1 = sub299_1_reg_4091;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1425_p1 = mul298_1_reg_4038;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1425_p1 = bitcast_ln148_37_fu_2774_p1;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1425_p1 = add278_1_reg_3869;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1425_p1 = bitcast_ln148_33_fu_2627_p1;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1425_p1 = mul176_1_reg_3679;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1425_p1 = mul5_reg_3635;
    end else begin
        grp_fu_1425_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_1429_p0 = sub287_1_reg_3881;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_1429_p0 = tmp_2_reg_3767;
    end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1429_p0 = sub208_1_reg_3521;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1429_p0 = sub143_1_reg_3495;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1429_p0 = add1_reg_3456;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1429_p0 = sub8_reg_3441;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1429_p0 = tmp_1_4_reg_3381;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1429_p0 = tmp_1_1_reg_3335;
    end else begin
        grp_fu_1429_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_1429_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        grp_fu_1429_p1 = 64'd0;
    end else begin
        grp_fu_1429_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1434_p0 = sub10_reg_3785;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1434_p0 = add149_1_reg_3500;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1434_p0 = tmp_reg_3461;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1434_p0 = add8_reg_3446;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1434_p0 = sub120_1_reg_3387;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1434_p0 = sub5_reg_3341;
    end else begin
        grp_fu_1434_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_1434_p1 = 64'd4604544271217802189;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)))) begin
        grp_fu_1434_p1 = 64'd0;
    end else begin
        grp_fu_1434_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_1441_p0 = tmp_4_reg_3875;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_1441_p0 = tmp_3_reg_3515;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_1441_p0 = add175_1_reg_3510;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_1441_p0 = sub169_1_reg_3505;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_1441_p0 = sub2_reg_3467;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_1441_p0 = sub1_reg_3451;
    end else begin
        grp_fu_1441_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)))) begin
        grp_fu_1441_p1 = 64'd0;
    end else if ((((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_1441_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_1441_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_x_1_read = data_x_1_2_reg_3739_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_x_1_read = data_x_1_reg_3724_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1336_a_x_1_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_x_1_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_x_2_read = data_x_2_2_reg_4018_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_x_2_read = data_x_2_reg_3963_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1336_a_x_2_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_x_2_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_x_3_read = data_x_3_2_reg_4028_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_x_3_read = data_x_3_reg_3973_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1336_a_x_3_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_x_3_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_x_4_read = data_x_4_2_reg_4059_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_x_4_read = data_x_4_reg_3988_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1336_a_x_4_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_x_4_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_x_5_read = data_x_5_2_reg_4069_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_x_5_read = data_x_5_reg_3998_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1336_a_x_5_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_x_5_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_x_6_read = data_x_6_2_reg_4117;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_x_6_read = data_x_6_reg_4097_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_1336_a_x_6_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_x_6_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_x_7_read = data_x_7_2_reg_4127;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_x_7_read = data_x_7_reg_4102_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_1336_a_x_7_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_x_7_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_y_1_read = data_y_1_2_reg_3744_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_y_1_read = data_y_1_reg_3729_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1336_a_y_1_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_y_1_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_y_2_read = data_y_2_2_reg_4023_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_y_2_read = data_y_2_reg_3968_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1336_a_y_2_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_y_2_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_y_3_read = data_y_3_2_reg_4049_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_y_3_read = data_y_3_reg_3978_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1336_a_y_3_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_y_3_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_y_4_read = data_y_4_2_reg_4064_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_y_4_read = data_y_4_reg_3993_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1336_a_y_4_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_y_4_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_y_5_read = data_y_5_2_reg_4074_pp0_iter8_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_y_5_read = data_y_5_reg_4013_pp0_iter7_reg;
        end else begin
            grp_twiddles8_fu_1336_a_y_5_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_y_5_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_y_6_read = data_y_6_2_reg_4122;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_y_6_read = data_y_6_reg_4107;
        end else begin
            grp_twiddles8_fu_1336_a_y_6_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_y_6_read = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_a_y_7_read = data_y_7_2_reg_4132;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_a_y_7_read = data_y_7_reg_4112;
        end else begin
            grp_twiddles8_fu_1336_a_y_7_read = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_a_y_7_read = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001_ignoreCallOp1582)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001_ignoreCallOp1579)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001_ignoreCallOp1586)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001_ignoreCallOp1584)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001_ignoreCallOp1580)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001_ignoreCallOp1592)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp1590)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001_ignoreCallOp1588)))) begin
        grp_twiddles8_fu_1336_ap_ce = 1'b1;
    end else begin
        grp_twiddles8_fu_1336_ap_ce = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp1581))) begin
            grp_twiddles8_fu_1336_i = or_ln2_reg_3132_pp0_iter7_reg;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp1579))) begin
            grp_twiddles8_fu_1336_i = trunc_ln127_1_reg_2837_pp0_iter8_reg;
        end else begin
            grp_twiddles8_fu_1336_i = 'bx;
        end
    end else begin
        grp_twiddles8_fu_1336_i = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_x_address0_local = zext_ln133_2_fu_2032_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_x_address0_local = zext_ln133_fu_1957_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_x_address0_local = zext_ln135_1_fu_1903_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_x_address0_local = zext_ln135_fu_1850_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_address0_local = zext_ln136_1_fu_1827_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_address0_local = zext_ln132_1_fu_1753_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_address0_local = zext_ln136_fu_1727_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_address0_local = zext_ln132_fu_1697_p1;
        end else begin
            work_x_address0_local = 'bx;
        end
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_x_address1_local = zext_ln129_fu_2007_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_x_address1_local = zext_ln127_fu_1939_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_x_address1_local = zext_ln131_1_fu_1881_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_x_address1_local = zext_ln131_fu_1840_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_x_address1_local = zext_ln134_1_fu_1812_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_x_address1_local = zext_ln130_1_fu_1742_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_x_address1_local = zext_ln134_fu_1718_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_x_address1_local = zext_ln130_fu_1687_p1;
        end else begin
            work_x_address1_local = 'bx;
        end
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_y_address0_local = zext_ln133_2_fu_2032_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_y_address0_local = zext_ln133_fu_1957_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_y_address0_local = zext_ln135_1_fu_1903_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_y_address0_local = zext_ln135_fu_1850_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_address0_local = zext_ln136_1_fu_1827_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_address0_local = zext_ln132_1_fu_1753_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_address0_local = zext_ln136_fu_1727_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_address0_local = zext_ln132_fu_1697_p1;
        end else begin
            work_y_address0_local = 'bx;
        end
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            work_y_address1_local = zext_ln129_fu_2007_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            work_y_address1_local = zext_ln127_fu_1939_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            work_y_address1_local = zext_ln131_1_fu_1881_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            work_y_address1_local = zext_ln131_fu_1840_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            work_y_address1_local = zext_ln134_1_fu_1812_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            work_y_address1_local = zext_ln130_1_fu_1742_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            work_y_address1_local = zext_ln134_fu_1718_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            work_y_address1_local = zext_ln130_fu_1687_p1;
        end else begin
            work_y_address1_local = 'bx;
        end
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to23 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to21 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter22_stage5))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_x_10_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_10_d0 = reg_1551;
assign DATA_x_10_we0 = DATA_x_10_we0_local;
assign DATA_x_11_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_11_d0 = reg_1559;
assign DATA_x_11_we0 = DATA_x_11_we0_local;
assign DATA_x_12_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_12_d0 = reg_1567;
assign DATA_x_12_we0 = DATA_x_12_we0_local;
assign DATA_x_13_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_13_d0 = reg_1575;
assign DATA_x_13_we0 = DATA_x_13_we0_local;
assign DATA_x_14_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_14_d0 = reg_1583;
assign DATA_x_14_we0 = DATA_x_14_we0_local;
assign DATA_x_15_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_15_d0 = reg_1591;
assign DATA_x_15_we0 = DATA_x_15_we0_local;
assign DATA_x_16_address0 = zext_ln154_fu_2666_p1;
assign DATA_x_16_ce0 = DATA_x_16_ce0_local;
assign DATA_x_16_d0 = data_x_0_reg_3749;
assign DATA_x_16_we0 = DATA_x_16_we0_local;
assign DATA_x_17_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_17_ce0 = DATA_x_17_ce0_local;
assign DATA_x_17_d0 = reg_1543;
assign DATA_x_17_we0 = DATA_x_17_we0_local;
assign DATA_x_18_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_18_ce0 = DATA_x_18_ce0_local;
assign DATA_x_18_d0 = reg_1551;
assign DATA_x_18_we0 = DATA_x_18_we0_local;
assign DATA_x_19_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_19_ce0 = DATA_x_19_ce0_local;
assign DATA_x_19_d0 = reg_1559;
assign DATA_x_19_we0 = DATA_x_19_we0_local;
assign DATA_x_1_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_d0 = reg_1543;
assign DATA_x_1_we0 = DATA_x_1_we0_local;
assign DATA_x_20_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_20_ce0 = DATA_x_20_ce0_local;
assign DATA_x_20_d0 = reg_1567;
assign DATA_x_20_we0 = DATA_x_20_we0_local;
assign DATA_x_21_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_21_ce0 = DATA_x_21_ce0_local;
assign DATA_x_21_d0 = reg_1575;
assign DATA_x_21_we0 = DATA_x_21_we0_local;
assign DATA_x_22_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_22_ce0 = DATA_x_22_ce0_local;
assign DATA_x_22_d0 = reg_1583;
assign DATA_x_22_we0 = DATA_x_22_we0_local;
assign DATA_x_23_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_23_ce0 = DATA_x_23_ce0_local;
assign DATA_x_23_d0 = reg_1591;
assign DATA_x_23_we0 = DATA_x_23_we0_local;
assign DATA_x_24_address0 = zext_ln154_fu_2666_p1;
assign DATA_x_24_ce0 = DATA_x_24_ce0_local;
assign DATA_x_24_d0 = data_x_0_1_reg_3773;
assign DATA_x_24_we0 = DATA_x_24_we0_local;
assign DATA_x_25_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_25_ce0 = DATA_x_25_ce0_local;
assign DATA_x_25_d0 = reg_1543;
assign DATA_x_25_we0 = DATA_x_25_we0_local;
assign DATA_x_26_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_26_ce0 = DATA_x_26_ce0_local;
assign DATA_x_26_d0 = reg_1551;
assign DATA_x_26_we0 = DATA_x_26_we0_local;
assign DATA_x_27_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_27_ce0 = DATA_x_27_ce0_local;
assign DATA_x_27_d0 = reg_1559;
assign DATA_x_27_we0 = DATA_x_27_we0_local;
assign DATA_x_28_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_28_ce0 = DATA_x_28_ce0_local;
assign DATA_x_28_d0 = reg_1567;
assign DATA_x_28_we0 = DATA_x_28_we0_local;
assign DATA_x_29_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_29_ce0 = DATA_x_29_ce0_local;
assign DATA_x_29_d0 = reg_1575;
assign DATA_x_29_we0 = DATA_x_29_we0_local;
assign DATA_x_2_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_d0 = reg_1551;
assign DATA_x_2_we0 = DATA_x_2_we0_local;
assign DATA_x_30_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_30_ce0 = DATA_x_30_ce0_local;
assign DATA_x_30_d0 = reg_1583;
assign DATA_x_30_we0 = DATA_x_30_we0_local;
assign DATA_x_31_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_31_ce0 = DATA_x_31_ce0_local;
assign DATA_x_31_d0 = reg_1591;
assign DATA_x_31_we0 = DATA_x_31_we0_local;
assign DATA_x_3_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_d0 = reg_1559;
assign DATA_x_3_we0 = DATA_x_3_we0_local;
assign DATA_x_4_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_4_d0 = reg_1567;
assign DATA_x_4_we0 = DATA_x_4_we0_local;
assign DATA_x_5_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_5_d0 = reg_1575;
assign DATA_x_5_we0 = DATA_x_5_we0_local;
assign DATA_x_6_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_6_d0 = reg_1583;
assign DATA_x_6_we0 = DATA_x_6_we0_local;
assign DATA_x_7_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_7_d0 = reg_1591;
assign DATA_x_7_we0 = DATA_x_7_we0_local;
assign DATA_x_8_address0 = zext_ln154_fu_2666_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_8_d0 = data_x_0_1_reg_3773;
assign DATA_x_8_we0 = DATA_x_8_we0_local;
assign DATA_x_9_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_9_d0 = reg_1543;
assign DATA_x_9_we0 = DATA_x_9_we0_local;
assign DATA_x_address0 = zext_ln154_fu_2666_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_d0 = data_x_0_reg_3749;
assign DATA_x_we0 = DATA_x_we0_local;
assign DATA_y_10_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_10_d0 = reg_1607;
assign DATA_y_10_we0 = DATA_y_10_we0_local;
assign DATA_y_11_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_11_d0 = reg_1615;
assign DATA_y_11_we0 = DATA_y_11_we0_local;
assign DATA_y_12_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_12_d0 = reg_1623;
assign DATA_y_12_we0 = DATA_y_12_we0_local;
assign DATA_y_13_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_13_d0 = reg_1631;
assign DATA_y_13_we0 = DATA_y_13_we0_local;
assign DATA_y_14_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_14_d0 = reg_1639;
assign DATA_y_14_we0 = DATA_y_14_we0_local;
assign DATA_y_15_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_15_d0 = reg_1647;
assign DATA_y_15_we0 = DATA_y_15_we0_local;
assign DATA_y_16_address0 = zext_ln154_fu_2666_p1;
assign DATA_y_16_ce0 = DATA_y_16_ce0_local;
assign DATA_y_16_d0 = data_y_0_reg_3755;
assign DATA_y_16_we0 = DATA_y_16_we0_local;
assign DATA_y_17_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_17_ce0 = DATA_y_17_ce0_local;
assign DATA_y_17_d0 = reg_1599;
assign DATA_y_17_we0 = DATA_y_17_we0_local;
assign DATA_y_18_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_18_ce0 = DATA_y_18_ce0_local;
assign DATA_y_18_d0 = reg_1607;
assign DATA_y_18_we0 = DATA_y_18_we0_local;
assign DATA_y_19_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_19_ce0 = DATA_y_19_ce0_local;
assign DATA_y_19_d0 = reg_1615;
assign DATA_y_19_we0 = DATA_y_19_we0_local;
assign DATA_y_1_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = reg_1599;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_20_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_20_ce0 = DATA_y_20_ce0_local;
assign DATA_y_20_d0 = reg_1623;
assign DATA_y_20_we0 = DATA_y_20_we0_local;
assign DATA_y_21_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_21_ce0 = DATA_y_21_ce0_local;
assign DATA_y_21_d0 = reg_1631;
assign DATA_y_21_we0 = DATA_y_21_we0_local;
assign DATA_y_22_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_22_ce0 = DATA_y_22_ce0_local;
assign DATA_y_22_d0 = reg_1639;
assign DATA_y_22_we0 = DATA_y_22_we0_local;
assign DATA_y_23_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_23_ce0 = DATA_y_23_ce0_local;
assign DATA_y_23_d0 = reg_1647;
assign DATA_y_23_we0 = DATA_y_23_we0_local;
assign DATA_y_24_address0 = zext_ln154_fu_2666_p1;
assign DATA_y_24_ce0 = DATA_y_24_ce0_local;
assign DATA_y_24_d0 = data_y_0_1_reg_3779;
assign DATA_y_24_we0 = DATA_y_24_we0_local;
assign DATA_y_25_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_25_ce0 = DATA_y_25_ce0_local;
assign DATA_y_25_d0 = reg_1599;
assign DATA_y_25_we0 = DATA_y_25_we0_local;
assign DATA_y_26_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_26_ce0 = DATA_y_26_ce0_local;
assign DATA_y_26_d0 = reg_1607;
assign DATA_y_26_we0 = DATA_y_26_we0_local;
assign DATA_y_27_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_27_ce0 = DATA_y_27_ce0_local;
assign DATA_y_27_d0 = reg_1615;
assign DATA_y_27_we0 = DATA_y_27_we0_local;
assign DATA_y_28_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_28_ce0 = DATA_y_28_ce0_local;
assign DATA_y_28_d0 = reg_1623;
assign DATA_y_28_we0 = DATA_y_28_we0_local;
assign DATA_y_29_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_29_ce0 = DATA_y_29_ce0_local;
assign DATA_y_29_d0 = reg_1631;
assign DATA_y_29_we0 = DATA_y_29_we0_local;
assign DATA_y_2_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = reg_1607;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_30_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_30_ce0 = DATA_y_30_ce0_local;
assign DATA_y_30_d0 = reg_1639;
assign DATA_y_30_we0 = DATA_y_30_we0_local;
assign DATA_y_31_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_31_ce0 = DATA_y_31_ce0_local;
assign DATA_y_31_d0 = reg_1647;
assign DATA_y_31_we0 = DATA_y_31_we0_local;
assign DATA_y_3_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = reg_1615;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = reg_1623;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = reg_1631;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = reg_1639;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = reg_1647;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_8_address0 = zext_ln154_fu_2666_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_8_d0 = data_y_0_1_reg_3779;
assign DATA_y_8_we0 = DATA_y_8_we0_local;
assign DATA_y_9_address0 = zext_ln154_reg_3791_pp0_iter23_reg;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_9_d0 = reg_1599;
assign DATA_y_9_we0 = DATA_y_9_we0_local;
assign DATA_y_address0 = zext_ln154_fu_2666_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_d0 = data_y_0_reg_3755;
assign DATA_y_we0 = DATA_y_we0_local;
assign add_ln127_fu_2056_p2 = (tid_7_reg_2820 + 7'd2);
assign add_ln130_fu_1736_p2 = (zext_ln127_2_fu_1733_p1 + 8'd65);
assign add_ln132_fu_1748_p2 = (zext_ln127_1_reg_2871 + 9'd193);
assign add_ln134_1_fu_1807_p2 = ($signed(zext_ln127_1_reg_2871) + $signed(9'd321));
assign add_ln134_fu_1712_p2 = ($signed(zext_ln127_1_fu_1709_p1) + $signed(9'd320));
assign add_ln136_fu_1818_p2 = ($signed(tid_7_reg_2820) + $signed(7'd65));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001_ignoreCallOp1590 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001_ignoreCallOp1592 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001_ignoreCallOp1579 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp1579 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001_ignoreCallOp1580 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp1581 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001_ignoreCallOp1582 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001_ignoreCallOp1584 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001_ignoreCallOp1586 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001_ignoreCallOp1588 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bit_sel10_fu_2362_p3 = bitcast_ln148_30_fu_2358_p1[64'd63];
assign bit_sel11_fu_2533_p3 = bitcast_ln148_12_fu_2530_p1[64'd63];
assign bit_sel12_fu_2567_p3 = bitcast_ln148_14_fu_2564_p1[64'd63];
assign bit_sel13_fu_2326_p3 = bitcast_ln148_28_fu_2322_p1[64'd63];
assign bit_sel14_fu_2680_p3 = bitcast_ln148_16_fu_2677_p1[64'd63];
assign bit_sel15_fu_2714_p3 = bitcast_ln148_18_fu_2711_p1[64'd63];
assign bit_sel16_fu_2499_p3 = bitcast_ln148_26_fu_2496_p1[64'd63];
assign bit_sel17_fu_2257_p3 = bitcast_ln148_20_fu_2254_p1[64'd63];
assign bit_sel18_fu_2291_p3 = bitcast_ln148_22_fu_2288_p1[64'd63];
assign bit_sel19_fu_2465_p3 = bitcast_ln148_24_fu_2462_p1[64'd63];
assign bit_sel1_fu_2748_p3 = bitcast_ln148_36_fu_2745_p1[64'd63];
assign bit_sel2_fu_2117_p3 = bitcast_ln148_fu_2114_p1[64'd63];
assign bit_sel3_fu_2151_p3 = bitcast_ln148_2_fu_2148_p1[64'd63];
assign bit_sel4_fu_2635_p3 = bitcast_ln148_34_fu_2632_p1[64'd63];
assign bit_sel5_fu_2397_p3 = bitcast_ln148_4_fu_2394_p1[64'd63];
assign bit_sel6_fu_2431_p3 = bitcast_ln148_6_fu_2428_p1[64'd63];
assign bit_sel7_fu_2601_p3 = bitcast_ln148_32_fu_2598_p1[64'd63];
assign bit_sel8_fu_2186_p3 = bitcast_ln148_8_fu_2182_p1[64'd63];
assign bit_sel9_fu_2222_p3 = bitcast_ln148_10_fu_2218_p1[64'd63];
assign bit_sel_fu_2782_p3 = bitcast_ln148_38_fu_2779_p1[64'd63];
assign bitcast_ln133_1_fu_2096_p1 = reg_1507;
assign bitcast_ln133_fu_2072_p1 = reg_1507;
assign bitcast_ln134_1_fu_1893_p1 = reg_1519;
assign bitcast_ln134_fu_1771_p1 = reg_1519;
assign bitcast_ln135_1_fu_2038_p1 = reg_1507;
assign bitcast_ln135_fu_1963_p1 = reg_1507;
assign bitcast_ln136_1_fu_1909_p1 = reg_1523;
assign bitcast_ln136_fu_1777_p1 = reg_1523;
assign bitcast_ln142_1_fu_2108_p1 = reg_1515;
assign bitcast_ln142_fu_2084_p1 = reg_1515;
assign bitcast_ln143_1_fu_1927_p1 = reg_1527;
assign bitcast_ln143_fu_1795_p1 = reg_1527;
assign bitcast_ln144_1_fu_2050_p1 = reg_1515;
assign bitcast_ln144_fu_1975_p1 = reg_1515;
assign bitcast_ln145_1_fu_1933_p1 = reg_1531;
assign bitcast_ln145_fu_1801_p1 = reg_1531;
assign bitcast_ln148_10_fu_2218_p1 = reg_1539;
assign bitcast_ln148_11_fu_2248_p1 = xor_ln148_5_fu_2240_p3;
assign bitcast_ln148_12_fu_2530_p1 = sub2_reg_3467_pp0_iter3_reg;
assign bitcast_ln148_13_fu_2559_p1 = xor_ln148_6_fu_2551_p3;
assign bitcast_ln148_14_fu_2564_p1 = tmp_reg_3461_pp0_iter3_reg;
assign bitcast_ln148_15_fu_2593_p1 = xor_ln148_7_fu_2585_p3;
assign bitcast_ln148_16_fu_2677_p1 = sub10_reg_3785;
assign bitcast_ln148_17_fu_2706_p1 = xor_ln148_8_fu_2698_p3;
assign bitcast_ln148_18_fu_2711_p1 = tmp_2_reg_3767_pp0_iter5_reg;
assign bitcast_ln148_19_fu_2740_p1 = xor_ln148_9_fu_2732_p3;
assign bitcast_ln148_1_fu_2143_p1 = xor_ln1_fu_2135_p3;
assign bitcast_ln148_20_fu_2254_p1 = sub104_1_reg_3305;
assign bitcast_ln148_21_fu_2283_p1 = xor_ln148_s_fu_2275_p3;
assign bitcast_ln148_22_fu_2288_p1 = tmp_1_3_reg_3299;
assign bitcast_ln148_23_fu_2317_p1 = xor_ln148_10_fu_2309_p3;
assign bitcast_ln148_24_fu_2462_p1 = sub120_1_reg_3387;
assign bitcast_ln148_25_fu_2491_p1 = xor_ln148_11_fu_2483_p3;
assign bitcast_ln148_26_fu_2496_p1 = tmp_1_4_reg_3381;
assign bitcast_ln148_27_fu_2525_p1 = xor_ln148_12_fu_2517_p3;
assign bitcast_ln148_28_fu_2322_p1 = reg_1535;
assign bitcast_ln148_29_fu_2352_p1 = xor_ln148_13_fu_2344_p3;
assign bitcast_ln148_2_fu_2148_p1 = tmp_1_reg_3241;
assign bitcast_ln148_30_fu_2358_p1 = reg_1539;
assign bitcast_ln148_31_fu_2388_p1 = xor_ln148_14_fu_2380_p3;
assign bitcast_ln148_32_fu_2598_p1 = sub208_1_reg_3521_pp0_iter3_reg;
assign bitcast_ln148_33_fu_2627_p1 = xor_ln148_15_fu_2619_p3;
assign bitcast_ln148_34_fu_2632_p1 = tmp_3_reg_3515_pp0_iter3_reg;
assign bitcast_ln148_35_fu_2661_p1 = xor_ln148_16_fu_2653_p3;
assign bitcast_ln148_36_fu_2745_p1 = sub287_1_reg_3881_pp0_iter5_reg;
assign bitcast_ln148_37_fu_2774_p1 = xor_ln148_17_fu_2766_p3;
assign bitcast_ln148_38_fu_2779_p1 = tmp_4_reg_3875_pp0_iter5_reg;
assign bitcast_ln148_39_fu_2808_p1 = xor_ln148_18_fu_2800_p3;
assign bitcast_ln148_3_fu_2177_p1 = xor_ln148_1_fu_2169_p3;
assign bitcast_ln148_4_fu_2394_p1 = sub5_reg_3341_pp0_iter2_reg;
assign bitcast_ln148_5_fu_2423_p1 = xor_ln148_2_fu_2415_p3;
assign bitcast_ln148_6_fu_2428_p1 = tmp_1_1_reg_3335_pp0_iter2_reg;
assign bitcast_ln148_7_fu_2457_p1 = xor_ln148_3_fu_2449_p3;
assign bitcast_ln148_8_fu_2182_p1 = reg_1535;
assign bitcast_ln148_9_fu_2212_p1 = xor_ln148_4_fu_2204_p3;
assign bitcast_ln148_fu_2114_p1 = sub3_reg_3247;
assign c0_x_119_fu_1759_p1 = reg_1503;
assign c0_x_120_fu_1944_p1 = reg_1503;
assign c0_x_121_fu_1765_p1 = reg_1507;
assign c0_x_122_fu_2090_p1 = reg_1503;
assign c0_x_123_fu_1856_p1 = reg_1503;
assign c0_x_124_fu_2013_p1 = reg_1503;
assign c0_x_125_fu_1887_p1 = reg_1507;
assign c0_x_fu_2066_p1 = reg_1503;
assign c0_y_119_fu_1783_p1 = reg_1511;
assign c0_y_120_fu_1969_p1 = reg_1511;
assign c0_y_121_fu_1789_p1 = reg_1515;
assign c0_y_122_fu_2102_p1 = reg_1511;
assign c0_y_123_fu_1915_p1 = reg_1511;
assign c0_y_124_fu_2044_p1 = reg_1511;
assign c0_y_125_fu_1921_p1 = reg_1515;
assign c0_y_fu_2078_p1 = reg_1511;
assign grp_fu_1284_p_ce = 1'b1;
assign grp_fu_1284_p_din0 = grp_fu_1369_p0;
assign grp_fu_1284_p_din1 = grp_fu_1369_p1;
assign grp_fu_1284_p_opcode = 2'd0;
assign grp_fu_1288_p_ce = 1'b1;
assign grp_fu_1288_p_din0 = grp_fu_1373_p0;
assign grp_fu_1288_p_din1 = grp_fu_1373_p1;
assign grp_fu_1288_p_opcode = 2'd0;
assign grp_fu_1292_p_ce = 1'b1;
assign grp_fu_1292_p_din0 = grp_fu_1377_p0;
assign grp_fu_1292_p_din1 = grp_fu_1377_p1;
assign grp_fu_1292_p_opcode = grp_fu_1377_opcode;
assign grp_fu_1296_p_ce = 1'b1;
assign grp_fu_1296_p_din0 = grp_fu_1381_p0;
assign grp_fu_1296_p_din1 = grp_fu_1381_p1;
assign grp_fu_1296_p_opcode = 2'd1;
assign grp_fu_1300_p_ce = 1'b1;
assign grp_fu_1300_p_din0 = grp_fu_1385_p0;
assign grp_fu_1300_p_din1 = grp_fu_1385_p1;
assign grp_fu_1300_p_opcode = grp_fu_1385_opcode;
assign grp_fu_1304_p_ce = 1'b1;
assign grp_fu_1304_p_din0 = grp_fu_1389_p0;
assign grp_fu_1304_p_din1 = grp_fu_1389_p1;
assign grp_fu_1304_p_opcode = 2'd0;
assign grp_fu_1308_p_ce = 1'b1;
assign grp_fu_1308_p_din0 = grp_fu_1393_p0;
assign grp_fu_1308_p_din1 = grp_fu_1393_p1;
assign grp_fu_1308_p_opcode = grp_fu_1393_opcode;
assign grp_fu_1312_p_ce = 1'b1;
assign grp_fu_1312_p_din0 = grp_fu_1397_p0;
assign grp_fu_1312_p_din1 = grp_fu_1397_p1;
assign grp_fu_1312_p_opcode = grp_fu_1397_opcode;
assign grp_fu_1316_p_ce = 1'b1;
assign grp_fu_1316_p_din0 = grp_fu_1401_p0;
assign grp_fu_1316_p_din1 = grp_fu_1401_p1;
assign grp_fu_1316_p_opcode = grp_fu_1401_opcode;
assign grp_fu_1320_p_ce = 1'b1;
assign grp_fu_1320_p_din0 = grp_fu_1405_p0;
assign grp_fu_1320_p_din1 = grp_fu_1405_p1;
assign grp_fu_1320_p_opcode = grp_fu_1405_opcode;
assign grp_fu_1324_p_ce = 1'b1;
assign grp_fu_1324_p_din0 = grp_fu_1409_p0;
assign grp_fu_1324_p_din1 = grp_fu_1409_p1;
assign grp_fu_1324_p_opcode = grp_fu_1409_opcode;
assign grp_fu_1328_p_ce = 1'b1;
assign grp_fu_1328_p_din0 = grp_fu_1413_p0;
assign grp_fu_1328_p_din1 = grp_fu_1413_p1;
assign grp_fu_1328_p_opcode = grp_fu_1413_opcode;
assign grp_fu_1332_p_ce = 1'b1;
assign grp_fu_1332_p_din0 = grp_fu_1417_p0;
assign grp_fu_1332_p_din1 = grp_fu_1417_p1;
assign grp_fu_1332_p_opcode = grp_fu_1417_opcode;
assign grp_fu_1336_p_ce = 1'b1;
assign grp_fu_1336_p_din0 = grp_fu_1421_p0;
assign grp_fu_1336_p_din1 = grp_fu_1421_p1;
assign grp_fu_1336_p_opcode = grp_fu_1421_opcode;
assign grp_fu_1340_p_ce = 1'b1;
assign grp_fu_1340_p_din0 = grp_fu_1425_p0;
assign grp_fu_1340_p_din1 = grp_fu_1425_p1;
assign grp_fu_1340_p_opcode = 2'd1;
assign grp_fu_1344_p_ce = 1'b1;
assign grp_fu_1344_p_din0 = grp_fu_1429_p0;
assign grp_fu_1344_p_din1 = grp_fu_1429_p1;
assign grp_fu_1348_p_ce = 1'b1;
assign grp_fu_1348_p_din0 = grp_fu_1434_p0;
assign grp_fu_1348_p_din1 = grp_fu_1434_p1;
assign grp_fu_1352_p_ce = 1'b1;
assign grp_fu_1352_p_din0 = grp_fu_1441_p0;
assign grp_fu_1352_p_din1 = grp_fu_1441_p1;
assign grp_twiddles8_fu_1356_p_ce = grp_twiddles8_fu_1336_ap_ce;
assign grp_twiddles8_fu_1356_p_din1 = grp_twiddles8_fu_1336_a_x_1_read;
assign grp_twiddles8_fu_1356_p_din10 = grp_twiddles8_fu_1336_a_y_3_read;
assign grp_twiddles8_fu_1356_p_din11 = grp_twiddles8_fu_1336_a_y_4_read;
assign grp_twiddles8_fu_1356_p_din12 = grp_twiddles8_fu_1336_a_y_5_read;
assign grp_twiddles8_fu_1356_p_din13 = grp_twiddles8_fu_1336_a_y_6_read;
assign grp_twiddles8_fu_1356_p_din14 = grp_twiddles8_fu_1336_a_y_7_read;
assign grp_twiddles8_fu_1356_p_din15 = grp_twiddles8_fu_1336_i;
assign grp_twiddles8_fu_1356_p_din16 = 10'd512;
assign grp_twiddles8_fu_1356_p_din2 = grp_twiddles8_fu_1336_a_x_2_read;
assign grp_twiddles8_fu_1356_p_din3 = grp_twiddles8_fu_1336_a_x_3_read;
assign grp_twiddles8_fu_1356_p_din4 = grp_twiddles8_fu_1336_a_x_4_read;
assign grp_twiddles8_fu_1356_p_din5 = grp_twiddles8_fu_1336_a_x_5_read;
assign grp_twiddles8_fu_1356_p_din6 = grp_twiddles8_fu_1336_a_x_6_read;
assign grp_twiddles8_fu_1356_p_din7 = grp_twiddles8_fu_1336_a_x_7_read;
assign grp_twiddles8_fu_1356_p_din8 = grp_twiddles8_fu_1336_a_y_1_read;
assign grp_twiddles8_fu_1356_p_din9 = grp_twiddles8_fu_1336_a_y_2_read;
assign icmp_ln154_fu_1703_p2 = ((trunc_ln127_fu_1671_p1 == 2'd0) ? 1'b1 : 1'b0);
assign or_ln2_fu_1999_p3 = {{tmp_s_fu_1990_p4}, {1'd1}};
assign sext_ln132_fu_1693_p1 = zext_ln130_cast_fu_1679_p3;
assign sext_ln135_1_fu_1899_p1 = zext_ln131_1_cast_fu_1871_p4;
assign sext_ln135_fu_1846_p1 = zext_ln131_cast_fu_1833_p3;
assign sext_ln136_1_fu_1823_p1 = $signed(add_ln136_fu_1818_p2);
assign sext_ln136_fu_1724_p1 = zext_ln130_cast_reg_2842;
assign tmp_28_fu_1663_p3 = ap_sig_allocacmp_tid_7[32'd6];
assign tmp_92_fu_1862_p4 = {{tid_7_reg_2820[6:1]}};
assign tmp_s_fu_1990_p4 = {{tid_7_reg_2820[5:1]}};
assign trunc_ln127_1_fu_1675_p1 = ap_sig_allocacmp_tid_7[5:0];
assign trunc_ln127_fu_1671_p1 = ap_sig_allocacmp_tid_7[1:0];
assign trunc_ln148_10_fu_2271_p1 = bitcast_ln148_20_fu_2254_p1[62:0];
assign trunc_ln148_11_fu_2305_p1 = bitcast_ln148_22_fu_2288_p1[62:0];
assign trunc_ln148_12_fu_2479_p1 = bitcast_ln148_24_fu_2462_p1[62:0];
assign trunc_ln148_13_fu_2513_p1 = bitcast_ln148_26_fu_2496_p1[62:0];
assign trunc_ln148_14_fu_2340_p1 = bitcast_ln148_28_fu_2322_p1[62:0];
assign trunc_ln148_15_fu_2376_p1 = bitcast_ln148_30_fu_2358_p1[62:0];
assign trunc_ln148_16_fu_2615_p1 = bitcast_ln148_32_fu_2598_p1[62:0];
assign trunc_ln148_17_fu_2649_p1 = bitcast_ln148_34_fu_2632_p1[62:0];
assign trunc_ln148_18_fu_2762_p1 = bitcast_ln148_36_fu_2745_p1[62:0];
assign trunc_ln148_19_fu_2796_p1 = bitcast_ln148_38_fu_2779_p1[62:0];
assign trunc_ln148_1_fu_2165_p1 = bitcast_ln148_2_fu_2148_p1[62:0];
assign trunc_ln148_2_fu_2411_p1 = bitcast_ln148_4_fu_2394_p1[62:0];
assign trunc_ln148_3_fu_2445_p1 = bitcast_ln148_6_fu_2428_p1[62:0];
assign trunc_ln148_4_fu_2200_p1 = bitcast_ln148_8_fu_2182_p1[62:0];
assign trunc_ln148_5_fu_2236_p1 = bitcast_ln148_10_fu_2218_p1[62:0];
assign trunc_ln148_6_fu_2547_p1 = bitcast_ln148_12_fu_2530_p1[62:0];
assign trunc_ln148_7_fu_2581_p1 = bitcast_ln148_14_fu_2564_p1[62:0];
assign trunc_ln148_8_fu_2694_p1 = bitcast_ln148_16_fu_2677_p1[62:0];
assign trunc_ln148_9_fu_2728_p1 = bitcast_ln148_18_fu_2711_p1[62:0];
assign trunc_ln148_fu_2131_p1 = bitcast_ln148_fu_2114_p1[62:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign xor_ln148_10_fu_2309_p3 = {{xor_ln148_29_fu_2299_p2}, {trunc_ln148_11_fu_2305_p1}};
assign xor_ln148_11_fu_2483_p3 = {{xor_ln148_30_fu_2473_p2}, {trunc_ln148_12_fu_2479_p1}};
assign xor_ln148_12_fu_2517_p3 = {{xor_ln148_31_fu_2507_p2}, {trunc_ln148_13_fu_2513_p1}};
assign xor_ln148_13_fu_2344_p3 = {{xor_ln148_32_fu_2334_p2}, {trunc_ln148_14_fu_2340_p1}};
assign xor_ln148_14_fu_2380_p3 = {{xor_ln148_33_fu_2370_p2}, {trunc_ln148_15_fu_2376_p1}};
assign xor_ln148_15_fu_2619_p3 = {{xor_ln148_34_fu_2609_p2}, {trunc_ln148_16_fu_2615_p1}};
assign xor_ln148_16_fu_2653_p3 = {{xor_ln148_35_fu_2643_p2}, {trunc_ln148_17_fu_2649_p1}};
assign xor_ln148_17_fu_2766_p3 = {{xor_ln148_36_fu_2756_p2}, {trunc_ln148_18_fu_2762_p1}};
assign xor_ln148_18_fu_2800_p3 = {{xor_ln148_37_fu_2790_p2}, {trunc_ln148_19_fu_2796_p1}};
assign xor_ln148_19_fu_2125_p2 = (bit_sel2_fu_2117_p3 ^ 1'd1);
assign xor_ln148_1_fu_2169_p3 = {{xor_ln148_fu_2159_p2}, {trunc_ln148_1_fu_2165_p1}};
assign xor_ln148_20_fu_2405_p2 = (bit_sel5_fu_2397_p3 ^ 1'd1);
assign xor_ln148_21_fu_2439_p2 = (bit_sel6_fu_2431_p3 ^ 1'd1);
assign xor_ln148_22_fu_2194_p2 = (bit_sel8_fu_2186_p3 ^ 1'd1);
assign xor_ln148_23_fu_2230_p2 = (bit_sel9_fu_2222_p3 ^ 1'd1);
assign xor_ln148_24_fu_2541_p2 = (bit_sel11_fu_2533_p3 ^ 1'd1);
assign xor_ln148_25_fu_2575_p2 = (bit_sel12_fu_2567_p3 ^ 1'd1);
assign xor_ln148_26_fu_2688_p2 = (bit_sel14_fu_2680_p3 ^ 1'd1);
assign xor_ln148_27_fu_2722_p2 = (bit_sel15_fu_2714_p3 ^ 1'd1);
assign xor_ln148_28_fu_2265_p2 = (bit_sel17_fu_2257_p3 ^ 1'd1);
assign xor_ln148_29_fu_2299_p2 = (bit_sel18_fu_2291_p3 ^ 1'd1);
assign xor_ln148_2_fu_2415_p3 = {{xor_ln148_20_fu_2405_p2}, {trunc_ln148_2_fu_2411_p1}};
assign xor_ln148_30_fu_2473_p2 = (bit_sel19_fu_2465_p3 ^ 1'd1);
assign xor_ln148_31_fu_2507_p2 = (bit_sel16_fu_2499_p3 ^ 1'd1);
assign xor_ln148_32_fu_2334_p2 = (bit_sel13_fu_2326_p3 ^ 1'd1);
assign xor_ln148_33_fu_2370_p2 = (bit_sel10_fu_2362_p3 ^ 1'd1);
assign xor_ln148_34_fu_2609_p2 = (bit_sel7_fu_2601_p3 ^ 1'd1);
assign xor_ln148_35_fu_2643_p2 = (bit_sel4_fu_2635_p3 ^ 1'd1);
assign xor_ln148_36_fu_2756_p2 = (bit_sel1_fu_2748_p3 ^ 1'd1);
assign xor_ln148_37_fu_2790_p2 = (bit_sel_fu_2782_p3 ^ 1'd1);
assign xor_ln148_3_fu_2449_p3 = {{xor_ln148_21_fu_2439_p2}, {trunc_ln148_3_fu_2445_p1}};
assign xor_ln148_4_fu_2204_p3 = {{xor_ln148_22_fu_2194_p2}, {trunc_ln148_4_fu_2200_p1}};
assign xor_ln148_5_fu_2240_p3 = {{xor_ln148_23_fu_2230_p2}, {trunc_ln148_5_fu_2236_p1}};
assign xor_ln148_6_fu_2551_p3 = {{xor_ln148_24_fu_2541_p2}, {trunc_ln148_6_fu_2547_p1}};
assign xor_ln148_7_fu_2585_p3 = {{xor_ln148_25_fu_2575_p2}, {trunc_ln148_7_fu_2581_p1}};
assign xor_ln148_8_fu_2698_p3 = {{xor_ln148_26_fu_2688_p2}, {trunc_ln148_8_fu_2694_p1}};
assign xor_ln148_9_fu_2732_p3 = {{xor_ln148_27_fu_2722_p2}, {trunc_ln148_9_fu_2728_p1}};
assign xor_ln148_fu_2159_p2 = (bit_sel3_fu_2151_p3 ^ 1'd1);
assign xor_ln148_s_fu_2275_p3 = {{xor_ln148_28_fu_2265_p2}, {trunc_ln148_10_fu_2271_p1}};
assign xor_ln1_fu_2135_p3 = {{xor_ln148_19_fu_2125_p2}, {trunc_ln148_fu_2131_p1}};
assign zext_ln127_1_fu_1709_p1 = tid_7_reg_2820;
assign zext_ln127_2_fu_1733_p1 = tid_7_reg_2820;
assign zext_ln127_fu_1939_p1 = tid_7_reg_2820;
assign zext_ln129_fu_2007_p1 = or_ln2_fu_1999_p3;
assign zext_ln130_1_fu_1742_p1 = add_ln130_fu_1736_p2;
assign zext_ln130_cast_fu_1679_p3 = {{1'd1}, {trunc_ln127_1_fu_1675_p1}};
assign zext_ln130_fu_1687_p1 = $unsigned(zext_ln130_cast_fu_1679_p3);
assign zext_ln131_1_cast_fu_1871_p4 = {{{{1'd1}, {tmp_92_fu_1862_p4}}}, {1'd1}};
assign zext_ln131_1_fu_1881_p1 = $unsigned(zext_ln131_1_cast_fu_1871_p4);
assign zext_ln131_cast_fu_1833_p3 = {{1'd1}, {tid_7_reg_2820}};
assign zext_ln131_fu_1840_p1 = $unsigned(zext_ln131_cast_fu_1833_p3);
assign zext_ln132_1_fu_1753_p1 = add_ln132_fu_1748_p2;
assign zext_ln132_fu_1697_p1 = $unsigned(sext_ln132_fu_1693_p1);
assign zext_ln133_1_cast_fu_2022_p4 = {{{{1'd1}, {zext_ln133_1_fu_2019_p1}}}, {1'd1}};
assign zext_ln133_1_fu_2019_p1 = tmp_92_reg_3016;
assign zext_ln133_2_fu_2032_p1 = zext_ln133_1_cast_fu_2022_p4;
assign zext_ln133_cast_fu_1950_p3 = {{1'd1}, {zext_ln127_2_reg_2897}};
assign zext_ln133_fu_1957_p1 = zext_ln133_cast_fu_1950_p3;
assign zext_ln134_1_fu_1812_p1 = add_ln134_1_fu_1807_p2;
assign zext_ln134_fu_1718_p1 = add_ln134_fu_1712_p2;
assign zext_ln135_1_fu_1903_p1 = $unsigned(sext_ln135_1_fu_1899_p1);
assign zext_ln135_fu_1850_p1 = $unsigned(sext_ln135_fu_1846_p1);
assign zext_ln136_1_fu_1827_p1 = $unsigned(sext_ln136_1_fu_1823_p1);
assign zext_ln136_fu_1727_p1 = $unsigned(sext_ln136_fu_1724_p1);
assign zext_ln154_fu_2666_p1 = lshr_ln_reg_3127_pp0_iter3_reg;
always @ (posedge ap_clk) begin
    zext_ln130_cast_reg_2842[6] <= 1'b1;
    zext_ln127_1_reg_2871[8:7] <= 2'b00;
    zext_ln127_2_reg_2897[7] <= 1'b0;
    or_ln2_reg_3132[0] <= 1'b1;
    or_ln2_reg_3132_pp0_iter1_reg[0] <= 1'b1;
    or_ln2_reg_3132_pp0_iter2_reg[0] <= 1'b1;
    or_ln2_reg_3132_pp0_iter3_reg[0] <= 1'b1;
    or_ln2_reg_3132_pp0_iter4_reg[0] <= 1'b1;
    or_ln2_reg_3132_pp0_iter5_reg[0] <= 1'b1;
    or_ln2_reg_3132_pp0_iter6_reg[0] <= 1'b1;
    or_ln2_reg_3132_pp0_iter7_reg[0] <= 1'b1;
    zext_ln154_reg_3791[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter5_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter6_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter7_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter8_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter9_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter10_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter11_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter12_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter13_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter14_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter15_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter16_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter17_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter18_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter19_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter20_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter21_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter22_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln154_reg_3791_pp0_iter23_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
