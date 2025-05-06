
module bicg_bicg_Pipeline_lprd_1_lprd_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_we0,buff_A_d0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_we0,buff_A_1_d0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_we0,buff_A_2_d0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_we0,buff_A_3_d0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_we0,buff_A_4_d0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_we0,buff_A_5_d0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_we0,buff_A_6_d0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_we0,buff_A_7_d0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_we0,buff_A_8_d0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_we0,buff_A_9_d0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_we0,buff_A_10_d0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_we0,buff_A_11_d0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_we0,buff_A_12_d0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_we0,buff_A_13_d0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_we0,buff_A_14_d0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_we0,buff_A_15_d0,buff_A_16_address0,buff_A_16_ce0,buff_A_16_we0,buff_A_16_d0,buff_A_17_address0,buff_A_17_ce0,buff_A_17_we0,buff_A_17_d0,buff_A_18_address0,buff_A_18_ce0,buff_A_18_we0,buff_A_18_d0,buff_A_19_address0,buff_A_19_ce0,buff_A_19_we0,buff_A_19_d0,buff_A_20_address0,buff_A_20_ce0,buff_A_20_we0,buff_A_20_d0,buff_A_21_address0,buff_A_21_ce0,buff_A_21_we0,buff_A_21_d0,buff_A_22_address0,buff_A_22_ce0,buff_A_22_we0,buff_A_22_d0,buff_A_23_address0,buff_A_23_ce0,buff_A_23_we0,buff_A_23_d0,buff_A_24_address0,buff_A_24_ce0,buff_A_24_we0,buff_A_24_d0,buff_A_25_address0,buff_A_25_ce0,buff_A_25_we0,buff_A_25_d0,buff_A_26_address0,buff_A_26_ce0,buff_A_26_we0,buff_A_26_d0,buff_A_27_address0,buff_A_27_ce0,buff_A_27_we0,buff_A_27_d0,buff_A_28_address0,buff_A_28_ce0,buff_A_28_we0,buff_A_28_d0,buff_A_29_address0,buff_A_29_ce0,buff_A_29_we0,buff_A_29_d0,buff_A_30_address0,buff_A_30_ce0,buff_A_30_we0,buff_A_30_d0,buff_A_31_address0,buff_A_31_ce0,buff_A_31_we0,buff_A_31_d0,buff_A_32_address0,buff_A_32_ce0,buff_A_32_we0,buff_A_32_d0,buff_A_33_address0,buff_A_33_ce0,buff_A_33_we0,buff_A_33_d0,buff_A_34_address0,buff_A_34_ce0,buff_A_34_we0,buff_A_34_d0,buff_A_35_address0,buff_A_35_ce0,buff_A_35_we0,buff_A_35_d0,buff_A_36_address0,buff_A_36_ce0,buff_A_36_we0,buff_A_36_d0,buff_A_37_address0,buff_A_37_ce0,buff_A_37_we0,buff_A_37_d0,buff_A_38_address0,buff_A_38_ce0,buff_A_38_we0,buff_A_38_d0,buff_A_39_address0,buff_A_39_ce0,buff_A_39_we0,buff_A_39_d0,buff_A_40_address0,buff_A_40_ce0,buff_A_40_we0,buff_A_40_d0,buff_A_41_address0,buff_A_41_ce0,buff_A_41_we0,buff_A_41_d0,buff_A_42_address0,buff_A_42_ce0,buff_A_42_we0,buff_A_42_d0,buff_A_43_address0,buff_A_43_ce0,buff_A_43_we0,buff_A_43_d0,buff_A_44_address0,buff_A_44_ce0,buff_A_44_we0,buff_A_44_d0,buff_A_45_address0,buff_A_45_ce0,buff_A_45_we0,buff_A_45_d0,buff_A_46_address0,buff_A_46_ce0,buff_A_46_we0,buff_A_46_d0,buff_A_47_address0,buff_A_47_ce0,buff_A_47_we0,buff_A_47_d0,buff_A_48_address0,buff_A_48_ce0,buff_A_48_we0,buff_A_48_d0,buff_A_49_address0,buff_A_49_ce0,buff_A_49_we0,buff_A_49_d0,buff_A_50_address0,buff_A_50_ce0,buff_A_50_we0,buff_A_50_d0,buff_A_51_address0,buff_A_51_ce0,buff_A_51_we0,buff_A_51_d0,buff_A_52_address0,buff_A_52_ce0,buff_A_52_we0,buff_A_52_d0,buff_A_53_address0,buff_A_53_ce0,buff_A_53_we0,buff_A_53_d0,buff_A_54_address0,buff_A_54_ce0,buff_A_54_we0,buff_A_54_d0,buff_A_55_address0,buff_A_55_ce0,buff_A_55_we0,buff_A_55_d0,buff_A_56_address0,buff_A_56_ce0,buff_A_56_we0,buff_A_56_d0,buff_A_57_address0,buff_A_57_ce0,buff_A_57_we0,buff_A_57_d0,buff_A_58_address0,buff_A_58_ce0,buff_A_58_we0,buff_A_58_d0,buff_A_59_address0,buff_A_59_ce0,buff_A_59_we0,buff_A_59_d0,buff_A_60_address0,buff_A_60_ce0,buff_A_60_we0,buff_A_60_d0,buff_A_61_address0,buff_A_61_ce0,buff_A_61_we0,buff_A_61_d0,buff_A_62_address0,buff_A_62_ce0,buff_A_62_we0,buff_A_62_d0,buff_A_63_address0,buff_A_63_ce0,buff_A_63_we0,buff_A_63_d0,A_address0,A_ce0,A_q0,p_address0,p_ce0,p_q0,buff_p_address0,buff_p_ce0,buff_p_we0,buff_p_d0,r_address0,r_ce0,r_q0,buff_r_address0,buff_r_ce0,buff_r_we0,buff_r_d0,buff_s_out_address0,buff_s_out_ce0,buff_s_out_we0,buff_s_out_d0,buff_s_out_1_address0,buff_s_out_1_ce0,buff_s_out_1_we0,buff_s_out_1_d0,buff_s_out_2_address0,buff_s_out_2_ce0,buff_s_out_2_we0,buff_s_out_2_d0,buff_s_out_3_address0,buff_s_out_3_ce0,buff_s_out_3_we0,buff_s_out_3_d0,buff_s_out_4_address0,buff_s_out_4_ce0,buff_s_out_4_we0,buff_s_out_4_d0,buff_s_out_5_address0,buff_s_out_5_ce0,buff_s_out_5_we0,buff_s_out_5_d0,buff_s_out_6_address0,buff_s_out_6_ce0,buff_s_out_6_we0,buff_s_out_6_d0,buff_s_out_7_address0,buff_s_out_7_ce0,buff_s_out_7_we0,buff_s_out_7_d0,buff_q_out_address0,buff_q_out_ce0,buff_q_out_we0,buff_q_out_d0,buff_q_out_1_address0,buff_q_out_1_ce0,buff_q_out_1_we0,buff_q_out_1_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] buff_A_address0;
output   buff_A_ce0;
output   buff_A_we0;
output  [31:0] buff_A_d0;
output  [5:0] buff_A_1_address0;
output   buff_A_1_ce0;
output   buff_A_1_we0;
output  [31:0] buff_A_1_d0;
output  [5:0] buff_A_2_address0;
output   buff_A_2_ce0;
output   buff_A_2_we0;
output  [31:0] buff_A_2_d0;
output  [5:0] buff_A_3_address0;
output   buff_A_3_ce0;
output   buff_A_3_we0;
output  [31:0] buff_A_3_d0;
output  [5:0] buff_A_4_address0;
output   buff_A_4_ce0;
output   buff_A_4_we0;
output  [31:0] buff_A_4_d0;
output  [5:0] buff_A_5_address0;
output   buff_A_5_ce0;
output   buff_A_5_we0;
output  [31:0] buff_A_5_d0;
output  [5:0] buff_A_6_address0;
output   buff_A_6_ce0;
output   buff_A_6_we0;
output  [31:0] buff_A_6_d0;
output  [5:0] buff_A_7_address0;
output   buff_A_7_ce0;
output   buff_A_7_we0;
output  [31:0] buff_A_7_d0;
output  [5:0] buff_A_8_address0;
output   buff_A_8_ce0;
output   buff_A_8_we0;
output  [31:0] buff_A_8_d0;
output  [5:0] buff_A_9_address0;
output   buff_A_9_ce0;
output   buff_A_9_we0;
output  [31:0] buff_A_9_d0;
output  [5:0] buff_A_10_address0;
output   buff_A_10_ce0;
output   buff_A_10_we0;
output  [31:0] buff_A_10_d0;
output  [5:0] buff_A_11_address0;
output   buff_A_11_ce0;
output   buff_A_11_we0;
output  [31:0] buff_A_11_d0;
output  [5:0] buff_A_12_address0;
output   buff_A_12_ce0;
output   buff_A_12_we0;
output  [31:0] buff_A_12_d0;
output  [5:0] buff_A_13_address0;
output   buff_A_13_ce0;
output   buff_A_13_we0;
output  [31:0] buff_A_13_d0;
output  [5:0] buff_A_14_address0;
output   buff_A_14_ce0;
output   buff_A_14_we0;
output  [31:0] buff_A_14_d0;
output  [5:0] buff_A_15_address0;
output   buff_A_15_ce0;
output   buff_A_15_we0;
output  [31:0] buff_A_15_d0;
output  [5:0] buff_A_16_address0;
output   buff_A_16_ce0;
output   buff_A_16_we0;
output  [31:0] buff_A_16_d0;
output  [5:0] buff_A_17_address0;
output   buff_A_17_ce0;
output   buff_A_17_we0;
output  [31:0] buff_A_17_d0;
output  [5:0] buff_A_18_address0;
output   buff_A_18_ce0;
output   buff_A_18_we0;
output  [31:0] buff_A_18_d0;
output  [5:0] buff_A_19_address0;
output   buff_A_19_ce0;
output   buff_A_19_we0;
output  [31:0] buff_A_19_d0;
output  [5:0] buff_A_20_address0;
output   buff_A_20_ce0;
output   buff_A_20_we0;
output  [31:0] buff_A_20_d0;
output  [5:0] buff_A_21_address0;
output   buff_A_21_ce0;
output   buff_A_21_we0;
output  [31:0] buff_A_21_d0;
output  [5:0] buff_A_22_address0;
output   buff_A_22_ce0;
output   buff_A_22_we0;
output  [31:0] buff_A_22_d0;
output  [5:0] buff_A_23_address0;
output   buff_A_23_ce0;
output   buff_A_23_we0;
output  [31:0] buff_A_23_d0;
output  [5:0] buff_A_24_address0;
output   buff_A_24_ce0;
output   buff_A_24_we0;
output  [31:0] buff_A_24_d0;
output  [5:0] buff_A_25_address0;
output   buff_A_25_ce0;
output   buff_A_25_we0;
output  [31:0] buff_A_25_d0;
output  [5:0] buff_A_26_address0;
output   buff_A_26_ce0;
output   buff_A_26_we0;
output  [31:0] buff_A_26_d0;
output  [5:0] buff_A_27_address0;
output   buff_A_27_ce0;
output   buff_A_27_we0;
output  [31:0] buff_A_27_d0;
output  [5:0] buff_A_28_address0;
output   buff_A_28_ce0;
output   buff_A_28_we0;
output  [31:0] buff_A_28_d0;
output  [5:0] buff_A_29_address0;
output   buff_A_29_ce0;
output   buff_A_29_we0;
output  [31:0] buff_A_29_d0;
output  [5:0] buff_A_30_address0;
output   buff_A_30_ce0;
output   buff_A_30_we0;
output  [31:0] buff_A_30_d0;
output  [5:0] buff_A_31_address0;
output   buff_A_31_ce0;
output   buff_A_31_we0;
output  [31:0] buff_A_31_d0;
output  [5:0] buff_A_32_address0;
output   buff_A_32_ce0;
output   buff_A_32_we0;
output  [31:0] buff_A_32_d0;
output  [5:0] buff_A_33_address0;
output   buff_A_33_ce0;
output   buff_A_33_we0;
output  [31:0] buff_A_33_d0;
output  [5:0] buff_A_34_address0;
output   buff_A_34_ce0;
output   buff_A_34_we0;
output  [31:0] buff_A_34_d0;
output  [5:0] buff_A_35_address0;
output   buff_A_35_ce0;
output   buff_A_35_we0;
output  [31:0] buff_A_35_d0;
output  [5:0] buff_A_36_address0;
output   buff_A_36_ce0;
output   buff_A_36_we0;
output  [31:0] buff_A_36_d0;
output  [5:0] buff_A_37_address0;
output   buff_A_37_ce0;
output   buff_A_37_we0;
output  [31:0] buff_A_37_d0;
output  [5:0] buff_A_38_address0;
output   buff_A_38_ce0;
output   buff_A_38_we0;
output  [31:0] buff_A_38_d0;
output  [5:0] buff_A_39_address0;
output   buff_A_39_ce0;
output   buff_A_39_we0;
output  [31:0] buff_A_39_d0;
output  [5:0] buff_A_40_address0;
output   buff_A_40_ce0;
output   buff_A_40_we0;
output  [31:0] buff_A_40_d0;
output  [5:0] buff_A_41_address0;
output   buff_A_41_ce0;
output   buff_A_41_we0;
output  [31:0] buff_A_41_d0;
output  [5:0] buff_A_42_address0;
output   buff_A_42_ce0;
output   buff_A_42_we0;
output  [31:0] buff_A_42_d0;
output  [5:0] buff_A_43_address0;
output   buff_A_43_ce0;
output   buff_A_43_we0;
output  [31:0] buff_A_43_d0;
output  [5:0] buff_A_44_address0;
output   buff_A_44_ce0;
output   buff_A_44_we0;
output  [31:0] buff_A_44_d0;
output  [5:0] buff_A_45_address0;
output   buff_A_45_ce0;
output   buff_A_45_we0;
output  [31:0] buff_A_45_d0;
output  [5:0] buff_A_46_address0;
output   buff_A_46_ce0;
output   buff_A_46_we0;
output  [31:0] buff_A_46_d0;
output  [5:0] buff_A_47_address0;
output   buff_A_47_ce0;
output   buff_A_47_we0;
output  [31:0] buff_A_47_d0;
output  [5:0] buff_A_48_address0;
output   buff_A_48_ce0;
output   buff_A_48_we0;
output  [31:0] buff_A_48_d0;
output  [5:0] buff_A_49_address0;
output   buff_A_49_ce0;
output   buff_A_49_we0;
output  [31:0] buff_A_49_d0;
output  [5:0] buff_A_50_address0;
output   buff_A_50_ce0;
output   buff_A_50_we0;
output  [31:0] buff_A_50_d0;
output  [5:0] buff_A_51_address0;
output   buff_A_51_ce0;
output   buff_A_51_we0;
output  [31:0] buff_A_51_d0;
output  [5:0] buff_A_52_address0;
output   buff_A_52_ce0;
output   buff_A_52_we0;
output  [31:0] buff_A_52_d0;
output  [5:0] buff_A_53_address0;
output   buff_A_53_ce0;
output   buff_A_53_we0;
output  [31:0] buff_A_53_d0;
output  [5:0] buff_A_54_address0;
output   buff_A_54_ce0;
output   buff_A_54_we0;
output  [31:0] buff_A_54_d0;
output  [5:0] buff_A_55_address0;
output   buff_A_55_ce0;
output   buff_A_55_we0;
output  [31:0] buff_A_55_d0;
output  [5:0] buff_A_56_address0;
output   buff_A_56_ce0;
output   buff_A_56_we0;
output  [31:0] buff_A_56_d0;
output  [5:0] buff_A_57_address0;
output   buff_A_57_ce0;
output   buff_A_57_we0;
output  [31:0] buff_A_57_d0;
output  [5:0] buff_A_58_address0;
output   buff_A_58_ce0;
output   buff_A_58_we0;
output  [31:0] buff_A_58_d0;
output  [5:0] buff_A_59_address0;
output   buff_A_59_ce0;
output   buff_A_59_we0;
output  [31:0] buff_A_59_d0;
output  [5:0] buff_A_60_address0;
output   buff_A_60_ce0;
output   buff_A_60_we0;
output  [31:0] buff_A_60_d0;
output  [5:0] buff_A_61_address0;
output   buff_A_61_ce0;
output   buff_A_61_we0;
output  [31:0] buff_A_61_d0;
output  [5:0] buff_A_62_address0;
output   buff_A_62_ce0;
output   buff_A_62_we0;
output  [31:0] buff_A_62_d0;
output  [5:0] buff_A_63_address0;
output   buff_A_63_ce0;
output   buff_A_63_we0;
output  [31:0] buff_A_63_d0;
output  [11:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [5:0] p_address0;
output   p_ce0;
input  [31:0] p_q0;
output  [5:0] buff_p_address0;
output   buff_p_ce0;
output   buff_p_we0;
output  [31:0] buff_p_d0;
output  [5:0] r_address0;
output   r_ce0;
input  [31:0] r_q0;
output  [5:0] buff_r_address0;
output   buff_r_ce0;
output   buff_r_we0;
output  [31:0] buff_r_d0;
output  [2:0] buff_s_out_address0;
output   buff_s_out_ce0;
output   buff_s_out_we0;
output  [31:0] buff_s_out_d0;
output  [2:0] buff_s_out_1_address0;
output   buff_s_out_1_ce0;
output   buff_s_out_1_we0;
output  [31:0] buff_s_out_1_d0;
output  [2:0] buff_s_out_2_address0;
output   buff_s_out_2_ce0;
output   buff_s_out_2_we0;
output  [31:0] buff_s_out_2_d0;
output  [2:0] buff_s_out_3_address0;
output   buff_s_out_3_ce0;
output   buff_s_out_3_we0;
output  [31:0] buff_s_out_3_d0;
output  [2:0] buff_s_out_4_address0;
output   buff_s_out_4_ce0;
output   buff_s_out_4_we0;
output  [31:0] buff_s_out_4_d0;
output  [2:0] buff_s_out_5_address0;
output   buff_s_out_5_ce0;
output   buff_s_out_5_we0;
output  [31:0] buff_s_out_5_d0;
output  [2:0] buff_s_out_6_address0;
output   buff_s_out_6_ce0;
output   buff_s_out_6_we0;
output  [31:0] buff_s_out_6_d0;
output  [2:0] buff_s_out_7_address0;
output   buff_s_out_7_ce0;
output   buff_s_out_7_we0;
output  [31:0] buff_s_out_7_d0;
output  [4:0] buff_q_out_address0;
output   buff_q_out_ce0;
output   buff_q_out_we0;
output  [31:0] buff_q_out_d0;
output  [4:0] buff_q_out_1_address0;
output   buff_q_out_1_ce0;
output   buff_q_out_1_we0;
output  [31:0] buff_q_out_1_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln13_fu_1413_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] first_iter_0_fu_1468_p2;
reg   [0:0] first_iter_0_reg_1670;
wire   [63:0] zext_ln13_fu_1474_p1;
reg   [63:0] zext_ln13_reg_1674;
reg   [63:0] zext_ln13_reg_1674_pp0_iter2_reg;
wire   [0:0] trunc_ln13_1_fu_1492_p1;
reg   [0:0] trunc_ln13_1_reg_1747;
reg   [4:0] lshr_ln5_reg_1751;
wire   [11:0] add_ln19_fu_1532_p2;
reg   [11:0] add_ln19_reg_1766;
wire   [5:0] trunc_ln18_fu_1538_p1;
reg   [5:0] trunc_ln18_reg_1771;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5_1_fu_1516_p1;
wire   [63:0] zext_ln5_fu_1558_p1;
wire   [63:0] zext_ln19_1_fu_1573_p1;
reg   [6:0] j_fu_346;
wire   [6:0] add_ln18_fu_1542_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_350;
wire   [6:0] select_ln13_fu_1456_p3;
reg   [12:0] indvar_flatten_fu_354;
wire   [12:0] add_ln13_1_fu_1419_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg    p_ce0_local;
reg    r_ce0_local;
reg    buff_s_out_6_we0_local;
wire   [2:0] trunc_ln13_fu_1488_p1;
reg    buff_s_out_6_ce0_local;
reg    buff_s_out_5_we0_local;
reg    buff_s_out_5_ce0_local;
reg    buff_s_out_4_we0_local;
reg    buff_s_out_4_ce0_local;
reg    buff_s_out_3_we0_local;
reg    buff_s_out_3_ce0_local;
reg    buff_s_out_2_we0_local;
reg    buff_s_out_2_ce0_local;
reg    buff_s_out_1_we0_local;
reg    buff_s_out_1_ce0_local;
reg    buff_s_out_we0_local;
reg    buff_s_out_ce0_local;
reg    buff_s_out_7_we0_local;
reg    buff_s_out_7_ce0_local;
reg    buff_p_we0_local;
wire   [31:0] bitcast_ln14_fu_1563_p1;
reg    buff_p_ce0_local;
reg    buff_r_we0_local;
wire   [31:0] bitcast_ln15_fu_1568_p1;
reg    buff_r_ce0_local;
reg    buff_q_out_we0_local;
reg    buff_q_out_ce0_local;
reg    buff_q_out_1_we0_local;
reg    buff_q_out_1_ce0_local;
reg    A_ce0_local;
reg    buff_A_62_we0_local;
reg    ap_predicate_pred850_state4;
wire   [31:0] bitcast_ln19_fu_1577_p1;
reg    buff_A_62_ce0_local;
reg    buff_A_61_we0_local;
reg    ap_predicate_pred860_state4;
reg    buff_A_61_ce0_local;
reg    buff_A_60_we0_local;
reg    ap_predicate_pred869_state4;
reg    buff_A_60_ce0_local;
reg    buff_A_59_we0_local;
reg    ap_predicate_pred878_state4;
reg    buff_A_59_ce0_local;
reg    buff_A_58_we0_local;
reg    ap_predicate_pred887_state4;
reg    buff_A_58_ce0_local;
reg    buff_A_57_we0_local;
reg    ap_predicate_pred896_state4;
reg    buff_A_57_ce0_local;
reg    buff_A_56_we0_local;
reg    ap_predicate_pred905_state4;
reg    buff_A_56_ce0_local;
reg    buff_A_55_we0_local;
reg    ap_predicate_pred914_state4;
reg    buff_A_55_ce0_local;
reg    buff_A_54_we0_local;
reg    ap_predicate_pred923_state4;
reg    buff_A_54_ce0_local;
reg    buff_A_53_we0_local;
reg    ap_predicate_pred932_state4;
reg    buff_A_53_ce0_local;
reg    buff_A_52_we0_local;
reg    ap_predicate_pred941_state4;
reg    buff_A_52_ce0_local;
reg    buff_A_51_we0_local;
reg    ap_predicate_pred950_state4;
reg    buff_A_51_ce0_local;
reg    buff_A_50_we0_local;
reg    ap_predicate_pred959_state4;
reg    buff_A_50_ce0_local;
reg    buff_A_49_we0_local;
reg    ap_predicate_pred968_state4;
reg    buff_A_49_ce0_local;
reg    buff_A_48_we0_local;
reg    ap_predicate_pred977_state4;
reg    buff_A_48_ce0_local;
reg    buff_A_47_we0_local;
reg    ap_predicate_pred986_state4;
reg    buff_A_47_ce0_local;
reg    buff_A_46_we0_local;
reg    ap_predicate_pred995_state4;
reg    buff_A_46_ce0_local;
reg    buff_A_45_we0_local;
reg    ap_predicate_pred1004_state4;
reg    buff_A_45_ce0_local;
reg    buff_A_44_we0_local;
reg    ap_predicate_pred1013_state4;
reg    buff_A_44_ce0_local;
reg    buff_A_43_we0_local;
reg    ap_predicate_pred1022_state4;
reg    buff_A_43_ce0_local;
reg    buff_A_42_we0_local;
reg    ap_predicate_pred1031_state4;
reg    buff_A_42_ce0_local;
reg    buff_A_41_we0_local;
reg    ap_predicate_pred1040_state4;
reg    buff_A_41_ce0_local;
reg    buff_A_40_we0_local;
reg    ap_predicate_pred1049_state4;
reg    buff_A_40_ce0_local;
reg    buff_A_39_we0_local;
reg    ap_predicate_pred1058_state4;
reg    buff_A_39_ce0_local;
reg    buff_A_38_we0_local;
reg    ap_predicate_pred1067_state4;
reg    buff_A_38_ce0_local;
reg    buff_A_37_we0_local;
reg    ap_predicate_pred1076_state4;
reg    buff_A_37_ce0_local;
reg    buff_A_36_we0_local;
reg    ap_predicate_pred1085_state4;
reg    buff_A_36_ce0_local;
reg    buff_A_35_we0_local;
reg    ap_predicate_pred1094_state4;
reg    buff_A_35_ce0_local;
reg    buff_A_34_we0_local;
reg    ap_predicate_pred1103_state4;
reg    buff_A_34_ce0_local;
reg    buff_A_33_we0_local;
reg    ap_predicate_pred1112_state4;
reg    buff_A_33_ce0_local;
reg    buff_A_32_we0_local;
reg    ap_predicate_pred1121_state4;
reg    buff_A_32_ce0_local;
reg    buff_A_31_we0_local;
reg    ap_predicate_pred1130_state4;
reg    buff_A_31_ce0_local;
reg    buff_A_30_we0_local;
reg    ap_predicate_pred1139_state4;
reg    buff_A_30_ce0_local;
reg    buff_A_29_we0_local;
reg    ap_predicate_pred1148_state4;
reg    buff_A_29_ce0_local;
reg    buff_A_28_we0_local;
reg    ap_predicate_pred1157_state4;
reg    buff_A_28_ce0_local;
reg    buff_A_27_we0_local;
reg    ap_predicate_pred1166_state4;
reg    buff_A_27_ce0_local;
reg    buff_A_26_we0_local;
reg    ap_predicate_pred1175_state4;
reg    buff_A_26_ce0_local;
reg    buff_A_25_we0_local;
reg    ap_predicate_pred1184_state4;
reg    buff_A_25_ce0_local;
reg    buff_A_24_we0_local;
reg    ap_predicate_pred1193_state4;
reg    buff_A_24_ce0_local;
reg    buff_A_23_we0_local;
reg    ap_predicate_pred1202_state4;
reg    buff_A_23_ce0_local;
reg    buff_A_22_we0_local;
reg    ap_predicate_pred1211_state4;
reg    buff_A_22_ce0_local;
reg    buff_A_21_we0_local;
reg    ap_predicate_pred1220_state4;
reg    buff_A_21_ce0_local;
reg    buff_A_20_we0_local;
reg    ap_predicate_pred1229_state4;
reg    buff_A_20_ce0_local;
reg    buff_A_19_we0_local;
reg    ap_predicate_pred1238_state4;
reg    buff_A_19_ce0_local;
reg    buff_A_18_we0_local;
reg    ap_predicate_pred1247_state4;
reg    buff_A_18_ce0_local;
reg    buff_A_17_we0_local;
reg    ap_predicate_pred1256_state4;
reg    buff_A_17_ce0_local;
reg    buff_A_16_we0_local;
reg    ap_predicate_pred1265_state4;
reg    buff_A_16_ce0_local;
reg    buff_A_15_we0_local;
reg    ap_predicate_pred1274_state4;
reg    buff_A_15_ce0_local;
reg    buff_A_14_we0_local;
reg    ap_predicate_pred1283_state4;
reg    buff_A_14_ce0_local;
reg    buff_A_13_we0_local;
reg    ap_predicate_pred1292_state4;
reg    buff_A_13_ce0_local;
reg    buff_A_12_we0_local;
reg    ap_predicate_pred1301_state4;
reg    buff_A_12_ce0_local;
reg    buff_A_11_we0_local;
reg    ap_predicate_pred1310_state4;
reg    buff_A_11_ce0_local;
reg    buff_A_10_we0_local;
reg    ap_predicate_pred1319_state4;
reg    buff_A_10_ce0_local;
reg    buff_A_9_we0_local;
reg    ap_predicate_pred1328_state4;
reg    buff_A_9_ce0_local;
reg    buff_A_8_we0_local;
reg    ap_predicate_pred1337_state4;
reg    buff_A_8_ce0_local;
reg    buff_A_7_we0_local;
reg    ap_predicate_pred1346_state4;
reg    buff_A_7_ce0_local;
reg    buff_A_6_we0_local;
reg    ap_predicate_pred1355_state4;
reg    buff_A_6_ce0_local;
reg    buff_A_5_we0_local;
reg    ap_predicate_pred1364_state4;
reg    buff_A_5_ce0_local;
reg    buff_A_4_we0_local;
reg    ap_predicate_pred1373_state4;
reg    buff_A_4_ce0_local;
reg    buff_A_3_we0_local;
reg    ap_predicate_pred1382_state4;
reg    buff_A_3_ce0_local;
reg    buff_A_2_we0_local;
reg    ap_predicate_pred1391_state4;
reg    buff_A_2_ce0_local;
reg    buff_A_1_we0_local;
reg    ap_predicate_pred1400_state4;
reg    buff_A_1_ce0_local;
reg    buff_A_we0_local;
reg    ap_predicate_pred1409_state4;
reg    buff_A_ce0_local;
reg    buff_A_63_we0_local;
reg    ap_predicate_pred1418_state4;
reg    buff_A_63_ce0_local;
wire   [0:0] icmp_ln18_fu_1442_p2;
wire   [6:0] add_ln13_fu_1436_p2;
wire   [6:0] select_ln5_fu_1448_p3;
wire   [5:0] empty_fu_1464_p1;
wire   [2:0] lshr_ln5_1_fu_1506_p4;
wire   [11:0] tmp_9_fu_1480_p3;
wire   [11:0] zext_ln19_fu_1528_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
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
#0 j_fu_346 = 7'd0;
#0 i_fu_350 = 7'd0;
#0 indvar_flatten_fu_354 = 13'd0;
#0 ap_done_reg = 1'b0;
end
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_350 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_350 <= select_ln13_fu_1456_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln13_fu_1413_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_354 <= add_ln13_1_fu_1419_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_354 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_346 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_346 <= add_ln18_fu_1542_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln19_reg_1766 <= add_ln19_fu_1532_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        first_iter_0_reg_1670 <= first_iter_0_fu_1468_p2;
        lshr_ln5_reg_1751 <= {{select_ln13_fu_1456_p3[5:1]}};
        trunc_ln13_1_reg_1747 <= trunc_ln13_1_fu_1492_p1;
        trunc_ln18_reg_1771 <= trunc_ln18_fu_1538_p1;
        zext_ln13_reg_1674[6 : 0] <= zext_ln13_fu_1474_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_predicate_pred1004_state4 <= (trunc_ln18_reg_1771 == 6'd45);
        ap_predicate_pred1013_state4 <= (trunc_ln18_reg_1771 == 6'd44);
        ap_predicate_pred1022_state4 <= (trunc_ln18_reg_1771 == 6'd43);
        ap_predicate_pred1031_state4 <= (trunc_ln18_reg_1771 == 6'd42);
        ap_predicate_pred1040_state4 <= (trunc_ln18_reg_1771 == 6'd41);
        ap_predicate_pred1049_state4 <= (trunc_ln18_reg_1771 == 6'd40);
        ap_predicate_pred1058_state4 <= (trunc_ln18_reg_1771 == 6'd39);
        ap_predicate_pred1067_state4 <= (trunc_ln18_reg_1771 == 6'd38);
        ap_predicate_pred1076_state4 <= (trunc_ln18_reg_1771 == 6'd37);
        ap_predicate_pred1085_state4 <= (trunc_ln18_reg_1771 == 6'd36);
        ap_predicate_pred1094_state4 <= (trunc_ln18_reg_1771 == 6'd35);
        ap_predicate_pred1103_state4 <= (trunc_ln18_reg_1771 == 6'd34);
        ap_predicate_pred1112_state4 <= (trunc_ln18_reg_1771 == 6'd33);
        ap_predicate_pred1121_state4 <= (trunc_ln18_reg_1771 == 6'd32);
        ap_predicate_pred1130_state4 <= (trunc_ln18_reg_1771 == 6'd31);
        ap_predicate_pred1139_state4 <= (trunc_ln18_reg_1771 == 6'd30);
        ap_predicate_pred1148_state4 <= (trunc_ln18_reg_1771 == 6'd29);
        ap_predicate_pred1157_state4 <= (trunc_ln18_reg_1771 == 6'd28);
        ap_predicate_pred1166_state4 <= (trunc_ln18_reg_1771 == 6'd27);
        ap_predicate_pred1175_state4 <= (trunc_ln18_reg_1771 == 6'd26);
        ap_predicate_pred1184_state4 <= (trunc_ln18_reg_1771 == 6'd25);
        ap_predicate_pred1193_state4 <= (trunc_ln18_reg_1771 == 6'd24);
        ap_predicate_pred1202_state4 <= (trunc_ln18_reg_1771 == 6'd23);
        ap_predicate_pred1211_state4 <= (trunc_ln18_reg_1771 == 6'd22);
        ap_predicate_pred1220_state4 <= (trunc_ln18_reg_1771 == 6'd21);
        ap_predicate_pred1229_state4 <= (trunc_ln18_reg_1771 == 6'd20);
        ap_predicate_pred1238_state4 <= (trunc_ln18_reg_1771 == 6'd19);
        ap_predicate_pred1247_state4 <= (trunc_ln18_reg_1771 == 6'd18);
        ap_predicate_pred1256_state4 <= (trunc_ln18_reg_1771 == 6'd17);
        ap_predicate_pred1265_state4 <= (trunc_ln18_reg_1771 == 6'd16);
        ap_predicate_pred1274_state4 <= (trunc_ln18_reg_1771 == 6'd15);
        ap_predicate_pred1283_state4 <= (trunc_ln18_reg_1771 == 6'd14);
        ap_predicate_pred1292_state4 <= (trunc_ln18_reg_1771 == 6'd13);
        ap_predicate_pred1301_state4 <= (trunc_ln18_reg_1771 == 6'd12);
        ap_predicate_pred1310_state4 <= (trunc_ln18_reg_1771 == 6'd11);
        ap_predicate_pred1319_state4 <= (trunc_ln18_reg_1771 == 6'd10);
        ap_predicate_pred1328_state4 <= (trunc_ln18_reg_1771 == 6'd9);
        ap_predicate_pred1337_state4 <= (trunc_ln18_reg_1771 == 6'd8);
        ap_predicate_pred1346_state4 <= (trunc_ln18_reg_1771 == 6'd7);
        ap_predicate_pred1355_state4 <= (trunc_ln18_reg_1771 == 6'd6);
        ap_predicate_pred1364_state4 <= (trunc_ln18_reg_1771 == 6'd5);
        ap_predicate_pred1373_state4 <= (trunc_ln18_reg_1771 == 6'd4);
        ap_predicate_pred1382_state4 <= (trunc_ln18_reg_1771 == 6'd3);
        ap_predicate_pred1391_state4 <= (trunc_ln18_reg_1771 == 6'd2);
        ap_predicate_pred1400_state4 <= (trunc_ln18_reg_1771 == 6'd1);
        ap_predicate_pred1409_state4 <= (trunc_ln18_reg_1771 == 6'd0);
        ap_predicate_pred1418_state4 <= (trunc_ln18_reg_1771 == 6'd63);
        ap_predicate_pred850_state4 <= (trunc_ln18_reg_1771 == 6'd62);
        ap_predicate_pred860_state4 <= (trunc_ln18_reg_1771 == 6'd61);
        ap_predicate_pred869_state4 <= (trunc_ln18_reg_1771 == 6'd60);
        ap_predicate_pred878_state4 <= (trunc_ln18_reg_1771 == 6'd59);
        ap_predicate_pred887_state4 <= (trunc_ln18_reg_1771 == 6'd58);
        ap_predicate_pred896_state4 <= (trunc_ln18_reg_1771 == 6'd57);
        ap_predicate_pred905_state4 <= (trunc_ln18_reg_1771 == 6'd56);
        ap_predicate_pred914_state4 <= (trunc_ln18_reg_1771 == 6'd55);
        ap_predicate_pred923_state4 <= (trunc_ln18_reg_1771 == 6'd54);
        ap_predicate_pred932_state4 <= (trunc_ln18_reg_1771 == 6'd53);
        ap_predicate_pred941_state4 <= (trunc_ln18_reg_1771 == 6'd52);
        ap_predicate_pred950_state4 <= (trunc_ln18_reg_1771 == 6'd51);
        ap_predicate_pred959_state4 <= (trunc_ln18_reg_1771 == 6'd50);
        ap_predicate_pred968_state4 <= (trunc_ln18_reg_1771 == 6'd49);
        ap_predicate_pred977_state4 <= (trunc_ln18_reg_1771 == 6'd48);
        ap_predicate_pred986_state4 <= (trunc_ln18_reg_1771 == 6'd47);
        ap_predicate_pred995_state4 <= (trunc_ln18_reg_1771 == 6'd46);
        zext_ln13_reg_1674_pp0_iter2_reg[6 : 0] <= zext_ln13_reg_1674[6 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        A_ce0_local = 1'b1;
    end else begin
        A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_fu_1413_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_354;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_10_ce0_local = 1'b1;
    end else begin
        buff_A_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1319_state4 == 1'b1))) begin
        buff_A_10_we0_local = 1'b1;
    end else begin
        buff_A_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_11_ce0_local = 1'b1;
    end else begin
        buff_A_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1310_state4 == 1'b1))) begin
        buff_A_11_we0_local = 1'b1;
    end else begin
        buff_A_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_12_ce0_local = 1'b1;
    end else begin
        buff_A_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1301_state4 == 1'b1))) begin
        buff_A_12_we0_local = 1'b1;
    end else begin
        buff_A_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_13_ce0_local = 1'b1;
    end else begin
        buff_A_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1292_state4 == 1'b1))) begin
        buff_A_13_we0_local = 1'b1;
    end else begin
        buff_A_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_14_ce0_local = 1'b1;
    end else begin
        buff_A_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1283_state4 == 1'b1))) begin
        buff_A_14_we0_local = 1'b1;
    end else begin
        buff_A_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_15_ce0_local = 1'b1;
    end else begin
        buff_A_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1274_state4 == 1'b1))) begin
        buff_A_15_we0_local = 1'b1;
    end else begin
        buff_A_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_16_ce0_local = 1'b1;
    end else begin
        buff_A_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1265_state4 == 1'b1))) begin
        buff_A_16_we0_local = 1'b1;
    end else begin
        buff_A_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_17_ce0_local = 1'b1;
    end else begin
        buff_A_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1256_state4 == 1'b1))) begin
        buff_A_17_we0_local = 1'b1;
    end else begin
        buff_A_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_18_ce0_local = 1'b1;
    end else begin
        buff_A_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1247_state4 == 1'b1))) begin
        buff_A_18_we0_local = 1'b1;
    end else begin
        buff_A_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_19_ce0_local = 1'b1;
    end else begin
        buff_A_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1238_state4 == 1'b1))) begin
        buff_A_19_we0_local = 1'b1;
    end else begin
        buff_A_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1400_state4 == 1'b1))) begin
        buff_A_1_we0_local = 1'b1;
    end else begin
        buff_A_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_20_ce0_local = 1'b1;
    end else begin
        buff_A_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1229_state4 == 1'b1))) begin
        buff_A_20_we0_local = 1'b1;
    end else begin
        buff_A_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_21_ce0_local = 1'b1;
    end else begin
        buff_A_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1220_state4 == 1'b1))) begin
        buff_A_21_we0_local = 1'b1;
    end else begin
        buff_A_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_22_ce0_local = 1'b1;
    end else begin
        buff_A_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1211_state4 == 1'b1))) begin
        buff_A_22_we0_local = 1'b1;
    end else begin
        buff_A_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_23_ce0_local = 1'b1;
    end else begin
        buff_A_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1202_state4 == 1'b1))) begin
        buff_A_23_we0_local = 1'b1;
    end else begin
        buff_A_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_24_ce0_local = 1'b1;
    end else begin
        buff_A_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1193_state4 == 1'b1))) begin
        buff_A_24_we0_local = 1'b1;
    end else begin
        buff_A_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_25_ce0_local = 1'b1;
    end else begin
        buff_A_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1184_state4 == 1'b1))) begin
        buff_A_25_we0_local = 1'b1;
    end else begin
        buff_A_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_26_ce0_local = 1'b1;
    end else begin
        buff_A_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1175_state4 == 1'b1))) begin
        buff_A_26_we0_local = 1'b1;
    end else begin
        buff_A_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_27_ce0_local = 1'b1;
    end else begin
        buff_A_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1166_state4 == 1'b1))) begin
        buff_A_27_we0_local = 1'b1;
    end else begin
        buff_A_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_28_ce0_local = 1'b1;
    end else begin
        buff_A_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1157_state4 == 1'b1))) begin
        buff_A_28_we0_local = 1'b1;
    end else begin
        buff_A_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_29_ce0_local = 1'b1;
    end else begin
        buff_A_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1148_state4 == 1'b1))) begin
        buff_A_29_we0_local = 1'b1;
    end else begin
        buff_A_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1391_state4 == 1'b1))) begin
        buff_A_2_we0_local = 1'b1;
    end else begin
        buff_A_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_30_ce0_local = 1'b1;
    end else begin
        buff_A_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1139_state4 == 1'b1))) begin
        buff_A_30_we0_local = 1'b1;
    end else begin
        buff_A_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_31_ce0_local = 1'b1;
    end else begin
        buff_A_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1130_state4 == 1'b1))) begin
        buff_A_31_we0_local = 1'b1;
    end else begin
        buff_A_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_32_ce0_local = 1'b1;
    end else begin
        buff_A_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1121_state4 == 1'b1))) begin
        buff_A_32_we0_local = 1'b1;
    end else begin
        buff_A_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_33_ce0_local = 1'b1;
    end else begin
        buff_A_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1112_state4 == 1'b1))) begin
        buff_A_33_we0_local = 1'b1;
    end else begin
        buff_A_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_34_ce0_local = 1'b1;
    end else begin
        buff_A_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1103_state4 == 1'b1))) begin
        buff_A_34_we0_local = 1'b1;
    end else begin
        buff_A_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_35_ce0_local = 1'b1;
    end else begin
        buff_A_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1094_state4 == 1'b1))) begin
        buff_A_35_we0_local = 1'b1;
    end else begin
        buff_A_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_36_ce0_local = 1'b1;
    end else begin
        buff_A_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1085_state4 == 1'b1))) begin
        buff_A_36_we0_local = 1'b1;
    end else begin
        buff_A_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_37_ce0_local = 1'b1;
    end else begin
        buff_A_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1076_state4 == 1'b1))) begin
        buff_A_37_we0_local = 1'b1;
    end else begin
        buff_A_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_38_ce0_local = 1'b1;
    end else begin
        buff_A_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1067_state4 == 1'b1))) begin
        buff_A_38_we0_local = 1'b1;
    end else begin
        buff_A_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_39_ce0_local = 1'b1;
    end else begin
        buff_A_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1058_state4 == 1'b1))) begin
        buff_A_39_we0_local = 1'b1;
    end else begin
        buff_A_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1382_state4 == 1'b1))) begin
        buff_A_3_we0_local = 1'b1;
    end else begin
        buff_A_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_40_ce0_local = 1'b1;
    end else begin
        buff_A_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1049_state4 == 1'b1))) begin
        buff_A_40_we0_local = 1'b1;
    end else begin
        buff_A_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_41_ce0_local = 1'b1;
    end else begin
        buff_A_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1040_state4 == 1'b1))) begin
        buff_A_41_we0_local = 1'b1;
    end else begin
        buff_A_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_42_ce0_local = 1'b1;
    end else begin
        buff_A_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1031_state4 == 1'b1))) begin
        buff_A_42_we0_local = 1'b1;
    end else begin
        buff_A_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_43_ce0_local = 1'b1;
    end else begin
        buff_A_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1022_state4 == 1'b1))) begin
        buff_A_43_we0_local = 1'b1;
    end else begin
        buff_A_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_44_ce0_local = 1'b1;
    end else begin
        buff_A_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1013_state4 == 1'b1))) begin
        buff_A_44_we0_local = 1'b1;
    end else begin
        buff_A_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_45_ce0_local = 1'b1;
    end else begin
        buff_A_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1004_state4 == 1'b1))) begin
        buff_A_45_we0_local = 1'b1;
    end else begin
        buff_A_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_46_ce0_local = 1'b1;
    end else begin
        buff_A_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred995_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_46_we0_local = 1'b1;
    end else begin
        buff_A_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_47_ce0_local = 1'b1;
    end else begin
        buff_A_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred986_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_47_we0_local = 1'b1;
    end else begin
        buff_A_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_48_ce0_local = 1'b1;
    end else begin
        buff_A_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred977_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_48_we0_local = 1'b1;
    end else begin
        buff_A_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_49_ce0_local = 1'b1;
    end else begin
        buff_A_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred968_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_49_we0_local = 1'b1;
    end else begin
        buff_A_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1373_state4 == 1'b1))) begin
        buff_A_4_we0_local = 1'b1;
    end else begin
        buff_A_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_50_ce0_local = 1'b1;
    end else begin
        buff_A_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred959_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_50_we0_local = 1'b1;
    end else begin
        buff_A_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_51_ce0_local = 1'b1;
    end else begin
        buff_A_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred950_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_51_we0_local = 1'b1;
    end else begin
        buff_A_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_52_ce0_local = 1'b1;
    end else begin
        buff_A_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred941_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_52_we0_local = 1'b1;
    end else begin
        buff_A_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_53_ce0_local = 1'b1;
    end else begin
        buff_A_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred932_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_53_we0_local = 1'b1;
    end else begin
        buff_A_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_54_ce0_local = 1'b1;
    end else begin
        buff_A_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred923_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_54_we0_local = 1'b1;
    end else begin
        buff_A_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_55_ce0_local = 1'b1;
    end else begin
        buff_A_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred914_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_55_we0_local = 1'b1;
    end else begin
        buff_A_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_56_ce0_local = 1'b1;
    end else begin
        buff_A_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred905_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_56_we0_local = 1'b1;
    end else begin
        buff_A_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_57_ce0_local = 1'b1;
    end else begin
        buff_A_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred896_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_57_we0_local = 1'b1;
    end else begin
        buff_A_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_58_ce0_local = 1'b1;
    end else begin
        buff_A_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred887_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_58_we0_local = 1'b1;
    end else begin
        buff_A_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_59_ce0_local = 1'b1;
    end else begin
        buff_A_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred878_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_59_we0_local = 1'b1;
    end else begin
        buff_A_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1364_state4 == 1'b1))) begin
        buff_A_5_we0_local = 1'b1;
    end else begin
        buff_A_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_60_ce0_local = 1'b1;
    end else begin
        buff_A_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred869_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_60_we0_local = 1'b1;
    end else begin
        buff_A_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_61_ce0_local = 1'b1;
    end else begin
        buff_A_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred860_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_61_we0_local = 1'b1;
    end else begin
        buff_A_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_62_ce0_local = 1'b1;
    end else begin
        buff_A_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred850_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_62_we0_local = 1'b1;
    end else begin
        buff_A_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_63_ce0_local = 1'b1;
    end else begin
        buff_A_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1418_state4 == 1'b1))) begin
        buff_A_63_we0_local = 1'b1;
    end else begin
        buff_A_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1355_state4 == 1'b1))) begin
        buff_A_6_we0_local = 1'b1;
    end else begin
        buff_A_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1346_state4 == 1'b1))) begin
        buff_A_7_we0_local = 1'b1;
    end else begin
        buff_A_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_8_ce0_local = 1'b1;
    end else begin
        buff_A_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1337_state4 == 1'b1))) begin
        buff_A_8_we0_local = 1'b1;
    end else begin
        buff_A_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_9_ce0_local = 1'b1;
    end else begin
        buff_A_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1328_state4 == 1'b1))) begin
        buff_A_9_we0_local = 1'b1;
    end else begin
        buff_A_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred1409_state4 == 1'b1))) begin
        buff_A_we0_local = 1'b1;
    end else begin
        buff_A_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((first_iter_0_reg_1670 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_p_we0_local = 1'b1;
    end else begin
        buff_p_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_q_out_1_ce0_local = 1'b1;
    end else begin
        buff_q_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_reg_1747 == 1'd1) & (first_iter_0_reg_1670 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_q_out_1_we0_local = 1'b1;
    end else begin
        buff_q_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_q_out_ce0_local = 1'b1;
    end else begin
        buff_q_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_1_reg_1747 == 1'd0) & (first_iter_0_reg_1670 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((first_iter_0_reg_1670 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_r_we0_local = 1'b1;
    end else begin
        buff_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_fu_1488_p1 == 3'd1) & (first_iter_0_fu_1468_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_fu_1488_p1 == 3'd2) & (first_iter_0_fu_1468_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_fu_1488_p1 == 3'd3) & (first_iter_0_fu_1468_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_4_ce0_local = 1'b1;
    end else begin
        buff_s_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_fu_1488_p1 == 3'd4) & (first_iter_0_fu_1468_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_4_we0_local = 1'b1;
    end else begin
        buff_s_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_5_ce0_local = 1'b1;
    end else begin
        buff_s_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_fu_1488_p1 == 3'd5) & (first_iter_0_fu_1468_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_5_we0_local = 1'b1;
    end else begin
        buff_s_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_6_ce0_local = 1'b1;
    end else begin
        buff_s_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_fu_1488_p1 == 3'd6) & (first_iter_0_fu_1468_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_6_we0_local = 1'b1;
    end else begin
        buff_s_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_7_ce0_local = 1'b1;
    end else begin
        buff_s_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_fu_1488_p1 == 3'd7) & (first_iter_0_fu_1468_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_7_we0_local = 1'b1;
    end else begin
        buff_s_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln13_fu_1488_p1 == 3'd0) & (first_iter_0_fu_1468_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_ce0_local = 1'b1;
    end else begin
        p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        r_ce0_local = 1'b1;
    end else begin
        r_ce0_local = 1'b0;
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
assign A_address0 = zext_ln19_1_fu_1573_p1;
assign A_ce0 = A_ce0_local;
assign add_ln13_1_fu_1419_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln13_fu_1436_p2 = (i_fu_350 + 7'd1);
assign add_ln18_fu_1542_p2 = (select_ln5_fu_1448_p3 + 7'd1);
assign add_ln19_fu_1532_p2 = (tmp_9_fu_1480_p3 + zext_ln19_fu_1528_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_fu_1563_p1 = p_q0;
assign bitcast_ln15_fu_1568_p1 = r_q0;
assign bitcast_ln19_fu_1577_p1 = A_q0;
assign buff_A_10_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_10_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_10_we0 = buff_A_10_we0_local;
assign buff_A_11_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_11_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_11_we0 = buff_A_11_we0_local;
assign buff_A_12_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_12_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_12_we0 = buff_A_12_we0_local;
assign buff_A_13_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_13_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_13_we0 = buff_A_13_we0_local;
assign buff_A_14_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_14_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_14_we0 = buff_A_14_we0_local;
assign buff_A_15_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_15_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_15_we0 = buff_A_15_we0_local;
assign buff_A_16_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_16_ce0 = buff_A_16_ce0_local;
assign buff_A_16_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_16_we0 = buff_A_16_we0_local;
assign buff_A_17_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_17_ce0 = buff_A_17_ce0_local;
assign buff_A_17_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_17_we0 = buff_A_17_we0_local;
assign buff_A_18_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_18_ce0 = buff_A_18_ce0_local;
assign buff_A_18_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_18_we0 = buff_A_18_we0_local;
assign buff_A_19_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_19_ce0 = buff_A_19_ce0_local;
assign buff_A_19_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_19_we0 = buff_A_19_we0_local;
assign buff_A_1_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_1_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_1_we0 = buff_A_1_we0_local;
assign buff_A_20_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_20_ce0 = buff_A_20_ce0_local;
assign buff_A_20_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_20_we0 = buff_A_20_we0_local;
assign buff_A_21_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_21_ce0 = buff_A_21_ce0_local;
assign buff_A_21_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_21_we0 = buff_A_21_we0_local;
assign buff_A_22_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_22_ce0 = buff_A_22_ce0_local;
assign buff_A_22_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_22_we0 = buff_A_22_we0_local;
assign buff_A_23_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_23_ce0 = buff_A_23_ce0_local;
assign buff_A_23_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_23_we0 = buff_A_23_we0_local;
assign buff_A_24_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_24_ce0 = buff_A_24_ce0_local;
assign buff_A_24_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_24_we0 = buff_A_24_we0_local;
assign buff_A_25_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_25_ce0 = buff_A_25_ce0_local;
assign buff_A_25_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_25_we0 = buff_A_25_we0_local;
assign buff_A_26_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_26_ce0 = buff_A_26_ce0_local;
assign buff_A_26_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_26_we0 = buff_A_26_we0_local;
assign buff_A_27_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_27_ce0 = buff_A_27_ce0_local;
assign buff_A_27_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_27_we0 = buff_A_27_we0_local;
assign buff_A_28_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_28_ce0 = buff_A_28_ce0_local;
assign buff_A_28_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_28_we0 = buff_A_28_we0_local;
assign buff_A_29_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_29_ce0 = buff_A_29_ce0_local;
assign buff_A_29_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_29_we0 = buff_A_29_we0_local;
assign buff_A_2_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_2_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_2_we0 = buff_A_2_we0_local;
assign buff_A_30_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_30_ce0 = buff_A_30_ce0_local;
assign buff_A_30_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_30_we0 = buff_A_30_we0_local;
assign buff_A_31_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_31_ce0 = buff_A_31_ce0_local;
assign buff_A_31_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_31_we0 = buff_A_31_we0_local;
assign buff_A_32_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_32_ce0 = buff_A_32_ce0_local;
assign buff_A_32_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_32_we0 = buff_A_32_we0_local;
assign buff_A_33_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_33_ce0 = buff_A_33_ce0_local;
assign buff_A_33_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_33_we0 = buff_A_33_we0_local;
assign buff_A_34_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_34_ce0 = buff_A_34_ce0_local;
assign buff_A_34_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_34_we0 = buff_A_34_we0_local;
assign buff_A_35_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_35_ce0 = buff_A_35_ce0_local;
assign buff_A_35_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_35_we0 = buff_A_35_we0_local;
assign buff_A_36_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_36_ce0 = buff_A_36_ce0_local;
assign buff_A_36_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_36_we0 = buff_A_36_we0_local;
assign buff_A_37_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_37_ce0 = buff_A_37_ce0_local;
assign buff_A_37_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_37_we0 = buff_A_37_we0_local;
assign buff_A_38_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_38_ce0 = buff_A_38_ce0_local;
assign buff_A_38_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_38_we0 = buff_A_38_we0_local;
assign buff_A_39_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_39_ce0 = buff_A_39_ce0_local;
assign buff_A_39_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_39_we0 = buff_A_39_we0_local;
assign buff_A_3_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_3_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_3_we0 = buff_A_3_we0_local;
assign buff_A_40_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_40_ce0 = buff_A_40_ce0_local;
assign buff_A_40_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_40_we0 = buff_A_40_we0_local;
assign buff_A_41_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_41_ce0 = buff_A_41_ce0_local;
assign buff_A_41_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_41_we0 = buff_A_41_we0_local;
assign buff_A_42_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_42_ce0 = buff_A_42_ce0_local;
assign buff_A_42_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_42_we0 = buff_A_42_we0_local;
assign buff_A_43_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_43_ce0 = buff_A_43_ce0_local;
assign buff_A_43_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_43_we0 = buff_A_43_we0_local;
assign buff_A_44_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_44_ce0 = buff_A_44_ce0_local;
assign buff_A_44_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_44_we0 = buff_A_44_we0_local;
assign buff_A_45_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_45_ce0 = buff_A_45_ce0_local;
assign buff_A_45_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_45_we0 = buff_A_45_we0_local;
assign buff_A_46_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_46_ce0 = buff_A_46_ce0_local;
assign buff_A_46_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_46_we0 = buff_A_46_we0_local;
assign buff_A_47_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_47_ce0 = buff_A_47_ce0_local;
assign buff_A_47_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_47_we0 = buff_A_47_we0_local;
assign buff_A_48_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_48_ce0 = buff_A_48_ce0_local;
assign buff_A_48_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_48_we0 = buff_A_48_we0_local;
assign buff_A_49_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_49_ce0 = buff_A_49_ce0_local;
assign buff_A_49_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_49_we0 = buff_A_49_we0_local;
assign buff_A_4_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_4_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_4_we0 = buff_A_4_we0_local;
assign buff_A_50_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_50_ce0 = buff_A_50_ce0_local;
assign buff_A_50_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_50_we0 = buff_A_50_we0_local;
assign buff_A_51_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_51_ce0 = buff_A_51_ce0_local;
assign buff_A_51_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_51_we0 = buff_A_51_we0_local;
assign buff_A_52_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_52_ce0 = buff_A_52_ce0_local;
assign buff_A_52_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_52_we0 = buff_A_52_we0_local;
assign buff_A_53_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_53_ce0 = buff_A_53_ce0_local;
assign buff_A_53_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_53_we0 = buff_A_53_we0_local;
assign buff_A_54_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_54_ce0 = buff_A_54_ce0_local;
assign buff_A_54_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_54_we0 = buff_A_54_we0_local;
assign buff_A_55_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_55_ce0 = buff_A_55_ce0_local;
assign buff_A_55_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_55_we0 = buff_A_55_we0_local;
assign buff_A_56_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_56_ce0 = buff_A_56_ce0_local;
assign buff_A_56_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_56_we0 = buff_A_56_we0_local;
assign buff_A_57_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_57_ce0 = buff_A_57_ce0_local;
assign buff_A_57_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_57_we0 = buff_A_57_we0_local;
assign buff_A_58_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_58_ce0 = buff_A_58_ce0_local;
assign buff_A_58_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_58_we0 = buff_A_58_we0_local;
assign buff_A_59_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_59_ce0 = buff_A_59_ce0_local;
assign buff_A_59_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_59_we0 = buff_A_59_we0_local;
assign buff_A_5_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_5_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_5_we0 = buff_A_5_we0_local;
assign buff_A_60_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_60_ce0 = buff_A_60_ce0_local;
assign buff_A_60_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_60_we0 = buff_A_60_we0_local;
assign buff_A_61_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_61_ce0 = buff_A_61_ce0_local;
assign buff_A_61_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_61_we0 = buff_A_61_we0_local;
assign buff_A_62_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_62_ce0 = buff_A_62_ce0_local;
assign buff_A_62_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_62_we0 = buff_A_62_we0_local;
assign buff_A_63_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_63_ce0 = buff_A_63_ce0_local;
assign buff_A_63_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_63_we0 = buff_A_63_we0_local;
assign buff_A_6_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_6_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_6_we0 = buff_A_6_we0_local;
assign buff_A_7_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_7_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_7_we0 = buff_A_7_we0_local;
assign buff_A_8_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_8_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_8_we0 = buff_A_8_we0_local;
assign buff_A_9_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_9_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_9_we0 = buff_A_9_we0_local;
assign buff_A_address0 = zext_ln13_reg_1674_pp0_iter2_reg;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_d0 = bitcast_ln19_fu_1577_p1;
assign buff_A_we0 = buff_A_we0_local;
assign buff_p_address0 = zext_ln13_reg_1674;
assign buff_p_ce0 = buff_p_ce0_local;
assign buff_p_d0 = bitcast_ln14_fu_1563_p1;
assign buff_p_we0 = buff_p_we0_local;
assign buff_q_out_1_address0 = zext_ln5_fu_1558_p1;
assign buff_q_out_1_ce0 = buff_q_out_1_ce0_local;
assign buff_q_out_1_d0 = 32'd0;
assign buff_q_out_1_we0 = buff_q_out_1_we0_local;
assign buff_q_out_address0 = zext_ln5_fu_1558_p1;
assign buff_q_out_ce0 = buff_q_out_ce0_local;
assign buff_q_out_d0 = 32'd0;
assign buff_q_out_we0 = buff_q_out_we0_local;
assign buff_r_address0 = zext_ln13_reg_1674;
assign buff_r_ce0 = buff_r_ce0_local;
assign buff_r_d0 = bitcast_ln15_fu_1568_p1;
assign buff_r_we0 = buff_r_we0_local;
assign buff_s_out_1_address0 = zext_ln5_1_fu_1516_p1;
assign buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
assign buff_s_out_1_d0 = 32'd0;
assign buff_s_out_1_we0 = buff_s_out_1_we0_local;
assign buff_s_out_2_address0 = zext_ln5_1_fu_1516_p1;
assign buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
assign buff_s_out_2_d0 = 32'd0;
assign buff_s_out_2_we0 = buff_s_out_2_we0_local;
assign buff_s_out_3_address0 = zext_ln5_1_fu_1516_p1;
assign buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
assign buff_s_out_3_d0 = 32'd0;
assign buff_s_out_3_we0 = buff_s_out_3_we0_local;
assign buff_s_out_4_address0 = zext_ln5_1_fu_1516_p1;
assign buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
assign buff_s_out_4_d0 = 32'd0;
assign buff_s_out_4_we0 = buff_s_out_4_we0_local;
assign buff_s_out_5_address0 = zext_ln5_1_fu_1516_p1;
assign buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
assign buff_s_out_5_d0 = 32'd0;
assign buff_s_out_5_we0 = buff_s_out_5_we0_local;
assign buff_s_out_6_address0 = zext_ln5_1_fu_1516_p1;
assign buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
assign buff_s_out_6_d0 = 32'd0;
assign buff_s_out_6_we0 = buff_s_out_6_we0_local;
assign buff_s_out_7_address0 = zext_ln5_1_fu_1516_p1;
assign buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
assign buff_s_out_7_d0 = 32'd0;
assign buff_s_out_7_we0 = buff_s_out_7_we0_local;
assign buff_s_out_address0 = zext_ln5_1_fu_1516_p1;
assign buff_s_out_ce0 = buff_s_out_ce0_local;
assign buff_s_out_d0 = 32'd0;
assign buff_s_out_we0 = buff_s_out_we0_local;
assign empty_fu_1464_p1 = select_ln13_fu_1456_p3[5:0];
assign first_iter_0_fu_1468_p2 = ((select_ln5_fu_1448_p3 == 7'd0) ? 1'b1 : 1'b0);
assign icmp_ln13_fu_1413_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_1442_p2 = ((j_fu_346 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_1506_p4 = {{select_ln13_fu_1456_p3[5:3]}};
assign p_address0 = zext_ln13_fu_1474_p1;
assign p_ce0 = p_ce0_local;
assign r_address0 = zext_ln13_fu_1474_p1;
assign r_ce0 = r_ce0_local;
assign select_ln13_fu_1456_p3 = ((icmp_ln18_fu_1442_p2[0:0] == 1'b1) ? add_ln13_fu_1436_p2 : i_fu_350);
assign select_ln5_fu_1448_p3 = ((icmp_ln18_fu_1442_p2[0:0] == 1'b1) ? 7'd0 : j_fu_346);
assign tmp_9_fu_1480_p3 = {{empty_fu_1464_p1}, {6'd0}};
assign trunc_ln13_1_fu_1492_p1 = select_ln13_fu_1456_p3[0:0];
assign trunc_ln13_fu_1488_p1 = select_ln13_fu_1456_p3[2:0];
assign trunc_ln18_fu_1538_p1 = select_ln5_fu_1448_p3[5:0];
assign zext_ln13_fu_1474_p1 = select_ln13_fu_1456_p3;
assign zext_ln19_1_fu_1573_p1 = add_ln19_reg_1766;
assign zext_ln19_fu_1528_p1 = select_ln5_fu_1448_p3;
assign zext_ln5_1_fu_1516_p1 = lshr_ln5_1_fu_1506_p4;
assign zext_ln5_fu_1558_p1 = lshr_ln5_reg_1751;
always @ (posedge ap_clk) begin
    zext_ln13_reg_1674[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln13_reg_1674_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 
