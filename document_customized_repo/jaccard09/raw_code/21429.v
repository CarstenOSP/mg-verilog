module backprop_update_weights_32_33_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_31_address0,weights2_31_ce0,weights2_31_we0,weights2_31_d0,weights2_31_q0,weights2_30_address0,weights2_30_ce0,weights2_30_we0,weights2_30_d0,weights2_30_q0,weights2_29_address0,weights2_29_ce0,weights2_29_we0,weights2_29_d0,weights2_29_q0,weights2_28_address0,weights2_28_ce0,weights2_28_we0,weights2_28_d0,weights2_28_q0,weights2_27_address0,weights2_27_ce0,weights2_27_we0,weights2_27_d0,weights2_27_q0,weights2_26_address0,weights2_26_ce0,weights2_26_we0,weights2_26_d0,weights2_26_q0,weights2_25_address0,weights2_25_ce0,weights2_25_we0,weights2_25_d0,weights2_25_q0,weights2_24_address0,weights2_24_ce0,weights2_24_we0,weights2_24_d0,weights2_24_q0,weights2_23_address0,weights2_23_ce0,weights2_23_we0,weights2_23_d0,weights2_23_q0,weights2_22_address0,weights2_22_ce0,weights2_22_we0,weights2_22_d0,weights2_22_q0,weights2_21_address0,weights2_21_ce0,weights2_21_we0,weights2_21_d0,weights2_21_q0,weights2_20_address0,weights2_20_ce0,weights2_20_we0,weights2_20_d0,weights2_20_q0,weights2_19_address0,weights2_19_ce0,weights2_19_we0,weights2_19_d0,weights2_19_q0,weights2_18_address0,weights2_18_ce0,weights2_18_we0,weights2_18_d0,weights2_18_q0,weights2_17_address0,weights2_17_ce0,weights2_17_we0,weights2_17_d0,weights2_17_q0,weights2_16_address0,weights2_16_ce0,weights2_16_we0,weights2_16_d0,weights2_16_q0,weights2_15_address0,weights2_15_ce0,weights2_15_we0,weights2_15_d0,weights2_15_q0,weights2_14_address0,weights2_14_ce0,weights2_14_we0,weights2_14_d0,weights2_14_q0,weights2_13_address0,weights2_13_ce0,weights2_13_we0,weights2_13_d0,weights2_13_q0,weights2_12_address0,weights2_12_ce0,weights2_12_we0,weights2_12_d0,weights2_12_q0,weights2_11_address0,weights2_11_ce0,weights2_11_we0,weights2_11_d0,weights2_11_q0,weights2_10_address0,weights2_10_ce0,weights2_10_we0,weights2_10_d0,weights2_10_q0,weights2_9_address0,weights2_9_ce0,weights2_9_we0,weights2_9_d0,weights2_9_q0,weights2_8_address0,weights2_8_ce0,weights2_8_we0,weights2_8_d0,weights2_8_q0,weights2_7_address0,weights2_7_ce0,weights2_7_we0,weights2_7_d0,weights2_7_q0,weights2_6_address0,weights2_6_ce0,weights2_6_we0,weights2_6_d0,weights2_6_q0,weights2_5_address0,weights2_5_ce0,weights2_5_we0,weights2_5_d0,weights2_5_q0,weights2_4_address0,weights2_4_ce0,weights2_4_we0,weights2_4_d0,weights2_4_q0,weights2_3_address0,weights2_3_ce0,weights2_3_we0,weights2_3_d0,weights2_3_q0,weights2_2_address0,weights2_2_ce0,weights2_2_we0,weights2_2_d0,weights2_2_q0,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,d_weights2_0_address0,d_weights2_0_ce0,d_weights2_0_q0,d_weights2_2_address0,d_weights2_2_ce0,d_weights2_2_q0,d_weights2_4_address0,d_weights2_4_ce0,d_weights2_4_q0,d_weights2_6_address0,d_weights2_6_ce0,d_weights2_6_q0,d_weights2_8_address0,d_weights2_8_ce0,d_weights2_8_q0,d_weights2_10_address0,d_weights2_10_ce0,d_weights2_10_q0,d_weights2_12_address0,d_weights2_12_ce0,d_weights2_12_q0,d_weights2_14_address0,d_weights2_14_ce0,d_weights2_14_q0,d_weights2_16_address0,d_weights2_16_ce0,d_weights2_16_q0,d_weights2_18_address0,d_weights2_18_ce0,d_weights2_18_q0,d_weights2_20_address0,d_weights2_20_ce0,d_weights2_20_q0,d_weights2_22_address0,d_weights2_22_ce0,d_weights2_22_q0,d_weights2_24_address0,d_weights2_24_ce0,d_weights2_24_q0,d_weights2_26_address0,d_weights2_26_ce0,d_weights2_26_q0,d_weights2_28_address0,d_weights2_28_ce0,d_weights2_28_q0,d_weights2_30_address0,d_weights2_30_ce0,d_weights2_30_q0,d_weights2_1_address0,d_weights2_1_ce0,d_weights2_1_q0,d_weights2_3_address0,d_weights2_3_ce0,d_weights2_3_q0,d_weights2_5_address0,d_weights2_5_ce0,d_weights2_5_q0,d_weights2_7_address0,d_weights2_7_ce0,d_weights2_7_q0,d_weights2_9_address0,d_weights2_9_ce0,d_weights2_9_q0,d_weights2_11_address0,d_weights2_11_ce0,d_weights2_11_q0,d_weights2_13_address0,d_weights2_13_ce0,d_weights2_13_q0,d_weights2_15_address0,d_weights2_15_ce0,d_weights2_15_q0,d_weights2_17_address0,d_weights2_17_ce0,d_weights2_17_q0,d_weights2_19_address0,d_weights2_19_ce0,d_weights2_19_q0,d_weights2_21_address0,d_weights2_21_ce0,d_weights2_21_q0,d_weights2_23_address0,d_weights2_23_ce0,d_weights2_23_q0,d_weights2_25_address0,d_weights2_25_ce0,d_weights2_25_q0,d_weights2_27_address0,d_weights2_27_ce0,d_weights2_27_q0,d_weights2_29_address0,d_weights2_29_ce0,d_weights2_29_q0,d_weights2_31_address0,d_weights2_31_ce0,d_weights2_31_q0,norm_5_out,norm_5_out_ap_vld,grp_fu_1939_p_din0,grp_fu_1939_p_din1,grp_fu_1939_p_opcode,grp_fu_1939_p_dout0,grp_fu_1939_p_ce,grp_fu_1943_p_din0,grp_fu_1943_p_din1,grp_fu_1943_p_dout0,grp_fu_1943_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] weights2_31_address0;
output   weights2_31_ce0;
output   weights2_31_we0;
output  [63:0] weights2_31_d0;
input  [63:0] weights2_31_q0;
output  [6:0] weights2_30_address0;
output   weights2_30_ce0;
output   weights2_30_we0;
output  [63:0] weights2_30_d0;
input  [63:0] weights2_30_q0;
output  [6:0] weights2_29_address0;
output   weights2_29_ce0;
output   weights2_29_we0;
output  [63:0] weights2_29_d0;
input  [63:0] weights2_29_q0;
output  [6:0] weights2_28_address0;
output   weights2_28_ce0;
output   weights2_28_we0;
output  [63:0] weights2_28_d0;
input  [63:0] weights2_28_q0;
output  [6:0] weights2_27_address0;
output   weights2_27_ce0;
output   weights2_27_we0;
output  [63:0] weights2_27_d0;
input  [63:0] weights2_27_q0;
output  [6:0] weights2_26_address0;
output   weights2_26_ce0;
output   weights2_26_we0;
output  [63:0] weights2_26_d0;
input  [63:0] weights2_26_q0;
output  [6:0] weights2_25_address0;
output   weights2_25_ce0;
output   weights2_25_we0;
output  [63:0] weights2_25_d0;
input  [63:0] weights2_25_q0;
output  [6:0] weights2_24_address0;
output   weights2_24_ce0;
output   weights2_24_we0;
output  [63:0] weights2_24_d0;
input  [63:0] weights2_24_q0;
output  [6:0] weights2_23_address0;
output   weights2_23_ce0;
output   weights2_23_we0;
output  [63:0] weights2_23_d0;
input  [63:0] weights2_23_q0;
output  [6:0] weights2_22_address0;
output   weights2_22_ce0;
output   weights2_22_we0;
output  [63:0] weights2_22_d0;
input  [63:0] weights2_22_q0;
output  [6:0] weights2_21_address0;
output   weights2_21_ce0;
output   weights2_21_we0;
output  [63:0] weights2_21_d0;
input  [63:0] weights2_21_q0;
output  [6:0] weights2_20_address0;
output   weights2_20_ce0;
output   weights2_20_we0;
output  [63:0] weights2_20_d0;
input  [63:0] weights2_20_q0;
output  [6:0] weights2_19_address0;
output   weights2_19_ce0;
output   weights2_19_we0;
output  [63:0] weights2_19_d0;
input  [63:0] weights2_19_q0;
output  [6:0] weights2_18_address0;
output   weights2_18_ce0;
output   weights2_18_we0;
output  [63:0] weights2_18_d0;
input  [63:0] weights2_18_q0;
output  [6:0] weights2_17_address0;
output   weights2_17_ce0;
output   weights2_17_we0;
output  [63:0] weights2_17_d0;
input  [63:0] weights2_17_q0;
output  [6:0] weights2_16_address0;
output   weights2_16_ce0;
output   weights2_16_we0;
output  [63:0] weights2_16_d0;
input  [63:0] weights2_16_q0;
output  [6:0] weights2_15_address0;
output   weights2_15_ce0;
output   weights2_15_we0;
output  [63:0] weights2_15_d0;
input  [63:0] weights2_15_q0;
output  [6:0] weights2_14_address0;
output   weights2_14_ce0;
output   weights2_14_we0;
output  [63:0] weights2_14_d0;
input  [63:0] weights2_14_q0;
output  [6:0] weights2_13_address0;
output   weights2_13_ce0;
output   weights2_13_we0;
output  [63:0] weights2_13_d0;
input  [63:0] weights2_13_q0;
output  [6:0] weights2_12_address0;
output   weights2_12_ce0;
output   weights2_12_we0;
output  [63:0] weights2_12_d0;
input  [63:0] weights2_12_q0;
output  [6:0] weights2_11_address0;
output   weights2_11_ce0;
output   weights2_11_we0;
output  [63:0] weights2_11_d0;
input  [63:0] weights2_11_q0;
output  [6:0] weights2_10_address0;
output   weights2_10_ce0;
output   weights2_10_we0;
output  [63:0] weights2_10_d0;
input  [63:0] weights2_10_q0;
output  [6:0] weights2_9_address0;
output   weights2_9_ce0;
output   weights2_9_we0;
output  [63:0] weights2_9_d0;
input  [63:0] weights2_9_q0;
output  [6:0] weights2_8_address0;
output   weights2_8_ce0;
output   weights2_8_we0;
output  [63:0] weights2_8_d0;
input  [63:0] weights2_8_q0;
output  [6:0] weights2_7_address0;
output   weights2_7_ce0;
output   weights2_7_we0;
output  [63:0] weights2_7_d0;
input  [63:0] weights2_7_q0;
output  [6:0] weights2_6_address0;
output   weights2_6_ce0;
output   weights2_6_we0;
output  [63:0] weights2_6_d0;
input  [63:0] weights2_6_q0;
output  [6:0] weights2_5_address0;
output   weights2_5_ce0;
output   weights2_5_we0;
output  [63:0] weights2_5_d0;
input  [63:0] weights2_5_q0;
output  [6:0] weights2_4_address0;
output   weights2_4_ce0;
output   weights2_4_we0;
output  [63:0] weights2_4_d0;
input  [63:0] weights2_4_q0;
output  [6:0] weights2_3_address0;
output   weights2_3_ce0;
output   weights2_3_we0;
output  [63:0] weights2_3_d0;
input  [63:0] weights2_3_q0;
output  [6:0] weights2_2_address0;
output   weights2_2_ce0;
output   weights2_2_we0;
output  [63:0] weights2_2_d0;
input  [63:0] weights2_2_q0;
output  [6:0] weights2_1_address0;
output   weights2_1_ce0;
output   weights2_1_we0;
output  [63:0] weights2_1_d0;
input  [63:0] weights2_1_q0;
output  [6:0] weights2_0_address0;
output   weights2_0_ce0;
output   weights2_0_we0;
output  [63:0] weights2_0_d0;
input  [63:0] weights2_0_q0;
output  [6:0] d_weights2_0_address0;
output   d_weights2_0_ce0;
input  [63:0] d_weights2_0_q0;
output  [6:0] d_weights2_2_address0;
output   d_weights2_2_ce0;
input  [63:0] d_weights2_2_q0;
output  [6:0] d_weights2_4_address0;
output   d_weights2_4_ce0;
input  [63:0] d_weights2_4_q0;
output  [6:0] d_weights2_6_address0;
output   d_weights2_6_ce0;
input  [63:0] d_weights2_6_q0;
output  [6:0] d_weights2_8_address0;
output   d_weights2_8_ce0;
input  [63:0] d_weights2_8_q0;
output  [6:0] d_weights2_10_address0;
output   d_weights2_10_ce0;
input  [63:0] d_weights2_10_q0;
output  [6:0] d_weights2_12_address0;
output   d_weights2_12_ce0;
input  [63:0] d_weights2_12_q0;
output  [6:0] d_weights2_14_address0;
output   d_weights2_14_ce0;
input  [63:0] d_weights2_14_q0;
output  [6:0] d_weights2_16_address0;
output   d_weights2_16_ce0;
input  [63:0] d_weights2_16_q0;
output  [6:0] d_weights2_18_address0;
output   d_weights2_18_ce0;
input  [63:0] d_weights2_18_q0;
output  [6:0] d_weights2_20_address0;
output   d_weights2_20_ce0;
input  [63:0] d_weights2_20_q0;
output  [6:0] d_weights2_22_address0;
output   d_weights2_22_ce0;
input  [63:0] d_weights2_22_q0;
output  [6:0] d_weights2_24_address0;
output   d_weights2_24_ce0;
input  [63:0] d_weights2_24_q0;
output  [6:0] d_weights2_26_address0;
output   d_weights2_26_ce0;
input  [63:0] d_weights2_26_q0;
output  [6:0] d_weights2_28_address0;
output   d_weights2_28_ce0;
input  [63:0] d_weights2_28_q0;
output  [6:0] d_weights2_30_address0;
output   d_weights2_30_ce0;
input  [63:0] d_weights2_30_q0;
output  [6:0] d_weights2_1_address0;
output   d_weights2_1_ce0;
input  [63:0] d_weights2_1_q0;
output  [6:0] d_weights2_3_address0;
output   d_weights2_3_ce0;
input  [63:0] d_weights2_3_q0;
output  [6:0] d_weights2_5_address0;
output   d_weights2_5_ce0;
input  [63:0] d_weights2_5_q0;
output  [6:0] d_weights2_7_address0;
output   d_weights2_7_ce0;
input  [63:0] d_weights2_7_q0;
output  [6:0] d_weights2_9_address0;
output   d_weights2_9_ce0;
input  [63:0] d_weights2_9_q0;
output  [6:0] d_weights2_11_address0;
output   d_weights2_11_ce0;
input  [63:0] d_weights2_11_q0;
output  [6:0] d_weights2_13_address0;
output   d_weights2_13_ce0;
input  [63:0] d_weights2_13_q0;
output  [6:0] d_weights2_15_address0;
output   d_weights2_15_ce0;
input  [63:0] d_weights2_15_q0;
output  [6:0] d_weights2_17_address0;
output   d_weights2_17_ce0;
input  [63:0] d_weights2_17_q0;
output  [6:0] d_weights2_19_address0;
output   d_weights2_19_ce0;
input  [63:0] d_weights2_19_q0;
output  [6:0] d_weights2_21_address0;
output   d_weights2_21_ce0;
input  [63:0] d_weights2_21_q0;
output  [6:0] d_weights2_23_address0;
output   d_weights2_23_ce0;
input  [63:0] d_weights2_23_q0;
output  [6:0] d_weights2_25_address0;
output   d_weights2_25_ce0;
input  [63:0] d_weights2_25_q0;
output  [6:0] d_weights2_27_address0;
output   d_weights2_27_ce0;
input  [63:0] d_weights2_27_q0;
output  [6:0] d_weights2_29_address0;
output   d_weights2_29_ce0;
input  [63:0] d_weights2_29_q0;
output  [6:0] d_weights2_31_address0;
output   d_weights2_31_ce0;
input  [63:0] d_weights2_31_q0;
output  [63:0] norm_5_out;
output   norm_5_out_ap_vld;
output  [63:0] grp_fu_1939_p_din0;
output  [63:0] grp_fu_1939_p_din1;
output  [1:0] grp_fu_1939_p_opcode;
input  [63:0] grp_fu_1939_p_dout0;
output   grp_fu_1939_p_ce;
output  [63:0] grp_fu_1943_p_din0;
output  [63:0] grp_fu_1943_p_din1;
input  [63:0] grp_fu_1943_p_dout0;
output   grp_fu_1943_p_ce;
reg ap_idle;
reg norm_5_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln152_reg_1757;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln152_fu_1103_p2;
reg   [0:0] icmp_ln152_reg_1757_pp0_iter1_reg;
wire   [11:0] add_ln152_fu_1109_p2;
reg   [11:0] add_ln152_reg_1761;
reg   [6:0] i_4_load_reg_1766;
wire   [6:0] add_ln152_1_fu_1118_p2;
reg   [6:0] add_ln152_1_reg_1771;
wire   [6:0] select_ln121_fu_1135_p3;
reg   [6:0] select_ln121_reg_1776;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [6:0] select_ln152_fu_1143_p3;
reg   [6:0] select_ln152_reg_1781;
wire   [4:0] trunc_ln153_fu_1155_p1;
reg   [4:0] trunc_ln153_reg_1786;
reg   [4:0] trunc_ln153_reg_1786_pp0_iter1_reg;
reg   [6:0] weights2_0_addr_reg_1874;
reg   [6:0] weights2_0_addr_reg_1874_pp0_iter1_reg;
reg   [6:0] weights2_2_addr_reg_1879;
reg   [6:0] weights2_2_addr_reg_1879_pp0_iter1_reg;
reg   [6:0] weights2_4_addr_reg_1884;
reg   [6:0] weights2_4_addr_reg_1884_pp0_iter1_reg;
reg   [6:0] weights2_6_addr_reg_1889;
reg   [6:0] weights2_6_addr_reg_1889_pp0_iter1_reg;
reg   [6:0] weights2_8_addr_reg_1894;
reg   [6:0] weights2_8_addr_reg_1894_pp0_iter1_reg;
reg   [6:0] weights2_10_addr_reg_1899;
reg   [6:0] weights2_10_addr_reg_1899_pp0_iter1_reg;
reg   [6:0] weights2_12_addr_reg_1904;
reg   [6:0] weights2_12_addr_reg_1904_pp0_iter1_reg;
reg   [6:0] weights2_14_addr_reg_1909;
reg   [6:0] weights2_14_addr_reg_1909_pp0_iter1_reg;
reg   [6:0] weights2_16_addr_reg_1914;
reg   [6:0] weights2_16_addr_reg_1914_pp0_iter1_reg;
reg   [6:0] weights2_18_addr_reg_1919;
reg   [6:0] weights2_18_addr_reg_1919_pp0_iter1_reg;
reg   [6:0] weights2_20_addr_reg_1924;
reg   [6:0] weights2_20_addr_reg_1924_pp0_iter1_reg;
reg   [6:0] weights2_22_addr_reg_1929;
reg   [6:0] weights2_22_addr_reg_1929_pp0_iter1_reg;
reg   [6:0] weights2_24_addr_reg_1934;
reg   [6:0] weights2_24_addr_reg_1934_pp0_iter1_reg;
reg   [6:0] weights2_26_addr_reg_1939;
reg   [6:0] weights2_26_addr_reg_1939_pp0_iter1_reg;
reg   [6:0] weights2_28_addr_reg_1944;
reg   [6:0] weights2_28_addr_reg_1944_pp0_iter1_reg;
reg   [6:0] weights2_30_addr_reg_1949;
reg   [6:0] weights2_30_addr_reg_1949_pp0_iter1_reg;
reg   [6:0] weights2_1_addr_reg_2034;
reg   [6:0] weights2_1_addr_reg_2034_pp0_iter1_reg;
reg   [6:0] weights2_3_addr_reg_2039;
reg   [6:0] weights2_3_addr_reg_2039_pp0_iter1_reg;
reg   [6:0] weights2_5_addr_reg_2044;
reg   [6:0] weights2_5_addr_reg_2044_pp0_iter1_reg;
reg   [6:0] weights2_7_addr_reg_2049;
reg   [6:0] weights2_7_addr_reg_2049_pp0_iter1_reg;
reg   [6:0] weights2_9_addr_reg_2054;
reg   [6:0] weights2_9_addr_reg_2054_pp0_iter1_reg;
reg   [6:0] weights2_11_addr_reg_2059;
reg   [6:0] weights2_11_addr_reg_2059_pp0_iter1_reg;
reg   [6:0] weights2_13_addr_reg_2064;
reg   [6:0] weights2_13_addr_reg_2064_pp0_iter1_reg;
reg   [6:0] weights2_15_addr_reg_2069;
reg   [6:0] weights2_15_addr_reg_2069_pp0_iter1_reg;
reg   [6:0] weights2_17_addr_reg_2074;
reg   [6:0] weights2_17_addr_reg_2074_pp0_iter1_reg;
reg   [6:0] weights2_19_addr_reg_2079;
reg   [6:0] weights2_19_addr_reg_2079_pp0_iter1_reg;
reg   [6:0] weights2_21_addr_reg_2084;
reg   [6:0] weights2_21_addr_reg_2084_pp0_iter1_reg;
reg   [6:0] weights2_23_addr_reg_2089;
reg   [6:0] weights2_23_addr_reg_2089_pp0_iter1_reg;
reg   [6:0] weights2_25_addr_reg_2094;
reg   [6:0] weights2_25_addr_reg_2094_pp0_iter1_reg;
reg   [6:0] weights2_27_addr_reg_2099;
reg   [6:0] weights2_27_addr_reg_2099_pp0_iter1_reg;
reg   [6:0] weights2_29_addr_reg_2104;
reg   [6:0] weights2_29_addr_reg_2104_pp0_iter1_reg;
reg   [6:0] weights2_31_addr_reg_2109;
reg   [6:0] weights2_31_addr_reg_2109_pp0_iter1_reg;
wire   [63:0] tmp_15_fu_1247_p35;
reg   [63:0] tmp_15_reg_2114;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_16_fu_1382_p35;
reg   [63:0] tmp_16_reg_2119;
wire   [63:0] tmp_17_fu_1453_p35;
reg   [63:0] tmp_17_reg_2124;
wire   [63:0] tmp_18_fu_1588_p35;
reg   [63:0] tmp_18_reg_2129;
reg   [63:0] mul6_reg_2134;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul81_1_reg_2139;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] sub3_reg_2144;
reg   [63:0] sub86_1_reg_2151;
reg   [63:0] mul7_reg_2158;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] mul95_1_reg_2168;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] norm_reg_2173;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
wire   [63:0] zext_ln154_fu_1179_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_5_fu_216;
wire    ap_block_pp0_stage8;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage15_11001;
reg    ap_condition_exit_pp0_iter1_stage8;
reg    ap_idle_pp0_0to0;
reg   [6:0] j_fu_220;
wire   [6:0] add_ln153_fu_1667_p2;
reg   [6:0] i_4_fu_224;
reg   [6:0] ap_sig_allocacmp_i_4_load;
wire    ap_block_pp0_stage0;
reg   [11:0] indvar_flatten13_fu_228;
reg   [11:0] ap_sig_allocacmp_indvar_flatten13_load;
wire    ap_block_pp0_stage8_01001;
reg    d_weights2_0_ce0_local;
reg    d_weights2_2_ce0_local;
reg    d_weights2_4_ce0_local;
reg    d_weights2_6_ce0_local;
reg    d_weights2_8_ce0_local;
reg    d_weights2_10_ce0_local;
reg    d_weights2_12_ce0_local;
reg    d_weights2_14_ce0_local;
reg    d_weights2_16_ce0_local;
reg    d_weights2_18_ce0_local;
reg    d_weights2_20_ce0_local;
reg    d_weights2_22_ce0_local;
reg    d_weights2_24_ce0_local;
reg    d_weights2_26_ce0_local;
reg    d_weights2_28_ce0_local;
reg    d_weights2_30_ce0_local;
reg    weights2_0_ce0_local;
reg   [6:0] weights2_0_address0_local;
reg    weights2_0_we0_local;
reg    ap_predicate_pred960_state19;
wire   [63:0] bitcast_ln154_32_fu_1677_p1;
wire    ap_block_pp0_stage2;
reg    weights2_2_ce0_local;
reg   [6:0] weights2_2_address0_local;
reg    weights2_2_we0_local;
reg    ap_predicate_pred976_state19;
reg    weights2_4_ce0_local;
reg   [6:0] weights2_4_address0_local;
reg    weights2_4_we0_local;
reg    ap_predicate_pred986_state19;
reg    weights2_6_ce0_local;
reg   [6:0] weights2_6_address0_local;
reg    weights2_6_we0_local;
reg    ap_predicate_pred996_state19;
reg    weights2_8_ce0_local;
reg   [6:0] weights2_8_address0_local;
reg    weights2_8_we0_local;
reg    ap_predicate_pred1006_state19;
reg    weights2_10_ce0_local;
reg   [6:0] weights2_10_address0_local;
reg    weights2_10_we0_local;
reg    ap_predicate_pred1016_state19;
reg    weights2_12_ce0_local;
reg   [6:0] weights2_12_address0_local;
reg    weights2_12_we0_local;
reg    ap_predicate_pred1026_state19;
reg    weights2_14_ce0_local;
reg   [6:0] weights2_14_address0_local;
reg    weights2_14_we0_local;
reg    ap_predicate_pred1036_state19;
reg    weights2_16_ce0_local;
reg   [6:0] weights2_16_address0_local;
reg    weights2_16_we0_local;
reg    ap_predicate_pred1046_state19;
reg    weights2_18_ce0_local;
reg   [6:0] weights2_18_address0_local;
reg    weights2_18_we0_local;
reg    ap_predicate_pred1056_state19;
reg    weights2_20_ce0_local;
reg   [6:0] weights2_20_address0_local;
reg    weights2_20_we0_local;
reg    ap_predicate_pred1066_state19;
reg    weights2_22_ce0_local;
reg   [6:0] weights2_22_address0_local;
reg    weights2_22_we0_local;
reg    ap_predicate_pred1076_state19;
reg    weights2_24_ce0_local;
reg   [6:0] weights2_24_address0_local;
reg    weights2_24_we0_local;
reg    ap_predicate_pred1086_state19;
reg    weights2_26_ce0_local;
reg   [6:0] weights2_26_address0_local;
reg    weights2_26_we0_local;
reg    ap_predicate_pred1096_state19;
reg    weights2_28_ce0_local;
reg   [6:0] weights2_28_address0_local;
reg    weights2_28_we0_local;
reg    ap_predicate_pred1106_state19;
reg    weights2_30_ce0_local;
reg   [6:0] weights2_30_address0_local;
reg    weights2_30_we0_local;
reg    ap_predicate_pred1143_state19;
reg    d_weights2_1_ce0_local;
reg    d_weights2_3_ce0_local;
reg    d_weights2_5_ce0_local;
reg    d_weights2_7_ce0_local;
reg    d_weights2_9_ce0_local;
reg    d_weights2_11_ce0_local;
reg    d_weights2_13_ce0_local;
reg    d_weights2_15_ce0_local;
reg    d_weights2_17_ce0_local;
reg    d_weights2_19_ce0_local;
reg    d_weights2_21_ce0_local;
reg    d_weights2_23_ce0_local;
reg    d_weights2_25_ce0_local;
reg    d_weights2_27_ce0_local;
reg    d_weights2_29_ce0_local;
reg    d_weights2_31_ce0_local;
reg    weights2_1_ce0_local;
reg   [6:0] weights2_1_address0_local;
reg    weights2_1_we0_local;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_predicate_pred1210_state20;
wire   [63:0] bitcast_ln154_33_fu_1696_p1;
wire    ap_block_pp0_stage3;
reg    weights2_3_ce0_local;
reg   [6:0] weights2_3_address0_local;
reg    weights2_3_we0_local;
reg    ap_predicate_pred1225_state20;
reg    weights2_5_ce0_local;
reg   [6:0] weights2_5_address0_local;
reg    weights2_5_we0_local;
reg    ap_predicate_pred1234_state20;
reg    weights2_7_ce0_local;
reg   [6:0] weights2_7_address0_local;
reg    weights2_7_we0_local;
reg    ap_predicate_pred1243_state20;
reg    weights2_9_ce0_local;
reg   [6:0] weights2_9_address0_local;
reg    weights2_9_we0_local;
reg    ap_predicate_pred1252_state20;
reg    weights2_11_ce0_local;
reg   [6:0] weights2_11_address0_local;
reg    weights2_11_we0_local;
reg    ap_predicate_pred1261_state20;
reg    weights2_13_ce0_local;
reg   [6:0] weights2_13_address0_local;
reg    weights2_13_we0_local;
reg    ap_predicate_pred1270_state20;
reg    weights2_15_ce0_local;
reg   [6:0] weights2_15_address0_local;
reg    weights2_15_we0_local;
reg    ap_predicate_pred1279_state20;
reg    weights2_17_ce0_local;
reg   [6:0] weights2_17_address0_local;
reg    weights2_17_we0_local;
reg    ap_predicate_pred1288_state20;
reg    weights2_19_ce0_local;
reg   [6:0] weights2_19_address0_local;
reg    weights2_19_we0_local;
reg    ap_predicate_pred1297_state20;
reg    weights2_21_ce0_local;
reg   [6:0] weights2_21_address0_local;
reg    weights2_21_we0_local;
reg    ap_predicate_pred1306_state20;
reg    weights2_23_ce0_local;
reg   [6:0] weights2_23_address0_local;
reg    weights2_23_we0_local;
reg    ap_predicate_pred1315_state20;
reg    weights2_25_ce0_local;
reg   [6:0] weights2_25_address0_local;
reg    weights2_25_we0_local;
reg    ap_predicate_pred1324_state20;
reg    weights2_27_ce0_local;
reg   [6:0] weights2_27_address0_local;
reg    weights2_27_we0_local;
reg    ap_predicate_pred1333_state20;
reg    weights2_29_ce0_local;
reg   [6:0] weights2_29_address0_local;
reg    weights2_29_we0_local;
reg    ap_predicate_pred1342_state20;
reg    weights2_31_ce0_local;
reg   [6:0] weights2_31_address0_local;
reg    weights2_31_we0_local;
reg    ap_predicate_pred1379_state20;
reg   [63:0] grp_fu_1071_p0;
reg   [63:0] grp_fu_1071_p1;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
reg   [63:0] grp_fu_1075_p0;
reg   [63:0] grp_fu_1075_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire   [0:0] tmp_fu_1127_p3;
wire   [1:0] lshr_ln1_fu_1159_p4;
wire   [6:0] zext_ln154_1_fu_1169_p1;
wire   [6:0] empty_fu_1149_p2;
wire   [6:0] add_ln154_fu_1173_p2;
wire   [63:0] tmp_15_fu_1247_p33;
wire   [63:0] tmp_16_fu_1382_p2;
wire   [63:0] tmp_16_fu_1382_p4;
wire   [63:0] tmp_16_fu_1382_p6;
wire   [63:0] tmp_16_fu_1382_p8;
wire   [63:0] tmp_16_fu_1382_p10;
wire   [63:0] tmp_16_fu_1382_p12;
wire   [63:0] tmp_16_fu_1382_p14;
wire   [63:0] tmp_16_fu_1382_p16;
wire   [63:0] tmp_16_fu_1382_p18;
wire   [63:0] tmp_16_fu_1382_p20;
wire   [63:0] tmp_16_fu_1382_p22;
wire   [63:0] tmp_16_fu_1382_p24;
wire   [63:0] tmp_16_fu_1382_p26;
wire   [63:0] tmp_16_fu_1382_p28;
wire   [63:0] tmp_16_fu_1382_p30;
wire   [63:0] tmp_16_fu_1382_p32;
wire   [63:0] tmp_16_fu_1382_p33;
wire   [63:0] tmp_17_fu_1453_p33;
wire   [63:0] tmp_18_fu_1588_p2;
wire   [63:0] tmp_18_fu_1588_p4;
wire   [63:0] tmp_18_fu_1588_p6;
wire   [63:0] tmp_18_fu_1588_p8;
wire   [63:0] tmp_18_fu_1588_p10;
wire   [63:0] tmp_18_fu_1588_p12;
wire   [63:0] tmp_18_fu_1588_p14;
wire   [63:0] tmp_18_fu_1588_p16;
wire   [63:0] tmp_18_fu_1588_p18;
wire   [63:0] tmp_18_fu_1588_p20;
wire   [63:0] tmp_18_fu_1588_p22;
wire   [63:0] tmp_18_fu_1588_p24;
wire   [63:0] tmp_18_fu_1588_p26;
wire   [63:0] tmp_18_fu_1588_p28;
wire   [63:0] tmp_18_fu_1588_p30;
wire   [63:0] tmp_18_fu_1588_p32;
wire   [63:0] tmp_18_fu_1588_p33;
reg   [1:0] grp_fu_1071_opcode;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_15_fu_1247_p1;
wire   [4:0] tmp_15_fu_1247_p3;
wire   [4:0] tmp_15_fu_1247_p5;
wire   [4:0] tmp_15_fu_1247_p7;
wire   [4:0] tmp_15_fu_1247_p9;
wire   [4:0] tmp_15_fu_1247_p11;
wire   [4:0] tmp_15_fu_1247_p13;
wire   [4:0] tmp_15_fu_1247_p15;
wire  signed [4:0] tmp_15_fu_1247_p17;
wire  signed [4:0] tmp_15_fu_1247_p19;
wire  signed [4:0] tmp_15_fu_1247_p21;
wire  signed [4:0] tmp_15_fu_1247_p23;
wire  signed [4:0] tmp_15_fu_1247_p25;
wire  signed [4:0] tmp_15_fu_1247_p27;
wire  signed [4:0] tmp_15_fu_1247_p29;
wire  signed [4:0] tmp_15_fu_1247_p31;
wire   [4:0] tmp_16_fu_1382_p1;
wire   [4:0] tmp_16_fu_1382_p3;
wire   [4:0] tmp_16_fu_1382_p5;
wire   [4:0] tmp_16_fu_1382_p7;
wire   [4:0] tmp_16_fu_1382_p9;
wire   [4:0] tmp_16_fu_1382_p11;
wire   [4:0] tmp_16_fu_1382_p13;
wire   [4:0] tmp_16_fu_1382_p15;
wire  signed [4:0] tmp_16_fu_1382_p17;
wire  signed [4:0] tmp_16_fu_1382_p19;
wire  signed [4:0] tmp_16_fu_1382_p21;
wire  signed [4:0] tmp_16_fu_1382_p23;
wire  signed [4:0] tmp_16_fu_1382_p25;
wire  signed [4:0] tmp_16_fu_1382_p27;
wire  signed [4:0] tmp_16_fu_1382_p29;
wire  signed [4:0] tmp_16_fu_1382_p31;
wire   [4:0] tmp_17_fu_1453_p1;
wire   [4:0] tmp_17_fu_1453_p3;
wire   [4:0] tmp_17_fu_1453_p5;
wire   [4:0] tmp_17_fu_1453_p7;
wire   [4:0] tmp_17_fu_1453_p9;
wire   [4:0] tmp_17_fu_1453_p11;
wire   [4:0] tmp_17_fu_1453_p13;
wire   [4:0] tmp_17_fu_1453_p15;
wire  signed [4:0] tmp_17_fu_1453_p17;
wire  signed [4:0] tmp_17_fu_1453_p19;
wire  signed [4:0] tmp_17_fu_1453_p21;
wire  signed [4:0] tmp_17_fu_1453_p23;
wire  signed [4:0] tmp_17_fu_1453_p25;
wire  signed [4:0] tmp_17_fu_1453_p27;
wire  signed [4:0] tmp_17_fu_1453_p29;
wire  signed [4:0] tmp_17_fu_1453_p31;
wire   [4:0] tmp_18_fu_1588_p1;
wire   [4:0] tmp_18_fu_1588_p3;
wire   [4:0] tmp_18_fu_1588_p5;
wire   [4:0] tmp_18_fu_1588_p7;
wire   [4:0] tmp_18_fu_1588_p9;
wire   [4:0] tmp_18_fu_1588_p11;
wire   [4:0] tmp_18_fu_1588_p13;
wire   [4:0] tmp_18_fu_1588_p15;
wire  signed [4:0] tmp_18_fu_1588_p17;
wire  signed [4:0] tmp_18_fu_1588_p19;
wire  signed [4:0] tmp_18_fu_1588_p21;
wire  signed [4:0] tmp_18_fu_1588_p23;
wire  signed [4:0] tmp_18_fu_1588_p25;
wire  signed [4:0] tmp_18_fu_1588_p27;
wire  signed [4:0] tmp_18_fu_1588_p29;
wire  signed [4:0] tmp_18_fu_1588_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_5_fu_216 = 64'd0;
#0 j_fu_220 = 7'd0;
#0 i_4_fu_224 = 7'd0;
#0 indvar_flatten13_fu_228 = 12'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U2288(.din0(d_weights2_0_q0),.din1(d_weights2_2_q0),.din2(d_weights2_4_q0),.din3(d_weights2_6_q0),.din4(d_weights2_8_q0),.din5(d_weights2_10_q0),.din6(d_weights2_12_q0),.din7(d_weights2_14_q0),.din8(d_weights2_16_q0),.din9(d_weights2_18_q0),.din10(d_weights2_20_q0),.din11(d_weights2_22_q0),.din12(d_weights2_24_q0),.din13(d_weights2_26_q0),.din14(d_weights2_28_q0),.din15(d_weights2_30_q0),.def(tmp_15_fu_1247_p33),.sel(trunc_ln153_reg_1786),.dout(tmp_15_fu_1247_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U2289(.din0(tmp_16_fu_1382_p2),.din1(tmp_16_fu_1382_p4),.din2(tmp_16_fu_1382_p6),.din3(tmp_16_fu_1382_p8),.din4(tmp_16_fu_1382_p10),.din5(tmp_16_fu_1382_p12),.din6(tmp_16_fu_1382_p14),.din7(tmp_16_fu_1382_p16),.din8(tmp_16_fu_1382_p18),.din9(tmp_16_fu_1382_p20),.din10(tmp_16_fu_1382_p22),.din11(tmp_16_fu_1382_p24),.din12(tmp_16_fu_1382_p26),.din13(tmp_16_fu_1382_p28),.din14(tmp_16_fu_1382_p30),.din15(tmp_16_fu_1382_p32),.def(tmp_16_fu_1382_p33),.sel(trunc_ln153_reg_1786),.dout(tmp_16_fu_1382_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U2290(.din0(d_weights2_1_q0),.din1(d_weights2_3_q0),.din2(d_weights2_5_q0),.din3(d_weights2_7_q0),.din4(d_weights2_9_q0),.din5(d_weights2_11_q0),.din6(d_weights2_13_q0),.din7(d_weights2_15_q0),.din8(d_weights2_17_q0),.din9(d_weights2_19_q0),.din10(d_weights2_21_q0),.din11(d_weights2_23_q0),.din12(d_weights2_25_q0),.din13(d_weights2_27_q0),.din14(d_weights2_29_q0),.din15(d_weights2_31_q0),.def(tmp_17_fu_1453_p33),.sel(trunc_ln153_reg_1786),.dout(tmp_17_fu_1453_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U2291(.din0(tmp_18_fu_1588_p2),.din1(tmp_18_fu_1588_p4),.din2(tmp_18_fu_1588_p6),.din3(tmp_18_fu_1588_p8),.din4(tmp_18_fu_1588_p10),.din5(tmp_18_fu_1588_p12),.din6(tmp_18_fu_1588_p14),.din7(tmp_18_fu_1588_p16),.din8(tmp_18_fu_1588_p18),.din9(tmp_18_fu_1588_p20),.din10(tmp_18_fu_1588_p22),.din11(tmp_18_fu_1588_p24),.din12(tmp_18_fu_1588_p26),.din13(tmp_18_fu_1588_p28),.din14(tmp_18_fu_1588_p30),.din15(tmp_18_fu_1588_p32),.def(tmp_18_fu_1588_p33),.sel(trunc_ln153_reg_1786),.dout(tmp_18_fu_1588_p35));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_4_fu_224 <= 7'd0;
    end else if (((icmp_ln152_reg_1757 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_4_fu_224 <= select_ln152_reg_1781;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten13_fu_228 <= 12'd0;
    end else if (((icmp_ln152_reg_1757 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten13_fu_228 <= add_ln152_reg_1761;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_220 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_220 <= add_ln153_fu_1667_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_5_fu_216 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        norm_5_fu_216 <= grp_fu_1939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln152_1_reg_1771 <= add_ln152_1_fu_1118_p2;
        add_ln152_reg_1761 <= add_ln152_fu_1109_p2;
        i_4_load_reg_1766 <= ap_sig_allocacmp_i_4_load;
        icmp_ln152_reg_1757 <= icmp_ln152_fu_1103_p2;
        icmp_ln152_reg_1757_pp0_iter1_reg <= icmp_ln152_reg_1757;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred1006_state19 <= (trunc_ln153_reg_1786 == 5'd8);
        ap_predicate_pred1016_state19 <= (trunc_ln153_reg_1786 == 5'd10);
        ap_predicate_pred1026_state19 <= (trunc_ln153_reg_1786 == 5'd12);
        ap_predicate_pred1036_state19 <= (trunc_ln153_reg_1786 == 5'd14);
        ap_predicate_pred1046_state19 <= (trunc_ln153_reg_1786 == 5'd16);
        ap_predicate_pred1056_state19 <= (trunc_ln153_reg_1786 == 5'd18);
        ap_predicate_pred1066_state19 <= (trunc_ln153_reg_1786 == 5'd20);
        ap_predicate_pred1076_state19 <= (trunc_ln153_reg_1786 == 5'd22);
        ap_predicate_pred1086_state19 <= (trunc_ln153_reg_1786 == 5'd24);
        ap_predicate_pred1096_state19 <= (trunc_ln153_reg_1786 == 5'd26);
        ap_predicate_pred1106_state19 <= (trunc_ln153_reg_1786 == 5'd28);
        ap_predicate_pred1143_state19 <= (~(trunc_ln153_reg_1786 == 5'd6) & ~(trunc_ln153_reg_1786 == 5'd4) & ~(trunc_ln153_reg_1786 == 5'd2) & ~(trunc_ln153_reg_1786 == 5'd0) & ~(trunc_ln153_reg_1786 == 5'd28) & ~(trunc_ln153_reg_1786 == 5'd26) & ~(trunc_ln153_reg_1786 == 5'd24) & ~(trunc_ln153_reg_1786 == 5'd22) & ~(trunc_ln153_reg_1786 == 5'd20) & ~(trunc_ln153_reg_1786 == 5'd18) & ~(trunc_ln153_reg_1786 == 5'd16) & ~(trunc_ln153_reg_1786 == 5'd14) & ~(trunc_ln153_reg_1786 == 5'd12) & ~(trunc_ln153_reg_1786 == 5'd10) & ~(trunc_ln153_reg_1786 == 5'd8));
        ap_predicate_pred960_state19 <= (trunc_ln153_reg_1786 == 5'd0);
        ap_predicate_pred976_state19 <= (trunc_ln153_reg_1786 == 5'd2);
        ap_predicate_pred986_state19 <= (trunc_ln153_reg_1786 == 5'd4);
        ap_predicate_pred996_state19 <= (trunc_ln153_reg_1786 == 5'd6);
        select_ln121_reg_1776 <= select_ln121_fu_1135_p3;
        select_ln152_reg_1781 <= select_ln152_fu_1143_p3;
        trunc_ln153_reg_1786 <= trunc_ln153_fu_1155_p1;
        trunc_ln153_reg_1786_pp0_iter1_reg <= trunc_ln153_reg_1786;
        weights2_0_addr_reg_1874 <= zext_ln154_fu_1179_p1;
        weights2_0_addr_reg_1874_pp0_iter1_reg <= weights2_0_addr_reg_1874;
        weights2_10_addr_reg_1899 <= zext_ln154_fu_1179_p1;
        weights2_10_addr_reg_1899_pp0_iter1_reg <= weights2_10_addr_reg_1899;
        weights2_11_addr_reg_2059 <= zext_ln154_fu_1179_p1;
        weights2_11_addr_reg_2059_pp0_iter1_reg <= weights2_11_addr_reg_2059;
        weights2_12_addr_reg_1904 <= zext_ln154_fu_1179_p1;
        weights2_12_addr_reg_1904_pp0_iter1_reg <= weights2_12_addr_reg_1904;
        weights2_13_addr_reg_2064 <= zext_ln154_fu_1179_p1;
        weights2_13_addr_reg_2064_pp0_iter1_reg <= weights2_13_addr_reg_2064;
        weights2_14_addr_reg_1909 <= zext_ln154_fu_1179_p1;
        weights2_14_addr_reg_1909_pp0_iter1_reg <= weights2_14_addr_reg_1909;
        weights2_15_addr_reg_2069 <= zext_ln154_fu_1179_p1;
        weights2_15_addr_reg_2069_pp0_iter1_reg <= weights2_15_addr_reg_2069;
        weights2_16_addr_reg_1914 <= zext_ln154_fu_1179_p1;
        weights2_16_addr_reg_1914_pp0_iter1_reg <= weights2_16_addr_reg_1914;
        weights2_17_addr_reg_2074 <= zext_ln154_fu_1179_p1;
        weights2_17_addr_reg_2074_pp0_iter1_reg <= weights2_17_addr_reg_2074;
        weights2_18_addr_reg_1919 <= zext_ln154_fu_1179_p1;
        weights2_18_addr_reg_1919_pp0_iter1_reg <= weights2_18_addr_reg_1919;
        weights2_19_addr_reg_2079 <= zext_ln154_fu_1179_p1;
        weights2_19_addr_reg_2079_pp0_iter1_reg <= weights2_19_addr_reg_2079;
        weights2_1_addr_reg_2034 <= zext_ln154_fu_1179_p1;
        weights2_1_addr_reg_2034_pp0_iter1_reg <= weights2_1_addr_reg_2034;
        weights2_20_addr_reg_1924 <= zext_ln154_fu_1179_p1;
        weights2_20_addr_reg_1924_pp0_iter1_reg <= weights2_20_addr_reg_1924;
        weights2_21_addr_reg_2084 <= zext_ln154_fu_1179_p1;
        weights2_21_addr_reg_2084_pp0_iter1_reg <= weights2_21_addr_reg_2084;
        weights2_22_addr_reg_1929 <= zext_ln154_fu_1179_p1;
        weights2_22_addr_reg_1929_pp0_iter1_reg <= weights2_22_addr_reg_1929;
        weights2_23_addr_reg_2089 <= zext_ln154_fu_1179_p1;
        weights2_23_addr_reg_2089_pp0_iter1_reg <= weights2_23_addr_reg_2089;
        weights2_24_addr_reg_1934 <= zext_ln154_fu_1179_p1;
        weights2_24_addr_reg_1934_pp0_iter1_reg <= weights2_24_addr_reg_1934;
        weights2_25_addr_reg_2094 <= zext_ln154_fu_1179_p1;
        weights2_25_addr_reg_2094_pp0_iter1_reg <= weights2_25_addr_reg_2094;
        weights2_26_addr_reg_1939 <= zext_ln154_fu_1179_p1;
        weights2_26_addr_reg_1939_pp0_iter1_reg <= weights2_26_addr_reg_1939;
        weights2_27_addr_reg_2099 <= zext_ln154_fu_1179_p1;
        weights2_27_addr_reg_2099_pp0_iter1_reg <= weights2_27_addr_reg_2099;
        weights2_28_addr_reg_1944 <= zext_ln154_fu_1179_p1;
        weights2_28_addr_reg_1944_pp0_iter1_reg <= weights2_28_addr_reg_1944;
        weights2_29_addr_reg_2104 <= zext_ln154_fu_1179_p1;
        weights2_29_addr_reg_2104_pp0_iter1_reg <= weights2_29_addr_reg_2104;
        weights2_2_addr_reg_1879 <= zext_ln154_fu_1179_p1;
        weights2_2_addr_reg_1879_pp0_iter1_reg <= weights2_2_addr_reg_1879;
        weights2_30_addr_reg_1949 <= zext_ln154_fu_1179_p1;
        weights2_30_addr_reg_1949_pp0_iter1_reg <= weights2_30_addr_reg_1949;
        weights2_31_addr_reg_2109 <= zext_ln154_fu_1179_p1;
        weights2_31_addr_reg_2109_pp0_iter1_reg <= weights2_31_addr_reg_2109;
        weights2_3_addr_reg_2039 <= zext_ln154_fu_1179_p1;
        weights2_3_addr_reg_2039_pp0_iter1_reg <= weights2_3_addr_reg_2039;
        weights2_4_addr_reg_1884 <= zext_ln154_fu_1179_p1;
        weights2_4_addr_reg_1884_pp0_iter1_reg <= weights2_4_addr_reg_1884;
        weights2_5_addr_reg_2044 <= zext_ln154_fu_1179_p1;
        weights2_5_addr_reg_2044_pp0_iter1_reg <= weights2_5_addr_reg_2044;
        weights2_6_addr_reg_1889 <= zext_ln154_fu_1179_p1;
        weights2_6_addr_reg_1889_pp0_iter1_reg <= weights2_6_addr_reg_1889;
        weights2_7_addr_reg_2049 <= zext_ln154_fu_1179_p1;
        weights2_7_addr_reg_2049_pp0_iter1_reg <= weights2_7_addr_reg_2049;
        weights2_8_addr_reg_1894 <= zext_ln154_fu_1179_p1;
        weights2_8_addr_reg_1894_pp0_iter1_reg <= weights2_8_addr_reg_1894;
        weights2_9_addr_reg_2054 <= zext_ln154_fu_1179_p1;
        weights2_9_addr_reg_2054_pp0_iter1_reg <= weights2_9_addr_reg_2054;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred1210_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd0);
        ap_predicate_pred1225_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd2);
        ap_predicate_pred1234_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd4);
        ap_predicate_pred1243_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd6);
        ap_predicate_pred1252_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd8);
        ap_predicate_pred1261_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd10);
        ap_predicate_pred1270_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd12);
        ap_predicate_pred1279_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd14);
        ap_predicate_pred1288_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd16);
        ap_predicate_pred1297_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd18);
        ap_predicate_pred1306_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd20);
        ap_predicate_pred1315_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd22);
        ap_predicate_pred1324_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd24);
        ap_predicate_pred1333_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd26);
        ap_predicate_pred1342_state20 <= (trunc_ln153_reg_1786_pp0_iter1_reg == 5'd28);
        ap_predicate_pred1379_state20 <= (~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd28) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd26) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd24) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd22) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd20) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd18) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd16) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd14) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd12) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd10) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd8) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd6) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd4) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd2) & ~(trunc_ln153_reg_1786_pp0_iter1_reg == 5'd0));
        tmp_15_reg_2114 <= tmp_15_fu_1247_p35;
        tmp_16_reg_2119 <= tmp_16_fu_1382_p35;
        tmp_17_reg_2124 <= tmp_17_fu_1453_p35;
        tmp_18_reg_2129 <= tmp_18_fu_1588_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul6_reg_2134 <= grp_fu_1943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul7_reg_2158 <= grp_fu_1943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul81_1_reg_2139 <= grp_fu_1943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul95_1_reg_2168 <= grp_fu_1943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_reg_2173 <= grp_fu_1939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub3_reg_2144 <= grp_fu_1939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sub86_1_reg_2151 <= grp_fu_1939_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln152_reg_1757 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (icmp_ln152_reg_1757_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4_load = i_4_fu_224;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten13_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_228;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_0_ce0_local = 1'b1;
    end else begin
        d_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_10_ce0_local = 1'b1;
    end else begin
        d_weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_11_ce0_local = 1'b1;
    end else begin
        d_weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_12_ce0_local = 1'b1;
    end else begin
        d_weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_13_ce0_local = 1'b1;
    end else begin
        d_weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_14_ce0_local = 1'b1;
    end else begin
        d_weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_15_ce0_local = 1'b1;
    end else begin
        d_weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_16_ce0_local = 1'b1;
    end else begin
        d_weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_17_ce0_local = 1'b1;
    end else begin
        d_weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_18_ce0_local = 1'b1;
    end else begin
        d_weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_19_ce0_local = 1'b1;
    end else begin
        d_weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_1_ce0_local = 1'b1;
    end else begin
        d_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_20_ce0_local = 1'b1;
    end else begin
        d_weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_21_ce0_local = 1'b1;
    end else begin
        d_weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_22_ce0_local = 1'b1;
    end else begin
        d_weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_23_ce0_local = 1'b1;
    end else begin
        d_weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_24_ce0_local = 1'b1;
    end else begin
        d_weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_25_ce0_local = 1'b1;
    end else begin
        d_weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_26_ce0_local = 1'b1;
    end else begin
        d_weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_27_ce0_local = 1'b1;
    end else begin
        d_weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_28_ce0_local = 1'b1;
    end else begin
        d_weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_29_ce0_local = 1'b1;
    end else begin
        d_weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_2_ce0_local = 1'b1;
    end else begin
        d_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_30_ce0_local = 1'b1;
    end else begin
        d_weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_31_ce0_local = 1'b1;
    end else begin
        d_weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_3_ce0_local = 1'b1;
    end else begin
        d_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_4_ce0_local = 1'b1;
    end else begin
        d_weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_5_ce0_local = 1'b1;
    end else begin
        d_weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_6_ce0_local = 1'b1;
    end else begin
        d_weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_7_ce0_local = 1'b1;
    end else begin
        d_weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_8_ce0_local = 1'b1;
    end else begin
        d_weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_9_ce0_local = 1'b1;
    end else begin
        d_weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln152_reg_1757 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln152_reg_1757 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1071_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1071_opcode = 2'd0;
    end else begin
        grp_fu_1071_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1071_p0 = norm_reg_2173;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1071_p0 = norm_5_fu_216;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1071_p0 = tmp_18_reg_2129;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1071_p0 = tmp_16_reg_2119;
    end else begin
        grp_fu_1071_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1071_p1 = mul95_1_reg_2168;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1071_p1 = mul7_reg_2158;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1071_p1 = mul81_1_reg_2139;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1071_p1 = mul6_reg_2134;
    end else begin
        grp_fu_1071_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1075_p0 = sub86_1_reg_2151;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1075_p0 = sub3_reg_2144;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1075_p0 = tmp_17_reg_2124;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1075_p0 = tmp_15_reg_2114;
    end else begin
        grp_fu_1075_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1075_p1 = sub86_1_reg_2151;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1075_p1 = sub3_reg_2144;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1075_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1075_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_11001) & (icmp_ln152_reg_1757_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        norm_5_out_ap_vld = 1'b1;
    end else begin
        norm_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_0_address0_local = weights2_0_addr_reg_1874_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred960_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_0_we0_local = 1'b1;
    end else begin
        weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_10_address0_local = weights2_10_addr_reg_1899_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_10_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_10_ce0_local = 1'b1;
    end else begin
        weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1016_state19 == 1'b1))) begin
        weights2_10_we0_local = 1'b1;
    end else begin
        weights2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_11_address0_local = weights2_11_addr_reg_2059_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_11_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_11_ce0_local = 1'b1;
    end else begin
        weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1261_state20 == 1'b1))) begin
        weights2_11_we0_local = 1'b1;
    end else begin
        weights2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_12_address0_local = weights2_12_addr_reg_1904_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_12_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_12_ce0_local = 1'b1;
    end else begin
        weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1026_state19 == 1'b1))) begin
        weights2_12_we0_local = 1'b1;
    end else begin
        weights2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_13_address0_local = weights2_13_addr_reg_2064_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_13_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_13_ce0_local = 1'b1;
    end else begin
        weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1270_state20 == 1'b1))) begin
        weights2_13_we0_local = 1'b1;
    end else begin
        weights2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_14_address0_local = weights2_14_addr_reg_1909_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_14_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_14_ce0_local = 1'b1;
    end else begin
        weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1036_state19 == 1'b1))) begin
        weights2_14_we0_local = 1'b1;
    end else begin
        weights2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_15_address0_local = weights2_15_addr_reg_2069_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_15_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_15_ce0_local = 1'b1;
    end else begin
        weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1279_state20 == 1'b1))) begin
        weights2_15_we0_local = 1'b1;
    end else begin
        weights2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_16_address0_local = weights2_16_addr_reg_1914_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_16_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_16_ce0_local = 1'b1;
    end else begin
        weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1046_state19 == 1'b1))) begin
        weights2_16_we0_local = 1'b1;
    end else begin
        weights2_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_17_address0_local = weights2_17_addr_reg_2074_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_17_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_17_ce0_local = 1'b1;
    end else begin
        weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1288_state20 == 1'b1))) begin
        weights2_17_we0_local = 1'b1;
    end else begin
        weights2_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_18_address0_local = weights2_18_addr_reg_1919_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_18_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_18_ce0_local = 1'b1;
    end else begin
        weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1056_state19 == 1'b1))) begin
        weights2_18_we0_local = 1'b1;
    end else begin
        weights2_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_19_address0_local = weights2_19_addr_reg_2079_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_19_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_19_ce0_local = 1'b1;
    end else begin
        weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1297_state20 == 1'b1))) begin
        weights2_19_we0_local = 1'b1;
    end else begin
        weights2_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_1_address0_local = weights2_1_addr_reg_2034_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_1_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1210_state20 == 1'b1))) begin
        weights2_1_we0_local = 1'b1;
    end else begin
        weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_20_address0_local = weights2_20_addr_reg_1924_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_20_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_20_ce0_local = 1'b1;
    end else begin
        weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1066_state19 == 1'b1))) begin
        weights2_20_we0_local = 1'b1;
    end else begin
        weights2_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_21_address0_local = weights2_21_addr_reg_2084_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_21_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_21_ce0_local = 1'b1;
    end else begin
        weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1306_state20 == 1'b1))) begin
        weights2_21_we0_local = 1'b1;
    end else begin
        weights2_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_22_address0_local = weights2_22_addr_reg_1929_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_22_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_22_ce0_local = 1'b1;
    end else begin
        weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1076_state19 == 1'b1))) begin
        weights2_22_we0_local = 1'b1;
    end else begin
        weights2_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_23_address0_local = weights2_23_addr_reg_2089_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_23_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_23_ce0_local = 1'b1;
    end else begin
        weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1315_state20 == 1'b1))) begin
        weights2_23_we0_local = 1'b1;
    end else begin
        weights2_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_24_address0_local = weights2_24_addr_reg_1934_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_24_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_24_ce0_local = 1'b1;
    end else begin
        weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1086_state19 == 1'b1))) begin
        weights2_24_we0_local = 1'b1;
    end else begin
        weights2_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_25_address0_local = weights2_25_addr_reg_2094_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_25_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_25_ce0_local = 1'b1;
    end else begin
        weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1324_state20 == 1'b1))) begin
        weights2_25_we0_local = 1'b1;
    end else begin
        weights2_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_26_address0_local = weights2_26_addr_reg_1939_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_26_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_26_ce0_local = 1'b1;
    end else begin
        weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1096_state19 == 1'b1))) begin
        weights2_26_we0_local = 1'b1;
    end else begin
        weights2_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_27_address0_local = weights2_27_addr_reg_2099_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_27_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_27_ce0_local = 1'b1;
    end else begin
        weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1333_state20 == 1'b1))) begin
        weights2_27_we0_local = 1'b1;
    end else begin
        weights2_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_28_address0_local = weights2_28_addr_reg_1944_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_28_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_28_ce0_local = 1'b1;
    end else begin
        weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1106_state19 == 1'b1))) begin
        weights2_28_we0_local = 1'b1;
    end else begin
        weights2_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_29_address0_local = weights2_29_addr_reg_2104_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_29_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_29_ce0_local = 1'b1;
    end else begin
        weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1342_state20 == 1'b1))) begin
        weights2_29_we0_local = 1'b1;
    end else begin
        weights2_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_2_address0_local = weights2_2_addr_reg_1879_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_2_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_2_ce0_local = 1'b1;
    end else begin
        weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred976_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_2_we0_local = 1'b1;
    end else begin
        weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_30_address0_local = weights2_30_addr_reg_1949_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_30_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_30_ce0_local = 1'b1;
    end else begin
        weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1143_state19 == 1'b1))) begin
        weights2_30_we0_local = 1'b1;
    end else begin
        weights2_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_31_address0_local = weights2_31_addr_reg_2109_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_31_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_31_ce0_local = 1'b1;
    end else begin
        weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1379_state20 == 1'b1))) begin
        weights2_31_we0_local = 1'b1;
    end else begin
        weights2_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_3_address0_local = weights2_3_addr_reg_2039_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_3_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_3_ce0_local = 1'b1;
    end else begin
        weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1225_state20 == 1'b1))) begin
        weights2_3_we0_local = 1'b1;
    end else begin
        weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_4_address0_local = weights2_4_addr_reg_1884_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_4_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_4_ce0_local = 1'b1;
    end else begin
        weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred986_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_4_we0_local = 1'b1;
    end else begin
        weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_5_address0_local = weights2_5_addr_reg_2044_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_5_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_5_ce0_local = 1'b1;
    end else begin
        weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1234_state20 == 1'b1))) begin
        weights2_5_we0_local = 1'b1;
    end else begin
        weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_6_address0_local = weights2_6_addr_reg_1889_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_6_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_6_ce0_local = 1'b1;
    end else begin
        weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred996_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_6_we0_local = 1'b1;
    end else begin
        weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_7_address0_local = weights2_7_addr_reg_2049_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_7_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_7_ce0_local = 1'b1;
    end else begin
        weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1243_state20 == 1'b1))) begin
        weights2_7_we0_local = 1'b1;
    end else begin
        weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_8_address0_local = weights2_8_addr_reg_1894_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_8_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_8_ce0_local = 1'b1;
    end else begin
        weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1006_state19 == 1'b1))) begin
        weights2_8_we0_local = 1'b1;
    end else begin
        weights2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_9_address0_local = weights2_9_addr_reg_2054_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_9_address0_local = zext_ln154_fu_1179_p1;
    end else begin
        weights2_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_9_ce0_local = 1'b1;
    end else begin
        weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1252_state20 == 1'b1))) begin
        weights2_9_we0_local = 1'b1;
    end else begin
        weights2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln152_1_fu_1118_p2 = (ap_sig_allocacmp_i_4_load + 7'd1);
assign add_ln152_fu_1109_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 12'd1);
assign add_ln153_fu_1667_p2 = (select_ln121_reg_1776 + 7'd2);
assign add_ln154_fu_1173_p2 = (zext_ln154_1_fu_1169_p1 + empty_fu_1149_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bitcast_ln154_32_fu_1677_p1 = sub3_reg_2144;
assign bitcast_ln154_33_fu_1696_p1 = sub86_1_reg_2151;
assign d_weights2_0_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_0_ce0 = d_weights2_0_ce0_local;
assign d_weights2_10_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_10_ce0 = d_weights2_10_ce0_local;
assign d_weights2_11_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_11_ce0 = d_weights2_11_ce0_local;
assign d_weights2_12_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_12_ce0 = d_weights2_12_ce0_local;
assign d_weights2_13_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_13_ce0 = d_weights2_13_ce0_local;
assign d_weights2_14_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_14_ce0 = d_weights2_14_ce0_local;
assign d_weights2_15_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_15_ce0 = d_weights2_15_ce0_local;
assign d_weights2_16_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_16_ce0 = d_weights2_16_ce0_local;
assign d_weights2_17_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_17_ce0 = d_weights2_17_ce0_local;
assign d_weights2_18_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_18_ce0 = d_weights2_18_ce0_local;
assign d_weights2_19_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_19_ce0 = d_weights2_19_ce0_local;
assign d_weights2_1_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_1_ce0 = d_weights2_1_ce0_local;
assign d_weights2_20_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_20_ce0 = d_weights2_20_ce0_local;
assign d_weights2_21_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_21_ce0 = d_weights2_21_ce0_local;
assign d_weights2_22_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_22_ce0 = d_weights2_22_ce0_local;
assign d_weights2_23_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_23_ce0 = d_weights2_23_ce0_local;
assign d_weights2_24_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_24_ce0 = d_weights2_24_ce0_local;
assign d_weights2_25_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_25_ce0 = d_weights2_25_ce0_local;
assign d_weights2_26_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_26_ce0 = d_weights2_26_ce0_local;
assign d_weights2_27_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_27_ce0 = d_weights2_27_ce0_local;
assign d_weights2_28_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_28_ce0 = d_weights2_28_ce0_local;
assign d_weights2_29_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_29_ce0 = d_weights2_29_ce0_local;
assign d_weights2_2_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_2_ce0 = d_weights2_2_ce0_local;
assign d_weights2_30_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_30_ce0 = d_weights2_30_ce0_local;
assign d_weights2_31_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_31_ce0 = d_weights2_31_ce0_local;
assign d_weights2_3_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_3_ce0 = d_weights2_3_ce0_local;
assign d_weights2_4_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_4_ce0 = d_weights2_4_ce0_local;
assign d_weights2_5_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_5_ce0 = d_weights2_5_ce0_local;
assign d_weights2_6_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_6_ce0 = d_weights2_6_ce0_local;
assign d_weights2_7_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_7_ce0 = d_weights2_7_ce0_local;
assign d_weights2_8_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_8_ce0 = d_weights2_8_ce0_local;
assign d_weights2_9_address0 = zext_ln154_fu_1179_p1;
assign d_weights2_9_ce0 = d_weights2_9_ce0_local;
assign empty_fu_1149_p2 = select_ln152_fu_1143_p3 << 7'd1;
assign grp_fu_1939_p_ce = 1'b1;
assign grp_fu_1939_p_din0 = grp_fu_1071_p0;
assign grp_fu_1939_p_din1 = grp_fu_1071_p1;
assign grp_fu_1939_p_opcode = grp_fu_1071_opcode;
assign grp_fu_1943_p_ce = 1'b1;
assign grp_fu_1943_p_din0 = grp_fu_1075_p0;
assign grp_fu_1943_p_din1 = grp_fu_1075_p1;
assign icmp_ln152_fu_1103_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 12'd2048) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1159_p4 = {{select_ln121_fu_1135_p3[6:5]}};
assign norm_5_out = norm_5_fu_216;
assign select_ln121_fu_1135_p3 = ((tmp_fu_1127_p3[0:0] == 1'b1) ? 7'd0 : j_fu_220);
assign select_ln152_fu_1143_p3 = ((tmp_fu_1127_p3[0:0] == 1'b1) ? add_ln152_1_reg_1771 : i_4_load_reg_1766);
assign tmp_15_fu_1247_p33 = 'bx;
assign tmp_16_fu_1382_p10 = weights2_8_q0;
assign tmp_16_fu_1382_p12 = weights2_10_q0;
assign tmp_16_fu_1382_p14 = weights2_12_q0;
assign tmp_16_fu_1382_p16 = weights2_14_q0;
assign tmp_16_fu_1382_p18 = weights2_16_q0;
assign tmp_16_fu_1382_p2 = weights2_0_q0;
assign tmp_16_fu_1382_p20 = weights2_18_q0;
assign tmp_16_fu_1382_p22 = weights2_20_q0;
assign tmp_16_fu_1382_p24 = weights2_22_q0;
assign tmp_16_fu_1382_p26 = weights2_24_q0;
assign tmp_16_fu_1382_p28 = weights2_26_q0;
assign tmp_16_fu_1382_p30 = weights2_28_q0;
assign tmp_16_fu_1382_p32 = weights2_30_q0;
assign tmp_16_fu_1382_p33 = 'bx;
assign tmp_16_fu_1382_p4 = weights2_2_q0;
assign tmp_16_fu_1382_p6 = weights2_4_q0;
assign tmp_16_fu_1382_p8 = weights2_6_q0;
assign tmp_17_fu_1453_p33 = 'bx;
assign tmp_18_fu_1588_p10 = weights2_9_q0;
assign tmp_18_fu_1588_p12 = weights2_11_q0;
assign tmp_18_fu_1588_p14 = weights2_13_q0;
assign tmp_18_fu_1588_p16 = weights2_15_q0;
assign tmp_18_fu_1588_p18 = weights2_17_q0;
assign tmp_18_fu_1588_p2 = weights2_1_q0;
assign tmp_18_fu_1588_p20 = weights2_19_q0;
assign tmp_18_fu_1588_p22 = weights2_21_q0;
assign tmp_18_fu_1588_p24 = weights2_23_q0;
assign tmp_18_fu_1588_p26 = weights2_25_q0;
assign tmp_18_fu_1588_p28 = weights2_27_q0;
assign tmp_18_fu_1588_p30 = weights2_29_q0;
assign tmp_18_fu_1588_p32 = weights2_31_q0;
assign tmp_18_fu_1588_p33 = 'bx;
assign tmp_18_fu_1588_p4 = weights2_3_q0;
assign tmp_18_fu_1588_p6 = weights2_5_q0;
assign tmp_18_fu_1588_p8 = weights2_7_q0;
assign tmp_fu_1127_p3 = j_fu_220[32'd6];
assign trunc_ln153_fu_1155_p1 = select_ln121_fu_1135_p3[4:0];
assign weights2_0_address0 = weights2_0_address0_local;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_0_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_0_we0 = weights2_0_we0_local;
assign weights2_10_address0 = weights2_10_address0_local;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_10_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_10_we0 = weights2_10_we0_local;
assign weights2_11_address0 = weights2_11_address0_local;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_11_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_11_we0 = weights2_11_we0_local;
assign weights2_12_address0 = weights2_12_address0_local;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_12_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_12_we0 = weights2_12_we0_local;
assign weights2_13_address0 = weights2_13_address0_local;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_13_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_13_we0 = weights2_13_we0_local;
assign weights2_14_address0 = weights2_14_address0_local;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_14_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_14_we0 = weights2_14_we0_local;
assign weights2_15_address0 = weights2_15_address0_local;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_15_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_15_we0 = weights2_15_we0_local;
assign weights2_16_address0 = weights2_16_address0_local;
assign weights2_16_ce0 = weights2_16_ce0_local;
assign weights2_16_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_16_we0 = weights2_16_we0_local;
assign weights2_17_address0 = weights2_17_address0_local;
assign weights2_17_ce0 = weights2_17_ce0_local;
assign weights2_17_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_17_we0 = weights2_17_we0_local;
assign weights2_18_address0 = weights2_18_address0_local;
assign weights2_18_ce0 = weights2_18_ce0_local;
assign weights2_18_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_18_we0 = weights2_18_we0_local;
assign weights2_19_address0 = weights2_19_address0_local;
assign weights2_19_ce0 = weights2_19_ce0_local;
assign weights2_19_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_19_we0 = weights2_19_we0_local;
assign weights2_1_address0 = weights2_1_address0_local;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_1_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_1_we0 = weights2_1_we0_local;
assign weights2_20_address0 = weights2_20_address0_local;
assign weights2_20_ce0 = weights2_20_ce0_local;
assign weights2_20_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_20_we0 = weights2_20_we0_local;
assign weights2_21_address0 = weights2_21_address0_local;
assign weights2_21_ce0 = weights2_21_ce0_local;
assign weights2_21_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_21_we0 = weights2_21_we0_local;
assign weights2_22_address0 = weights2_22_address0_local;
assign weights2_22_ce0 = weights2_22_ce0_local;
assign weights2_22_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_22_we0 = weights2_22_we0_local;
assign weights2_23_address0 = weights2_23_address0_local;
assign weights2_23_ce0 = weights2_23_ce0_local;
assign weights2_23_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_23_we0 = weights2_23_we0_local;
assign weights2_24_address0 = weights2_24_address0_local;
assign weights2_24_ce0 = weights2_24_ce0_local;
assign weights2_24_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_24_we0 = weights2_24_we0_local;
assign weights2_25_address0 = weights2_25_address0_local;
assign weights2_25_ce0 = weights2_25_ce0_local;
assign weights2_25_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_25_we0 = weights2_25_we0_local;
assign weights2_26_address0 = weights2_26_address0_local;
assign weights2_26_ce0 = weights2_26_ce0_local;
assign weights2_26_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_26_we0 = weights2_26_we0_local;
assign weights2_27_address0 = weights2_27_address0_local;
assign weights2_27_ce0 = weights2_27_ce0_local;
assign weights2_27_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_27_we0 = weights2_27_we0_local;
assign weights2_28_address0 = weights2_28_address0_local;
assign weights2_28_ce0 = weights2_28_ce0_local;
assign weights2_28_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_28_we0 = weights2_28_we0_local;
assign weights2_29_address0 = weights2_29_address0_local;
assign weights2_29_ce0 = weights2_29_ce0_local;
assign weights2_29_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_29_we0 = weights2_29_we0_local;
assign weights2_2_address0 = weights2_2_address0_local;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_2_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_2_we0 = weights2_2_we0_local;
assign weights2_30_address0 = weights2_30_address0_local;
assign weights2_30_ce0 = weights2_30_ce0_local;
assign weights2_30_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_30_we0 = weights2_30_we0_local;
assign weights2_31_address0 = weights2_31_address0_local;
assign weights2_31_ce0 = weights2_31_ce0_local;
assign weights2_31_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_31_we0 = weights2_31_we0_local;
assign weights2_3_address0 = weights2_3_address0_local;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_3_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_3_we0 = weights2_3_we0_local;
assign weights2_4_address0 = weights2_4_address0_local;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_4_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_4_we0 = weights2_4_we0_local;
assign weights2_5_address0 = weights2_5_address0_local;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_5_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_5_we0 = weights2_5_we0_local;
assign weights2_6_address0 = weights2_6_address0_local;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_6_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_6_we0 = weights2_6_we0_local;
assign weights2_7_address0 = weights2_7_address0_local;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_7_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_7_we0 = weights2_7_we0_local;
assign weights2_8_address0 = weights2_8_address0_local;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_8_d0 = bitcast_ln154_32_fu_1677_p1;
assign weights2_8_we0 = weights2_8_we0_local;
assign weights2_9_address0 = weights2_9_address0_local;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign weights2_9_d0 = bitcast_ln154_33_fu_1696_p1;
assign weights2_9_we0 = weights2_9_we0_local;
assign zext_ln154_1_fu_1169_p1 = lshr_ln1_fu_1159_p4;
assign zext_ln154_fu_1179_p1 = add_ln154_fu_1173_p2;
endmodule 