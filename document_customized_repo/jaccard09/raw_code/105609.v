module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_address0,A_ce0,A_q0,p_address0,p_ce0,p_q0,r_address0,r_ce0,r_q0,s_out_din,s_out_full_n,s_out_write,q_out_din,q_out_full_n,q_out_write); 
parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [5:0] p_address0;
output   p_ce0;
input  [31:0] p_q0;
output  [5:0] r_address0;
output   r_ce0;
input  [31:0] r_q0;
output  [31:0] s_out_din;
input   s_out_full_n;
output   s_out_write;
output  [31:0] q_out_din;
input   q_out_full_n;
output   q_out_write;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg s_out_write;
reg q_out_write;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [5:0] buff_A_address0;
reg    buff_A_ce0;
reg    buff_A_we0;
wire   [31:0] buff_A_q0;
reg   [5:0] buff_A_1_address0;
reg    buff_A_1_ce0;
reg    buff_A_1_we0;
wire   [31:0] buff_A_1_q0;
reg   [5:0] buff_A_2_address0;
reg    buff_A_2_ce0;
reg    buff_A_2_we0;
wire   [31:0] buff_A_2_q0;
reg   [5:0] buff_A_3_address0;
reg    buff_A_3_ce0;
reg    buff_A_3_we0;
wire   [31:0] buff_A_3_q0;
reg   [5:0] buff_A_4_address0;
reg    buff_A_4_ce0;
reg    buff_A_4_we0;
wire   [31:0] buff_A_4_q0;
reg   [5:0] buff_A_5_address0;
reg    buff_A_5_ce0;
reg    buff_A_5_we0;
wire   [31:0] buff_A_5_q0;
reg   [5:0] buff_A_6_address0;
reg    buff_A_6_ce0;
reg    buff_A_6_we0;
wire   [31:0] buff_A_6_q0;
reg   [5:0] buff_A_7_address0;
reg    buff_A_7_ce0;
reg    buff_A_7_we0;
wire   [31:0] buff_A_7_q0;
reg   [5:0] buff_A_8_address0;
reg    buff_A_8_ce0;
reg    buff_A_8_we0;
wire   [31:0] buff_A_8_q0;
reg   [5:0] buff_A_9_address0;
reg    buff_A_9_ce0;
reg    buff_A_9_we0;
wire   [31:0] buff_A_9_q0;
reg   [5:0] buff_A_10_address0;
reg    buff_A_10_ce0;
reg    buff_A_10_we0;
wire   [31:0] buff_A_10_q0;
reg   [5:0] buff_A_11_address0;
reg    buff_A_11_ce0;
reg    buff_A_11_we0;
wire   [31:0] buff_A_11_q0;
reg   [5:0] buff_A_12_address0;
reg    buff_A_12_ce0;
reg    buff_A_12_we0;
wire   [31:0] buff_A_12_q0;
reg   [5:0] buff_A_13_address0;
reg    buff_A_13_ce0;
reg    buff_A_13_we0;
wire   [31:0] buff_A_13_q0;
reg   [5:0] buff_A_14_address0;
reg    buff_A_14_ce0;
reg    buff_A_14_we0;
wire   [31:0] buff_A_14_q0;
reg   [5:0] buff_A_15_address0;
reg    buff_A_15_ce0;
reg    buff_A_15_we0;
wire   [31:0] buff_A_15_q0;
reg   [5:0] buff_A_16_address0;
reg    buff_A_16_ce0;
reg    buff_A_16_we0;
wire   [31:0] buff_A_16_q0;
reg   [5:0] buff_A_17_address0;
reg    buff_A_17_ce0;
reg    buff_A_17_we0;
wire   [31:0] buff_A_17_q0;
reg   [5:0] buff_A_18_address0;
reg    buff_A_18_ce0;
reg    buff_A_18_we0;
wire   [31:0] buff_A_18_q0;
reg   [5:0] buff_A_19_address0;
reg    buff_A_19_ce0;
reg    buff_A_19_we0;
wire   [31:0] buff_A_19_q0;
reg   [5:0] buff_A_20_address0;
reg    buff_A_20_ce0;
reg    buff_A_20_we0;
wire   [31:0] buff_A_20_q0;
reg   [5:0] buff_A_21_address0;
reg    buff_A_21_ce0;
reg    buff_A_21_we0;
wire   [31:0] buff_A_21_q0;
reg   [5:0] buff_A_22_address0;
reg    buff_A_22_ce0;
reg    buff_A_22_we0;
wire   [31:0] buff_A_22_q0;
reg   [5:0] buff_A_23_address0;
reg    buff_A_23_ce0;
reg    buff_A_23_we0;
wire   [31:0] buff_A_23_q0;
reg   [5:0] buff_A_24_address0;
reg    buff_A_24_ce0;
reg    buff_A_24_we0;
wire   [31:0] buff_A_24_q0;
reg   [5:0] buff_A_25_address0;
reg    buff_A_25_ce0;
reg    buff_A_25_we0;
wire   [31:0] buff_A_25_q0;
reg   [5:0] buff_A_26_address0;
reg    buff_A_26_ce0;
reg    buff_A_26_we0;
wire   [31:0] buff_A_26_q0;
reg   [5:0] buff_A_27_address0;
reg    buff_A_27_ce0;
reg    buff_A_27_we0;
wire   [31:0] buff_A_27_q0;
reg   [5:0] buff_A_28_address0;
reg    buff_A_28_ce0;
reg    buff_A_28_we0;
wire   [31:0] buff_A_28_q0;
reg   [5:0] buff_A_29_address0;
reg    buff_A_29_ce0;
reg    buff_A_29_we0;
wire   [31:0] buff_A_29_q0;
reg   [5:0] buff_A_30_address0;
reg    buff_A_30_ce0;
reg    buff_A_30_we0;
wire   [31:0] buff_A_30_q0;
reg   [5:0] buff_A_31_address0;
reg    buff_A_31_ce0;
reg    buff_A_31_we0;
wire   [31:0] buff_A_31_q0;
reg   [5:0] buff_A_32_address0;
reg    buff_A_32_ce0;
reg    buff_A_32_we0;
wire   [31:0] buff_A_32_q0;
reg   [5:0] buff_A_33_address0;
reg    buff_A_33_ce0;
reg    buff_A_33_we0;
wire   [31:0] buff_A_33_q0;
reg   [5:0] buff_A_34_address0;
reg    buff_A_34_ce0;
reg    buff_A_34_we0;
wire   [31:0] buff_A_34_q0;
reg   [5:0] buff_A_35_address0;
reg    buff_A_35_ce0;
reg    buff_A_35_we0;
wire   [31:0] buff_A_35_q0;
reg   [5:0] buff_A_36_address0;
reg    buff_A_36_ce0;
reg    buff_A_36_we0;
wire   [31:0] buff_A_36_q0;
reg   [5:0] buff_A_37_address0;
reg    buff_A_37_ce0;
reg    buff_A_37_we0;
wire   [31:0] buff_A_37_q0;
reg   [5:0] buff_A_38_address0;
reg    buff_A_38_ce0;
reg    buff_A_38_we0;
wire   [31:0] buff_A_38_q0;
reg   [5:0] buff_A_39_address0;
reg    buff_A_39_ce0;
reg    buff_A_39_we0;
wire   [31:0] buff_A_39_q0;
reg   [5:0] buff_A_40_address0;
reg    buff_A_40_ce0;
reg    buff_A_40_we0;
wire   [31:0] buff_A_40_q0;
reg   [5:0] buff_A_41_address0;
reg    buff_A_41_ce0;
reg    buff_A_41_we0;
wire   [31:0] buff_A_41_q0;
reg   [5:0] buff_A_42_address0;
reg    buff_A_42_ce0;
reg    buff_A_42_we0;
wire   [31:0] buff_A_42_q0;
reg   [5:0] buff_A_43_address0;
reg    buff_A_43_ce0;
reg    buff_A_43_we0;
wire   [31:0] buff_A_43_q0;
reg   [5:0] buff_A_44_address0;
reg    buff_A_44_ce0;
reg    buff_A_44_we0;
wire   [31:0] buff_A_44_q0;
reg   [5:0] buff_A_45_address0;
reg    buff_A_45_ce0;
reg    buff_A_45_we0;
wire   [31:0] buff_A_45_q0;
reg   [5:0] buff_A_46_address0;
reg    buff_A_46_ce0;
reg    buff_A_46_we0;
wire   [31:0] buff_A_46_q0;
reg   [5:0] buff_A_47_address0;
reg    buff_A_47_ce0;
reg    buff_A_47_we0;
wire   [31:0] buff_A_47_q0;
reg   [5:0] buff_A_48_address0;
reg    buff_A_48_ce0;
reg    buff_A_48_we0;
wire   [31:0] buff_A_48_q0;
reg   [5:0] buff_A_49_address0;
reg    buff_A_49_ce0;
reg    buff_A_49_we0;
wire   [31:0] buff_A_49_q0;
reg   [5:0] buff_A_50_address0;
reg    buff_A_50_ce0;
reg    buff_A_50_we0;
wire   [31:0] buff_A_50_q0;
reg   [5:0] buff_A_51_address0;
reg    buff_A_51_ce0;
reg    buff_A_51_we0;
wire   [31:0] buff_A_51_q0;
reg   [5:0] buff_A_52_address0;
reg    buff_A_52_ce0;
reg    buff_A_52_we0;
wire   [31:0] buff_A_52_q0;
reg   [5:0] buff_A_53_address0;
reg    buff_A_53_ce0;
reg    buff_A_53_we0;
wire   [31:0] buff_A_53_q0;
reg   [5:0] buff_A_54_address0;
reg    buff_A_54_ce0;
reg    buff_A_54_we0;
wire   [31:0] buff_A_54_q0;
reg   [5:0] buff_A_55_address0;
reg    buff_A_55_ce0;
reg    buff_A_55_we0;
wire   [31:0] buff_A_55_q0;
reg   [5:0] buff_A_56_address0;
reg    buff_A_56_ce0;
reg    buff_A_56_we0;
wire   [31:0] buff_A_56_q0;
reg   [5:0] buff_A_57_address0;
reg    buff_A_57_ce0;
reg    buff_A_57_we0;
wire   [31:0] buff_A_57_q0;
reg   [5:0] buff_A_58_address0;
reg    buff_A_58_ce0;
reg    buff_A_58_we0;
wire   [31:0] buff_A_58_q0;
reg   [5:0] buff_A_59_address0;
reg    buff_A_59_ce0;
reg    buff_A_59_we0;
wire   [31:0] buff_A_59_q0;
reg   [5:0] buff_A_60_address0;
reg    buff_A_60_ce0;
reg    buff_A_60_we0;
wire   [31:0] buff_A_60_q0;
reg   [5:0] buff_A_61_address0;
reg    buff_A_61_ce0;
reg    buff_A_61_we0;
wire   [31:0] buff_A_61_q0;
reg   [5:0] buff_A_62_address0;
reg    buff_A_62_ce0;
reg    buff_A_62_we0;
wire   [31:0] buff_A_62_q0;
reg   [5:0] buff_A_63_address0;
reg    buff_A_63_ce0;
reg    buff_A_63_we0;
wire   [31:0] buff_A_63_q0;
reg   [5:0] buff_r_address0;
reg    buff_r_ce0;
reg    buff_r_we0;
wire   [31:0] buff_r_q0;
reg   [2:0] buff_s_out_address0;
reg    buff_s_out_ce0;
reg    buff_s_out_we0;
reg   [31:0] buff_s_out_d0;
wire   [31:0] buff_s_out_q0;
reg    buff_s_out_ce1;
wire   [31:0] buff_s_out_q1;
reg   [2:0] buff_s_out_1_address0;
reg    buff_s_out_1_ce0;
reg    buff_s_out_1_we0;
reg   [31:0] buff_s_out_1_d0;
wire   [31:0] buff_s_out_1_q0;
reg    buff_s_out_1_ce1;
wire   [31:0] buff_s_out_1_q1;
reg   [2:0] buff_s_out_2_address0;
reg    buff_s_out_2_ce0;
reg    buff_s_out_2_we0;
reg   [31:0] buff_s_out_2_d0;
wire   [31:0] buff_s_out_2_q0;
reg    buff_s_out_2_ce1;
wire   [31:0] buff_s_out_2_q1;
reg   [2:0] buff_s_out_3_address0;
reg    buff_s_out_3_ce0;
reg    buff_s_out_3_we0;
reg   [31:0] buff_s_out_3_d0;
wire   [31:0] buff_s_out_3_q0;
reg    buff_s_out_3_ce1;
wire   [31:0] buff_s_out_3_q1;
reg   [2:0] buff_s_out_4_address0;
reg    buff_s_out_4_ce0;
reg    buff_s_out_4_we0;
reg   [31:0] buff_s_out_4_d0;
wire   [31:0] buff_s_out_4_q0;
reg   [2:0] buff_s_out_5_address0;
reg    buff_s_out_5_ce0;
reg    buff_s_out_5_we0;
reg   [31:0] buff_s_out_5_d0;
wire   [31:0] buff_s_out_5_q0;
reg   [2:0] buff_s_out_6_address0;
reg    buff_s_out_6_ce0;
reg    buff_s_out_6_we0;
reg   [31:0] buff_s_out_6_d0;
wire   [31:0] buff_s_out_6_q0;
reg   [2:0] buff_s_out_7_address0;
reg    buff_s_out_7_ce0;
reg    buff_s_out_7_we0;
reg   [31:0] buff_s_out_7_d0;
wire   [31:0] buff_s_out_7_q0;
reg   [5:0] buff_q_out_address0;
reg    buff_q_out_ce0;
reg    buff_q_out_we0;
reg   [31:0] buff_q_out_d0;
wire   [31:0] buff_q_out_q0;
reg    buff_q_out_ce1;
wire   [31:0] buff_q_out_q1;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_start;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_done;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_idle;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_ready;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_1_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_1_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_1_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_2_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_2_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_2_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_3_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_3_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_3_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_4_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_4_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_4_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_4_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_5_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_5_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_5_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_5_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_6_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_6_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_6_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_6_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_7_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_7_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_7_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_7_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_8_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_8_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_8_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_8_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_9_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_9_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_9_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_9_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_10_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_10_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_10_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_10_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_11_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_11_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_11_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_11_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_12_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_12_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_12_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_12_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_13_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_13_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_13_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_13_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_14_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_14_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_14_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_14_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_15_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_15_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_15_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_15_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_16_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_16_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_16_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_16_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_17_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_17_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_17_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_17_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_18_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_18_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_18_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_18_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_19_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_19_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_19_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_19_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_20_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_20_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_20_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_20_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_21_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_21_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_21_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_21_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_22_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_22_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_22_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_22_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_23_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_23_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_23_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_23_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_24_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_24_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_24_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_24_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_25_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_25_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_25_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_25_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_26_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_26_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_26_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_26_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_27_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_27_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_27_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_27_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_28_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_28_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_28_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_28_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_29_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_29_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_29_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_29_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_30_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_30_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_30_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_30_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_31_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_31_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_31_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_31_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_32_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_32_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_32_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_32_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_33_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_33_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_33_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_33_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_34_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_34_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_34_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_34_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_35_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_35_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_35_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_35_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_36_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_36_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_36_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_36_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_37_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_37_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_37_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_37_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_38_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_38_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_38_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_38_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_39_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_39_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_39_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_39_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_40_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_40_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_40_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_40_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_41_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_41_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_41_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_41_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_42_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_42_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_42_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_42_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_43_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_43_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_43_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_43_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_44_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_44_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_44_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_44_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_45_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_45_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_45_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_45_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_46_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_46_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_46_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_46_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_47_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_47_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_47_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_47_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_48_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_48_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_48_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_48_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_49_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_49_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_49_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_49_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_50_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_50_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_50_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_50_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_51_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_51_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_51_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_51_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_52_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_52_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_52_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_52_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_53_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_53_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_53_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_53_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_54_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_54_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_54_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_54_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_55_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_55_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_55_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_55_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_56_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_56_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_56_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_56_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_57_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_57_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_57_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_57_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_58_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_58_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_58_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_58_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_59_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_59_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_59_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_59_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_60_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_60_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_60_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_60_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_61_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_61_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_61_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_61_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_62_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_62_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_62_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_62_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_63_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_63_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_63_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_63_d0;
wire   [11:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_A_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_A_ce0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_ce0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_r_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_r_ce0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_r_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_r_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_r_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_r_d0;
wire   [2:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_d0;
wire   [2:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_1_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_1_d0;
wire   [2:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_2_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_2_d0;
wire   [2:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_3_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_3_d0;
wire   [2:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_4_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_4_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_4_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_4_d0;
wire   [2:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_5_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_5_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_5_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_5_d0;
wire   [2:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_6_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_6_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_6_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_6_d0;
wire   [2:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_7_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_7_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_7_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_7_d0;
wire   [5:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_q_out_address0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_q_out_d0;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out1;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out1_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out2;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out2_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out3;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out3_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out4;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out4_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out5;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out5_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out6;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out6_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out7;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out7_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out8;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out8_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out9;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out9_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out10;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out10_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out11;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out11_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out12;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out12_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out13;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out13_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out14;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out14_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out15;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out15_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out16;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out16_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out17;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out17_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out18;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out18_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out19;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out19_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out20;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out20_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out21;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out21_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out22;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out22_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out23;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out23_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out24;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out24_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out25;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out25_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out26;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out26_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out27;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out27_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out28;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out28_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out29;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out29_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out30;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out30_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out31;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out31_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out32;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out32_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out33;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out33_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out34;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out34_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out35;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out35_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out36;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out36_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out37;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out37_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out38;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out38_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out39;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out39_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out40;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out40_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out41;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out41_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out42;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out42_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out43;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out43_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out44;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out44_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out45;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out45_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out46;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out46_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out47;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out47_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out48;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out48_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out49;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out49_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out50;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out50_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out51;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out51_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out52;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out52_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out53;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out53_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out54;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out54_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out55;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out55_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out56;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out56_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out57;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out57_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out58;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out58_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out59;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out59_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out60;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out60_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out61;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out61_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out62;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out62_ap_vld;
wire   [31:0] grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out63;
wire    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out63_ap_vld;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_ap_start;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_ap_done;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_ap_idle;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_ap_ready;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_r_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_r_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_8_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_8_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_16_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_16_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_24_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_24_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_32_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_32_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_40_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_40_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_48_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_48_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_56_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_56_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_1_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_9_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_9_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_17_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_17_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_25_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_25_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_33_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_33_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_41_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_41_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_49_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_49_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_57_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_57_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_2_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_10_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_10_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_18_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_18_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_26_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_26_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_34_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_34_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_42_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_42_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_50_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_50_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_58_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_58_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_3_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_11_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_11_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_19_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_19_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_27_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_27_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_35_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_35_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_43_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_43_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_51_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_51_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_59_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_59_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_4_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_12_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_12_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_20_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_20_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_28_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_28_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_36_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_36_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_44_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_44_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_52_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_52_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_60_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_60_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_5_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_13_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_13_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_21_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_21_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_29_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_29_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_37_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_37_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_45_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_45_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_53_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_53_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_61_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_61_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_6_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_14_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_14_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_22_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_22_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_30_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_30_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_38_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_38_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_46_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_46_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_54_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_54_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_62_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_62_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_7_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_15_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_15_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_23_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_23_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_31_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_31_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_39_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_39_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_47_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_47_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_55_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_55_ce0;
wire   [5:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_63_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_63_ce0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_ce1;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_ce1;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_ce1;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_address1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_ce1;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_4_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_4_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_4_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_4_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_5_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_5_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_5_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_5_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_6_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_6_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_6_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_6_d0;
wire   [2:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_7_address0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_7_ce0;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_7_we0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_7_d0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1873_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1873_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1873_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1873_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1877_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1877_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1877_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1877_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1881_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1881_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1881_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1881_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1885_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1885_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1885_p_opcode;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1885_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1889_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1889_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1889_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1893_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1893_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1893_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1897_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1897_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1897_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1901_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1901_p_din1;
wire    grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1901_p_ce;
wire    grp_bicg_Pipeline_lp3_fu_891_ap_start;
wire    grp_bicg_Pipeline_lp3_fu_891_ap_done;
wire    grp_bicg_Pipeline_lp3_fu_891_ap_idle;
wire    grp_bicg_Pipeline_lp3_fu_891_ap_ready;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_q_out_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_q_out_ce0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_q_out_we0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_buff_q_out_d0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_q_out_address1;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_q_out_ce1;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_1_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_1_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_2_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_2_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_3_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_3_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_4_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_4_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_5_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_5_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_6_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_6_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_7_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_7_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_8_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_8_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_9_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_9_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_10_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_10_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_11_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_11_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_12_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_12_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_13_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_13_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_14_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_14_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_15_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_15_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_16_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_16_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_17_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_17_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_18_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_18_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_19_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_19_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_20_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_20_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_21_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_21_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_22_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_22_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_23_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_23_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_24_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_24_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_25_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_25_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_26_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_26_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_27_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_27_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_28_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_28_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_29_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_29_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_30_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_30_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_31_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_31_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_32_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_32_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_33_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_33_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_34_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_34_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_35_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_35_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_36_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_36_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_37_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_37_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_38_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_38_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_39_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_39_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_40_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_40_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_41_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_41_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_42_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_42_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_43_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_43_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_44_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_44_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_45_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_45_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_46_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_46_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_47_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_47_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_48_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_48_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_49_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_49_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_50_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_50_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_51_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_51_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_52_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_52_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_53_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_53_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_54_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_54_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_55_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_55_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_56_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_56_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_57_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_57_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_58_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_58_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_59_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_59_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_60_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_60_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_61_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_61_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_62_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_62_ce0;
wire   [5:0] grp_bicg_Pipeline_lp3_fu_891_buff_A_63_address0;
wire    grp_bicg_Pipeline_lp3_fu_891_buff_A_63_ce0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1873_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1873_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1873_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_891_grp_fu_1873_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1877_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1877_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1877_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_891_grp_fu_1877_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1881_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1881_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1881_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_891_grp_fu_1881_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1885_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1885_p_din1;
wire   [1:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1885_p_opcode;
wire    grp_bicg_Pipeline_lp3_fu_891_grp_fu_1885_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1889_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1889_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_891_grp_fu_1889_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1893_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1893_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_891_grp_fu_1893_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1897_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1897_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_891_grp_fu_1897_p_ce;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1901_p_din0;
wire   [31:0] grp_bicg_Pipeline_lp3_fu_891_grp_fu_1901_p_din1;
wire    grp_bicg_Pipeline_lp3_fu_891_grp_fu_1901_p_ce;
wire    grp_bicg_Pipeline_lpwr_fu_1024_ap_start;
wire    grp_bicg_Pipeline_lpwr_fu_1024_ap_done;
wire    grp_bicg_Pipeline_lpwr_fu_1024_ap_idle;
wire    grp_bicg_Pipeline_lpwr_fu_1024_ap_ready;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1024_s_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1024_s_out_write;
wire   [31:0] grp_bicg_Pipeline_lpwr_fu_1024_q_out_din;
wire    grp_bicg_Pipeline_lpwr_fu_1024_q_out_write;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_1_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_1_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_2_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_2_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_3_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_3_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_4_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_4_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_5_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_5_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_6_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_6_ce0;
wire   [2:0] grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_7_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_7_ce0;
wire   [5:0] grp_bicg_Pipeline_lpwr_fu_1024_buff_q_out_address0;
wire    grp_bicg_Pipeline_lpwr_fu_1024_buff_q_out_ce0;
reg    grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_bicg_Pipeline_lp1_lp2_fu_814_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_bicg_Pipeline_lp3_fu_891_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_bicg_Pipeline_lpwr_fu_1024_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire   [31:0] grp_fu_1873_p2;
reg   [31:0] grp_fu_1873_p0;
reg   [31:0] grp_fu_1873_p1;
reg    grp_fu_1873_ce;
wire   [31:0] grp_fu_1877_p2;
reg   [31:0] grp_fu_1877_p0;
reg   [31:0] grp_fu_1877_p1;
reg    grp_fu_1877_ce;
wire   [31:0] grp_fu_1881_p2;
reg   [31:0] grp_fu_1881_p0;
reg   [31:0] grp_fu_1881_p1;
reg    grp_fu_1881_ce;
wire   [31:0] grp_fu_1885_p2;
reg   [31:0] grp_fu_1885_p0;
reg   [31:0] grp_fu_1885_p1;
reg    grp_fu_1885_ce;
wire   [31:0] grp_fu_1889_p2;
reg   [31:0] grp_fu_1889_p0;
reg   [31:0] grp_fu_1889_p1;
reg    grp_fu_1889_ce;
wire   [31:0] grp_fu_1893_p2;
reg   [31:0] grp_fu_1893_p0;
reg   [31:0] grp_fu_1893_p1;
reg    grp_fu_1893_ce;
wire   [31:0] grp_fu_1897_p2;
reg   [31:0] grp_fu_1897_p0;
reg   [31:0] grp_fu_1897_p1;
reg    grp_fu_1897_ce;
wire   [31:0] grp_fu_1901_p2;
reg   [31:0] grp_fu_1901_p0;
reg   [31:0] grp_fu_1901_p1;
reg    grp_fu_1901_ce;
reg   [7:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp1_lp2_fu_814_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lp3_fu_891_ap_start_reg = 1'b0;
#0 grp_bicg_Pipeline_lpwr_fu_1024_ap_start_reg = 1'b0;
end
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_address0),.ce0(buff_A_ce0),.we0(buff_A_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_d0),.q0(buff_A_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_1_address0),.ce0(buff_A_1_ce0),.we0(buff_A_1_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_1_d0),.q0(buff_A_1_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_2_address0),.ce0(buff_A_2_ce0),.we0(buff_A_2_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_2_d0),.q0(buff_A_2_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_3_address0),.ce0(buff_A_3_ce0),.we0(buff_A_3_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_3_d0),.q0(buff_A_3_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_4_address0),.ce0(buff_A_4_ce0),.we0(buff_A_4_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_4_d0),.q0(buff_A_4_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_5_address0),.ce0(buff_A_5_ce0),.we0(buff_A_5_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_5_d0),.q0(buff_A_5_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_6_address0),.ce0(buff_A_6_ce0),.we0(buff_A_6_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_6_d0),.q0(buff_A_6_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_7_address0),.ce0(buff_A_7_ce0),.we0(buff_A_7_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_7_d0),.q0(buff_A_7_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_8_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_8_address0),.ce0(buff_A_8_ce0),.we0(buff_A_8_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_8_d0),.q0(buff_A_8_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_9_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_9_address0),.ce0(buff_A_9_ce0),.we0(buff_A_9_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_9_d0),.q0(buff_A_9_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_10_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_10_address0),.ce0(buff_A_10_ce0),.we0(buff_A_10_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_10_d0),.q0(buff_A_10_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_11_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_11_address0),.ce0(buff_A_11_ce0),.we0(buff_A_11_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_11_d0),.q0(buff_A_11_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_12_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_12_address0),.ce0(buff_A_12_ce0),.we0(buff_A_12_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_12_d0),.q0(buff_A_12_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_13_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_13_address0),.ce0(buff_A_13_ce0),.we0(buff_A_13_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_13_d0),.q0(buff_A_13_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_14_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_14_address0),.ce0(buff_A_14_ce0),.we0(buff_A_14_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_14_d0),.q0(buff_A_14_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_15_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_15_address0),.ce0(buff_A_15_ce0),.we0(buff_A_15_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_15_d0),.q0(buff_A_15_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_16_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_16_address0),.ce0(buff_A_16_ce0),.we0(buff_A_16_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_16_d0),.q0(buff_A_16_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_17_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_17_address0),.ce0(buff_A_17_ce0),.we0(buff_A_17_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_17_d0),.q0(buff_A_17_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_18_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_18_address0),.ce0(buff_A_18_ce0),.we0(buff_A_18_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_18_d0),.q0(buff_A_18_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_19_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_19_address0),.ce0(buff_A_19_ce0),.we0(buff_A_19_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_19_d0),.q0(buff_A_19_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_20_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_20_address0),.ce0(buff_A_20_ce0),.we0(buff_A_20_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_20_d0),.q0(buff_A_20_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_21_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_21_address0),.ce0(buff_A_21_ce0),.we0(buff_A_21_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_21_d0),.q0(buff_A_21_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_22_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_22_address0),.ce0(buff_A_22_ce0),.we0(buff_A_22_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_22_d0),.q0(buff_A_22_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_23_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_23_address0),.ce0(buff_A_23_ce0),.we0(buff_A_23_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_23_d0),.q0(buff_A_23_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_24_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_24_address0),.ce0(buff_A_24_ce0),.we0(buff_A_24_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_24_d0),.q0(buff_A_24_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_25_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_25_address0),.ce0(buff_A_25_ce0),.we0(buff_A_25_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_25_d0),.q0(buff_A_25_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_26_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_26_address0),.ce0(buff_A_26_ce0),.we0(buff_A_26_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_26_d0),.q0(buff_A_26_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_27_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_27_address0),.ce0(buff_A_27_ce0),.we0(buff_A_27_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_27_d0),.q0(buff_A_27_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_28_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_28_address0),.ce0(buff_A_28_ce0),.we0(buff_A_28_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_28_d0),.q0(buff_A_28_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_29_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_29_address0),.ce0(buff_A_29_ce0),.we0(buff_A_29_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_29_d0),.q0(buff_A_29_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_30_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_30_address0),.ce0(buff_A_30_ce0),.we0(buff_A_30_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_30_d0),.q0(buff_A_30_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_31_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_31_address0),.ce0(buff_A_31_ce0),.we0(buff_A_31_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_31_d0),.q0(buff_A_31_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_32_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_32_address0),.ce0(buff_A_32_ce0),.we0(buff_A_32_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_32_d0),.q0(buff_A_32_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_33_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_33_address0),.ce0(buff_A_33_ce0),.we0(buff_A_33_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_33_d0),.q0(buff_A_33_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_34_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_34_address0),.ce0(buff_A_34_ce0),.we0(buff_A_34_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_34_d0),.q0(buff_A_34_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_35_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_35_address0),.ce0(buff_A_35_ce0),.we0(buff_A_35_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_35_d0),.q0(buff_A_35_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_36_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_36_address0),.ce0(buff_A_36_ce0),.we0(buff_A_36_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_36_d0),.q0(buff_A_36_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_37_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_37_address0),.ce0(buff_A_37_ce0),.we0(buff_A_37_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_37_d0),.q0(buff_A_37_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_38_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_38_address0),.ce0(buff_A_38_ce0),.we0(buff_A_38_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_38_d0),.q0(buff_A_38_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_39_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_39_address0),.ce0(buff_A_39_ce0),.we0(buff_A_39_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_39_d0),.q0(buff_A_39_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_40_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_40_address0),.ce0(buff_A_40_ce0),.we0(buff_A_40_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_40_d0),.q0(buff_A_40_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_41_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_41_address0),.ce0(buff_A_41_ce0),.we0(buff_A_41_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_41_d0),.q0(buff_A_41_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_42_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_42_address0),.ce0(buff_A_42_ce0),.we0(buff_A_42_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_42_d0),.q0(buff_A_42_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_43_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_43_address0),.ce0(buff_A_43_ce0),.we0(buff_A_43_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_43_d0),.q0(buff_A_43_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_44_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_44_address0),.ce0(buff_A_44_ce0),.we0(buff_A_44_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_44_d0),.q0(buff_A_44_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_45_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_45_address0),.ce0(buff_A_45_ce0),.we0(buff_A_45_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_45_d0),.q0(buff_A_45_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_46_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_46_address0),.ce0(buff_A_46_ce0),.we0(buff_A_46_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_46_d0),.q0(buff_A_46_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_47_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_47_address0),.ce0(buff_A_47_ce0),.we0(buff_A_47_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_47_d0),.q0(buff_A_47_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_48_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_48_address0),.ce0(buff_A_48_ce0),.we0(buff_A_48_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_48_d0),.q0(buff_A_48_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_49_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_49_address0),.ce0(buff_A_49_ce0),.we0(buff_A_49_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_49_d0),.q0(buff_A_49_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_50_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_50_address0),.ce0(buff_A_50_ce0),.we0(buff_A_50_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_50_d0),.q0(buff_A_50_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_51_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_51_address0),.ce0(buff_A_51_ce0),.we0(buff_A_51_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_51_d0),.q0(buff_A_51_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_52_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_52_address0),.ce0(buff_A_52_ce0),.we0(buff_A_52_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_52_d0),.q0(buff_A_52_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_53_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_53_address0),.ce0(buff_A_53_ce0),.we0(buff_A_53_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_53_d0),.q0(buff_A_53_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_54_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_54_address0),.ce0(buff_A_54_ce0),.we0(buff_A_54_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_54_d0),.q0(buff_A_54_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_55_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_55_address0),.ce0(buff_A_55_ce0),.we0(buff_A_55_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_55_d0),.q0(buff_A_55_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_56_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_56_address0),.ce0(buff_A_56_ce0),.we0(buff_A_56_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_56_d0),.q0(buff_A_56_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_57_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_57_address0),.ce0(buff_A_57_ce0),.we0(buff_A_57_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_57_d0),.q0(buff_A_57_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_58_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_58_address0),.ce0(buff_A_58_ce0),.we0(buff_A_58_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_58_d0),.q0(buff_A_58_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_59_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_59_address0),.ce0(buff_A_59_ce0),.we0(buff_A_59_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_59_d0),.q0(buff_A_59_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_60_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_60_address0),.ce0(buff_A_60_ce0),.we0(buff_A_60_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_60_d0),.q0(buff_A_60_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_61_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_61_address0),.ce0(buff_A_61_ce0),.we0(buff_A_61_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_61_d0),.q0(buff_A_61_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_62_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_62_address0),.ce0(buff_A_62_ce0),.we0(buff_A_62_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_62_d0),.q0(buff_A_62_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_A_63_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_A_63_address0),.ce0(buff_A_63_ce0),.we0(buff_A_63_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_63_d0),.q0(buff_A_63_q0));
bicg_buff_A_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_r_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_r_address0),.ce0(buff_r_ce0),.we0(buff_r_we0),.d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_r_d0),.q0(buff_r_q0));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_address0),.ce0(buff_s_out_ce0),.we0(buff_s_out_we0),.d0(buff_s_out_d0),.q0(buff_s_out_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_address1),.ce1(buff_s_out_ce1),.q1(buff_s_out_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_1_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_1_address0),.ce0(buff_s_out_1_ce0),.we0(buff_s_out_1_we0),.d0(buff_s_out_1_d0),.q0(buff_s_out_1_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_address1),.ce1(buff_s_out_1_ce1),.q1(buff_s_out_1_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_2_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_2_address0),.ce0(buff_s_out_2_ce0),.we0(buff_s_out_2_we0),.d0(buff_s_out_2_d0),.q0(buff_s_out_2_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_address1),.ce1(buff_s_out_2_ce1),.q1(buff_s_out_2_q1));
bicg_buff_s_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_3_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_3_address0),.ce0(buff_s_out_3_ce0),.we0(buff_s_out_3_we0),.d0(buff_s_out_3_d0),.q0(buff_s_out_3_q0),.address1(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_address1),.ce1(buff_s_out_3_ce1),.q1(buff_s_out_3_q1));
bicg_buff_s_out_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_4_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_4_address0),.ce0(buff_s_out_4_ce0),.we0(buff_s_out_4_we0),.d0(buff_s_out_4_d0),.q0(buff_s_out_4_q0));
bicg_buff_s_out_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_5_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_5_address0),.ce0(buff_s_out_5_ce0),.we0(buff_s_out_5_we0),.d0(buff_s_out_5_d0),.q0(buff_s_out_5_q0));
bicg_buff_s_out_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_6_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_6_address0),.ce0(buff_s_out_6_ce0),.we0(buff_s_out_6_we0),.d0(buff_s_out_6_d0),.q0(buff_s_out_6_q0));
bicg_buff_s_out_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
buff_s_out_7_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_s_out_7_address0),.ce0(buff_s_out_7_ce0),.we0(buff_s_out_7_we0),.d0(buff_s_out_7_d0),.q0(buff_s_out_7_q0));
bicg_buff_q_out_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 64 ),.AddressWidth( 6 ))
buff_q_out_U(.clk(ap_clk),.reset(ap_rst),.address0(buff_q_out_address0),.ce0(buff_q_out_ce0),.we0(buff_q_out_we0),.d0(buff_q_out_d0),.q0(buff_q_out_q0),.address1(grp_bicg_Pipeline_lp3_fu_891_buff_q_out_address1),.ce1(buff_q_out_ce1),.q1(buff_q_out_q1));
bicg_bicg_Pipeline_lprd_1_lprd_2 grp_bicg_Pipeline_lprd_1_lprd_2_fu_592(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_start),.ap_done(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_done),.ap_idle(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_idle),.ap_ready(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_ready),.buff_A_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_ce0),.buff_A_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_we0),.buff_A_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_d0),.buff_A_1_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_1_ce0),.buff_A_1_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_1_we0),.buff_A_1_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_1_d0),.buff_A_2_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_2_ce0),.buff_A_2_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_2_we0),.buff_A_2_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_2_d0),.buff_A_3_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_3_ce0),.buff_A_3_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_3_we0),.buff_A_3_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_3_d0),.buff_A_4_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_4_ce0),.buff_A_4_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_4_we0),.buff_A_4_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_4_d0),.buff_A_5_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_5_ce0),.buff_A_5_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_5_we0),.buff_A_5_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_5_d0),.buff_A_6_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_6_ce0),.buff_A_6_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_6_we0),.buff_A_6_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_6_d0),.buff_A_7_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_7_ce0),.buff_A_7_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_7_we0),.buff_A_7_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_7_d0),.buff_A_8_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_8_ce0),.buff_A_8_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_8_we0),.buff_A_8_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_8_d0),.buff_A_9_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_9_ce0),.buff_A_9_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_9_we0),.buff_A_9_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_9_d0),.buff_A_10_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_10_ce0),.buff_A_10_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_10_we0),.buff_A_10_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_10_d0),.buff_A_11_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_11_ce0),.buff_A_11_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_11_we0),.buff_A_11_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_11_d0),.buff_A_12_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_12_ce0),.buff_A_12_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_12_we0),.buff_A_12_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_12_d0),.buff_A_13_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_13_ce0),.buff_A_13_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_13_we0),.buff_A_13_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_13_d0),.buff_A_14_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_14_ce0),.buff_A_14_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_14_we0),.buff_A_14_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_14_d0),.buff_A_15_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_15_ce0),.buff_A_15_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_15_we0),.buff_A_15_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_15_d0),.buff_A_16_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_16_address0),.buff_A_16_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_16_ce0),.buff_A_16_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_16_we0),.buff_A_16_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_16_d0),.buff_A_17_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_17_address0),.buff_A_17_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_17_ce0),.buff_A_17_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_17_we0),.buff_A_17_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_17_d0),.buff_A_18_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_18_address0),.buff_A_18_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_18_ce0),.buff_A_18_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_18_we0),.buff_A_18_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_18_d0),.buff_A_19_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_19_address0),.buff_A_19_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_19_ce0),.buff_A_19_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_19_we0),.buff_A_19_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_19_d0),.buff_A_20_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_20_address0),.buff_A_20_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_20_ce0),.buff_A_20_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_20_we0),.buff_A_20_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_20_d0),.buff_A_21_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_21_address0),.buff_A_21_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_21_ce0),.buff_A_21_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_21_we0),.buff_A_21_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_21_d0),.buff_A_22_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_22_address0),.buff_A_22_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_22_ce0),.buff_A_22_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_22_we0),.buff_A_22_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_22_d0),.buff_A_23_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_23_address0),.buff_A_23_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_23_ce0),.buff_A_23_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_23_we0),.buff_A_23_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_23_d0),.buff_A_24_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_24_address0),.buff_A_24_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_24_ce0),.buff_A_24_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_24_we0),.buff_A_24_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_24_d0),.buff_A_25_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_25_address0),.buff_A_25_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_25_ce0),.buff_A_25_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_25_we0),.buff_A_25_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_25_d0),.buff_A_26_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_26_address0),.buff_A_26_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_26_ce0),.buff_A_26_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_26_we0),.buff_A_26_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_26_d0),.buff_A_27_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_27_address0),.buff_A_27_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_27_ce0),.buff_A_27_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_27_we0),.buff_A_27_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_27_d0),.buff_A_28_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_28_address0),.buff_A_28_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_28_ce0),.buff_A_28_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_28_we0),.buff_A_28_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_28_d0),.buff_A_29_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_29_address0),.buff_A_29_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_29_ce0),.buff_A_29_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_29_we0),.buff_A_29_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_29_d0),.buff_A_30_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_30_address0),.buff_A_30_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_30_ce0),.buff_A_30_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_30_we0),.buff_A_30_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_30_d0),.buff_A_31_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_31_address0),.buff_A_31_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_31_ce0),.buff_A_31_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_31_we0),.buff_A_31_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_31_d0),.buff_A_32_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_32_address0),.buff_A_32_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_32_ce0),.buff_A_32_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_32_we0),.buff_A_32_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_32_d0),.buff_A_33_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_33_address0),.buff_A_33_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_33_ce0),.buff_A_33_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_33_we0),.buff_A_33_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_33_d0),.buff_A_34_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_34_address0),.buff_A_34_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_34_ce0),.buff_A_34_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_34_we0),.buff_A_34_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_34_d0),.buff_A_35_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_35_address0),.buff_A_35_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_35_ce0),.buff_A_35_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_35_we0),.buff_A_35_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_35_d0),.buff_A_36_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_36_address0),.buff_A_36_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_36_ce0),.buff_A_36_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_36_we0),.buff_A_36_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_36_d0),.buff_A_37_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_37_address0),.buff_A_37_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_37_ce0),.buff_A_37_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_37_we0),.buff_A_37_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_37_d0),.buff_A_38_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_38_address0),.buff_A_38_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_38_ce0),.buff_A_38_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_38_we0),.buff_A_38_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_38_d0),.buff_A_39_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_39_address0),.buff_A_39_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_39_ce0),.buff_A_39_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_39_we0),.buff_A_39_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_39_d0),.buff_A_40_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_40_address0),.buff_A_40_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_40_ce0),.buff_A_40_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_40_we0),.buff_A_40_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_40_d0),.buff_A_41_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_41_address0),.buff_A_41_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_41_ce0),.buff_A_41_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_41_we0),.buff_A_41_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_41_d0),.buff_A_42_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_42_address0),.buff_A_42_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_42_ce0),.buff_A_42_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_42_we0),.buff_A_42_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_42_d0),.buff_A_43_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_43_address0),.buff_A_43_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_43_ce0),.buff_A_43_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_43_we0),.buff_A_43_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_43_d0),.buff_A_44_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_44_address0),.buff_A_44_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_44_ce0),.buff_A_44_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_44_we0),.buff_A_44_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_44_d0),.buff_A_45_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_45_address0),.buff_A_45_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_45_ce0),.buff_A_45_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_45_we0),.buff_A_45_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_45_d0),.buff_A_46_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_46_address0),.buff_A_46_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_46_ce0),.buff_A_46_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_46_we0),.buff_A_46_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_46_d0),.buff_A_47_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_47_address0),.buff_A_47_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_47_ce0),.buff_A_47_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_47_we0),.buff_A_47_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_47_d0),.buff_A_48_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_48_address0),.buff_A_48_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_48_ce0),.buff_A_48_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_48_we0),.buff_A_48_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_48_d0),.buff_A_49_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_49_address0),.buff_A_49_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_49_ce0),.buff_A_49_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_49_we0),.buff_A_49_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_49_d0),.buff_A_50_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_50_address0),.buff_A_50_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_50_ce0),.buff_A_50_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_50_we0),.buff_A_50_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_50_d0),.buff_A_51_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_51_address0),.buff_A_51_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_51_ce0),.buff_A_51_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_51_we0),.buff_A_51_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_51_d0),.buff_A_52_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_52_address0),.buff_A_52_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_52_ce0),.buff_A_52_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_52_we0),.buff_A_52_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_52_d0),.buff_A_53_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_53_address0),.buff_A_53_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_53_ce0),.buff_A_53_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_53_we0),.buff_A_53_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_53_d0),.buff_A_54_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_54_address0),.buff_A_54_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_54_ce0),.buff_A_54_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_54_we0),.buff_A_54_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_54_d0),.buff_A_55_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_55_address0),.buff_A_55_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_55_ce0),.buff_A_55_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_55_we0),.buff_A_55_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_55_d0),.buff_A_56_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_56_address0),.buff_A_56_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_56_ce0),.buff_A_56_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_56_we0),.buff_A_56_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_56_d0),.buff_A_57_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_57_address0),.buff_A_57_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_57_ce0),.buff_A_57_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_57_we0),.buff_A_57_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_57_d0),.buff_A_58_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_58_address0),.buff_A_58_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_58_ce0),.buff_A_58_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_58_we0),.buff_A_58_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_58_d0),.buff_A_59_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_59_address0),.buff_A_59_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_59_ce0),.buff_A_59_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_59_we0),.buff_A_59_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_59_d0),.buff_A_60_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_60_address0),.buff_A_60_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_60_ce0),.buff_A_60_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_60_we0),.buff_A_60_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_60_d0),.buff_A_61_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_61_address0),.buff_A_61_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_61_ce0),.buff_A_61_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_61_we0),.buff_A_61_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_61_d0),.buff_A_62_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_62_address0),.buff_A_62_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_62_ce0),.buff_A_62_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_62_we0),.buff_A_62_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_62_d0),.buff_A_63_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_63_address0),.buff_A_63_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_63_ce0),.buff_A_63_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_63_we0),.buff_A_63_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_63_d0),.A_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_A_address0),.A_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_A_ce0),.A_q0(A_q0),.p_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_address0),.p_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_ce0),.p_q0(p_q0),.r_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_r_address0),.r_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_r_ce0),.r_q0(r_q0),.buff_r_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_r_ce0),.buff_r_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_r_we0),.buff_r_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_r_d0),.buff_s_out_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_ce0),.buff_s_out_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_we0),.buff_s_out_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_d0),.buff_s_out_1_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_1_ce0),.buff_s_out_1_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_1_we0),.buff_s_out_1_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_1_d0),.buff_s_out_2_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_2_ce0),.buff_s_out_2_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_2_we0),.buff_s_out_2_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_2_d0),.buff_s_out_3_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_3_ce0),.buff_s_out_3_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_3_we0),.buff_s_out_3_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_3_d0),.buff_s_out_4_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_4_address0),.buff_s_out_4_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_4_ce0),.buff_s_out_4_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_4_we0),.buff_s_out_4_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_4_d0),.buff_s_out_5_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_5_address0),.buff_s_out_5_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_5_ce0),.buff_s_out_5_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_5_we0),.buff_s_out_5_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_5_d0),.buff_s_out_6_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_6_address0),.buff_s_out_6_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_6_ce0),.buff_s_out_6_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_6_we0),.buff_s_out_6_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_6_d0),.buff_s_out_7_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_7_address0),.buff_s_out_7_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_7_ce0),.buff_s_out_7_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_7_we0),.buff_s_out_7_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_7_d0),.buff_q_out_address0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_q_out_d0),.p_out(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out),.p_out_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out_ap_vld),.p_out1(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out1),.p_out1_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out1_ap_vld),.p_out2(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out2),.p_out2_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out2_ap_vld),.p_out3(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out3),.p_out3_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out3_ap_vld),.p_out4(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out4),.p_out4_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out4_ap_vld),.p_out5(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out5),.p_out5_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out5_ap_vld),.p_out6(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out6),.p_out6_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out6_ap_vld),.p_out7(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out7),.p_out7_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out7_ap_vld),.p_out8(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out8),.p_out8_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out8_ap_vld),.p_out9(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out9),.p_out9_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out9_ap_vld),.p_out10(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out10),.p_out10_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out10_ap_vld),.p_out11(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out11),.p_out11_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out11_ap_vld),.p_out12(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out12),.p_out12_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out12_ap_vld),.p_out13(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out13),.p_out13_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out13_ap_vld),.p_out14(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out14),.p_out14_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out14_ap_vld),.p_out15(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out15),.p_out15_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out15_ap_vld),.p_out16(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out16),.p_out16_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out16_ap_vld),.p_out17(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out17),.p_out17_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out17_ap_vld),.p_out18(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out18),.p_out18_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out18_ap_vld),.p_out19(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out19),.p_out19_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out19_ap_vld),.p_out20(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out20),.p_out20_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out20_ap_vld),.p_out21(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out21),.p_out21_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out21_ap_vld),.p_out22(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out22),.p_out22_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out22_ap_vld),.p_out23(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out23),.p_out23_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out23_ap_vld),.p_out24(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out24),.p_out24_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out24_ap_vld),.p_out25(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out25),.p_out25_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out25_ap_vld),.p_out26(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out26),.p_out26_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out26_ap_vld),.p_out27(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out27),.p_out27_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out27_ap_vld),.p_out28(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out28),.p_out28_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out28_ap_vld),.p_out29(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out29),.p_out29_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out29_ap_vld),.p_out30(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out30),.p_out30_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out30_ap_vld),.p_out31(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out31),.p_out31_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out31_ap_vld),.p_out32(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out32),.p_out32_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out32_ap_vld),.p_out33(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out33),.p_out33_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out33_ap_vld),.p_out34(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out34),.p_out34_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out34_ap_vld),.p_out35(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out35),.p_out35_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out35_ap_vld),.p_out36(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out36),.p_out36_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out36_ap_vld),.p_out37(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out37),.p_out37_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out37_ap_vld),.p_out38(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out38),.p_out38_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out38_ap_vld),.p_out39(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out39),.p_out39_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out39_ap_vld),.p_out40(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out40),.p_out40_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out40_ap_vld),.p_out41(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out41),.p_out41_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out41_ap_vld),.p_out42(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out42),.p_out42_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out42_ap_vld),.p_out43(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out43),.p_out43_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out43_ap_vld),.p_out44(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out44),.p_out44_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out44_ap_vld),.p_out45(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out45),.p_out45_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out45_ap_vld),.p_out46(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out46),.p_out46_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out46_ap_vld),.p_out47(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out47),.p_out47_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out47_ap_vld),.p_out48(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out48),.p_out48_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out48_ap_vld),.p_out49(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out49),.p_out49_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out49_ap_vld),.p_out50(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out50),.p_out50_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out50_ap_vld),.p_out51(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out51),.p_out51_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out51_ap_vld),.p_out52(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out52),.p_out52_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out52_ap_vld),.p_out53(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out53),.p_out53_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out53_ap_vld),.p_out54(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out54),.p_out54_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out54_ap_vld),.p_out55(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out55),.p_out55_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out55_ap_vld),.p_out56(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out56),.p_out56_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out56_ap_vld),.p_out57(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out57),.p_out57_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out57_ap_vld),.p_out58(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out58),.p_out58_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out58_ap_vld),.p_out59(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out59),.p_out59_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out59_ap_vld),.p_out60(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out60),.p_out60_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out60_ap_vld),.p_out61(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out61),.p_out61_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out61_ap_vld),.p_out62(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out62),.p_out62_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out62_ap_vld),.p_out63(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out63),.p_out63_ap_vld(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out63_ap_vld));
bicg_bicg_Pipeline_lp1_lp2 grp_bicg_Pipeline_lp1_lp2_fu_814(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp1_lp2_fu_814_ap_start),.ap_done(grp_bicg_Pipeline_lp1_lp2_fu_814_ap_done),.ap_idle(grp_bicg_Pipeline_lp1_lp2_fu_814_ap_idle),.ap_ready(grp_bicg_Pipeline_lp1_lp2_fu_814_ap_ready),.buff_r_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_r_address0),.buff_r_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_r_ce0),.buff_r_q0(buff_r_q0),.buff_A_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_ce0),.buff_A_q0(buff_A_q0),.buff_A_8_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.buff_A_16_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_16_address0),.buff_A_16_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_16_ce0),.buff_A_16_q0(buff_A_16_q0),.buff_A_24_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_24_address0),.buff_A_24_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_24_ce0),.buff_A_24_q0(buff_A_24_q0),.buff_A_32_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_32_address0),.buff_A_32_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_32_ce0),.buff_A_32_q0(buff_A_32_q0),.buff_A_40_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_40_address0),.buff_A_40_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_40_ce0),.buff_A_40_q0(buff_A_40_q0),.buff_A_48_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_48_address0),.buff_A_48_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_48_ce0),.buff_A_48_q0(buff_A_48_q0),.buff_A_56_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_56_address0),.buff_A_56_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_56_ce0),.buff_A_56_q0(buff_A_56_q0),.buff_A_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.buff_A_9_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.buff_A_17_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_17_address0),.buff_A_17_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_17_ce0),.buff_A_17_q0(buff_A_17_q0),.buff_A_25_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_25_address0),.buff_A_25_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_25_ce0),.buff_A_25_q0(buff_A_25_q0),.buff_A_33_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_33_address0),.buff_A_33_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_33_ce0),.buff_A_33_q0(buff_A_33_q0),.buff_A_41_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_41_address0),.buff_A_41_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_41_ce0),.buff_A_41_q0(buff_A_41_q0),.buff_A_49_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_49_address0),.buff_A_49_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_49_ce0),.buff_A_49_q0(buff_A_49_q0),.buff_A_57_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_57_address0),.buff_A_57_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_57_ce0),.buff_A_57_q0(buff_A_57_q0),.buff_A_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.buff_A_10_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.buff_A_18_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_18_address0),.buff_A_18_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_18_ce0),.buff_A_18_q0(buff_A_18_q0),.buff_A_26_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_26_address0),.buff_A_26_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_26_ce0),.buff_A_26_q0(buff_A_26_q0),.buff_A_34_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_34_address0),.buff_A_34_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_34_ce0),.buff_A_34_q0(buff_A_34_q0),.buff_A_42_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_42_address0),.buff_A_42_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_42_ce0),.buff_A_42_q0(buff_A_42_q0),.buff_A_50_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_50_address0),.buff_A_50_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_50_ce0),.buff_A_50_q0(buff_A_50_q0),.buff_A_58_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_58_address0),.buff_A_58_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_58_ce0),.buff_A_58_q0(buff_A_58_q0),.buff_A_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.buff_A_11_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.buff_A_19_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_19_address0),.buff_A_19_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_19_ce0),.buff_A_19_q0(buff_A_19_q0),.buff_A_27_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_27_address0),.buff_A_27_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_27_ce0),.buff_A_27_q0(buff_A_27_q0),.buff_A_35_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_35_address0),.buff_A_35_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_35_ce0),.buff_A_35_q0(buff_A_35_q0),.buff_A_43_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_43_address0),.buff_A_43_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_43_ce0),.buff_A_43_q0(buff_A_43_q0),.buff_A_51_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_51_address0),.buff_A_51_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_51_ce0),.buff_A_51_q0(buff_A_51_q0),.buff_A_59_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_59_address0),.buff_A_59_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_59_ce0),.buff_A_59_q0(buff_A_59_q0),.buff_A_4_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.buff_A_12_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.buff_A_20_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_20_address0),.buff_A_20_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_20_ce0),.buff_A_20_q0(buff_A_20_q0),.buff_A_28_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_28_address0),.buff_A_28_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_28_ce0),.buff_A_28_q0(buff_A_28_q0),.buff_A_36_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_36_address0),.buff_A_36_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_36_ce0),.buff_A_36_q0(buff_A_36_q0),.buff_A_44_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_44_address0),.buff_A_44_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_44_ce0),.buff_A_44_q0(buff_A_44_q0),.buff_A_52_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_52_address0),.buff_A_52_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_52_ce0),.buff_A_52_q0(buff_A_52_q0),.buff_A_60_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_60_address0),.buff_A_60_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_60_ce0),.buff_A_60_q0(buff_A_60_q0),.buff_A_5_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.buff_A_13_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.buff_A_21_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_21_address0),.buff_A_21_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_21_ce0),.buff_A_21_q0(buff_A_21_q0),.buff_A_29_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_29_address0),.buff_A_29_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_29_ce0),.buff_A_29_q0(buff_A_29_q0),.buff_A_37_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_37_address0),.buff_A_37_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_37_ce0),.buff_A_37_q0(buff_A_37_q0),.buff_A_45_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_45_address0),.buff_A_45_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_45_ce0),.buff_A_45_q0(buff_A_45_q0),.buff_A_53_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_53_address0),.buff_A_53_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_53_ce0),.buff_A_53_q0(buff_A_53_q0),.buff_A_61_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_61_address0),.buff_A_61_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_61_ce0),.buff_A_61_q0(buff_A_61_q0),.buff_A_6_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.buff_A_14_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.buff_A_22_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_22_address0),.buff_A_22_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_22_ce0),.buff_A_22_q0(buff_A_22_q0),.buff_A_30_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_30_address0),.buff_A_30_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_30_ce0),.buff_A_30_q0(buff_A_30_q0),.buff_A_38_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_38_address0),.buff_A_38_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_38_ce0),.buff_A_38_q0(buff_A_38_q0),.buff_A_46_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_46_address0),.buff_A_46_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_46_ce0),.buff_A_46_q0(buff_A_46_q0),.buff_A_54_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_54_address0),.buff_A_54_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_54_ce0),.buff_A_54_q0(buff_A_54_q0),.buff_A_62_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_62_address0),.buff_A_62_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_62_ce0),.buff_A_62_q0(buff_A_62_q0),.buff_A_7_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.buff_A_15_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.buff_A_23_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_23_address0),.buff_A_23_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_23_ce0),.buff_A_23_q0(buff_A_23_q0),.buff_A_31_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_31_address0),.buff_A_31_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_31_ce0),.buff_A_31_q0(buff_A_31_q0),.buff_A_39_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_39_address0),.buff_A_39_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_39_ce0),.buff_A_39_q0(buff_A_39_q0),.buff_A_47_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_47_address0),.buff_A_47_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_47_ce0),.buff_A_47_q0(buff_A_47_q0),.buff_A_55_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_55_address0),.buff_A_55_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_55_ce0),.buff_A_55_q0(buff_A_55_q0),.buff_A_63_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_63_address0),.buff_A_63_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_63_ce0),.buff_A_63_q0(buff_A_63_q0),.buff_s_out_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_ce0),.buff_s_out_we0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_we0),.buff_s_out_d0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_d0),.buff_s_out_address1(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_address1),.buff_s_out_ce1(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_ce1),.buff_s_out_q1(buff_s_out_q1),.buff_s_out_1_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_ce0),.buff_s_out_1_we0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_we0),.buff_s_out_1_d0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_d0),.buff_s_out_1_address1(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_address1),.buff_s_out_1_ce1(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_ce1),.buff_s_out_1_q1(buff_s_out_1_q1),.buff_s_out_2_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_ce0),.buff_s_out_2_we0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_we0),.buff_s_out_2_d0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_d0),.buff_s_out_2_address1(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_address1),.buff_s_out_2_ce1(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_ce1),.buff_s_out_2_q1(buff_s_out_2_q1),.buff_s_out_3_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_ce0),.buff_s_out_3_we0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_we0),.buff_s_out_3_d0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_d0),.buff_s_out_3_address1(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_address1),.buff_s_out_3_ce1(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_ce1),.buff_s_out_3_q1(buff_s_out_3_q1),.buff_s_out_4_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_4_address0),.buff_s_out_4_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_4_ce0),.buff_s_out_4_we0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_4_we0),.buff_s_out_4_d0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_4_d0),.buff_s_out_4_q0(buff_s_out_4_q0),.buff_s_out_5_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_5_address0),.buff_s_out_5_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_5_ce0),.buff_s_out_5_we0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_5_we0),.buff_s_out_5_d0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_5_d0),.buff_s_out_5_q0(buff_s_out_5_q0),.buff_s_out_6_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_6_address0),.buff_s_out_6_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_6_ce0),.buff_s_out_6_we0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_6_we0),.buff_s_out_6_d0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_6_d0),.buff_s_out_6_q0(buff_s_out_6_q0),.buff_s_out_7_address0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_7_address0),.buff_s_out_7_ce0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_7_ce0),.buff_s_out_7_we0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_7_we0),.buff_s_out_7_d0(grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_7_d0),.buff_s_out_7_q0(buff_s_out_7_q0),.grp_fu_1873_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1873_p_din0),.grp_fu_1873_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1873_p_din1),.grp_fu_1873_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1873_p_opcode),.grp_fu_1873_p_dout0(grp_fu_1873_p2),.grp_fu_1873_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1873_p_ce),.grp_fu_1877_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1877_p_din0),.grp_fu_1877_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1877_p_din1),.grp_fu_1877_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1877_p_opcode),.grp_fu_1877_p_dout0(grp_fu_1877_p2),.grp_fu_1877_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1877_p_ce),.grp_fu_1881_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1881_p_din0),.grp_fu_1881_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1881_p_din1),.grp_fu_1881_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1881_p_opcode),.grp_fu_1881_p_dout0(grp_fu_1881_p2),.grp_fu_1881_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1881_p_ce),.grp_fu_1885_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1885_p_din0),.grp_fu_1885_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1885_p_din1),.grp_fu_1885_p_opcode(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1885_p_opcode),.grp_fu_1885_p_dout0(grp_fu_1885_p2),.grp_fu_1885_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1885_p_ce),.grp_fu_1889_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1889_p_din0),.grp_fu_1889_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1889_p_din1),.grp_fu_1889_p_dout0(grp_fu_1889_p2),.grp_fu_1889_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1889_p_ce),.grp_fu_1893_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1893_p_din0),.grp_fu_1893_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1893_p_din1),.grp_fu_1893_p_dout0(grp_fu_1893_p2),.grp_fu_1893_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1893_p_ce),.grp_fu_1897_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1897_p_din0),.grp_fu_1897_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1897_p_din1),.grp_fu_1897_p_dout0(grp_fu_1897_p2),.grp_fu_1897_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1897_p_ce),.grp_fu_1901_p_din0(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1901_p_din0),.grp_fu_1901_p_din1(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1901_p_din1),.grp_fu_1901_p_dout0(grp_fu_1901_p2),.grp_fu_1901_p_ce(grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1901_p_ce));
bicg_bicg_Pipeline_lp3 grp_bicg_Pipeline_lp3_fu_891(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lp3_fu_891_ap_start),.ap_done(grp_bicg_Pipeline_lp3_fu_891_ap_done),.ap_idle(grp_bicg_Pipeline_lp3_fu_891_ap_idle),.ap_ready(grp_bicg_Pipeline_lp3_fu_891_ap_ready),.buff_q_out_address0(grp_bicg_Pipeline_lp3_fu_891_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_q_out_ce0),.buff_q_out_we0(grp_bicg_Pipeline_lp3_fu_891_buff_q_out_we0),.buff_q_out_d0(grp_bicg_Pipeline_lp3_fu_891_buff_q_out_d0),.buff_q_out_address1(grp_bicg_Pipeline_lp3_fu_891_buff_q_out_address1),.buff_q_out_ce1(grp_bicg_Pipeline_lp3_fu_891_buff_q_out_ce1),.buff_q_out_q1(buff_q_out_q1),.buff_A_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_address0),.buff_A_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_ce0),.buff_A_q0(buff_A_q0),.p_reload258(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out63),.buff_A_1_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_1_address0),.buff_A_1_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_1_ce0),.buff_A_1_q0(buff_A_1_q0),.p_reload257(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out62),.buff_A_2_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_2_address0),.buff_A_2_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_2_ce0),.buff_A_2_q0(buff_A_2_q0),.p_reload256(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out61),.buff_A_3_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_3_address0),.buff_A_3_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_3_ce0),.buff_A_3_q0(buff_A_3_q0),.p_reload255(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out60),.buff_A_4_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_4_address0),.buff_A_4_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_4_ce0),.buff_A_4_q0(buff_A_4_q0),.p_reload254(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out59),.buff_A_5_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_5_address0),.buff_A_5_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_5_ce0),.buff_A_5_q0(buff_A_5_q0),.p_reload253(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out58),.buff_A_6_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_6_address0),.buff_A_6_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_6_ce0),.buff_A_6_q0(buff_A_6_q0),.p_reload252(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out57),.buff_A_7_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_7_address0),.buff_A_7_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_7_ce0),.buff_A_7_q0(buff_A_7_q0),.p_reload251(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out56),.buff_A_8_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_8_address0),.buff_A_8_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_8_ce0),.buff_A_8_q0(buff_A_8_q0),.p_reload250(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out55),.buff_A_9_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_9_address0),.buff_A_9_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_9_ce0),.buff_A_9_q0(buff_A_9_q0),.p_reload249(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out54),.buff_A_10_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_10_address0),.buff_A_10_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_10_ce0),.buff_A_10_q0(buff_A_10_q0),.p_reload248(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out53),.buff_A_11_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_11_address0),.buff_A_11_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_11_ce0),.buff_A_11_q0(buff_A_11_q0),.p_reload247(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out52),.buff_A_12_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_12_address0),.buff_A_12_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_12_ce0),.buff_A_12_q0(buff_A_12_q0),.p_reload246(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out51),.buff_A_13_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_13_address0),.buff_A_13_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_13_ce0),.buff_A_13_q0(buff_A_13_q0),.p_reload245(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out50),.buff_A_14_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_14_address0),.buff_A_14_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_14_ce0),.buff_A_14_q0(buff_A_14_q0),.p_reload244(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out49),.buff_A_15_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_15_address0),.buff_A_15_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_15_ce0),.buff_A_15_q0(buff_A_15_q0),.p_reload243(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out48),.buff_A_16_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_16_address0),.buff_A_16_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_16_ce0),.buff_A_16_q0(buff_A_16_q0),.p_reload242(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out47),.buff_A_17_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_17_address0),.buff_A_17_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_17_ce0),.buff_A_17_q0(buff_A_17_q0),.p_reload241(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out46),.buff_A_18_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_18_address0),.buff_A_18_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_18_ce0),.buff_A_18_q0(buff_A_18_q0),.p_reload240(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out45),.buff_A_19_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_19_address0),.buff_A_19_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_19_ce0),.buff_A_19_q0(buff_A_19_q0),.p_reload239(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out44),.buff_A_20_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_20_address0),.buff_A_20_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_20_ce0),.buff_A_20_q0(buff_A_20_q0),.p_reload238(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out43),.buff_A_21_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_21_address0),.buff_A_21_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_21_ce0),.buff_A_21_q0(buff_A_21_q0),.p_reload237(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out42),.buff_A_22_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_22_address0),.buff_A_22_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_22_ce0),.buff_A_22_q0(buff_A_22_q0),.p_reload236(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out41),.buff_A_23_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_23_address0),.buff_A_23_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_23_ce0),.buff_A_23_q0(buff_A_23_q0),.p_reload235(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out40),.buff_A_24_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_24_address0),.buff_A_24_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_24_ce0),.buff_A_24_q0(buff_A_24_q0),.p_reload234(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out39),.buff_A_25_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_25_address0),.buff_A_25_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_25_ce0),.buff_A_25_q0(buff_A_25_q0),.p_reload233(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out38),.buff_A_26_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_26_address0),.buff_A_26_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_26_ce0),.buff_A_26_q0(buff_A_26_q0),.p_reload232(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out37),.buff_A_27_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_27_address0),.buff_A_27_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_27_ce0),.buff_A_27_q0(buff_A_27_q0),.p_reload231(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out36),.buff_A_28_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_28_address0),.buff_A_28_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_28_ce0),.buff_A_28_q0(buff_A_28_q0),.p_reload230(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out35),.buff_A_29_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_29_address0),.buff_A_29_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_29_ce0),.buff_A_29_q0(buff_A_29_q0),.p_reload229(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out34),.buff_A_30_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_30_address0),.buff_A_30_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_30_ce0),.buff_A_30_q0(buff_A_30_q0),.p_reload228(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out33),.buff_A_31_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_31_address0),.buff_A_31_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_31_ce0),.buff_A_31_q0(buff_A_31_q0),.p_reload227(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out32),.buff_A_32_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_32_address0),.buff_A_32_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_32_ce0),.buff_A_32_q0(buff_A_32_q0),.p_reload226(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out31),.buff_A_33_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_33_address0),.buff_A_33_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_33_ce0),.buff_A_33_q0(buff_A_33_q0),.p_reload225(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out30),.buff_A_34_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_34_address0),.buff_A_34_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_34_ce0),.buff_A_34_q0(buff_A_34_q0),.p_reload224(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out29),.buff_A_35_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_35_address0),.buff_A_35_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_35_ce0),.buff_A_35_q0(buff_A_35_q0),.p_reload223(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out28),.buff_A_36_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_36_address0),.buff_A_36_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_36_ce0),.buff_A_36_q0(buff_A_36_q0),.p_reload222(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out27),.buff_A_37_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_37_address0),.buff_A_37_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_37_ce0),.buff_A_37_q0(buff_A_37_q0),.p_reload221(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out26),.buff_A_38_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_38_address0),.buff_A_38_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_38_ce0),.buff_A_38_q0(buff_A_38_q0),.p_reload220(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out25),.buff_A_39_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_39_address0),.buff_A_39_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_39_ce0),.buff_A_39_q0(buff_A_39_q0),.p_reload219(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out24),.buff_A_40_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_40_address0),.buff_A_40_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_40_ce0),.buff_A_40_q0(buff_A_40_q0),.p_reload218(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out23),.buff_A_41_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_41_address0),.buff_A_41_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_41_ce0),.buff_A_41_q0(buff_A_41_q0),.p_reload217(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out22),.buff_A_42_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_42_address0),.buff_A_42_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_42_ce0),.buff_A_42_q0(buff_A_42_q0),.p_reload216(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out21),.buff_A_43_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_43_address0),.buff_A_43_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_43_ce0),.buff_A_43_q0(buff_A_43_q0),.p_reload215(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out20),.buff_A_44_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_44_address0),.buff_A_44_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_44_ce0),.buff_A_44_q0(buff_A_44_q0),.p_reload214(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out19),.buff_A_45_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_45_address0),.buff_A_45_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_45_ce0),.buff_A_45_q0(buff_A_45_q0),.p_reload213(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out18),.buff_A_46_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_46_address0),.buff_A_46_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_46_ce0),.buff_A_46_q0(buff_A_46_q0),.p_reload212(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out17),.buff_A_47_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_47_address0),.buff_A_47_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_47_ce0),.buff_A_47_q0(buff_A_47_q0),.p_reload211(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out16),.buff_A_48_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_48_address0),.buff_A_48_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_48_ce0),.buff_A_48_q0(buff_A_48_q0),.p_reload210(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out15),.buff_A_49_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_49_address0),.buff_A_49_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_49_ce0),.buff_A_49_q0(buff_A_49_q0),.p_reload209(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out14),.buff_A_50_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_50_address0),.buff_A_50_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_50_ce0),.buff_A_50_q0(buff_A_50_q0),.p_reload208(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out13),.buff_A_51_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_51_address0),.buff_A_51_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_51_ce0),.buff_A_51_q0(buff_A_51_q0),.p_reload207(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out12),.buff_A_52_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_52_address0),.buff_A_52_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_52_ce0),.buff_A_52_q0(buff_A_52_q0),.p_reload206(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out11),.buff_A_53_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_53_address0),.buff_A_53_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_53_ce0),.buff_A_53_q0(buff_A_53_q0),.p_reload205(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out10),.buff_A_54_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_54_address0),.buff_A_54_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_54_ce0),.buff_A_54_q0(buff_A_54_q0),.p_reload204(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out9),.buff_A_55_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_55_address0),.buff_A_55_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_55_ce0),.buff_A_55_q0(buff_A_55_q0),.p_reload203(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out8),.buff_A_56_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_56_address0),.buff_A_56_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_56_ce0),.buff_A_56_q0(buff_A_56_q0),.p_reload202(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out7),.buff_A_57_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_57_address0),.buff_A_57_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_57_ce0),.buff_A_57_q0(buff_A_57_q0),.p_reload201(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out6),.buff_A_58_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_58_address0),.buff_A_58_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_58_ce0),.buff_A_58_q0(buff_A_58_q0),.p_reload200(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out5),.buff_A_59_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_59_address0),.buff_A_59_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_59_ce0),.buff_A_59_q0(buff_A_59_q0),.p_reload199(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out4),.buff_A_60_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_60_address0),.buff_A_60_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_60_ce0),.buff_A_60_q0(buff_A_60_q0),.p_reload198(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out3),.buff_A_61_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_61_address0),.buff_A_61_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_61_ce0),.buff_A_61_q0(buff_A_61_q0),.p_reload197(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out2),.buff_A_62_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_62_address0),.buff_A_62_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_62_ce0),.buff_A_62_q0(buff_A_62_q0),.p_reload196(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out1),.buff_A_63_address0(grp_bicg_Pipeline_lp3_fu_891_buff_A_63_address0),.buff_A_63_ce0(grp_bicg_Pipeline_lp3_fu_891_buff_A_63_ce0),.buff_A_63_q0(buff_A_63_q0),.p_reload(grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_out),.grp_fu_1873_p_din0(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1873_p_din0),.grp_fu_1873_p_din1(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1873_p_din1),.grp_fu_1873_p_opcode(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1873_p_opcode),.grp_fu_1873_p_dout0(grp_fu_1873_p2),.grp_fu_1873_p_ce(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1873_p_ce),.grp_fu_1877_p_din0(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1877_p_din0),.grp_fu_1877_p_din1(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1877_p_din1),.grp_fu_1877_p_opcode(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1877_p_opcode),.grp_fu_1877_p_dout0(grp_fu_1877_p2),.grp_fu_1877_p_ce(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1877_p_ce),.grp_fu_1881_p_din0(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1881_p_din0),.grp_fu_1881_p_din1(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1881_p_din1),.grp_fu_1881_p_opcode(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1881_p_opcode),.grp_fu_1881_p_dout0(grp_fu_1881_p2),.grp_fu_1881_p_ce(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1881_p_ce),.grp_fu_1885_p_din0(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1885_p_din0),.grp_fu_1885_p_din1(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1885_p_din1),.grp_fu_1885_p_opcode(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1885_p_opcode),.grp_fu_1885_p_dout0(grp_fu_1885_p2),.grp_fu_1885_p_ce(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1885_p_ce),.grp_fu_1889_p_din0(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1889_p_din0),.grp_fu_1889_p_din1(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1889_p_din1),.grp_fu_1889_p_dout0(grp_fu_1889_p2),.grp_fu_1889_p_ce(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1889_p_ce),.grp_fu_1893_p_din0(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1893_p_din0),.grp_fu_1893_p_din1(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1893_p_din1),.grp_fu_1893_p_dout0(grp_fu_1893_p2),.grp_fu_1893_p_ce(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1893_p_ce),.grp_fu_1897_p_din0(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1897_p_din0),.grp_fu_1897_p_din1(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1897_p_din1),.grp_fu_1897_p_dout0(grp_fu_1897_p2),.grp_fu_1897_p_ce(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1897_p_ce),.grp_fu_1901_p_din0(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1901_p_din0),.grp_fu_1901_p_din1(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1901_p_din1),.grp_fu_1901_p_dout0(grp_fu_1901_p2),.grp_fu_1901_p_ce(grp_bicg_Pipeline_lp3_fu_891_grp_fu_1901_p_ce));
bicg_bicg_Pipeline_lpwr grp_bicg_Pipeline_lpwr_fu_1024(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_Pipeline_lpwr_fu_1024_ap_start),.ap_done(grp_bicg_Pipeline_lpwr_fu_1024_ap_done),.ap_idle(grp_bicg_Pipeline_lpwr_fu_1024_ap_idle),.ap_ready(grp_bicg_Pipeline_lpwr_fu_1024_ap_ready),.s_out_din(grp_bicg_Pipeline_lpwr_fu_1024_s_out_din),.s_out_full_n(s_out_full_n),.s_out_write(grp_bicg_Pipeline_lpwr_fu_1024_s_out_write),.q_out_din(grp_bicg_Pipeline_lpwr_fu_1024_q_out_din),.q_out_full_n(q_out_full_n),.q_out_write(grp_bicg_Pipeline_lpwr_fu_1024_q_out_write),.buff_s_out_address0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_address0),.buff_s_out_ce0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_ce0),.buff_s_out_q0(buff_s_out_q0),.buff_s_out_1_address0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_1_address0),.buff_s_out_1_ce0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_1_ce0),.buff_s_out_1_q0(buff_s_out_1_q0),.buff_s_out_2_address0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_2_address0),.buff_s_out_2_ce0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_2_ce0),.buff_s_out_2_q0(buff_s_out_2_q0),.buff_s_out_3_address0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_3_address0),.buff_s_out_3_ce0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_3_ce0),.buff_s_out_3_q0(buff_s_out_3_q0),.buff_s_out_4_address0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_4_address0),.buff_s_out_4_ce0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_4_ce0),.buff_s_out_4_q0(buff_s_out_4_q0),.buff_s_out_5_address0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_5_address0),.buff_s_out_5_ce0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_5_ce0),.buff_s_out_5_q0(buff_s_out_5_q0),.buff_s_out_6_address0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_6_address0),.buff_s_out_6_ce0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_6_ce0),.buff_s_out_6_q0(buff_s_out_6_q0),.buff_s_out_7_address0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_7_address0),.buff_s_out_7_ce0(grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_7_ce0),.buff_s_out_7_q0(buff_s_out_7_q0),.buff_q_out_address0(grp_bicg_Pipeline_lpwr_fu_1024_buff_q_out_address0),.buff_q_out_ce0(grp_bicg_Pipeline_lpwr_fu_1024_buff_q_out_ce0),.buff_q_out_q0(buff_q_out_q0));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U502(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1873_p0),.din1(grp_fu_1873_p1),.ce(grp_fu_1873_ce),.dout(grp_fu_1873_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U503(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1877_p0),.din1(grp_fu_1877_p1),.ce(grp_fu_1877_ce),.dout(grp_fu_1877_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U504(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1881_p0),.din1(grp_fu_1881_p1),.ce(grp_fu_1881_ce),.dout(grp_fu_1881_p2));
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U505(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1885_p0),.din1(grp_fu_1885_p1),.ce(grp_fu_1885_ce),.dout(grp_fu_1885_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U506(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1889_p0),.din1(grp_fu_1889_p1),.ce(grp_fu_1889_ce),.dout(grp_fu_1889_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U507(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1893_p0),.din1(grp_fu_1893_p1),.ce(grp_fu_1893_ce),.dout(grp_fu_1893_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U508(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1897_p0),.din1(grp_fu_1897_p1),.ce(grp_fu_1897_ce),.dout(grp_fu_1897_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U509(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1901_p0),.din1(grp_fu_1901_p1),.ce(grp_fu_1901_ce),.dout(grp_fu_1901_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp1_lp2_fu_814_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_bicg_Pipeline_lp1_lp2_fu_814_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp1_lp2_fu_814_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp1_lp2_fu_814_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lp3_fu_891_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_bicg_Pipeline_lp3_fu_891_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lp3_fu_891_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lp3_fu_891_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_Pipeline_lpwr_fu_1024_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_bicg_Pipeline_lpwr_fu_1024_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_Pipeline_lpwr_fu_1024_ap_ready == 1'b1)) begin
            grp_bicg_Pipeline_lpwr_fu_1024_ap_start_reg <= 1'b0;
        end
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp1_lp2_fu_814_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lp3_fu_891_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_bicg_Pipeline_lpwr_fu_1024_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (grp_bicg_Pipeline_lpwr_fu_1024_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (grp_bicg_Pipeline_lpwr_fu_1024_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_10_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_10_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_10_address0;
    end else begin
        buff_A_10_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_10_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_10_ce0;
    end else begin
        buff_A_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_10_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_10_we0;
    end else begin
        buff_A_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_11_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_11_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_11_address0;
    end else begin
        buff_A_11_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_11_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_11_ce0;
    end else begin
        buff_A_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_11_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_11_we0;
    end else begin
        buff_A_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_12_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_12_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_12_address0;
    end else begin
        buff_A_12_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_12_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_12_ce0;
    end else begin
        buff_A_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_12_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_12_we0;
    end else begin
        buff_A_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_13_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_13_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_13_address0;
    end else begin
        buff_A_13_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_13_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_13_ce0;
    end else begin
        buff_A_13_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_13_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_13_we0;
    end else begin
        buff_A_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_14_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_14_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_14_address0;
    end else begin
        buff_A_14_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_14_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_14_ce0;
    end else begin
        buff_A_14_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_14_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_14_we0;
    end else begin
        buff_A_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_15_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_15_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_15_address0;
    end else begin
        buff_A_15_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_15_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_15_ce0;
    end else begin
        buff_A_15_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_15_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_15_we0;
    end else begin
        buff_A_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_16_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_16_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_16_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_16_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_16_address0;
    end else begin
        buff_A_16_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_16_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_16_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_16_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_16_ce0;
    end else begin
        buff_A_16_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_16_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_16_we0;
    end else begin
        buff_A_16_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_17_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_17_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_17_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_17_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_17_address0;
    end else begin
        buff_A_17_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_17_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_17_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_17_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_17_ce0;
    end else begin
        buff_A_17_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_17_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_17_we0;
    end else begin
        buff_A_17_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_18_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_18_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_18_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_18_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_18_address0;
    end else begin
        buff_A_18_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_18_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_18_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_18_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_18_ce0;
    end else begin
        buff_A_18_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_18_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_18_we0;
    end else begin
        buff_A_18_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_19_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_19_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_19_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_19_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_19_address0;
    end else begin
        buff_A_19_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_19_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_19_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_19_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_19_ce0;
    end else begin
        buff_A_19_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_19_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_19_we0;
    end else begin
        buff_A_19_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_1_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_1_address0;
    end else begin
        buff_A_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_1_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_1_ce0;
    end else begin
        buff_A_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_1_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_1_we0;
    end else begin
        buff_A_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_20_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_20_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_20_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_20_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_20_address0;
    end else begin
        buff_A_20_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_20_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_20_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_20_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_20_ce0;
    end else begin
        buff_A_20_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_20_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_20_we0;
    end else begin
        buff_A_20_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_21_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_21_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_21_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_21_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_21_address0;
    end else begin
        buff_A_21_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_21_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_21_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_21_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_21_ce0;
    end else begin
        buff_A_21_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_21_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_21_we0;
    end else begin
        buff_A_21_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_22_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_22_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_22_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_22_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_22_address0;
    end else begin
        buff_A_22_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_22_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_22_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_22_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_22_ce0;
    end else begin
        buff_A_22_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_22_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_22_we0;
    end else begin
        buff_A_22_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_23_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_23_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_23_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_23_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_23_address0;
    end else begin
        buff_A_23_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_23_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_23_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_23_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_23_ce0;
    end else begin
        buff_A_23_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_23_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_23_we0;
    end else begin
        buff_A_23_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_24_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_24_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_24_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_24_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_24_address0;
    end else begin
        buff_A_24_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_24_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_24_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_24_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_24_ce0;
    end else begin
        buff_A_24_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_24_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_24_we0;
    end else begin
        buff_A_24_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_25_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_25_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_25_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_25_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_25_address0;
    end else begin
        buff_A_25_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_25_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_25_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_25_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_25_ce0;
    end else begin
        buff_A_25_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_25_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_25_we0;
    end else begin
        buff_A_25_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_26_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_26_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_26_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_26_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_26_address0;
    end else begin
        buff_A_26_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_26_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_26_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_26_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_26_ce0;
    end else begin
        buff_A_26_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_26_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_26_we0;
    end else begin
        buff_A_26_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_27_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_27_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_27_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_27_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_27_address0;
    end else begin
        buff_A_27_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_27_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_27_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_27_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_27_ce0;
    end else begin
        buff_A_27_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_27_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_27_we0;
    end else begin
        buff_A_27_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_28_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_28_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_28_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_28_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_28_address0;
    end else begin
        buff_A_28_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_28_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_28_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_28_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_28_ce0;
    end else begin
        buff_A_28_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_28_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_28_we0;
    end else begin
        buff_A_28_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_29_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_29_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_29_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_29_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_29_address0;
    end else begin
        buff_A_29_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_29_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_29_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_29_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_29_ce0;
    end else begin
        buff_A_29_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_29_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_29_we0;
    end else begin
        buff_A_29_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_2_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_2_address0;
    end else begin
        buff_A_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_2_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_2_ce0;
    end else begin
        buff_A_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_2_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_2_we0;
    end else begin
        buff_A_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_30_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_30_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_30_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_30_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_30_address0;
    end else begin
        buff_A_30_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_30_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_30_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_30_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_30_ce0;
    end else begin
        buff_A_30_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_30_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_30_we0;
    end else begin
        buff_A_30_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_31_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_31_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_31_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_31_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_31_address0;
    end else begin
        buff_A_31_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_31_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_31_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_31_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_31_ce0;
    end else begin
        buff_A_31_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_31_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_31_we0;
    end else begin
        buff_A_31_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_32_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_32_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_32_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_32_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_32_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_32_address0;
    end else begin
        buff_A_32_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_32_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_32_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_32_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_32_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_32_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_32_ce0;
    end else begin
        buff_A_32_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_32_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_32_we0;
    end else begin
        buff_A_32_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_33_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_33_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_33_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_33_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_33_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_33_address0;
    end else begin
        buff_A_33_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_33_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_33_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_33_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_33_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_33_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_33_ce0;
    end else begin
        buff_A_33_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_33_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_33_we0;
    end else begin
        buff_A_33_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_34_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_34_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_34_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_34_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_34_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_34_address0;
    end else begin
        buff_A_34_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_34_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_34_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_34_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_34_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_34_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_34_ce0;
    end else begin
        buff_A_34_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_34_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_34_we0;
    end else begin
        buff_A_34_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_35_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_35_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_35_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_35_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_35_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_35_address0;
    end else begin
        buff_A_35_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_35_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_35_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_35_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_35_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_35_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_35_ce0;
    end else begin
        buff_A_35_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_35_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_35_we0;
    end else begin
        buff_A_35_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_36_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_36_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_36_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_36_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_36_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_36_address0;
    end else begin
        buff_A_36_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_36_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_36_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_36_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_36_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_36_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_36_ce0;
    end else begin
        buff_A_36_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_36_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_36_we0;
    end else begin
        buff_A_36_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_37_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_37_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_37_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_37_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_37_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_37_address0;
    end else begin
        buff_A_37_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_37_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_37_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_37_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_37_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_37_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_37_ce0;
    end else begin
        buff_A_37_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_37_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_37_we0;
    end else begin
        buff_A_37_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_38_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_38_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_38_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_38_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_38_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_38_address0;
    end else begin
        buff_A_38_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_38_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_38_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_38_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_38_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_38_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_38_ce0;
    end else begin
        buff_A_38_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_38_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_38_we0;
    end else begin
        buff_A_38_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_39_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_39_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_39_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_39_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_39_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_39_address0;
    end else begin
        buff_A_39_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_39_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_39_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_39_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_39_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_39_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_39_ce0;
    end else begin
        buff_A_39_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_39_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_39_we0;
    end else begin
        buff_A_39_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_3_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_3_address0;
    end else begin
        buff_A_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_3_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_3_ce0;
    end else begin
        buff_A_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_3_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_3_we0;
    end else begin
        buff_A_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_40_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_40_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_40_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_40_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_40_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_40_address0;
    end else begin
        buff_A_40_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_40_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_40_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_40_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_40_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_40_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_40_ce0;
    end else begin
        buff_A_40_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_40_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_40_we0;
    end else begin
        buff_A_40_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_41_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_41_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_41_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_41_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_41_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_41_address0;
    end else begin
        buff_A_41_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_41_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_41_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_41_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_41_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_41_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_41_ce0;
    end else begin
        buff_A_41_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_41_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_41_we0;
    end else begin
        buff_A_41_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_42_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_42_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_42_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_42_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_42_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_42_address0;
    end else begin
        buff_A_42_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_42_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_42_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_42_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_42_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_42_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_42_ce0;
    end else begin
        buff_A_42_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_42_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_42_we0;
    end else begin
        buff_A_42_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_43_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_43_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_43_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_43_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_43_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_43_address0;
    end else begin
        buff_A_43_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_43_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_43_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_43_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_43_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_43_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_43_ce0;
    end else begin
        buff_A_43_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_43_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_43_we0;
    end else begin
        buff_A_43_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_44_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_44_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_44_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_44_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_44_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_44_address0;
    end else begin
        buff_A_44_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_44_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_44_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_44_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_44_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_44_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_44_ce0;
    end else begin
        buff_A_44_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_44_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_44_we0;
    end else begin
        buff_A_44_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_45_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_45_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_45_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_45_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_45_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_45_address0;
    end else begin
        buff_A_45_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_45_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_45_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_45_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_45_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_45_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_45_ce0;
    end else begin
        buff_A_45_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_45_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_45_we0;
    end else begin
        buff_A_45_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_46_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_46_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_46_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_46_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_46_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_46_address0;
    end else begin
        buff_A_46_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_46_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_46_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_46_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_46_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_46_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_46_ce0;
    end else begin
        buff_A_46_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_46_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_46_we0;
    end else begin
        buff_A_46_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_47_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_47_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_47_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_47_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_47_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_47_address0;
    end else begin
        buff_A_47_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_47_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_47_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_47_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_47_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_47_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_47_ce0;
    end else begin
        buff_A_47_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_47_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_47_we0;
    end else begin
        buff_A_47_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_48_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_48_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_48_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_48_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_48_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_48_address0;
    end else begin
        buff_A_48_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_48_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_48_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_48_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_48_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_48_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_48_ce0;
    end else begin
        buff_A_48_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_48_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_48_we0;
    end else begin
        buff_A_48_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_49_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_49_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_49_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_49_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_49_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_49_address0;
    end else begin
        buff_A_49_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_49_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_49_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_49_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_49_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_49_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_49_ce0;
    end else begin
        buff_A_49_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_49_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_49_we0;
    end else begin
        buff_A_49_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_4_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_4_address0;
    end else begin
        buff_A_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_4_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_4_ce0;
    end else begin
        buff_A_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_4_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_4_we0;
    end else begin
        buff_A_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_50_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_50_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_50_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_50_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_50_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_50_address0;
    end else begin
        buff_A_50_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_50_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_50_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_50_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_50_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_50_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_50_ce0;
    end else begin
        buff_A_50_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_50_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_50_we0;
    end else begin
        buff_A_50_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_51_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_51_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_51_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_51_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_51_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_51_address0;
    end else begin
        buff_A_51_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_51_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_51_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_51_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_51_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_51_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_51_ce0;
    end else begin
        buff_A_51_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_51_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_51_we0;
    end else begin
        buff_A_51_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_52_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_52_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_52_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_52_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_52_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_52_address0;
    end else begin
        buff_A_52_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_52_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_52_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_52_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_52_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_52_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_52_ce0;
    end else begin
        buff_A_52_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_52_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_52_we0;
    end else begin
        buff_A_52_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_53_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_53_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_53_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_53_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_53_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_53_address0;
    end else begin
        buff_A_53_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_53_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_53_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_53_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_53_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_53_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_53_ce0;
    end else begin
        buff_A_53_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_53_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_53_we0;
    end else begin
        buff_A_53_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_54_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_54_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_54_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_54_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_54_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_54_address0;
    end else begin
        buff_A_54_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_54_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_54_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_54_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_54_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_54_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_54_ce0;
    end else begin
        buff_A_54_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_54_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_54_we0;
    end else begin
        buff_A_54_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_55_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_55_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_55_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_55_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_55_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_55_address0;
    end else begin
        buff_A_55_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_55_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_55_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_55_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_55_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_55_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_55_ce0;
    end else begin
        buff_A_55_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_55_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_55_we0;
    end else begin
        buff_A_55_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_56_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_56_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_56_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_56_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_56_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_56_address0;
    end else begin
        buff_A_56_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_56_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_56_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_56_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_56_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_56_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_56_ce0;
    end else begin
        buff_A_56_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_56_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_56_we0;
    end else begin
        buff_A_56_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_57_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_57_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_57_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_57_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_57_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_57_address0;
    end else begin
        buff_A_57_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_57_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_57_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_57_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_57_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_57_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_57_ce0;
    end else begin
        buff_A_57_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_57_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_57_we0;
    end else begin
        buff_A_57_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_58_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_58_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_58_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_58_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_58_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_58_address0;
    end else begin
        buff_A_58_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_58_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_58_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_58_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_58_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_58_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_58_ce0;
    end else begin
        buff_A_58_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_58_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_58_we0;
    end else begin
        buff_A_58_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_59_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_59_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_59_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_59_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_59_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_59_address0;
    end else begin
        buff_A_59_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_59_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_59_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_59_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_59_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_59_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_59_ce0;
    end else begin
        buff_A_59_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_59_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_59_we0;
    end else begin
        buff_A_59_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_5_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_5_address0;
    end else begin
        buff_A_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_5_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_5_ce0;
    end else begin
        buff_A_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_5_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_5_we0;
    end else begin
        buff_A_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_60_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_60_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_60_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_60_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_60_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_60_address0;
    end else begin
        buff_A_60_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_60_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_60_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_60_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_60_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_60_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_60_ce0;
    end else begin
        buff_A_60_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_60_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_60_we0;
    end else begin
        buff_A_60_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_61_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_61_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_61_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_61_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_61_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_61_address0;
    end else begin
        buff_A_61_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_61_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_61_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_61_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_61_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_61_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_61_ce0;
    end else begin
        buff_A_61_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_61_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_61_we0;
    end else begin
        buff_A_61_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_62_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_62_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_62_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_62_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_62_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_62_address0;
    end else begin
        buff_A_62_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_62_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_62_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_62_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_62_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_62_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_62_ce0;
    end else begin
        buff_A_62_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_62_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_62_we0;
    end else begin
        buff_A_62_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_63_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_63_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_63_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_63_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_63_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_63_address0;
    end else begin
        buff_A_63_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_63_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_63_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_63_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_63_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_63_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_63_ce0;
    end else begin
        buff_A_63_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_63_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_63_we0;
    end else begin
        buff_A_63_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_6_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_6_address0;
    end else begin
        buff_A_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_6_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_6_ce0;
    end else begin
        buff_A_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_6_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_6_we0;
    end else begin
        buff_A_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_7_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_7_address0;
    end else begin
        buff_A_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_7_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_7_ce0;
    end else begin
        buff_A_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_7_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_7_we0;
    end else begin
        buff_A_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_8_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_8_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_8_address0;
    end else begin
        buff_A_8_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_8_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_8_ce0;
    end else begin
        buff_A_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_8_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_8_we0;
    end else begin
        buff_A_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_9_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_9_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_9_address0;
    end else begin
        buff_A_9_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_9_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_9_ce0;
    end else begin
        buff_A_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_9_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_9_we0;
    end else begin
        buff_A_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_address0;
    end else begin
        buff_A_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_ce0;
    end else begin
        buff_A_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_A_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_A_we0;
    end else begin
        buff_A_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lp3_fu_891_buff_q_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_q_out_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_q_out_address0;
    end else begin
        buff_q_out_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lp3_fu_891_buff_q_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_q_out_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_q_out_ce0;
    end else begin
        buff_q_out_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_q_out_ce1 = grp_bicg_Pipeline_lp3_fu_891_buff_q_out_ce1;
    end else begin
        buff_q_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lp3_fu_891_buff_q_out_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_q_out_d0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_q_out_d0;
    end else begin
        buff_q_out_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lp3_fu_891_buff_q_out_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_q_out_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_q_out_we0;
    end else begin
        buff_q_out_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_r_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_r_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_r_address0;
    end else begin
        buff_r_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_r_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_r_ce0;
    end else begin
        buff_r_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_r_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_r_we0;
    end else begin
        buff_r_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_1_address0;
    end else begin
        buff_s_out_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_1_ce0;
    end else begin
        buff_s_out_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_1_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_ce1;
    end else begin
        buff_s_out_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_1_d0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_d0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_1_d0;
    end else begin
        buff_s_out_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_1_we0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_1_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_1_we0;
    end else begin
        buff_s_out_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_2_address0;
    end else begin
        buff_s_out_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_2_ce0;
    end else begin
        buff_s_out_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_2_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_ce1;
    end else begin
        buff_s_out_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_2_d0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_d0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_2_d0;
    end else begin
        buff_s_out_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_2_we0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_2_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_2_we0;
    end else begin
        buff_s_out_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_3_address0;
    end else begin
        buff_s_out_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_3_ce0;
    end else begin
        buff_s_out_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_3_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_ce1;
    end else begin
        buff_s_out_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_3_d0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_d0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_3_d0;
    end else begin
        buff_s_out_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_3_we0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_3_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_3_we0;
    end else begin
        buff_s_out_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_4_address0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_4_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_4_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_4_address0;
    end else begin
        buff_s_out_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_4_ce0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_4_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_4_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_4_ce0;
    end else begin
        buff_s_out_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_4_d0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_4_d0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_4_d0;
    end else begin
        buff_s_out_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_4_we0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_4_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_4_we0;
    end else begin
        buff_s_out_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_5_address0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_5_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_5_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_5_address0;
    end else begin
        buff_s_out_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_5_ce0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_5_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_5_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_5_ce0;
    end else begin
        buff_s_out_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_5_d0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_5_d0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_5_d0;
    end else begin
        buff_s_out_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_5_we0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_5_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_5_we0;
    end else begin
        buff_s_out_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_6_address0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_6_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_6_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_6_address0;
    end else begin
        buff_s_out_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_6_ce0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_6_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_6_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_6_ce0;
    end else begin
        buff_s_out_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_6_d0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_6_d0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_6_d0;
    end else begin
        buff_s_out_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_6_we0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_6_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_6_we0;
    end else begin
        buff_s_out_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_7_address0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_7_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_7_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_7_address0;
    end else begin
        buff_s_out_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_7_ce0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_7_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_7_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_7_ce0;
    end else begin
        buff_s_out_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_7_d0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_7_d0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_7_d0;
    end else begin
        buff_s_out_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_7_we0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_7_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_7_we0;
    end else begin
        buff_s_out_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_address0;
    end else begin
        buff_s_out_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lpwr_fu_1024_buff_s_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_ce0;
    end else begin
        buff_s_out_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_ce1 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_ce1;
    end else begin
        buff_s_out_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_d0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_d0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_d0;
    end else begin
        buff_s_out_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        buff_s_out_we0 = grp_bicg_Pipeline_lp1_lp2_fu_814_buff_s_out_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buff_s_out_we0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_buff_s_out_we0;
    end else begin
        buff_s_out_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1873_ce = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1873_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1873_ce = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1873_p_ce;
    end else begin
        grp_fu_1873_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1873_p0 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1873_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1873_p0 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1873_p_din0;
    end else begin
        grp_fu_1873_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1873_p1 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1873_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1873_p1 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1873_p_din1;
    end else begin
        grp_fu_1873_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1877_ce = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1877_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1877_ce = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1877_p_ce;
    end else begin
        grp_fu_1877_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1877_p0 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1877_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1877_p0 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1877_p_din0;
    end else begin
        grp_fu_1877_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1877_p1 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1877_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1877_p1 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1877_p_din1;
    end else begin
        grp_fu_1877_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1881_ce = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1881_ce = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1881_p_ce;
    end else begin
        grp_fu_1881_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1881_p0 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1881_p0 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1881_p_din0;
    end else begin
        grp_fu_1881_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1881_p1 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1881_p1 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1881_p_din1;
    end else begin
        grp_fu_1881_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1885_ce = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1885_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1885_ce = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1885_p_ce;
    end else begin
        grp_fu_1885_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1885_p0 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1885_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1885_p0 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1885_p_din0;
    end else begin
        grp_fu_1885_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1885_p1 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1885_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1885_p1 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1885_p_din1;
    end else begin
        grp_fu_1885_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1889_ce = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1889_ce = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1889_p_ce;
    end else begin
        grp_fu_1889_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1889_p0 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1889_p0 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1889_p_din0;
    end else begin
        grp_fu_1889_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1889_p1 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1889_p1 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1889_p_din1;
    end else begin
        grp_fu_1889_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1893_ce = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1893_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1893_ce = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1893_p_ce;
    end else begin
        grp_fu_1893_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1893_p0 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1893_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1893_p0 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1893_p_din0;
    end else begin
        grp_fu_1893_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1893_p1 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1893_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1893_p1 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1893_p_din1;
    end else begin
        grp_fu_1893_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1897_ce = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1897_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1897_ce = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1897_p_ce;
    end else begin
        grp_fu_1897_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1897_p0 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1897_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1897_p0 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1897_p_din0;
    end else begin
        grp_fu_1897_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1897_p1 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1897_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1897_p1 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1897_p_din1;
    end else begin
        grp_fu_1897_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1901_ce = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1901_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1901_ce = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1901_p_ce;
    end else begin
        grp_fu_1901_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1901_p0 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1901_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1901_p0 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1901_p_din0;
    end else begin
        grp_fu_1901_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_1901_p1 = grp_bicg_Pipeline_lp3_fu_891_grp_fu_1901_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_1901_p1 = grp_bicg_Pipeline_lp1_lp2_fu_814_grp_fu_1901_p_din1;
    end else begin
        grp_fu_1901_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        q_out_write = grp_bicg_Pipeline_lpwr_fu_1024_q_out_write;
    end else begin
        q_out_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        s_out_write = grp_bicg_Pipeline_lpwr_fu_1024_s_out_write;
    end else begin
        s_out_write = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_bicg_Pipeline_lp1_lp2_fu_814_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_bicg_Pipeline_lp3_fu_891_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_bicg_Pipeline_lpwr_fu_1024_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_A_address0;
assign A_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_A_ce0;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign grp_bicg_Pipeline_lp1_lp2_fu_814_ap_start = grp_bicg_Pipeline_lp1_lp2_fu_814_ap_start_reg;
assign grp_bicg_Pipeline_lp3_fu_891_ap_start = grp_bicg_Pipeline_lp3_fu_891_ap_start_reg;
assign grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_start = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_ap_start_reg;
assign grp_bicg_Pipeline_lpwr_fu_1024_ap_start = grp_bicg_Pipeline_lpwr_fu_1024_ap_start_reg;
assign p_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_address0;
assign p_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_p_ce0;
assign q_out_din = grp_bicg_Pipeline_lpwr_fu_1024_q_out_din;
assign r_address0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_r_address0;
assign r_ce0 = grp_bicg_Pipeline_lprd_1_lprd_2_fu_592_r_ce0;
assign s_out_din = grp_bicg_Pipeline_lpwr_fu_1024_s_out_din;
endmodule 