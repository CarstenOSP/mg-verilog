
module backprop_get_delta_matrix_weights2_Pipeline_VITIS_LOOP_93_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_31_address0,delta_weights2_31_ce0,delta_weights2_31_we0,delta_weights2_31_d0,delta_weights2_31_address1,delta_weights2_31_ce1,delta_weights2_31_we1,delta_weights2_31_d1,delta_weights2_30_address0,delta_weights2_30_ce0,delta_weights2_30_we0,delta_weights2_30_d0,delta_weights2_30_address1,delta_weights2_30_ce1,delta_weights2_30_we1,delta_weights2_30_d1,delta_weights2_29_address0,delta_weights2_29_ce0,delta_weights2_29_we0,delta_weights2_29_d0,delta_weights2_29_address1,delta_weights2_29_ce1,delta_weights2_29_we1,delta_weights2_29_d1,delta_weights2_28_address0,delta_weights2_28_ce0,delta_weights2_28_we0,delta_weights2_28_d0,delta_weights2_28_address1,delta_weights2_28_ce1,delta_weights2_28_we1,delta_weights2_28_d1,delta_weights2_27_address0,delta_weights2_27_ce0,delta_weights2_27_we0,delta_weights2_27_d0,delta_weights2_27_address1,delta_weights2_27_ce1,delta_weights2_27_we1,delta_weights2_27_d1,delta_weights2_26_address0,delta_weights2_26_ce0,delta_weights2_26_we0,delta_weights2_26_d0,delta_weights2_26_address1,delta_weights2_26_ce1,delta_weights2_26_we1,delta_weights2_26_d1,delta_weights2_25_address0,delta_weights2_25_ce0,delta_weights2_25_we0,delta_weights2_25_d0,delta_weights2_25_address1,delta_weights2_25_ce1,delta_weights2_25_we1,delta_weights2_25_d1,delta_weights2_24_address0,delta_weights2_24_ce0,delta_weights2_24_we0,delta_weights2_24_d0,delta_weights2_24_address1,delta_weights2_24_ce1,delta_weights2_24_we1,delta_weights2_24_d1,delta_weights2_23_address0,delta_weights2_23_ce0,delta_weights2_23_we0,delta_weights2_23_d0,delta_weights2_23_address1,delta_weights2_23_ce1,delta_weights2_23_we1,delta_weights2_23_d1,delta_weights2_22_address0,delta_weights2_22_ce0,delta_weights2_22_we0,delta_weights2_22_d0,delta_weights2_22_address1,delta_weights2_22_ce1,delta_weights2_22_we1,delta_weights2_22_d1,delta_weights2_21_address0,delta_weights2_21_ce0,delta_weights2_21_we0,delta_weights2_21_d0,delta_weights2_21_address1,delta_weights2_21_ce1,delta_weights2_21_we1,delta_weights2_21_d1,delta_weights2_20_address0,delta_weights2_20_ce0,delta_weights2_20_we0,delta_weights2_20_d0,delta_weights2_20_address1,delta_weights2_20_ce1,delta_weights2_20_we1,delta_weights2_20_d1,delta_weights2_19_address0,delta_weights2_19_ce0,delta_weights2_19_we0,delta_weights2_19_d0,delta_weights2_19_address1,delta_weights2_19_ce1,delta_weights2_19_we1,delta_weights2_19_d1,delta_weights2_18_address0,delta_weights2_18_ce0,delta_weights2_18_we0,delta_weights2_18_d0,delta_weights2_18_address1,delta_weights2_18_ce1,delta_weights2_18_we1,delta_weights2_18_d1,delta_weights2_17_address0,delta_weights2_17_ce0,delta_weights2_17_we0,delta_weights2_17_d0,delta_weights2_17_address1,delta_weights2_17_ce1,delta_weights2_17_we1,delta_weights2_17_d1,delta_weights2_16_address0,delta_weights2_16_ce0,delta_weights2_16_we0,delta_weights2_16_d0,delta_weights2_16_address1,delta_weights2_16_ce1,delta_weights2_16_we1,delta_weights2_16_d1,delta_weights2_15_address0,delta_weights2_15_ce0,delta_weights2_15_we0,delta_weights2_15_d0,delta_weights2_15_address1,delta_weights2_15_ce1,delta_weights2_15_we1,delta_weights2_15_d1,delta_weights2_14_address0,delta_weights2_14_ce0,delta_weights2_14_we0,delta_weights2_14_d0,delta_weights2_14_address1,delta_weights2_14_ce1,delta_weights2_14_we1,delta_weights2_14_d1,delta_weights2_13_address0,delta_weights2_13_ce0,delta_weights2_13_we0,delta_weights2_13_d0,delta_weights2_13_address1,delta_weights2_13_ce1,delta_weights2_13_we1,delta_weights2_13_d1,delta_weights2_12_address0,delta_weights2_12_ce0,delta_weights2_12_we0,delta_weights2_12_d0,delta_weights2_12_address1,delta_weights2_12_ce1,delta_weights2_12_we1,delta_weights2_12_d1,delta_weights2_11_address0,delta_weights2_11_ce0,delta_weights2_11_we0,delta_weights2_11_d0,delta_weights2_11_address1,delta_weights2_11_ce1,delta_weights2_11_we1,delta_weights2_11_d1,delta_weights2_10_address0,delta_weights2_10_ce0,delta_weights2_10_we0,delta_weights2_10_d0,delta_weights2_10_address1,delta_weights2_10_ce1,delta_weights2_10_we1,delta_weights2_10_d1,delta_weights2_9_address0,delta_weights2_9_ce0,delta_weights2_9_we0,delta_weights2_9_d0,delta_weights2_9_address1,delta_weights2_9_ce1,delta_weights2_9_we1,delta_weights2_9_d1,delta_weights2_8_address0,delta_weights2_8_ce0,delta_weights2_8_we0,delta_weights2_8_d0,delta_weights2_8_address1,delta_weights2_8_ce1,delta_weights2_8_we1,delta_weights2_8_d1,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_7_address1,delta_weights2_7_ce1,delta_weights2_7_we1,delta_weights2_7_d1,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_6_address1,delta_weights2_6_ce1,delta_weights2_6_we1,delta_weights2_6_d1,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_5_address1,delta_weights2_5_ce1,delta_weights2_5_we1,delta_weights2_5_d1,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_4_address1,delta_weights2_4_ce1,delta_weights2_4_we1,delta_weights2_4_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,last_activations_address0,last_activations_ce0,last_activations_q0,output_difference_load,output_difference_load_1,output_difference_load_2,output_difference_load_3,output_difference_load_4,output_difference_load_5,output_difference_load_6,output_difference_load_7,output_difference_load_8,output_difference_load_9,output_difference_load_10,output_difference_load_11,output_difference_load_12,output_difference_load_13,output_difference_load_14,output_difference_load_15,output_difference_load_16,output_difference_load_17,output_difference_load_18,output_difference_load_19,output_difference_load_20,output_difference_load_21,output_difference_load_22,output_difference_load_23,output_difference_load_24,output_difference_load_25,output_difference_load_26,output_difference_load_27,output_difference_load_28,output_difference_load_29,output_difference_load_30,output_difference_load_31,output_difference_load_32,output_difference_load_33,output_difference_load_34,output_difference_load_35,output_difference_load_36,output_difference_load_37,output_difference_load_38,output_difference_load_39,output_difference_load_40,output_difference_load_41,output_difference_load_42,output_difference_load_43,output_difference_load_44,output_difference_load_45,output_difference_load_46,output_difference_load_47,output_difference_load_48,output_difference_load_49,output_difference_load_50,output_difference_load_51,output_difference_load_52,output_difference_load_53,output_difference_load_54,output_difference_load_55,output_difference_load_56,output_difference_load_57,output_difference_load_58,output_difference_load_59,output_difference_load_60,output_difference_load_61,output_difference_load_62,output_difference_load_63,grp_fu_1559_p_din0,grp_fu_1559_p_din1,grp_fu_1559_p_dout0,grp_fu_1559_p_ce,grp_fu_1563_p_din0,grp_fu_1563_p_din1,grp_fu_1563_p_dout0,grp_fu_1563_p_ce,grp_fu_1567_p_din0,grp_fu_1567_p_din1,grp_fu_1567_p_dout0,grp_fu_1567_p_ce,grp_fu_1571_p_din0,grp_fu_1571_p_din1,grp_fu_1571_p_dout0,grp_fu_1571_p_ce,grp_fu_1575_p_din0,grp_fu_1575_p_din1,grp_fu_1575_p_dout0,grp_fu_1575_p_ce,grp_fu_1579_p_din0,grp_fu_1579_p_din1,grp_fu_1579_p_dout0,grp_fu_1579_p_ce,grp_fu_1583_p_din0,grp_fu_1583_p_din1,grp_fu_1583_p_dout0,grp_fu_1583_p_ce,grp_fu_1587_p_din0,grp_fu_1587_p_din1,grp_fu_1587_p_dout0,grp_fu_1587_p_ce,grp_fu_1591_p_din0,grp_fu_1591_p_din1,grp_fu_1591_p_dout0,grp_fu_1591_p_ce,grp_fu_1595_p_din0,grp_fu_1595_p_din1,grp_fu_1595_p_dout0,grp_fu_1595_p_ce,grp_fu_1599_p_din0,grp_fu_1599_p_din1,grp_fu_1599_p_dout0,grp_fu_1599_p_ce,grp_fu_1603_p_din0,grp_fu_1603_p_din1,grp_fu_1603_p_dout0,grp_fu_1603_p_ce,grp_fu_1607_p_din0,grp_fu_1607_p_din1,grp_fu_1607_p_dout0,grp_fu_1607_p_ce,grp_fu_1611_p_din0,grp_fu_1611_p_din1,grp_fu_1611_p_dout0,grp_fu_1611_p_ce,grp_fu_1615_p_din0,grp_fu_1615_p_din1,grp_fu_1615_p_dout0,grp_fu_1615_p_ce,grp_fu_1619_p_din0,grp_fu_1619_p_din1,grp_fu_1619_p_dout0,grp_fu_1619_p_ce,grp_fu_1623_p_din0,grp_fu_1623_p_din1,grp_fu_1623_p_dout0,grp_fu_1623_p_ce,grp_fu_1627_p_din0,grp_fu_1627_p_din1,grp_fu_1627_p_dout0,grp_fu_1627_p_ce,grp_fu_1631_p_din0,grp_fu_1631_p_din1,grp_fu_1631_p_dout0,grp_fu_1631_p_ce,grp_fu_1635_p_din0,grp_fu_1635_p_din1,grp_fu_1635_p_dout0,grp_fu_1635_p_ce,grp_fu_1639_p_din0,grp_fu_1639_p_din1,grp_fu_1639_p_dout0,grp_fu_1639_p_ce,grp_fu_1643_p_din0,grp_fu_1643_p_din1,grp_fu_1643_p_dout0,grp_fu_1643_p_ce,grp_fu_1647_p_din0,grp_fu_1647_p_din1,grp_fu_1647_p_dout0,grp_fu_1647_p_ce,grp_fu_1651_p_din0,grp_fu_1651_p_din1,grp_fu_1651_p_dout0,grp_fu_1651_p_ce,grp_fu_1655_p_din0,grp_fu_1655_p_din1,grp_fu_1655_p_dout0,grp_fu_1655_p_ce,grp_fu_1659_p_din0,grp_fu_1659_p_din1,grp_fu_1659_p_dout0,grp_fu_1659_p_ce,grp_fu_1663_p_din0,grp_fu_1663_p_din1,grp_fu_1663_p_dout0,grp_fu_1663_p_ce,grp_fu_1667_p_din0,grp_fu_1667_p_din1,grp_fu_1667_p_dout0,grp_fu_1667_p_ce,grp_fu_1671_p_din0,grp_fu_1671_p_din1,grp_fu_1671_p_dout0,grp_fu_1671_p_ce,grp_fu_1675_p_din0,grp_fu_1675_p_din1,grp_fu_1675_p_dout0,grp_fu_1675_p_ce,grp_fu_1679_p_din0,grp_fu_1679_p_din1,grp_fu_1679_p_dout0,grp_fu_1679_p_ce,grp_fu_1683_p_din0,grp_fu_1683_p_din1,grp_fu_1683_p_dout0,grp_fu_1683_p_ce,grp_fu_1687_p_din0,grp_fu_1687_p_din1,grp_fu_1687_p_dout0,grp_fu_1687_p_ce,grp_fu_1691_p_din0,grp_fu_1691_p_din1,grp_fu_1691_p_dout0,grp_fu_1691_p_ce,grp_fu_1695_p_din0,grp_fu_1695_p_din1,grp_fu_1695_p_dout0,grp_fu_1695_p_ce,grp_fu_1699_p_din0,grp_fu_1699_p_din1,grp_fu_1699_p_dout0,grp_fu_1699_p_ce,grp_fu_1703_p_din0,grp_fu_1703_p_din1,grp_fu_1703_p_dout0,grp_fu_1703_p_ce,grp_fu_1707_p_din0,grp_fu_1707_p_din1,grp_fu_1707_p_dout0,grp_fu_1707_p_ce,grp_fu_1711_p_din0,grp_fu_1711_p_din1,grp_fu_1711_p_dout0,grp_fu_1711_p_ce,grp_fu_1715_p_din0,grp_fu_1715_p_din1,grp_fu_1715_p_dout0,grp_fu_1715_p_ce,grp_fu_1719_p_din0,grp_fu_1719_p_din1,grp_fu_1719_p_dout0,grp_fu_1719_p_ce,grp_fu_1723_p_din0,grp_fu_1723_p_din1,grp_fu_1723_p_dout0,grp_fu_1723_p_ce,grp_fu_1727_p_din0,grp_fu_1727_p_din1,grp_fu_1727_p_dout0,grp_fu_1727_p_ce,grp_fu_1731_p_din0,grp_fu_1731_p_din1,grp_fu_1731_p_dout0,grp_fu_1731_p_ce,grp_fu_1735_p_din0,grp_fu_1735_p_din1,grp_fu_1735_p_dout0,grp_fu_1735_p_ce,grp_fu_1739_p_din0,grp_fu_1739_p_din1,grp_fu_1739_p_dout0,grp_fu_1739_p_ce,grp_fu_1743_p_din0,grp_fu_1743_p_din1,grp_fu_1743_p_dout0,grp_fu_1743_p_ce,grp_fu_1747_p_din0,grp_fu_1747_p_din1,grp_fu_1747_p_dout0,grp_fu_1747_p_ce,grp_fu_1751_p_din0,grp_fu_1751_p_din1,grp_fu_1751_p_dout0,grp_fu_1751_p_ce,grp_fu_1755_p_din0,grp_fu_1755_p_din1,grp_fu_1755_p_dout0,grp_fu_1755_p_ce,grp_fu_1759_p_din0,grp_fu_1759_p_din1,grp_fu_1759_p_dout0,grp_fu_1759_p_ce,grp_fu_1763_p_din0,grp_fu_1763_p_din1,grp_fu_1763_p_dout0,grp_fu_1763_p_ce,grp_fu_1767_p_din0,grp_fu_1767_p_din1,grp_fu_1767_p_dout0,grp_fu_1767_p_ce,grp_fu_1771_p_din0,grp_fu_1771_p_din1,grp_fu_1771_p_dout0,grp_fu_1771_p_ce,grp_fu_1775_p_din0,grp_fu_1775_p_din1,grp_fu_1775_p_dout0,grp_fu_1775_p_ce,grp_fu_1779_p_din0,grp_fu_1779_p_din1,grp_fu_1779_p_dout0,grp_fu_1779_p_ce,grp_fu_1783_p_din0,grp_fu_1783_p_din1,grp_fu_1783_p_dout0,grp_fu_1783_p_ce,grp_fu_1787_p_din0,grp_fu_1787_p_din1,grp_fu_1787_p_dout0,grp_fu_1787_p_ce,grp_fu_1791_p_din0,grp_fu_1791_p_din1,grp_fu_1791_p_dout0,grp_fu_1791_p_ce,grp_fu_1795_p_din0,grp_fu_1795_p_din1,grp_fu_1795_p_dout0,grp_fu_1795_p_ce,grp_fu_1799_p_din0,grp_fu_1799_p_din1,grp_fu_1799_p_dout0,grp_fu_1799_p_ce,grp_fu_1803_p_din0,grp_fu_1803_p_din1,grp_fu_1803_p_dout0,grp_fu_1803_p_ce,grp_fu_1807_p_din0,grp_fu_1807_p_din1,grp_fu_1807_p_dout0,grp_fu_1807_p_ce,grp_fu_1811_p_din0,grp_fu_1811_p_din1,grp_fu_1811_p_dout0,grp_fu_1811_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] delta_weights2_31_address0;
output   delta_weights2_31_ce0;
output   delta_weights2_31_we0;
output  [63:0] delta_weights2_31_d0;
output  [6:0] delta_weights2_31_address1;
output   delta_weights2_31_ce1;
output   delta_weights2_31_we1;
output  [63:0] delta_weights2_31_d1;
output  [6:0] delta_weights2_30_address0;
output   delta_weights2_30_ce0;
output   delta_weights2_30_we0;
output  [63:0] delta_weights2_30_d0;
output  [6:0] delta_weights2_30_address1;
output   delta_weights2_30_ce1;
output   delta_weights2_30_we1;
output  [63:0] delta_weights2_30_d1;
output  [6:0] delta_weights2_29_address0;
output   delta_weights2_29_ce0;
output   delta_weights2_29_we0;
output  [63:0] delta_weights2_29_d0;
output  [6:0] delta_weights2_29_address1;
output   delta_weights2_29_ce1;
output   delta_weights2_29_we1;
output  [63:0] delta_weights2_29_d1;
output  [6:0] delta_weights2_28_address0;
output   delta_weights2_28_ce0;
output   delta_weights2_28_we0;
output  [63:0] delta_weights2_28_d0;
output  [6:0] delta_weights2_28_address1;
output   delta_weights2_28_ce1;
output   delta_weights2_28_we1;
output  [63:0] delta_weights2_28_d1;
output  [6:0] delta_weights2_27_address0;
output   delta_weights2_27_ce0;
output   delta_weights2_27_we0;
output  [63:0] delta_weights2_27_d0;
output  [6:0] delta_weights2_27_address1;
output   delta_weights2_27_ce1;
output   delta_weights2_27_we1;
output  [63:0] delta_weights2_27_d1;
output  [6:0] delta_weights2_26_address0;
output   delta_weights2_26_ce0;
output   delta_weights2_26_we0;
output  [63:0] delta_weights2_26_d0;
output  [6:0] delta_weights2_26_address1;
output   delta_weights2_26_ce1;
output   delta_weights2_26_we1;
output  [63:0] delta_weights2_26_d1;
output  [6:0] delta_weights2_25_address0;
output   delta_weights2_25_ce0;
output   delta_weights2_25_we0;
output  [63:0] delta_weights2_25_d0;
output  [6:0] delta_weights2_25_address1;
output   delta_weights2_25_ce1;
output   delta_weights2_25_we1;
output  [63:0] delta_weights2_25_d1;
output  [6:0] delta_weights2_24_address0;
output   delta_weights2_24_ce0;
output   delta_weights2_24_we0;
output  [63:0] delta_weights2_24_d0;
output  [6:0] delta_weights2_24_address1;
output   delta_weights2_24_ce1;
output   delta_weights2_24_we1;
output  [63:0] delta_weights2_24_d1;
output  [6:0] delta_weights2_23_address0;
output   delta_weights2_23_ce0;
output   delta_weights2_23_we0;
output  [63:0] delta_weights2_23_d0;
output  [6:0] delta_weights2_23_address1;
output   delta_weights2_23_ce1;
output   delta_weights2_23_we1;
output  [63:0] delta_weights2_23_d1;
output  [6:0] delta_weights2_22_address0;
output   delta_weights2_22_ce0;
output   delta_weights2_22_we0;
output  [63:0] delta_weights2_22_d0;
output  [6:0] delta_weights2_22_address1;
output   delta_weights2_22_ce1;
output   delta_weights2_22_we1;
output  [63:0] delta_weights2_22_d1;
output  [6:0] delta_weights2_21_address0;
output   delta_weights2_21_ce0;
output   delta_weights2_21_we0;
output  [63:0] delta_weights2_21_d0;
output  [6:0] delta_weights2_21_address1;
output   delta_weights2_21_ce1;
output   delta_weights2_21_we1;
output  [63:0] delta_weights2_21_d1;
output  [6:0] delta_weights2_20_address0;
output   delta_weights2_20_ce0;
output   delta_weights2_20_we0;
output  [63:0] delta_weights2_20_d0;
output  [6:0] delta_weights2_20_address1;
output   delta_weights2_20_ce1;
output   delta_weights2_20_we1;
output  [63:0] delta_weights2_20_d1;
output  [6:0] delta_weights2_19_address0;
output   delta_weights2_19_ce0;
output   delta_weights2_19_we0;
output  [63:0] delta_weights2_19_d0;
output  [6:0] delta_weights2_19_address1;
output   delta_weights2_19_ce1;
output   delta_weights2_19_we1;
output  [63:0] delta_weights2_19_d1;
output  [6:0] delta_weights2_18_address0;
output   delta_weights2_18_ce0;
output   delta_weights2_18_we0;
output  [63:0] delta_weights2_18_d0;
output  [6:0] delta_weights2_18_address1;
output   delta_weights2_18_ce1;
output   delta_weights2_18_we1;
output  [63:0] delta_weights2_18_d1;
output  [6:0] delta_weights2_17_address0;
output   delta_weights2_17_ce0;
output   delta_weights2_17_we0;
output  [63:0] delta_weights2_17_d0;
output  [6:0] delta_weights2_17_address1;
output   delta_weights2_17_ce1;
output   delta_weights2_17_we1;
output  [63:0] delta_weights2_17_d1;
output  [6:0] delta_weights2_16_address0;
output   delta_weights2_16_ce0;
output   delta_weights2_16_we0;
output  [63:0] delta_weights2_16_d0;
output  [6:0] delta_weights2_16_address1;
output   delta_weights2_16_ce1;
output   delta_weights2_16_we1;
output  [63:0] delta_weights2_16_d1;
output  [6:0] delta_weights2_15_address0;
output   delta_weights2_15_ce0;
output   delta_weights2_15_we0;
output  [63:0] delta_weights2_15_d0;
output  [6:0] delta_weights2_15_address1;
output   delta_weights2_15_ce1;
output   delta_weights2_15_we1;
output  [63:0] delta_weights2_15_d1;
output  [6:0] delta_weights2_14_address0;
output   delta_weights2_14_ce0;
output   delta_weights2_14_we0;
output  [63:0] delta_weights2_14_d0;
output  [6:0] delta_weights2_14_address1;
output   delta_weights2_14_ce1;
output   delta_weights2_14_we1;
output  [63:0] delta_weights2_14_d1;
output  [6:0] delta_weights2_13_address0;
output   delta_weights2_13_ce0;
output   delta_weights2_13_we0;
output  [63:0] delta_weights2_13_d0;
output  [6:0] delta_weights2_13_address1;
output   delta_weights2_13_ce1;
output   delta_weights2_13_we1;
output  [63:0] delta_weights2_13_d1;
output  [6:0] delta_weights2_12_address0;
output   delta_weights2_12_ce0;
output   delta_weights2_12_we0;
output  [63:0] delta_weights2_12_d0;
output  [6:0] delta_weights2_12_address1;
output   delta_weights2_12_ce1;
output   delta_weights2_12_we1;
output  [63:0] delta_weights2_12_d1;
output  [6:0] delta_weights2_11_address0;
output   delta_weights2_11_ce0;
output   delta_weights2_11_we0;
output  [63:0] delta_weights2_11_d0;
output  [6:0] delta_weights2_11_address1;
output   delta_weights2_11_ce1;
output   delta_weights2_11_we1;
output  [63:0] delta_weights2_11_d1;
output  [6:0] delta_weights2_10_address0;
output   delta_weights2_10_ce0;
output   delta_weights2_10_we0;
output  [63:0] delta_weights2_10_d0;
output  [6:0] delta_weights2_10_address1;
output   delta_weights2_10_ce1;
output   delta_weights2_10_we1;
output  [63:0] delta_weights2_10_d1;
output  [6:0] delta_weights2_9_address0;
output   delta_weights2_9_ce0;
output   delta_weights2_9_we0;
output  [63:0] delta_weights2_9_d0;
output  [6:0] delta_weights2_9_address1;
output   delta_weights2_9_ce1;
output   delta_weights2_9_we1;
output  [63:0] delta_weights2_9_d1;
output  [6:0] delta_weights2_8_address0;
output   delta_weights2_8_ce0;
output   delta_weights2_8_we0;
output  [63:0] delta_weights2_8_d0;
output  [6:0] delta_weights2_8_address1;
output   delta_weights2_8_ce1;
output   delta_weights2_8_we1;
output  [63:0] delta_weights2_8_d1;
output  [6:0] delta_weights2_7_address0;
output   delta_weights2_7_ce0;
output   delta_weights2_7_we0;
output  [63:0] delta_weights2_7_d0;
output  [6:0] delta_weights2_7_address1;
output   delta_weights2_7_ce1;
output   delta_weights2_7_we1;
output  [63:0] delta_weights2_7_d1;
output  [6:0] delta_weights2_6_address0;
output   delta_weights2_6_ce0;
output   delta_weights2_6_we0;
output  [63:0] delta_weights2_6_d0;
output  [6:0] delta_weights2_6_address1;
output   delta_weights2_6_ce1;
output   delta_weights2_6_we1;
output  [63:0] delta_weights2_6_d1;
output  [6:0] delta_weights2_5_address0;
output   delta_weights2_5_ce0;
output   delta_weights2_5_we0;
output  [63:0] delta_weights2_5_d0;
output  [6:0] delta_weights2_5_address1;
output   delta_weights2_5_ce1;
output   delta_weights2_5_we1;
output  [63:0] delta_weights2_5_d1;
output  [6:0] delta_weights2_4_address0;
output   delta_weights2_4_ce0;
output   delta_weights2_4_we0;
output  [63:0] delta_weights2_4_d0;
output  [6:0] delta_weights2_4_address1;
output   delta_weights2_4_ce1;
output   delta_weights2_4_we1;
output  [63:0] delta_weights2_4_d1;
output  [6:0] delta_weights2_3_address0;
output   delta_weights2_3_ce0;
output   delta_weights2_3_we0;
output  [63:0] delta_weights2_3_d0;
output  [6:0] delta_weights2_3_address1;
output   delta_weights2_3_ce1;
output   delta_weights2_3_we1;
output  [63:0] delta_weights2_3_d1;
output  [6:0] delta_weights2_2_address0;
output   delta_weights2_2_ce0;
output   delta_weights2_2_we0;
output  [63:0] delta_weights2_2_d0;
output  [6:0] delta_weights2_2_address1;
output   delta_weights2_2_ce1;
output   delta_weights2_2_we1;
output  [63:0] delta_weights2_2_d1;
output  [6:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [6:0] delta_weights2_1_address1;
output   delta_weights2_1_ce1;
output   delta_weights2_1_we1;
output  [63:0] delta_weights2_1_d1;
output  [6:0] delta_weights2_0_address0;
output   delta_weights2_0_ce0;
output   delta_weights2_0_we0;
output  [63:0] delta_weights2_0_d0;
output  [6:0] delta_weights2_0_address1;
output   delta_weights2_0_ce1;
output   delta_weights2_0_we1;
output  [63:0] delta_weights2_0_d1;
output  [5:0] last_activations_address0;
output   last_activations_ce0;
input  [63:0] last_activations_q0;
input  [63:0] output_difference_load;
input  [63:0] output_difference_load_1;
input  [63:0] output_difference_load_2;
input  [63:0] output_difference_load_3;
input  [63:0] output_difference_load_4;
input  [63:0] output_difference_load_5;
input  [63:0] output_difference_load_6;
input  [63:0] output_difference_load_7;
input  [63:0] output_difference_load_8;
input  [63:0] output_difference_load_9;
input  [63:0] output_difference_load_10;
input  [63:0] output_difference_load_11;
input  [63:0] output_difference_load_12;
input  [63:0] output_difference_load_13;
input  [63:0] output_difference_load_14;
input  [63:0] output_difference_load_15;
input  [63:0] output_difference_load_16;
input  [63:0] output_difference_load_17;
input  [63:0] output_difference_load_18;
input  [63:0] output_difference_load_19;
input  [63:0] output_difference_load_20;
input  [63:0] output_difference_load_21;
input  [63:0] output_difference_load_22;
input  [63:0] output_difference_load_23;
input  [63:0] output_difference_load_24;
input  [63:0] output_difference_load_25;
input  [63:0] output_difference_load_26;
input  [63:0] output_difference_load_27;
input  [63:0] output_difference_load_28;
input  [63:0] output_difference_load_29;
input  [63:0] output_difference_load_30;
input  [63:0] output_difference_load_31;
input  [63:0] output_difference_load_32;
input  [63:0] output_difference_load_33;
input  [63:0] output_difference_load_34;
input  [63:0] output_difference_load_35;
input  [63:0] output_difference_load_36;
input  [63:0] output_difference_load_37;
input  [63:0] output_difference_load_38;
input  [63:0] output_difference_load_39;
input  [63:0] output_difference_load_40;
input  [63:0] output_difference_load_41;
input  [63:0] output_difference_load_42;
input  [63:0] output_difference_load_43;
input  [63:0] output_difference_load_44;
input  [63:0] output_difference_load_45;
input  [63:0] output_difference_load_46;
input  [63:0] output_difference_load_47;
input  [63:0] output_difference_load_48;
input  [63:0] output_difference_load_49;
input  [63:0] output_difference_load_50;
input  [63:0] output_difference_load_51;
input  [63:0] output_difference_load_52;
input  [63:0] output_difference_load_53;
input  [63:0] output_difference_load_54;
input  [63:0] output_difference_load_55;
input  [63:0] output_difference_load_56;
input  [63:0] output_difference_load_57;
input  [63:0] output_difference_load_58;
input  [63:0] output_difference_load_59;
input  [63:0] output_difference_load_60;
input  [63:0] output_difference_load_61;
input  [63:0] output_difference_load_62;
input  [63:0] output_difference_load_63;
output  [63:0] grp_fu_1559_p_din0;
output  [63:0] grp_fu_1559_p_din1;
input  [63:0] grp_fu_1559_p_dout0;
output   grp_fu_1559_p_ce;
output  [63:0] grp_fu_1563_p_din0;
output  [63:0] grp_fu_1563_p_din1;
input  [63:0] grp_fu_1563_p_dout0;
output   grp_fu_1563_p_ce;
output  [63:0] grp_fu_1567_p_din0;
output  [63:0] grp_fu_1567_p_din1;
input  [63:0] grp_fu_1567_p_dout0;
output   grp_fu_1567_p_ce;
output  [63:0] grp_fu_1571_p_din0;
output  [63:0] grp_fu_1571_p_din1;
input  [63:0] grp_fu_1571_p_dout0;
output   grp_fu_1571_p_ce;
output  [63:0] grp_fu_1575_p_din0;
output  [63:0] grp_fu_1575_p_din1;
input  [63:0] grp_fu_1575_p_dout0;
output   grp_fu_1575_p_ce;
output  [63:0] grp_fu_1579_p_din0;
output  [63:0] grp_fu_1579_p_din1;
input  [63:0] grp_fu_1579_p_dout0;
output   grp_fu_1579_p_ce;
output  [63:0] grp_fu_1583_p_din0;
output  [63:0] grp_fu_1583_p_din1;
input  [63:0] grp_fu_1583_p_dout0;
output   grp_fu_1583_p_ce;
output  [63:0] grp_fu_1587_p_din0;
output  [63:0] grp_fu_1587_p_din1;
input  [63:0] grp_fu_1587_p_dout0;
output   grp_fu_1587_p_ce;
output  [63:0] grp_fu_1591_p_din0;
output  [63:0] grp_fu_1591_p_din1;
input  [63:0] grp_fu_1591_p_dout0;
output   grp_fu_1591_p_ce;
output  [63:0] grp_fu_1595_p_din0;
output  [63:0] grp_fu_1595_p_din1;
input  [63:0] grp_fu_1595_p_dout0;
output   grp_fu_1595_p_ce;
output  [63:0] grp_fu_1599_p_din0;
output  [63:0] grp_fu_1599_p_din1;
input  [63:0] grp_fu_1599_p_dout0;
output   grp_fu_1599_p_ce;
output  [63:0] grp_fu_1603_p_din0;
output  [63:0] grp_fu_1603_p_din1;
input  [63:0] grp_fu_1603_p_dout0;
output   grp_fu_1603_p_ce;
output  [63:0] grp_fu_1607_p_din0;
output  [63:0] grp_fu_1607_p_din1;
input  [63:0] grp_fu_1607_p_dout0;
output   grp_fu_1607_p_ce;
output  [63:0] grp_fu_1611_p_din0;
output  [63:0] grp_fu_1611_p_din1;
input  [63:0] grp_fu_1611_p_dout0;
output   grp_fu_1611_p_ce;
output  [63:0] grp_fu_1615_p_din0;
output  [63:0] grp_fu_1615_p_din1;
input  [63:0] grp_fu_1615_p_dout0;
output   grp_fu_1615_p_ce;
output  [63:0] grp_fu_1619_p_din0;
output  [63:0] grp_fu_1619_p_din1;
input  [63:0] grp_fu_1619_p_dout0;
output   grp_fu_1619_p_ce;
output  [63:0] grp_fu_1623_p_din0;
output  [63:0] grp_fu_1623_p_din1;
input  [63:0] grp_fu_1623_p_dout0;
output   grp_fu_1623_p_ce;
output  [63:0] grp_fu_1627_p_din0;
output  [63:0] grp_fu_1627_p_din1;
input  [63:0] grp_fu_1627_p_dout0;
output   grp_fu_1627_p_ce;
output  [63:0] grp_fu_1631_p_din0;
output  [63:0] grp_fu_1631_p_din1;
input  [63:0] grp_fu_1631_p_dout0;
output   grp_fu_1631_p_ce;
output  [63:0] grp_fu_1635_p_din0;
output  [63:0] grp_fu_1635_p_din1;
input  [63:0] grp_fu_1635_p_dout0;
output   grp_fu_1635_p_ce;
output  [63:0] grp_fu_1639_p_din0;
output  [63:0] grp_fu_1639_p_din1;
input  [63:0] grp_fu_1639_p_dout0;
output   grp_fu_1639_p_ce;
output  [63:0] grp_fu_1643_p_din0;
output  [63:0] grp_fu_1643_p_din1;
input  [63:0] grp_fu_1643_p_dout0;
output   grp_fu_1643_p_ce;
output  [63:0] grp_fu_1647_p_din0;
output  [63:0] grp_fu_1647_p_din1;
input  [63:0] grp_fu_1647_p_dout0;
output   grp_fu_1647_p_ce;
output  [63:0] grp_fu_1651_p_din0;
output  [63:0] grp_fu_1651_p_din1;
input  [63:0] grp_fu_1651_p_dout0;
output   grp_fu_1651_p_ce;
output  [63:0] grp_fu_1655_p_din0;
output  [63:0] grp_fu_1655_p_din1;
input  [63:0] grp_fu_1655_p_dout0;
output   grp_fu_1655_p_ce;
output  [63:0] grp_fu_1659_p_din0;
output  [63:0] grp_fu_1659_p_din1;
input  [63:0] grp_fu_1659_p_dout0;
output   grp_fu_1659_p_ce;
output  [63:0] grp_fu_1663_p_din0;
output  [63:0] grp_fu_1663_p_din1;
input  [63:0] grp_fu_1663_p_dout0;
output   grp_fu_1663_p_ce;
output  [63:0] grp_fu_1667_p_din0;
output  [63:0] grp_fu_1667_p_din1;
input  [63:0] grp_fu_1667_p_dout0;
output   grp_fu_1667_p_ce;
output  [63:0] grp_fu_1671_p_din0;
output  [63:0] grp_fu_1671_p_din1;
input  [63:0] grp_fu_1671_p_dout0;
output   grp_fu_1671_p_ce;
output  [63:0] grp_fu_1675_p_din0;
output  [63:0] grp_fu_1675_p_din1;
input  [63:0] grp_fu_1675_p_dout0;
output   grp_fu_1675_p_ce;
output  [63:0] grp_fu_1679_p_din0;
output  [63:0] grp_fu_1679_p_din1;
input  [63:0] grp_fu_1679_p_dout0;
output   grp_fu_1679_p_ce;
output  [63:0] grp_fu_1683_p_din0;
output  [63:0] grp_fu_1683_p_din1;
input  [63:0] grp_fu_1683_p_dout0;
output   grp_fu_1683_p_ce;
output  [63:0] grp_fu_1687_p_din0;
output  [63:0] grp_fu_1687_p_din1;
input  [63:0] grp_fu_1687_p_dout0;
output   grp_fu_1687_p_ce;
output  [63:0] grp_fu_1691_p_din0;
output  [63:0] grp_fu_1691_p_din1;
input  [63:0] grp_fu_1691_p_dout0;
output   grp_fu_1691_p_ce;
output  [63:0] grp_fu_1695_p_din0;
output  [63:0] grp_fu_1695_p_din1;
input  [63:0] grp_fu_1695_p_dout0;
output   grp_fu_1695_p_ce;
output  [63:0] grp_fu_1699_p_din0;
output  [63:0] grp_fu_1699_p_din1;
input  [63:0] grp_fu_1699_p_dout0;
output   grp_fu_1699_p_ce;
output  [63:0] grp_fu_1703_p_din0;
output  [63:0] grp_fu_1703_p_din1;
input  [63:0] grp_fu_1703_p_dout0;
output   grp_fu_1703_p_ce;
output  [63:0] grp_fu_1707_p_din0;
output  [63:0] grp_fu_1707_p_din1;
input  [63:0] grp_fu_1707_p_dout0;
output   grp_fu_1707_p_ce;
output  [63:0] grp_fu_1711_p_din0;
output  [63:0] grp_fu_1711_p_din1;
input  [63:0] grp_fu_1711_p_dout0;
output   grp_fu_1711_p_ce;
output  [63:0] grp_fu_1715_p_din0;
output  [63:0] grp_fu_1715_p_din1;
input  [63:0] grp_fu_1715_p_dout0;
output   grp_fu_1715_p_ce;
output  [63:0] grp_fu_1719_p_din0;
output  [63:0] grp_fu_1719_p_din1;
input  [63:0] grp_fu_1719_p_dout0;
output   grp_fu_1719_p_ce;
output  [63:0] grp_fu_1723_p_din0;
output  [63:0] grp_fu_1723_p_din1;
input  [63:0] grp_fu_1723_p_dout0;
output   grp_fu_1723_p_ce;
output  [63:0] grp_fu_1727_p_din0;
output  [63:0] grp_fu_1727_p_din1;
input  [63:0] grp_fu_1727_p_dout0;
output   grp_fu_1727_p_ce;
output  [63:0] grp_fu_1731_p_din0;
output  [63:0] grp_fu_1731_p_din1;
input  [63:0] grp_fu_1731_p_dout0;
output   grp_fu_1731_p_ce;
output  [63:0] grp_fu_1735_p_din0;
output  [63:0] grp_fu_1735_p_din1;
input  [63:0] grp_fu_1735_p_dout0;
output   grp_fu_1735_p_ce;
output  [63:0] grp_fu_1739_p_din0;
output  [63:0] grp_fu_1739_p_din1;
input  [63:0] grp_fu_1739_p_dout0;
output   grp_fu_1739_p_ce;
output  [63:0] grp_fu_1743_p_din0;
output  [63:0] grp_fu_1743_p_din1;
input  [63:0] grp_fu_1743_p_dout0;
output   grp_fu_1743_p_ce;
output  [63:0] grp_fu_1747_p_din0;
output  [63:0] grp_fu_1747_p_din1;
input  [63:0] grp_fu_1747_p_dout0;
output   grp_fu_1747_p_ce;
output  [63:0] grp_fu_1751_p_din0;
output  [63:0] grp_fu_1751_p_din1;
input  [63:0] grp_fu_1751_p_dout0;
output   grp_fu_1751_p_ce;
output  [63:0] grp_fu_1755_p_din0;
output  [63:0] grp_fu_1755_p_din1;
input  [63:0] grp_fu_1755_p_dout0;
output   grp_fu_1755_p_ce;
output  [63:0] grp_fu_1759_p_din0;
output  [63:0] grp_fu_1759_p_din1;
input  [63:0] grp_fu_1759_p_dout0;
output   grp_fu_1759_p_ce;
output  [63:0] grp_fu_1763_p_din0;
output  [63:0] grp_fu_1763_p_din1;
input  [63:0] grp_fu_1763_p_dout0;
output   grp_fu_1763_p_ce;
output  [63:0] grp_fu_1767_p_din0;
output  [63:0] grp_fu_1767_p_din1;
input  [63:0] grp_fu_1767_p_dout0;
output   grp_fu_1767_p_ce;
output  [63:0] grp_fu_1771_p_din0;
output  [63:0] grp_fu_1771_p_din1;
input  [63:0] grp_fu_1771_p_dout0;
output   grp_fu_1771_p_ce;
output  [63:0] grp_fu_1775_p_din0;
output  [63:0] grp_fu_1775_p_din1;
input  [63:0] grp_fu_1775_p_dout0;
output   grp_fu_1775_p_ce;
output  [63:0] grp_fu_1779_p_din0;
output  [63:0] grp_fu_1779_p_din1;
input  [63:0] grp_fu_1779_p_dout0;
output   grp_fu_1779_p_ce;
output  [63:0] grp_fu_1783_p_din0;
output  [63:0] grp_fu_1783_p_din1;
input  [63:0] grp_fu_1783_p_dout0;
output   grp_fu_1783_p_ce;
output  [63:0] grp_fu_1787_p_din0;
output  [63:0] grp_fu_1787_p_din1;
input  [63:0] grp_fu_1787_p_dout0;
output   grp_fu_1787_p_ce;
output  [63:0] grp_fu_1791_p_din0;
output  [63:0] grp_fu_1791_p_din1;
input  [63:0] grp_fu_1791_p_dout0;
output   grp_fu_1791_p_ce;
output  [63:0] grp_fu_1795_p_din0;
output  [63:0] grp_fu_1795_p_din1;
input  [63:0] grp_fu_1795_p_dout0;
output   grp_fu_1795_p_ce;
output  [63:0] grp_fu_1799_p_din0;
output  [63:0] grp_fu_1799_p_din1;
input  [63:0] grp_fu_1799_p_dout0;
output   grp_fu_1799_p_ce;
output  [63:0] grp_fu_1803_p_din0;
output  [63:0] grp_fu_1803_p_din1;
input  [63:0] grp_fu_1803_p_dout0;
output   grp_fu_1803_p_ce;
output  [63:0] grp_fu_1807_p_din0;
output  [63:0] grp_fu_1807_p_din1;
input  [63:0] grp_fu_1807_p_dout0;
output   grp_fu_1807_p_ce;
output  [63:0] grp_fu_1811_p_din0;
output  [63:0] grp_fu_1811_p_din1;
input  [63:0] grp_fu_1811_p_dout0;
output   grp_fu_1811_p_ce;
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
wire   [0:0] icmp_ln93_fu_1691_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_12_reg_2128;
reg   [6:0] i_12_reg_2128_pp0_iter1_reg;
reg   [6:0] i_12_reg_2128_pp0_iter2_reg;
reg   [6:0] i_12_reg_2128_pp0_iter3_reg;
reg   [6:0] i_12_reg_2128_pp0_iter4_reg;
reg   [6:0] i_12_reg_2128_pp0_iter5_reg;
reg   [6:0] i_12_reg_2128_pp0_iter6_reg;
reg   [6:0] i_12_reg_2128_pp0_iter7_reg;
reg   [6:0] i_12_reg_2128_pp0_iter8_reg;
reg   [63:0] last_activations_load_reg_2143;
reg   [63:0] mul_reg_2211;
reg   [63:0] mul_1_reg_2216;
reg   [63:0] mul_2_reg_2221;
reg   [63:0] mul_3_reg_2226;
reg   [63:0] mul_4_reg_2231;
reg   [63:0] mul_5_reg_2236;
reg   [63:0] mul_6_reg_2241;
reg   [63:0] mul_7_reg_2246;
reg   [63:0] mul_8_reg_2251;
reg   [63:0] mul_9_reg_2256;
reg   [63:0] mul_10_reg_2261;
reg   [63:0] mul_11_reg_2266;
reg   [63:0] mul_12_reg_2271;
reg   [63:0] mul_13_reg_2276;
reg   [63:0] mul_14_reg_2281;
reg   [63:0] mul_15_reg_2286;
reg   [63:0] mul_16_reg_2291;
reg   [63:0] mul_17_reg_2296;
reg   [63:0] mul_18_reg_2301;
reg   [63:0] mul_19_reg_2306;
reg   [63:0] mul_20_reg_2311;
reg   [63:0] mul_21_reg_2316;
reg   [63:0] mul_22_reg_2321;
reg   [63:0] mul_23_reg_2326;
reg   [63:0] mul_24_reg_2331;
reg   [63:0] mul_25_reg_2336;
reg   [63:0] mul_26_reg_2341;
reg   [63:0] mul_27_reg_2346;
reg   [63:0] mul_28_reg_2351;
reg   [63:0] mul_29_reg_2356;
reg   [63:0] mul_30_reg_2361;
reg   [63:0] mul_31_reg_2366;
reg   [63:0] mul_32_reg_2371;
reg   [63:0] mul_33_reg_2376;
reg   [63:0] mul_34_reg_2381;
reg   [63:0] mul_35_reg_2386;
reg   [63:0] mul_36_reg_2391;
reg   [63:0] mul_37_reg_2396;
reg   [63:0] mul_38_reg_2401;
reg   [63:0] mul_39_reg_2406;
reg   [63:0] mul_40_reg_2411;
reg   [63:0] mul_41_reg_2416;
reg   [63:0] mul_42_reg_2421;
reg   [63:0] mul_43_reg_2426;
reg   [63:0] mul_44_reg_2431;
reg   [63:0] mul_45_reg_2436;
reg   [63:0] mul_46_reg_2441;
reg   [63:0] mul_47_reg_2446;
reg   [63:0] mul_48_reg_2451;
reg   [63:0] mul_49_reg_2456;
reg   [63:0] mul_50_reg_2461;
reg   [63:0] mul_51_reg_2466;
reg   [63:0] mul_52_reg_2471;
reg   [63:0] mul_53_reg_2476;
reg   [63:0] mul_54_reg_2481;
reg   [63:0] mul_55_reg_2486;
reg   [63:0] mul_56_reg_2491;
reg   [63:0] mul_57_reg_2496;
reg   [63:0] mul_58_reg_2501;
reg   [63:0] mul_59_reg_2506;
reg   [63:0] mul_60_reg_2511;
reg   [63:0] mul_61_reg_2516;
reg   [63:0] mul_62_reg_2521;
reg   [63:0] mul_63_reg_2526;
wire   [63:0] zext_ln93_fu_1703_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln95_fu_1721_p1;
wire   [63:0] zext_ln95_1_fu_1765_p1;
reg   [6:0] i_fu_226;
wire   [6:0] add_ln93_fu_1697_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_12;
reg    last_activations_ce0_local;
reg    delta_weights2_0_we1_local;
reg    delta_weights2_0_ce1_local;
reg    delta_weights2_0_we0_local;
reg    delta_weights2_0_ce0_local;
reg    delta_weights2_1_we1_local;
reg    delta_weights2_1_ce1_local;
reg    delta_weights2_1_we0_local;
reg    delta_weights2_1_ce0_local;
reg    delta_weights2_2_we1_local;
reg    delta_weights2_2_ce1_local;
reg    delta_weights2_2_we0_local;
reg    delta_weights2_2_ce0_local;
reg    delta_weights2_3_we1_local;
reg    delta_weights2_3_ce1_local;
reg    delta_weights2_3_we0_local;
reg    delta_weights2_3_ce0_local;
reg    delta_weights2_4_we1_local;
reg    delta_weights2_4_ce1_local;
reg    delta_weights2_4_we0_local;
reg    delta_weights2_4_ce0_local;
reg    delta_weights2_5_we1_local;
reg    delta_weights2_5_ce1_local;
reg    delta_weights2_5_we0_local;
reg    delta_weights2_5_ce0_local;
reg    delta_weights2_6_we1_local;
reg    delta_weights2_6_ce1_local;
reg    delta_weights2_6_we0_local;
reg    delta_weights2_6_ce0_local;
reg    delta_weights2_7_we1_local;
reg    delta_weights2_7_ce1_local;
reg    delta_weights2_7_we0_local;
reg    delta_weights2_7_ce0_local;
reg    delta_weights2_8_we1_local;
reg    delta_weights2_8_ce1_local;
reg    delta_weights2_8_we0_local;
reg    delta_weights2_8_ce0_local;
reg    delta_weights2_9_we1_local;
reg    delta_weights2_9_ce1_local;
reg    delta_weights2_9_we0_local;
reg    delta_weights2_9_ce0_local;
reg    delta_weights2_10_we1_local;
reg    delta_weights2_10_ce1_local;
reg    delta_weights2_10_we0_local;
reg    delta_weights2_10_ce0_local;
reg    delta_weights2_11_we1_local;
reg    delta_weights2_11_ce1_local;
reg    delta_weights2_11_we0_local;
reg    delta_weights2_11_ce0_local;
reg    delta_weights2_12_we1_local;
reg    delta_weights2_12_ce1_local;
reg    delta_weights2_12_we0_local;
reg    delta_weights2_12_ce0_local;
reg    delta_weights2_13_we1_local;
reg    delta_weights2_13_ce1_local;
reg    delta_weights2_13_we0_local;
reg    delta_weights2_13_ce0_local;
reg    delta_weights2_14_we1_local;
reg    delta_weights2_14_ce1_local;
reg    delta_weights2_14_we0_local;
reg    delta_weights2_14_ce0_local;
reg    delta_weights2_15_we1_local;
reg    delta_weights2_15_ce1_local;
reg    delta_weights2_15_we0_local;
reg    delta_weights2_15_ce0_local;
reg    delta_weights2_16_we1_local;
reg    delta_weights2_16_ce1_local;
reg    delta_weights2_16_we0_local;
reg    delta_weights2_16_ce0_local;
reg    delta_weights2_17_we1_local;
reg    delta_weights2_17_ce1_local;
reg    delta_weights2_17_we0_local;
reg    delta_weights2_17_ce0_local;
reg    delta_weights2_18_we1_local;
reg    delta_weights2_18_ce1_local;
reg    delta_weights2_18_we0_local;
reg    delta_weights2_18_ce0_local;
reg    delta_weights2_19_we1_local;
reg    delta_weights2_19_ce1_local;
reg    delta_weights2_19_we0_local;
reg    delta_weights2_19_ce0_local;
reg    delta_weights2_20_we1_local;
reg    delta_weights2_20_ce1_local;
reg    delta_weights2_20_we0_local;
reg    delta_weights2_20_ce0_local;
reg    delta_weights2_21_we1_local;
reg    delta_weights2_21_ce1_local;
reg    delta_weights2_21_we0_local;
reg    delta_weights2_21_ce0_local;
reg    delta_weights2_22_we1_local;
reg    delta_weights2_22_ce1_local;
reg    delta_weights2_22_we0_local;
reg    delta_weights2_22_ce0_local;
reg    delta_weights2_23_we1_local;
reg    delta_weights2_23_ce1_local;
reg    delta_weights2_23_we0_local;
reg    delta_weights2_23_ce0_local;
reg    delta_weights2_24_we1_local;
reg    delta_weights2_24_ce1_local;
reg    delta_weights2_24_we0_local;
reg    delta_weights2_24_ce0_local;
reg    delta_weights2_25_we1_local;
reg    delta_weights2_25_ce1_local;
reg    delta_weights2_25_we0_local;
reg    delta_weights2_25_ce0_local;
reg    delta_weights2_26_we1_local;
reg    delta_weights2_26_ce1_local;
reg    delta_weights2_26_we0_local;
reg    delta_weights2_26_ce0_local;
reg    delta_weights2_27_we1_local;
reg    delta_weights2_27_ce1_local;
reg    delta_weights2_27_we0_local;
reg    delta_weights2_27_ce0_local;
reg    delta_weights2_28_we1_local;
reg    delta_weights2_28_ce1_local;
reg    delta_weights2_28_we0_local;
reg    delta_weights2_28_ce0_local;
reg    delta_weights2_29_we1_local;
reg    delta_weights2_29_ce1_local;
reg    delta_weights2_29_we0_local;
reg    delta_weights2_29_ce0_local;
reg    delta_weights2_30_we1_local;
reg    delta_weights2_30_ce1_local;
reg    delta_weights2_30_we0_local;
reg    delta_weights2_30_ce0_local;
reg    delta_weights2_31_we1_local;
reg    delta_weights2_31_ce1_local;
reg    delta_weights2_31_we0_local;
reg    delta_weights2_31_ce0_local;
wire   [6:0] shl_ln95_fu_1716_p2;
wire   [5:0] trunc_ln95_fu_1713_p1;
wire   [6:0] or_ln_fu_1757_p3;
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
#0 i_fu_226 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
        if (((icmp_ln93_fu_1691_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_226 <= add_ln93_fu_1697_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_226 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_12_reg_2128 <= ap_sig_allocacmp_i_12;
        i_12_reg_2128_pp0_iter1_reg <= i_12_reg_2128;
        last_activations_load_reg_2143 <= last_activations_q0;
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
        i_12_reg_2128_pp0_iter2_reg <= i_12_reg_2128_pp0_iter1_reg;
        i_12_reg_2128_pp0_iter3_reg <= i_12_reg_2128_pp0_iter2_reg;
        i_12_reg_2128_pp0_iter4_reg <= i_12_reg_2128_pp0_iter3_reg;
        i_12_reg_2128_pp0_iter5_reg <= i_12_reg_2128_pp0_iter4_reg;
        i_12_reg_2128_pp0_iter6_reg <= i_12_reg_2128_pp0_iter5_reg;
        i_12_reg_2128_pp0_iter7_reg <= i_12_reg_2128_pp0_iter6_reg;
        i_12_reg_2128_pp0_iter8_reg <= i_12_reg_2128_pp0_iter7_reg;
        mul_10_reg_2261 <= grp_fu_1599_p_dout0;
        mul_11_reg_2266 <= grp_fu_1603_p_dout0;
        mul_12_reg_2271 <= grp_fu_1607_p_dout0;
        mul_13_reg_2276 <= grp_fu_1611_p_dout0;
        mul_14_reg_2281 <= grp_fu_1615_p_dout0;
        mul_15_reg_2286 <= grp_fu_1619_p_dout0;
        mul_16_reg_2291 <= grp_fu_1623_p_dout0;
        mul_17_reg_2296 <= grp_fu_1627_p_dout0;
        mul_18_reg_2301 <= grp_fu_1631_p_dout0;
        mul_19_reg_2306 <= grp_fu_1635_p_dout0;
        mul_1_reg_2216 <= grp_fu_1563_p_dout0;
        mul_20_reg_2311 <= grp_fu_1639_p_dout0;
        mul_21_reg_2316 <= grp_fu_1643_p_dout0;
        mul_22_reg_2321 <= grp_fu_1647_p_dout0;
        mul_23_reg_2326 <= grp_fu_1651_p_dout0;
        mul_24_reg_2331 <= grp_fu_1655_p_dout0;
        mul_25_reg_2336 <= grp_fu_1659_p_dout0;
        mul_26_reg_2341 <= grp_fu_1663_p_dout0;
        mul_27_reg_2346 <= grp_fu_1667_p_dout0;
        mul_28_reg_2351 <= grp_fu_1671_p_dout0;
        mul_29_reg_2356 <= grp_fu_1675_p_dout0;
        mul_2_reg_2221 <= grp_fu_1567_p_dout0;
        mul_30_reg_2361 <= grp_fu_1679_p_dout0;
        mul_31_reg_2366 <= grp_fu_1683_p_dout0;
        mul_32_reg_2371 <= grp_fu_1687_p_dout0;
        mul_33_reg_2376 <= grp_fu_1691_p_dout0;
        mul_34_reg_2381 <= grp_fu_1695_p_dout0;
        mul_35_reg_2386 <= grp_fu_1699_p_dout0;
        mul_36_reg_2391 <= grp_fu_1703_p_dout0;
        mul_37_reg_2396 <= grp_fu_1707_p_dout0;
        mul_38_reg_2401 <= grp_fu_1711_p_dout0;
        mul_39_reg_2406 <= grp_fu_1715_p_dout0;
        mul_3_reg_2226 <= grp_fu_1571_p_dout0;
        mul_40_reg_2411 <= grp_fu_1719_p_dout0;
        mul_41_reg_2416 <= grp_fu_1723_p_dout0;
        mul_42_reg_2421 <= grp_fu_1727_p_dout0;
        mul_43_reg_2426 <= grp_fu_1731_p_dout0;
        mul_44_reg_2431 <= grp_fu_1735_p_dout0;
        mul_45_reg_2436 <= grp_fu_1739_p_dout0;
        mul_46_reg_2441 <= grp_fu_1743_p_dout0;
        mul_47_reg_2446 <= grp_fu_1747_p_dout0;
        mul_48_reg_2451 <= grp_fu_1751_p_dout0;
        mul_49_reg_2456 <= grp_fu_1755_p_dout0;
        mul_4_reg_2231 <= grp_fu_1575_p_dout0;
        mul_50_reg_2461 <= grp_fu_1759_p_dout0;
        mul_51_reg_2466 <= grp_fu_1763_p_dout0;
        mul_52_reg_2471 <= grp_fu_1767_p_dout0;
        mul_53_reg_2476 <= grp_fu_1771_p_dout0;
        mul_54_reg_2481 <= grp_fu_1775_p_dout0;
        mul_55_reg_2486 <= grp_fu_1779_p_dout0;
        mul_56_reg_2491 <= grp_fu_1783_p_dout0;
        mul_57_reg_2496 <= grp_fu_1787_p_dout0;
        mul_58_reg_2501 <= grp_fu_1791_p_dout0;
        mul_59_reg_2506 <= grp_fu_1795_p_dout0;
        mul_5_reg_2236 <= grp_fu_1579_p_dout0;
        mul_60_reg_2511 <= grp_fu_1799_p_dout0;
        mul_61_reg_2516 <= grp_fu_1803_p_dout0;
        mul_62_reg_2521 <= grp_fu_1807_p_dout0;
        mul_63_reg_2526 <= grp_fu_1811_p_dout0;
        mul_6_reg_2241 <= grp_fu_1583_p_dout0;
        mul_7_reg_2246 <= grp_fu_1587_p_dout0;
        mul_8_reg_2251 <= grp_fu_1591_p_dout0;
        mul_9_reg_2256 <= grp_fu_1595_p_dout0;
        mul_reg_2211 <= grp_fu_1559_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln93_fu_1691_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_12 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_12 = i_fu_226;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_0_ce0_local = 1'b1;
    end else begin
        delta_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_0_ce1_local = 1'b1;
    end else begin
        delta_weights2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_0_we0_local = 1'b1;
    end else begin
        delta_weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_0_we1_local = 1'b1;
    end else begin
        delta_weights2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_10_ce0_local = 1'b1;
    end else begin
        delta_weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_10_ce1_local = 1'b1;
    end else begin
        delta_weights2_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_10_we0_local = 1'b1;
    end else begin
        delta_weights2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_10_we1_local = 1'b1;
    end else begin
        delta_weights2_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_11_ce0_local = 1'b1;
    end else begin
        delta_weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_11_ce1_local = 1'b1;
    end else begin
        delta_weights2_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_11_we0_local = 1'b1;
    end else begin
        delta_weights2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_11_we1_local = 1'b1;
    end else begin
        delta_weights2_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_12_ce0_local = 1'b1;
    end else begin
        delta_weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_12_ce1_local = 1'b1;
    end else begin
        delta_weights2_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_12_we0_local = 1'b1;
    end else begin
        delta_weights2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_12_we1_local = 1'b1;
    end else begin
        delta_weights2_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_13_ce0_local = 1'b1;
    end else begin
        delta_weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_13_ce1_local = 1'b1;
    end else begin
        delta_weights2_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_13_we0_local = 1'b1;
    end else begin
        delta_weights2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_13_we1_local = 1'b1;
    end else begin
        delta_weights2_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_14_ce0_local = 1'b1;
    end else begin
        delta_weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_14_ce1_local = 1'b1;
    end else begin
        delta_weights2_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_14_we0_local = 1'b1;
    end else begin
        delta_weights2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_14_we1_local = 1'b1;
    end else begin
        delta_weights2_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_15_ce0_local = 1'b1;
    end else begin
        delta_weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_15_ce1_local = 1'b1;
    end else begin
        delta_weights2_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_15_we0_local = 1'b1;
    end else begin
        delta_weights2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_15_we1_local = 1'b1;
    end else begin
        delta_weights2_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_16_ce0_local = 1'b1;
    end else begin
        delta_weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_16_ce1_local = 1'b1;
    end else begin
        delta_weights2_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_16_we0_local = 1'b1;
    end else begin
        delta_weights2_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_16_we1_local = 1'b1;
    end else begin
        delta_weights2_16_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_17_ce0_local = 1'b1;
    end else begin
        delta_weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_17_ce1_local = 1'b1;
    end else begin
        delta_weights2_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_17_we0_local = 1'b1;
    end else begin
        delta_weights2_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_17_we1_local = 1'b1;
    end else begin
        delta_weights2_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_18_ce0_local = 1'b1;
    end else begin
        delta_weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_18_ce1_local = 1'b1;
    end else begin
        delta_weights2_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_18_we0_local = 1'b1;
    end else begin
        delta_weights2_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_18_we1_local = 1'b1;
    end else begin
        delta_weights2_18_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_19_ce0_local = 1'b1;
    end else begin
        delta_weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_19_ce1_local = 1'b1;
    end else begin
        delta_weights2_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_19_we0_local = 1'b1;
    end else begin
        delta_weights2_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_19_we1_local = 1'b1;
    end else begin
        delta_weights2_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_1_ce0_local = 1'b1;
    end else begin
        delta_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_1_ce1_local = 1'b1;
    end else begin
        delta_weights2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_1_we0_local = 1'b1;
    end else begin
        delta_weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_1_we1_local = 1'b1;
    end else begin
        delta_weights2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_20_ce0_local = 1'b1;
    end else begin
        delta_weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_20_ce1_local = 1'b1;
    end else begin
        delta_weights2_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_20_we0_local = 1'b1;
    end else begin
        delta_weights2_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_20_we1_local = 1'b1;
    end else begin
        delta_weights2_20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_21_ce0_local = 1'b1;
    end else begin
        delta_weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_21_ce1_local = 1'b1;
    end else begin
        delta_weights2_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_21_we0_local = 1'b1;
    end else begin
        delta_weights2_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_21_we1_local = 1'b1;
    end else begin
        delta_weights2_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_22_ce0_local = 1'b1;
    end else begin
        delta_weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_22_ce1_local = 1'b1;
    end else begin
        delta_weights2_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_22_we0_local = 1'b1;
    end else begin
        delta_weights2_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_22_we1_local = 1'b1;
    end else begin
        delta_weights2_22_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_23_ce0_local = 1'b1;
    end else begin
        delta_weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_23_ce1_local = 1'b1;
    end else begin
        delta_weights2_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_23_we0_local = 1'b1;
    end else begin
        delta_weights2_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_23_we1_local = 1'b1;
    end else begin
        delta_weights2_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_24_ce0_local = 1'b1;
    end else begin
        delta_weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_24_ce1_local = 1'b1;
    end else begin
        delta_weights2_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_24_we0_local = 1'b1;
    end else begin
        delta_weights2_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_24_we1_local = 1'b1;
    end else begin
        delta_weights2_24_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_25_ce0_local = 1'b1;
    end else begin
        delta_weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_25_ce1_local = 1'b1;
    end else begin
        delta_weights2_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_25_we0_local = 1'b1;
    end else begin
        delta_weights2_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_25_we1_local = 1'b1;
    end else begin
        delta_weights2_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_26_ce0_local = 1'b1;
    end else begin
        delta_weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_26_ce1_local = 1'b1;
    end else begin
        delta_weights2_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_26_we0_local = 1'b1;
    end else begin
        delta_weights2_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_26_we1_local = 1'b1;
    end else begin
        delta_weights2_26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_27_ce0_local = 1'b1;
    end else begin
        delta_weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_27_ce1_local = 1'b1;
    end else begin
        delta_weights2_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_27_we0_local = 1'b1;
    end else begin
        delta_weights2_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_27_we1_local = 1'b1;
    end else begin
        delta_weights2_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_28_ce0_local = 1'b1;
    end else begin
        delta_weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_28_ce1_local = 1'b1;
    end else begin
        delta_weights2_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_28_we0_local = 1'b1;
    end else begin
        delta_weights2_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_28_we1_local = 1'b1;
    end else begin
        delta_weights2_28_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_29_ce0_local = 1'b1;
    end else begin
        delta_weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_29_ce1_local = 1'b1;
    end else begin
        delta_weights2_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_29_we0_local = 1'b1;
    end else begin
        delta_weights2_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_29_we1_local = 1'b1;
    end else begin
        delta_weights2_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_2_ce0_local = 1'b1;
    end else begin
        delta_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_2_ce1_local = 1'b1;
    end else begin
        delta_weights2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_2_we0_local = 1'b1;
    end else begin
        delta_weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_2_we1_local = 1'b1;
    end else begin
        delta_weights2_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_30_ce0_local = 1'b1;
    end else begin
        delta_weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_30_ce1_local = 1'b1;
    end else begin
        delta_weights2_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_30_we0_local = 1'b1;
    end else begin
        delta_weights2_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_30_we1_local = 1'b1;
    end else begin
        delta_weights2_30_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_31_ce0_local = 1'b1;
    end else begin
        delta_weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_31_ce1_local = 1'b1;
    end else begin
        delta_weights2_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_31_we0_local = 1'b1;
    end else begin
        delta_weights2_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_31_we1_local = 1'b1;
    end else begin
        delta_weights2_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_3_ce0_local = 1'b1;
    end else begin
        delta_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_3_ce1_local = 1'b1;
    end else begin
        delta_weights2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_3_we0_local = 1'b1;
    end else begin
        delta_weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_3_we1_local = 1'b1;
    end else begin
        delta_weights2_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_4_ce0_local = 1'b1;
    end else begin
        delta_weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_4_ce1_local = 1'b1;
    end else begin
        delta_weights2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_4_we0_local = 1'b1;
    end else begin
        delta_weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_4_we1_local = 1'b1;
    end else begin
        delta_weights2_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_5_ce0_local = 1'b1;
    end else begin
        delta_weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_5_ce1_local = 1'b1;
    end else begin
        delta_weights2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_5_we0_local = 1'b1;
    end else begin
        delta_weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_5_we1_local = 1'b1;
    end else begin
        delta_weights2_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_6_ce0_local = 1'b1;
    end else begin
        delta_weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_6_ce1_local = 1'b1;
    end else begin
        delta_weights2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_6_we0_local = 1'b1;
    end else begin
        delta_weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_6_we1_local = 1'b1;
    end else begin
        delta_weights2_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_7_ce0_local = 1'b1;
    end else begin
        delta_weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_7_ce1_local = 1'b1;
    end else begin
        delta_weights2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_7_we0_local = 1'b1;
    end else begin
        delta_weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_7_we1_local = 1'b1;
    end else begin
        delta_weights2_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_8_ce0_local = 1'b1;
    end else begin
        delta_weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_8_ce1_local = 1'b1;
    end else begin
        delta_weights2_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_8_we0_local = 1'b1;
    end else begin
        delta_weights2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_8_we1_local = 1'b1;
    end else begin
        delta_weights2_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_9_ce0_local = 1'b1;
    end else begin
        delta_weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_9_ce1_local = 1'b1;
    end else begin
        delta_weights2_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_9_we0_local = 1'b1;
    end else begin
        delta_weights2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_9_we1_local = 1'b1;
    end else begin
        delta_weights2_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_ce0_local = 1'b1;
    end else begin
        last_activations_ce0_local = 1'b0;
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
assign add_ln93_fu_1697_p2 = (ap_sig_allocacmp_i_12 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights2_0_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_0_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_0_ce0 = delta_weights2_0_ce0_local;
assign delta_weights2_0_ce1 = delta_weights2_0_ce1_local;
assign delta_weights2_0_d0 = mul_32_reg_2371;
assign delta_weights2_0_d1 = mul_reg_2211;
assign delta_weights2_0_we0 = delta_weights2_0_we0_local;
assign delta_weights2_0_we1 = delta_weights2_0_we1_local;
assign delta_weights2_10_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_10_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_10_ce0 = delta_weights2_10_ce0_local;
assign delta_weights2_10_ce1 = delta_weights2_10_ce1_local;
assign delta_weights2_10_d0 = mul_42_reg_2421;
assign delta_weights2_10_d1 = mul_10_reg_2261;
assign delta_weights2_10_we0 = delta_weights2_10_we0_local;
assign delta_weights2_10_we1 = delta_weights2_10_we1_local;
assign delta_weights2_11_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_11_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_11_ce0 = delta_weights2_11_ce0_local;
assign delta_weights2_11_ce1 = delta_weights2_11_ce1_local;
assign delta_weights2_11_d0 = mul_43_reg_2426;
assign delta_weights2_11_d1 = mul_11_reg_2266;
assign delta_weights2_11_we0 = delta_weights2_11_we0_local;
assign delta_weights2_11_we1 = delta_weights2_11_we1_local;
assign delta_weights2_12_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_12_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_12_ce0 = delta_weights2_12_ce0_local;
assign delta_weights2_12_ce1 = delta_weights2_12_ce1_local;
assign delta_weights2_12_d0 = mul_44_reg_2431;
assign delta_weights2_12_d1 = mul_12_reg_2271;
assign delta_weights2_12_we0 = delta_weights2_12_we0_local;
assign delta_weights2_12_we1 = delta_weights2_12_we1_local;
assign delta_weights2_13_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_13_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_13_ce0 = delta_weights2_13_ce0_local;
assign delta_weights2_13_ce1 = delta_weights2_13_ce1_local;
assign delta_weights2_13_d0 = mul_45_reg_2436;
assign delta_weights2_13_d1 = mul_13_reg_2276;
assign delta_weights2_13_we0 = delta_weights2_13_we0_local;
assign delta_weights2_13_we1 = delta_weights2_13_we1_local;
assign delta_weights2_14_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_14_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_14_ce0 = delta_weights2_14_ce0_local;
assign delta_weights2_14_ce1 = delta_weights2_14_ce1_local;
assign delta_weights2_14_d0 = mul_46_reg_2441;
assign delta_weights2_14_d1 = mul_14_reg_2281;
assign delta_weights2_14_we0 = delta_weights2_14_we0_local;
assign delta_weights2_14_we1 = delta_weights2_14_we1_local;
assign delta_weights2_15_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_15_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_15_ce0 = delta_weights2_15_ce0_local;
assign delta_weights2_15_ce1 = delta_weights2_15_ce1_local;
assign delta_weights2_15_d0 = mul_47_reg_2446;
assign delta_weights2_15_d1 = mul_15_reg_2286;
assign delta_weights2_15_we0 = delta_weights2_15_we0_local;
assign delta_weights2_15_we1 = delta_weights2_15_we1_local;
assign delta_weights2_16_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_16_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_16_ce0 = delta_weights2_16_ce0_local;
assign delta_weights2_16_ce1 = delta_weights2_16_ce1_local;
assign delta_weights2_16_d0 = mul_48_reg_2451;
assign delta_weights2_16_d1 = mul_16_reg_2291;
assign delta_weights2_16_we0 = delta_weights2_16_we0_local;
assign delta_weights2_16_we1 = delta_weights2_16_we1_local;
assign delta_weights2_17_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_17_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_17_ce0 = delta_weights2_17_ce0_local;
assign delta_weights2_17_ce1 = delta_weights2_17_ce1_local;
assign delta_weights2_17_d0 = mul_49_reg_2456;
assign delta_weights2_17_d1 = mul_17_reg_2296;
assign delta_weights2_17_we0 = delta_weights2_17_we0_local;
assign delta_weights2_17_we1 = delta_weights2_17_we1_local;
assign delta_weights2_18_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_18_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_18_ce0 = delta_weights2_18_ce0_local;
assign delta_weights2_18_ce1 = delta_weights2_18_ce1_local;
assign delta_weights2_18_d0 = mul_50_reg_2461;
assign delta_weights2_18_d1 = mul_18_reg_2301;
assign delta_weights2_18_we0 = delta_weights2_18_we0_local;
assign delta_weights2_18_we1 = delta_weights2_18_we1_local;
assign delta_weights2_19_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_19_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_19_ce0 = delta_weights2_19_ce0_local;
assign delta_weights2_19_ce1 = delta_weights2_19_ce1_local;
assign delta_weights2_19_d0 = mul_51_reg_2466;
assign delta_weights2_19_d1 = mul_19_reg_2306;
assign delta_weights2_19_we0 = delta_weights2_19_we0_local;
assign delta_weights2_19_we1 = delta_weights2_19_we1_local;
assign delta_weights2_1_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_1_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_ce1 = delta_weights2_1_ce1_local;
assign delta_weights2_1_d0 = mul_33_reg_2376;
assign delta_weights2_1_d1 = mul_1_reg_2216;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_1_we1 = delta_weights2_1_we1_local;
assign delta_weights2_20_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_20_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_20_ce0 = delta_weights2_20_ce0_local;
assign delta_weights2_20_ce1 = delta_weights2_20_ce1_local;
assign delta_weights2_20_d0 = mul_52_reg_2471;
assign delta_weights2_20_d1 = mul_20_reg_2311;
assign delta_weights2_20_we0 = delta_weights2_20_we0_local;
assign delta_weights2_20_we1 = delta_weights2_20_we1_local;
assign delta_weights2_21_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_21_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_21_ce0 = delta_weights2_21_ce0_local;
assign delta_weights2_21_ce1 = delta_weights2_21_ce1_local;
assign delta_weights2_21_d0 = mul_53_reg_2476;
assign delta_weights2_21_d1 = mul_21_reg_2316;
assign delta_weights2_21_we0 = delta_weights2_21_we0_local;
assign delta_weights2_21_we1 = delta_weights2_21_we1_local;
assign delta_weights2_22_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_22_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_22_ce0 = delta_weights2_22_ce0_local;
assign delta_weights2_22_ce1 = delta_weights2_22_ce1_local;
assign delta_weights2_22_d0 = mul_54_reg_2481;
assign delta_weights2_22_d1 = mul_22_reg_2321;
assign delta_weights2_22_we0 = delta_weights2_22_we0_local;
assign delta_weights2_22_we1 = delta_weights2_22_we1_local;
assign delta_weights2_23_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_23_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_23_ce0 = delta_weights2_23_ce0_local;
assign delta_weights2_23_ce1 = delta_weights2_23_ce1_local;
assign delta_weights2_23_d0 = mul_55_reg_2486;
assign delta_weights2_23_d1 = mul_23_reg_2326;
assign delta_weights2_23_we0 = delta_weights2_23_we0_local;
assign delta_weights2_23_we1 = delta_weights2_23_we1_local;
assign delta_weights2_24_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_24_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_24_ce0 = delta_weights2_24_ce0_local;
assign delta_weights2_24_ce1 = delta_weights2_24_ce1_local;
assign delta_weights2_24_d0 = mul_56_reg_2491;
assign delta_weights2_24_d1 = mul_24_reg_2331;
assign delta_weights2_24_we0 = delta_weights2_24_we0_local;
assign delta_weights2_24_we1 = delta_weights2_24_we1_local;
assign delta_weights2_25_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_25_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_25_ce0 = delta_weights2_25_ce0_local;
assign delta_weights2_25_ce1 = delta_weights2_25_ce1_local;
assign delta_weights2_25_d0 = mul_57_reg_2496;
assign delta_weights2_25_d1 = mul_25_reg_2336;
assign delta_weights2_25_we0 = delta_weights2_25_we0_local;
assign delta_weights2_25_we1 = delta_weights2_25_we1_local;
assign delta_weights2_26_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_26_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_26_ce0 = delta_weights2_26_ce0_local;
assign delta_weights2_26_ce1 = delta_weights2_26_ce1_local;
assign delta_weights2_26_d0 = mul_58_reg_2501;
assign delta_weights2_26_d1 = mul_26_reg_2341;
assign delta_weights2_26_we0 = delta_weights2_26_we0_local;
assign delta_weights2_26_we1 = delta_weights2_26_we1_local;
assign delta_weights2_27_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_27_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_27_ce0 = delta_weights2_27_ce0_local;
assign delta_weights2_27_ce1 = delta_weights2_27_ce1_local;
assign delta_weights2_27_d0 = mul_59_reg_2506;
assign delta_weights2_27_d1 = mul_27_reg_2346;
assign delta_weights2_27_we0 = delta_weights2_27_we0_local;
assign delta_weights2_27_we1 = delta_weights2_27_we1_local;
assign delta_weights2_28_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_28_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_28_ce0 = delta_weights2_28_ce0_local;
assign delta_weights2_28_ce1 = delta_weights2_28_ce1_local;
assign delta_weights2_28_d0 = mul_60_reg_2511;
assign delta_weights2_28_d1 = mul_28_reg_2351;
assign delta_weights2_28_we0 = delta_weights2_28_we0_local;
assign delta_weights2_28_we1 = delta_weights2_28_we1_local;
assign delta_weights2_29_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_29_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_29_ce0 = delta_weights2_29_ce0_local;
assign delta_weights2_29_ce1 = delta_weights2_29_ce1_local;
assign delta_weights2_29_d0 = mul_61_reg_2516;
assign delta_weights2_29_d1 = mul_29_reg_2356;
assign delta_weights2_29_we0 = delta_weights2_29_we0_local;
assign delta_weights2_29_we1 = delta_weights2_29_we1_local;
assign delta_weights2_2_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_2_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_2_ce0 = delta_weights2_2_ce0_local;
assign delta_weights2_2_ce1 = delta_weights2_2_ce1_local;
assign delta_weights2_2_d0 = mul_34_reg_2381;
assign delta_weights2_2_d1 = mul_2_reg_2221;
assign delta_weights2_2_we0 = delta_weights2_2_we0_local;
assign delta_weights2_2_we1 = delta_weights2_2_we1_local;
assign delta_weights2_30_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_30_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_30_ce0 = delta_weights2_30_ce0_local;
assign delta_weights2_30_ce1 = delta_weights2_30_ce1_local;
assign delta_weights2_30_d0 = mul_62_reg_2521;
assign delta_weights2_30_d1 = mul_30_reg_2361;
assign delta_weights2_30_we0 = delta_weights2_30_we0_local;
assign delta_weights2_30_we1 = delta_weights2_30_we1_local;
assign delta_weights2_31_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_31_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_31_ce0 = delta_weights2_31_ce0_local;
assign delta_weights2_31_ce1 = delta_weights2_31_ce1_local;
assign delta_weights2_31_d0 = mul_63_reg_2526;
assign delta_weights2_31_d1 = mul_31_reg_2366;
assign delta_weights2_31_we0 = delta_weights2_31_we0_local;
assign delta_weights2_31_we1 = delta_weights2_31_we1_local;
assign delta_weights2_3_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_3_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_3_ce0 = delta_weights2_3_ce0_local;
assign delta_weights2_3_ce1 = delta_weights2_3_ce1_local;
assign delta_weights2_3_d0 = mul_35_reg_2386;
assign delta_weights2_3_d1 = mul_3_reg_2226;
assign delta_weights2_3_we0 = delta_weights2_3_we0_local;
assign delta_weights2_3_we1 = delta_weights2_3_we1_local;
assign delta_weights2_4_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_4_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_4_ce0 = delta_weights2_4_ce0_local;
assign delta_weights2_4_ce1 = delta_weights2_4_ce1_local;
assign delta_weights2_4_d0 = mul_36_reg_2391;
assign delta_weights2_4_d1 = mul_4_reg_2231;
assign delta_weights2_4_we0 = delta_weights2_4_we0_local;
assign delta_weights2_4_we1 = delta_weights2_4_we1_local;
assign delta_weights2_5_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_5_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_5_ce0 = delta_weights2_5_ce0_local;
assign delta_weights2_5_ce1 = delta_weights2_5_ce1_local;
assign delta_weights2_5_d0 = mul_37_reg_2396;
assign delta_weights2_5_d1 = mul_5_reg_2236;
assign delta_weights2_5_we0 = delta_weights2_5_we0_local;
assign delta_weights2_5_we1 = delta_weights2_5_we1_local;
assign delta_weights2_6_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_6_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_6_ce0 = delta_weights2_6_ce0_local;
assign delta_weights2_6_ce1 = delta_weights2_6_ce1_local;
assign delta_weights2_6_d0 = mul_38_reg_2401;
assign delta_weights2_6_d1 = mul_6_reg_2241;
assign delta_weights2_6_we0 = delta_weights2_6_we0_local;
assign delta_weights2_6_we1 = delta_weights2_6_we1_local;
assign delta_weights2_7_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_7_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_7_ce0 = delta_weights2_7_ce0_local;
assign delta_weights2_7_ce1 = delta_weights2_7_ce1_local;
assign delta_weights2_7_d0 = mul_39_reg_2406;
assign delta_weights2_7_d1 = mul_7_reg_2246;
assign delta_weights2_7_we0 = delta_weights2_7_we0_local;
assign delta_weights2_7_we1 = delta_weights2_7_we1_local;
assign delta_weights2_8_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_8_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_8_ce0 = delta_weights2_8_ce0_local;
assign delta_weights2_8_ce1 = delta_weights2_8_ce1_local;
assign delta_weights2_8_d0 = mul_40_reg_2411;
assign delta_weights2_8_d1 = mul_8_reg_2251;
assign delta_weights2_8_we0 = delta_weights2_8_we0_local;
assign delta_weights2_8_we1 = delta_weights2_8_we1_local;
assign delta_weights2_9_address0 = zext_ln95_1_fu_1765_p1;
assign delta_weights2_9_address1 = zext_ln95_fu_1721_p1;
assign delta_weights2_9_ce0 = delta_weights2_9_ce0_local;
assign delta_weights2_9_ce1 = delta_weights2_9_ce1_local;
assign delta_weights2_9_d0 = mul_41_reg_2416;
assign delta_weights2_9_d1 = mul_9_reg_2256;
assign delta_weights2_9_we0 = delta_weights2_9_we0_local;
assign delta_weights2_9_we1 = delta_weights2_9_we1_local;
assign grp_fu_1559_p_ce = 1'b1;
assign grp_fu_1559_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1559_p_din1 = output_difference_load;
assign grp_fu_1563_p_ce = 1'b1;
assign grp_fu_1563_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1563_p_din1 = output_difference_load_1;
assign grp_fu_1567_p_ce = 1'b1;
assign grp_fu_1567_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1567_p_din1 = output_difference_load_2;
assign grp_fu_1571_p_ce = 1'b1;
assign grp_fu_1571_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1571_p_din1 = output_difference_load_3;
assign grp_fu_1575_p_ce = 1'b1;
assign grp_fu_1575_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1575_p_din1 = output_difference_load_4;
assign grp_fu_1579_p_ce = 1'b1;
assign grp_fu_1579_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1579_p_din1 = output_difference_load_5;
assign grp_fu_1583_p_ce = 1'b1;
assign grp_fu_1583_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1583_p_din1 = output_difference_load_6;
assign grp_fu_1587_p_ce = 1'b1;
assign grp_fu_1587_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1587_p_din1 = output_difference_load_7;
assign grp_fu_1591_p_ce = 1'b1;
assign grp_fu_1591_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1591_p_din1 = output_difference_load_8;
assign grp_fu_1595_p_ce = 1'b1;
assign grp_fu_1595_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1595_p_din1 = output_difference_load_9;
assign grp_fu_1599_p_ce = 1'b1;
assign grp_fu_1599_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1599_p_din1 = output_difference_load_10;
assign grp_fu_1603_p_ce = 1'b1;
assign grp_fu_1603_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1603_p_din1 = output_difference_load_11;
assign grp_fu_1607_p_ce = 1'b1;
assign grp_fu_1607_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1607_p_din1 = output_difference_load_12;
assign grp_fu_1611_p_ce = 1'b1;
assign grp_fu_1611_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1611_p_din1 = output_difference_load_13;
assign grp_fu_1615_p_ce = 1'b1;
assign grp_fu_1615_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1615_p_din1 = output_difference_load_14;
assign grp_fu_1619_p_ce = 1'b1;
assign grp_fu_1619_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1619_p_din1 = output_difference_load_15;
assign grp_fu_1623_p_ce = 1'b1;
assign grp_fu_1623_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1623_p_din1 = output_difference_load_16;
assign grp_fu_1627_p_ce = 1'b1;
assign grp_fu_1627_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1627_p_din1 = output_difference_load_17;
assign grp_fu_1631_p_ce = 1'b1;
assign grp_fu_1631_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1631_p_din1 = output_difference_load_18;
assign grp_fu_1635_p_ce = 1'b1;
assign grp_fu_1635_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1635_p_din1 = output_difference_load_19;
assign grp_fu_1639_p_ce = 1'b1;
assign grp_fu_1639_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1639_p_din1 = output_difference_load_20;
assign grp_fu_1643_p_ce = 1'b1;
assign grp_fu_1643_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1643_p_din1 = output_difference_load_21;
assign grp_fu_1647_p_ce = 1'b1;
assign grp_fu_1647_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1647_p_din1 = output_difference_load_22;
assign grp_fu_1651_p_ce = 1'b1;
assign grp_fu_1651_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1651_p_din1 = output_difference_load_23;
assign grp_fu_1655_p_ce = 1'b1;
assign grp_fu_1655_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1655_p_din1 = output_difference_load_24;
assign grp_fu_1659_p_ce = 1'b1;
assign grp_fu_1659_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1659_p_din1 = output_difference_load_25;
assign grp_fu_1663_p_ce = 1'b1;
assign grp_fu_1663_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1663_p_din1 = output_difference_load_26;
assign grp_fu_1667_p_ce = 1'b1;
assign grp_fu_1667_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1667_p_din1 = output_difference_load_27;
assign grp_fu_1671_p_ce = 1'b1;
assign grp_fu_1671_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1671_p_din1 = output_difference_load_28;
assign grp_fu_1675_p_ce = 1'b1;
assign grp_fu_1675_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1675_p_din1 = output_difference_load_29;
assign grp_fu_1679_p_ce = 1'b1;
assign grp_fu_1679_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1679_p_din1 = output_difference_load_30;
assign grp_fu_1683_p_ce = 1'b1;
assign grp_fu_1683_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1683_p_din1 = output_difference_load_31;
assign grp_fu_1687_p_ce = 1'b1;
assign grp_fu_1687_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1687_p_din1 = output_difference_load_32;
assign grp_fu_1691_p_ce = 1'b1;
assign grp_fu_1691_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1691_p_din1 = output_difference_load_33;
assign grp_fu_1695_p_ce = 1'b1;
assign grp_fu_1695_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1695_p_din1 = output_difference_load_34;
assign grp_fu_1699_p_ce = 1'b1;
assign grp_fu_1699_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1699_p_din1 = output_difference_load_35;
assign grp_fu_1703_p_ce = 1'b1;
assign grp_fu_1703_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1703_p_din1 = output_difference_load_36;
assign grp_fu_1707_p_ce = 1'b1;
assign grp_fu_1707_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1707_p_din1 = output_difference_load_37;
assign grp_fu_1711_p_ce = 1'b1;
assign grp_fu_1711_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1711_p_din1 = output_difference_load_38;
assign grp_fu_1715_p_ce = 1'b1;
assign grp_fu_1715_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1715_p_din1 = output_difference_load_39;
assign grp_fu_1719_p_ce = 1'b1;
assign grp_fu_1719_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1719_p_din1 = output_difference_load_40;
assign grp_fu_1723_p_ce = 1'b1;
assign grp_fu_1723_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1723_p_din1 = output_difference_load_41;
assign grp_fu_1727_p_ce = 1'b1;
assign grp_fu_1727_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1727_p_din1 = output_difference_load_42;
assign grp_fu_1731_p_ce = 1'b1;
assign grp_fu_1731_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1731_p_din1 = output_difference_load_43;
assign grp_fu_1735_p_ce = 1'b1;
assign grp_fu_1735_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1735_p_din1 = output_difference_load_44;
assign grp_fu_1739_p_ce = 1'b1;
assign grp_fu_1739_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1739_p_din1 = output_difference_load_45;
assign grp_fu_1743_p_ce = 1'b1;
assign grp_fu_1743_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1743_p_din1 = output_difference_load_46;
assign grp_fu_1747_p_ce = 1'b1;
assign grp_fu_1747_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1747_p_din1 = output_difference_load_47;
assign grp_fu_1751_p_ce = 1'b1;
assign grp_fu_1751_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1751_p_din1 = output_difference_load_48;
assign grp_fu_1755_p_ce = 1'b1;
assign grp_fu_1755_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1755_p_din1 = output_difference_load_49;
assign grp_fu_1759_p_ce = 1'b1;
assign grp_fu_1759_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1759_p_din1 = output_difference_load_50;
assign grp_fu_1763_p_ce = 1'b1;
assign grp_fu_1763_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1763_p_din1 = output_difference_load_51;
assign grp_fu_1767_p_ce = 1'b1;
assign grp_fu_1767_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1767_p_din1 = output_difference_load_52;
assign grp_fu_1771_p_ce = 1'b1;
assign grp_fu_1771_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1771_p_din1 = output_difference_load_53;
assign grp_fu_1775_p_ce = 1'b1;
assign grp_fu_1775_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1775_p_din1 = output_difference_load_54;
assign grp_fu_1779_p_ce = 1'b1;
assign grp_fu_1779_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1779_p_din1 = output_difference_load_55;
assign grp_fu_1783_p_ce = 1'b1;
assign grp_fu_1783_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1783_p_din1 = output_difference_load_56;
assign grp_fu_1787_p_ce = 1'b1;
assign grp_fu_1787_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1787_p_din1 = output_difference_load_57;
assign grp_fu_1791_p_ce = 1'b1;
assign grp_fu_1791_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1791_p_din1 = output_difference_load_58;
assign grp_fu_1795_p_ce = 1'b1;
assign grp_fu_1795_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1795_p_din1 = output_difference_load_59;
assign grp_fu_1799_p_ce = 1'b1;
assign grp_fu_1799_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1799_p_din1 = output_difference_load_60;
assign grp_fu_1803_p_ce = 1'b1;
assign grp_fu_1803_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1803_p_din1 = output_difference_load_61;
assign grp_fu_1807_p_ce = 1'b1;
assign grp_fu_1807_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1807_p_din1 = output_difference_load_62;
assign grp_fu_1811_p_ce = 1'b1;
assign grp_fu_1811_p_din0 = last_activations_load_reg_2143;
assign grp_fu_1811_p_din1 = output_difference_load_63;
assign icmp_ln93_fu_1691_p2 = ((ap_sig_allocacmp_i_12 == 7'd64) ? 1'b1 : 1'b0);
assign last_activations_address0 = zext_ln93_fu_1703_p1;
assign last_activations_ce0 = last_activations_ce0_local;
assign or_ln_fu_1757_p3 = {{trunc_ln95_fu_1713_p1}, {1'd1}};
assign shl_ln95_fu_1716_p2 = i_12_reg_2128_pp0_iter8_reg << 7'd1;
assign trunc_ln95_fu_1713_p1 = i_12_reg_2128_pp0_iter8_reg[5:0];
assign zext_ln93_fu_1703_p1 = ap_sig_allocacmp_i_12;
assign zext_ln95_1_fu_1765_p1 = or_ln_fu_1757_p3;
assign zext_ln95_fu_1721_p1 = shl_ln95_fu_1716_p2;
endmodule 
