module backprop_matrix_vector_product_with_bias_input_layer_35_36_1_Pipeline_mvp_product_input_l (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations_3_address0,activations_3_ce0,activations_3_we0,activations_3_d0,activations_2_address0,activations_2_ce0,activations_2_we0,activations_2_d0,activations_1_address0,activations_1_ce0,activations_1_we0,activations_1_d0,activations_0_address0,activations_0_ce0,activations_0_we0,activations_0_d0,weights1_0_address0,weights1_0_ce0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_q1,tmp,weights1_1_address0,weights1_1_ce0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_q1,tmp_s,weights1_2_address0,weights1_2_ce0,weights1_2_q0,weights1_2_address1,weights1_2_ce1,weights1_2_q1,tmp_15,weights1_3_address0,weights1_3_ce0,weights1_3_q0,weights1_3_address1,weights1_3_ce1,weights1_3_q1,tmp_16,tmp_17,tmp_18,tmp_19,tmp_20,tmp_21,tmp_22,tmp_23,tmp_24,tmp_25,grp_fu_1770_p_din0,grp_fu_1770_p_din1,grp_fu_1770_p_opcode,grp_fu_1770_p_dout0,grp_fu_1770_p_ce,grp_fu_1774_p_din0,grp_fu_1774_p_din1,grp_fu_1774_p_opcode,grp_fu_1774_p_dout0,grp_fu_1774_p_ce,grp_fu_1778_p_din0,grp_fu_1778_p_din1,grp_fu_1778_p_opcode,grp_fu_1778_p_dout0,grp_fu_1778_p_ce,grp_fu_1782_p_din0,grp_fu_1782_p_din1,grp_fu_1782_p_opcode,grp_fu_1782_p_dout0,grp_fu_1782_p_ce,grp_fu_1786_p_din0,grp_fu_1786_p_din1,grp_fu_1786_p_opcode,grp_fu_1786_p_dout0,grp_fu_1786_p_ce,grp_fu_1790_p_din0,grp_fu_1790_p_din1,grp_fu_1790_p_opcode,grp_fu_1790_p_dout0,grp_fu_1790_p_ce,grp_fu_1794_p_din0,grp_fu_1794_p_din1,grp_fu_1794_p_dout0,grp_fu_1794_p_ce,grp_fu_1798_p_din0,grp_fu_1798_p_din1,grp_fu_1798_p_dout0,grp_fu_1798_p_ce,grp_fu_1802_p_din0,grp_fu_1802_p_din1,grp_fu_1802_p_dout0,grp_fu_1802_p_ce,grp_fu_1806_p_din0,grp_fu_1806_p_din1,grp_fu_1806_p_dout0,grp_fu_1806_p_ce,grp_fu_1810_p_din0,grp_fu_1810_p_din1,grp_fu_1810_p_dout0,grp_fu_1810_p_ce,grp_fu_1814_p_din0,grp_fu_1814_p_din1,grp_fu_1814_p_dout0,grp_fu_1814_p_ce,grp_fu_1818_p_din0,grp_fu_1818_p_din1,grp_fu_1818_p_dout0,grp_fu_1818_p_ce,grp_fu_1822_p_din0,grp_fu_1822_p_din1,grp_fu_1822_p_dout0,grp_fu_1822_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] activations_3_address0;
output   activations_3_ce0;
output   activations_3_we0;
output  [63:0] activations_3_d0;
output  [3:0] activations_2_address0;
output   activations_2_ce0;
output   activations_2_we0;
output  [63:0] activations_2_d0;
output  [3:0] activations_1_address0;
output   activations_1_ce0;
output   activations_1_we0;
output  [63:0] activations_1_d0;
output  [3:0] activations_0_address0;
output   activations_0_ce0;
output   activations_0_we0;
output  [63:0] activations_0_d0;
output  [7:0] weights1_0_address0;
output   weights1_0_ce0;
input  [63:0] weights1_0_q0;
output  [7:0] weights1_0_address1;
output   weights1_0_ce1;
input  [63:0] weights1_0_q1;
input  [63:0] tmp;
output  [7:0] weights1_1_address0;
output   weights1_1_ce0;
input  [63:0] weights1_1_q0;
output  [7:0] weights1_1_address1;
output   weights1_1_ce1;
input  [63:0] weights1_1_q1;
input  [63:0] tmp_s;
output  [7:0] weights1_2_address0;
output   weights1_2_ce0;
input  [63:0] weights1_2_q0;
output  [7:0] weights1_2_address1;
output   weights1_2_ce1;
input  [63:0] weights1_2_q1;
input  [63:0] tmp_15;
output  [7:0] weights1_3_address0;
output   weights1_3_ce0;
input  [63:0] weights1_3_q0;
output  [7:0] weights1_3_address1;
output   weights1_3_ce1;
input  [63:0] weights1_3_q1;
input  [63:0] tmp_16;
input  [63:0] tmp_17;
input  [63:0] tmp_18;
input  [63:0] tmp_19;
input  [63:0] tmp_20;
input  [63:0] tmp_21;
input  [63:0] tmp_22;
input  [63:0] tmp_23;
input  [63:0] tmp_24;
input  [63:0] tmp_25;
output  [63:0] grp_fu_1770_p_din0;
output  [63:0] grp_fu_1770_p_din1;
output  [0:0] grp_fu_1770_p_opcode;
input  [63:0] grp_fu_1770_p_dout0;
output   grp_fu_1770_p_ce;
output  [63:0] grp_fu_1774_p_din0;
output  [63:0] grp_fu_1774_p_din1;
output  [0:0] grp_fu_1774_p_opcode;
input  [63:0] grp_fu_1774_p_dout0;
output   grp_fu_1774_p_ce;
output  [63:0] grp_fu_1778_p_din0;
output  [63:0] grp_fu_1778_p_din1;
output  [0:0] grp_fu_1778_p_opcode;
input  [63:0] grp_fu_1778_p_dout0;
output   grp_fu_1778_p_ce;
output  [63:0] grp_fu_1782_p_din0;
output  [63:0] grp_fu_1782_p_din1;
output  [0:0] grp_fu_1782_p_opcode;
input  [63:0] grp_fu_1782_p_dout0;
output   grp_fu_1782_p_ce;
output  [63:0] grp_fu_1786_p_din0;
output  [63:0] grp_fu_1786_p_din1;
output  [0:0] grp_fu_1786_p_opcode;
input  [63:0] grp_fu_1786_p_dout0;
output   grp_fu_1786_p_ce;
output  [63:0] grp_fu_1790_p_din0;
output  [63:0] grp_fu_1790_p_din1;
output  [0:0] grp_fu_1790_p_opcode;
input  [63:0] grp_fu_1790_p_dout0;
output   grp_fu_1790_p_ce;
output  [63:0] grp_fu_1794_p_din0;
output  [63:0] grp_fu_1794_p_din1;
input  [63:0] grp_fu_1794_p_dout0;
output   grp_fu_1794_p_ce;
output  [63:0] grp_fu_1798_p_din0;
output  [63:0] grp_fu_1798_p_din1;
input  [63:0] grp_fu_1798_p_dout0;
output   grp_fu_1798_p_ce;
output  [63:0] grp_fu_1802_p_din0;
output  [63:0] grp_fu_1802_p_din1;
input  [63:0] grp_fu_1802_p_dout0;
output   grp_fu_1802_p_ce;
output  [63:0] grp_fu_1806_p_din0;
output  [63:0] grp_fu_1806_p_din1;
input  [63:0] grp_fu_1806_p_dout0;
output   grp_fu_1806_p_ce;
output  [63:0] grp_fu_1810_p_din0;
output  [63:0] grp_fu_1810_p_din1;
input  [63:0] grp_fu_1810_p_dout0;
output   grp_fu_1810_p_ce;
output  [63:0] grp_fu_1814_p_din0;
output  [63:0] grp_fu_1814_p_din1;
input  [63:0] grp_fu_1814_p_dout0;
output   grp_fu_1814_p_ce;
output  [63:0] grp_fu_1818_p_din0;
output  [63:0] grp_fu_1818_p_din1;
input  [63:0] grp_fu_1818_p_dout0;
output   grp_fu_1818_p_ce;
output  [63:0] grp_fu_1822_p_din0;
output  [63:0] grp_fu_1822_p_din1;
input  [63:0] grp_fu_1822_p_dout0;
output   grp_fu_1822_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] tmp_1_reg_1967;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_808;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_813;
reg   [63:0] reg_818;
reg   [63:0] reg_823;
reg   [63:0] reg_828;
reg   [63:0] reg_833;
reg   [63:0] reg_838;
reg   [63:0] reg_843;
reg   [6:0] j_1_reg_1961;
reg   [0:0] tmp_1_reg_1967_pp0_iter1_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter2_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter3_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter4_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter5_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter6_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter7_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter8_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter9_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter10_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter11_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter12_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter13_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter14_reg;
reg   [0:0] tmp_1_reg_1967_pp0_iter15_reg;
wire   [9:0] empty_fu_886_p2;
reg   [9:0] empty_reg_1971;
reg   [7:0] lshr_ln8_reg_2001;
wire   [3:0] lshr_ln7_fu_902_p4;
reg   [3:0] lshr_ln7_reg_2009;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter1_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter2_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter3_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter4_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter5_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter6_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter7_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter8_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter9_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter10_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter11_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter12_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter13_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter14_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter15_reg;
reg   [3:0] lshr_ln7_reg_2009_pp0_iter16_reg;
wire   [7:0] mul_ln36_fu_915_p2;
reg   [7:0] mul_ln36_reg_2014;
wire   [63:0] zext_ln36_fu_921_p1;
reg   [63:0] zext_ln36_reg_2021;
wire   [63:0] zext_ln36_4_fu_927_p1;
reg   [63:0] zext_ln36_4_reg_2037;
wire   [7:0] lshr_ln36_8_fu_937_p4;
reg   [7:0] lshr_ln36_8_reg_2052;
wire   [7:0] lshr_ln36_16_fu_958_p4;
reg   [7:0] lshr_ln36_16_reg_2069;
wire   [63:0] bitcast_ln36_fu_1093_p1;
wire   [63:0] bitcast_ln36_1_fu_1098_p1;
wire   [63:0] zext_ln36_1_fu_1108_p1;
reg   [63:0] zext_ln36_1_reg_2136;
wire   [63:0] bitcast_ln36_13_fu_1114_p1;
wire   [63:0] bitcast_ln36_14_fu_1119_p1;
wire   [63:0] bitcast_ln36_26_fu_1154_p1;
wire   [63:0] bitcast_ln36_27_fu_1159_p1;
wire   [63:0] bitcast_ln36_39_fu_1194_p1;
wire   [63:0] bitcast_ln36_40_fu_1199_p1;
wire   [63:0] bitcast_ln36_2_fu_1234_p1;
wire   [63:0] bitcast_ln36_3_fu_1239_p1;
wire   [63:0] bitcast_ln36_15_fu_1244_p1;
wire   [63:0] bitcast_ln36_16_fu_1249_p1;
wire   [63:0] bitcast_ln36_28_fu_1294_p1;
wire   [63:0] bitcast_ln36_29_fu_1299_p1;
wire   [63:0] bitcast_ln36_41_fu_1344_p1;
wire   [63:0] bitcast_ln36_42_fu_1349_p1;
wire   [63:0] bitcast_ln36_4_fu_1394_p1;
wire   [63:0] bitcast_ln36_5_fu_1399_p1;
wire   [63:0] zext_ln36_2_fu_1409_p1;
reg   [63:0] zext_ln36_2_reg_2302;
wire   [63:0] bitcast_ln36_17_fu_1415_p1;
wire   [63:0] bitcast_ln36_18_fu_1420_p1;
wire   [7:0] add_ln36_12_fu_1455_p2;
reg   [7:0] add_ln36_12_reg_2338;
wire   [63:0] bitcast_ln36_30_fu_1460_p1;
wire   [63:0] bitcast_ln36_31_fu_1465_p1;
wire   [63:0] bitcast_ln36_43_fu_1500_p1;
wire   [63:0] bitcast_ln36_44_fu_1505_p1;
wire   [63:0] bitcast_ln36_6_fu_1540_p1;
wire   [63:0] bitcast_ln36_7_fu_1545_p1;
wire   [7:0] add_ln36_2_fu_1550_p2;
reg   [7:0] add_ln36_2_reg_2403;
wire   [63:0] bitcast_ln36_19_fu_1555_p1;
wire   [63:0] bitcast_ln36_20_fu_1560_p1;
wire   [63:0] bitcast_ln36_32_fu_1605_p1;
wire   [63:0] bitcast_ln36_33_fu_1610_p1;
wire   [63:0] bitcast_ln36_45_fu_1655_p1;
wire   [63:0] bitcast_ln36_46_fu_1660_p1;
wire   [63:0] bitcast_ln36_8_fu_1715_p1;
wire   [63:0] bitcast_ln36_9_fu_1720_p1;
wire   [63:0] bitcast_ln36_21_fu_1729_p1;
wire   [63:0] bitcast_ln36_22_fu_1734_p1;
wire   [63:0] bitcast_ln36_34_fu_1743_p1;
wire   [63:0] bitcast_ln36_35_fu_1748_p1;
wire   [63:0] bitcast_ln36_47_fu_1763_p1;
wire   [63:0] bitcast_ln36_48_fu_1768_p1;
wire   [63:0] bitcast_ln36_10_fu_1783_p1;
wire   [63:0] bitcast_ln36_11_fu_1788_p1;
wire   [63:0] bitcast_ln36_23_fu_1793_p1;
wire   [63:0] bitcast_ln36_24_fu_1798_p1;
wire   [63:0] bitcast_ln36_36_fu_1803_p1;
wire   [63:0] bitcast_ln36_37_fu_1808_p1;
wire   [63:0] bitcast_ln36_49_fu_1813_p1;
wire   [63:0] bitcast_ln36_50_fu_1818_p1;
reg   [63:0] mul8_reg_2568;
reg   [63:0] mul8_s_reg_2573;
reg   [63:0] mul8_s_reg_2573_pp0_iter2_reg;
wire   [63:0] bitcast_ln36_12_fu_1823_p1;
reg   [63:0] mul8_1_reg_2583;
reg   [63:0] mul8_1_1_reg_2588;
reg   [63:0] mul8_1_1_reg_2588_pp0_iter2_reg;
wire   [63:0] bitcast_ln36_25_fu_1828_p1;
reg   [63:0] mul8_2_reg_2598;
reg   [63:0] mul8_2_1_reg_2603;
reg   [63:0] mul8_2_1_reg_2603_pp0_iter2_reg;
wire   [63:0] bitcast_ln36_38_fu_1833_p1;
reg   [63:0] mul8_3_reg_2613;
reg   [63:0] mul8_3_1_reg_2618;
reg   [63:0] mul8_3_1_reg_2618_pp0_iter2_reg;
wire   [63:0] bitcast_ln36_51_fu_1838_p1;
reg   [63:0] mul8_13_reg_2628;
reg   [63:0] mul8_13_reg_2628_pp0_iter2_reg;
reg   [63:0] mul8_13_reg_2628_pp0_iter3_reg;
reg   [63:0] mul8_14_reg_2633;
reg   [63:0] mul8_14_reg_2633_pp0_iter2_reg;
reg   [63:0] mul8_14_reg_2633_pp0_iter3_reg;
reg   [63:0] mul8_14_reg_2633_pp0_iter4_reg;
reg   [63:0] mul8_1_2_reg_2638;
reg   [63:0] mul8_1_2_reg_2638_pp0_iter2_reg;
reg   [63:0] mul8_1_2_reg_2638_pp0_iter3_reg;
reg   [63:0] mul8_1_3_reg_2643;
reg   [63:0] mul8_1_3_reg_2643_pp0_iter2_reg;
reg   [63:0] mul8_1_3_reg_2643_pp0_iter3_reg;
reg   [63:0] mul8_1_3_reg_2643_pp0_iter4_reg;
reg   [63:0] mul8_2_2_reg_2648;
reg   [63:0] mul8_2_2_reg_2648_pp0_iter2_reg;
reg   [63:0] mul8_2_2_reg_2648_pp0_iter3_reg;
reg   [63:0] mul8_2_3_reg_2653;
reg   [63:0] mul8_2_3_reg_2653_pp0_iter2_reg;
reg   [63:0] mul8_2_3_reg_2653_pp0_iter3_reg;
reg   [63:0] mul8_2_3_reg_2653_pp0_iter4_reg;
reg   [63:0] mul8_3_2_reg_2658;
reg   [63:0] mul8_3_2_reg_2658_pp0_iter2_reg;
reg   [63:0] mul8_3_2_reg_2658_pp0_iter3_reg;
reg   [63:0] mul8_3_3_reg_2663;
reg   [63:0] mul8_3_3_reg_2663_pp0_iter2_reg;
reg   [63:0] mul8_3_3_reg_2663_pp0_iter3_reg;
reg   [63:0] mul8_3_3_reg_2663_pp0_iter4_reg;
reg   [63:0] mul8_4_reg_2668;
reg   [63:0] mul8_4_reg_2668_pp0_iter2_reg;
reg   [63:0] mul8_4_reg_2668_pp0_iter3_reg;
reg   [63:0] mul8_4_reg_2668_pp0_iter4_reg;
reg   [63:0] mul8_4_reg_2668_pp0_iter5_reg;
reg   [63:0] mul8_5_reg_2673;
reg   [63:0] mul8_5_reg_2673_pp0_iter2_reg;
reg   [63:0] mul8_5_reg_2673_pp0_iter3_reg;
reg   [63:0] mul8_5_reg_2673_pp0_iter4_reg;
reg   [63:0] mul8_5_reg_2673_pp0_iter5_reg;
reg   [63:0] mul8_5_reg_2673_pp0_iter6_reg;
reg   [63:0] mul8_1_4_reg_2678;
reg   [63:0] mul8_1_4_reg_2678_pp0_iter2_reg;
reg   [63:0] mul8_1_4_reg_2678_pp0_iter3_reg;
reg   [63:0] mul8_1_4_reg_2678_pp0_iter4_reg;
reg   [63:0] mul8_1_4_reg_2678_pp0_iter5_reg;
reg   [63:0] mul8_1_5_reg_2683;
reg   [63:0] mul8_1_5_reg_2683_pp0_iter2_reg;
reg   [63:0] mul8_1_5_reg_2683_pp0_iter3_reg;
reg   [63:0] mul8_1_5_reg_2683_pp0_iter4_reg;
reg   [63:0] mul8_1_5_reg_2683_pp0_iter5_reg;
reg   [63:0] mul8_1_5_reg_2683_pp0_iter6_reg;
reg   [63:0] mul8_2_4_reg_2688;
reg   [63:0] mul8_2_4_reg_2688_pp0_iter2_reg;
reg   [63:0] mul8_2_4_reg_2688_pp0_iter3_reg;
reg   [63:0] mul8_2_4_reg_2688_pp0_iter4_reg;
reg   [63:0] mul8_2_4_reg_2688_pp0_iter5_reg;
reg   [63:0] mul8_2_5_reg_2693;
reg   [63:0] mul8_2_5_reg_2693_pp0_iter2_reg;
reg   [63:0] mul8_2_5_reg_2693_pp0_iter3_reg;
reg   [63:0] mul8_2_5_reg_2693_pp0_iter4_reg;
reg   [63:0] mul8_2_5_reg_2693_pp0_iter5_reg;
reg   [63:0] mul8_2_5_reg_2693_pp0_iter6_reg;
reg   [63:0] mul8_3_4_reg_2698;
reg   [63:0] mul8_3_4_reg_2698_pp0_iter2_reg;
reg   [63:0] mul8_3_4_reg_2698_pp0_iter3_reg;
reg   [63:0] mul8_3_4_reg_2698_pp0_iter4_reg;
reg   [63:0] mul8_3_4_reg_2698_pp0_iter5_reg;
reg   [63:0] mul8_3_5_reg_2703;
reg   [63:0] mul8_3_5_reg_2703_pp0_iter2_reg;
reg   [63:0] mul8_3_5_reg_2703_pp0_iter3_reg;
reg   [63:0] mul8_3_5_reg_2703_pp0_iter4_reg;
reg   [63:0] mul8_3_5_reg_2703_pp0_iter5_reg;
reg   [63:0] mul8_3_5_reg_2703_pp0_iter6_reg;
reg   [63:0] mul8_6_reg_2708;
reg   [63:0] mul8_6_reg_2708_pp0_iter2_reg;
reg   [63:0] mul8_6_reg_2708_pp0_iter3_reg;
reg   [63:0] mul8_6_reg_2708_pp0_iter4_reg;
reg   [63:0] mul8_6_reg_2708_pp0_iter5_reg;
reg   [63:0] mul8_6_reg_2708_pp0_iter6_reg;
reg   [63:0] mul8_6_reg_2708_pp0_iter7_reg;
reg   [63:0] mul8_7_reg_2713;
reg   [63:0] mul8_7_reg_2713_pp0_iter2_reg;
reg   [63:0] mul8_7_reg_2713_pp0_iter3_reg;
reg   [63:0] mul8_7_reg_2713_pp0_iter4_reg;
reg   [63:0] mul8_7_reg_2713_pp0_iter5_reg;
reg   [63:0] mul8_7_reg_2713_pp0_iter6_reg;
reg   [63:0] mul8_7_reg_2713_pp0_iter7_reg;
reg   [63:0] mul8_7_reg_2713_pp0_iter8_reg;
reg   [63:0] mul8_1_6_reg_2718;
reg   [63:0] mul8_1_6_reg_2718_pp0_iter2_reg;
reg   [63:0] mul8_1_6_reg_2718_pp0_iter3_reg;
reg   [63:0] mul8_1_6_reg_2718_pp0_iter4_reg;
reg   [63:0] mul8_1_6_reg_2718_pp0_iter5_reg;
reg   [63:0] mul8_1_6_reg_2718_pp0_iter6_reg;
reg   [63:0] mul8_1_6_reg_2718_pp0_iter7_reg;
reg   [63:0] mul8_1_7_reg_2723;
reg   [63:0] mul8_1_7_reg_2723_pp0_iter2_reg;
reg   [63:0] mul8_1_7_reg_2723_pp0_iter3_reg;
reg   [63:0] mul8_1_7_reg_2723_pp0_iter4_reg;
reg   [63:0] mul8_1_7_reg_2723_pp0_iter5_reg;
reg   [63:0] mul8_1_7_reg_2723_pp0_iter6_reg;
reg   [63:0] mul8_1_7_reg_2723_pp0_iter7_reg;
reg   [63:0] mul8_1_7_reg_2723_pp0_iter8_reg;
reg   [63:0] mul8_2_6_reg_2728;
reg   [63:0] mul8_2_6_reg_2728_pp0_iter2_reg;
reg   [63:0] mul8_2_6_reg_2728_pp0_iter3_reg;
reg   [63:0] mul8_2_6_reg_2728_pp0_iter4_reg;
reg   [63:0] mul8_2_6_reg_2728_pp0_iter5_reg;
reg   [63:0] mul8_2_6_reg_2728_pp0_iter6_reg;
reg   [63:0] mul8_2_6_reg_2728_pp0_iter7_reg;
reg   [63:0] mul8_2_7_reg_2733;
reg   [63:0] mul8_2_7_reg_2733_pp0_iter2_reg;
reg   [63:0] mul8_2_7_reg_2733_pp0_iter3_reg;
reg   [63:0] mul8_2_7_reg_2733_pp0_iter4_reg;
reg   [63:0] mul8_2_7_reg_2733_pp0_iter5_reg;
reg   [63:0] mul8_2_7_reg_2733_pp0_iter6_reg;
reg   [63:0] mul8_2_7_reg_2733_pp0_iter7_reg;
reg   [63:0] mul8_2_7_reg_2733_pp0_iter8_reg;
reg   [63:0] mul8_3_6_reg_2738;
reg   [63:0] mul8_3_6_reg_2738_pp0_iter2_reg;
reg   [63:0] mul8_3_6_reg_2738_pp0_iter3_reg;
reg   [63:0] mul8_3_6_reg_2738_pp0_iter4_reg;
reg   [63:0] mul8_3_6_reg_2738_pp0_iter5_reg;
reg   [63:0] mul8_3_6_reg_2738_pp0_iter6_reg;
reg   [63:0] mul8_3_6_reg_2738_pp0_iter7_reg;
reg   [63:0] mul8_3_7_reg_2743;
reg   [63:0] mul8_3_7_reg_2743_pp0_iter2_reg;
reg   [63:0] mul8_3_7_reg_2743_pp0_iter3_reg;
reg   [63:0] mul8_3_7_reg_2743_pp0_iter4_reg;
reg   [63:0] mul8_3_7_reg_2743_pp0_iter5_reg;
reg   [63:0] mul8_3_7_reg_2743_pp0_iter6_reg;
reg   [63:0] mul8_3_7_reg_2743_pp0_iter7_reg;
reg   [63:0] mul8_3_7_reg_2743_pp0_iter8_reg;
reg   [63:0] mul8_8_reg_2748;
reg   [63:0] mul8_8_reg_2748_pp0_iter2_reg;
reg   [63:0] mul8_8_reg_2748_pp0_iter3_reg;
reg   [63:0] mul8_8_reg_2748_pp0_iter4_reg;
reg   [63:0] mul8_8_reg_2748_pp0_iter5_reg;
reg   [63:0] mul8_8_reg_2748_pp0_iter6_reg;
reg   [63:0] mul8_8_reg_2748_pp0_iter7_reg;
reg   [63:0] mul8_8_reg_2748_pp0_iter8_reg;
reg   [63:0] mul8_8_reg_2748_pp0_iter9_reg;
reg   [63:0] mul8_9_reg_2753;
reg   [63:0] mul8_9_reg_2753_pp0_iter2_reg;
reg   [63:0] mul8_9_reg_2753_pp0_iter3_reg;
reg   [63:0] mul8_9_reg_2753_pp0_iter4_reg;
reg   [63:0] mul8_9_reg_2753_pp0_iter5_reg;
reg   [63:0] mul8_9_reg_2753_pp0_iter6_reg;
reg   [63:0] mul8_9_reg_2753_pp0_iter7_reg;
reg   [63:0] mul8_9_reg_2753_pp0_iter8_reg;
reg   [63:0] mul8_9_reg_2753_pp0_iter9_reg;
reg   [63:0] mul8_9_reg_2753_pp0_iter10_reg;
reg   [63:0] mul8_1_8_reg_2758;
reg   [63:0] mul8_1_8_reg_2758_pp0_iter2_reg;
reg   [63:0] mul8_1_8_reg_2758_pp0_iter3_reg;
reg   [63:0] mul8_1_8_reg_2758_pp0_iter4_reg;
reg   [63:0] mul8_1_8_reg_2758_pp0_iter5_reg;
reg   [63:0] mul8_1_8_reg_2758_pp0_iter6_reg;
reg   [63:0] mul8_1_8_reg_2758_pp0_iter7_reg;
reg   [63:0] mul8_1_8_reg_2758_pp0_iter8_reg;
reg   [63:0] mul8_1_8_reg_2758_pp0_iter9_reg;
reg   [63:0] mul8_1_9_reg_2763;
reg   [63:0] mul8_1_9_reg_2763_pp0_iter2_reg;
reg   [63:0] mul8_1_9_reg_2763_pp0_iter3_reg;
reg   [63:0] mul8_1_9_reg_2763_pp0_iter4_reg;
reg   [63:0] mul8_1_9_reg_2763_pp0_iter5_reg;
reg   [63:0] mul8_1_9_reg_2763_pp0_iter6_reg;
reg   [63:0] mul8_1_9_reg_2763_pp0_iter7_reg;
reg   [63:0] mul8_1_9_reg_2763_pp0_iter8_reg;
reg   [63:0] mul8_1_9_reg_2763_pp0_iter9_reg;
reg   [63:0] mul8_1_9_reg_2763_pp0_iter10_reg;
reg   [63:0] mul8_2_8_reg_2768;
reg   [63:0] mul8_2_8_reg_2768_pp0_iter2_reg;
reg   [63:0] mul8_2_8_reg_2768_pp0_iter3_reg;
reg   [63:0] mul8_2_8_reg_2768_pp0_iter4_reg;
reg   [63:0] mul8_2_8_reg_2768_pp0_iter5_reg;
reg   [63:0] mul8_2_8_reg_2768_pp0_iter6_reg;
reg   [63:0] mul8_2_8_reg_2768_pp0_iter7_reg;
reg   [63:0] mul8_2_8_reg_2768_pp0_iter8_reg;
reg   [63:0] mul8_2_8_reg_2768_pp0_iter9_reg;
reg   [63:0] mul8_2_9_reg_2773;
reg   [63:0] mul8_2_9_reg_2773_pp0_iter2_reg;
reg   [63:0] mul8_2_9_reg_2773_pp0_iter3_reg;
reg   [63:0] mul8_2_9_reg_2773_pp0_iter4_reg;
reg   [63:0] mul8_2_9_reg_2773_pp0_iter5_reg;
reg   [63:0] mul8_2_9_reg_2773_pp0_iter6_reg;
reg   [63:0] mul8_2_9_reg_2773_pp0_iter7_reg;
reg   [63:0] mul8_2_9_reg_2773_pp0_iter8_reg;
reg   [63:0] mul8_2_9_reg_2773_pp0_iter9_reg;
reg   [63:0] mul8_2_9_reg_2773_pp0_iter10_reg;
reg   [63:0] mul8_3_8_reg_2778;
reg   [63:0] mul8_3_8_reg_2778_pp0_iter2_reg;
reg   [63:0] mul8_3_8_reg_2778_pp0_iter3_reg;
reg   [63:0] mul8_3_8_reg_2778_pp0_iter4_reg;
reg   [63:0] mul8_3_8_reg_2778_pp0_iter5_reg;
reg   [63:0] mul8_3_8_reg_2778_pp0_iter6_reg;
reg   [63:0] mul8_3_8_reg_2778_pp0_iter7_reg;
reg   [63:0] mul8_3_8_reg_2778_pp0_iter8_reg;
reg   [63:0] mul8_3_8_reg_2778_pp0_iter9_reg;
reg   [63:0] mul8_3_9_reg_2783;
reg   [63:0] mul8_3_9_reg_2783_pp0_iter2_reg;
reg   [63:0] mul8_3_9_reg_2783_pp0_iter3_reg;
reg   [63:0] mul8_3_9_reg_2783_pp0_iter4_reg;
reg   [63:0] mul8_3_9_reg_2783_pp0_iter5_reg;
reg   [63:0] mul8_3_9_reg_2783_pp0_iter6_reg;
reg   [63:0] mul8_3_9_reg_2783_pp0_iter7_reg;
reg   [63:0] mul8_3_9_reg_2783_pp0_iter8_reg;
reg   [63:0] mul8_3_9_reg_2783_pp0_iter9_reg;
reg   [63:0] mul8_3_9_reg_2783_pp0_iter10_reg;
reg   [63:0] mul8_10_reg_2788;
reg   [63:0] mul8_10_reg_2788_pp0_iter3_reg;
reg   [63:0] mul8_10_reg_2788_pp0_iter4_reg;
reg   [63:0] mul8_10_reg_2788_pp0_iter5_reg;
reg   [63:0] mul8_10_reg_2788_pp0_iter6_reg;
reg   [63:0] mul8_10_reg_2788_pp0_iter7_reg;
reg   [63:0] mul8_10_reg_2788_pp0_iter8_reg;
reg   [63:0] mul8_10_reg_2788_pp0_iter9_reg;
reg   [63:0] mul8_10_reg_2788_pp0_iter10_reg;
reg   [63:0] mul8_10_reg_2788_pp0_iter11_reg;
reg   [63:0] mul8_10_reg_2788_pp0_iter12_reg;
reg   [63:0] mul8_11_reg_2793;
reg   [63:0] mul8_11_reg_2793_pp0_iter3_reg;
reg   [63:0] mul8_11_reg_2793_pp0_iter4_reg;
reg   [63:0] mul8_11_reg_2793_pp0_iter5_reg;
reg   [63:0] mul8_11_reg_2793_pp0_iter6_reg;
reg   [63:0] mul8_11_reg_2793_pp0_iter7_reg;
reg   [63:0] mul8_11_reg_2793_pp0_iter8_reg;
reg   [63:0] mul8_11_reg_2793_pp0_iter9_reg;
reg   [63:0] mul8_11_reg_2793_pp0_iter10_reg;
reg   [63:0] mul8_11_reg_2793_pp0_iter11_reg;
reg   [63:0] mul8_11_reg_2793_pp0_iter12_reg;
reg   [63:0] mul8_11_reg_2793_pp0_iter13_reg;
reg   [63:0] mul8_1_s_reg_2798;
reg   [63:0] mul8_1_s_reg_2798_pp0_iter3_reg;
reg   [63:0] mul8_1_s_reg_2798_pp0_iter4_reg;
reg   [63:0] mul8_1_s_reg_2798_pp0_iter5_reg;
reg   [63:0] mul8_1_s_reg_2798_pp0_iter6_reg;
reg   [63:0] mul8_1_s_reg_2798_pp0_iter7_reg;
reg   [63:0] mul8_1_s_reg_2798_pp0_iter8_reg;
reg   [63:0] mul8_1_s_reg_2798_pp0_iter9_reg;
reg   [63:0] mul8_1_s_reg_2798_pp0_iter10_reg;
reg   [63:0] mul8_1_s_reg_2798_pp0_iter11_reg;
reg   [63:0] mul8_1_s_reg_2798_pp0_iter12_reg;
reg   [63:0] mul8_1_10_reg_2803;
reg   [63:0] mul8_1_10_reg_2803_pp0_iter3_reg;
reg   [63:0] mul8_1_10_reg_2803_pp0_iter4_reg;
reg   [63:0] mul8_1_10_reg_2803_pp0_iter5_reg;
reg   [63:0] mul8_1_10_reg_2803_pp0_iter6_reg;
reg   [63:0] mul8_1_10_reg_2803_pp0_iter7_reg;
reg   [63:0] mul8_1_10_reg_2803_pp0_iter8_reg;
reg   [63:0] mul8_1_10_reg_2803_pp0_iter9_reg;
reg   [63:0] mul8_1_10_reg_2803_pp0_iter10_reg;
reg   [63:0] mul8_1_10_reg_2803_pp0_iter11_reg;
reg   [63:0] mul8_1_10_reg_2803_pp0_iter12_reg;
reg   [63:0] mul8_1_10_reg_2803_pp0_iter13_reg;
reg   [63:0] mul8_2_s_reg_2808;
reg   [63:0] mul8_2_s_reg_2808_pp0_iter3_reg;
reg   [63:0] mul8_2_s_reg_2808_pp0_iter4_reg;
reg   [63:0] mul8_2_s_reg_2808_pp0_iter5_reg;
reg   [63:0] mul8_2_s_reg_2808_pp0_iter6_reg;
reg   [63:0] mul8_2_s_reg_2808_pp0_iter7_reg;
reg   [63:0] mul8_2_s_reg_2808_pp0_iter8_reg;
reg   [63:0] mul8_2_s_reg_2808_pp0_iter9_reg;
reg   [63:0] mul8_2_s_reg_2808_pp0_iter10_reg;
reg   [63:0] mul8_2_s_reg_2808_pp0_iter11_reg;
reg   [63:0] mul8_2_s_reg_2808_pp0_iter12_reg;
reg   [63:0] mul8_2_10_reg_2813;
reg   [63:0] mul8_2_10_reg_2813_pp0_iter3_reg;
reg   [63:0] mul8_2_10_reg_2813_pp0_iter4_reg;
reg   [63:0] mul8_2_10_reg_2813_pp0_iter5_reg;
reg   [63:0] mul8_2_10_reg_2813_pp0_iter6_reg;
reg   [63:0] mul8_2_10_reg_2813_pp0_iter7_reg;
reg   [63:0] mul8_2_10_reg_2813_pp0_iter8_reg;
reg   [63:0] mul8_2_10_reg_2813_pp0_iter9_reg;
reg   [63:0] mul8_2_10_reg_2813_pp0_iter10_reg;
reg   [63:0] mul8_2_10_reg_2813_pp0_iter11_reg;
reg   [63:0] mul8_2_10_reg_2813_pp0_iter12_reg;
reg   [63:0] mul8_2_10_reg_2813_pp0_iter13_reg;
reg   [63:0] mul8_3_s_reg_2818;
reg   [63:0] mul8_3_s_reg_2818_pp0_iter3_reg;
reg   [63:0] mul8_3_s_reg_2818_pp0_iter4_reg;
reg   [63:0] mul8_3_s_reg_2818_pp0_iter5_reg;
reg   [63:0] mul8_3_s_reg_2818_pp0_iter6_reg;
reg   [63:0] mul8_3_s_reg_2818_pp0_iter7_reg;
reg   [63:0] mul8_3_s_reg_2818_pp0_iter8_reg;
reg   [63:0] mul8_3_s_reg_2818_pp0_iter9_reg;
reg   [63:0] mul8_3_s_reg_2818_pp0_iter10_reg;
reg   [63:0] mul8_3_s_reg_2818_pp0_iter11_reg;
reg   [63:0] mul8_3_s_reg_2818_pp0_iter12_reg;
reg   [63:0] mul8_3_10_reg_2823;
reg   [63:0] mul8_3_10_reg_2823_pp0_iter3_reg;
reg   [63:0] mul8_3_10_reg_2823_pp0_iter4_reg;
reg   [63:0] mul8_3_10_reg_2823_pp0_iter5_reg;
reg   [63:0] mul8_3_10_reg_2823_pp0_iter6_reg;
reg   [63:0] mul8_3_10_reg_2823_pp0_iter7_reg;
reg   [63:0] mul8_3_10_reg_2823_pp0_iter8_reg;
reg   [63:0] mul8_3_10_reg_2823_pp0_iter9_reg;
reg   [63:0] mul8_3_10_reg_2823_pp0_iter10_reg;
reg   [63:0] mul8_3_10_reg_2823_pp0_iter11_reg;
reg   [63:0] mul8_3_10_reg_2823_pp0_iter12_reg;
reg   [63:0] mul8_3_10_reg_2823_pp0_iter13_reg;
reg   [63:0] mul8_12_reg_2828;
reg   [63:0] mul8_12_reg_2828_pp0_iter3_reg;
reg   [63:0] mul8_12_reg_2828_pp0_iter4_reg;
reg   [63:0] mul8_12_reg_2828_pp0_iter5_reg;
reg   [63:0] mul8_12_reg_2828_pp0_iter6_reg;
reg   [63:0] mul8_12_reg_2828_pp0_iter7_reg;
reg   [63:0] mul8_12_reg_2828_pp0_iter8_reg;
reg   [63:0] mul8_12_reg_2828_pp0_iter9_reg;
reg   [63:0] mul8_12_reg_2828_pp0_iter10_reg;
reg   [63:0] mul8_12_reg_2828_pp0_iter11_reg;
reg   [63:0] mul8_12_reg_2828_pp0_iter12_reg;
reg   [63:0] mul8_12_reg_2828_pp0_iter13_reg;
reg   [63:0] mul8_12_reg_2828_pp0_iter14_reg;
reg   [63:0] mul8_1_11_reg_2833;
reg   [63:0] mul8_1_11_reg_2833_pp0_iter3_reg;
reg   [63:0] mul8_1_11_reg_2833_pp0_iter4_reg;
reg   [63:0] mul8_1_11_reg_2833_pp0_iter5_reg;
reg   [63:0] mul8_1_11_reg_2833_pp0_iter6_reg;
reg   [63:0] mul8_1_11_reg_2833_pp0_iter7_reg;
reg   [63:0] mul8_1_11_reg_2833_pp0_iter8_reg;
reg   [63:0] mul8_1_11_reg_2833_pp0_iter9_reg;
reg   [63:0] mul8_1_11_reg_2833_pp0_iter10_reg;
reg   [63:0] mul8_1_11_reg_2833_pp0_iter11_reg;
reg   [63:0] mul8_1_11_reg_2833_pp0_iter12_reg;
reg   [63:0] mul8_1_11_reg_2833_pp0_iter13_reg;
reg   [63:0] mul8_1_11_reg_2833_pp0_iter14_reg;
reg   [63:0] mul8_2_11_reg_2838;
reg   [63:0] mul8_2_11_reg_2838_pp0_iter3_reg;
reg   [63:0] mul8_2_11_reg_2838_pp0_iter4_reg;
reg   [63:0] mul8_2_11_reg_2838_pp0_iter5_reg;
reg   [63:0] mul8_2_11_reg_2838_pp0_iter6_reg;
reg   [63:0] mul8_2_11_reg_2838_pp0_iter7_reg;
reg   [63:0] mul8_2_11_reg_2838_pp0_iter8_reg;
reg   [63:0] mul8_2_11_reg_2838_pp0_iter9_reg;
reg   [63:0] mul8_2_11_reg_2838_pp0_iter10_reg;
reg   [63:0] mul8_2_11_reg_2838_pp0_iter11_reg;
reg   [63:0] mul8_2_11_reg_2838_pp0_iter12_reg;
reg   [63:0] mul8_2_11_reg_2838_pp0_iter13_reg;
reg   [63:0] mul8_2_11_reg_2838_pp0_iter14_reg;
reg   [63:0] mul8_3_11_reg_2843;
reg   [63:0] mul8_3_11_reg_2843_pp0_iter3_reg;
reg   [63:0] mul8_3_11_reg_2843_pp0_iter4_reg;
reg   [63:0] mul8_3_11_reg_2843_pp0_iter5_reg;
reg   [63:0] mul8_3_11_reg_2843_pp0_iter6_reg;
reg   [63:0] mul8_3_11_reg_2843_pp0_iter7_reg;
reg   [63:0] mul8_3_11_reg_2843_pp0_iter8_reg;
reg   [63:0] mul8_3_11_reg_2843_pp0_iter9_reg;
reg   [63:0] mul8_3_11_reg_2843_pp0_iter10_reg;
reg   [63:0] mul8_3_11_reg_2843_pp0_iter11_reg;
reg   [63:0] mul8_3_11_reg_2843_pp0_iter12_reg;
reg   [63:0] mul8_3_11_reg_2843_pp0_iter13_reg;
reg   [63:0] mul8_3_11_reg_2843_pp0_iter14_reg;
reg   [63:0] add_reg_2848;
reg   [63:0] add11_1_reg_2853;
reg   [63:0] add11_2_reg_2858;
reg   [63:0] add11_3_reg_2863;
reg   [63:0] add11_s_reg_2868;
reg   [63:0] add11_1_1_reg_2873;
reg   [63:0] add11_2_1_reg_2878;
reg   [63:0] add11_3_1_reg_2883;
reg   [63:0] add11_13_reg_2888;
reg   [63:0] add11_1_2_reg_2893;
reg   [63:0] add11_2_2_reg_2898;
reg   [63:0] add11_3_2_reg_2903;
reg   [63:0] add11_14_reg_2908;
reg   [63:0] add11_1_3_reg_2913;
reg   [63:0] add11_2_3_reg_2918;
reg   [63:0] add11_3_3_reg_2923;
reg   [63:0] add11_4_reg_2928;
reg   [63:0] add11_1_4_reg_2933;
reg   [63:0] add11_2_4_reg_2938;
reg   [63:0] add11_3_4_reg_2943;
reg   [63:0] add11_5_reg_2948;
reg   [63:0] add11_1_5_reg_2953;
reg   [63:0] add11_2_5_reg_2958;
reg   [63:0] add11_3_5_reg_2963;
reg   [63:0] add11_6_reg_2968;
reg   [63:0] add11_1_6_reg_2973;
reg   [63:0] add11_2_6_reg_2978;
reg   [63:0] add11_3_6_reg_2983;
reg   [63:0] add11_7_reg_2988;
reg   [63:0] add11_1_7_reg_2993;
wire   [63:0] grp_fu_768_p2;
reg   [63:0] add11_2_7_reg_2998;
wire   [63:0] grp_fu_772_p2;
reg   [63:0] add11_3_7_reg_3003;
reg   [63:0] add11_8_reg_3008;
reg   [63:0] add11_1_8_reg_3013;
reg   [63:0] add11_2_8_reg_3018;
reg   [63:0] add11_3_8_reg_3023;
reg   [63:0] add11_9_reg_3028;
reg   [63:0] add11_1_9_reg_3033;
reg   [63:0] add11_2_9_reg_3038;
reg   [63:0] add11_3_9_reg_3043;
reg   [63:0] add11_10_reg_3048;
reg   [63:0] add11_1_s_reg_3053;
reg   [63:0] add11_2_s_reg_3058;
reg   [63:0] add11_3_s_reg_3063;
reg   [63:0] add11_11_reg_3068;
reg   [63:0] add11_1_10_reg_3073;
reg   [63:0] add11_2_10_reg_3078;
reg   [63:0] add11_3_10_reg_3083;
reg   [63:0] add11_12_reg_3088;
reg   [63:0] add11_1_11_reg_3093;
reg   [63:0] add11_2_11_reg_3098;
reg   [63:0] add11_3_11_reg_3103;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln36_15_fu_947_p1;
wire   [63:0] zext_ln36_27_fu_968_p1;
wire   [63:0] zext_ln36_28_fu_988_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln36_5_fu_1008_p1;
wire   [63:0] zext_ln36_16_fu_1028_p1;
wire   [63:0] zext_ln36_17_fu_1048_p1;
wire   [63:0] zext_ln36_29_fu_1068_p1;
wire   [63:0] zext_ln36_30_fu_1088_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln36_6_fu_1129_p1;
wire   [63:0] zext_ln36_7_fu_1149_p1;
wire   [63:0] zext_ln36_18_fu_1169_p1;
wire   [63:0] zext_ln36_19_fu_1189_p1;
wire   [63:0] zext_ln36_31_fu_1209_p1;
wire   [63:0] zext_ln36_32_fu_1229_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln36_8_fu_1269_p1;
wire   [63:0] zext_ln36_9_fu_1289_p1;
wire   [63:0] zext_ln36_20_fu_1319_p1;
wire   [63:0] zext_ln36_21_fu_1339_p1;
wire   [63:0] zext_ln36_33_fu_1369_p1;
wire   [63:0] zext_ln36_34_fu_1389_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln36_10_fu_1430_p1;
wire   [63:0] zext_ln36_11_fu_1450_p1;
wire   [63:0] zext_ln36_22_fu_1475_p1;
wire   [63:0] zext_ln36_23_fu_1495_p1;
wire   [63:0] zext_ln36_35_fu_1515_p1;
wire   [63:0] zext_ln36_36_fu_1535_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln36_12_fu_1580_p1;
wire   [63:0] zext_ln36_13_fu_1600_p1;
wire   [63:0] zext_ln36_24_fu_1630_p1;
wire   [63:0] zext_ln36_25_fu_1650_p1;
wire   [63:0] zext_ln36_37_fu_1680_p1;
wire   [63:0] zext_ln36_38_fu_1700_p1;
wire   [63:0] zext_ln36_3_fu_1725_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln36_14_fu_1739_p1;
wire   [63:0] zext_ln36_26_fu_1758_p1;
wire   [63:0] zext_ln36_39_fu_1778_p1;
wire   [63:0] zext_ln32_fu_1843_p1;
reg   [6:0] j_fu_154;
wire   [6:0] add_ln33_fu_1705_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1;
reg    weights1_0_ce1_local;
reg   [7:0] weights1_0_address1_local;
reg    weights1_0_ce0_local;
reg   [7:0] weights1_0_address0_local;
reg    weights1_1_ce1_local;
reg   [7:0] weights1_1_address1_local;
reg    weights1_1_ce0_local;
reg   [7:0] weights1_1_address0_local;
reg    weights1_2_ce1_local;
reg   [7:0] weights1_2_address1_local;
reg    weights1_2_ce0_local;
reg   [7:0] weights1_2_address0_local;
reg    weights1_3_ce1_local;
reg   [7:0] weights1_3_address1_local;
reg    weights1_3_ce0_local;
reg   [7:0] weights1_3_address0_local;
reg    activations_0_we0_local;
reg    activations_0_ce0_local;
reg    activations_1_we0_local;
reg    activations_1_ce0_local;
reg    activations_2_we0_local;
reg    activations_2_ce0_local;
reg    activations_3_we0_local;
reg    activations_3_ce0_local;
reg   [63:0] grp_fu_740_p0;
reg   [63:0] grp_fu_740_p1;
reg   [63:0] grp_fu_745_p0;
reg   [63:0] grp_fu_745_p1;
reg   [63:0] grp_fu_750_p0;
reg   [63:0] grp_fu_750_p1;
reg   [63:0] grp_fu_755_p0;
reg   [63:0] grp_fu_755_p1;
reg   [63:0] grp_fu_760_p0;
reg   [63:0] grp_fu_760_p1;
reg   [63:0] grp_fu_764_p0;
reg   [63:0] grp_fu_764_p1;
reg   [63:0] grp_fu_768_p0;
reg   [63:0] grp_fu_768_p1;
reg   [63:0] grp_fu_772_p0;
reg   [63:0] grp_fu_772_p1;
reg   [63:0] grp_fu_776_p0;
reg   [63:0] grp_fu_776_p1;
reg   [63:0] grp_fu_780_p0;
reg   [63:0] grp_fu_780_p1;
reg   [63:0] grp_fu_784_p0;
reg   [63:0] grp_fu_784_p1;
reg   [63:0] grp_fu_788_p0;
reg   [63:0] grp_fu_788_p1;
reg   [63:0] grp_fu_792_p0;
reg   [63:0] grp_fu_792_p1;
reg   [63:0] grp_fu_796_p0;
reg   [63:0] grp_fu_796_p1;
reg   [63:0] grp_fu_800_p0;
reg   [63:0] grp_fu_800_p1;
reg   [63:0] grp_fu_804_p0;
reg   [63:0] grp_fu_804_p1;
wire   [4:0] tmp_2_fu_864_p4;
wire   [5:0] or_ln_fu_874_p3;
wire   [5:0] empty_fu_886_p0;
wire   [4:0] empty_fu_886_p1;
wire   [3:0] mul_ln36_fu_915_p0;
wire   [4:0] mul_ln36_fu_915_p1;
wire   [9:0] empty_37_fu_932_p2;
wire   [9:0] empty_38_fu_953_p2;
wire   [9:0] add_ln36_24_fu_973_p2;
wire   [7:0] lshr_ln36_17_fu_978_p4;
wire   [9:0] add_ln36_3_fu_993_p2;
wire   [7:0] lshr_ln36_1_fu_998_p4;
wire   [9:0] add_ln36_13_fu_1013_p2;
wire   [7:0] lshr_ln36_9_fu_1018_p4;
wire   [9:0] add_ln36_14_fu_1033_p2;
wire   [7:0] lshr_ln36_s_fu_1038_p4;
wire   [9:0] add_ln36_25_fu_1053_p2;
wire   [7:0] lshr_ln36_18_fu_1058_p4;
wire   [9:0] add_ln36_26_fu_1073_p2;
wire   [7:0] lshr_ln36_19_fu_1078_p4;
wire   [7:0] add_ln36_fu_1103_p2;
wire   [7:0] add_ln36_4_fu_1124_p2;
wire   [9:0] add_ln36_5_fu_1134_p2;
wire   [7:0] lshr_ln36_2_fu_1139_p4;
wire   [7:0] add_ln36_15_fu_1164_p2;
wire   [9:0] add_ln36_16_fu_1174_p2;
wire   [7:0] lshr_ln36_10_fu_1179_p4;
wire   [7:0] add_ln36_27_fu_1204_p2;
wire   [9:0] add_ln36_28_fu_1214_p2;
wire   [7:0] lshr_ln36_20_fu_1219_p4;
wire   [9:0] add_ln36_6_fu_1254_p2;
wire   [7:0] lshr_ln36_3_fu_1259_p4;
wire   [9:0] add_ln36_7_fu_1274_p2;
wire   [7:0] lshr_ln36_4_fu_1279_p4;
wire   [9:0] add_ln36_17_fu_1304_p2;
wire   [7:0] lshr_ln36_11_fu_1309_p4;
wire   [9:0] add_ln36_18_fu_1324_p2;
wire   [7:0] lshr_ln36_12_fu_1329_p4;
wire   [9:0] add_ln36_29_fu_1354_p2;
wire   [7:0] lshr_ln36_21_fu_1359_p4;
wire   [9:0] add_ln36_30_fu_1374_p2;
wire   [7:0] lshr_ln36_22_fu_1379_p4;
wire   [7:0] add_ln36_1_fu_1404_p2;
wire   [7:0] add_ln36_8_fu_1425_p2;
wire   [9:0] add_ln36_9_fu_1435_p2;
wire   [7:0] lshr_ln36_5_fu_1440_p4;
wire   [7:0] add_ln36_19_fu_1470_p2;
wire   [9:0] add_ln36_20_fu_1480_p2;
wire   [7:0] lshr_ln36_13_fu_1485_p4;
wire   [7:0] add_ln36_31_fu_1510_p2;
wire   [9:0] add_ln36_32_fu_1520_p2;
wire   [7:0] lshr_ln36_23_fu_1525_p4;
wire   [9:0] add_ln36_10_fu_1565_p2;
wire   [7:0] lshr_ln36_6_fu_1570_p4;
wire   [9:0] add_ln36_11_fu_1585_p2;
wire   [7:0] lshr_ln36_7_fu_1590_p4;
wire   [9:0] add_ln36_21_fu_1615_p2;
wire   [7:0] lshr_ln36_14_fu_1620_p4;
wire   [9:0] add_ln36_22_fu_1635_p2;
wire   [7:0] lshr_ln36_15_fu_1640_p4;
wire   [9:0] add_ln36_33_fu_1665_p2;
wire   [7:0] lshr_ln36_24_fu_1670_p4;
wire   [9:0] add_ln36_34_fu_1685_p2;
wire   [7:0] lshr_ln36_25_fu_1690_p4;
wire   [7:0] add_ln36_23_fu_1753_p2;
wire   [7:0] add_ln36_35_fu_1773_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter15_stage2;
reg    ap_idle_pp0_0to14;
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
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to16;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [9:0] empty_fu_886_p00;
wire   [7:0] mul_ln36_fu_915_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_154 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_768_p0),.din1(grp_fu_768_p1),.ce(1'b1),.dout(grp_fu_768_p2));
backprop_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_772_p0),.din1(grp_fu_772_p1),.ce(1'b1),.dout(grp_fu_772_p2));
backprop_mul_6ns_5ns_10_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 5 ),.dout_WIDTH( 10 ))
mul_6ns_5ns_10_1_1_U17(.din0(empty_fu_886_p0),.din1(empty_fu_886_p1),.dout(empty_fu_886_p2));
backprop_mul_4ns_5ns_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 5 ),.dout_WIDTH( 8 ))
mul_4ns_5ns_8_1_1_U18(.din0(mul_ln36_fu_915_p0),.din1(mul_ln36_fu_915_p1),.dout(mul_ln36_fu_915_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter16 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_fu_154 <= 7'd0;
    end else if (((tmp_1_reg_1967 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        j_fu_154 <= add_ln33_fu_1705_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_808 <= weights1_0_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_808 <= weights1_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_813 <= weights1_1_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_813 <= weights1_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_818 <= weights1_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_818 <= weights1_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_823 <= weights1_2_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_823 <= weights1_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_828 <= weights1_2_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_828 <= weights1_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_833 <= weights1_3_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_833 <= weights1_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_838 <= weights1_3_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_838 <= weights1_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_843 <= weights1_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_843 <= weights1_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add11_10_reg_3048 <= grp_fu_1786_p_dout0;
        add11_1_s_reg_3053 <= grp_fu_1790_p_dout0;
        add11_2_s_reg_3058 <= grp_fu_768_p2;
        add11_3_s_reg_3063 <= grp_fu_772_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_11_reg_3068 <= grp_fu_1786_p_dout0;
        add11_1_10_reg_3073 <= grp_fu_1790_p_dout0;
        add11_2_10_reg_3078 <= grp_fu_768_p2;
        add11_3_10_reg_3083 <= grp_fu_772_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_12_reg_3088 <= grp_fu_1786_p_dout0;
        add11_1_11_reg_3093 <= grp_fu_1790_p_dout0;
        add11_2_11_reg_3098 <= grp_fu_768_p2;
        add11_3_11_reg_3103 <= grp_fu_772_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_13_reg_2888 <= grp_fu_1770_p_dout0;
        add11_1_2_reg_2893 <= grp_fu_1774_p_dout0;
        add11_2_2_reg_2898 <= grp_fu_1778_p_dout0;
        add11_3_2_reg_2903 <= grp_fu_1782_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add11_14_reg_2908 <= grp_fu_1770_p_dout0;
        add11_1_3_reg_2913 <= grp_fu_1774_p_dout0;
        add11_2_3_reg_2918 <= grp_fu_1778_p_dout0;
        add11_3_3_reg_2923 <= grp_fu_1782_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_1_1_reg_2873 <= grp_fu_1774_p_dout0;
        add11_2_1_reg_2878 <= grp_fu_1778_p_dout0;
        add11_3_1_reg_2883 <= grp_fu_1782_p_dout0;
        add11_s_reg_2868 <= grp_fu_1770_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add11_1_4_reg_2933 <= grp_fu_1774_p_dout0;
        add11_2_4_reg_2938 <= grp_fu_1778_p_dout0;
        add11_3_4_reg_2943 <= grp_fu_1782_p_dout0;
        add11_4_reg_2928 <= grp_fu_1770_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_1_5_reg_2953 <= grp_fu_1774_p_dout0;
        add11_2_5_reg_2958 <= grp_fu_1778_p_dout0;
        add11_3_5_reg_2963 <= grp_fu_1782_p_dout0;
        add11_5_reg_2948 <= grp_fu_1770_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_1_6_reg_2973 <= grp_fu_1774_p_dout0;
        add11_2_6_reg_2978 <= grp_fu_1778_p_dout0;
        add11_3_6_reg_2983 <= grp_fu_1782_p_dout0;
        add11_6_reg_2968 <= grp_fu_1770_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_1_7_reg_2993 <= grp_fu_1790_p_dout0;
        add11_2_7_reg_2998 <= grp_fu_768_p2;
        add11_3_7_reg_3003 <= grp_fu_772_p2;
        add11_7_reg_2988 <= grp_fu_1786_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add11_1_8_reg_3013 <= grp_fu_1790_p_dout0;
        add11_2_8_reg_3018 <= grp_fu_768_p2;
        add11_3_8_reg_3023 <= grp_fu_772_p2;
        add11_8_reg_3008 <= grp_fu_1786_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add11_1_9_reg_3033 <= grp_fu_1790_p_dout0;
        add11_2_9_reg_3038 <= grp_fu_768_p2;
        add11_3_9_reg_3043 <= grp_fu_772_p2;
        add11_9_reg_3028 <= grp_fu_1786_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_1_reg_2853 <= grp_fu_1774_p_dout0;
        add11_2_reg_2858 <= grp_fu_1778_p_dout0;
        add11_3_reg_2863 <= grp_fu_1782_p_dout0;
        add_reg_2848 <= grp_fu_1770_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln36_12_reg_2338 <= add_ln36_12_fu_1455_p2;
        mul8_1_6_reg_2718_pp0_iter2_reg <= mul8_1_6_reg_2718;
        mul8_1_6_reg_2718_pp0_iter3_reg <= mul8_1_6_reg_2718_pp0_iter2_reg;
        mul8_1_6_reg_2718_pp0_iter4_reg <= mul8_1_6_reg_2718_pp0_iter3_reg;
        mul8_1_6_reg_2718_pp0_iter5_reg <= mul8_1_6_reg_2718_pp0_iter4_reg;
        mul8_1_6_reg_2718_pp0_iter6_reg <= mul8_1_6_reg_2718_pp0_iter5_reg;
        mul8_1_6_reg_2718_pp0_iter7_reg <= mul8_1_6_reg_2718_pp0_iter6_reg;
        mul8_1_7_reg_2723_pp0_iter2_reg <= mul8_1_7_reg_2723;
        mul8_1_7_reg_2723_pp0_iter3_reg <= mul8_1_7_reg_2723_pp0_iter2_reg;
        mul8_1_7_reg_2723_pp0_iter4_reg <= mul8_1_7_reg_2723_pp0_iter3_reg;
        mul8_1_7_reg_2723_pp0_iter5_reg <= mul8_1_7_reg_2723_pp0_iter4_reg;
        mul8_1_7_reg_2723_pp0_iter6_reg <= mul8_1_7_reg_2723_pp0_iter5_reg;
        mul8_1_7_reg_2723_pp0_iter7_reg <= mul8_1_7_reg_2723_pp0_iter6_reg;
        mul8_1_7_reg_2723_pp0_iter8_reg <= mul8_1_7_reg_2723_pp0_iter7_reg;
        mul8_2_6_reg_2728_pp0_iter2_reg <= mul8_2_6_reg_2728;
        mul8_2_6_reg_2728_pp0_iter3_reg <= mul8_2_6_reg_2728_pp0_iter2_reg;
        mul8_2_6_reg_2728_pp0_iter4_reg <= mul8_2_6_reg_2728_pp0_iter3_reg;
        mul8_2_6_reg_2728_pp0_iter5_reg <= mul8_2_6_reg_2728_pp0_iter4_reg;
        mul8_2_6_reg_2728_pp0_iter6_reg <= mul8_2_6_reg_2728_pp0_iter5_reg;
        mul8_2_6_reg_2728_pp0_iter7_reg <= mul8_2_6_reg_2728_pp0_iter6_reg;
        mul8_2_7_reg_2733_pp0_iter2_reg <= mul8_2_7_reg_2733;
        mul8_2_7_reg_2733_pp0_iter3_reg <= mul8_2_7_reg_2733_pp0_iter2_reg;
        mul8_2_7_reg_2733_pp0_iter4_reg <= mul8_2_7_reg_2733_pp0_iter3_reg;
        mul8_2_7_reg_2733_pp0_iter5_reg <= mul8_2_7_reg_2733_pp0_iter4_reg;
        mul8_2_7_reg_2733_pp0_iter6_reg <= mul8_2_7_reg_2733_pp0_iter5_reg;
        mul8_2_7_reg_2733_pp0_iter7_reg <= mul8_2_7_reg_2733_pp0_iter6_reg;
        mul8_2_7_reg_2733_pp0_iter8_reg <= mul8_2_7_reg_2733_pp0_iter7_reg;
        mul8_3_6_reg_2738_pp0_iter2_reg <= mul8_3_6_reg_2738;
        mul8_3_6_reg_2738_pp0_iter3_reg <= mul8_3_6_reg_2738_pp0_iter2_reg;
        mul8_3_6_reg_2738_pp0_iter4_reg <= mul8_3_6_reg_2738_pp0_iter3_reg;
        mul8_3_6_reg_2738_pp0_iter5_reg <= mul8_3_6_reg_2738_pp0_iter4_reg;
        mul8_3_6_reg_2738_pp0_iter6_reg <= mul8_3_6_reg_2738_pp0_iter5_reg;
        mul8_3_6_reg_2738_pp0_iter7_reg <= mul8_3_6_reg_2738_pp0_iter6_reg;
        mul8_3_7_reg_2743_pp0_iter2_reg <= mul8_3_7_reg_2743;
        mul8_3_7_reg_2743_pp0_iter3_reg <= mul8_3_7_reg_2743_pp0_iter2_reg;
        mul8_3_7_reg_2743_pp0_iter4_reg <= mul8_3_7_reg_2743_pp0_iter3_reg;
        mul8_3_7_reg_2743_pp0_iter5_reg <= mul8_3_7_reg_2743_pp0_iter4_reg;
        mul8_3_7_reg_2743_pp0_iter6_reg <= mul8_3_7_reg_2743_pp0_iter5_reg;
        mul8_3_7_reg_2743_pp0_iter7_reg <= mul8_3_7_reg_2743_pp0_iter6_reg;
        mul8_3_7_reg_2743_pp0_iter8_reg <= mul8_3_7_reg_2743_pp0_iter7_reg;
        mul8_6_reg_2708_pp0_iter2_reg <= mul8_6_reg_2708;
        mul8_6_reg_2708_pp0_iter3_reg <= mul8_6_reg_2708_pp0_iter2_reg;
        mul8_6_reg_2708_pp0_iter4_reg <= mul8_6_reg_2708_pp0_iter3_reg;
        mul8_6_reg_2708_pp0_iter5_reg <= mul8_6_reg_2708_pp0_iter4_reg;
        mul8_6_reg_2708_pp0_iter6_reg <= mul8_6_reg_2708_pp0_iter5_reg;
        mul8_6_reg_2708_pp0_iter7_reg <= mul8_6_reg_2708_pp0_iter6_reg;
        mul8_7_reg_2713_pp0_iter2_reg <= mul8_7_reg_2713;
        mul8_7_reg_2713_pp0_iter3_reg <= mul8_7_reg_2713_pp0_iter2_reg;
        mul8_7_reg_2713_pp0_iter4_reg <= mul8_7_reg_2713_pp0_iter3_reg;
        mul8_7_reg_2713_pp0_iter5_reg <= mul8_7_reg_2713_pp0_iter4_reg;
        mul8_7_reg_2713_pp0_iter6_reg <= mul8_7_reg_2713_pp0_iter5_reg;
        mul8_7_reg_2713_pp0_iter7_reg <= mul8_7_reg_2713_pp0_iter6_reg;
        mul8_7_reg_2713_pp0_iter8_reg <= mul8_7_reg_2713_pp0_iter7_reg;
        zext_ln36_2_reg_2302[7 : 0] <= zext_ln36_2_fu_1409_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln36_2_reg_2403 <= add_ln36_2_fu_1550_p2;
        mul8_1_8_reg_2758_pp0_iter2_reg <= mul8_1_8_reg_2758;
        mul8_1_8_reg_2758_pp0_iter3_reg <= mul8_1_8_reg_2758_pp0_iter2_reg;
        mul8_1_8_reg_2758_pp0_iter4_reg <= mul8_1_8_reg_2758_pp0_iter3_reg;
        mul8_1_8_reg_2758_pp0_iter5_reg <= mul8_1_8_reg_2758_pp0_iter4_reg;
        mul8_1_8_reg_2758_pp0_iter6_reg <= mul8_1_8_reg_2758_pp0_iter5_reg;
        mul8_1_8_reg_2758_pp0_iter7_reg <= mul8_1_8_reg_2758_pp0_iter6_reg;
        mul8_1_8_reg_2758_pp0_iter8_reg <= mul8_1_8_reg_2758_pp0_iter7_reg;
        mul8_1_8_reg_2758_pp0_iter9_reg <= mul8_1_8_reg_2758_pp0_iter8_reg;
        mul8_1_9_reg_2763_pp0_iter10_reg <= mul8_1_9_reg_2763_pp0_iter9_reg;
        mul8_1_9_reg_2763_pp0_iter2_reg <= mul8_1_9_reg_2763;
        mul8_1_9_reg_2763_pp0_iter3_reg <= mul8_1_9_reg_2763_pp0_iter2_reg;
        mul8_1_9_reg_2763_pp0_iter4_reg <= mul8_1_9_reg_2763_pp0_iter3_reg;
        mul8_1_9_reg_2763_pp0_iter5_reg <= mul8_1_9_reg_2763_pp0_iter4_reg;
        mul8_1_9_reg_2763_pp0_iter6_reg <= mul8_1_9_reg_2763_pp0_iter5_reg;
        mul8_1_9_reg_2763_pp0_iter7_reg <= mul8_1_9_reg_2763_pp0_iter6_reg;
        mul8_1_9_reg_2763_pp0_iter8_reg <= mul8_1_9_reg_2763_pp0_iter7_reg;
        mul8_1_9_reg_2763_pp0_iter9_reg <= mul8_1_9_reg_2763_pp0_iter8_reg;
        mul8_2_8_reg_2768_pp0_iter2_reg <= mul8_2_8_reg_2768;
        mul8_2_8_reg_2768_pp0_iter3_reg <= mul8_2_8_reg_2768_pp0_iter2_reg;
        mul8_2_8_reg_2768_pp0_iter4_reg <= mul8_2_8_reg_2768_pp0_iter3_reg;
        mul8_2_8_reg_2768_pp0_iter5_reg <= mul8_2_8_reg_2768_pp0_iter4_reg;
        mul8_2_8_reg_2768_pp0_iter6_reg <= mul8_2_8_reg_2768_pp0_iter5_reg;
        mul8_2_8_reg_2768_pp0_iter7_reg <= mul8_2_8_reg_2768_pp0_iter6_reg;
        mul8_2_8_reg_2768_pp0_iter8_reg <= mul8_2_8_reg_2768_pp0_iter7_reg;
        mul8_2_8_reg_2768_pp0_iter9_reg <= mul8_2_8_reg_2768_pp0_iter8_reg;
        mul8_2_9_reg_2773_pp0_iter10_reg <= mul8_2_9_reg_2773_pp0_iter9_reg;
        mul8_2_9_reg_2773_pp0_iter2_reg <= mul8_2_9_reg_2773;
        mul8_2_9_reg_2773_pp0_iter3_reg <= mul8_2_9_reg_2773_pp0_iter2_reg;
        mul8_2_9_reg_2773_pp0_iter4_reg <= mul8_2_9_reg_2773_pp0_iter3_reg;
        mul8_2_9_reg_2773_pp0_iter5_reg <= mul8_2_9_reg_2773_pp0_iter4_reg;
        mul8_2_9_reg_2773_pp0_iter6_reg <= mul8_2_9_reg_2773_pp0_iter5_reg;
        mul8_2_9_reg_2773_pp0_iter7_reg <= mul8_2_9_reg_2773_pp0_iter6_reg;
        mul8_2_9_reg_2773_pp0_iter8_reg <= mul8_2_9_reg_2773_pp0_iter7_reg;
        mul8_2_9_reg_2773_pp0_iter9_reg <= mul8_2_9_reg_2773_pp0_iter8_reg;
        mul8_3_8_reg_2778_pp0_iter2_reg <= mul8_3_8_reg_2778;
        mul8_3_8_reg_2778_pp0_iter3_reg <= mul8_3_8_reg_2778_pp0_iter2_reg;
        mul8_3_8_reg_2778_pp0_iter4_reg <= mul8_3_8_reg_2778_pp0_iter3_reg;
        mul8_3_8_reg_2778_pp0_iter5_reg <= mul8_3_8_reg_2778_pp0_iter4_reg;
        mul8_3_8_reg_2778_pp0_iter6_reg <= mul8_3_8_reg_2778_pp0_iter5_reg;
        mul8_3_8_reg_2778_pp0_iter7_reg <= mul8_3_8_reg_2778_pp0_iter6_reg;
        mul8_3_8_reg_2778_pp0_iter8_reg <= mul8_3_8_reg_2778_pp0_iter7_reg;
        mul8_3_8_reg_2778_pp0_iter9_reg <= mul8_3_8_reg_2778_pp0_iter8_reg;
        mul8_3_9_reg_2783_pp0_iter10_reg <= mul8_3_9_reg_2783_pp0_iter9_reg;
        mul8_3_9_reg_2783_pp0_iter2_reg <= mul8_3_9_reg_2783;
        mul8_3_9_reg_2783_pp0_iter3_reg <= mul8_3_9_reg_2783_pp0_iter2_reg;
        mul8_3_9_reg_2783_pp0_iter4_reg <= mul8_3_9_reg_2783_pp0_iter3_reg;
        mul8_3_9_reg_2783_pp0_iter5_reg <= mul8_3_9_reg_2783_pp0_iter4_reg;
        mul8_3_9_reg_2783_pp0_iter6_reg <= mul8_3_9_reg_2783_pp0_iter5_reg;
        mul8_3_9_reg_2783_pp0_iter7_reg <= mul8_3_9_reg_2783_pp0_iter6_reg;
        mul8_3_9_reg_2783_pp0_iter8_reg <= mul8_3_9_reg_2783_pp0_iter7_reg;
        mul8_3_9_reg_2783_pp0_iter9_reg <= mul8_3_9_reg_2783_pp0_iter8_reg;
        mul8_8_reg_2748_pp0_iter2_reg <= mul8_8_reg_2748;
        mul8_8_reg_2748_pp0_iter3_reg <= mul8_8_reg_2748_pp0_iter2_reg;
        mul8_8_reg_2748_pp0_iter4_reg <= mul8_8_reg_2748_pp0_iter3_reg;
        mul8_8_reg_2748_pp0_iter5_reg <= mul8_8_reg_2748_pp0_iter4_reg;
        mul8_8_reg_2748_pp0_iter6_reg <= mul8_8_reg_2748_pp0_iter5_reg;
        mul8_8_reg_2748_pp0_iter7_reg <= mul8_8_reg_2748_pp0_iter6_reg;
        mul8_8_reg_2748_pp0_iter8_reg <= mul8_8_reg_2748_pp0_iter7_reg;
        mul8_8_reg_2748_pp0_iter9_reg <= mul8_8_reg_2748_pp0_iter8_reg;
        mul8_9_reg_2753_pp0_iter10_reg <= mul8_9_reg_2753_pp0_iter9_reg;
        mul8_9_reg_2753_pp0_iter2_reg <= mul8_9_reg_2753;
        mul8_9_reg_2753_pp0_iter3_reg <= mul8_9_reg_2753_pp0_iter2_reg;
        mul8_9_reg_2753_pp0_iter4_reg <= mul8_9_reg_2753_pp0_iter3_reg;
        mul8_9_reg_2753_pp0_iter5_reg <= mul8_9_reg_2753_pp0_iter4_reg;
        mul8_9_reg_2753_pp0_iter6_reg <= mul8_9_reg_2753_pp0_iter5_reg;
        mul8_9_reg_2753_pp0_iter7_reg <= mul8_9_reg_2753_pp0_iter6_reg;
        mul8_9_reg_2753_pp0_iter8_reg <= mul8_9_reg_2753_pp0_iter7_reg;
        mul8_9_reg_2753_pp0_iter9_reg <= mul8_9_reg_2753_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1971 <= empty_fu_886_p2;
        j_1_reg_1961 <= ap_sig_allocacmp_j_1;
        lshr_ln8_reg_2001 <= {{empty_fu_886_p2[9:2]}};
        mul8_10_reg_2788_pp0_iter10_reg <= mul8_10_reg_2788_pp0_iter9_reg;
        mul8_10_reg_2788_pp0_iter11_reg <= mul8_10_reg_2788_pp0_iter10_reg;
        mul8_10_reg_2788_pp0_iter12_reg <= mul8_10_reg_2788_pp0_iter11_reg;
        mul8_10_reg_2788_pp0_iter3_reg <= mul8_10_reg_2788;
        mul8_10_reg_2788_pp0_iter4_reg <= mul8_10_reg_2788_pp0_iter3_reg;
        mul8_10_reg_2788_pp0_iter5_reg <= mul8_10_reg_2788_pp0_iter4_reg;
        mul8_10_reg_2788_pp0_iter6_reg <= mul8_10_reg_2788_pp0_iter5_reg;
        mul8_10_reg_2788_pp0_iter7_reg <= mul8_10_reg_2788_pp0_iter6_reg;
        mul8_10_reg_2788_pp0_iter8_reg <= mul8_10_reg_2788_pp0_iter7_reg;
        mul8_10_reg_2788_pp0_iter9_reg <= mul8_10_reg_2788_pp0_iter8_reg;
        mul8_11_reg_2793_pp0_iter10_reg <= mul8_11_reg_2793_pp0_iter9_reg;
        mul8_11_reg_2793_pp0_iter11_reg <= mul8_11_reg_2793_pp0_iter10_reg;
        mul8_11_reg_2793_pp0_iter12_reg <= mul8_11_reg_2793_pp0_iter11_reg;
        mul8_11_reg_2793_pp0_iter13_reg <= mul8_11_reg_2793_pp0_iter12_reg;
        mul8_11_reg_2793_pp0_iter3_reg <= mul8_11_reg_2793;
        mul8_11_reg_2793_pp0_iter4_reg <= mul8_11_reg_2793_pp0_iter3_reg;
        mul8_11_reg_2793_pp0_iter5_reg <= mul8_11_reg_2793_pp0_iter4_reg;
        mul8_11_reg_2793_pp0_iter6_reg <= mul8_11_reg_2793_pp0_iter5_reg;
        mul8_11_reg_2793_pp0_iter7_reg <= mul8_11_reg_2793_pp0_iter6_reg;
        mul8_11_reg_2793_pp0_iter8_reg <= mul8_11_reg_2793_pp0_iter7_reg;
        mul8_11_reg_2793_pp0_iter9_reg <= mul8_11_reg_2793_pp0_iter8_reg;
        mul8_1_10_reg_2803_pp0_iter10_reg <= mul8_1_10_reg_2803_pp0_iter9_reg;
        mul8_1_10_reg_2803_pp0_iter11_reg <= mul8_1_10_reg_2803_pp0_iter10_reg;
        mul8_1_10_reg_2803_pp0_iter12_reg <= mul8_1_10_reg_2803_pp0_iter11_reg;
        mul8_1_10_reg_2803_pp0_iter13_reg <= mul8_1_10_reg_2803_pp0_iter12_reg;
        mul8_1_10_reg_2803_pp0_iter3_reg <= mul8_1_10_reg_2803;
        mul8_1_10_reg_2803_pp0_iter4_reg <= mul8_1_10_reg_2803_pp0_iter3_reg;
        mul8_1_10_reg_2803_pp0_iter5_reg <= mul8_1_10_reg_2803_pp0_iter4_reg;
        mul8_1_10_reg_2803_pp0_iter6_reg <= mul8_1_10_reg_2803_pp0_iter5_reg;
        mul8_1_10_reg_2803_pp0_iter7_reg <= mul8_1_10_reg_2803_pp0_iter6_reg;
        mul8_1_10_reg_2803_pp0_iter8_reg <= mul8_1_10_reg_2803_pp0_iter7_reg;
        mul8_1_10_reg_2803_pp0_iter9_reg <= mul8_1_10_reg_2803_pp0_iter8_reg;
        mul8_1_s_reg_2798_pp0_iter10_reg <= mul8_1_s_reg_2798_pp0_iter9_reg;
        mul8_1_s_reg_2798_pp0_iter11_reg <= mul8_1_s_reg_2798_pp0_iter10_reg;
        mul8_1_s_reg_2798_pp0_iter12_reg <= mul8_1_s_reg_2798_pp0_iter11_reg;
        mul8_1_s_reg_2798_pp0_iter3_reg <= mul8_1_s_reg_2798;
        mul8_1_s_reg_2798_pp0_iter4_reg <= mul8_1_s_reg_2798_pp0_iter3_reg;
        mul8_1_s_reg_2798_pp0_iter5_reg <= mul8_1_s_reg_2798_pp0_iter4_reg;
        mul8_1_s_reg_2798_pp0_iter6_reg <= mul8_1_s_reg_2798_pp0_iter5_reg;
        mul8_1_s_reg_2798_pp0_iter7_reg <= mul8_1_s_reg_2798_pp0_iter6_reg;
        mul8_1_s_reg_2798_pp0_iter8_reg <= mul8_1_s_reg_2798_pp0_iter7_reg;
        mul8_1_s_reg_2798_pp0_iter9_reg <= mul8_1_s_reg_2798_pp0_iter8_reg;
        mul8_2_10_reg_2813_pp0_iter10_reg <= mul8_2_10_reg_2813_pp0_iter9_reg;
        mul8_2_10_reg_2813_pp0_iter11_reg <= mul8_2_10_reg_2813_pp0_iter10_reg;
        mul8_2_10_reg_2813_pp0_iter12_reg <= mul8_2_10_reg_2813_pp0_iter11_reg;
        mul8_2_10_reg_2813_pp0_iter13_reg <= mul8_2_10_reg_2813_pp0_iter12_reg;
        mul8_2_10_reg_2813_pp0_iter3_reg <= mul8_2_10_reg_2813;
        mul8_2_10_reg_2813_pp0_iter4_reg <= mul8_2_10_reg_2813_pp0_iter3_reg;
        mul8_2_10_reg_2813_pp0_iter5_reg <= mul8_2_10_reg_2813_pp0_iter4_reg;
        mul8_2_10_reg_2813_pp0_iter6_reg <= mul8_2_10_reg_2813_pp0_iter5_reg;
        mul8_2_10_reg_2813_pp0_iter7_reg <= mul8_2_10_reg_2813_pp0_iter6_reg;
        mul8_2_10_reg_2813_pp0_iter8_reg <= mul8_2_10_reg_2813_pp0_iter7_reg;
        mul8_2_10_reg_2813_pp0_iter9_reg <= mul8_2_10_reg_2813_pp0_iter8_reg;
        mul8_2_s_reg_2808_pp0_iter10_reg <= mul8_2_s_reg_2808_pp0_iter9_reg;
        mul8_2_s_reg_2808_pp0_iter11_reg <= mul8_2_s_reg_2808_pp0_iter10_reg;
        mul8_2_s_reg_2808_pp0_iter12_reg <= mul8_2_s_reg_2808_pp0_iter11_reg;
        mul8_2_s_reg_2808_pp0_iter3_reg <= mul8_2_s_reg_2808;
        mul8_2_s_reg_2808_pp0_iter4_reg <= mul8_2_s_reg_2808_pp0_iter3_reg;
        mul8_2_s_reg_2808_pp0_iter5_reg <= mul8_2_s_reg_2808_pp0_iter4_reg;
        mul8_2_s_reg_2808_pp0_iter6_reg <= mul8_2_s_reg_2808_pp0_iter5_reg;
        mul8_2_s_reg_2808_pp0_iter7_reg <= mul8_2_s_reg_2808_pp0_iter6_reg;
        mul8_2_s_reg_2808_pp0_iter8_reg <= mul8_2_s_reg_2808_pp0_iter7_reg;
        mul8_2_s_reg_2808_pp0_iter9_reg <= mul8_2_s_reg_2808_pp0_iter8_reg;
        mul8_3_10_reg_2823_pp0_iter10_reg <= mul8_3_10_reg_2823_pp0_iter9_reg;
        mul8_3_10_reg_2823_pp0_iter11_reg <= mul8_3_10_reg_2823_pp0_iter10_reg;
        mul8_3_10_reg_2823_pp0_iter12_reg <= mul8_3_10_reg_2823_pp0_iter11_reg;
        mul8_3_10_reg_2823_pp0_iter13_reg <= mul8_3_10_reg_2823_pp0_iter12_reg;
        mul8_3_10_reg_2823_pp0_iter3_reg <= mul8_3_10_reg_2823;
        mul8_3_10_reg_2823_pp0_iter4_reg <= mul8_3_10_reg_2823_pp0_iter3_reg;
        mul8_3_10_reg_2823_pp0_iter5_reg <= mul8_3_10_reg_2823_pp0_iter4_reg;
        mul8_3_10_reg_2823_pp0_iter6_reg <= mul8_3_10_reg_2823_pp0_iter5_reg;
        mul8_3_10_reg_2823_pp0_iter7_reg <= mul8_3_10_reg_2823_pp0_iter6_reg;
        mul8_3_10_reg_2823_pp0_iter8_reg <= mul8_3_10_reg_2823_pp0_iter7_reg;
        mul8_3_10_reg_2823_pp0_iter9_reg <= mul8_3_10_reg_2823_pp0_iter8_reg;
        mul8_3_s_reg_2818_pp0_iter10_reg <= mul8_3_s_reg_2818_pp0_iter9_reg;
        mul8_3_s_reg_2818_pp0_iter11_reg <= mul8_3_s_reg_2818_pp0_iter10_reg;
        mul8_3_s_reg_2818_pp0_iter12_reg <= mul8_3_s_reg_2818_pp0_iter11_reg;
        mul8_3_s_reg_2818_pp0_iter3_reg <= mul8_3_s_reg_2818;
        mul8_3_s_reg_2818_pp0_iter4_reg <= mul8_3_s_reg_2818_pp0_iter3_reg;
        mul8_3_s_reg_2818_pp0_iter5_reg <= mul8_3_s_reg_2818_pp0_iter4_reg;
        mul8_3_s_reg_2818_pp0_iter6_reg <= mul8_3_s_reg_2818_pp0_iter5_reg;
        mul8_3_s_reg_2818_pp0_iter7_reg <= mul8_3_s_reg_2818_pp0_iter6_reg;
        mul8_3_s_reg_2818_pp0_iter8_reg <= mul8_3_s_reg_2818_pp0_iter7_reg;
        mul8_3_s_reg_2818_pp0_iter9_reg <= mul8_3_s_reg_2818_pp0_iter8_reg;
        tmp_1_reg_1967 <= ap_sig_allocacmp_j_1[32'd6];
        tmp_1_reg_1967_pp0_iter10_reg <= tmp_1_reg_1967_pp0_iter9_reg;
        tmp_1_reg_1967_pp0_iter11_reg <= tmp_1_reg_1967_pp0_iter10_reg;
        tmp_1_reg_1967_pp0_iter12_reg <= tmp_1_reg_1967_pp0_iter11_reg;
        tmp_1_reg_1967_pp0_iter13_reg <= tmp_1_reg_1967_pp0_iter12_reg;
        tmp_1_reg_1967_pp0_iter14_reg <= tmp_1_reg_1967_pp0_iter13_reg;
        tmp_1_reg_1967_pp0_iter15_reg <= tmp_1_reg_1967_pp0_iter14_reg;
        tmp_1_reg_1967_pp0_iter1_reg <= tmp_1_reg_1967;
        tmp_1_reg_1967_pp0_iter2_reg <= tmp_1_reg_1967_pp0_iter1_reg;
        tmp_1_reg_1967_pp0_iter3_reg <= tmp_1_reg_1967_pp0_iter2_reg;
        tmp_1_reg_1967_pp0_iter4_reg <= tmp_1_reg_1967_pp0_iter3_reg;
        tmp_1_reg_1967_pp0_iter5_reg <= tmp_1_reg_1967_pp0_iter4_reg;
        tmp_1_reg_1967_pp0_iter6_reg <= tmp_1_reg_1967_pp0_iter5_reg;
        tmp_1_reg_1967_pp0_iter7_reg <= tmp_1_reg_1967_pp0_iter6_reg;
        tmp_1_reg_1967_pp0_iter8_reg <= tmp_1_reg_1967_pp0_iter7_reg;
        tmp_1_reg_1967_pp0_iter9_reg <= tmp_1_reg_1967_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln36_16_reg_2069 <= {{empty_38_fu_953_p2[9:2]}};
        lshr_ln36_8_reg_2052 <= {{empty_37_fu_932_p2[9:2]}};
        lshr_ln7_reg_2009 <= {{j_1_reg_1961[5:2]}};
        lshr_ln7_reg_2009_pp0_iter10_reg <= lshr_ln7_reg_2009_pp0_iter9_reg;
        lshr_ln7_reg_2009_pp0_iter11_reg <= lshr_ln7_reg_2009_pp0_iter10_reg;
        lshr_ln7_reg_2009_pp0_iter12_reg <= lshr_ln7_reg_2009_pp0_iter11_reg;
        lshr_ln7_reg_2009_pp0_iter13_reg <= lshr_ln7_reg_2009_pp0_iter12_reg;
        lshr_ln7_reg_2009_pp0_iter14_reg <= lshr_ln7_reg_2009_pp0_iter13_reg;
        lshr_ln7_reg_2009_pp0_iter15_reg <= lshr_ln7_reg_2009_pp0_iter14_reg;
        lshr_ln7_reg_2009_pp0_iter16_reg <= lshr_ln7_reg_2009_pp0_iter15_reg;
        lshr_ln7_reg_2009_pp0_iter1_reg <= lshr_ln7_reg_2009;
        lshr_ln7_reg_2009_pp0_iter2_reg <= lshr_ln7_reg_2009_pp0_iter1_reg;
        lshr_ln7_reg_2009_pp0_iter3_reg <= lshr_ln7_reg_2009_pp0_iter2_reg;
        lshr_ln7_reg_2009_pp0_iter4_reg <= lshr_ln7_reg_2009_pp0_iter3_reg;
        lshr_ln7_reg_2009_pp0_iter5_reg <= lshr_ln7_reg_2009_pp0_iter4_reg;
        lshr_ln7_reg_2009_pp0_iter6_reg <= lshr_ln7_reg_2009_pp0_iter5_reg;
        lshr_ln7_reg_2009_pp0_iter7_reg <= lshr_ln7_reg_2009_pp0_iter6_reg;
        lshr_ln7_reg_2009_pp0_iter8_reg <= lshr_ln7_reg_2009_pp0_iter7_reg;
        lshr_ln7_reg_2009_pp0_iter9_reg <= lshr_ln7_reg_2009_pp0_iter8_reg;
        mul8_12_reg_2828_pp0_iter10_reg <= mul8_12_reg_2828_pp0_iter9_reg;
        mul8_12_reg_2828_pp0_iter11_reg <= mul8_12_reg_2828_pp0_iter10_reg;
        mul8_12_reg_2828_pp0_iter12_reg <= mul8_12_reg_2828_pp0_iter11_reg;
        mul8_12_reg_2828_pp0_iter13_reg <= mul8_12_reg_2828_pp0_iter12_reg;
        mul8_12_reg_2828_pp0_iter14_reg <= mul8_12_reg_2828_pp0_iter13_reg;
        mul8_12_reg_2828_pp0_iter3_reg <= mul8_12_reg_2828;
        mul8_12_reg_2828_pp0_iter4_reg <= mul8_12_reg_2828_pp0_iter3_reg;
        mul8_12_reg_2828_pp0_iter5_reg <= mul8_12_reg_2828_pp0_iter4_reg;
        mul8_12_reg_2828_pp0_iter6_reg <= mul8_12_reg_2828_pp0_iter5_reg;
        mul8_12_reg_2828_pp0_iter7_reg <= mul8_12_reg_2828_pp0_iter6_reg;
        mul8_12_reg_2828_pp0_iter8_reg <= mul8_12_reg_2828_pp0_iter7_reg;
        mul8_12_reg_2828_pp0_iter9_reg <= mul8_12_reg_2828_pp0_iter8_reg;
        mul8_1_11_reg_2833_pp0_iter10_reg <= mul8_1_11_reg_2833_pp0_iter9_reg;
        mul8_1_11_reg_2833_pp0_iter11_reg <= mul8_1_11_reg_2833_pp0_iter10_reg;
        mul8_1_11_reg_2833_pp0_iter12_reg <= mul8_1_11_reg_2833_pp0_iter11_reg;
        mul8_1_11_reg_2833_pp0_iter13_reg <= mul8_1_11_reg_2833_pp0_iter12_reg;
        mul8_1_11_reg_2833_pp0_iter14_reg <= mul8_1_11_reg_2833_pp0_iter13_reg;
        mul8_1_11_reg_2833_pp0_iter3_reg <= mul8_1_11_reg_2833;
        mul8_1_11_reg_2833_pp0_iter4_reg <= mul8_1_11_reg_2833_pp0_iter3_reg;
        mul8_1_11_reg_2833_pp0_iter5_reg <= mul8_1_11_reg_2833_pp0_iter4_reg;
        mul8_1_11_reg_2833_pp0_iter6_reg <= mul8_1_11_reg_2833_pp0_iter5_reg;
        mul8_1_11_reg_2833_pp0_iter7_reg <= mul8_1_11_reg_2833_pp0_iter6_reg;
        mul8_1_11_reg_2833_pp0_iter8_reg <= mul8_1_11_reg_2833_pp0_iter7_reg;
        mul8_1_11_reg_2833_pp0_iter9_reg <= mul8_1_11_reg_2833_pp0_iter8_reg;
        mul8_2_11_reg_2838_pp0_iter10_reg <= mul8_2_11_reg_2838_pp0_iter9_reg;
        mul8_2_11_reg_2838_pp0_iter11_reg <= mul8_2_11_reg_2838_pp0_iter10_reg;
        mul8_2_11_reg_2838_pp0_iter12_reg <= mul8_2_11_reg_2838_pp0_iter11_reg;
        mul8_2_11_reg_2838_pp0_iter13_reg <= mul8_2_11_reg_2838_pp0_iter12_reg;
        mul8_2_11_reg_2838_pp0_iter14_reg <= mul8_2_11_reg_2838_pp0_iter13_reg;
        mul8_2_11_reg_2838_pp0_iter3_reg <= mul8_2_11_reg_2838;
        mul8_2_11_reg_2838_pp0_iter4_reg <= mul8_2_11_reg_2838_pp0_iter3_reg;
        mul8_2_11_reg_2838_pp0_iter5_reg <= mul8_2_11_reg_2838_pp0_iter4_reg;
        mul8_2_11_reg_2838_pp0_iter6_reg <= mul8_2_11_reg_2838_pp0_iter5_reg;
        mul8_2_11_reg_2838_pp0_iter7_reg <= mul8_2_11_reg_2838_pp0_iter6_reg;
        mul8_2_11_reg_2838_pp0_iter8_reg <= mul8_2_11_reg_2838_pp0_iter7_reg;
        mul8_2_11_reg_2838_pp0_iter9_reg <= mul8_2_11_reg_2838_pp0_iter8_reg;
        mul8_3_11_reg_2843_pp0_iter10_reg <= mul8_3_11_reg_2843_pp0_iter9_reg;
        mul8_3_11_reg_2843_pp0_iter11_reg <= mul8_3_11_reg_2843_pp0_iter10_reg;
        mul8_3_11_reg_2843_pp0_iter12_reg <= mul8_3_11_reg_2843_pp0_iter11_reg;
        mul8_3_11_reg_2843_pp0_iter13_reg <= mul8_3_11_reg_2843_pp0_iter12_reg;
        mul8_3_11_reg_2843_pp0_iter14_reg <= mul8_3_11_reg_2843_pp0_iter13_reg;
        mul8_3_11_reg_2843_pp0_iter3_reg <= mul8_3_11_reg_2843;
        mul8_3_11_reg_2843_pp0_iter4_reg <= mul8_3_11_reg_2843_pp0_iter3_reg;
        mul8_3_11_reg_2843_pp0_iter5_reg <= mul8_3_11_reg_2843_pp0_iter4_reg;
        mul8_3_11_reg_2843_pp0_iter6_reg <= mul8_3_11_reg_2843_pp0_iter5_reg;
        mul8_3_11_reg_2843_pp0_iter7_reg <= mul8_3_11_reg_2843_pp0_iter6_reg;
        mul8_3_11_reg_2843_pp0_iter8_reg <= mul8_3_11_reg_2843_pp0_iter7_reg;
        mul8_3_11_reg_2843_pp0_iter9_reg <= mul8_3_11_reg_2843_pp0_iter8_reg;
        mul_ln36_reg_2014 <= mul_ln36_fu_915_p2;
        zext_ln36_4_reg_2037[7 : 0] <= zext_ln36_4_fu_927_p1[7 : 0];
        zext_ln36_reg_2021[7 : 0] <= zext_ln36_fu_921_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul8_10_reg_2788 <= grp_fu_1794_p_dout0;
        mul8_11_reg_2793 <= grp_fu_1798_p_dout0;
        mul8_1_10_reg_2803 <= grp_fu_1806_p_dout0;
        mul8_1_s_reg_2798 <= grp_fu_1802_p_dout0;
        mul8_2_10_reg_2813 <= grp_fu_1814_p_dout0;
        mul8_2_s_reg_2808 <= grp_fu_1810_p_dout0;
        mul8_3_10_reg_2823 <= grp_fu_1822_p_dout0;
        mul8_3_s_reg_2818 <= grp_fu_1818_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul8_12_reg_2828 <= grp_fu_1794_p_dout0;
        mul8_1_11_reg_2833 <= grp_fu_1798_p_dout0;
        mul8_2_11_reg_2838 <= grp_fu_1802_p_dout0;
        mul8_3_11_reg_2843 <= grp_fu_1806_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_13_reg_2628 <= grp_fu_1794_p_dout0;
        mul8_14_reg_2633 <= grp_fu_1798_p_dout0;
        mul8_1_2_reg_2638 <= grp_fu_1802_p_dout0;
        mul8_1_3_reg_2643 <= grp_fu_1806_p_dout0;
        mul8_2_2_reg_2648 <= grp_fu_1810_p_dout0;
        mul8_2_3_reg_2653 <= grp_fu_1814_p_dout0;
        mul8_3_2_reg_2658 <= grp_fu_1818_p_dout0;
        mul8_3_3_reg_2663 <= grp_fu_1822_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul8_13_reg_2628_pp0_iter2_reg <= mul8_13_reg_2628;
        mul8_13_reg_2628_pp0_iter3_reg <= mul8_13_reg_2628_pp0_iter2_reg;
        mul8_14_reg_2633_pp0_iter2_reg <= mul8_14_reg_2633;
        mul8_14_reg_2633_pp0_iter3_reg <= mul8_14_reg_2633_pp0_iter2_reg;
        mul8_14_reg_2633_pp0_iter4_reg <= mul8_14_reg_2633_pp0_iter3_reg;
        mul8_1_2_reg_2638_pp0_iter2_reg <= mul8_1_2_reg_2638;
        mul8_1_2_reg_2638_pp0_iter3_reg <= mul8_1_2_reg_2638_pp0_iter2_reg;
        mul8_1_3_reg_2643_pp0_iter2_reg <= mul8_1_3_reg_2643;
        mul8_1_3_reg_2643_pp0_iter3_reg <= mul8_1_3_reg_2643_pp0_iter2_reg;
        mul8_1_3_reg_2643_pp0_iter4_reg <= mul8_1_3_reg_2643_pp0_iter3_reg;
        mul8_2_2_reg_2648_pp0_iter2_reg <= mul8_2_2_reg_2648;
        mul8_2_2_reg_2648_pp0_iter3_reg <= mul8_2_2_reg_2648_pp0_iter2_reg;
        mul8_2_3_reg_2653_pp0_iter2_reg <= mul8_2_3_reg_2653;
        mul8_2_3_reg_2653_pp0_iter3_reg <= mul8_2_3_reg_2653_pp0_iter2_reg;
        mul8_2_3_reg_2653_pp0_iter4_reg <= mul8_2_3_reg_2653_pp0_iter3_reg;
        mul8_3_2_reg_2658_pp0_iter2_reg <= mul8_3_2_reg_2658;
        mul8_3_2_reg_2658_pp0_iter3_reg <= mul8_3_2_reg_2658_pp0_iter2_reg;
        mul8_3_3_reg_2663_pp0_iter2_reg <= mul8_3_3_reg_2663;
        mul8_3_3_reg_2663_pp0_iter3_reg <= mul8_3_3_reg_2663_pp0_iter2_reg;
        mul8_3_3_reg_2663_pp0_iter4_reg <= mul8_3_3_reg_2663_pp0_iter3_reg;
        zext_ln36_1_reg_2136[7 : 0] <= zext_ln36_1_fu_1108_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_1_1_reg_2588 <= grp_fu_1806_p_dout0;
        mul8_1_reg_2583 <= grp_fu_1802_p_dout0;
        mul8_2_1_reg_2603 <= grp_fu_1814_p_dout0;
        mul8_2_reg_2598 <= grp_fu_1810_p_dout0;
        mul8_3_1_reg_2618 <= grp_fu_1822_p_dout0;
        mul8_3_reg_2613 <= grp_fu_1818_p_dout0;
        mul8_reg_2568 <= grp_fu_1794_p_dout0;
        mul8_s_reg_2573 <= grp_fu_1798_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul8_1_1_reg_2588_pp0_iter2_reg <= mul8_1_1_reg_2588;
        mul8_2_1_reg_2603_pp0_iter2_reg <= mul8_2_1_reg_2603;
        mul8_3_1_reg_2618_pp0_iter2_reg <= mul8_3_1_reg_2618;
        mul8_s_reg_2573_pp0_iter2_reg <= mul8_s_reg_2573;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_1_4_reg_2678 <= grp_fu_1802_p_dout0;
        mul8_1_5_reg_2683 <= grp_fu_1806_p_dout0;
        mul8_2_4_reg_2688 <= grp_fu_1810_p_dout0;
        mul8_2_5_reg_2693 <= grp_fu_1814_p_dout0;
        mul8_3_4_reg_2698 <= grp_fu_1818_p_dout0;
        mul8_3_5_reg_2703 <= grp_fu_1822_p_dout0;
        mul8_4_reg_2668 <= grp_fu_1794_p_dout0;
        mul8_5_reg_2673 <= grp_fu_1798_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul8_1_4_reg_2678_pp0_iter2_reg <= mul8_1_4_reg_2678;
        mul8_1_4_reg_2678_pp0_iter3_reg <= mul8_1_4_reg_2678_pp0_iter2_reg;
        mul8_1_4_reg_2678_pp0_iter4_reg <= mul8_1_4_reg_2678_pp0_iter3_reg;
        mul8_1_4_reg_2678_pp0_iter5_reg <= mul8_1_4_reg_2678_pp0_iter4_reg;
        mul8_1_5_reg_2683_pp0_iter2_reg <= mul8_1_5_reg_2683;
        mul8_1_5_reg_2683_pp0_iter3_reg <= mul8_1_5_reg_2683_pp0_iter2_reg;
        mul8_1_5_reg_2683_pp0_iter4_reg <= mul8_1_5_reg_2683_pp0_iter3_reg;
        mul8_1_5_reg_2683_pp0_iter5_reg <= mul8_1_5_reg_2683_pp0_iter4_reg;
        mul8_1_5_reg_2683_pp0_iter6_reg <= mul8_1_5_reg_2683_pp0_iter5_reg;
        mul8_2_4_reg_2688_pp0_iter2_reg <= mul8_2_4_reg_2688;
        mul8_2_4_reg_2688_pp0_iter3_reg <= mul8_2_4_reg_2688_pp0_iter2_reg;
        mul8_2_4_reg_2688_pp0_iter4_reg <= mul8_2_4_reg_2688_pp0_iter3_reg;
        mul8_2_4_reg_2688_pp0_iter5_reg <= mul8_2_4_reg_2688_pp0_iter4_reg;
        mul8_2_5_reg_2693_pp0_iter2_reg <= mul8_2_5_reg_2693;
        mul8_2_5_reg_2693_pp0_iter3_reg <= mul8_2_5_reg_2693_pp0_iter2_reg;
        mul8_2_5_reg_2693_pp0_iter4_reg <= mul8_2_5_reg_2693_pp0_iter3_reg;
        mul8_2_5_reg_2693_pp0_iter5_reg <= mul8_2_5_reg_2693_pp0_iter4_reg;
        mul8_2_5_reg_2693_pp0_iter6_reg <= mul8_2_5_reg_2693_pp0_iter5_reg;
        mul8_3_4_reg_2698_pp0_iter2_reg <= mul8_3_4_reg_2698;
        mul8_3_4_reg_2698_pp0_iter3_reg <= mul8_3_4_reg_2698_pp0_iter2_reg;
        mul8_3_4_reg_2698_pp0_iter4_reg <= mul8_3_4_reg_2698_pp0_iter3_reg;
        mul8_3_4_reg_2698_pp0_iter5_reg <= mul8_3_4_reg_2698_pp0_iter4_reg;
        mul8_3_5_reg_2703_pp0_iter2_reg <= mul8_3_5_reg_2703;
        mul8_3_5_reg_2703_pp0_iter3_reg <= mul8_3_5_reg_2703_pp0_iter2_reg;
        mul8_3_5_reg_2703_pp0_iter4_reg <= mul8_3_5_reg_2703_pp0_iter3_reg;
        mul8_3_5_reg_2703_pp0_iter5_reg <= mul8_3_5_reg_2703_pp0_iter4_reg;
        mul8_3_5_reg_2703_pp0_iter6_reg <= mul8_3_5_reg_2703_pp0_iter5_reg;
        mul8_4_reg_2668_pp0_iter2_reg <= mul8_4_reg_2668;
        mul8_4_reg_2668_pp0_iter3_reg <= mul8_4_reg_2668_pp0_iter2_reg;
        mul8_4_reg_2668_pp0_iter4_reg <= mul8_4_reg_2668_pp0_iter3_reg;
        mul8_4_reg_2668_pp0_iter5_reg <= mul8_4_reg_2668_pp0_iter4_reg;
        mul8_5_reg_2673_pp0_iter2_reg <= mul8_5_reg_2673;
        mul8_5_reg_2673_pp0_iter3_reg <= mul8_5_reg_2673_pp0_iter2_reg;
        mul8_5_reg_2673_pp0_iter4_reg <= mul8_5_reg_2673_pp0_iter3_reg;
        mul8_5_reg_2673_pp0_iter5_reg <= mul8_5_reg_2673_pp0_iter4_reg;
        mul8_5_reg_2673_pp0_iter6_reg <= mul8_5_reg_2673_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul8_1_6_reg_2718 <= grp_fu_1802_p_dout0;
        mul8_1_7_reg_2723 <= grp_fu_1806_p_dout0;
        mul8_2_6_reg_2728 <= grp_fu_1810_p_dout0;
        mul8_2_7_reg_2733 <= grp_fu_1814_p_dout0;
        mul8_3_6_reg_2738 <= grp_fu_1818_p_dout0;
        mul8_3_7_reg_2743 <= grp_fu_1822_p_dout0;
        mul8_6_reg_2708 <= grp_fu_1794_p_dout0;
        mul8_7_reg_2713 <= grp_fu_1798_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul8_1_8_reg_2758 <= grp_fu_1802_p_dout0;
        mul8_1_9_reg_2763 <= grp_fu_1806_p_dout0;
        mul8_2_8_reg_2768 <= grp_fu_1810_p_dout0;
        mul8_2_9_reg_2773 <= grp_fu_1814_p_dout0;
        mul8_3_8_reg_2778 <= grp_fu_1818_p_dout0;
        mul8_3_9_reg_2783 <= grp_fu_1822_p_dout0;
        mul8_8_reg_2748 <= grp_fu_1794_p_dout0;
        mul8_9_reg_2753 <= grp_fu_1798_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        activations_0_ce0_local = 1'b1;
    end else begin
        activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        activations_0_we0_local = 1'b1;
    end else begin
        activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        activations_1_ce0_local = 1'b1;
    end else begin
        activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        activations_1_we0_local = 1'b1;
    end else begin
        activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        activations_2_ce0_local = 1'b1;
    end else begin
        activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        activations_2_we0_local = 1'b1;
    end else begin
        activations_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        activations_3_ce0_local = 1'b1;
    end else begin
        activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        activations_3_we0_local = 1'b1;
    end else begin
        activations_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_1967 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter15 == 1'b1) & (tmp_1_reg_1967_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter15_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter15_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to14 = 1'b1;
    end else begin
        ap_idle_pp0_0to14 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to16 = 1'b1;
    end else begin
        ap_idle_pp0_1to16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_154;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_740_p0 = add11_5_reg_2948;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_740_p0 = add11_4_reg_2928;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_740_p0 = add11_14_reg_2908;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_740_p0 = add11_13_reg_2888;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_740_p0 = add11_s_reg_2868;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_740_p0 = add_reg_2848;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_740_p0 = mul8_reg_2568;
    end else begin
        grp_fu_740_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_740_p1 = mul8_6_reg_2708_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_740_p1 = mul8_5_reg_2673_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_740_p1 = mul8_4_reg_2668_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_740_p1 = mul8_14_reg_2633_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_740_p1 = mul8_13_reg_2628_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_740_p1 = mul8_s_reg_2573_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_740_p1 = 64'd0;
    end else begin
        grp_fu_740_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_745_p0 = add11_1_5_reg_2953;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_745_p0 = add11_1_4_reg_2933;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_745_p0 = add11_1_3_reg_2913;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_745_p0 = add11_1_2_reg_2893;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_745_p0 = add11_1_1_reg_2873;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_745_p0 = add11_1_reg_2853;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_745_p0 = mul8_1_reg_2583;
    end else begin
        grp_fu_745_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_745_p1 = mul8_1_6_reg_2718_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_745_p1 = mul8_1_5_reg_2683_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_745_p1 = mul8_1_4_reg_2678_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_745_p1 = mul8_1_3_reg_2643_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_745_p1 = mul8_1_2_reg_2638_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_745_p1 = mul8_1_1_reg_2588_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_745_p1 = 64'd0;
    end else begin
        grp_fu_745_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_750_p0 = add11_2_5_reg_2958;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_750_p0 = add11_2_4_reg_2938;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_750_p0 = add11_2_3_reg_2918;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_750_p0 = add11_2_2_reg_2898;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_750_p0 = add11_2_1_reg_2878;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_750_p0 = add11_2_reg_2858;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_750_p0 = mul8_2_reg_2598;
    end else begin
        grp_fu_750_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_750_p1 = mul8_2_6_reg_2728_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_750_p1 = mul8_2_5_reg_2693_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_750_p1 = mul8_2_4_reg_2688_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_750_p1 = mul8_2_3_reg_2653_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_750_p1 = mul8_2_2_reg_2648_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_750_p1 = mul8_2_1_reg_2603_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_750_p1 = 64'd0;
    end else begin
        grp_fu_750_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_755_p0 = add11_3_5_reg_2963;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_755_p0 = add11_3_4_reg_2943;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_755_p0 = add11_3_3_reg_2923;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_755_p0 = add11_3_2_reg_2903;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_755_p0 = add11_3_1_reg_2883;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_755_p0 = add11_3_reg_2863;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_755_p0 = mul8_3_reg_2613;
    end else begin
        grp_fu_755_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_755_p1 = mul8_3_6_reg_2738_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_755_p1 = mul8_3_5_reg_2703_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_755_p1 = mul8_3_4_reg_2698_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_755_p1 = mul8_3_3_reg_2663_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_755_p1 = mul8_3_2_reg_2658_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_755_p1 = mul8_3_1_reg_2618_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_755_p1 = 64'd0;
    end else begin
        grp_fu_755_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_760_p0 = add11_11_reg_3068;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_760_p0 = add11_10_reg_3048;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_760_p0 = add11_9_reg_3028;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_760_p0 = add11_8_reg_3008;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_760_p0 = add11_7_reg_2988;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_760_p0 = add11_6_reg_2968;
    end else begin
        grp_fu_760_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_760_p1 = mul8_12_reg_2828_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_760_p1 = mul8_11_reg_2793_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_760_p1 = mul8_10_reg_2788_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_760_p1 = mul8_9_reg_2753_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_760_p1 = mul8_8_reg_2748_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_760_p1 = mul8_7_reg_2713_pp0_iter8_reg;
    end else begin
        grp_fu_760_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_764_p0 = add11_1_10_reg_3073;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_764_p0 = add11_1_s_reg_3053;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_764_p0 = add11_1_9_reg_3033;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_764_p0 = add11_1_8_reg_3013;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_764_p0 = add11_1_7_reg_2993;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_764_p0 = add11_1_6_reg_2973;
    end else begin
        grp_fu_764_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_764_p1 = mul8_1_11_reg_2833_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_764_p1 = mul8_1_10_reg_2803_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_764_p1 = mul8_1_s_reg_2798_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_764_p1 = mul8_1_9_reg_2763_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_764_p1 = mul8_1_8_reg_2758_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_764_p1 = mul8_1_7_reg_2723_pp0_iter8_reg;
    end else begin
        grp_fu_764_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_768_p0 = add11_2_10_reg_3078;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_768_p0 = add11_2_s_reg_3058;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_768_p0 = add11_2_9_reg_3038;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_768_p0 = add11_2_8_reg_3018;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_768_p0 = add11_2_7_reg_2998;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_768_p0 = add11_2_6_reg_2978;
    end else begin
        grp_fu_768_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_768_p1 = mul8_2_11_reg_2838_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_768_p1 = mul8_2_10_reg_2813_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_768_p1 = mul8_2_s_reg_2808_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_768_p1 = mul8_2_9_reg_2773_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_768_p1 = mul8_2_8_reg_2768_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_768_p1 = mul8_2_7_reg_2733_pp0_iter8_reg;
    end else begin
        grp_fu_768_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_772_p0 = add11_3_10_reg_3083;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_772_p0 = add11_3_s_reg_3063;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_772_p0 = add11_3_9_reg_3043;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_772_p0 = add11_3_8_reg_3023;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_772_p0 = add11_3_7_reg_3003;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_772_p0 = add11_3_6_reg_2983;
    end else begin
        grp_fu_772_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_772_p1 = mul8_3_11_reg_2843_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_772_p1 = mul8_3_10_reg_2823_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_772_p1 = mul8_3_s_reg_2818_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_772_p1 = mul8_3_9_reg_2783_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_772_p1 = mul8_3_8_reg_2778_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_772_p1 = mul8_3_7_reg_2743_pp0_iter8_reg;
    end else begin
        grp_fu_772_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_776_p0 = bitcast_ln36_12_fu_1823_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_776_p0 = bitcast_ln36_10_fu_1783_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_776_p0 = bitcast_ln36_8_fu_1715_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_776_p0 = bitcast_ln36_6_fu_1540_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_776_p0 = bitcast_ln36_4_fu_1394_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_776_p0 = bitcast_ln36_2_fu_1234_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_776_p0 = bitcast_ln36_fu_1093_p1;
    end else begin
        grp_fu_776_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_776_p1 = tmp_25;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_776_p1 = tmp_23;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_776_p1 = tmp_21;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_776_p1 = tmp_19;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_776_p1 = tmp_17;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_776_p1 = tmp_15;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_776_p1 = tmp;
    end else begin
        grp_fu_776_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_780_p0 = bitcast_ln36_25_fu_1828_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_780_p0 = bitcast_ln36_11_fu_1788_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_780_p0 = bitcast_ln36_9_fu_1720_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_780_p0 = bitcast_ln36_7_fu_1545_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_780_p0 = bitcast_ln36_5_fu_1399_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_780_p0 = bitcast_ln36_3_fu_1239_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_780_p0 = bitcast_ln36_1_fu_1098_p1;
    end else begin
        grp_fu_780_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_780_p1 = tmp_25;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_780_p1 = tmp_24;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_780_p1 = tmp_22;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_780_p1 = tmp_20;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_780_p1 = tmp_18;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_780_p1 = tmp_16;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_780_p1 = tmp_s;
    end else begin
        grp_fu_780_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_784_p0 = bitcast_ln36_38_fu_1833_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_784_p0 = bitcast_ln36_23_fu_1793_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_784_p0 = bitcast_ln36_21_fu_1729_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_784_p0 = bitcast_ln36_19_fu_1555_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_784_p0 = bitcast_ln36_17_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_784_p0 = bitcast_ln36_15_fu_1244_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_784_p0 = bitcast_ln36_13_fu_1114_p1;
    end else begin
        grp_fu_784_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_784_p1 = tmp_25;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_784_p1 = tmp_23;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_784_p1 = tmp_21;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_784_p1 = tmp_19;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_784_p1 = tmp_17;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_784_p1 = tmp_15;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_784_p1 = tmp;
    end else begin
        grp_fu_784_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_788_p0 = bitcast_ln36_51_fu_1838_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_788_p0 = bitcast_ln36_24_fu_1798_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_788_p0 = bitcast_ln36_22_fu_1734_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_788_p0 = bitcast_ln36_20_fu_1560_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_788_p0 = bitcast_ln36_18_fu_1420_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_788_p0 = bitcast_ln36_16_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_788_p0 = bitcast_ln36_14_fu_1119_p1;
    end else begin
        grp_fu_788_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_788_p1 = tmp_25;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_788_p1 = tmp_24;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_788_p1 = tmp_22;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_788_p1 = tmp_20;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_788_p1 = tmp_18;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_788_p1 = tmp_16;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_788_p1 = tmp_s;
    end else begin
        grp_fu_788_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_792_p0 = bitcast_ln36_36_fu_1803_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_792_p0 = bitcast_ln36_34_fu_1743_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_792_p0 = bitcast_ln36_32_fu_1605_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_792_p0 = bitcast_ln36_30_fu_1460_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_792_p0 = bitcast_ln36_28_fu_1294_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_792_p0 = bitcast_ln36_26_fu_1154_p1;
    end else begin
        grp_fu_792_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_792_p1 = tmp_23;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_792_p1 = tmp_21;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_792_p1 = tmp_19;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_792_p1 = tmp_17;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_792_p1 = tmp_15;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_792_p1 = tmp;
    end else begin
        grp_fu_792_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_796_p0 = bitcast_ln36_37_fu_1808_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_796_p0 = bitcast_ln36_35_fu_1748_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_796_p0 = bitcast_ln36_33_fu_1610_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_796_p0 = bitcast_ln36_31_fu_1465_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_796_p0 = bitcast_ln36_29_fu_1299_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_796_p0 = bitcast_ln36_27_fu_1159_p1;
    end else begin
        grp_fu_796_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_796_p1 = tmp_24;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_796_p1 = tmp_22;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_796_p1 = tmp_20;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_796_p1 = tmp_18;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_796_p1 = tmp_16;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_796_p1 = tmp_s;
    end else begin
        grp_fu_796_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_800_p0 = bitcast_ln36_49_fu_1813_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_800_p0 = bitcast_ln36_47_fu_1763_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_800_p0 = bitcast_ln36_45_fu_1655_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_800_p0 = bitcast_ln36_43_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_800_p0 = bitcast_ln36_41_fu_1344_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_800_p0 = bitcast_ln36_39_fu_1194_p1;
    end else begin
        grp_fu_800_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_800_p1 = tmp_23;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_800_p1 = tmp_21;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_800_p1 = tmp_19;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_800_p1 = tmp_17;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_800_p1 = tmp_15;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_800_p1 = tmp;
    end else begin
        grp_fu_800_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_804_p0 = bitcast_ln36_50_fu_1818_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_804_p0 = bitcast_ln36_48_fu_1768_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_804_p0 = bitcast_ln36_46_fu_1660_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_804_p0 = bitcast_ln36_44_fu_1505_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_804_p0 = bitcast_ln36_42_fu_1349_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_804_p0 = bitcast_ln36_40_fu_1199_p1;
    end else begin
        grp_fu_804_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_804_p1 = tmp_24;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_804_p1 = tmp_22;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_804_p1 = tmp_20;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_804_p1 = tmp_18;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_804_p1 = tmp_16;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_804_p1 = tmp_s;
    end else begin
        grp_fu_804_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_0_address0_local = zext_ln36_3_fu_1725_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_0_address0_local = zext_ln36_13_fu_1600_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_0_address0_local = zext_ln36_2_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_0_address0_local = zext_ln36_9_fu_1289_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_0_address0_local = zext_ln36_1_fu_1108_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_0_address0_local = zext_ln36_5_fu_1008_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_address0_local = zext_ln36_28_fu_988_p1;
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights1_0_address1_local = zext_ln36_24_fu_1630_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights1_0_address1_local = zext_ln36_36_fu_1535_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights1_0_address1_local = zext_ln36_20_fu_1319_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights1_0_address1_local = zext_ln36_32_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights1_0_address1_local = zext_ln36_16_fu_1028_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights1_0_address1_local = zext_ln36_fu_921_p1;
        end else begin
            weights1_0_address1_local = 'bx;
        end
    end else begin
        weights1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_0_ce1_local = 1'b1;
    end else begin
        weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_1_address0_local = zext_ln36_14_fu_1739_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_1_address0_local = zext_ln36_25_fu_1650_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_1_address0_local = zext_ln36_2_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_1_address0_local = zext_ln36_21_fu_1339_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_1_address0_local = zext_ln36_1_fu_1108_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_1_address0_local = zext_ln36_17_fu_1048_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_1_address0_local = zext_ln36_4_fu_927_p1;
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights1_1_address1_local = zext_ln36_37_fu_1680_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights1_1_address1_local = zext_ln36_10_fu_1430_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights1_1_address1_local = zext_ln36_33_fu_1369_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights1_1_address1_local = zext_ln36_6_fu_1129_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights1_1_address1_local = zext_ln36_29_fu_1068_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights1_1_address1_local = zext_ln36_fu_921_p1;
        end else begin
            weights1_1_address1_local = 'bx;
        end
    end else begin
        weights1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_1_ce1_local = 1'b1;
    end else begin
        weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_2_address0_local = zext_ln36_26_fu_1758_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_2_address0_local = zext_ln36_2_reg_2302;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_2_address0_local = zext_ln36_11_fu_1450_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_2_address0_local = zext_ln36_1_reg_2136;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_2_address0_local = zext_ln36_7_fu_1149_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_2_address0_local = zext_ln36_reg_2021;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_2_address0_local = zext_ln36_15_fu_947_p1;
    end else begin
        weights1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights1_2_address1_local = zext_ln36_38_fu_1700_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights1_2_address1_local = zext_ln36_22_fu_1475_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights1_2_address1_local = zext_ln36_34_fu_1389_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights1_2_address1_local = zext_ln36_18_fu_1169_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights1_2_address1_local = zext_ln36_30_fu_1088_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights1_2_address1_local = zext_ln36_4_fu_927_p1;
        end else begin
            weights1_2_address1_local = 'bx;
        end
    end else begin
        weights1_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_2_ce0_local = 1'b1;
    end else begin
        weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_2_ce1_local = 1'b1;
    end else begin
        weights1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_3_address0_local = zext_ln36_39_fu_1778_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights1_3_address0_local = zext_ln36_2_reg_2302;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights1_3_address0_local = zext_ln36_23_fu_1495_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights1_3_address0_local = zext_ln36_1_reg_2136;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_3_address0_local = zext_ln36_19_fu_1189_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_3_address0_local = zext_ln36_reg_2021;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_3_address0_local = zext_ln36_27_fu_968_p1;
    end else begin
        weights1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights1_3_address1_local = zext_ln36_12_fu_1580_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights1_3_address1_local = zext_ln36_35_fu_1515_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights1_3_address1_local = zext_ln36_8_fu_1269_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights1_3_address1_local = zext_ln36_31_fu_1209_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights1_3_address1_local = zext_ln36_4_reg_2037;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights1_3_address1_local = zext_ln36_15_fu_947_p1;
        end else begin
            weights1_3_address1_local = 'bx;
        end
    end else begin
        weights1_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_3_ce0_local = 1'b1;
    end else begin
        weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights1_3_ce1_local = 1'b1;
    end else begin
        weights1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to16 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to14 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter15_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign activations_0_address0 = zext_ln32_fu_1843_p1;
assign activations_0_ce0 = activations_0_ce0_local;
assign activations_0_d0 = add11_12_reg_3088;
assign activations_0_we0 = activations_0_we0_local;
assign activations_1_address0 = zext_ln32_fu_1843_p1;
assign activations_1_ce0 = activations_1_ce0_local;
assign activations_1_d0 = add11_1_11_reg_3093;
assign activations_1_we0 = activations_1_we0_local;
assign activations_2_address0 = zext_ln32_fu_1843_p1;
assign activations_2_ce0 = activations_2_ce0_local;
assign activations_2_d0 = add11_2_11_reg_3098;
assign activations_2_we0 = activations_2_we0_local;
assign activations_3_address0 = zext_ln32_fu_1843_p1;
assign activations_3_ce0 = activations_3_ce0_local;
assign activations_3_d0 = add11_3_11_reg_3103;
assign activations_3_we0 = activations_3_we0_local;
assign add_ln33_fu_1705_p2 = (j_1_reg_1961 + 7'd4);
assign add_ln36_10_fu_1565_p2 = (empty_reg_1971 + 10'd10);
assign add_ln36_11_fu_1585_p2 = (empty_reg_1971 + 10'd11);
assign add_ln36_12_fu_1455_p2 = (lshr_ln8_reg_2001 + 8'd3);
assign add_ln36_13_fu_1013_p2 = (empty_reg_1971 + 10'd15);
assign add_ln36_14_fu_1033_p2 = (empty_reg_1971 + 10'd16);
assign add_ln36_15_fu_1164_p2 = (lshr_ln36_8_reg_2052 + 8'd1);
assign add_ln36_16_fu_1174_p2 = (empty_reg_1971 + 10'd18);
assign add_ln36_17_fu_1304_p2 = (empty_reg_1971 + 10'd19);
assign add_ln36_18_fu_1324_p2 = (empty_reg_1971 + 10'd20);
assign add_ln36_19_fu_1470_p2 = (lshr_ln36_8_reg_2052 + 8'd2);
assign add_ln36_1_fu_1404_p2 = (mul_ln36_reg_2014 + 8'd2);
assign add_ln36_20_fu_1480_p2 = (empty_reg_1971 + 10'd22);
assign add_ln36_21_fu_1615_p2 = (empty_reg_1971 + 10'd23);
assign add_ln36_22_fu_1635_p2 = (empty_reg_1971 + 10'd24);
assign add_ln36_23_fu_1753_p2 = (lshr_ln36_8_reg_2052 + 8'd3);
assign add_ln36_24_fu_973_p2 = (empty_reg_1971 + 10'd27);
assign add_ln36_25_fu_1053_p2 = (empty_reg_1971 + 10'd28);
assign add_ln36_26_fu_1073_p2 = (empty_reg_1971 + 10'd29);
assign add_ln36_27_fu_1204_p2 = (lshr_ln36_16_reg_2069 + 8'd1);
assign add_ln36_28_fu_1214_p2 = (empty_reg_1971 + 10'd31);
assign add_ln36_29_fu_1354_p2 = (empty_reg_1971 + 10'd32);
assign add_ln36_2_fu_1550_p2 = (mul_ln36_reg_2014 + 8'd3);
assign add_ln36_30_fu_1374_p2 = (empty_reg_1971 + 10'd33);
assign add_ln36_31_fu_1510_p2 = (lshr_ln36_16_reg_2069 + 8'd2);
assign add_ln36_32_fu_1520_p2 = (empty_reg_1971 + 10'd35);
assign add_ln36_33_fu_1665_p2 = (empty_reg_1971 + 10'd36);
assign add_ln36_34_fu_1685_p2 = (empty_reg_1971 + 10'd37);
assign add_ln36_35_fu_1773_p2 = (lshr_ln36_16_reg_2069 + 8'd3);
assign add_ln36_3_fu_993_p2 = (empty_reg_1971 + 10'd3);
assign add_ln36_4_fu_1124_p2 = (lshr_ln8_reg_2001 + 8'd1);
assign add_ln36_5_fu_1134_p2 = (empty_reg_1971 + 10'd5);
assign add_ln36_6_fu_1254_p2 = (empty_reg_1971 + 10'd6);
assign add_ln36_7_fu_1274_p2 = (empty_reg_1971 + 10'd7);
assign add_ln36_8_fu_1425_p2 = (lshr_ln8_reg_2001 + 8'd2);
assign add_ln36_9_fu_1435_p2 = (empty_reg_1971 + 10'd9);
assign add_ln36_fu_1103_p2 = (mul_ln36_reg_2014 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_10_fu_1783_p1 = reg_823;
assign bitcast_ln36_11_fu_1788_p1 = reg_833;
assign bitcast_ln36_12_fu_1823_p1 = reg_808;
assign bitcast_ln36_13_fu_1114_p1 = reg_818;
assign bitcast_ln36_14_fu_1119_p1 = reg_823;
assign bitcast_ln36_15_fu_1244_p1 = reg_838;
assign bitcast_ln36_16_fu_1249_p1 = reg_808;
assign bitcast_ln36_17_fu_1415_p1 = reg_818;
assign bitcast_ln36_18_fu_1420_p1 = reg_823;
assign bitcast_ln36_19_fu_1555_p1 = reg_838;
assign bitcast_ln36_1_fu_1098_p1 = reg_813;
assign bitcast_ln36_20_fu_1560_p1 = reg_808;
assign bitcast_ln36_21_fu_1729_p1 = reg_818;
assign bitcast_ln36_22_fu_1734_p1 = reg_823;
assign bitcast_ln36_23_fu_1793_p1 = reg_838;
assign bitcast_ln36_24_fu_1798_p1 = reg_808;
assign bitcast_ln36_25_fu_1828_p1 = reg_813;
assign bitcast_ln36_26_fu_1154_p1 = reg_828;
assign bitcast_ln36_27_fu_1159_p1 = reg_833;
assign bitcast_ln36_28_fu_1294_p1 = reg_843;
assign bitcast_ln36_29_fu_1299_p1 = reg_813;
assign bitcast_ln36_2_fu_1234_p1 = reg_823;
assign bitcast_ln36_30_fu_1460_p1 = reg_828;
assign bitcast_ln36_31_fu_1465_p1 = reg_833;
assign bitcast_ln36_32_fu_1605_p1 = reg_843;
assign bitcast_ln36_33_fu_1610_p1 = reg_813;
assign bitcast_ln36_34_fu_1743_p1 = reg_828;
assign bitcast_ln36_35_fu_1748_p1 = reg_833;
assign bitcast_ln36_36_fu_1803_p1 = reg_843;
assign bitcast_ln36_37_fu_1808_p1 = reg_813;
assign bitcast_ln36_38_fu_1833_p1 = reg_823;
assign bitcast_ln36_39_fu_1194_p1 = reg_838;
assign bitcast_ln36_3_fu_1239_p1 = reg_833;
assign bitcast_ln36_40_fu_1199_p1 = reg_843;
assign bitcast_ln36_41_fu_1344_p1 = reg_818;
assign bitcast_ln36_42_fu_1349_p1 = reg_828;
assign bitcast_ln36_43_fu_1500_p1 = reg_838;
assign bitcast_ln36_44_fu_1505_p1 = reg_843;
assign bitcast_ln36_45_fu_1655_p1 = reg_818;
assign bitcast_ln36_46_fu_1660_p1 = reg_828;
assign bitcast_ln36_47_fu_1763_p1 = reg_838;
assign bitcast_ln36_48_fu_1768_p1 = reg_843;
assign bitcast_ln36_49_fu_1813_p1 = reg_818;
assign bitcast_ln36_4_fu_1394_p1 = reg_808;
assign bitcast_ln36_50_fu_1818_p1 = reg_828;
assign bitcast_ln36_51_fu_1838_p1 = reg_833;
assign bitcast_ln36_5_fu_1399_p1 = reg_813;
assign bitcast_ln36_6_fu_1540_p1 = reg_823;
assign bitcast_ln36_7_fu_1545_p1 = reg_833;
assign bitcast_ln36_8_fu_1715_p1 = reg_808;
assign bitcast_ln36_9_fu_1720_p1 = reg_813;
assign bitcast_ln36_fu_1093_p1 = reg_808;
assign empty_37_fu_932_p2 = (empty_reg_1971 + 10'd13);
assign empty_38_fu_953_p2 = (empty_reg_1971 + 10'd26);
assign empty_fu_886_p0 = empty_fu_886_p00;
assign empty_fu_886_p00 = or_ln_fu_874_p3;
assign empty_fu_886_p1 = 10'd13;
assign grp_fu_1770_p_ce = 1'b1;
assign grp_fu_1770_p_din0 = grp_fu_740_p0;
assign grp_fu_1770_p_din1 = grp_fu_740_p1;
assign grp_fu_1770_p_opcode = 2'd0;
assign grp_fu_1774_p_ce = 1'b1;
assign grp_fu_1774_p_din0 = grp_fu_745_p0;
assign grp_fu_1774_p_din1 = grp_fu_745_p1;
assign grp_fu_1774_p_opcode = 2'd0;
assign grp_fu_1778_p_ce = 1'b1;
assign grp_fu_1778_p_din0 = grp_fu_750_p0;
assign grp_fu_1778_p_din1 = grp_fu_750_p1;
assign grp_fu_1778_p_opcode = 2'd0;
assign grp_fu_1782_p_ce = 1'b1;
assign grp_fu_1782_p_din0 = grp_fu_755_p0;
assign grp_fu_1782_p_din1 = grp_fu_755_p1;
assign grp_fu_1782_p_opcode = 2'd0;
assign grp_fu_1786_p_ce = 1'b1;
assign grp_fu_1786_p_din0 = grp_fu_760_p0;
assign grp_fu_1786_p_din1 = grp_fu_760_p1;
assign grp_fu_1786_p_opcode = 2'd0;
assign grp_fu_1790_p_ce = 1'b1;
assign grp_fu_1790_p_din0 = grp_fu_764_p0;
assign grp_fu_1790_p_din1 = grp_fu_764_p1;
assign grp_fu_1790_p_opcode = 2'd0;
assign grp_fu_1794_p_ce = 1'b1;
assign grp_fu_1794_p_din0 = grp_fu_776_p0;
assign grp_fu_1794_p_din1 = grp_fu_776_p1;
assign grp_fu_1798_p_ce = 1'b1;
assign grp_fu_1798_p_din0 = grp_fu_780_p0;
assign grp_fu_1798_p_din1 = grp_fu_780_p1;
assign grp_fu_1802_p_ce = 1'b1;
assign grp_fu_1802_p_din0 = grp_fu_784_p0;
assign grp_fu_1802_p_din1 = grp_fu_784_p1;
assign grp_fu_1806_p_ce = 1'b1;
assign grp_fu_1806_p_din0 = grp_fu_788_p0;
assign grp_fu_1806_p_din1 = grp_fu_788_p1;
assign grp_fu_1810_p_ce = 1'b1;
assign grp_fu_1810_p_din0 = grp_fu_792_p0;
assign grp_fu_1810_p_din1 = grp_fu_792_p1;
assign grp_fu_1814_p_ce = 1'b1;
assign grp_fu_1814_p_din0 = grp_fu_796_p0;
assign grp_fu_1814_p_din1 = grp_fu_796_p1;
assign grp_fu_1818_p_ce = 1'b1;
assign grp_fu_1818_p_din0 = grp_fu_800_p0;
assign grp_fu_1818_p_din1 = grp_fu_800_p1;
assign grp_fu_1822_p_ce = 1'b1;
assign grp_fu_1822_p_din0 = grp_fu_804_p0;
assign grp_fu_1822_p_din1 = grp_fu_804_p1;
assign lshr_ln36_10_fu_1179_p4 = {{add_ln36_16_fu_1174_p2[9:2]}};
assign lshr_ln36_11_fu_1309_p4 = {{add_ln36_17_fu_1304_p2[9:2]}};
assign lshr_ln36_12_fu_1329_p4 = {{add_ln36_18_fu_1324_p2[9:2]}};
assign lshr_ln36_13_fu_1485_p4 = {{add_ln36_20_fu_1480_p2[9:2]}};
assign lshr_ln36_14_fu_1620_p4 = {{add_ln36_21_fu_1615_p2[9:2]}};
assign lshr_ln36_15_fu_1640_p4 = {{add_ln36_22_fu_1635_p2[9:2]}};
assign lshr_ln36_16_fu_958_p4 = {{empty_38_fu_953_p2[9:2]}};
assign lshr_ln36_17_fu_978_p4 = {{add_ln36_24_fu_973_p2[9:2]}};
assign lshr_ln36_18_fu_1058_p4 = {{add_ln36_25_fu_1053_p2[9:2]}};
assign lshr_ln36_19_fu_1078_p4 = {{add_ln36_26_fu_1073_p2[9:2]}};
assign lshr_ln36_1_fu_998_p4 = {{add_ln36_3_fu_993_p2[9:2]}};
assign lshr_ln36_20_fu_1219_p4 = {{add_ln36_28_fu_1214_p2[9:2]}};
assign lshr_ln36_21_fu_1359_p4 = {{add_ln36_29_fu_1354_p2[9:2]}};
assign lshr_ln36_22_fu_1379_p4 = {{add_ln36_30_fu_1374_p2[9:2]}};
assign lshr_ln36_23_fu_1525_p4 = {{add_ln36_32_fu_1520_p2[9:2]}};
assign lshr_ln36_24_fu_1670_p4 = {{add_ln36_33_fu_1665_p2[9:2]}};
assign lshr_ln36_25_fu_1690_p4 = {{add_ln36_34_fu_1685_p2[9:2]}};
assign lshr_ln36_2_fu_1139_p4 = {{add_ln36_5_fu_1134_p2[9:2]}};
assign lshr_ln36_3_fu_1259_p4 = {{add_ln36_6_fu_1254_p2[9:2]}};
assign lshr_ln36_4_fu_1279_p4 = {{add_ln36_7_fu_1274_p2[9:2]}};
assign lshr_ln36_5_fu_1440_p4 = {{add_ln36_9_fu_1435_p2[9:2]}};
assign lshr_ln36_6_fu_1570_p4 = {{add_ln36_10_fu_1565_p2[9:2]}};
assign lshr_ln36_7_fu_1590_p4 = {{add_ln36_11_fu_1585_p2[9:2]}};
assign lshr_ln36_8_fu_937_p4 = {{empty_37_fu_932_p2[9:2]}};
assign lshr_ln36_9_fu_1018_p4 = {{add_ln36_13_fu_1013_p2[9:2]}};
assign lshr_ln36_s_fu_1038_p4 = {{add_ln36_14_fu_1033_p2[9:2]}};
assign lshr_ln7_fu_902_p4 = {{j_1_reg_1961[5:2]}};
assign mul_ln36_fu_915_p0 = mul_ln36_fu_915_p00;
assign mul_ln36_fu_915_p00 = lshr_ln7_fu_902_p4;
assign mul_ln36_fu_915_p1 = 8'd13;
assign or_ln_fu_874_p3 = {{tmp_2_fu_864_p4}, {1'd1}};
assign tmp_2_fu_864_p4 = {{ap_sig_allocacmp_j_1[5:1]}};
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_address1 = weights1_0_address1_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_ce1 = weights1_0_ce1_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_address1 = weights1_1_address1_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_ce1 = weights1_1_ce1_local;
assign weights1_2_address0 = weights1_2_address0_local;
assign weights1_2_address1 = weights1_2_address1_local;
assign weights1_2_ce0 = weights1_2_ce0_local;
assign weights1_2_ce1 = weights1_2_ce1_local;
assign weights1_3_address0 = weights1_3_address0_local;
assign weights1_3_address1 = weights1_3_address1_local;
assign weights1_3_ce0 = weights1_3_ce0_local;
assign weights1_3_ce1 = weights1_3_ce1_local;
assign zext_ln32_fu_1843_p1 = lshr_ln7_reg_2009_pp0_iter16_reg;
assign zext_ln36_10_fu_1430_p1 = add_ln36_8_fu_1425_p2;
assign zext_ln36_11_fu_1450_p1 = lshr_ln36_5_fu_1440_p4;
assign zext_ln36_12_fu_1580_p1 = lshr_ln36_6_fu_1570_p4;
assign zext_ln36_13_fu_1600_p1 = lshr_ln36_7_fu_1590_p4;
assign zext_ln36_14_fu_1739_p1 = add_ln36_12_reg_2338;
assign zext_ln36_15_fu_947_p1 = lshr_ln36_8_fu_937_p4;
assign zext_ln36_16_fu_1028_p1 = lshr_ln36_9_fu_1018_p4;
assign zext_ln36_17_fu_1048_p1 = lshr_ln36_s_fu_1038_p4;
assign zext_ln36_18_fu_1169_p1 = add_ln36_15_fu_1164_p2;
assign zext_ln36_19_fu_1189_p1 = lshr_ln36_10_fu_1179_p4;
assign zext_ln36_1_fu_1108_p1 = add_ln36_fu_1103_p2;
assign zext_ln36_20_fu_1319_p1 = lshr_ln36_11_fu_1309_p4;
assign zext_ln36_21_fu_1339_p1 = lshr_ln36_12_fu_1329_p4;
assign zext_ln36_22_fu_1475_p1 = add_ln36_19_fu_1470_p2;
assign zext_ln36_23_fu_1495_p1 = lshr_ln36_13_fu_1485_p4;
assign zext_ln36_24_fu_1630_p1 = lshr_ln36_14_fu_1620_p4;
assign zext_ln36_25_fu_1650_p1 = lshr_ln36_15_fu_1640_p4;
assign zext_ln36_26_fu_1758_p1 = add_ln36_23_fu_1753_p2;
assign zext_ln36_27_fu_968_p1 = lshr_ln36_16_fu_958_p4;
assign zext_ln36_28_fu_988_p1 = lshr_ln36_17_fu_978_p4;
assign zext_ln36_29_fu_1068_p1 = lshr_ln36_18_fu_1058_p4;
assign zext_ln36_2_fu_1409_p1 = add_ln36_1_fu_1404_p2;
assign zext_ln36_30_fu_1088_p1 = lshr_ln36_19_fu_1078_p4;
assign zext_ln36_31_fu_1209_p1 = add_ln36_27_fu_1204_p2;
assign zext_ln36_32_fu_1229_p1 = lshr_ln36_20_fu_1219_p4;
assign zext_ln36_33_fu_1369_p1 = lshr_ln36_21_fu_1359_p4;
assign zext_ln36_34_fu_1389_p1 = lshr_ln36_22_fu_1379_p4;
assign zext_ln36_35_fu_1515_p1 = add_ln36_31_fu_1510_p2;
assign zext_ln36_36_fu_1535_p1 = lshr_ln36_23_fu_1525_p4;
assign zext_ln36_37_fu_1680_p1 = lshr_ln36_24_fu_1670_p4;
assign zext_ln36_38_fu_1700_p1 = lshr_ln36_25_fu_1690_p4;
assign zext_ln36_39_fu_1778_p1 = add_ln36_35_fu_1773_p2;
assign zext_ln36_3_fu_1725_p1 = add_ln36_2_reg_2403;
assign zext_ln36_4_fu_927_p1 = lshr_ln8_reg_2001;
assign zext_ln36_5_fu_1008_p1 = lshr_ln36_1_fu_998_p4;
assign zext_ln36_6_fu_1129_p1 = add_ln36_4_fu_1124_p2;
assign zext_ln36_7_fu_1149_p1 = lshr_ln36_2_fu_1139_p4;
assign zext_ln36_8_fu_1269_p1 = lshr_ln36_3_fu_1259_p4;
assign zext_ln36_9_fu_1289_p1 = lshr_ln36_4_fu_1279_p4;
assign zext_ln36_fu_921_p1 = mul_ln36_fu_915_p2;
always @ (posedge ap_clk) begin
    zext_ln36_reg_2021[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln36_4_reg_2037[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln36_1_reg_2136[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln36_2_reg_2302[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 