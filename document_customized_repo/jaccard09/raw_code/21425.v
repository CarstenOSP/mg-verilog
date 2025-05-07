module backprop_update_weights_32_33_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_31_address0,weights1_31_ce0,weights1_31_we0,weights1_31_d0,weights1_31_q0,weights1_30_address0,weights1_30_ce0,weights1_30_we0,weights1_30_d0,weights1_30_q0,weights1_29_address0,weights1_29_ce0,weights1_29_we0,weights1_29_d0,weights1_29_q0,weights1_28_address0,weights1_28_ce0,weights1_28_we0,weights1_28_d0,weights1_28_q0,weights1_27_address0,weights1_27_ce0,weights1_27_we0,weights1_27_d0,weights1_27_q0,weights1_26_address0,weights1_26_ce0,weights1_26_we0,weights1_26_d0,weights1_26_q0,weights1_25_address0,weights1_25_ce0,weights1_25_we0,weights1_25_d0,weights1_25_q0,weights1_24_address0,weights1_24_ce0,weights1_24_we0,weights1_24_d0,weights1_24_q0,weights1_23_address0,weights1_23_ce0,weights1_23_we0,weights1_23_d0,weights1_23_q0,weights1_22_address0,weights1_22_ce0,weights1_22_we0,weights1_22_d0,weights1_22_q0,weights1_21_address0,weights1_21_ce0,weights1_21_we0,weights1_21_d0,weights1_21_q0,weights1_20_address0,weights1_20_ce0,weights1_20_we0,weights1_20_d0,weights1_20_q0,weights1_19_address0,weights1_19_ce0,weights1_19_we0,weights1_19_d0,weights1_19_q0,weights1_18_address0,weights1_18_ce0,weights1_18_we0,weights1_18_d0,weights1_18_q0,weights1_17_address0,weights1_17_ce0,weights1_17_we0,weights1_17_d0,weights1_17_q0,weights1_16_address0,weights1_16_ce0,weights1_16_we0,weights1_16_d0,weights1_16_q0,weights1_15_address0,weights1_15_ce0,weights1_15_we0,weights1_15_d0,weights1_15_q0,weights1_14_address0,weights1_14_ce0,weights1_14_we0,weights1_14_d0,weights1_14_q0,weights1_13_address0,weights1_13_ce0,weights1_13_we0,weights1_13_d0,weights1_13_q0,weights1_12_address0,weights1_12_ce0,weights1_12_we0,weights1_12_d0,weights1_12_q0,weights1_11_address0,weights1_11_ce0,weights1_11_we0,weights1_11_d0,weights1_11_q0,weights1_10_address0,weights1_10_ce0,weights1_10_we0,weights1_10_d0,weights1_10_q0,weights1_9_address0,weights1_9_ce0,weights1_9_we0,weights1_9_d0,weights1_9_q0,weights1_8_address0,weights1_8_ce0,weights1_8_we0,weights1_8_d0,weights1_8_q0,weights1_7_address0,weights1_7_ce0,weights1_7_we0,weights1_7_d0,weights1_7_q0,weights1_6_address0,weights1_6_ce0,weights1_6_we0,weights1_6_d0,weights1_6_q0,weights1_5_address0,weights1_5_ce0,weights1_5_we0,weights1_5_d0,weights1_5_q0,weights1_4_address0,weights1_4_ce0,weights1_4_we0,weights1_4_d0,weights1_4_q0,weights1_3_address0,weights1_3_ce0,weights1_3_we0,weights1_3_d0,weights1_3_q0,weights1_2_address0,weights1_2_ce0,weights1_2_we0,weights1_2_d0,weights1_2_q0,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,d_weights1_0_address0,d_weights1_0_ce0,d_weights1_0_q0,d_weights1_2_address0,d_weights1_2_ce0,d_weights1_2_q0,d_weights1_4_address0,d_weights1_4_ce0,d_weights1_4_q0,d_weights1_6_address0,d_weights1_6_ce0,d_weights1_6_q0,d_weights1_8_address0,d_weights1_8_ce0,d_weights1_8_q0,d_weights1_10_address0,d_weights1_10_ce0,d_weights1_10_q0,d_weights1_12_address0,d_weights1_12_ce0,d_weights1_12_q0,d_weights1_14_address0,d_weights1_14_ce0,d_weights1_14_q0,d_weights1_16_address0,d_weights1_16_ce0,d_weights1_16_q0,d_weights1_18_address0,d_weights1_18_ce0,d_weights1_18_q0,d_weights1_20_address0,d_weights1_20_ce0,d_weights1_20_q0,d_weights1_22_address0,d_weights1_22_ce0,d_weights1_22_q0,d_weights1_24_address0,d_weights1_24_ce0,d_weights1_24_q0,d_weights1_26_address0,d_weights1_26_ce0,d_weights1_26_q0,d_weights1_28_address0,d_weights1_28_ce0,d_weights1_28_q0,d_weights1_30_address0,d_weights1_30_ce0,d_weights1_30_q0,d_weights1_1_address0,d_weights1_1_ce0,d_weights1_1_q0,d_weights1_3_address0,d_weights1_3_ce0,d_weights1_3_q0,d_weights1_5_address0,d_weights1_5_ce0,d_weights1_5_q0,d_weights1_7_address0,d_weights1_7_ce0,d_weights1_7_q0,d_weights1_9_address0,d_weights1_9_ce0,d_weights1_9_q0,d_weights1_11_address0,d_weights1_11_ce0,d_weights1_11_q0,d_weights1_13_address0,d_weights1_13_ce0,d_weights1_13_q0,d_weights1_15_address0,d_weights1_15_ce0,d_weights1_15_q0,d_weights1_17_address0,d_weights1_17_ce0,d_weights1_17_q0,d_weights1_19_address0,d_weights1_19_ce0,d_weights1_19_q0,d_weights1_21_address0,d_weights1_21_ce0,d_weights1_21_q0,d_weights1_23_address0,d_weights1_23_ce0,d_weights1_23_q0,d_weights1_25_address0,d_weights1_25_ce0,d_weights1_25_q0,d_weights1_27_address0,d_weights1_27_ce0,d_weights1_27_q0,d_weights1_29_address0,d_weights1_29_ce0,d_weights1_29_q0,d_weights1_31_address0,d_weights1_31_ce0,d_weights1_31_q0,norm_2_out,norm_2_out_ap_vld,grp_fu_1919_p_din0,grp_fu_1919_p_din1,grp_fu_1919_p_opcode,grp_fu_1919_p_dout0,grp_fu_1919_p_ce,grp_fu_1923_p_din0,grp_fu_1923_p_din1,grp_fu_1923_p_dout0,grp_fu_1923_p_ce); 
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
output  [4:0] weights1_31_address0;
output   weights1_31_ce0;
output   weights1_31_we0;
output  [63:0] weights1_31_d0;
input  [63:0] weights1_31_q0;
output  [4:0] weights1_30_address0;
output   weights1_30_ce0;
output   weights1_30_we0;
output  [63:0] weights1_30_d0;
input  [63:0] weights1_30_q0;
output  [4:0] weights1_29_address0;
output   weights1_29_ce0;
output   weights1_29_we0;
output  [63:0] weights1_29_d0;
input  [63:0] weights1_29_q0;
output  [4:0] weights1_28_address0;
output   weights1_28_ce0;
output   weights1_28_we0;
output  [63:0] weights1_28_d0;
input  [63:0] weights1_28_q0;
output  [4:0] weights1_27_address0;
output   weights1_27_ce0;
output   weights1_27_we0;
output  [63:0] weights1_27_d0;
input  [63:0] weights1_27_q0;
output  [4:0] weights1_26_address0;
output   weights1_26_ce0;
output   weights1_26_we0;
output  [63:0] weights1_26_d0;
input  [63:0] weights1_26_q0;
output  [4:0] weights1_25_address0;
output   weights1_25_ce0;
output   weights1_25_we0;
output  [63:0] weights1_25_d0;
input  [63:0] weights1_25_q0;
output  [4:0] weights1_24_address0;
output   weights1_24_ce0;
output   weights1_24_we0;
output  [63:0] weights1_24_d0;
input  [63:0] weights1_24_q0;
output  [4:0] weights1_23_address0;
output   weights1_23_ce0;
output   weights1_23_we0;
output  [63:0] weights1_23_d0;
input  [63:0] weights1_23_q0;
output  [4:0] weights1_22_address0;
output   weights1_22_ce0;
output   weights1_22_we0;
output  [63:0] weights1_22_d0;
input  [63:0] weights1_22_q0;
output  [4:0] weights1_21_address0;
output   weights1_21_ce0;
output   weights1_21_we0;
output  [63:0] weights1_21_d0;
input  [63:0] weights1_21_q0;
output  [4:0] weights1_20_address0;
output   weights1_20_ce0;
output   weights1_20_we0;
output  [63:0] weights1_20_d0;
input  [63:0] weights1_20_q0;
output  [4:0] weights1_19_address0;
output   weights1_19_ce0;
output   weights1_19_we0;
output  [63:0] weights1_19_d0;
input  [63:0] weights1_19_q0;
output  [4:0] weights1_18_address0;
output   weights1_18_ce0;
output   weights1_18_we0;
output  [63:0] weights1_18_d0;
input  [63:0] weights1_18_q0;
output  [4:0] weights1_17_address0;
output   weights1_17_ce0;
output   weights1_17_we0;
output  [63:0] weights1_17_d0;
input  [63:0] weights1_17_q0;
output  [4:0] weights1_16_address0;
output   weights1_16_ce0;
output   weights1_16_we0;
output  [63:0] weights1_16_d0;
input  [63:0] weights1_16_q0;
output  [4:0] weights1_15_address0;
output   weights1_15_ce0;
output   weights1_15_we0;
output  [63:0] weights1_15_d0;
input  [63:0] weights1_15_q0;
output  [4:0] weights1_14_address0;
output   weights1_14_ce0;
output   weights1_14_we0;
output  [63:0] weights1_14_d0;
input  [63:0] weights1_14_q0;
output  [4:0] weights1_13_address0;
output   weights1_13_ce0;
output   weights1_13_we0;
output  [63:0] weights1_13_d0;
input  [63:0] weights1_13_q0;
output  [4:0] weights1_12_address0;
output   weights1_12_ce0;
output   weights1_12_we0;
output  [63:0] weights1_12_d0;
input  [63:0] weights1_12_q0;
output  [4:0] weights1_11_address0;
output   weights1_11_ce0;
output   weights1_11_we0;
output  [63:0] weights1_11_d0;
input  [63:0] weights1_11_q0;
output  [4:0] weights1_10_address0;
output   weights1_10_ce0;
output   weights1_10_we0;
output  [63:0] weights1_10_d0;
input  [63:0] weights1_10_q0;
output  [4:0] weights1_9_address0;
output   weights1_9_ce0;
output   weights1_9_we0;
output  [63:0] weights1_9_d0;
input  [63:0] weights1_9_q0;
output  [4:0] weights1_8_address0;
output   weights1_8_ce0;
output   weights1_8_we0;
output  [63:0] weights1_8_d0;
input  [63:0] weights1_8_q0;
output  [4:0] weights1_7_address0;
output   weights1_7_ce0;
output   weights1_7_we0;
output  [63:0] weights1_7_d0;
input  [63:0] weights1_7_q0;
output  [4:0] weights1_6_address0;
output   weights1_6_ce0;
output   weights1_6_we0;
output  [63:0] weights1_6_d0;
input  [63:0] weights1_6_q0;
output  [4:0] weights1_5_address0;
output   weights1_5_ce0;
output   weights1_5_we0;
output  [63:0] weights1_5_d0;
input  [63:0] weights1_5_q0;
output  [4:0] weights1_4_address0;
output   weights1_4_ce0;
output   weights1_4_we0;
output  [63:0] weights1_4_d0;
input  [63:0] weights1_4_q0;
output  [4:0] weights1_3_address0;
output   weights1_3_ce0;
output   weights1_3_we0;
output  [63:0] weights1_3_d0;
input  [63:0] weights1_3_q0;
output  [4:0] weights1_2_address0;
output   weights1_2_ce0;
output   weights1_2_we0;
output  [63:0] weights1_2_d0;
input  [63:0] weights1_2_q0;
output  [4:0] weights1_1_address0;
output   weights1_1_ce0;
output   weights1_1_we0;
output  [63:0] weights1_1_d0;
input  [63:0] weights1_1_q0;
output  [4:0] weights1_0_address0;
output   weights1_0_ce0;
output   weights1_0_we0;
output  [63:0] weights1_0_d0;
input  [63:0] weights1_0_q0;
output  [4:0] d_weights1_0_address0;
output   d_weights1_0_ce0;
input  [63:0] d_weights1_0_q0;
output  [4:0] d_weights1_2_address0;
output   d_weights1_2_ce0;
input  [63:0] d_weights1_2_q0;
output  [4:0] d_weights1_4_address0;
output   d_weights1_4_ce0;
input  [63:0] d_weights1_4_q0;
output  [4:0] d_weights1_6_address0;
output   d_weights1_6_ce0;
input  [63:0] d_weights1_6_q0;
output  [4:0] d_weights1_8_address0;
output   d_weights1_8_ce0;
input  [63:0] d_weights1_8_q0;
output  [4:0] d_weights1_10_address0;
output   d_weights1_10_ce0;
input  [63:0] d_weights1_10_q0;
output  [4:0] d_weights1_12_address0;
output   d_weights1_12_ce0;
input  [63:0] d_weights1_12_q0;
output  [4:0] d_weights1_14_address0;
output   d_weights1_14_ce0;
input  [63:0] d_weights1_14_q0;
output  [4:0] d_weights1_16_address0;
output   d_weights1_16_ce0;
input  [63:0] d_weights1_16_q0;
output  [4:0] d_weights1_18_address0;
output   d_weights1_18_ce0;
input  [63:0] d_weights1_18_q0;
output  [4:0] d_weights1_20_address0;
output   d_weights1_20_ce0;
input  [63:0] d_weights1_20_q0;
output  [4:0] d_weights1_22_address0;
output   d_weights1_22_ce0;
input  [63:0] d_weights1_22_q0;
output  [4:0] d_weights1_24_address0;
output   d_weights1_24_ce0;
input  [63:0] d_weights1_24_q0;
output  [4:0] d_weights1_26_address0;
output   d_weights1_26_ce0;
input  [63:0] d_weights1_26_q0;
output  [4:0] d_weights1_28_address0;
output   d_weights1_28_ce0;
input  [63:0] d_weights1_28_q0;
output  [4:0] d_weights1_30_address0;
output   d_weights1_30_ce0;
input  [63:0] d_weights1_30_q0;
output  [4:0] d_weights1_1_address0;
output   d_weights1_1_ce0;
input  [63:0] d_weights1_1_q0;
output  [4:0] d_weights1_3_address0;
output   d_weights1_3_ce0;
input  [63:0] d_weights1_3_q0;
output  [4:0] d_weights1_5_address0;
output   d_weights1_5_ce0;
input  [63:0] d_weights1_5_q0;
output  [4:0] d_weights1_7_address0;
output   d_weights1_7_ce0;
input  [63:0] d_weights1_7_q0;
output  [4:0] d_weights1_9_address0;
output   d_weights1_9_ce0;
input  [63:0] d_weights1_9_q0;
output  [4:0] d_weights1_11_address0;
output   d_weights1_11_ce0;
input  [63:0] d_weights1_11_q0;
output  [4:0] d_weights1_13_address0;
output   d_weights1_13_ce0;
input  [63:0] d_weights1_13_q0;
output  [4:0] d_weights1_15_address0;
output   d_weights1_15_ce0;
input  [63:0] d_weights1_15_q0;
output  [4:0] d_weights1_17_address0;
output   d_weights1_17_ce0;
input  [63:0] d_weights1_17_q0;
output  [4:0] d_weights1_19_address0;
output   d_weights1_19_ce0;
input  [63:0] d_weights1_19_q0;
output  [4:0] d_weights1_21_address0;
output   d_weights1_21_ce0;
input  [63:0] d_weights1_21_q0;
output  [4:0] d_weights1_23_address0;
output   d_weights1_23_ce0;
input  [63:0] d_weights1_23_q0;
output  [4:0] d_weights1_25_address0;
output   d_weights1_25_ce0;
input  [63:0] d_weights1_25_q0;
output  [4:0] d_weights1_27_address0;
output   d_weights1_27_ce0;
input  [63:0] d_weights1_27_q0;
output  [4:0] d_weights1_29_address0;
output   d_weights1_29_ce0;
input  [63:0] d_weights1_29_q0;
output  [4:0] d_weights1_31_address0;
output   d_weights1_31_ce0;
input  [63:0] d_weights1_31_q0;
output  [63:0] norm_2_out;
output   norm_2_out_ap_vld;
output  [63:0] grp_fu_1919_p_din0;
output  [63:0] grp_fu_1919_p_din1;
output  [1:0] grp_fu_1919_p_opcode;
input  [63:0] grp_fu_1919_p_dout0;
output   grp_fu_1919_p_ce;
output  [63:0] grp_fu_1923_p_din0;
output  [63:0] grp_fu_1923_p_din1;
input  [63:0] grp_fu_1923_p_dout0;
output   grp_fu_1923_p_ce;
reg ap_idle;
reg norm_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln126_reg_1751;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln126_fu_1105_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln126_reg_1751_pp0_iter1_reg;
wire   [8:0] add_ln126_fu_1111_p2;
reg   [8:0] add_ln126_reg_1755;
wire   [6:0] select_ln121_fu_1131_p3;
reg   [6:0] select_ln121_reg_1760;
wire   [3:0] select_ln126_fu_1145_p3;
reg   [3:0] select_ln126_reg_1765;
wire   [4:0] trunc_ln127_fu_1153_p1;
reg   [4:0] trunc_ln127_reg_1770;
reg   [4:0] trunc_ln127_reg_1770_pp0_iter1_reg;
reg   [4:0] weights1_0_addr_reg_1858;
reg   [4:0] weights1_0_addr_reg_1858_pp0_iter1_reg;
reg   [4:0] weights1_2_addr_reg_1863;
reg   [4:0] weights1_2_addr_reg_1863_pp0_iter1_reg;
reg   [4:0] weights1_4_addr_reg_1868;
reg   [4:0] weights1_4_addr_reg_1868_pp0_iter1_reg;
reg   [4:0] weights1_6_addr_reg_1873;
reg   [4:0] weights1_6_addr_reg_1873_pp0_iter1_reg;
reg   [4:0] weights1_8_addr_reg_1878;
reg   [4:0] weights1_8_addr_reg_1878_pp0_iter1_reg;
reg   [4:0] weights1_10_addr_reg_1883;
reg   [4:0] weights1_10_addr_reg_1883_pp0_iter1_reg;
reg   [4:0] weights1_12_addr_reg_1888;
reg   [4:0] weights1_12_addr_reg_1888_pp0_iter1_reg;
reg   [4:0] weights1_14_addr_reg_1893;
reg   [4:0] weights1_14_addr_reg_1893_pp0_iter1_reg;
reg   [4:0] weights1_16_addr_reg_1898;
reg   [4:0] weights1_16_addr_reg_1898_pp0_iter1_reg;
reg   [4:0] weights1_18_addr_reg_1903;
reg   [4:0] weights1_18_addr_reg_1903_pp0_iter1_reg;
reg   [4:0] weights1_20_addr_reg_1908;
reg   [4:0] weights1_20_addr_reg_1908_pp0_iter1_reg;
reg   [4:0] weights1_22_addr_reg_1913;
reg   [4:0] weights1_22_addr_reg_1913_pp0_iter1_reg;
reg   [4:0] weights1_24_addr_reg_1918;
reg   [4:0] weights1_24_addr_reg_1918_pp0_iter1_reg;
reg   [4:0] weights1_26_addr_reg_1923;
reg   [4:0] weights1_26_addr_reg_1923_pp0_iter1_reg;
reg   [4:0] weights1_28_addr_reg_1928;
reg   [4:0] weights1_28_addr_reg_1928_pp0_iter1_reg;
reg   [4:0] weights1_30_addr_reg_1933;
reg   [4:0] weights1_30_addr_reg_1933_pp0_iter1_reg;
reg   [4:0] weights1_1_addr_reg_2018;
reg   [4:0] weights1_1_addr_reg_2018_pp0_iter1_reg;
reg   [4:0] weights1_3_addr_reg_2023;
reg   [4:0] weights1_3_addr_reg_2023_pp0_iter1_reg;
reg   [4:0] weights1_5_addr_reg_2028;
reg   [4:0] weights1_5_addr_reg_2028_pp0_iter1_reg;
reg   [4:0] weights1_7_addr_reg_2033;
reg   [4:0] weights1_7_addr_reg_2033_pp0_iter1_reg;
reg   [4:0] weights1_9_addr_reg_2038;
reg   [4:0] weights1_9_addr_reg_2038_pp0_iter1_reg;
reg   [4:0] weights1_11_addr_reg_2043;
reg   [4:0] weights1_11_addr_reg_2043_pp0_iter1_reg;
reg   [4:0] weights1_13_addr_reg_2048;
reg   [4:0] weights1_13_addr_reg_2048_pp0_iter1_reg;
reg   [4:0] weights1_15_addr_reg_2053;
reg   [4:0] weights1_15_addr_reg_2053_pp0_iter1_reg;
reg   [4:0] weights1_17_addr_reg_2058;
reg   [4:0] weights1_17_addr_reg_2058_pp0_iter1_reg;
reg   [4:0] weights1_19_addr_reg_2063;
reg   [4:0] weights1_19_addr_reg_2063_pp0_iter1_reg;
reg   [4:0] weights1_21_addr_reg_2068;
reg   [4:0] weights1_21_addr_reg_2068_pp0_iter1_reg;
reg   [4:0] weights1_23_addr_reg_2073;
reg   [4:0] weights1_23_addr_reg_2073_pp0_iter1_reg;
reg   [4:0] weights1_25_addr_reg_2078;
reg   [4:0] weights1_25_addr_reg_2078_pp0_iter1_reg;
reg   [4:0] weights1_27_addr_reg_2083;
reg   [4:0] weights1_27_addr_reg_2083_pp0_iter1_reg;
reg   [4:0] weights1_29_addr_reg_2088;
reg   [4:0] weights1_29_addr_reg_2088_pp0_iter1_reg;
reg   [4:0] weights1_31_addr_reg_2093;
reg   [4:0] weights1_31_addr_reg_2093_pp0_iter1_reg;
wire   [63:0] tmp_5_fu_1241_p35;
reg   [63:0] tmp_5_reg_2098;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_6_fu_1376_p35;
reg   [63:0] tmp_6_reg_2103;
wire   [63:0] tmp_7_fu_1447_p35;
reg   [63:0] tmp_7_reg_2108;
wire   [63:0] tmp_8_fu_1582_p35;
reg   [63:0] tmp_8_reg_2113;
reg   [63:0] mul4_reg_2118;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul4_1_reg_2123;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] sub_reg_2128;
reg   [63:0] sub_1_reg_2135;
reg   [63:0] mul2_reg_2142;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] mul17_1_reg_2152;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] norm_3_reg_2157;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
wire   [63:0] zext_ln128_fu_1173_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_2_fu_218;
wire    ap_block_pp0_stage8;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage15_11001;
reg    ap_condition_exit_pp0_iter1_stage8;
reg    ap_idle_pp0_0to0;
reg   [6:0] j_fu_222;
wire   [6:0] add_ln127_fu_1661_p2;
reg   [3:0] i_fu_226;
reg   [8:0] indvar_flatten_fu_230;
wire    ap_block_pp0_stage8_01001;
reg    d_weights1_0_ce0_local;
reg    d_weights1_2_ce0_local;
reg    d_weights1_4_ce0_local;
reg    d_weights1_6_ce0_local;
reg    d_weights1_8_ce0_local;
reg    d_weights1_10_ce0_local;
reg    d_weights1_12_ce0_local;
reg    d_weights1_14_ce0_local;
reg    d_weights1_16_ce0_local;
reg    d_weights1_18_ce0_local;
reg    d_weights1_20_ce0_local;
reg    d_weights1_22_ce0_local;
reg    d_weights1_24_ce0_local;
reg    d_weights1_26_ce0_local;
reg    d_weights1_28_ce0_local;
reg    d_weights1_30_ce0_local;
reg    weights1_0_ce0_local;
reg   [4:0] weights1_0_address0_local;
reg    weights1_0_we0_local;
reg    ap_predicate_pred950_state19;
wire   [63:0] bitcast_ln128_32_fu_1671_p1;
wire    ap_block_pp0_stage2;
reg    weights1_2_ce0_local;
reg   [4:0] weights1_2_address0_local;
reg    weights1_2_we0_local;
reg    ap_predicate_pred966_state19;
reg    weights1_4_ce0_local;
reg   [4:0] weights1_4_address0_local;
reg    weights1_4_we0_local;
reg    ap_predicate_pred976_state19;
reg    weights1_6_ce0_local;
reg   [4:0] weights1_6_address0_local;
reg    weights1_6_we0_local;
reg    ap_predicate_pred986_state19;
reg    weights1_8_ce0_local;
reg   [4:0] weights1_8_address0_local;
reg    weights1_8_we0_local;
reg    ap_predicate_pred996_state19;
reg    weights1_10_ce0_local;
reg   [4:0] weights1_10_address0_local;
reg    weights1_10_we0_local;
reg    ap_predicate_pred1006_state19;
reg    weights1_12_ce0_local;
reg   [4:0] weights1_12_address0_local;
reg    weights1_12_we0_local;
reg    ap_predicate_pred1016_state19;
reg    weights1_14_ce0_local;
reg   [4:0] weights1_14_address0_local;
reg    weights1_14_we0_local;
reg    ap_predicate_pred1026_state19;
reg    weights1_16_ce0_local;
reg   [4:0] weights1_16_address0_local;
reg    weights1_16_we0_local;
reg    ap_predicate_pred1036_state19;
reg    weights1_18_ce0_local;
reg   [4:0] weights1_18_address0_local;
reg    weights1_18_we0_local;
reg    ap_predicate_pred1046_state19;
reg    weights1_20_ce0_local;
reg   [4:0] weights1_20_address0_local;
reg    weights1_20_we0_local;
reg    ap_predicate_pred1056_state19;
reg    weights1_22_ce0_local;
reg   [4:0] weights1_22_address0_local;
reg    weights1_22_we0_local;
reg    ap_predicate_pred1066_state19;
reg    weights1_24_ce0_local;
reg   [4:0] weights1_24_address0_local;
reg    weights1_24_we0_local;
reg    ap_predicate_pred1076_state19;
reg    weights1_26_ce0_local;
reg   [4:0] weights1_26_address0_local;
reg    weights1_26_we0_local;
reg    ap_predicate_pred1086_state19;
reg    weights1_28_ce0_local;
reg   [4:0] weights1_28_address0_local;
reg    weights1_28_we0_local;
reg    ap_predicate_pred1096_state19;
reg    weights1_30_ce0_local;
reg   [4:0] weights1_30_address0_local;
reg    weights1_30_we0_local;
reg    ap_predicate_pred1133_state19;
reg    d_weights1_1_ce0_local;
reg    d_weights1_3_ce0_local;
reg    d_weights1_5_ce0_local;
reg    d_weights1_7_ce0_local;
reg    d_weights1_9_ce0_local;
reg    d_weights1_11_ce0_local;
reg    d_weights1_13_ce0_local;
reg    d_weights1_15_ce0_local;
reg    d_weights1_17_ce0_local;
reg    d_weights1_19_ce0_local;
reg    d_weights1_21_ce0_local;
reg    d_weights1_23_ce0_local;
reg    d_weights1_25_ce0_local;
reg    d_weights1_27_ce0_local;
reg    d_weights1_29_ce0_local;
reg    d_weights1_31_ce0_local;
reg    weights1_1_ce0_local;
reg   [4:0] weights1_1_address0_local;
reg    weights1_1_we0_local;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_predicate_pred1200_state20;
wire   [63:0] bitcast_ln128_33_fu_1690_p1;
wire    ap_block_pp0_stage3;
reg    weights1_3_ce0_local;
reg   [4:0] weights1_3_address0_local;
reg    weights1_3_we0_local;
reg    ap_predicate_pred1215_state20;
reg    weights1_5_ce0_local;
reg   [4:0] weights1_5_address0_local;
reg    weights1_5_we0_local;
reg    ap_predicate_pred1224_state20;
reg    weights1_7_ce0_local;
reg   [4:0] weights1_7_address0_local;
reg    weights1_7_we0_local;
reg    ap_predicate_pred1233_state20;
reg    weights1_9_ce0_local;
reg   [4:0] weights1_9_address0_local;
reg    weights1_9_we0_local;
reg    ap_predicate_pred1242_state20;
reg    weights1_11_ce0_local;
reg   [4:0] weights1_11_address0_local;
reg    weights1_11_we0_local;
reg    ap_predicate_pred1251_state20;
reg    weights1_13_ce0_local;
reg   [4:0] weights1_13_address0_local;
reg    weights1_13_we0_local;
reg    ap_predicate_pred1260_state20;
reg    weights1_15_ce0_local;
reg   [4:0] weights1_15_address0_local;
reg    weights1_15_we0_local;
reg    ap_predicate_pred1269_state20;
reg    weights1_17_ce0_local;
reg   [4:0] weights1_17_address0_local;
reg    weights1_17_we0_local;
reg    ap_predicate_pred1278_state20;
reg    weights1_19_ce0_local;
reg   [4:0] weights1_19_address0_local;
reg    weights1_19_we0_local;
reg    ap_predicate_pred1287_state20;
reg    weights1_21_ce0_local;
reg   [4:0] weights1_21_address0_local;
reg    weights1_21_we0_local;
reg    ap_predicate_pred1296_state20;
reg    weights1_23_ce0_local;
reg   [4:0] weights1_23_address0_local;
reg    weights1_23_we0_local;
reg    ap_predicate_pred1305_state20;
reg    weights1_25_ce0_local;
reg   [4:0] weights1_25_address0_local;
reg    weights1_25_we0_local;
reg    ap_predicate_pred1314_state20;
reg    weights1_27_ce0_local;
reg   [4:0] weights1_27_address0_local;
reg    weights1_27_we0_local;
reg    ap_predicate_pred1323_state20;
reg    weights1_29_ce0_local;
reg   [4:0] weights1_29_address0_local;
reg    weights1_29_we0_local;
reg    ap_predicate_pred1332_state20;
reg    weights1_31_ce0_local;
reg   [4:0] weights1_31_address0_local;
reg    weights1_31_we0_local;
reg    ap_predicate_pred1369_state20;
wire    ap_block_pp0_stage0;
reg   [63:0] grp_fu_1073_p0;
reg   [63:0] grp_fu_1073_p1;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
reg   [63:0] grp_fu_1077_p0;
reg   [63:0] grp_fu_1077_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire   [0:0] tmp_fu_1123_p3;
wire   [3:0] add_ln126_1_fu_1139_p2;
wire   [0:0] tmp_9_fu_1157_p3;
wire   [4:0] or_ln_fu_1165_p3;
wire   [63:0] tmp_5_fu_1241_p33;
wire   [63:0] tmp_6_fu_1376_p2;
wire   [63:0] tmp_6_fu_1376_p4;
wire   [63:0] tmp_6_fu_1376_p6;
wire   [63:0] tmp_6_fu_1376_p8;
wire   [63:0] tmp_6_fu_1376_p10;
wire   [63:0] tmp_6_fu_1376_p12;
wire   [63:0] tmp_6_fu_1376_p14;
wire   [63:0] tmp_6_fu_1376_p16;
wire   [63:0] tmp_6_fu_1376_p18;
wire   [63:0] tmp_6_fu_1376_p20;
wire   [63:0] tmp_6_fu_1376_p22;
wire   [63:0] tmp_6_fu_1376_p24;
wire   [63:0] tmp_6_fu_1376_p26;
wire   [63:0] tmp_6_fu_1376_p28;
wire   [63:0] tmp_6_fu_1376_p30;
wire   [63:0] tmp_6_fu_1376_p32;
wire   [63:0] tmp_6_fu_1376_p33;
wire   [63:0] tmp_7_fu_1447_p33;
wire   [63:0] tmp_8_fu_1582_p2;
wire   [63:0] tmp_8_fu_1582_p4;
wire   [63:0] tmp_8_fu_1582_p6;
wire   [63:0] tmp_8_fu_1582_p8;
wire   [63:0] tmp_8_fu_1582_p10;
wire   [63:0] tmp_8_fu_1582_p12;
wire   [63:0] tmp_8_fu_1582_p14;
wire   [63:0] tmp_8_fu_1582_p16;
wire   [63:0] tmp_8_fu_1582_p18;
wire   [63:0] tmp_8_fu_1582_p20;
wire   [63:0] tmp_8_fu_1582_p22;
wire   [63:0] tmp_8_fu_1582_p24;
wire   [63:0] tmp_8_fu_1582_p26;
wire   [63:0] tmp_8_fu_1582_p28;
wire   [63:0] tmp_8_fu_1582_p30;
wire   [63:0] tmp_8_fu_1582_p32;
wire   [63:0] tmp_8_fu_1582_p33;
reg   [1:0] grp_fu_1073_opcode;
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
wire   [4:0] tmp_5_fu_1241_p1;
wire   [4:0] tmp_5_fu_1241_p3;
wire   [4:0] tmp_5_fu_1241_p5;
wire   [4:0] tmp_5_fu_1241_p7;
wire   [4:0] tmp_5_fu_1241_p9;
wire   [4:0] tmp_5_fu_1241_p11;
wire   [4:0] tmp_5_fu_1241_p13;
wire   [4:0] tmp_5_fu_1241_p15;
wire  signed [4:0] tmp_5_fu_1241_p17;
wire  signed [4:0] tmp_5_fu_1241_p19;
wire  signed [4:0] tmp_5_fu_1241_p21;
wire  signed [4:0] tmp_5_fu_1241_p23;
wire  signed [4:0] tmp_5_fu_1241_p25;
wire  signed [4:0] tmp_5_fu_1241_p27;
wire  signed [4:0] tmp_5_fu_1241_p29;
wire  signed [4:0] tmp_5_fu_1241_p31;
wire   [4:0] tmp_6_fu_1376_p1;
wire   [4:0] tmp_6_fu_1376_p3;
wire   [4:0] tmp_6_fu_1376_p5;
wire   [4:0] tmp_6_fu_1376_p7;
wire   [4:0] tmp_6_fu_1376_p9;
wire   [4:0] tmp_6_fu_1376_p11;
wire   [4:0] tmp_6_fu_1376_p13;
wire   [4:0] tmp_6_fu_1376_p15;
wire  signed [4:0] tmp_6_fu_1376_p17;
wire  signed [4:0] tmp_6_fu_1376_p19;
wire  signed [4:0] tmp_6_fu_1376_p21;
wire  signed [4:0] tmp_6_fu_1376_p23;
wire  signed [4:0] tmp_6_fu_1376_p25;
wire  signed [4:0] tmp_6_fu_1376_p27;
wire  signed [4:0] tmp_6_fu_1376_p29;
wire  signed [4:0] tmp_6_fu_1376_p31;
wire   [4:0] tmp_7_fu_1447_p1;
wire   [4:0] tmp_7_fu_1447_p3;
wire   [4:0] tmp_7_fu_1447_p5;
wire   [4:0] tmp_7_fu_1447_p7;
wire   [4:0] tmp_7_fu_1447_p9;
wire   [4:0] tmp_7_fu_1447_p11;
wire   [4:0] tmp_7_fu_1447_p13;
wire   [4:0] tmp_7_fu_1447_p15;
wire  signed [4:0] tmp_7_fu_1447_p17;
wire  signed [4:0] tmp_7_fu_1447_p19;
wire  signed [4:0] tmp_7_fu_1447_p21;
wire  signed [4:0] tmp_7_fu_1447_p23;
wire  signed [4:0] tmp_7_fu_1447_p25;
wire  signed [4:0] tmp_7_fu_1447_p27;
wire  signed [4:0] tmp_7_fu_1447_p29;
wire  signed [4:0] tmp_7_fu_1447_p31;
wire   [4:0] tmp_8_fu_1582_p1;
wire   [4:0] tmp_8_fu_1582_p3;
wire   [4:0] tmp_8_fu_1582_p5;
wire   [4:0] tmp_8_fu_1582_p7;
wire   [4:0] tmp_8_fu_1582_p9;
wire   [4:0] tmp_8_fu_1582_p11;
wire   [4:0] tmp_8_fu_1582_p13;
wire   [4:0] tmp_8_fu_1582_p15;
wire  signed [4:0] tmp_8_fu_1582_p17;
wire  signed [4:0] tmp_8_fu_1582_p19;
wire  signed [4:0] tmp_8_fu_1582_p21;
wire  signed [4:0] tmp_8_fu_1582_p23;
wire  signed [4:0] tmp_8_fu_1582_p25;
wire  signed [4:0] tmp_8_fu_1582_p27;
wire  signed [4:0] tmp_8_fu_1582_p29;
wire  signed [4:0] tmp_8_fu_1582_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_2_fu_218 = 64'd0;
#0 j_fu_222 = 7'd0;
#0 i_fu_226 = 4'd0;
#0 indvar_flatten_fu_230 = 9'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U2071(.din0(d_weights1_0_q0),.din1(d_weights1_2_q0),.din2(d_weights1_4_q0),.din3(d_weights1_6_q0),.din4(d_weights1_8_q0),.din5(d_weights1_10_q0),.din6(d_weights1_12_q0),.din7(d_weights1_14_q0),.din8(d_weights1_16_q0),.din9(d_weights1_18_q0),.din10(d_weights1_20_q0),.din11(d_weights1_22_q0),.din12(d_weights1_24_q0),.din13(d_weights1_26_q0),.din14(d_weights1_28_q0),.din15(d_weights1_30_q0),.def(tmp_5_fu_1241_p33),.sel(trunc_ln127_reg_1770),.dout(tmp_5_fu_1241_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U2072(.din0(tmp_6_fu_1376_p2),.din1(tmp_6_fu_1376_p4),.din2(tmp_6_fu_1376_p6),.din3(tmp_6_fu_1376_p8),.din4(tmp_6_fu_1376_p10),.din5(tmp_6_fu_1376_p12),.din6(tmp_6_fu_1376_p14),.din7(tmp_6_fu_1376_p16),.din8(tmp_6_fu_1376_p18),.din9(tmp_6_fu_1376_p20),.din10(tmp_6_fu_1376_p22),.din11(tmp_6_fu_1376_p24),.din12(tmp_6_fu_1376_p26),.din13(tmp_6_fu_1376_p28),.din14(tmp_6_fu_1376_p30),.din15(tmp_6_fu_1376_p32),.def(tmp_6_fu_1376_p33),.sel(trunc_ln127_reg_1770),.dout(tmp_6_fu_1376_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U2073(.din0(d_weights1_1_q0),.din1(d_weights1_3_q0),.din2(d_weights1_5_q0),.din3(d_weights1_7_q0),.din4(d_weights1_9_q0),.din5(d_weights1_11_q0),.din6(d_weights1_13_q0),.din7(d_weights1_15_q0),.din8(d_weights1_17_q0),.din9(d_weights1_19_q0),.din10(d_weights1_21_q0),.din11(d_weights1_23_q0),.din12(d_weights1_25_q0),.din13(d_weights1_27_q0),.din14(d_weights1_29_q0),.din15(d_weights1_31_q0),.def(tmp_7_fu_1447_p33),.sel(trunc_ln127_reg_1770),.dout(tmp_7_fu_1447_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h2 ),.din1_WIDTH( 64 ),.CASE2( 5'h4 ),.din2_WIDTH( 64 ),.CASE3( 5'h6 ),.din3_WIDTH( 64 ),.CASE4( 5'h8 ),.din4_WIDTH( 64 ),.CASE5( 5'hA ),.din5_WIDTH( 64 ),.CASE6( 5'hC ),.din6_WIDTH( 64 ),.CASE7( 5'hE ),.din7_WIDTH( 64 ),.CASE8( 5'h10 ),.din8_WIDTH( 64 ),.CASE9( 5'h12 ),.din9_WIDTH( 64 ),.CASE10( 5'h14 ),.din10_WIDTH( 64 ),.CASE11( 5'h16 ),.din11_WIDTH( 64 ),.CASE12( 5'h18 ),.din12_WIDTH( 64 ),.CASE13( 5'h1A ),.din13_WIDTH( 64 ),.CASE14( 5'h1C ),.din14_WIDTH( 64 ),.CASE15( 5'h1E ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_33_5_64_1_1_U2074(.din0(tmp_8_fu_1582_p2),.din1(tmp_8_fu_1582_p4),.din2(tmp_8_fu_1582_p6),.din3(tmp_8_fu_1582_p8),.din4(tmp_8_fu_1582_p10),.din5(tmp_8_fu_1582_p12),.din6(tmp_8_fu_1582_p14),.din7(tmp_8_fu_1582_p16),.din8(tmp_8_fu_1582_p18),.din9(tmp_8_fu_1582_p20),.din10(tmp_8_fu_1582_p22),.din11(tmp_8_fu_1582_p24),.din12(tmp_8_fu_1582_p26),.din13(tmp_8_fu_1582_p28),.din14(tmp_8_fu_1582_p30),.din15(tmp_8_fu_1582_p32),.def(tmp_8_fu_1582_p33),.sel(trunc_ln127_reg_1770),.dout(tmp_8_fu_1582_p35));
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
        i_fu_226 <= 4'd0;
    end else if (((icmp_ln126_reg_1751 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_226 <= select_ln126_reg_1765;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_230 <= 9'd0;
    end else if (((icmp_ln126_reg_1751 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten_fu_230 <= add_ln126_reg_1755;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_222 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_222 <= add_ln127_fu_1661_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_2_fu_218 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        norm_2_fu_218 <= grp_fu_1919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln126_reg_1755 <= add_ln126_fu_1111_p2;
        ap_predicate_pred1006_state19 <= (trunc_ln127_reg_1770 == 5'd10);
        ap_predicate_pred1016_state19 <= (trunc_ln127_reg_1770 == 5'd12);
        ap_predicate_pred1026_state19 <= (trunc_ln127_reg_1770 == 5'd14);
        ap_predicate_pred1036_state19 <= (trunc_ln127_reg_1770 == 5'd16);
        ap_predicate_pred1046_state19 <= (trunc_ln127_reg_1770 == 5'd18);
        ap_predicate_pred1056_state19 <= (trunc_ln127_reg_1770 == 5'd20);
        ap_predicate_pred1066_state19 <= (trunc_ln127_reg_1770 == 5'd22);
        ap_predicate_pred1076_state19 <= (trunc_ln127_reg_1770 == 5'd24);
        ap_predicate_pred1086_state19 <= (trunc_ln127_reg_1770 == 5'd26);
        ap_predicate_pred1096_state19 <= (trunc_ln127_reg_1770 == 5'd28);
        ap_predicate_pred1133_state19 <= (~(trunc_ln127_reg_1770 == 5'd8) & ~(trunc_ln127_reg_1770 == 5'd6) & ~(trunc_ln127_reg_1770 == 5'd4) & ~(trunc_ln127_reg_1770 == 5'd2) & ~(trunc_ln127_reg_1770 == 5'd0) & ~(trunc_ln127_reg_1770 == 5'd28) & ~(trunc_ln127_reg_1770 == 5'd26) & ~(trunc_ln127_reg_1770 == 5'd24) & ~(trunc_ln127_reg_1770 == 5'd22) & ~(trunc_ln127_reg_1770 == 5'd20) & ~(trunc_ln127_reg_1770 == 5'd18) & ~(trunc_ln127_reg_1770 == 5'd16) & ~(trunc_ln127_reg_1770 == 5'd14) & ~(trunc_ln127_reg_1770 == 5'd12) & ~(trunc_ln127_reg_1770 == 5'd10));
        ap_predicate_pred950_state19 <= (trunc_ln127_reg_1770 == 5'd0);
        ap_predicate_pred966_state19 <= (trunc_ln127_reg_1770 == 5'd2);
        ap_predicate_pred976_state19 <= (trunc_ln127_reg_1770 == 5'd4);
        ap_predicate_pred986_state19 <= (trunc_ln127_reg_1770 == 5'd6);
        ap_predicate_pred996_state19 <= (trunc_ln127_reg_1770 == 5'd8);
        icmp_ln126_reg_1751 <= icmp_ln126_fu_1105_p2;
        icmp_ln126_reg_1751_pp0_iter1_reg <= icmp_ln126_reg_1751;
        select_ln121_reg_1760 <= select_ln121_fu_1131_p3;
        select_ln126_reg_1765 <= select_ln126_fu_1145_p3;
        trunc_ln127_reg_1770 <= trunc_ln127_fu_1153_p1;
        trunc_ln127_reg_1770_pp0_iter1_reg <= trunc_ln127_reg_1770;
        weights1_0_addr_reg_1858 <= zext_ln128_fu_1173_p1;
        weights1_0_addr_reg_1858_pp0_iter1_reg <= weights1_0_addr_reg_1858;
        weights1_10_addr_reg_1883 <= zext_ln128_fu_1173_p1;
        weights1_10_addr_reg_1883_pp0_iter1_reg <= weights1_10_addr_reg_1883;
        weights1_11_addr_reg_2043 <= zext_ln128_fu_1173_p1;
        weights1_11_addr_reg_2043_pp0_iter1_reg <= weights1_11_addr_reg_2043;
        weights1_12_addr_reg_1888 <= zext_ln128_fu_1173_p1;
        weights1_12_addr_reg_1888_pp0_iter1_reg <= weights1_12_addr_reg_1888;
        weights1_13_addr_reg_2048 <= zext_ln128_fu_1173_p1;
        weights1_13_addr_reg_2048_pp0_iter1_reg <= weights1_13_addr_reg_2048;
        weights1_14_addr_reg_1893 <= zext_ln128_fu_1173_p1;
        weights1_14_addr_reg_1893_pp0_iter1_reg <= weights1_14_addr_reg_1893;
        weights1_15_addr_reg_2053 <= zext_ln128_fu_1173_p1;
        weights1_15_addr_reg_2053_pp0_iter1_reg <= weights1_15_addr_reg_2053;
        weights1_16_addr_reg_1898 <= zext_ln128_fu_1173_p1;
        weights1_16_addr_reg_1898_pp0_iter1_reg <= weights1_16_addr_reg_1898;
        weights1_17_addr_reg_2058 <= zext_ln128_fu_1173_p1;
        weights1_17_addr_reg_2058_pp0_iter1_reg <= weights1_17_addr_reg_2058;
        weights1_18_addr_reg_1903 <= zext_ln128_fu_1173_p1;
        weights1_18_addr_reg_1903_pp0_iter1_reg <= weights1_18_addr_reg_1903;
        weights1_19_addr_reg_2063 <= zext_ln128_fu_1173_p1;
        weights1_19_addr_reg_2063_pp0_iter1_reg <= weights1_19_addr_reg_2063;
        weights1_1_addr_reg_2018 <= zext_ln128_fu_1173_p1;
        weights1_1_addr_reg_2018_pp0_iter1_reg <= weights1_1_addr_reg_2018;
        weights1_20_addr_reg_1908 <= zext_ln128_fu_1173_p1;
        weights1_20_addr_reg_1908_pp0_iter1_reg <= weights1_20_addr_reg_1908;
        weights1_21_addr_reg_2068 <= zext_ln128_fu_1173_p1;
        weights1_21_addr_reg_2068_pp0_iter1_reg <= weights1_21_addr_reg_2068;
        weights1_22_addr_reg_1913 <= zext_ln128_fu_1173_p1;
        weights1_22_addr_reg_1913_pp0_iter1_reg <= weights1_22_addr_reg_1913;
        weights1_23_addr_reg_2073 <= zext_ln128_fu_1173_p1;
        weights1_23_addr_reg_2073_pp0_iter1_reg <= weights1_23_addr_reg_2073;
        weights1_24_addr_reg_1918 <= zext_ln128_fu_1173_p1;
        weights1_24_addr_reg_1918_pp0_iter1_reg <= weights1_24_addr_reg_1918;
        weights1_25_addr_reg_2078 <= zext_ln128_fu_1173_p1;
        weights1_25_addr_reg_2078_pp0_iter1_reg <= weights1_25_addr_reg_2078;
        weights1_26_addr_reg_1923 <= zext_ln128_fu_1173_p1;
        weights1_26_addr_reg_1923_pp0_iter1_reg <= weights1_26_addr_reg_1923;
        weights1_27_addr_reg_2083 <= zext_ln128_fu_1173_p1;
        weights1_27_addr_reg_2083_pp0_iter1_reg <= weights1_27_addr_reg_2083;
        weights1_28_addr_reg_1928 <= zext_ln128_fu_1173_p1;
        weights1_28_addr_reg_1928_pp0_iter1_reg <= weights1_28_addr_reg_1928;
        weights1_29_addr_reg_2088 <= zext_ln128_fu_1173_p1;
        weights1_29_addr_reg_2088_pp0_iter1_reg <= weights1_29_addr_reg_2088;
        weights1_2_addr_reg_1863 <= zext_ln128_fu_1173_p1;
        weights1_2_addr_reg_1863_pp0_iter1_reg <= weights1_2_addr_reg_1863;
        weights1_30_addr_reg_1933 <= zext_ln128_fu_1173_p1;
        weights1_30_addr_reg_1933_pp0_iter1_reg <= weights1_30_addr_reg_1933;
        weights1_31_addr_reg_2093 <= zext_ln128_fu_1173_p1;
        weights1_31_addr_reg_2093_pp0_iter1_reg <= weights1_31_addr_reg_2093;
        weights1_3_addr_reg_2023 <= zext_ln128_fu_1173_p1;
        weights1_3_addr_reg_2023_pp0_iter1_reg <= weights1_3_addr_reg_2023;
        weights1_4_addr_reg_1868 <= zext_ln128_fu_1173_p1;
        weights1_4_addr_reg_1868_pp0_iter1_reg <= weights1_4_addr_reg_1868;
        weights1_5_addr_reg_2028 <= zext_ln128_fu_1173_p1;
        weights1_5_addr_reg_2028_pp0_iter1_reg <= weights1_5_addr_reg_2028;
        weights1_6_addr_reg_1873 <= zext_ln128_fu_1173_p1;
        weights1_6_addr_reg_1873_pp0_iter1_reg <= weights1_6_addr_reg_1873;
        weights1_7_addr_reg_2033 <= zext_ln128_fu_1173_p1;
        weights1_7_addr_reg_2033_pp0_iter1_reg <= weights1_7_addr_reg_2033;
        weights1_8_addr_reg_1878 <= zext_ln128_fu_1173_p1;
        weights1_8_addr_reg_1878_pp0_iter1_reg <= weights1_8_addr_reg_1878;
        weights1_9_addr_reg_2038 <= zext_ln128_fu_1173_p1;
        weights1_9_addr_reg_2038_pp0_iter1_reg <= weights1_9_addr_reg_2038;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred1200_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd0);
        ap_predicate_pred1215_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd2);
        ap_predicate_pred1224_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd4);
        ap_predicate_pred1233_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd6);
        ap_predicate_pred1242_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd8);
        ap_predicate_pred1251_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd10);
        ap_predicate_pred1260_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd12);
        ap_predicate_pred1269_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd14);
        ap_predicate_pred1278_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd16);
        ap_predicate_pred1287_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd18);
        ap_predicate_pred1296_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd20);
        ap_predicate_pred1305_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd22);
        ap_predicate_pred1314_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd24);
        ap_predicate_pred1323_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd26);
        ap_predicate_pred1332_state20 <= (trunc_ln127_reg_1770_pp0_iter1_reg == 5'd28);
        ap_predicate_pred1369_state20 <= (~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd28) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd26) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd24) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd22) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd20) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd18) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd16) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd14) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd12) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd10) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd8) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd6) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd4) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd2) & ~(trunc_ln127_reg_1770_pp0_iter1_reg == 5'd0));
        tmp_5_reg_2098 <= tmp_5_fu_1241_p35;
        tmp_6_reg_2103 <= tmp_6_fu_1376_p35;
        tmp_7_reg_2108 <= tmp_7_fu_1447_p35;
        tmp_8_reg_2113 <= tmp_8_fu_1582_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul17_1_reg_2152 <= grp_fu_1923_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul2_reg_2142 <= grp_fu_1923_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul4_1_reg_2123 <= grp_fu_1923_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul4_reg_2118 <= grp_fu_1923_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_3_reg_2157 <= grp_fu_1919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sub_1_reg_2135 <= grp_fu_1919_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub_reg_2128 <= grp_fu_1919_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln126_reg_1751 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (icmp_ln126_reg_1751_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_0_ce0_local = 1'b1;
    end else begin
        d_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_10_ce0_local = 1'b1;
    end else begin
        d_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_11_ce0_local = 1'b1;
    end else begin
        d_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_12_ce0_local = 1'b1;
    end else begin
        d_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_13_ce0_local = 1'b1;
    end else begin
        d_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_14_ce0_local = 1'b1;
    end else begin
        d_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_15_ce0_local = 1'b1;
    end else begin
        d_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_16_ce0_local = 1'b1;
    end else begin
        d_weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_17_ce0_local = 1'b1;
    end else begin
        d_weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_18_ce0_local = 1'b1;
    end else begin
        d_weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_19_ce0_local = 1'b1;
    end else begin
        d_weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_1_ce0_local = 1'b1;
    end else begin
        d_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_20_ce0_local = 1'b1;
    end else begin
        d_weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_21_ce0_local = 1'b1;
    end else begin
        d_weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_22_ce0_local = 1'b1;
    end else begin
        d_weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_23_ce0_local = 1'b1;
    end else begin
        d_weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_24_ce0_local = 1'b1;
    end else begin
        d_weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_25_ce0_local = 1'b1;
    end else begin
        d_weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_26_ce0_local = 1'b1;
    end else begin
        d_weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_27_ce0_local = 1'b1;
    end else begin
        d_weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_28_ce0_local = 1'b1;
    end else begin
        d_weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_29_ce0_local = 1'b1;
    end else begin
        d_weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_2_ce0_local = 1'b1;
    end else begin
        d_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_30_ce0_local = 1'b1;
    end else begin
        d_weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_31_ce0_local = 1'b1;
    end else begin
        d_weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_3_ce0_local = 1'b1;
    end else begin
        d_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_4_ce0_local = 1'b1;
    end else begin
        d_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_5_ce0_local = 1'b1;
    end else begin
        d_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_6_ce0_local = 1'b1;
    end else begin
        d_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_7_ce0_local = 1'b1;
    end else begin
        d_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_8_ce0_local = 1'b1;
    end else begin
        d_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights1_9_ce0_local = 1'b1;
    end else begin
        d_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln126_reg_1751 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln126_reg_1751 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1073_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1073_opcode = 2'd0;
    end else begin
        grp_fu_1073_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1073_p0 = norm_3_reg_2157;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1073_p0 = norm_2_fu_218;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1073_p0 = tmp_8_reg_2113;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1073_p0 = tmp_6_reg_2103;
    end else begin
        grp_fu_1073_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1073_p1 = mul17_1_reg_2152;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1073_p1 = mul2_reg_2142;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1073_p1 = mul4_1_reg_2123;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1073_p1 = mul4_reg_2118;
    end else begin
        grp_fu_1073_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1077_p0 = sub_1_reg_2135;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1077_p0 = sub_reg_2128;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1077_p0 = tmp_7_reg_2108;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1077_p0 = tmp_5_reg_2098;
    end else begin
        grp_fu_1077_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1077_p1 = sub_1_reg_2135;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1077_p1 = sub_reg_2128;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1077_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1077_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_11001) & (icmp_ln126_reg_1751_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        norm_2_out_ap_vld = 1'b1;
    end else begin
        norm_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_0_address0_local = weights1_0_addr_reg_1858_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_0_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred950_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_0_we0_local = 1'b1;
    end else begin
        weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_10_address0_local = weights1_10_addr_reg_1883_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_10_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_10_ce0_local = 1'b1;
    end else begin
        weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1006_state19 == 1'b1))) begin
        weights1_10_we0_local = 1'b1;
    end else begin
        weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_11_address0_local = weights1_11_addr_reg_2043_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_11_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_11_ce0_local = 1'b1;
    end else begin
        weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1251_state20 == 1'b1))) begin
        weights1_11_we0_local = 1'b1;
    end else begin
        weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_12_address0_local = weights1_12_addr_reg_1888_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_12_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_12_ce0_local = 1'b1;
    end else begin
        weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1016_state19 == 1'b1))) begin
        weights1_12_we0_local = 1'b1;
    end else begin
        weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_13_address0_local = weights1_13_addr_reg_2048_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_13_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_13_ce0_local = 1'b1;
    end else begin
        weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1260_state20 == 1'b1))) begin
        weights1_13_we0_local = 1'b1;
    end else begin
        weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_14_address0_local = weights1_14_addr_reg_1893_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_14_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_14_ce0_local = 1'b1;
    end else begin
        weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1026_state19 == 1'b1))) begin
        weights1_14_we0_local = 1'b1;
    end else begin
        weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_15_address0_local = weights1_15_addr_reg_2053_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_15_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_15_ce0_local = 1'b1;
    end else begin
        weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1269_state20 == 1'b1))) begin
        weights1_15_we0_local = 1'b1;
    end else begin
        weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_16_address0_local = weights1_16_addr_reg_1898_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_16_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_16_ce0_local = 1'b1;
    end else begin
        weights1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1036_state19 == 1'b1))) begin
        weights1_16_we0_local = 1'b1;
    end else begin
        weights1_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_17_address0_local = weights1_17_addr_reg_2058_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_17_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_17_ce0_local = 1'b1;
    end else begin
        weights1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1278_state20 == 1'b1))) begin
        weights1_17_we0_local = 1'b1;
    end else begin
        weights1_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_18_address0_local = weights1_18_addr_reg_1903_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_18_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_18_ce0_local = 1'b1;
    end else begin
        weights1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1046_state19 == 1'b1))) begin
        weights1_18_we0_local = 1'b1;
    end else begin
        weights1_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_19_address0_local = weights1_19_addr_reg_2063_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_19_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_19_ce0_local = 1'b1;
    end else begin
        weights1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1287_state20 == 1'b1))) begin
        weights1_19_we0_local = 1'b1;
    end else begin
        weights1_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_1_address0_local = weights1_1_addr_reg_2018_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_1_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1200_state20 == 1'b1))) begin
        weights1_1_we0_local = 1'b1;
    end else begin
        weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_20_address0_local = weights1_20_addr_reg_1908_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_20_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_20_ce0_local = 1'b1;
    end else begin
        weights1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1056_state19 == 1'b1))) begin
        weights1_20_we0_local = 1'b1;
    end else begin
        weights1_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_21_address0_local = weights1_21_addr_reg_2068_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_21_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_21_ce0_local = 1'b1;
    end else begin
        weights1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1296_state20 == 1'b1))) begin
        weights1_21_we0_local = 1'b1;
    end else begin
        weights1_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_22_address0_local = weights1_22_addr_reg_1913_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_22_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_22_ce0_local = 1'b1;
    end else begin
        weights1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1066_state19 == 1'b1))) begin
        weights1_22_we0_local = 1'b1;
    end else begin
        weights1_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_23_address0_local = weights1_23_addr_reg_2073_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_23_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_23_ce0_local = 1'b1;
    end else begin
        weights1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1305_state20 == 1'b1))) begin
        weights1_23_we0_local = 1'b1;
    end else begin
        weights1_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_24_address0_local = weights1_24_addr_reg_1918_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_24_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_24_ce0_local = 1'b1;
    end else begin
        weights1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1076_state19 == 1'b1))) begin
        weights1_24_we0_local = 1'b1;
    end else begin
        weights1_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_25_address0_local = weights1_25_addr_reg_2078_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_25_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_25_ce0_local = 1'b1;
    end else begin
        weights1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1314_state20 == 1'b1))) begin
        weights1_25_we0_local = 1'b1;
    end else begin
        weights1_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_26_address0_local = weights1_26_addr_reg_1923_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_26_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_26_ce0_local = 1'b1;
    end else begin
        weights1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1086_state19 == 1'b1))) begin
        weights1_26_we0_local = 1'b1;
    end else begin
        weights1_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_27_address0_local = weights1_27_addr_reg_2083_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_27_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_27_ce0_local = 1'b1;
    end else begin
        weights1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1323_state20 == 1'b1))) begin
        weights1_27_we0_local = 1'b1;
    end else begin
        weights1_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_28_address0_local = weights1_28_addr_reg_1928_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_28_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_28_ce0_local = 1'b1;
    end else begin
        weights1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1096_state19 == 1'b1))) begin
        weights1_28_we0_local = 1'b1;
    end else begin
        weights1_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_29_address0_local = weights1_29_addr_reg_2088_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_29_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_29_ce0_local = 1'b1;
    end else begin
        weights1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1332_state20 == 1'b1))) begin
        weights1_29_we0_local = 1'b1;
    end else begin
        weights1_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_2_address0_local = weights1_2_addr_reg_1863_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_2_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_2_ce0_local = 1'b1;
    end else begin
        weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred966_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_2_we0_local = 1'b1;
    end else begin
        weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_30_address0_local = weights1_30_addr_reg_1933_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_30_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_30_ce0_local = 1'b1;
    end else begin
        weights1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1133_state19 == 1'b1))) begin
        weights1_30_we0_local = 1'b1;
    end else begin
        weights1_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_31_address0_local = weights1_31_addr_reg_2093_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_31_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_31_ce0_local = 1'b1;
    end else begin
        weights1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1369_state20 == 1'b1))) begin
        weights1_31_we0_local = 1'b1;
    end else begin
        weights1_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_3_address0_local = weights1_3_addr_reg_2023_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_3_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_3_ce0_local = 1'b1;
    end else begin
        weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1215_state20 == 1'b1))) begin
        weights1_3_we0_local = 1'b1;
    end else begin
        weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_4_address0_local = weights1_4_addr_reg_1868_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_4_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_4_ce0_local = 1'b1;
    end else begin
        weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred976_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_4_we0_local = 1'b1;
    end else begin
        weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_5_address0_local = weights1_5_addr_reg_2028_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_5_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_5_ce0_local = 1'b1;
    end else begin
        weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1224_state20 == 1'b1))) begin
        weights1_5_we0_local = 1'b1;
    end else begin
        weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_6_address0_local = weights1_6_addr_reg_1873_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_6_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_6_ce0_local = 1'b1;
    end else begin
        weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred986_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_6_we0_local = 1'b1;
    end else begin
        weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_7_address0_local = weights1_7_addr_reg_2033_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_7_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_7_ce0_local = 1'b1;
    end else begin
        weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1233_state20 == 1'b1))) begin
        weights1_7_we0_local = 1'b1;
    end else begin
        weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_8_address0_local = weights1_8_addr_reg_1878_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_8_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights1_8_ce0_local = 1'b1;
    end else begin
        weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred996_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights1_8_we0_local = 1'b1;
    end else begin
        weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights1_9_address0_local = weights1_9_addr_reg_2038_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights1_9_address0_local = zext_ln128_fu_1173_p1;
    end else begin
        weights1_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights1_9_ce0_local = 1'b1;
    end else begin
        weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1242_state20 == 1'b1))) begin
        weights1_9_we0_local = 1'b1;
    end else begin
        weights1_9_we0_local = 1'b0;
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
assign add_ln126_1_fu_1139_p2 = (i_fu_226 + 4'd1);
assign add_ln126_fu_1111_p2 = (indvar_flatten_fu_230 + 9'd1);
assign add_ln127_fu_1661_p2 = (select_ln121_reg_1760 + 7'd2);
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
assign bitcast_ln128_32_fu_1671_p1 = sub_reg_2128;
assign bitcast_ln128_33_fu_1690_p1 = sub_1_reg_2135;
assign d_weights1_0_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_0_ce0 = d_weights1_0_ce0_local;
assign d_weights1_10_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_10_ce0 = d_weights1_10_ce0_local;
assign d_weights1_11_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_11_ce0 = d_weights1_11_ce0_local;
assign d_weights1_12_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_12_ce0 = d_weights1_12_ce0_local;
assign d_weights1_13_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_13_ce0 = d_weights1_13_ce0_local;
assign d_weights1_14_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_14_ce0 = d_weights1_14_ce0_local;
assign d_weights1_15_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_15_ce0 = d_weights1_15_ce0_local;
assign d_weights1_16_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_16_ce0 = d_weights1_16_ce0_local;
assign d_weights1_17_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_17_ce0 = d_weights1_17_ce0_local;
assign d_weights1_18_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_18_ce0 = d_weights1_18_ce0_local;
assign d_weights1_19_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_19_ce0 = d_weights1_19_ce0_local;
assign d_weights1_1_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_1_ce0 = d_weights1_1_ce0_local;
assign d_weights1_20_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_20_ce0 = d_weights1_20_ce0_local;
assign d_weights1_21_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_21_ce0 = d_weights1_21_ce0_local;
assign d_weights1_22_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_22_ce0 = d_weights1_22_ce0_local;
assign d_weights1_23_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_23_ce0 = d_weights1_23_ce0_local;
assign d_weights1_24_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_24_ce0 = d_weights1_24_ce0_local;
assign d_weights1_25_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_25_ce0 = d_weights1_25_ce0_local;
assign d_weights1_26_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_26_ce0 = d_weights1_26_ce0_local;
assign d_weights1_27_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_27_ce0 = d_weights1_27_ce0_local;
assign d_weights1_28_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_28_ce0 = d_weights1_28_ce0_local;
assign d_weights1_29_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_29_ce0 = d_weights1_29_ce0_local;
assign d_weights1_2_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_2_ce0 = d_weights1_2_ce0_local;
assign d_weights1_30_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_30_ce0 = d_weights1_30_ce0_local;
assign d_weights1_31_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_31_ce0 = d_weights1_31_ce0_local;
assign d_weights1_3_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_3_ce0 = d_weights1_3_ce0_local;
assign d_weights1_4_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_4_ce0 = d_weights1_4_ce0_local;
assign d_weights1_5_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_5_ce0 = d_weights1_5_ce0_local;
assign d_weights1_6_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_6_ce0 = d_weights1_6_ce0_local;
assign d_weights1_7_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_7_ce0 = d_weights1_7_ce0_local;
assign d_weights1_8_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_8_ce0 = d_weights1_8_ce0_local;
assign d_weights1_9_address0 = zext_ln128_fu_1173_p1;
assign d_weights1_9_ce0 = d_weights1_9_ce0_local;
assign grp_fu_1919_p_ce = 1'b1;
assign grp_fu_1919_p_din0 = grp_fu_1073_p0;
assign grp_fu_1919_p_din1 = grp_fu_1073_p1;
assign grp_fu_1919_p_opcode = grp_fu_1073_opcode;
assign grp_fu_1923_p_ce = 1'b1;
assign grp_fu_1923_p_din0 = grp_fu_1077_p0;
assign grp_fu_1923_p_din1 = grp_fu_1077_p1;
assign icmp_ln126_fu_1105_p2 = ((indvar_flatten_fu_230 == 9'd416) ? 1'b1 : 1'b0);
assign norm_2_out = norm_2_fu_218;
assign or_ln_fu_1165_p3 = {{select_ln126_fu_1145_p3}, {tmp_9_fu_1157_p3}};
assign select_ln121_fu_1131_p3 = ((tmp_fu_1123_p3[0:0] == 1'b1) ? 7'd0 : j_fu_222);
assign select_ln126_fu_1145_p3 = ((tmp_fu_1123_p3[0:0] == 1'b1) ? add_ln126_1_fu_1139_p2 : i_fu_226);
assign tmp_5_fu_1241_p33 = 'bx;
assign tmp_6_fu_1376_p10 = weights1_8_q0;
assign tmp_6_fu_1376_p12 = weights1_10_q0;
assign tmp_6_fu_1376_p14 = weights1_12_q0;
assign tmp_6_fu_1376_p16 = weights1_14_q0;
assign tmp_6_fu_1376_p18 = weights1_16_q0;
assign tmp_6_fu_1376_p2 = weights1_0_q0;
assign tmp_6_fu_1376_p20 = weights1_18_q0;
assign tmp_6_fu_1376_p22 = weights1_20_q0;
assign tmp_6_fu_1376_p24 = weights1_22_q0;
assign tmp_6_fu_1376_p26 = weights1_24_q0;
assign tmp_6_fu_1376_p28 = weights1_26_q0;
assign tmp_6_fu_1376_p30 = weights1_28_q0;
assign tmp_6_fu_1376_p32 = weights1_30_q0;
assign tmp_6_fu_1376_p33 = 'bx;
assign tmp_6_fu_1376_p4 = weights1_2_q0;
assign tmp_6_fu_1376_p6 = weights1_4_q0;
assign tmp_6_fu_1376_p8 = weights1_6_q0;
assign tmp_7_fu_1447_p33 = 'bx;
assign tmp_8_fu_1582_p10 = weights1_9_q0;
assign tmp_8_fu_1582_p12 = weights1_11_q0;
assign tmp_8_fu_1582_p14 = weights1_13_q0;
assign tmp_8_fu_1582_p16 = weights1_15_q0;
assign tmp_8_fu_1582_p18 = weights1_17_q0;
assign tmp_8_fu_1582_p2 = weights1_1_q0;
assign tmp_8_fu_1582_p20 = weights1_19_q0;
assign tmp_8_fu_1582_p22 = weights1_21_q0;
assign tmp_8_fu_1582_p24 = weights1_23_q0;
assign tmp_8_fu_1582_p26 = weights1_25_q0;
assign tmp_8_fu_1582_p28 = weights1_27_q0;
assign tmp_8_fu_1582_p30 = weights1_29_q0;
assign tmp_8_fu_1582_p32 = weights1_31_q0;
assign tmp_8_fu_1582_p33 = 'bx;
assign tmp_8_fu_1582_p4 = weights1_3_q0;
assign tmp_8_fu_1582_p6 = weights1_5_q0;
assign tmp_8_fu_1582_p8 = weights1_7_q0;
assign tmp_9_fu_1157_p3 = select_ln121_fu_1131_p3[32'd5];
assign tmp_fu_1123_p3 = j_fu_222[32'd6];
assign trunc_ln127_fu_1153_p1 = select_ln121_fu_1131_p3[4:0];
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_0_we0 = weights1_0_we0_local;
assign weights1_10_address0 = weights1_10_address0_local;
assign weights1_10_ce0 = weights1_10_ce0_local;
assign weights1_10_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_10_we0 = weights1_10_we0_local;
assign weights1_11_address0 = weights1_11_address0_local;
assign weights1_11_ce0 = weights1_11_ce0_local;
assign weights1_11_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_11_we0 = weights1_11_we0_local;
assign weights1_12_address0 = weights1_12_address0_local;
assign weights1_12_ce0 = weights1_12_ce0_local;
assign weights1_12_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_12_we0 = weights1_12_we0_local;
assign weights1_13_address0 = weights1_13_address0_local;
assign weights1_13_ce0 = weights1_13_ce0_local;
assign weights1_13_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_13_we0 = weights1_13_we0_local;
assign weights1_14_address0 = weights1_14_address0_local;
assign weights1_14_ce0 = weights1_14_ce0_local;
assign weights1_14_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_14_we0 = weights1_14_we0_local;
assign weights1_15_address0 = weights1_15_address0_local;
assign weights1_15_ce0 = weights1_15_ce0_local;
assign weights1_15_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_15_we0 = weights1_15_we0_local;
assign weights1_16_address0 = weights1_16_address0_local;
assign weights1_16_ce0 = weights1_16_ce0_local;
assign weights1_16_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_16_we0 = weights1_16_we0_local;
assign weights1_17_address0 = weights1_17_address0_local;
assign weights1_17_ce0 = weights1_17_ce0_local;
assign weights1_17_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_17_we0 = weights1_17_we0_local;
assign weights1_18_address0 = weights1_18_address0_local;
assign weights1_18_ce0 = weights1_18_ce0_local;
assign weights1_18_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_18_we0 = weights1_18_we0_local;
assign weights1_19_address0 = weights1_19_address0_local;
assign weights1_19_ce0 = weights1_19_ce0_local;
assign weights1_19_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_19_we0 = weights1_19_we0_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_1_we0 = weights1_1_we0_local;
assign weights1_20_address0 = weights1_20_address0_local;
assign weights1_20_ce0 = weights1_20_ce0_local;
assign weights1_20_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_20_we0 = weights1_20_we0_local;
assign weights1_21_address0 = weights1_21_address0_local;
assign weights1_21_ce0 = weights1_21_ce0_local;
assign weights1_21_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_21_we0 = weights1_21_we0_local;
assign weights1_22_address0 = weights1_22_address0_local;
assign weights1_22_ce0 = weights1_22_ce0_local;
assign weights1_22_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_22_we0 = weights1_22_we0_local;
assign weights1_23_address0 = weights1_23_address0_local;
assign weights1_23_ce0 = weights1_23_ce0_local;
assign weights1_23_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_23_we0 = weights1_23_we0_local;
assign weights1_24_address0 = weights1_24_address0_local;
assign weights1_24_ce0 = weights1_24_ce0_local;
assign weights1_24_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_24_we0 = weights1_24_we0_local;
assign weights1_25_address0 = weights1_25_address0_local;
assign weights1_25_ce0 = weights1_25_ce0_local;
assign weights1_25_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_25_we0 = weights1_25_we0_local;
assign weights1_26_address0 = weights1_26_address0_local;
assign weights1_26_ce0 = weights1_26_ce0_local;
assign weights1_26_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_26_we0 = weights1_26_we0_local;
assign weights1_27_address0 = weights1_27_address0_local;
assign weights1_27_ce0 = weights1_27_ce0_local;
assign weights1_27_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_27_we0 = weights1_27_we0_local;
assign weights1_28_address0 = weights1_28_address0_local;
assign weights1_28_ce0 = weights1_28_ce0_local;
assign weights1_28_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_28_we0 = weights1_28_we0_local;
assign weights1_29_address0 = weights1_29_address0_local;
assign weights1_29_ce0 = weights1_29_ce0_local;
assign weights1_29_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_29_we0 = weights1_29_we0_local;
assign weights1_2_address0 = weights1_2_address0_local;
assign weights1_2_ce0 = weights1_2_ce0_local;
assign weights1_2_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_2_we0 = weights1_2_we0_local;
assign weights1_30_address0 = weights1_30_address0_local;
assign weights1_30_ce0 = weights1_30_ce0_local;
assign weights1_30_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_30_we0 = weights1_30_we0_local;
assign weights1_31_address0 = weights1_31_address0_local;
assign weights1_31_ce0 = weights1_31_ce0_local;
assign weights1_31_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_31_we0 = weights1_31_we0_local;
assign weights1_3_address0 = weights1_3_address0_local;
assign weights1_3_ce0 = weights1_3_ce0_local;
assign weights1_3_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_3_we0 = weights1_3_we0_local;
assign weights1_4_address0 = weights1_4_address0_local;
assign weights1_4_ce0 = weights1_4_ce0_local;
assign weights1_4_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_4_we0 = weights1_4_we0_local;
assign weights1_5_address0 = weights1_5_address0_local;
assign weights1_5_ce0 = weights1_5_ce0_local;
assign weights1_5_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_5_we0 = weights1_5_we0_local;
assign weights1_6_address0 = weights1_6_address0_local;
assign weights1_6_ce0 = weights1_6_ce0_local;
assign weights1_6_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_6_we0 = weights1_6_we0_local;
assign weights1_7_address0 = weights1_7_address0_local;
assign weights1_7_ce0 = weights1_7_ce0_local;
assign weights1_7_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_7_we0 = weights1_7_we0_local;
assign weights1_8_address0 = weights1_8_address0_local;
assign weights1_8_ce0 = weights1_8_ce0_local;
assign weights1_8_d0 = bitcast_ln128_32_fu_1671_p1;
assign weights1_8_we0 = weights1_8_we0_local;
assign weights1_9_address0 = weights1_9_address0_local;
assign weights1_9_ce0 = weights1_9_ce0_local;
assign weights1_9_d0 = bitcast_ln128_33_fu_1690_p1;
assign weights1_9_we0 = weights1_9_we0_local;
assign zext_ln128_fu_1173_p1 = or_ln_fu_1165_p3;
endmodule 