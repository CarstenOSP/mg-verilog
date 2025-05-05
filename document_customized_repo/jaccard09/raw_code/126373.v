module atax_atax_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_16_address0,buff_A_16_ce0,buff_A_16_q0,buff_A_24_address0,buff_A_24_ce0,buff_A_24_q0,buff_A_32_address0,buff_A_32_ce0,buff_A_32_q0,buff_A_40_address0,buff_A_40_ce0,buff_A_40_q0,buff_A_48_address0,buff_A_48_ce0,buff_A_48_q0,buff_A_56_address0,buff_A_56_ce0,buff_A_56_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_17_address0,buff_A_17_ce0,buff_A_17_q0,buff_A_25_address0,buff_A_25_ce0,buff_A_25_q0,buff_A_33_address0,buff_A_33_ce0,buff_A_33_q0,buff_A_41_address0,buff_A_41_ce0,buff_A_41_q0,buff_A_49_address0,buff_A_49_ce0,buff_A_49_q0,buff_A_57_address0,buff_A_57_ce0,buff_A_57_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_18_address0,buff_A_18_ce0,buff_A_18_q0,buff_A_26_address0,buff_A_26_ce0,buff_A_26_q0,buff_A_34_address0,buff_A_34_ce0,buff_A_34_q0,buff_A_42_address0,buff_A_42_ce0,buff_A_42_q0,buff_A_50_address0,buff_A_50_ce0,buff_A_50_q0,buff_A_58_address0,buff_A_58_ce0,buff_A_58_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_19_address0,buff_A_19_ce0,buff_A_19_q0,buff_A_27_address0,buff_A_27_ce0,buff_A_27_q0,buff_A_35_address0,buff_A_35_ce0,buff_A_35_q0,buff_A_43_address0,buff_A_43_ce0,buff_A_43_q0,buff_A_51_address0,buff_A_51_ce0,buff_A_51_q0,buff_A_59_address0,buff_A_59_ce0,buff_A_59_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_20_address0,buff_A_20_ce0,buff_A_20_q0,buff_A_28_address0,buff_A_28_ce0,buff_A_28_q0,buff_A_36_address0,buff_A_36_ce0,buff_A_36_q0,buff_A_44_address0,buff_A_44_ce0,buff_A_44_q0,buff_A_52_address0,buff_A_52_ce0,buff_A_52_q0,buff_A_60_address0,buff_A_60_ce0,buff_A_60_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_21_address0,buff_A_21_ce0,buff_A_21_q0,buff_A_29_address0,buff_A_29_ce0,buff_A_29_q0,buff_A_37_address0,buff_A_37_ce0,buff_A_37_q0,buff_A_45_address0,buff_A_45_ce0,buff_A_45_q0,buff_A_53_address0,buff_A_53_ce0,buff_A_53_q0,buff_A_61_address0,buff_A_61_ce0,buff_A_61_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_22_address0,buff_A_22_ce0,buff_A_22_q0,buff_A_30_address0,buff_A_30_ce0,buff_A_30_q0,buff_A_38_address0,buff_A_38_ce0,buff_A_38_q0,buff_A_46_address0,buff_A_46_ce0,buff_A_46_q0,buff_A_54_address0,buff_A_54_ce0,buff_A_54_q0,buff_A_62_address0,buff_A_62_ce0,buff_A_62_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_A_23_address0,buff_A_23_ce0,buff_A_23_q0,buff_A_31_address0,buff_A_31_ce0,buff_A_31_q0,buff_A_39_address0,buff_A_39_ce0,buff_A_39_q0,buff_A_47_address0,buff_A_47_ce0,buff_A_47_q0,buff_A_55_address0,buff_A_55_ce0,buff_A_55_q0,buff_A_63_address0,buff_A_63_ce0,buff_A_63_q0,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,buff_y_out_address1,buff_y_out_ce1,buff_y_out_q1,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,buff_y_out_1_address1,buff_y_out_1_ce1,buff_y_out_1_q1,buff_y_out_2_address0,buff_y_out_2_ce0,buff_y_out_2_we0,buff_y_out_2_d0,buff_y_out_2_address1,buff_y_out_2_ce1,buff_y_out_2_q1,buff_y_out_3_address0,buff_y_out_3_ce0,buff_y_out_3_we0,buff_y_out_3_d0,buff_y_out_3_address1,buff_y_out_3_ce1,buff_y_out_3_q1,buff_y_out_4_address0,buff_y_out_4_ce0,buff_y_out_4_we0,buff_y_out_4_d0,buff_y_out_4_q0,buff_y_out_5_address0,buff_y_out_5_ce0,buff_y_out_5_we0,buff_y_out_5_d0,buff_y_out_5_q0,buff_y_out_6_address0,buff_y_out_6_ce0,buff_y_out_6_we0,buff_y_out_6_d0,buff_y_out_6_q0,buff_y_out_7_address0,buff_y_out_7_ce0,buff_y_out_7_we0,buff_y_out_7_d0,buff_y_out_7_q0,grp_fu_2009_p_din0,grp_fu_2009_p_din1,grp_fu_2009_p_opcode,grp_fu_2009_p_dout0,grp_fu_2009_p_ce,grp_fu_2013_p_din0,grp_fu_2013_p_din1,grp_fu_2013_p_opcode,grp_fu_2013_p_dout0,grp_fu_2013_p_ce,grp_fu_2017_p_din0,grp_fu_2017_p_din1,grp_fu_2017_p_opcode,grp_fu_2017_p_dout0,grp_fu_2017_p_ce,grp_fu_2021_p_din0,grp_fu_2021_p_din1,grp_fu_2021_p_opcode,grp_fu_2021_p_dout0,grp_fu_2021_p_ce,grp_fu_2025_p_din0,grp_fu_2025_p_din1,grp_fu_2025_p_dout0,grp_fu_2025_p_ce,grp_fu_2029_p_din0,grp_fu_2029_p_din1,grp_fu_2029_p_dout0,grp_fu_2029_p_ce,grp_fu_2033_p_din0,grp_fu_2033_p_din1,grp_fu_2033_p_dout0,grp_fu_2033_p_ce,grp_fu_2037_p_din0,grp_fu_2037_p_din1,grp_fu_2037_p_dout0,grp_fu_2037_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [4:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [5:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [5:0] buff_A_8_address0;
output   buff_A_8_ce0;
input  [31:0] buff_A_8_q0;
output  [5:0] buff_A_16_address0;
output   buff_A_16_ce0;
input  [31:0] buff_A_16_q0;
output  [5:0] buff_A_24_address0;
output   buff_A_24_ce0;
input  [31:0] buff_A_24_q0;
output  [5:0] buff_A_32_address0;
output   buff_A_32_ce0;
input  [31:0] buff_A_32_q0;
output  [5:0] buff_A_40_address0;
output   buff_A_40_ce0;
input  [31:0] buff_A_40_q0;
output  [5:0] buff_A_48_address0;
output   buff_A_48_ce0;
input  [31:0] buff_A_48_q0;
output  [5:0] buff_A_56_address0;
output   buff_A_56_ce0;
input  [31:0] buff_A_56_q0;
output  [5:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [5:0] buff_A_9_address0;
output   buff_A_9_ce0;
input  [31:0] buff_A_9_q0;
output  [5:0] buff_A_17_address0;
output   buff_A_17_ce0;
input  [31:0] buff_A_17_q0;
output  [5:0] buff_A_25_address0;
output   buff_A_25_ce0;
input  [31:0] buff_A_25_q0;
output  [5:0] buff_A_33_address0;
output   buff_A_33_ce0;
input  [31:0] buff_A_33_q0;
output  [5:0] buff_A_41_address0;
output   buff_A_41_ce0;
input  [31:0] buff_A_41_q0;
output  [5:0] buff_A_49_address0;
output   buff_A_49_ce0;
input  [31:0] buff_A_49_q0;
output  [5:0] buff_A_57_address0;
output   buff_A_57_ce0;
input  [31:0] buff_A_57_q0;
output  [5:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [5:0] buff_A_10_address0;
output   buff_A_10_ce0;
input  [31:0] buff_A_10_q0;
output  [5:0] buff_A_18_address0;
output   buff_A_18_ce0;
input  [31:0] buff_A_18_q0;
output  [5:0] buff_A_26_address0;
output   buff_A_26_ce0;
input  [31:0] buff_A_26_q0;
output  [5:0] buff_A_34_address0;
output   buff_A_34_ce0;
input  [31:0] buff_A_34_q0;
output  [5:0] buff_A_42_address0;
output   buff_A_42_ce0;
input  [31:0] buff_A_42_q0;
output  [5:0] buff_A_50_address0;
output   buff_A_50_ce0;
input  [31:0] buff_A_50_q0;
output  [5:0] buff_A_58_address0;
output   buff_A_58_ce0;
input  [31:0] buff_A_58_q0;
output  [5:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [5:0] buff_A_11_address0;
output   buff_A_11_ce0;
input  [31:0] buff_A_11_q0;
output  [5:0] buff_A_19_address0;
output   buff_A_19_ce0;
input  [31:0] buff_A_19_q0;
output  [5:0] buff_A_27_address0;
output   buff_A_27_ce0;
input  [31:0] buff_A_27_q0;
output  [5:0] buff_A_35_address0;
output   buff_A_35_ce0;
input  [31:0] buff_A_35_q0;
output  [5:0] buff_A_43_address0;
output   buff_A_43_ce0;
input  [31:0] buff_A_43_q0;
output  [5:0] buff_A_51_address0;
output   buff_A_51_ce0;
input  [31:0] buff_A_51_q0;
output  [5:0] buff_A_59_address0;
output   buff_A_59_ce0;
input  [31:0] buff_A_59_q0;
output  [5:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [5:0] buff_A_12_address0;
output   buff_A_12_ce0;
input  [31:0] buff_A_12_q0;
output  [5:0] buff_A_20_address0;
output   buff_A_20_ce0;
input  [31:0] buff_A_20_q0;
output  [5:0] buff_A_28_address0;
output   buff_A_28_ce0;
input  [31:0] buff_A_28_q0;
output  [5:0] buff_A_36_address0;
output   buff_A_36_ce0;
input  [31:0] buff_A_36_q0;
output  [5:0] buff_A_44_address0;
output   buff_A_44_ce0;
input  [31:0] buff_A_44_q0;
output  [5:0] buff_A_52_address0;
output   buff_A_52_ce0;
input  [31:0] buff_A_52_q0;
output  [5:0] buff_A_60_address0;
output   buff_A_60_ce0;
input  [31:0] buff_A_60_q0;
output  [5:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [5:0] buff_A_13_address0;
output   buff_A_13_ce0;
input  [31:0] buff_A_13_q0;
output  [5:0] buff_A_21_address0;
output   buff_A_21_ce0;
input  [31:0] buff_A_21_q0;
output  [5:0] buff_A_29_address0;
output   buff_A_29_ce0;
input  [31:0] buff_A_29_q0;
output  [5:0] buff_A_37_address0;
output   buff_A_37_ce0;
input  [31:0] buff_A_37_q0;
output  [5:0] buff_A_45_address0;
output   buff_A_45_ce0;
input  [31:0] buff_A_45_q0;
output  [5:0] buff_A_53_address0;
output   buff_A_53_ce0;
input  [31:0] buff_A_53_q0;
output  [5:0] buff_A_61_address0;
output   buff_A_61_ce0;
input  [31:0] buff_A_61_q0;
output  [5:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [5:0] buff_A_14_address0;
output   buff_A_14_ce0;
input  [31:0] buff_A_14_q0;
output  [5:0] buff_A_22_address0;
output   buff_A_22_ce0;
input  [31:0] buff_A_22_q0;
output  [5:0] buff_A_30_address0;
output   buff_A_30_ce0;
input  [31:0] buff_A_30_q0;
output  [5:0] buff_A_38_address0;
output   buff_A_38_ce0;
input  [31:0] buff_A_38_q0;
output  [5:0] buff_A_46_address0;
output   buff_A_46_ce0;
input  [31:0] buff_A_46_q0;
output  [5:0] buff_A_54_address0;
output   buff_A_54_ce0;
input  [31:0] buff_A_54_q0;
output  [5:0] buff_A_62_address0;
output   buff_A_62_ce0;
input  [31:0] buff_A_62_q0;
output  [5:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [5:0] buff_A_15_address0;
output   buff_A_15_ce0;
input  [31:0] buff_A_15_q0;
output  [5:0] buff_A_23_address0;
output   buff_A_23_ce0;
input  [31:0] buff_A_23_q0;
output  [5:0] buff_A_31_address0;
output   buff_A_31_ce0;
input  [31:0] buff_A_31_q0;
output  [5:0] buff_A_39_address0;
output   buff_A_39_ce0;
input  [31:0] buff_A_39_q0;
output  [5:0] buff_A_47_address0;
output   buff_A_47_ce0;
input  [31:0] buff_A_47_q0;
output  [5:0] buff_A_55_address0;
output   buff_A_55_ce0;
input  [31:0] buff_A_55_q0;
output  [5:0] buff_A_63_address0;
output   buff_A_63_ce0;
input  [31:0] buff_A_63_q0;
output  [2:0] buff_y_out_address0;
output   buff_y_out_ce0;
output   buff_y_out_we0;
output  [31:0] buff_y_out_d0;
output  [2:0] buff_y_out_address1;
output   buff_y_out_ce1;
input  [31:0] buff_y_out_q1;
output  [2:0] buff_y_out_1_address0;
output   buff_y_out_1_ce0;
output   buff_y_out_1_we0;
output  [31:0] buff_y_out_1_d0;
output  [2:0] buff_y_out_1_address1;
output   buff_y_out_1_ce1;
input  [31:0] buff_y_out_1_q1;
output  [2:0] buff_y_out_2_address0;
output   buff_y_out_2_ce0;
output   buff_y_out_2_we0;
output  [31:0] buff_y_out_2_d0;
output  [2:0] buff_y_out_2_address1;
output   buff_y_out_2_ce1;
input  [31:0] buff_y_out_2_q1;
output  [2:0] buff_y_out_3_address0;
output   buff_y_out_3_ce0;
output   buff_y_out_3_we0;
output  [31:0] buff_y_out_3_d0;
output  [2:0] buff_y_out_3_address1;
output   buff_y_out_3_ce1;
input  [31:0] buff_y_out_3_q1;
output  [2:0] buff_y_out_4_address0;
output   buff_y_out_4_ce0;
output   buff_y_out_4_we0;
output  [31:0] buff_y_out_4_d0;
input  [31:0] buff_y_out_4_q0;
output  [2:0] buff_y_out_5_address0;
output   buff_y_out_5_ce0;
output   buff_y_out_5_we0;
output  [31:0] buff_y_out_5_d0;
input  [31:0] buff_y_out_5_q0;
output  [2:0] buff_y_out_6_address0;
output   buff_y_out_6_ce0;
output   buff_y_out_6_we0;
output  [31:0] buff_y_out_6_d0;
input  [31:0] buff_y_out_6_q0;
output  [2:0] buff_y_out_7_address0;
output   buff_y_out_7_ce0;
output   buff_y_out_7_we0;
output  [31:0] buff_y_out_7_d0;
input  [31:0] buff_y_out_7_q0;
output  [31:0] grp_fu_2009_p_din0;
output  [31:0] grp_fu_2009_p_din1;
output  [1:0] grp_fu_2009_p_opcode;
input  [31:0] grp_fu_2009_p_dout0;
output   grp_fu_2009_p_ce;
output  [31:0] grp_fu_2013_p_din0;
output  [31:0] grp_fu_2013_p_din1;
output  [1:0] grp_fu_2013_p_opcode;
input  [31:0] grp_fu_2013_p_dout0;
output   grp_fu_2013_p_ce;
output  [31:0] grp_fu_2017_p_din0;
output  [31:0] grp_fu_2017_p_din1;
output  [1:0] grp_fu_2017_p_opcode;
input  [31:0] grp_fu_2017_p_dout0;
output   grp_fu_2017_p_ce;
output  [31:0] grp_fu_2021_p_din0;
output  [31:0] grp_fu_2021_p_din1;
output  [1:0] grp_fu_2021_p_opcode;
input  [31:0] grp_fu_2021_p_dout0;
output   grp_fu_2021_p_ce;
output  [31:0] grp_fu_2025_p_din0;
output  [31:0] grp_fu_2025_p_din1;
input  [31:0] grp_fu_2025_p_dout0;
output   grp_fu_2025_p_ce;
output  [31:0] grp_fu_2029_p_din0;
output  [31:0] grp_fu_2029_p_din1;
input  [31:0] grp_fu_2029_p_dout0;
output   grp_fu_2029_p_ce;
output  [31:0] grp_fu_2033_p_din0;
output  [31:0] grp_fu_2033_p_din1;
input  [31:0] grp_fu_2033_p_dout0;
output   grp_fu_2033_p_ce;
output  [31:0] grp_fu_2037_p_din0;
output  [31:0] grp_fu_2037_p_din1;
input  [31:0] grp_fu_2037_p_dout0;
output   grp_fu_2037_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln26_fu_1272_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_1230;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_1236;
reg   [31:0] reg_1242;
reg   [31:0] reg_1248;
reg   [6:0] j_load_reg_1804;
wire   [0:0] tmp_1_fu_1296_p3;
reg   [0:0] tmp_1_reg_1809;
wire   [0:0] trunc_ln26_fu_1380_p1;
reg   [0:0] trunc_ln26_reg_1814;
wire   [31:0] tmp_fu_1416_p3;
reg   [31:0] tmp_reg_2149;
reg   [2:0] lshr_ln5_5_reg_2157;
wire   [31:0] tmp_2_fu_1437_p19;
reg   [31:0] tmp_2_reg_2162;
wire   [31:0] tmp_3_fu_1477_p19;
reg   [31:0] tmp_3_reg_2167;
wire   [31:0] tmp_4_fu_1517_p19;
reg   [31:0] tmp_4_reg_2172;
wire   [31:0] tmp_5_fu_1557_p19;
reg   [31:0] tmp_5_reg_2177;
wire   [31:0] tmp_6_fu_1597_p19;
reg   [31:0] tmp_6_reg_2182;
wire   [31:0] tmp_7_fu_1637_p19;
reg   [31:0] tmp_7_reg_2187;
wire   [31:0] tmp_8_fu_1677_p19;
reg   [31:0] tmp_8_reg_2192;
wire   [31:0] tmp_9_fu_1717_p19;
reg   [31:0] tmp_9_reg_2197;
reg   [2:0] buff_y_out_addr_reg_2202;
reg   [2:0] buff_y_out_addr_reg_2202_pp0_iter3_reg;
reg   [2:0] buff_y_out_addr_reg_2202_pp0_iter4_reg;
reg   [2:0] buff_y_out_addr_reg_2202_pp0_iter5_reg;
reg   [2:0] buff_y_out_addr_reg_2202_pp0_iter6_reg;
reg   [2:0] buff_y_out_1_addr_reg_2208;
reg   [2:0] buff_y_out_1_addr_reg_2208_pp0_iter3_reg;
reg   [2:0] buff_y_out_1_addr_reg_2208_pp0_iter4_reg;
reg   [2:0] buff_y_out_1_addr_reg_2208_pp0_iter5_reg;
reg   [2:0] buff_y_out_1_addr_reg_2208_pp0_iter6_reg;
reg   [2:0] buff_y_out_2_addr_reg_2214;
reg   [2:0] buff_y_out_2_addr_reg_2214_pp0_iter3_reg;
reg   [2:0] buff_y_out_2_addr_reg_2214_pp0_iter4_reg;
reg   [2:0] buff_y_out_2_addr_reg_2214_pp0_iter5_reg;
reg   [2:0] buff_y_out_2_addr_reg_2214_pp0_iter6_reg;
reg   [2:0] buff_y_out_3_addr_reg_2220;
reg   [2:0] buff_y_out_3_addr_reg_2220_pp0_iter3_reg;
reg   [2:0] buff_y_out_3_addr_reg_2220_pp0_iter4_reg;
reg   [2:0] buff_y_out_3_addr_reg_2220_pp0_iter5_reg;
reg   [2:0] buff_y_out_3_addr_reg_2220_pp0_iter6_reg;
reg   [2:0] buff_y_out_4_addr_reg_2226;
reg   [2:0] buff_y_out_4_addr_reg_2226_pp0_iter3_reg;
reg   [2:0] buff_y_out_4_addr_reg_2226_pp0_iter4_reg;
reg   [2:0] buff_y_out_4_addr_reg_2226_pp0_iter5_reg;
reg   [2:0] buff_y_out_4_addr_reg_2226_pp0_iter6_reg;
reg   [2:0] buff_y_out_4_addr_reg_2226_pp0_iter7_reg;
reg   [2:0] buff_y_out_5_addr_reg_2231;
reg   [2:0] buff_y_out_5_addr_reg_2231_pp0_iter3_reg;
reg   [2:0] buff_y_out_5_addr_reg_2231_pp0_iter4_reg;
reg   [2:0] buff_y_out_5_addr_reg_2231_pp0_iter5_reg;
reg   [2:0] buff_y_out_5_addr_reg_2231_pp0_iter6_reg;
reg   [2:0] buff_y_out_5_addr_reg_2231_pp0_iter7_reg;
reg   [2:0] buff_y_out_6_addr_reg_2236;
reg   [2:0] buff_y_out_6_addr_reg_2236_pp0_iter3_reg;
reg   [2:0] buff_y_out_6_addr_reg_2236_pp0_iter4_reg;
reg   [2:0] buff_y_out_6_addr_reg_2236_pp0_iter5_reg;
reg   [2:0] buff_y_out_6_addr_reg_2236_pp0_iter6_reg;
reg   [2:0] buff_y_out_6_addr_reg_2236_pp0_iter7_reg;
reg   [2:0] buff_y_out_7_addr_reg_2241;
reg   [2:0] buff_y_out_7_addr_reg_2241_pp0_iter3_reg;
reg   [2:0] buff_y_out_7_addr_reg_2241_pp0_iter4_reg;
reg   [2:0] buff_y_out_7_addr_reg_2241_pp0_iter5_reg;
reg   [2:0] buff_y_out_7_addr_reg_2241_pp0_iter6_reg;
reg   [2:0] buff_y_out_7_addr_reg_2241_pp0_iter7_reg;
reg   [31:0] buff_y_out_load_reg_2246;
reg   [31:0] buff_y_out_1_load_reg_2251;
reg   [31:0] buff_y_out_2_load_reg_2256;
reg   [31:0] buff_y_out_3_load_reg_2261;
reg   [31:0] mul1_reg_2266;
reg   [31:0] mul57_1_reg_2271;
reg   [31:0] mul57_2_reg_2276;
reg   [31:0] mul57_3_reg_2281;
reg   [31:0] mul57_4_reg_2286;
reg   [31:0] mul57_5_reg_2291;
reg   [31:0] mul57_6_reg_2296;
reg   [31:0] mul57_7_reg_2301;
reg   [31:0] buff_y_out_4_load_reg_2306;
reg   [31:0] buff_y_out_5_load_reg_2311;
reg   [31:0] buff_y_out_6_load_reg_2316;
reg   [31:0] buff_y_out_7_load_reg_2321;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_1394_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_fu_1312_p1;
wire   [63:0] zext_ln5_2_fu_1768_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_212;
wire   [6:0] add_ln27_fu_1757_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_216;
wire   [6:0] select_ln26_fu_1304_p3;
reg   [9:0] indvar_flatten6_fu_220;
wire   [9:0] add_ln26_1_fu_1278_p2;
reg    tmp1_ce0_local;
reg    tmp1_1_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_8_ce0_local;
reg    buff_A_16_ce0_local;
reg    buff_A_24_ce0_local;
reg    buff_A_32_ce0_local;
reg    buff_A_40_ce0_local;
reg    buff_A_48_ce0_local;
reg    buff_A_56_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_9_ce0_local;
reg    buff_A_17_ce0_local;
reg    buff_A_25_ce0_local;
reg    buff_A_33_ce0_local;
reg    buff_A_41_ce0_local;
reg    buff_A_49_ce0_local;
reg    buff_A_57_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_10_ce0_local;
reg    buff_A_18_ce0_local;
reg    buff_A_26_ce0_local;
reg    buff_A_34_ce0_local;
reg    buff_A_42_ce0_local;
reg    buff_A_50_ce0_local;
reg    buff_A_58_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_11_ce0_local;
reg    buff_A_19_ce0_local;
reg    buff_A_27_ce0_local;
reg    buff_A_35_ce0_local;
reg    buff_A_43_ce0_local;
reg    buff_A_51_ce0_local;
reg    buff_A_59_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_12_ce0_local;
reg    buff_A_20_ce0_local;
reg    buff_A_28_ce0_local;
reg    buff_A_36_ce0_local;
reg    buff_A_44_ce0_local;
reg    buff_A_52_ce0_local;
reg    buff_A_60_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_13_ce0_local;
reg    buff_A_21_ce0_local;
reg    buff_A_29_ce0_local;
reg    buff_A_37_ce0_local;
reg    buff_A_45_ce0_local;
reg    buff_A_53_ce0_local;
reg    buff_A_61_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_14_ce0_local;
reg    buff_A_22_ce0_local;
reg    buff_A_30_ce0_local;
reg    buff_A_38_ce0_local;
reg    buff_A_46_ce0_local;
reg    buff_A_54_ce0_local;
reg    buff_A_62_ce0_local;
reg    buff_A_7_ce0_local;
reg    buff_A_15_ce0_local;
reg    buff_A_23_ce0_local;
reg    buff_A_31_ce0_local;
reg    buff_A_39_ce0_local;
reg    buff_A_47_ce0_local;
reg    buff_A_55_ce0_local;
reg    buff_A_63_ce0_local;
reg    buff_y_out_ce1_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_ce0_local;
reg    buff_y_out_1_ce1_local;
reg    buff_y_out_1_we0_local;
reg    buff_y_out_1_ce0_local;
reg    buff_y_out_2_ce1_local;
reg    buff_y_out_2_we0_local;
reg    buff_y_out_2_ce0_local;
reg    buff_y_out_3_ce1_local;
reg    buff_y_out_3_we0_local;
reg    buff_y_out_3_ce0_local;
reg    buff_y_out_4_ce0_local;
reg   [2:0] buff_y_out_4_address0_local;
reg    buff_y_out_4_we0_local;
reg    buff_y_out_5_ce0_local;
reg   [2:0] buff_y_out_5_address0_local;
reg    buff_y_out_5_we0_local;
reg    buff_y_out_6_ce0_local;
reg   [2:0] buff_y_out_6_address0_local;
reg    buff_y_out_6_we0_local;
reg    buff_y_out_7_ce0_local;
reg   [2:0] buff_y_out_7_address0_local;
reg    buff_y_out_7_we0_local;
reg   [31:0] grp_fu_1198_p0;
reg   [31:0] grp_fu_1198_p1;
reg   [31:0] grp_fu_1202_p0;
reg   [31:0] grp_fu_1202_p1;
reg   [31:0] grp_fu_1206_p0;
reg   [31:0] grp_fu_1206_p1;
reg   [31:0] grp_fu_1210_p0;
reg   [31:0] grp_fu_1210_p1;
reg   [31:0] grp_fu_1214_p0;
reg   [31:0] grp_fu_1218_p0;
reg   [31:0] grp_fu_1222_p0;
reg   [31:0] grp_fu_1226_p0;
wire   [6:0] add_ln26_fu_1290_p2;
wire   [4:0] lshr_ln5_3_fu_1384_p4;
wire   [6:0] select_ln5_fu_1410_p3;
wire   [31:0] tmp_2_fu_1437_p17;
wire   [5:0] trunc_ln27_fu_1423_p1;
wire   [31:0] tmp_3_fu_1477_p17;
wire   [31:0] tmp_4_fu_1517_p17;
wire   [31:0] tmp_5_fu_1557_p17;
wire   [31:0] tmp_6_fu_1597_p17;
wire   [31:0] tmp_7_fu_1637_p17;
wire   [31:0] tmp_8_fu_1677_p17;
wire   [31:0] tmp_9_fu_1717_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
wire   [5:0] tmp_2_fu_1437_p1;
wire   [5:0] tmp_2_fu_1437_p3;
wire   [5:0] tmp_2_fu_1437_p5;
wire   [5:0] tmp_2_fu_1437_p7;
wire  signed [5:0] tmp_2_fu_1437_p9;
wire  signed [5:0] tmp_2_fu_1437_p11;
wire  signed [5:0] tmp_2_fu_1437_p13;
wire  signed [5:0] tmp_2_fu_1437_p15;
wire   [5:0] tmp_3_fu_1477_p1;
wire   [5:0] tmp_3_fu_1477_p3;
wire   [5:0] tmp_3_fu_1477_p5;
wire   [5:0] tmp_3_fu_1477_p7;
wire  signed [5:0] tmp_3_fu_1477_p9;
wire  signed [5:0] tmp_3_fu_1477_p11;
wire  signed [5:0] tmp_3_fu_1477_p13;
wire  signed [5:0] tmp_3_fu_1477_p15;
wire   [5:0] tmp_4_fu_1517_p1;
wire   [5:0] tmp_4_fu_1517_p3;
wire   [5:0] tmp_4_fu_1517_p5;
wire   [5:0] tmp_4_fu_1517_p7;
wire  signed [5:0] tmp_4_fu_1517_p9;
wire  signed [5:0] tmp_4_fu_1517_p11;
wire  signed [5:0] tmp_4_fu_1517_p13;
wire  signed [5:0] tmp_4_fu_1517_p15;
wire   [5:0] tmp_5_fu_1557_p1;
wire   [5:0] tmp_5_fu_1557_p3;
wire   [5:0] tmp_5_fu_1557_p5;
wire   [5:0] tmp_5_fu_1557_p7;
wire  signed [5:0] tmp_5_fu_1557_p9;
wire  signed [5:0] tmp_5_fu_1557_p11;
wire  signed [5:0] tmp_5_fu_1557_p13;
wire  signed [5:0] tmp_5_fu_1557_p15;
wire   [5:0] tmp_6_fu_1597_p1;
wire   [5:0] tmp_6_fu_1597_p3;
wire   [5:0] tmp_6_fu_1597_p5;
wire   [5:0] tmp_6_fu_1597_p7;
wire  signed [5:0] tmp_6_fu_1597_p9;
wire  signed [5:0] tmp_6_fu_1597_p11;
wire  signed [5:0] tmp_6_fu_1597_p13;
wire  signed [5:0] tmp_6_fu_1597_p15;
wire   [5:0] tmp_7_fu_1637_p1;
wire   [5:0] tmp_7_fu_1637_p3;
wire   [5:0] tmp_7_fu_1637_p5;
wire   [5:0] tmp_7_fu_1637_p7;
wire  signed [5:0] tmp_7_fu_1637_p9;
wire  signed [5:0] tmp_7_fu_1637_p11;
wire  signed [5:0] tmp_7_fu_1637_p13;
wire  signed [5:0] tmp_7_fu_1637_p15;
wire   [5:0] tmp_8_fu_1677_p1;
wire   [5:0] tmp_8_fu_1677_p3;
wire   [5:0] tmp_8_fu_1677_p5;
wire   [5:0] tmp_8_fu_1677_p7;
wire  signed [5:0] tmp_8_fu_1677_p9;
wire  signed [5:0] tmp_8_fu_1677_p11;
wire  signed [5:0] tmp_8_fu_1677_p13;
wire  signed [5:0] tmp_8_fu_1677_p15;
wire   [5:0] tmp_9_fu_1717_p1;
wire   [5:0] tmp_9_fu_1717_p3;
wire   [5:0] tmp_9_fu_1717_p5;
wire   [5:0] tmp_9_fu_1717_p7;
wire  signed [5:0] tmp_9_fu_1717_p9;
wire  signed [5:0] tmp_9_fu_1717_p11;
wire  signed [5:0] tmp_9_fu_1717_p13;
wire  signed [5:0] tmp_9_fu_1717_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_212 = 7'd0;
#0 i_fu_216 = 7'd0;
#0 indvar_flatten6_fu_220 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U474(.din0(buff_A_q0),.din1(buff_A_8_q0),.din2(buff_A_16_q0),.din3(buff_A_24_q0),.din4(buff_A_32_q0),.din5(buff_A_40_q0),.din6(buff_A_48_q0),.din7(buff_A_56_q0),.def(tmp_2_fu_1437_p17),.sel(trunc_ln27_fu_1423_p1),.dout(tmp_2_fu_1437_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U475(.din0(buff_A_1_q0),.din1(buff_A_9_q0),.din2(buff_A_17_q0),.din3(buff_A_25_q0),.din4(buff_A_33_q0),.din5(buff_A_41_q0),.din6(buff_A_49_q0),.din7(buff_A_57_q0),.def(tmp_3_fu_1477_p17),.sel(trunc_ln27_fu_1423_p1),.dout(tmp_3_fu_1477_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U476(.din0(buff_A_2_q0),.din1(buff_A_10_q0),.din2(buff_A_18_q0),.din3(buff_A_26_q0),.din4(buff_A_34_q0),.din5(buff_A_42_q0),.din6(buff_A_50_q0),.din7(buff_A_58_q0),.def(tmp_4_fu_1517_p17),.sel(trunc_ln27_fu_1423_p1),.dout(tmp_4_fu_1517_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U477(.din0(buff_A_3_q0),.din1(buff_A_11_q0),.din2(buff_A_19_q0),.din3(buff_A_27_q0),.din4(buff_A_35_q0),.din5(buff_A_43_q0),.din6(buff_A_51_q0),.din7(buff_A_59_q0),.def(tmp_5_fu_1557_p17),.sel(trunc_ln27_fu_1423_p1),.dout(tmp_5_fu_1557_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U478(.din0(buff_A_4_q0),.din1(buff_A_12_q0),.din2(buff_A_20_q0),.din3(buff_A_28_q0),.din4(buff_A_36_q0),.din5(buff_A_44_q0),.din6(buff_A_52_q0),.din7(buff_A_60_q0),.def(tmp_6_fu_1597_p17),.sel(trunc_ln27_fu_1423_p1),.dout(tmp_6_fu_1597_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U479(.din0(buff_A_5_q0),.din1(buff_A_13_q0),.din2(buff_A_21_q0),.din3(buff_A_29_q0),.din4(buff_A_37_q0),.din5(buff_A_45_q0),.din6(buff_A_53_q0),.din7(buff_A_61_q0),.def(tmp_7_fu_1637_p17),.sel(trunc_ln27_fu_1423_p1),.dout(tmp_7_fu_1637_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U480(.din0(buff_A_6_q0),.din1(buff_A_14_q0),.din2(buff_A_22_q0),.din3(buff_A_30_q0),.din4(buff_A_38_q0),.din5(buff_A_46_q0),.din6(buff_A_54_q0),.din7(buff_A_62_q0),.def(tmp_8_fu_1677_p17),.sel(trunc_ln27_fu_1423_p1),.dout(tmp_8_fu_1677_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U481(.din0(buff_A_7_q0),.din1(buff_A_15_q0),.din2(buff_A_23_q0),.din3(buff_A_31_q0),.din4(buff_A_39_q0),.din5(buff_A_47_q0),.din6(buff_A_55_q0),.din7(buff_A_63_q0),.def(tmp_9_fu_1717_p17),.sel(trunc_ln27_fu_1423_p1),.dout(tmp_9_fu_1717_p19));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_216 <= 7'd0;
    end else if (((icmp_ln26_fu_1272_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_216 <= select_ln26_fu_1304_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten6_fu_220 <= 10'd0;
    end else if (((icmp_ln26_fu_1272_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten6_fu_220 <= add_ln26_1_fu_1278_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_212 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_212 <= add_ln27_fu_1757_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        j_load_reg_1804 <= j_fu_212;
        tmp_1_reg_1809 <= j_fu_212[32'd6];
        trunc_ln26_reg_1814 <= trunc_ln26_fu_1380_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_addr_reg_2208 <= zext_ln5_2_fu_1768_p1;
        buff_y_out_1_addr_reg_2208_pp0_iter3_reg <= buff_y_out_1_addr_reg_2208;
        buff_y_out_1_addr_reg_2208_pp0_iter4_reg <= buff_y_out_1_addr_reg_2208_pp0_iter3_reg;
        buff_y_out_1_addr_reg_2208_pp0_iter5_reg <= buff_y_out_1_addr_reg_2208_pp0_iter4_reg;
        buff_y_out_1_addr_reg_2208_pp0_iter6_reg <= buff_y_out_1_addr_reg_2208_pp0_iter5_reg;
        buff_y_out_2_addr_reg_2214 <= zext_ln5_2_fu_1768_p1;
        buff_y_out_2_addr_reg_2214_pp0_iter3_reg <= buff_y_out_2_addr_reg_2214;
        buff_y_out_2_addr_reg_2214_pp0_iter4_reg <= buff_y_out_2_addr_reg_2214_pp0_iter3_reg;
        buff_y_out_2_addr_reg_2214_pp0_iter5_reg <= buff_y_out_2_addr_reg_2214_pp0_iter4_reg;
        buff_y_out_2_addr_reg_2214_pp0_iter6_reg <= buff_y_out_2_addr_reg_2214_pp0_iter5_reg;
        buff_y_out_3_addr_reg_2220 <= zext_ln5_2_fu_1768_p1;
        buff_y_out_3_addr_reg_2220_pp0_iter3_reg <= buff_y_out_3_addr_reg_2220;
        buff_y_out_3_addr_reg_2220_pp0_iter4_reg <= buff_y_out_3_addr_reg_2220_pp0_iter3_reg;
        buff_y_out_3_addr_reg_2220_pp0_iter5_reg <= buff_y_out_3_addr_reg_2220_pp0_iter4_reg;
        buff_y_out_3_addr_reg_2220_pp0_iter6_reg <= buff_y_out_3_addr_reg_2220_pp0_iter5_reg;
        buff_y_out_4_addr_reg_2226 <= zext_ln5_2_fu_1768_p1;
        buff_y_out_4_addr_reg_2226_pp0_iter3_reg <= buff_y_out_4_addr_reg_2226;
        buff_y_out_4_addr_reg_2226_pp0_iter4_reg <= buff_y_out_4_addr_reg_2226_pp0_iter3_reg;
        buff_y_out_4_addr_reg_2226_pp0_iter5_reg <= buff_y_out_4_addr_reg_2226_pp0_iter4_reg;
        buff_y_out_4_addr_reg_2226_pp0_iter6_reg <= buff_y_out_4_addr_reg_2226_pp0_iter5_reg;
        buff_y_out_4_addr_reg_2226_pp0_iter7_reg <= buff_y_out_4_addr_reg_2226_pp0_iter6_reg;
        buff_y_out_5_addr_reg_2231 <= zext_ln5_2_fu_1768_p1;
        buff_y_out_5_addr_reg_2231_pp0_iter3_reg <= buff_y_out_5_addr_reg_2231;
        buff_y_out_5_addr_reg_2231_pp0_iter4_reg <= buff_y_out_5_addr_reg_2231_pp0_iter3_reg;
        buff_y_out_5_addr_reg_2231_pp0_iter5_reg <= buff_y_out_5_addr_reg_2231_pp0_iter4_reg;
        buff_y_out_5_addr_reg_2231_pp0_iter6_reg <= buff_y_out_5_addr_reg_2231_pp0_iter5_reg;
        buff_y_out_5_addr_reg_2231_pp0_iter7_reg <= buff_y_out_5_addr_reg_2231_pp0_iter6_reg;
        buff_y_out_6_addr_reg_2236 <= zext_ln5_2_fu_1768_p1;
        buff_y_out_6_addr_reg_2236_pp0_iter3_reg <= buff_y_out_6_addr_reg_2236;
        buff_y_out_6_addr_reg_2236_pp0_iter4_reg <= buff_y_out_6_addr_reg_2236_pp0_iter3_reg;
        buff_y_out_6_addr_reg_2236_pp0_iter5_reg <= buff_y_out_6_addr_reg_2236_pp0_iter4_reg;
        buff_y_out_6_addr_reg_2236_pp0_iter6_reg <= buff_y_out_6_addr_reg_2236_pp0_iter5_reg;
        buff_y_out_6_addr_reg_2236_pp0_iter7_reg <= buff_y_out_6_addr_reg_2236_pp0_iter6_reg;
        buff_y_out_7_addr_reg_2241 <= zext_ln5_2_fu_1768_p1;
        buff_y_out_7_addr_reg_2241_pp0_iter3_reg <= buff_y_out_7_addr_reg_2241;
        buff_y_out_7_addr_reg_2241_pp0_iter4_reg <= buff_y_out_7_addr_reg_2241_pp0_iter3_reg;
        buff_y_out_7_addr_reg_2241_pp0_iter5_reg <= buff_y_out_7_addr_reg_2241_pp0_iter4_reg;
        buff_y_out_7_addr_reg_2241_pp0_iter6_reg <= buff_y_out_7_addr_reg_2241_pp0_iter5_reg;
        buff_y_out_7_addr_reg_2241_pp0_iter7_reg <= buff_y_out_7_addr_reg_2241_pp0_iter6_reg;
        buff_y_out_addr_reg_2202 <= zext_ln5_2_fu_1768_p1;
        buff_y_out_addr_reg_2202_pp0_iter3_reg <= buff_y_out_addr_reg_2202;
        buff_y_out_addr_reg_2202_pp0_iter4_reg <= buff_y_out_addr_reg_2202_pp0_iter3_reg;
        buff_y_out_addr_reg_2202_pp0_iter5_reg <= buff_y_out_addr_reg_2202_pp0_iter4_reg;
        buff_y_out_addr_reg_2202_pp0_iter6_reg <= buff_y_out_addr_reg_2202_pp0_iter5_reg;
        lshr_ln5_5_reg_2157 <= {{select_ln5_fu_1410_p3[5:3]}};
        tmp_2_reg_2162 <= tmp_2_fu_1437_p19;
        tmp_3_reg_2167 <= tmp_3_fu_1477_p19;
        tmp_4_reg_2172 <= tmp_4_fu_1517_p19;
        tmp_5_reg_2177 <= tmp_5_fu_1557_p19;
        tmp_6_reg_2182 <= tmp_6_fu_1597_p19;
        tmp_7_reg_2187 <= tmp_7_fu_1637_p19;
        tmp_8_reg_2192 <= tmp_8_fu_1677_p19;
        tmp_9_reg_2197 <= tmp_9_fu_1717_p19;
        tmp_reg_2149 <= tmp_fu_1416_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_load_reg_2251 <= buff_y_out_1_q1;
        buff_y_out_2_load_reg_2256 <= buff_y_out_2_q1;
        buff_y_out_3_load_reg_2261 <= buff_y_out_3_q1;
        buff_y_out_load_reg_2246 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_4_load_reg_2306 <= buff_y_out_4_q0;
        buff_y_out_5_load_reg_2311 <= buff_y_out_5_q0;
        buff_y_out_6_load_reg_2316 <= buff_y_out_6_q0;
        buff_y_out_7_load_reg_2321 <= buff_y_out_7_q0;
        mul57_4_reg_2286 <= grp_fu_2025_p_dout0;
        mul57_5_reg_2291 <= grp_fu_2029_p_dout0;
        mul57_6_reg_2296 <= grp_fu_2033_p_dout0;
        mul57_7_reg_2301 <= grp_fu_2037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul1_reg_2266 <= grp_fu_2025_p_dout0;
        mul57_1_reg_2271 <= grp_fu_2029_p_dout0;
        mul57_2_reg_2276 <= grp_fu_2033_p_dout0;
        mul57_3_reg_2281 <= grp_fu_2037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1230 <= grp_fu_2009_p_dout0;
        reg_1236 <= grp_fu_2013_p_dout0;
        reg_1242 <= grp_fu_2017_p_dout0;
        reg_1248 <= grp_fu_2021_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_1272_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_10_ce0_local = 1'b1;
    end else begin
        buff_A_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_11_ce0_local = 1'b1;
    end else begin
        buff_A_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_12_ce0_local = 1'b1;
    end else begin
        buff_A_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_13_ce0_local = 1'b1;
    end else begin
        buff_A_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_14_ce0_local = 1'b1;
    end else begin
        buff_A_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_15_ce0_local = 1'b1;
    end else begin
        buff_A_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_16_ce0_local = 1'b1;
    end else begin
        buff_A_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_17_ce0_local = 1'b1;
    end else begin
        buff_A_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_18_ce0_local = 1'b1;
    end else begin
        buff_A_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_19_ce0_local = 1'b1;
    end else begin
        buff_A_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_20_ce0_local = 1'b1;
    end else begin
        buff_A_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_21_ce0_local = 1'b1;
    end else begin
        buff_A_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_22_ce0_local = 1'b1;
    end else begin
        buff_A_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_23_ce0_local = 1'b1;
    end else begin
        buff_A_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_24_ce0_local = 1'b1;
    end else begin
        buff_A_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_25_ce0_local = 1'b1;
    end else begin
        buff_A_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_26_ce0_local = 1'b1;
    end else begin
        buff_A_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_27_ce0_local = 1'b1;
    end else begin
        buff_A_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_28_ce0_local = 1'b1;
    end else begin
        buff_A_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_29_ce0_local = 1'b1;
    end else begin
        buff_A_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_30_ce0_local = 1'b1;
    end else begin
        buff_A_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_31_ce0_local = 1'b1;
    end else begin
        buff_A_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_32_ce0_local = 1'b1;
    end else begin
        buff_A_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_33_ce0_local = 1'b1;
    end else begin
        buff_A_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_34_ce0_local = 1'b1;
    end else begin
        buff_A_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_35_ce0_local = 1'b1;
    end else begin
        buff_A_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_36_ce0_local = 1'b1;
    end else begin
        buff_A_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_37_ce0_local = 1'b1;
    end else begin
        buff_A_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_38_ce0_local = 1'b1;
    end else begin
        buff_A_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_39_ce0_local = 1'b1;
    end else begin
        buff_A_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_40_ce0_local = 1'b1;
    end else begin
        buff_A_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_41_ce0_local = 1'b1;
    end else begin
        buff_A_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_42_ce0_local = 1'b1;
    end else begin
        buff_A_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_43_ce0_local = 1'b1;
    end else begin
        buff_A_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_44_ce0_local = 1'b1;
    end else begin
        buff_A_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_45_ce0_local = 1'b1;
    end else begin
        buff_A_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_46_ce0_local = 1'b1;
    end else begin
        buff_A_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_47_ce0_local = 1'b1;
    end else begin
        buff_A_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_48_ce0_local = 1'b1;
    end else begin
        buff_A_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_49_ce0_local = 1'b1;
    end else begin
        buff_A_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_50_ce0_local = 1'b1;
    end else begin
        buff_A_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_51_ce0_local = 1'b1;
    end else begin
        buff_A_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_52_ce0_local = 1'b1;
    end else begin
        buff_A_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_53_ce0_local = 1'b1;
    end else begin
        buff_A_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_54_ce0_local = 1'b1;
    end else begin
        buff_A_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_55_ce0_local = 1'b1;
    end else begin
        buff_A_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_56_ce0_local = 1'b1;
    end else begin
        buff_A_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_57_ce0_local = 1'b1;
    end else begin
        buff_A_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_58_ce0_local = 1'b1;
    end else begin
        buff_A_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_59_ce0_local = 1'b1;
    end else begin
        buff_A_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_60_ce0_local = 1'b1;
    end else begin
        buff_A_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_61_ce0_local = 1'b1;
    end else begin
        buff_A_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_62_ce0_local = 1'b1;
    end else begin
        buff_A_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_63_ce0_local = 1'b1;
    end else begin
        buff_A_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_8_ce0_local = 1'b1;
    end else begin
        buff_A_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_9_ce0_local = 1'b1;
    end else begin
        buff_A_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_reg_2226_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_reg_2226;
    end else begin
        buff_y_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_y_out_4_ce0_local = 1'b1;
    end else begin
        buff_y_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_4_we0_local = 1'b1;
    end else begin
        buff_y_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_reg_2231_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_reg_2231;
    end else begin
        buff_y_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_y_out_5_ce0_local = 1'b1;
    end else begin
        buff_y_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_5_we0_local = 1'b1;
    end else begin
        buff_y_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_reg_2236_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_reg_2236;
    end else begin
        buff_y_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_y_out_6_ce0_local = 1'b1;
    end else begin
        buff_y_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_6_we0_local = 1'b1;
    end else begin
        buff_y_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_reg_2241_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_reg_2241;
    end else begin
        buff_y_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_y_out_7_ce0_local = 1'b1;
    end else begin
        buff_y_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_7_we0_local = 1'b1;
    end else begin
        buff_y_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1198_p0 = buff_y_out_4_load_reg_2306;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1198_p0 = buff_y_out_load_reg_2246;
    end else begin
        grp_fu_1198_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1198_p1 = mul57_4_reg_2286;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1198_p1 = mul1_reg_2266;
    end else begin
        grp_fu_1198_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1202_p0 = buff_y_out_5_load_reg_2311;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1202_p0 = buff_y_out_1_load_reg_2251;
    end else begin
        grp_fu_1202_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1202_p1 = mul57_5_reg_2291;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1202_p1 = mul57_1_reg_2271;
    end else begin
        grp_fu_1202_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1206_p0 = buff_y_out_6_load_reg_2316;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1206_p0 = buff_y_out_2_load_reg_2256;
    end else begin
        grp_fu_1206_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1206_p1 = mul57_6_reg_2296;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1206_p1 = mul57_2_reg_2276;
    end else begin
        grp_fu_1206_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1210_p0 = buff_y_out_7_load_reg_2321;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1210_p0 = buff_y_out_3_load_reg_2261;
    end else begin
        grp_fu_1210_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1210_p1 = mul57_7_reg_2301;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1210_p1 = mul57_3_reg_2281;
    end else begin
        grp_fu_1210_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1214_p0 = tmp_6_reg_2182;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1214_p0 = tmp_2_reg_2162;
    end else begin
        grp_fu_1214_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1218_p0 = tmp_7_reg_2187;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1218_p0 = tmp_3_reg_2167;
    end else begin
        grp_fu_1218_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1222_p0 = tmp_8_reg_2192;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1222_p0 = tmp_4_reg_2172;
    end else begin
        grp_fu_1222_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1226_p0 = tmp_9_reg_2197;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1226_p0 = tmp_5_reg_2177;
    end else begin
        grp_fu_1226_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln26_1_fu_1278_p2 = (indvar_flatten6_fu_220 + 10'd1);
assign add_ln26_fu_1290_p2 = (i_fu_216 + 7'd1);
assign add_ln27_fu_1757_p2 = (select_ln5_fu_1410_p3 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign buff_A_10_address0 = zext_ln26_fu_1312_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_11_address0 = zext_ln26_fu_1312_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_12_address0 = zext_ln26_fu_1312_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_13_address0 = zext_ln26_fu_1312_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_14_address0 = zext_ln26_fu_1312_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_15_address0 = zext_ln26_fu_1312_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_16_address0 = zext_ln26_fu_1312_p1;
assign buff_A_16_ce0 = buff_A_16_ce0_local;
assign buff_A_17_address0 = zext_ln26_fu_1312_p1;
assign buff_A_17_ce0 = buff_A_17_ce0_local;
assign buff_A_18_address0 = zext_ln26_fu_1312_p1;
assign buff_A_18_ce0 = buff_A_18_ce0_local;
assign buff_A_19_address0 = zext_ln26_fu_1312_p1;
assign buff_A_19_ce0 = buff_A_19_ce0_local;
assign buff_A_1_address0 = zext_ln26_fu_1312_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_20_address0 = zext_ln26_fu_1312_p1;
assign buff_A_20_ce0 = buff_A_20_ce0_local;
assign buff_A_21_address0 = zext_ln26_fu_1312_p1;
assign buff_A_21_ce0 = buff_A_21_ce0_local;
assign buff_A_22_address0 = zext_ln26_fu_1312_p1;
assign buff_A_22_ce0 = buff_A_22_ce0_local;
assign buff_A_23_address0 = zext_ln26_fu_1312_p1;
assign buff_A_23_ce0 = buff_A_23_ce0_local;
assign buff_A_24_address0 = zext_ln26_fu_1312_p1;
assign buff_A_24_ce0 = buff_A_24_ce0_local;
assign buff_A_25_address0 = zext_ln26_fu_1312_p1;
assign buff_A_25_ce0 = buff_A_25_ce0_local;
assign buff_A_26_address0 = zext_ln26_fu_1312_p1;
assign buff_A_26_ce0 = buff_A_26_ce0_local;
assign buff_A_27_address0 = zext_ln26_fu_1312_p1;
assign buff_A_27_ce0 = buff_A_27_ce0_local;
assign buff_A_28_address0 = zext_ln26_fu_1312_p1;
assign buff_A_28_ce0 = buff_A_28_ce0_local;
assign buff_A_29_address0 = zext_ln26_fu_1312_p1;
assign buff_A_29_ce0 = buff_A_29_ce0_local;
assign buff_A_2_address0 = zext_ln26_fu_1312_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_30_address0 = zext_ln26_fu_1312_p1;
assign buff_A_30_ce0 = buff_A_30_ce0_local;
assign buff_A_31_address0 = zext_ln26_fu_1312_p1;
assign buff_A_31_ce0 = buff_A_31_ce0_local;
assign buff_A_32_address0 = zext_ln26_fu_1312_p1;
assign buff_A_32_ce0 = buff_A_32_ce0_local;
assign buff_A_33_address0 = zext_ln26_fu_1312_p1;
assign buff_A_33_ce0 = buff_A_33_ce0_local;
assign buff_A_34_address0 = zext_ln26_fu_1312_p1;
assign buff_A_34_ce0 = buff_A_34_ce0_local;
assign buff_A_35_address0 = zext_ln26_fu_1312_p1;
assign buff_A_35_ce0 = buff_A_35_ce0_local;
assign buff_A_36_address0 = zext_ln26_fu_1312_p1;
assign buff_A_36_ce0 = buff_A_36_ce0_local;
assign buff_A_37_address0 = zext_ln26_fu_1312_p1;
assign buff_A_37_ce0 = buff_A_37_ce0_local;
assign buff_A_38_address0 = zext_ln26_fu_1312_p1;
assign buff_A_38_ce0 = buff_A_38_ce0_local;
assign buff_A_39_address0 = zext_ln26_fu_1312_p1;
assign buff_A_39_ce0 = buff_A_39_ce0_local;
assign buff_A_3_address0 = zext_ln26_fu_1312_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_40_address0 = zext_ln26_fu_1312_p1;
assign buff_A_40_ce0 = buff_A_40_ce0_local;
assign buff_A_41_address0 = zext_ln26_fu_1312_p1;
assign buff_A_41_ce0 = buff_A_41_ce0_local;
assign buff_A_42_address0 = zext_ln26_fu_1312_p1;
assign buff_A_42_ce0 = buff_A_42_ce0_local;
assign buff_A_43_address0 = zext_ln26_fu_1312_p1;
assign buff_A_43_ce0 = buff_A_43_ce0_local;
assign buff_A_44_address0 = zext_ln26_fu_1312_p1;
assign buff_A_44_ce0 = buff_A_44_ce0_local;
assign buff_A_45_address0 = zext_ln26_fu_1312_p1;
assign buff_A_45_ce0 = buff_A_45_ce0_local;
assign buff_A_46_address0 = zext_ln26_fu_1312_p1;
assign buff_A_46_ce0 = buff_A_46_ce0_local;
assign buff_A_47_address0 = zext_ln26_fu_1312_p1;
assign buff_A_47_ce0 = buff_A_47_ce0_local;
assign buff_A_48_address0 = zext_ln26_fu_1312_p1;
assign buff_A_48_ce0 = buff_A_48_ce0_local;
assign buff_A_49_address0 = zext_ln26_fu_1312_p1;
assign buff_A_49_ce0 = buff_A_49_ce0_local;
assign buff_A_4_address0 = zext_ln26_fu_1312_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_50_address0 = zext_ln26_fu_1312_p1;
assign buff_A_50_ce0 = buff_A_50_ce0_local;
assign buff_A_51_address0 = zext_ln26_fu_1312_p1;
assign buff_A_51_ce0 = buff_A_51_ce0_local;
assign buff_A_52_address0 = zext_ln26_fu_1312_p1;
assign buff_A_52_ce0 = buff_A_52_ce0_local;
assign buff_A_53_address0 = zext_ln26_fu_1312_p1;
assign buff_A_53_ce0 = buff_A_53_ce0_local;
assign buff_A_54_address0 = zext_ln26_fu_1312_p1;
assign buff_A_54_ce0 = buff_A_54_ce0_local;
assign buff_A_55_address0 = zext_ln26_fu_1312_p1;
assign buff_A_55_ce0 = buff_A_55_ce0_local;
assign buff_A_56_address0 = zext_ln26_fu_1312_p1;
assign buff_A_56_ce0 = buff_A_56_ce0_local;
assign buff_A_57_address0 = zext_ln26_fu_1312_p1;
assign buff_A_57_ce0 = buff_A_57_ce0_local;
assign buff_A_58_address0 = zext_ln26_fu_1312_p1;
assign buff_A_58_ce0 = buff_A_58_ce0_local;
assign buff_A_59_address0 = zext_ln26_fu_1312_p1;
assign buff_A_59_ce0 = buff_A_59_ce0_local;
assign buff_A_5_address0 = zext_ln26_fu_1312_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_60_address0 = zext_ln26_fu_1312_p1;
assign buff_A_60_ce0 = buff_A_60_ce0_local;
assign buff_A_61_address0 = zext_ln26_fu_1312_p1;
assign buff_A_61_ce0 = buff_A_61_ce0_local;
assign buff_A_62_address0 = zext_ln26_fu_1312_p1;
assign buff_A_62_ce0 = buff_A_62_ce0_local;
assign buff_A_63_address0 = zext_ln26_fu_1312_p1;
assign buff_A_63_ce0 = buff_A_63_ce0_local;
assign buff_A_6_address0 = zext_ln26_fu_1312_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln26_fu_1312_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_8_address0 = zext_ln26_fu_1312_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_9_address0 = zext_ln26_fu_1312_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_address0 = zext_ln26_fu_1312_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_y_out_1_address0 = buff_y_out_1_addr_reg_2208_pp0_iter6_reg;
assign buff_y_out_1_address1 = zext_ln5_2_fu_1768_p1;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_ce1 = buff_y_out_1_ce1_local;
assign buff_y_out_1_d0 = reg_1236;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_2_address0 = buff_y_out_2_addr_reg_2214_pp0_iter6_reg;
assign buff_y_out_2_address1 = zext_ln5_2_fu_1768_p1;
assign buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
assign buff_y_out_2_ce1 = buff_y_out_2_ce1_local;
assign buff_y_out_2_d0 = reg_1242;
assign buff_y_out_2_we0 = buff_y_out_2_we0_local;
assign buff_y_out_3_address0 = buff_y_out_3_addr_reg_2220_pp0_iter6_reg;
assign buff_y_out_3_address1 = zext_ln5_2_fu_1768_p1;
assign buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
assign buff_y_out_3_ce1 = buff_y_out_3_ce1_local;
assign buff_y_out_3_d0 = reg_1248;
assign buff_y_out_3_we0 = buff_y_out_3_we0_local;
assign buff_y_out_4_address0 = buff_y_out_4_address0_local;
assign buff_y_out_4_ce0 = buff_y_out_4_ce0_local;
assign buff_y_out_4_d0 = reg_1230;
assign buff_y_out_4_we0 = buff_y_out_4_we0_local;
assign buff_y_out_5_address0 = buff_y_out_5_address0_local;
assign buff_y_out_5_ce0 = buff_y_out_5_ce0_local;
assign buff_y_out_5_d0 = reg_1236;
assign buff_y_out_5_we0 = buff_y_out_5_we0_local;
assign buff_y_out_6_address0 = buff_y_out_6_address0_local;
assign buff_y_out_6_ce0 = buff_y_out_6_ce0_local;
assign buff_y_out_6_d0 = reg_1242;
assign buff_y_out_6_we0 = buff_y_out_6_we0_local;
assign buff_y_out_7_address0 = buff_y_out_7_address0_local;
assign buff_y_out_7_ce0 = buff_y_out_7_ce0_local;
assign buff_y_out_7_d0 = reg_1248;
assign buff_y_out_7_we0 = buff_y_out_7_we0_local;
assign buff_y_out_address0 = buff_y_out_addr_reg_2202_pp0_iter6_reg;
assign buff_y_out_address1 = zext_ln5_2_fu_1768_p1;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_ce1 = buff_y_out_ce1_local;
assign buff_y_out_d0 = reg_1230;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign grp_fu_2009_p_ce = 1'b1;
assign grp_fu_2009_p_din0 = grp_fu_1198_p0;
assign grp_fu_2009_p_din1 = grp_fu_1198_p1;
assign grp_fu_2009_p_opcode = 2'd0;
assign grp_fu_2013_p_ce = 1'b1;
assign grp_fu_2013_p_din0 = grp_fu_1202_p0;
assign grp_fu_2013_p_din1 = grp_fu_1202_p1;
assign grp_fu_2013_p_opcode = 2'd0;
assign grp_fu_2017_p_ce = 1'b1;
assign grp_fu_2017_p_din0 = grp_fu_1206_p0;
assign grp_fu_2017_p_din1 = grp_fu_1206_p1;
assign grp_fu_2017_p_opcode = 2'd0;
assign grp_fu_2021_p_ce = 1'b1;
assign grp_fu_2021_p_din0 = grp_fu_1210_p0;
assign grp_fu_2021_p_din1 = grp_fu_1210_p1;
assign grp_fu_2021_p_opcode = 2'd0;
assign grp_fu_2025_p_ce = 1'b1;
assign grp_fu_2025_p_din0 = grp_fu_1214_p0;
assign grp_fu_2025_p_din1 = tmp_reg_2149;
assign grp_fu_2029_p_ce = 1'b1;
assign grp_fu_2029_p_din0 = grp_fu_1218_p0;
assign grp_fu_2029_p_din1 = tmp_reg_2149;
assign grp_fu_2033_p_ce = 1'b1;
assign grp_fu_2033_p_din0 = grp_fu_1222_p0;
assign grp_fu_2033_p_din1 = tmp_reg_2149;
assign grp_fu_2037_p_ce = 1'b1;
assign grp_fu_2037_p_din0 = grp_fu_1226_p0;
assign grp_fu_2037_p_din1 = tmp_reg_2149;
assign icmp_ln26_fu_1272_p2 = ((indvar_flatten6_fu_220 == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_3_fu_1384_p4 = {{select_ln26_fu_1304_p3[5:1]}};
assign select_ln26_fu_1304_p3 = ((tmp_1_fu_1296_p3[0:0] == 1'b1) ? add_ln26_fu_1290_p2 : i_fu_216);
assign select_ln5_fu_1410_p3 = ((tmp_1_reg_1809[0:0] == 1'b1) ? 7'd0 : j_load_reg_1804);
assign tmp1_1_address0 = zext_ln5_fu_1394_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_address0 = zext_ln5_fu_1394_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp_1_fu_1296_p3 = j_fu_212[32'd6];
assign tmp_2_fu_1437_p17 = 'bx;
assign tmp_3_fu_1477_p17 = 'bx;
assign tmp_4_fu_1517_p17 = 'bx;
assign tmp_5_fu_1557_p17 = 'bx;
assign tmp_6_fu_1597_p17 = 'bx;
assign tmp_7_fu_1637_p17 = 'bx;
assign tmp_8_fu_1677_p17 = 'bx;
assign tmp_9_fu_1717_p17 = 'bx;
assign tmp_fu_1416_p3 = ((trunc_ln26_reg_1814[0:0] == 1'b1) ? tmp1_1_q0 : tmp1_q0);
assign trunc_ln26_fu_1380_p1 = select_ln26_fu_1304_p3[0:0];
assign trunc_ln27_fu_1423_p1 = select_ln5_fu_1410_p3[5:0];
assign zext_ln26_fu_1312_p1 = select_ln26_fu_1304_p3;
assign zext_ln5_2_fu_1768_p1 = lshr_ln5_5_reg_2157;
assign zext_ln5_fu_1394_p1 = lshr_ln5_3_fu_1384_p4;
endmodule 