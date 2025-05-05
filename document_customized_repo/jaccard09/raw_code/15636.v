module backprop_update_weights_37_38_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_31_address0,weights3_31_ce0,weights3_31_we0,weights3_31_d0,weights3_31_q0,weights3_30_address0,weights3_30_ce0,weights3_30_we0,weights3_30_d0,weights3_30_q0,weights3_29_address0,weights3_29_ce0,weights3_29_we0,weights3_29_d0,weights3_29_q0,weights3_28_address0,weights3_28_ce0,weights3_28_we0,weights3_28_d0,weights3_28_q0,weights3_27_address0,weights3_27_ce0,weights3_27_we0,weights3_27_d0,weights3_27_q0,weights3_26_address0,weights3_26_ce0,weights3_26_we0,weights3_26_d0,weights3_26_q0,weights3_25_address0,weights3_25_ce0,weights3_25_we0,weights3_25_d0,weights3_25_q0,weights3_24_address0,weights3_24_ce0,weights3_24_we0,weights3_24_d0,weights3_24_q0,weights3_23_address0,weights3_23_ce0,weights3_23_we0,weights3_23_d0,weights3_23_q0,weights3_22_address0,weights3_22_ce0,weights3_22_we0,weights3_22_d0,weights3_22_q0,weights3_21_address0,weights3_21_ce0,weights3_21_we0,weights3_21_d0,weights3_21_q0,weights3_20_address0,weights3_20_ce0,weights3_20_we0,weights3_20_d0,weights3_20_q0,weights3_19_address0,weights3_19_ce0,weights3_19_we0,weights3_19_d0,weights3_19_q0,weights3_18_address0,weights3_18_ce0,weights3_18_we0,weights3_18_d0,weights3_18_q0,weights3_17_address0,weights3_17_ce0,weights3_17_we0,weights3_17_d0,weights3_17_q0,weights3_16_address0,weights3_16_ce0,weights3_16_we0,weights3_16_d0,weights3_16_q0,weights3_15_address0,weights3_15_ce0,weights3_15_we0,weights3_15_d0,weights3_15_q0,weights3_14_address0,weights3_14_ce0,weights3_14_we0,weights3_14_d0,weights3_14_q0,weights3_13_address0,weights3_13_ce0,weights3_13_we0,weights3_13_d0,weights3_13_q0,weights3_12_address0,weights3_12_ce0,weights3_12_we0,weights3_12_d0,weights3_12_q0,weights3_11_address0,weights3_11_ce0,weights3_11_we0,weights3_11_d0,weights3_11_q0,weights3_10_address0,weights3_10_ce0,weights3_10_we0,weights3_10_d0,weights3_10_q0,weights3_9_address0,weights3_9_ce0,weights3_9_we0,weights3_9_d0,weights3_9_q0,weights3_8_address0,weights3_8_ce0,weights3_8_we0,weights3_8_d0,weights3_8_q0,weights3_7_address0,weights3_7_ce0,weights3_7_we0,weights3_7_d0,weights3_7_q0,weights3_6_address0,weights3_6_ce0,weights3_6_we0,weights3_6_d0,weights3_6_q0,weights3_5_address0,weights3_5_ce0,weights3_5_we0,weights3_5_d0,weights3_5_q0,weights3_4_address0,weights3_4_ce0,weights3_4_we0,weights3_4_d0,weights3_4_q0,weights3_3_address0,weights3_3_ce0,weights3_3_we0,weights3_3_d0,weights3_3_q0,weights3_2_address0,weights3_2_ce0,weights3_2_we0,weights3_2_d0,weights3_2_q0,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,d_weights3_0_address0,d_weights3_0_ce0,d_weights3_0_q0,d_weights3_1_address0,d_weights3_1_ce0,d_weights3_1_q0,d_weights3_2_address0,d_weights3_2_ce0,d_weights3_2_q0,d_weights3_3_address0,d_weights3_3_ce0,d_weights3_3_q0,d_weights3_4_address0,d_weights3_4_ce0,d_weights3_4_q0,d_weights3_5_address0,d_weights3_5_ce0,d_weights3_5_q0,d_weights3_6_address0,d_weights3_6_ce0,d_weights3_6_q0,d_weights3_7_address0,d_weights3_7_ce0,d_weights3_7_q0,d_weights3_8_address0,d_weights3_8_ce0,d_weights3_8_q0,d_weights3_9_address0,d_weights3_9_ce0,d_weights3_9_q0,d_weights3_10_address0,d_weights3_10_ce0,d_weights3_10_q0,d_weights3_11_address0,d_weights3_11_ce0,d_weights3_11_q0,d_weights3_12_address0,d_weights3_12_ce0,d_weights3_12_q0,d_weights3_13_address0,d_weights3_13_ce0,d_weights3_13_q0,d_weights3_14_address0,d_weights3_14_ce0,d_weights3_14_q0,d_weights3_15_address0,d_weights3_15_ce0,d_weights3_15_q0,d_weights3_16_address0,d_weights3_16_ce0,d_weights3_16_q0,d_weights3_17_address0,d_weights3_17_ce0,d_weights3_17_q0,d_weights3_18_address0,d_weights3_18_ce0,d_weights3_18_q0,d_weights3_19_address0,d_weights3_19_ce0,d_weights3_19_q0,d_weights3_20_address0,d_weights3_20_ce0,d_weights3_20_q0,d_weights3_21_address0,d_weights3_21_ce0,d_weights3_21_q0,d_weights3_22_address0,d_weights3_22_ce0,d_weights3_22_q0,d_weights3_23_address0,d_weights3_23_ce0,d_weights3_23_q0,d_weights3_24_address0,d_weights3_24_ce0,d_weights3_24_q0,d_weights3_25_address0,d_weights3_25_ce0,d_weights3_25_q0,d_weights3_26_address0,d_weights3_26_ce0,d_weights3_26_q0,d_weights3_27_address0,d_weights3_27_ce0,d_weights3_27_q0,d_weights3_28_address0,d_weights3_28_ce0,d_weights3_28_q0,d_weights3_29_address0,d_weights3_29_ce0,d_weights3_29_q0,d_weights3_30_address0,d_weights3_30_ce0,d_weights3_30_q0,d_weights3_31_address0,d_weights3_31_ce0,d_weights3_31_q0,norm_7_out,norm_7_out_ap_vld,grp_fu_1955_p_din0,grp_fu_1955_p_din1,grp_fu_1955_p_opcode,grp_fu_1955_p_dout0,grp_fu_1955_p_ce,grp_fu_1959_p_din0,grp_fu_1959_p_din1,grp_fu_1959_p_dout0,grp_fu_1959_p_ce); 
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
output  [2:0] weights3_31_address0;
output   weights3_31_ce0;
output   weights3_31_we0;
output  [63:0] weights3_31_d0;
input  [63:0] weights3_31_q0;
output  [2:0] weights3_30_address0;
output   weights3_30_ce0;
output   weights3_30_we0;
output  [63:0] weights3_30_d0;
input  [63:0] weights3_30_q0;
output  [2:0] weights3_29_address0;
output   weights3_29_ce0;
output   weights3_29_we0;
output  [63:0] weights3_29_d0;
input  [63:0] weights3_29_q0;
output  [2:0] weights3_28_address0;
output   weights3_28_ce0;
output   weights3_28_we0;
output  [63:0] weights3_28_d0;
input  [63:0] weights3_28_q0;
output  [2:0] weights3_27_address0;
output   weights3_27_ce0;
output   weights3_27_we0;
output  [63:0] weights3_27_d0;
input  [63:0] weights3_27_q0;
output  [2:0] weights3_26_address0;
output   weights3_26_ce0;
output   weights3_26_we0;
output  [63:0] weights3_26_d0;
input  [63:0] weights3_26_q0;
output  [2:0] weights3_25_address0;
output   weights3_25_ce0;
output   weights3_25_we0;
output  [63:0] weights3_25_d0;
input  [63:0] weights3_25_q0;
output  [2:0] weights3_24_address0;
output   weights3_24_ce0;
output   weights3_24_we0;
output  [63:0] weights3_24_d0;
input  [63:0] weights3_24_q0;
output  [2:0] weights3_23_address0;
output   weights3_23_ce0;
output   weights3_23_we0;
output  [63:0] weights3_23_d0;
input  [63:0] weights3_23_q0;
output  [2:0] weights3_22_address0;
output   weights3_22_ce0;
output   weights3_22_we0;
output  [63:0] weights3_22_d0;
input  [63:0] weights3_22_q0;
output  [2:0] weights3_21_address0;
output   weights3_21_ce0;
output   weights3_21_we0;
output  [63:0] weights3_21_d0;
input  [63:0] weights3_21_q0;
output  [2:0] weights3_20_address0;
output   weights3_20_ce0;
output   weights3_20_we0;
output  [63:0] weights3_20_d0;
input  [63:0] weights3_20_q0;
output  [2:0] weights3_19_address0;
output   weights3_19_ce0;
output   weights3_19_we0;
output  [63:0] weights3_19_d0;
input  [63:0] weights3_19_q0;
output  [2:0] weights3_18_address0;
output   weights3_18_ce0;
output   weights3_18_we0;
output  [63:0] weights3_18_d0;
input  [63:0] weights3_18_q0;
output  [2:0] weights3_17_address0;
output   weights3_17_ce0;
output   weights3_17_we0;
output  [63:0] weights3_17_d0;
input  [63:0] weights3_17_q0;
output  [2:0] weights3_16_address0;
output   weights3_16_ce0;
output   weights3_16_we0;
output  [63:0] weights3_16_d0;
input  [63:0] weights3_16_q0;
output  [2:0] weights3_15_address0;
output   weights3_15_ce0;
output   weights3_15_we0;
output  [63:0] weights3_15_d0;
input  [63:0] weights3_15_q0;
output  [2:0] weights3_14_address0;
output   weights3_14_ce0;
output   weights3_14_we0;
output  [63:0] weights3_14_d0;
input  [63:0] weights3_14_q0;
output  [2:0] weights3_13_address0;
output   weights3_13_ce0;
output   weights3_13_we0;
output  [63:0] weights3_13_d0;
input  [63:0] weights3_13_q0;
output  [2:0] weights3_12_address0;
output   weights3_12_ce0;
output   weights3_12_we0;
output  [63:0] weights3_12_d0;
input  [63:0] weights3_12_q0;
output  [2:0] weights3_11_address0;
output   weights3_11_ce0;
output   weights3_11_we0;
output  [63:0] weights3_11_d0;
input  [63:0] weights3_11_q0;
output  [2:0] weights3_10_address0;
output   weights3_10_ce0;
output   weights3_10_we0;
output  [63:0] weights3_10_d0;
input  [63:0] weights3_10_q0;
output  [2:0] weights3_9_address0;
output   weights3_9_ce0;
output   weights3_9_we0;
output  [63:0] weights3_9_d0;
input  [63:0] weights3_9_q0;
output  [2:0] weights3_8_address0;
output   weights3_8_ce0;
output   weights3_8_we0;
output  [63:0] weights3_8_d0;
input  [63:0] weights3_8_q0;
output  [2:0] weights3_7_address0;
output   weights3_7_ce0;
output   weights3_7_we0;
output  [63:0] weights3_7_d0;
input  [63:0] weights3_7_q0;
output  [2:0] weights3_6_address0;
output   weights3_6_ce0;
output   weights3_6_we0;
output  [63:0] weights3_6_d0;
input  [63:0] weights3_6_q0;
output  [2:0] weights3_5_address0;
output   weights3_5_ce0;
output   weights3_5_we0;
output  [63:0] weights3_5_d0;
input  [63:0] weights3_5_q0;
output  [2:0] weights3_4_address0;
output   weights3_4_ce0;
output   weights3_4_we0;
output  [63:0] weights3_4_d0;
input  [63:0] weights3_4_q0;
output  [2:0] weights3_3_address0;
output   weights3_3_ce0;
output   weights3_3_we0;
output  [63:0] weights3_3_d0;
input  [63:0] weights3_3_q0;
output  [2:0] weights3_2_address0;
output   weights3_2_ce0;
output   weights3_2_we0;
output  [63:0] weights3_2_d0;
input  [63:0] weights3_2_q0;
output  [2:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [2:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [2:0] d_weights3_0_address0;
output   d_weights3_0_ce0;
input  [63:0] d_weights3_0_q0;
output  [2:0] d_weights3_1_address0;
output   d_weights3_1_ce0;
input  [63:0] d_weights3_1_q0;
output  [2:0] d_weights3_2_address0;
output   d_weights3_2_ce0;
input  [63:0] d_weights3_2_q0;
output  [2:0] d_weights3_3_address0;
output   d_weights3_3_ce0;
input  [63:0] d_weights3_3_q0;
output  [2:0] d_weights3_4_address0;
output   d_weights3_4_ce0;
input  [63:0] d_weights3_4_q0;
output  [2:0] d_weights3_5_address0;
output   d_weights3_5_ce0;
input  [63:0] d_weights3_5_q0;
output  [2:0] d_weights3_6_address0;
output   d_weights3_6_ce0;
input  [63:0] d_weights3_6_q0;
output  [2:0] d_weights3_7_address0;
output   d_weights3_7_ce0;
input  [63:0] d_weights3_7_q0;
output  [2:0] d_weights3_8_address0;
output   d_weights3_8_ce0;
input  [63:0] d_weights3_8_q0;
output  [2:0] d_weights3_9_address0;
output   d_weights3_9_ce0;
input  [63:0] d_weights3_9_q0;
output  [2:0] d_weights3_10_address0;
output   d_weights3_10_ce0;
input  [63:0] d_weights3_10_q0;
output  [2:0] d_weights3_11_address0;
output   d_weights3_11_ce0;
input  [63:0] d_weights3_11_q0;
output  [2:0] d_weights3_12_address0;
output   d_weights3_12_ce0;
input  [63:0] d_weights3_12_q0;
output  [2:0] d_weights3_13_address0;
output   d_weights3_13_ce0;
input  [63:0] d_weights3_13_q0;
output  [2:0] d_weights3_14_address0;
output   d_weights3_14_ce0;
input  [63:0] d_weights3_14_q0;
output  [2:0] d_weights3_15_address0;
output   d_weights3_15_ce0;
input  [63:0] d_weights3_15_q0;
output  [2:0] d_weights3_16_address0;
output   d_weights3_16_ce0;
input  [63:0] d_weights3_16_q0;
output  [2:0] d_weights3_17_address0;
output   d_weights3_17_ce0;
input  [63:0] d_weights3_17_q0;
output  [2:0] d_weights3_18_address0;
output   d_weights3_18_ce0;
input  [63:0] d_weights3_18_q0;
output  [2:0] d_weights3_19_address0;
output   d_weights3_19_ce0;
input  [63:0] d_weights3_19_q0;
output  [2:0] d_weights3_20_address0;
output   d_weights3_20_ce0;
input  [63:0] d_weights3_20_q0;
output  [2:0] d_weights3_21_address0;
output   d_weights3_21_ce0;
input  [63:0] d_weights3_21_q0;
output  [2:0] d_weights3_22_address0;
output   d_weights3_22_ce0;
input  [63:0] d_weights3_22_q0;
output  [2:0] d_weights3_23_address0;
output   d_weights3_23_ce0;
input  [63:0] d_weights3_23_q0;
output  [2:0] d_weights3_24_address0;
output   d_weights3_24_ce0;
input  [63:0] d_weights3_24_q0;
output  [2:0] d_weights3_25_address0;
output   d_weights3_25_ce0;
input  [63:0] d_weights3_25_q0;
output  [2:0] d_weights3_26_address0;
output   d_weights3_26_ce0;
input  [63:0] d_weights3_26_q0;
output  [2:0] d_weights3_27_address0;
output   d_weights3_27_ce0;
input  [63:0] d_weights3_27_q0;
output  [2:0] d_weights3_28_address0;
output   d_weights3_28_ce0;
input  [63:0] d_weights3_28_q0;
output  [2:0] d_weights3_29_address0;
output   d_weights3_29_ce0;
input  [63:0] d_weights3_29_q0;
output  [2:0] d_weights3_30_address0;
output   d_weights3_30_ce0;
input  [63:0] d_weights3_30_q0;
output  [2:0] d_weights3_31_address0;
output   d_weights3_31_ce0;
input  [63:0] d_weights3_31_q0;
output  [63:0] norm_7_out;
output   norm_7_out_ap_vld;
output  [63:0] grp_fu_1955_p_din0;
output  [63:0] grp_fu_1955_p_din1;
output  [1:0] grp_fu_1955_p_opcode;
input  [63:0] grp_fu_1955_p_dout0;
output   grp_fu_1955_p_ce;
output  [63:0] grp_fu_1959_p_din0;
output  [63:0] grp_fu_1959_p_din1;
input  [63:0] grp_fu_1959_p_dout0;
output   grp_fu_1959_p_ce;
reg ap_idle;
reg norm_7_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln178_reg_1757;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln178_fu_1139_p2;
reg   [0:0] icmp_ln178_reg_1757_pp0_iter1_reg;
reg   [0:0] icmp_ln178_reg_1757_pp0_iter2_reg;
reg   [0:0] icmp_ln178_reg_1757_pp0_iter3_reg;
wire   [7:0] add_ln178_fu_1145_p2;
reg   [7:0] add_ln178_reg_1761;
wire   [1:0] select_ln121_fu_1163_p3;
reg   [1:0] select_ln121_reg_1766;
wire   [6:0] select_ln178_fu_1177_p3;
reg   [6:0] select_ln178_reg_1772;
wire   [5:0] trunc_ln179_fu_1185_p1;
reg   [5:0] trunc_ln179_reg_1778;
wire   [4:0] trunc_ln180_fu_1214_p1;
reg   [4:0] trunc_ln180_reg_1783;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [4:0] trunc_ln180_reg_1783_pp0_iter1_reg;
reg   [4:0] trunc_ln180_reg_1783_pp0_iter2_reg;
wire   [63:0] zext_ln180_fu_1228_p1;
reg   [63:0] zext_ln180_reg_1789;
wire   [63:0] tmp_s_fu_1264_p67;
reg   [63:0] tmp_s_reg_1985;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [2:0] weights3_0_addr_reg_1990;
reg   [2:0] weights3_0_addr_reg_1990_pp0_iter2_reg;
reg   [2:0] weights3_1_addr_reg_1995;
reg   [2:0] weights3_1_addr_reg_1995_pp0_iter2_reg;
reg   [2:0] weights3_2_addr_reg_2000;
reg   [2:0] weights3_2_addr_reg_2000_pp0_iter2_reg;
reg   [2:0] weights3_3_addr_reg_2005;
reg   [2:0] weights3_3_addr_reg_2005_pp0_iter2_reg;
reg   [2:0] weights3_4_addr_reg_2010;
reg   [2:0] weights3_4_addr_reg_2010_pp0_iter2_reg;
reg   [2:0] weights3_5_addr_reg_2015;
reg   [2:0] weights3_5_addr_reg_2015_pp0_iter2_reg;
reg   [2:0] weights3_6_addr_reg_2020;
reg   [2:0] weights3_6_addr_reg_2020_pp0_iter2_reg;
reg   [2:0] weights3_7_addr_reg_2025;
reg   [2:0] weights3_7_addr_reg_2025_pp0_iter2_reg;
reg   [2:0] weights3_8_addr_reg_2030;
reg   [2:0] weights3_8_addr_reg_2030_pp0_iter2_reg;
reg   [2:0] weights3_9_addr_reg_2035;
reg   [2:0] weights3_9_addr_reg_2035_pp0_iter2_reg;
reg   [2:0] weights3_10_addr_reg_2040;
reg   [2:0] weights3_10_addr_reg_2040_pp0_iter2_reg;
reg   [2:0] weights3_11_addr_reg_2045;
reg   [2:0] weights3_11_addr_reg_2045_pp0_iter2_reg;
reg   [2:0] weights3_12_addr_reg_2050;
reg   [2:0] weights3_12_addr_reg_2050_pp0_iter2_reg;
reg   [2:0] weights3_13_addr_reg_2055;
reg   [2:0] weights3_13_addr_reg_2055_pp0_iter2_reg;
reg   [2:0] weights3_14_addr_reg_2060;
reg   [2:0] weights3_14_addr_reg_2060_pp0_iter2_reg;
reg   [2:0] weights3_15_addr_reg_2065;
reg   [2:0] weights3_15_addr_reg_2065_pp0_iter2_reg;
reg   [2:0] weights3_16_addr_reg_2070;
reg   [2:0] weights3_16_addr_reg_2070_pp0_iter2_reg;
reg   [2:0] weights3_17_addr_reg_2075;
reg   [2:0] weights3_17_addr_reg_2075_pp0_iter2_reg;
reg   [2:0] weights3_18_addr_reg_2080;
reg   [2:0] weights3_18_addr_reg_2080_pp0_iter2_reg;
reg   [2:0] weights3_19_addr_reg_2085;
reg   [2:0] weights3_19_addr_reg_2085_pp0_iter2_reg;
reg   [2:0] weights3_20_addr_reg_2090;
reg   [2:0] weights3_20_addr_reg_2090_pp0_iter2_reg;
reg   [2:0] weights3_21_addr_reg_2095;
reg   [2:0] weights3_21_addr_reg_2095_pp0_iter2_reg;
reg   [2:0] weights3_22_addr_reg_2100;
reg   [2:0] weights3_22_addr_reg_2100_pp0_iter2_reg;
reg   [2:0] weights3_23_addr_reg_2105;
reg   [2:0] weights3_23_addr_reg_2105_pp0_iter2_reg;
reg   [2:0] weights3_24_addr_reg_2110;
reg   [2:0] weights3_24_addr_reg_2110_pp0_iter2_reg;
reg   [2:0] weights3_25_addr_reg_2115;
reg   [2:0] weights3_25_addr_reg_2115_pp0_iter2_reg;
reg   [2:0] weights3_26_addr_reg_2120;
reg   [2:0] weights3_26_addr_reg_2120_pp0_iter2_reg;
reg   [2:0] weights3_27_addr_reg_2125;
reg   [2:0] weights3_27_addr_reg_2125_pp0_iter2_reg;
reg   [2:0] weights3_28_addr_reg_2130;
reg   [2:0] weights3_28_addr_reg_2130_pp0_iter2_reg;
reg   [2:0] weights3_29_addr_reg_2135;
reg   [2:0] weights3_29_addr_reg_2135_pp0_iter2_reg;
reg   [2:0] weights3_30_addr_reg_2140;
reg   [2:0] weights3_30_addr_reg_2140_pp0_iter2_reg;
reg   [2:0] weights3_31_addr_reg_2145;
reg   [2:0] weights3_31_addr_reg_2145_pp0_iter2_reg;
reg   [63:0] mul_reg_2150;
wire   [63:0] tmp_1_fu_1545_p67;
reg   [63:0] tmp_1_reg_2155;
reg   [63:0] sub5_reg_2160;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] mul1_reg_2167;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_fu_252;
reg   [63:0] ap_sig_allocacmp_norm_load_1;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage4;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [1:0] j_fu_256;
wire   [1:0] add_ln179_fu_1399_p2;
reg   [1:0] ap_sig_allocacmp_j_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_260;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [7:0] indvar_flatten27_fu_264;
reg   [7:0] ap_sig_allocacmp_indvar_flatten27_load;
wire    ap_block_pp0_stage4_01001;
reg    d_weights3_0_ce0_local;
reg    d_weights3_1_ce0_local;
reg    d_weights3_2_ce0_local;
reg    d_weights3_3_ce0_local;
reg    d_weights3_4_ce0_local;
reg    d_weights3_5_ce0_local;
reg    d_weights3_6_ce0_local;
reg    d_weights3_7_ce0_local;
reg    d_weights3_8_ce0_local;
reg    d_weights3_9_ce0_local;
reg    d_weights3_10_ce0_local;
reg    d_weights3_11_ce0_local;
reg    d_weights3_12_ce0_local;
reg    d_weights3_13_ce0_local;
reg    d_weights3_14_ce0_local;
reg    d_weights3_15_ce0_local;
reg    d_weights3_16_ce0_local;
reg    d_weights3_17_ce0_local;
reg    d_weights3_18_ce0_local;
reg    d_weights3_19_ce0_local;
reg    d_weights3_20_ce0_local;
reg    d_weights3_21_ce0_local;
reg    d_weights3_22_ce0_local;
reg    d_weights3_23_ce0_local;
reg    d_weights3_24_ce0_local;
reg    d_weights3_25_ce0_local;
reg    d_weights3_26_ce0_local;
reg    d_weights3_27_ce0_local;
reg    d_weights3_28_ce0_local;
reg    d_weights3_29_ce0_local;
reg    d_weights3_30_ce0_local;
reg    d_weights3_31_ce0_local;
reg    weights3_0_ce0_local;
reg   [2:0] weights3_0_address0_local;
reg    weights3_0_we0_local;
reg    ap_predicate_pred989_state19;
wire   [63:0] bitcast_ln180_32_fu_1680_p1;
reg    weights3_1_ce0_local;
reg   [2:0] weights3_1_address0_local;
reg    weights3_1_we0_local;
reg    ap_predicate_pred1002_state19;
reg    weights3_2_ce0_local;
reg   [2:0] weights3_2_address0_local;
reg    weights3_2_we0_local;
reg    ap_predicate_pred1012_state19;
reg    weights3_3_ce0_local;
reg   [2:0] weights3_3_address0_local;
reg    weights3_3_we0_local;
reg    ap_predicate_pred1022_state19;
reg    weights3_4_ce0_local;
reg   [2:0] weights3_4_address0_local;
reg    weights3_4_we0_local;
reg    ap_predicate_pred1032_state19;
reg    weights3_5_ce0_local;
reg   [2:0] weights3_5_address0_local;
reg    weights3_5_we0_local;
reg    ap_predicate_pred1042_state19;
reg    weights3_6_ce0_local;
reg   [2:0] weights3_6_address0_local;
reg    weights3_6_we0_local;
reg    ap_predicate_pred1052_state19;
reg    weights3_7_ce0_local;
reg   [2:0] weights3_7_address0_local;
reg    weights3_7_we0_local;
reg    ap_predicate_pred1062_state19;
reg    weights3_8_ce0_local;
reg   [2:0] weights3_8_address0_local;
reg    weights3_8_we0_local;
reg    ap_predicate_pred1072_state19;
reg    weights3_9_ce0_local;
reg   [2:0] weights3_9_address0_local;
reg    weights3_9_we0_local;
reg    ap_predicate_pred1082_state19;
reg    weights3_10_ce0_local;
reg   [2:0] weights3_10_address0_local;
reg    weights3_10_we0_local;
reg    ap_predicate_pred1092_state19;
reg    weights3_11_ce0_local;
reg   [2:0] weights3_11_address0_local;
reg    weights3_11_we0_local;
reg    ap_predicate_pred1102_state19;
reg    weights3_12_ce0_local;
reg   [2:0] weights3_12_address0_local;
reg    weights3_12_we0_local;
reg    ap_predicate_pred1112_state19;
reg    weights3_13_ce0_local;
reg   [2:0] weights3_13_address0_local;
reg    weights3_13_we0_local;
reg    ap_predicate_pred1122_state19;
reg    weights3_14_ce0_local;
reg   [2:0] weights3_14_address0_local;
reg    weights3_14_we0_local;
reg    ap_predicate_pred1132_state19;
reg    weights3_15_ce0_local;
reg   [2:0] weights3_15_address0_local;
reg    weights3_15_we0_local;
reg    ap_predicate_pred1142_state19;
reg    weights3_16_ce0_local;
reg   [2:0] weights3_16_address0_local;
reg    weights3_16_we0_local;
reg    ap_predicate_pred1152_state19;
reg    weights3_17_ce0_local;
reg   [2:0] weights3_17_address0_local;
reg    weights3_17_we0_local;
reg    ap_predicate_pred1162_state19;
reg    weights3_18_ce0_local;
reg   [2:0] weights3_18_address0_local;
reg    weights3_18_we0_local;
reg    ap_predicate_pred1172_state19;
reg    weights3_19_ce0_local;
reg   [2:0] weights3_19_address0_local;
reg    weights3_19_we0_local;
reg    ap_predicate_pred1182_state19;
reg    weights3_20_ce0_local;
reg   [2:0] weights3_20_address0_local;
reg    weights3_20_we0_local;
reg    ap_predicate_pred1192_state19;
reg    weights3_21_ce0_local;
reg   [2:0] weights3_21_address0_local;
reg    weights3_21_we0_local;
reg    ap_predicate_pred1202_state19;
reg    weights3_22_ce0_local;
reg   [2:0] weights3_22_address0_local;
reg    weights3_22_we0_local;
reg    ap_predicate_pred1212_state19;
reg    weights3_23_ce0_local;
reg   [2:0] weights3_23_address0_local;
reg    weights3_23_we0_local;
reg    ap_predicate_pred1222_state19;
reg    weights3_24_ce0_local;
reg   [2:0] weights3_24_address0_local;
reg    weights3_24_we0_local;
reg    ap_predicate_pred1232_state19;
reg    weights3_25_ce0_local;
reg   [2:0] weights3_25_address0_local;
reg    weights3_25_we0_local;
reg    ap_predicate_pred1242_state19;
reg    weights3_26_ce0_local;
reg   [2:0] weights3_26_address0_local;
reg    weights3_26_we0_local;
reg    ap_predicate_pred1252_state19;
reg    weights3_27_ce0_local;
reg   [2:0] weights3_27_address0_local;
reg    weights3_27_we0_local;
reg    ap_predicate_pred1262_state19;
reg    weights3_28_ce0_local;
reg   [2:0] weights3_28_address0_local;
reg    weights3_28_we0_local;
reg    ap_predicate_pred1272_state19;
reg    weights3_29_ce0_local;
reg   [2:0] weights3_29_address0_local;
reg    weights3_29_we0_local;
reg    ap_predicate_pred1282_state19;
reg    weights3_30_ce0_local;
reg   [2:0] weights3_30_address0_local;
reg    weights3_30_we0_local;
reg    ap_predicate_pred1292_state19;
reg    weights3_31_ce0_local;
reg   [2:0] weights3_31_address0_local;
reg    weights3_31_we0_local;
reg    ap_predicate_pred1302_state19;
reg   [63:0] grp_fu_1107_p0;
reg   [63:0] grp_fu_1107_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_1111_p0;
reg   [63:0] grp_fu_1111_p1;
wire   [0:0] icmp_ln179_fu_1157_p2;
wire   [6:0] add_ln178_1_fu_1171_p2;
wire   [7:0] p_shl_fu_1192_p3;
wire   [7:0] zext_ln179_fu_1189_p1;
wire   [7:0] zext_ln179_1_fu_1205_p1;
wire   [7:0] sub_ln179_fu_1199_p2;
wire   [7:0] add_ln180_fu_1208_p2;
wire   [2:0] lshr_ln3_fu_1218_p4;
wire   [63:0] tmp_s_fu_1264_p65;
wire    ap_block_pp0_stage2;
wire   [63:0] tmp_1_fu_1545_p2;
wire   [63:0] tmp_1_fu_1545_p4;
wire   [63:0] tmp_1_fu_1545_p6;
wire   [63:0] tmp_1_fu_1545_p8;
wire   [63:0] tmp_1_fu_1545_p10;
wire   [63:0] tmp_1_fu_1545_p12;
wire   [63:0] tmp_1_fu_1545_p14;
wire   [63:0] tmp_1_fu_1545_p16;
wire   [63:0] tmp_1_fu_1545_p18;
wire   [63:0] tmp_1_fu_1545_p20;
wire   [63:0] tmp_1_fu_1545_p22;
wire   [63:0] tmp_1_fu_1545_p24;
wire   [63:0] tmp_1_fu_1545_p26;
wire   [63:0] tmp_1_fu_1545_p28;
wire   [63:0] tmp_1_fu_1545_p30;
wire   [63:0] tmp_1_fu_1545_p32;
wire   [63:0] tmp_1_fu_1545_p34;
wire   [63:0] tmp_1_fu_1545_p36;
wire   [63:0] tmp_1_fu_1545_p38;
wire   [63:0] tmp_1_fu_1545_p40;
wire   [63:0] tmp_1_fu_1545_p42;
wire   [63:0] tmp_1_fu_1545_p44;
wire   [63:0] tmp_1_fu_1545_p46;
wire   [63:0] tmp_1_fu_1545_p48;
wire   [63:0] tmp_1_fu_1545_p50;
wire   [63:0] tmp_1_fu_1545_p52;
wire   [63:0] tmp_1_fu_1545_p54;
wire   [63:0] tmp_1_fu_1545_p56;
wire   [63:0] tmp_1_fu_1545_p58;
wire   [63:0] tmp_1_fu_1545_p60;
wire   [63:0] tmp_1_fu_1545_p62;
wire   [63:0] tmp_1_fu_1545_p64;
wire   [63:0] tmp_1_fu_1545_p65;
reg   [1:0] grp_fu_1107_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_s_fu_1264_p1;
wire   [4:0] tmp_s_fu_1264_p3;
wire   [4:0] tmp_s_fu_1264_p5;
wire   [4:0] tmp_s_fu_1264_p7;
wire   [4:0] tmp_s_fu_1264_p9;
wire   [4:0] tmp_s_fu_1264_p11;
wire   [4:0] tmp_s_fu_1264_p13;
wire   [4:0] tmp_s_fu_1264_p15;
wire   [4:0] tmp_s_fu_1264_p17;
wire   [4:0] tmp_s_fu_1264_p19;
wire   [4:0] tmp_s_fu_1264_p21;
wire   [4:0] tmp_s_fu_1264_p23;
wire   [4:0] tmp_s_fu_1264_p25;
wire   [4:0] tmp_s_fu_1264_p27;
wire   [4:0] tmp_s_fu_1264_p29;
wire   [4:0] tmp_s_fu_1264_p31;
wire  signed [4:0] tmp_s_fu_1264_p33;
wire  signed [4:0] tmp_s_fu_1264_p35;
wire  signed [4:0] tmp_s_fu_1264_p37;
wire  signed [4:0] tmp_s_fu_1264_p39;
wire  signed [4:0] tmp_s_fu_1264_p41;
wire  signed [4:0] tmp_s_fu_1264_p43;
wire  signed [4:0] tmp_s_fu_1264_p45;
wire  signed [4:0] tmp_s_fu_1264_p47;
wire  signed [4:0] tmp_s_fu_1264_p49;
wire  signed [4:0] tmp_s_fu_1264_p51;
wire  signed [4:0] tmp_s_fu_1264_p53;
wire  signed [4:0] tmp_s_fu_1264_p55;
wire  signed [4:0] tmp_s_fu_1264_p57;
wire  signed [4:0] tmp_s_fu_1264_p59;
wire  signed [4:0] tmp_s_fu_1264_p61;
wire  signed [4:0] tmp_s_fu_1264_p63;
wire   [4:0] tmp_1_fu_1545_p1;
wire   [4:0] tmp_1_fu_1545_p3;
wire   [4:0] tmp_1_fu_1545_p5;
wire   [4:0] tmp_1_fu_1545_p7;
wire   [4:0] tmp_1_fu_1545_p9;
wire   [4:0] tmp_1_fu_1545_p11;
wire   [4:0] tmp_1_fu_1545_p13;
wire   [4:0] tmp_1_fu_1545_p15;
wire   [4:0] tmp_1_fu_1545_p17;
wire   [4:0] tmp_1_fu_1545_p19;
wire   [4:0] tmp_1_fu_1545_p21;
wire   [4:0] tmp_1_fu_1545_p23;
wire   [4:0] tmp_1_fu_1545_p25;
wire   [4:0] tmp_1_fu_1545_p27;
wire   [4:0] tmp_1_fu_1545_p29;
wire   [4:0] tmp_1_fu_1545_p31;
wire  signed [4:0] tmp_1_fu_1545_p33;
wire  signed [4:0] tmp_1_fu_1545_p35;
wire  signed [4:0] tmp_1_fu_1545_p37;
wire  signed [4:0] tmp_1_fu_1545_p39;
wire  signed [4:0] tmp_1_fu_1545_p41;
wire  signed [4:0] tmp_1_fu_1545_p43;
wire  signed [4:0] tmp_1_fu_1545_p45;
wire  signed [4:0] tmp_1_fu_1545_p47;
wire  signed [4:0] tmp_1_fu_1545_p49;
wire  signed [4:0] tmp_1_fu_1545_p51;
wire  signed [4:0] tmp_1_fu_1545_p53;
wire  signed [4:0] tmp_1_fu_1545_p55;
wire  signed [4:0] tmp_1_fu_1545_p57;
wire  signed [4:0] tmp_1_fu_1545_p59;
wire  signed [4:0] tmp_1_fu_1545_p61;
wire  signed [4:0] tmp_1_fu_1545_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_252 = 64'd0;
#0 j_fu_256 = 2'd0;
#0 i_fu_260 = 7'd0;
#0 indvar_flatten27_fu_264 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1901(.din0(d_weights3_0_q0),.din1(d_weights3_1_q0),.din2(d_weights3_2_q0),.din3(d_weights3_3_q0),.din4(d_weights3_4_q0),.din5(d_weights3_5_q0),.din6(d_weights3_6_q0),.din7(d_weights3_7_q0),.din8(d_weights3_8_q0),.din9(d_weights3_9_q0),.din10(d_weights3_10_q0),.din11(d_weights3_11_q0),.din12(d_weights3_12_q0),.din13(d_weights3_13_q0),.din14(d_weights3_14_q0),.din15(d_weights3_15_q0),.din16(d_weights3_16_q0),.din17(d_weights3_17_q0),.din18(d_weights3_18_q0),.din19(d_weights3_19_q0),.din20(d_weights3_20_q0),.din21(d_weights3_21_q0),.din22(d_weights3_22_q0),.din23(d_weights3_23_q0),.din24(d_weights3_24_q0),.din25(d_weights3_25_q0),.din26(d_weights3_26_q0),.din27(d_weights3_27_q0),.din28(d_weights3_28_q0),.din29(d_weights3_29_q0),.din30(d_weights3_30_q0),.din31(d_weights3_31_q0),.def(tmp_s_fu_1264_p65),.sel(trunc_ln180_reg_1783),.dout(tmp_s_fu_1264_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h1 ),.din1_WIDTH( 64 ),.CASE2( 5'h2 ),.din2_WIDTH( 64 ),.CASE3( 5'h3 ),.din3_WIDTH( 64 ),.CASE4( 5'h4 ),.din4_WIDTH( 64 ),.CASE5( 5'h5 ),.din5_WIDTH( 64 ),.CASE6( 5'h6 ),.din6_WIDTH( 64 ),.CASE7( 5'h7 ),.din7_WIDTH( 64 ),.CASE8( 5'h8 ),.din8_WIDTH( 64 ),.CASE9( 5'h9 ),.din9_WIDTH( 64 ),.CASE10( 5'hA ),.din10_WIDTH( 64 ),.CASE11( 5'hB ),.din11_WIDTH( 64 ),.CASE12( 5'hC ),.din12_WIDTH( 64 ),.CASE13( 5'hD ),.din13_WIDTH( 64 ),.CASE14( 5'hE ),.din14_WIDTH( 64 ),.CASE15( 5'hF ),.din15_WIDTH( 64 ),.CASE16( 5'h10 ),.din16_WIDTH( 64 ),.CASE17( 5'h11 ),.din17_WIDTH( 64 ),.CASE18( 5'h12 ),.din18_WIDTH( 64 ),.CASE19( 5'h13 ),.din19_WIDTH( 64 ),.CASE20( 5'h14 ),.din20_WIDTH( 64 ),.CASE21( 5'h15 ),.din21_WIDTH( 64 ),.CASE22( 5'h16 ),.din22_WIDTH( 64 ),.CASE23( 5'h17 ),.din23_WIDTH( 64 ),.CASE24( 5'h18 ),.din24_WIDTH( 64 ),.CASE25( 5'h19 ),.din25_WIDTH( 64 ),.CASE26( 5'h1A ),.din26_WIDTH( 64 ),.CASE27( 5'h1B ),.din27_WIDTH( 64 ),.CASE28( 5'h1C ),.din28_WIDTH( 64 ),.CASE29( 5'h1D ),.din29_WIDTH( 64 ),.CASE30( 5'h1E ),.din30_WIDTH( 64 ),.CASE31( 5'h1F ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_65_5_64_1_1_U1902(.din0(tmp_1_fu_1545_p2),.din1(tmp_1_fu_1545_p4),.din2(tmp_1_fu_1545_p6),.din3(tmp_1_fu_1545_p8),.din4(tmp_1_fu_1545_p10),.din5(tmp_1_fu_1545_p12),.din6(tmp_1_fu_1545_p14),.din7(tmp_1_fu_1545_p16),.din8(tmp_1_fu_1545_p18),.din9(tmp_1_fu_1545_p20),.din10(tmp_1_fu_1545_p22),.din11(tmp_1_fu_1545_p24),.din12(tmp_1_fu_1545_p26),.din13(tmp_1_fu_1545_p28),.din14(tmp_1_fu_1545_p30),.din15(tmp_1_fu_1545_p32),.din16(tmp_1_fu_1545_p34),.din17(tmp_1_fu_1545_p36),.din18(tmp_1_fu_1545_p38),.din19(tmp_1_fu_1545_p40),.din20(tmp_1_fu_1545_p42),.din21(tmp_1_fu_1545_p44),.din22(tmp_1_fu_1545_p46),.din23(tmp_1_fu_1545_p48),.din24(tmp_1_fu_1545_p50),.din25(tmp_1_fu_1545_p52),.din26(tmp_1_fu_1545_p54),.din27(tmp_1_fu_1545_p56),.din28(tmp_1_fu_1545_p58),.din29(tmp_1_fu_1545_p60),.din30(tmp_1_fu_1545_p62),.din31(tmp_1_fu_1545_p64),.def(tmp_1_fu_1545_p65),.sel(trunc_ln180_reg_1783_pp0_iter1_reg),.dout(tmp_1_fu_1545_p67));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_260 <= 7'd0;
    end else if (((icmp_ln178_reg_1757 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_260 <= select_ln178_reg_1772;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten27_fu_264 <= 8'd0;
    end else if (((icmp_ln178_reg_1757 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten27_fu_264 <= add_ln178_reg_1761;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_256 <= 2'd0;
    end else if (((icmp_ln178_reg_1757 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_256 <= add_ln179_fu_1399_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_fu_252 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_fu_252 <= grp_fu_1955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln178_reg_1761 <= add_ln178_fu_1145_p2;
        icmp_ln178_reg_1757 <= icmp_ln178_fu_1139_p2;
        icmp_ln178_reg_1757_pp0_iter1_reg <= icmp_ln178_reg_1757;
        icmp_ln178_reg_1757_pp0_iter2_reg <= icmp_ln178_reg_1757_pp0_iter1_reg;
        icmp_ln178_reg_1757_pp0_iter3_reg <= icmp_ln178_reg_1757_pp0_iter2_reg;
        select_ln121_reg_1766 <= select_ln121_fu_1163_p3;
        select_ln178_reg_1772 <= select_ln178_fu_1177_p3;
        trunc_ln179_reg_1778 <= trunc_ln179_fu_1185_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred1002_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd1);
        ap_predicate_pred1012_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd2);
        ap_predicate_pred1022_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd3);
        ap_predicate_pred1032_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd4);
        ap_predicate_pred1042_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd5);
        ap_predicate_pred1052_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd6);
        ap_predicate_pred1062_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd7);
        ap_predicate_pred1072_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd8);
        ap_predicate_pred1082_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd9);
        ap_predicate_pred1092_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd10);
        ap_predicate_pred1102_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd11);
        ap_predicate_pred1112_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd12);
        ap_predicate_pred1122_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd13);
        ap_predicate_pred1132_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd14);
        ap_predicate_pred1142_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd15);
        ap_predicate_pred1152_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd16);
        ap_predicate_pred1162_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd17);
        ap_predicate_pred1172_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd18);
        ap_predicate_pred1182_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd19);
        ap_predicate_pred1192_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd20);
        ap_predicate_pred1202_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd21);
        ap_predicate_pred1212_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd22);
        ap_predicate_pred1222_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd23);
        ap_predicate_pred1232_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd24);
        ap_predicate_pred1242_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd25);
        ap_predicate_pred1252_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd26);
        ap_predicate_pred1262_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd27);
        ap_predicate_pred1272_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd28);
        ap_predicate_pred1282_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd29);
        ap_predicate_pred1292_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd30);
        ap_predicate_pred1302_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd31);
        ap_predicate_pred989_state19 <= (trunc_ln180_reg_1783_pp0_iter2_reg == 5'd0);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul1_reg_2167 <= grp_fu_1959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_reg_2150 <= grp_fu_1959_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub5_reg_2160 <= grp_fu_1955_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_1_reg_2155 <= tmp_1_fu_1545_p67;
        tmp_s_reg_1985 <= tmp_s_fu_1264_p67;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln180_reg_1783 <= trunc_ln180_fu_1214_p1;
        trunc_ln180_reg_1783_pp0_iter1_reg <= trunc_ln180_reg_1783;
        trunc_ln180_reg_1783_pp0_iter2_reg <= trunc_ln180_reg_1783_pp0_iter1_reg;
        weights3_0_addr_reg_1990 <= zext_ln180_reg_1789;
        weights3_0_addr_reg_1990_pp0_iter2_reg <= weights3_0_addr_reg_1990;
        weights3_10_addr_reg_2040 <= zext_ln180_reg_1789;
        weights3_10_addr_reg_2040_pp0_iter2_reg <= weights3_10_addr_reg_2040;
        weights3_11_addr_reg_2045 <= zext_ln180_reg_1789;
        weights3_11_addr_reg_2045_pp0_iter2_reg <= weights3_11_addr_reg_2045;
        weights3_12_addr_reg_2050 <= zext_ln180_reg_1789;
        weights3_12_addr_reg_2050_pp0_iter2_reg <= weights3_12_addr_reg_2050;
        weights3_13_addr_reg_2055 <= zext_ln180_reg_1789;
        weights3_13_addr_reg_2055_pp0_iter2_reg <= weights3_13_addr_reg_2055;
        weights3_14_addr_reg_2060 <= zext_ln180_reg_1789;
        weights3_14_addr_reg_2060_pp0_iter2_reg <= weights3_14_addr_reg_2060;
        weights3_15_addr_reg_2065 <= zext_ln180_reg_1789;
        weights3_15_addr_reg_2065_pp0_iter2_reg <= weights3_15_addr_reg_2065;
        weights3_16_addr_reg_2070 <= zext_ln180_reg_1789;
        weights3_16_addr_reg_2070_pp0_iter2_reg <= weights3_16_addr_reg_2070;
        weights3_17_addr_reg_2075 <= zext_ln180_reg_1789;
        weights3_17_addr_reg_2075_pp0_iter2_reg <= weights3_17_addr_reg_2075;
        weights3_18_addr_reg_2080 <= zext_ln180_reg_1789;
        weights3_18_addr_reg_2080_pp0_iter2_reg <= weights3_18_addr_reg_2080;
        weights3_19_addr_reg_2085 <= zext_ln180_reg_1789;
        weights3_19_addr_reg_2085_pp0_iter2_reg <= weights3_19_addr_reg_2085;
        weights3_1_addr_reg_1995 <= zext_ln180_reg_1789;
        weights3_1_addr_reg_1995_pp0_iter2_reg <= weights3_1_addr_reg_1995;
        weights3_20_addr_reg_2090 <= zext_ln180_reg_1789;
        weights3_20_addr_reg_2090_pp0_iter2_reg <= weights3_20_addr_reg_2090;
        weights3_21_addr_reg_2095 <= zext_ln180_reg_1789;
        weights3_21_addr_reg_2095_pp0_iter2_reg <= weights3_21_addr_reg_2095;
        weights3_22_addr_reg_2100 <= zext_ln180_reg_1789;
        weights3_22_addr_reg_2100_pp0_iter2_reg <= weights3_22_addr_reg_2100;
        weights3_23_addr_reg_2105 <= zext_ln180_reg_1789;
        weights3_23_addr_reg_2105_pp0_iter2_reg <= weights3_23_addr_reg_2105;
        weights3_24_addr_reg_2110 <= zext_ln180_reg_1789;
        weights3_24_addr_reg_2110_pp0_iter2_reg <= weights3_24_addr_reg_2110;
        weights3_25_addr_reg_2115 <= zext_ln180_reg_1789;
        weights3_25_addr_reg_2115_pp0_iter2_reg <= weights3_25_addr_reg_2115;
        weights3_26_addr_reg_2120 <= zext_ln180_reg_1789;
        weights3_26_addr_reg_2120_pp0_iter2_reg <= weights3_26_addr_reg_2120;
        weights3_27_addr_reg_2125 <= zext_ln180_reg_1789;
        weights3_27_addr_reg_2125_pp0_iter2_reg <= weights3_27_addr_reg_2125;
        weights3_28_addr_reg_2130 <= zext_ln180_reg_1789;
        weights3_28_addr_reg_2130_pp0_iter2_reg <= weights3_28_addr_reg_2130;
        weights3_29_addr_reg_2135 <= zext_ln180_reg_1789;
        weights3_29_addr_reg_2135_pp0_iter2_reg <= weights3_29_addr_reg_2135;
        weights3_2_addr_reg_2000 <= zext_ln180_reg_1789;
        weights3_2_addr_reg_2000_pp0_iter2_reg <= weights3_2_addr_reg_2000;
        weights3_30_addr_reg_2140 <= zext_ln180_reg_1789;
        weights3_30_addr_reg_2140_pp0_iter2_reg <= weights3_30_addr_reg_2140;
        weights3_31_addr_reg_2145 <= zext_ln180_reg_1789;
        weights3_31_addr_reg_2145_pp0_iter2_reg <= weights3_31_addr_reg_2145;
        weights3_3_addr_reg_2005 <= zext_ln180_reg_1789;
        weights3_3_addr_reg_2005_pp0_iter2_reg <= weights3_3_addr_reg_2005;
        weights3_4_addr_reg_2010 <= zext_ln180_reg_1789;
        weights3_4_addr_reg_2010_pp0_iter2_reg <= weights3_4_addr_reg_2010;
        weights3_5_addr_reg_2015 <= zext_ln180_reg_1789;
        weights3_5_addr_reg_2015_pp0_iter2_reg <= weights3_5_addr_reg_2015;
        weights3_6_addr_reg_2020 <= zext_ln180_reg_1789;
        weights3_6_addr_reg_2020_pp0_iter2_reg <= weights3_6_addr_reg_2020;
        weights3_7_addr_reg_2025 <= zext_ln180_reg_1789;
        weights3_7_addr_reg_2025_pp0_iter2_reg <= weights3_7_addr_reg_2025;
        weights3_8_addr_reg_2030 <= zext_ln180_reg_1789;
        weights3_8_addr_reg_2030_pp0_iter2_reg <= weights3_8_addr_reg_2030;
        weights3_9_addr_reg_2035 <= zext_ln180_reg_1789;
        weights3_9_addr_reg_2035_pp0_iter2_reg <= weights3_9_addr_reg_2035;
        zext_ln180_reg_1789[2 : 0] <= zext_ln180_fu_1228_p1[2 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln178_reg_1757 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln178_reg_1757_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_260;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten27_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten27_load = indvar_flatten27_fu_264;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 2'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_256;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_sig_allocacmp_norm_load_1 = grp_fu_1955_p_dout0;
    end else begin
        ap_sig_allocacmp_norm_load_1 = norm_fu_252;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_0_ce0_local = 1'b1;
    end else begin
        d_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_10_ce0_local = 1'b1;
    end else begin
        d_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_11_ce0_local = 1'b1;
    end else begin
        d_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_12_ce0_local = 1'b1;
    end else begin
        d_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_13_ce0_local = 1'b1;
    end else begin
        d_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_14_ce0_local = 1'b1;
    end else begin
        d_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_15_ce0_local = 1'b1;
    end else begin
        d_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_16_ce0_local = 1'b1;
    end else begin
        d_weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_17_ce0_local = 1'b1;
    end else begin
        d_weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_18_ce0_local = 1'b1;
    end else begin
        d_weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_19_ce0_local = 1'b1;
    end else begin
        d_weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_1_ce0_local = 1'b1;
    end else begin
        d_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_20_ce0_local = 1'b1;
    end else begin
        d_weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_21_ce0_local = 1'b1;
    end else begin
        d_weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_22_ce0_local = 1'b1;
    end else begin
        d_weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_23_ce0_local = 1'b1;
    end else begin
        d_weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_24_ce0_local = 1'b1;
    end else begin
        d_weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_25_ce0_local = 1'b1;
    end else begin
        d_weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_26_ce0_local = 1'b1;
    end else begin
        d_weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_27_ce0_local = 1'b1;
    end else begin
        d_weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_28_ce0_local = 1'b1;
    end else begin
        d_weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_29_ce0_local = 1'b1;
    end else begin
        d_weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_2_ce0_local = 1'b1;
    end else begin
        d_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_30_ce0_local = 1'b1;
    end else begin
        d_weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_31_ce0_local = 1'b1;
    end else begin
        d_weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_3_ce0_local = 1'b1;
    end else begin
        d_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_4_ce0_local = 1'b1;
    end else begin
        d_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_5_ce0_local = 1'b1;
    end else begin
        d_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_6_ce0_local = 1'b1;
    end else begin
        d_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_7_ce0_local = 1'b1;
    end else begin
        d_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_8_ce0_local = 1'b1;
    end else begin
        d_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights3_9_ce0_local = 1'b1;
    end else begin
        d_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1107_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1107_opcode = 2'd0;
    end else begin
        grp_fu_1107_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1107_p0 = ap_sig_allocacmp_norm_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1107_p0 = tmp_1_reg_2155;
    end else begin
        grp_fu_1107_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1107_p1 = mul1_reg_2167;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1107_p1 = mul_reg_2150;
    end else begin
        grp_fu_1107_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1111_p0 = sub5_reg_2160;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1111_p0 = tmp_s_reg_1985;
    end else begin
        grp_fu_1111_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1111_p1 = sub5_reg_2160;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1111_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1111_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln178_reg_1757_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_7_out_ap_vld = 1'b1;
    end else begin
        norm_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address0_local = weights3_0_addr_reg_1990_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred989_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_10_address0_local = weights3_10_addr_reg_2040_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_10_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_10_ce0_local = 1'b1;
    end else begin
        weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1092_state19 == 1'b1))) begin
        weights3_10_we0_local = 1'b1;
    end else begin
        weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_11_address0_local = weights3_11_addr_reg_2045_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_11_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_11_ce0_local = 1'b1;
    end else begin
        weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1102_state19 == 1'b1))) begin
        weights3_11_we0_local = 1'b1;
    end else begin
        weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_12_address0_local = weights3_12_addr_reg_2050_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_12_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_12_ce0_local = 1'b1;
    end else begin
        weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1112_state19 == 1'b1))) begin
        weights3_12_we0_local = 1'b1;
    end else begin
        weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_13_address0_local = weights3_13_addr_reg_2055_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_13_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_13_ce0_local = 1'b1;
    end else begin
        weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1122_state19 == 1'b1))) begin
        weights3_13_we0_local = 1'b1;
    end else begin
        weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_14_address0_local = weights3_14_addr_reg_2060_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_14_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_14_ce0_local = 1'b1;
    end else begin
        weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1132_state19 == 1'b1))) begin
        weights3_14_we0_local = 1'b1;
    end else begin
        weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_15_address0_local = weights3_15_addr_reg_2065_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_15_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_15_ce0_local = 1'b1;
    end else begin
        weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1142_state19 == 1'b1))) begin
        weights3_15_we0_local = 1'b1;
    end else begin
        weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_16_address0_local = weights3_16_addr_reg_2070_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_16_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_16_ce0_local = 1'b1;
    end else begin
        weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1152_state19 == 1'b1))) begin
        weights3_16_we0_local = 1'b1;
    end else begin
        weights3_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_17_address0_local = weights3_17_addr_reg_2075_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_17_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_17_ce0_local = 1'b1;
    end else begin
        weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1162_state19 == 1'b1))) begin
        weights3_17_we0_local = 1'b1;
    end else begin
        weights3_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_18_address0_local = weights3_18_addr_reg_2080_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_18_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_18_ce0_local = 1'b1;
    end else begin
        weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1172_state19 == 1'b1))) begin
        weights3_18_we0_local = 1'b1;
    end else begin
        weights3_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_19_address0_local = weights3_19_addr_reg_2085_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_19_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_19_ce0_local = 1'b1;
    end else begin
        weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1182_state19 == 1'b1))) begin
        weights3_19_we0_local = 1'b1;
    end else begin
        weights3_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address0_local = weights3_1_addr_reg_1995_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1002_state19 == 1'b1))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_20_address0_local = weights3_20_addr_reg_2090_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_20_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_20_ce0_local = 1'b1;
    end else begin
        weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1192_state19 == 1'b1))) begin
        weights3_20_we0_local = 1'b1;
    end else begin
        weights3_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_21_address0_local = weights3_21_addr_reg_2095_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_21_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_21_ce0_local = 1'b1;
    end else begin
        weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1202_state19 == 1'b1))) begin
        weights3_21_we0_local = 1'b1;
    end else begin
        weights3_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_22_address0_local = weights3_22_addr_reg_2100_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_22_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_22_ce0_local = 1'b1;
    end else begin
        weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1212_state19 == 1'b1))) begin
        weights3_22_we0_local = 1'b1;
    end else begin
        weights3_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_23_address0_local = weights3_23_addr_reg_2105_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_23_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_23_ce0_local = 1'b1;
    end else begin
        weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1222_state19 == 1'b1))) begin
        weights3_23_we0_local = 1'b1;
    end else begin
        weights3_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_24_address0_local = weights3_24_addr_reg_2110_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_24_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_24_ce0_local = 1'b1;
    end else begin
        weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1232_state19 == 1'b1))) begin
        weights3_24_we0_local = 1'b1;
    end else begin
        weights3_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_25_address0_local = weights3_25_addr_reg_2115_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_25_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_25_ce0_local = 1'b1;
    end else begin
        weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1242_state19 == 1'b1))) begin
        weights3_25_we0_local = 1'b1;
    end else begin
        weights3_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_26_address0_local = weights3_26_addr_reg_2120_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_26_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_26_ce0_local = 1'b1;
    end else begin
        weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1252_state19 == 1'b1))) begin
        weights3_26_we0_local = 1'b1;
    end else begin
        weights3_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_27_address0_local = weights3_27_addr_reg_2125_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_27_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_27_ce0_local = 1'b1;
    end else begin
        weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1262_state19 == 1'b1))) begin
        weights3_27_we0_local = 1'b1;
    end else begin
        weights3_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_28_address0_local = weights3_28_addr_reg_2130_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_28_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_28_ce0_local = 1'b1;
    end else begin
        weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1272_state19 == 1'b1))) begin
        weights3_28_we0_local = 1'b1;
    end else begin
        weights3_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_29_address0_local = weights3_29_addr_reg_2135_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_29_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_29_ce0_local = 1'b1;
    end else begin
        weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1282_state19 == 1'b1))) begin
        weights3_29_we0_local = 1'b1;
    end else begin
        weights3_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_2_address0_local = weights3_2_addr_reg_2000_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1012_state19 == 1'b1))) begin
        weights3_2_we0_local = 1'b1;
    end else begin
        weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_30_address0_local = weights3_30_addr_reg_2140_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_30_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_30_ce0_local = 1'b1;
    end else begin
        weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1292_state19 == 1'b1))) begin
        weights3_30_we0_local = 1'b1;
    end else begin
        weights3_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_31_address0_local = weights3_31_addr_reg_2145_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_31_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_31_ce0_local = 1'b1;
    end else begin
        weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1302_state19 == 1'b1))) begin
        weights3_31_we0_local = 1'b1;
    end else begin
        weights3_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_address0_local = weights3_3_addr_reg_2005_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1022_state19 == 1'b1))) begin
        weights3_3_we0_local = 1'b1;
    end else begin
        weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_4_address0_local = weights3_4_addr_reg_2010_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_4_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1032_state19 == 1'b1))) begin
        weights3_4_we0_local = 1'b1;
    end else begin
        weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_5_address0_local = weights3_5_addr_reg_2015_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_5_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1042_state19 == 1'b1))) begin
        weights3_5_we0_local = 1'b1;
    end else begin
        weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_6_address0_local = weights3_6_addr_reg_2020_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_6_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1052_state19 == 1'b1))) begin
        weights3_6_we0_local = 1'b1;
    end else begin
        weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_7_address0_local = weights3_7_addr_reg_2025_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_7_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1062_state19 == 1'b1))) begin
        weights3_7_we0_local = 1'b1;
    end else begin
        weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_8_address0_local = weights3_8_addr_reg_2030_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_8_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_8_ce0_local = 1'b1;
    end else begin
        weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1072_state19 == 1'b1))) begin
        weights3_8_we0_local = 1'b1;
    end else begin
        weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_9_address0_local = weights3_9_addr_reg_2035_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_9_address0_local = zext_ln180_reg_1789;
    end else begin
        weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_9_ce0_local = 1'b1;
    end else begin
        weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1082_state19 == 1'b1))) begin
        weights3_9_we0_local = 1'b1;
    end else begin
        weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
assign add_ln178_1_fu_1171_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln178_fu_1145_p2 = (ap_sig_allocacmp_indvar_flatten27_load + 8'd1);
assign add_ln179_fu_1399_p2 = (select_ln121_reg_1766 + 2'd1);
assign add_ln180_fu_1208_p2 = (zext_ln179_1_fu_1205_p1 + sub_ln179_fu_1199_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln180_32_fu_1680_p1 = sub5_reg_2160;
assign d_weights3_0_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_0_ce0 = d_weights3_0_ce0_local;
assign d_weights3_10_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_10_ce0 = d_weights3_10_ce0_local;
assign d_weights3_11_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_11_ce0 = d_weights3_11_ce0_local;
assign d_weights3_12_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_12_ce0 = d_weights3_12_ce0_local;
assign d_weights3_13_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_13_ce0 = d_weights3_13_ce0_local;
assign d_weights3_14_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_14_ce0 = d_weights3_14_ce0_local;
assign d_weights3_15_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_15_ce0 = d_weights3_15_ce0_local;
assign d_weights3_16_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_16_ce0 = d_weights3_16_ce0_local;
assign d_weights3_17_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_17_ce0 = d_weights3_17_ce0_local;
assign d_weights3_18_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_18_ce0 = d_weights3_18_ce0_local;
assign d_weights3_19_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_19_ce0 = d_weights3_19_ce0_local;
assign d_weights3_1_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_1_ce0 = d_weights3_1_ce0_local;
assign d_weights3_20_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_20_ce0 = d_weights3_20_ce0_local;
assign d_weights3_21_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_21_ce0 = d_weights3_21_ce0_local;
assign d_weights3_22_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_22_ce0 = d_weights3_22_ce0_local;
assign d_weights3_23_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_23_ce0 = d_weights3_23_ce0_local;
assign d_weights3_24_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_24_ce0 = d_weights3_24_ce0_local;
assign d_weights3_25_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_25_ce0 = d_weights3_25_ce0_local;
assign d_weights3_26_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_26_ce0 = d_weights3_26_ce0_local;
assign d_weights3_27_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_27_ce0 = d_weights3_27_ce0_local;
assign d_weights3_28_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_28_ce0 = d_weights3_28_ce0_local;
assign d_weights3_29_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_29_ce0 = d_weights3_29_ce0_local;
assign d_weights3_2_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_2_ce0 = d_weights3_2_ce0_local;
assign d_weights3_30_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_30_ce0 = d_weights3_30_ce0_local;
assign d_weights3_31_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_31_ce0 = d_weights3_31_ce0_local;
assign d_weights3_3_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_3_ce0 = d_weights3_3_ce0_local;
assign d_weights3_4_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_4_ce0 = d_weights3_4_ce0_local;
assign d_weights3_5_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_5_ce0 = d_weights3_5_ce0_local;
assign d_weights3_6_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_6_ce0 = d_weights3_6_ce0_local;
assign d_weights3_7_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_7_ce0 = d_weights3_7_ce0_local;
assign d_weights3_8_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_8_ce0 = d_weights3_8_ce0_local;
assign d_weights3_9_address0 = zext_ln180_fu_1228_p1;
assign d_weights3_9_ce0 = d_weights3_9_ce0_local;
assign grp_fu_1955_p_ce = 1'b1;
assign grp_fu_1955_p_din0 = grp_fu_1107_p0;
assign grp_fu_1955_p_din1 = grp_fu_1107_p1;
assign grp_fu_1955_p_opcode = grp_fu_1107_opcode;
assign grp_fu_1959_p_ce = 1'b1;
assign grp_fu_1959_p_din0 = grp_fu_1111_p0;
assign grp_fu_1959_p_din1 = grp_fu_1111_p1;
assign icmp_ln178_fu_1139_p2 = ((ap_sig_allocacmp_indvar_flatten27_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln179_fu_1157_p2 = ((ap_sig_allocacmp_j_load == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln3_fu_1218_p4 = {{add_ln180_fu_1208_p2[7:5]}};
assign norm_7_out = norm_fu_252;
assign p_shl_fu_1192_p3 = {{trunc_ln179_reg_1778}, {2'd0}};
assign select_ln121_fu_1163_p3 = ((icmp_ln179_fu_1157_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_j_load);
assign select_ln178_fu_1177_p3 = ((icmp_ln179_fu_1157_p2[0:0] == 1'b1) ? add_ln178_1_fu_1171_p2 : ap_sig_allocacmp_i_load);
assign sub_ln179_fu_1199_p2 = (p_shl_fu_1192_p3 - zext_ln179_fu_1189_p1);
assign tmp_1_fu_1545_p10 = weights3_4_q0;
assign tmp_1_fu_1545_p12 = weights3_5_q0;
assign tmp_1_fu_1545_p14 = weights3_6_q0;
assign tmp_1_fu_1545_p16 = weights3_7_q0;
assign tmp_1_fu_1545_p18 = weights3_8_q0;
assign tmp_1_fu_1545_p2 = weights3_0_q0;
assign tmp_1_fu_1545_p20 = weights3_9_q0;
assign tmp_1_fu_1545_p22 = weights3_10_q0;
assign tmp_1_fu_1545_p24 = weights3_11_q0;
assign tmp_1_fu_1545_p26 = weights3_12_q0;
assign tmp_1_fu_1545_p28 = weights3_13_q0;
assign tmp_1_fu_1545_p30 = weights3_14_q0;
assign tmp_1_fu_1545_p32 = weights3_15_q0;
assign tmp_1_fu_1545_p34 = weights3_16_q0;
assign tmp_1_fu_1545_p36 = weights3_17_q0;
assign tmp_1_fu_1545_p38 = weights3_18_q0;
assign tmp_1_fu_1545_p4 = weights3_1_q0;
assign tmp_1_fu_1545_p40 = weights3_19_q0;
assign tmp_1_fu_1545_p42 = weights3_20_q0;
assign tmp_1_fu_1545_p44 = weights3_21_q0;
assign tmp_1_fu_1545_p46 = weights3_22_q0;
assign tmp_1_fu_1545_p48 = weights3_23_q0;
assign tmp_1_fu_1545_p50 = weights3_24_q0;
assign tmp_1_fu_1545_p52 = weights3_25_q0;
assign tmp_1_fu_1545_p54 = weights3_26_q0;
assign tmp_1_fu_1545_p56 = weights3_27_q0;
assign tmp_1_fu_1545_p58 = weights3_28_q0;
assign tmp_1_fu_1545_p6 = weights3_2_q0;
assign tmp_1_fu_1545_p60 = weights3_29_q0;
assign tmp_1_fu_1545_p62 = weights3_30_q0;
assign tmp_1_fu_1545_p64 = weights3_31_q0;
assign tmp_1_fu_1545_p65 = 'bx;
assign tmp_1_fu_1545_p8 = weights3_3_q0;
assign tmp_s_fu_1264_p65 = 'bx;
assign trunc_ln179_fu_1185_p1 = select_ln178_fu_1177_p3[5:0];
assign trunc_ln180_fu_1214_p1 = add_ln180_fu_1208_p2[4:0];
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_10_address0 = weights3_10_address0_local;
assign weights3_10_ce0 = weights3_10_ce0_local;
assign weights3_10_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_10_we0 = weights3_10_we0_local;
assign weights3_11_address0 = weights3_11_address0_local;
assign weights3_11_ce0 = weights3_11_ce0_local;
assign weights3_11_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_11_we0 = weights3_11_we0_local;
assign weights3_12_address0 = weights3_12_address0_local;
assign weights3_12_ce0 = weights3_12_ce0_local;
assign weights3_12_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_12_we0 = weights3_12_we0_local;
assign weights3_13_address0 = weights3_13_address0_local;
assign weights3_13_ce0 = weights3_13_ce0_local;
assign weights3_13_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_13_we0 = weights3_13_we0_local;
assign weights3_14_address0 = weights3_14_address0_local;
assign weights3_14_ce0 = weights3_14_ce0_local;
assign weights3_14_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_14_we0 = weights3_14_we0_local;
assign weights3_15_address0 = weights3_15_address0_local;
assign weights3_15_ce0 = weights3_15_ce0_local;
assign weights3_15_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_15_we0 = weights3_15_we0_local;
assign weights3_16_address0 = weights3_16_address0_local;
assign weights3_16_ce0 = weights3_16_ce0_local;
assign weights3_16_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_16_we0 = weights3_16_we0_local;
assign weights3_17_address0 = weights3_17_address0_local;
assign weights3_17_ce0 = weights3_17_ce0_local;
assign weights3_17_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_17_we0 = weights3_17_we0_local;
assign weights3_18_address0 = weights3_18_address0_local;
assign weights3_18_ce0 = weights3_18_ce0_local;
assign weights3_18_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_18_we0 = weights3_18_we0_local;
assign weights3_19_address0 = weights3_19_address0_local;
assign weights3_19_ce0 = weights3_19_ce0_local;
assign weights3_19_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_19_we0 = weights3_19_we0_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_20_address0 = weights3_20_address0_local;
assign weights3_20_ce0 = weights3_20_ce0_local;
assign weights3_20_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_20_we0 = weights3_20_we0_local;
assign weights3_21_address0 = weights3_21_address0_local;
assign weights3_21_ce0 = weights3_21_ce0_local;
assign weights3_21_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_21_we0 = weights3_21_we0_local;
assign weights3_22_address0 = weights3_22_address0_local;
assign weights3_22_ce0 = weights3_22_ce0_local;
assign weights3_22_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_22_we0 = weights3_22_we0_local;
assign weights3_23_address0 = weights3_23_address0_local;
assign weights3_23_ce0 = weights3_23_ce0_local;
assign weights3_23_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_23_we0 = weights3_23_we0_local;
assign weights3_24_address0 = weights3_24_address0_local;
assign weights3_24_ce0 = weights3_24_ce0_local;
assign weights3_24_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_24_we0 = weights3_24_we0_local;
assign weights3_25_address0 = weights3_25_address0_local;
assign weights3_25_ce0 = weights3_25_ce0_local;
assign weights3_25_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_25_we0 = weights3_25_we0_local;
assign weights3_26_address0 = weights3_26_address0_local;
assign weights3_26_ce0 = weights3_26_ce0_local;
assign weights3_26_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_26_we0 = weights3_26_we0_local;
assign weights3_27_address0 = weights3_27_address0_local;
assign weights3_27_ce0 = weights3_27_ce0_local;
assign weights3_27_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_27_we0 = weights3_27_we0_local;
assign weights3_28_address0 = weights3_28_address0_local;
assign weights3_28_ce0 = weights3_28_ce0_local;
assign weights3_28_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_28_we0 = weights3_28_we0_local;
assign weights3_29_address0 = weights3_29_address0_local;
assign weights3_29_ce0 = weights3_29_ce0_local;
assign weights3_29_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_29_we0 = weights3_29_we0_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_2_we0 = weights3_2_we0_local;
assign weights3_30_address0 = weights3_30_address0_local;
assign weights3_30_ce0 = weights3_30_ce0_local;
assign weights3_30_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_30_we0 = weights3_30_we0_local;
assign weights3_31_address0 = weights3_31_address0_local;
assign weights3_31_ce0 = weights3_31_ce0_local;
assign weights3_31_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_31_we0 = weights3_31_we0_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_3_we0 = weights3_3_we0_local;
assign weights3_4_address0 = weights3_4_address0_local;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_4_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_4_we0 = weights3_4_we0_local;
assign weights3_5_address0 = weights3_5_address0_local;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_5_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_5_we0 = weights3_5_we0_local;
assign weights3_6_address0 = weights3_6_address0_local;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_6_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_6_we0 = weights3_6_we0_local;
assign weights3_7_address0 = weights3_7_address0_local;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_7_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_7_we0 = weights3_7_we0_local;
assign weights3_8_address0 = weights3_8_address0_local;
assign weights3_8_ce0 = weights3_8_ce0_local;
assign weights3_8_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_8_we0 = weights3_8_we0_local;
assign weights3_9_address0 = weights3_9_address0_local;
assign weights3_9_ce0 = weights3_9_ce0_local;
assign weights3_9_d0 = bitcast_ln180_32_fu_1680_p1;
assign weights3_9_we0 = weights3_9_we0_local;
assign zext_ln179_1_fu_1205_p1 = select_ln121_reg_1766;
assign zext_ln179_fu_1189_p1 = select_ln178_reg_1772;
assign zext_ln180_fu_1228_p1 = lshr_ln3_fu_1218_p4;
always @ (posedge ap_clk) begin
    zext_ln180_reg_1789[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule 