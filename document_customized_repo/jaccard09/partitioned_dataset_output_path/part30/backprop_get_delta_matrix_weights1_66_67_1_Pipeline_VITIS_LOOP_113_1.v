
module backprop_get_delta_matrix_weights1_66_67_1_Pipeline_VITIS_LOOP_113_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_15_address0,delta_weights1_15_ce0,delta_weights1_15_we0,delta_weights1_15_d0,delta_weights1_15_address1,delta_weights1_15_ce1,delta_weights1_15_we1,delta_weights1_15_d1,delta_weights1_14_address0,delta_weights1_14_ce0,delta_weights1_14_we0,delta_weights1_14_d0,delta_weights1_14_address1,delta_weights1_14_ce1,delta_weights1_14_we1,delta_weights1_14_d1,delta_weights1_13_address0,delta_weights1_13_ce0,delta_weights1_13_we0,delta_weights1_13_d0,delta_weights1_13_address1,delta_weights1_13_ce1,delta_weights1_13_we1,delta_weights1_13_d1,delta_weights1_12_address0,delta_weights1_12_ce0,delta_weights1_12_we0,delta_weights1_12_d0,delta_weights1_12_address1,delta_weights1_12_ce1,delta_weights1_12_we1,delta_weights1_12_d1,delta_weights1_11_address0,delta_weights1_11_ce0,delta_weights1_11_we0,delta_weights1_11_d0,delta_weights1_11_address1,delta_weights1_11_ce1,delta_weights1_11_we1,delta_weights1_11_d1,delta_weights1_10_address0,delta_weights1_10_ce0,delta_weights1_10_we0,delta_weights1_10_d0,delta_weights1_10_address1,delta_weights1_10_ce1,delta_weights1_10_we1,delta_weights1_10_d1,delta_weights1_9_address0,delta_weights1_9_ce0,delta_weights1_9_we0,delta_weights1_9_d0,delta_weights1_9_address1,delta_weights1_9_ce1,delta_weights1_9_we1,delta_weights1_9_d1,delta_weights1_8_address0,delta_weights1_8_ce0,delta_weights1_8_we0,delta_weights1_8_d0,delta_weights1_8_address1,delta_weights1_8_ce1,delta_weights1_8_we1,delta_weights1_8_d1,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_7_address1,delta_weights1_7_ce1,delta_weights1_7_we1,delta_weights1_7_d1,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_6_address1,delta_weights1_6_ce1,delta_weights1_6_we1,delta_weights1_6_d1,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_5_address1,delta_weights1_5_ce1,delta_weights1_5_we1,delta_weights1_5_d1,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_4_address1,delta_weights1_4_ce1,delta_weights1_4_we1,delta_weights1_4_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,idx,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,training_data_8_address0,training_data_8_ce0,training_data_8_q0,training_data_9_address0,training_data_9_ce0,training_data_9_q0,training_data_10_address0,training_data_10_ce0,training_data_10_q0,training_data_11_address0,training_data_11_ce0,training_data_11_q0,training_data_12_address0,training_data_12_ce0,training_data_12_q0,training_data_13_address0,training_data_13_ce0,training_data_13_q0,training_data_14_address0,training_data_14_ce0,training_data_14_q0,training_data_15_address0,training_data_15_ce0,training_data_15_q0,output_difference_0_load,output_difference_1_load,output_difference_2_load,output_difference_3_load,output_difference_4_load,output_difference_5_load,output_difference_6_load,output_difference_7_load,output_difference_8_load,output_difference_9_load,output_difference_10_load,output_difference_11_load,output_difference_12_load,output_difference_13_load,output_difference_14_load,output_difference_15_load,output_difference_0_load_4,output_difference_1_load_4,output_difference_2_load_4,output_difference_3_load_4,output_difference_4_load_4,output_difference_5_load_4,output_difference_6_load_4,output_difference_7_load_4,output_difference_8_load_4,output_difference_9_load_4,output_difference_10_load_4,output_difference_11_load_4,output_difference_12_load_4,output_difference_13_load_4,output_difference_14_load_4,output_difference_15_load_4,output_difference_0_load_5,output_difference_1_load_5,output_difference_2_load_5,output_difference_3_load_5,output_difference_4_load_5,output_difference_5_load_5,output_difference_6_load_5,output_difference_7_load_5,output_difference_8_load_5,output_difference_9_load_5,output_difference_10_load_5,output_difference_11_load_5,output_difference_12_load_5,output_difference_13_load_5,output_difference_14_load_5,output_difference_15_load_5,output_difference_0_load_6,output_difference_1_load_6,output_difference_2_load_6,output_difference_3_load_6,output_difference_4_load_6,output_difference_5_load_6,output_difference_6_load_6,output_difference_7_load_6,output_difference_8_load_6,output_difference_9_load_6,output_difference_10_load_6,output_difference_11_load_6,output_difference_12_load_6,output_difference_13_load_6,output_difference_14_load_6,output_difference_15_load_6,grp_fu_1625_p_din0,grp_fu_1625_p_din1,grp_fu_1625_p_dout0,grp_fu_1625_p_ce,grp_fu_1629_p_din0,grp_fu_1629_p_din1,grp_fu_1629_p_dout0,grp_fu_1629_p_ce,grp_fu_1633_p_din0,grp_fu_1633_p_din1,grp_fu_1633_p_dout0,grp_fu_1633_p_ce,grp_fu_1637_p_din0,grp_fu_1637_p_din1,grp_fu_1637_p_dout0,grp_fu_1637_p_ce,grp_fu_1641_p_din0,grp_fu_1641_p_din1,grp_fu_1641_p_dout0,grp_fu_1641_p_ce,grp_fu_1645_p_din0,grp_fu_1645_p_din1,grp_fu_1645_p_dout0,grp_fu_1645_p_ce,grp_fu_1649_p_din0,grp_fu_1649_p_din1,grp_fu_1649_p_dout0,grp_fu_1649_p_ce,grp_fu_1653_p_din0,grp_fu_1653_p_din1,grp_fu_1653_p_dout0,grp_fu_1653_p_ce,grp_fu_1657_p_din0,grp_fu_1657_p_din1,grp_fu_1657_p_dout0,grp_fu_1657_p_ce,grp_fu_1661_p_din0,grp_fu_1661_p_din1,grp_fu_1661_p_dout0,grp_fu_1661_p_ce,grp_fu_1665_p_din0,grp_fu_1665_p_din1,grp_fu_1665_p_dout0,grp_fu_1665_p_ce,grp_fu_1669_p_din0,grp_fu_1669_p_din1,grp_fu_1669_p_dout0,grp_fu_1669_p_ce,grp_fu_1673_p_din0,grp_fu_1673_p_din1,grp_fu_1673_p_dout0,grp_fu_1673_p_ce,grp_fu_1677_p_din0,grp_fu_1677_p_din1,grp_fu_1677_p_dout0,grp_fu_1677_p_ce,grp_fu_1681_p_din0,grp_fu_1681_p_din1,grp_fu_1681_p_dout0,grp_fu_1681_p_ce,grp_fu_1685_p_din0,grp_fu_1685_p_din1,grp_fu_1685_p_dout0,grp_fu_1685_p_ce,grp_fu_1689_p_din0,grp_fu_1689_p_din1,grp_fu_1689_p_dout0,grp_fu_1689_p_ce,grp_fu_1693_p_din0,grp_fu_1693_p_din1,grp_fu_1693_p_dout0,grp_fu_1693_p_ce,grp_fu_1697_p_din0,grp_fu_1697_p_din1,grp_fu_1697_p_dout0,grp_fu_1697_p_ce,grp_fu_1701_p_din0,grp_fu_1701_p_din1,grp_fu_1701_p_dout0,grp_fu_1701_p_ce,grp_fu_1705_p_din0,grp_fu_1705_p_din1,grp_fu_1705_p_dout0,grp_fu_1705_p_ce,grp_fu_1709_p_din0,grp_fu_1709_p_din1,grp_fu_1709_p_dout0,grp_fu_1709_p_ce,grp_fu_1713_p_din0,grp_fu_1713_p_din1,grp_fu_1713_p_dout0,grp_fu_1713_p_ce,grp_fu_1717_p_din0,grp_fu_1717_p_din1,grp_fu_1717_p_dout0,grp_fu_1717_p_ce,grp_fu_1721_p_din0,grp_fu_1721_p_din1,grp_fu_1721_p_dout0,grp_fu_1721_p_ce,grp_fu_1725_p_din0,grp_fu_1725_p_din1,grp_fu_1725_p_dout0,grp_fu_1725_p_ce,grp_fu_1729_p_din0,grp_fu_1729_p_din1,grp_fu_1729_p_dout0,grp_fu_1729_p_ce,grp_fu_1733_p_din0,grp_fu_1733_p_din1,grp_fu_1733_p_dout0,grp_fu_1733_p_ce,grp_fu_1737_p_din0,grp_fu_1737_p_din1,grp_fu_1737_p_dout0,grp_fu_1737_p_ce,grp_fu_1741_p_din0,grp_fu_1741_p_din1,grp_fu_1741_p_dout0,grp_fu_1741_p_ce,grp_fu_1745_p_din0,grp_fu_1745_p_din1,grp_fu_1745_p_dout0,grp_fu_1745_p_ce,grp_fu_1749_p_din0,grp_fu_1749_p_din1,grp_fu_1749_p_dout0,grp_fu_1749_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] delta_weights1_15_address0;
output   delta_weights1_15_ce0;
output   delta_weights1_15_we0;
output  [63:0] delta_weights1_15_d0;
output  [5:0] delta_weights1_15_address1;
output   delta_weights1_15_ce1;
output   delta_weights1_15_we1;
output  [63:0] delta_weights1_15_d1;
output  [5:0] delta_weights1_14_address0;
output   delta_weights1_14_ce0;
output   delta_weights1_14_we0;
output  [63:0] delta_weights1_14_d0;
output  [5:0] delta_weights1_14_address1;
output   delta_weights1_14_ce1;
output   delta_weights1_14_we1;
output  [63:0] delta_weights1_14_d1;
output  [5:0] delta_weights1_13_address0;
output   delta_weights1_13_ce0;
output   delta_weights1_13_we0;
output  [63:0] delta_weights1_13_d0;
output  [5:0] delta_weights1_13_address1;
output   delta_weights1_13_ce1;
output   delta_weights1_13_we1;
output  [63:0] delta_weights1_13_d1;
output  [5:0] delta_weights1_12_address0;
output   delta_weights1_12_ce0;
output   delta_weights1_12_we0;
output  [63:0] delta_weights1_12_d0;
output  [5:0] delta_weights1_12_address1;
output   delta_weights1_12_ce1;
output   delta_weights1_12_we1;
output  [63:0] delta_weights1_12_d1;
output  [5:0] delta_weights1_11_address0;
output   delta_weights1_11_ce0;
output   delta_weights1_11_we0;
output  [63:0] delta_weights1_11_d0;
output  [5:0] delta_weights1_11_address1;
output   delta_weights1_11_ce1;
output   delta_weights1_11_we1;
output  [63:0] delta_weights1_11_d1;
output  [5:0] delta_weights1_10_address0;
output   delta_weights1_10_ce0;
output   delta_weights1_10_we0;
output  [63:0] delta_weights1_10_d0;
output  [5:0] delta_weights1_10_address1;
output   delta_weights1_10_ce1;
output   delta_weights1_10_we1;
output  [63:0] delta_weights1_10_d1;
output  [5:0] delta_weights1_9_address0;
output   delta_weights1_9_ce0;
output   delta_weights1_9_we0;
output  [63:0] delta_weights1_9_d0;
output  [5:0] delta_weights1_9_address1;
output   delta_weights1_9_ce1;
output   delta_weights1_9_we1;
output  [63:0] delta_weights1_9_d1;
output  [5:0] delta_weights1_8_address0;
output   delta_weights1_8_ce0;
output   delta_weights1_8_we0;
output  [63:0] delta_weights1_8_d0;
output  [5:0] delta_weights1_8_address1;
output   delta_weights1_8_ce1;
output   delta_weights1_8_we1;
output  [63:0] delta_weights1_8_d1;
output  [5:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [5:0] delta_weights1_7_address1;
output   delta_weights1_7_ce1;
output   delta_weights1_7_we1;
output  [63:0] delta_weights1_7_d1;
output  [5:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [5:0] delta_weights1_6_address1;
output   delta_weights1_6_ce1;
output   delta_weights1_6_we1;
output  [63:0] delta_weights1_6_d1;
output  [5:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [5:0] delta_weights1_5_address1;
output   delta_weights1_5_ce1;
output   delta_weights1_5_we1;
output  [63:0] delta_weights1_5_d1;
output  [5:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [5:0] delta_weights1_4_address1;
output   delta_weights1_4_ce1;
output   delta_weights1_4_we1;
output  [63:0] delta_weights1_4_d1;
output  [5:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [5:0] delta_weights1_3_address1;
output   delta_weights1_3_ce1;
output   delta_weights1_3_we1;
output  [63:0] delta_weights1_3_d1;
output  [5:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [5:0] delta_weights1_2_address1;
output   delta_weights1_2_ce1;
output   delta_weights1_2_we1;
output  [63:0] delta_weights1_2_d1;
output  [5:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [5:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [5:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [5:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
input  [11:0] idx;
output  [7:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [7:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [7:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [7:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [7:0] training_data_4_address0;
output   training_data_4_ce0;
input  [63:0] training_data_4_q0;
output  [7:0] training_data_5_address0;
output   training_data_5_ce0;
input  [63:0] training_data_5_q0;
output  [7:0] training_data_6_address0;
output   training_data_6_ce0;
input  [63:0] training_data_6_q0;
output  [7:0] training_data_7_address0;
output   training_data_7_ce0;
input  [63:0] training_data_7_q0;
output  [7:0] training_data_8_address0;
output   training_data_8_ce0;
input  [63:0] training_data_8_q0;
output  [7:0] training_data_9_address0;
output   training_data_9_ce0;
input  [63:0] training_data_9_q0;
output  [7:0] training_data_10_address0;
output   training_data_10_ce0;
input  [63:0] training_data_10_q0;
output  [7:0] training_data_11_address0;
output   training_data_11_ce0;
input  [63:0] training_data_11_q0;
output  [7:0] training_data_12_address0;
output   training_data_12_ce0;
input  [63:0] training_data_12_q0;
output  [7:0] training_data_13_address0;
output   training_data_13_ce0;
input  [63:0] training_data_13_q0;
output  [7:0] training_data_14_address0;
output   training_data_14_ce0;
input  [63:0] training_data_14_q0;
output  [7:0] training_data_15_address0;
output   training_data_15_ce0;
input  [63:0] training_data_15_q0;
input  [63:0] output_difference_0_load;
input  [63:0] output_difference_1_load;
input  [63:0] output_difference_2_load;
input  [63:0] output_difference_3_load;
input  [63:0] output_difference_4_load;
input  [63:0] output_difference_5_load;
input  [63:0] output_difference_6_load;
input  [63:0] output_difference_7_load;
input  [63:0] output_difference_8_load;
input  [63:0] output_difference_9_load;
input  [63:0] output_difference_10_load;
input  [63:0] output_difference_11_load;
input  [63:0] output_difference_12_load;
input  [63:0] output_difference_13_load;
input  [63:0] output_difference_14_load;
input  [63:0] output_difference_15_load;
input  [63:0] output_difference_0_load_4;
input  [63:0] output_difference_1_load_4;
input  [63:0] output_difference_2_load_4;
input  [63:0] output_difference_3_load_4;
input  [63:0] output_difference_4_load_4;
input  [63:0] output_difference_5_load_4;
input  [63:0] output_difference_6_load_4;
input  [63:0] output_difference_7_load_4;
input  [63:0] output_difference_8_load_4;
input  [63:0] output_difference_9_load_4;
input  [63:0] output_difference_10_load_4;
input  [63:0] output_difference_11_load_4;
input  [63:0] output_difference_12_load_4;
input  [63:0] output_difference_13_load_4;
input  [63:0] output_difference_14_load_4;
input  [63:0] output_difference_15_load_4;
input  [63:0] output_difference_0_load_5;
input  [63:0] output_difference_1_load_5;
input  [63:0] output_difference_2_load_5;
input  [63:0] output_difference_3_load_5;
input  [63:0] output_difference_4_load_5;
input  [63:0] output_difference_5_load_5;
input  [63:0] output_difference_6_load_5;
input  [63:0] output_difference_7_load_5;
input  [63:0] output_difference_8_load_5;
input  [63:0] output_difference_9_load_5;
input  [63:0] output_difference_10_load_5;
input  [63:0] output_difference_11_load_5;
input  [63:0] output_difference_12_load_5;
input  [63:0] output_difference_13_load_5;
input  [63:0] output_difference_14_load_5;
input  [63:0] output_difference_15_load_5;
input  [63:0] output_difference_0_load_6;
input  [63:0] output_difference_1_load_6;
input  [63:0] output_difference_2_load_6;
input  [63:0] output_difference_3_load_6;
input  [63:0] output_difference_4_load_6;
input  [63:0] output_difference_5_load_6;
input  [63:0] output_difference_6_load_6;
input  [63:0] output_difference_7_load_6;
input  [63:0] output_difference_8_load_6;
input  [63:0] output_difference_9_load_6;
input  [63:0] output_difference_10_load_6;
input  [63:0] output_difference_11_load_6;
input  [63:0] output_difference_12_load_6;
input  [63:0] output_difference_13_load_6;
input  [63:0] output_difference_14_load_6;
input  [63:0] output_difference_15_load_6;
output  [63:0] grp_fu_1625_p_din0;
output  [63:0] grp_fu_1625_p_din1;
input  [63:0] grp_fu_1625_p_dout0;
output   grp_fu_1625_p_ce;
output  [63:0] grp_fu_1629_p_din0;
output  [63:0] grp_fu_1629_p_din1;
input  [63:0] grp_fu_1629_p_dout0;
output   grp_fu_1629_p_ce;
output  [63:0] grp_fu_1633_p_din0;
output  [63:0] grp_fu_1633_p_din1;
input  [63:0] grp_fu_1633_p_dout0;
output   grp_fu_1633_p_ce;
output  [63:0] grp_fu_1637_p_din0;
output  [63:0] grp_fu_1637_p_din1;
input  [63:0] grp_fu_1637_p_dout0;
output   grp_fu_1637_p_ce;
output  [63:0] grp_fu_1641_p_din0;
output  [63:0] grp_fu_1641_p_din1;
input  [63:0] grp_fu_1641_p_dout0;
output   grp_fu_1641_p_ce;
output  [63:0] grp_fu_1645_p_din0;
output  [63:0] grp_fu_1645_p_din1;
input  [63:0] grp_fu_1645_p_dout0;
output   grp_fu_1645_p_ce;
output  [63:0] grp_fu_1649_p_din0;
output  [63:0] grp_fu_1649_p_din1;
input  [63:0] grp_fu_1649_p_dout0;
output   grp_fu_1649_p_ce;
output  [63:0] grp_fu_1653_p_din0;
output  [63:0] grp_fu_1653_p_din1;
input  [63:0] grp_fu_1653_p_dout0;
output   grp_fu_1653_p_ce;
output  [63:0] grp_fu_1657_p_din0;
output  [63:0] grp_fu_1657_p_din1;
input  [63:0] grp_fu_1657_p_dout0;
output   grp_fu_1657_p_ce;
output  [63:0] grp_fu_1661_p_din0;
output  [63:0] grp_fu_1661_p_din1;
input  [63:0] grp_fu_1661_p_dout0;
output   grp_fu_1661_p_ce;
output  [63:0] grp_fu_1665_p_din0;
output  [63:0] grp_fu_1665_p_din1;
input  [63:0] grp_fu_1665_p_dout0;
output   grp_fu_1665_p_ce;
output  [63:0] grp_fu_1669_p_din0;
output  [63:0] grp_fu_1669_p_din1;
input  [63:0] grp_fu_1669_p_dout0;
output   grp_fu_1669_p_ce;
output  [63:0] grp_fu_1673_p_din0;
output  [63:0] grp_fu_1673_p_din1;
input  [63:0] grp_fu_1673_p_dout0;
output   grp_fu_1673_p_ce;
output  [63:0] grp_fu_1677_p_din0;
output  [63:0] grp_fu_1677_p_din1;
input  [63:0] grp_fu_1677_p_dout0;
output   grp_fu_1677_p_ce;
output  [63:0] grp_fu_1681_p_din0;
output  [63:0] grp_fu_1681_p_din1;
input  [63:0] grp_fu_1681_p_dout0;
output   grp_fu_1681_p_ce;
output  [63:0] grp_fu_1685_p_din0;
output  [63:0] grp_fu_1685_p_din1;
input  [63:0] grp_fu_1685_p_dout0;
output   grp_fu_1685_p_ce;
output  [63:0] grp_fu_1689_p_din0;
output  [63:0] grp_fu_1689_p_din1;
input  [63:0] grp_fu_1689_p_dout0;
output   grp_fu_1689_p_ce;
output  [63:0] grp_fu_1693_p_din0;
output  [63:0] grp_fu_1693_p_din1;
input  [63:0] grp_fu_1693_p_dout0;
output   grp_fu_1693_p_ce;
output  [63:0] grp_fu_1697_p_din0;
output  [63:0] grp_fu_1697_p_din1;
input  [63:0] grp_fu_1697_p_dout0;
output   grp_fu_1697_p_ce;
output  [63:0] grp_fu_1701_p_din0;
output  [63:0] grp_fu_1701_p_din1;
input  [63:0] grp_fu_1701_p_dout0;
output   grp_fu_1701_p_ce;
output  [63:0] grp_fu_1705_p_din0;
output  [63:0] grp_fu_1705_p_din1;
input  [63:0] grp_fu_1705_p_dout0;
output   grp_fu_1705_p_ce;
output  [63:0] grp_fu_1709_p_din0;
output  [63:0] grp_fu_1709_p_din1;
input  [63:0] grp_fu_1709_p_dout0;
output   grp_fu_1709_p_ce;
output  [63:0] grp_fu_1713_p_din0;
output  [63:0] grp_fu_1713_p_din1;
input  [63:0] grp_fu_1713_p_dout0;
output   grp_fu_1713_p_ce;
output  [63:0] grp_fu_1717_p_din0;
output  [63:0] grp_fu_1717_p_din1;
input  [63:0] grp_fu_1717_p_dout0;
output   grp_fu_1717_p_ce;
output  [63:0] grp_fu_1721_p_din0;
output  [63:0] grp_fu_1721_p_din1;
input  [63:0] grp_fu_1721_p_dout0;
output   grp_fu_1721_p_ce;
output  [63:0] grp_fu_1725_p_din0;
output  [63:0] grp_fu_1725_p_din1;
input  [63:0] grp_fu_1725_p_dout0;
output   grp_fu_1725_p_ce;
output  [63:0] grp_fu_1729_p_din0;
output  [63:0] grp_fu_1729_p_din1;
input  [63:0] grp_fu_1729_p_dout0;
output   grp_fu_1729_p_ce;
output  [63:0] grp_fu_1733_p_din0;
output  [63:0] grp_fu_1733_p_din1;
input  [63:0] grp_fu_1733_p_dout0;
output   grp_fu_1733_p_ce;
output  [63:0] grp_fu_1737_p_din0;
output  [63:0] grp_fu_1737_p_din1;
input  [63:0] grp_fu_1737_p_dout0;
output   grp_fu_1737_p_ce;
output  [63:0] grp_fu_1741_p_din0;
output  [63:0] grp_fu_1741_p_din1;
input  [63:0] grp_fu_1741_p_dout0;
output   grp_fu_1741_p_ce;
output  [63:0] grp_fu_1745_p_din0;
output  [63:0] grp_fu_1745_p_din1;
input  [63:0] grp_fu_1745_p_dout0;
output   grp_fu_1745_p_ce;
output  [63:0] grp_fu_1749_p_din0;
output  [63:0] grp_fu_1749_p_din1;
input  [63:0] grp_fu_1749_p_dout0;
output   grp_fu_1749_p_ce;
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
reg   [0:0] icmp_ln113_reg_2467;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1660;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_1665;
reg   [63:0] reg_1670;
reg   [63:0] reg_1675;
reg   [63:0] reg_1680;
reg   [63:0] reg_1685;
reg   [63:0] reg_1690;
reg   [63:0] reg_1695;
reg   [63:0] reg_1700;
reg   [63:0] reg_1705;
reg   [63:0] reg_1710;
reg   [63:0] reg_1715;
reg   [63:0] reg_1720;
reg   [63:0] reg_1725;
reg   [63:0] reg_1730;
reg   [63:0] reg_1735;
reg   [63:0] reg_1740;
reg   [63:0] reg_1745;
reg   [63:0] reg_1750;
reg   [63:0] reg_1755;
reg   [63:0] reg_1760;
reg   [63:0] reg_1765;
reg   [63:0] reg_1770;
reg   [63:0] reg_1775;
reg   [63:0] reg_1780;
reg   [63:0] reg_1785;
reg   [63:0] reg_1790;
reg   [63:0] reg_1795;
reg   [63:0] reg_1800;
reg   [63:0] reg_1805;
reg   [63:0] reg_1810;
reg   [63:0] reg_1815;
reg   [3:0] i_13_reg_2458;
reg   [3:0] i_13_reg_2458_pp0_iter1_reg;
reg   [3:0] i_13_reg_2458_pp0_iter2_reg;
reg   [3:0] i_13_reg_2458_pp0_iter3_reg;
reg   [3:0] i_13_reg_2458_pp0_iter4_reg;
wire   [0:0] icmp_ln113_fu_1828_p2;
reg   [0:0] icmp_ln113_reg_2467_pp0_iter1_reg;
reg   [0:0] icmp_ln113_reg_2467_pp0_iter2_reg;
reg   [0:0] icmp_ln113_reg_2467_pp0_iter3_reg;
wire   [3:0] empty_fu_1844_p1;
reg   [3:0] empty_reg_2471;
wire   [63:0] tmp_fu_1947_p35;
reg   [63:0] tmp_reg_2556;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] p_cast_fu_1858_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln115_fu_2030_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln115_1_fu_2057_p1;
wire   [63:0] zext_ln115_2_fu_2084_p1;
wire   [63:0] zext_ln115_3_fu_2111_p1;
reg   [3:0] i_fu_274;
wire   [3:0] add_ln113_fu_1878_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_i_13;
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
reg    delta_weights1_0_we1_local;
reg    delta_weights1_0_ce1_local;
reg   [5:0] delta_weights1_0_address1_local;
reg    delta_weights1_0_we0_local;
reg    delta_weights1_0_ce0_local;
reg   [5:0] delta_weights1_0_address0_local;
reg    delta_weights1_1_we1_local;
reg    delta_weights1_1_ce1_local;
reg   [5:0] delta_weights1_1_address1_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
reg   [5:0] delta_weights1_1_address0_local;
reg    delta_weights1_2_we1_local;
reg    delta_weights1_2_ce1_local;
reg   [5:0] delta_weights1_2_address1_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg   [5:0] delta_weights1_2_address0_local;
reg    delta_weights1_3_we1_local;
reg    delta_weights1_3_ce1_local;
reg   [5:0] delta_weights1_3_address1_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
reg   [5:0] delta_weights1_3_address0_local;
reg    delta_weights1_4_we1_local;
reg    delta_weights1_4_ce1_local;
reg   [5:0] delta_weights1_4_address1_local;
reg    delta_weights1_4_we0_local;
reg    delta_weights1_4_ce0_local;
reg   [5:0] delta_weights1_4_address0_local;
reg    delta_weights1_5_we1_local;
reg    delta_weights1_5_ce1_local;
reg   [5:0] delta_weights1_5_address1_local;
reg    delta_weights1_5_we0_local;
reg    delta_weights1_5_ce0_local;
reg   [5:0] delta_weights1_5_address0_local;
reg    delta_weights1_6_we1_local;
reg    delta_weights1_6_ce1_local;
reg   [5:0] delta_weights1_6_address1_local;
reg    delta_weights1_6_we0_local;
reg    delta_weights1_6_ce0_local;
reg   [5:0] delta_weights1_6_address0_local;
reg    delta_weights1_7_we1_local;
reg    delta_weights1_7_ce1_local;
reg   [5:0] delta_weights1_7_address1_local;
reg    delta_weights1_7_we0_local;
reg    delta_weights1_7_ce0_local;
reg   [5:0] delta_weights1_7_address0_local;
reg    delta_weights1_8_we1_local;
reg    delta_weights1_8_ce1_local;
reg   [5:0] delta_weights1_8_address1_local;
reg    delta_weights1_8_we0_local;
reg    delta_weights1_8_ce0_local;
reg   [5:0] delta_weights1_8_address0_local;
reg    delta_weights1_9_we1_local;
reg    delta_weights1_9_ce1_local;
reg   [5:0] delta_weights1_9_address1_local;
reg    delta_weights1_9_we0_local;
reg    delta_weights1_9_ce0_local;
reg   [5:0] delta_weights1_9_address0_local;
reg    delta_weights1_10_we1_local;
reg    delta_weights1_10_ce1_local;
reg   [5:0] delta_weights1_10_address1_local;
reg    delta_weights1_10_we0_local;
reg    delta_weights1_10_ce0_local;
reg   [5:0] delta_weights1_10_address0_local;
reg    delta_weights1_11_we1_local;
reg    delta_weights1_11_ce1_local;
reg   [5:0] delta_weights1_11_address1_local;
reg    delta_weights1_11_we0_local;
reg    delta_weights1_11_ce0_local;
reg   [5:0] delta_weights1_11_address0_local;
reg    delta_weights1_12_we1_local;
reg    delta_weights1_12_ce1_local;
reg   [5:0] delta_weights1_12_address1_local;
reg    delta_weights1_12_we0_local;
reg    delta_weights1_12_ce0_local;
reg   [5:0] delta_weights1_12_address0_local;
reg    delta_weights1_13_we1_local;
reg    delta_weights1_13_ce1_local;
reg   [5:0] delta_weights1_13_address1_local;
reg    delta_weights1_13_we0_local;
reg    delta_weights1_13_ce0_local;
reg   [5:0] delta_weights1_13_address0_local;
reg    delta_weights1_14_we1_local;
reg    delta_weights1_14_ce1_local;
reg   [5:0] delta_weights1_14_address1_local;
reg    delta_weights1_14_we0_local;
reg    delta_weights1_14_ce0_local;
reg   [5:0] delta_weights1_14_address0_local;
reg    delta_weights1_15_we1_local;
reg    delta_weights1_15_ce1_local;
reg   [5:0] delta_weights1_15_address1_local;
reg    delta_weights1_15_we0_local;
reg    delta_weights1_15_ce0_local;
reg   [5:0] delta_weights1_15_address0_local;
reg   [63:0] grp_fu_1532_p1;
reg   [63:0] grp_fu_1536_p1;
reg   [63:0] grp_fu_1540_p1;
reg   [63:0] grp_fu_1544_p1;
reg   [63:0] grp_fu_1548_p1;
reg   [63:0] grp_fu_1552_p1;
reg   [63:0] grp_fu_1556_p1;
reg   [63:0] grp_fu_1560_p1;
reg   [63:0] grp_fu_1564_p1;
reg   [63:0] grp_fu_1568_p1;
reg   [63:0] grp_fu_1572_p1;
reg   [63:0] grp_fu_1576_p1;
reg   [63:0] grp_fu_1580_p1;
reg   [63:0] grp_fu_1584_p1;
reg   [63:0] grp_fu_1588_p1;
reg   [63:0] grp_fu_1592_p1;
reg   [63:0] grp_fu_1596_p1;
reg   [63:0] grp_fu_1600_p1;
reg   [63:0] grp_fu_1604_p1;
reg   [63:0] grp_fu_1608_p1;
reg   [63:0] grp_fu_1612_p1;
reg   [63:0] grp_fu_1616_p1;
reg   [63:0] grp_fu_1620_p1;
reg   [63:0] grp_fu_1624_p1;
reg   [63:0] grp_fu_1628_p1;
reg   [63:0] grp_fu_1632_p1;
reg   [63:0] grp_fu_1636_p1;
reg   [63:0] grp_fu_1640_p1;
reg   [63:0] grp_fu_1644_p1;
reg   [63:0] grp_fu_1648_p1;
reg   [63:0] grp_fu_1652_p1;
reg   [63:0] grp_fu_1656_p1;
wire   [11:0] zext_ln113_fu_1834_p1;
wire   [11:0] p_sum_fu_1838_p2;
wire   [7:0] tmp_s_fu_1848_p4;
wire   [63:0] tmp_fu_1947_p2;
wire   [63:0] tmp_fu_1947_p4;
wire   [63:0] tmp_fu_1947_p6;
wire   [63:0] tmp_fu_1947_p8;
wire   [63:0] tmp_fu_1947_p10;
wire   [63:0] tmp_fu_1947_p12;
wire   [63:0] tmp_fu_1947_p14;
wire   [63:0] tmp_fu_1947_p16;
wire   [63:0] tmp_fu_1947_p18;
wire   [63:0] tmp_fu_1947_p20;
wire   [63:0] tmp_fu_1947_p22;
wire   [63:0] tmp_fu_1947_p24;
wire   [63:0] tmp_fu_1947_p26;
wire   [63:0] tmp_fu_1947_p28;
wire   [63:0] tmp_fu_1947_p30;
wire   [63:0] tmp_fu_1947_p32;
wire   [63:0] tmp_fu_1947_p33;
wire   [5:0] shl_ln_fu_2023_p3;
wire   [5:0] or_ln_fu_2050_p3;
wire   [5:0] or_ln115_1_fu_2077_p3;
wire   [5:0] or_ln115_2_fu_2104_p3;
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
wire   [3:0] tmp_fu_1947_p1;
wire   [3:0] tmp_fu_1947_p3;
wire   [3:0] tmp_fu_1947_p5;
wire   [3:0] tmp_fu_1947_p7;
wire   [3:0] tmp_fu_1947_p9;
wire   [3:0] tmp_fu_1947_p11;
wire   [3:0] tmp_fu_1947_p13;
wire   [3:0] tmp_fu_1947_p15;
wire  signed [3:0] tmp_fu_1947_p17;
wire  signed [3:0] tmp_fu_1947_p19;
wire  signed [3:0] tmp_fu_1947_p21;
wire  signed [3:0] tmp_fu_1947_p23;
wire  signed [3:0] tmp_fu_1947_p25;
wire  signed [3:0] tmp_fu_1947_p27;
wire  signed [3:0] tmp_fu_1947_p29;
wire  signed [3:0] tmp_fu_1947_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_274 = 4'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U1649(.din0(tmp_fu_1947_p2),.din1(tmp_fu_1947_p4),.din2(tmp_fu_1947_p6),.din3(tmp_fu_1947_p8),.din4(tmp_fu_1947_p10),.din5(tmp_fu_1947_p12),.din6(tmp_fu_1947_p14),.din7(tmp_fu_1947_p16),.din8(tmp_fu_1947_p18),.din9(tmp_fu_1947_p20),.din10(tmp_fu_1947_p22),.din11(tmp_fu_1947_p24),.din12(tmp_fu_1947_p26),.din13(tmp_fu_1947_p28),.din14(tmp_fu_1947_p30),.din15(tmp_fu_1947_p32),.def(tmp_fu_1947_p33),.sel(empty_reg_2471),.dout(tmp_fu_1947_p35));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_274 <= 4'd0;
    end else if (((icmp_ln113_reg_2467 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_274 <= add_ln113_fu_1878_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_2471 <= empty_fu_1844_p1;
        i_13_reg_2458 <= ap_sig_allocacmp_i_13;
        i_13_reg_2458_pp0_iter1_reg <= i_13_reg_2458;
        i_13_reg_2458_pp0_iter2_reg <= i_13_reg_2458_pp0_iter1_reg;
        i_13_reg_2458_pp0_iter3_reg <= i_13_reg_2458_pp0_iter2_reg;
        i_13_reg_2458_pp0_iter4_reg <= i_13_reg_2458_pp0_iter3_reg;
        icmp_ln113_reg_2467 <= icmp_ln113_fu_1828_p2;
        icmp_ln113_reg_2467_pp0_iter1_reg <= icmp_ln113_reg_2467;
        icmp_ln113_reg_2467_pp0_iter2_reg <= icmp_ln113_reg_2467_pp0_iter1_reg;
        icmp_ln113_reg_2467_pp0_iter3_reg <= icmp_ln113_reg_2467_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1660 <= grp_fu_1625_p_dout0;
        reg_1665 <= grp_fu_1629_p_dout0;
        reg_1670 <= grp_fu_1633_p_dout0;
        reg_1675 <= grp_fu_1637_p_dout0;
        reg_1680 <= grp_fu_1641_p_dout0;
        reg_1685 <= grp_fu_1645_p_dout0;
        reg_1690 <= grp_fu_1649_p_dout0;
        reg_1695 <= grp_fu_1653_p_dout0;
        reg_1700 <= grp_fu_1657_p_dout0;
        reg_1705 <= grp_fu_1661_p_dout0;
        reg_1710 <= grp_fu_1665_p_dout0;
        reg_1715 <= grp_fu_1669_p_dout0;
        reg_1720 <= grp_fu_1673_p_dout0;
        reg_1725 <= grp_fu_1677_p_dout0;
        reg_1730 <= grp_fu_1681_p_dout0;
        reg_1735 <= grp_fu_1685_p_dout0;
        reg_1740 <= grp_fu_1689_p_dout0;
        reg_1745 <= grp_fu_1693_p_dout0;
        reg_1750 <= grp_fu_1697_p_dout0;
        reg_1755 <= grp_fu_1701_p_dout0;
        reg_1760 <= grp_fu_1705_p_dout0;
        reg_1765 <= grp_fu_1709_p_dout0;
        reg_1770 <= grp_fu_1713_p_dout0;
        reg_1775 <= grp_fu_1717_p_dout0;
        reg_1780 <= grp_fu_1721_p_dout0;
        reg_1785 <= grp_fu_1725_p_dout0;
        reg_1790 <= grp_fu_1729_p_dout0;
        reg_1795 <= grp_fu_1733_p_dout0;
        reg_1800 <= grp_fu_1737_p_dout0;
        reg_1805 <= grp_fu_1741_p_dout0;
        reg_1810 <= grp_fu_1745_p_dout0;
        reg_1815 <= grp_fu_1749_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_reg_2556 <= tmp_fu_1947_p35;
    end
end
always @ (*) begin
    if (((icmp_ln113_reg_2467 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln113_reg_2467_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        ap_sig_allocacmp_i_13 = 4'd0;
    end else begin
        ap_sig_allocacmp_i_13 = i_fu_274;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_0_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_0_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_0_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_0_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_0_ce0_local = 1'b1;
    end else begin
        delta_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_0_ce1_local = 1'b1;
    end else begin
        delta_weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_0_we0_local = 1'b1;
    end else begin
        delta_weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_0_we1_local = 1'b1;
    end else begin
        delta_weights1_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_10_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_10_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_10_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_10_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_10_ce0_local = 1'b1;
    end else begin
        delta_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_10_ce1_local = 1'b1;
    end else begin
        delta_weights1_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_10_we0_local = 1'b1;
    end else begin
        delta_weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_10_we1_local = 1'b1;
    end else begin
        delta_weights1_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_11_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_11_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_11_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_11_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_11_ce0_local = 1'b1;
    end else begin
        delta_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_11_ce1_local = 1'b1;
    end else begin
        delta_weights1_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_11_we0_local = 1'b1;
    end else begin
        delta_weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_11_we1_local = 1'b1;
    end else begin
        delta_weights1_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_12_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_12_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_12_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_12_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_12_ce0_local = 1'b1;
    end else begin
        delta_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_12_ce1_local = 1'b1;
    end else begin
        delta_weights1_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_12_we0_local = 1'b1;
    end else begin
        delta_weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_12_we1_local = 1'b1;
    end else begin
        delta_weights1_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_13_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_13_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_13_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_13_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_13_ce0_local = 1'b1;
    end else begin
        delta_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_13_ce1_local = 1'b1;
    end else begin
        delta_weights1_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_13_we0_local = 1'b1;
    end else begin
        delta_weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_13_we1_local = 1'b1;
    end else begin
        delta_weights1_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_14_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_14_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_14_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_14_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_14_ce0_local = 1'b1;
    end else begin
        delta_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_14_ce1_local = 1'b1;
    end else begin
        delta_weights1_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_14_we0_local = 1'b1;
    end else begin
        delta_weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_14_we1_local = 1'b1;
    end else begin
        delta_weights1_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_15_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_15_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_15_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_15_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_15_ce0_local = 1'b1;
    end else begin
        delta_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_15_ce1_local = 1'b1;
    end else begin
        delta_weights1_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_15_we0_local = 1'b1;
    end else begin
        delta_weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_15_we1_local = 1'b1;
    end else begin
        delta_weights1_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_1_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_1_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_1_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_1_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_1_ce1_local = 1'b1;
    end else begin
        delta_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_1_we1_local = 1'b1;
    end else begin
        delta_weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_2_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_2_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_2_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_2_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_2_ce1_local = 1'b1;
    end else begin
        delta_weights1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_2_we1_local = 1'b1;
    end else begin
        delta_weights1_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_3_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_3_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_3_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_3_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_3_ce1_local = 1'b1;
    end else begin
        delta_weights1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_3_we1_local = 1'b1;
    end else begin
        delta_weights1_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_4_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_4_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_4_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_4_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_4_ce0_local = 1'b1;
    end else begin
        delta_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_4_ce1_local = 1'b1;
    end else begin
        delta_weights1_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_4_we1_local = 1'b1;
    end else begin
        delta_weights1_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_5_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_5_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_5_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_5_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_5_ce0_local = 1'b1;
    end else begin
        delta_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_5_ce1_local = 1'b1;
    end else begin
        delta_weights1_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_5_we1_local = 1'b1;
    end else begin
        delta_weights1_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_6_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_6_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_6_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_6_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_6_ce0_local = 1'b1;
    end else begin
        delta_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_6_ce1_local = 1'b1;
    end else begin
        delta_weights1_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_6_we1_local = 1'b1;
    end else begin
        delta_weights1_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_7_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_7_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_7_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_7_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_7_ce0_local = 1'b1;
    end else begin
        delta_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_7_ce1_local = 1'b1;
    end else begin
        delta_weights1_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_7_we1_local = 1'b1;
    end else begin
        delta_weights1_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_8_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_8_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_8_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_8_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_8_ce0_local = 1'b1;
    end else begin
        delta_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_8_ce1_local = 1'b1;
    end else begin
        delta_weights1_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_8_we0_local = 1'b1;
    end else begin
        delta_weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_8_we1_local = 1'b1;
    end else begin
        delta_weights1_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_9_address0_local = zext_ln115_3_fu_2111_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_9_address0_local = zext_ln115_1_fu_2057_p1;
    end else begin
        delta_weights1_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_9_address1_local = zext_ln115_2_fu_2084_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_9_address1_local = zext_ln115_fu_2030_p1;
    end else begin
        delta_weights1_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_9_ce0_local = 1'b1;
    end else begin
        delta_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_9_ce1_local = 1'b1;
    end else begin
        delta_weights1_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_9_we0_local = 1'b1;
    end else begin
        delta_weights1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights1_9_we1_local = 1'b1;
    end else begin
        delta_weights1_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1532_p1 = output_difference_0_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1532_p1 = output_difference_0_load;
        end else begin
            grp_fu_1532_p1 = 'bx;
        end
    end else begin
        grp_fu_1532_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1536_p1 = output_difference_1_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1536_p1 = output_difference_1_load;
        end else begin
            grp_fu_1536_p1 = 'bx;
        end
    end else begin
        grp_fu_1536_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1540_p1 = output_difference_2_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1540_p1 = output_difference_2_load;
        end else begin
            grp_fu_1540_p1 = 'bx;
        end
    end else begin
        grp_fu_1540_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1544_p1 = output_difference_3_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1544_p1 = output_difference_3_load;
        end else begin
            grp_fu_1544_p1 = 'bx;
        end
    end else begin
        grp_fu_1544_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1548_p1 = output_difference_4_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1548_p1 = output_difference_4_load;
        end else begin
            grp_fu_1548_p1 = 'bx;
        end
    end else begin
        grp_fu_1548_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1552_p1 = output_difference_5_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1552_p1 = output_difference_5_load;
        end else begin
            grp_fu_1552_p1 = 'bx;
        end
    end else begin
        grp_fu_1552_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1556_p1 = output_difference_6_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1556_p1 = output_difference_6_load;
        end else begin
            grp_fu_1556_p1 = 'bx;
        end
    end else begin
        grp_fu_1556_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1560_p1 = output_difference_7_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1560_p1 = output_difference_7_load;
        end else begin
            grp_fu_1560_p1 = 'bx;
        end
    end else begin
        grp_fu_1560_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1564_p1 = output_difference_8_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1564_p1 = output_difference_8_load;
        end else begin
            grp_fu_1564_p1 = 'bx;
        end
    end else begin
        grp_fu_1564_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1568_p1 = output_difference_9_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1568_p1 = output_difference_9_load;
        end else begin
            grp_fu_1568_p1 = 'bx;
        end
    end else begin
        grp_fu_1568_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1572_p1 = output_difference_10_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1572_p1 = output_difference_10_load;
        end else begin
            grp_fu_1572_p1 = 'bx;
        end
    end else begin
        grp_fu_1572_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1576_p1 = output_difference_11_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1576_p1 = output_difference_11_load;
        end else begin
            grp_fu_1576_p1 = 'bx;
        end
    end else begin
        grp_fu_1576_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1580_p1 = output_difference_12_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1580_p1 = output_difference_12_load;
        end else begin
            grp_fu_1580_p1 = 'bx;
        end
    end else begin
        grp_fu_1580_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1584_p1 = output_difference_13_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1584_p1 = output_difference_13_load;
        end else begin
            grp_fu_1584_p1 = 'bx;
        end
    end else begin
        grp_fu_1584_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1588_p1 = output_difference_14_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1588_p1 = output_difference_14_load;
        end else begin
            grp_fu_1588_p1 = 'bx;
        end
    end else begin
        grp_fu_1588_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1592_p1 = output_difference_15_load_5;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1592_p1 = output_difference_15_load;
        end else begin
            grp_fu_1592_p1 = 'bx;
        end
    end else begin
        grp_fu_1592_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1596_p1 = output_difference_0_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1596_p1 = output_difference_0_load_4;
        end else begin
            grp_fu_1596_p1 = 'bx;
        end
    end else begin
        grp_fu_1596_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1600_p1 = output_difference_1_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1600_p1 = output_difference_1_load_4;
        end else begin
            grp_fu_1600_p1 = 'bx;
        end
    end else begin
        grp_fu_1600_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1604_p1 = output_difference_2_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1604_p1 = output_difference_2_load_4;
        end else begin
            grp_fu_1604_p1 = 'bx;
        end
    end else begin
        grp_fu_1604_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1608_p1 = output_difference_3_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1608_p1 = output_difference_3_load_4;
        end else begin
            grp_fu_1608_p1 = 'bx;
        end
    end else begin
        grp_fu_1608_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1612_p1 = output_difference_4_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1612_p1 = output_difference_4_load_4;
        end else begin
            grp_fu_1612_p1 = 'bx;
        end
    end else begin
        grp_fu_1612_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1616_p1 = output_difference_5_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1616_p1 = output_difference_5_load_4;
        end else begin
            grp_fu_1616_p1 = 'bx;
        end
    end else begin
        grp_fu_1616_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1620_p1 = output_difference_6_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1620_p1 = output_difference_6_load_4;
        end else begin
            grp_fu_1620_p1 = 'bx;
        end
    end else begin
        grp_fu_1620_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1624_p1 = output_difference_7_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1624_p1 = output_difference_7_load_4;
        end else begin
            grp_fu_1624_p1 = 'bx;
        end
    end else begin
        grp_fu_1624_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1628_p1 = output_difference_8_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1628_p1 = output_difference_8_load_4;
        end else begin
            grp_fu_1628_p1 = 'bx;
        end
    end else begin
        grp_fu_1628_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1632_p1 = output_difference_9_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1632_p1 = output_difference_9_load_4;
        end else begin
            grp_fu_1632_p1 = 'bx;
        end
    end else begin
        grp_fu_1632_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1636_p1 = output_difference_10_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1636_p1 = output_difference_10_load_4;
        end else begin
            grp_fu_1636_p1 = 'bx;
        end
    end else begin
        grp_fu_1636_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1640_p1 = output_difference_11_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1640_p1 = output_difference_11_load_4;
        end else begin
            grp_fu_1640_p1 = 'bx;
        end
    end else begin
        grp_fu_1640_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1644_p1 = output_difference_12_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1644_p1 = output_difference_12_load_4;
        end else begin
            grp_fu_1644_p1 = 'bx;
        end
    end else begin
        grp_fu_1644_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1648_p1 = output_difference_13_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1648_p1 = output_difference_13_load_4;
        end else begin
            grp_fu_1648_p1 = 'bx;
        end
    end else begin
        grp_fu_1648_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1652_p1 = output_difference_14_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1652_p1 = output_difference_14_load_4;
        end else begin
            grp_fu_1652_p1 = 'bx;
        end
    end else begin
        grp_fu_1652_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1656_p1 = output_difference_15_load_6;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1656_p1 = output_difference_15_load_4;
        end else begin
            grp_fu_1656_p1 = 'bx;
        end
    end else begin
        grp_fu_1656_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_10_ce0_local = 1'b1;
    end else begin
        training_data_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_11_ce0_local = 1'b1;
    end else begin
        training_data_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_12_ce0_local = 1'b1;
    end else begin
        training_data_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_13_ce0_local = 1'b1;
    end else begin
        training_data_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_14_ce0_local = 1'b1;
    end else begin
        training_data_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_15_ce0_local = 1'b1;
    end else begin
        training_data_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_4_ce0_local = 1'b1;
    end else begin
        training_data_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_5_ce0_local = 1'b1;
    end else begin
        training_data_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_6_ce0_local = 1'b1;
    end else begin
        training_data_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_7_ce0_local = 1'b1;
    end else begin
        training_data_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_8_ce0_local = 1'b1;
    end else begin
        training_data_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_9_ce0_local = 1'b1;
    end else begin
        training_data_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) & (ap_idle_pp0_0to3 == 1'b1))) begin
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
assign add_ln113_fu_1878_p2 = (i_13_reg_2458 + 4'd1);
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
assign delta_weights1_0_address0 = delta_weights1_0_address0_local;
assign delta_weights1_0_address1 = delta_weights1_0_address1_local;
assign delta_weights1_0_ce0 = delta_weights1_0_ce0_local;
assign delta_weights1_0_ce1 = delta_weights1_0_ce1_local;
assign delta_weights1_0_d0 = reg_1740;
assign delta_weights1_0_d1 = reg_1660;
assign delta_weights1_0_we0 = delta_weights1_0_we0_local;
assign delta_weights1_0_we1 = delta_weights1_0_we1_local;
assign delta_weights1_10_address0 = delta_weights1_10_address0_local;
assign delta_weights1_10_address1 = delta_weights1_10_address1_local;
assign delta_weights1_10_ce0 = delta_weights1_10_ce0_local;
assign delta_weights1_10_ce1 = delta_weights1_10_ce1_local;
assign delta_weights1_10_d0 = reg_1790;
assign delta_weights1_10_d1 = reg_1710;
assign delta_weights1_10_we0 = delta_weights1_10_we0_local;
assign delta_weights1_10_we1 = delta_weights1_10_we1_local;
assign delta_weights1_11_address0 = delta_weights1_11_address0_local;
assign delta_weights1_11_address1 = delta_weights1_11_address1_local;
assign delta_weights1_11_ce0 = delta_weights1_11_ce0_local;
assign delta_weights1_11_ce1 = delta_weights1_11_ce1_local;
assign delta_weights1_11_d0 = reg_1795;
assign delta_weights1_11_d1 = reg_1715;
assign delta_weights1_11_we0 = delta_weights1_11_we0_local;
assign delta_weights1_11_we1 = delta_weights1_11_we1_local;
assign delta_weights1_12_address0 = delta_weights1_12_address0_local;
assign delta_weights1_12_address1 = delta_weights1_12_address1_local;
assign delta_weights1_12_ce0 = delta_weights1_12_ce0_local;
assign delta_weights1_12_ce1 = delta_weights1_12_ce1_local;
assign delta_weights1_12_d0 = reg_1800;
assign delta_weights1_12_d1 = reg_1720;
assign delta_weights1_12_we0 = delta_weights1_12_we0_local;
assign delta_weights1_12_we1 = delta_weights1_12_we1_local;
assign delta_weights1_13_address0 = delta_weights1_13_address0_local;
assign delta_weights1_13_address1 = delta_weights1_13_address1_local;
assign delta_weights1_13_ce0 = delta_weights1_13_ce0_local;
assign delta_weights1_13_ce1 = delta_weights1_13_ce1_local;
assign delta_weights1_13_d0 = reg_1805;
assign delta_weights1_13_d1 = reg_1725;
assign delta_weights1_13_we0 = delta_weights1_13_we0_local;
assign delta_weights1_13_we1 = delta_weights1_13_we1_local;
assign delta_weights1_14_address0 = delta_weights1_14_address0_local;
assign delta_weights1_14_address1 = delta_weights1_14_address1_local;
assign delta_weights1_14_ce0 = delta_weights1_14_ce0_local;
assign delta_weights1_14_ce1 = delta_weights1_14_ce1_local;
assign delta_weights1_14_d0 = reg_1810;
assign delta_weights1_14_d1 = reg_1730;
assign delta_weights1_14_we0 = delta_weights1_14_we0_local;
assign delta_weights1_14_we1 = delta_weights1_14_we1_local;
assign delta_weights1_15_address0 = delta_weights1_15_address0_local;
assign delta_weights1_15_address1 = delta_weights1_15_address1_local;
assign delta_weights1_15_ce0 = delta_weights1_15_ce0_local;
assign delta_weights1_15_ce1 = delta_weights1_15_ce1_local;
assign delta_weights1_15_d0 = reg_1815;
assign delta_weights1_15_d1 = reg_1735;
assign delta_weights1_15_we0 = delta_weights1_15_we0_local;
assign delta_weights1_15_we1 = delta_weights1_15_we1_local;
assign delta_weights1_1_address0 = delta_weights1_1_address0_local;
assign delta_weights1_1_address1 = delta_weights1_1_address1_local;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = reg_1745;
assign delta_weights1_1_d1 = reg_1665;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign delta_weights1_2_address0 = delta_weights1_2_address0_local;
assign delta_weights1_2_address1 = delta_weights1_2_address1_local;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_ce1 = delta_weights1_2_ce1_local;
assign delta_weights1_2_d0 = reg_1750;
assign delta_weights1_2_d1 = reg_1670;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_2_we1 = delta_weights1_2_we1_local;
assign delta_weights1_3_address0 = delta_weights1_3_address0_local;
assign delta_weights1_3_address1 = delta_weights1_3_address1_local;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_ce1 = delta_weights1_3_ce1_local;
assign delta_weights1_3_d0 = reg_1755;
assign delta_weights1_3_d1 = reg_1675;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_3_we1 = delta_weights1_3_we1_local;
assign delta_weights1_4_address0 = delta_weights1_4_address0_local;
assign delta_weights1_4_address1 = delta_weights1_4_address1_local;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_ce1 = delta_weights1_4_ce1_local;
assign delta_weights1_4_d0 = reg_1760;
assign delta_weights1_4_d1 = reg_1680;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_4_we1 = delta_weights1_4_we1_local;
assign delta_weights1_5_address0 = delta_weights1_5_address0_local;
assign delta_weights1_5_address1 = delta_weights1_5_address1_local;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_ce1 = delta_weights1_5_ce1_local;
assign delta_weights1_5_d0 = reg_1765;
assign delta_weights1_5_d1 = reg_1685;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_5_we1 = delta_weights1_5_we1_local;
assign delta_weights1_6_address0 = delta_weights1_6_address0_local;
assign delta_weights1_6_address1 = delta_weights1_6_address1_local;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_ce1 = delta_weights1_6_ce1_local;
assign delta_weights1_6_d0 = reg_1770;
assign delta_weights1_6_d1 = reg_1690;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_6_we1 = delta_weights1_6_we1_local;
assign delta_weights1_7_address0 = delta_weights1_7_address0_local;
assign delta_weights1_7_address1 = delta_weights1_7_address1_local;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_ce1 = delta_weights1_7_ce1_local;
assign delta_weights1_7_d0 = reg_1775;
assign delta_weights1_7_d1 = reg_1695;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_7_we1 = delta_weights1_7_we1_local;
assign delta_weights1_8_address0 = delta_weights1_8_address0_local;
assign delta_weights1_8_address1 = delta_weights1_8_address1_local;
assign delta_weights1_8_ce0 = delta_weights1_8_ce0_local;
assign delta_weights1_8_ce1 = delta_weights1_8_ce1_local;
assign delta_weights1_8_d0 = reg_1780;
assign delta_weights1_8_d1 = reg_1700;
assign delta_weights1_8_we0 = delta_weights1_8_we0_local;
assign delta_weights1_8_we1 = delta_weights1_8_we1_local;
assign delta_weights1_9_address0 = delta_weights1_9_address0_local;
assign delta_weights1_9_address1 = delta_weights1_9_address1_local;
assign delta_weights1_9_ce0 = delta_weights1_9_ce0_local;
assign delta_weights1_9_ce1 = delta_weights1_9_ce1_local;
assign delta_weights1_9_d0 = reg_1785;
assign delta_weights1_9_d1 = reg_1705;
assign delta_weights1_9_we0 = delta_weights1_9_we0_local;
assign delta_weights1_9_we1 = delta_weights1_9_we1_local;
assign empty_fu_1844_p1 = p_sum_fu_1838_p2[3:0];
assign grp_fu_1625_p_ce = 1'b1;
assign grp_fu_1625_p_din0 = tmp_reg_2556;
assign grp_fu_1625_p_din1 = grp_fu_1532_p1;
assign grp_fu_1629_p_ce = 1'b1;
assign grp_fu_1629_p_din0 = tmp_reg_2556;
assign grp_fu_1629_p_din1 = grp_fu_1536_p1;
assign grp_fu_1633_p_ce = 1'b1;
assign grp_fu_1633_p_din0 = tmp_reg_2556;
assign grp_fu_1633_p_din1 = grp_fu_1540_p1;
assign grp_fu_1637_p_ce = 1'b1;
assign grp_fu_1637_p_din0 = tmp_reg_2556;
assign grp_fu_1637_p_din1 = grp_fu_1544_p1;
assign grp_fu_1641_p_ce = 1'b1;
assign grp_fu_1641_p_din0 = tmp_reg_2556;
assign grp_fu_1641_p_din1 = grp_fu_1548_p1;
assign grp_fu_1645_p_ce = 1'b1;
assign grp_fu_1645_p_din0 = tmp_reg_2556;
assign grp_fu_1645_p_din1 = grp_fu_1552_p1;
assign grp_fu_1649_p_ce = 1'b1;
assign grp_fu_1649_p_din0 = tmp_reg_2556;
assign grp_fu_1649_p_din1 = grp_fu_1556_p1;
assign grp_fu_1653_p_ce = 1'b1;
assign grp_fu_1653_p_din0 = tmp_reg_2556;
assign grp_fu_1653_p_din1 = grp_fu_1560_p1;
assign grp_fu_1657_p_ce = 1'b1;
assign grp_fu_1657_p_din0 = tmp_reg_2556;
assign grp_fu_1657_p_din1 = grp_fu_1564_p1;
assign grp_fu_1661_p_ce = 1'b1;
assign grp_fu_1661_p_din0 = tmp_reg_2556;
assign grp_fu_1661_p_din1 = grp_fu_1568_p1;
assign grp_fu_1665_p_ce = 1'b1;
assign grp_fu_1665_p_din0 = tmp_reg_2556;
assign grp_fu_1665_p_din1 = grp_fu_1572_p1;
assign grp_fu_1669_p_ce = 1'b1;
assign grp_fu_1669_p_din0 = tmp_reg_2556;
assign grp_fu_1669_p_din1 = grp_fu_1576_p1;
assign grp_fu_1673_p_ce = 1'b1;
assign grp_fu_1673_p_din0 = tmp_reg_2556;
assign grp_fu_1673_p_din1 = grp_fu_1580_p1;
assign grp_fu_1677_p_ce = 1'b1;
assign grp_fu_1677_p_din0 = tmp_reg_2556;
assign grp_fu_1677_p_din1 = grp_fu_1584_p1;
assign grp_fu_1681_p_ce = 1'b1;
assign grp_fu_1681_p_din0 = tmp_reg_2556;
assign grp_fu_1681_p_din1 = grp_fu_1588_p1;
assign grp_fu_1685_p_ce = 1'b1;
assign grp_fu_1685_p_din0 = tmp_reg_2556;
assign grp_fu_1685_p_din1 = grp_fu_1592_p1;
assign grp_fu_1689_p_ce = 1'b1;
assign grp_fu_1689_p_din0 = tmp_reg_2556;
assign grp_fu_1689_p_din1 = grp_fu_1596_p1;
assign grp_fu_1693_p_ce = 1'b1;
assign grp_fu_1693_p_din0 = tmp_reg_2556;
assign grp_fu_1693_p_din1 = grp_fu_1600_p1;
assign grp_fu_1697_p_ce = 1'b1;
assign grp_fu_1697_p_din0 = tmp_reg_2556;
assign grp_fu_1697_p_din1 = grp_fu_1604_p1;
assign grp_fu_1701_p_ce = 1'b1;
assign grp_fu_1701_p_din0 = tmp_reg_2556;
assign grp_fu_1701_p_din1 = grp_fu_1608_p1;
assign grp_fu_1705_p_ce = 1'b1;
assign grp_fu_1705_p_din0 = tmp_reg_2556;
assign grp_fu_1705_p_din1 = grp_fu_1612_p1;
assign grp_fu_1709_p_ce = 1'b1;
assign grp_fu_1709_p_din0 = tmp_reg_2556;
assign grp_fu_1709_p_din1 = grp_fu_1616_p1;
assign grp_fu_1713_p_ce = 1'b1;
assign grp_fu_1713_p_din0 = tmp_reg_2556;
assign grp_fu_1713_p_din1 = grp_fu_1620_p1;
assign grp_fu_1717_p_ce = 1'b1;
assign grp_fu_1717_p_din0 = tmp_reg_2556;
assign grp_fu_1717_p_din1 = grp_fu_1624_p1;
assign grp_fu_1721_p_ce = 1'b1;
assign grp_fu_1721_p_din0 = tmp_reg_2556;
assign grp_fu_1721_p_din1 = grp_fu_1628_p1;
assign grp_fu_1725_p_ce = 1'b1;
assign grp_fu_1725_p_din0 = tmp_reg_2556;
assign grp_fu_1725_p_din1 = grp_fu_1632_p1;
assign grp_fu_1729_p_ce = 1'b1;
assign grp_fu_1729_p_din0 = tmp_reg_2556;
assign grp_fu_1729_p_din1 = grp_fu_1636_p1;
assign grp_fu_1733_p_ce = 1'b1;
assign grp_fu_1733_p_din0 = tmp_reg_2556;
assign grp_fu_1733_p_din1 = grp_fu_1640_p1;
assign grp_fu_1737_p_ce = 1'b1;
assign grp_fu_1737_p_din0 = tmp_reg_2556;
assign grp_fu_1737_p_din1 = grp_fu_1644_p1;
assign grp_fu_1741_p_ce = 1'b1;
assign grp_fu_1741_p_din0 = tmp_reg_2556;
assign grp_fu_1741_p_din1 = grp_fu_1648_p1;
assign grp_fu_1745_p_ce = 1'b1;
assign grp_fu_1745_p_din0 = tmp_reg_2556;
assign grp_fu_1745_p_din1 = grp_fu_1652_p1;
assign grp_fu_1749_p_ce = 1'b1;
assign grp_fu_1749_p_din0 = tmp_reg_2556;
assign grp_fu_1749_p_din1 = grp_fu_1656_p1;
assign icmp_ln113_fu_1828_p2 = ((ap_sig_allocacmp_i_13 == 4'd13) ? 1'b1 : 1'b0);
assign or_ln115_1_fu_2077_p3 = {{i_13_reg_2458_pp0_iter4_reg}, {2'd2}};
assign or_ln115_2_fu_2104_p3 = {{i_13_reg_2458_pp0_iter4_reg}, {2'd3}};
assign or_ln_fu_2050_p3 = {{i_13_reg_2458_pp0_iter4_reg}, {2'd1}};
assign p_cast_fu_1858_p1 = tmp_s_fu_1848_p4;
assign p_sum_fu_1838_p2 = (zext_ln113_fu_1834_p1 + idx);
assign shl_ln_fu_2023_p3 = {{i_13_reg_2458_pp0_iter4_reg}, {2'd0}};
assign tmp_fu_1947_p10 = training_data_4_q0;
assign tmp_fu_1947_p12 = training_data_5_q0;
assign tmp_fu_1947_p14 = training_data_6_q0;
assign tmp_fu_1947_p16 = training_data_7_q0;
assign tmp_fu_1947_p18 = training_data_8_q0;
assign tmp_fu_1947_p2 = training_data_0_q0;
assign tmp_fu_1947_p20 = training_data_9_q0;
assign tmp_fu_1947_p22 = training_data_10_q0;
assign tmp_fu_1947_p24 = training_data_11_q0;
assign tmp_fu_1947_p26 = training_data_12_q0;
assign tmp_fu_1947_p28 = training_data_13_q0;
assign tmp_fu_1947_p30 = training_data_14_q0;
assign tmp_fu_1947_p32 = training_data_15_q0;
assign tmp_fu_1947_p33 = 'bx;
assign tmp_fu_1947_p4 = training_data_1_q0;
assign tmp_fu_1947_p6 = training_data_2_q0;
assign tmp_fu_1947_p8 = training_data_3_q0;
assign tmp_s_fu_1848_p4 = {{p_sum_fu_1838_p2[11:4]}};
assign training_data_0_address0 = p_cast_fu_1858_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_10_address0 = p_cast_fu_1858_p1;
assign training_data_10_ce0 = training_data_10_ce0_local;
assign training_data_11_address0 = p_cast_fu_1858_p1;
assign training_data_11_ce0 = training_data_11_ce0_local;
assign training_data_12_address0 = p_cast_fu_1858_p1;
assign training_data_12_ce0 = training_data_12_ce0_local;
assign training_data_13_address0 = p_cast_fu_1858_p1;
assign training_data_13_ce0 = training_data_13_ce0_local;
assign training_data_14_address0 = p_cast_fu_1858_p1;
assign training_data_14_ce0 = training_data_14_ce0_local;
assign training_data_15_address0 = p_cast_fu_1858_p1;
assign training_data_15_ce0 = training_data_15_ce0_local;
assign training_data_1_address0 = p_cast_fu_1858_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_2_address0 = p_cast_fu_1858_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_3_address0 = p_cast_fu_1858_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_4_address0 = p_cast_fu_1858_p1;
assign training_data_4_ce0 = training_data_4_ce0_local;
assign training_data_5_address0 = p_cast_fu_1858_p1;
assign training_data_5_ce0 = training_data_5_ce0_local;
assign training_data_6_address0 = p_cast_fu_1858_p1;
assign training_data_6_ce0 = training_data_6_ce0_local;
assign training_data_7_address0 = p_cast_fu_1858_p1;
assign training_data_7_ce0 = training_data_7_ce0_local;
assign training_data_8_address0 = p_cast_fu_1858_p1;
assign training_data_8_ce0 = training_data_8_ce0_local;
assign training_data_9_address0 = p_cast_fu_1858_p1;
assign training_data_9_ce0 = training_data_9_ce0_local;
assign zext_ln113_fu_1834_p1 = ap_sig_allocacmp_i_13;
assign zext_ln115_1_fu_2057_p1 = or_ln_fu_2050_p3;
assign zext_ln115_2_fu_2084_p1 = or_ln115_1_fu_2077_p3;
assign zext_ln115_3_fu_2111_p1 = or_ln115_2_fu_2104_p3;
assign zext_ln115_fu_2030_p1 = shl_ln_fu_2023_p3;
endmodule 
