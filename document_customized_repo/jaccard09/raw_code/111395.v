module atax_atax_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_16_address0,buff_A_16_ce0,buff_A_16_q0,buff_A_20_address0,buff_A_20_ce0,buff_A_20_q0,buff_A_24_address0,buff_A_24_ce0,buff_A_24_q0,buff_A_28_address0,buff_A_28_ce0,buff_A_28_q0,buff_A_32_address0,buff_A_32_ce0,buff_A_32_q0,buff_A_36_address0,buff_A_36_ce0,buff_A_36_q0,buff_A_40_address0,buff_A_40_ce0,buff_A_40_q0,buff_A_44_address0,buff_A_44_ce0,buff_A_44_q0,buff_A_48_address0,buff_A_48_ce0,buff_A_48_q0,buff_A_52_address0,buff_A_52_ce0,buff_A_52_q0,buff_A_56_address0,buff_A_56_ce0,buff_A_56_q0,buff_A_60_address0,buff_A_60_ce0,buff_A_60_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_17_address0,buff_A_17_ce0,buff_A_17_q0,buff_A_21_address0,buff_A_21_ce0,buff_A_21_q0,buff_A_25_address0,buff_A_25_ce0,buff_A_25_q0,buff_A_29_address0,buff_A_29_ce0,buff_A_29_q0,buff_A_33_address0,buff_A_33_ce0,buff_A_33_q0,buff_A_37_address0,buff_A_37_ce0,buff_A_37_q0,buff_A_41_address0,buff_A_41_ce0,buff_A_41_q0,buff_A_45_address0,buff_A_45_ce0,buff_A_45_q0,buff_A_49_address0,buff_A_49_ce0,buff_A_49_q0,buff_A_53_address0,buff_A_53_ce0,buff_A_53_q0,buff_A_57_address0,buff_A_57_ce0,buff_A_57_q0,buff_A_61_address0,buff_A_61_ce0,buff_A_61_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_18_address0,buff_A_18_ce0,buff_A_18_q0,buff_A_22_address0,buff_A_22_ce0,buff_A_22_q0,buff_A_26_address0,buff_A_26_ce0,buff_A_26_q0,buff_A_30_address0,buff_A_30_ce0,buff_A_30_q0,buff_A_34_address0,buff_A_34_ce0,buff_A_34_q0,buff_A_38_address0,buff_A_38_ce0,buff_A_38_q0,buff_A_42_address0,buff_A_42_ce0,buff_A_42_q0,buff_A_46_address0,buff_A_46_ce0,buff_A_46_q0,buff_A_50_address0,buff_A_50_ce0,buff_A_50_q0,buff_A_54_address0,buff_A_54_ce0,buff_A_54_q0,buff_A_58_address0,buff_A_58_ce0,buff_A_58_q0,buff_A_62_address0,buff_A_62_ce0,buff_A_62_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_A_19_address0,buff_A_19_ce0,buff_A_19_q0,buff_A_23_address0,buff_A_23_ce0,buff_A_23_q0,buff_A_27_address0,buff_A_27_ce0,buff_A_27_q0,buff_A_31_address0,buff_A_31_ce0,buff_A_31_q0,buff_A_35_address0,buff_A_35_ce0,buff_A_35_q0,buff_A_39_address0,buff_A_39_ce0,buff_A_39_q0,buff_A_43_address0,buff_A_43_ce0,buff_A_43_q0,buff_A_47_address0,buff_A_47_ce0,buff_A_47_q0,buff_A_51_address0,buff_A_51_ce0,buff_A_51_q0,buff_A_55_address0,buff_A_55_ce0,buff_A_55_q0,buff_A_59_address0,buff_A_59_ce0,buff_A_59_q0,buff_A_63_address0,buff_A_63_ce0,buff_A_63_q0,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,buff_y_out_address1,buff_y_out_ce1,buff_y_out_q1,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,buff_y_out_1_address1,buff_y_out_1_ce1,buff_y_out_1_q1,buff_y_out_2_address0,buff_y_out_2_ce0,buff_y_out_2_we0,buff_y_out_2_d0,buff_y_out_2_address1,buff_y_out_2_ce1,buff_y_out_2_q1,buff_y_out_3_address0,buff_y_out_3_ce0,buff_y_out_3_we0,buff_y_out_3_d0,buff_y_out_3_address1,buff_y_out_3_ce1,buff_y_out_3_q1,grp_fu_1977_p_din0,grp_fu_1977_p_din1,grp_fu_1977_p_opcode,grp_fu_1977_p_dout0,grp_fu_1977_p_ce,grp_fu_1981_p_din0,grp_fu_1981_p_din1,grp_fu_1981_p_opcode,grp_fu_1981_p_dout0,grp_fu_1981_p_ce,grp_fu_1985_p_din0,grp_fu_1985_p_din1,grp_fu_1985_p_opcode,grp_fu_1985_p_dout0,grp_fu_1985_p_ce,grp_fu_1989_p_din0,grp_fu_1989_p_din1,grp_fu_1989_p_opcode,grp_fu_1989_p_dout0,grp_fu_1989_p_ce,grp_fu_1993_p_din0,grp_fu_1993_p_din1,grp_fu_1993_p_dout0,grp_fu_1993_p_ce,grp_fu_1997_p_din0,grp_fu_1997_p_din1,grp_fu_1997_p_dout0,grp_fu_1997_p_ce,grp_fu_2001_p_din0,grp_fu_2001_p_din1,grp_fu_2001_p_dout0,grp_fu_2001_p_ce,grp_fu_2005_p_din0,grp_fu_2005_p_din1,grp_fu_2005_p_dout0,grp_fu_2005_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
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
output  [5:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [5:0] buff_A_8_address0;
output   buff_A_8_ce0;
input  [31:0] buff_A_8_q0;
output  [5:0] buff_A_12_address0;
output   buff_A_12_ce0;
input  [31:0] buff_A_12_q0;
output  [5:0] buff_A_16_address0;
output   buff_A_16_ce0;
input  [31:0] buff_A_16_q0;
output  [5:0] buff_A_20_address0;
output   buff_A_20_ce0;
input  [31:0] buff_A_20_q0;
output  [5:0] buff_A_24_address0;
output   buff_A_24_ce0;
input  [31:0] buff_A_24_q0;
output  [5:0] buff_A_28_address0;
output   buff_A_28_ce0;
input  [31:0] buff_A_28_q0;
output  [5:0] buff_A_32_address0;
output   buff_A_32_ce0;
input  [31:0] buff_A_32_q0;
output  [5:0] buff_A_36_address0;
output   buff_A_36_ce0;
input  [31:0] buff_A_36_q0;
output  [5:0] buff_A_40_address0;
output   buff_A_40_ce0;
input  [31:0] buff_A_40_q0;
output  [5:0] buff_A_44_address0;
output   buff_A_44_ce0;
input  [31:0] buff_A_44_q0;
output  [5:0] buff_A_48_address0;
output   buff_A_48_ce0;
input  [31:0] buff_A_48_q0;
output  [5:0] buff_A_52_address0;
output   buff_A_52_ce0;
input  [31:0] buff_A_52_q0;
output  [5:0] buff_A_56_address0;
output   buff_A_56_ce0;
input  [31:0] buff_A_56_q0;
output  [5:0] buff_A_60_address0;
output   buff_A_60_ce0;
input  [31:0] buff_A_60_q0;
output  [5:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [5:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [5:0] buff_A_9_address0;
output   buff_A_9_ce0;
input  [31:0] buff_A_9_q0;
output  [5:0] buff_A_13_address0;
output   buff_A_13_ce0;
input  [31:0] buff_A_13_q0;
output  [5:0] buff_A_17_address0;
output   buff_A_17_ce0;
input  [31:0] buff_A_17_q0;
output  [5:0] buff_A_21_address0;
output   buff_A_21_ce0;
input  [31:0] buff_A_21_q0;
output  [5:0] buff_A_25_address0;
output   buff_A_25_ce0;
input  [31:0] buff_A_25_q0;
output  [5:0] buff_A_29_address0;
output   buff_A_29_ce0;
input  [31:0] buff_A_29_q0;
output  [5:0] buff_A_33_address0;
output   buff_A_33_ce0;
input  [31:0] buff_A_33_q0;
output  [5:0] buff_A_37_address0;
output   buff_A_37_ce0;
input  [31:0] buff_A_37_q0;
output  [5:0] buff_A_41_address0;
output   buff_A_41_ce0;
input  [31:0] buff_A_41_q0;
output  [5:0] buff_A_45_address0;
output   buff_A_45_ce0;
input  [31:0] buff_A_45_q0;
output  [5:0] buff_A_49_address0;
output   buff_A_49_ce0;
input  [31:0] buff_A_49_q0;
output  [5:0] buff_A_53_address0;
output   buff_A_53_ce0;
input  [31:0] buff_A_53_q0;
output  [5:0] buff_A_57_address0;
output   buff_A_57_ce0;
input  [31:0] buff_A_57_q0;
output  [5:0] buff_A_61_address0;
output   buff_A_61_ce0;
input  [31:0] buff_A_61_q0;
output  [5:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [5:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [5:0] buff_A_10_address0;
output   buff_A_10_ce0;
input  [31:0] buff_A_10_q0;
output  [5:0] buff_A_14_address0;
output   buff_A_14_ce0;
input  [31:0] buff_A_14_q0;
output  [5:0] buff_A_18_address0;
output   buff_A_18_ce0;
input  [31:0] buff_A_18_q0;
output  [5:0] buff_A_22_address0;
output   buff_A_22_ce0;
input  [31:0] buff_A_22_q0;
output  [5:0] buff_A_26_address0;
output   buff_A_26_ce0;
input  [31:0] buff_A_26_q0;
output  [5:0] buff_A_30_address0;
output   buff_A_30_ce0;
input  [31:0] buff_A_30_q0;
output  [5:0] buff_A_34_address0;
output   buff_A_34_ce0;
input  [31:0] buff_A_34_q0;
output  [5:0] buff_A_38_address0;
output   buff_A_38_ce0;
input  [31:0] buff_A_38_q0;
output  [5:0] buff_A_42_address0;
output   buff_A_42_ce0;
input  [31:0] buff_A_42_q0;
output  [5:0] buff_A_46_address0;
output   buff_A_46_ce0;
input  [31:0] buff_A_46_q0;
output  [5:0] buff_A_50_address0;
output   buff_A_50_ce0;
input  [31:0] buff_A_50_q0;
output  [5:0] buff_A_54_address0;
output   buff_A_54_ce0;
input  [31:0] buff_A_54_q0;
output  [5:0] buff_A_58_address0;
output   buff_A_58_ce0;
input  [31:0] buff_A_58_q0;
output  [5:0] buff_A_62_address0;
output   buff_A_62_ce0;
input  [31:0] buff_A_62_q0;
output  [5:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [5:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [5:0] buff_A_11_address0;
output   buff_A_11_ce0;
input  [31:0] buff_A_11_q0;
output  [5:0] buff_A_15_address0;
output   buff_A_15_ce0;
input  [31:0] buff_A_15_q0;
output  [5:0] buff_A_19_address0;
output   buff_A_19_ce0;
input  [31:0] buff_A_19_q0;
output  [5:0] buff_A_23_address0;
output   buff_A_23_ce0;
input  [31:0] buff_A_23_q0;
output  [5:0] buff_A_27_address0;
output   buff_A_27_ce0;
input  [31:0] buff_A_27_q0;
output  [5:0] buff_A_31_address0;
output   buff_A_31_ce0;
input  [31:0] buff_A_31_q0;
output  [5:0] buff_A_35_address0;
output   buff_A_35_ce0;
input  [31:0] buff_A_35_q0;
output  [5:0] buff_A_39_address0;
output   buff_A_39_ce0;
input  [31:0] buff_A_39_q0;
output  [5:0] buff_A_43_address0;
output   buff_A_43_ce0;
input  [31:0] buff_A_43_q0;
output  [5:0] buff_A_47_address0;
output   buff_A_47_ce0;
input  [31:0] buff_A_47_q0;
output  [5:0] buff_A_51_address0;
output   buff_A_51_ce0;
input  [31:0] buff_A_51_q0;
output  [5:0] buff_A_55_address0;
output   buff_A_55_ce0;
input  [31:0] buff_A_55_q0;
output  [5:0] buff_A_59_address0;
output   buff_A_59_ce0;
input  [31:0] buff_A_59_q0;
output  [5:0] buff_A_63_address0;
output   buff_A_63_ce0;
input  [31:0] buff_A_63_q0;
output  [3:0] buff_y_out_address0;
output   buff_y_out_ce0;
output   buff_y_out_we0;
output  [31:0] buff_y_out_d0;
output  [3:0] buff_y_out_address1;
output   buff_y_out_ce1;
input  [31:0] buff_y_out_q1;
output  [3:0] buff_y_out_1_address0;
output   buff_y_out_1_ce0;
output   buff_y_out_1_we0;
output  [31:0] buff_y_out_1_d0;
output  [3:0] buff_y_out_1_address1;
output   buff_y_out_1_ce1;
input  [31:0] buff_y_out_1_q1;
output  [3:0] buff_y_out_2_address0;
output   buff_y_out_2_ce0;
output   buff_y_out_2_we0;
output  [31:0] buff_y_out_2_d0;
output  [3:0] buff_y_out_2_address1;
output   buff_y_out_2_ce1;
input  [31:0] buff_y_out_2_q1;
output  [3:0] buff_y_out_3_address0;
output   buff_y_out_3_ce0;
output   buff_y_out_3_we0;
output  [31:0] buff_y_out_3_d0;
output  [3:0] buff_y_out_3_address1;
output   buff_y_out_3_ce1;
input  [31:0] buff_y_out_3_q1;
output  [31:0] grp_fu_1977_p_din0;
output  [31:0] grp_fu_1977_p_din1;
output  [1:0] grp_fu_1977_p_opcode;
input  [31:0] grp_fu_1977_p_dout0;
output   grp_fu_1977_p_ce;
output  [31:0] grp_fu_1981_p_din0;
output  [31:0] grp_fu_1981_p_din1;
output  [1:0] grp_fu_1981_p_opcode;
input  [31:0] grp_fu_1981_p_dout0;
output   grp_fu_1981_p_ce;
output  [31:0] grp_fu_1985_p_din0;
output  [31:0] grp_fu_1985_p_din1;
output  [1:0] grp_fu_1985_p_opcode;
input  [31:0] grp_fu_1985_p_dout0;
output   grp_fu_1985_p_ce;
output  [31:0] grp_fu_1989_p_din0;
output  [31:0] grp_fu_1989_p_din1;
output  [1:0] grp_fu_1989_p_opcode;
input  [31:0] grp_fu_1989_p_dout0;
output   grp_fu_1989_p_ce;
output  [31:0] grp_fu_1993_p_din0;
output  [31:0] grp_fu_1993_p_din1;
input  [31:0] grp_fu_1993_p_dout0;
output   grp_fu_1993_p_ce;
output  [31:0] grp_fu_1997_p_din0;
output  [31:0] grp_fu_1997_p_din1;
input  [31:0] grp_fu_1997_p_dout0;
output   grp_fu_1997_p_ce;
output  [31:0] grp_fu_2001_p_din0;
output  [31:0] grp_fu_2001_p_din1;
input  [31:0] grp_fu_2001_p_dout0;
output   grp_fu_2001_p_ce;
output  [31:0] grp_fu_2005_p_din0;
output  [31:0] grp_fu_2005_p_din1;
input  [31:0] grp_fu_2005_p_dout0;
output   grp_fu_2005_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln26_fu_1208_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln26_fu_1329_p1;
reg   [0:0] trunc_ln26_reg_1702;
wire   [5:0] trunc_ln27_fu_1349_p1;
reg   [5:0] trunc_ln27_reg_2037;
reg   [3:0] lshr_ln5_5_reg_2045;
reg   [3:0] lshr_ln5_5_reg_2045_pp0_iter2_reg;
reg   [3:0] lshr_ln5_5_reg_2045_pp0_iter3_reg;
reg   [3:0] lshr_ln5_5_reg_2045_pp0_iter4_reg;
wire   [31:0] tmp_fu_1379_p3;
reg   [31:0] tmp_reg_2050;
wire   [31:0] tmp_2_fu_1386_p35;
reg   [31:0] tmp_2_reg_2058;
wire   [31:0] tmp_3_fu_1457_p35;
reg   [31:0] tmp_3_reg_2063;
wire   [31:0] tmp_4_fu_1528_p35;
reg   [31:0] tmp_4_reg_2068;
wire   [31:0] tmp_5_fu_1599_p35;
reg   [31:0] tmp_5_reg_2073;
reg   [3:0] buff_y_out_addr_reg_2078;
reg   [3:0] buff_y_out_addr_reg_2078_pp0_iter6_reg;
reg   [3:0] buff_y_out_addr_reg_2078_pp0_iter7_reg;
reg   [3:0] buff_y_out_addr_reg_2078_pp0_iter8_reg;
reg   [3:0] buff_y_out_addr_reg_2078_pp0_iter9_reg;
reg   [3:0] buff_y_out_addr_reg_2078_pp0_iter10_reg;
reg   [3:0] buff_y_out_addr_reg_2078_pp0_iter11_reg;
reg   [3:0] buff_y_out_addr_reg_2078_pp0_iter12_reg;
reg   [3:0] buff_y_out_addr_reg_2078_pp0_iter13_reg;
reg   [3:0] buff_y_out_1_addr_reg_2084;
reg   [3:0] buff_y_out_1_addr_reg_2084_pp0_iter6_reg;
reg   [3:0] buff_y_out_1_addr_reg_2084_pp0_iter7_reg;
reg   [3:0] buff_y_out_1_addr_reg_2084_pp0_iter8_reg;
reg   [3:0] buff_y_out_1_addr_reg_2084_pp0_iter9_reg;
reg   [3:0] buff_y_out_1_addr_reg_2084_pp0_iter10_reg;
reg   [3:0] buff_y_out_1_addr_reg_2084_pp0_iter11_reg;
reg   [3:0] buff_y_out_1_addr_reg_2084_pp0_iter12_reg;
reg   [3:0] buff_y_out_1_addr_reg_2084_pp0_iter13_reg;
reg   [3:0] buff_y_out_2_addr_reg_2090;
reg   [3:0] buff_y_out_2_addr_reg_2090_pp0_iter6_reg;
reg   [3:0] buff_y_out_2_addr_reg_2090_pp0_iter7_reg;
reg   [3:0] buff_y_out_2_addr_reg_2090_pp0_iter8_reg;
reg   [3:0] buff_y_out_2_addr_reg_2090_pp0_iter9_reg;
reg   [3:0] buff_y_out_2_addr_reg_2090_pp0_iter10_reg;
reg   [3:0] buff_y_out_2_addr_reg_2090_pp0_iter11_reg;
reg   [3:0] buff_y_out_2_addr_reg_2090_pp0_iter12_reg;
reg   [3:0] buff_y_out_2_addr_reg_2090_pp0_iter13_reg;
reg   [3:0] buff_y_out_3_addr_reg_2096;
reg   [3:0] buff_y_out_3_addr_reg_2096_pp0_iter6_reg;
reg   [3:0] buff_y_out_3_addr_reg_2096_pp0_iter7_reg;
reg   [3:0] buff_y_out_3_addr_reg_2096_pp0_iter8_reg;
reg   [3:0] buff_y_out_3_addr_reg_2096_pp0_iter9_reg;
reg   [3:0] buff_y_out_3_addr_reg_2096_pp0_iter10_reg;
reg   [3:0] buff_y_out_3_addr_reg_2096_pp0_iter11_reg;
reg   [3:0] buff_y_out_3_addr_reg_2096_pp0_iter12_reg;
reg   [3:0] buff_y_out_3_addr_reg_2096_pp0_iter13_reg;
reg   [31:0] buff_y_out_load_reg_2102;
reg   [31:0] mul1_reg_2107;
reg   [31:0] mul57_1_reg_2112;
reg   [31:0] mul57_2_reg_2117;
reg   [31:0] mul57_3_reg_2122;
reg   [31:0] buff_y_out_1_load_reg_2127;
reg   [31:0] buff_y_out_2_load_reg_2132;
reg   [31:0] buff_y_out_3_load_reg_2137;
reg   [31:0] add1_reg_2142;
reg   [31:0] add58_1_reg_2147;
reg   [31:0] add58_2_reg_2152;
reg   [31:0] add58_3_reg_2157;
wire   [63:0] zext_ln5_fu_1343_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln26_fu_1261_p1;
wire   [63:0] zext_ln5_2_fu_1670_p1;
reg   [6:0] j_fu_220;
wire   [6:0] add_ln27_fu_1363_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_224;
wire   [6:0] select_ln26_fu_1253_p3;
reg   [10:0] indvar_flatten6_fu_228;
wire   [10:0] add_ln26_1_fu_1214_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    tmp1_ce0_local;
reg    tmp1_1_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_8_ce0_local;
reg    buff_A_12_ce0_local;
reg    buff_A_16_ce0_local;
reg    buff_A_20_ce0_local;
reg    buff_A_24_ce0_local;
reg    buff_A_28_ce0_local;
reg    buff_A_32_ce0_local;
reg    buff_A_36_ce0_local;
reg    buff_A_40_ce0_local;
reg    buff_A_44_ce0_local;
reg    buff_A_48_ce0_local;
reg    buff_A_52_ce0_local;
reg    buff_A_56_ce0_local;
reg    buff_A_60_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_9_ce0_local;
reg    buff_A_13_ce0_local;
reg    buff_A_17_ce0_local;
reg    buff_A_21_ce0_local;
reg    buff_A_25_ce0_local;
reg    buff_A_29_ce0_local;
reg    buff_A_33_ce0_local;
reg    buff_A_37_ce0_local;
reg    buff_A_41_ce0_local;
reg    buff_A_45_ce0_local;
reg    buff_A_49_ce0_local;
reg    buff_A_53_ce0_local;
reg    buff_A_57_ce0_local;
reg    buff_A_61_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_10_ce0_local;
reg    buff_A_14_ce0_local;
reg    buff_A_18_ce0_local;
reg    buff_A_22_ce0_local;
reg    buff_A_26_ce0_local;
reg    buff_A_30_ce0_local;
reg    buff_A_34_ce0_local;
reg    buff_A_38_ce0_local;
reg    buff_A_42_ce0_local;
reg    buff_A_46_ce0_local;
reg    buff_A_50_ce0_local;
reg    buff_A_54_ce0_local;
reg    buff_A_58_ce0_local;
reg    buff_A_62_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_7_ce0_local;
reg    buff_A_11_ce0_local;
reg    buff_A_15_ce0_local;
reg    buff_A_19_ce0_local;
reg    buff_A_23_ce0_local;
reg    buff_A_27_ce0_local;
reg    buff_A_31_ce0_local;
reg    buff_A_35_ce0_local;
reg    buff_A_39_ce0_local;
reg    buff_A_43_ce0_local;
reg    buff_A_47_ce0_local;
reg    buff_A_51_ce0_local;
reg    buff_A_55_ce0_local;
reg    buff_A_59_ce0_local;
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
wire   [0:0] tmp_1_fu_1237_p3;
wire   [6:0] add_ln26_fu_1231_p2;
wire   [4:0] lshr_ln5_3_fu_1333_p4;
wire   [6:0] select_ln5_fu_1245_p3;
wire   [31:0] tmp_2_fu_1386_p33;
wire   [31:0] tmp_3_fu_1457_p33;
wire   [31:0] tmp_4_fu_1528_p33;
wire   [31:0] tmp_5_fu_1599_p33;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire   [5:0] tmp_2_fu_1386_p1;
wire   [5:0] tmp_2_fu_1386_p3;
wire   [5:0] tmp_2_fu_1386_p5;
wire   [5:0] tmp_2_fu_1386_p7;
wire   [5:0] tmp_2_fu_1386_p9;
wire   [5:0] tmp_2_fu_1386_p11;
wire   [5:0] tmp_2_fu_1386_p13;
wire   [5:0] tmp_2_fu_1386_p15;
wire  signed [5:0] tmp_2_fu_1386_p17;
wire  signed [5:0] tmp_2_fu_1386_p19;
wire  signed [5:0] tmp_2_fu_1386_p21;
wire  signed [5:0] tmp_2_fu_1386_p23;
wire  signed [5:0] tmp_2_fu_1386_p25;
wire  signed [5:0] tmp_2_fu_1386_p27;
wire  signed [5:0] tmp_2_fu_1386_p29;
wire  signed [5:0] tmp_2_fu_1386_p31;
wire   [5:0] tmp_3_fu_1457_p1;
wire   [5:0] tmp_3_fu_1457_p3;
wire   [5:0] tmp_3_fu_1457_p5;
wire   [5:0] tmp_3_fu_1457_p7;
wire   [5:0] tmp_3_fu_1457_p9;
wire   [5:0] tmp_3_fu_1457_p11;
wire   [5:0] tmp_3_fu_1457_p13;
wire   [5:0] tmp_3_fu_1457_p15;
wire  signed [5:0] tmp_3_fu_1457_p17;
wire  signed [5:0] tmp_3_fu_1457_p19;
wire  signed [5:0] tmp_3_fu_1457_p21;
wire  signed [5:0] tmp_3_fu_1457_p23;
wire  signed [5:0] tmp_3_fu_1457_p25;
wire  signed [5:0] tmp_3_fu_1457_p27;
wire  signed [5:0] tmp_3_fu_1457_p29;
wire  signed [5:0] tmp_3_fu_1457_p31;
wire   [5:0] tmp_4_fu_1528_p1;
wire   [5:0] tmp_4_fu_1528_p3;
wire   [5:0] tmp_4_fu_1528_p5;
wire   [5:0] tmp_4_fu_1528_p7;
wire   [5:0] tmp_4_fu_1528_p9;
wire   [5:0] tmp_4_fu_1528_p11;
wire   [5:0] tmp_4_fu_1528_p13;
wire   [5:0] tmp_4_fu_1528_p15;
wire  signed [5:0] tmp_4_fu_1528_p17;
wire  signed [5:0] tmp_4_fu_1528_p19;
wire  signed [5:0] tmp_4_fu_1528_p21;
wire  signed [5:0] tmp_4_fu_1528_p23;
wire  signed [5:0] tmp_4_fu_1528_p25;
wire  signed [5:0] tmp_4_fu_1528_p27;
wire  signed [5:0] tmp_4_fu_1528_p29;
wire  signed [5:0] tmp_4_fu_1528_p31;
wire   [5:0] tmp_5_fu_1599_p1;
wire   [5:0] tmp_5_fu_1599_p3;
wire   [5:0] tmp_5_fu_1599_p5;
wire   [5:0] tmp_5_fu_1599_p7;
wire   [5:0] tmp_5_fu_1599_p9;
wire   [5:0] tmp_5_fu_1599_p11;
wire   [5:0] tmp_5_fu_1599_p13;
wire   [5:0] tmp_5_fu_1599_p15;
wire  signed [5:0] tmp_5_fu_1599_p17;
wire  signed [5:0] tmp_5_fu_1599_p19;
wire  signed [5:0] tmp_5_fu_1599_p21;
wire  signed [5:0] tmp_5_fu_1599_p23;
wire  signed [5:0] tmp_5_fu_1599_p25;
wire  signed [5:0] tmp_5_fu_1599_p27;
wire  signed [5:0] tmp_5_fu_1599_p29;
wire  signed [5:0] tmp_5_fu_1599_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 j_fu_220 = 7'd0;
#0 i_fu_224 = 7'd0;
#0 indvar_flatten6_fu_228 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_33_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h4 ),.din1_WIDTH( 32 ),.CASE2( 6'h8 ),.din2_WIDTH( 32 ),.CASE3( 6'hC ),.din3_WIDTH( 32 ),.CASE4( 6'h10 ),.din4_WIDTH( 32 ),.CASE5( 6'h14 ),.din5_WIDTH( 32 ),.CASE6( 6'h18 ),.din6_WIDTH( 32 ),.CASE7( 6'h1C ),.din7_WIDTH( 32 ),.CASE8( 6'h20 ),.din8_WIDTH( 32 ),.CASE9( 6'h24 ),.din9_WIDTH( 32 ),.CASE10( 6'h28 ),.din10_WIDTH( 32 ),.CASE11( 6'h2C ),.din11_WIDTH( 32 ),.CASE12( 6'h30 ),.din12_WIDTH( 32 ),.CASE13( 6'h34 ),.din13_WIDTH( 32 ),.CASE14( 6'h38 ),.din14_WIDTH( 32 ),.CASE15( 6'h3C ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_33_6_32_1_1_U470(.din0(buff_A_q0),.din1(buff_A_4_q0),.din2(buff_A_8_q0),.din3(buff_A_12_q0),.din4(buff_A_16_q0),.din5(buff_A_20_q0),.din6(buff_A_24_q0),.din7(buff_A_28_q0),.din8(buff_A_32_q0),.din9(buff_A_36_q0),.din10(buff_A_40_q0),.din11(buff_A_44_q0),.din12(buff_A_48_q0),.din13(buff_A_52_q0),.din14(buff_A_56_q0),.din15(buff_A_60_q0),.def(tmp_2_fu_1386_p33),.sel(trunc_ln27_reg_2037),.dout(tmp_2_fu_1386_p35));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_33_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h4 ),.din1_WIDTH( 32 ),.CASE2( 6'h8 ),.din2_WIDTH( 32 ),.CASE3( 6'hC ),.din3_WIDTH( 32 ),.CASE4( 6'h10 ),.din4_WIDTH( 32 ),.CASE5( 6'h14 ),.din5_WIDTH( 32 ),.CASE6( 6'h18 ),.din6_WIDTH( 32 ),.CASE7( 6'h1C ),.din7_WIDTH( 32 ),.CASE8( 6'h20 ),.din8_WIDTH( 32 ),.CASE9( 6'h24 ),.din9_WIDTH( 32 ),.CASE10( 6'h28 ),.din10_WIDTH( 32 ),.CASE11( 6'h2C ),.din11_WIDTH( 32 ),.CASE12( 6'h30 ),.din12_WIDTH( 32 ),.CASE13( 6'h34 ),.din13_WIDTH( 32 ),.CASE14( 6'h38 ),.din14_WIDTH( 32 ),.CASE15( 6'h3C ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_33_6_32_1_1_U471(.din0(buff_A_1_q0),.din1(buff_A_5_q0),.din2(buff_A_9_q0),.din3(buff_A_13_q0),.din4(buff_A_17_q0),.din5(buff_A_21_q0),.din6(buff_A_25_q0),.din7(buff_A_29_q0),.din8(buff_A_33_q0),.din9(buff_A_37_q0),.din10(buff_A_41_q0),.din11(buff_A_45_q0),.din12(buff_A_49_q0),.din13(buff_A_53_q0),.din14(buff_A_57_q0),.din15(buff_A_61_q0),.def(tmp_3_fu_1457_p33),.sel(trunc_ln27_reg_2037),.dout(tmp_3_fu_1457_p35));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_33_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h4 ),.din1_WIDTH( 32 ),.CASE2( 6'h8 ),.din2_WIDTH( 32 ),.CASE3( 6'hC ),.din3_WIDTH( 32 ),.CASE4( 6'h10 ),.din4_WIDTH( 32 ),.CASE5( 6'h14 ),.din5_WIDTH( 32 ),.CASE6( 6'h18 ),.din6_WIDTH( 32 ),.CASE7( 6'h1C ),.din7_WIDTH( 32 ),.CASE8( 6'h20 ),.din8_WIDTH( 32 ),.CASE9( 6'h24 ),.din9_WIDTH( 32 ),.CASE10( 6'h28 ),.din10_WIDTH( 32 ),.CASE11( 6'h2C ),.din11_WIDTH( 32 ),.CASE12( 6'h30 ),.din12_WIDTH( 32 ),.CASE13( 6'h34 ),.din13_WIDTH( 32 ),.CASE14( 6'h38 ),.din14_WIDTH( 32 ),.CASE15( 6'h3C ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_33_6_32_1_1_U472(.din0(buff_A_2_q0),.din1(buff_A_6_q0),.din2(buff_A_10_q0),.din3(buff_A_14_q0),.din4(buff_A_18_q0),.din5(buff_A_22_q0),.din6(buff_A_26_q0),.din7(buff_A_30_q0),.din8(buff_A_34_q0),.din9(buff_A_38_q0),.din10(buff_A_42_q0),.din11(buff_A_46_q0),.din12(buff_A_50_q0),.din13(buff_A_54_q0),.din14(buff_A_58_q0),.din15(buff_A_62_q0),.def(tmp_4_fu_1528_p33),.sel(trunc_ln27_reg_2037),.dout(tmp_4_fu_1528_p35));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_33_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h4 ),.din1_WIDTH( 32 ),.CASE2( 6'h8 ),.din2_WIDTH( 32 ),.CASE3( 6'hC ),.din3_WIDTH( 32 ),.CASE4( 6'h10 ),.din4_WIDTH( 32 ),.CASE5( 6'h14 ),.din5_WIDTH( 32 ),.CASE6( 6'h18 ),.din6_WIDTH( 32 ),.CASE7( 6'h1C ),.din7_WIDTH( 32 ),.CASE8( 6'h20 ),.din8_WIDTH( 32 ),.CASE9( 6'h24 ),.din9_WIDTH( 32 ),.CASE10( 6'h28 ),.din10_WIDTH( 32 ),.CASE11( 6'h2C ),.din11_WIDTH( 32 ),.CASE12( 6'h30 ),.din12_WIDTH( 32 ),.CASE13( 6'h34 ),.din13_WIDTH( 32 ),.CASE14( 6'h38 ),.din14_WIDTH( 32 ),.CASE15( 6'h3C ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_33_6_32_1_1_U473(.din0(buff_A_3_q0),.din1(buff_A_7_q0),.din2(buff_A_11_q0),.din3(buff_A_15_q0),.din4(buff_A_19_q0),.din5(buff_A_23_q0),.din6(buff_A_27_q0),.din7(buff_A_31_q0),.din8(buff_A_35_q0),.din9(buff_A_39_q0),.din10(buff_A_43_q0),.din11(buff_A_47_q0),.din12(buff_A_51_q0),.din13(buff_A_55_q0),.din14(buff_A_59_q0),.din15(buff_A_63_q0),.def(tmp_5_fu_1599_p33),.sel(trunc_ln27_reg_2037),.dout(tmp_5_fu_1599_p35));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_224 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_224 <= select_ln26_fu_1253_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_1208_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten6_fu_228 <= add_ln26_1_fu_1214_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_228 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_220 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_220 <= add_ln27_fu_1363_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add1_reg_2142 <= grp_fu_1977_p_dout0;
        add58_1_reg_2147 <= grp_fu_1981_p_dout0;
        add58_2_reg_2152 <= grp_fu_1985_p_dout0;
        add58_3_reg_2157 <= grp_fu_1989_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        buff_y_out_1_addr_reg_2084 <= zext_ln5_2_fu_1670_p1;
        buff_y_out_1_addr_reg_2084_pp0_iter10_reg <= buff_y_out_1_addr_reg_2084_pp0_iter9_reg;
        buff_y_out_1_addr_reg_2084_pp0_iter11_reg <= buff_y_out_1_addr_reg_2084_pp0_iter10_reg;
        buff_y_out_1_addr_reg_2084_pp0_iter12_reg <= buff_y_out_1_addr_reg_2084_pp0_iter11_reg;
        buff_y_out_1_addr_reg_2084_pp0_iter13_reg <= buff_y_out_1_addr_reg_2084_pp0_iter12_reg;
        buff_y_out_1_addr_reg_2084_pp0_iter6_reg <= buff_y_out_1_addr_reg_2084;
        buff_y_out_1_addr_reg_2084_pp0_iter7_reg <= buff_y_out_1_addr_reg_2084_pp0_iter6_reg;
        buff_y_out_1_addr_reg_2084_pp0_iter8_reg <= buff_y_out_1_addr_reg_2084_pp0_iter7_reg;
        buff_y_out_1_addr_reg_2084_pp0_iter9_reg <= buff_y_out_1_addr_reg_2084_pp0_iter8_reg;
        buff_y_out_2_addr_reg_2090 <= zext_ln5_2_fu_1670_p1;
        buff_y_out_2_addr_reg_2090_pp0_iter10_reg <= buff_y_out_2_addr_reg_2090_pp0_iter9_reg;
        buff_y_out_2_addr_reg_2090_pp0_iter11_reg <= buff_y_out_2_addr_reg_2090_pp0_iter10_reg;
        buff_y_out_2_addr_reg_2090_pp0_iter12_reg <= buff_y_out_2_addr_reg_2090_pp0_iter11_reg;
        buff_y_out_2_addr_reg_2090_pp0_iter13_reg <= buff_y_out_2_addr_reg_2090_pp0_iter12_reg;
        buff_y_out_2_addr_reg_2090_pp0_iter6_reg <= buff_y_out_2_addr_reg_2090;
        buff_y_out_2_addr_reg_2090_pp0_iter7_reg <= buff_y_out_2_addr_reg_2090_pp0_iter6_reg;
        buff_y_out_2_addr_reg_2090_pp0_iter8_reg <= buff_y_out_2_addr_reg_2090_pp0_iter7_reg;
        buff_y_out_2_addr_reg_2090_pp0_iter9_reg <= buff_y_out_2_addr_reg_2090_pp0_iter8_reg;
        buff_y_out_3_addr_reg_2096 <= zext_ln5_2_fu_1670_p1;
        buff_y_out_3_addr_reg_2096_pp0_iter10_reg <= buff_y_out_3_addr_reg_2096_pp0_iter9_reg;
        buff_y_out_3_addr_reg_2096_pp0_iter11_reg <= buff_y_out_3_addr_reg_2096_pp0_iter10_reg;
        buff_y_out_3_addr_reg_2096_pp0_iter12_reg <= buff_y_out_3_addr_reg_2096_pp0_iter11_reg;
        buff_y_out_3_addr_reg_2096_pp0_iter13_reg <= buff_y_out_3_addr_reg_2096_pp0_iter12_reg;
        buff_y_out_3_addr_reg_2096_pp0_iter6_reg <= buff_y_out_3_addr_reg_2096;
        buff_y_out_3_addr_reg_2096_pp0_iter7_reg <= buff_y_out_3_addr_reg_2096_pp0_iter6_reg;
        buff_y_out_3_addr_reg_2096_pp0_iter8_reg <= buff_y_out_3_addr_reg_2096_pp0_iter7_reg;
        buff_y_out_3_addr_reg_2096_pp0_iter9_reg <= buff_y_out_3_addr_reg_2096_pp0_iter8_reg;
        buff_y_out_addr_reg_2078 <= zext_ln5_2_fu_1670_p1;
        buff_y_out_addr_reg_2078_pp0_iter10_reg <= buff_y_out_addr_reg_2078_pp0_iter9_reg;
        buff_y_out_addr_reg_2078_pp0_iter11_reg <= buff_y_out_addr_reg_2078_pp0_iter10_reg;
        buff_y_out_addr_reg_2078_pp0_iter12_reg <= buff_y_out_addr_reg_2078_pp0_iter11_reg;
        buff_y_out_addr_reg_2078_pp0_iter13_reg <= buff_y_out_addr_reg_2078_pp0_iter12_reg;
        buff_y_out_addr_reg_2078_pp0_iter6_reg <= buff_y_out_addr_reg_2078;
        buff_y_out_addr_reg_2078_pp0_iter7_reg <= buff_y_out_addr_reg_2078_pp0_iter6_reg;
        buff_y_out_addr_reg_2078_pp0_iter8_reg <= buff_y_out_addr_reg_2078_pp0_iter7_reg;
        buff_y_out_addr_reg_2078_pp0_iter9_reg <= buff_y_out_addr_reg_2078_pp0_iter8_reg;
        lshr_ln5_5_reg_2045_pp0_iter2_reg <= lshr_ln5_5_reg_2045;
        lshr_ln5_5_reg_2045_pp0_iter3_reg <= lshr_ln5_5_reg_2045_pp0_iter2_reg;
        lshr_ln5_5_reg_2045_pp0_iter4_reg <= lshr_ln5_5_reg_2045_pp0_iter3_reg;
        mul1_reg_2107 <= grp_fu_1993_p_dout0;
        mul57_1_reg_2112 <= grp_fu_1997_p_dout0;
        mul57_2_reg_2117 <= grp_fu_2001_p_dout0;
        mul57_3_reg_2122 <= grp_fu_2005_p_dout0;
        tmp_2_reg_2058 <= tmp_2_fu_1386_p35;
        tmp_3_reg_2063 <= tmp_3_fu_1457_p35;
        tmp_4_reg_2068 <= tmp_4_fu_1528_p35;
        tmp_5_reg_2073 <= tmp_5_fu_1599_p35;
        tmp_reg_2050 <= tmp_fu_1379_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln5_5_reg_2045 <= {{select_ln5_fu_1245_p3[5:2]}};
        trunc_ln26_reg_1702 <= trunc_ln26_fu_1329_p1;
        trunc_ln27_reg_2037 <= trunc_ln27_fu_1349_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        buff_y_out_1_load_reg_2127 <= buff_y_out_1_q1;
        buff_y_out_2_load_reg_2132 <= buff_y_out_2_q1;
        buff_y_out_3_load_reg_2137 <= buff_y_out_3_q1;
        buff_y_out_load_reg_2102 <= buff_y_out_q1;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_1208_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten6_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_228;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_10_ce0_local = 1'b1;
    end else begin
        buff_A_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_11_ce0_local = 1'b1;
    end else begin
        buff_A_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_12_ce0_local = 1'b1;
    end else begin
        buff_A_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_13_ce0_local = 1'b1;
    end else begin
        buff_A_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_14_ce0_local = 1'b1;
    end else begin
        buff_A_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_15_ce0_local = 1'b1;
    end else begin
        buff_A_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_16_ce0_local = 1'b1;
    end else begin
        buff_A_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_17_ce0_local = 1'b1;
    end else begin
        buff_A_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_18_ce0_local = 1'b1;
    end else begin
        buff_A_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_19_ce0_local = 1'b1;
    end else begin
        buff_A_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_20_ce0_local = 1'b1;
    end else begin
        buff_A_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_21_ce0_local = 1'b1;
    end else begin
        buff_A_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_22_ce0_local = 1'b1;
    end else begin
        buff_A_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_23_ce0_local = 1'b1;
    end else begin
        buff_A_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_24_ce0_local = 1'b1;
    end else begin
        buff_A_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_25_ce0_local = 1'b1;
    end else begin
        buff_A_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_26_ce0_local = 1'b1;
    end else begin
        buff_A_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_27_ce0_local = 1'b1;
    end else begin
        buff_A_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_28_ce0_local = 1'b1;
    end else begin
        buff_A_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_29_ce0_local = 1'b1;
    end else begin
        buff_A_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_30_ce0_local = 1'b1;
    end else begin
        buff_A_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_31_ce0_local = 1'b1;
    end else begin
        buff_A_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_32_ce0_local = 1'b1;
    end else begin
        buff_A_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_33_ce0_local = 1'b1;
    end else begin
        buff_A_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_34_ce0_local = 1'b1;
    end else begin
        buff_A_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_35_ce0_local = 1'b1;
    end else begin
        buff_A_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_36_ce0_local = 1'b1;
    end else begin
        buff_A_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_37_ce0_local = 1'b1;
    end else begin
        buff_A_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_38_ce0_local = 1'b1;
    end else begin
        buff_A_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_39_ce0_local = 1'b1;
    end else begin
        buff_A_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_40_ce0_local = 1'b1;
    end else begin
        buff_A_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_41_ce0_local = 1'b1;
    end else begin
        buff_A_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_42_ce0_local = 1'b1;
    end else begin
        buff_A_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_43_ce0_local = 1'b1;
    end else begin
        buff_A_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_44_ce0_local = 1'b1;
    end else begin
        buff_A_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_45_ce0_local = 1'b1;
    end else begin
        buff_A_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_46_ce0_local = 1'b1;
    end else begin
        buff_A_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_47_ce0_local = 1'b1;
    end else begin
        buff_A_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_48_ce0_local = 1'b1;
    end else begin
        buff_A_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_49_ce0_local = 1'b1;
    end else begin
        buff_A_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_50_ce0_local = 1'b1;
    end else begin
        buff_A_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_51_ce0_local = 1'b1;
    end else begin
        buff_A_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_52_ce0_local = 1'b1;
    end else begin
        buff_A_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_53_ce0_local = 1'b1;
    end else begin
        buff_A_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_54_ce0_local = 1'b1;
    end else begin
        buff_A_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_55_ce0_local = 1'b1;
    end else begin
        buff_A_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_56_ce0_local = 1'b1;
    end else begin
        buff_A_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_57_ce0_local = 1'b1;
    end else begin
        buff_A_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_58_ce0_local = 1'b1;
    end else begin
        buff_A_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_59_ce0_local = 1'b1;
    end else begin
        buff_A_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_60_ce0_local = 1'b1;
    end else begin
        buff_A_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_61_ce0_local = 1'b1;
    end else begin
        buff_A_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_62_ce0_local = 1'b1;
    end else begin
        buff_A_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_63_ce0_local = 1'b1;
    end else begin
        buff_A_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_8_ce0_local = 1'b1;
    end else begin
        buff_A_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_9_ce0_local = 1'b1;
    end else begin
        buff_A_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
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
assign add_ln26_1_fu_1214_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 11'd1);
assign add_ln26_fu_1231_p2 = (i_fu_224 + 7'd1);
assign add_ln27_fu_1363_p2 = (select_ln5_fu_1245_p3 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buff_A_10_address0 = zext_ln26_fu_1261_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_11_address0 = zext_ln26_fu_1261_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_12_address0 = zext_ln26_fu_1261_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_13_address0 = zext_ln26_fu_1261_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_14_address0 = zext_ln26_fu_1261_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_15_address0 = zext_ln26_fu_1261_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_16_address0 = zext_ln26_fu_1261_p1;
assign buff_A_16_ce0 = buff_A_16_ce0_local;
assign buff_A_17_address0 = zext_ln26_fu_1261_p1;
assign buff_A_17_ce0 = buff_A_17_ce0_local;
assign buff_A_18_address0 = zext_ln26_fu_1261_p1;
assign buff_A_18_ce0 = buff_A_18_ce0_local;
assign buff_A_19_address0 = zext_ln26_fu_1261_p1;
assign buff_A_19_ce0 = buff_A_19_ce0_local;
assign buff_A_1_address0 = zext_ln26_fu_1261_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_20_address0 = zext_ln26_fu_1261_p1;
assign buff_A_20_ce0 = buff_A_20_ce0_local;
assign buff_A_21_address0 = zext_ln26_fu_1261_p1;
assign buff_A_21_ce0 = buff_A_21_ce0_local;
assign buff_A_22_address0 = zext_ln26_fu_1261_p1;
assign buff_A_22_ce0 = buff_A_22_ce0_local;
assign buff_A_23_address0 = zext_ln26_fu_1261_p1;
assign buff_A_23_ce0 = buff_A_23_ce0_local;
assign buff_A_24_address0 = zext_ln26_fu_1261_p1;
assign buff_A_24_ce0 = buff_A_24_ce0_local;
assign buff_A_25_address0 = zext_ln26_fu_1261_p1;
assign buff_A_25_ce0 = buff_A_25_ce0_local;
assign buff_A_26_address0 = zext_ln26_fu_1261_p1;
assign buff_A_26_ce0 = buff_A_26_ce0_local;
assign buff_A_27_address0 = zext_ln26_fu_1261_p1;
assign buff_A_27_ce0 = buff_A_27_ce0_local;
assign buff_A_28_address0 = zext_ln26_fu_1261_p1;
assign buff_A_28_ce0 = buff_A_28_ce0_local;
assign buff_A_29_address0 = zext_ln26_fu_1261_p1;
assign buff_A_29_ce0 = buff_A_29_ce0_local;
assign buff_A_2_address0 = zext_ln26_fu_1261_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_30_address0 = zext_ln26_fu_1261_p1;
assign buff_A_30_ce0 = buff_A_30_ce0_local;
assign buff_A_31_address0 = zext_ln26_fu_1261_p1;
assign buff_A_31_ce0 = buff_A_31_ce0_local;
assign buff_A_32_address0 = zext_ln26_fu_1261_p1;
assign buff_A_32_ce0 = buff_A_32_ce0_local;
assign buff_A_33_address0 = zext_ln26_fu_1261_p1;
assign buff_A_33_ce0 = buff_A_33_ce0_local;
assign buff_A_34_address0 = zext_ln26_fu_1261_p1;
assign buff_A_34_ce0 = buff_A_34_ce0_local;
assign buff_A_35_address0 = zext_ln26_fu_1261_p1;
assign buff_A_35_ce0 = buff_A_35_ce0_local;
assign buff_A_36_address0 = zext_ln26_fu_1261_p1;
assign buff_A_36_ce0 = buff_A_36_ce0_local;
assign buff_A_37_address0 = zext_ln26_fu_1261_p1;
assign buff_A_37_ce0 = buff_A_37_ce0_local;
assign buff_A_38_address0 = zext_ln26_fu_1261_p1;
assign buff_A_38_ce0 = buff_A_38_ce0_local;
assign buff_A_39_address0 = zext_ln26_fu_1261_p1;
assign buff_A_39_ce0 = buff_A_39_ce0_local;
assign buff_A_3_address0 = zext_ln26_fu_1261_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_40_address0 = zext_ln26_fu_1261_p1;
assign buff_A_40_ce0 = buff_A_40_ce0_local;
assign buff_A_41_address0 = zext_ln26_fu_1261_p1;
assign buff_A_41_ce0 = buff_A_41_ce0_local;
assign buff_A_42_address0 = zext_ln26_fu_1261_p1;
assign buff_A_42_ce0 = buff_A_42_ce0_local;
assign buff_A_43_address0 = zext_ln26_fu_1261_p1;
assign buff_A_43_ce0 = buff_A_43_ce0_local;
assign buff_A_44_address0 = zext_ln26_fu_1261_p1;
assign buff_A_44_ce0 = buff_A_44_ce0_local;
assign buff_A_45_address0 = zext_ln26_fu_1261_p1;
assign buff_A_45_ce0 = buff_A_45_ce0_local;
assign buff_A_46_address0 = zext_ln26_fu_1261_p1;
assign buff_A_46_ce0 = buff_A_46_ce0_local;
assign buff_A_47_address0 = zext_ln26_fu_1261_p1;
assign buff_A_47_ce0 = buff_A_47_ce0_local;
assign buff_A_48_address0 = zext_ln26_fu_1261_p1;
assign buff_A_48_ce0 = buff_A_48_ce0_local;
assign buff_A_49_address0 = zext_ln26_fu_1261_p1;
assign buff_A_49_ce0 = buff_A_49_ce0_local;
assign buff_A_4_address0 = zext_ln26_fu_1261_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_50_address0 = zext_ln26_fu_1261_p1;
assign buff_A_50_ce0 = buff_A_50_ce0_local;
assign buff_A_51_address0 = zext_ln26_fu_1261_p1;
assign buff_A_51_ce0 = buff_A_51_ce0_local;
assign buff_A_52_address0 = zext_ln26_fu_1261_p1;
assign buff_A_52_ce0 = buff_A_52_ce0_local;
assign buff_A_53_address0 = zext_ln26_fu_1261_p1;
assign buff_A_53_ce0 = buff_A_53_ce0_local;
assign buff_A_54_address0 = zext_ln26_fu_1261_p1;
assign buff_A_54_ce0 = buff_A_54_ce0_local;
assign buff_A_55_address0 = zext_ln26_fu_1261_p1;
assign buff_A_55_ce0 = buff_A_55_ce0_local;
assign buff_A_56_address0 = zext_ln26_fu_1261_p1;
assign buff_A_56_ce0 = buff_A_56_ce0_local;
assign buff_A_57_address0 = zext_ln26_fu_1261_p1;
assign buff_A_57_ce0 = buff_A_57_ce0_local;
assign buff_A_58_address0 = zext_ln26_fu_1261_p1;
assign buff_A_58_ce0 = buff_A_58_ce0_local;
assign buff_A_59_address0 = zext_ln26_fu_1261_p1;
assign buff_A_59_ce0 = buff_A_59_ce0_local;
assign buff_A_5_address0 = zext_ln26_fu_1261_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_60_address0 = zext_ln26_fu_1261_p1;
assign buff_A_60_ce0 = buff_A_60_ce0_local;
assign buff_A_61_address0 = zext_ln26_fu_1261_p1;
assign buff_A_61_ce0 = buff_A_61_ce0_local;
assign buff_A_62_address0 = zext_ln26_fu_1261_p1;
assign buff_A_62_ce0 = buff_A_62_ce0_local;
assign buff_A_63_address0 = zext_ln26_fu_1261_p1;
assign buff_A_63_ce0 = buff_A_63_ce0_local;
assign buff_A_6_address0 = zext_ln26_fu_1261_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln26_fu_1261_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_8_address0 = zext_ln26_fu_1261_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_9_address0 = zext_ln26_fu_1261_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_address0 = zext_ln26_fu_1261_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_y_out_1_address0 = buff_y_out_1_addr_reg_2084_pp0_iter13_reg;
assign buff_y_out_1_address1 = zext_ln5_2_fu_1670_p1;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_ce1 = buff_y_out_1_ce1_local;
assign buff_y_out_1_d0 = add58_1_reg_2147;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_2_address0 = buff_y_out_2_addr_reg_2090_pp0_iter13_reg;
assign buff_y_out_2_address1 = zext_ln5_2_fu_1670_p1;
assign buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
assign buff_y_out_2_ce1 = buff_y_out_2_ce1_local;
assign buff_y_out_2_d0 = add58_2_reg_2152;
assign buff_y_out_2_we0 = buff_y_out_2_we0_local;
assign buff_y_out_3_address0 = buff_y_out_3_addr_reg_2096_pp0_iter13_reg;
assign buff_y_out_3_address1 = zext_ln5_2_fu_1670_p1;
assign buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
assign buff_y_out_3_ce1 = buff_y_out_3_ce1_local;
assign buff_y_out_3_d0 = add58_3_reg_2157;
assign buff_y_out_3_we0 = buff_y_out_3_we0_local;
assign buff_y_out_address0 = buff_y_out_addr_reg_2078_pp0_iter13_reg;
assign buff_y_out_address1 = zext_ln5_2_fu_1670_p1;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_ce1 = buff_y_out_ce1_local;
assign buff_y_out_d0 = add1_reg_2142;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign grp_fu_1977_p_ce = 1'b1;
assign grp_fu_1977_p_din0 = buff_y_out_load_reg_2102;
assign grp_fu_1977_p_din1 = mul1_reg_2107;
assign grp_fu_1977_p_opcode = 2'd0;
assign grp_fu_1981_p_ce = 1'b1;
assign grp_fu_1981_p_din0 = buff_y_out_1_load_reg_2127;
assign grp_fu_1981_p_din1 = mul57_1_reg_2112;
assign grp_fu_1981_p_opcode = 2'd0;
assign grp_fu_1985_p_ce = 1'b1;
assign grp_fu_1985_p_din0 = buff_y_out_2_load_reg_2132;
assign grp_fu_1985_p_din1 = mul57_2_reg_2117;
assign grp_fu_1985_p_opcode = 2'd0;
assign grp_fu_1989_p_ce = 1'b1;
assign grp_fu_1989_p_din0 = buff_y_out_3_load_reg_2137;
assign grp_fu_1989_p_din1 = mul57_3_reg_2122;
assign grp_fu_1989_p_opcode = 2'd0;
assign grp_fu_1993_p_ce = 1'b1;
assign grp_fu_1993_p_din0 = tmp_2_reg_2058;
assign grp_fu_1993_p_din1 = tmp_reg_2050;
assign grp_fu_1997_p_ce = 1'b1;
assign grp_fu_1997_p_din0 = tmp_3_reg_2063;
assign grp_fu_1997_p_din1 = tmp_reg_2050;
assign grp_fu_2001_p_ce = 1'b1;
assign grp_fu_2001_p_din0 = tmp_4_reg_2068;
assign grp_fu_2001_p_din1 = tmp_reg_2050;
assign grp_fu_2005_p_ce = 1'b1;
assign grp_fu_2005_p_din0 = tmp_5_reg_2073;
assign grp_fu_2005_p_din1 = tmp_reg_2050;
assign icmp_ln26_fu_1208_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln5_3_fu_1333_p4 = {{select_ln26_fu_1253_p3[5:1]}};
assign select_ln26_fu_1253_p3 = ((tmp_1_fu_1237_p3[0:0] == 1'b1) ? add_ln26_fu_1231_p2 : i_fu_224);
assign select_ln5_fu_1245_p3 = ((tmp_1_fu_1237_p3[0:0] == 1'b1) ? 7'd0 : j_fu_220);
assign tmp1_1_address0 = zext_ln5_fu_1343_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_address0 = zext_ln5_fu_1343_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp_1_fu_1237_p3 = j_fu_220[32'd6];
assign tmp_2_fu_1386_p33 = 'bx;
assign tmp_3_fu_1457_p33 = 'bx;
assign tmp_4_fu_1528_p33 = 'bx;
assign tmp_5_fu_1599_p33 = 'bx;
assign tmp_fu_1379_p3 = ((trunc_ln26_reg_1702[0:0] == 1'b1) ? tmp1_1_q0 : tmp1_q0);
assign trunc_ln26_fu_1329_p1 = select_ln26_fu_1253_p3[0:0];
assign trunc_ln27_fu_1349_p1 = select_ln5_fu_1245_p3[5:0];
assign zext_ln26_fu_1261_p1 = select_ln26_fu_1253_p3;
assign zext_ln5_2_fu_1670_p1 = lshr_ln5_5_reg_2045_pp0_iter4_reg;
assign zext_ln5_fu_1343_p1 = lshr_ln5_3_fu_1333_p4;
endmodule 