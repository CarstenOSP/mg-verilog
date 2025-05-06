
module backprop_get_delta_matrix_weights1_1_Pipeline_VITIS_LOOP_113_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_31_address0,delta_weights1_31_ce0,delta_weights1_31_we0,delta_weights1_31_d0,delta_weights1_31_address1,delta_weights1_31_ce1,delta_weights1_31_we1,delta_weights1_31_d1,delta_weights1_30_address0,delta_weights1_30_ce0,delta_weights1_30_we0,delta_weights1_30_d0,delta_weights1_30_address1,delta_weights1_30_ce1,delta_weights1_30_we1,delta_weights1_30_d1,delta_weights1_29_address0,delta_weights1_29_ce0,delta_weights1_29_we0,delta_weights1_29_d0,delta_weights1_29_address1,delta_weights1_29_ce1,delta_weights1_29_we1,delta_weights1_29_d1,delta_weights1_28_address0,delta_weights1_28_ce0,delta_weights1_28_we0,delta_weights1_28_d0,delta_weights1_28_address1,delta_weights1_28_ce1,delta_weights1_28_we1,delta_weights1_28_d1,delta_weights1_27_address0,delta_weights1_27_ce0,delta_weights1_27_we0,delta_weights1_27_d0,delta_weights1_27_address1,delta_weights1_27_ce1,delta_weights1_27_we1,delta_weights1_27_d1,delta_weights1_26_address0,delta_weights1_26_ce0,delta_weights1_26_we0,delta_weights1_26_d0,delta_weights1_26_address1,delta_weights1_26_ce1,delta_weights1_26_we1,delta_weights1_26_d1,delta_weights1_25_address0,delta_weights1_25_ce0,delta_weights1_25_we0,delta_weights1_25_d0,delta_weights1_25_address1,delta_weights1_25_ce1,delta_weights1_25_we1,delta_weights1_25_d1,delta_weights1_24_address0,delta_weights1_24_ce0,delta_weights1_24_we0,delta_weights1_24_d0,delta_weights1_24_address1,delta_weights1_24_ce1,delta_weights1_24_we1,delta_weights1_24_d1,delta_weights1_23_address0,delta_weights1_23_ce0,delta_weights1_23_we0,delta_weights1_23_d0,delta_weights1_23_address1,delta_weights1_23_ce1,delta_weights1_23_we1,delta_weights1_23_d1,delta_weights1_22_address0,delta_weights1_22_ce0,delta_weights1_22_we0,delta_weights1_22_d0,delta_weights1_22_address1,delta_weights1_22_ce1,delta_weights1_22_we1,delta_weights1_22_d1,delta_weights1_21_address0,delta_weights1_21_ce0,delta_weights1_21_we0,delta_weights1_21_d0,delta_weights1_21_address1,delta_weights1_21_ce1,delta_weights1_21_we1,delta_weights1_21_d1,delta_weights1_20_address0,delta_weights1_20_ce0,delta_weights1_20_we0,delta_weights1_20_d0,delta_weights1_20_address1,delta_weights1_20_ce1,delta_weights1_20_we1,delta_weights1_20_d1,delta_weights1_19_address0,delta_weights1_19_ce0,delta_weights1_19_we0,delta_weights1_19_d0,delta_weights1_19_address1,delta_weights1_19_ce1,delta_weights1_19_we1,delta_weights1_19_d1,delta_weights1_18_address0,delta_weights1_18_ce0,delta_weights1_18_we0,delta_weights1_18_d0,delta_weights1_18_address1,delta_weights1_18_ce1,delta_weights1_18_we1,delta_weights1_18_d1,delta_weights1_17_address0,delta_weights1_17_ce0,delta_weights1_17_we0,delta_weights1_17_d0,delta_weights1_17_address1,delta_weights1_17_ce1,delta_weights1_17_we1,delta_weights1_17_d1,delta_weights1_16_address0,delta_weights1_16_ce0,delta_weights1_16_we0,delta_weights1_16_d0,delta_weights1_16_address1,delta_weights1_16_ce1,delta_weights1_16_we1,delta_weights1_16_d1,delta_weights1_15_address0,delta_weights1_15_ce0,delta_weights1_15_we0,delta_weights1_15_d0,delta_weights1_15_address1,delta_weights1_15_ce1,delta_weights1_15_we1,delta_weights1_15_d1,delta_weights1_14_address0,delta_weights1_14_ce0,delta_weights1_14_we0,delta_weights1_14_d0,delta_weights1_14_address1,delta_weights1_14_ce1,delta_weights1_14_we1,delta_weights1_14_d1,delta_weights1_13_address0,delta_weights1_13_ce0,delta_weights1_13_we0,delta_weights1_13_d0,delta_weights1_13_address1,delta_weights1_13_ce1,delta_weights1_13_we1,delta_weights1_13_d1,delta_weights1_12_address0,delta_weights1_12_ce0,delta_weights1_12_we0,delta_weights1_12_d0,delta_weights1_12_address1,delta_weights1_12_ce1,delta_weights1_12_we1,delta_weights1_12_d1,delta_weights1_11_address0,delta_weights1_11_ce0,delta_weights1_11_we0,delta_weights1_11_d0,delta_weights1_11_address1,delta_weights1_11_ce1,delta_weights1_11_we1,delta_weights1_11_d1,delta_weights1_10_address0,delta_weights1_10_ce0,delta_weights1_10_we0,delta_weights1_10_d0,delta_weights1_10_address1,delta_weights1_10_ce1,delta_weights1_10_we1,delta_weights1_10_d1,delta_weights1_9_address0,delta_weights1_9_ce0,delta_weights1_9_we0,delta_weights1_9_d0,delta_weights1_9_address1,delta_weights1_9_ce1,delta_weights1_9_we1,delta_weights1_9_d1,delta_weights1_8_address0,delta_weights1_8_ce0,delta_weights1_8_we0,delta_weights1_8_d0,delta_weights1_8_address1,delta_weights1_8_ce1,delta_weights1_8_we1,delta_weights1_8_d1,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_7_address1,delta_weights1_7_ce1,delta_weights1_7_we1,delta_weights1_7_d1,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_6_address1,delta_weights1_6_ce1,delta_weights1_6_we1,delta_weights1_6_d1,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_5_address1,delta_weights1_5_ce1,delta_weights1_5_we1,delta_weights1_5_d1,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_4_address1,delta_weights1_4_ce1,delta_weights1_4_we1,delta_weights1_4_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,idx,training_data_address0,training_data_ce0,training_data_q0,output_difference_load,output_difference_load_64,output_difference_load_65,output_difference_load_66,output_difference_load_67,output_difference_load_68,output_difference_load_69,output_difference_load_70,output_difference_load_71,output_difference_load_72,output_difference_load_73,output_difference_load_74,output_difference_load_75,output_difference_load_76,output_difference_load_77,output_difference_load_78,output_difference_load_79,output_difference_load_80,output_difference_load_81,output_difference_load_82,output_difference_load_83,output_difference_load_84,output_difference_load_85,output_difference_load_86,output_difference_load_87,output_difference_load_88,output_difference_load_89,output_difference_load_90,output_difference_load_91,output_difference_load_92,output_difference_load_93,output_difference_load_94,output_difference_load_95,output_difference_load_96,output_difference_load_97,output_difference_load_98,output_difference_load_99,output_difference_load_100,output_difference_load_101,output_difference_load_102,output_difference_load_103,output_difference_load_104,output_difference_load_105,output_difference_load_106,output_difference_load_107,output_difference_load_108,output_difference_load_109,output_difference_load_110,output_difference_load_111,output_difference_load_112,output_difference_load_113,output_difference_load_114,output_difference_load_115,output_difference_load_116,output_difference_load_117,output_difference_load_118,output_difference_load_119,output_difference_load_120,output_difference_load_121,output_difference_load_122,output_difference_load_123,output_difference_load_124,output_difference_load_125,output_difference_load_126,grp_fu_1644_p_din0,grp_fu_1644_p_din1,grp_fu_1644_p_dout0,grp_fu_1644_p_ce,grp_fu_1648_p_din0,grp_fu_1648_p_din1,grp_fu_1648_p_dout0,grp_fu_1648_p_ce,grp_fu_1652_p_din0,grp_fu_1652_p_din1,grp_fu_1652_p_dout0,grp_fu_1652_p_ce,grp_fu_1656_p_din0,grp_fu_1656_p_din1,grp_fu_1656_p_dout0,grp_fu_1656_p_ce,grp_fu_1660_p_din0,grp_fu_1660_p_din1,grp_fu_1660_p_dout0,grp_fu_1660_p_ce,grp_fu_1664_p_din0,grp_fu_1664_p_din1,grp_fu_1664_p_dout0,grp_fu_1664_p_ce,grp_fu_1668_p_din0,grp_fu_1668_p_din1,grp_fu_1668_p_dout0,grp_fu_1668_p_ce,grp_fu_1672_p_din0,grp_fu_1672_p_din1,grp_fu_1672_p_dout0,grp_fu_1672_p_ce,grp_fu_1676_p_din0,grp_fu_1676_p_din1,grp_fu_1676_p_dout0,grp_fu_1676_p_ce,grp_fu_1680_p_din0,grp_fu_1680_p_din1,grp_fu_1680_p_dout0,grp_fu_1680_p_ce,grp_fu_1684_p_din0,grp_fu_1684_p_din1,grp_fu_1684_p_dout0,grp_fu_1684_p_ce,grp_fu_1688_p_din0,grp_fu_1688_p_din1,grp_fu_1688_p_dout0,grp_fu_1688_p_ce,grp_fu_1692_p_din0,grp_fu_1692_p_din1,grp_fu_1692_p_dout0,grp_fu_1692_p_ce,grp_fu_1696_p_din0,grp_fu_1696_p_din1,grp_fu_1696_p_dout0,grp_fu_1696_p_ce,grp_fu_1700_p_din0,grp_fu_1700_p_din1,grp_fu_1700_p_dout0,grp_fu_1700_p_ce,grp_fu_1704_p_din0,grp_fu_1704_p_din1,grp_fu_1704_p_dout0,grp_fu_1704_p_ce,grp_fu_1708_p_din0,grp_fu_1708_p_din1,grp_fu_1708_p_dout0,grp_fu_1708_p_ce,grp_fu_1712_p_din0,grp_fu_1712_p_din1,grp_fu_1712_p_dout0,grp_fu_1712_p_ce,grp_fu_1716_p_din0,grp_fu_1716_p_din1,grp_fu_1716_p_dout0,grp_fu_1716_p_ce,grp_fu_1720_p_din0,grp_fu_1720_p_din1,grp_fu_1720_p_dout0,grp_fu_1720_p_ce,grp_fu_1724_p_din0,grp_fu_1724_p_din1,grp_fu_1724_p_dout0,grp_fu_1724_p_ce,grp_fu_1728_p_din0,grp_fu_1728_p_din1,grp_fu_1728_p_dout0,grp_fu_1728_p_ce,grp_fu_1732_p_din0,grp_fu_1732_p_din1,grp_fu_1732_p_dout0,grp_fu_1732_p_ce,grp_fu_1736_p_din0,grp_fu_1736_p_din1,grp_fu_1736_p_dout0,grp_fu_1736_p_ce,grp_fu_1740_p_din0,grp_fu_1740_p_din1,grp_fu_1740_p_dout0,grp_fu_1740_p_ce,grp_fu_1744_p_din0,grp_fu_1744_p_din1,grp_fu_1744_p_dout0,grp_fu_1744_p_ce,grp_fu_1748_p_din0,grp_fu_1748_p_din1,grp_fu_1748_p_dout0,grp_fu_1748_p_ce,grp_fu_1752_p_din0,grp_fu_1752_p_din1,grp_fu_1752_p_dout0,grp_fu_1752_p_ce,grp_fu_1756_p_din0,grp_fu_1756_p_din1,grp_fu_1756_p_dout0,grp_fu_1756_p_ce,grp_fu_1760_p_din0,grp_fu_1760_p_din1,grp_fu_1760_p_dout0,grp_fu_1760_p_ce,grp_fu_1764_p_din0,grp_fu_1764_p_din1,grp_fu_1764_p_dout0,grp_fu_1764_p_ce,grp_fu_1768_p_din0,grp_fu_1768_p_din1,grp_fu_1768_p_dout0,grp_fu_1768_p_ce,grp_fu_1772_p_din0,grp_fu_1772_p_din1,grp_fu_1772_p_dout0,grp_fu_1772_p_ce,grp_fu_1776_p_din0,grp_fu_1776_p_din1,grp_fu_1776_p_dout0,grp_fu_1776_p_ce,grp_fu_1780_p_din0,grp_fu_1780_p_din1,grp_fu_1780_p_dout0,grp_fu_1780_p_ce,grp_fu_1784_p_din0,grp_fu_1784_p_din1,grp_fu_1784_p_dout0,grp_fu_1784_p_ce,grp_fu_1788_p_din0,grp_fu_1788_p_din1,grp_fu_1788_p_dout0,grp_fu_1788_p_ce,grp_fu_1792_p_din0,grp_fu_1792_p_din1,grp_fu_1792_p_dout0,grp_fu_1792_p_ce,grp_fu_1796_p_din0,grp_fu_1796_p_din1,grp_fu_1796_p_dout0,grp_fu_1796_p_ce,grp_fu_1800_p_din0,grp_fu_1800_p_din1,grp_fu_1800_p_dout0,grp_fu_1800_p_ce,grp_fu_1804_p_din0,grp_fu_1804_p_din1,grp_fu_1804_p_dout0,grp_fu_1804_p_ce,grp_fu_1808_p_din0,grp_fu_1808_p_din1,grp_fu_1808_p_dout0,grp_fu_1808_p_ce,grp_fu_1812_p_din0,grp_fu_1812_p_din1,grp_fu_1812_p_dout0,grp_fu_1812_p_ce,grp_fu_1816_p_din0,grp_fu_1816_p_din1,grp_fu_1816_p_dout0,grp_fu_1816_p_ce,grp_fu_1820_p_din0,grp_fu_1820_p_din1,grp_fu_1820_p_dout0,grp_fu_1820_p_ce,grp_fu_1824_p_din0,grp_fu_1824_p_din1,grp_fu_1824_p_dout0,grp_fu_1824_p_ce,grp_fu_1828_p_din0,grp_fu_1828_p_din1,grp_fu_1828_p_dout0,grp_fu_1828_p_ce,grp_fu_1832_p_din0,grp_fu_1832_p_din1,grp_fu_1832_p_dout0,grp_fu_1832_p_ce,grp_fu_1836_p_din0,grp_fu_1836_p_din1,grp_fu_1836_p_dout0,grp_fu_1836_p_ce,grp_fu_1840_p_din0,grp_fu_1840_p_din1,grp_fu_1840_p_dout0,grp_fu_1840_p_ce,grp_fu_1844_p_din0,grp_fu_1844_p_din1,grp_fu_1844_p_dout0,grp_fu_1844_p_ce,grp_fu_1848_p_din0,grp_fu_1848_p_din1,grp_fu_1848_p_dout0,grp_fu_1848_p_ce,grp_fu_1852_p_din0,grp_fu_1852_p_din1,grp_fu_1852_p_dout0,grp_fu_1852_p_ce,grp_fu_1856_p_din0,grp_fu_1856_p_din1,grp_fu_1856_p_dout0,grp_fu_1856_p_ce,grp_fu_1860_p_din0,grp_fu_1860_p_din1,grp_fu_1860_p_dout0,grp_fu_1860_p_ce,grp_fu_1864_p_din0,grp_fu_1864_p_din1,grp_fu_1864_p_dout0,grp_fu_1864_p_ce,grp_fu_1868_p_din0,grp_fu_1868_p_din1,grp_fu_1868_p_dout0,grp_fu_1868_p_ce,grp_fu_1872_p_din0,grp_fu_1872_p_din1,grp_fu_1872_p_dout0,grp_fu_1872_p_ce,grp_fu_1876_p_din0,grp_fu_1876_p_din1,grp_fu_1876_p_dout0,grp_fu_1876_p_ce,grp_fu_1880_p_din0,grp_fu_1880_p_din1,grp_fu_1880_p_dout0,grp_fu_1880_p_ce,grp_fu_1884_p_din0,grp_fu_1884_p_din1,grp_fu_1884_p_dout0,grp_fu_1884_p_ce,grp_fu_1888_p_din0,grp_fu_1888_p_din1,grp_fu_1888_p_dout0,grp_fu_1888_p_ce,grp_fu_1892_p_din0,grp_fu_1892_p_din1,grp_fu_1892_p_dout0,grp_fu_1892_p_ce,grp_fu_1896_p_din0,grp_fu_1896_p_din1,grp_fu_1896_p_dout0,grp_fu_1896_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] delta_weights1_31_address0;
output   delta_weights1_31_ce0;
output   delta_weights1_31_we0;
output  [63:0] delta_weights1_31_d0;
output  [4:0] delta_weights1_31_address1;
output   delta_weights1_31_ce1;
output   delta_weights1_31_we1;
output  [63:0] delta_weights1_31_d1;
output  [4:0] delta_weights1_30_address0;
output   delta_weights1_30_ce0;
output   delta_weights1_30_we0;
output  [63:0] delta_weights1_30_d0;
output  [4:0] delta_weights1_30_address1;
output   delta_weights1_30_ce1;
output   delta_weights1_30_we1;
output  [63:0] delta_weights1_30_d1;
output  [4:0] delta_weights1_29_address0;
output   delta_weights1_29_ce0;
output   delta_weights1_29_we0;
output  [63:0] delta_weights1_29_d0;
output  [4:0] delta_weights1_29_address1;
output   delta_weights1_29_ce1;
output   delta_weights1_29_we1;
output  [63:0] delta_weights1_29_d1;
output  [4:0] delta_weights1_28_address0;
output   delta_weights1_28_ce0;
output   delta_weights1_28_we0;
output  [63:0] delta_weights1_28_d0;
output  [4:0] delta_weights1_28_address1;
output   delta_weights1_28_ce1;
output   delta_weights1_28_we1;
output  [63:0] delta_weights1_28_d1;
output  [4:0] delta_weights1_27_address0;
output   delta_weights1_27_ce0;
output   delta_weights1_27_we0;
output  [63:0] delta_weights1_27_d0;
output  [4:0] delta_weights1_27_address1;
output   delta_weights1_27_ce1;
output   delta_weights1_27_we1;
output  [63:0] delta_weights1_27_d1;
output  [4:0] delta_weights1_26_address0;
output   delta_weights1_26_ce0;
output   delta_weights1_26_we0;
output  [63:0] delta_weights1_26_d0;
output  [4:0] delta_weights1_26_address1;
output   delta_weights1_26_ce1;
output   delta_weights1_26_we1;
output  [63:0] delta_weights1_26_d1;
output  [4:0] delta_weights1_25_address0;
output   delta_weights1_25_ce0;
output   delta_weights1_25_we0;
output  [63:0] delta_weights1_25_d0;
output  [4:0] delta_weights1_25_address1;
output   delta_weights1_25_ce1;
output   delta_weights1_25_we1;
output  [63:0] delta_weights1_25_d1;
output  [4:0] delta_weights1_24_address0;
output   delta_weights1_24_ce0;
output   delta_weights1_24_we0;
output  [63:0] delta_weights1_24_d0;
output  [4:0] delta_weights1_24_address1;
output   delta_weights1_24_ce1;
output   delta_weights1_24_we1;
output  [63:0] delta_weights1_24_d1;
output  [4:0] delta_weights1_23_address0;
output   delta_weights1_23_ce0;
output   delta_weights1_23_we0;
output  [63:0] delta_weights1_23_d0;
output  [4:0] delta_weights1_23_address1;
output   delta_weights1_23_ce1;
output   delta_weights1_23_we1;
output  [63:0] delta_weights1_23_d1;
output  [4:0] delta_weights1_22_address0;
output   delta_weights1_22_ce0;
output   delta_weights1_22_we0;
output  [63:0] delta_weights1_22_d0;
output  [4:0] delta_weights1_22_address1;
output   delta_weights1_22_ce1;
output   delta_weights1_22_we1;
output  [63:0] delta_weights1_22_d1;
output  [4:0] delta_weights1_21_address0;
output   delta_weights1_21_ce0;
output   delta_weights1_21_we0;
output  [63:0] delta_weights1_21_d0;
output  [4:0] delta_weights1_21_address1;
output   delta_weights1_21_ce1;
output   delta_weights1_21_we1;
output  [63:0] delta_weights1_21_d1;
output  [4:0] delta_weights1_20_address0;
output   delta_weights1_20_ce0;
output   delta_weights1_20_we0;
output  [63:0] delta_weights1_20_d0;
output  [4:0] delta_weights1_20_address1;
output   delta_weights1_20_ce1;
output   delta_weights1_20_we1;
output  [63:0] delta_weights1_20_d1;
output  [4:0] delta_weights1_19_address0;
output   delta_weights1_19_ce0;
output   delta_weights1_19_we0;
output  [63:0] delta_weights1_19_d0;
output  [4:0] delta_weights1_19_address1;
output   delta_weights1_19_ce1;
output   delta_weights1_19_we1;
output  [63:0] delta_weights1_19_d1;
output  [4:0] delta_weights1_18_address0;
output   delta_weights1_18_ce0;
output   delta_weights1_18_we0;
output  [63:0] delta_weights1_18_d0;
output  [4:0] delta_weights1_18_address1;
output   delta_weights1_18_ce1;
output   delta_weights1_18_we1;
output  [63:0] delta_weights1_18_d1;
output  [4:0] delta_weights1_17_address0;
output   delta_weights1_17_ce0;
output   delta_weights1_17_we0;
output  [63:0] delta_weights1_17_d0;
output  [4:0] delta_weights1_17_address1;
output   delta_weights1_17_ce1;
output   delta_weights1_17_we1;
output  [63:0] delta_weights1_17_d1;
output  [4:0] delta_weights1_16_address0;
output   delta_weights1_16_ce0;
output   delta_weights1_16_we0;
output  [63:0] delta_weights1_16_d0;
output  [4:0] delta_weights1_16_address1;
output   delta_weights1_16_ce1;
output   delta_weights1_16_we1;
output  [63:0] delta_weights1_16_d1;
output  [4:0] delta_weights1_15_address0;
output   delta_weights1_15_ce0;
output   delta_weights1_15_we0;
output  [63:0] delta_weights1_15_d0;
output  [4:0] delta_weights1_15_address1;
output   delta_weights1_15_ce1;
output   delta_weights1_15_we1;
output  [63:0] delta_weights1_15_d1;
output  [4:0] delta_weights1_14_address0;
output   delta_weights1_14_ce0;
output   delta_weights1_14_we0;
output  [63:0] delta_weights1_14_d0;
output  [4:0] delta_weights1_14_address1;
output   delta_weights1_14_ce1;
output   delta_weights1_14_we1;
output  [63:0] delta_weights1_14_d1;
output  [4:0] delta_weights1_13_address0;
output   delta_weights1_13_ce0;
output   delta_weights1_13_we0;
output  [63:0] delta_weights1_13_d0;
output  [4:0] delta_weights1_13_address1;
output   delta_weights1_13_ce1;
output   delta_weights1_13_we1;
output  [63:0] delta_weights1_13_d1;
output  [4:0] delta_weights1_12_address0;
output   delta_weights1_12_ce0;
output   delta_weights1_12_we0;
output  [63:0] delta_weights1_12_d0;
output  [4:0] delta_weights1_12_address1;
output   delta_weights1_12_ce1;
output   delta_weights1_12_we1;
output  [63:0] delta_weights1_12_d1;
output  [4:0] delta_weights1_11_address0;
output   delta_weights1_11_ce0;
output   delta_weights1_11_we0;
output  [63:0] delta_weights1_11_d0;
output  [4:0] delta_weights1_11_address1;
output   delta_weights1_11_ce1;
output   delta_weights1_11_we1;
output  [63:0] delta_weights1_11_d1;
output  [4:0] delta_weights1_10_address0;
output   delta_weights1_10_ce0;
output   delta_weights1_10_we0;
output  [63:0] delta_weights1_10_d0;
output  [4:0] delta_weights1_10_address1;
output   delta_weights1_10_ce1;
output   delta_weights1_10_we1;
output  [63:0] delta_weights1_10_d1;
output  [4:0] delta_weights1_9_address0;
output   delta_weights1_9_ce0;
output   delta_weights1_9_we0;
output  [63:0] delta_weights1_9_d0;
output  [4:0] delta_weights1_9_address1;
output   delta_weights1_9_ce1;
output   delta_weights1_9_we1;
output  [63:0] delta_weights1_9_d1;
output  [4:0] delta_weights1_8_address0;
output   delta_weights1_8_ce0;
output   delta_weights1_8_we0;
output  [63:0] delta_weights1_8_d0;
output  [4:0] delta_weights1_8_address1;
output   delta_weights1_8_ce1;
output   delta_weights1_8_we1;
output  [63:0] delta_weights1_8_d1;
output  [4:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [4:0] delta_weights1_7_address1;
output   delta_weights1_7_ce1;
output   delta_weights1_7_we1;
output  [63:0] delta_weights1_7_d1;
output  [4:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [4:0] delta_weights1_6_address1;
output   delta_weights1_6_ce1;
output   delta_weights1_6_we1;
output  [63:0] delta_weights1_6_d1;
output  [4:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [4:0] delta_weights1_5_address1;
output   delta_weights1_5_ce1;
output   delta_weights1_5_we1;
output  [63:0] delta_weights1_5_d1;
output  [4:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [4:0] delta_weights1_4_address1;
output   delta_weights1_4_ce1;
output   delta_weights1_4_we1;
output  [63:0] delta_weights1_4_d1;
output  [4:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [4:0] delta_weights1_3_address1;
output   delta_weights1_3_ce1;
output   delta_weights1_3_we1;
output  [63:0] delta_weights1_3_d1;
output  [4:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [4:0] delta_weights1_2_address1;
output   delta_weights1_2_ce1;
output   delta_weights1_2_we1;
output  [63:0] delta_weights1_2_d1;
output  [4:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [4:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [4:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [4:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
input  [11:0] idx;
output  [11:0] training_data_address0;
output   training_data_ce0;
input  [63:0] training_data_q0;
input  [63:0] output_difference_load;
input  [63:0] output_difference_load_64;
input  [63:0] output_difference_load_65;
input  [63:0] output_difference_load_66;
input  [63:0] output_difference_load_67;
input  [63:0] output_difference_load_68;
input  [63:0] output_difference_load_69;
input  [63:0] output_difference_load_70;
input  [63:0] output_difference_load_71;
input  [63:0] output_difference_load_72;
input  [63:0] output_difference_load_73;
input  [63:0] output_difference_load_74;
input  [63:0] output_difference_load_75;
input  [63:0] output_difference_load_76;
input  [63:0] output_difference_load_77;
input  [63:0] output_difference_load_78;
input  [63:0] output_difference_load_79;
input  [63:0] output_difference_load_80;
input  [63:0] output_difference_load_81;
input  [63:0] output_difference_load_82;
input  [63:0] output_difference_load_83;
input  [63:0] output_difference_load_84;
input  [63:0] output_difference_load_85;
input  [63:0] output_difference_load_86;
input  [63:0] output_difference_load_87;
input  [63:0] output_difference_load_88;
input  [63:0] output_difference_load_89;
input  [63:0] output_difference_load_90;
input  [63:0] output_difference_load_91;
input  [63:0] output_difference_load_92;
input  [63:0] output_difference_load_93;
input  [63:0] output_difference_load_94;
input  [63:0] output_difference_load_95;
input  [63:0] output_difference_load_96;
input  [63:0] output_difference_load_97;
input  [63:0] output_difference_load_98;
input  [63:0] output_difference_load_99;
input  [63:0] output_difference_load_100;
input  [63:0] output_difference_load_101;
input  [63:0] output_difference_load_102;
input  [63:0] output_difference_load_103;
input  [63:0] output_difference_load_104;
input  [63:0] output_difference_load_105;
input  [63:0] output_difference_load_106;
input  [63:0] output_difference_load_107;
input  [63:0] output_difference_load_108;
input  [63:0] output_difference_load_109;
input  [63:0] output_difference_load_110;
input  [63:0] output_difference_load_111;
input  [63:0] output_difference_load_112;
input  [63:0] output_difference_load_113;
input  [63:0] output_difference_load_114;
input  [63:0] output_difference_load_115;
input  [63:0] output_difference_load_116;
input  [63:0] output_difference_load_117;
input  [63:0] output_difference_load_118;
input  [63:0] output_difference_load_119;
input  [63:0] output_difference_load_120;
input  [63:0] output_difference_load_121;
input  [63:0] output_difference_load_122;
input  [63:0] output_difference_load_123;
input  [63:0] output_difference_load_124;
input  [63:0] output_difference_load_125;
input  [63:0] output_difference_load_126;
output  [63:0] grp_fu_1644_p_din0;
output  [63:0] grp_fu_1644_p_din1;
input  [63:0] grp_fu_1644_p_dout0;
output   grp_fu_1644_p_ce;
output  [63:0] grp_fu_1648_p_din0;
output  [63:0] grp_fu_1648_p_din1;
input  [63:0] grp_fu_1648_p_dout0;
output   grp_fu_1648_p_ce;
output  [63:0] grp_fu_1652_p_din0;
output  [63:0] grp_fu_1652_p_din1;
input  [63:0] grp_fu_1652_p_dout0;
output   grp_fu_1652_p_ce;
output  [63:0] grp_fu_1656_p_din0;
output  [63:0] grp_fu_1656_p_din1;
input  [63:0] grp_fu_1656_p_dout0;
output   grp_fu_1656_p_ce;
output  [63:0] grp_fu_1660_p_din0;
output  [63:0] grp_fu_1660_p_din1;
input  [63:0] grp_fu_1660_p_dout0;
output   grp_fu_1660_p_ce;
output  [63:0] grp_fu_1664_p_din0;
output  [63:0] grp_fu_1664_p_din1;
input  [63:0] grp_fu_1664_p_dout0;
output   grp_fu_1664_p_ce;
output  [63:0] grp_fu_1668_p_din0;
output  [63:0] grp_fu_1668_p_din1;
input  [63:0] grp_fu_1668_p_dout0;
output   grp_fu_1668_p_ce;
output  [63:0] grp_fu_1672_p_din0;
output  [63:0] grp_fu_1672_p_din1;
input  [63:0] grp_fu_1672_p_dout0;
output   grp_fu_1672_p_ce;
output  [63:0] grp_fu_1676_p_din0;
output  [63:0] grp_fu_1676_p_din1;
input  [63:0] grp_fu_1676_p_dout0;
output   grp_fu_1676_p_ce;
output  [63:0] grp_fu_1680_p_din0;
output  [63:0] grp_fu_1680_p_din1;
input  [63:0] grp_fu_1680_p_dout0;
output   grp_fu_1680_p_ce;
output  [63:0] grp_fu_1684_p_din0;
output  [63:0] grp_fu_1684_p_din1;
input  [63:0] grp_fu_1684_p_dout0;
output   grp_fu_1684_p_ce;
output  [63:0] grp_fu_1688_p_din0;
output  [63:0] grp_fu_1688_p_din1;
input  [63:0] grp_fu_1688_p_dout0;
output   grp_fu_1688_p_ce;
output  [63:0] grp_fu_1692_p_din0;
output  [63:0] grp_fu_1692_p_din1;
input  [63:0] grp_fu_1692_p_dout0;
output   grp_fu_1692_p_ce;
output  [63:0] grp_fu_1696_p_din0;
output  [63:0] grp_fu_1696_p_din1;
input  [63:0] grp_fu_1696_p_dout0;
output   grp_fu_1696_p_ce;
output  [63:0] grp_fu_1700_p_din0;
output  [63:0] grp_fu_1700_p_din1;
input  [63:0] grp_fu_1700_p_dout0;
output   grp_fu_1700_p_ce;
output  [63:0] grp_fu_1704_p_din0;
output  [63:0] grp_fu_1704_p_din1;
input  [63:0] grp_fu_1704_p_dout0;
output   grp_fu_1704_p_ce;
output  [63:0] grp_fu_1708_p_din0;
output  [63:0] grp_fu_1708_p_din1;
input  [63:0] grp_fu_1708_p_dout0;
output   grp_fu_1708_p_ce;
output  [63:0] grp_fu_1712_p_din0;
output  [63:0] grp_fu_1712_p_din1;
input  [63:0] grp_fu_1712_p_dout0;
output   grp_fu_1712_p_ce;
output  [63:0] grp_fu_1716_p_din0;
output  [63:0] grp_fu_1716_p_din1;
input  [63:0] grp_fu_1716_p_dout0;
output   grp_fu_1716_p_ce;
output  [63:0] grp_fu_1720_p_din0;
output  [63:0] grp_fu_1720_p_din1;
input  [63:0] grp_fu_1720_p_dout0;
output   grp_fu_1720_p_ce;
output  [63:0] grp_fu_1724_p_din0;
output  [63:0] grp_fu_1724_p_din1;
input  [63:0] grp_fu_1724_p_dout0;
output   grp_fu_1724_p_ce;
output  [63:0] grp_fu_1728_p_din0;
output  [63:0] grp_fu_1728_p_din1;
input  [63:0] grp_fu_1728_p_dout0;
output   grp_fu_1728_p_ce;
output  [63:0] grp_fu_1732_p_din0;
output  [63:0] grp_fu_1732_p_din1;
input  [63:0] grp_fu_1732_p_dout0;
output   grp_fu_1732_p_ce;
output  [63:0] grp_fu_1736_p_din0;
output  [63:0] grp_fu_1736_p_din1;
input  [63:0] grp_fu_1736_p_dout0;
output   grp_fu_1736_p_ce;
output  [63:0] grp_fu_1740_p_din0;
output  [63:0] grp_fu_1740_p_din1;
input  [63:0] grp_fu_1740_p_dout0;
output   grp_fu_1740_p_ce;
output  [63:0] grp_fu_1744_p_din0;
output  [63:0] grp_fu_1744_p_din1;
input  [63:0] grp_fu_1744_p_dout0;
output   grp_fu_1744_p_ce;
output  [63:0] grp_fu_1748_p_din0;
output  [63:0] grp_fu_1748_p_din1;
input  [63:0] grp_fu_1748_p_dout0;
output   grp_fu_1748_p_ce;
output  [63:0] grp_fu_1752_p_din0;
output  [63:0] grp_fu_1752_p_din1;
input  [63:0] grp_fu_1752_p_dout0;
output   grp_fu_1752_p_ce;
output  [63:0] grp_fu_1756_p_din0;
output  [63:0] grp_fu_1756_p_din1;
input  [63:0] grp_fu_1756_p_dout0;
output   grp_fu_1756_p_ce;
output  [63:0] grp_fu_1760_p_din0;
output  [63:0] grp_fu_1760_p_din1;
input  [63:0] grp_fu_1760_p_dout0;
output   grp_fu_1760_p_ce;
output  [63:0] grp_fu_1764_p_din0;
output  [63:0] grp_fu_1764_p_din1;
input  [63:0] grp_fu_1764_p_dout0;
output   grp_fu_1764_p_ce;
output  [63:0] grp_fu_1768_p_din0;
output  [63:0] grp_fu_1768_p_din1;
input  [63:0] grp_fu_1768_p_dout0;
output   grp_fu_1768_p_ce;
output  [63:0] grp_fu_1772_p_din0;
output  [63:0] grp_fu_1772_p_din1;
input  [63:0] grp_fu_1772_p_dout0;
output   grp_fu_1772_p_ce;
output  [63:0] grp_fu_1776_p_din0;
output  [63:0] grp_fu_1776_p_din1;
input  [63:0] grp_fu_1776_p_dout0;
output   grp_fu_1776_p_ce;
output  [63:0] grp_fu_1780_p_din0;
output  [63:0] grp_fu_1780_p_din1;
input  [63:0] grp_fu_1780_p_dout0;
output   grp_fu_1780_p_ce;
output  [63:0] grp_fu_1784_p_din0;
output  [63:0] grp_fu_1784_p_din1;
input  [63:0] grp_fu_1784_p_dout0;
output   grp_fu_1784_p_ce;
output  [63:0] grp_fu_1788_p_din0;
output  [63:0] grp_fu_1788_p_din1;
input  [63:0] grp_fu_1788_p_dout0;
output   grp_fu_1788_p_ce;
output  [63:0] grp_fu_1792_p_din0;
output  [63:0] grp_fu_1792_p_din1;
input  [63:0] grp_fu_1792_p_dout0;
output   grp_fu_1792_p_ce;
output  [63:0] grp_fu_1796_p_din0;
output  [63:0] grp_fu_1796_p_din1;
input  [63:0] grp_fu_1796_p_dout0;
output   grp_fu_1796_p_ce;
output  [63:0] grp_fu_1800_p_din0;
output  [63:0] grp_fu_1800_p_din1;
input  [63:0] grp_fu_1800_p_dout0;
output   grp_fu_1800_p_ce;
output  [63:0] grp_fu_1804_p_din0;
output  [63:0] grp_fu_1804_p_din1;
input  [63:0] grp_fu_1804_p_dout0;
output   grp_fu_1804_p_ce;
output  [63:0] grp_fu_1808_p_din0;
output  [63:0] grp_fu_1808_p_din1;
input  [63:0] grp_fu_1808_p_dout0;
output   grp_fu_1808_p_ce;
output  [63:0] grp_fu_1812_p_din0;
output  [63:0] grp_fu_1812_p_din1;
input  [63:0] grp_fu_1812_p_dout0;
output   grp_fu_1812_p_ce;
output  [63:0] grp_fu_1816_p_din0;
output  [63:0] grp_fu_1816_p_din1;
input  [63:0] grp_fu_1816_p_dout0;
output   grp_fu_1816_p_ce;
output  [63:0] grp_fu_1820_p_din0;
output  [63:0] grp_fu_1820_p_din1;
input  [63:0] grp_fu_1820_p_dout0;
output   grp_fu_1820_p_ce;
output  [63:0] grp_fu_1824_p_din0;
output  [63:0] grp_fu_1824_p_din1;
input  [63:0] grp_fu_1824_p_dout0;
output   grp_fu_1824_p_ce;
output  [63:0] grp_fu_1828_p_din0;
output  [63:0] grp_fu_1828_p_din1;
input  [63:0] grp_fu_1828_p_dout0;
output   grp_fu_1828_p_ce;
output  [63:0] grp_fu_1832_p_din0;
output  [63:0] grp_fu_1832_p_din1;
input  [63:0] grp_fu_1832_p_dout0;
output   grp_fu_1832_p_ce;
output  [63:0] grp_fu_1836_p_din0;
output  [63:0] grp_fu_1836_p_din1;
input  [63:0] grp_fu_1836_p_dout0;
output   grp_fu_1836_p_ce;
output  [63:0] grp_fu_1840_p_din0;
output  [63:0] grp_fu_1840_p_din1;
input  [63:0] grp_fu_1840_p_dout0;
output   grp_fu_1840_p_ce;
output  [63:0] grp_fu_1844_p_din0;
output  [63:0] grp_fu_1844_p_din1;
input  [63:0] grp_fu_1844_p_dout0;
output   grp_fu_1844_p_ce;
output  [63:0] grp_fu_1848_p_din0;
output  [63:0] grp_fu_1848_p_din1;
input  [63:0] grp_fu_1848_p_dout0;
output   grp_fu_1848_p_ce;
output  [63:0] grp_fu_1852_p_din0;
output  [63:0] grp_fu_1852_p_din1;
input  [63:0] grp_fu_1852_p_dout0;
output   grp_fu_1852_p_ce;
output  [63:0] grp_fu_1856_p_din0;
output  [63:0] grp_fu_1856_p_din1;
input  [63:0] grp_fu_1856_p_dout0;
output   grp_fu_1856_p_ce;
output  [63:0] grp_fu_1860_p_din0;
output  [63:0] grp_fu_1860_p_din1;
input  [63:0] grp_fu_1860_p_dout0;
output   grp_fu_1860_p_ce;
output  [63:0] grp_fu_1864_p_din0;
output  [63:0] grp_fu_1864_p_din1;
input  [63:0] grp_fu_1864_p_dout0;
output   grp_fu_1864_p_ce;
output  [63:0] grp_fu_1868_p_din0;
output  [63:0] grp_fu_1868_p_din1;
input  [63:0] grp_fu_1868_p_dout0;
output   grp_fu_1868_p_ce;
output  [63:0] grp_fu_1872_p_din0;
output  [63:0] grp_fu_1872_p_din1;
input  [63:0] grp_fu_1872_p_dout0;
output   grp_fu_1872_p_ce;
output  [63:0] grp_fu_1876_p_din0;
output  [63:0] grp_fu_1876_p_din1;
input  [63:0] grp_fu_1876_p_dout0;
output   grp_fu_1876_p_ce;
output  [63:0] grp_fu_1880_p_din0;
output  [63:0] grp_fu_1880_p_din1;
input  [63:0] grp_fu_1880_p_dout0;
output   grp_fu_1880_p_ce;
output  [63:0] grp_fu_1884_p_din0;
output  [63:0] grp_fu_1884_p_din1;
input  [63:0] grp_fu_1884_p_dout0;
output   grp_fu_1884_p_ce;
output  [63:0] grp_fu_1888_p_din0;
output  [63:0] grp_fu_1888_p_din1;
input  [63:0] grp_fu_1888_p_dout0;
output   grp_fu_1888_p_ce;
output  [63:0] grp_fu_1892_p_din0;
output  [63:0] grp_fu_1892_p_din1;
input  [63:0] grp_fu_1892_p_dout0;
output   grp_fu_1892_p_ce;
output  [63:0] grp_fu_1896_p_din0;
output  [63:0] grp_fu_1896_p_din1;
input  [63:0] grp_fu_1896_p_dout0;
output   grp_fu_1896_p_ce;
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
wire   [0:0] icmp_ln113_fu_1707_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] i_13_reg_2219;
reg   [3:0] i_13_reg_2219_pp0_iter1_reg;
reg   [3:0] i_13_reg_2219_pp0_iter2_reg;
reg   [3:0] i_13_reg_2219_pp0_iter3_reg;
reg   [3:0] i_13_reg_2219_pp0_iter4_reg;
reg   [3:0] i_13_reg_2219_pp0_iter5_reg;
reg   [3:0] i_13_reg_2219_pp0_iter6_reg;
reg   [3:0] i_13_reg_2219_pp0_iter7_reg;
reg   [3:0] i_13_reg_2219_pp0_iter8_reg;
reg   [63:0] training_data_load_reg_2234;
wire   [63:0] empty_fu_1739_p1;
reg   [63:0] mul_reg_2307;
reg   [63:0] mul_1_reg_2312;
reg   [63:0] mul_2_reg_2317;
reg   [63:0] mul_3_reg_2322;
reg   [63:0] mul_4_reg_2327;
reg   [63:0] mul_5_reg_2332;
reg   [63:0] mul_6_reg_2337;
reg   [63:0] mul_7_reg_2342;
reg   [63:0] mul_8_reg_2347;
reg   [63:0] mul_9_reg_2352;
reg   [63:0] mul_10_reg_2357;
reg   [63:0] mul_11_reg_2362;
reg   [63:0] mul_12_reg_2367;
reg   [63:0] mul_13_reg_2372;
reg   [63:0] mul_14_reg_2377;
reg   [63:0] mul_15_reg_2382;
reg   [63:0] mul_16_reg_2387;
reg   [63:0] mul_17_reg_2392;
reg   [63:0] mul_18_reg_2397;
reg   [63:0] mul_19_reg_2402;
reg   [63:0] mul_20_reg_2407;
reg   [63:0] mul_21_reg_2412;
reg   [63:0] mul_22_reg_2417;
reg   [63:0] mul_23_reg_2422;
reg   [63:0] mul_24_reg_2427;
reg   [63:0] mul_25_reg_2432;
reg   [63:0] mul_26_reg_2437;
reg   [63:0] mul_27_reg_2442;
reg   [63:0] mul_28_reg_2447;
reg   [63:0] mul_29_reg_2452;
reg   [63:0] mul_30_reg_2457;
reg   [63:0] mul_31_reg_2462;
reg   [63:0] mul_32_reg_2467;
reg   [63:0] mul_33_reg_2472;
reg   [63:0] mul_34_reg_2477;
reg   [63:0] mul_35_reg_2482;
reg   [63:0] mul_36_reg_2487;
reg   [63:0] mul_37_reg_2492;
reg   [63:0] mul_38_reg_2497;
reg   [63:0] mul_39_reg_2502;
reg   [63:0] mul_40_reg_2507;
reg   [63:0] mul_41_reg_2512;
reg   [63:0] mul_42_reg_2517;
reg   [63:0] mul_43_reg_2522;
reg   [63:0] mul_44_reg_2527;
reg   [63:0] mul_45_reg_2532;
reg   [63:0] mul_46_reg_2537;
reg   [63:0] mul_47_reg_2542;
reg   [63:0] mul_48_reg_2547;
reg   [63:0] mul_49_reg_2552;
reg   [63:0] mul_50_reg_2557;
reg   [63:0] mul_51_reg_2562;
reg   [63:0] mul_52_reg_2567;
reg   [63:0] mul_53_reg_2572;
reg   [63:0] mul_54_reg_2577;
reg   [63:0] mul_55_reg_2582;
reg   [63:0] mul_56_reg_2587;
reg   [63:0] mul_57_reg_2592;
reg   [63:0] mul_58_reg_2597;
reg   [63:0] mul_59_reg_2602;
reg   [63:0] mul_60_reg_2607;
reg   [63:0] mul_61_reg_2612;
reg   [63:0] mul_62_reg_2617;
reg   [63:0] mul_63_reg_2622;
wire   [63:0] p_sum_cast_fu_1729_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln115_fu_1813_p1;
wire   [63:0] zext_ln115_1_fu_1856_p1;
reg   [3:0] i_fu_236;
wire   [3:0] add_ln113_fu_1713_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_i_13;
reg    training_data_ce0_local;
reg    delta_weights1_0_we1_local;
reg    delta_weights1_0_ce1_local;
reg    delta_weights1_0_we0_local;
reg    delta_weights1_0_ce0_local;
reg    delta_weights1_1_we1_local;
reg    delta_weights1_1_ce1_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
reg    delta_weights1_2_we1_local;
reg    delta_weights1_2_ce1_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg    delta_weights1_3_we1_local;
reg    delta_weights1_3_ce1_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
reg    delta_weights1_4_we1_local;
reg    delta_weights1_4_ce1_local;
reg    delta_weights1_4_we0_local;
reg    delta_weights1_4_ce0_local;
reg    delta_weights1_5_we1_local;
reg    delta_weights1_5_ce1_local;
reg    delta_weights1_5_we0_local;
reg    delta_weights1_5_ce0_local;
reg    delta_weights1_6_we1_local;
reg    delta_weights1_6_ce1_local;
reg    delta_weights1_6_we0_local;
reg    delta_weights1_6_ce0_local;
reg    delta_weights1_7_we1_local;
reg    delta_weights1_7_ce1_local;
reg    delta_weights1_7_we0_local;
reg    delta_weights1_7_ce0_local;
reg    delta_weights1_8_we1_local;
reg    delta_weights1_8_ce1_local;
reg    delta_weights1_8_we0_local;
reg    delta_weights1_8_ce0_local;
reg    delta_weights1_9_we1_local;
reg    delta_weights1_9_ce1_local;
reg    delta_weights1_9_we0_local;
reg    delta_weights1_9_ce0_local;
reg    delta_weights1_10_we1_local;
reg    delta_weights1_10_ce1_local;
reg    delta_weights1_10_we0_local;
reg    delta_weights1_10_ce0_local;
reg    delta_weights1_11_we1_local;
reg    delta_weights1_11_ce1_local;
reg    delta_weights1_11_we0_local;
reg    delta_weights1_11_ce0_local;
reg    delta_weights1_12_we1_local;
reg    delta_weights1_12_ce1_local;
reg    delta_weights1_12_we0_local;
reg    delta_weights1_12_ce0_local;
reg    delta_weights1_13_we1_local;
reg    delta_weights1_13_ce1_local;
reg    delta_weights1_13_we0_local;
reg    delta_weights1_13_ce0_local;
reg    delta_weights1_14_we1_local;
reg    delta_weights1_14_ce1_local;
reg    delta_weights1_14_we0_local;
reg    delta_weights1_14_ce0_local;
reg    delta_weights1_15_we1_local;
reg    delta_weights1_15_ce1_local;
reg    delta_weights1_15_we0_local;
reg    delta_weights1_15_ce0_local;
reg    delta_weights1_16_we1_local;
reg    delta_weights1_16_ce1_local;
reg    delta_weights1_16_we0_local;
reg    delta_weights1_16_ce0_local;
reg    delta_weights1_17_we1_local;
reg    delta_weights1_17_ce1_local;
reg    delta_weights1_17_we0_local;
reg    delta_weights1_17_ce0_local;
reg    delta_weights1_18_we1_local;
reg    delta_weights1_18_ce1_local;
reg    delta_weights1_18_we0_local;
reg    delta_weights1_18_ce0_local;
reg    delta_weights1_19_we1_local;
reg    delta_weights1_19_ce1_local;
reg    delta_weights1_19_we0_local;
reg    delta_weights1_19_ce0_local;
reg    delta_weights1_20_we1_local;
reg    delta_weights1_20_ce1_local;
reg    delta_weights1_20_we0_local;
reg    delta_weights1_20_ce0_local;
reg    delta_weights1_21_we1_local;
reg    delta_weights1_21_ce1_local;
reg    delta_weights1_21_we0_local;
reg    delta_weights1_21_ce0_local;
reg    delta_weights1_22_we1_local;
reg    delta_weights1_22_ce1_local;
reg    delta_weights1_22_we0_local;
reg    delta_weights1_22_ce0_local;
reg    delta_weights1_23_we1_local;
reg    delta_weights1_23_ce1_local;
reg    delta_weights1_23_we0_local;
reg    delta_weights1_23_ce0_local;
reg    delta_weights1_24_we1_local;
reg    delta_weights1_24_ce1_local;
reg    delta_weights1_24_we0_local;
reg    delta_weights1_24_ce0_local;
reg    delta_weights1_25_we1_local;
reg    delta_weights1_25_ce1_local;
reg    delta_weights1_25_we0_local;
reg    delta_weights1_25_ce0_local;
reg    delta_weights1_26_we1_local;
reg    delta_weights1_26_ce1_local;
reg    delta_weights1_26_we0_local;
reg    delta_weights1_26_ce0_local;
reg    delta_weights1_27_we1_local;
reg    delta_weights1_27_ce1_local;
reg    delta_weights1_27_we0_local;
reg    delta_weights1_27_ce0_local;
reg    delta_weights1_28_we1_local;
reg    delta_weights1_28_ce1_local;
reg    delta_weights1_28_we0_local;
reg    delta_weights1_28_ce0_local;
reg    delta_weights1_29_we1_local;
reg    delta_weights1_29_ce1_local;
reg    delta_weights1_29_we0_local;
reg    delta_weights1_29_ce0_local;
reg    delta_weights1_30_we1_local;
reg    delta_weights1_30_ce1_local;
reg    delta_weights1_30_we0_local;
reg    delta_weights1_30_ce0_local;
reg    delta_weights1_31_we1_local;
reg    delta_weights1_31_ce1_local;
reg    delta_weights1_31_we0_local;
reg    delta_weights1_31_ce0_local;
wire   [11:0] zext_ln113_fu_1719_p1;
wire   [11:0] p_sum_fu_1723_p2;
wire   [4:0] shl_ln_fu_1806_p3;
wire   [4:0] or_ln_fu_1849_p3;
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
#0 i_fu_236 = 4'd0;
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
        if (((icmp_ln113_fu_1707_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_236 <= add_ln113_fu_1713_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_236 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_13_reg_2219 <= ap_sig_allocacmp_i_13;
        i_13_reg_2219_pp0_iter1_reg <= i_13_reg_2219;
        training_data_load_reg_2234 <= training_data_q0;
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
        i_13_reg_2219_pp0_iter2_reg <= i_13_reg_2219_pp0_iter1_reg;
        i_13_reg_2219_pp0_iter3_reg <= i_13_reg_2219_pp0_iter2_reg;
        i_13_reg_2219_pp0_iter4_reg <= i_13_reg_2219_pp0_iter3_reg;
        i_13_reg_2219_pp0_iter5_reg <= i_13_reg_2219_pp0_iter4_reg;
        i_13_reg_2219_pp0_iter6_reg <= i_13_reg_2219_pp0_iter5_reg;
        i_13_reg_2219_pp0_iter7_reg <= i_13_reg_2219_pp0_iter6_reg;
        i_13_reg_2219_pp0_iter8_reg <= i_13_reg_2219_pp0_iter7_reg;
        mul_10_reg_2357 <= grp_fu_1684_p_dout0;
        mul_11_reg_2362 <= grp_fu_1688_p_dout0;
        mul_12_reg_2367 <= grp_fu_1692_p_dout0;
        mul_13_reg_2372 <= grp_fu_1696_p_dout0;
        mul_14_reg_2377 <= grp_fu_1700_p_dout0;
        mul_15_reg_2382 <= grp_fu_1704_p_dout0;
        mul_16_reg_2387 <= grp_fu_1708_p_dout0;
        mul_17_reg_2392 <= grp_fu_1712_p_dout0;
        mul_18_reg_2397 <= grp_fu_1716_p_dout0;
        mul_19_reg_2402 <= grp_fu_1720_p_dout0;
        mul_1_reg_2312 <= grp_fu_1648_p_dout0;
        mul_20_reg_2407 <= grp_fu_1724_p_dout0;
        mul_21_reg_2412 <= grp_fu_1728_p_dout0;
        mul_22_reg_2417 <= grp_fu_1732_p_dout0;
        mul_23_reg_2422 <= grp_fu_1736_p_dout0;
        mul_24_reg_2427 <= grp_fu_1740_p_dout0;
        mul_25_reg_2432 <= grp_fu_1744_p_dout0;
        mul_26_reg_2437 <= grp_fu_1748_p_dout0;
        mul_27_reg_2442 <= grp_fu_1752_p_dout0;
        mul_28_reg_2447 <= grp_fu_1756_p_dout0;
        mul_29_reg_2452 <= grp_fu_1760_p_dout0;
        mul_2_reg_2317 <= grp_fu_1652_p_dout0;
        mul_30_reg_2457 <= grp_fu_1764_p_dout0;
        mul_31_reg_2462 <= grp_fu_1768_p_dout0;
        mul_32_reg_2467 <= grp_fu_1772_p_dout0;
        mul_33_reg_2472 <= grp_fu_1776_p_dout0;
        mul_34_reg_2477 <= grp_fu_1780_p_dout0;
        mul_35_reg_2482 <= grp_fu_1784_p_dout0;
        mul_36_reg_2487 <= grp_fu_1788_p_dout0;
        mul_37_reg_2492 <= grp_fu_1792_p_dout0;
        mul_38_reg_2497 <= grp_fu_1796_p_dout0;
        mul_39_reg_2502 <= grp_fu_1800_p_dout0;
        mul_3_reg_2322 <= grp_fu_1656_p_dout0;
        mul_40_reg_2507 <= grp_fu_1804_p_dout0;
        mul_41_reg_2512 <= grp_fu_1808_p_dout0;
        mul_42_reg_2517 <= grp_fu_1812_p_dout0;
        mul_43_reg_2522 <= grp_fu_1816_p_dout0;
        mul_44_reg_2527 <= grp_fu_1820_p_dout0;
        mul_45_reg_2532 <= grp_fu_1824_p_dout0;
        mul_46_reg_2537 <= grp_fu_1828_p_dout0;
        mul_47_reg_2542 <= grp_fu_1832_p_dout0;
        mul_48_reg_2547 <= grp_fu_1836_p_dout0;
        mul_49_reg_2552 <= grp_fu_1840_p_dout0;
        mul_4_reg_2327 <= grp_fu_1660_p_dout0;
        mul_50_reg_2557 <= grp_fu_1844_p_dout0;
        mul_51_reg_2562 <= grp_fu_1848_p_dout0;
        mul_52_reg_2567 <= grp_fu_1852_p_dout0;
        mul_53_reg_2572 <= grp_fu_1856_p_dout0;
        mul_54_reg_2577 <= grp_fu_1860_p_dout0;
        mul_55_reg_2582 <= grp_fu_1864_p_dout0;
        mul_56_reg_2587 <= grp_fu_1868_p_dout0;
        mul_57_reg_2592 <= grp_fu_1872_p_dout0;
        mul_58_reg_2597 <= grp_fu_1876_p_dout0;
        mul_59_reg_2602 <= grp_fu_1880_p_dout0;
        mul_5_reg_2332 <= grp_fu_1664_p_dout0;
        mul_60_reg_2607 <= grp_fu_1884_p_dout0;
        mul_61_reg_2612 <= grp_fu_1888_p_dout0;
        mul_62_reg_2617 <= grp_fu_1892_p_dout0;
        mul_63_reg_2622 <= grp_fu_1896_p_dout0;
        mul_6_reg_2337 <= grp_fu_1668_p_dout0;
        mul_7_reg_2342 <= grp_fu_1672_p_dout0;
        mul_8_reg_2347 <= grp_fu_1676_p_dout0;
        mul_9_reg_2352 <= grp_fu_1680_p_dout0;
        mul_reg_2307 <= grp_fu_1644_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_1707_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_13 = 4'd0;
    end else begin
        ap_sig_allocacmp_i_13 = i_fu_236;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_0_ce0_local = 1'b1;
    end else begin
        delta_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_0_ce1_local = 1'b1;
    end else begin
        delta_weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_0_we0_local = 1'b1;
    end else begin
        delta_weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_0_we1_local = 1'b1;
    end else begin
        delta_weights1_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_10_ce0_local = 1'b1;
    end else begin
        delta_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_10_ce1_local = 1'b1;
    end else begin
        delta_weights1_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_10_we0_local = 1'b1;
    end else begin
        delta_weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_10_we1_local = 1'b1;
    end else begin
        delta_weights1_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_11_ce0_local = 1'b1;
    end else begin
        delta_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_11_ce1_local = 1'b1;
    end else begin
        delta_weights1_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_11_we0_local = 1'b1;
    end else begin
        delta_weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_11_we1_local = 1'b1;
    end else begin
        delta_weights1_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_12_ce0_local = 1'b1;
    end else begin
        delta_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_12_ce1_local = 1'b1;
    end else begin
        delta_weights1_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_12_we0_local = 1'b1;
    end else begin
        delta_weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_12_we1_local = 1'b1;
    end else begin
        delta_weights1_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_13_ce0_local = 1'b1;
    end else begin
        delta_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_13_ce1_local = 1'b1;
    end else begin
        delta_weights1_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_13_we0_local = 1'b1;
    end else begin
        delta_weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_13_we1_local = 1'b1;
    end else begin
        delta_weights1_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_14_ce0_local = 1'b1;
    end else begin
        delta_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_14_ce1_local = 1'b1;
    end else begin
        delta_weights1_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_14_we0_local = 1'b1;
    end else begin
        delta_weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_14_we1_local = 1'b1;
    end else begin
        delta_weights1_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_15_ce0_local = 1'b1;
    end else begin
        delta_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_15_ce1_local = 1'b1;
    end else begin
        delta_weights1_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_15_we0_local = 1'b1;
    end else begin
        delta_weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_15_we1_local = 1'b1;
    end else begin
        delta_weights1_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_16_ce0_local = 1'b1;
    end else begin
        delta_weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_16_ce1_local = 1'b1;
    end else begin
        delta_weights1_16_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_16_we0_local = 1'b1;
    end else begin
        delta_weights1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_16_we1_local = 1'b1;
    end else begin
        delta_weights1_16_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_17_ce0_local = 1'b1;
    end else begin
        delta_weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_17_ce1_local = 1'b1;
    end else begin
        delta_weights1_17_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_17_we0_local = 1'b1;
    end else begin
        delta_weights1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_17_we1_local = 1'b1;
    end else begin
        delta_weights1_17_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_18_ce0_local = 1'b1;
    end else begin
        delta_weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_18_ce1_local = 1'b1;
    end else begin
        delta_weights1_18_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_18_we0_local = 1'b1;
    end else begin
        delta_weights1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_18_we1_local = 1'b1;
    end else begin
        delta_weights1_18_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_19_ce0_local = 1'b1;
    end else begin
        delta_weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_19_ce1_local = 1'b1;
    end else begin
        delta_weights1_19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_19_we0_local = 1'b1;
    end else begin
        delta_weights1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_19_we1_local = 1'b1;
    end else begin
        delta_weights1_19_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_1_ce1_local = 1'b1;
    end else begin
        delta_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_1_we1_local = 1'b1;
    end else begin
        delta_weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_20_ce0_local = 1'b1;
    end else begin
        delta_weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_20_ce1_local = 1'b1;
    end else begin
        delta_weights1_20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_20_we0_local = 1'b1;
    end else begin
        delta_weights1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_20_we1_local = 1'b1;
    end else begin
        delta_weights1_20_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_21_ce0_local = 1'b1;
    end else begin
        delta_weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_21_ce1_local = 1'b1;
    end else begin
        delta_weights1_21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_21_we0_local = 1'b1;
    end else begin
        delta_weights1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_21_we1_local = 1'b1;
    end else begin
        delta_weights1_21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_22_ce0_local = 1'b1;
    end else begin
        delta_weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_22_ce1_local = 1'b1;
    end else begin
        delta_weights1_22_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_22_we0_local = 1'b1;
    end else begin
        delta_weights1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_22_we1_local = 1'b1;
    end else begin
        delta_weights1_22_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_23_ce0_local = 1'b1;
    end else begin
        delta_weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_23_ce1_local = 1'b1;
    end else begin
        delta_weights1_23_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_23_we0_local = 1'b1;
    end else begin
        delta_weights1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_23_we1_local = 1'b1;
    end else begin
        delta_weights1_23_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_24_ce0_local = 1'b1;
    end else begin
        delta_weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_24_ce1_local = 1'b1;
    end else begin
        delta_weights1_24_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_24_we0_local = 1'b1;
    end else begin
        delta_weights1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_24_we1_local = 1'b1;
    end else begin
        delta_weights1_24_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_25_ce0_local = 1'b1;
    end else begin
        delta_weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_25_ce1_local = 1'b1;
    end else begin
        delta_weights1_25_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_25_we0_local = 1'b1;
    end else begin
        delta_weights1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_25_we1_local = 1'b1;
    end else begin
        delta_weights1_25_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_26_ce0_local = 1'b1;
    end else begin
        delta_weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_26_ce1_local = 1'b1;
    end else begin
        delta_weights1_26_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_26_we0_local = 1'b1;
    end else begin
        delta_weights1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_26_we1_local = 1'b1;
    end else begin
        delta_weights1_26_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_27_ce0_local = 1'b1;
    end else begin
        delta_weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_27_ce1_local = 1'b1;
    end else begin
        delta_weights1_27_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_27_we0_local = 1'b1;
    end else begin
        delta_weights1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_27_we1_local = 1'b1;
    end else begin
        delta_weights1_27_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_28_ce0_local = 1'b1;
    end else begin
        delta_weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_28_ce1_local = 1'b1;
    end else begin
        delta_weights1_28_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_28_we0_local = 1'b1;
    end else begin
        delta_weights1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_28_we1_local = 1'b1;
    end else begin
        delta_weights1_28_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_29_ce0_local = 1'b1;
    end else begin
        delta_weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_29_ce1_local = 1'b1;
    end else begin
        delta_weights1_29_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_29_we0_local = 1'b1;
    end else begin
        delta_weights1_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_29_we1_local = 1'b1;
    end else begin
        delta_weights1_29_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_2_ce1_local = 1'b1;
    end else begin
        delta_weights1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_2_we1_local = 1'b1;
    end else begin
        delta_weights1_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_30_ce0_local = 1'b1;
    end else begin
        delta_weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_30_ce1_local = 1'b1;
    end else begin
        delta_weights1_30_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_30_we0_local = 1'b1;
    end else begin
        delta_weights1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_30_we1_local = 1'b1;
    end else begin
        delta_weights1_30_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_31_ce0_local = 1'b1;
    end else begin
        delta_weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_31_ce1_local = 1'b1;
    end else begin
        delta_weights1_31_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_31_we0_local = 1'b1;
    end else begin
        delta_weights1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_31_we1_local = 1'b1;
    end else begin
        delta_weights1_31_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_3_ce1_local = 1'b1;
    end else begin
        delta_weights1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_3_we1_local = 1'b1;
    end else begin
        delta_weights1_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_4_ce0_local = 1'b1;
    end else begin
        delta_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_4_ce1_local = 1'b1;
    end else begin
        delta_weights1_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_4_we1_local = 1'b1;
    end else begin
        delta_weights1_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_5_ce0_local = 1'b1;
    end else begin
        delta_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_5_ce1_local = 1'b1;
    end else begin
        delta_weights1_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_5_we1_local = 1'b1;
    end else begin
        delta_weights1_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_6_ce0_local = 1'b1;
    end else begin
        delta_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_6_ce1_local = 1'b1;
    end else begin
        delta_weights1_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_6_we1_local = 1'b1;
    end else begin
        delta_weights1_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_7_ce0_local = 1'b1;
    end else begin
        delta_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_7_ce1_local = 1'b1;
    end else begin
        delta_weights1_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_7_we1_local = 1'b1;
    end else begin
        delta_weights1_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_8_ce0_local = 1'b1;
    end else begin
        delta_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_8_ce1_local = 1'b1;
    end else begin
        delta_weights1_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_8_we0_local = 1'b1;
    end else begin
        delta_weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_8_we1_local = 1'b1;
    end else begin
        delta_weights1_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_9_ce0_local = 1'b1;
    end else begin
        delta_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_9_ce1_local = 1'b1;
    end else begin
        delta_weights1_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_9_we0_local = 1'b1;
    end else begin
        delta_weights1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights1_9_we1_local = 1'b1;
    end else begin
        delta_weights1_9_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_ce0_local = 1'b1;
    end else begin
        training_data_ce0_local = 1'b0;
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
assign add_ln113_fu_1713_p2 = (ap_sig_allocacmp_i_13 + 4'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights1_0_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_0_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_0_ce0 = delta_weights1_0_ce0_local;
assign delta_weights1_0_ce1 = delta_weights1_0_ce1_local;
assign delta_weights1_0_d0 = mul_32_reg_2467;
assign delta_weights1_0_d1 = mul_reg_2307;
assign delta_weights1_0_we0 = delta_weights1_0_we0_local;
assign delta_weights1_0_we1 = delta_weights1_0_we1_local;
assign delta_weights1_10_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_10_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_10_ce0 = delta_weights1_10_ce0_local;
assign delta_weights1_10_ce1 = delta_weights1_10_ce1_local;
assign delta_weights1_10_d0 = mul_42_reg_2517;
assign delta_weights1_10_d1 = mul_10_reg_2357;
assign delta_weights1_10_we0 = delta_weights1_10_we0_local;
assign delta_weights1_10_we1 = delta_weights1_10_we1_local;
assign delta_weights1_11_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_11_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_11_ce0 = delta_weights1_11_ce0_local;
assign delta_weights1_11_ce1 = delta_weights1_11_ce1_local;
assign delta_weights1_11_d0 = mul_43_reg_2522;
assign delta_weights1_11_d1 = mul_11_reg_2362;
assign delta_weights1_11_we0 = delta_weights1_11_we0_local;
assign delta_weights1_11_we1 = delta_weights1_11_we1_local;
assign delta_weights1_12_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_12_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_12_ce0 = delta_weights1_12_ce0_local;
assign delta_weights1_12_ce1 = delta_weights1_12_ce1_local;
assign delta_weights1_12_d0 = mul_44_reg_2527;
assign delta_weights1_12_d1 = mul_12_reg_2367;
assign delta_weights1_12_we0 = delta_weights1_12_we0_local;
assign delta_weights1_12_we1 = delta_weights1_12_we1_local;
assign delta_weights1_13_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_13_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_13_ce0 = delta_weights1_13_ce0_local;
assign delta_weights1_13_ce1 = delta_weights1_13_ce1_local;
assign delta_weights1_13_d0 = mul_45_reg_2532;
assign delta_weights1_13_d1 = mul_13_reg_2372;
assign delta_weights1_13_we0 = delta_weights1_13_we0_local;
assign delta_weights1_13_we1 = delta_weights1_13_we1_local;
assign delta_weights1_14_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_14_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_14_ce0 = delta_weights1_14_ce0_local;
assign delta_weights1_14_ce1 = delta_weights1_14_ce1_local;
assign delta_weights1_14_d0 = mul_46_reg_2537;
assign delta_weights1_14_d1 = mul_14_reg_2377;
assign delta_weights1_14_we0 = delta_weights1_14_we0_local;
assign delta_weights1_14_we1 = delta_weights1_14_we1_local;
assign delta_weights1_15_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_15_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_15_ce0 = delta_weights1_15_ce0_local;
assign delta_weights1_15_ce1 = delta_weights1_15_ce1_local;
assign delta_weights1_15_d0 = mul_47_reg_2542;
assign delta_weights1_15_d1 = mul_15_reg_2382;
assign delta_weights1_15_we0 = delta_weights1_15_we0_local;
assign delta_weights1_15_we1 = delta_weights1_15_we1_local;
assign delta_weights1_16_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_16_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_16_ce0 = delta_weights1_16_ce0_local;
assign delta_weights1_16_ce1 = delta_weights1_16_ce1_local;
assign delta_weights1_16_d0 = mul_48_reg_2547;
assign delta_weights1_16_d1 = mul_16_reg_2387;
assign delta_weights1_16_we0 = delta_weights1_16_we0_local;
assign delta_weights1_16_we1 = delta_weights1_16_we1_local;
assign delta_weights1_17_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_17_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_17_ce0 = delta_weights1_17_ce0_local;
assign delta_weights1_17_ce1 = delta_weights1_17_ce1_local;
assign delta_weights1_17_d0 = mul_49_reg_2552;
assign delta_weights1_17_d1 = mul_17_reg_2392;
assign delta_weights1_17_we0 = delta_weights1_17_we0_local;
assign delta_weights1_17_we1 = delta_weights1_17_we1_local;
assign delta_weights1_18_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_18_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_18_ce0 = delta_weights1_18_ce0_local;
assign delta_weights1_18_ce1 = delta_weights1_18_ce1_local;
assign delta_weights1_18_d0 = mul_50_reg_2557;
assign delta_weights1_18_d1 = mul_18_reg_2397;
assign delta_weights1_18_we0 = delta_weights1_18_we0_local;
assign delta_weights1_18_we1 = delta_weights1_18_we1_local;
assign delta_weights1_19_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_19_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_19_ce0 = delta_weights1_19_ce0_local;
assign delta_weights1_19_ce1 = delta_weights1_19_ce1_local;
assign delta_weights1_19_d0 = mul_51_reg_2562;
assign delta_weights1_19_d1 = mul_19_reg_2402;
assign delta_weights1_19_we0 = delta_weights1_19_we0_local;
assign delta_weights1_19_we1 = delta_weights1_19_we1_local;
assign delta_weights1_1_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_1_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = mul_33_reg_2472;
assign delta_weights1_1_d1 = mul_1_reg_2312;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign delta_weights1_20_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_20_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_20_ce0 = delta_weights1_20_ce0_local;
assign delta_weights1_20_ce1 = delta_weights1_20_ce1_local;
assign delta_weights1_20_d0 = mul_52_reg_2567;
assign delta_weights1_20_d1 = mul_20_reg_2407;
assign delta_weights1_20_we0 = delta_weights1_20_we0_local;
assign delta_weights1_20_we1 = delta_weights1_20_we1_local;
assign delta_weights1_21_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_21_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_21_ce0 = delta_weights1_21_ce0_local;
assign delta_weights1_21_ce1 = delta_weights1_21_ce1_local;
assign delta_weights1_21_d0 = mul_53_reg_2572;
assign delta_weights1_21_d1 = mul_21_reg_2412;
assign delta_weights1_21_we0 = delta_weights1_21_we0_local;
assign delta_weights1_21_we1 = delta_weights1_21_we1_local;
assign delta_weights1_22_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_22_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_22_ce0 = delta_weights1_22_ce0_local;
assign delta_weights1_22_ce1 = delta_weights1_22_ce1_local;
assign delta_weights1_22_d0 = mul_54_reg_2577;
assign delta_weights1_22_d1 = mul_22_reg_2417;
assign delta_weights1_22_we0 = delta_weights1_22_we0_local;
assign delta_weights1_22_we1 = delta_weights1_22_we1_local;
assign delta_weights1_23_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_23_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_23_ce0 = delta_weights1_23_ce0_local;
assign delta_weights1_23_ce1 = delta_weights1_23_ce1_local;
assign delta_weights1_23_d0 = mul_55_reg_2582;
assign delta_weights1_23_d1 = mul_23_reg_2422;
assign delta_weights1_23_we0 = delta_weights1_23_we0_local;
assign delta_weights1_23_we1 = delta_weights1_23_we1_local;
assign delta_weights1_24_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_24_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_24_ce0 = delta_weights1_24_ce0_local;
assign delta_weights1_24_ce1 = delta_weights1_24_ce1_local;
assign delta_weights1_24_d0 = mul_56_reg_2587;
assign delta_weights1_24_d1 = mul_24_reg_2427;
assign delta_weights1_24_we0 = delta_weights1_24_we0_local;
assign delta_weights1_24_we1 = delta_weights1_24_we1_local;
assign delta_weights1_25_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_25_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_25_ce0 = delta_weights1_25_ce0_local;
assign delta_weights1_25_ce1 = delta_weights1_25_ce1_local;
assign delta_weights1_25_d0 = mul_57_reg_2592;
assign delta_weights1_25_d1 = mul_25_reg_2432;
assign delta_weights1_25_we0 = delta_weights1_25_we0_local;
assign delta_weights1_25_we1 = delta_weights1_25_we1_local;
assign delta_weights1_26_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_26_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_26_ce0 = delta_weights1_26_ce0_local;
assign delta_weights1_26_ce1 = delta_weights1_26_ce1_local;
assign delta_weights1_26_d0 = mul_58_reg_2597;
assign delta_weights1_26_d1 = mul_26_reg_2437;
assign delta_weights1_26_we0 = delta_weights1_26_we0_local;
assign delta_weights1_26_we1 = delta_weights1_26_we1_local;
assign delta_weights1_27_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_27_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_27_ce0 = delta_weights1_27_ce0_local;
assign delta_weights1_27_ce1 = delta_weights1_27_ce1_local;
assign delta_weights1_27_d0 = mul_59_reg_2602;
assign delta_weights1_27_d1 = mul_27_reg_2442;
assign delta_weights1_27_we0 = delta_weights1_27_we0_local;
assign delta_weights1_27_we1 = delta_weights1_27_we1_local;
assign delta_weights1_28_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_28_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_28_ce0 = delta_weights1_28_ce0_local;
assign delta_weights1_28_ce1 = delta_weights1_28_ce1_local;
assign delta_weights1_28_d0 = mul_60_reg_2607;
assign delta_weights1_28_d1 = mul_28_reg_2447;
assign delta_weights1_28_we0 = delta_weights1_28_we0_local;
assign delta_weights1_28_we1 = delta_weights1_28_we1_local;
assign delta_weights1_29_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_29_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_29_ce0 = delta_weights1_29_ce0_local;
assign delta_weights1_29_ce1 = delta_weights1_29_ce1_local;
assign delta_weights1_29_d0 = mul_61_reg_2612;
assign delta_weights1_29_d1 = mul_29_reg_2452;
assign delta_weights1_29_we0 = delta_weights1_29_we0_local;
assign delta_weights1_29_we1 = delta_weights1_29_we1_local;
assign delta_weights1_2_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_2_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_ce1 = delta_weights1_2_ce1_local;
assign delta_weights1_2_d0 = mul_34_reg_2477;
assign delta_weights1_2_d1 = mul_2_reg_2317;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_2_we1 = delta_weights1_2_we1_local;
assign delta_weights1_30_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_30_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_30_ce0 = delta_weights1_30_ce0_local;
assign delta_weights1_30_ce1 = delta_weights1_30_ce1_local;
assign delta_weights1_30_d0 = mul_62_reg_2617;
assign delta_weights1_30_d1 = mul_30_reg_2457;
assign delta_weights1_30_we0 = delta_weights1_30_we0_local;
assign delta_weights1_30_we1 = delta_weights1_30_we1_local;
assign delta_weights1_31_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_31_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_31_ce0 = delta_weights1_31_ce0_local;
assign delta_weights1_31_ce1 = delta_weights1_31_ce1_local;
assign delta_weights1_31_d0 = mul_63_reg_2622;
assign delta_weights1_31_d1 = mul_31_reg_2462;
assign delta_weights1_31_we0 = delta_weights1_31_we0_local;
assign delta_weights1_31_we1 = delta_weights1_31_we1_local;
assign delta_weights1_3_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_3_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_ce1 = delta_weights1_3_ce1_local;
assign delta_weights1_3_d0 = mul_35_reg_2482;
assign delta_weights1_3_d1 = mul_3_reg_2322;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_3_we1 = delta_weights1_3_we1_local;
assign delta_weights1_4_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_4_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_ce1 = delta_weights1_4_ce1_local;
assign delta_weights1_4_d0 = mul_36_reg_2487;
assign delta_weights1_4_d1 = mul_4_reg_2327;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_4_we1 = delta_weights1_4_we1_local;
assign delta_weights1_5_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_5_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_ce1 = delta_weights1_5_ce1_local;
assign delta_weights1_5_d0 = mul_37_reg_2492;
assign delta_weights1_5_d1 = mul_5_reg_2332;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_5_we1 = delta_weights1_5_we1_local;
assign delta_weights1_6_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_6_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_ce1 = delta_weights1_6_ce1_local;
assign delta_weights1_6_d0 = mul_38_reg_2497;
assign delta_weights1_6_d1 = mul_6_reg_2337;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_6_we1 = delta_weights1_6_we1_local;
assign delta_weights1_7_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_7_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_ce1 = delta_weights1_7_ce1_local;
assign delta_weights1_7_d0 = mul_39_reg_2502;
assign delta_weights1_7_d1 = mul_7_reg_2342;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_7_we1 = delta_weights1_7_we1_local;
assign delta_weights1_8_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_8_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_8_ce0 = delta_weights1_8_ce0_local;
assign delta_weights1_8_ce1 = delta_weights1_8_ce1_local;
assign delta_weights1_8_d0 = mul_40_reg_2507;
assign delta_weights1_8_d1 = mul_8_reg_2347;
assign delta_weights1_8_we0 = delta_weights1_8_we0_local;
assign delta_weights1_8_we1 = delta_weights1_8_we1_local;
assign delta_weights1_9_address0 = zext_ln115_1_fu_1856_p1;
assign delta_weights1_9_address1 = zext_ln115_fu_1813_p1;
assign delta_weights1_9_ce0 = delta_weights1_9_ce0_local;
assign delta_weights1_9_ce1 = delta_weights1_9_ce1_local;
assign delta_weights1_9_d0 = mul_41_reg_2512;
assign delta_weights1_9_d1 = mul_9_reg_2352;
assign delta_weights1_9_we0 = delta_weights1_9_we0_local;
assign delta_weights1_9_we1 = delta_weights1_9_we1_local;
assign empty_fu_1739_p1 = training_data_load_reg_2234;
assign grp_fu_1644_p_ce = 1'b1;
assign grp_fu_1644_p_din0 = empty_fu_1739_p1;
assign grp_fu_1644_p_din1 = output_difference_load;
assign grp_fu_1648_p_ce = 1'b1;
assign grp_fu_1648_p_din0 = empty_fu_1739_p1;
assign grp_fu_1648_p_din1 = output_difference_load_64;
assign grp_fu_1652_p_ce = 1'b1;
assign grp_fu_1652_p_din0 = empty_fu_1739_p1;
assign grp_fu_1652_p_din1 = output_difference_load_65;
assign grp_fu_1656_p_ce = 1'b1;
assign grp_fu_1656_p_din0 = empty_fu_1739_p1;
assign grp_fu_1656_p_din1 = output_difference_load_66;
assign grp_fu_1660_p_ce = 1'b1;
assign grp_fu_1660_p_din0 = empty_fu_1739_p1;
assign grp_fu_1660_p_din1 = output_difference_load_67;
assign grp_fu_1664_p_ce = 1'b1;
assign grp_fu_1664_p_din0 = empty_fu_1739_p1;
assign grp_fu_1664_p_din1 = output_difference_load_68;
assign grp_fu_1668_p_ce = 1'b1;
assign grp_fu_1668_p_din0 = empty_fu_1739_p1;
assign grp_fu_1668_p_din1 = output_difference_load_69;
assign grp_fu_1672_p_ce = 1'b1;
assign grp_fu_1672_p_din0 = empty_fu_1739_p1;
assign grp_fu_1672_p_din1 = output_difference_load_70;
assign grp_fu_1676_p_ce = 1'b1;
assign grp_fu_1676_p_din0 = empty_fu_1739_p1;
assign grp_fu_1676_p_din1 = output_difference_load_71;
assign grp_fu_1680_p_ce = 1'b1;
assign grp_fu_1680_p_din0 = empty_fu_1739_p1;
assign grp_fu_1680_p_din1 = output_difference_load_72;
assign grp_fu_1684_p_ce = 1'b1;
assign grp_fu_1684_p_din0 = empty_fu_1739_p1;
assign grp_fu_1684_p_din1 = output_difference_load_73;
assign grp_fu_1688_p_ce = 1'b1;
assign grp_fu_1688_p_din0 = empty_fu_1739_p1;
assign grp_fu_1688_p_din1 = output_difference_load_74;
assign grp_fu_1692_p_ce = 1'b1;
assign grp_fu_1692_p_din0 = empty_fu_1739_p1;
assign grp_fu_1692_p_din1 = output_difference_load_75;
assign grp_fu_1696_p_ce = 1'b1;
assign grp_fu_1696_p_din0 = empty_fu_1739_p1;
assign grp_fu_1696_p_din1 = output_difference_load_76;
assign grp_fu_1700_p_ce = 1'b1;
assign grp_fu_1700_p_din0 = empty_fu_1739_p1;
assign grp_fu_1700_p_din1 = output_difference_load_77;
assign grp_fu_1704_p_ce = 1'b1;
assign grp_fu_1704_p_din0 = empty_fu_1739_p1;
assign grp_fu_1704_p_din1 = output_difference_load_78;
assign grp_fu_1708_p_ce = 1'b1;
assign grp_fu_1708_p_din0 = empty_fu_1739_p1;
assign grp_fu_1708_p_din1 = output_difference_load_79;
assign grp_fu_1712_p_ce = 1'b1;
assign grp_fu_1712_p_din0 = empty_fu_1739_p1;
assign grp_fu_1712_p_din1 = output_difference_load_80;
assign grp_fu_1716_p_ce = 1'b1;
assign grp_fu_1716_p_din0 = empty_fu_1739_p1;
assign grp_fu_1716_p_din1 = output_difference_load_81;
assign grp_fu_1720_p_ce = 1'b1;
assign grp_fu_1720_p_din0 = empty_fu_1739_p1;
assign grp_fu_1720_p_din1 = output_difference_load_82;
assign grp_fu_1724_p_ce = 1'b1;
assign grp_fu_1724_p_din0 = empty_fu_1739_p1;
assign grp_fu_1724_p_din1 = output_difference_load_83;
assign grp_fu_1728_p_ce = 1'b1;
assign grp_fu_1728_p_din0 = empty_fu_1739_p1;
assign grp_fu_1728_p_din1 = output_difference_load_84;
assign grp_fu_1732_p_ce = 1'b1;
assign grp_fu_1732_p_din0 = empty_fu_1739_p1;
assign grp_fu_1732_p_din1 = output_difference_load_85;
assign grp_fu_1736_p_ce = 1'b1;
assign grp_fu_1736_p_din0 = empty_fu_1739_p1;
assign grp_fu_1736_p_din1 = output_difference_load_86;
assign grp_fu_1740_p_ce = 1'b1;
assign grp_fu_1740_p_din0 = empty_fu_1739_p1;
assign grp_fu_1740_p_din1 = output_difference_load_87;
assign grp_fu_1744_p_ce = 1'b1;
assign grp_fu_1744_p_din0 = empty_fu_1739_p1;
assign grp_fu_1744_p_din1 = output_difference_load_88;
assign grp_fu_1748_p_ce = 1'b1;
assign grp_fu_1748_p_din0 = empty_fu_1739_p1;
assign grp_fu_1748_p_din1 = output_difference_load_89;
assign grp_fu_1752_p_ce = 1'b1;
assign grp_fu_1752_p_din0 = empty_fu_1739_p1;
assign grp_fu_1752_p_din1 = output_difference_load_90;
assign grp_fu_1756_p_ce = 1'b1;
assign grp_fu_1756_p_din0 = empty_fu_1739_p1;
assign grp_fu_1756_p_din1 = output_difference_load_91;
assign grp_fu_1760_p_ce = 1'b1;
assign grp_fu_1760_p_din0 = empty_fu_1739_p1;
assign grp_fu_1760_p_din1 = output_difference_load_92;
assign grp_fu_1764_p_ce = 1'b1;
assign grp_fu_1764_p_din0 = empty_fu_1739_p1;
assign grp_fu_1764_p_din1 = output_difference_load_93;
assign grp_fu_1768_p_ce = 1'b1;
assign grp_fu_1768_p_din0 = empty_fu_1739_p1;
assign grp_fu_1768_p_din1 = output_difference_load_94;
assign grp_fu_1772_p_ce = 1'b1;
assign grp_fu_1772_p_din0 = empty_fu_1739_p1;
assign grp_fu_1772_p_din1 = output_difference_load_95;
assign grp_fu_1776_p_ce = 1'b1;
assign grp_fu_1776_p_din0 = empty_fu_1739_p1;
assign grp_fu_1776_p_din1 = output_difference_load_96;
assign grp_fu_1780_p_ce = 1'b1;
assign grp_fu_1780_p_din0 = empty_fu_1739_p1;
assign grp_fu_1780_p_din1 = output_difference_load_97;
assign grp_fu_1784_p_ce = 1'b1;
assign grp_fu_1784_p_din0 = empty_fu_1739_p1;
assign grp_fu_1784_p_din1 = output_difference_load_98;
assign grp_fu_1788_p_ce = 1'b1;
assign grp_fu_1788_p_din0 = empty_fu_1739_p1;
assign grp_fu_1788_p_din1 = output_difference_load_99;
assign grp_fu_1792_p_ce = 1'b1;
assign grp_fu_1792_p_din0 = empty_fu_1739_p1;
assign grp_fu_1792_p_din1 = output_difference_load_100;
assign grp_fu_1796_p_ce = 1'b1;
assign grp_fu_1796_p_din0 = empty_fu_1739_p1;
assign grp_fu_1796_p_din1 = output_difference_load_101;
assign grp_fu_1800_p_ce = 1'b1;
assign grp_fu_1800_p_din0 = empty_fu_1739_p1;
assign grp_fu_1800_p_din1 = output_difference_load_102;
assign grp_fu_1804_p_ce = 1'b1;
assign grp_fu_1804_p_din0 = empty_fu_1739_p1;
assign grp_fu_1804_p_din1 = output_difference_load_103;
assign grp_fu_1808_p_ce = 1'b1;
assign grp_fu_1808_p_din0 = empty_fu_1739_p1;
assign grp_fu_1808_p_din1 = output_difference_load_104;
assign grp_fu_1812_p_ce = 1'b1;
assign grp_fu_1812_p_din0 = empty_fu_1739_p1;
assign grp_fu_1812_p_din1 = output_difference_load_105;
assign grp_fu_1816_p_ce = 1'b1;
assign grp_fu_1816_p_din0 = empty_fu_1739_p1;
assign grp_fu_1816_p_din1 = output_difference_load_106;
assign grp_fu_1820_p_ce = 1'b1;
assign grp_fu_1820_p_din0 = empty_fu_1739_p1;
assign grp_fu_1820_p_din1 = output_difference_load_107;
assign grp_fu_1824_p_ce = 1'b1;
assign grp_fu_1824_p_din0 = empty_fu_1739_p1;
assign grp_fu_1824_p_din1 = output_difference_load_108;
assign grp_fu_1828_p_ce = 1'b1;
assign grp_fu_1828_p_din0 = empty_fu_1739_p1;
assign grp_fu_1828_p_din1 = output_difference_load_109;
assign grp_fu_1832_p_ce = 1'b1;
assign grp_fu_1832_p_din0 = empty_fu_1739_p1;
assign grp_fu_1832_p_din1 = output_difference_load_110;
assign grp_fu_1836_p_ce = 1'b1;
assign grp_fu_1836_p_din0 = empty_fu_1739_p1;
assign grp_fu_1836_p_din1 = output_difference_load_111;
assign grp_fu_1840_p_ce = 1'b1;
assign grp_fu_1840_p_din0 = empty_fu_1739_p1;
assign grp_fu_1840_p_din1 = output_difference_load_112;
assign grp_fu_1844_p_ce = 1'b1;
assign grp_fu_1844_p_din0 = empty_fu_1739_p1;
assign grp_fu_1844_p_din1 = output_difference_load_113;
assign grp_fu_1848_p_ce = 1'b1;
assign grp_fu_1848_p_din0 = empty_fu_1739_p1;
assign grp_fu_1848_p_din1 = output_difference_load_114;
assign grp_fu_1852_p_ce = 1'b1;
assign grp_fu_1852_p_din0 = empty_fu_1739_p1;
assign grp_fu_1852_p_din1 = output_difference_load_115;
assign grp_fu_1856_p_ce = 1'b1;
assign grp_fu_1856_p_din0 = empty_fu_1739_p1;
assign grp_fu_1856_p_din1 = output_difference_load_116;
assign grp_fu_1860_p_ce = 1'b1;
assign grp_fu_1860_p_din0 = empty_fu_1739_p1;
assign grp_fu_1860_p_din1 = output_difference_load_117;
assign grp_fu_1864_p_ce = 1'b1;
assign grp_fu_1864_p_din0 = empty_fu_1739_p1;
assign grp_fu_1864_p_din1 = output_difference_load_118;
assign grp_fu_1868_p_ce = 1'b1;
assign grp_fu_1868_p_din0 = empty_fu_1739_p1;
assign grp_fu_1868_p_din1 = output_difference_load_119;
assign grp_fu_1872_p_ce = 1'b1;
assign grp_fu_1872_p_din0 = empty_fu_1739_p1;
assign grp_fu_1872_p_din1 = output_difference_load_120;
assign grp_fu_1876_p_ce = 1'b1;
assign grp_fu_1876_p_din0 = empty_fu_1739_p1;
assign grp_fu_1876_p_din1 = output_difference_load_121;
assign grp_fu_1880_p_ce = 1'b1;
assign grp_fu_1880_p_din0 = empty_fu_1739_p1;
assign grp_fu_1880_p_din1 = output_difference_load_122;
assign grp_fu_1884_p_ce = 1'b1;
assign grp_fu_1884_p_din0 = empty_fu_1739_p1;
assign grp_fu_1884_p_din1 = output_difference_load_123;
assign grp_fu_1888_p_ce = 1'b1;
assign grp_fu_1888_p_din0 = empty_fu_1739_p1;
assign grp_fu_1888_p_din1 = output_difference_load_124;
assign grp_fu_1892_p_ce = 1'b1;
assign grp_fu_1892_p_din0 = empty_fu_1739_p1;
assign grp_fu_1892_p_din1 = output_difference_load_125;
assign grp_fu_1896_p_ce = 1'b1;
assign grp_fu_1896_p_din0 = empty_fu_1739_p1;
assign grp_fu_1896_p_din1 = output_difference_load_126;
assign icmp_ln113_fu_1707_p2 = ((ap_sig_allocacmp_i_13 == 4'd13) ? 1'b1 : 1'b0);
assign or_ln_fu_1849_p3 = {{i_13_reg_2219_pp0_iter8_reg}, {1'd1}};
assign p_sum_cast_fu_1729_p1 = p_sum_fu_1723_p2;
assign p_sum_fu_1723_p2 = (zext_ln113_fu_1719_p1 + idx);
assign shl_ln_fu_1806_p3 = {{i_13_reg_2219_pp0_iter8_reg}, {1'd0}};
assign training_data_address0 = p_sum_cast_fu_1729_p1;
assign training_data_ce0 = training_data_ce0_local;
assign zext_ln113_fu_1719_p1 = ap_sig_allocacmp_i_13;
assign zext_ln115_1_fu_1856_p1 = or_ln_fu_1849_p3;
assign zext_ln115_fu_1813_p1 = shl_ln_fu_1806_p3;
endmodule 
