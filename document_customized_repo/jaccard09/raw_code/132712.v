module atax_atax_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp1_address0,tmp1_ce0,tmp1_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_16_address0,buff_A_16_ce0,buff_A_16_q0,buff_A_24_address0,buff_A_24_ce0,buff_A_24_q0,buff_A_32_address0,buff_A_32_ce0,buff_A_32_q0,buff_A_40_address0,buff_A_40_ce0,buff_A_40_q0,buff_A_48_address0,buff_A_48_ce0,buff_A_48_q0,buff_A_56_address0,buff_A_56_ce0,buff_A_56_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_17_address0,buff_A_17_ce0,buff_A_17_q0,buff_A_25_address0,buff_A_25_ce0,buff_A_25_q0,buff_A_33_address0,buff_A_33_ce0,buff_A_33_q0,buff_A_41_address0,buff_A_41_ce0,buff_A_41_q0,buff_A_49_address0,buff_A_49_ce0,buff_A_49_q0,buff_A_57_address0,buff_A_57_ce0,buff_A_57_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_18_address0,buff_A_18_ce0,buff_A_18_q0,buff_A_26_address0,buff_A_26_ce0,buff_A_26_q0,buff_A_34_address0,buff_A_34_ce0,buff_A_34_q0,buff_A_42_address0,buff_A_42_ce0,buff_A_42_q0,buff_A_50_address0,buff_A_50_ce0,buff_A_50_q0,buff_A_58_address0,buff_A_58_ce0,buff_A_58_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_19_address0,buff_A_19_ce0,buff_A_19_q0,buff_A_27_address0,buff_A_27_ce0,buff_A_27_q0,buff_A_35_address0,buff_A_35_ce0,buff_A_35_q0,buff_A_43_address0,buff_A_43_ce0,buff_A_43_q0,buff_A_51_address0,buff_A_51_ce0,buff_A_51_q0,buff_A_59_address0,buff_A_59_ce0,buff_A_59_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_20_address0,buff_A_20_ce0,buff_A_20_q0,buff_A_28_address0,buff_A_28_ce0,buff_A_28_q0,buff_A_36_address0,buff_A_36_ce0,buff_A_36_q0,buff_A_44_address0,buff_A_44_ce0,buff_A_44_q0,buff_A_52_address0,buff_A_52_ce0,buff_A_52_q0,buff_A_60_address0,buff_A_60_ce0,buff_A_60_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_21_address0,buff_A_21_ce0,buff_A_21_q0,buff_A_29_address0,buff_A_29_ce0,buff_A_29_q0,buff_A_37_address0,buff_A_37_ce0,buff_A_37_q0,buff_A_45_address0,buff_A_45_ce0,buff_A_45_q0,buff_A_53_address0,buff_A_53_ce0,buff_A_53_q0,buff_A_61_address0,buff_A_61_ce0,buff_A_61_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_22_address0,buff_A_22_ce0,buff_A_22_q0,buff_A_30_address0,buff_A_30_ce0,buff_A_30_q0,buff_A_38_address0,buff_A_38_ce0,buff_A_38_q0,buff_A_46_address0,buff_A_46_ce0,buff_A_46_q0,buff_A_54_address0,buff_A_54_ce0,buff_A_54_q0,buff_A_62_address0,buff_A_62_ce0,buff_A_62_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_A_23_address0,buff_A_23_ce0,buff_A_23_q0,buff_A_31_address0,buff_A_31_ce0,buff_A_31_q0,buff_A_39_address0,buff_A_39_ce0,buff_A_39_q0,buff_A_47_address0,buff_A_47_ce0,buff_A_47_q0,buff_A_55_address0,buff_A_55_ce0,buff_A_55_q0,buff_A_63_address0,buff_A_63_ce0,buff_A_63_q0,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,buff_y_out_address1,buff_y_out_ce1,buff_y_out_q1,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,buff_y_out_1_address1,buff_y_out_1_ce1,buff_y_out_1_q1,buff_y_out_2_address0,buff_y_out_2_ce0,buff_y_out_2_we0,buff_y_out_2_d0,buff_y_out_2_address1,buff_y_out_2_ce1,buff_y_out_2_q1,buff_y_out_3_address0,buff_y_out_3_ce0,buff_y_out_3_we0,buff_y_out_3_d0,buff_y_out_3_address1,buff_y_out_3_ce1,buff_y_out_3_q1,buff_y_out_4_address0,buff_y_out_4_ce0,buff_y_out_4_we0,buff_y_out_4_d0,buff_y_out_4_q0,buff_y_out_5_address0,buff_y_out_5_ce0,buff_y_out_5_we0,buff_y_out_5_d0,buff_y_out_5_q0,buff_y_out_6_address0,buff_y_out_6_ce0,buff_y_out_6_we0,buff_y_out_6_d0,buff_y_out_6_q0,buff_y_out_7_address0,buff_y_out_7_ce0,buff_y_out_7_we0,buff_y_out_7_d0,buff_y_out_7_q0,grp_fu_2001_p_din0,grp_fu_2001_p_din1,grp_fu_2001_p_opcode,grp_fu_2001_p_dout0,grp_fu_2001_p_ce,grp_fu_2005_p_din0,grp_fu_2005_p_din1,grp_fu_2005_p_opcode,grp_fu_2005_p_dout0,grp_fu_2005_p_ce,grp_fu_2009_p_din0,grp_fu_2009_p_din1,grp_fu_2009_p_opcode,grp_fu_2009_p_dout0,grp_fu_2009_p_ce,grp_fu_2013_p_din0,grp_fu_2013_p_din1,grp_fu_2013_p_opcode,grp_fu_2013_p_dout0,grp_fu_2013_p_ce,grp_fu_2017_p_din0,grp_fu_2017_p_din1,grp_fu_2017_p_dout0,grp_fu_2017_p_ce,grp_fu_2021_p_din0,grp_fu_2021_p_din1,grp_fu_2021_p_dout0,grp_fu_2021_p_ce,grp_fu_2025_p_din0,grp_fu_2025_p_din1,grp_fu_2025_p_dout0,grp_fu_2025_p_ce,grp_fu_2029_p_din0,grp_fu_2029_p_din1,grp_fu_2029_p_dout0,grp_fu_2029_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
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
output  [31:0] grp_fu_2001_p_din0;
output  [31:0] grp_fu_2001_p_din1;
output  [1:0] grp_fu_2001_p_opcode;
input  [31:0] grp_fu_2001_p_dout0;
output   grp_fu_2001_p_ce;
output  [31:0] grp_fu_2005_p_din0;
output  [31:0] grp_fu_2005_p_din1;
output  [1:0] grp_fu_2005_p_opcode;
input  [31:0] grp_fu_2005_p_dout0;
output   grp_fu_2005_p_ce;
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
input  [31:0] grp_fu_2017_p_dout0;
output   grp_fu_2017_p_ce;
output  [31:0] grp_fu_2021_p_din0;
output  [31:0] grp_fu_2021_p_din1;
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
wire   [0:0] icmp_ln26_fu_1255_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_1213;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_1219;
reg   [31:0] reg_1225;
reg   [31:0] reg_1231;
reg   [6:0] j_load_reg_1761;
wire   [0:0] tmp_fu_1279_p3;
reg   [0:0] tmp_reg_1766;
reg   [31:0] empty_reg_2096;
reg   [2:0] lshr_ln5_2_reg_2104;
wire   [31:0] tmp_1_fu_1394_p19;
reg   [31:0] tmp_1_reg_2109;
wire   [31:0] tmp_2_fu_1434_p19;
reg   [31:0] tmp_2_reg_2114;
wire   [31:0] tmp_3_fu_1474_p19;
reg   [31:0] tmp_3_reg_2119;
wire   [31:0] tmp_4_fu_1514_p19;
reg   [31:0] tmp_4_reg_2124;
wire   [31:0] tmp_5_fu_1554_p19;
reg   [31:0] tmp_5_reg_2129;
wire   [31:0] tmp_6_fu_1594_p19;
reg   [31:0] tmp_6_reg_2134;
wire   [31:0] tmp_7_fu_1634_p19;
reg   [31:0] tmp_7_reg_2139;
wire   [31:0] tmp_8_fu_1674_p19;
reg   [31:0] tmp_8_reg_2144;
reg   [2:0] buff_y_out_addr_reg_2149;
reg   [2:0] buff_y_out_addr_reg_2149_pp0_iter3_reg;
reg   [2:0] buff_y_out_addr_reg_2149_pp0_iter4_reg;
reg   [2:0] buff_y_out_addr_reg_2149_pp0_iter5_reg;
reg   [2:0] buff_y_out_addr_reg_2149_pp0_iter6_reg;
reg   [2:0] buff_y_out_1_addr_reg_2155;
reg   [2:0] buff_y_out_1_addr_reg_2155_pp0_iter3_reg;
reg   [2:0] buff_y_out_1_addr_reg_2155_pp0_iter4_reg;
reg   [2:0] buff_y_out_1_addr_reg_2155_pp0_iter5_reg;
reg   [2:0] buff_y_out_1_addr_reg_2155_pp0_iter6_reg;
reg   [2:0] buff_y_out_2_addr_reg_2161;
reg   [2:0] buff_y_out_2_addr_reg_2161_pp0_iter3_reg;
reg   [2:0] buff_y_out_2_addr_reg_2161_pp0_iter4_reg;
reg   [2:0] buff_y_out_2_addr_reg_2161_pp0_iter5_reg;
reg   [2:0] buff_y_out_2_addr_reg_2161_pp0_iter6_reg;
reg   [2:0] buff_y_out_3_addr_reg_2167;
reg   [2:0] buff_y_out_3_addr_reg_2167_pp0_iter3_reg;
reg   [2:0] buff_y_out_3_addr_reg_2167_pp0_iter4_reg;
reg   [2:0] buff_y_out_3_addr_reg_2167_pp0_iter5_reg;
reg   [2:0] buff_y_out_3_addr_reg_2167_pp0_iter6_reg;
reg   [2:0] buff_y_out_4_addr_reg_2173;
reg   [2:0] buff_y_out_4_addr_reg_2173_pp0_iter3_reg;
reg   [2:0] buff_y_out_4_addr_reg_2173_pp0_iter4_reg;
reg   [2:0] buff_y_out_4_addr_reg_2173_pp0_iter5_reg;
reg   [2:0] buff_y_out_4_addr_reg_2173_pp0_iter6_reg;
reg   [2:0] buff_y_out_4_addr_reg_2173_pp0_iter7_reg;
reg   [2:0] buff_y_out_5_addr_reg_2178;
reg   [2:0] buff_y_out_5_addr_reg_2178_pp0_iter3_reg;
reg   [2:0] buff_y_out_5_addr_reg_2178_pp0_iter4_reg;
reg   [2:0] buff_y_out_5_addr_reg_2178_pp0_iter5_reg;
reg   [2:0] buff_y_out_5_addr_reg_2178_pp0_iter6_reg;
reg   [2:0] buff_y_out_5_addr_reg_2178_pp0_iter7_reg;
reg   [2:0] buff_y_out_6_addr_reg_2183;
reg   [2:0] buff_y_out_6_addr_reg_2183_pp0_iter3_reg;
reg   [2:0] buff_y_out_6_addr_reg_2183_pp0_iter4_reg;
reg   [2:0] buff_y_out_6_addr_reg_2183_pp0_iter5_reg;
reg   [2:0] buff_y_out_6_addr_reg_2183_pp0_iter6_reg;
reg   [2:0] buff_y_out_6_addr_reg_2183_pp0_iter7_reg;
reg   [2:0] buff_y_out_7_addr_reg_2188;
reg   [2:0] buff_y_out_7_addr_reg_2188_pp0_iter3_reg;
reg   [2:0] buff_y_out_7_addr_reg_2188_pp0_iter4_reg;
reg   [2:0] buff_y_out_7_addr_reg_2188_pp0_iter5_reg;
reg   [2:0] buff_y_out_7_addr_reg_2188_pp0_iter6_reg;
reg   [2:0] buff_y_out_7_addr_reg_2188_pp0_iter7_reg;
reg   [31:0] buff_y_out_load_reg_2193;
reg   [31:0] buff_y_out_1_load_reg_2198;
reg   [31:0] buff_y_out_2_load_reg_2203;
reg   [31:0] buff_y_out_3_load_reg_2208;
reg   [31:0] mul1_reg_2213;
reg   [31:0] mul57_1_reg_2218;
reg   [31:0] mul57_2_reg_2223;
reg   [31:0] mul57_3_reg_2228;
reg   [31:0] mul57_4_reg_2233;
reg   [31:0] mul57_5_reg_2238;
reg   [31:0] mul57_6_reg_2243;
reg   [31:0] mul57_7_reg_2248;
reg   [31:0] buff_y_out_4_load_reg_2253;
reg   [31:0] buff_y_out_5_load_reg_2258;
reg   [31:0] buff_y_out_6_load_reg_2263;
reg   [31:0] buff_y_out_7_load_reg_2268;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln26_fu_1295_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln5_fu_1725_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_208;
wire   [6:0] add_ln27_fu_1714_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_212;
wire   [6:0] select_ln26_fu_1287_p3;
reg   [9:0] indvar_flatten6_fu_216;
wire   [9:0] add_ln26_1_fu_1261_p2;
reg    tmp1_ce0_local;
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
reg   [31:0] grp_fu_1181_p0;
reg   [31:0] grp_fu_1181_p1;
reg   [31:0] grp_fu_1185_p0;
reg   [31:0] grp_fu_1185_p1;
reg   [31:0] grp_fu_1189_p0;
reg   [31:0] grp_fu_1189_p1;
reg   [31:0] grp_fu_1193_p0;
reg   [31:0] grp_fu_1193_p1;
reg   [31:0] grp_fu_1197_p0;
reg   [31:0] grp_fu_1201_p0;
reg   [31:0] grp_fu_1205_p0;
reg   [31:0] grp_fu_1209_p0;
wire   [6:0] add_ln26_fu_1273_p2;
wire   [6:0] select_ln5_fu_1374_p3;
wire   [31:0] tmp_1_fu_1394_p17;
wire   [5:0] trunc_ln27_fu_1380_p1;
wire   [31:0] tmp_2_fu_1434_p17;
wire   [31:0] tmp_3_fu_1474_p17;
wire   [31:0] tmp_4_fu_1514_p17;
wire   [31:0] tmp_5_fu_1554_p17;
wire   [31:0] tmp_6_fu_1594_p17;
wire   [31:0] tmp_7_fu_1634_p17;
wire   [31:0] tmp_8_fu_1674_p17;
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
wire   [5:0] tmp_1_fu_1394_p1;
wire   [5:0] tmp_1_fu_1394_p3;
wire   [5:0] tmp_1_fu_1394_p5;
wire   [5:0] tmp_1_fu_1394_p7;
wire  signed [5:0] tmp_1_fu_1394_p9;
wire  signed [5:0] tmp_1_fu_1394_p11;
wire  signed [5:0] tmp_1_fu_1394_p13;
wire  signed [5:0] tmp_1_fu_1394_p15;
wire   [5:0] tmp_2_fu_1434_p1;
wire   [5:0] tmp_2_fu_1434_p3;
wire   [5:0] tmp_2_fu_1434_p5;
wire   [5:0] tmp_2_fu_1434_p7;
wire  signed [5:0] tmp_2_fu_1434_p9;
wire  signed [5:0] tmp_2_fu_1434_p11;
wire  signed [5:0] tmp_2_fu_1434_p13;
wire  signed [5:0] tmp_2_fu_1434_p15;
wire   [5:0] tmp_3_fu_1474_p1;
wire   [5:0] tmp_3_fu_1474_p3;
wire   [5:0] tmp_3_fu_1474_p5;
wire   [5:0] tmp_3_fu_1474_p7;
wire  signed [5:0] tmp_3_fu_1474_p9;
wire  signed [5:0] tmp_3_fu_1474_p11;
wire  signed [5:0] tmp_3_fu_1474_p13;
wire  signed [5:0] tmp_3_fu_1474_p15;
wire   [5:0] tmp_4_fu_1514_p1;
wire   [5:0] tmp_4_fu_1514_p3;
wire   [5:0] tmp_4_fu_1514_p5;
wire   [5:0] tmp_4_fu_1514_p7;
wire  signed [5:0] tmp_4_fu_1514_p9;
wire  signed [5:0] tmp_4_fu_1514_p11;
wire  signed [5:0] tmp_4_fu_1514_p13;
wire  signed [5:0] tmp_4_fu_1514_p15;
wire   [5:0] tmp_5_fu_1554_p1;
wire   [5:0] tmp_5_fu_1554_p3;
wire   [5:0] tmp_5_fu_1554_p5;
wire   [5:0] tmp_5_fu_1554_p7;
wire  signed [5:0] tmp_5_fu_1554_p9;
wire  signed [5:0] tmp_5_fu_1554_p11;
wire  signed [5:0] tmp_5_fu_1554_p13;
wire  signed [5:0] tmp_5_fu_1554_p15;
wire   [5:0] tmp_6_fu_1594_p1;
wire   [5:0] tmp_6_fu_1594_p3;
wire   [5:0] tmp_6_fu_1594_p5;
wire   [5:0] tmp_6_fu_1594_p7;
wire  signed [5:0] tmp_6_fu_1594_p9;
wire  signed [5:0] tmp_6_fu_1594_p11;
wire  signed [5:0] tmp_6_fu_1594_p13;
wire  signed [5:0] tmp_6_fu_1594_p15;
wire   [5:0] tmp_7_fu_1634_p1;
wire   [5:0] tmp_7_fu_1634_p3;
wire   [5:0] tmp_7_fu_1634_p5;
wire   [5:0] tmp_7_fu_1634_p7;
wire  signed [5:0] tmp_7_fu_1634_p9;
wire  signed [5:0] tmp_7_fu_1634_p11;
wire  signed [5:0] tmp_7_fu_1634_p13;
wire  signed [5:0] tmp_7_fu_1634_p15;
wire   [5:0] tmp_8_fu_1674_p1;
wire   [5:0] tmp_8_fu_1674_p3;
wire   [5:0] tmp_8_fu_1674_p5;
wire   [5:0] tmp_8_fu_1674_p7;
wire  signed [5:0] tmp_8_fu_1674_p9;
wire  signed [5:0] tmp_8_fu_1674_p11;
wire  signed [5:0] tmp_8_fu_1674_p13;
wire  signed [5:0] tmp_8_fu_1674_p15;
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
#0 j_fu_208 = 7'd0;
#0 i_fu_212 = 7'd0;
#0 indvar_flatten6_fu_216 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U344(.din0(buff_A_q0),.din1(buff_A_8_q0),.din2(buff_A_16_q0),.din3(buff_A_24_q0),.din4(buff_A_32_q0),.din5(buff_A_40_q0),.din6(buff_A_48_q0),.din7(buff_A_56_q0),.def(tmp_1_fu_1394_p17),.sel(trunc_ln27_fu_1380_p1),.dout(tmp_1_fu_1394_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U345(.din0(buff_A_1_q0),.din1(buff_A_9_q0),.din2(buff_A_17_q0),.din3(buff_A_25_q0),.din4(buff_A_33_q0),.din5(buff_A_41_q0),.din6(buff_A_49_q0),.din7(buff_A_57_q0),.def(tmp_2_fu_1434_p17),.sel(trunc_ln27_fu_1380_p1),.dout(tmp_2_fu_1434_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U346(.din0(buff_A_2_q0),.din1(buff_A_10_q0),.din2(buff_A_18_q0),.din3(buff_A_26_q0),.din4(buff_A_34_q0),.din5(buff_A_42_q0),.din6(buff_A_50_q0),.din7(buff_A_58_q0),.def(tmp_3_fu_1474_p17),.sel(trunc_ln27_fu_1380_p1),.dout(tmp_3_fu_1474_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U347(.din0(buff_A_3_q0),.din1(buff_A_11_q0),.din2(buff_A_19_q0),.din3(buff_A_27_q0),.din4(buff_A_35_q0),.din5(buff_A_43_q0),.din6(buff_A_51_q0),.din7(buff_A_59_q0),.def(tmp_4_fu_1514_p17),.sel(trunc_ln27_fu_1380_p1),.dout(tmp_4_fu_1514_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U348(.din0(buff_A_4_q0),.din1(buff_A_12_q0),.din2(buff_A_20_q0),.din3(buff_A_28_q0),.din4(buff_A_36_q0),.din5(buff_A_44_q0),.din6(buff_A_52_q0),.din7(buff_A_60_q0),.def(tmp_5_fu_1554_p17),.sel(trunc_ln27_fu_1380_p1),.dout(tmp_5_fu_1554_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U349(.din0(buff_A_5_q0),.din1(buff_A_13_q0),.din2(buff_A_21_q0),.din3(buff_A_29_q0),.din4(buff_A_37_q0),.din5(buff_A_45_q0),.din6(buff_A_53_q0),.din7(buff_A_61_q0),.def(tmp_6_fu_1594_p17),.sel(trunc_ln27_fu_1380_p1),.dout(tmp_6_fu_1594_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U350(.din0(buff_A_6_q0),.din1(buff_A_14_q0),.din2(buff_A_22_q0),.din3(buff_A_30_q0),.din4(buff_A_38_q0),.din5(buff_A_46_q0),.din6(buff_A_54_q0),.din7(buff_A_62_q0),.def(tmp_7_fu_1634_p17),.sel(trunc_ln27_fu_1380_p1),.dout(tmp_7_fu_1634_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h8 ),.din1_WIDTH( 32 ),.CASE2( 6'h10 ),.din2_WIDTH( 32 ),.CASE3( 6'h18 ),.din3_WIDTH( 32 ),.CASE4( 6'h20 ),.din4_WIDTH( 32 ),.CASE5( 6'h28 ),.din5_WIDTH( 32 ),.CASE6( 6'h30 ),.din6_WIDTH( 32 ),.CASE7( 6'h38 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_17_6_32_1_1_U351(.din0(buff_A_7_q0),.din1(buff_A_15_q0),.din2(buff_A_23_q0),.din3(buff_A_31_q0),.din4(buff_A_39_q0),.din5(buff_A_47_q0),.din6(buff_A_55_q0),.din7(buff_A_63_q0),.def(tmp_8_fu_1674_p17),.sel(trunc_ln27_fu_1380_p1),.dout(tmp_8_fu_1674_p19));
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
        i_fu_212 <= 7'd0;
    end else if (((icmp_ln26_fu_1255_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_212 <= select_ln26_fu_1287_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten6_fu_216 <= 10'd0;
    end else if (((icmp_ln26_fu_1255_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten6_fu_216 <= add_ln26_1_fu_1261_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_208 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_208 <= add_ln27_fu_1714_p2;
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
        j_load_reg_1761 <= j_fu_208;
        tmp_reg_1766 <= j_fu_208[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_addr_reg_2155 <= zext_ln5_fu_1725_p1;
        buff_y_out_1_addr_reg_2155_pp0_iter3_reg <= buff_y_out_1_addr_reg_2155;
        buff_y_out_1_addr_reg_2155_pp0_iter4_reg <= buff_y_out_1_addr_reg_2155_pp0_iter3_reg;
        buff_y_out_1_addr_reg_2155_pp0_iter5_reg <= buff_y_out_1_addr_reg_2155_pp0_iter4_reg;
        buff_y_out_1_addr_reg_2155_pp0_iter6_reg <= buff_y_out_1_addr_reg_2155_pp0_iter5_reg;
        buff_y_out_2_addr_reg_2161 <= zext_ln5_fu_1725_p1;
        buff_y_out_2_addr_reg_2161_pp0_iter3_reg <= buff_y_out_2_addr_reg_2161;
        buff_y_out_2_addr_reg_2161_pp0_iter4_reg <= buff_y_out_2_addr_reg_2161_pp0_iter3_reg;
        buff_y_out_2_addr_reg_2161_pp0_iter5_reg <= buff_y_out_2_addr_reg_2161_pp0_iter4_reg;
        buff_y_out_2_addr_reg_2161_pp0_iter6_reg <= buff_y_out_2_addr_reg_2161_pp0_iter5_reg;
        buff_y_out_3_addr_reg_2167 <= zext_ln5_fu_1725_p1;
        buff_y_out_3_addr_reg_2167_pp0_iter3_reg <= buff_y_out_3_addr_reg_2167;
        buff_y_out_3_addr_reg_2167_pp0_iter4_reg <= buff_y_out_3_addr_reg_2167_pp0_iter3_reg;
        buff_y_out_3_addr_reg_2167_pp0_iter5_reg <= buff_y_out_3_addr_reg_2167_pp0_iter4_reg;
        buff_y_out_3_addr_reg_2167_pp0_iter6_reg <= buff_y_out_3_addr_reg_2167_pp0_iter5_reg;
        buff_y_out_4_addr_reg_2173 <= zext_ln5_fu_1725_p1;
        buff_y_out_4_addr_reg_2173_pp0_iter3_reg <= buff_y_out_4_addr_reg_2173;
        buff_y_out_4_addr_reg_2173_pp0_iter4_reg <= buff_y_out_4_addr_reg_2173_pp0_iter3_reg;
        buff_y_out_4_addr_reg_2173_pp0_iter5_reg <= buff_y_out_4_addr_reg_2173_pp0_iter4_reg;
        buff_y_out_4_addr_reg_2173_pp0_iter6_reg <= buff_y_out_4_addr_reg_2173_pp0_iter5_reg;
        buff_y_out_4_addr_reg_2173_pp0_iter7_reg <= buff_y_out_4_addr_reg_2173_pp0_iter6_reg;
        buff_y_out_5_addr_reg_2178 <= zext_ln5_fu_1725_p1;
        buff_y_out_5_addr_reg_2178_pp0_iter3_reg <= buff_y_out_5_addr_reg_2178;
        buff_y_out_5_addr_reg_2178_pp0_iter4_reg <= buff_y_out_5_addr_reg_2178_pp0_iter3_reg;
        buff_y_out_5_addr_reg_2178_pp0_iter5_reg <= buff_y_out_5_addr_reg_2178_pp0_iter4_reg;
        buff_y_out_5_addr_reg_2178_pp0_iter6_reg <= buff_y_out_5_addr_reg_2178_pp0_iter5_reg;
        buff_y_out_5_addr_reg_2178_pp0_iter7_reg <= buff_y_out_5_addr_reg_2178_pp0_iter6_reg;
        buff_y_out_6_addr_reg_2183 <= zext_ln5_fu_1725_p1;
        buff_y_out_6_addr_reg_2183_pp0_iter3_reg <= buff_y_out_6_addr_reg_2183;
        buff_y_out_6_addr_reg_2183_pp0_iter4_reg <= buff_y_out_6_addr_reg_2183_pp0_iter3_reg;
        buff_y_out_6_addr_reg_2183_pp0_iter5_reg <= buff_y_out_6_addr_reg_2183_pp0_iter4_reg;
        buff_y_out_6_addr_reg_2183_pp0_iter6_reg <= buff_y_out_6_addr_reg_2183_pp0_iter5_reg;
        buff_y_out_6_addr_reg_2183_pp0_iter7_reg <= buff_y_out_6_addr_reg_2183_pp0_iter6_reg;
        buff_y_out_7_addr_reg_2188 <= zext_ln5_fu_1725_p1;
        buff_y_out_7_addr_reg_2188_pp0_iter3_reg <= buff_y_out_7_addr_reg_2188;
        buff_y_out_7_addr_reg_2188_pp0_iter4_reg <= buff_y_out_7_addr_reg_2188_pp0_iter3_reg;
        buff_y_out_7_addr_reg_2188_pp0_iter5_reg <= buff_y_out_7_addr_reg_2188_pp0_iter4_reg;
        buff_y_out_7_addr_reg_2188_pp0_iter6_reg <= buff_y_out_7_addr_reg_2188_pp0_iter5_reg;
        buff_y_out_7_addr_reg_2188_pp0_iter7_reg <= buff_y_out_7_addr_reg_2188_pp0_iter6_reg;
        buff_y_out_addr_reg_2149 <= zext_ln5_fu_1725_p1;
        buff_y_out_addr_reg_2149_pp0_iter3_reg <= buff_y_out_addr_reg_2149;
        buff_y_out_addr_reg_2149_pp0_iter4_reg <= buff_y_out_addr_reg_2149_pp0_iter3_reg;
        buff_y_out_addr_reg_2149_pp0_iter5_reg <= buff_y_out_addr_reg_2149_pp0_iter4_reg;
        buff_y_out_addr_reg_2149_pp0_iter6_reg <= buff_y_out_addr_reg_2149_pp0_iter5_reg;
        empty_reg_2096 <= tmp1_q0;
        lshr_ln5_2_reg_2104 <= {{select_ln5_fu_1374_p3[5:3]}};
        tmp_1_reg_2109 <= tmp_1_fu_1394_p19;
        tmp_2_reg_2114 <= tmp_2_fu_1434_p19;
        tmp_3_reg_2119 <= tmp_3_fu_1474_p19;
        tmp_4_reg_2124 <= tmp_4_fu_1514_p19;
        tmp_5_reg_2129 <= tmp_5_fu_1554_p19;
        tmp_6_reg_2134 <= tmp_6_fu_1594_p19;
        tmp_7_reg_2139 <= tmp_7_fu_1634_p19;
        tmp_8_reg_2144 <= tmp_8_fu_1674_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_load_reg_2198 <= buff_y_out_1_q1;
        buff_y_out_2_load_reg_2203 <= buff_y_out_2_q1;
        buff_y_out_3_load_reg_2208 <= buff_y_out_3_q1;
        buff_y_out_load_reg_2193 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_4_load_reg_2253 <= buff_y_out_4_q0;
        buff_y_out_5_load_reg_2258 <= buff_y_out_5_q0;
        buff_y_out_6_load_reg_2263 <= buff_y_out_6_q0;
        buff_y_out_7_load_reg_2268 <= buff_y_out_7_q0;
        mul57_4_reg_2233 <= grp_fu_2017_p_dout0;
        mul57_5_reg_2238 <= grp_fu_2021_p_dout0;
        mul57_6_reg_2243 <= grp_fu_2025_p_dout0;
        mul57_7_reg_2248 <= grp_fu_2029_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul1_reg_2213 <= grp_fu_2017_p_dout0;
        mul57_1_reg_2218 <= grp_fu_2021_p_dout0;
        mul57_2_reg_2223 <= grp_fu_2025_p_dout0;
        mul57_3_reg_2228 <= grp_fu_2029_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1213 <= grp_fu_2001_p_dout0;
        reg_1219 <= grp_fu_2005_p_dout0;
        reg_1225 <= grp_fu_2009_p_dout0;
        reg_1231 <= grp_fu_2013_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_1255_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        buff_y_out_4_address0_local = buff_y_out_4_addr_reg_2173_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_reg_2173;
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
        buff_y_out_5_address0_local = buff_y_out_5_addr_reg_2178_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_reg_2178;
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
        buff_y_out_6_address0_local = buff_y_out_6_addr_reg_2183_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_reg_2183;
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
        buff_y_out_7_address0_local = buff_y_out_7_addr_reg_2188_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_reg_2188;
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
        grp_fu_1181_p0 = buff_y_out_4_load_reg_2253;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1181_p0 = buff_y_out_load_reg_2193;
    end else begin
        grp_fu_1181_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1181_p1 = mul57_4_reg_2233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1181_p1 = mul1_reg_2213;
    end else begin
        grp_fu_1181_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1185_p0 = buff_y_out_5_load_reg_2258;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1185_p0 = buff_y_out_1_load_reg_2198;
    end else begin
        grp_fu_1185_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1185_p1 = mul57_5_reg_2238;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1185_p1 = mul57_1_reg_2218;
    end else begin
        grp_fu_1185_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1189_p0 = buff_y_out_6_load_reg_2263;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1189_p0 = buff_y_out_2_load_reg_2203;
    end else begin
        grp_fu_1189_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1189_p1 = mul57_6_reg_2243;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1189_p1 = mul57_2_reg_2223;
    end else begin
        grp_fu_1189_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1193_p0 = buff_y_out_7_load_reg_2268;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1193_p0 = buff_y_out_3_load_reg_2208;
    end else begin
        grp_fu_1193_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1193_p1 = mul57_7_reg_2248;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1193_p1 = mul57_3_reg_2228;
    end else begin
        grp_fu_1193_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1197_p0 = tmp_5_reg_2129;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1197_p0 = tmp_1_reg_2109;
    end else begin
        grp_fu_1197_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1201_p0 = tmp_6_reg_2134;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1201_p0 = tmp_2_reg_2114;
    end else begin
        grp_fu_1201_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1205_p0 = tmp_7_reg_2139;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1205_p0 = tmp_3_reg_2119;
    end else begin
        grp_fu_1205_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1209_p0 = tmp_8_reg_2144;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1209_p0 = tmp_4_reg_2124;
    end else begin
        grp_fu_1209_p0 = 'bx;
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
assign add_ln26_1_fu_1261_p2 = (indvar_flatten6_fu_216 + 10'd1);
assign add_ln26_fu_1273_p2 = (i_fu_212 + 7'd1);
assign add_ln27_fu_1714_p2 = (select_ln5_fu_1374_p3 + 7'd8);
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
assign buff_A_10_address0 = zext_ln26_fu_1295_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_11_address0 = zext_ln26_fu_1295_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_12_address0 = zext_ln26_fu_1295_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_13_address0 = zext_ln26_fu_1295_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_14_address0 = zext_ln26_fu_1295_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_15_address0 = zext_ln26_fu_1295_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_16_address0 = zext_ln26_fu_1295_p1;
assign buff_A_16_ce0 = buff_A_16_ce0_local;
assign buff_A_17_address0 = zext_ln26_fu_1295_p1;
assign buff_A_17_ce0 = buff_A_17_ce0_local;
assign buff_A_18_address0 = zext_ln26_fu_1295_p1;
assign buff_A_18_ce0 = buff_A_18_ce0_local;
assign buff_A_19_address0 = zext_ln26_fu_1295_p1;
assign buff_A_19_ce0 = buff_A_19_ce0_local;
assign buff_A_1_address0 = zext_ln26_fu_1295_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_20_address0 = zext_ln26_fu_1295_p1;
assign buff_A_20_ce0 = buff_A_20_ce0_local;
assign buff_A_21_address0 = zext_ln26_fu_1295_p1;
assign buff_A_21_ce0 = buff_A_21_ce0_local;
assign buff_A_22_address0 = zext_ln26_fu_1295_p1;
assign buff_A_22_ce0 = buff_A_22_ce0_local;
assign buff_A_23_address0 = zext_ln26_fu_1295_p1;
assign buff_A_23_ce0 = buff_A_23_ce0_local;
assign buff_A_24_address0 = zext_ln26_fu_1295_p1;
assign buff_A_24_ce0 = buff_A_24_ce0_local;
assign buff_A_25_address0 = zext_ln26_fu_1295_p1;
assign buff_A_25_ce0 = buff_A_25_ce0_local;
assign buff_A_26_address0 = zext_ln26_fu_1295_p1;
assign buff_A_26_ce0 = buff_A_26_ce0_local;
assign buff_A_27_address0 = zext_ln26_fu_1295_p1;
assign buff_A_27_ce0 = buff_A_27_ce0_local;
assign buff_A_28_address0 = zext_ln26_fu_1295_p1;
assign buff_A_28_ce0 = buff_A_28_ce0_local;
assign buff_A_29_address0 = zext_ln26_fu_1295_p1;
assign buff_A_29_ce0 = buff_A_29_ce0_local;
assign buff_A_2_address0 = zext_ln26_fu_1295_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_30_address0 = zext_ln26_fu_1295_p1;
assign buff_A_30_ce0 = buff_A_30_ce0_local;
assign buff_A_31_address0 = zext_ln26_fu_1295_p1;
assign buff_A_31_ce0 = buff_A_31_ce0_local;
assign buff_A_32_address0 = zext_ln26_fu_1295_p1;
assign buff_A_32_ce0 = buff_A_32_ce0_local;
assign buff_A_33_address0 = zext_ln26_fu_1295_p1;
assign buff_A_33_ce0 = buff_A_33_ce0_local;
assign buff_A_34_address0 = zext_ln26_fu_1295_p1;
assign buff_A_34_ce0 = buff_A_34_ce0_local;
assign buff_A_35_address0 = zext_ln26_fu_1295_p1;
assign buff_A_35_ce0 = buff_A_35_ce0_local;
assign buff_A_36_address0 = zext_ln26_fu_1295_p1;
assign buff_A_36_ce0 = buff_A_36_ce0_local;
assign buff_A_37_address0 = zext_ln26_fu_1295_p1;
assign buff_A_37_ce0 = buff_A_37_ce0_local;
assign buff_A_38_address0 = zext_ln26_fu_1295_p1;
assign buff_A_38_ce0 = buff_A_38_ce0_local;
assign buff_A_39_address0 = zext_ln26_fu_1295_p1;
assign buff_A_39_ce0 = buff_A_39_ce0_local;
assign buff_A_3_address0 = zext_ln26_fu_1295_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_40_address0 = zext_ln26_fu_1295_p1;
assign buff_A_40_ce0 = buff_A_40_ce0_local;
assign buff_A_41_address0 = zext_ln26_fu_1295_p1;
assign buff_A_41_ce0 = buff_A_41_ce0_local;
assign buff_A_42_address0 = zext_ln26_fu_1295_p1;
assign buff_A_42_ce0 = buff_A_42_ce0_local;
assign buff_A_43_address0 = zext_ln26_fu_1295_p1;
assign buff_A_43_ce0 = buff_A_43_ce0_local;
assign buff_A_44_address0 = zext_ln26_fu_1295_p1;
assign buff_A_44_ce0 = buff_A_44_ce0_local;
assign buff_A_45_address0 = zext_ln26_fu_1295_p1;
assign buff_A_45_ce0 = buff_A_45_ce0_local;
assign buff_A_46_address0 = zext_ln26_fu_1295_p1;
assign buff_A_46_ce0 = buff_A_46_ce0_local;
assign buff_A_47_address0 = zext_ln26_fu_1295_p1;
assign buff_A_47_ce0 = buff_A_47_ce0_local;
assign buff_A_48_address0 = zext_ln26_fu_1295_p1;
assign buff_A_48_ce0 = buff_A_48_ce0_local;
assign buff_A_49_address0 = zext_ln26_fu_1295_p1;
assign buff_A_49_ce0 = buff_A_49_ce0_local;
assign buff_A_4_address0 = zext_ln26_fu_1295_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_50_address0 = zext_ln26_fu_1295_p1;
assign buff_A_50_ce0 = buff_A_50_ce0_local;
assign buff_A_51_address0 = zext_ln26_fu_1295_p1;
assign buff_A_51_ce0 = buff_A_51_ce0_local;
assign buff_A_52_address0 = zext_ln26_fu_1295_p1;
assign buff_A_52_ce0 = buff_A_52_ce0_local;
assign buff_A_53_address0 = zext_ln26_fu_1295_p1;
assign buff_A_53_ce0 = buff_A_53_ce0_local;
assign buff_A_54_address0 = zext_ln26_fu_1295_p1;
assign buff_A_54_ce0 = buff_A_54_ce0_local;
assign buff_A_55_address0 = zext_ln26_fu_1295_p1;
assign buff_A_55_ce0 = buff_A_55_ce0_local;
assign buff_A_56_address0 = zext_ln26_fu_1295_p1;
assign buff_A_56_ce0 = buff_A_56_ce0_local;
assign buff_A_57_address0 = zext_ln26_fu_1295_p1;
assign buff_A_57_ce0 = buff_A_57_ce0_local;
assign buff_A_58_address0 = zext_ln26_fu_1295_p1;
assign buff_A_58_ce0 = buff_A_58_ce0_local;
assign buff_A_59_address0 = zext_ln26_fu_1295_p1;
assign buff_A_59_ce0 = buff_A_59_ce0_local;
assign buff_A_5_address0 = zext_ln26_fu_1295_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_60_address0 = zext_ln26_fu_1295_p1;
assign buff_A_60_ce0 = buff_A_60_ce0_local;
assign buff_A_61_address0 = zext_ln26_fu_1295_p1;
assign buff_A_61_ce0 = buff_A_61_ce0_local;
assign buff_A_62_address0 = zext_ln26_fu_1295_p1;
assign buff_A_62_ce0 = buff_A_62_ce0_local;
assign buff_A_63_address0 = zext_ln26_fu_1295_p1;
assign buff_A_63_ce0 = buff_A_63_ce0_local;
assign buff_A_6_address0 = zext_ln26_fu_1295_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln26_fu_1295_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_8_address0 = zext_ln26_fu_1295_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_9_address0 = zext_ln26_fu_1295_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_address0 = zext_ln26_fu_1295_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_y_out_1_address0 = buff_y_out_1_addr_reg_2155_pp0_iter6_reg;
assign buff_y_out_1_address1 = zext_ln5_fu_1725_p1;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_ce1 = buff_y_out_1_ce1_local;
assign buff_y_out_1_d0 = reg_1219;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_2_address0 = buff_y_out_2_addr_reg_2161_pp0_iter6_reg;
assign buff_y_out_2_address1 = zext_ln5_fu_1725_p1;
assign buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
assign buff_y_out_2_ce1 = buff_y_out_2_ce1_local;
assign buff_y_out_2_d0 = reg_1225;
assign buff_y_out_2_we0 = buff_y_out_2_we0_local;
assign buff_y_out_3_address0 = buff_y_out_3_addr_reg_2167_pp0_iter6_reg;
assign buff_y_out_3_address1 = zext_ln5_fu_1725_p1;
assign buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
assign buff_y_out_3_ce1 = buff_y_out_3_ce1_local;
assign buff_y_out_3_d0 = reg_1231;
assign buff_y_out_3_we0 = buff_y_out_3_we0_local;
assign buff_y_out_4_address0 = buff_y_out_4_address0_local;
assign buff_y_out_4_ce0 = buff_y_out_4_ce0_local;
assign buff_y_out_4_d0 = reg_1213;
assign buff_y_out_4_we0 = buff_y_out_4_we0_local;
assign buff_y_out_5_address0 = buff_y_out_5_address0_local;
assign buff_y_out_5_ce0 = buff_y_out_5_ce0_local;
assign buff_y_out_5_d0 = reg_1219;
assign buff_y_out_5_we0 = buff_y_out_5_we0_local;
assign buff_y_out_6_address0 = buff_y_out_6_address0_local;
assign buff_y_out_6_ce0 = buff_y_out_6_ce0_local;
assign buff_y_out_6_d0 = reg_1225;
assign buff_y_out_6_we0 = buff_y_out_6_we0_local;
assign buff_y_out_7_address0 = buff_y_out_7_address0_local;
assign buff_y_out_7_ce0 = buff_y_out_7_ce0_local;
assign buff_y_out_7_d0 = reg_1231;
assign buff_y_out_7_we0 = buff_y_out_7_we0_local;
assign buff_y_out_address0 = buff_y_out_addr_reg_2149_pp0_iter6_reg;
assign buff_y_out_address1 = zext_ln5_fu_1725_p1;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_ce1 = buff_y_out_ce1_local;
assign buff_y_out_d0 = reg_1213;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign grp_fu_2001_p_ce = 1'b1;
assign grp_fu_2001_p_din0 = grp_fu_1181_p0;
assign grp_fu_2001_p_din1 = grp_fu_1181_p1;
assign grp_fu_2001_p_opcode = 2'd0;
assign grp_fu_2005_p_ce = 1'b1;
assign grp_fu_2005_p_din0 = grp_fu_1185_p0;
assign grp_fu_2005_p_din1 = grp_fu_1185_p1;
assign grp_fu_2005_p_opcode = 2'd0;
assign grp_fu_2009_p_ce = 1'b1;
assign grp_fu_2009_p_din0 = grp_fu_1189_p0;
assign grp_fu_2009_p_din1 = grp_fu_1189_p1;
assign grp_fu_2009_p_opcode = 2'd0;
assign grp_fu_2013_p_ce = 1'b1;
assign grp_fu_2013_p_din0 = grp_fu_1193_p0;
assign grp_fu_2013_p_din1 = grp_fu_1193_p1;
assign grp_fu_2013_p_opcode = 2'd0;
assign grp_fu_2017_p_ce = 1'b1;
assign grp_fu_2017_p_din0 = grp_fu_1197_p0;
assign grp_fu_2017_p_din1 = empty_reg_2096;
assign grp_fu_2021_p_ce = 1'b1;
assign grp_fu_2021_p_din0 = grp_fu_1201_p0;
assign grp_fu_2021_p_din1 = empty_reg_2096;
assign grp_fu_2025_p_ce = 1'b1;
assign grp_fu_2025_p_din0 = grp_fu_1205_p0;
assign grp_fu_2025_p_din1 = empty_reg_2096;
assign grp_fu_2029_p_ce = 1'b1;
assign grp_fu_2029_p_din0 = grp_fu_1209_p0;
assign grp_fu_2029_p_din1 = empty_reg_2096;
assign icmp_ln26_fu_1255_p2 = ((indvar_flatten6_fu_216 == 10'd512) ? 1'b1 : 1'b0);
assign select_ln26_fu_1287_p3 = ((tmp_fu_1279_p3[0:0] == 1'b1) ? add_ln26_fu_1273_p2 : i_fu_212);
assign select_ln5_fu_1374_p3 = ((tmp_reg_1766[0:0] == 1'b1) ? 7'd0 : j_load_reg_1761);
assign tmp1_address0 = zext_ln26_fu_1295_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp_1_fu_1394_p17 = 'bx;
assign tmp_2_fu_1434_p17 = 'bx;
assign tmp_3_fu_1474_p17 = 'bx;
assign tmp_4_fu_1514_p17 = 'bx;
assign tmp_5_fu_1554_p17 = 'bx;
assign tmp_6_fu_1594_p17 = 'bx;
assign tmp_7_fu_1634_p17 = 'bx;
assign tmp_8_fu_1674_p17 = 'bx;
assign tmp_fu_1279_p3 = j_fu_208[32'd6];
assign trunc_ln27_fu_1380_p1 = select_ln5_fu_1374_p3[5:0];
assign zext_ln26_fu_1295_p1 = select_ln26_fu_1287_p3;
assign zext_ln5_fu_1725_p1 = lshr_ln5_2_reg_2104;
endmodule 