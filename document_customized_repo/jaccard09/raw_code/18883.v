module backprop_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_15_address0,delta_weights2_15_ce0,delta_weights2_15_we0,delta_weights2_15_d0,delta_weights2_15_address1,delta_weights2_15_ce1,delta_weights2_15_we1,delta_weights2_15_d1,delta_weights2_14_address0,delta_weights2_14_ce0,delta_weights2_14_we0,delta_weights2_14_d0,delta_weights2_14_address1,delta_weights2_14_ce1,delta_weights2_14_we1,delta_weights2_14_d1,delta_weights2_13_address0,delta_weights2_13_ce0,delta_weights2_13_we0,delta_weights2_13_d0,delta_weights2_13_address1,delta_weights2_13_ce1,delta_weights2_13_we1,delta_weights2_13_d1,delta_weights2_12_address0,delta_weights2_12_ce0,delta_weights2_12_we0,delta_weights2_12_d0,delta_weights2_12_address1,delta_weights2_12_ce1,delta_weights2_12_we1,delta_weights2_12_d1,delta_weights2_11_address0,delta_weights2_11_ce0,delta_weights2_11_we0,delta_weights2_11_d0,delta_weights2_11_address1,delta_weights2_11_ce1,delta_weights2_11_we1,delta_weights2_11_d1,delta_weights2_10_address0,delta_weights2_10_ce0,delta_weights2_10_we0,delta_weights2_10_d0,delta_weights2_10_address1,delta_weights2_10_ce1,delta_weights2_10_we1,delta_weights2_10_d1,delta_weights2_9_address0,delta_weights2_9_ce0,delta_weights2_9_we0,delta_weights2_9_d0,delta_weights2_9_address1,delta_weights2_9_ce1,delta_weights2_9_we1,delta_weights2_9_d1,delta_weights2_8_address0,delta_weights2_8_ce0,delta_weights2_8_we0,delta_weights2_8_d0,delta_weights2_8_address1,delta_weights2_8_ce1,delta_weights2_8_we1,delta_weights2_8_d1,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_7_address1,delta_weights2_7_ce1,delta_weights2_7_we1,delta_weights2_7_d1,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_6_address1,delta_weights2_6_ce1,delta_weights2_6_we1,delta_weights2_6_d1,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_5_address1,delta_weights2_5_ce1,delta_weights2_5_we1,delta_weights2_5_d1,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_4_address1,delta_weights2_4_ce1,delta_weights2_4_we1,delta_weights2_4_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,last_activations_8_address0,last_activations_8_ce0,last_activations_8_q0,last_activations_9_address0,last_activations_9_ce0,last_activations_9_q0,last_activations_10_address0,last_activations_10_ce0,last_activations_10_q0,last_activations_11_address0,last_activations_11_ce0,last_activations_11_q0,last_activations_12_address0,last_activations_12_ce0,last_activations_12_q0,last_activations_13_address0,last_activations_13_ce0,last_activations_13_q0,last_activations_14_address0,last_activations_14_ce0,last_activations_14_q0,last_activations_15_address0,last_activations_15_ce0,last_activations_15_q0,output_difference_0_load,output_difference_1_load,output_difference_2_load,output_difference_3_load,output_difference_4_load,output_difference_5_load,output_difference_6_load,output_difference_7_load,output_difference_8_load,output_difference_9_load,output_difference_10_load,output_difference_11_load,output_difference_12_load,output_difference_13_load,output_difference_14_load,output_difference_15_load,output_difference_0_load_1,output_difference_1_load_1,output_difference_2_load_1,output_difference_3_load_1,output_difference_4_load_1,output_difference_5_load_1,output_difference_6_load_1,output_difference_7_load_1,output_difference_8_load_1,output_difference_9_load_1,output_difference_10_load_1,output_difference_11_load_1,output_difference_12_load_1,output_difference_13_load_1,output_difference_14_load_1,output_difference_15_load_1,output_difference_0_load_2,output_difference_1_load_2,output_difference_2_load_2,output_difference_3_load_2,output_difference_4_load_2,output_difference_5_load_2,output_difference_6_load_2,output_difference_7_load_2,output_difference_8_load_2,output_difference_9_load_2,output_difference_10_load_2,output_difference_11_load_2,output_difference_12_load_2,output_difference_13_load_2,output_difference_14_load_2,output_difference_15_load_2,output_difference_0_load_3,output_difference_1_load_3,output_difference_2_load_3,output_difference_3_load_3,output_difference_4_load_3,output_difference_5_load_3,output_difference_6_load_3,output_difference_7_load_3,output_difference_8_load_3,output_difference_9_load_3,output_difference_10_load_3,output_difference_11_load_3,output_difference_12_load_3,output_difference_13_load_3,output_difference_14_load_3,output_difference_15_load_3,grp_fu_1630_p_din0,grp_fu_1630_p_din1,grp_fu_1630_p_dout0,grp_fu_1630_p_ce,grp_fu_1634_p_din0,grp_fu_1634_p_din1,grp_fu_1634_p_dout0,grp_fu_1634_p_ce,grp_fu_1638_p_din0,grp_fu_1638_p_din1,grp_fu_1638_p_dout0,grp_fu_1638_p_ce,grp_fu_1642_p_din0,grp_fu_1642_p_din1,grp_fu_1642_p_dout0,grp_fu_1642_p_ce,grp_fu_1646_p_din0,grp_fu_1646_p_din1,grp_fu_1646_p_dout0,grp_fu_1646_p_ce,grp_fu_1650_p_din0,grp_fu_1650_p_din1,grp_fu_1650_p_dout0,grp_fu_1650_p_ce,grp_fu_1654_p_din0,grp_fu_1654_p_din1,grp_fu_1654_p_dout0,grp_fu_1654_p_ce,grp_fu_1658_p_din0,grp_fu_1658_p_din1,grp_fu_1658_p_dout0,grp_fu_1658_p_ce,grp_fu_1662_p_din0,grp_fu_1662_p_din1,grp_fu_1662_p_dout0,grp_fu_1662_p_ce,grp_fu_1666_p_din0,grp_fu_1666_p_din1,grp_fu_1666_p_dout0,grp_fu_1666_p_ce,grp_fu_1670_p_din0,grp_fu_1670_p_din1,grp_fu_1670_p_dout0,grp_fu_1670_p_ce,grp_fu_1674_p_din0,grp_fu_1674_p_din1,grp_fu_1674_p_dout0,grp_fu_1674_p_ce,grp_fu_1678_p_din0,grp_fu_1678_p_din1,grp_fu_1678_p_dout0,grp_fu_1678_p_ce,grp_fu_1682_p_din0,grp_fu_1682_p_din1,grp_fu_1682_p_dout0,grp_fu_1682_p_ce,grp_fu_1686_p_din0,grp_fu_1686_p_din1,grp_fu_1686_p_dout0,grp_fu_1686_p_ce,grp_fu_1690_p_din0,grp_fu_1690_p_din1,grp_fu_1690_p_dout0,grp_fu_1690_p_ce,grp_fu_1694_p_din0,grp_fu_1694_p_din1,grp_fu_1694_p_dout0,grp_fu_1694_p_ce,grp_fu_1698_p_din0,grp_fu_1698_p_din1,grp_fu_1698_p_dout0,grp_fu_1698_p_ce,grp_fu_1702_p_din0,grp_fu_1702_p_din1,grp_fu_1702_p_dout0,grp_fu_1702_p_ce,grp_fu_1706_p_din0,grp_fu_1706_p_din1,grp_fu_1706_p_dout0,grp_fu_1706_p_ce,grp_fu_1710_p_din0,grp_fu_1710_p_din1,grp_fu_1710_p_dout0,grp_fu_1710_p_ce,grp_fu_1714_p_din0,grp_fu_1714_p_din1,grp_fu_1714_p_dout0,grp_fu_1714_p_ce,grp_fu_1718_p_din0,grp_fu_1718_p_din1,grp_fu_1718_p_dout0,grp_fu_1718_p_ce,grp_fu_1722_p_din0,grp_fu_1722_p_din1,grp_fu_1722_p_dout0,grp_fu_1722_p_ce,grp_fu_1726_p_din0,grp_fu_1726_p_din1,grp_fu_1726_p_dout0,grp_fu_1726_p_ce,grp_fu_1730_p_din0,grp_fu_1730_p_din1,grp_fu_1730_p_dout0,grp_fu_1730_p_ce,grp_fu_1734_p_din0,grp_fu_1734_p_din1,grp_fu_1734_p_dout0,grp_fu_1734_p_ce,grp_fu_1738_p_din0,grp_fu_1738_p_din1,grp_fu_1738_p_dout0,grp_fu_1738_p_ce,grp_fu_1742_p_din0,grp_fu_1742_p_din1,grp_fu_1742_p_dout0,grp_fu_1742_p_ce,grp_fu_1746_p_din0,grp_fu_1746_p_din1,grp_fu_1746_p_dout0,grp_fu_1746_p_ce,grp_fu_1750_p_din0,grp_fu_1750_p_din1,grp_fu_1750_p_dout0,grp_fu_1750_p_ce,grp_fu_1754_p_din0,grp_fu_1754_p_din1,grp_fu_1754_p_dout0,grp_fu_1754_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] delta_weights2_15_address0;
output   delta_weights2_15_ce0;
output   delta_weights2_15_we0;
output  [63:0] delta_weights2_15_d0;
output  [7:0] delta_weights2_15_address1;
output   delta_weights2_15_ce1;
output   delta_weights2_15_we1;
output  [63:0] delta_weights2_15_d1;
output  [7:0] delta_weights2_14_address0;
output   delta_weights2_14_ce0;
output   delta_weights2_14_we0;
output  [63:0] delta_weights2_14_d0;
output  [7:0] delta_weights2_14_address1;
output   delta_weights2_14_ce1;
output   delta_weights2_14_we1;
output  [63:0] delta_weights2_14_d1;
output  [7:0] delta_weights2_13_address0;
output   delta_weights2_13_ce0;
output   delta_weights2_13_we0;
output  [63:0] delta_weights2_13_d0;
output  [7:0] delta_weights2_13_address1;
output   delta_weights2_13_ce1;
output   delta_weights2_13_we1;
output  [63:0] delta_weights2_13_d1;
output  [7:0] delta_weights2_12_address0;
output   delta_weights2_12_ce0;
output   delta_weights2_12_we0;
output  [63:0] delta_weights2_12_d0;
output  [7:0] delta_weights2_12_address1;
output   delta_weights2_12_ce1;
output   delta_weights2_12_we1;
output  [63:0] delta_weights2_12_d1;
output  [7:0] delta_weights2_11_address0;
output   delta_weights2_11_ce0;
output   delta_weights2_11_we0;
output  [63:0] delta_weights2_11_d0;
output  [7:0] delta_weights2_11_address1;
output   delta_weights2_11_ce1;
output   delta_weights2_11_we1;
output  [63:0] delta_weights2_11_d1;
output  [7:0] delta_weights2_10_address0;
output   delta_weights2_10_ce0;
output   delta_weights2_10_we0;
output  [63:0] delta_weights2_10_d0;
output  [7:0] delta_weights2_10_address1;
output   delta_weights2_10_ce1;
output   delta_weights2_10_we1;
output  [63:0] delta_weights2_10_d1;
output  [7:0] delta_weights2_9_address0;
output   delta_weights2_9_ce0;
output   delta_weights2_9_we0;
output  [63:0] delta_weights2_9_d0;
output  [7:0] delta_weights2_9_address1;
output   delta_weights2_9_ce1;
output   delta_weights2_9_we1;
output  [63:0] delta_weights2_9_d1;
output  [7:0] delta_weights2_8_address0;
output   delta_weights2_8_ce0;
output   delta_weights2_8_we0;
output  [63:0] delta_weights2_8_d0;
output  [7:0] delta_weights2_8_address1;
output   delta_weights2_8_ce1;
output   delta_weights2_8_we1;
output  [63:0] delta_weights2_8_d1;
output  [7:0] delta_weights2_7_address0;
output   delta_weights2_7_ce0;
output   delta_weights2_7_we0;
output  [63:0] delta_weights2_7_d0;
output  [7:0] delta_weights2_7_address1;
output   delta_weights2_7_ce1;
output   delta_weights2_7_we1;
output  [63:0] delta_weights2_7_d1;
output  [7:0] delta_weights2_6_address0;
output   delta_weights2_6_ce0;
output   delta_weights2_6_we0;
output  [63:0] delta_weights2_6_d0;
output  [7:0] delta_weights2_6_address1;
output   delta_weights2_6_ce1;
output   delta_weights2_6_we1;
output  [63:0] delta_weights2_6_d1;
output  [7:0] delta_weights2_5_address0;
output   delta_weights2_5_ce0;
output   delta_weights2_5_we0;
output  [63:0] delta_weights2_5_d0;
output  [7:0] delta_weights2_5_address1;
output   delta_weights2_5_ce1;
output   delta_weights2_5_we1;
output  [63:0] delta_weights2_5_d1;
output  [7:0] delta_weights2_4_address0;
output   delta_weights2_4_ce0;
output   delta_weights2_4_we0;
output  [63:0] delta_weights2_4_d0;
output  [7:0] delta_weights2_4_address1;
output   delta_weights2_4_ce1;
output   delta_weights2_4_we1;
output  [63:0] delta_weights2_4_d1;
output  [7:0] delta_weights2_3_address0;
output   delta_weights2_3_ce0;
output   delta_weights2_3_we0;
output  [63:0] delta_weights2_3_d0;
output  [7:0] delta_weights2_3_address1;
output   delta_weights2_3_ce1;
output   delta_weights2_3_we1;
output  [63:0] delta_weights2_3_d1;
output  [7:0] delta_weights2_2_address0;
output   delta_weights2_2_ce0;
output   delta_weights2_2_we0;
output  [63:0] delta_weights2_2_d0;
output  [7:0] delta_weights2_2_address1;
output   delta_weights2_2_ce1;
output   delta_weights2_2_we1;
output  [63:0] delta_weights2_2_d1;
output  [7:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [7:0] delta_weights2_1_address1;
output   delta_weights2_1_ce1;
output   delta_weights2_1_we1;
output  [63:0] delta_weights2_1_d1;
output  [7:0] delta_weights2_0_address0;
output   delta_weights2_0_ce0;
output   delta_weights2_0_we0;
output  [63:0] delta_weights2_0_d0;
output  [7:0] delta_weights2_0_address1;
output   delta_weights2_0_ce1;
output   delta_weights2_0_we1;
output  [63:0] delta_weights2_0_d1;
output  [1:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [1:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [1:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [1:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [1:0] last_activations_4_address0;
output   last_activations_4_ce0;
input  [63:0] last_activations_4_q0;
output  [1:0] last_activations_5_address0;
output   last_activations_5_ce0;
input  [63:0] last_activations_5_q0;
output  [1:0] last_activations_6_address0;
output   last_activations_6_ce0;
input  [63:0] last_activations_6_q0;
output  [1:0] last_activations_7_address0;
output   last_activations_7_ce0;
input  [63:0] last_activations_7_q0;
output  [1:0] last_activations_8_address0;
output   last_activations_8_ce0;
input  [63:0] last_activations_8_q0;
output  [1:0] last_activations_9_address0;
output   last_activations_9_ce0;
input  [63:0] last_activations_9_q0;
output  [1:0] last_activations_10_address0;
output   last_activations_10_ce0;
input  [63:0] last_activations_10_q0;
output  [1:0] last_activations_11_address0;
output   last_activations_11_ce0;
input  [63:0] last_activations_11_q0;
output  [1:0] last_activations_12_address0;
output   last_activations_12_ce0;
input  [63:0] last_activations_12_q0;
output  [1:0] last_activations_13_address0;
output   last_activations_13_ce0;
input  [63:0] last_activations_13_q0;
output  [1:0] last_activations_14_address0;
output   last_activations_14_ce0;
input  [63:0] last_activations_14_q0;
output  [1:0] last_activations_15_address0;
output   last_activations_15_ce0;
input  [63:0] last_activations_15_q0;
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
input  [63:0] output_difference_0_load_1;
input  [63:0] output_difference_1_load_1;
input  [63:0] output_difference_2_load_1;
input  [63:0] output_difference_3_load_1;
input  [63:0] output_difference_4_load_1;
input  [63:0] output_difference_5_load_1;
input  [63:0] output_difference_6_load_1;
input  [63:0] output_difference_7_load_1;
input  [63:0] output_difference_8_load_1;
input  [63:0] output_difference_9_load_1;
input  [63:0] output_difference_10_load_1;
input  [63:0] output_difference_11_load_1;
input  [63:0] output_difference_12_load_1;
input  [63:0] output_difference_13_load_1;
input  [63:0] output_difference_14_load_1;
input  [63:0] output_difference_15_load_1;
input  [63:0] output_difference_0_load_2;
input  [63:0] output_difference_1_load_2;
input  [63:0] output_difference_2_load_2;
input  [63:0] output_difference_3_load_2;
input  [63:0] output_difference_4_load_2;
input  [63:0] output_difference_5_load_2;
input  [63:0] output_difference_6_load_2;
input  [63:0] output_difference_7_load_2;
input  [63:0] output_difference_8_load_2;
input  [63:0] output_difference_9_load_2;
input  [63:0] output_difference_10_load_2;
input  [63:0] output_difference_11_load_2;
input  [63:0] output_difference_12_load_2;
input  [63:0] output_difference_13_load_2;
input  [63:0] output_difference_14_load_2;
input  [63:0] output_difference_15_load_2;
input  [63:0] output_difference_0_load_3;
input  [63:0] output_difference_1_load_3;
input  [63:0] output_difference_2_load_3;
input  [63:0] output_difference_3_load_3;
input  [63:0] output_difference_4_load_3;
input  [63:0] output_difference_5_load_3;
input  [63:0] output_difference_6_load_3;
input  [63:0] output_difference_7_load_3;
input  [63:0] output_difference_8_load_3;
input  [63:0] output_difference_9_load_3;
input  [63:0] output_difference_10_load_3;
input  [63:0] output_difference_11_load_3;
input  [63:0] output_difference_12_load_3;
input  [63:0] output_difference_13_load_3;
input  [63:0] output_difference_14_load_3;
input  [63:0] output_difference_15_load_3;
output  [63:0] grp_fu_1630_p_din0;
output  [63:0] grp_fu_1630_p_din1;
input  [63:0] grp_fu_1630_p_dout0;
output   grp_fu_1630_p_ce;
output  [63:0] grp_fu_1634_p_din0;
output  [63:0] grp_fu_1634_p_din1;
input  [63:0] grp_fu_1634_p_dout0;
output   grp_fu_1634_p_ce;
output  [63:0] grp_fu_1638_p_din0;
output  [63:0] grp_fu_1638_p_din1;
input  [63:0] grp_fu_1638_p_dout0;
output   grp_fu_1638_p_ce;
output  [63:0] grp_fu_1642_p_din0;
output  [63:0] grp_fu_1642_p_din1;
input  [63:0] grp_fu_1642_p_dout0;
output   grp_fu_1642_p_ce;
output  [63:0] grp_fu_1646_p_din0;
output  [63:0] grp_fu_1646_p_din1;
input  [63:0] grp_fu_1646_p_dout0;
output   grp_fu_1646_p_ce;
output  [63:0] grp_fu_1650_p_din0;
output  [63:0] grp_fu_1650_p_din1;
input  [63:0] grp_fu_1650_p_dout0;
output   grp_fu_1650_p_ce;
output  [63:0] grp_fu_1654_p_din0;
output  [63:0] grp_fu_1654_p_din1;
input  [63:0] grp_fu_1654_p_dout0;
output   grp_fu_1654_p_ce;
output  [63:0] grp_fu_1658_p_din0;
output  [63:0] grp_fu_1658_p_din1;
input  [63:0] grp_fu_1658_p_dout0;
output   grp_fu_1658_p_ce;
output  [63:0] grp_fu_1662_p_din0;
output  [63:0] grp_fu_1662_p_din1;
input  [63:0] grp_fu_1662_p_dout0;
output   grp_fu_1662_p_ce;
output  [63:0] grp_fu_1666_p_din0;
output  [63:0] grp_fu_1666_p_din1;
input  [63:0] grp_fu_1666_p_dout0;
output   grp_fu_1666_p_ce;
output  [63:0] grp_fu_1670_p_din0;
output  [63:0] grp_fu_1670_p_din1;
input  [63:0] grp_fu_1670_p_dout0;
output   grp_fu_1670_p_ce;
output  [63:0] grp_fu_1674_p_din0;
output  [63:0] grp_fu_1674_p_din1;
input  [63:0] grp_fu_1674_p_dout0;
output   grp_fu_1674_p_ce;
output  [63:0] grp_fu_1678_p_din0;
output  [63:0] grp_fu_1678_p_din1;
input  [63:0] grp_fu_1678_p_dout0;
output   grp_fu_1678_p_ce;
output  [63:0] grp_fu_1682_p_din0;
output  [63:0] grp_fu_1682_p_din1;
input  [63:0] grp_fu_1682_p_dout0;
output   grp_fu_1682_p_ce;
output  [63:0] grp_fu_1686_p_din0;
output  [63:0] grp_fu_1686_p_din1;
input  [63:0] grp_fu_1686_p_dout0;
output   grp_fu_1686_p_ce;
output  [63:0] grp_fu_1690_p_din0;
output  [63:0] grp_fu_1690_p_din1;
input  [63:0] grp_fu_1690_p_dout0;
output   grp_fu_1690_p_ce;
output  [63:0] grp_fu_1694_p_din0;
output  [63:0] grp_fu_1694_p_din1;
input  [63:0] grp_fu_1694_p_dout0;
output   grp_fu_1694_p_ce;
output  [63:0] grp_fu_1698_p_din0;
output  [63:0] grp_fu_1698_p_din1;
input  [63:0] grp_fu_1698_p_dout0;
output   grp_fu_1698_p_ce;
output  [63:0] grp_fu_1702_p_din0;
output  [63:0] grp_fu_1702_p_din1;
input  [63:0] grp_fu_1702_p_dout0;
output   grp_fu_1702_p_ce;
output  [63:0] grp_fu_1706_p_din0;
output  [63:0] grp_fu_1706_p_din1;
input  [63:0] grp_fu_1706_p_dout0;
output   grp_fu_1706_p_ce;
output  [63:0] grp_fu_1710_p_din0;
output  [63:0] grp_fu_1710_p_din1;
input  [63:0] grp_fu_1710_p_dout0;
output   grp_fu_1710_p_ce;
output  [63:0] grp_fu_1714_p_din0;
output  [63:0] grp_fu_1714_p_din1;
input  [63:0] grp_fu_1714_p_dout0;
output   grp_fu_1714_p_ce;
output  [63:0] grp_fu_1718_p_din0;
output  [63:0] grp_fu_1718_p_din1;
input  [63:0] grp_fu_1718_p_dout0;
output   grp_fu_1718_p_ce;
output  [63:0] grp_fu_1722_p_din0;
output  [63:0] grp_fu_1722_p_din1;
input  [63:0] grp_fu_1722_p_dout0;
output   grp_fu_1722_p_ce;
output  [63:0] grp_fu_1726_p_din0;
output  [63:0] grp_fu_1726_p_din1;
input  [63:0] grp_fu_1726_p_dout0;
output   grp_fu_1726_p_ce;
output  [63:0] grp_fu_1730_p_din0;
output  [63:0] grp_fu_1730_p_din1;
input  [63:0] grp_fu_1730_p_dout0;
output   grp_fu_1730_p_ce;
output  [63:0] grp_fu_1734_p_din0;
output  [63:0] grp_fu_1734_p_din1;
input  [63:0] grp_fu_1734_p_dout0;
output   grp_fu_1734_p_ce;
output  [63:0] grp_fu_1738_p_din0;
output  [63:0] grp_fu_1738_p_din1;
input  [63:0] grp_fu_1738_p_dout0;
output   grp_fu_1738_p_ce;
output  [63:0] grp_fu_1742_p_din0;
output  [63:0] grp_fu_1742_p_din1;
input  [63:0] grp_fu_1742_p_dout0;
output   grp_fu_1742_p_ce;
output  [63:0] grp_fu_1746_p_din0;
output  [63:0] grp_fu_1746_p_din1;
input  [63:0] grp_fu_1746_p_dout0;
output   grp_fu_1746_p_ce;
output  [63:0] grp_fu_1750_p_din0;
output  [63:0] grp_fu_1750_p_din1;
input  [63:0] grp_fu_1750_p_dout0;
output   grp_fu_1750_p_ce;
output  [63:0] grp_fu_1754_p_din0;
output  [63:0] grp_fu_1754_p_din1;
input  [63:0] grp_fu_1754_p_dout0;
output   grp_fu_1754_p_ce;
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
reg   [0:0] icmp_ln93_reg_2386;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1652;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_1657;
reg   [63:0] reg_1662;
reg   [63:0] reg_1667;
reg   [63:0] reg_1672;
reg   [63:0] reg_1677;
reg   [63:0] reg_1682;
reg   [63:0] reg_1687;
reg   [63:0] reg_1692;
reg   [63:0] reg_1697;
reg   [63:0] reg_1702;
reg   [63:0] reg_1707;
reg   [63:0] reg_1712;
reg   [63:0] reg_1717;
reg   [63:0] reg_1722;
reg   [63:0] reg_1727;
reg   [63:0] reg_1732;
reg   [63:0] reg_1737;
reg   [63:0] reg_1742;
reg   [63:0] reg_1747;
reg   [63:0] reg_1752;
reg   [63:0] reg_1757;
reg   [63:0] reg_1762;
reg   [63:0] reg_1767;
reg   [63:0] reg_1772;
reg   [63:0] reg_1777;
reg   [63:0] reg_1782;
reg   [63:0] reg_1787;
reg   [63:0] reg_1792;
reg   [63:0] reg_1797;
reg   [63:0] reg_1802;
reg   [63:0] reg_1807;
reg   [6:0] i_12_reg_2380;
wire   [0:0] icmp_ln93_fu_1820_p2;
reg   [0:0] icmp_ln93_reg_2386_pp0_iter1_reg;
reg   [0:0] icmp_ln93_reg_2386_pp0_iter2_reg;
reg   [0:0] icmp_ln93_reg_2386_pp0_iter3_reg;
wire   [63:0] tmp_fu_1870_p35;
reg   [63:0] tmp_reg_2470;
wire   [5:0] trunc_ln95_fu_1942_p1;
reg   [5:0] trunc_ln95_reg_2506;
reg   [5:0] trunc_ln95_reg_2506_pp0_iter1_reg;
reg   [5:0] trunc_ln95_reg_2506_pp0_iter2_reg;
reg   [5:0] trunc_ln95_reg_2506_pp0_iter3_reg;
reg   [5:0] trunc_ln95_reg_2506_pp0_iter4_reg;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln92_fu_1842_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln95_fu_1952_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln95_1_fu_1979_p1;
wire   [63:0] zext_ln95_2_fu_2006_p1;
wire   [63:0] zext_ln95_3_fu_2033_p1;
reg   [6:0] i_fu_272;
wire   [6:0] add_ln93_fu_1826_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_12;
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
reg    delta_weights2_0_we1_local;
reg    delta_weights2_0_ce1_local;
reg   [7:0] delta_weights2_0_address1_local;
reg    delta_weights2_0_we0_local;
reg    delta_weights2_0_ce0_local;
reg   [7:0] delta_weights2_0_address0_local;
reg    delta_weights2_1_we1_local;
reg    delta_weights2_1_ce1_local;
reg   [7:0] delta_weights2_1_address1_local;
reg    delta_weights2_1_we0_local;
reg    delta_weights2_1_ce0_local;
reg   [7:0] delta_weights2_1_address0_local;
reg    delta_weights2_2_we1_local;
reg    delta_weights2_2_ce1_local;
reg   [7:0] delta_weights2_2_address1_local;
reg    delta_weights2_2_we0_local;
reg    delta_weights2_2_ce0_local;
reg   [7:0] delta_weights2_2_address0_local;
reg    delta_weights2_3_we1_local;
reg    delta_weights2_3_ce1_local;
reg   [7:0] delta_weights2_3_address1_local;
reg    delta_weights2_3_we0_local;
reg    delta_weights2_3_ce0_local;
reg   [7:0] delta_weights2_3_address0_local;
reg    delta_weights2_4_we1_local;
reg    delta_weights2_4_ce1_local;
reg   [7:0] delta_weights2_4_address1_local;
reg    delta_weights2_4_we0_local;
reg    delta_weights2_4_ce0_local;
reg   [7:0] delta_weights2_4_address0_local;
reg    delta_weights2_5_we1_local;
reg    delta_weights2_5_ce1_local;
reg   [7:0] delta_weights2_5_address1_local;
reg    delta_weights2_5_we0_local;
reg    delta_weights2_5_ce0_local;
reg   [7:0] delta_weights2_5_address0_local;
reg    delta_weights2_6_we1_local;
reg    delta_weights2_6_ce1_local;
reg   [7:0] delta_weights2_6_address1_local;
reg    delta_weights2_6_we0_local;
reg    delta_weights2_6_ce0_local;
reg   [7:0] delta_weights2_6_address0_local;
reg    delta_weights2_7_we1_local;
reg    delta_weights2_7_ce1_local;
reg   [7:0] delta_weights2_7_address1_local;
reg    delta_weights2_7_we0_local;
reg    delta_weights2_7_ce0_local;
reg   [7:0] delta_weights2_7_address0_local;
reg    delta_weights2_8_we1_local;
reg    delta_weights2_8_ce1_local;
reg   [7:0] delta_weights2_8_address1_local;
reg    delta_weights2_8_we0_local;
reg    delta_weights2_8_ce0_local;
reg   [7:0] delta_weights2_8_address0_local;
reg    delta_weights2_9_we1_local;
reg    delta_weights2_9_ce1_local;
reg   [7:0] delta_weights2_9_address1_local;
reg    delta_weights2_9_we0_local;
reg    delta_weights2_9_ce0_local;
reg   [7:0] delta_weights2_9_address0_local;
reg    delta_weights2_10_we1_local;
reg    delta_weights2_10_ce1_local;
reg   [7:0] delta_weights2_10_address1_local;
reg    delta_weights2_10_we0_local;
reg    delta_weights2_10_ce0_local;
reg   [7:0] delta_weights2_10_address0_local;
reg    delta_weights2_11_we1_local;
reg    delta_weights2_11_ce1_local;
reg   [7:0] delta_weights2_11_address1_local;
reg    delta_weights2_11_we0_local;
reg    delta_weights2_11_ce0_local;
reg   [7:0] delta_weights2_11_address0_local;
reg    delta_weights2_12_we1_local;
reg    delta_weights2_12_ce1_local;
reg   [7:0] delta_weights2_12_address1_local;
reg    delta_weights2_12_we0_local;
reg    delta_weights2_12_ce0_local;
reg   [7:0] delta_weights2_12_address0_local;
reg    delta_weights2_13_we1_local;
reg    delta_weights2_13_ce1_local;
reg   [7:0] delta_weights2_13_address1_local;
reg    delta_weights2_13_we0_local;
reg    delta_weights2_13_ce0_local;
reg   [7:0] delta_weights2_13_address0_local;
reg    delta_weights2_14_we1_local;
reg    delta_weights2_14_ce1_local;
reg   [7:0] delta_weights2_14_address1_local;
reg    delta_weights2_14_we0_local;
reg    delta_weights2_14_ce0_local;
reg   [7:0] delta_weights2_14_address0_local;
reg    delta_weights2_15_we1_local;
reg    delta_weights2_15_ce1_local;
reg   [7:0] delta_weights2_15_address1_local;
reg    delta_weights2_15_we0_local;
reg    delta_weights2_15_ce0_local;
reg   [7:0] delta_weights2_15_address0_local;
reg   [63:0] grp_fu_1524_p1;
reg   [63:0] grp_fu_1528_p1;
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
wire   [1:0] lshr_ln_fu_1832_p4;
wire   [63:0] tmp_fu_1870_p33;
wire   [3:0] tmp_fu_1870_p34;
wire   [7:0] shl_ln_fu_1945_p3;
wire   [7:0] or_ln_fu_1972_p3;
wire   [7:0] or_ln95_1_fu_1999_p3;
wire   [7:0] or_ln95_2_fu_2026_p3;
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
wire   [3:0] tmp_fu_1870_p1;
wire   [3:0] tmp_fu_1870_p3;
wire   [3:0] tmp_fu_1870_p5;
wire   [3:0] tmp_fu_1870_p7;
wire   [3:0] tmp_fu_1870_p9;
wire   [3:0] tmp_fu_1870_p11;
wire   [3:0] tmp_fu_1870_p13;
wire   [3:0] tmp_fu_1870_p15;
wire  signed [3:0] tmp_fu_1870_p17;
wire  signed [3:0] tmp_fu_1870_p19;
wire  signed [3:0] tmp_fu_1870_p21;
wire  signed [3:0] tmp_fu_1870_p23;
wire  signed [3:0] tmp_fu_1870_p25;
wire  signed [3:0] tmp_fu_1870_p27;
wire  signed [3:0] tmp_fu_1870_p29;
wire  signed [3:0] tmp_fu_1870_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_272 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U1133(.din0(last_activations_0_q0),.din1(last_activations_1_q0),.din2(last_activations_2_q0),.din3(last_activations_3_q0),.din4(last_activations_4_q0),.din5(last_activations_5_q0),.din6(last_activations_6_q0),.din7(last_activations_7_q0),.din8(last_activations_8_q0),.din9(last_activations_9_q0),.din10(last_activations_10_q0),.din11(last_activations_11_q0),.din12(last_activations_12_q0),.din13(last_activations_13_q0),.din14(last_activations_14_q0),.din15(last_activations_15_q0),.def(tmp_fu_1870_p33),.sel(tmp_fu_1870_p34),.dout(tmp_fu_1870_p35));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_1820_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_272 <= add_ln93_fu_1826_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_272 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_12_reg_2380 <= ap_sig_allocacmp_i_12;
        icmp_ln93_reg_2386 <= icmp_ln93_fu_1820_p2;
        icmp_ln93_reg_2386_pp0_iter1_reg <= icmp_ln93_reg_2386;
        icmp_ln93_reg_2386_pp0_iter2_reg <= icmp_ln93_reg_2386_pp0_iter1_reg;
        icmp_ln93_reg_2386_pp0_iter3_reg <= icmp_ln93_reg_2386_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_1652 <= grp_fu_1630_p_dout0;
        reg_1657 <= grp_fu_1634_p_dout0;
        reg_1662 <= grp_fu_1638_p_dout0;
        reg_1667 <= grp_fu_1642_p_dout0;
        reg_1672 <= grp_fu_1646_p_dout0;
        reg_1677 <= grp_fu_1650_p_dout0;
        reg_1682 <= grp_fu_1654_p_dout0;
        reg_1687 <= grp_fu_1658_p_dout0;
        reg_1692 <= grp_fu_1662_p_dout0;
        reg_1697 <= grp_fu_1666_p_dout0;
        reg_1702 <= grp_fu_1670_p_dout0;
        reg_1707 <= grp_fu_1674_p_dout0;
        reg_1712 <= grp_fu_1678_p_dout0;
        reg_1717 <= grp_fu_1682_p_dout0;
        reg_1722 <= grp_fu_1686_p_dout0;
        reg_1727 <= grp_fu_1690_p_dout0;
        reg_1732 <= grp_fu_1694_p_dout0;
        reg_1737 <= grp_fu_1698_p_dout0;
        reg_1742 <= grp_fu_1702_p_dout0;
        reg_1747 <= grp_fu_1706_p_dout0;
        reg_1752 <= grp_fu_1710_p_dout0;
        reg_1757 <= grp_fu_1714_p_dout0;
        reg_1762 <= grp_fu_1718_p_dout0;
        reg_1767 <= grp_fu_1722_p_dout0;
        reg_1772 <= grp_fu_1726_p_dout0;
        reg_1777 <= grp_fu_1730_p_dout0;
        reg_1782 <= grp_fu_1734_p_dout0;
        reg_1787 <= grp_fu_1738_p_dout0;
        reg_1792 <= grp_fu_1742_p_dout0;
        reg_1797 <= grp_fu_1746_p_dout0;
        reg_1802 <= grp_fu_1750_p_dout0;
        reg_1807 <= grp_fu_1754_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_reg_2470 <= tmp_fu_1870_p35;
        trunc_ln95_reg_2506 <= trunc_ln95_fu_1942_p1;
        trunc_ln95_reg_2506_pp0_iter1_reg <= trunc_ln95_reg_2506;
        trunc_ln95_reg_2506_pp0_iter2_reg <= trunc_ln95_reg_2506_pp0_iter1_reg;
        trunc_ln95_reg_2506_pp0_iter3_reg <= trunc_ln95_reg_2506_pp0_iter2_reg;
        trunc_ln95_reg_2506_pp0_iter4_reg <= trunc_ln95_reg_2506_pp0_iter3_reg;
    end
end
always @ (*) begin
    if (((icmp_ln93_reg_2386 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln93_reg_2386_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_12 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_12 = i_fu_272;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_0_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_0_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_0_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_0_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_0_ce0_local = 1'b1;
    end else begin
        delta_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_0_ce1_local = 1'b1;
    end else begin
        delta_weights2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_0_we0_local = 1'b1;
    end else begin
        delta_weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_0_we1_local = 1'b1;
    end else begin
        delta_weights2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_10_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_10_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_10_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_10_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_10_ce0_local = 1'b1;
    end else begin
        delta_weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_10_ce1_local = 1'b1;
    end else begin
        delta_weights2_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_10_we0_local = 1'b1;
    end else begin
        delta_weights2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_10_we1_local = 1'b1;
    end else begin
        delta_weights2_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_11_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_11_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_11_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_11_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_11_ce0_local = 1'b1;
    end else begin
        delta_weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_11_ce1_local = 1'b1;
    end else begin
        delta_weights2_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_11_we0_local = 1'b1;
    end else begin
        delta_weights2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_11_we1_local = 1'b1;
    end else begin
        delta_weights2_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_12_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_12_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_12_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_12_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_12_ce0_local = 1'b1;
    end else begin
        delta_weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_12_ce1_local = 1'b1;
    end else begin
        delta_weights2_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_12_we0_local = 1'b1;
    end else begin
        delta_weights2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_12_we1_local = 1'b1;
    end else begin
        delta_weights2_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_13_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_13_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_13_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_13_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_13_ce0_local = 1'b1;
    end else begin
        delta_weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_13_ce1_local = 1'b1;
    end else begin
        delta_weights2_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_13_we0_local = 1'b1;
    end else begin
        delta_weights2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_13_we1_local = 1'b1;
    end else begin
        delta_weights2_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_14_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_14_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_14_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_14_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_14_ce0_local = 1'b1;
    end else begin
        delta_weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_14_ce1_local = 1'b1;
    end else begin
        delta_weights2_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_14_we0_local = 1'b1;
    end else begin
        delta_weights2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_14_we1_local = 1'b1;
    end else begin
        delta_weights2_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_15_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_15_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_15_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_15_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_15_ce0_local = 1'b1;
    end else begin
        delta_weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_15_ce1_local = 1'b1;
    end else begin
        delta_weights2_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_15_we0_local = 1'b1;
    end else begin
        delta_weights2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_15_we1_local = 1'b1;
    end else begin
        delta_weights2_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_1_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_1_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_1_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_1_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_1_ce0_local = 1'b1;
    end else begin
        delta_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_1_ce1_local = 1'b1;
    end else begin
        delta_weights2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_1_we0_local = 1'b1;
    end else begin
        delta_weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_1_we1_local = 1'b1;
    end else begin
        delta_weights2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_2_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_2_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_2_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_2_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_2_ce0_local = 1'b1;
    end else begin
        delta_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_2_ce1_local = 1'b1;
    end else begin
        delta_weights2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_2_we0_local = 1'b1;
    end else begin
        delta_weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_2_we1_local = 1'b1;
    end else begin
        delta_weights2_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_3_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_3_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_3_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_3_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_3_ce0_local = 1'b1;
    end else begin
        delta_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_3_ce1_local = 1'b1;
    end else begin
        delta_weights2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_3_we0_local = 1'b1;
    end else begin
        delta_weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_3_we1_local = 1'b1;
    end else begin
        delta_weights2_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_4_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_4_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_4_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_4_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_4_ce0_local = 1'b1;
    end else begin
        delta_weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_4_ce1_local = 1'b1;
    end else begin
        delta_weights2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_4_we0_local = 1'b1;
    end else begin
        delta_weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_4_we1_local = 1'b1;
    end else begin
        delta_weights2_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_5_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_5_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_5_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_5_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_5_ce0_local = 1'b1;
    end else begin
        delta_weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_5_ce1_local = 1'b1;
    end else begin
        delta_weights2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_5_we0_local = 1'b1;
    end else begin
        delta_weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_5_we1_local = 1'b1;
    end else begin
        delta_weights2_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_6_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_6_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_6_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_6_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_6_ce0_local = 1'b1;
    end else begin
        delta_weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_6_ce1_local = 1'b1;
    end else begin
        delta_weights2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_6_we0_local = 1'b1;
    end else begin
        delta_weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_6_we1_local = 1'b1;
    end else begin
        delta_weights2_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_7_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_7_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_7_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_7_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_7_ce0_local = 1'b1;
    end else begin
        delta_weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_7_ce1_local = 1'b1;
    end else begin
        delta_weights2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_7_we0_local = 1'b1;
    end else begin
        delta_weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_7_we1_local = 1'b1;
    end else begin
        delta_weights2_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_8_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_8_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_8_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_8_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_8_ce0_local = 1'b1;
    end else begin
        delta_weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_8_ce1_local = 1'b1;
    end else begin
        delta_weights2_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_8_we0_local = 1'b1;
    end else begin
        delta_weights2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_8_we1_local = 1'b1;
    end else begin
        delta_weights2_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_9_address0_local = zext_ln95_3_fu_2033_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_9_address0_local = zext_ln95_1_fu_1979_p1;
    end else begin
        delta_weights2_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_9_address1_local = zext_ln95_2_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_9_address1_local = zext_ln95_fu_1952_p1;
    end else begin
        delta_weights2_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_9_ce0_local = 1'b1;
    end else begin
        delta_weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_9_ce1_local = 1'b1;
    end else begin
        delta_weights2_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_9_we0_local = 1'b1;
    end else begin
        delta_weights2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_9_we1_local = 1'b1;
    end else begin
        delta_weights2_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1524_p1 = output_difference_0_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1524_p1 = output_difference_0_load;
        end else begin
            grp_fu_1524_p1 = 'bx;
        end
    end else begin
        grp_fu_1524_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1528_p1 = output_difference_1_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1528_p1 = output_difference_1_load;
        end else begin
            grp_fu_1528_p1 = 'bx;
        end
    end else begin
        grp_fu_1528_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1532_p1 = output_difference_2_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1532_p1 = output_difference_2_load;
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
            grp_fu_1536_p1 = output_difference_3_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1536_p1 = output_difference_3_load;
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
            grp_fu_1540_p1 = output_difference_4_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1540_p1 = output_difference_4_load;
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
            grp_fu_1544_p1 = output_difference_5_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1544_p1 = output_difference_5_load;
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
            grp_fu_1548_p1 = output_difference_6_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1548_p1 = output_difference_6_load;
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
            grp_fu_1552_p1 = output_difference_7_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1552_p1 = output_difference_7_load;
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
            grp_fu_1556_p1 = output_difference_8_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1556_p1 = output_difference_8_load;
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
            grp_fu_1560_p1 = output_difference_9_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1560_p1 = output_difference_9_load;
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
            grp_fu_1564_p1 = output_difference_10_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1564_p1 = output_difference_10_load;
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
            grp_fu_1568_p1 = output_difference_11_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1568_p1 = output_difference_11_load;
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
            grp_fu_1572_p1 = output_difference_12_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1572_p1 = output_difference_12_load;
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
            grp_fu_1576_p1 = output_difference_13_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1576_p1 = output_difference_13_load;
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
            grp_fu_1580_p1 = output_difference_14_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1580_p1 = output_difference_14_load;
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
            grp_fu_1584_p1 = output_difference_15_load_2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1584_p1 = output_difference_15_load;
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
            grp_fu_1588_p1 = output_difference_0_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1588_p1 = output_difference_0_load_1;
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
            grp_fu_1592_p1 = output_difference_1_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1592_p1 = output_difference_1_load_1;
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
            grp_fu_1596_p1 = output_difference_2_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1596_p1 = output_difference_2_load_1;
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
            grp_fu_1600_p1 = output_difference_3_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1600_p1 = output_difference_3_load_1;
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
            grp_fu_1604_p1 = output_difference_4_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1604_p1 = output_difference_4_load_1;
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
            grp_fu_1608_p1 = output_difference_5_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1608_p1 = output_difference_5_load_1;
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
            grp_fu_1612_p1 = output_difference_6_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1612_p1 = output_difference_6_load_1;
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
            grp_fu_1616_p1 = output_difference_7_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1616_p1 = output_difference_7_load_1;
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
            grp_fu_1620_p1 = output_difference_8_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1620_p1 = output_difference_8_load_1;
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
            grp_fu_1624_p1 = output_difference_9_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1624_p1 = output_difference_9_load_1;
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
            grp_fu_1628_p1 = output_difference_10_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1628_p1 = output_difference_10_load_1;
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
            grp_fu_1632_p1 = output_difference_11_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1632_p1 = output_difference_11_load_1;
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
            grp_fu_1636_p1 = output_difference_12_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1636_p1 = output_difference_12_load_1;
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
            grp_fu_1640_p1 = output_difference_13_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1640_p1 = output_difference_13_load_1;
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
            grp_fu_1644_p1 = output_difference_14_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1644_p1 = output_difference_14_load_1;
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
            grp_fu_1648_p1 = output_difference_15_load_3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1648_p1 = output_difference_15_load_1;
        end else begin
            grp_fu_1648_p1 = 'bx;
        end
    end else begin
        grp_fu_1648_p1 = 'bx;
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
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
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
assign add_ln93_fu_1826_p2 = (ap_sig_allocacmp_i_12 + 7'd1);
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
assign delta_weights2_0_address0 = delta_weights2_0_address0_local;
assign delta_weights2_0_address1 = delta_weights2_0_address1_local;
assign delta_weights2_0_ce0 = delta_weights2_0_ce0_local;
assign delta_weights2_0_ce1 = delta_weights2_0_ce1_local;
assign delta_weights2_0_d0 = reg_1732;
assign delta_weights2_0_d1 = reg_1652;
assign delta_weights2_0_we0 = delta_weights2_0_we0_local;
assign delta_weights2_0_we1 = delta_weights2_0_we1_local;
assign delta_weights2_10_address0 = delta_weights2_10_address0_local;
assign delta_weights2_10_address1 = delta_weights2_10_address1_local;
assign delta_weights2_10_ce0 = delta_weights2_10_ce0_local;
assign delta_weights2_10_ce1 = delta_weights2_10_ce1_local;
assign delta_weights2_10_d0 = reg_1782;
assign delta_weights2_10_d1 = reg_1702;
assign delta_weights2_10_we0 = delta_weights2_10_we0_local;
assign delta_weights2_10_we1 = delta_weights2_10_we1_local;
assign delta_weights2_11_address0 = delta_weights2_11_address0_local;
assign delta_weights2_11_address1 = delta_weights2_11_address1_local;
assign delta_weights2_11_ce0 = delta_weights2_11_ce0_local;
assign delta_weights2_11_ce1 = delta_weights2_11_ce1_local;
assign delta_weights2_11_d0 = reg_1787;
assign delta_weights2_11_d1 = reg_1707;
assign delta_weights2_11_we0 = delta_weights2_11_we0_local;
assign delta_weights2_11_we1 = delta_weights2_11_we1_local;
assign delta_weights2_12_address0 = delta_weights2_12_address0_local;
assign delta_weights2_12_address1 = delta_weights2_12_address1_local;
assign delta_weights2_12_ce0 = delta_weights2_12_ce0_local;
assign delta_weights2_12_ce1 = delta_weights2_12_ce1_local;
assign delta_weights2_12_d0 = reg_1792;
assign delta_weights2_12_d1 = reg_1712;
assign delta_weights2_12_we0 = delta_weights2_12_we0_local;
assign delta_weights2_12_we1 = delta_weights2_12_we1_local;
assign delta_weights2_13_address0 = delta_weights2_13_address0_local;
assign delta_weights2_13_address1 = delta_weights2_13_address1_local;
assign delta_weights2_13_ce0 = delta_weights2_13_ce0_local;
assign delta_weights2_13_ce1 = delta_weights2_13_ce1_local;
assign delta_weights2_13_d0 = reg_1797;
assign delta_weights2_13_d1 = reg_1717;
assign delta_weights2_13_we0 = delta_weights2_13_we0_local;
assign delta_weights2_13_we1 = delta_weights2_13_we1_local;
assign delta_weights2_14_address0 = delta_weights2_14_address0_local;
assign delta_weights2_14_address1 = delta_weights2_14_address1_local;
assign delta_weights2_14_ce0 = delta_weights2_14_ce0_local;
assign delta_weights2_14_ce1 = delta_weights2_14_ce1_local;
assign delta_weights2_14_d0 = reg_1802;
assign delta_weights2_14_d1 = reg_1722;
assign delta_weights2_14_we0 = delta_weights2_14_we0_local;
assign delta_weights2_14_we1 = delta_weights2_14_we1_local;
assign delta_weights2_15_address0 = delta_weights2_15_address0_local;
assign delta_weights2_15_address1 = delta_weights2_15_address1_local;
assign delta_weights2_15_ce0 = delta_weights2_15_ce0_local;
assign delta_weights2_15_ce1 = delta_weights2_15_ce1_local;
assign delta_weights2_15_d0 = reg_1807;
assign delta_weights2_15_d1 = reg_1727;
assign delta_weights2_15_we0 = delta_weights2_15_we0_local;
assign delta_weights2_15_we1 = delta_weights2_15_we1_local;
assign delta_weights2_1_address0 = delta_weights2_1_address0_local;
assign delta_weights2_1_address1 = delta_weights2_1_address1_local;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_ce1 = delta_weights2_1_ce1_local;
assign delta_weights2_1_d0 = reg_1737;
assign delta_weights2_1_d1 = reg_1657;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_1_we1 = delta_weights2_1_we1_local;
assign delta_weights2_2_address0 = delta_weights2_2_address0_local;
assign delta_weights2_2_address1 = delta_weights2_2_address1_local;
assign delta_weights2_2_ce0 = delta_weights2_2_ce0_local;
assign delta_weights2_2_ce1 = delta_weights2_2_ce1_local;
assign delta_weights2_2_d0 = reg_1742;
assign delta_weights2_2_d1 = reg_1662;
assign delta_weights2_2_we0 = delta_weights2_2_we0_local;
assign delta_weights2_2_we1 = delta_weights2_2_we1_local;
assign delta_weights2_3_address0 = delta_weights2_3_address0_local;
assign delta_weights2_3_address1 = delta_weights2_3_address1_local;
assign delta_weights2_3_ce0 = delta_weights2_3_ce0_local;
assign delta_weights2_3_ce1 = delta_weights2_3_ce1_local;
assign delta_weights2_3_d0 = reg_1747;
assign delta_weights2_3_d1 = reg_1667;
assign delta_weights2_3_we0 = delta_weights2_3_we0_local;
assign delta_weights2_3_we1 = delta_weights2_3_we1_local;
assign delta_weights2_4_address0 = delta_weights2_4_address0_local;
assign delta_weights2_4_address1 = delta_weights2_4_address1_local;
assign delta_weights2_4_ce0 = delta_weights2_4_ce0_local;
assign delta_weights2_4_ce1 = delta_weights2_4_ce1_local;
assign delta_weights2_4_d0 = reg_1752;
assign delta_weights2_4_d1 = reg_1672;
assign delta_weights2_4_we0 = delta_weights2_4_we0_local;
assign delta_weights2_4_we1 = delta_weights2_4_we1_local;
assign delta_weights2_5_address0 = delta_weights2_5_address0_local;
assign delta_weights2_5_address1 = delta_weights2_5_address1_local;
assign delta_weights2_5_ce0 = delta_weights2_5_ce0_local;
assign delta_weights2_5_ce1 = delta_weights2_5_ce1_local;
assign delta_weights2_5_d0 = reg_1757;
assign delta_weights2_5_d1 = reg_1677;
assign delta_weights2_5_we0 = delta_weights2_5_we0_local;
assign delta_weights2_5_we1 = delta_weights2_5_we1_local;
assign delta_weights2_6_address0 = delta_weights2_6_address0_local;
assign delta_weights2_6_address1 = delta_weights2_6_address1_local;
assign delta_weights2_6_ce0 = delta_weights2_6_ce0_local;
assign delta_weights2_6_ce1 = delta_weights2_6_ce1_local;
assign delta_weights2_6_d0 = reg_1762;
assign delta_weights2_6_d1 = reg_1682;
assign delta_weights2_6_we0 = delta_weights2_6_we0_local;
assign delta_weights2_6_we1 = delta_weights2_6_we1_local;
assign delta_weights2_7_address0 = delta_weights2_7_address0_local;
assign delta_weights2_7_address1 = delta_weights2_7_address1_local;
assign delta_weights2_7_ce0 = delta_weights2_7_ce0_local;
assign delta_weights2_7_ce1 = delta_weights2_7_ce1_local;
assign delta_weights2_7_d0 = reg_1767;
assign delta_weights2_7_d1 = reg_1687;
assign delta_weights2_7_we0 = delta_weights2_7_we0_local;
assign delta_weights2_7_we1 = delta_weights2_7_we1_local;
assign delta_weights2_8_address0 = delta_weights2_8_address0_local;
assign delta_weights2_8_address1 = delta_weights2_8_address1_local;
assign delta_weights2_8_ce0 = delta_weights2_8_ce0_local;
assign delta_weights2_8_ce1 = delta_weights2_8_ce1_local;
assign delta_weights2_8_d0 = reg_1772;
assign delta_weights2_8_d1 = reg_1692;
assign delta_weights2_8_we0 = delta_weights2_8_we0_local;
assign delta_weights2_8_we1 = delta_weights2_8_we1_local;
assign delta_weights2_9_address0 = delta_weights2_9_address0_local;
assign delta_weights2_9_address1 = delta_weights2_9_address1_local;
assign delta_weights2_9_ce0 = delta_weights2_9_ce0_local;
assign delta_weights2_9_ce1 = delta_weights2_9_ce1_local;
assign delta_weights2_9_d0 = reg_1777;
assign delta_weights2_9_d1 = reg_1697;
assign delta_weights2_9_we0 = delta_weights2_9_we0_local;
assign delta_weights2_9_we1 = delta_weights2_9_we1_local;
assign grp_fu_1630_p_ce = 1'b1;
assign grp_fu_1630_p_din0 = tmp_reg_2470;
assign grp_fu_1630_p_din1 = grp_fu_1524_p1;
assign grp_fu_1634_p_ce = 1'b1;
assign grp_fu_1634_p_din0 = tmp_reg_2470;
assign grp_fu_1634_p_din1 = grp_fu_1528_p1;
assign grp_fu_1638_p_ce = 1'b1;
assign grp_fu_1638_p_din0 = tmp_reg_2470;
assign grp_fu_1638_p_din1 = grp_fu_1532_p1;
assign grp_fu_1642_p_ce = 1'b1;
assign grp_fu_1642_p_din0 = tmp_reg_2470;
assign grp_fu_1642_p_din1 = grp_fu_1536_p1;
assign grp_fu_1646_p_ce = 1'b1;
assign grp_fu_1646_p_din0 = tmp_reg_2470;
assign grp_fu_1646_p_din1 = grp_fu_1540_p1;
assign grp_fu_1650_p_ce = 1'b1;
assign grp_fu_1650_p_din0 = tmp_reg_2470;
assign grp_fu_1650_p_din1 = grp_fu_1544_p1;
assign grp_fu_1654_p_ce = 1'b1;
assign grp_fu_1654_p_din0 = tmp_reg_2470;
assign grp_fu_1654_p_din1 = grp_fu_1548_p1;
assign grp_fu_1658_p_ce = 1'b1;
assign grp_fu_1658_p_din0 = tmp_reg_2470;
assign grp_fu_1658_p_din1 = grp_fu_1552_p1;
assign grp_fu_1662_p_ce = 1'b1;
assign grp_fu_1662_p_din0 = tmp_reg_2470;
assign grp_fu_1662_p_din1 = grp_fu_1556_p1;
assign grp_fu_1666_p_ce = 1'b1;
assign grp_fu_1666_p_din0 = tmp_reg_2470;
assign grp_fu_1666_p_din1 = grp_fu_1560_p1;
assign grp_fu_1670_p_ce = 1'b1;
assign grp_fu_1670_p_din0 = tmp_reg_2470;
assign grp_fu_1670_p_din1 = grp_fu_1564_p1;
assign grp_fu_1674_p_ce = 1'b1;
assign grp_fu_1674_p_din0 = tmp_reg_2470;
assign grp_fu_1674_p_din1 = grp_fu_1568_p1;
assign grp_fu_1678_p_ce = 1'b1;
assign grp_fu_1678_p_din0 = tmp_reg_2470;
assign grp_fu_1678_p_din1 = grp_fu_1572_p1;
assign grp_fu_1682_p_ce = 1'b1;
assign grp_fu_1682_p_din0 = tmp_reg_2470;
assign grp_fu_1682_p_din1 = grp_fu_1576_p1;
assign grp_fu_1686_p_ce = 1'b1;
assign grp_fu_1686_p_din0 = tmp_reg_2470;
assign grp_fu_1686_p_din1 = grp_fu_1580_p1;
assign grp_fu_1690_p_ce = 1'b1;
assign grp_fu_1690_p_din0 = tmp_reg_2470;
assign grp_fu_1690_p_din1 = grp_fu_1584_p1;
assign grp_fu_1694_p_ce = 1'b1;
assign grp_fu_1694_p_din0 = tmp_reg_2470;
assign grp_fu_1694_p_din1 = grp_fu_1588_p1;
assign grp_fu_1698_p_ce = 1'b1;
assign grp_fu_1698_p_din0 = tmp_reg_2470;
assign grp_fu_1698_p_din1 = grp_fu_1592_p1;
assign grp_fu_1702_p_ce = 1'b1;
assign grp_fu_1702_p_din0 = tmp_reg_2470;
assign grp_fu_1702_p_din1 = grp_fu_1596_p1;
assign grp_fu_1706_p_ce = 1'b1;
assign grp_fu_1706_p_din0 = tmp_reg_2470;
assign grp_fu_1706_p_din1 = grp_fu_1600_p1;
assign grp_fu_1710_p_ce = 1'b1;
assign grp_fu_1710_p_din0 = tmp_reg_2470;
assign grp_fu_1710_p_din1 = grp_fu_1604_p1;
assign grp_fu_1714_p_ce = 1'b1;
assign grp_fu_1714_p_din0 = tmp_reg_2470;
assign grp_fu_1714_p_din1 = grp_fu_1608_p1;
assign grp_fu_1718_p_ce = 1'b1;
assign grp_fu_1718_p_din0 = tmp_reg_2470;
assign grp_fu_1718_p_din1 = grp_fu_1612_p1;
assign grp_fu_1722_p_ce = 1'b1;
assign grp_fu_1722_p_din0 = tmp_reg_2470;
assign grp_fu_1722_p_din1 = grp_fu_1616_p1;
assign grp_fu_1726_p_ce = 1'b1;
assign grp_fu_1726_p_din0 = tmp_reg_2470;
assign grp_fu_1726_p_din1 = grp_fu_1620_p1;
assign grp_fu_1730_p_ce = 1'b1;
assign grp_fu_1730_p_din0 = tmp_reg_2470;
assign grp_fu_1730_p_din1 = grp_fu_1624_p1;
assign grp_fu_1734_p_ce = 1'b1;
assign grp_fu_1734_p_din0 = tmp_reg_2470;
assign grp_fu_1734_p_din1 = grp_fu_1628_p1;
assign grp_fu_1738_p_ce = 1'b1;
assign grp_fu_1738_p_din0 = tmp_reg_2470;
assign grp_fu_1738_p_din1 = grp_fu_1632_p1;
assign grp_fu_1742_p_ce = 1'b1;
assign grp_fu_1742_p_din0 = tmp_reg_2470;
assign grp_fu_1742_p_din1 = grp_fu_1636_p1;
assign grp_fu_1746_p_ce = 1'b1;
assign grp_fu_1746_p_din0 = tmp_reg_2470;
assign grp_fu_1746_p_din1 = grp_fu_1640_p1;
assign grp_fu_1750_p_ce = 1'b1;
assign grp_fu_1750_p_din0 = tmp_reg_2470;
assign grp_fu_1750_p_din1 = grp_fu_1644_p1;
assign grp_fu_1754_p_ce = 1'b1;
assign grp_fu_1754_p_din0 = tmp_reg_2470;
assign grp_fu_1754_p_din1 = grp_fu_1648_p1;
assign icmp_ln93_fu_1820_p2 = ((ap_sig_allocacmp_i_12 == 7'd64) ? 1'b1 : 1'b0);
assign last_activations_0_address0 = zext_ln92_fu_1842_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_10_address0 = zext_ln92_fu_1842_p1;
assign last_activations_10_ce0 = last_activations_10_ce0_local;
assign last_activations_11_address0 = zext_ln92_fu_1842_p1;
assign last_activations_11_ce0 = last_activations_11_ce0_local;
assign last_activations_12_address0 = zext_ln92_fu_1842_p1;
assign last_activations_12_ce0 = last_activations_12_ce0_local;
assign last_activations_13_address0 = zext_ln92_fu_1842_p1;
assign last_activations_13_ce0 = last_activations_13_ce0_local;
assign last_activations_14_address0 = zext_ln92_fu_1842_p1;
assign last_activations_14_ce0 = last_activations_14_ce0_local;
assign last_activations_15_address0 = zext_ln92_fu_1842_p1;
assign last_activations_15_ce0 = last_activations_15_ce0_local;
assign last_activations_1_address0 = zext_ln92_fu_1842_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_2_address0 = zext_ln92_fu_1842_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_3_address0 = zext_ln92_fu_1842_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_4_address0 = zext_ln92_fu_1842_p1;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_5_address0 = zext_ln92_fu_1842_p1;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_6_address0 = zext_ln92_fu_1842_p1;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_7_address0 = zext_ln92_fu_1842_p1;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
assign last_activations_8_address0 = zext_ln92_fu_1842_p1;
assign last_activations_8_ce0 = last_activations_8_ce0_local;
assign last_activations_9_address0 = zext_ln92_fu_1842_p1;
assign last_activations_9_ce0 = last_activations_9_ce0_local;
assign lshr_ln_fu_1832_p4 = {{ap_sig_allocacmp_i_12[5:4]}};
assign or_ln95_1_fu_1999_p3 = {{trunc_ln95_reg_2506_pp0_iter4_reg}, {2'd2}};
assign or_ln95_2_fu_2026_p3 = {{trunc_ln95_reg_2506_pp0_iter4_reg}, {2'd3}};
assign or_ln_fu_1972_p3 = {{trunc_ln95_reg_2506_pp0_iter3_reg}, {2'd1}};
assign shl_ln_fu_1945_p3 = {{trunc_ln95_reg_2506_pp0_iter3_reg}, {2'd0}};
assign tmp_fu_1870_p33 = 'bx;
assign tmp_fu_1870_p34 = i_12_reg_2380[3:0];
assign trunc_ln95_fu_1942_p1 = i_12_reg_2380[5:0];
assign zext_ln92_fu_1842_p1 = lshr_ln_fu_1832_p4;
assign zext_ln95_1_fu_1979_p1 = or_ln_fu_1972_p3;
assign zext_ln95_2_fu_2006_p1 = or_ln95_1_fu_1999_p3;
assign zext_ln95_3_fu_2033_p1 = or_ln95_2_fu_2026_p3;
assign zext_ln95_fu_1952_p1 = shl_ln_fu_1945_p3;
endmodule 