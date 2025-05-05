module fft1D_512_sin_or_cos_double_s (ap_clk,ap_rst,t_in,do_cos,ap_return,ap_ce); 
input   ap_clk;
input   ap_rst;
input  [63:0] t_in;
input  [0:0] do_cos;
output  [63:0] ap_return;
input   ap_ce;
wire   [3:0] ref_4oPi_table_256_address0;
wire   [255:0] ref_4oPi_table_256_q0;
wire   [7:0] fourth_order_double_sin_cos_K0_address0;
wire   [58:0] fourth_order_double_sin_cos_K0_q0;
wire   [7:0] fourth_order_double_sin_cos_K1_address0;
wire   [51:0] fourth_order_double_sin_cos_K1_q0;
wire   [7:0] fourth_order_double_sin_cos_K2_address0;
wire   [43:0] fourth_order_double_sin_cos_K2_q0;
wire   [7:0] fourth_order_double_sin_cos_K3_address0;
wire   [32:0] fourth_order_double_sin_cos_K3_q0;
wire   [7:0] fourth_order_double_sin_cos_K4_address0;
wire   [24:0] fourth_order_double_sin_cos_K4_q0;
reg   [0:0] do_cos_read_reg_1575;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] do_cos_read_reg_1575_pp0_iter1_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter2_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter3_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter4_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter5_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter6_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter7_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter8_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter9_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter10_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter11_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter12_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter13_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter14_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter15_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter16_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter17_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter18_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter19_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter20_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter21_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter22_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter23_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter24_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter25_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter26_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter27_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter28_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter29_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter30_reg;
reg   [0:0] do_cos_read_reg_1575_pp0_iter31_reg;
reg   [0:0] din_sign_reg_1583;
reg   [0:0] din_sign_reg_1583_pp0_iter1_reg;
reg   [0:0] din_sign_reg_1583_pp0_iter2_reg;
reg   [0:0] din_sign_reg_1583_pp0_iter3_reg;
reg   [0:0] din_sign_reg_1583_pp0_iter4_reg;
reg   [0:0] din_sign_reg_1583_pp0_iter5_reg;
reg   [0:0] din_sign_reg_1583_pp0_iter6_reg;
reg   [0:0] din_sign_reg_1583_pp0_iter7_reg;
reg   [0:0] din_sign_reg_1583_pp0_iter8_reg;
wire   [10:0] din_exp_fu_404_p4;
reg   [10:0] din_exp_reg_1589;
reg   [10:0] din_exp_reg_1589_pp0_iter1_reg;
reg   [10:0] din_exp_reg_1589_pp0_iter2_reg;
reg   [10:0] din_exp_reg_1589_pp0_iter3_reg;
reg   [10:0] din_exp_reg_1589_pp0_iter4_reg;
reg   [10:0] din_exp_reg_1589_pp0_iter5_reg;
reg   [10:0] din_exp_reg_1589_pp0_iter6_reg;
reg   [10:0] din_exp_reg_1589_pp0_iter7_reg;
reg   [10:0] din_exp_reg_1589_pp0_iter8_reg;
wire   [51:0] din_sig_fu_414_p1;
reg   [51:0] din_sig_reg_1596;
reg   [51:0] din_sig_reg_1596_pp0_iter1_reg;
reg   [51:0] din_sig_reg_1596_pp0_iter2_reg;
wire   [0:0] closepath_fu_418_p2;
reg   [0:0] closepath_reg_1602;
reg   [0:0] closepath_reg_1602_pp0_iter1_reg;
reg   [0:0] closepath_reg_1602_pp0_iter2_reg;
reg   [0:0] closepath_reg_1602_pp0_iter3_reg;
reg   [0:0] closepath_reg_1602_pp0_iter4_reg;
reg   [0:0] closepath_reg_1602_pp0_iter5_reg;
reg   [0:0] closepath_reg_1602_pp0_iter6_reg;
reg   [0:0] closepath_reg_1602_pp0_iter7_reg;
reg   [0:0] closepath_reg_1602_pp0_iter8_reg;
wire   [6:0] trunc_ln398_fu_453_p1;
reg   [6:0] trunc_ln398_reg_1613;
reg   [6:0] trunc_ln398_reg_1613_pp0_iter1_reg;
reg   [255:0] table_256_reg_1618;
reg  signed [169:0] Med_reg_1623;
wire   [0:0] and_ln271_fu_497_p2;
reg   [0:0] and_ln271_reg_1633;
reg   [0:0] and_ln271_reg_1633_pp0_iter4_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter5_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter6_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter7_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter8_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter9_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter10_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter11_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter12_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter13_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter14_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter15_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter16_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter17_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter18_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter19_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter20_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter21_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter22_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter23_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter24_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter25_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter26_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter27_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter28_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter29_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter30_reg;
reg   [0:0] and_ln271_reg_1633_pp0_iter31_reg;
reg   [123:0] Mx_bits_reg_1640;
reg   [2:0] k_reg_1646;
wire   [2:0] k_1_fu_523_p3;
reg   [2:0] k_1_reg_1651;
wire   [123:0] Mx_bits_2_fu_538_p3;
reg   [123:0] Mx_bits_2_reg_1657;
reg   [60:0] tmp_1_reg_1662;
reg   [62:0] Mx_reg_1667;
reg   [62:0] Mx_reg_1667_pp0_iter10_reg;
reg   [62:0] Mx_reg_1667_pp0_iter11_reg;
reg   [62:0] Mx_reg_1667_pp0_iter12_reg;
reg   [62:0] Mx_reg_1667_pp0_iter13_reg;
reg   [62:0] Mx_reg_1667_pp0_iter14_reg;
reg   [62:0] Mx_reg_1667_pp0_iter15_reg;
reg   [62:0] Mx_reg_1667_pp0_iter16_reg;
reg   [62:0] Mx_reg_1667_pp0_iter17_reg;
reg   [62:0] Mx_reg_1667_pp0_iter18_reg;
reg   [62:0] Mx_reg_1667_pp0_iter19_reg;
reg   [62:0] Mx_reg_1667_pp0_iter20_reg;
reg   [62:0] Mx_reg_1667_pp0_iter21_reg;
reg   [62:0] Mx_reg_1667_pp0_iter22_reg;
wire   [10:0] Ex_1_fu_631_p2;
reg   [10:0] Ex_1_reg_1674;
reg   [10:0] Ex_1_reg_1674_pp0_iter10_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter11_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter12_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter13_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter14_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter15_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter16_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter17_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter18_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter19_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter20_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter21_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter22_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter23_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter24_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter25_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter26_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter27_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter28_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter29_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter30_reg;
reg   [10:0] Ex_1_reg_1674_pp0_iter31_reg;
reg   [0:0] tmp_reg_1680;
wire   [10:0] sub_ln506_fu_645_p2;
reg   [10:0] sub_ln506_reg_1686;
wire   [0:0] cos_basis_fu_696_p3;
reg   [0:0] cos_basis_reg_1691;
reg   [0:0] cos_basis_reg_1691_pp0_iter10_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter11_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter12_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter13_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter14_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter15_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter16_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter17_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter18_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter19_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter20_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter21_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter22_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter23_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter24_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter25_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter26_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter27_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter28_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter29_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter30_reg;
reg   [0:0] cos_basis_reg_1691_pp0_iter31_reg;
wire   [0:0] sin_basis_fu_703_p3;
reg   [0:0] sin_basis_reg_1697;
reg   [0:0] sin_basis_reg_1697_pp0_iter10_reg;
reg   [0:0] sin_basis_reg_1697_pp0_iter11_reg;
reg   [0:0] sin_basis_reg_1697_pp0_iter12_reg;
reg   [0:0] sin_basis_reg_1697_pp0_iter13_reg;
wire   [0:0] icmp_ln282_fu_878_p2;
reg   [0:0] icmp_ln282_reg_1702;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter10_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter11_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter12_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter13_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter14_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter15_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter16_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter17_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter18_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter19_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter20_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter21_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter22_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter23_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter24_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter25_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter26_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter27_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter28_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter29_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter30_reg;
reg   [0:0] icmp_ln282_reg_1702_pp0_iter31_reg;
wire   [0:0] results_sign_3_fu_895_p3;
reg   [0:0] results_sign_3_reg_1709;
reg   [0:0] results_sign_3_reg_1709_pp0_iter10_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter11_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter12_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter13_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter14_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter15_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter16_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter17_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter18_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter19_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter20_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter21_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter22_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter23_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter24_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter25_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter26_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter27_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter28_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter29_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter30_reg;
reg   [0:0] results_sign_3_reg_1709_pp0_iter31_reg;
reg   [6:0] tmp_2_reg_1714;
reg   [6:0] tmp_2_reg_1714_pp0_iter11_reg;
reg   [6:0] tmp_2_reg_1714_pp0_iter12_reg;
reg   [6:0] tmp_2_reg_1714_pp0_iter13_reg;
wire   [55:0] B_fu_938_p1;
reg   [55:0] B_reg_1719;
reg   [55:0] B_reg_1719_pp0_iter11_reg;
reg   [55:0] B_reg_1719_pp0_iter12_reg;
reg   [55:0] B_reg_1719_pp0_iter13_reg;
reg   [55:0] B_reg_1719_pp0_iter14_reg;
reg   [55:0] B_reg_1719_pp0_iter15_reg;
reg   [48:0] B_trunc_reg_1724;
wire   [97:0] zext_ln25_fu_952_p1;
reg   [97:0] zext_ln25_reg_1729;
reg   [97:0] zext_ln25_reg_1729_pp0_iter12_reg;
reg   [97:0] zext_ln25_reg_1729_pp0_iter13_reg;
reg   [97:0] zext_ln25_reg_1729_pp0_iter14_reg;
reg   [97:0] zext_ln25_reg_1729_pp0_iter15_reg;
wire   [63:0] zext_ln32_fu_963_p1;
reg   [63:0] zext_ln32_reg_1736;
reg   [63:0] zext_ln32_reg_1736_pp0_iter15_reg;
reg   [63:0] zext_ln32_reg_1736_pp0_iter16_reg;
reg   [63:0] zext_ln32_reg_1736_pp0_iter17_reg;
reg   [63:0] zext_ln32_reg_1736_pp0_iter18_reg;
reg   [48:0] B_squared_reg_1753;
reg  signed [51:0] fourth_order_double_sin_cos_K1_load_reg_1759;
reg  signed [43:0] fourth_order_double_sin_cos_K2_load_reg_1764;
wire   [97:0] zext_ln25_1_fu_979_p1;
reg   [58:0] t1_reg_1811;
reg   [55:0] trunc_ln_reg_1816;
reg   [47:0] trunc_ln1_reg_1821;
reg   [41:0] tmp_7_reg_1826;
reg   [32:0] fourth_order_double_sin_cos_K3_load_reg_1831;
reg   [34:0] tmp_8_reg_1836;
reg   [24:0] fourth_order_double_sin_cos_K4_load_reg_1841;
wire   [63:0] add_ln37_1_fu_1080_p2;
reg   [63:0] add_ln37_1_reg_1866;
reg   [63:0] add_ln37_1_reg_1866_pp0_iter22_reg;
reg   [28:0] lshr_ln_reg_1871;
reg   [36:0] tmp_19_reg_1876;
wire   [62:0] Mx_1_fu_1106_p3;
reg   [62:0] Mx_1_reg_1881;
wire   [63:0] add_ln37_3_fu_1123_p2;
reg  signed [63:0] add_ln37_3_reg_1886;
reg   [62:0] result_reg_1901;
reg   [15:0] tmp_9_reg_1907;
reg   [15:0] tmp_10_reg_1912;
reg   [15:0] tmp_10_reg_1912_pp0_iter29_reg;
reg   [15:0] tmp_11_reg_1917;
reg   [15:0] tmp_11_reg_1917_pp0_iter29_reg;
reg   [14:0] tmp_12_reg_1922;
reg   [14:0] tmp_12_reg_1922_pp0_iter29_reg;
reg   [14:0] tmp_12_reg_1922_pp0_iter30_reg;
reg   [31:0] c_fu_1204_p3;
reg   [31:0] c_reg_1927;
reg   [31:0] c_reg_1927_pp0_iter30_reg;
wire   [62:0] in_shift_2_fu_1216_p2;
reg   [62:0] in_shift_2_reg_1933;
wire   [61:0] trunc_ln419_fu_1221_p1;
reg   [61:0] trunc_ln419_reg_1938;
reg   [61:0] trunc_ln419_reg_1938_pp0_iter30_reg;
reg   [61:0] trunc_ln419_reg_1938_pp0_iter31_reg;
wire   [0:0] icmp_ln433_fu_1225_p2;
reg   [0:0] icmp_ln433_reg_1943;
reg   [0:0] icmp_ln433_reg_1943_pp0_iter30_reg;
reg   [0:0] icmp_ln433_reg_1943_pp0_iter31_reg;
reg   [31:0] c_2_fu_1272_p3;
reg   [31:0] c_2_reg_1948;
wire   [31:0] shift_1_fu_1280_p2;
reg   [31:0] shift_1_reg_1955;
wire   [62:0] in_shift_3_fu_1290_p2;
reg   [62:0] in_shift_3_reg_1961;
wire   [61:0] trunc_ln419_1_fu_1295_p1;
reg   [61:0] trunc_ln419_1_reg_1966;
reg   [61:0] trunc_ln419_1_reg_1966_pp0_iter31_reg;
wire   [0:0] icmp_ln424_1_fu_1299_p2;
reg   [0:0] icmp_ln424_1_reg_1971;
reg   [31:0] c_3_fu_1322_p3;
reg   [31:0] c_3_reg_1977;
wire   [62:0] in_shift_4_fu_1342_p2;
reg   [62:0] in_shift_4_reg_1982;
wire   [61:0] trunc_ln419_2_fu_1347_p1;
reg   [61:0] trunc_ln419_2_reg_1987;
wire   [2:0] sel_tmp5_fu_1390_p4;
reg   [2:0] sel_tmp5_reg_1992;
wire   [31:0] shift_4_fu_1400_p11;
reg   [31:0] shift_4_reg_1997;
wire   [63:0] zext_ln397_fu_448_p1;
wire    ap_block_pp0_stage0;
reg    ref_4oPi_table_256_ce0_local;
reg    fourth_order_double_sin_cos_K1_ce0_local;
reg    fourth_order_double_sin_cos_K2_ce0_local;
reg    fourth_order_double_sin_cos_K0_ce0_local;
reg    fourth_order_double_sin_cos_K3_ce0_local;
reg    fourth_order_double_sin_cos_K4_ce0_local;
wire   [34:0] grp_fu_356_p0;
wire   [24:0] grp_fu_356_p1;
wire   [41:0] grp_fu_360_p0;
wire   [32:0] grp_fu_360_p1;
wire   [48:0] grp_fu_364_p0;
wire   [48:0] grp_fu_368_p0;
wire   [48:0] grp_fu_368_p1;
wire   [48:0] grp_fu_372_p0;
wire   [48:0] grp_fu_372_p1;
wire   [48:0] grp_fu_376_p0;
wire   [48:0] grp_fu_376_p1;
wire   [55:0] grp_fu_380_p0;
wire   [62:0] grp_fu_384_p1;
wire   [52:0] grp_fu_388_p1;
wire   [63:0] data_fu_392_p1;
wire   [10:0] add_ln396_fu_424_p2;
wire   [10:0] addr_fu_430_p3;
wire   [3:0] tmp_s_fu_438_p4;
wire   [255:0] zext_ln398_fu_457_p1;
wire   [255:0] shl_ln398_fu_460_p2;
wire   [52:0] X_fu_475_p3;
wire   [0:0] icmp_ln271_fu_487_p2;
wire   [0:0] icmp_ln271_1_fu_492_p2;
wire   [169:0] grp_fu_388_p2;
wire   [0:0] trunc_ln491_fu_529_p1;
wire   [123:0] Mx_bits_1_fu_533_p2;
wire   [10:0] Ex_fu_555_p2;
wire   [61:0] t_fu_567_p3;
reg   [61:0] tmp_3_fu_574_p4;
wire   [62:0] tmp_4_fu_584_p3;
wire  signed [63:0] sext_ln75_fu_592_p1;
reg   [63:0] tmp_5_fu_596_p3;
wire   [6:0] Mx_zeros_fu_604_p1;
wire   [123:0] zext_ln504_fu_612_p1;
wire   [123:0] shl_ln504_fu_616_p2;
wire   [10:0] select_ln453_fu_560_p3;
wire   [10:0] zext_ln505_fu_608_p1;
wire   [0:0] tmp_6_fu_651_p17;
wire   [0:0] tmp_6_fu_651_p19;
wire   [0:0] xor_ln242_fu_690_p2;
wire   [0:0] tmp_17_fu_716_p33;
wire   [3:0] index_fu_710_p3;
wire   [0:0] tmp_18_fu_788_p33;
wire   [0:0] tmp_17_fu_716_p35;
wire   [0:0] tmp_18_fu_788_p35;
wire   [0:0] xor_ln278_fu_868_p2;
wire   [0:0] results_sign_fu_860_p3;
wire   [0:0] xor_ln282_fu_883_p2;
wire   [0:0] results_sign_2_fu_873_p2;
wire   [0:0] results_sign_4_fu_889_p2;
wire   [10:0] select_ln506_fu_902_p3;
wire   [62:0] zext_ln506_fu_907_p1;
wire   [62:0] lshr_ln506_fu_911_p2;
wire   [62:0] shl_ln506_fu_916_p2;
wire   [62:0] x_fu_921_p3;
wire   [7:0] A_fu_957_p3;
wire   [97:0] grp_fu_368_p2;
wire   [107:0] grp_fu_380_p2;
wire   [92:0] grp_fu_364_p2;
wire   [97:0] grp_fu_372_p2;
wire   [97:0] grp_fu_376_p2;
wire   [62:0] t1_1_fu_1041_p3;
wire  signed [63:0] sext_ln37_fu_1064_p1;
wire  signed [63:0] sext_ln37_1_fu_1068_p1;
wire   [63:0] add_ln37_fu_1071_p2;
wire  signed [63:0] sext_ln37_2_fu_1077_p1;
wire   [59:0] grp_fu_356_p2;
wire   [74:0] grp_fu_360_p2;
wire   [63:0] zext_ln37_2_fu_1112_p1;
wire   [63:0] add_ln37_2_fu_1115_p2;
wire   [63:0] zext_ln37_fu_1120_p1;
wire   [125:0] grp_fu_384_p2;
wire   [31:0] out_bits_fu_1187_p3;
reg   [31:0] tmp_13_fu_1194_p4;
wire   [62:0] zext_ln423_fu_1212_p1;
wire   [31:0] out_bits_4_fu_1230_p3;
reg   [31:0] tmp_14_fu_1244_p4;
wire   [31:0] out_bits_5_fu_1237_p3;
reg   [31:0] tmp_15_fu_1262_p4;
reg   [31:0] c_1_fu_1254_p3;
wire   [62:0] zext_ln423_1_fu_1286_p1;
wire   [31:0] out_bits_6_fu_1305_p3;
reg   [31:0] tmp_16_fu_1312_p4;
wire   [62:0] zext_ln423_2_fu_1339_p1;
wire   [31:0] shift_2_fu_1335_p2;
wire   [0:0] icmp_ln424_fu_1330_p2;
wire   [0:0] icmp_ln424_2_fu_1351_p2;
wire   [0:0] and_ln424_fu_1368_p2;
wire   [0:0] xor_ln424_1_fu_1379_p2;
wire   [0:0] xor_ln424_fu_1362_p2;
wire   [0:0] and_ln424_1_fu_1373_p2;
wire   [0:0] and_ln424_2_fu_1384_p2;
wire   [31:0] shift_4_fu_1400_p4;
wire   [31:0] shift_4_fu_1400_p9;
wire   [2:0] shift_4_fu_1400_p10;
wire   [10:0] Ex_2_fu_1422_p3;
wire   [62:0] zext_ln423_3_fu_1432_p1;
wire   [62:0] in_shift_5_fu_1435_p2;
wire   [61:0] in_shift_fu_1444_p4;
wire   [61:0] in_shift_fu_1444_p9;
wire  signed [11:0] sext_ln252_fu_1428_p1;
wire   [11:0] add_ln432_fu_1464_p2;
wire  signed [31:0] sext_ln432_fu_1470_p1;
wire   [31:0] newexp_fu_1474_p2;
wire   [0:0] tmp_20_fu_1479_p3;
wire   [61:0] in_shift_fu_1444_p11;
wire   [0:0] or_ln433_fu_1487_p2;
wire   [0:0] or_ln282_fu_1520_p2;
wire   [10:0] select_ln282_fu_1513_p3;
wire   [10:0] empty_fu_1492_p1;
wire   [51:0] select_ln282_2_fu_1533_p3;
wire   [51:0] phitmp_fu_1496_p4;
wire   [10:0] select_ln259_fu_1506_p3;
wire   [10:0] results_exp_fu_1525_p3;
wire   [51:0] results_sig_fu_1540_p3;
wire   [10:0] results_exp_1_fu_1548_p3;
wire   [51:0] results_sig_1_fu_1555_p3;
wire   [63:0] t_2_fu_1562_p4;
reg    grp_fu_356_ce;
reg    grp_fu_360_ce;
reg    grp_fu_364_ce;
reg    grp_fu_368_ce;
reg    grp_fu_372_ce;
reg    grp_fu_376_ce;
reg    grp_fu_380_ce;
reg    grp_fu_384_ce;
reg    grp_fu_388_ce;
reg   [63:0] t_in_int_reg;
reg   [0:0] do_cos_int_reg;
wire   [59:0] grp_fu_356_p00;
wire   [59:0] grp_fu_356_p10;
wire   [74:0] grp_fu_360_p00;
wire   [74:0] grp_fu_360_p10;
wire   [92:0] grp_fu_364_p00;
wire   [107:0] grp_fu_380_p00;
wire   [125:0] grp_fu_384_p10;
wire   [169:0] grp_fu_388_p10;
wire   [2:0] tmp_6_fu_651_p1;
wire   [2:0] tmp_6_fu_651_p3;
wire   [2:0] tmp_6_fu_651_p5;
wire   [2:0] tmp_6_fu_651_p7;
wire  signed [2:0] tmp_6_fu_651_p9;
wire  signed [2:0] tmp_6_fu_651_p11;
wire  signed [2:0] tmp_6_fu_651_p13;
wire  signed [2:0] tmp_6_fu_651_p15;
wire   [3:0] tmp_17_fu_716_p1;
wire   [3:0] tmp_17_fu_716_p3;
wire   [3:0] tmp_17_fu_716_p5;
wire   [3:0] tmp_17_fu_716_p7;
wire   [3:0] tmp_17_fu_716_p9;
wire   [3:0] tmp_17_fu_716_p11;
wire   [3:0] tmp_17_fu_716_p13;
wire   [3:0] tmp_17_fu_716_p15;
wire  signed [3:0] tmp_17_fu_716_p17;
wire  signed [3:0] tmp_17_fu_716_p19;
wire  signed [3:0] tmp_17_fu_716_p21;
wire  signed [3:0] tmp_17_fu_716_p23;
wire  signed [3:0] tmp_17_fu_716_p25;
wire  signed [3:0] tmp_17_fu_716_p27;
wire  signed [3:0] tmp_17_fu_716_p29;
wire  signed [3:0] tmp_17_fu_716_p31;
wire   [3:0] tmp_18_fu_788_p1;
wire   [3:0] tmp_18_fu_788_p3;
wire   [3:0] tmp_18_fu_788_p5;
wire   [3:0] tmp_18_fu_788_p7;
wire   [3:0] tmp_18_fu_788_p9;
wire   [3:0] tmp_18_fu_788_p11;
wire   [3:0] tmp_18_fu_788_p13;
wire   [3:0] tmp_18_fu_788_p15;
wire  signed [3:0] tmp_18_fu_788_p17;
wire  signed [3:0] tmp_18_fu_788_p19;
wire  signed [3:0] tmp_18_fu_788_p21;
wire  signed [3:0] tmp_18_fu_788_p23;
wire  signed [3:0] tmp_18_fu_788_p25;
wire  signed [3:0] tmp_18_fu_788_p27;
wire  signed [3:0] tmp_18_fu_788_p29;
wire  signed [3:0] tmp_18_fu_788_p31;
wire  signed [2:0] shift_4_fu_1400_p1;
wire   [2:0] shift_4_fu_1400_p3;
wire   [2:0] shift_4_fu_1400_p5;
wire   [2:0] shift_4_fu_1400_p7;
wire  signed [2:0] in_shift_fu_1444_p1;
wire   [2:0] in_shift_fu_1444_p3;
wire   [2:0] in_shift_fu_1444_p5;
wire   [2:0] in_shift_fu_1444_p7;
wire    ap_ce_reg;
fft1D_512_sin_or_cos_double_s_ref_4oPi_table_256_ROM_AUTO_1R #(.DataWidth( 256 ),.AddressRange( 10 ),.AddressWidth( 4 ))
ref_4oPi_table_256_U(.clk(ap_clk),.reset(ap_rst),.address0(ref_4oPi_table_256_address0),.ce0(ref_4oPi_table_256_ce0_local),.q0(ref_4oPi_table_256_q0));
fft1D_512_sin_or_cos_double_s_fourth_order_double_sin_cos_K0_ROM_1P_LUTRAM_1R #(.DataWidth( 59 ),.AddressRange( 256 ),.AddressWidth( 8 ))
fourth_order_double_sin_cos_K0_U(.clk(ap_clk),.reset(ap_rst),.address0(fourth_order_double_sin_cos_K0_address0),.ce0(fourth_order_double_sin_cos_K0_ce0_local),.q0(fourth_order_double_sin_cos_K0_q0));
fft1D_512_sin_or_cos_double_s_fourth_order_double_sin_cos_K1_ROM_1P_LUTRAM_1R #(.DataWidth( 52 ),.AddressRange( 256 ),.AddressWidth( 8 ))
fourth_order_double_sin_cos_K1_U(.clk(ap_clk),.reset(ap_rst),.address0(fourth_order_double_sin_cos_K1_address0),.ce0(fourth_order_double_sin_cos_K1_ce0_local),.q0(fourth_order_double_sin_cos_K1_q0));
fft1D_512_sin_or_cos_double_s_fourth_order_double_sin_cos_K2_ROM_1P_LUTRAM_1R #(.DataWidth( 44 ),.AddressRange( 256 ),.AddressWidth( 8 ))
fourth_order_double_sin_cos_K2_U(.clk(ap_clk),.reset(ap_rst),.address0(fourth_order_double_sin_cos_K2_address0),.ce0(fourth_order_double_sin_cos_K2_ce0_local),.q0(fourth_order_double_sin_cos_K2_q0));
fft1D_512_sin_or_cos_double_s_fourth_order_double_sin_cos_K3_ROM_1P_LUTRAM_1R #(.DataWidth( 33 ),.AddressRange( 256 ),.AddressWidth( 8 ))
fourth_order_double_sin_cos_K3_U(.clk(ap_clk),.reset(ap_rst),.address0(fourth_order_double_sin_cos_K3_address0),.ce0(fourth_order_double_sin_cos_K3_ce0_local),.q0(fourth_order_double_sin_cos_K3_q0));
fft1D_512_sin_or_cos_double_s_fourth_order_double_sin_cos_K4_ROM_1P_LUTRAM_1R #(.DataWidth( 25 ),.AddressRange( 256 ),.AddressWidth( 8 ))
fourth_order_double_sin_cos_K4_U(.clk(ap_clk),.reset(ap_rst),.address0(fourth_order_double_sin_cos_K4_address0),.ce0(fourth_order_double_sin_cos_K4_ce0_local),.q0(fourth_order_double_sin_cos_K4_q0));
fft1D_512_mul_35ns_25ns_60_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 35 ),.din1_WIDTH( 25 ),.dout_WIDTH( 60 ))
mul_35ns_25ns_60_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_356_p0),.din1(grp_fu_356_p1),.ce(grp_fu_356_ce),.dout(grp_fu_356_p2));
fft1D_512_mul_42ns_33ns_75_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 42 ),.din1_WIDTH( 33 ),.dout_WIDTH( 75 ))
mul_42ns_33ns_75_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_360_p0),.din1(grp_fu_360_p1),.ce(grp_fu_360_ce),.dout(grp_fu_360_p2));
fft1D_512_mul_49ns_44s_93_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 49 ),.din1_WIDTH( 44 ),.dout_WIDTH( 93 ))
mul_49ns_44s_93_5_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_364_p0),.din1(fourth_order_double_sin_cos_K2_load_reg_1764),.ce(grp_fu_364_ce),.dout(grp_fu_364_p2));
fft1D_512_mul_49ns_49ns_98_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 49 ),.din1_WIDTH( 49 ),.dout_WIDTH( 98 ))
mul_49ns_49ns_98_5_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_368_p0),.din1(grp_fu_368_p1),.ce(grp_fu_368_ce),.dout(grp_fu_368_p2));
fft1D_512_mul_49ns_49ns_98_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 49 ),.din1_WIDTH( 49 ),.dout_WIDTH( 98 ))
mul_49ns_49ns_98_5_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_372_p0),.din1(grp_fu_372_p1),.ce(grp_fu_372_ce),.dout(grp_fu_372_p2));
fft1D_512_mul_49ns_49ns_98_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 49 ),.din1_WIDTH( 49 ),.dout_WIDTH( 98 ))
mul_49ns_49ns_98_5_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_376_p0),.din1(grp_fu_376_p1),.ce(grp_fu_376_ce),.dout(grp_fu_376_p2));
fft1D_512_mul_56ns_52s_108_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 56 ),.din1_WIDTH( 52 ),.dout_WIDTH( 108 ))
mul_56ns_52s_108_5_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_380_p0),.din1(fourth_order_double_sin_cos_K1_load_reg_1759),.ce(grp_fu_380_ce),.dout(grp_fu_380_p2));
fft1D_512_mul_64s_63ns_126_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 64 ),.din1_WIDTH( 63 ),.dout_WIDTH( 126 ))
mul_64s_63ns_126_5_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(add_ln37_3_reg_1886),.din1(grp_fu_384_p1),.ce(grp_fu_384_ce),.dout(grp_fu_384_p2));
fft1D_512_mul_170s_53ns_170_5_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 170 ),.din1_WIDTH( 53 ),.dout_WIDTH( 170 ))
mul_170s_53ns_170_5_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(Med_reg_1623),.din1(grp_fu_388_p1),.ce(grp_fu_388_ce),.dout(grp_fu_388_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_17_3_1_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 1 ),.CASE1( 3'h1 ),.din1_WIDTH( 1 ),.CASE2( 3'h2 ),.din2_WIDTH( 1 ),.CASE3( 3'h3 ),.din3_WIDTH( 1 ),.CASE4( 3'h4 ),.din4_WIDTH( 1 ),.CASE5( 3'h5 ),.din5_WIDTH( 1 ),.CASE6( 3'h6 ),.din6_WIDTH( 1 ),.CASE7( 3'h7 ),.din7_WIDTH( 1 ),.def_WIDTH( 1 ),.sel_WIDTH( 3 ),.dout_WIDTH( 1 ))
sparsemux_17_3_1_1_1_U10(.din0(1'd0),.din1(1'd1),.din2(1'd1),.din3(1'd0),.din4(1'd0),.din5(1'd1),.din6(1'd1),.din7(1'd0),.def(tmp_6_fu_651_p17),.sel(k_1_reg_1651),.dout(tmp_6_fu_651_p19));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_33_4_1_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 1 ),.CASE1( 4'h1 ),.din1_WIDTH( 1 ),.CASE2( 4'h2 ),.din2_WIDTH( 1 ),.CASE3( 4'h3 ),.din3_WIDTH( 1 ),.CASE4( 4'h4 ),.din4_WIDTH( 1 ),.CASE5( 4'h5 ),.din5_WIDTH( 1 ),.CASE6( 4'h6 ),.din6_WIDTH( 1 ),.CASE7( 4'h7 ),.din7_WIDTH( 1 ),.CASE8( 4'h8 ),.din8_WIDTH( 1 ),.CASE9( 4'h9 ),.din9_WIDTH( 1 ),.CASE10( 4'hA ),.din10_WIDTH( 1 ),.CASE11( 4'hB ),.din11_WIDTH( 1 ),.CASE12( 4'hC ),.din12_WIDTH( 1 ),.CASE13( 4'hD ),.din13_WIDTH( 1 ),.CASE14( 4'hE ),.din14_WIDTH( 1 ),.CASE15( 4'hF ),.din15_WIDTH( 1 ),.def_WIDTH( 1 ),.sel_WIDTH( 4 ),.dout_WIDTH( 1 ))
sparsemux_33_4_1_1_1_U11(.din0(1'd0),.din1(1'd0),.din2(1'd0),.din3(1'd1),.din4(1'd1),.din5(1'd1),.din6(1'd1),.din7(1'd0),.din8(1'd0),.din9(1'd1),.din10(1'd1),.din11(1'd1),.din12(1'd1),.din13(1'd0),.din14(1'd0),.din15(1'd0),.def(tmp_17_fu_716_p33),.sel(index_fu_710_p3),.dout(tmp_17_fu_716_p35));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_33_4_1_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 1 ),.CASE1( 4'h1 ),.din1_WIDTH( 1 ),.CASE2( 4'h2 ),.din2_WIDTH( 1 ),.CASE3( 4'h3 ),.din3_WIDTH( 1 ),.CASE4( 4'h4 ),.din4_WIDTH( 1 ),.CASE5( 4'h5 ),.din5_WIDTH( 1 ),.CASE6( 4'h6 ),.din6_WIDTH( 1 ),.CASE7( 4'h7 ),.din7_WIDTH( 1 ),.CASE8( 4'h8 ),.din8_WIDTH( 1 ),.CASE9( 4'h9 ),.din9_WIDTH( 1 ),.CASE10( 4'hA ),.din10_WIDTH( 1 ),.CASE11( 4'hB ),.din11_WIDTH( 1 ),.CASE12( 4'hC ),.din12_WIDTH( 1 ),.CASE13( 4'hD ),.din13_WIDTH( 1 ),.CASE14( 4'hE ),.din14_WIDTH( 1 ),.CASE15( 4'hF ),.din15_WIDTH( 1 ),.def_WIDTH( 1 ),.sel_WIDTH( 4 ),.dout_WIDTH( 1 ))
sparsemux_33_4_1_1_1_U12(.din0(1'd0),.din1(1'd0),.din2(1'd1),.din3(1'd0),.din4(1'd1),.din5(1'd1),.din6(1'd0),.din7(1'd1),.din8(1'd1),.din9(1'd0),.din10(1'd1),.din11(1'd1),.din12(1'd0),.din13(1'd1),.din14(1'd0),.din15(1'd0),.def(tmp_18_fu_788_p33),.sel(index_fu_710_p3),.dout(tmp_18_fu_788_p35));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U13(.din0(c_reg_1927_pp0_iter30_reg),.din1(shift_4_fu_1400_p4),.din2(shift_1_reg_1955),.din3(shift_2_fu_1335_p2),.def(shift_4_fu_1400_p9),.sel(shift_4_fu_1400_p10),.dout(shift_4_fu_1400_p11));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_9_3_62_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 62 ),.CASE1( 3'h2 ),.din1_WIDTH( 62 ),.CASE2( 3'h1 ),.din2_WIDTH( 62 ),.CASE3( 3'h0 ),.din3_WIDTH( 62 ),.def_WIDTH( 62 ),.sel_WIDTH( 3 ),.dout_WIDTH( 62 ))
sparsemux_9_3_62_1_1_U14(.din0(trunc_ln419_reg_1938_pp0_iter31_reg),.din1(in_shift_fu_1444_p4),.din2(trunc_ln419_1_reg_1966_pp0_iter31_reg),.din3(trunc_ln419_2_reg_1987),.def(in_shift_fu_1444_p9),.sel(sel_tmp5_reg_1992),.dout(in_shift_fu_1444_p11));
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        B_reg_1719 <= B_fu_938_p1;
        B_reg_1719_pp0_iter11_reg <= B_reg_1719;
        B_reg_1719_pp0_iter12_reg <= B_reg_1719_pp0_iter11_reg;
        B_reg_1719_pp0_iter13_reg <= B_reg_1719_pp0_iter12_reg;
        B_reg_1719_pp0_iter14_reg <= B_reg_1719_pp0_iter13_reg;
        B_reg_1719_pp0_iter15_reg <= B_reg_1719_pp0_iter14_reg;
        B_squared_reg_1753 <= {{grp_fu_368_p2[97:49]}};
        B_trunc_reg_1724 <= {{x_fu_921_p3[55:7]}};
        Ex_1_reg_1674 <= Ex_1_fu_631_p2;
        Ex_1_reg_1674_pp0_iter10_reg <= Ex_1_reg_1674;
        Ex_1_reg_1674_pp0_iter11_reg <= Ex_1_reg_1674_pp0_iter10_reg;
        Ex_1_reg_1674_pp0_iter12_reg <= Ex_1_reg_1674_pp0_iter11_reg;
        Ex_1_reg_1674_pp0_iter13_reg <= Ex_1_reg_1674_pp0_iter12_reg;
        Ex_1_reg_1674_pp0_iter14_reg <= Ex_1_reg_1674_pp0_iter13_reg;
        Ex_1_reg_1674_pp0_iter15_reg <= Ex_1_reg_1674_pp0_iter14_reg;
        Ex_1_reg_1674_pp0_iter16_reg <= Ex_1_reg_1674_pp0_iter15_reg;
        Ex_1_reg_1674_pp0_iter17_reg <= Ex_1_reg_1674_pp0_iter16_reg;
        Ex_1_reg_1674_pp0_iter18_reg <= Ex_1_reg_1674_pp0_iter17_reg;
        Ex_1_reg_1674_pp0_iter19_reg <= Ex_1_reg_1674_pp0_iter18_reg;
        Ex_1_reg_1674_pp0_iter20_reg <= Ex_1_reg_1674_pp0_iter19_reg;
        Ex_1_reg_1674_pp0_iter21_reg <= Ex_1_reg_1674_pp0_iter20_reg;
        Ex_1_reg_1674_pp0_iter22_reg <= Ex_1_reg_1674_pp0_iter21_reg;
        Ex_1_reg_1674_pp0_iter23_reg <= Ex_1_reg_1674_pp0_iter22_reg;
        Ex_1_reg_1674_pp0_iter24_reg <= Ex_1_reg_1674_pp0_iter23_reg;
        Ex_1_reg_1674_pp0_iter25_reg <= Ex_1_reg_1674_pp0_iter24_reg;
        Ex_1_reg_1674_pp0_iter26_reg <= Ex_1_reg_1674_pp0_iter25_reg;
        Ex_1_reg_1674_pp0_iter27_reg <= Ex_1_reg_1674_pp0_iter26_reg;
        Ex_1_reg_1674_pp0_iter28_reg <= Ex_1_reg_1674_pp0_iter27_reg;
        Ex_1_reg_1674_pp0_iter29_reg <= Ex_1_reg_1674_pp0_iter28_reg;
        Ex_1_reg_1674_pp0_iter30_reg <= Ex_1_reg_1674_pp0_iter29_reg;
        Ex_1_reg_1674_pp0_iter31_reg <= Ex_1_reg_1674_pp0_iter30_reg;
        Med_reg_1623 <= {{shl_ln398_fu_460_p2[255:86]}};
        Mx_1_reg_1881 <= Mx_1_fu_1106_p3;
        Mx_bits_2_reg_1657 <= Mx_bits_2_fu_538_p3;
        Mx_bits_reg_1640 <= {{grp_fu_388_p2[166:43]}};
        Mx_reg_1667 <= {{shl_ln504_fu_616_p2[123:61]}};
        Mx_reg_1667_pp0_iter10_reg <= Mx_reg_1667;
        Mx_reg_1667_pp0_iter11_reg <= Mx_reg_1667_pp0_iter10_reg;
        Mx_reg_1667_pp0_iter12_reg <= Mx_reg_1667_pp0_iter11_reg;
        Mx_reg_1667_pp0_iter13_reg <= Mx_reg_1667_pp0_iter12_reg;
        Mx_reg_1667_pp0_iter14_reg <= Mx_reg_1667_pp0_iter13_reg;
        Mx_reg_1667_pp0_iter15_reg <= Mx_reg_1667_pp0_iter14_reg;
        Mx_reg_1667_pp0_iter16_reg <= Mx_reg_1667_pp0_iter15_reg;
        Mx_reg_1667_pp0_iter17_reg <= Mx_reg_1667_pp0_iter16_reg;
        Mx_reg_1667_pp0_iter18_reg <= Mx_reg_1667_pp0_iter17_reg;
        Mx_reg_1667_pp0_iter19_reg <= Mx_reg_1667_pp0_iter18_reg;
        Mx_reg_1667_pp0_iter20_reg <= Mx_reg_1667_pp0_iter19_reg;
        Mx_reg_1667_pp0_iter21_reg <= Mx_reg_1667_pp0_iter20_reg;
        Mx_reg_1667_pp0_iter22_reg <= Mx_reg_1667_pp0_iter21_reg;
        add_ln37_1_reg_1866 <= add_ln37_1_fu_1080_p2;
        add_ln37_1_reg_1866_pp0_iter22_reg <= add_ln37_1_reg_1866;
        add_ln37_3_reg_1886 <= add_ln37_3_fu_1123_p2;
        and_ln271_reg_1633 <= and_ln271_fu_497_p2;
        and_ln271_reg_1633_pp0_iter10_reg <= and_ln271_reg_1633_pp0_iter9_reg;
        and_ln271_reg_1633_pp0_iter11_reg <= and_ln271_reg_1633_pp0_iter10_reg;
        and_ln271_reg_1633_pp0_iter12_reg <= and_ln271_reg_1633_pp0_iter11_reg;
        and_ln271_reg_1633_pp0_iter13_reg <= and_ln271_reg_1633_pp0_iter12_reg;
        and_ln271_reg_1633_pp0_iter14_reg <= and_ln271_reg_1633_pp0_iter13_reg;
        and_ln271_reg_1633_pp0_iter15_reg <= and_ln271_reg_1633_pp0_iter14_reg;
        and_ln271_reg_1633_pp0_iter16_reg <= and_ln271_reg_1633_pp0_iter15_reg;
        and_ln271_reg_1633_pp0_iter17_reg <= and_ln271_reg_1633_pp0_iter16_reg;
        and_ln271_reg_1633_pp0_iter18_reg <= and_ln271_reg_1633_pp0_iter17_reg;
        and_ln271_reg_1633_pp0_iter19_reg <= and_ln271_reg_1633_pp0_iter18_reg;
        and_ln271_reg_1633_pp0_iter20_reg <= and_ln271_reg_1633_pp0_iter19_reg;
        and_ln271_reg_1633_pp0_iter21_reg <= and_ln271_reg_1633_pp0_iter20_reg;
        and_ln271_reg_1633_pp0_iter22_reg <= and_ln271_reg_1633_pp0_iter21_reg;
        and_ln271_reg_1633_pp0_iter23_reg <= and_ln271_reg_1633_pp0_iter22_reg;
        and_ln271_reg_1633_pp0_iter24_reg <= and_ln271_reg_1633_pp0_iter23_reg;
        and_ln271_reg_1633_pp0_iter25_reg <= and_ln271_reg_1633_pp0_iter24_reg;
        and_ln271_reg_1633_pp0_iter26_reg <= and_ln271_reg_1633_pp0_iter25_reg;
        and_ln271_reg_1633_pp0_iter27_reg <= and_ln271_reg_1633_pp0_iter26_reg;
        and_ln271_reg_1633_pp0_iter28_reg <= and_ln271_reg_1633_pp0_iter27_reg;
        and_ln271_reg_1633_pp0_iter29_reg <= and_ln271_reg_1633_pp0_iter28_reg;
        and_ln271_reg_1633_pp0_iter30_reg <= and_ln271_reg_1633_pp0_iter29_reg;
        and_ln271_reg_1633_pp0_iter31_reg <= and_ln271_reg_1633_pp0_iter30_reg;
        and_ln271_reg_1633_pp0_iter4_reg <= and_ln271_reg_1633;
        and_ln271_reg_1633_pp0_iter5_reg <= and_ln271_reg_1633_pp0_iter4_reg;
        and_ln271_reg_1633_pp0_iter6_reg <= and_ln271_reg_1633_pp0_iter5_reg;
        and_ln271_reg_1633_pp0_iter7_reg <= and_ln271_reg_1633_pp0_iter6_reg;
        and_ln271_reg_1633_pp0_iter8_reg <= and_ln271_reg_1633_pp0_iter7_reg;
        and_ln271_reg_1633_pp0_iter9_reg <= and_ln271_reg_1633_pp0_iter8_reg;
        c_2_reg_1948 <= c_2_fu_1272_p3;
        c_3_reg_1977 <= c_3_fu_1322_p3;
        c_reg_1927 <= c_fu_1204_p3;
        c_reg_1927_pp0_iter30_reg <= c_reg_1927;
        closepath_reg_1602 <= closepath_fu_418_p2;
        closepath_reg_1602_pp0_iter1_reg <= closepath_reg_1602;
        closepath_reg_1602_pp0_iter2_reg <= closepath_reg_1602_pp0_iter1_reg;
        closepath_reg_1602_pp0_iter3_reg <= closepath_reg_1602_pp0_iter2_reg;
        closepath_reg_1602_pp0_iter4_reg <= closepath_reg_1602_pp0_iter3_reg;
        closepath_reg_1602_pp0_iter5_reg <= closepath_reg_1602_pp0_iter4_reg;
        closepath_reg_1602_pp0_iter6_reg <= closepath_reg_1602_pp0_iter5_reg;
        closepath_reg_1602_pp0_iter7_reg <= closepath_reg_1602_pp0_iter6_reg;
        closepath_reg_1602_pp0_iter8_reg <= closepath_reg_1602_pp0_iter7_reg;
        cos_basis_reg_1691 <= cos_basis_fu_696_p3;
        cos_basis_reg_1691_pp0_iter10_reg <= cos_basis_reg_1691;
        cos_basis_reg_1691_pp0_iter11_reg <= cos_basis_reg_1691_pp0_iter10_reg;
        cos_basis_reg_1691_pp0_iter12_reg <= cos_basis_reg_1691_pp0_iter11_reg;
        cos_basis_reg_1691_pp0_iter13_reg <= cos_basis_reg_1691_pp0_iter12_reg;
        cos_basis_reg_1691_pp0_iter14_reg <= cos_basis_reg_1691_pp0_iter13_reg;
        cos_basis_reg_1691_pp0_iter15_reg <= cos_basis_reg_1691_pp0_iter14_reg;
        cos_basis_reg_1691_pp0_iter16_reg <= cos_basis_reg_1691_pp0_iter15_reg;
        cos_basis_reg_1691_pp0_iter17_reg <= cos_basis_reg_1691_pp0_iter16_reg;
        cos_basis_reg_1691_pp0_iter18_reg <= cos_basis_reg_1691_pp0_iter17_reg;
        cos_basis_reg_1691_pp0_iter19_reg <= cos_basis_reg_1691_pp0_iter18_reg;
        cos_basis_reg_1691_pp0_iter20_reg <= cos_basis_reg_1691_pp0_iter19_reg;
        cos_basis_reg_1691_pp0_iter21_reg <= cos_basis_reg_1691_pp0_iter20_reg;
        cos_basis_reg_1691_pp0_iter22_reg <= cos_basis_reg_1691_pp0_iter21_reg;
        cos_basis_reg_1691_pp0_iter23_reg <= cos_basis_reg_1691_pp0_iter22_reg;
        cos_basis_reg_1691_pp0_iter24_reg <= cos_basis_reg_1691_pp0_iter23_reg;
        cos_basis_reg_1691_pp0_iter25_reg <= cos_basis_reg_1691_pp0_iter24_reg;
        cos_basis_reg_1691_pp0_iter26_reg <= cos_basis_reg_1691_pp0_iter25_reg;
        cos_basis_reg_1691_pp0_iter27_reg <= cos_basis_reg_1691_pp0_iter26_reg;
        cos_basis_reg_1691_pp0_iter28_reg <= cos_basis_reg_1691_pp0_iter27_reg;
        cos_basis_reg_1691_pp0_iter29_reg <= cos_basis_reg_1691_pp0_iter28_reg;
        cos_basis_reg_1691_pp0_iter30_reg <= cos_basis_reg_1691_pp0_iter29_reg;
        cos_basis_reg_1691_pp0_iter31_reg <= cos_basis_reg_1691_pp0_iter30_reg;
        din_exp_reg_1589 <= {{data_fu_392_p1[62:52]}};
        din_exp_reg_1589_pp0_iter1_reg <= din_exp_reg_1589;
        din_exp_reg_1589_pp0_iter2_reg <= din_exp_reg_1589_pp0_iter1_reg;
        din_exp_reg_1589_pp0_iter3_reg <= din_exp_reg_1589_pp0_iter2_reg;
        din_exp_reg_1589_pp0_iter4_reg <= din_exp_reg_1589_pp0_iter3_reg;
        din_exp_reg_1589_pp0_iter5_reg <= din_exp_reg_1589_pp0_iter4_reg;
        din_exp_reg_1589_pp0_iter6_reg <= din_exp_reg_1589_pp0_iter5_reg;
        din_exp_reg_1589_pp0_iter7_reg <= din_exp_reg_1589_pp0_iter6_reg;
        din_exp_reg_1589_pp0_iter8_reg <= din_exp_reg_1589_pp0_iter7_reg;
        din_sig_reg_1596 <= din_sig_fu_414_p1;
        din_sig_reg_1596_pp0_iter1_reg <= din_sig_reg_1596;
        din_sig_reg_1596_pp0_iter2_reg <= din_sig_reg_1596_pp0_iter1_reg;
        din_sign_reg_1583 <= data_fu_392_p1[32'd63];
        din_sign_reg_1583_pp0_iter1_reg <= din_sign_reg_1583;
        din_sign_reg_1583_pp0_iter2_reg <= din_sign_reg_1583_pp0_iter1_reg;
        din_sign_reg_1583_pp0_iter3_reg <= din_sign_reg_1583_pp0_iter2_reg;
        din_sign_reg_1583_pp0_iter4_reg <= din_sign_reg_1583_pp0_iter3_reg;
        din_sign_reg_1583_pp0_iter5_reg <= din_sign_reg_1583_pp0_iter4_reg;
        din_sign_reg_1583_pp0_iter6_reg <= din_sign_reg_1583_pp0_iter5_reg;
        din_sign_reg_1583_pp0_iter7_reg <= din_sign_reg_1583_pp0_iter6_reg;
        din_sign_reg_1583_pp0_iter8_reg <= din_sign_reg_1583_pp0_iter7_reg;
        do_cos_read_reg_1575 <= do_cos_int_reg;
        do_cos_read_reg_1575_pp0_iter10_reg <= do_cos_read_reg_1575_pp0_iter9_reg;
        do_cos_read_reg_1575_pp0_iter11_reg <= do_cos_read_reg_1575_pp0_iter10_reg;
        do_cos_read_reg_1575_pp0_iter12_reg <= do_cos_read_reg_1575_pp0_iter11_reg;
        do_cos_read_reg_1575_pp0_iter13_reg <= do_cos_read_reg_1575_pp0_iter12_reg;
        do_cos_read_reg_1575_pp0_iter14_reg <= do_cos_read_reg_1575_pp0_iter13_reg;
        do_cos_read_reg_1575_pp0_iter15_reg <= do_cos_read_reg_1575_pp0_iter14_reg;
        do_cos_read_reg_1575_pp0_iter16_reg <= do_cos_read_reg_1575_pp0_iter15_reg;
        do_cos_read_reg_1575_pp0_iter17_reg <= do_cos_read_reg_1575_pp0_iter16_reg;
        do_cos_read_reg_1575_pp0_iter18_reg <= do_cos_read_reg_1575_pp0_iter17_reg;
        do_cos_read_reg_1575_pp0_iter19_reg <= do_cos_read_reg_1575_pp0_iter18_reg;
        do_cos_read_reg_1575_pp0_iter1_reg <= do_cos_read_reg_1575;
        do_cos_read_reg_1575_pp0_iter20_reg <= do_cos_read_reg_1575_pp0_iter19_reg;
        do_cos_read_reg_1575_pp0_iter21_reg <= do_cos_read_reg_1575_pp0_iter20_reg;
        do_cos_read_reg_1575_pp0_iter22_reg <= do_cos_read_reg_1575_pp0_iter21_reg;
        do_cos_read_reg_1575_pp0_iter23_reg <= do_cos_read_reg_1575_pp0_iter22_reg;
        do_cos_read_reg_1575_pp0_iter24_reg <= do_cos_read_reg_1575_pp0_iter23_reg;
        do_cos_read_reg_1575_pp0_iter25_reg <= do_cos_read_reg_1575_pp0_iter24_reg;
        do_cos_read_reg_1575_pp0_iter26_reg <= do_cos_read_reg_1575_pp0_iter25_reg;
        do_cos_read_reg_1575_pp0_iter27_reg <= do_cos_read_reg_1575_pp0_iter26_reg;
        do_cos_read_reg_1575_pp0_iter28_reg <= do_cos_read_reg_1575_pp0_iter27_reg;
        do_cos_read_reg_1575_pp0_iter29_reg <= do_cos_read_reg_1575_pp0_iter28_reg;
        do_cos_read_reg_1575_pp0_iter2_reg <= do_cos_read_reg_1575_pp0_iter1_reg;
        do_cos_read_reg_1575_pp0_iter30_reg <= do_cos_read_reg_1575_pp0_iter29_reg;
        do_cos_read_reg_1575_pp0_iter31_reg <= do_cos_read_reg_1575_pp0_iter30_reg;
        do_cos_read_reg_1575_pp0_iter3_reg <= do_cos_read_reg_1575_pp0_iter2_reg;
        do_cos_read_reg_1575_pp0_iter4_reg <= do_cos_read_reg_1575_pp0_iter3_reg;
        do_cos_read_reg_1575_pp0_iter5_reg <= do_cos_read_reg_1575_pp0_iter4_reg;
        do_cos_read_reg_1575_pp0_iter6_reg <= do_cos_read_reg_1575_pp0_iter5_reg;
        do_cos_read_reg_1575_pp0_iter7_reg <= do_cos_read_reg_1575_pp0_iter6_reg;
        do_cos_read_reg_1575_pp0_iter8_reg <= do_cos_read_reg_1575_pp0_iter7_reg;
        do_cos_read_reg_1575_pp0_iter9_reg <= do_cos_read_reg_1575_pp0_iter8_reg;
        fourth_order_double_sin_cos_K1_load_reg_1759 <= fourth_order_double_sin_cos_K1_q0;
        fourth_order_double_sin_cos_K2_load_reg_1764 <= fourth_order_double_sin_cos_K2_q0;
        fourth_order_double_sin_cos_K3_load_reg_1831 <= fourth_order_double_sin_cos_K3_q0;
        fourth_order_double_sin_cos_K4_load_reg_1841 <= fourth_order_double_sin_cos_K4_q0;
        icmp_ln282_reg_1702 <= icmp_ln282_fu_878_p2;
        icmp_ln282_reg_1702_pp0_iter10_reg <= icmp_ln282_reg_1702;
        icmp_ln282_reg_1702_pp0_iter11_reg <= icmp_ln282_reg_1702_pp0_iter10_reg;
        icmp_ln282_reg_1702_pp0_iter12_reg <= icmp_ln282_reg_1702_pp0_iter11_reg;
        icmp_ln282_reg_1702_pp0_iter13_reg <= icmp_ln282_reg_1702_pp0_iter12_reg;
        icmp_ln282_reg_1702_pp0_iter14_reg <= icmp_ln282_reg_1702_pp0_iter13_reg;
        icmp_ln282_reg_1702_pp0_iter15_reg <= icmp_ln282_reg_1702_pp0_iter14_reg;
        icmp_ln282_reg_1702_pp0_iter16_reg <= icmp_ln282_reg_1702_pp0_iter15_reg;
        icmp_ln282_reg_1702_pp0_iter17_reg <= icmp_ln282_reg_1702_pp0_iter16_reg;
        icmp_ln282_reg_1702_pp0_iter18_reg <= icmp_ln282_reg_1702_pp0_iter17_reg;
        icmp_ln282_reg_1702_pp0_iter19_reg <= icmp_ln282_reg_1702_pp0_iter18_reg;
        icmp_ln282_reg_1702_pp0_iter20_reg <= icmp_ln282_reg_1702_pp0_iter19_reg;
        icmp_ln282_reg_1702_pp0_iter21_reg <= icmp_ln282_reg_1702_pp0_iter20_reg;
        icmp_ln282_reg_1702_pp0_iter22_reg <= icmp_ln282_reg_1702_pp0_iter21_reg;
        icmp_ln282_reg_1702_pp0_iter23_reg <= icmp_ln282_reg_1702_pp0_iter22_reg;
        icmp_ln282_reg_1702_pp0_iter24_reg <= icmp_ln282_reg_1702_pp0_iter23_reg;
        icmp_ln282_reg_1702_pp0_iter25_reg <= icmp_ln282_reg_1702_pp0_iter24_reg;
        icmp_ln282_reg_1702_pp0_iter26_reg <= icmp_ln282_reg_1702_pp0_iter25_reg;
        icmp_ln282_reg_1702_pp0_iter27_reg <= icmp_ln282_reg_1702_pp0_iter26_reg;
        icmp_ln282_reg_1702_pp0_iter28_reg <= icmp_ln282_reg_1702_pp0_iter27_reg;
        icmp_ln282_reg_1702_pp0_iter29_reg <= icmp_ln282_reg_1702_pp0_iter28_reg;
        icmp_ln282_reg_1702_pp0_iter30_reg <= icmp_ln282_reg_1702_pp0_iter29_reg;
        icmp_ln282_reg_1702_pp0_iter31_reg <= icmp_ln282_reg_1702_pp0_iter30_reg;
        icmp_ln424_1_reg_1971 <= icmp_ln424_1_fu_1299_p2;
        icmp_ln433_reg_1943 <= icmp_ln433_fu_1225_p2;
        icmp_ln433_reg_1943_pp0_iter30_reg <= icmp_ln433_reg_1943;
        icmp_ln433_reg_1943_pp0_iter31_reg <= icmp_ln433_reg_1943_pp0_iter30_reg;
        in_shift_2_reg_1933 <= in_shift_2_fu_1216_p2;
        in_shift_3_reg_1961 <= in_shift_3_fu_1290_p2;
        in_shift_4_reg_1982 <= in_shift_4_fu_1342_p2;
        k_1_reg_1651 <= k_1_fu_523_p3;
        k_reg_1646 <= {{grp_fu_388_p2[169:167]}};
        lshr_ln_reg_1871 <= {{grp_fu_356_p2[59:31]}};
        result_reg_1901 <= {{grp_fu_384_p2[125:63]}};
        results_sign_3_reg_1709 <= results_sign_3_fu_895_p3;
        results_sign_3_reg_1709_pp0_iter10_reg <= results_sign_3_reg_1709;
        results_sign_3_reg_1709_pp0_iter11_reg <= results_sign_3_reg_1709_pp0_iter10_reg;
        results_sign_3_reg_1709_pp0_iter12_reg <= results_sign_3_reg_1709_pp0_iter11_reg;
        results_sign_3_reg_1709_pp0_iter13_reg <= results_sign_3_reg_1709_pp0_iter12_reg;
        results_sign_3_reg_1709_pp0_iter14_reg <= results_sign_3_reg_1709_pp0_iter13_reg;
        results_sign_3_reg_1709_pp0_iter15_reg <= results_sign_3_reg_1709_pp0_iter14_reg;
        results_sign_3_reg_1709_pp0_iter16_reg <= results_sign_3_reg_1709_pp0_iter15_reg;
        results_sign_3_reg_1709_pp0_iter17_reg <= results_sign_3_reg_1709_pp0_iter16_reg;
        results_sign_3_reg_1709_pp0_iter18_reg <= results_sign_3_reg_1709_pp0_iter17_reg;
        results_sign_3_reg_1709_pp0_iter19_reg <= results_sign_3_reg_1709_pp0_iter18_reg;
        results_sign_3_reg_1709_pp0_iter20_reg <= results_sign_3_reg_1709_pp0_iter19_reg;
        results_sign_3_reg_1709_pp0_iter21_reg <= results_sign_3_reg_1709_pp0_iter20_reg;
        results_sign_3_reg_1709_pp0_iter22_reg <= results_sign_3_reg_1709_pp0_iter21_reg;
        results_sign_3_reg_1709_pp0_iter23_reg <= results_sign_3_reg_1709_pp0_iter22_reg;
        results_sign_3_reg_1709_pp0_iter24_reg <= results_sign_3_reg_1709_pp0_iter23_reg;
        results_sign_3_reg_1709_pp0_iter25_reg <= results_sign_3_reg_1709_pp0_iter24_reg;
        results_sign_3_reg_1709_pp0_iter26_reg <= results_sign_3_reg_1709_pp0_iter25_reg;
        results_sign_3_reg_1709_pp0_iter27_reg <= results_sign_3_reg_1709_pp0_iter26_reg;
        results_sign_3_reg_1709_pp0_iter28_reg <= results_sign_3_reg_1709_pp0_iter27_reg;
        results_sign_3_reg_1709_pp0_iter29_reg <= results_sign_3_reg_1709_pp0_iter28_reg;
        results_sign_3_reg_1709_pp0_iter30_reg <= results_sign_3_reg_1709_pp0_iter29_reg;
        results_sign_3_reg_1709_pp0_iter31_reg <= results_sign_3_reg_1709_pp0_iter30_reg;
        sel_tmp5_reg_1992 <= sel_tmp5_fu_1390_p4;
        shift_1_reg_1955 <= shift_1_fu_1280_p2;
        shift_4_reg_1997 <= shift_4_fu_1400_p11;
        sin_basis_reg_1697 <= sin_basis_fu_703_p3;
        sin_basis_reg_1697_pp0_iter10_reg <= sin_basis_reg_1697;
        sin_basis_reg_1697_pp0_iter11_reg <= sin_basis_reg_1697_pp0_iter10_reg;
        sin_basis_reg_1697_pp0_iter12_reg <= sin_basis_reg_1697_pp0_iter11_reg;
        sin_basis_reg_1697_pp0_iter13_reg <= sin_basis_reg_1697_pp0_iter12_reg;
        sub_ln506_reg_1686 <= sub_ln506_fu_645_p2;
        t1_reg_1811 <= fourth_order_double_sin_cos_K0_q0;
        table_256_reg_1618 <= ref_4oPi_table_256_q0;
        tmp_10_reg_1912 <= {{grp_fu_384_p2[109:94]}};
        tmp_10_reg_1912_pp0_iter29_reg <= tmp_10_reg_1912;
        tmp_11_reg_1917 <= {{grp_fu_384_p2[93:78]}};
        tmp_11_reg_1917_pp0_iter29_reg <= tmp_11_reg_1917;
        tmp_12_reg_1922 <= {{grp_fu_384_p2[77:63]}};
        tmp_12_reg_1922_pp0_iter29_reg <= tmp_12_reg_1922;
        tmp_12_reg_1922_pp0_iter30_reg <= tmp_12_reg_1922_pp0_iter29_reg;
        tmp_19_reg_1876 <= {{grp_fu_360_p2[74:38]}};
        tmp_1_reg_1662 <= {{Mx_bits_2_fu_538_p3[123:63]}};
        tmp_2_reg_1714 <= {{x_fu_921_p3[62:56]}};
        tmp_2_reg_1714_pp0_iter11_reg <= tmp_2_reg_1714;
        tmp_2_reg_1714_pp0_iter12_reg <= tmp_2_reg_1714_pp0_iter11_reg;
        tmp_2_reg_1714_pp0_iter13_reg <= tmp_2_reg_1714_pp0_iter12_reg;
        tmp_7_reg_1826 <= {{grp_fu_372_p2[97:56]}};
        tmp_8_reg_1836 <= {{grp_fu_376_p2[97:63]}};
        tmp_9_reg_1907 <= {{grp_fu_384_p2[125:110]}};
        tmp_reg_1680 <= Ex_1_fu_631_p2[32'd10];
        trunc_ln1_reg_1821 <= {{grp_fu_364_p2[92:45]}};
        trunc_ln398_reg_1613 <= trunc_ln398_fu_453_p1;
        trunc_ln398_reg_1613_pp0_iter1_reg <= trunc_ln398_reg_1613;
        trunc_ln419_1_reg_1966 <= trunc_ln419_1_fu_1295_p1;
        trunc_ln419_1_reg_1966_pp0_iter31_reg <= trunc_ln419_1_reg_1966;
        trunc_ln419_2_reg_1987 <= trunc_ln419_2_fu_1347_p1;
        trunc_ln419_reg_1938 <= trunc_ln419_fu_1221_p1;
        trunc_ln419_reg_1938_pp0_iter30_reg <= trunc_ln419_reg_1938;
        trunc_ln419_reg_1938_pp0_iter31_reg <= trunc_ln419_reg_1938_pp0_iter30_reg;
        trunc_ln_reg_1816 <= {{grp_fu_380_p2[107:52]}};
        zext_ln25_reg_1729[48 : 0] <= zext_ln25_fu_952_p1[48 : 0];
        zext_ln25_reg_1729_pp0_iter12_reg[48 : 0] <= zext_ln25_reg_1729[48 : 0];
        zext_ln25_reg_1729_pp0_iter13_reg[48 : 0] <= zext_ln25_reg_1729_pp0_iter12_reg[48 : 0];
        zext_ln25_reg_1729_pp0_iter14_reg[48 : 0] <= zext_ln25_reg_1729_pp0_iter13_reg[48 : 0];
        zext_ln25_reg_1729_pp0_iter15_reg[48 : 0] <= zext_ln25_reg_1729_pp0_iter14_reg[48 : 0];
        zext_ln32_reg_1736[7 : 0] <= zext_ln32_fu_963_p1[7 : 0];
        zext_ln32_reg_1736_pp0_iter15_reg[7 : 0] <= zext_ln32_reg_1736[7 : 0];
        zext_ln32_reg_1736_pp0_iter16_reg[7 : 0] <= zext_ln32_reg_1736_pp0_iter15_reg[7 : 0];
        zext_ln32_reg_1736_pp0_iter17_reg[7 : 0] <= zext_ln32_reg_1736_pp0_iter16_reg[7 : 0];
        zext_ln32_reg_1736_pp0_iter18_reg[7 : 0] <= zext_ln32_reg_1736_pp0_iter17_reg[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        do_cos_int_reg <= do_cos;
        t_in_int_reg <= t_in;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        fourth_order_double_sin_cos_K0_ce0_local = 1'b1;
    end else begin
        fourth_order_double_sin_cos_K0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        fourth_order_double_sin_cos_K1_ce0_local = 1'b1;
    end else begin
        fourth_order_double_sin_cos_K1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        fourth_order_double_sin_cos_K2_ce0_local = 1'b1;
    end else begin
        fourth_order_double_sin_cos_K2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        fourth_order_double_sin_cos_K3_ce0_local = 1'b1;
    end else begin
        fourth_order_double_sin_cos_K3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        fourth_order_double_sin_cos_K4_ce0_local = 1'b1;
    end else begin
        fourth_order_double_sin_cos_K4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        grp_fu_356_ce = 1'b1;
    end else begin
        grp_fu_356_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        grp_fu_360_ce = 1'b1;
    end else begin
        grp_fu_360_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        grp_fu_364_ce = 1'b1;
    end else begin
        grp_fu_364_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        grp_fu_368_ce = 1'b1;
    end else begin
        grp_fu_368_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        grp_fu_372_ce = 1'b1;
    end else begin
        grp_fu_372_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        grp_fu_376_ce = 1'b1;
    end else begin
        grp_fu_376_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        grp_fu_380_ce = 1'b1;
    end else begin
        grp_fu_380_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        grp_fu_384_ce = 1'b1;
    end else begin
        grp_fu_384_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        grp_fu_388_ce = 1'b1;
    end else begin
        grp_fu_388_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        ref_4oPi_table_256_ce0_local = 1'b1;
    end else begin
        ref_4oPi_table_256_ce0_local = 1'b0;
    end
end
assign A_fu_957_p3 = {{sin_basis_reg_1697_pp0_iter13_reg}, {tmp_2_reg_1714_pp0_iter13_reg}};
assign B_fu_938_p1 = x_fu_921_p3[55:0];
assign Ex_1_fu_631_p2 = (select_ln453_fu_560_p3 - zext_ln505_fu_608_p1);
assign Ex_2_fu_1422_p3 = ((cos_basis_reg_1691_pp0_iter31_reg[0:0] == 1'b1) ? 11'd0 : Ex_1_reg_1674_pp0_iter31_reg);
assign Ex_fu_555_p2 = ($signed(din_exp_reg_1589_pp0_iter8_reg) + $signed(11'd1027));
assign Mx_1_fu_1106_p3 = ((cos_basis_reg_1691_pp0_iter22_reg[0:0] == 1'b1) ? 63'd9223372036854775807 : Mx_reg_1667_pp0_iter22_reg);
assign Mx_bits_1_fu_533_p2 = (124'd0 - Mx_bits_reg_1640);
assign Mx_bits_2_fu_538_p3 = ((trunc_ln491_fu_529_p1[0:0] == 1'b1) ? Mx_bits_1_fu_533_p2 : Mx_bits_reg_1640);
assign Mx_zeros_fu_604_p1 = tmp_5_fu_596_p3[6:0];
assign X_fu_475_p3 = {{1'd1}, {din_sig_reg_1596_pp0_iter2_reg}};
assign add_ln37_1_fu_1080_p2 = ($signed(add_ln37_fu_1071_p2) + $signed(sext_ln37_2_fu_1077_p1));
assign add_ln37_2_fu_1115_p2 = (add_ln37_1_reg_1866_pp0_iter22_reg + zext_ln37_2_fu_1112_p1);
assign add_ln37_3_fu_1123_p2 = (add_ln37_2_fu_1115_p2 + zext_ln37_fu_1120_p1);
assign add_ln37_fu_1071_p2 = ($signed(sext_ln37_fu_1064_p1) + $signed(sext_ln37_1_fu_1068_p1));
assign add_ln396_fu_424_p2 = ($signed(din_exp_fu_404_p4) + $signed(11'd1101));
assign add_ln432_fu_1464_p2 = ($signed(sext_ln252_fu_1428_p1) + $signed(12'd1023));
assign addr_fu_430_p3 = ((closepath_fu_418_p2[0:0] == 1'b1) ? 11'd74 : add_ln396_fu_424_p2);
assign and_ln271_fu_497_p2 = (icmp_ln271_fu_487_p2 & icmp_ln271_1_fu_492_p2);
assign and_ln424_1_fu_1373_p2 = (icmp_ln424_fu_1330_p2 & and_ln424_fu_1368_p2);
assign and_ln424_2_fu_1384_p2 = (xor_ln424_1_fu_1379_p2 & icmp_ln424_fu_1330_p2);
assign and_ln424_fu_1368_p2 = (icmp_ln424_2_fu_1351_p2 & icmp_ln424_1_reg_1971);
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_return = t_2_fu_1562_p4;
always @ (tmp_14_fu_1244_p4) begin
    if (tmp_14_fu_1244_p4[0] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd0;
    end else if (tmp_14_fu_1244_p4[1] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd1;
    end else if (tmp_14_fu_1244_p4[2] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd2;
    end else if (tmp_14_fu_1244_p4[3] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd3;
    end else if (tmp_14_fu_1244_p4[4] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd4;
    end else if (tmp_14_fu_1244_p4[5] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd5;
    end else if (tmp_14_fu_1244_p4[6] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd6;
    end else if (tmp_14_fu_1244_p4[7] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd7;
    end else if (tmp_14_fu_1244_p4[8] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd8;
    end else if (tmp_14_fu_1244_p4[9] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd9;
    end else if (tmp_14_fu_1244_p4[10] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd10;
    end else if (tmp_14_fu_1244_p4[11] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd11;
    end else if (tmp_14_fu_1244_p4[12] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd12;
    end else if (tmp_14_fu_1244_p4[13] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd13;
    end else if (tmp_14_fu_1244_p4[14] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd14;
    end else if (tmp_14_fu_1244_p4[15] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd15;
    end else if (tmp_14_fu_1244_p4[16] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd16;
    end else if (tmp_14_fu_1244_p4[17] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd17;
    end else if (tmp_14_fu_1244_p4[18] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd18;
    end else if (tmp_14_fu_1244_p4[19] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd19;
    end else if (tmp_14_fu_1244_p4[20] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd20;
    end else if (tmp_14_fu_1244_p4[21] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd21;
    end else if (tmp_14_fu_1244_p4[22] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd22;
    end else if (tmp_14_fu_1244_p4[23] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd23;
    end else if (tmp_14_fu_1244_p4[24] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd24;
    end else if (tmp_14_fu_1244_p4[25] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd25;
    end else if (tmp_14_fu_1244_p4[26] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd26;
    end else if (tmp_14_fu_1244_p4[27] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd27;
    end else if (tmp_14_fu_1244_p4[28] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd28;
    end else if (tmp_14_fu_1244_p4[29] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd29;
    end else if (tmp_14_fu_1244_p4[30] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd30;
    end else if (tmp_14_fu_1244_p4[31] == 1'b1) begin
        c_1_fu_1254_p3 = 32'd31;
    end else begin
        c_1_fu_1254_p3 = 32'd32;
    end
end
always @ (tmp_15_fu_1262_p4) begin
    if (tmp_15_fu_1262_p4[0] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd0;
    end else if (tmp_15_fu_1262_p4[1] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd1;
    end else if (tmp_15_fu_1262_p4[2] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd2;
    end else if (tmp_15_fu_1262_p4[3] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd3;
    end else if (tmp_15_fu_1262_p4[4] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd4;
    end else if (tmp_15_fu_1262_p4[5] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd5;
    end else if (tmp_15_fu_1262_p4[6] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd6;
    end else if (tmp_15_fu_1262_p4[7] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd7;
    end else if (tmp_15_fu_1262_p4[8] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd8;
    end else if (tmp_15_fu_1262_p4[9] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd9;
    end else if (tmp_15_fu_1262_p4[10] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd10;
    end else if (tmp_15_fu_1262_p4[11] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd11;
    end else if (tmp_15_fu_1262_p4[12] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd12;
    end else if (tmp_15_fu_1262_p4[13] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd13;
    end else if (tmp_15_fu_1262_p4[14] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd14;
    end else if (tmp_15_fu_1262_p4[15] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd15;
    end else if (tmp_15_fu_1262_p4[16] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd16;
    end else if (tmp_15_fu_1262_p4[17] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd17;
    end else if (tmp_15_fu_1262_p4[18] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd18;
    end else if (tmp_15_fu_1262_p4[19] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd19;
    end else if (tmp_15_fu_1262_p4[20] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd20;
    end else if (tmp_15_fu_1262_p4[21] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd21;
    end else if (tmp_15_fu_1262_p4[22] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd22;
    end else if (tmp_15_fu_1262_p4[23] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd23;
    end else if (tmp_15_fu_1262_p4[24] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd24;
    end else if (tmp_15_fu_1262_p4[25] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd25;
    end else if (tmp_15_fu_1262_p4[26] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd26;
    end else if (tmp_15_fu_1262_p4[27] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd27;
    end else if (tmp_15_fu_1262_p4[28] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd28;
    end else if (tmp_15_fu_1262_p4[29] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd29;
    end else if (tmp_15_fu_1262_p4[30] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd30;
    end else if (tmp_15_fu_1262_p4[31] == 1'b1) begin
        c_2_fu_1272_p3 = 32'd31;
    end else begin
        c_2_fu_1272_p3 = 32'd32;
    end
end
always @ (tmp_16_fu_1312_p4) begin
    if (tmp_16_fu_1312_p4[0] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd0;
    end else if (tmp_16_fu_1312_p4[1] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd1;
    end else if (tmp_16_fu_1312_p4[2] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd2;
    end else if (tmp_16_fu_1312_p4[3] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd3;
    end else if (tmp_16_fu_1312_p4[4] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd4;
    end else if (tmp_16_fu_1312_p4[5] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd5;
    end else if (tmp_16_fu_1312_p4[6] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd6;
    end else if (tmp_16_fu_1312_p4[7] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd7;
    end else if (tmp_16_fu_1312_p4[8] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd8;
    end else if (tmp_16_fu_1312_p4[9] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd9;
    end else if (tmp_16_fu_1312_p4[10] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd10;
    end else if (tmp_16_fu_1312_p4[11] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd11;
    end else if (tmp_16_fu_1312_p4[12] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd12;
    end else if (tmp_16_fu_1312_p4[13] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd13;
    end else if (tmp_16_fu_1312_p4[14] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd14;
    end else if (tmp_16_fu_1312_p4[15] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd15;
    end else if (tmp_16_fu_1312_p4[16] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd16;
    end else if (tmp_16_fu_1312_p4[17] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd17;
    end else if (tmp_16_fu_1312_p4[18] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd18;
    end else if (tmp_16_fu_1312_p4[19] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd19;
    end else if (tmp_16_fu_1312_p4[20] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd20;
    end else if (tmp_16_fu_1312_p4[21] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd21;
    end else if (tmp_16_fu_1312_p4[22] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd22;
    end else if (tmp_16_fu_1312_p4[23] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd23;
    end else if (tmp_16_fu_1312_p4[24] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd24;
    end else if (tmp_16_fu_1312_p4[25] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd25;
    end else if (tmp_16_fu_1312_p4[26] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd26;
    end else if (tmp_16_fu_1312_p4[27] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd27;
    end else if (tmp_16_fu_1312_p4[28] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd28;
    end else if (tmp_16_fu_1312_p4[29] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd29;
    end else if (tmp_16_fu_1312_p4[30] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd30;
    end else if (tmp_16_fu_1312_p4[31] == 1'b1) begin
        c_3_fu_1322_p3 = 32'd31;
    end else begin
        c_3_fu_1322_p3 = 32'd32;
    end
end
always @ (tmp_13_fu_1194_p4) begin
    if (tmp_13_fu_1194_p4[0] == 1'b1) begin
        c_fu_1204_p3 = 32'd0;
    end else if (tmp_13_fu_1194_p4[1] == 1'b1) begin
        c_fu_1204_p3 = 32'd1;
    end else if (tmp_13_fu_1194_p4[2] == 1'b1) begin
        c_fu_1204_p3 = 32'd2;
    end else if (tmp_13_fu_1194_p4[3] == 1'b1) begin
        c_fu_1204_p3 = 32'd3;
    end else if (tmp_13_fu_1194_p4[4] == 1'b1) begin
        c_fu_1204_p3 = 32'd4;
    end else if (tmp_13_fu_1194_p4[5] == 1'b1) begin
        c_fu_1204_p3 = 32'd5;
    end else if (tmp_13_fu_1194_p4[6] == 1'b1) begin
        c_fu_1204_p3 = 32'd6;
    end else if (tmp_13_fu_1194_p4[7] == 1'b1) begin
        c_fu_1204_p3 = 32'd7;
    end else if (tmp_13_fu_1194_p4[8] == 1'b1) begin
        c_fu_1204_p3 = 32'd8;
    end else if (tmp_13_fu_1194_p4[9] == 1'b1) begin
        c_fu_1204_p3 = 32'd9;
    end else if (tmp_13_fu_1194_p4[10] == 1'b1) begin
        c_fu_1204_p3 = 32'd10;
    end else if (tmp_13_fu_1194_p4[11] == 1'b1) begin
        c_fu_1204_p3 = 32'd11;
    end else if (tmp_13_fu_1194_p4[12] == 1'b1) begin
        c_fu_1204_p3 = 32'd12;
    end else if (tmp_13_fu_1194_p4[13] == 1'b1) begin
        c_fu_1204_p3 = 32'd13;
    end else if (tmp_13_fu_1194_p4[14] == 1'b1) begin
        c_fu_1204_p3 = 32'd14;
    end else if (tmp_13_fu_1194_p4[15] == 1'b1) begin
        c_fu_1204_p3 = 32'd15;
    end else if (tmp_13_fu_1194_p4[16] == 1'b1) begin
        c_fu_1204_p3 = 32'd16;
    end else if (tmp_13_fu_1194_p4[17] == 1'b1) begin
        c_fu_1204_p3 = 32'd17;
    end else if (tmp_13_fu_1194_p4[18] == 1'b1) begin
        c_fu_1204_p3 = 32'd18;
    end else if (tmp_13_fu_1194_p4[19] == 1'b1) begin
        c_fu_1204_p3 = 32'd19;
    end else if (tmp_13_fu_1194_p4[20] == 1'b1) begin
        c_fu_1204_p3 = 32'd20;
    end else if (tmp_13_fu_1194_p4[21] == 1'b1) begin
        c_fu_1204_p3 = 32'd21;
    end else if (tmp_13_fu_1194_p4[22] == 1'b1) begin
        c_fu_1204_p3 = 32'd22;
    end else if (tmp_13_fu_1194_p4[23] == 1'b1) begin
        c_fu_1204_p3 = 32'd23;
    end else if (tmp_13_fu_1194_p4[24] == 1'b1) begin
        c_fu_1204_p3 = 32'd24;
    end else if (tmp_13_fu_1194_p4[25] == 1'b1) begin
        c_fu_1204_p3 = 32'd25;
    end else if (tmp_13_fu_1194_p4[26] == 1'b1) begin
        c_fu_1204_p3 = 32'd26;
    end else if (tmp_13_fu_1194_p4[27] == 1'b1) begin
        c_fu_1204_p3 = 32'd27;
    end else if (tmp_13_fu_1194_p4[28] == 1'b1) begin
        c_fu_1204_p3 = 32'd28;
    end else if (tmp_13_fu_1194_p4[29] == 1'b1) begin
        c_fu_1204_p3 = 32'd29;
    end else if (tmp_13_fu_1194_p4[30] == 1'b1) begin
        c_fu_1204_p3 = 32'd30;
    end else if (tmp_13_fu_1194_p4[31] == 1'b1) begin
        c_fu_1204_p3 = 32'd31;
    end else begin
        c_fu_1204_p3 = 32'd32;
    end
end
assign closepath_fu_418_p2 = ((din_exp_fu_404_p4 < 11'd1022) ? 1'b1 : 1'b0);
assign cos_basis_fu_696_p3 = ((do_cos_read_reg_1575_pp0_iter8_reg[0:0] == 1'b1) ? xor_ln242_fu_690_p2 : tmp_6_fu_651_p19);
assign data_fu_392_p1 = t_in_int_reg;
assign din_exp_fu_404_p4 = {{data_fu_392_p1[62:52]}};
assign din_sig_fu_414_p1 = data_fu_392_p1[51:0];
assign empty_fu_1492_p1 = newexp_fu_1474_p2[10:0];
assign fourth_order_double_sin_cos_K0_address0 = zext_ln32_reg_1736_pp0_iter18_reg;
assign fourth_order_double_sin_cos_K1_address0 = zext_ln32_fu_963_p1;
assign fourth_order_double_sin_cos_K2_address0 = zext_ln32_fu_963_p1;
assign fourth_order_double_sin_cos_K3_address0 = zext_ln32_reg_1736_pp0_iter18_reg;
assign fourth_order_double_sin_cos_K4_address0 = zext_ln32_reg_1736_pp0_iter18_reg;
assign grp_fu_356_p0 = grp_fu_356_p00;
assign grp_fu_356_p00 = tmp_8_reg_1836;
assign grp_fu_356_p1 = grp_fu_356_p10;
assign grp_fu_356_p10 = fourth_order_double_sin_cos_K4_load_reg_1841;
assign grp_fu_360_p0 = grp_fu_360_p00;
assign grp_fu_360_p00 = tmp_7_reg_1826;
assign grp_fu_360_p1 = grp_fu_360_p10;
assign grp_fu_360_p10 = fourth_order_double_sin_cos_K3_load_reg_1831;
assign grp_fu_364_p0 = grp_fu_364_p00;
assign grp_fu_364_p00 = B_squared_reg_1753;
assign grp_fu_368_p0 = zext_ln25_fu_952_p1;
assign grp_fu_368_p1 = zext_ln25_fu_952_p1;
assign grp_fu_372_p0 = zext_ln25_1_fu_979_p1;
assign grp_fu_372_p1 = zext_ln25_reg_1729_pp0_iter15_reg;
assign grp_fu_376_p0 = zext_ln25_1_fu_979_p1;
assign grp_fu_376_p1 = zext_ln25_1_fu_979_p1;
assign grp_fu_380_p0 = grp_fu_380_p00;
assign grp_fu_380_p00 = B_reg_1719_pp0_iter15_reg;
assign grp_fu_384_p1 = grp_fu_384_p10;
assign grp_fu_384_p10 = Mx_1_reg_1881;
assign grp_fu_388_p1 = grp_fu_388_p10;
assign grp_fu_388_p10 = X_fu_475_p3;
assign icmp_ln271_1_fu_492_p2 = ((din_sig_reg_1596_pp0_iter2_reg == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln271_fu_487_p2 = ((din_exp_reg_1589_pp0_iter2_reg == 11'd0) ? 1'b1 : 1'b0);
assign icmp_ln282_fu_878_p2 = ((din_exp_reg_1589_pp0_iter8_reg == 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln424_1_fu_1299_p2 = ((c_1_fu_1254_p3 == 32'd16) ? 1'b1 : 1'b0);
assign icmp_ln424_2_fu_1351_p2 = ((c_2_reg_1948 == 32'd16) ? 1'b1 : 1'b0);
assign icmp_ln424_fu_1330_p2 = ((c_reg_1927_pp0_iter30_reg == 32'd16) ? 1'b1 : 1'b0);
assign icmp_ln433_fu_1225_p2 = ((result_reg_1901 == 63'd0) ? 1'b1 : 1'b0);
assign in_shift_2_fu_1216_p2 = result_reg_1901 << zext_ln423_fu_1212_p1;
assign in_shift_3_fu_1290_p2 = in_shift_2_reg_1933 << zext_ln423_1_fu_1286_p1;
assign in_shift_4_fu_1342_p2 = in_shift_3_reg_1961 << zext_ln423_2_fu_1339_p1;
assign in_shift_5_fu_1435_p2 = in_shift_4_reg_1982 << zext_ln423_3_fu_1432_p1;
assign in_shift_fu_1444_p4 = in_shift_5_fu_1435_p2[61:0];
assign in_shift_fu_1444_p9 = 'bx;
assign index_fu_710_p3 = {{din_sign_reg_1583_pp0_iter8_reg}, {k_1_reg_1651}};
assign k_1_fu_523_p3 = ((closepath_reg_1602_pp0_iter7_reg[0:0] == 1'b1) ? 3'd0 : k_reg_1646);
assign lshr_ln506_fu_911_p2 = Mx_reg_1667 >> zext_ln506_fu_907_p1;
assign newexp_fu_1474_p2 = ($signed(sext_ln432_fu_1470_p1) - $signed(shift_4_reg_1997));
assign or_ln282_fu_1520_p2 = (or_ln433_fu_1487_p2 | icmp_ln282_reg_1702_pp0_iter31_reg);
assign or_ln433_fu_1487_p2 = (tmp_20_fu_1479_p3 | icmp_ln433_reg_1943_pp0_iter31_reg);
assign out_bits_4_fu_1230_p3 = {{tmp_10_reg_1912_pp0_iter29_reg}, {16'd32768}};
assign out_bits_5_fu_1237_p3 = {{tmp_11_reg_1917_pp0_iter29_reg}, {16'd32768}};
assign out_bits_6_fu_1305_p3 = {{tmp_12_reg_1922_pp0_iter30_reg}, {17'd65536}};
assign out_bits_fu_1187_p3 = {{tmp_9_reg_1907}, {16'd32768}};
assign phitmp_fu_1496_p4 = {{in_shift_fu_1444_p11[61:10]}};
assign ref_4oPi_table_256_address0 = zext_ln397_fu_448_p1;
assign results_exp_1_fu_1548_p3 = ((and_ln271_reg_1633_pp0_iter31_reg[0:0] == 1'b1) ? select_ln259_fu_1506_p3 : results_exp_fu_1525_p3);
assign results_exp_fu_1525_p3 = ((or_ln282_fu_1520_p2[0:0] == 1'b1) ? select_ln282_fu_1513_p3 : empty_fu_1492_p1);
assign results_sig_1_fu_1555_p3 = ((and_ln271_reg_1633_pp0_iter31_reg[0:0] == 1'b1) ? 52'd0 : results_sig_fu_1540_p3);
assign results_sig_fu_1540_p3 = ((or_ln282_fu_1520_p2[0:0] == 1'b1) ? select_ln282_2_fu_1533_p3 : phitmp_fu_1496_p4);
assign results_sign_2_fu_873_p2 = (xor_ln278_fu_868_p2 & din_sign_reg_1583_pp0_iter8_reg);
assign results_sign_3_fu_895_p3 = ((and_ln271_reg_1633_pp0_iter8_reg[0:0] == 1'b1) ? results_sign_2_fu_873_p2 : results_sign_4_fu_889_p2);
assign results_sign_4_fu_889_p2 = (xor_ln282_fu_883_p2 & results_sign_fu_860_p3);
assign results_sign_fu_860_p3 = ((cos_basis_fu_696_p3[0:0] == 1'b1) ? tmp_17_fu_716_p35 : tmp_18_fu_788_p35);
assign sel_tmp5_fu_1390_p4 = {{{xor_ln424_fu_1362_p2}, {and_ln424_1_fu_1373_p2}}, {and_ln424_2_fu_1384_p2}};
assign select_ln259_fu_1506_p3 = ((do_cos_read_reg_1575_pp0_iter31_reg[0:0] == 1'b1) ? 11'd1023 : 11'd0);
assign select_ln282_2_fu_1533_p3 = ((icmp_ln282_reg_1702_pp0_iter31_reg[0:0] == 1'b1) ? 52'd4503599627370495 : 52'd0);
assign select_ln282_fu_1513_p3 = ((icmp_ln282_reg_1702_pp0_iter31_reg[0:0] == 1'b1) ? 11'd2047 : 11'd0);
assign select_ln453_fu_560_p3 = ((closepath_reg_1602_pp0_iter8_reg[0:0] == 1'b1) ? Ex_fu_555_p2 : 11'd0);
assign select_ln506_fu_902_p3 = ((tmp_reg_1680[0:0] == 1'b1) ? sub_ln506_reg_1686 : Ex_1_reg_1674);
assign sext_ln252_fu_1428_p1 = $signed(Ex_2_fu_1422_p3);
assign sext_ln37_1_fu_1068_p1 = $signed(trunc_ln_reg_1816);
assign sext_ln37_2_fu_1077_p1 = $signed(trunc_ln1_reg_1821);
assign sext_ln37_fu_1064_p1 = $signed(t1_1_fu_1041_p3);
assign sext_ln432_fu_1470_p1 = $signed(add_ln432_fu_1464_p2);
assign sext_ln75_fu_592_p1 = $signed(tmp_4_fu_584_p3);
assign shift_1_fu_1280_p2 = (c_1_fu_1254_p3 + 32'd16);
assign shift_2_fu_1335_p2 = (c_2_reg_1948 + shift_1_reg_1955);
assign shift_4_fu_1400_p10 = {{{xor_ln424_fu_1362_p2}, {and_ln424_1_fu_1373_p2}}, {and_ln424_2_fu_1384_p2}};
assign shift_4_fu_1400_p4 = (c_3_fu_1322_p3 + shift_2_fu_1335_p2);
assign shift_4_fu_1400_p9 = 'bx;
assign shl_ln398_fu_460_p2 = table_256_reg_1618 << zext_ln398_fu_457_p1;
assign shl_ln504_fu_616_p2 = Mx_bits_2_reg_1657 << zext_ln504_fu_612_p1;
assign shl_ln506_fu_916_p2 = Mx_reg_1667 << zext_ln506_fu_907_p1;
assign sin_basis_fu_703_p3 = ((do_cos_read_reg_1575_pp0_iter8_reg[0:0] == 1'b1) ? tmp_6_fu_651_p19 : xor_ln242_fu_690_p2);
assign sub_ln506_fu_645_p2 = (11'd0 - Ex_1_fu_631_p2);
assign t1_1_fu_1041_p3 = {{t1_reg_1811}, {4'd0}};
assign t_2_fu_1562_p4 = {{{results_sign_3_reg_1709_pp0_iter31_reg}, {results_exp_1_fu_1548_p3}}, {results_sig_1_fu_1555_p3}};
assign t_fu_567_p3 = {{tmp_1_reg_1662}, {1'd1}};
integer ap_tvar_int_0;
always @ (out_bits_fu_1187_p3) begin
    for (ap_tvar_int_0 = 32 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 31 - 0) begin
            tmp_13_fu_1194_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_13_fu_1194_p4[ap_tvar_int_0] = out_bits_fu_1187_p3[31 - ap_tvar_int_0];
        end
    end
end
integer ap_tvar_int_1;
always @ (out_bits_4_fu_1230_p3) begin
    for (ap_tvar_int_1 = 32 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 31 - 0) begin
            tmp_14_fu_1244_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_14_fu_1244_p4[ap_tvar_int_1] = out_bits_4_fu_1230_p3[31 - ap_tvar_int_1];
        end
    end
end
integer ap_tvar_int_2;
always @ (out_bits_5_fu_1237_p3) begin
    for (ap_tvar_int_2 = 32 - 1; ap_tvar_int_2 >= 0; ap_tvar_int_2 = ap_tvar_int_2 - 1) begin
        if (ap_tvar_int_2 > 31 - 0) begin
            tmp_15_fu_1262_p4[ap_tvar_int_2] = 1'b0;
        end else begin
            tmp_15_fu_1262_p4[ap_tvar_int_2] = out_bits_5_fu_1237_p3[31 - ap_tvar_int_2];
        end
    end
end
integer ap_tvar_int_3;
always @ (out_bits_6_fu_1305_p3) begin
    for (ap_tvar_int_3 = 32 - 1; ap_tvar_int_3 >= 0; ap_tvar_int_3 = ap_tvar_int_3 - 1) begin
        if (ap_tvar_int_3 > 31 - 0) begin
            tmp_16_fu_1312_p4[ap_tvar_int_3] = 1'b0;
        end else begin
            tmp_16_fu_1312_p4[ap_tvar_int_3] = out_bits_6_fu_1305_p3[31 - ap_tvar_int_3];
        end
    end
end
assign tmp_17_fu_716_p33 = 'bx;
assign tmp_18_fu_788_p33 = 'bx;
assign tmp_20_fu_1479_p3 = newexp_fu_1474_p2[32'd31];
integer ap_tvar_int_4;
always @ (t_fu_567_p3) begin
    for (ap_tvar_int_4 = 62 - 1; ap_tvar_int_4 >= 0; ap_tvar_int_4 = ap_tvar_int_4 - 1) begin
        if (ap_tvar_int_4 > 61 - 0) begin
            tmp_3_fu_574_p4[ap_tvar_int_4] = 1'b0;
        end else begin
            tmp_3_fu_574_p4[ap_tvar_int_4] = t_fu_567_p3[61 - ap_tvar_int_4];
        end
    end
end
assign tmp_4_fu_584_p3 = {{1'd1}, {tmp_3_fu_574_p4}};
always @ (sext_ln75_fu_592_p1) begin
    if (sext_ln75_fu_592_p1[0] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd0;
    end else if (sext_ln75_fu_592_p1[1] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd1;
    end else if (sext_ln75_fu_592_p1[2] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd2;
    end else if (sext_ln75_fu_592_p1[3] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd3;
    end else if (sext_ln75_fu_592_p1[4] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd4;
    end else if (sext_ln75_fu_592_p1[5] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd5;
    end else if (sext_ln75_fu_592_p1[6] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd6;
    end else if (sext_ln75_fu_592_p1[7] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd7;
    end else if (sext_ln75_fu_592_p1[8] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd8;
    end else if (sext_ln75_fu_592_p1[9] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd9;
    end else if (sext_ln75_fu_592_p1[10] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd10;
    end else if (sext_ln75_fu_592_p1[11] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd11;
    end else if (sext_ln75_fu_592_p1[12] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd12;
    end else if (sext_ln75_fu_592_p1[13] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd13;
    end else if (sext_ln75_fu_592_p1[14] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd14;
    end else if (sext_ln75_fu_592_p1[15] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd15;
    end else if (sext_ln75_fu_592_p1[16] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd16;
    end else if (sext_ln75_fu_592_p1[17] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd17;
    end else if (sext_ln75_fu_592_p1[18] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd18;
    end else if (sext_ln75_fu_592_p1[19] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd19;
    end else if (sext_ln75_fu_592_p1[20] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd20;
    end else if (sext_ln75_fu_592_p1[21] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd21;
    end else if (sext_ln75_fu_592_p1[22] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd22;
    end else if (sext_ln75_fu_592_p1[23] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd23;
    end else if (sext_ln75_fu_592_p1[24] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd24;
    end else if (sext_ln75_fu_592_p1[25] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd25;
    end else if (sext_ln75_fu_592_p1[26] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd26;
    end else if (sext_ln75_fu_592_p1[27] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd27;
    end else if (sext_ln75_fu_592_p1[28] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd28;
    end else if (sext_ln75_fu_592_p1[29] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd29;
    end else if (sext_ln75_fu_592_p1[30] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd30;
    end else if (sext_ln75_fu_592_p1[31] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd31;
    end else if (sext_ln75_fu_592_p1[32] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd32;
    end else if (sext_ln75_fu_592_p1[33] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd33;
    end else if (sext_ln75_fu_592_p1[34] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd34;
    end else if (sext_ln75_fu_592_p1[35] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd35;
    end else if (sext_ln75_fu_592_p1[36] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd36;
    end else if (sext_ln75_fu_592_p1[37] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd37;
    end else if (sext_ln75_fu_592_p1[38] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd38;
    end else if (sext_ln75_fu_592_p1[39] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd39;
    end else if (sext_ln75_fu_592_p1[40] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd40;
    end else if (sext_ln75_fu_592_p1[41] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd41;
    end else if (sext_ln75_fu_592_p1[42] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd42;
    end else if (sext_ln75_fu_592_p1[43] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd43;
    end else if (sext_ln75_fu_592_p1[44] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd44;
    end else if (sext_ln75_fu_592_p1[45] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd45;
    end else if (sext_ln75_fu_592_p1[46] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd46;
    end else if (sext_ln75_fu_592_p1[47] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd47;
    end else if (sext_ln75_fu_592_p1[48] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd48;
    end else if (sext_ln75_fu_592_p1[49] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd49;
    end else if (sext_ln75_fu_592_p1[50] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd50;
    end else if (sext_ln75_fu_592_p1[51] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd51;
    end else if (sext_ln75_fu_592_p1[52] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd52;
    end else if (sext_ln75_fu_592_p1[53] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd53;
    end else if (sext_ln75_fu_592_p1[54] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd54;
    end else if (sext_ln75_fu_592_p1[55] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd55;
    end else if (sext_ln75_fu_592_p1[56] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd56;
    end else if (sext_ln75_fu_592_p1[57] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd57;
    end else if (sext_ln75_fu_592_p1[58] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd58;
    end else if (sext_ln75_fu_592_p1[59] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd59;
    end else if (sext_ln75_fu_592_p1[60] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd60;
    end else if (sext_ln75_fu_592_p1[61] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd61;
    end else if (sext_ln75_fu_592_p1[62] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd62;
    end else if (sext_ln75_fu_592_p1[63] == 1'b1) begin
        tmp_5_fu_596_p3 = 64'd63;
    end else begin
        tmp_5_fu_596_p3 = 64'd64;
    end
end
assign tmp_6_fu_651_p17 = 'bx;
assign tmp_s_fu_438_p4 = {{addr_fu_430_p3[10:7]}};
assign trunc_ln398_fu_453_p1 = addr_fu_430_p3[6:0];
assign trunc_ln419_1_fu_1295_p1 = in_shift_3_fu_1290_p2[61:0];
assign trunc_ln419_2_fu_1347_p1 = in_shift_4_fu_1342_p2[61:0];
assign trunc_ln419_fu_1221_p1 = in_shift_2_fu_1216_p2[61:0];
assign trunc_ln491_fu_529_p1 = k_1_fu_523_p3[0:0];
assign x_fu_921_p3 = ((tmp_reg_1680[0:0] == 1'b1) ? lshr_ln506_fu_911_p2 : shl_ln506_fu_916_p2);
assign xor_ln242_fu_690_p2 = (tmp_6_fu_651_p19 ^ 1'd1);
assign xor_ln278_fu_868_p2 = (do_cos_read_reg_1575_pp0_iter8_reg ^ 1'd1);
assign xor_ln282_fu_883_p2 = (icmp_ln282_fu_878_p2 ^ 1'd1);
assign xor_ln424_1_fu_1379_p2 = (icmp_ln424_1_reg_1971 ^ 1'd1);
assign xor_ln424_fu_1362_p2 = (icmp_ln424_fu_1330_p2 ^ 1'd1);
assign zext_ln25_1_fu_979_p1 = B_squared_reg_1753;
assign zext_ln25_fu_952_p1 = B_trunc_reg_1724;
assign zext_ln32_fu_963_p1 = A_fu_957_p3;
assign zext_ln37_2_fu_1112_p1 = tmp_19_reg_1876;
assign zext_ln37_fu_1120_p1 = lshr_ln_reg_1871;
assign zext_ln397_fu_448_p1 = tmp_s_fu_438_p4;
assign zext_ln398_fu_457_p1 = trunc_ln398_reg_1613_pp0_iter1_reg;
assign zext_ln423_1_fu_1286_p1 = c_1_fu_1254_p3;
assign zext_ln423_2_fu_1339_p1 = c_2_reg_1948;
assign zext_ln423_3_fu_1432_p1 = c_3_reg_1977;
assign zext_ln423_fu_1212_p1 = c_fu_1204_p3;
assign zext_ln504_fu_612_p1 = Mx_zeros_fu_604_p1;
assign zext_ln505_fu_608_p1 = Mx_zeros_fu_604_p1;
assign zext_ln506_fu_907_p1 = select_ln506_fu_902_p3;
always @ (posedge ap_clk) begin
    zext_ln25_reg_1729[97:49] <= 49'b0000000000000000000000000000000000000000000000000;
    zext_ln25_reg_1729_pp0_iter12_reg[97:49] <= 49'b0000000000000000000000000000000000000000000000000;
    zext_ln25_reg_1729_pp0_iter13_reg[97:49] <= 49'b0000000000000000000000000000000000000000000000000;
    zext_ln25_reg_1729_pp0_iter14_reg[97:49] <= 49'b0000000000000000000000000000000000000000000000000;
    zext_ln25_reg_1729_pp0_iter15_reg[97:49] <= 49'b0000000000000000000000000000000000000000000000000;
    zext_ln32_reg_1736[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_1736_pp0_iter15_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_1736_pp0_iter16_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_1736_pp0_iter17_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_1736_pp0_iter18_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 