module backprop_update_weights_37_38_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_31_address0,weights2_31_ce0,weights2_31_we0,weights2_31_d0,weights2_31_q0,weights2_30_address0,weights2_30_ce0,weights2_30_we0,weights2_30_d0,weights2_30_q0,weights2_29_address0,weights2_29_ce0,weights2_29_we0,weights2_29_d0,weights2_29_q0,weights2_28_address0,weights2_28_ce0,weights2_28_we0,weights2_28_d0,weights2_28_q0,weights2_27_address0,weights2_27_ce0,weights2_27_we0,weights2_27_d0,weights2_27_q0,weights2_26_address0,weights2_26_ce0,weights2_26_we0,weights2_26_d0,weights2_26_q0,weights2_25_address0,weights2_25_ce0,weights2_25_we0,weights2_25_d0,weights2_25_q0,weights2_24_address0,weights2_24_ce0,weights2_24_we0,weights2_24_d0,weights2_24_q0,weights2_23_address0,weights2_23_ce0,weights2_23_we0,weights2_23_d0,weights2_23_q0,weights2_22_address0,weights2_22_ce0,weights2_22_we0,weights2_22_d0,weights2_22_q0,weights2_21_address0,weights2_21_ce0,weights2_21_we0,weights2_21_d0,weights2_21_q0,weights2_20_address0,weights2_20_ce0,weights2_20_we0,weights2_20_d0,weights2_20_q0,weights2_19_address0,weights2_19_ce0,weights2_19_we0,weights2_19_d0,weights2_19_q0,weights2_18_address0,weights2_18_ce0,weights2_18_we0,weights2_18_d0,weights2_18_q0,weights2_17_address0,weights2_17_ce0,weights2_17_we0,weights2_17_d0,weights2_17_q0,weights2_16_address0,weights2_16_ce0,weights2_16_we0,weights2_16_d0,weights2_16_q0,weights2_15_address0,weights2_15_ce0,weights2_15_we0,weights2_15_d0,weights2_15_q0,weights2_14_address0,weights2_14_ce0,weights2_14_we0,weights2_14_d0,weights2_14_q0,weights2_13_address0,weights2_13_ce0,weights2_13_we0,weights2_13_d0,weights2_13_q0,weights2_12_address0,weights2_12_ce0,weights2_12_we0,weights2_12_d0,weights2_12_q0,weights2_11_address0,weights2_11_ce0,weights2_11_we0,weights2_11_d0,weights2_11_q0,weights2_10_address0,weights2_10_ce0,weights2_10_we0,weights2_10_d0,weights2_10_q0,weights2_9_address0,weights2_9_ce0,weights2_9_we0,weights2_9_d0,weights2_9_q0,weights2_8_address0,weights2_8_ce0,weights2_8_we0,weights2_8_d0,weights2_8_q0,weights2_7_address0,weights2_7_ce0,weights2_7_we0,weights2_7_d0,weights2_7_q0,weights2_6_address0,weights2_6_ce0,weights2_6_we0,weights2_6_d0,weights2_6_q0,weights2_5_address0,weights2_5_ce0,weights2_5_we0,weights2_5_d0,weights2_5_q0,weights2_4_address0,weights2_4_ce0,weights2_4_we0,weights2_4_d0,weights2_4_q0,weights2_3_address0,weights2_3_ce0,weights2_3_we0,weights2_3_d0,weights2_3_q0,weights2_2_address0,weights2_2_ce0,weights2_2_we0,weights2_2_d0,weights2_2_q0,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,d_weights2_0_address0,d_weights2_0_ce0,d_weights2_0_q0,d_weights2_4_address0,d_weights2_4_ce0,d_weights2_4_q0,d_weights2_8_address0,d_weights2_8_ce0,d_weights2_8_q0,d_weights2_12_address0,d_weights2_12_ce0,d_weights2_12_q0,d_weights2_16_address0,d_weights2_16_ce0,d_weights2_16_q0,d_weights2_20_address0,d_weights2_20_ce0,d_weights2_20_q0,d_weights2_24_address0,d_weights2_24_ce0,d_weights2_24_q0,d_weights2_28_address0,d_weights2_28_ce0,d_weights2_28_q0,d_weights2_1_address0,d_weights2_1_ce0,d_weights2_1_q0,d_weights2_5_address0,d_weights2_5_ce0,d_weights2_5_q0,d_weights2_9_address0,d_weights2_9_ce0,d_weights2_9_q0,d_weights2_13_address0,d_weights2_13_ce0,d_weights2_13_q0,d_weights2_17_address0,d_weights2_17_ce0,d_weights2_17_q0,d_weights2_21_address0,d_weights2_21_ce0,d_weights2_21_q0,d_weights2_25_address0,d_weights2_25_ce0,d_weights2_25_q0,d_weights2_29_address0,d_weights2_29_ce0,d_weights2_29_q0,d_weights2_2_address0,d_weights2_2_ce0,d_weights2_2_q0,d_weights2_6_address0,d_weights2_6_ce0,d_weights2_6_q0,d_weights2_10_address0,d_weights2_10_ce0,d_weights2_10_q0,d_weights2_14_address0,d_weights2_14_ce0,d_weights2_14_q0,d_weights2_18_address0,d_weights2_18_ce0,d_weights2_18_q0,d_weights2_22_address0,d_weights2_22_ce0,d_weights2_22_q0,d_weights2_26_address0,d_weights2_26_ce0,d_weights2_26_q0,d_weights2_30_address0,d_weights2_30_ce0,d_weights2_30_q0,d_weights2_3_address0,d_weights2_3_ce0,d_weights2_3_q0,d_weights2_7_address0,d_weights2_7_ce0,d_weights2_7_q0,d_weights2_11_address0,d_weights2_11_ce0,d_weights2_11_q0,d_weights2_15_address0,d_weights2_15_ce0,d_weights2_15_q0,d_weights2_19_address0,d_weights2_19_ce0,d_weights2_19_q0,d_weights2_23_address0,d_weights2_23_ce0,d_weights2_23_q0,d_weights2_27_address0,d_weights2_27_ce0,d_weights2_27_q0,d_weights2_31_address0,d_weights2_31_ce0,d_weights2_31_q0,norm_7_out,norm_7_out_ap_vld,grp_fu_1939_p_din0,grp_fu_1939_p_din1,grp_fu_1939_p_opcode,grp_fu_1939_p_dout0,grp_fu_1939_p_ce,grp_fu_1943_p_din0,grp_fu_1943_p_din1,grp_fu_1943_p_dout0,grp_fu_1943_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
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
output  [6:0] d_weights2_4_address0;
output   d_weights2_4_ce0;
input  [63:0] d_weights2_4_q0;
output  [6:0] d_weights2_8_address0;
output   d_weights2_8_ce0;
input  [63:0] d_weights2_8_q0;
output  [6:0] d_weights2_12_address0;
output   d_weights2_12_ce0;
input  [63:0] d_weights2_12_q0;
output  [6:0] d_weights2_16_address0;
output   d_weights2_16_ce0;
input  [63:0] d_weights2_16_q0;
output  [6:0] d_weights2_20_address0;
output   d_weights2_20_ce0;
input  [63:0] d_weights2_20_q0;
output  [6:0] d_weights2_24_address0;
output   d_weights2_24_ce0;
input  [63:0] d_weights2_24_q0;
output  [6:0] d_weights2_28_address0;
output   d_weights2_28_ce0;
input  [63:0] d_weights2_28_q0;
output  [6:0] d_weights2_1_address0;
output   d_weights2_1_ce0;
input  [63:0] d_weights2_1_q0;
output  [6:0] d_weights2_5_address0;
output   d_weights2_5_ce0;
input  [63:0] d_weights2_5_q0;
output  [6:0] d_weights2_9_address0;
output   d_weights2_9_ce0;
input  [63:0] d_weights2_9_q0;
output  [6:0] d_weights2_13_address0;
output   d_weights2_13_ce0;
input  [63:0] d_weights2_13_q0;
output  [6:0] d_weights2_17_address0;
output   d_weights2_17_ce0;
input  [63:0] d_weights2_17_q0;
output  [6:0] d_weights2_21_address0;
output   d_weights2_21_ce0;
input  [63:0] d_weights2_21_q0;
output  [6:0] d_weights2_25_address0;
output   d_weights2_25_ce0;
input  [63:0] d_weights2_25_q0;
output  [6:0] d_weights2_29_address0;
output   d_weights2_29_ce0;
input  [63:0] d_weights2_29_q0;
output  [6:0] d_weights2_2_address0;
output   d_weights2_2_ce0;
input  [63:0] d_weights2_2_q0;
output  [6:0] d_weights2_6_address0;
output   d_weights2_6_ce0;
input  [63:0] d_weights2_6_q0;
output  [6:0] d_weights2_10_address0;
output   d_weights2_10_ce0;
input  [63:0] d_weights2_10_q0;
output  [6:0] d_weights2_14_address0;
output   d_weights2_14_ce0;
input  [63:0] d_weights2_14_q0;
output  [6:0] d_weights2_18_address0;
output   d_weights2_18_ce0;
input  [63:0] d_weights2_18_q0;
output  [6:0] d_weights2_22_address0;
output   d_weights2_22_ce0;
input  [63:0] d_weights2_22_q0;
output  [6:0] d_weights2_26_address0;
output   d_weights2_26_ce0;
input  [63:0] d_weights2_26_q0;
output  [6:0] d_weights2_30_address0;
output   d_weights2_30_ce0;
input  [63:0] d_weights2_30_q0;
output  [6:0] d_weights2_3_address0;
output   d_weights2_3_ce0;
input  [63:0] d_weights2_3_q0;
output  [6:0] d_weights2_7_address0;
output   d_weights2_7_ce0;
input  [63:0] d_weights2_7_q0;
output  [6:0] d_weights2_11_address0;
output   d_weights2_11_ce0;
input  [63:0] d_weights2_11_q0;
output  [6:0] d_weights2_15_address0;
output   d_weights2_15_ce0;
input  [63:0] d_weights2_15_q0;
output  [6:0] d_weights2_19_address0;
output   d_weights2_19_ce0;
input  [63:0] d_weights2_19_q0;
output  [6:0] d_weights2_23_address0;
output   d_weights2_23_ce0;
input  [63:0] d_weights2_23_q0;
output  [6:0] d_weights2_27_address0;
output   d_weights2_27_ce0;
input  [63:0] d_weights2_27_q0;
output  [6:0] d_weights2_31_address0;
output   d_weights2_31_ce0;
input  [63:0] d_weights2_31_q0;
output  [63:0] norm_7_out;
output   norm_7_out_ap_vld;
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
reg norm_7_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_subdone;
reg   [0:0] icmp_ln152_reg_1793;
reg    ap_condition_exit_pp0_iter0_stage24;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_1064;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_1069;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_1074;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln152_fu_1104_p2;
wire   [10:0] add_ln152_fu_1110_p2;
reg   [10:0] add_ln152_reg_1797;
reg   [6:0] i_4_load_reg_1802;
wire   [6:0] add_ln152_1_fu_1119_p2;
reg   [6:0] add_ln152_1_reg_1807;
wire   [6:0] select_ln121_fu_1136_p3;
reg   [6:0] select_ln121_reg_1812;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [6:0] select_ln152_fu_1144_p3;
reg   [6:0] select_ln152_reg_1817;
wire   [4:0] trunc_ln153_fu_1156_p1;
reg   [4:0] trunc_ln153_reg_1822;
reg   [6:0] weights2_0_addr_reg_1874;
reg   [6:0] weights2_4_addr_reg_1879;
reg   [6:0] weights2_8_addr_reg_1884;
reg   [6:0] weights2_12_addr_reg_1889;
reg   [6:0] weights2_16_addr_reg_1894;
reg   [6:0] weights2_20_addr_reg_1899;
reg   [6:0] weights2_24_addr_reg_1904;
reg   [6:0] weights2_28_addr_reg_1909;
reg   [6:0] weights2_1_addr_reg_1954;
reg   [6:0] weights2_5_addr_reg_1959;
reg   [6:0] weights2_9_addr_reg_1964;
reg   [6:0] weights2_13_addr_reg_1969;
reg   [6:0] weights2_17_addr_reg_1974;
reg   [6:0] weights2_21_addr_reg_1979;
reg   [6:0] weights2_25_addr_reg_1984;
reg   [6:0] weights2_29_addr_reg_1989;
reg   [6:0] weights2_2_addr_reg_2034;
reg   [6:0] weights2_6_addr_reg_2039;
reg   [6:0] weights2_10_addr_reg_2044;
reg   [6:0] weights2_14_addr_reg_2049;
reg   [6:0] weights2_18_addr_reg_2054;
reg   [6:0] weights2_22_addr_reg_2059;
reg   [6:0] weights2_26_addr_reg_2064;
reg   [6:0] weights2_30_addr_reg_2069;
reg   [6:0] weights2_3_addr_reg_2114;
reg   [6:0] weights2_7_addr_reg_2119;
reg   [6:0] weights2_11_addr_reg_2124;
reg   [6:0] weights2_15_addr_reg_2129;
reg   [6:0] weights2_19_addr_reg_2134;
reg   [6:0] weights2_23_addr_reg_2139;
reg   [6:0] weights2_27_addr_reg_2144;
reg   [6:0] weights2_31_addr_reg_2149;
wire   [63:0] tmp_31_fu_1248_p19;
reg   [63:0] tmp_31_reg_2154;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_32_fu_1319_p19;
reg   [63:0] tmp_32_reg_2159;
wire   [63:0] tmp_33_fu_1358_p19;
reg   [63:0] tmp_33_reg_2164;
wire   [63:0] tmp_34_fu_1429_p19;
reg   [63:0] tmp_34_reg_2169;
wire   [63:0] tmp_35_fu_1468_p19;
reg   [63:0] tmp_35_reg_2174;
wire   [63:0] tmp_36_fu_1539_p19;
reg   [63:0] tmp_36_reg_2179;
wire   [63:0] tmp_37_fu_1578_p19;
reg   [63:0] tmp_37_reg_2184;
wire   [63:0] tmp_38_fu_1649_p19;
reg   [63:0] tmp_38_reg_2189;
reg   [63:0] mul81_2_reg_2194;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] mul81_3_reg_2199;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] sub86_1_reg_2204;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] sub86_2_reg_2211;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] sub86_3_reg_2218;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] mul95_2_reg_2230;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] mul95_3_reg_2235;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] norm_11_reg_2240;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln154_fu_1180_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_7_fu_200;
wire    ap_block_pp0_stage24;
wire    ap_loop_init;
wire    ap_block_pp0_stage25;
reg   [6:0] j_fu_204;
wire   [6:0] add_ln153_fu_1745_p2;
reg   [6:0] i_4_fu_208;
reg   [6:0] ap_sig_allocacmp_i_4_load;
wire    ap_block_pp0_stage0;
reg   [10:0] indvar_flatten13_fu_212;
reg   [10:0] ap_sig_allocacmp_indvar_flatten13_load;
wire    ap_block_pp0_stage24_01001;
reg    d_weights2_0_ce0_local;
reg    d_weights2_4_ce0_local;
reg    d_weights2_8_ce0_local;
reg    d_weights2_12_ce0_local;
reg    d_weights2_16_ce0_local;
reg    d_weights2_20_ce0_local;
reg    d_weights2_24_ce0_local;
reg    d_weights2_28_ce0_local;
reg    weights2_0_ce0_local;
reg   [6:0] weights2_0_address0_local;
reg    weights2_0_we0_local;
reg    ap_predicate_pred978_state19;
wire   [63:0] bitcast_ln154_32_fu_1696_p1;
wire    ap_block_pp0_stage18;
reg    weights2_4_ce0_local;
reg   [6:0] weights2_4_address0_local;
reg    weights2_4_we0_local;
reg    ap_predicate_pred996_state19;
reg    weights2_8_ce0_local;
reg   [6:0] weights2_8_address0_local;
reg    weights2_8_we0_local;
reg    ap_predicate_pred1007_state19;
reg    weights2_12_ce0_local;
reg   [6:0] weights2_12_address0_local;
reg    weights2_12_we0_local;
reg    ap_predicate_pred1018_state19;
reg    weights2_16_ce0_local;
reg   [6:0] weights2_16_address0_local;
reg    weights2_16_we0_local;
reg    ap_predicate_pred1029_state19;
reg    weights2_20_ce0_local;
reg   [6:0] weights2_20_address0_local;
reg    weights2_20_we0_local;
reg    ap_predicate_pred1040_state19;
reg    weights2_24_ce0_local;
reg   [6:0] weights2_24_address0_local;
reg    weights2_24_we0_local;
reg    ap_predicate_pred1051_state19;
reg    weights2_28_ce0_local;
reg   [6:0] weights2_28_address0_local;
reg    weights2_28_we0_local;
reg    ap_predicate_pred1073_state19;
reg    d_weights2_1_ce0_local;
reg    d_weights2_5_ce0_local;
reg    d_weights2_9_ce0_local;
reg    d_weights2_13_ce0_local;
reg    d_weights2_17_ce0_local;
reg    d_weights2_21_ce0_local;
reg    d_weights2_25_ce0_local;
reg    d_weights2_29_ce0_local;
reg    weights2_1_ce0_local;
reg   [6:0] weights2_1_address0_local;
reg    weights2_1_we0_local;
reg    ap_predicate_pred978_state20;
wire   [63:0] bitcast_ln154_33_fu_1708_p1;
wire    ap_block_pp0_stage19;
reg    weights2_5_ce0_local;
reg   [6:0] weights2_5_address0_local;
reg    weights2_5_we0_local;
reg    ap_predicate_pred996_state20;
reg    weights2_9_ce0_local;
reg   [6:0] weights2_9_address0_local;
reg    weights2_9_we0_local;
reg    ap_predicate_pred1007_state20;
reg    weights2_13_ce0_local;
reg   [6:0] weights2_13_address0_local;
reg    weights2_13_we0_local;
reg    ap_predicate_pred1018_state20;
reg    weights2_17_ce0_local;
reg   [6:0] weights2_17_address0_local;
reg    weights2_17_we0_local;
reg    ap_predicate_pred1029_state20;
reg    weights2_21_ce0_local;
reg   [6:0] weights2_21_address0_local;
reg    weights2_21_we0_local;
reg    ap_predicate_pred1040_state20;
reg    weights2_25_ce0_local;
reg   [6:0] weights2_25_address0_local;
reg    weights2_25_we0_local;
reg    ap_predicate_pred1051_state20;
reg    weights2_29_ce0_local;
reg   [6:0] weights2_29_address0_local;
reg    weights2_29_we0_local;
reg    ap_predicate_pred1073_state20;
reg    d_weights2_2_ce0_local;
reg    d_weights2_6_ce0_local;
reg    d_weights2_10_ce0_local;
reg    d_weights2_14_ce0_local;
reg    d_weights2_18_ce0_local;
reg    d_weights2_22_ce0_local;
reg    d_weights2_26_ce0_local;
reg    d_weights2_30_ce0_local;
reg    weights2_2_ce0_local;
reg   [6:0] weights2_2_address0_local;
reg    weights2_2_we0_local;
reg    ap_predicate_pred978_state21;
wire   [63:0] bitcast_ln154_34_fu_1719_p1;
wire    ap_block_pp0_stage20;
reg    weights2_6_ce0_local;
reg   [6:0] weights2_6_address0_local;
reg    weights2_6_we0_local;
reg    ap_predicate_pred996_state21;
reg    weights2_10_ce0_local;
reg   [6:0] weights2_10_address0_local;
reg    weights2_10_we0_local;
reg    ap_predicate_pred1007_state21;
reg    weights2_14_ce0_local;
reg   [6:0] weights2_14_address0_local;
reg    weights2_14_we0_local;
reg    ap_predicate_pred1018_state21;
reg    weights2_18_ce0_local;
reg   [6:0] weights2_18_address0_local;
reg    weights2_18_we0_local;
reg    ap_predicate_pred1029_state21;
reg    weights2_22_ce0_local;
reg   [6:0] weights2_22_address0_local;
reg    weights2_22_we0_local;
reg    ap_predicate_pred1040_state21;
reg    weights2_26_ce0_local;
reg   [6:0] weights2_26_address0_local;
reg    weights2_26_we0_local;
reg    ap_predicate_pred1051_state21;
reg    weights2_30_ce0_local;
reg   [6:0] weights2_30_address0_local;
reg    weights2_30_we0_local;
reg    ap_predicate_pred1073_state21;
reg    d_weights2_3_ce0_local;
reg    d_weights2_7_ce0_local;
reg    d_weights2_11_ce0_local;
reg    d_weights2_15_ce0_local;
reg    d_weights2_19_ce0_local;
reg    d_weights2_23_ce0_local;
reg    d_weights2_27_ce0_local;
reg    d_weights2_31_ce0_local;
reg    weights2_3_ce0_local;
reg   [6:0] weights2_3_address0_local;
reg    weights2_3_we0_local;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg    ap_predicate_pred978_state22;
wire   [63:0] bitcast_ln154_35_fu_1730_p1;
wire    ap_block_pp0_stage21;
reg    weights2_7_ce0_local;
reg   [6:0] weights2_7_address0_local;
reg    weights2_7_we0_local;
reg    ap_predicate_pred996_state22;
reg    weights2_11_ce0_local;
reg   [6:0] weights2_11_address0_local;
reg    weights2_11_we0_local;
reg    ap_predicate_pred1007_state22;
reg    weights2_15_ce0_local;
reg   [6:0] weights2_15_address0_local;
reg    weights2_15_we0_local;
reg    ap_predicate_pred1018_state22;
reg    weights2_19_ce0_local;
reg   [6:0] weights2_19_address0_local;
reg    weights2_19_we0_local;
reg    ap_predicate_pred1029_state22;
reg    weights2_23_ce0_local;
reg   [6:0] weights2_23_address0_local;
reg    weights2_23_we0_local;
reg    ap_predicate_pred1040_state22;
reg    weights2_27_ce0_local;
reg   [6:0] weights2_27_address0_local;
reg    weights2_27_we0_local;
reg    ap_predicate_pred1051_state22;
reg    weights2_31_ce0_local;
reg   [6:0] weights2_31_address0_local;
reg    weights2_31_we0_local;
reg    ap_predicate_pred1073_state22;
reg   [63:0] grp_fu_1055_p0;
reg   [63:0] grp_fu_1055_p1;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_1059_p0;
reg   [63:0] grp_fu_1059_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire   [0:0] tmp_fu_1128_p3;
wire   [1:0] lshr_ln1_fu_1160_p4;
wire   [6:0] zext_ln154_1_fu_1170_p1;
wire   [6:0] empty_fu_1150_p2;
wire   [6:0] add_ln154_fu_1174_p2;
wire   [63:0] tmp_31_fu_1248_p17;
wire    ap_block_pp0_stage2;
wire   [63:0] tmp_32_fu_1319_p2;
wire   [63:0] tmp_32_fu_1319_p4;
wire   [63:0] tmp_32_fu_1319_p6;
wire   [63:0] tmp_32_fu_1319_p8;
wire   [63:0] tmp_32_fu_1319_p10;
wire   [63:0] tmp_32_fu_1319_p12;
wire   [63:0] tmp_32_fu_1319_p14;
wire   [63:0] tmp_32_fu_1319_p16;
wire   [63:0] tmp_32_fu_1319_p17;
wire   [63:0] tmp_33_fu_1358_p17;
wire   [63:0] tmp_34_fu_1429_p2;
wire   [63:0] tmp_34_fu_1429_p4;
wire   [63:0] tmp_34_fu_1429_p6;
wire   [63:0] tmp_34_fu_1429_p8;
wire   [63:0] tmp_34_fu_1429_p10;
wire   [63:0] tmp_34_fu_1429_p12;
wire   [63:0] tmp_34_fu_1429_p14;
wire   [63:0] tmp_34_fu_1429_p16;
wire   [63:0] tmp_34_fu_1429_p17;
wire   [63:0] tmp_35_fu_1468_p17;
wire   [63:0] tmp_36_fu_1539_p2;
wire   [63:0] tmp_36_fu_1539_p4;
wire   [63:0] tmp_36_fu_1539_p6;
wire   [63:0] tmp_36_fu_1539_p8;
wire   [63:0] tmp_36_fu_1539_p10;
wire   [63:0] tmp_36_fu_1539_p12;
wire   [63:0] tmp_36_fu_1539_p14;
wire   [63:0] tmp_36_fu_1539_p16;
wire   [63:0] tmp_36_fu_1539_p17;
wire   [63:0] tmp_37_fu_1578_p17;
wire   [63:0] tmp_38_fu_1649_p2;
wire   [63:0] tmp_38_fu_1649_p4;
wire   [63:0] tmp_38_fu_1649_p6;
wire   [63:0] tmp_38_fu_1649_p8;
wire   [63:0] tmp_38_fu_1649_p10;
wire   [63:0] tmp_38_fu_1649_p12;
wire   [63:0] tmp_38_fu_1649_p14;
wire   [63:0] tmp_38_fu_1649_p16;
wire   [63:0] tmp_38_fu_1649_p17;
reg   [1:0] grp_fu_1055_opcode;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_31_fu_1248_p1;
wire   [4:0] tmp_31_fu_1248_p3;
wire   [4:0] tmp_31_fu_1248_p5;
wire   [4:0] tmp_31_fu_1248_p7;
wire  signed [4:0] tmp_31_fu_1248_p9;
wire  signed [4:0] tmp_31_fu_1248_p11;
wire  signed [4:0] tmp_31_fu_1248_p13;
wire  signed [4:0] tmp_31_fu_1248_p15;
wire   [4:0] tmp_32_fu_1319_p1;
wire   [4:0] tmp_32_fu_1319_p3;
wire   [4:0] tmp_32_fu_1319_p5;
wire   [4:0] tmp_32_fu_1319_p7;
wire  signed [4:0] tmp_32_fu_1319_p9;
wire  signed [4:0] tmp_32_fu_1319_p11;
wire  signed [4:0] tmp_32_fu_1319_p13;
wire  signed [4:0] tmp_32_fu_1319_p15;
wire   [4:0] tmp_33_fu_1358_p1;
wire   [4:0] tmp_33_fu_1358_p3;
wire   [4:0] tmp_33_fu_1358_p5;
wire   [4:0] tmp_33_fu_1358_p7;
wire  signed [4:0] tmp_33_fu_1358_p9;
wire  signed [4:0] tmp_33_fu_1358_p11;
wire  signed [4:0] tmp_33_fu_1358_p13;
wire  signed [4:0] tmp_33_fu_1358_p15;
wire   [4:0] tmp_34_fu_1429_p1;
wire   [4:0] tmp_34_fu_1429_p3;
wire   [4:0] tmp_34_fu_1429_p5;
wire   [4:0] tmp_34_fu_1429_p7;
wire  signed [4:0] tmp_34_fu_1429_p9;
wire  signed [4:0] tmp_34_fu_1429_p11;
wire  signed [4:0] tmp_34_fu_1429_p13;
wire  signed [4:0] tmp_34_fu_1429_p15;
wire   [4:0] tmp_35_fu_1468_p1;
wire   [4:0] tmp_35_fu_1468_p3;
wire   [4:0] tmp_35_fu_1468_p5;
wire   [4:0] tmp_35_fu_1468_p7;
wire  signed [4:0] tmp_35_fu_1468_p9;
wire  signed [4:0] tmp_35_fu_1468_p11;
wire  signed [4:0] tmp_35_fu_1468_p13;
wire  signed [4:0] tmp_35_fu_1468_p15;
wire   [4:0] tmp_36_fu_1539_p1;
wire   [4:0] tmp_36_fu_1539_p3;
wire   [4:0] tmp_36_fu_1539_p5;
wire   [4:0] tmp_36_fu_1539_p7;
wire  signed [4:0] tmp_36_fu_1539_p9;
wire  signed [4:0] tmp_36_fu_1539_p11;
wire  signed [4:0] tmp_36_fu_1539_p13;
wire  signed [4:0] tmp_36_fu_1539_p15;
wire   [4:0] tmp_37_fu_1578_p1;
wire   [4:0] tmp_37_fu_1578_p3;
wire   [4:0] tmp_37_fu_1578_p5;
wire   [4:0] tmp_37_fu_1578_p7;
wire  signed [4:0] tmp_37_fu_1578_p9;
wire  signed [4:0] tmp_37_fu_1578_p11;
wire  signed [4:0] tmp_37_fu_1578_p13;
wire  signed [4:0] tmp_37_fu_1578_p15;
wire   [4:0] tmp_38_fu_1649_p1;
wire   [4:0] tmp_38_fu_1649_p3;
wire   [4:0] tmp_38_fu_1649_p5;
wire   [4:0] tmp_38_fu_1649_p7;
wire  signed [4:0] tmp_38_fu_1649_p9;
wire  signed [4:0] tmp_38_fu_1649_p11;
wire  signed [4:0] tmp_38_fu_1649_p13;
wire  signed [4:0] tmp_38_fu_1649_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_7_fu_200 = 64'd0;
#0 j_fu_204 = 7'd0;
#0 i_4_fu_208 = 7'd0;
#0 indvar_flatten13_fu_212 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1717(.din0(d_weights2_0_q0),.din1(d_weights2_4_q0),.din2(d_weights2_8_q0),.din3(d_weights2_12_q0),.din4(d_weights2_16_q0),.din5(d_weights2_20_q0),.din6(d_weights2_24_q0),.din7(d_weights2_28_q0),.def(tmp_31_fu_1248_p17),.sel(trunc_ln153_reg_1822),.dout(tmp_31_fu_1248_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1718(.din0(tmp_32_fu_1319_p2),.din1(tmp_32_fu_1319_p4),.din2(tmp_32_fu_1319_p6),.din3(tmp_32_fu_1319_p8),.din4(tmp_32_fu_1319_p10),.din5(tmp_32_fu_1319_p12),.din6(tmp_32_fu_1319_p14),.din7(tmp_32_fu_1319_p16),.def(tmp_32_fu_1319_p17),.sel(trunc_ln153_reg_1822),.dout(tmp_32_fu_1319_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1719(.din0(d_weights2_1_q0),.din1(d_weights2_5_q0),.din2(d_weights2_9_q0),.din3(d_weights2_13_q0),.din4(d_weights2_17_q0),.din5(d_weights2_21_q0),.din6(d_weights2_25_q0),.din7(d_weights2_29_q0),.def(tmp_33_fu_1358_p17),.sel(trunc_ln153_reg_1822),.dout(tmp_33_fu_1358_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1720(.din0(tmp_34_fu_1429_p2),.din1(tmp_34_fu_1429_p4),.din2(tmp_34_fu_1429_p6),.din3(tmp_34_fu_1429_p8),.din4(tmp_34_fu_1429_p10),.din5(tmp_34_fu_1429_p12),.din6(tmp_34_fu_1429_p14),.din7(tmp_34_fu_1429_p16),.def(tmp_34_fu_1429_p17),.sel(trunc_ln153_reg_1822),.dout(tmp_34_fu_1429_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1721(.din0(d_weights2_2_q0),.din1(d_weights2_6_q0),.din2(d_weights2_10_q0),.din3(d_weights2_14_q0),.din4(d_weights2_18_q0),.din5(d_weights2_22_q0),.din6(d_weights2_26_q0),.din7(d_weights2_30_q0),.def(tmp_35_fu_1468_p17),.sel(trunc_ln153_reg_1822),.dout(tmp_35_fu_1468_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1722(.din0(tmp_36_fu_1539_p2),.din1(tmp_36_fu_1539_p4),.din2(tmp_36_fu_1539_p6),.din3(tmp_36_fu_1539_p8),.din4(tmp_36_fu_1539_p10),.din5(tmp_36_fu_1539_p12),.din6(tmp_36_fu_1539_p14),.din7(tmp_36_fu_1539_p16),.def(tmp_36_fu_1539_p17),.sel(trunc_ln153_reg_1822),.dout(tmp_36_fu_1539_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1723(.din0(d_weights2_3_q0),.din1(d_weights2_7_q0),.din2(d_weights2_11_q0),.din3(d_weights2_15_q0),.din4(d_weights2_19_q0),.din5(d_weights2_23_q0),.din6(d_weights2_27_q0),.din7(d_weights2_31_q0),.def(tmp_37_fu_1578_p17),.sel(trunc_ln153_reg_1822),.dout(tmp_37_fu_1578_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_5_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h4 ),.din1_WIDTH( 64 ),.CASE2( 5'h8 ),.din2_WIDTH( 64 ),.CASE3( 5'hC ),.din3_WIDTH( 64 ),.CASE4( 5'h10 ),.din4_WIDTH( 64 ),.CASE5( 5'h14 ),.din5_WIDTH( 64 ),.CASE6( 5'h18 ),.din6_WIDTH( 64 ),.CASE7( 5'h1C ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_17_5_64_1_1_x_U1724(.din0(tmp_38_fu_1649_p2),.din1(tmp_38_fu_1649_p4),.din2(tmp_38_fu_1649_p6),.din3(tmp_38_fu_1649_p8),.din4(tmp_38_fu_1649_p10),.din5(tmp_38_fu_1649_p12),.din6(tmp_38_fu_1649_p14),.din7(tmp_38_fu_1649_p16),.def(tmp_38_fu_1649_p17),.sel(trunc_ln153_reg_1822),.dout(tmp_38_fu_1649_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage24),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage24_subdone) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage24)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage24_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_4_fu_208 <= 7'd0;
    end else if (((icmp_ln152_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_4_fu_208 <= select_ln152_reg_1817;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten13_fu_212 <= 11'd0;
    end else if (((icmp_ln152_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten13_fu_212 <= add_ln152_reg_1797;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_204 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_204 <= add_ln153_fu_1745_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_7_fu_200 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        norm_7_fu_200 <= grp_fu_1939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln152_1_reg_1807 <= add_ln152_1_fu_1119_p2;
        add_ln152_reg_1797 <= add_ln152_fu_1110_p2;
        i_4_load_reg_1802 <= ap_sig_allocacmp_i_4_load;
        icmp_ln152_reg_1793 <= icmp_ln152_fu_1104_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_predicate_pred1007_state19 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd8));
        ap_predicate_pred1018_state19 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd12));
        ap_predicate_pred1029_state19 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd16));
        ap_predicate_pred1040_state19 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd20));
        ap_predicate_pred1051_state19 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd24));
        ap_predicate_pred1073_state19 <= (~(trunc_ln153_reg_1822 == 5'd4) & ~(trunc_ln153_reg_1822 == 5'd0) & ~(trunc_ln153_reg_1822 == 5'd24) & ~(trunc_ln153_reg_1822 == 5'd20) & ~(trunc_ln153_reg_1822 == 5'd16) & ~(trunc_ln153_reg_1822 == 5'd12) & ~(trunc_ln153_reg_1822 == 5'd8) & (icmp_ln152_reg_1793 == 1'd0));
        ap_predicate_pred978_state19 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd0));
        ap_predicate_pred996_state19 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd4));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        ap_predicate_pred1007_state20 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd8));
        ap_predicate_pred1018_state20 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd12));
        ap_predicate_pred1029_state20 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd16));
        ap_predicate_pred1040_state20 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd20));
        ap_predicate_pred1051_state20 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd24));
        ap_predicate_pred1073_state20 <= (~(trunc_ln153_reg_1822 == 5'd4) & ~(trunc_ln153_reg_1822 == 5'd0) & ~(trunc_ln153_reg_1822 == 5'd24) & ~(trunc_ln153_reg_1822 == 5'd20) & ~(trunc_ln153_reg_1822 == 5'd16) & ~(trunc_ln153_reg_1822 == 5'd12) & ~(trunc_ln153_reg_1822 == 5'd8) & (icmp_ln152_reg_1793 == 1'd0));
        ap_predicate_pred978_state20 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd0));
        ap_predicate_pred996_state20 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd4));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_predicate_pred1007_state21 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd8));
        ap_predicate_pred1018_state21 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd12));
        ap_predicate_pred1029_state21 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd16));
        ap_predicate_pred1040_state21 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd20));
        ap_predicate_pred1051_state21 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd24));
        ap_predicate_pred1073_state21 <= (~(trunc_ln153_reg_1822 == 5'd4) & ~(trunc_ln153_reg_1822 == 5'd0) & ~(trunc_ln153_reg_1822 == 5'd24) & ~(trunc_ln153_reg_1822 == 5'd20) & ~(trunc_ln153_reg_1822 == 5'd16) & ~(trunc_ln153_reg_1822 == 5'd12) & ~(trunc_ln153_reg_1822 == 5'd8) & (icmp_ln152_reg_1793 == 1'd0));
        ap_predicate_pred978_state21 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd0));
        ap_predicate_pred996_state21 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd4));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_predicate_pred1007_state22 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd8));
        ap_predicate_pred1018_state22 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd12));
        ap_predicate_pred1029_state22 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd16));
        ap_predicate_pred1040_state22 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd20));
        ap_predicate_pred1051_state22 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd24));
        ap_predicate_pred1073_state22 <= (~(trunc_ln153_reg_1822 == 5'd4) & ~(trunc_ln153_reg_1822 == 5'd0) & ~(trunc_ln153_reg_1822 == 5'd24) & ~(trunc_ln153_reg_1822 == 5'd20) & ~(trunc_ln153_reg_1822 == 5'd16) & ~(trunc_ln153_reg_1822 == 5'd12) & ~(trunc_ln153_reg_1822 == 5'd8) & (icmp_ln152_reg_1793 == 1'd0));
        ap_predicate_pred978_state22 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd0));
        ap_predicate_pred996_state22 <= ((icmp_ln152_reg_1793 == 1'd0) & (trunc_ln153_reg_1822 == 5'd4));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul81_2_reg_2194 <= grp_fu_1943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul81_3_reg_2199 <= grp_fu_1943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        mul95_2_reg_2230 <= grp_fu_1943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        mul95_3_reg_2235 <= grp_fu_1943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        norm_11_reg_2240 <= grp_fu_1939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1064 <= grp_fu_1943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_1069 <= grp_fu_1943_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_1074 <= grp_fu_1939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln121_reg_1812 <= select_ln121_fu_1136_p3;
        select_ln152_reg_1817 <= select_ln152_fu_1144_p3;
        trunc_ln153_reg_1822 <= trunc_ln153_fu_1156_p1;
        weights2_0_addr_reg_1874 <= zext_ln154_fu_1180_p1;
        weights2_10_addr_reg_2044 <= zext_ln154_fu_1180_p1;
        weights2_11_addr_reg_2124 <= zext_ln154_fu_1180_p1;
        weights2_12_addr_reg_1889 <= zext_ln154_fu_1180_p1;
        weights2_13_addr_reg_1969 <= zext_ln154_fu_1180_p1;
        weights2_14_addr_reg_2049 <= zext_ln154_fu_1180_p1;
        weights2_15_addr_reg_2129 <= zext_ln154_fu_1180_p1;
        weights2_16_addr_reg_1894 <= zext_ln154_fu_1180_p1;
        weights2_17_addr_reg_1974 <= zext_ln154_fu_1180_p1;
        weights2_18_addr_reg_2054 <= zext_ln154_fu_1180_p1;
        weights2_19_addr_reg_2134 <= zext_ln154_fu_1180_p1;
        weights2_1_addr_reg_1954 <= zext_ln154_fu_1180_p1;
        weights2_20_addr_reg_1899 <= zext_ln154_fu_1180_p1;
        weights2_21_addr_reg_1979 <= zext_ln154_fu_1180_p1;
        weights2_22_addr_reg_2059 <= zext_ln154_fu_1180_p1;
        weights2_23_addr_reg_2139 <= zext_ln154_fu_1180_p1;
        weights2_24_addr_reg_1904 <= zext_ln154_fu_1180_p1;
        weights2_25_addr_reg_1984 <= zext_ln154_fu_1180_p1;
        weights2_26_addr_reg_2064 <= zext_ln154_fu_1180_p1;
        weights2_27_addr_reg_2144 <= zext_ln154_fu_1180_p1;
        weights2_28_addr_reg_1909 <= zext_ln154_fu_1180_p1;
        weights2_29_addr_reg_1989 <= zext_ln154_fu_1180_p1;
        weights2_2_addr_reg_2034 <= zext_ln154_fu_1180_p1;
        weights2_30_addr_reg_2069 <= zext_ln154_fu_1180_p1;
        weights2_31_addr_reg_2149 <= zext_ln154_fu_1180_p1;
        weights2_3_addr_reg_2114 <= zext_ln154_fu_1180_p1;
        weights2_4_addr_reg_1879 <= zext_ln154_fu_1180_p1;
        weights2_5_addr_reg_1959 <= zext_ln154_fu_1180_p1;
        weights2_6_addr_reg_2039 <= zext_ln154_fu_1180_p1;
        weights2_7_addr_reg_2119 <= zext_ln154_fu_1180_p1;
        weights2_8_addr_reg_1884 <= zext_ln154_fu_1180_p1;
        weights2_9_addr_reg_1964 <= zext_ln154_fu_1180_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sub86_1_reg_2204 <= grp_fu_1939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sub86_2_reg_2211 <= grp_fu_1939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        sub86_3_reg_2218 <= grp_fu_1939_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_31_reg_2154 <= tmp_31_fu_1248_p19;
        tmp_32_reg_2159 <= tmp_32_fu_1319_p19;
        tmp_33_reg_2164 <= tmp_33_fu_1358_p19;
        tmp_34_reg_2169 <= tmp_34_fu_1429_p19;
        tmp_35_reg_2174 <= tmp_35_fu_1468_p19;
        tmp_36_reg_2179 <= tmp_36_fu_1539_p19;
        tmp_37_reg_2184 <= tmp_37_fu_1578_p19;
        tmp_38_reg_2189 <= tmp_38_fu_1649_p19;
    end
end
always @ (*) begin
    if (((icmp_ln152_reg_1793 == 1'd1) & (1'b0 == ap_block_pp0_stage24_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        ap_condition_exit_pp0_iter0_stage24 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage24 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage24_subdone) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4_load = i_4_fu_208;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten13_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_212;
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
    if ((((icmp_ln152_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage13_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln152_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((icmp_ln152_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln152_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1055_opcode = 2'd1;
    end else if ((((icmp_ln152_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage25_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_1055_opcode = 2'd0;
    end else begin
        grp_fu_1055_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1055_p0 = norm_11_reg_2240;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1055_p0 = reg_1074;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1055_p0 = norm_7_fu_200;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1055_p0 = tmp_38_reg_2189;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1055_p0 = tmp_36_reg_2179;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1055_p0 = tmp_34_reg_2169;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1055_p0 = tmp_32_reg_2159;
    end else begin
        grp_fu_1055_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1055_p1 = mul95_3_reg_2235;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1055_p1 = mul95_2_reg_2230;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1055_p1 = mul81_3_reg_2199;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1055_p1 = mul81_2_reg_2194;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_1055_p1 = reg_1069;
    end else if ((((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1055_p1 = reg_1064;
    end else begin
        grp_fu_1055_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_1059_p0 = sub86_3_reg_2218;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_1059_p0 = sub86_2_reg_2211;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_1059_p0 = sub86_1_reg_2204;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_1059_p0 = reg_1074;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1059_p0 = tmp_37_reg_2184;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1059_p0 = tmp_35_reg_2174;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1059_p0 = tmp_33_reg_2164;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1059_p0 = tmp_31_reg_2154;
        end else begin
            grp_fu_1059_p0 = 'bx;
        end
    end else begin
        grp_fu_1059_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1059_p1 = sub86_3_reg_2218;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1059_p1 = sub86_2_reg_2211;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1059_p1 = sub86_1_reg_2204;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1059_p1 = reg_1074;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1059_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1059_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln152_reg_1793 == 1'd1) & (1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        norm_7_out_ap_vld = 1'b1;
    end else begin
        norm_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_0_address0_local = weights2_0_addr_reg_1874;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_0_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_0_address0_local = 'bx;
        end
    end else begin
        weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred978_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_0_we0_local = 1'b1;
    end else begin
        weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_10_address0_local = weights2_10_addr_reg_2044;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_10_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_10_address0_local = 'bx;
        end
    end else begin
        weights2_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_10_ce0_local = 1'b1;
    end else begin
        weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1007_state21 == 1'b1))) begin
        weights2_10_we0_local = 1'b1;
    end else begin
        weights2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_11_address0_local = weights2_11_addr_reg_2124;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_11_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_11_address0_local = 'bx;
        end
    end else begin
        weights2_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        weights2_11_ce0_local = 1'b1;
    end else begin
        weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1007_state22 == 1'b1))) begin
        weights2_11_we0_local = 1'b1;
    end else begin
        weights2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_12_address0_local = weights2_12_addr_reg_1889;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_12_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_12_address0_local = 'bx;
        end
    end else begin
        weights2_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_12_ce0_local = 1'b1;
    end else begin
        weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1018_state19 == 1'b1))) begin
        weights2_12_we0_local = 1'b1;
    end else begin
        weights2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_13_address0_local = weights2_13_addr_reg_1969;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_13_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_13_address0_local = 'bx;
        end
    end else begin
        weights2_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_13_ce0_local = 1'b1;
    end else begin
        weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1018_state20 == 1'b1))) begin
        weights2_13_we0_local = 1'b1;
    end else begin
        weights2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_14_address0_local = weights2_14_addr_reg_2049;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_14_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_14_address0_local = 'bx;
        end
    end else begin
        weights2_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_14_ce0_local = 1'b1;
    end else begin
        weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1018_state21 == 1'b1))) begin
        weights2_14_we0_local = 1'b1;
    end else begin
        weights2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_15_address0_local = weights2_15_addr_reg_2129;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_15_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_15_address0_local = 'bx;
        end
    end else begin
        weights2_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        weights2_15_ce0_local = 1'b1;
    end else begin
        weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1018_state22 == 1'b1))) begin
        weights2_15_we0_local = 1'b1;
    end else begin
        weights2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_16_address0_local = weights2_16_addr_reg_1894;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_16_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_16_address0_local = 'bx;
        end
    end else begin
        weights2_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_16_ce0_local = 1'b1;
    end else begin
        weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1029_state19 == 1'b1))) begin
        weights2_16_we0_local = 1'b1;
    end else begin
        weights2_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_17_address0_local = weights2_17_addr_reg_1974;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_17_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_17_address0_local = 'bx;
        end
    end else begin
        weights2_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_17_ce0_local = 1'b1;
    end else begin
        weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1029_state20 == 1'b1))) begin
        weights2_17_we0_local = 1'b1;
    end else begin
        weights2_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_18_address0_local = weights2_18_addr_reg_2054;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_18_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_18_address0_local = 'bx;
        end
    end else begin
        weights2_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_18_ce0_local = 1'b1;
    end else begin
        weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1029_state21 == 1'b1))) begin
        weights2_18_we0_local = 1'b1;
    end else begin
        weights2_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_19_address0_local = weights2_19_addr_reg_2134;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_19_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_19_address0_local = 'bx;
        end
    end else begin
        weights2_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        weights2_19_ce0_local = 1'b1;
    end else begin
        weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1029_state22 == 1'b1))) begin
        weights2_19_we0_local = 1'b1;
    end else begin
        weights2_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_1_address0_local = weights2_1_addr_reg_1954;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_1_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_1_address0_local = 'bx;
        end
    end else begin
        weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred978_state20 == 1'b1))) begin
        weights2_1_we0_local = 1'b1;
    end else begin
        weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_20_address0_local = weights2_20_addr_reg_1899;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_20_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_20_address0_local = 'bx;
        end
    end else begin
        weights2_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_20_ce0_local = 1'b1;
    end else begin
        weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1040_state19 == 1'b1))) begin
        weights2_20_we0_local = 1'b1;
    end else begin
        weights2_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_21_address0_local = weights2_21_addr_reg_1979;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_21_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_21_address0_local = 'bx;
        end
    end else begin
        weights2_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_21_ce0_local = 1'b1;
    end else begin
        weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1040_state20 == 1'b1))) begin
        weights2_21_we0_local = 1'b1;
    end else begin
        weights2_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_22_address0_local = weights2_22_addr_reg_2059;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_22_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_22_address0_local = 'bx;
        end
    end else begin
        weights2_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_22_ce0_local = 1'b1;
    end else begin
        weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1040_state21 == 1'b1))) begin
        weights2_22_we0_local = 1'b1;
    end else begin
        weights2_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_23_address0_local = weights2_23_addr_reg_2139;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_23_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_23_address0_local = 'bx;
        end
    end else begin
        weights2_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        weights2_23_ce0_local = 1'b1;
    end else begin
        weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1040_state22 == 1'b1))) begin
        weights2_23_we0_local = 1'b1;
    end else begin
        weights2_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_24_address0_local = weights2_24_addr_reg_1904;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_24_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_24_address0_local = 'bx;
        end
    end else begin
        weights2_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_24_ce0_local = 1'b1;
    end else begin
        weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1051_state19 == 1'b1))) begin
        weights2_24_we0_local = 1'b1;
    end else begin
        weights2_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_25_address0_local = weights2_25_addr_reg_1984;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_25_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_25_address0_local = 'bx;
        end
    end else begin
        weights2_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_25_ce0_local = 1'b1;
    end else begin
        weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1051_state20 == 1'b1))) begin
        weights2_25_we0_local = 1'b1;
    end else begin
        weights2_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_26_address0_local = weights2_26_addr_reg_2064;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_26_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_26_address0_local = 'bx;
        end
    end else begin
        weights2_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_26_ce0_local = 1'b1;
    end else begin
        weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1051_state21 == 1'b1))) begin
        weights2_26_we0_local = 1'b1;
    end else begin
        weights2_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_27_address0_local = weights2_27_addr_reg_2144;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_27_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_27_address0_local = 'bx;
        end
    end else begin
        weights2_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        weights2_27_ce0_local = 1'b1;
    end else begin
        weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1051_state22 == 1'b1))) begin
        weights2_27_we0_local = 1'b1;
    end else begin
        weights2_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_28_address0_local = weights2_28_addr_reg_1909;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_28_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_28_address0_local = 'bx;
        end
    end else begin
        weights2_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_28_ce0_local = 1'b1;
    end else begin
        weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1073_state19 == 1'b1))) begin
        weights2_28_we0_local = 1'b1;
    end else begin
        weights2_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_29_address0_local = weights2_29_addr_reg_1989;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_29_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_29_address0_local = 'bx;
        end
    end else begin
        weights2_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_29_ce0_local = 1'b1;
    end else begin
        weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1073_state20 == 1'b1))) begin
        weights2_29_we0_local = 1'b1;
    end else begin
        weights2_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_2_address0_local = weights2_2_addr_reg_2034;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_2_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_2_address0_local = 'bx;
        end
    end else begin
        weights2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_2_ce0_local = 1'b1;
    end else begin
        weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred978_state21 == 1'b1))) begin
        weights2_2_we0_local = 1'b1;
    end else begin
        weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_30_address0_local = weights2_30_addr_reg_2069;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_30_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_30_address0_local = 'bx;
        end
    end else begin
        weights2_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_30_ce0_local = 1'b1;
    end else begin
        weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1073_state21 == 1'b1))) begin
        weights2_30_we0_local = 1'b1;
    end else begin
        weights2_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_31_address0_local = weights2_31_addr_reg_2149;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_31_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_31_address0_local = 'bx;
        end
    end else begin
        weights2_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        weights2_31_ce0_local = 1'b1;
    end else begin
        weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1073_state22 == 1'b1))) begin
        weights2_31_we0_local = 1'b1;
    end else begin
        weights2_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_3_address0_local = weights2_3_addr_reg_2114;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_3_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_3_address0_local = 'bx;
        end
    end else begin
        weights2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        weights2_3_ce0_local = 1'b1;
    end else begin
        weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred978_state22 == 1'b1))) begin
        weights2_3_we0_local = 1'b1;
    end else begin
        weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_4_address0_local = weights2_4_addr_reg_1879;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_4_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_4_address0_local = 'bx;
        end
    end else begin
        weights2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_4_ce0_local = 1'b1;
    end else begin
        weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred996_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_4_we0_local = 1'b1;
    end else begin
        weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_5_address0_local = weights2_5_addr_reg_1959;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_5_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_5_address0_local = 'bx;
        end
    end else begin
        weights2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_5_ce0_local = 1'b1;
    end else begin
        weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred996_state20 == 1'b1))) begin
        weights2_5_we0_local = 1'b1;
    end else begin
        weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_6_address0_local = weights2_6_addr_reg_2039;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_6_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_6_address0_local = 'bx;
        end
    end else begin
        weights2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_6_ce0_local = 1'b1;
    end else begin
        weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred996_state21 == 1'b1))) begin
        weights2_6_we0_local = 1'b1;
    end else begin
        weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_7_address0_local = weights2_7_addr_reg_2119;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_7_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_7_address0_local = 'bx;
        end
    end else begin
        weights2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        weights2_7_ce0_local = 1'b1;
    end else begin
        weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred996_state22 == 1'b1))) begin
        weights2_7_we0_local = 1'b1;
    end else begin
        weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_8_address0_local = weights2_8_addr_reg_1884;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_8_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_8_address0_local = 'bx;
        end
    end else begin
        weights2_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_8_ce0_local = 1'b1;
    end else begin
        weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1007_state19 == 1'b1))) begin
        weights2_8_we0_local = 1'b1;
    end else begin
        weights2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_9_address0_local = weights2_9_addr_reg_1964;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_9_address0_local = zext_ln154_fu_1180_p1;
        end else begin
            weights2_9_address0_local = 'bx;
        end
    end else begin
        weights2_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_9_ce0_local = 1'b1;
    end else begin
        weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1007_state20 == 1'b1))) begin
        weights2_9_we0_local = 1'b1;
    end else begin
        weights2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage24)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln152_1_fu_1119_p2 = (ap_sig_allocacmp_i_4_load + 7'd1);
assign add_ln152_fu_1110_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 11'd1);
assign add_ln153_fu_1745_p2 = (select_ln121_reg_1812 + 7'd4);
assign add_ln154_fu_1174_p2 = (zext_ln154_1_fu_1170_p1 + empty_fu_1150_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage24;
assign ap_ready = ap_ready_sig;
assign bitcast_ln154_32_fu_1696_p1 = reg_1074;
assign bitcast_ln154_33_fu_1708_p1 = sub86_1_reg_2204;
assign bitcast_ln154_34_fu_1719_p1 = sub86_2_reg_2211;
assign bitcast_ln154_35_fu_1730_p1 = sub86_3_reg_2218;
assign d_weights2_0_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_0_ce0 = d_weights2_0_ce0_local;
assign d_weights2_10_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_10_ce0 = d_weights2_10_ce0_local;
assign d_weights2_11_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_11_ce0 = d_weights2_11_ce0_local;
assign d_weights2_12_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_12_ce0 = d_weights2_12_ce0_local;
assign d_weights2_13_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_13_ce0 = d_weights2_13_ce0_local;
assign d_weights2_14_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_14_ce0 = d_weights2_14_ce0_local;
assign d_weights2_15_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_15_ce0 = d_weights2_15_ce0_local;
assign d_weights2_16_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_16_ce0 = d_weights2_16_ce0_local;
assign d_weights2_17_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_17_ce0 = d_weights2_17_ce0_local;
assign d_weights2_18_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_18_ce0 = d_weights2_18_ce0_local;
assign d_weights2_19_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_19_ce0 = d_weights2_19_ce0_local;
assign d_weights2_1_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_1_ce0 = d_weights2_1_ce0_local;
assign d_weights2_20_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_20_ce0 = d_weights2_20_ce0_local;
assign d_weights2_21_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_21_ce0 = d_weights2_21_ce0_local;
assign d_weights2_22_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_22_ce0 = d_weights2_22_ce0_local;
assign d_weights2_23_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_23_ce0 = d_weights2_23_ce0_local;
assign d_weights2_24_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_24_ce0 = d_weights2_24_ce0_local;
assign d_weights2_25_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_25_ce0 = d_weights2_25_ce0_local;
assign d_weights2_26_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_26_ce0 = d_weights2_26_ce0_local;
assign d_weights2_27_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_27_ce0 = d_weights2_27_ce0_local;
assign d_weights2_28_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_28_ce0 = d_weights2_28_ce0_local;
assign d_weights2_29_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_29_ce0 = d_weights2_29_ce0_local;
assign d_weights2_2_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_2_ce0 = d_weights2_2_ce0_local;
assign d_weights2_30_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_30_ce0 = d_weights2_30_ce0_local;
assign d_weights2_31_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_31_ce0 = d_weights2_31_ce0_local;
assign d_weights2_3_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_3_ce0 = d_weights2_3_ce0_local;
assign d_weights2_4_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_4_ce0 = d_weights2_4_ce0_local;
assign d_weights2_5_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_5_ce0 = d_weights2_5_ce0_local;
assign d_weights2_6_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_6_ce0 = d_weights2_6_ce0_local;
assign d_weights2_7_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_7_ce0 = d_weights2_7_ce0_local;
assign d_weights2_8_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_8_ce0 = d_weights2_8_ce0_local;
assign d_weights2_9_address0 = zext_ln154_fu_1180_p1;
assign d_weights2_9_ce0 = d_weights2_9_ce0_local;
assign empty_fu_1150_p2 = select_ln152_fu_1144_p3 << 7'd1;
assign grp_fu_1939_p_ce = 1'b1;
assign grp_fu_1939_p_din0 = grp_fu_1055_p0;
assign grp_fu_1939_p_din1 = grp_fu_1055_p1;
assign grp_fu_1939_p_opcode = grp_fu_1055_opcode;
assign grp_fu_1943_p_ce = 1'b1;
assign grp_fu_1943_p_din0 = grp_fu_1059_p0;
assign grp_fu_1943_p_din1 = grp_fu_1059_p1;
assign icmp_ln152_fu_1104_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1160_p4 = {{select_ln121_fu_1136_p3[6:5]}};
assign norm_7_out = norm_7_fu_200;
assign select_ln121_fu_1136_p3 = ((tmp_fu_1128_p3[0:0] == 1'b1) ? 7'd0 : j_fu_204);
assign select_ln152_fu_1144_p3 = ((tmp_fu_1128_p3[0:0] == 1'b1) ? add_ln152_1_reg_1807 : i_4_load_reg_1802);
assign tmp_31_fu_1248_p17 = 'bx;
assign tmp_32_fu_1319_p10 = weights2_16_q0;
assign tmp_32_fu_1319_p12 = weights2_20_q0;
assign tmp_32_fu_1319_p14 = weights2_24_q0;
assign tmp_32_fu_1319_p16 = weights2_28_q0;
assign tmp_32_fu_1319_p17 = 'bx;
assign tmp_32_fu_1319_p2 = weights2_0_q0;
assign tmp_32_fu_1319_p4 = weights2_4_q0;
assign tmp_32_fu_1319_p6 = weights2_8_q0;
assign tmp_32_fu_1319_p8 = weights2_12_q0;
assign tmp_33_fu_1358_p17 = 'bx;
assign tmp_34_fu_1429_p10 = weights2_17_q0;
assign tmp_34_fu_1429_p12 = weights2_21_q0;
assign tmp_34_fu_1429_p14 = weights2_25_q0;
assign tmp_34_fu_1429_p16 = weights2_29_q0;
assign tmp_34_fu_1429_p17 = 'bx;
assign tmp_34_fu_1429_p2 = weights2_1_q0;
assign tmp_34_fu_1429_p4 = weights2_5_q0;
assign tmp_34_fu_1429_p6 = weights2_9_q0;
assign tmp_34_fu_1429_p8 = weights2_13_q0;
assign tmp_35_fu_1468_p17 = 'bx;
assign tmp_36_fu_1539_p10 = weights2_18_q0;
assign tmp_36_fu_1539_p12 = weights2_22_q0;
assign tmp_36_fu_1539_p14 = weights2_26_q0;
assign tmp_36_fu_1539_p16 = weights2_30_q0;
assign tmp_36_fu_1539_p17 = 'bx;
assign tmp_36_fu_1539_p2 = weights2_2_q0;
assign tmp_36_fu_1539_p4 = weights2_6_q0;
assign tmp_36_fu_1539_p6 = weights2_10_q0;
assign tmp_36_fu_1539_p8 = weights2_14_q0;
assign tmp_37_fu_1578_p17 = 'bx;
assign tmp_38_fu_1649_p10 = weights2_19_q0;
assign tmp_38_fu_1649_p12 = weights2_23_q0;
assign tmp_38_fu_1649_p14 = weights2_27_q0;
assign tmp_38_fu_1649_p16 = weights2_31_q0;
assign tmp_38_fu_1649_p17 = 'bx;
assign tmp_38_fu_1649_p2 = weights2_3_q0;
assign tmp_38_fu_1649_p4 = weights2_7_q0;
assign tmp_38_fu_1649_p6 = weights2_11_q0;
assign tmp_38_fu_1649_p8 = weights2_15_q0;
assign tmp_fu_1128_p3 = j_fu_204[32'd6];
assign trunc_ln153_fu_1156_p1 = select_ln121_fu_1136_p3[4:0];
assign weights2_0_address0 = weights2_0_address0_local;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_0_d0 = bitcast_ln154_32_fu_1696_p1;
assign weights2_0_we0 = weights2_0_we0_local;
assign weights2_10_address0 = weights2_10_address0_local;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_10_d0 = bitcast_ln154_34_fu_1719_p1;
assign weights2_10_we0 = weights2_10_we0_local;
assign weights2_11_address0 = weights2_11_address0_local;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_11_d0 = bitcast_ln154_35_fu_1730_p1;
assign weights2_11_we0 = weights2_11_we0_local;
assign weights2_12_address0 = weights2_12_address0_local;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_12_d0 = bitcast_ln154_32_fu_1696_p1;
assign weights2_12_we0 = weights2_12_we0_local;
assign weights2_13_address0 = weights2_13_address0_local;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_13_d0 = bitcast_ln154_33_fu_1708_p1;
assign weights2_13_we0 = weights2_13_we0_local;
assign weights2_14_address0 = weights2_14_address0_local;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_14_d0 = bitcast_ln154_34_fu_1719_p1;
assign weights2_14_we0 = weights2_14_we0_local;
assign weights2_15_address0 = weights2_15_address0_local;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_15_d0 = bitcast_ln154_35_fu_1730_p1;
assign weights2_15_we0 = weights2_15_we0_local;
assign weights2_16_address0 = weights2_16_address0_local;
assign weights2_16_ce0 = weights2_16_ce0_local;
assign weights2_16_d0 = bitcast_ln154_32_fu_1696_p1;
assign weights2_16_we0 = weights2_16_we0_local;
assign weights2_17_address0 = weights2_17_address0_local;
assign weights2_17_ce0 = weights2_17_ce0_local;
assign weights2_17_d0 = bitcast_ln154_33_fu_1708_p1;
assign weights2_17_we0 = weights2_17_we0_local;
assign weights2_18_address0 = weights2_18_address0_local;
assign weights2_18_ce0 = weights2_18_ce0_local;
assign weights2_18_d0 = bitcast_ln154_34_fu_1719_p1;
assign weights2_18_we0 = weights2_18_we0_local;
assign weights2_19_address0 = weights2_19_address0_local;
assign weights2_19_ce0 = weights2_19_ce0_local;
assign weights2_19_d0 = bitcast_ln154_35_fu_1730_p1;
assign weights2_19_we0 = weights2_19_we0_local;
assign weights2_1_address0 = weights2_1_address0_local;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_1_d0 = bitcast_ln154_33_fu_1708_p1;
assign weights2_1_we0 = weights2_1_we0_local;
assign weights2_20_address0 = weights2_20_address0_local;
assign weights2_20_ce0 = weights2_20_ce0_local;
assign weights2_20_d0 = bitcast_ln154_32_fu_1696_p1;
assign weights2_20_we0 = weights2_20_we0_local;
assign weights2_21_address0 = weights2_21_address0_local;
assign weights2_21_ce0 = weights2_21_ce0_local;
assign weights2_21_d0 = bitcast_ln154_33_fu_1708_p1;
assign weights2_21_we0 = weights2_21_we0_local;
assign weights2_22_address0 = weights2_22_address0_local;
assign weights2_22_ce0 = weights2_22_ce0_local;
assign weights2_22_d0 = bitcast_ln154_34_fu_1719_p1;
assign weights2_22_we0 = weights2_22_we0_local;
assign weights2_23_address0 = weights2_23_address0_local;
assign weights2_23_ce0 = weights2_23_ce0_local;
assign weights2_23_d0 = bitcast_ln154_35_fu_1730_p1;
assign weights2_23_we0 = weights2_23_we0_local;
assign weights2_24_address0 = weights2_24_address0_local;
assign weights2_24_ce0 = weights2_24_ce0_local;
assign weights2_24_d0 = bitcast_ln154_32_fu_1696_p1;
assign weights2_24_we0 = weights2_24_we0_local;
assign weights2_25_address0 = weights2_25_address0_local;
assign weights2_25_ce0 = weights2_25_ce0_local;
assign weights2_25_d0 = bitcast_ln154_33_fu_1708_p1;
assign weights2_25_we0 = weights2_25_we0_local;
assign weights2_26_address0 = weights2_26_address0_local;
assign weights2_26_ce0 = weights2_26_ce0_local;
assign weights2_26_d0 = bitcast_ln154_34_fu_1719_p1;
assign weights2_26_we0 = weights2_26_we0_local;
assign weights2_27_address0 = weights2_27_address0_local;
assign weights2_27_ce0 = weights2_27_ce0_local;
assign weights2_27_d0 = bitcast_ln154_35_fu_1730_p1;
assign weights2_27_we0 = weights2_27_we0_local;
assign weights2_28_address0 = weights2_28_address0_local;
assign weights2_28_ce0 = weights2_28_ce0_local;
assign weights2_28_d0 = bitcast_ln154_32_fu_1696_p1;
assign weights2_28_we0 = weights2_28_we0_local;
assign weights2_29_address0 = weights2_29_address0_local;
assign weights2_29_ce0 = weights2_29_ce0_local;
assign weights2_29_d0 = bitcast_ln154_33_fu_1708_p1;
assign weights2_29_we0 = weights2_29_we0_local;
assign weights2_2_address0 = weights2_2_address0_local;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_2_d0 = bitcast_ln154_34_fu_1719_p1;
assign weights2_2_we0 = weights2_2_we0_local;
assign weights2_30_address0 = weights2_30_address0_local;
assign weights2_30_ce0 = weights2_30_ce0_local;
assign weights2_30_d0 = bitcast_ln154_34_fu_1719_p1;
assign weights2_30_we0 = weights2_30_we0_local;
assign weights2_31_address0 = weights2_31_address0_local;
assign weights2_31_ce0 = weights2_31_ce0_local;
assign weights2_31_d0 = bitcast_ln154_35_fu_1730_p1;
assign weights2_31_we0 = weights2_31_we0_local;
assign weights2_3_address0 = weights2_3_address0_local;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_3_d0 = bitcast_ln154_35_fu_1730_p1;
assign weights2_3_we0 = weights2_3_we0_local;
assign weights2_4_address0 = weights2_4_address0_local;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_4_d0 = bitcast_ln154_32_fu_1696_p1;
assign weights2_4_we0 = weights2_4_we0_local;
assign weights2_5_address0 = weights2_5_address0_local;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_5_d0 = bitcast_ln154_33_fu_1708_p1;
assign weights2_5_we0 = weights2_5_we0_local;
assign weights2_6_address0 = weights2_6_address0_local;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_6_d0 = bitcast_ln154_34_fu_1719_p1;
assign weights2_6_we0 = weights2_6_we0_local;
assign weights2_7_address0 = weights2_7_address0_local;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_7_d0 = bitcast_ln154_35_fu_1730_p1;
assign weights2_7_we0 = weights2_7_we0_local;
assign weights2_8_address0 = weights2_8_address0_local;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_8_d0 = bitcast_ln154_32_fu_1696_p1;
assign weights2_8_we0 = weights2_8_we0_local;
assign weights2_9_address0 = weights2_9_address0_local;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign weights2_9_d0 = bitcast_ln154_33_fu_1708_p1;
assign weights2_9_we0 = weights2_9_we0_local;
assign zext_ln154_1_fu_1170_p1 = lshr_ln1_fu_1160_p4;
assign zext_ln154_fu_1180_p1 = add_ln154_fu_1174_p2;
endmodule 