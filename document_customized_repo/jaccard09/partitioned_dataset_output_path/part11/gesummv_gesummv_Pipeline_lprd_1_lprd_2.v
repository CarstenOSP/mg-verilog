
module gesummv_gesummv_Pipeline_lprd_1_lprd_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_we0,buff_B_d0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_we0,buff_B_1_d0,buff_B_2_address0,buff_B_2_ce0,buff_B_2_we0,buff_B_2_d0,buff_B_3_address0,buff_B_3_ce0,buff_B_3_we0,buff_B_3_d0,buff_B_4_address0,buff_B_4_ce0,buff_B_4_we0,buff_B_4_d0,buff_B_5_address0,buff_B_5_ce0,buff_B_5_we0,buff_B_5_d0,buff_B_6_address0,buff_B_6_ce0,buff_B_6_we0,buff_B_6_d0,buff_B_7_address0,buff_B_7_ce0,buff_B_7_we0,buff_B_7_d0,buff_B_8_address0,buff_B_8_ce0,buff_B_8_we0,buff_B_8_d0,buff_B_9_address0,buff_B_9_ce0,buff_B_9_we0,buff_B_9_d0,buff_B_10_address0,buff_B_10_ce0,buff_B_10_we0,buff_B_10_d0,buff_B_11_address0,buff_B_11_ce0,buff_B_11_we0,buff_B_11_d0,buff_B_12_address0,buff_B_12_ce0,buff_B_12_we0,buff_B_12_d0,buff_B_13_address0,buff_B_13_ce0,buff_B_13_we0,buff_B_13_d0,buff_B_14_address0,buff_B_14_ce0,buff_B_14_we0,buff_B_14_d0,buff_B_15_address0,buff_B_15_ce0,buff_B_15_we0,buff_B_15_d0,buff_B_16_address0,buff_B_16_ce0,buff_B_16_we0,buff_B_16_d0,buff_B_17_address0,buff_B_17_ce0,buff_B_17_we0,buff_B_17_d0,buff_B_18_address0,buff_B_18_ce0,buff_B_18_we0,buff_B_18_d0,buff_B_19_address0,buff_B_19_ce0,buff_B_19_we0,buff_B_19_d0,buff_B_20_address0,buff_B_20_ce0,buff_B_20_we0,buff_B_20_d0,buff_B_21_address0,buff_B_21_ce0,buff_B_21_we0,buff_B_21_d0,buff_B_22_address0,buff_B_22_ce0,buff_B_22_we0,buff_B_22_d0,buff_B_23_address0,buff_B_23_ce0,buff_B_23_we0,buff_B_23_d0,buff_B_24_address0,buff_B_24_ce0,buff_B_24_we0,buff_B_24_d0,buff_B_25_address0,buff_B_25_ce0,buff_B_25_we0,buff_B_25_d0,buff_B_26_address0,buff_B_26_ce0,buff_B_26_we0,buff_B_26_d0,buff_B_27_address0,buff_B_27_ce0,buff_B_27_we0,buff_B_27_d0,buff_B_28_address0,buff_B_28_ce0,buff_B_28_we0,buff_B_28_d0,buff_B_29_address0,buff_B_29_ce0,buff_B_29_we0,buff_B_29_d0,buff_B_30_address0,buff_B_30_ce0,buff_B_30_we0,buff_B_30_d0,buff_B_31_address0,buff_B_31_ce0,buff_B_31_we0,buff_B_31_d0,buff_B_32_address0,buff_B_32_ce0,buff_B_32_we0,buff_B_32_d0,buff_B_33_address0,buff_B_33_ce0,buff_B_33_we0,buff_B_33_d0,buff_B_34_address0,buff_B_34_ce0,buff_B_34_we0,buff_B_34_d0,buff_B_35_address0,buff_B_35_ce0,buff_B_35_we0,buff_B_35_d0,buff_B_36_address0,buff_B_36_ce0,buff_B_36_we0,buff_B_36_d0,buff_B_37_address0,buff_B_37_ce0,buff_B_37_we0,buff_B_37_d0,buff_B_38_address0,buff_B_38_ce0,buff_B_38_we0,buff_B_38_d0,buff_B_39_address0,buff_B_39_ce0,buff_B_39_we0,buff_B_39_d0,buff_B_40_address0,buff_B_40_ce0,buff_B_40_we0,buff_B_40_d0,buff_B_41_address0,buff_B_41_ce0,buff_B_41_we0,buff_B_41_d0,buff_B_42_address0,buff_B_42_ce0,buff_B_42_we0,buff_B_42_d0,buff_B_43_address0,buff_B_43_ce0,buff_B_43_we0,buff_B_43_d0,buff_B_44_address0,buff_B_44_ce0,buff_B_44_we0,buff_B_44_d0,buff_B_45_address0,buff_B_45_ce0,buff_B_45_we0,buff_B_45_d0,buff_B_46_address0,buff_B_46_ce0,buff_B_46_we0,buff_B_46_d0,buff_B_47_address0,buff_B_47_ce0,buff_B_47_we0,buff_B_47_d0,buff_B_48_address0,buff_B_48_ce0,buff_B_48_we0,buff_B_48_d0,buff_B_49_address0,buff_B_49_ce0,buff_B_49_we0,buff_B_49_d0,buff_B_50_address0,buff_B_50_ce0,buff_B_50_we0,buff_B_50_d0,buff_B_51_address0,buff_B_51_ce0,buff_B_51_we0,buff_B_51_d0,buff_B_52_address0,buff_B_52_ce0,buff_B_52_we0,buff_B_52_d0,buff_B_53_address0,buff_B_53_ce0,buff_B_53_we0,buff_B_53_d0,buff_B_54_address0,buff_B_54_ce0,buff_B_54_we0,buff_B_54_d0,buff_B_55_address0,buff_B_55_ce0,buff_B_55_we0,buff_B_55_d0,buff_B_56_address0,buff_B_56_ce0,buff_B_56_we0,buff_B_56_d0,buff_B_57_address0,buff_B_57_ce0,buff_B_57_we0,buff_B_57_d0,buff_B_58_address0,buff_B_58_ce0,buff_B_58_we0,buff_B_58_d0,buff_B_59_address0,buff_B_59_ce0,buff_B_59_we0,buff_B_59_d0,buff_B_60_address0,buff_B_60_ce0,buff_B_60_we0,buff_B_60_d0,buff_B_61_address0,buff_B_61_ce0,buff_B_61_we0,buff_B_61_d0,buff_B_62_address0,buff_B_62_ce0,buff_B_62_we0,buff_B_62_d0,buff_B_63_address0,buff_B_63_ce0,buff_B_63_we0,buff_B_63_d0,A_address0,A_ce0,A_q0,B_address0,B_ce0,B_q0,buff_A_address0,buff_A_ce0,buff_A_we0,buff_A_d0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_we0,buff_A_1_d0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_we0,buff_A_2_d0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_we0,buff_A_3_d0,x_address0,x_ce0,x_q0,buff_x_address0,buff_x_ce0,buff_x_we0,buff_x_d0,buff_x_1_address0,buff_x_1_ce0,buff_x_1_we0,buff_x_1_d0,buff_x_2_address0,buff_x_2_ce0,buff_x_2_we0,buff_x_2_d0,buff_x_3_address0,buff_x_3_ce0,buff_x_3_we0,buff_x_3_d0,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp2_address0,tmp2_ce0,tmp2_we0,tmp2_d0,tmp2_1_address0,tmp2_1_ce0,tmp2_1_we0,tmp2_1_d0,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] buff_B_address0;
output   buff_B_ce0;
output   buff_B_we0;
output  [31:0] buff_B_d0;
output  [5:0] buff_B_1_address0;
output   buff_B_1_ce0;
output   buff_B_1_we0;
output  [31:0] buff_B_1_d0;
output  [5:0] buff_B_2_address0;
output   buff_B_2_ce0;
output   buff_B_2_we0;
output  [31:0] buff_B_2_d0;
output  [5:0] buff_B_3_address0;
output   buff_B_3_ce0;
output   buff_B_3_we0;
output  [31:0] buff_B_3_d0;
output  [5:0] buff_B_4_address0;
output   buff_B_4_ce0;
output   buff_B_4_we0;
output  [31:0] buff_B_4_d0;
output  [5:0] buff_B_5_address0;
output   buff_B_5_ce0;
output   buff_B_5_we0;
output  [31:0] buff_B_5_d0;
output  [5:0] buff_B_6_address0;
output   buff_B_6_ce0;
output   buff_B_6_we0;
output  [31:0] buff_B_6_d0;
output  [5:0] buff_B_7_address0;
output   buff_B_7_ce0;
output   buff_B_7_we0;
output  [31:0] buff_B_7_d0;
output  [5:0] buff_B_8_address0;
output   buff_B_8_ce0;
output   buff_B_8_we0;
output  [31:0] buff_B_8_d0;
output  [5:0] buff_B_9_address0;
output   buff_B_9_ce0;
output   buff_B_9_we0;
output  [31:0] buff_B_9_d0;
output  [5:0] buff_B_10_address0;
output   buff_B_10_ce0;
output   buff_B_10_we0;
output  [31:0] buff_B_10_d0;
output  [5:0] buff_B_11_address0;
output   buff_B_11_ce0;
output   buff_B_11_we0;
output  [31:0] buff_B_11_d0;
output  [5:0] buff_B_12_address0;
output   buff_B_12_ce0;
output   buff_B_12_we0;
output  [31:0] buff_B_12_d0;
output  [5:0] buff_B_13_address0;
output   buff_B_13_ce0;
output   buff_B_13_we0;
output  [31:0] buff_B_13_d0;
output  [5:0] buff_B_14_address0;
output   buff_B_14_ce0;
output   buff_B_14_we0;
output  [31:0] buff_B_14_d0;
output  [5:0] buff_B_15_address0;
output   buff_B_15_ce0;
output   buff_B_15_we0;
output  [31:0] buff_B_15_d0;
output  [5:0] buff_B_16_address0;
output   buff_B_16_ce0;
output   buff_B_16_we0;
output  [31:0] buff_B_16_d0;
output  [5:0] buff_B_17_address0;
output   buff_B_17_ce0;
output   buff_B_17_we0;
output  [31:0] buff_B_17_d0;
output  [5:0] buff_B_18_address0;
output   buff_B_18_ce0;
output   buff_B_18_we0;
output  [31:0] buff_B_18_d0;
output  [5:0] buff_B_19_address0;
output   buff_B_19_ce0;
output   buff_B_19_we0;
output  [31:0] buff_B_19_d0;
output  [5:0] buff_B_20_address0;
output   buff_B_20_ce0;
output   buff_B_20_we0;
output  [31:0] buff_B_20_d0;
output  [5:0] buff_B_21_address0;
output   buff_B_21_ce0;
output   buff_B_21_we0;
output  [31:0] buff_B_21_d0;
output  [5:0] buff_B_22_address0;
output   buff_B_22_ce0;
output   buff_B_22_we0;
output  [31:0] buff_B_22_d0;
output  [5:0] buff_B_23_address0;
output   buff_B_23_ce0;
output   buff_B_23_we0;
output  [31:0] buff_B_23_d0;
output  [5:0] buff_B_24_address0;
output   buff_B_24_ce0;
output   buff_B_24_we0;
output  [31:0] buff_B_24_d0;
output  [5:0] buff_B_25_address0;
output   buff_B_25_ce0;
output   buff_B_25_we0;
output  [31:0] buff_B_25_d0;
output  [5:0] buff_B_26_address0;
output   buff_B_26_ce0;
output   buff_B_26_we0;
output  [31:0] buff_B_26_d0;
output  [5:0] buff_B_27_address0;
output   buff_B_27_ce0;
output   buff_B_27_we0;
output  [31:0] buff_B_27_d0;
output  [5:0] buff_B_28_address0;
output   buff_B_28_ce0;
output   buff_B_28_we0;
output  [31:0] buff_B_28_d0;
output  [5:0] buff_B_29_address0;
output   buff_B_29_ce0;
output   buff_B_29_we0;
output  [31:0] buff_B_29_d0;
output  [5:0] buff_B_30_address0;
output   buff_B_30_ce0;
output   buff_B_30_we0;
output  [31:0] buff_B_30_d0;
output  [5:0] buff_B_31_address0;
output   buff_B_31_ce0;
output   buff_B_31_we0;
output  [31:0] buff_B_31_d0;
output  [5:0] buff_B_32_address0;
output   buff_B_32_ce0;
output   buff_B_32_we0;
output  [31:0] buff_B_32_d0;
output  [5:0] buff_B_33_address0;
output   buff_B_33_ce0;
output   buff_B_33_we0;
output  [31:0] buff_B_33_d0;
output  [5:0] buff_B_34_address0;
output   buff_B_34_ce0;
output   buff_B_34_we0;
output  [31:0] buff_B_34_d0;
output  [5:0] buff_B_35_address0;
output   buff_B_35_ce0;
output   buff_B_35_we0;
output  [31:0] buff_B_35_d0;
output  [5:0] buff_B_36_address0;
output   buff_B_36_ce0;
output   buff_B_36_we0;
output  [31:0] buff_B_36_d0;
output  [5:0] buff_B_37_address0;
output   buff_B_37_ce0;
output   buff_B_37_we0;
output  [31:0] buff_B_37_d0;
output  [5:0] buff_B_38_address0;
output   buff_B_38_ce0;
output   buff_B_38_we0;
output  [31:0] buff_B_38_d0;
output  [5:0] buff_B_39_address0;
output   buff_B_39_ce0;
output   buff_B_39_we0;
output  [31:0] buff_B_39_d0;
output  [5:0] buff_B_40_address0;
output   buff_B_40_ce0;
output   buff_B_40_we0;
output  [31:0] buff_B_40_d0;
output  [5:0] buff_B_41_address0;
output   buff_B_41_ce0;
output   buff_B_41_we0;
output  [31:0] buff_B_41_d0;
output  [5:0] buff_B_42_address0;
output   buff_B_42_ce0;
output   buff_B_42_we0;
output  [31:0] buff_B_42_d0;
output  [5:0] buff_B_43_address0;
output   buff_B_43_ce0;
output   buff_B_43_we0;
output  [31:0] buff_B_43_d0;
output  [5:0] buff_B_44_address0;
output   buff_B_44_ce0;
output   buff_B_44_we0;
output  [31:0] buff_B_44_d0;
output  [5:0] buff_B_45_address0;
output   buff_B_45_ce0;
output   buff_B_45_we0;
output  [31:0] buff_B_45_d0;
output  [5:0] buff_B_46_address0;
output   buff_B_46_ce0;
output   buff_B_46_we0;
output  [31:0] buff_B_46_d0;
output  [5:0] buff_B_47_address0;
output   buff_B_47_ce0;
output   buff_B_47_we0;
output  [31:0] buff_B_47_d0;
output  [5:0] buff_B_48_address0;
output   buff_B_48_ce0;
output   buff_B_48_we0;
output  [31:0] buff_B_48_d0;
output  [5:0] buff_B_49_address0;
output   buff_B_49_ce0;
output   buff_B_49_we0;
output  [31:0] buff_B_49_d0;
output  [5:0] buff_B_50_address0;
output   buff_B_50_ce0;
output   buff_B_50_we0;
output  [31:0] buff_B_50_d0;
output  [5:0] buff_B_51_address0;
output   buff_B_51_ce0;
output   buff_B_51_we0;
output  [31:0] buff_B_51_d0;
output  [5:0] buff_B_52_address0;
output   buff_B_52_ce0;
output   buff_B_52_we0;
output  [31:0] buff_B_52_d0;
output  [5:0] buff_B_53_address0;
output   buff_B_53_ce0;
output   buff_B_53_we0;
output  [31:0] buff_B_53_d0;
output  [5:0] buff_B_54_address0;
output   buff_B_54_ce0;
output   buff_B_54_we0;
output  [31:0] buff_B_54_d0;
output  [5:0] buff_B_55_address0;
output   buff_B_55_ce0;
output   buff_B_55_we0;
output  [31:0] buff_B_55_d0;
output  [5:0] buff_B_56_address0;
output   buff_B_56_ce0;
output   buff_B_56_we0;
output  [31:0] buff_B_56_d0;
output  [5:0] buff_B_57_address0;
output   buff_B_57_ce0;
output   buff_B_57_we0;
output  [31:0] buff_B_57_d0;
output  [5:0] buff_B_58_address0;
output   buff_B_58_ce0;
output   buff_B_58_we0;
output  [31:0] buff_B_58_d0;
output  [5:0] buff_B_59_address0;
output   buff_B_59_ce0;
output   buff_B_59_we0;
output  [31:0] buff_B_59_d0;
output  [5:0] buff_B_60_address0;
output   buff_B_60_ce0;
output   buff_B_60_we0;
output  [31:0] buff_B_60_d0;
output  [5:0] buff_B_61_address0;
output   buff_B_61_ce0;
output   buff_B_61_we0;
output  [31:0] buff_B_61_d0;
output  [5:0] buff_B_62_address0;
output   buff_B_62_ce0;
output   buff_B_62_we0;
output  [31:0] buff_B_62_d0;
output  [5:0] buff_B_63_address0;
output   buff_B_63_ce0;
output   buff_B_63_we0;
output  [31:0] buff_B_63_d0;
output  [11:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [11:0] B_address0;
output   B_ce0;
input  [31:0] B_q0;
output  [9:0] buff_A_address0;
output   buff_A_ce0;
output   buff_A_we0;
output  [31:0] buff_A_d0;
output  [9:0] buff_A_1_address0;
output   buff_A_1_ce0;
output   buff_A_1_we0;
output  [31:0] buff_A_1_d0;
output  [9:0] buff_A_2_address0;
output   buff_A_2_ce0;
output   buff_A_2_we0;
output  [31:0] buff_A_2_d0;
output  [9:0] buff_A_3_address0;
output   buff_A_3_ce0;
output   buff_A_3_we0;
output  [31:0] buff_A_3_d0;
output  [5:0] x_address0;
output   x_ce0;
input  [31:0] x_q0;
output  [3:0] buff_x_address0;
output   buff_x_ce0;
output   buff_x_we0;
output  [31:0] buff_x_d0;
output  [3:0] buff_x_1_address0;
output   buff_x_1_ce0;
output   buff_x_1_we0;
output  [31:0] buff_x_1_d0;
output  [3:0] buff_x_2_address0;
output   buff_x_2_ce0;
output   buff_x_2_we0;
output  [31:0] buff_x_2_d0;
output  [3:0] buff_x_3_address0;
output   buff_x_3_ce0;
output   buff_x_3_we0;
output  [31:0] buff_x_3_d0;
output  [5:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
output  [4:0] tmp2_address0;
output   tmp2_ce0;
output   tmp2_we0;
output  [31:0] tmp2_d0;
output  [4:0] tmp2_1_address0;
output   tmp2_1_ce0;
output   tmp2_1_we0;
output  [31:0] tmp2_1_d0;
output  [5:0] buff_y_out_address0;
output   buff_y_out_ce0;
output   buff_y_out_we0;
output  [31:0] buff_y_out_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln14_fu_1401_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln6_fu_1436_p3;
reg   [6:0] select_ln6_reg_1683;
wire   [5:0] empty_fu_1452_p1;
reg   [5:0] empty_reg_1691;
reg   [5:0] empty_reg_1691_pp0_iter2_reg;
wire   [0:0] first_iter_0_fu_1456_p2;
reg   [0:0] first_iter_0_reg_1697;
wire   [63:0] zext_ln14_fu_1462_p1;
reg   [63:0] zext_ln14_reg_1701;
reg   [63:0] zext_ln14_reg_1701_pp0_iter2_reg;
wire   [1:0] trunc_ln14_fu_1467_p1;
reg   [1:0] trunc_ln14_reg_1771;
wire   [0:0] trunc_ln14_1_fu_1471_p1;
reg   [0:0] trunc_ln14_1_reg_1775;
reg   [4:0] lshr_ln6_reg_1779;
reg   [3:0] lshr_ln6_1_reg_1784;
wire   [5:0] trunc_ln19_fu_1553_p1;
reg   [5:0] trunc_ln19_reg_1804;
wire   [1:0] trunc_ln19_1_fu_1556_p1;
reg   [1:0] trunc_ln19_1_reg_1808;
reg   [3:0] lshr_ln6_5_reg_1812;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln6_1_fu_1523_p1;
wire   [63:0] zext_ln6_fu_1518_p1;
wire   [63:0] zext_ln20_2_fu_1547_p1;
wire   [63:0] zext_ln20_1_fu_1574_p1;
reg   [6:0] j_fu_340;
wire   [6:0] add_ln19_fu_1495_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_344;
wire   [6:0] select_ln14_fu_1444_p3;
reg   [12:0] indvar_flatten_fu_348;
wire   [12:0] add_ln14_1_fu_1407_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg    x_ce0_local;
reg    buff_x_2_we0_local;
wire   [31:0] bitcast_ln15_fu_1530_p1;
reg    buff_x_2_ce0_local;
reg    buff_x_1_we0_local;
reg    buff_x_1_ce0_local;
reg    buff_x_we0_local;
reg    buff_x_ce0_local;
reg    buff_x_3_we0_local;
reg    buff_x_3_ce0_local;
reg    tmp1_we0_local;
reg    tmp1_ce0_local;
reg    tmp2_we0_local;
reg    tmp2_ce0_local;
reg    tmp2_1_we0_local;
reg    tmp2_1_ce0_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_ce0_local;
reg    A_ce0_local;
reg    B_ce0_local;
reg    buff_A_2_we0_local;
wire   [31:0] bitcast_ln20_fu_1582_p1;
reg    buff_A_2_ce0_local;
reg    buff_A_1_we0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_we0_local;
reg    buff_A_ce0_local;
reg    buff_A_3_we0_local;
reg    buff_A_3_ce0_local;
reg    buff_B_62_we0_local;
wire   [31:0] bitcast_ln21_fu_1590_p1;
reg    buff_B_62_ce0_local;
reg    buff_B_61_we0_local;
reg    buff_B_61_ce0_local;
reg    buff_B_60_we0_local;
reg    buff_B_60_ce0_local;
reg    buff_B_59_we0_local;
reg    buff_B_59_ce0_local;
reg    buff_B_58_we0_local;
reg    buff_B_58_ce0_local;
reg    buff_B_57_we0_local;
reg    buff_B_57_ce0_local;
reg    buff_B_56_we0_local;
reg    buff_B_56_ce0_local;
reg    buff_B_55_we0_local;
reg    buff_B_55_ce0_local;
reg    buff_B_54_we0_local;
reg    buff_B_54_ce0_local;
reg    buff_B_53_we0_local;
reg    buff_B_53_ce0_local;
reg    buff_B_52_we0_local;
reg    buff_B_52_ce0_local;
reg    buff_B_51_we0_local;
reg    buff_B_51_ce0_local;
reg    buff_B_50_we0_local;
reg    buff_B_50_ce0_local;
reg    buff_B_49_we0_local;
reg    buff_B_49_ce0_local;
reg    buff_B_48_we0_local;
reg    buff_B_48_ce0_local;
reg    buff_B_47_we0_local;
reg    buff_B_47_ce0_local;
reg    buff_B_46_we0_local;
reg    buff_B_46_ce0_local;
reg    buff_B_45_we0_local;
reg    buff_B_45_ce0_local;
reg    buff_B_44_we0_local;
reg    buff_B_44_ce0_local;
reg    buff_B_43_we0_local;
reg    buff_B_43_ce0_local;
reg    buff_B_42_we0_local;
reg    buff_B_42_ce0_local;
reg    buff_B_41_we0_local;
reg    buff_B_41_ce0_local;
reg    buff_B_40_we0_local;
reg    buff_B_40_ce0_local;
reg    buff_B_39_we0_local;
reg    buff_B_39_ce0_local;
reg    buff_B_38_we0_local;
reg    buff_B_38_ce0_local;
reg    buff_B_37_we0_local;
reg    buff_B_37_ce0_local;
reg    buff_B_36_we0_local;
reg    buff_B_36_ce0_local;
reg    buff_B_35_we0_local;
reg    buff_B_35_ce0_local;
reg    buff_B_34_we0_local;
reg    buff_B_34_ce0_local;
reg    buff_B_33_we0_local;
reg    buff_B_33_ce0_local;
reg    buff_B_32_we0_local;
reg    buff_B_32_ce0_local;
reg    buff_B_31_we0_local;
reg    buff_B_31_ce0_local;
reg    buff_B_30_we0_local;
reg    buff_B_30_ce0_local;
reg    buff_B_29_we0_local;
reg    buff_B_29_ce0_local;
reg    buff_B_28_we0_local;
reg    buff_B_28_ce0_local;
reg    buff_B_27_we0_local;
reg    buff_B_27_ce0_local;
reg    buff_B_26_we0_local;
reg    buff_B_26_ce0_local;
reg    buff_B_25_we0_local;
reg    buff_B_25_ce0_local;
reg    buff_B_24_we0_local;
reg    buff_B_24_ce0_local;
reg    buff_B_23_we0_local;
reg    buff_B_23_ce0_local;
reg    buff_B_22_we0_local;
reg    buff_B_22_ce0_local;
reg    buff_B_21_we0_local;
reg    buff_B_21_ce0_local;
reg    buff_B_20_we0_local;
reg    buff_B_20_ce0_local;
reg    buff_B_19_we0_local;
reg    buff_B_19_ce0_local;
reg    buff_B_18_we0_local;
reg    buff_B_18_ce0_local;
reg    buff_B_17_we0_local;
reg    buff_B_17_ce0_local;
reg    buff_B_16_we0_local;
reg    buff_B_16_ce0_local;
reg    buff_B_15_we0_local;
reg    buff_B_15_ce0_local;
reg    buff_B_14_we0_local;
reg    buff_B_14_ce0_local;
reg    buff_B_13_we0_local;
reg    buff_B_13_ce0_local;
reg    buff_B_12_we0_local;
reg    buff_B_12_ce0_local;
reg    buff_B_11_we0_local;
reg    buff_B_11_ce0_local;
reg    buff_B_10_we0_local;
reg    buff_B_10_ce0_local;
reg    buff_B_9_we0_local;
reg    buff_B_9_ce0_local;
reg    buff_B_8_we0_local;
reg    buff_B_8_ce0_local;
reg    buff_B_7_we0_local;
reg    buff_B_7_ce0_local;
reg    buff_B_6_we0_local;
reg    buff_B_6_ce0_local;
reg    buff_B_5_we0_local;
reg    buff_B_5_ce0_local;
reg    buff_B_4_we0_local;
reg    buff_B_4_ce0_local;
reg    buff_B_3_we0_local;
reg    buff_B_3_ce0_local;
reg    buff_B_2_we0_local;
reg    buff_B_2_ce0_local;
reg    buff_B_1_we0_local;
reg    buff_B_1_ce0_local;
reg    buff_B_we0_local;
reg    buff_B_ce0_local;
reg    buff_B_63_we0_local;
reg    buff_B_63_ce0_local;
wire   [0:0] icmp_ln19_fu_1430_p2;
wire   [6:0] add_ln14_fu_1424_p2;
wire   [11:0] tmp_fu_1511_p3;
wire   [11:0] zext_ln20_fu_1538_p1;
wire   [11:0] add_ln20_fu_1541_p2;
wire   [9:0] tmp_7_fu_1568_p3;
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
#0 j_fu_340 = 7'd0;
#0 i_fu_344 = 7'd0;
#0 indvar_flatten_fu_348 = 13'd0;
#0 ap_done_reg = 1'b0;
end
gesummv_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
            i_fu_344 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_344 <= select_ln14_fu_1444_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln14_fu_1401_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_348 <= add_ln14_1_fu_1407_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_348 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_340 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_340 <= add_ln19_fu_1495_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_1691 <= empty_fu_1452_p1;
        first_iter_0_reg_1697 <= first_iter_0_fu_1456_p2;
        lshr_ln6_1_reg_1784 <= {{select_ln14_fu_1444_p3[5:2]}};
        lshr_ln6_reg_1779 <= {{select_ln14_fu_1444_p3[5:1]}};
        select_ln6_reg_1683 <= select_ln6_fu_1436_p3;
        trunc_ln14_1_reg_1775 <= trunc_ln14_1_fu_1471_p1;
        trunc_ln14_reg_1771 <= trunc_ln14_fu_1467_p1;
        zext_ln14_reg_1701[6 : 0] <= zext_ln14_fu_1462_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        empty_reg_1691_pp0_iter2_reg <= empty_reg_1691;
        lshr_ln6_5_reg_1812 <= {{select_ln6_reg_1683[5:2]}};
        trunc_ln19_1_reg_1808 <= trunc_ln19_1_fu_1556_p1;
        trunc_ln19_reg_1804 <= trunc_ln19_fu_1553_p1;
        zext_ln14_reg_1701_pp0_iter2_reg[6 : 0] <= zext_ln14_reg_1701[6 : 0];
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        B_ce0_local = 1'b1;
    end else begin
        B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln14_fu_1401_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_348;
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
    if (((trunc_ln19_1_reg_1808 == 2'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_1_we0_local = 1'b1;
    end else begin
        buff_A_1_we0_local = 1'b0;
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
    if (((trunc_ln19_1_reg_1808 == 2'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_2_we0_local = 1'b1;
    end else begin
        buff_A_2_we0_local = 1'b0;
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
    if (((trunc_ln19_1_reg_1808 == 2'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_3_we0_local = 1'b1;
    end else begin
        buff_A_3_we0_local = 1'b0;
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
    if (((trunc_ln19_1_reg_1808 == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_we0_local = 1'b1;
    end else begin
        buff_A_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_10_ce0_local = 1'b1;
    end else begin
        buff_B_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_10_we0_local = 1'b1;
    end else begin
        buff_B_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_11_ce0_local = 1'b1;
    end else begin
        buff_B_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd11) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_11_we0_local = 1'b1;
    end else begin
        buff_B_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_12_ce0_local = 1'b1;
    end else begin
        buff_B_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd12) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_12_we0_local = 1'b1;
    end else begin
        buff_B_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_13_ce0_local = 1'b1;
    end else begin
        buff_B_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd13) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_13_we0_local = 1'b1;
    end else begin
        buff_B_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_14_ce0_local = 1'b1;
    end else begin
        buff_B_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd14) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_14_we0_local = 1'b1;
    end else begin
        buff_B_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_15_ce0_local = 1'b1;
    end else begin
        buff_B_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd15) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_15_we0_local = 1'b1;
    end else begin
        buff_B_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_16_ce0_local = 1'b1;
    end else begin
        buff_B_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd16) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_16_we0_local = 1'b1;
    end else begin
        buff_B_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_17_ce0_local = 1'b1;
    end else begin
        buff_B_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd17) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_17_we0_local = 1'b1;
    end else begin
        buff_B_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_18_ce0_local = 1'b1;
    end else begin
        buff_B_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd18) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_18_we0_local = 1'b1;
    end else begin
        buff_B_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_19_ce0_local = 1'b1;
    end else begin
        buff_B_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd19) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_19_we0_local = 1'b1;
    end else begin
        buff_B_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_1_we0_local = 1'b1;
    end else begin
        buff_B_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_20_ce0_local = 1'b1;
    end else begin
        buff_B_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd20) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_20_we0_local = 1'b1;
    end else begin
        buff_B_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_21_ce0_local = 1'b1;
    end else begin
        buff_B_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd21) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_21_we0_local = 1'b1;
    end else begin
        buff_B_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_22_ce0_local = 1'b1;
    end else begin
        buff_B_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd22) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_22_we0_local = 1'b1;
    end else begin
        buff_B_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_23_ce0_local = 1'b1;
    end else begin
        buff_B_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd23) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_23_we0_local = 1'b1;
    end else begin
        buff_B_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_24_ce0_local = 1'b1;
    end else begin
        buff_B_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd24) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_24_we0_local = 1'b1;
    end else begin
        buff_B_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_25_ce0_local = 1'b1;
    end else begin
        buff_B_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd25) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_25_we0_local = 1'b1;
    end else begin
        buff_B_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_26_ce0_local = 1'b1;
    end else begin
        buff_B_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd26) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_26_we0_local = 1'b1;
    end else begin
        buff_B_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_27_ce0_local = 1'b1;
    end else begin
        buff_B_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd27) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_27_we0_local = 1'b1;
    end else begin
        buff_B_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_28_ce0_local = 1'b1;
    end else begin
        buff_B_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd28) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_28_we0_local = 1'b1;
    end else begin
        buff_B_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_29_ce0_local = 1'b1;
    end else begin
        buff_B_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd29) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_29_we0_local = 1'b1;
    end else begin
        buff_B_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_2_we0_local = 1'b1;
    end else begin
        buff_B_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_30_ce0_local = 1'b1;
    end else begin
        buff_B_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd30) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_30_we0_local = 1'b1;
    end else begin
        buff_B_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_31_ce0_local = 1'b1;
    end else begin
        buff_B_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd31) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_31_we0_local = 1'b1;
    end else begin
        buff_B_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_32_ce0_local = 1'b1;
    end else begin
        buff_B_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd32) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_32_we0_local = 1'b1;
    end else begin
        buff_B_32_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_33_ce0_local = 1'b1;
    end else begin
        buff_B_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd33) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_33_we0_local = 1'b1;
    end else begin
        buff_B_33_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_34_ce0_local = 1'b1;
    end else begin
        buff_B_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd34) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_34_we0_local = 1'b1;
    end else begin
        buff_B_34_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_35_ce0_local = 1'b1;
    end else begin
        buff_B_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd35) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_35_we0_local = 1'b1;
    end else begin
        buff_B_35_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_36_ce0_local = 1'b1;
    end else begin
        buff_B_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd36) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_36_we0_local = 1'b1;
    end else begin
        buff_B_36_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_37_ce0_local = 1'b1;
    end else begin
        buff_B_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd37) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_37_we0_local = 1'b1;
    end else begin
        buff_B_37_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_38_ce0_local = 1'b1;
    end else begin
        buff_B_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd38) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_38_we0_local = 1'b1;
    end else begin
        buff_B_38_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_39_ce0_local = 1'b1;
    end else begin
        buff_B_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd39) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_39_we0_local = 1'b1;
    end else begin
        buff_B_39_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_3_we0_local = 1'b1;
    end else begin
        buff_B_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_40_ce0_local = 1'b1;
    end else begin
        buff_B_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd40) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_40_we0_local = 1'b1;
    end else begin
        buff_B_40_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_41_ce0_local = 1'b1;
    end else begin
        buff_B_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd41) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_41_we0_local = 1'b1;
    end else begin
        buff_B_41_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_42_ce0_local = 1'b1;
    end else begin
        buff_B_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd42) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_42_we0_local = 1'b1;
    end else begin
        buff_B_42_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_43_ce0_local = 1'b1;
    end else begin
        buff_B_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd43) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_43_we0_local = 1'b1;
    end else begin
        buff_B_43_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_44_ce0_local = 1'b1;
    end else begin
        buff_B_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd44) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_44_we0_local = 1'b1;
    end else begin
        buff_B_44_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_45_ce0_local = 1'b1;
    end else begin
        buff_B_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd45) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_45_we0_local = 1'b1;
    end else begin
        buff_B_45_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_46_ce0_local = 1'b1;
    end else begin
        buff_B_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd46) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_46_we0_local = 1'b1;
    end else begin
        buff_B_46_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_47_ce0_local = 1'b1;
    end else begin
        buff_B_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd47) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_47_we0_local = 1'b1;
    end else begin
        buff_B_47_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_48_ce0_local = 1'b1;
    end else begin
        buff_B_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd48) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_48_we0_local = 1'b1;
    end else begin
        buff_B_48_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_49_ce0_local = 1'b1;
    end else begin
        buff_B_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd49) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_49_we0_local = 1'b1;
    end else begin
        buff_B_49_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_4_ce0_local = 1'b1;
    end else begin
        buff_B_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_4_we0_local = 1'b1;
    end else begin
        buff_B_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_50_ce0_local = 1'b1;
    end else begin
        buff_B_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd50) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_50_we0_local = 1'b1;
    end else begin
        buff_B_50_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_51_ce0_local = 1'b1;
    end else begin
        buff_B_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd51) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_51_we0_local = 1'b1;
    end else begin
        buff_B_51_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_52_ce0_local = 1'b1;
    end else begin
        buff_B_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd52) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_52_we0_local = 1'b1;
    end else begin
        buff_B_52_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_53_ce0_local = 1'b1;
    end else begin
        buff_B_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd53) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_53_we0_local = 1'b1;
    end else begin
        buff_B_53_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_54_ce0_local = 1'b1;
    end else begin
        buff_B_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd54) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_54_we0_local = 1'b1;
    end else begin
        buff_B_54_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_55_ce0_local = 1'b1;
    end else begin
        buff_B_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd55) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_55_we0_local = 1'b1;
    end else begin
        buff_B_55_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_56_ce0_local = 1'b1;
    end else begin
        buff_B_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd56) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_56_we0_local = 1'b1;
    end else begin
        buff_B_56_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_57_ce0_local = 1'b1;
    end else begin
        buff_B_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd57) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_57_we0_local = 1'b1;
    end else begin
        buff_B_57_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_58_ce0_local = 1'b1;
    end else begin
        buff_B_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd58) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_58_we0_local = 1'b1;
    end else begin
        buff_B_58_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_59_ce0_local = 1'b1;
    end else begin
        buff_B_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd59) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_59_we0_local = 1'b1;
    end else begin
        buff_B_59_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_5_ce0_local = 1'b1;
    end else begin
        buff_B_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_5_we0_local = 1'b1;
    end else begin
        buff_B_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_60_ce0_local = 1'b1;
    end else begin
        buff_B_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_60_we0_local = 1'b1;
    end else begin
        buff_B_60_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_61_ce0_local = 1'b1;
    end else begin
        buff_B_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd61) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_61_we0_local = 1'b1;
    end else begin
        buff_B_61_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_62_ce0_local = 1'b1;
    end else begin
        buff_B_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd62) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_62_we0_local = 1'b1;
    end else begin
        buff_B_62_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_63_ce0_local = 1'b1;
    end else begin
        buff_B_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd63) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_63_we0_local = 1'b1;
    end else begin
        buff_B_63_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_6_ce0_local = 1'b1;
    end else begin
        buff_B_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_6_we0_local = 1'b1;
    end else begin
        buff_B_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_7_ce0_local = 1'b1;
    end else begin
        buff_B_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_7_we0_local = 1'b1;
    end else begin
        buff_B_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_8_ce0_local = 1'b1;
    end else begin
        buff_B_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_8_we0_local = 1'b1;
    end else begin
        buff_B_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_9_ce0_local = 1'b1;
    end else begin
        buff_B_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_9_we0_local = 1'b1;
    end else begin
        buff_B_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln19_reg_1804 == 6'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_B_we0_local = 1'b1;
    end else begin
        buff_B_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x_1_ce0_local = 1'b1;
    end else begin
        buff_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_reg_1771 == 2'd1) & (first_iter_0_reg_1697 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x_2_ce0_local = 1'b1;
    end else begin
        buff_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_reg_1771 == 2'd2) & (first_iter_0_reg_1697 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x_2_we0_local = 1'b1;
    end else begin
        buff_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x_3_ce0_local = 1'b1;
    end else begin
        buff_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_reg_1771 == 2'd3) & (first_iter_0_reg_1697 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x_3_we0_local = 1'b1;
    end else begin
        buff_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x_ce0_local = 1'b1;
    end else begin
        buff_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_reg_1771 == 2'd0) & (first_iter_0_reg_1697 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((first_iter_0_reg_1697 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((first_iter_0_reg_1697 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1775 == 1'd1) & (first_iter_0_reg_1697 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmp2_1_we0_local = 1'b1;
    end else begin
        tmp2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln14_1_reg_1775 == 1'd0) & (first_iter_0_reg_1697 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmp2_we0_local = 1'b1;
    end else begin
        tmp2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_ce0_local = 1'b1;
    end else begin
        x_ce0_local = 1'b0;
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
assign A_address0 = zext_ln20_2_fu_1547_p1;
assign A_ce0 = A_ce0_local;
assign B_address0 = zext_ln20_2_fu_1547_p1;
assign B_ce0 = B_ce0_local;
assign add_ln14_1_fu_1407_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln14_fu_1424_p2 = (i_fu_344 + 7'd1);
assign add_ln19_fu_1495_p2 = (select_ln6_fu_1436_p3 + 7'd1);
assign add_ln20_fu_1541_p2 = (tmp_fu_1511_p3 + zext_ln20_fu_1538_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln15_fu_1530_p1 = x_q0;
assign bitcast_ln20_fu_1582_p1 = A_q0;
assign bitcast_ln21_fu_1590_p1 = B_q0;
assign buff_A_1_address0 = zext_ln20_1_fu_1574_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_1_d0 = bitcast_ln20_fu_1582_p1;
assign buff_A_1_we0 = buff_A_1_we0_local;
assign buff_A_2_address0 = zext_ln20_1_fu_1574_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_2_d0 = bitcast_ln20_fu_1582_p1;
assign buff_A_2_we0 = buff_A_2_we0_local;
assign buff_A_3_address0 = zext_ln20_1_fu_1574_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_3_d0 = bitcast_ln20_fu_1582_p1;
assign buff_A_3_we0 = buff_A_3_we0_local;
assign buff_A_address0 = zext_ln20_1_fu_1574_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_d0 = bitcast_ln20_fu_1582_p1;
assign buff_A_we0 = buff_A_we0_local;
assign buff_B_10_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_10_ce0 = buff_B_10_ce0_local;
assign buff_B_10_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_10_we0 = buff_B_10_we0_local;
assign buff_B_11_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_11_ce0 = buff_B_11_ce0_local;
assign buff_B_11_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_11_we0 = buff_B_11_we0_local;
assign buff_B_12_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_12_ce0 = buff_B_12_ce0_local;
assign buff_B_12_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_12_we0 = buff_B_12_we0_local;
assign buff_B_13_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_13_ce0 = buff_B_13_ce0_local;
assign buff_B_13_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_13_we0 = buff_B_13_we0_local;
assign buff_B_14_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_14_ce0 = buff_B_14_ce0_local;
assign buff_B_14_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_14_we0 = buff_B_14_we0_local;
assign buff_B_15_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_15_ce0 = buff_B_15_ce0_local;
assign buff_B_15_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_15_we0 = buff_B_15_we0_local;
assign buff_B_16_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_16_ce0 = buff_B_16_ce0_local;
assign buff_B_16_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_16_we0 = buff_B_16_we0_local;
assign buff_B_17_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_17_ce0 = buff_B_17_ce0_local;
assign buff_B_17_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_17_we0 = buff_B_17_we0_local;
assign buff_B_18_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_18_ce0 = buff_B_18_ce0_local;
assign buff_B_18_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_18_we0 = buff_B_18_we0_local;
assign buff_B_19_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_19_ce0 = buff_B_19_ce0_local;
assign buff_B_19_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_19_we0 = buff_B_19_we0_local;
assign buff_B_1_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_1_we0 = buff_B_1_we0_local;
assign buff_B_20_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_20_ce0 = buff_B_20_ce0_local;
assign buff_B_20_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_20_we0 = buff_B_20_we0_local;
assign buff_B_21_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_21_ce0 = buff_B_21_ce0_local;
assign buff_B_21_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_21_we0 = buff_B_21_we0_local;
assign buff_B_22_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_22_ce0 = buff_B_22_ce0_local;
assign buff_B_22_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_22_we0 = buff_B_22_we0_local;
assign buff_B_23_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_23_ce0 = buff_B_23_ce0_local;
assign buff_B_23_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_23_we0 = buff_B_23_we0_local;
assign buff_B_24_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_24_ce0 = buff_B_24_ce0_local;
assign buff_B_24_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_24_we0 = buff_B_24_we0_local;
assign buff_B_25_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_25_ce0 = buff_B_25_ce0_local;
assign buff_B_25_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_25_we0 = buff_B_25_we0_local;
assign buff_B_26_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_26_ce0 = buff_B_26_ce0_local;
assign buff_B_26_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_26_we0 = buff_B_26_we0_local;
assign buff_B_27_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_27_ce0 = buff_B_27_ce0_local;
assign buff_B_27_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_27_we0 = buff_B_27_we0_local;
assign buff_B_28_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_28_ce0 = buff_B_28_ce0_local;
assign buff_B_28_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_28_we0 = buff_B_28_we0_local;
assign buff_B_29_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_29_ce0 = buff_B_29_ce0_local;
assign buff_B_29_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_29_we0 = buff_B_29_we0_local;
assign buff_B_2_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_2_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_2_we0 = buff_B_2_we0_local;
assign buff_B_30_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_30_ce0 = buff_B_30_ce0_local;
assign buff_B_30_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_30_we0 = buff_B_30_we0_local;
assign buff_B_31_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_31_ce0 = buff_B_31_ce0_local;
assign buff_B_31_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_31_we0 = buff_B_31_we0_local;
assign buff_B_32_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_32_ce0 = buff_B_32_ce0_local;
assign buff_B_32_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_32_we0 = buff_B_32_we0_local;
assign buff_B_33_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_33_ce0 = buff_B_33_ce0_local;
assign buff_B_33_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_33_we0 = buff_B_33_we0_local;
assign buff_B_34_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_34_ce0 = buff_B_34_ce0_local;
assign buff_B_34_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_34_we0 = buff_B_34_we0_local;
assign buff_B_35_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_35_ce0 = buff_B_35_ce0_local;
assign buff_B_35_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_35_we0 = buff_B_35_we0_local;
assign buff_B_36_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_36_ce0 = buff_B_36_ce0_local;
assign buff_B_36_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_36_we0 = buff_B_36_we0_local;
assign buff_B_37_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_37_ce0 = buff_B_37_ce0_local;
assign buff_B_37_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_37_we0 = buff_B_37_we0_local;
assign buff_B_38_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_38_ce0 = buff_B_38_ce0_local;
assign buff_B_38_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_38_we0 = buff_B_38_we0_local;
assign buff_B_39_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_39_ce0 = buff_B_39_ce0_local;
assign buff_B_39_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_39_we0 = buff_B_39_we0_local;
assign buff_B_3_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_3_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_3_we0 = buff_B_3_we0_local;
assign buff_B_40_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_40_ce0 = buff_B_40_ce0_local;
assign buff_B_40_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_40_we0 = buff_B_40_we0_local;
assign buff_B_41_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_41_ce0 = buff_B_41_ce0_local;
assign buff_B_41_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_41_we0 = buff_B_41_we0_local;
assign buff_B_42_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_42_ce0 = buff_B_42_ce0_local;
assign buff_B_42_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_42_we0 = buff_B_42_we0_local;
assign buff_B_43_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_43_ce0 = buff_B_43_ce0_local;
assign buff_B_43_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_43_we0 = buff_B_43_we0_local;
assign buff_B_44_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_44_ce0 = buff_B_44_ce0_local;
assign buff_B_44_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_44_we0 = buff_B_44_we0_local;
assign buff_B_45_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_45_ce0 = buff_B_45_ce0_local;
assign buff_B_45_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_45_we0 = buff_B_45_we0_local;
assign buff_B_46_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_46_ce0 = buff_B_46_ce0_local;
assign buff_B_46_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_46_we0 = buff_B_46_we0_local;
assign buff_B_47_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_47_ce0 = buff_B_47_ce0_local;
assign buff_B_47_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_47_we0 = buff_B_47_we0_local;
assign buff_B_48_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_48_ce0 = buff_B_48_ce0_local;
assign buff_B_48_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_48_we0 = buff_B_48_we0_local;
assign buff_B_49_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_49_ce0 = buff_B_49_ce0_local;
assign buff_B_49_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_49_we0 = buff_B_49_we0_local;
assign buff_B_4_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_4_ce0 = buff_B_4_ce0_local;
assign buff_B_4_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_4_we0 = buff_B_4_we0_local;
assign buff_B_50_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_50_ce0 = buff_B_50_ce0_local;
assign buff_B_50_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_50_we0 = buff_B_50_we0_local;
assign buff_B_51_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_51_ce0 = buff_B_51_ce0_local;
assign buff_B_51_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_51_we0 = buff_B_51_we0_local;
assign buff_B_52_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_52_ce0 = buff_B_52_ce0_local;
assign buff_B_52_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_52_we0 = buff_B_52_we0_local;
assign buff_B_53_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_53_ce0 = buff_B_53_ce0_local;
assign buff_B_53_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_53_we0 = buff_B_53_we0_local;
assign buff_B_54_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_54_ce0 = buff_B_54_ce0_local;
assign buff_B_54_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_54_we0 = buff_B_54_we0_local;
assign buff_B_55_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_55_ce0 = buff_B_55_ce0_local;
assign buff_B_55_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_55_we0 = buff_B_55_we0_local;
assign buff_B_56_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_56_ce0 = buff_B_56_ce0_local;
assign buff_B_56_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_56_we0 = buff_B_56_we0_local;
assign buff_B_57_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_57_ce0 = buff_B_57_ce0_local;
assign buff_B_57_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_57_we0 = buff_B_57_we0_local;
assign buff_B_58_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_58_ce0 = buff_B_58_ce0_local;
assign buff_B_58_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_58_we0 = buff_B_58_we0_local;
assign buff_B_59_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_59_ce0 = buff_B_59_ce0_local;
assign buff_B_59_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_59_we0 = buff_B_59_we0_local;
assign buff_B_5_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_5_ce0 = buff_B_5_ce0_local;
assign buff_B_5_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_5_we0 = buff_B_5_we0_local;
assign buff_B_60_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_60_ce0 = buff_B_60_ce0_local;
assign buff_B_60_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_60_we0 = buff_B_60_we0_local;
assign buff_B_61_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_61_ce0 = buff_B_61_ce0_local;
assign buff_B_61_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_61_we0 = buff_B_61_we0_local;
assign buff_B_62_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_62_ce0 = buff_B_62_ce0_local;
assign buff_B_62_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_62_we0 = buff_B_62_we0_local;
assign buff_B_63_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_63_ce0 = buff_B_63_ce0_local;
assign buff_B_63_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_63_we0 = buff_B_63_we0_local;
assign buff_B_6_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_6_ce0 = buff_B_6_ce0_local;
assign buff_B_6_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_6_we0 = buff_B_6_we0_local;
assign buff_B_7_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_7_ce0 = buff_B_7_ce0_local;
assign buff_B_7_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_7_we0 = buff_B_7_we0_local;
assign buff_B_8_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_8_ce0 = buff_B_8_ce0_local;
assign buff_B_8_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_8_we0 = buff_B_8_we0_local;
assign buff_B_9_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_9_ce0 = buff_B_9_ce0_local;
assign buff_B_9_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_9_we0 = buff_B_9_we0_local;
assign buff_B_address0 = zext_ln14_reg_1701_pp0_iter2_reg;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_d0 = bitcast_ln21_fu_1590_p1;
assign buff_B_we0 = buff_B_we0_local;
assign buff_x_1_address0 = zext_ln6_1_fu_1523_p1;
assign buff_x_1_ce0 = buff_x_1_ce0_local;
assign buff_x_1_d0 = bitcast_ln15_fu_1530_p1;
assign buff_x_1_we0 = buff_x_1_we0_local;
assign buff_x_2_address0 = zext_ln6_1_fu_1523_p1;
assign buff_x_2_ce0 = buff_x_2_ce0_local;
assign buff_x_2_d0 = bitcast_ln15_fu_1530_p1;
assign buff_x_2_we0 = buff_x_2_we0_local;
assign buff_x_3_address0 = zext_ln6_1_fu_1523_p1;
assign buff_x_3_ce0 = buff_x_3_ce0_local;
assign buff_x_3_d0 = bitcast_ln15_fu_1530_p1;
assign buff_x_3_we0 = buff_x_3_we0_local;
assign buff_x_address0 = zext_ln6_1_fu_1523_p1;
assign buff_x_ce0 = buff_x_ce0_local;
assign buff_x_d0 = bitcast_ln15_fu_1530_p1;
assign buff_x_we0 = buff_x_we0_local;
assign buff_y_out_address0 = zext_ln14_reg_1701;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_d0 = 32'd0;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign empty_fu_1452_p1 = select_ln14_fu_1444_p3[5:0];
assign first_iter_0_fu_1456_p2 = ((select_ln6_fu_1436_p3 == 7'd0) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_1401_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_1430_p2 = ((j_fu_340 == 7'd64) ? 1'b1 : 1'b0);
assign select_ln14_fu_1444_p3 = ((icmp_ln19_fu_1430_p2[0:0] == 1'b1) ? add_ln14_fu_1424_p2 : i_fu_344);
assign select_ln6_fu_1436_p3 = ((icmp_ln19_fu_1430_p2[0:0] == 1'b1) ? 7'd0 : j_fu_340);
assign tmp1_address0 = zext_ln14_reg_1701;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = 32'd0;
assign tmp1_we0 = tmp1_we0_local;
assign tmp2_1_address0 = zext_ln6_fu_1518_p1;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_1_d0 = 32'd0;
assign tmp2_1_we0 = tmp2_1_we0_local;
assign tmp2_address0 = zext_ln6_fu_1518_p1;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp2_d0 = 32'd0;
assign tmp2_we0 = tmp2_we0_local;
assign tmp_7_fu_1568_p3 = {{empty_reg_1691_pp0_iter2_reg}, {lshr_ln6_5_reg_1812}};
assign tmp_fu_1511_p3 = {{empty_reg_1691}, {6'd0}};
assign trunc_ln14_1_fu_1471_p1 = select_ln14_fu_1444_p3[0:0];
assign trunc_ln14_fu_1467_p1 = select_ln14_fu_1444_p3[1:0];
assign trunc_ln19_1_fu_1556_p1 = select_ln6_reg_1683[1:0];
assign trunc_ln19_fu_1553_p1 = select_ln6_reg_1683[5:0];
assign x_address0 = zext_ln14_fu_1462_p1;
assign x_ce0 = x_ce0_local;
assign zext_ln14_fu_1462_p1 = select_ln14_fu_1444_p3;
assign zext_ln20_1_fu_1574_p1 = tmp_7_fu_1568_p3;
assign zext_ln20_2_fu_1547_p1 = add_ln20_fu_1541_p2;
assign zext_ln20_fu_1538_p1 = select_ln6_reg_1683;
assign zext_ln6_1_fu_1523_p1 = lshr_ln6_1_reg_1784;
assign zext_ln6_fu_1518_p1 = lshr_ln6_reg_1779;
always @ (posedge ap_clk) begin
    zext_ln14_reg_1701[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln14_reg_1701_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 
