
module kernel_syr2k_kernel_syr2k_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v229_0_address0,v229_0_ce0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_q1,v227_0_address0,v227_0_ce0,v227_0_we0,v227_0_d0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_we0,v227_1_d0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_we0,v227_2_d0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_we0,v227_3_d0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_we0,v227_4_d0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_we0,v227_5_d0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_we0,v227_6_d0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_we0,v227_7_d0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,v227_8_address0,v227_8_ce0,v227_8_we0,v227_8_d0,v227_8_q0,v227_8_address1,v227_8_ce1,v227_8_q1,v227_9_address0,v227_9_ce0,v227_9_we0,v227_9_d0,v227_9_address1,v227_9_ce1,v227_9_q1,v227_10_address0,v227_10_ce0,v227_10_we0,v227_10_d0,v227_10_address1,v227_10_ce1,v227_10_q1,v227_11_address0,v227_11_ce0,v227_11_we0,v227_11_d0,v227_11_address1,v227_11_ce1,v227_11_q1,v227_12_address0,v227_12_ce0,v227_12_we0,v227_12_d0,v227_12_q0,v227_12_address1,v227_12_ce1,v227_12_q1,v227_13_address0,v227_13_ce0,v227_13_we0,v227_13_d0,v227_13_q0,v227_13_address1,v227_13_ce1,v227_13_q1,v227_14_address0,v227_14_ce0,v227_14_we0,v227_14_d0,v227_14_q0,v227_14_address1,v227_14_ce1,v227_14_q1,v227_15_address0,v227_15_ce0,v227_15_we0,v227_15_d0,v227_15_q0,v227_15_address1,v227_15_ce1,v227_15_q1,v3,v4,v5);  
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [14:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [14:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [14:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [14:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [14:0] v229_0_address0;
output   v229_0_ce0;
input  [31:0] v229_0_q0;
output  [14:0] v229_0_address1;
output   v229_0_ce1;
input  [31:0] v229_0_q1;
output  [14:0] v229_1_address0;
output   v229_1_ce0;
input  [31:0] v229_1_q0;
output  [14:0] v229_1_address1;
output   v229_1_ce1;
input  [31:0] v229_1_q1;
output  [11:0] v227_0_address0;
output   v227_0_ce0;
output   v227_0_we0;
output  [31:0] v227_0_d0;
input  [31:0] v227_0_q0;
output  [11:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [11:0] v227_1_address0;
output   v227_1_ce0;
output   v227_1_we0;
output  [31:0] v227_1_d0;
input  [31:0] v227_1_q0;
output  [11:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [11:0] v227_2_address0;
output   v227_2_ce0;
output   v227_2_we0;
output  [31:0] v227_2_d0;
input  [31:0] v227_2_q0;
output  [11:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [11:0] v227_3_address0;
output   v227_3_ce0;
output   v227_3_we0;
output  [31:0] v227_3_d0;
input  [31:0] v227_3_q0;
output  [11:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [11:0] v227_4_address0;
output   v227_4_ce0;
output   v227_4_we0;
output  [31:0] v227_4_d0;
input  [31:0] v227_4_q0;
output  [11:0] v227_4_address1;
output   v227_4_ce1;
input  [31:0] v227_4_q1;
output  [11:0] v227_5_address0;
output   v227_5_ce0;
output   v227_5_we0;
output  [31:0] v227_5_d0;
input  [31:0] v227_5_q0;
output  [11:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
output  [11:0] v227_6_address0;
output   v227_6_ce0;
output   v227_6_we0;
output  [31:0] v227_6_d0;
input  [31:0] v227_6_q0;
output  [11:0] v227_6_address1;
output   v227_6_ce1;
input  [31:0] v227_6_q1;
output  [11:0] v227_7_address0;
output   v227_7_ce0;
output   v227_7_we0;
output  [31:0] v227_7_d0;
input  [31:0] v227_7_q0;
output  [11:0] v227_7_address1;
output   v227_7_ce1;
input  [31:0] v227_7_q1;
output  [11:0] v227_8_address0;
output   v227_8_ce0;
output   v227_8_we0;
output  [31:0] v227_8_d0;
input  [31:0] v227_8_q0;
output  [11:0] v227_8_address1;
output   v227_8_ce1;
input  [31:0] v227_8_q1;
output  [11:0] v227_9_address0;
output   v227_9_ce0;
output   v227_9_we0;
output  [31:0] v227_9_d0;
output  [11:0] v227_9_address1;
output   v227_9_ce1;
input  [31:0] v227_9_q1;
output  [11:0] v227_10_address0;
output   v227_10_ce0;
output   v227_10_we0;
output  [31:0] v227_10_d0;
output  [11:0] v227_10_address1;
output   v227_10_ce1;
input  [31:0] v227_10_q1;
output  [11:0] v227_11_address0;
output   v227_11_ce0;
output   v227_11_we0;
output  [31:0] v227_11_d0;
output  [11:0] v227_11_address1;
output   v227_11_ce1;
input  [31:0] v227_11_q1;
output  [11:0] v227_12_address0;
output   v227_12_ce0;
output   v227_12_we0;
output  [31:0] v227_12_d0;
input  [31:0] v227_12_q0;
output  [11:0] v227_12_address1;
output   v227_12_ce1;
input  [31:0] v227_12_q1;
output  [11:0] v227_13_address0;
output   v227_13_ce0;
output   v227_13_we0;
output  [31:0] v227_13_d0;
input  [31:0] v227_13_q0;
output  [11:0] v227_13_address1;
output   v227_13_ce1;
input  [31:0] v227_13_q1;
output  [11:0] v227_14_address0;
output   v227_14_ce0;
output   v227_14_we0;
output  [31:0] v227_14_d0;
input  [31:0] v227_14_q0;
output  [11:0] v227_14_address1;
output   v227_14_ce1;
input  [31:0] v227_14_q1;
output  [11:0] v227_15_address0;
output   v227_15_ce0;
output   v227_15_we0;
output  [31:0] v227_15_d0;
input  [31:0] v227_15_q0;
output  [11:0] v227_15_address1;
output   v227_15_ce1;
input  [31:0] v227_15_q1;
input  [7:0] v3;
input  [31:0] v4;
input  [31:0] v5;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] v227_0_address0;
reg v227_0_ce0;
reg v227_0_we0;
reg[31:0] v227_0_d0;
reg v227_0_ce1;
reg[11:0] v227_1_address0;
reg v227_1_ce0;
reg v227_1_we0;
reg[31:0] v227_1_d0;
reg v227_1_ce1;
reg[11:0] v227_2_address0;
reg v227_2_ce0;
reg v227_2_we0;
reg[31:0] v227_2_d0;
reg v227_2_ce1;
reg[11:0] v227_3_address0;
reg v227_3_ce0;
reg v227_3_we0;
reg[31:0] v227_3_d0;
reg v227_3_ce1;
reg[11:0] v227_4_address0;
reg v227_4_ce0;
reg v227_4_we0;
reg[31:0] v227_4_d0;
reg v227_4_ce1;
reg[11:0] v227_5_address0;
reg v227_5_ce0;
reg v227_5_we0;
reg[31:0] v227_5_d0;
reg v227_5_ce1;
reg[11:0] v227_6_address0;
reg v227_6_ce0;
reg v227_6_we0;
reg[31:0] v227_6_d0;
reg v227_6_ce1;
reg[11:0] v227_7_address0;
reg v227_7_ce0;
reg v227_7_we0;
reg[31:0] v227_7_d0;
reg v227_7_ce1;
reg[11:0] v227_8_address0;
reg v227_8_ce0;
reg v227_8_we0;
reg[31:0] v227_8_d0;
reg v227_8_ce1;
reg[11:0] v227_9_address0;
reg v227_9_ce0;
reg v227_9_we0;
reg[31:0] v227_9_d0;
reg[11:0] v227_9_address1;
reg v227_9_ce1;
reg[11:0] v227_10_address0;
reg v227_10_ce0;
reg v227_10_we0;
reg[31:0] v227_10_d0;
reg[11:0] v227_10_address1;
reg v227_10_ce1;
reg[11:0] v227_11_address0;
reg v227_11_ce0;
reg v227_11_we0;
reg[31:0] v227_11_d0;
reg[11:0] v227_11_address1;
reg v227_11_ce1;
reg[11:0] v227_12_address0;
reg v227_12_ce0;
reg v227_12_we0;
reg[31:0] v227_12_d0;
reg v227_12_ce1;
reg[11:0] v227_13_address0;
reg v227_13_ce0;
reg v227_13_we0;
reg[31:0] v227_13_d0;
reg v227_13_ce1;
reg[11:0] v227_14_address0;
reg v227_14_ce0;
reg v227_14_we0;
reg[31:0] v227_14_d0;
reg v227_14_ce1;
reg[11:0] v227_15_address0;
reg v227_15_ce0;
reg v227_15_we0;
reg[31:0] v227_15_d0;
reg v227_15_ce1;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [0:0] empty_fu_189_p1;
reg   [0:0] empty_reg_242;
wire   [11:0] sub_ln37_fu_205_p2;
reg   [11:0] sub_ln37_reg_247;
reg   [6:0] lshr_ln_reg_253;
wire   [14:0] empty_14_fu_225_p2;
reg   [14:0] empty_14_reg_258;
wire    ap_CS_fsm_state2;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_done;
wire    ap_CS_fsm_state3;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_start;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_idle;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_ready;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_ce1;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_268_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_268_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_268_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_272_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_272_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_272_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_276_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_276_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_276_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_280_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_280_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_280_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_284_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_284_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_284_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_288_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_288_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_288_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_292_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_292_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_292_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_296_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_296_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_296_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_300_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_300_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_300_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_304_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_304_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_304_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_308_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_308_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_308_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_312_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_312_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_312_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_316_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_316_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_316_p_ce;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_start;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_done;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_idle;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_ready;
wire   [14:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_1_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_1_ce0;
wire   [14:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_1_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_1_ce1;
wire   [14:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_1_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_1_ce0;
wire   [14:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_1_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_1_ce1;
wire   [14:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_0_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_0_ce0;
wire   [14:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_0_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_0_ce1;
wire   [14:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_0_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_0_ce0;
wire   [14:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_0_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_0_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_0_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_0_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_0_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_0_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_1_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_1_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_1_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_1_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_2_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_2_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_2_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_2_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_3_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_3_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_3_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_3_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_4_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_4_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_4_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_4_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_5_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_5_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_5_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_5_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_6_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_6_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_6_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_6_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_7_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_7_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_7_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_7_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_8_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_8_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_8_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_8_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_address1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_ce1;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_12_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_12_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_12_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_12_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_13_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_13_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_13_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_13_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_14_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_14_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_14_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_14_d0;
wire   [11:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_15_address0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_15_ce0;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_15_we0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_15_d0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_268_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_268_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_268_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_272_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_272_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_272_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_276_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_276_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_276_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_280_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_280_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_280_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_284_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_284_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_284_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_288_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_288_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_288_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_292_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_292_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_292_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_296_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_296_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_296_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_300_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_300_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_300_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_304_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_304_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_304_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_308_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_308_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_308_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_312_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_312_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_312_p_ce;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_316_p_din0;
wire   [31:0] grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_316_p_din1;
wire    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_316_p_ce;
reg    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_start_reg;
reg    ap_block_state1_ignore_call47;
reg    grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_start_reg;
wire    ap_CS_fsm_state4;
wire   [11:0] p_shl_fu_197_p3;
wire   [11:0] zext_ln37_fu_193_p1;
wire   [6:0] empty_14_fu_225_p0;
wire   [8:0] empty_14_fu_225_p1;
wire   [31:0] grp_fu_268_p2;
reg   [31:0] grp_fu_268_p0;
reg   [31:0] grp_fu_268_p1;
reg    grp_fu_268_ce;
wire   [31:0] grp_fu_272_p2;
reg   [31:0] grp_fu_272_p0;
reg   [31:0] grp_fu_272_p1;
reg    grp_fu_272_ce;
wire   [31:0] grp_fu_276_p2;
reg   [31:0] grp_fu_276_p0;
reg   [31:0] grp_fu_276_p1;
reg    grp_fu_276_ce;
wire   [31:0] grp_fu_280_p2;
reg   [31:0] grp_fu_280_p0;
reg   [31:0] grp_fu_280_p1;
reg    grp_fu_280_ce;
wire   [31:0] grp_fu_284_p2;
reg   [31:0] grp_fu_284_p0;
reg   [31:0] grp_fu_284_p1;
reg    grp_fu_284_ce;
wire   [31:0] grp_fu_288_p2;
reg   [31:0] grp_fu_288_p0;
reg   [31:0] grp_fu_288_p1;
reg    grp_fu_288_ce;
wire   [31:0] grp_fu_292_p2;
reg   [31:0] grp_fu_292_p0;
reg   [31:0] grp_fu_292_p1;
reg    grp_fu_292_ce;
wire   [31:0] grp_fu_296_p2;
reg   [31:0] grp_fu_296_p0;
reg   [31:0] grp_fu_296_p1;
reg    grp_fu_296_ce;
wire   [31:0] grp_fu_300_p2;
reg   [31:0] grp_fu_300_p0;
reg   [31:0] grp_fu_300_p1;
reg    grp_fu_300_ce;
wire   [31:0] grp_fu_304_p2;
reg   [31:0] grp_fu_304_p0;
reg   [31:0] grp_fu_304_p1;
reg    grp_fu_304_ce;
wire   [31:0] grp_fu_308_p2;
reg   [31:0] grp_fu_308_p0;
reg   [31:0] grp_fu_308_p1;
reg    grp_fu_308_ce;
wire   [31:0] grp_fu_312_p2;
reg   [31:0] grp_fu_312_p0;
reg   [31:0] grp_fu_312_p1;
reg    grp_fu_312_ce;
wire   [31:0] grp_fu_316_p2;
reg   [31:0] grp_fu_316_p0;
reg   [31:0] grp_fu_316_p1;
reg    grp_fu_316_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire   [14:0] empty_14_fu_225_p00;
wire    ap_ce_reg;
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_start_reg = 1'b0;
#0 grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_start_reg = 1'b0;
end
kernel_syr2k_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1 grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_start),.ap_done(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_done),.ap_idle(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_idle),.ap_ready(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_ready),.v4(v4),.v227_15_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_address0),.v227_15_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_ce0),.v227_15_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_we0),.v227_15_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_d0),.v227_15_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_address1),.v227_15_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_ce1),.v227_15_q1(v227_15_q1),.v227_14_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_address0),.v227_14_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_ce0),.v227_14_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_we0),.v227_14_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_d0),.v227_14_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_address1),.v227_14_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_ce1),.v227_14_q1(v227_14_q1),.v227_13_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_address0),.v227_13_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_ce0),.v227_13_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_we0),.v227_13_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_d0),.v227_13_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_address1),.v227_13_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_ce1),.v227_13_q1(v227_13_q1),.v227_12_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_address0),.v227_12_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_ce0),.v227_12_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_we0),.v227_12_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_d0),.v227_12_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_address1),.v227_12_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_ce1),.v227_12_q1(v227_12_q1),.v227_11_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_address0),.v227_11_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_ce0),.v227_11_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_we0),.v227_11_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_d0),.v227_11_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_address1),.v227_11_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_ce1),.v227_11_q1(v227_11_q1),.v227_10_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_address0),.v227_10_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_ce0),.v227_10_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_we0),.v227_10_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_d0),.v227_10_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_address1),.v227_10_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_ce1),.v227_10_q1(v227_10_q1),.v227_9_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_address0),.v227_9_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_ce0),.v227_9_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_we0),.v227_9_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_d0),.v227_9_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_address1),.v227_9_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_ce1),.v227_9_q1(v227_9_q1),.v227_8_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_address0),.v227_8_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_ce0),.v227_8_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_we0),.v227_8_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_d0),.v227_8_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_address1),.v227_8_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_ce1),.v227_8_q1(v227_8_q1),.v227_7_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_address0),.v227_7_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_ce0),.v227_7_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_we0),.v227_7_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_d0),.v227_7_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_address1),.v227_7_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_ce1),.v227_7_q1(v227_7_q1),.v227_6_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_address0),.v227_6_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_ce0),.v227_6_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_we0),.v227_6_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_d0),.v227_6_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_address1),.v227_6_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_ce1),.v227_6_q1(v227_6_q1),.v227_5_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_address0),.v227_5_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_ce0),.v227_5_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_we0),.v227_5_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_d0),.v227_5_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_address1),.v227_5_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_ce1),.v227_5_q1(v227_5_q1),.v227_4_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_address0),.v227_4_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_ce0),.v227_4_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_we0),.v227_4_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_d0),.v227_4_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_address1),.v227_4_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_ce1),.v227_4_q1(v227_4_q1),.v227_3_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_address0),.v227_3_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_ce0),.v227_3_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_we0),.v227_3_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_d0),.v227_3_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_address1),.v227_3_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_ce1),.v227_3_q1(v227_3_q1),.v227_2_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_address0),.v227_2_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_ce0),.v227_2_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_we0),.v227_2_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_d0),.v227_2_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_address1),.v227_2_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_1_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_address0),.v227_1_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_ce0),.v227_1_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_we0),.v227_1_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_d0),.v227_1_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_address1),.v227_1_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_0_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_address0),.v227_0_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_ce0),.v227_0_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_we0),.v227_0_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_d0),.v227_0_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_address1),.v227_0_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_ce1),.v227_0_q1(v227_0_q1),.mul_ln37(sub_ln37_reg_247),.v3_cast1(v3),.grp_fu_268_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_268_p_din0),.grp_fu_268_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_268_p_din1),.grp_fu_268_p_dout0(grp_fu_268_p2),.grp_fu_268_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_268_p_ce),.grp_fu_272_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_272_p_din0),.grp_fu_272_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_272_p_din1),.grp_fu_272_p_dout0(grp_fu_272_p2),.grp_fu_272_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_272_p_ce),.grp_fu_276_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_276_p_din0),.grp_fu_276_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_276_p_din1),.grp_fu_276_p_dout0(grp_fu_276_p2),.grp_fu_276_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_276_p_ce),.grp_fu_280_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_280_p_din0),.grp_fu_280_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_280_p_din1),.grp_fu_280_p_dout0(grp_fu_280_p2),.grp_fu_280_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_280_p_ce),.grp_fu_284_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_284_p_din0),.grp_fu_284_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_284_p_din1),.grp_fu_284_p_dout0(grp_fu_284_p2),.grp_fu_284_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_284_p_ce),.grp_fu_288_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_288_p_din0),.grp_fu_288_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_288_p_din1),.grp_fu_288_p_dout0(grp_fu_288_p2),.grp_fu_288_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_288_p_ce),.grp_fu_292_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_292_p_din0),.grp_fu_292_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_292_p_din1),.grp_fu_292_p_dout0(grp_fu_292_p2),.grp_fu_292_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_292_p_ce),.grp_fu_296_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_296_p_din0),.grp_fu_296_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_296_p_din1),.grp_fu_296_p_dout0(grp_fu_296_p2),.grp_fu_296_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_296_p_ce),.grp_fu_300_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_300_p_din0),.grp_fu_300_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_300_p_din1),.grp_fu_300_p_dout0(grp_fu_300_p2),.grp_fu_300_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_300_p_ce),.grp_fu_304_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_304_p_din0),.grp_fu_304_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_304_p_din1),.grp_fu_304_p_dout0(grp_fu_304_p2),.grp_fu_304_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_304_p_ce),.grp_fu_308_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_308_p_din0),.grp_fu_308_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_308_p_din1),.grp_fu_308_p_dout0(grp_fu_308_p2),.grp_fu_308_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_308_p_ce),.grp_fu_312_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_312_p_din1),.grp_fu_312_p_dout0(grp_fu_312_p2),.grp_fu_312_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_312_p_ce),.grp_fu_316_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_316_p_din1),.grp_fu_316_p_dout0(grp_fu_316_p2),.grp_fu_316_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_316_p_ce));
kernel_syr2k_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3 grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_start),.ap_done(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_done),.ap_idle(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_idle),.ap_ready(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_ready),.v228_1_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_1_address0),.v228_1_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_1_address1),.v228_1_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_1_ce1),.v228_1_q1(v228_1_q1),.v229_1_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_1_address0),.v229_1_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_1_ce0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_1_address1),.v229_1_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_1_ce1),.v229_1_q1(v229_1_q1),.v5(v5),.empty_12(empty_reg_242),.v228_0_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_0_address0),.v228_0_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_0_address1),.v228_0_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_0_ce1),.v228_0_q1(v228_0_q1),.v229_0_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_0_address0),.v229_0_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_0_ce0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_0_address1),.v229_0_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_0_ce1),.v229_0_q1(v229_0_q1),.empty(empty_14_reg_258),.mul_ln37(sub_ln37_reg_247),.v227_0_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_0_address0),.v227_0_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_0_ce0),.v227_0_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_0_we0),.v227_0_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_0_d0),.v227_0_q0(v227_0_q0),.v227_1_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_1_address0),.v227_1_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_1_ce0),.v227_1_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_1_we0),.v227_1_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_1_d0),.v227_1_q0(v227_1_q0),.v227_2_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_2_address0),.v227_2_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_2_ce0),.v227_2_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_2_we0),.v227_2_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_2_d0),.v227_2_q0(v227_2_q0),.v227_3_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_3_address0),.v227_3_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_3_ce0),.v227_3_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_3_we0),.v227_3_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_3_d0),.v227_3_q0(v227_3_q0),.v227_4_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_4_address0),.v227_4_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_4_ce0),.v227_4_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_4_we0),.v227_4_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_4_d0),.v227_4_q0(v227_4_q0),.v227_5_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_5_address0),.v227_5_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_5_ce0),.v227_5_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_5_we0),.v227_5_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_5_d0),.v227_5_q0(v227_5_q0),.v227_6_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_6_address0),.v227_6_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_6_ce0),.v227_6_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_6_we0),.v227_6_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_6_d0),.v227_6_q0(v227_6_q0),.v227_7_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_7_address0),.v227_7_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_7_ce0),.v227_7_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_7_we0),.v227_7_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_7_d0),.v227_7_q0(v227_7_q0),.v227_8_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_8_address0),.v227_8_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_8_ce0),.v227_8_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_8_we0),.v227_8_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_8_d0),.v227_8_q0(v227_8_q0),.v227_9_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_address0),.v227_9_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_ce0),.v227_9_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_we0),.v227_9_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_d0),.v227_9_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_address1),.v227_9_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_ce1),.v227_9_q1(v227_9_q1),.v227_10_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_address0),.v227_10_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_ce0),.v227_10_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_we0),.v227_10_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_d0),.v227_10_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_address1),.v227_10_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_ce1),.v227_10_q1(v227_10_q1),.v227_11_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_address0),.v227_11_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_ce0),.v227_11_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_we0),.v227_11_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_d0),.v227_11_address1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_address1),.v227_11_ce1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_ce1),.v227_11_q1(v227_11_q1),.v227_12_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_12_address0),.v227_12_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_12_ce0),.v227_12_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_12_we0),.v227_12_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_12_d0),.v227_12_q0(v227_12_q0),.v227_13_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_13_address0),.v227_13_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_13_ce0),.v227_13_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_13_we0),.v227_13_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_13_d0),.v227_13_q0(v227_13_q0),.v227_14_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_14_address0),.v227_14_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_14_ce0),.v227_14_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_14_we0),.v227_14_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_14_d0),.v227_14_q0(v227_14_q0),.v227_15_address0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_15_address0),.v227_15_ce0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_15_ce0),.v227_15_we0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_15_we0),.v227_15_d0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_15_d0),.v227_15_q0(v227_15_q0),.v3_cast1(v3),.grp_fu_268_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_268_p_din0),.grp_fu_268_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_268_p_din1),.grp_fu_268_p_dout0(grp_fu_268_p2),.grp_fu_268_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_268_p_ce),.grp_fu_272_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_272_p_din0),.grp_fu_272_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_272_p_din1),.grp_fu_272_p_dout0(grp_fu_272_p2),.grp_fu_272_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_272_p_ce),.grp_fu_276_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_276_p_din0),.grp_fu_276_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_276_p_din1),.grp_fu_276_p_dout0(grp_fu_276_p2),.grp_fu_276_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_276_p_ce),.grp_fu_280_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_280_p_din0),.grp_fu_280_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_280_p_din1),.grp_fu_280_p_dout0(grp_fu_280_p2),.grp_fu_280_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_280_p_ce),.grp_fu_284_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_284_p_din0),.grp_fu_284_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_284_p_din1),.grp_fu_284_p_dout0(grp_fu_284_p2),.grp_fu_284_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_284_p_ce),.grp_fu_288_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_288_p_din0),.grp_fu_288_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_288_p_din1),.grp_fu_288_p_dout0(grp_fu_288_p2),.grp_fu_288_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_288_p_ce),.grp_fu_292_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_292_p_din0),.grp_fu_292_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_292_p_din1),.grp_fu_292_p_dout0(grp_fu_292_p2),.grp_fu_292_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_292_p_ce),.grp_fu_296_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_296_p_din0),.grp_fu_296_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_296_p_din1),.grp_fu_296_p_dout0(grp_fu_296_p2),.grp_fu_296_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_296_p_ce),.grp_fu_300_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_300_p_din0),.grp_fu_300_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_300_p_din1),.grp_fu_300_p_dout0(grp_fu_300_p2),.grp_fu_300_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_300_p_ce),.grp_fu_304_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_304_p_din0),.grp_fu_304_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_304_p_din1),.grp_fu_304_p_dout0(grp_fu_304_p2),.grp_fu_304_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_304_p_ce),.grp_fu_308_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_308_p_din0),.grp_fu_308_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_308_p_din1),.grp_fu_308_p_dout0(grp_fu_308_p2),.grp_fu_308_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_308_p_ce),.grp_fu_312_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_312_p_din1),.grp_fu_312_p_dout0(grp_fu_312_p2),.grp_fu_312_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_312_p_ce),.grp_fu_316_p_din0(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_316_p_din1),.grp_fu_316_p_dout0(grp_fu_316_p2),.grp_fu_316_p_ce(grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_316_p_ce));
kernel_syr2k_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U99(.din0(empty_14_fu_225_p0),.din1(empty_14_fu_225_p1),.dout(empty_14_fu_225_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_268_p0),.din1(grp_fu_268_p1),.ce(grp_fu_268_ce),.dout(grp_fu_268_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_272_p0),.din1(grp_fu_272_p1),.ce(grp_fu_272_ce),.dout(grp_fu_272_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U102(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_276_p0),.din1(grp_fu_276_p1),.ce(grp_fu_276_ce),.dout(grp_fu_276_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U103(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_280_p0),.din1(grp_fu_280_p1),.ce(grp_fu_280_ce),.dout(grp_fu_280_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_284_p0),.din1(grp_fu_284_p1),.ce(grp_fu_284_ce),.dout(grp_fu_284_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_288_p0),.din1(grp_fu_288_p1),.ce(grp_fu_288_ce),.dout(grp_fu_288_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U106(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_292_p0),.din1(grp_fu_292_p1),.ce(grp_fu_292_ce),.dout(grp_fu_292_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U107(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_296_p0),.din1(grp_fu_296_p1),.ce(grp_fu_296_ce),.dout(grp_fu_296_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U108(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_300_p0),.din1(grp_fu_300_p1),.ce(grp_fu_300_ce),.dout(grp_fu_300_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U109(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_304_p0),.din1(grp_fu_304_p1),.ce(grp_fu_304_ce),.dout(grp_fu_304_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U110(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_308_p0),.din1(grp_fu_308_p1),.ce(grp_fu_308_ce),.dout(grp_fu_308_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U111(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_312_p0),.din1(grp_fu_312_p1),.ce(grp_fu_312_ce),.dout(grp_fu_312_p2));
kernel_syr2k_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U112(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_316_p0),.din1(grp_fu_316_p1),.ce(grp_fu_316_ce),.dout(grp_fu_316_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_ready == 1'b1)) begin
            grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state1_ignore_call47) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_ready == 1'b1)) begin
            grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        empty_14_reg_258 <= empty_14_fu_225_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_242 <= empty_fu_189_p1;
        lshr_ln_reg_253 <= {{v3[7:1]}};
        sub_ln37_reg_247 <= sub_ln37_fu_205_p2;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_268_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_268_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_268_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_268_p_ce;
    end else begin
        grp_fu_268_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_268_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_268_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_268_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_268_p_din0;
    end else begin
        grp_fu_268_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_268_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_268_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_268_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_268_p_din1;
    end else begin
        grp_fu_268_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_272_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_272_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_272_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_272_p_ce;
    end else begin
        grp_fu_272_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_272_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_272_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_272_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_272_p_din0;
    end else begin
        grp_fu_272_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_272_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_272_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_272_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_272_p_din1;
    end else begin
        grp_fu_272_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_276_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_276_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_276_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_276_p_ce;
    end else begin
        grp_fu_276_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_276_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_276_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_276_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_276_p_din0;
    end else begin
        grp_fu_276_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_276_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_276_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_276_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_276_p_din1;
    end else begin
        grp_fu_276_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_280_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_280_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_280_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_280_p_ce;
    end else begin
        grp_fu_280_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_280_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_280_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_280_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_280_p_din0;
    end else begin
        grp_fu_280_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_280_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_280_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_280_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_280_p_din1;
    end else begin
        grp_fu_280_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_284_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_284_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_284_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_284_p_ce;
    end else begin
        grp_fu_284_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_284_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_284_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_284_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_284_p_din0;
    end else begin
        grp_fu_284_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_284_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_284_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_284_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_284_p_din1;
    end else begin
        grp_fu_284_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_288_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_288_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_288_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_288_p_ce;
    end else begin
        grp_fu_288_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_288_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_288_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_288_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_288_p_din0;
    end else begin
        grp_fu_288_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_288_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_288_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_288_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_288_p_din1;
    end else begin
        grp_fu_288_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_292_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_292_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_292_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_292_p_ce;
    end else begin
        grp_fu_292_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_292_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_292_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_292_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_292_p_din0;
    end else begin
        grp_fu_292_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_292_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_292_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_292_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_292_p_din1;
    end else begin
        grp_fu_292_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_296_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_296_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_296_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_296_p_ce;
    end else begin
        grp_fu_296_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_296_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_296_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_296_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_296_p_din0;
    end else begin
        grp_fu_296_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_296_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_296_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_296_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_296_p_din1;
    end else begin
        grp_fu_296_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_300_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_300_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_300_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_300_p_ce;
    end else begin
        grp_fu_300_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_300_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_300_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_300_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_300_p_din0;
    end else begin
        grp_fu_300_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_300_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_300_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_300_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_300_p_din1;
    end else begin
        grp_fu_300_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_304_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_304_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_304_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_304_p_ce;
    end else begin
        grp_fu_304_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_304_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_304_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_304_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_304_p_din0;
    end else begin
        grp_fu_304_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_304_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_304_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_304_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_304_p_din1;
    end else begin
        grp_fu_304_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_308_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_308_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_308_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_308_p_ce;
    end else begin
        grp_fu_308_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_308_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_308_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_308_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_308_p_din0;
    end else begin
        grp_fu_308_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_308_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_308_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_308_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_308_p_din1;
    end else begin
        grp_fu_308_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_312_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_312_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_312_p_ce;
    end else begin
        grp_fu_312_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_312_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_312_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_312_p_din0;
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_312_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_312_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_312_p_din1;
    end else begin
        grp_fu_312_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_316_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_316_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_316_ce = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_316_p_ce;
    end else begin
        grp_fu_316_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_316_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_316_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_316_p0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_316_p_din0;
    end else begin
        grp_fu_316_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_316_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_grp_fu_316_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_316_p1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_grp_fu_316_p_din1;
    end else begin
        grp_fu_316_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_0_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_0_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_address0;
    end else begin
        v227_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_0_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_0_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_ce0;
    end else begin
        v227_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_0_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_ce1;
    end else begin
        v227_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_0_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_0_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_d0;
    end else begin
        v227_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_0_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_0_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_we0;
    end else begin
        v227_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_10_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_10_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_address0;
    end else begin
        v227_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_10_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_10_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_address1;
    end else begin
        v227_10_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_10_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_10_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_ce0;
    end else begin
        v227_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_10_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_10_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_ce1;
    end else begin
        v227_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_10_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_10_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_d0;
    end else begin
        v227_10_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_10_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_10_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_10_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_10_we0;
    end else begin
        v227_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_11_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_11_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_address0;
    end else begin
        v227_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_11_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_11_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_address1;
    end else begin
        v227_11_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_11_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_11_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_ce0;
    end else begin
        v227_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_11_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_11_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_ce1;
    end else begin
        v227_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_11_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_11_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_d0;
    end else begin
        v227_11_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_11_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_11_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_11_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_11_we0;
    end else begin
        v227_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_12_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_12_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_address0;
    end else begin
        v227_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_12_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_12_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_ce0;
    end else begin
        v227_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_12_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_ce1;
    end else begin
        v227_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_12_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_12_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_12_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_d0;
    end else begin
        v227_12_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_12_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_12_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_12_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_we0;
    end else begin
        v227_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_13_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_13_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_address0;
    end else begin
        v227_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_13_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_13_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_ce0;
    end else begin
        v227_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_13_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_ce1;
    end else begin
        v227_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_13_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_13_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_13_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_d0;
    end else begin
        v227_13_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_13_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_13_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_13_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_we0;
    end else begin
        v227_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_14_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_14_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_address0;
    end else begin
        v227_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_14_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_14_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_ce0;
    end else begin
        v227_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_14_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_ce1;
    end else begin
        v227_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_14_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_14_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_14_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_d0;
    end else begin
        v227_14_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_14_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_14_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_14_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_we0;
    end else begin
        v227_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_15_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_15_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_address0;
    end else begin
        v227_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_15_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_15_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_ce0;
    end else begin
        v227_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_15_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_ce1;
    end else begin
        v227_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_15_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_15_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_15_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_d0;
    end else begin
        v227_15_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_15_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_15_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_15_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_we0;
    end else begin
        v227_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_1_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_1_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_address0;
    end else begin
        v227_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_1_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_1_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_ce0;
    end else begin
        v227_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_1_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_ce1;
    end else begin
        v227_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_1_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_1_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_d0;
    end else begin
        v227_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_1_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_1_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_we0;
    end else begin
        v227_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_2_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_2_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_address0;
    end else begin
        v227_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_2_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_2_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_ce0;
    end else begin
        v227_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_2_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_ce1;
    end else begin
        v227_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_2_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_2_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_d0;
    end else begin
        v227_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_2_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_2_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_we0;
    end else begin
        v227_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_3_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_3_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_address0;
    end else begin
        v227_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_3_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_3_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_ce0;
    end else begin
        v227_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_3_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_ce1;
    end else begin
        v227_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_3_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_3_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_d0;
    end else begin
        v227_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_3_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_3_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_we0;
    end else begin
        v227_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_4_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_4_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_address0;
    end else begin
        v227_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_4_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_4_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_ce0;
    end else begin
        v227_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_4_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_ce1;
    end else begin
        v227_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_4_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_4_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_d0;
    end else begin
        v227_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_4_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_4_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_we0;
    end else begin
        v227_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_5_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_5_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_address0;
    end else begin
        v227_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_5_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_5_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_ce0;
    end else begin
        v227_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_5_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_ce1;
    end else begin
        v227_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_5_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_5_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_d0;
    end else begin
        v227_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_5_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_5_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_we0;
    end else begin
        v227_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_6_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_6_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_address0;
    end else begin
        v227_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_6_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_6_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_ce0;
    end else begin
        v227_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_6_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_ce1;
    end else begin
        v227_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_6_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_6_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_d0;
    end else begin
        v227_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_6_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_6_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_we0;
    end else begin
        v227_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_7_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_7_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_address0;
    end else begin
        v227_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_7_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_7_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_ce0;
    end else begin
        v227_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_7_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_ce1;
    end else begin
        v227_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_7_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_7_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_d0;
    end else begin
        v227_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_7_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_7_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_we0;
    end else begin
        v227_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_8_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_8_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_address0;
    end else begin
        v227_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_8_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_8_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_ce0;
    end else begin
        v227_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_8_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_ce1;
    end else begin
        v227_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_8_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_8_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_8_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_d0;
    end else begin
        v227_8_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_8_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_8_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_8_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_we0;
    end else begin
        v227_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_9_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_9_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_address0;
    end else begin
        v227_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_9_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_9_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_address1;
    end else begin
        v227_9_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_9_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_9_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_ce0;
    end else begin
        v227_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_9_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_9_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_ce1;
    end else begin
        v227_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_9_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_9_d0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_d0;
    end else begin
        v227_9_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_9_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v227_9_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v227_9_we0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_9_we0;
    end else begin
        v227_9_we0 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state1_ignore_call47 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end
assign empty_14_fu_225_p0 = empty_14_fu_225_p00;
assign empty_14_fu_225_p00 = lshr_ln_reg_253;
assign empty_14_fu_225_p1 = 15'd200;
assign empty_fu_189_p1 = v3[0:0];
assign grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_start = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_ap_start_reg;
assign grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_start = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_ap_start_reg;
assign p_shl_fu_197_p3 = {{v3}, {4'd0}};
assign sub_ln37_fu_205_p2 = (p_shl_fu_197_p3 - zext_ln37_fu_193_p1);
assign v227_0_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_0_address1;
assign v227_12_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_12_address1;
assign v227_13_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_13_address1;
assign v227_14_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_14_address1;
assign v227_15_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_15_address1;
assign v227_1_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_1_address1;
assign v227_2_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_2_address1;
assign v227_3_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_3_address1;
assign v227_4_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_4_address1;
assign v227_5_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_5_address1;
assign v227_6_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_6_address1;
assign v227_7_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_7_address1;
assign v227_8_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_34_1_fu_98_v227_8_address1;
assign v228_0_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_0_address0;
assign v228_0_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_0_address1;
assign v228_0_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_0_ce1;
assign v228_1_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_1_address0;
assign v228_1_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_1_address1;
assign v228_1_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v228_1_ce1;
assign v229_0_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_0_address0;
assign v229_0_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_0_address1;
assign v229_0_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_0_ce0;
assign v229_0_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_0_ce1;
assign v229_1_address0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_1_address0;
assign v229_1_address1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_1_address1;
assign v229_1_ce0 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_1_ce0;
assign v229_1_ce1 = grp_kernel_syr2k_node1_Pipeline_VITIS_LOOP_117_2_VITIS_LOOP_118_3_fu_139_v229_1_ce1;
assign zext_ln37_fu_193_p1 = v3;
endmodule 
