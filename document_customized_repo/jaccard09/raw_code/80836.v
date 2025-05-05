module backprop_backprop_Pipeline_VITIS_LOOP_66_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,output_difference_2_promoted,output_difference_0_promoted,output_difference_1_promoted,output_difference_idx5661_val5722,output_difference_idx5660_val5719,output_difference_idx_val5716,mux_case_056815690_reload,mux_case_156825694_reload,mux_case_256835698_reload,mul_ln66,training_targets_0_address0,training_targets_0_ce0,training_targets_0_q0,training_targets_1_address0,training_targets_1_ce0,training_targets_1_q0,training_targets_2_address0,training_targets_2_ce0,training_targets_2_q0,training_targets_3_address0,training_targets_3_ce0,training_targets_3_q0,training_targets_4_address0,training_targets_4_ce0,training_targets_4_q0,training_targets_5_address0,training_targets_5_ce0,training_targets_5_q0,training_targets_6_address0,training_targets_6_ce0,training_targets_6_q0,training_targets_7_address0,training_targets_7_ce0,training_targets_7_q0,training_targets_8_address0,training_targets_8_ce0,training_targets_8_q0,training_targets_9_address0,training_targets_9_ce0,training_targets_9_q0,training_targets_10_address0,training_targets_10_ce0,training_targets_10_q0,training_targets_11_address0,training_targets_11_ce0,training_targets_11_q0,training_targets_12_address0,training_targets_12_ce0,training_targets_12_q0,training_targets_13_address0,training_targets_13_ce0,training_targets_13_q0,training_targets_14_address0,training_targets_14_ce0,training_targets_14_q0,training_targets_15_address0,training_targets_15_ce0,training_targets_15_q0,training_targets_16_address0,training_targets_16_ce0,training_targets_16_q0,training_targets_17_address0,training_targets_17_ce0,training_targets_17_q0,training_targets_18_address0,training_targets_18_ce0,training_targets_18_q0,training_targets_19_address0,training_targets_19_ce0,training_targets_19_q0,training_targets_20_address0,training_targets_20_ce0,training_targets_20_q0,training_targets_21_address0,training_targets_21_ce0,training_targets_21_q0,training_targets_22_address0,training_targets_22_ce0,training_targets_22_q0,training_targets_23_address0,training_targets_23_ce0,training_targets_23_q0,training_targets_24_address0,training_targets_24_ce0,training_targets_24_q0,training_targets_25_address0,training_targets_25_ce0,training_targets_25_q0,training_targets_26_address0,training_targets_26_ce0,training_targets_26_q0,training_targets_27_address0,training_targets_27_ce0,training_targets_27_q0,training_targets_28_address0,training_targets_28_ce0,training_targets_28_q0,training_targets_29_address0,training_targets_29_ce0,training_targets_29_q0,training_targets_30_address0,training_targets_30_ce0,training_targets_30_q0,training_targets_31_address0,training_targets_31_ce0,training_targets_31_q0,training_targets_32_address0,training_targets_32_ce0,training_targets_32_q0,training_targets_33_address0,training_targets_33_ce0,training_targets_33_q0,training_targets_34_address0,training_targets_34_ce0,training_targets_34_q0,training_targets_35_address0,training_targets_35_ce0,training_targets_35_q0,training_targets_36_address0,training_targets_36_ce0,training_targets_36_q0,training_targets_37_address0,training_targets_37_ce0,training_targets_37_q0,training_targets_38_address0,training_targets_38_ce0,training_targets_38_q0,training_targets_39_address0,training_targets_39_ce0,training_targets_39_q0,training_targets_40_address0,training_targets_40_ce0,training_targets_40_q0,training_targets_41_address0,training_targets_41_ce0,training_targets_41_q0,training_targets_42_address0,training_targets_42_ce0,training_targets_42_q0,training_targets_43_address0,training_targets_43_ce0,training_targets_43_q0,training_targets_44_address0,training_targets_44_ce0,training_targets_44_q0,training_targets_45_address0,training_targets_45_ce0,training_targets_45_q0,training_targets_46_address0,training_targets_46_ce0,training_targets_46_q0,training_targets_47_address0,training_targets_47_ce0,training_targets_47_q0,training_targets_48_address0,training_targets_48_ce0,training_targets_48_q0,training_targets_49_address0,training_targets_49_ce0,training_targets_49_q0,training_targets_50_address0,training_targets_50_ce0,training_targets_50_q0,training_targets_51_address0,training_targets_51_ce0,training_targets_51_q0,training_targets_52_address0,training_targets_52_ce0,training_targets_52_q0,training_targets_53_address0,training_targets_53_ce0,training_targets_53_q0,training_targets_54_address0,training_targets_54_ce0,training_targets_54_q0,training_targets_55_address0,training_targets_55_ce0,training_targets_55_q0,training_targets_56_address0,training_targets_56_ce0,training_targets_56_q0,training_targets_57_address0,training_targets_57_ce0,training_targets_57_q0,training_targets_58_address0,training_targets_58_ce0,training_targets_58_q0,training_targets_59_address0,training_targets_59_ce0,training_targets_59_q0,training_targets_60_address0,training_targets_60_ce0,training_targets_60_q0,training_targets_61_address0,training_targets_61_ce0,training_targets_61_q0,training_targets_62_address0,training_targets_62_ce0,training_targets_62_q0,training_targets_63_address0,training_targets_63_ce0,training_targets_63_q0,mux_case_056845702_reload,mux_case_156855706_reload,mux_case_256865710_reload,output_difference_2_out,output_difference_2_out_ap_vld,output_difference_1_out,output_difference_1_out_ap_vld,output_difference_out,output_difference_out_ap_vld,output_difference_idx5661_val5720_out,output_difference_idx5661_val5720_out_ap_vld,output_difference_idx5660_val5717_out,output_difference_idx5660_val5717_out_ap_vld,output_difference_idx_val5714_out,output_difference_idx_val5714_out_ap_vld,grp_fu_22783_p_din0,grp_fu_22783_p_din1,grp_fu_22783_p_opcode,grp_fu_22783_p_dout0,grp_fu_22783_p_ce,grp_fu_22879_p_din0,grp_fu_22879_p_din1,grp_fu_22879_p_dout0,grp_fu_22879_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] output_difference_2_promoted;
input  [63:0] output_difference_0_promoted;
input  [63:0] output_difference_1_promoted;
input  [63:0] output_difference_idx5661_val5722;
input  [63:0] output_difference_idx5660_val5719;
input  [63:0] output_difference_idx_val5716;
input  [63:0] mux_case_056815690_reload;
input  [63:0] mux_case_156825694_reload;
input  [63:0] mux_case_256835698_reload;
input  [8:0] mul_ln66;
output  [2:0] training_targets_0_address0;
output   training_targets_0_ce0;
input  [63:0] training_targets_0_q0;
output  [2:0] training_targets_1_address0;
output   training_targets_1_ce0;
input  [63:0] training_targets_1_q0;
output  [2:0] training_targets_2_address0;
output   training_targets_2_ce0;
input  [63:0] training_targets_2_q0;
output  [2:0] training_targets_3_address0;
output   training_targets_3_ce0;
input  [63:0] training_targets_3_q0;
output  [2:0] training_targets_4_address0;
output   training_targets_4_ce0;
input  [63:0] training_targets_4_q0;
output  [2:0] training_targets_5_address0;
output   training_targets_5_ce0;
input  [63:0] training_targets_5_q0;
output  [2:0] training_targets_6_address0;
output   training_targets_6_ce0;
input  [63:0] training_targets_6_q0;
output  [2:0] training_targets_7_address0;
output   training_targets_7_ce0;
input  [63:0] training_targets_7_q0;
output  [2:0] training_targets_8_address0;
output   training_targets_8_ce0;
input  [63:0] training_targets_8_q0;
output  [2:0] training_targets_9_address0;
output   training_targets_9_ce0;
input  [63:0] training_targets_9_q0;
output  [2:0] training_targets_10_address0;
output   training_targets_10_ce0;
input  [63:0] training_targets_10_q0;
output  [2:0] training_targets_11_address0;
output   training_targets_11_ce0;
input  [63:0] training_targets_11_q0;
output  [2:0] training_targets_12_address0;
output   training_targets_12_ce0;
input  [63:0] training_targets_12_q0;
output  [2:0] training_targets_13_address0;
output   training_targets_13_ce0;
input  [63:0] training_targets_13_q0;
output  [2:0] training_targets_14_address0;
output   training_targets_14_ce0;
input  [63:0] training_targets_14_q0;
output  [2:0] training_targets_15_address0;
output   training_targets_15_ce0;
input  [63:0] training_targets_15_q0;
output  [2:0] training_targets_16_address0;
output   training_targets_16_ce0;
input  [63:0] training_targets_16_q0;
output  [2:0] training_targets_17_address0;
output   training_targets_17_ce0;
input  [63:0] training_targets_17_q0;
output  [2:0] training_targets_18_address0;
output   training_targets_18_ce0;
input  [63:0] training_targets_18_q0;
output  [2:0] training_targets_19_address0;
output   training_targets_19_ce0;
input  [63:0] training_targets_19_q0;
output  [2:0] training_targets_20_address0;
output   training_targets_20_ce0;
input  [63:0] training_targets_20_q0;
output  [2:0] training_targets_21_address0;
output   training_targets_21_ce0;
input  [63:0] training_targets_21_q0;
output  [2:0] training_targets_22_address0;
output   training_targets_22_ce0;
input  [63:0] training_targets_22_q0;
output  [2:0] training_targets_23_address0;
output   training_targets_23_ce0;
input  [63:0] training_targets_23_q0;
output  [2:0] training_targets_24_address0;
output   training_targets_24_ce0;
input  [63:0] training_targets_24_q0;
output  [2:0] training_targets_25_address0;
output   training_targets_25_ce0;
input  [63:0] training_targets_25_q0;
output  [2:0] training_targets_26_address0;
output   training_targets_26_ce0;
input  [63:0] training_targets_26_q0;
output  [2:0] training_targets_27_address0;
output   training_targets_27_ce0;
input  [63:0] training_targets_27_q0;
output  [2:0] training_targets_28_address0;
output   training_targets_28_ce0;
input  [63:0] training_targets_28_q0;
output  [2:0] training_targets_29_address0;
output   training_targets_29_ce0;
input  [63:0] training_targets_29_q0;
output  [2:0] training_targets_30_address0;
output   training_targets_30_ce0;
input  [63:0] training_targets_30_q0;
output  [2:0] training_targets_31_address0;
output   training_targets_31_ce0;
input  [63:0] training_targets_31_q0;
output  [2:0] training_targets_32_address0;
output   training_targets_32_ce0;
input  [63:0] training_targets_32_q0;
output  [2:0] training_targets_33_address0;
output   training_targets_33_ce0;
input  [63:0] training_targets_33_q0;
output  [2:0] training_targets_34_address0;
output   training_targets_34_ce0;
input  [63:0] training_targets_34_q0;
output  [2:0] training_targets_35_address0;
output   training_targets_35_ce0;
input  [63:0] training_targets_35_q0;
output  [2:0] training_targets_36_address0;
output   training_targets_36_ce0;
input  [63:0] training_targets_36_q0;
output  [2:0] training_targets_37_address0;
output   training_targets_37_ce0;
input  [63:0] training_targets_37_q0;
output  [2:0] training_targets_38_address0;
output   training_targets_38_ce0;
input  [63:0] training_targets_38_q0;
output  [2:0] training_targets_39_address0;
output   training_targets_39_ce0;
input  [63:0] training_targets_39_q0;
output  [2:0] training_targets_40_address0;
output   training_targets_40_ce0;
input  [63:0] training_targets_40_q0;
output  [2:0] training_targets_41_address0;
output   training_targets_41_ce0;
input  [63:0] training_targets_41_q0;
output  [2:0] training_targets_42_address0;
output   training_targets_42_ce0;
input  [63:0] training_targets_42_q0;
output  [2:0] training_targets_43_address0;
output   training_targets_43_ce0;
input  [63:0] training_targets_43_q0;
output  [2:0] training_targets_44_address0;
output   training_targets_44_ce0;
input  [63:0] training_targets_44_q0;
output  [2:0] training_targets_45_address0;
output   training_targets_45_ce0;
input  [63:0] training_targets_45_q0;
output  [2:0] training_targets_46_address0;
output   training_targets_46_ce0;
input  [63:0] training_targets_46_q0;
output  [2:0] training_targets_47_address0;
output   training_targets_47_ce0;
input  [63:0] training_targets_47_q0;
output  [2:0] training_targets_48_address0;
output   training_targets_48_ce0;
input  [63:0] training_targets_48_q0;
output  [2:0] training_targets_49_address0;
output   training_targets_49_ce0;
input  [63:0] training_targets_49_q0;
output  [2:0] training_targets_50_address0;
output   training_targets_50_ce0;
input  [63:0] training_targets_50_q0;
output  [2:0] training_targets_51_address0;
output   training_targets_51_ce0;
input  [63:0] training_targets_51_q0;
output  [2:0] training_targets_52_address0;
output   training_targets_52_ce0;
input  [63:0] training_targets_52_q0;
output  [2:0] training_targets_53_address0;
output   training_targets_53_ce0;
input  [63:0] training_targets_53_q0;
output  [2:0] training_targets_54_address0;
output   training_targets_54_ce0;
input  [63:0] training_targets_54_q0;
output  [2:0] training_targets_55_address0;
output   training_targets_55_ce0;
input  [63:0] training_targets_55_q0;
output  [2:0] training_targets_56_address0;
output   training_targets_56_ce0;
input  [63:0] training_targets_56_q0;
output  [2:0] training_targets_57_address0;
output   training_targets_57_ce0;
input  [63:0] training_targets_57_q0;
output  [2:0] training_targets_58_address0;
output   training_targets_58_ce0;
input  [63:0] training_targets_58_q0;
output  [2:0] training_targets_59_address0;
output   training_targets_59_ce0;
input  [63:0] training_targets_59_q0;
output  [2:0] training_targets_60_address0;
output   training_targets_60_ce0;
input  [63:0] training_targets_60_q0;
output  [2:0] training_targets_61_address0;
output   training_targets_61_ce0;
input  [63:0] training_targets_61_q0;
output  [2:0] training_targets_62_address0;
output   training_targets_62_ce0;
input  [63:0] training_targets_62_q0;
output  [2:0] training_targets_63_address0;
output   training_targets_63_ce0;
input  [63:0] training_targets_63_q0;
input  [63:0] mux_case_056845702_reload;
input  [63:0] mux_case_156855706_reload;
input  [63:0] mux_case_256865710_reload;
output  [63:0] output_difference_2_out;
output   output_difference_2_out_ap_vld;
output  [63:0] output_difference_1_out;
output   output_difference_1_out_ap_vld;
output  [63:0] output_difference_out;
output   output_difference_out_ap_vld;
output  [63:0] output_difference_idx5661_val5720_out;
output   output_difference_idx5661_val5720_out_ap_vld;
output  [63:0] output_difference_idx5660_val5717_out;
output   output_difference_idx5660_val5717_out_ap_vld;
output  [63:0] output_difference_idx_val5714_out;
output   output_difference_idx_val5714_out_ap_vld;
output  [63:0] grp_fu_22783_p_din0;
output  [63:0] grp_fu_22783_p_din1;
output  [0:0] grp_fu_22783_p_opcode;
input  [63:0] grp_fu_22783_p_dout0;
output   grp_fu_22783_p_ce;
output  [63:0] grp_fu_22879_p_din0;
output  [63:0] grp_fu_22879_p_din1;
input  [63:0] grp_fu_22879_p_dout0;
output   grp_fu_22879_p_ce;
reg ap_idle;
reg output_difference_2_out_ap_vld;
reg output_difference_1_out_ap_vld;
reg output_difference_out_ap_vld;
reg output_difference_idx5661_val5720_out_ap_vld;
reg output_difference_idx5660_val5717_out_ap_vld;
reg output_difference_idx_val5714_out_ap_vld;
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
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln66_fu_1378_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] i_11_reg_2199;
reg   [1:0] i_11_reg_2199_pp0_iter1_reg;
reg   [1:0] i_11_reg_2199_pp0_iter2_reg;
reg   [1:0] i_11_reg_2199_pp0_iter3_reg;
reg   [1:0] i_11_reg_2199_pp0_iter4_reg;
reg   [1:0] i_11_reg_2199_pp0_iter5_reg;
reg   [1:0] i_11_reg_2199_pp0_iter6_reg;
reg   [1:0] i_11_reg_2199_pp0_iter7_reg;
reg   [1:0] i_11_reg_2199_pp0_iter8_reg;
reg   [1:0] i_11_reg_2199_pp0_iter9_reg;
reg   [1:0] i_11_reg_2199_pp0_iter10_reg;
reg   [1:0] i_11_reg_2199_pp0_iter11_reg;
reg   [1:0] i_11_reg_2199_pp0_iter12_reg;
reg   [1:0] i_11_reg_2199_pp0_iter13_reg;
reg   [1:0] i_11_reg_2199_pp0_iter14_reg;
reg   [1:0] i_11_reg_2199_pp0_iter15_reg;
reg   [1:0] i_11_reg_2199_pp0_iter16_reg;
reg   [0:0] icmp_ln66_reg_2205;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_2205_pp0_iter15_reg;
wire   [5:0] trunc_ln67_fu_1400_p1;
reg   [5:0] trunc_ln67_reg_2209;
wire   [63:0] tmp_367_fu_1743_p131;
reg   [63:0] tmp_367_reg_2534;
wire   [63:0] tmp_s_fu_2006_p9;
wire   [0:0] xor_ln67_fu_2035_p2;
reg   [0:0] xor_ln67_reg_2544;
wire   [62:0] trunc_ln67_1_fu_2041_p1;
reg   [62:0] trunc_ln67_1_reg_2549;
wire   [63:0] tmp_368_fu_2045_p9;
reg   [63:0] tmp_368_reg_2554;
wire   [63:0] bitcast_ln67_65_fu_2067_p1;
reg   [63:0] mul5_i_reg_2564;
wire   [63:0] zext_ln67_fu_1414_p1;
wire    ap_block_pp0_stage0;
reg   [1:0] i_fu_352;
wire   [1:0] add_ln66_fu_1384_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_11;
reg   [63:0] output_difference_idx_val5714_fu_356;
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
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg   [63:0] output_difference_idx5660_val5717_fu_360;
reg   [63:0] output_difference_idx5661_val5720_fu_364;
reg   [63:0] output_difference_fu_368;
reg   [63:0] output_difference_1_fu_372;
reg   [63:0] output_difference_2_fu_376;
wire    ap_block_pp0_stage0_01001;
reg    training_targets_0_ce0_local;
reg    training_targets_1_ce0_local;
reg    training_targets_2_ce0_local;
reg    training_targets_3_ce0_local;
reg    training_targets_4_ce0_local;
reg    training_targets_5_ce0_local;
reg    training_targets_6_ce0_local;
reg    training_targets_7_ce0_local;
reg    training_targets_8_ce0_local;
reg    training_targets_9_ce0_local;
reg    training_targets_10_ce0_local;
reg    training_targets_11_ce0_local;
reg    training_targets_12_ce0_local;
reg    training_targets_13_ce0_local;
reg    training_targets_14_ce0_local;
reg    training_targets_15_ce0_local;
reg    training_targets_16_ce0_local;
reg    training_targets_17_ce0_local;
reg    training_targets_18_ce0_local;
reg    training_targets_19_ce0_local;
reg    training_targets_20_ce0_local;
reg    training_targets_21_ce0_local;
reg    training_targets_22_ce0_local;
reg    training_targets_23_ce0_local;
reg    training_targets_24_ce0_local;
reg    training_targets_25_ce0_local;
reg    training_targets_26_ce0_local;
reg    training_targets_27_ce0_local;
reg    training_targets_28_ce0_local;
reg    training_targets_29_ce0_local;
reg    training_targets_30_ce0_local;
reg    training_targets_31_ce0_local;
reg    training_targets_32_ce0_local;
reg    training_targets_33_ce0_local;
reg    training_targets_34_ce0_local;
reg    training_targets_35_ce0_local;
reg    training_targets_36_ce0_local;
reg    training_targets_37_ce0_local;
reg    training_targets_38_ce0_local;
reg    training_targets_39_ce0_local;
reg    training_targets_40_ce0_local;
reg    training_targets_41_ce0_local;
reg    training_targets_42_ce0_local;
reg    training_targets_43_ce0_local;
reg    training_targets_44_ce0_local;
reg    training_targets_45_ce0_local;
reg    training_targets_46_ce0_local;
reg    training_targets_47_ce0_local;
reg    training_targets_48_ce0_local;
reg    training_targets_49_ce0_local;
reg    training_targets_50_ce0_local;
reg    training_targets_51_ce0_local;
reg    training_targets_52_ce0_local;
reg    training_targets_53_ce0_local;
reg    training_targets_54_ce0_local;
reg    training_targets_55_ce0_local;
reg    training_targets_56_ce0_local;
reg    training_targets_57_ce0_local;
reg    training_targets_58_ce0_local;
reg    training_targets_59_ce0_local;
reg    training_targets_60_ce0_local;
reg    training_targets_61_ce0_local;
reg    training_targets_62_ce0_local;
reg    training_targets_63_ce0_local;
wire   [8:0] zext_ln66_fu_1390_p1;
wire   [8:0] add_ln67_fu_1394_p2;
wire   [2:0] lshr_ln_fu_1404_p4;
wire   [63:0] tmp_367_fu_1743_p2;
wire   [63:0] tmp_367_fu_1743_p4;
wire   [63:0] tmp_367_fu_1743_p6;
wire   [63:0] tmp_367_fu_1743_p8;
wire   [63:0] tmp_367_fu_1743_p10;
wire   [63:0] tmp_367_fu_1743_p12;
wire   [63:0] tmp_367_fu_1743_p14;
wire   [63:0] tmp_367_fu_1743_p16;
wire   [63:0] tmp_367_fu_1743_p18;
wire   [63:0] tmp_367_fu_1743_p20;
wire   [63:0] tmp_367_fu_1743_p22;
wire   [63:0] tmp_367_fu_1743_p24;
wire   [63:0] tmp_367_fu_1743_p26;
wire   [63:0] tmp_367_fu_1743_p28;
wire   [63:0] tmp_367_fu_1743_p30;
wire   [63:0] tmp_367_fu_1743_p32;
wire   [63:0] tmp_367_fu_1743_p34;
wire   [63:0] tmp_367_fu_1743_p36;
wire   [63:0] tmp_367_fu_1743_p38;
wire   [63:0] tmp_367_fu_1743_p40;
wire   [63:0] tmp_367_fu_1743_p42;
wire   [63:0] tmp_367_fu_1743_p44;
wire   [63:0] tmp_367_fu_1743_p46;
wire   [63:0] tmp_367_fu_1743_p48;
wire   [63:0] tmp_367_fu_1743_p50;
wire   [63:0] tmp_367_fu_1743_p52;
wire   [63:0] tmp_367_fu_1743_p54;
wire   [63:0] tmp_367_fu_1743_p56;
wire   [63:0] tmp_367_fu_1743_p58;
wire   [63:0] tmp_367_fu_1743_p60;
wire   [63:0] tmp_367_fu_1743_p62;
wire   [63:0] tmp_367_fu_1743_p64;
wire   [63:0] tmp_367_fu_1743_p66;
wire   [63:0] tmp_367_fu_1743_p68;
wire   [63:0] tmp_367_fu_1743_p70;
wire   [63:0] tmp_367_fu_1743_p72;
wire   [63:0] tmp_367_fu_1743_p74;
wire   [63:0] tmp_367_fu_1743_p76;
wire   [63:0] tmp_367_fu_1743_p78;
wire   [63:0] tmp_367_fu_1743_p80;
wire   [63:0] tmp_367_fu_1743_p82;
wire   [63:0] tmp_367_fu_1743_p84;
wire   [63:0] tmp_367_fu_1743_p86;
wire   [63:0] tmp_367_fu_1743_p88;
wire   [63:0] tmp_367_fu_1743_p90;
wire   [63:0] tmp_367_fu_1743_p92;
wire   [63:0] tmp_367_fu_1743_p94;
wire   [63:0] tmp_367_fu_1743_p96;
wire   [63:0] tmp_367_fu_1743_p98;
wire   [63:0] tmp_367_fu_1743_p100;
wire   [63:0] tmp_367_fu_1743_p102;
wire   [63:0] tmp_367_fu_1743_p104;
wire   [63:0] tmp_367_fu_1743_p106;
wire   [63:0] tmp_367_fu_1743_p108;
wire   [63:0] tmp_367_fu_1743_p110;
wire   [63:0] tmp_367_fu_1743_p112;
wire   [63:0] tmp_367_fu_1743_p114;
wire   [63:0] tmp_367_fu_1743_p116;
wire   [63:0] tmp_367_fu_1743_p118;
wire   [63:0] tmp_367_fu_1743_p120;
wire   [63:0] tmp_367_fu_1743_p122;
wire   [63:0] tmp_367_fu_1743_p124;
wire   [63:0] tmp_367_fu_1743_p126;
wire   [63:0] tmp_367_fu_1743_p128;
wire   [63:0] tmp_367_fu_1743_p129;
wire   [63:0] tmp_s_fu_2006_p7;
wire   [63:0] bitcast_ln67_64_fu_2023_p1;
wire   [0:0] bit_sel5_fu_2027_p3;
wire   [63:0] tmp_368_fu_2045_p7;
wire   [63:0] xor_ln2_fu_2061_p3;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1690;
wire   [5:0] tmp_367_fu_1743_p1;
wire   [5:0] tmp_367_fu_1743_p3;
wire   [5:0] tmp_367_fu_1743_p5;
wire   [5:0] tmp_367_fu_1743_p7;
wire   [5:0] tmp_367_fu_1743_p9;
wire   [5:0] tmp_367_fu_1743_p11;
wire   [5:0] tmp_367_fu_1743_p13;
wire   [5:0] tmp_367_fu_1743_p15;
wire   [5:0] tmp_367_fu_1743_p17;
wire   [5:0] tmp_367_fu_1743_p19;
wire   [5:0] tmp_367_fu_1743_p21;
wire   [5:0] tmp_367_fu_1743_p23;
wire   [5:0] tmp_367_fu_1743_p25;
wire   [5:0] tmp_367_fu_1743_p27;
wire   [5:0] tmp_367_fu_1743_p29;
wire   [5:0] tmp_367_fu_1743_p31;
wire   [5:0] tmp_367_fu_1743_p33;
wire   [5:0] tmp_367_fu_1743_p35;
wire   [5:0] tmp_367_fu_1743_p37;
wire   [5:0] tmp_367_fu_1743_p39;
wire   [5:0] tmp_367_fu_1743_p41;
wire   [5:0] tmp_367_fu_1743_p43;
wire   [5:0] tmp_367_fu_1743_p45;
wire   [5:0] tmp_367_fu_1743_p47;
wire   [5:0] tmp_367_fu_1743_p49;
wire   [5:0] tmp_367_fu_1743_p51;
wire   [5:0] tmp_367_fu_1743_p53;
wire   [5:0] tmp_367_fu_1743_p55;
wire   [5:0] tmp_367_fu_1743_p57;
wire   [5:0] tmp_367_fu_1743_p59;
wire   [5:0] tmp_367_fu_1743_p61;
wire   [5:0] tmp_367_fu_1743_p63;
wire  signed [5:0] tmp_367_fu_1743_p65;
wire  signed [5:0] tmp_367_fu_1743_p67;
wire  signed [5:0] tmp_367_fu_1743_p69;
wire  signed [5:0] tmp_367_fu_1743_p71;
wire  signed [5:0] tmp_367_fu_1743_p73;
wire  signed [5:0] tmp_367_fu_1743_p75;
wire  signed [5:0] tmp_367_fu_1743_p77;
wire  signed [5:0] tmp_367_fu_1743_p79;
wire  signed [5:0] tmp_367_fu_1743_p81;
wire  signed [5:0] tmp_367_fu_1743_p83;
wire  signed [5:0] tmp_367_fu_1743_p85;
wire  signed [5:0] tmp_367_fu_1743_p87;
wire  signed [5:0] tmp_367_fu_1743_p89;
wire  signed [5:0] tmp_367_fu_1743_p91;
wire  signed [5:0] tmp_367_fu_1743_p93;
wire  signed [5:0] tmp_367_fu_1743_p95;
wire  signed [5:0] tmp_367_fu_1743_p97;
wire  signed [5:0] tmp_367_fu_1743_p99;
wire  signed [5:0] tmp_367_fu_1743_p101;
wire  signed [5:0] tmp_367_fu_1743_p103;
wire  signed [5:0] tmp_367_fu_1743_p105;
wire  signed [5:0] tmp_367_fu_1743_p107;
wire  signed [5:0] tmp_367_fu_1743_p109;
wire  signed [5:0] tmp_367_fu_1743_p111;
wire  signed [5:0] tmp_367_fu_1743_p113;
wire  signed [5:0] tmp_367_fu_1743_p115;
wire  signed [5:0] tmp_367_fu_1743_p117;
wire  signed [5:0] tmp_367_fu_1743_p119;
wire  signed [5:0] tmp_367_fu_1743_p121;
wire  signed [5:0] tmp_367_fu_1743_p123;
wire  signed [5:0] tmp_367_fu_1743_p125;
wire  signed [5:0] tmp_367_fu_1743_p127;
wire   [1:0] tmp_s_fu_2006_p1;
wire   [1:0] tmp_s_fu_2006_p3;
wire  signed [1:0] tmp_s_fu_2006_p5;
wire   [1:0] tmp_368_fu_2045_p1;
wire   [1:0] tmp_368_fu_2045_p3;
wire  signed [1:0] tmp_368_fu_2045_p5;
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
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 i_fu_352 = 2'd0;
#0 output_difference_idx_val5714_fu_356 = 64'd0;
#0 output_difference_idx5660_val5717_fu_360 = 64'd0;
#0 output_difference_idx5661_val5720_fu_364 = 64'd0;
#0 output_difference_fu_368 = 64'd0;
#0 output_difference_1_fu_372 = 64'd0;
#0 output_difference_2_fu_376 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U1958(.din0(tmp_367_fu_1743_p2),.din1(tmp_367_fu_1743_p4),.din2(tmp_367_fu_1743_p6),.din3(tmp_367_fu_1743_p8),.din4(tmp_367_fu_1743_p10),.din5(tmp_367_fu_1743_p12),.din6(tmp_367_fu_1743_p14),.din7(tmp_367_fu_1743_p16),.din8(tmp_367_fu_1743_p18),.din9(tmp_367_fu_1743_p20),.din10(tmp_367_fu_1743_p22),.din11(tmp_367_fu_1743_p24),.din12(tmp_367_fu_1743_p26),.din13(tmp_367_fu_1743_p28),.din14(tmp_367_fu_1743_p30),.din15(tmp_367_fu_1743_p32),.din16(tmp_367_fu_1743_p34),.din17(tmp_367_fu_1743_p36),.din18(tmp_367_fu_1743_p38),.din19(tmp_367_fu_1743_p40),.din20(tmp_367_fu_1743_p42),.din21(tmp_367_fu_1743_p44),.din22(tmp_367_fu_1743_p46),.din23(tmp_367_fu_1743_p48),.din24(tmp_367_fu_1743_p50),.din25(tmp_367_fu_1743_p52),.din26(tmp_367_fu_1743_p54),.din27(tmp_367_fu_1743_p56),.din28(tmp_367_fu_1743_p58),.din29(tmp_367_fu_1743_p60),.din30(tmp_367_fu_1743_p62),.din31(tmp_367_fu_1743_p64),.din32(tmp_367_fu_1743_p66),.din33(tmp_367_fu_1743_p68),.din34(tmp_367_fu_1743_p70),.din35(tmp_367_fu_1743_p72),.din36(tmp_367_fu_1743_p74),.din37(tmp_367_fu_1743_p76),.din38(tmp_367_fu_1743_p78),.din39(tmp_367_fu_1743_p80),.din40(tmp_367_fu_1743_p82),.din41(tmp_367_fu_1743_p84),.din42(tmp_367_fu_1743_p86),.din43(tmp_367_fu_1743_p88),.din44(tmp_367_fu_1743_p90),.din45(tmp_367_fu_1743_p92),.din46(tmp_367_fu_1743_p94),.din47(tmp_367_fu_1743_p96),.din48(tmp_367_fu_1743_p98),.din49(tmp_367_fu_1743_p100),.din50(tmp_367_fu_1743_p102),.din51(tmp_367_fu_1743_p104),.din52(tmp_367_fu_1743_p106),.din53(tmp_367_fu_1743_p108),.din54(tmp_367_fu_1743_p110),.din55(tmp_367_fu_1743_p112),.din56(tmp_367_fu_1743_p114),.din57(tmp_367_fu_1743_p116),.din58(tmp_367_fu_1743_p118),.din59(tmp_367_fu_1743_p120),.din60(tmp_367_fu_1743_p122),.din61(tmp_367_fu_1743_p124),.din62(tmp_367_fu_1743_p126),.din63(tmp_367_fu_1743_p128),.def(tmp_367_fu_1743_p129),.sel(trunc_ln67_reg_2209),.dout(tmp_367_fu_1743_p131));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U1959(.din0(mux_case_056815690_reload),.din1(mux_case_156825694_reload),.din2(mux_case_256835698_reload),.def(tmp_s_fu_2006_p7),.sel(i_11_reg_2199_pp0_iter1_reg),.dout(tmp_s_fu_2006_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U1960(.din0(mux_case_056845702_reload),.din1(mux_case_156855706_reload),.din2(mux_case_256865710_reload),.def(tmp_368_fu_2045_p7),.sel(i_11_reg_2199_pp0_iter8_reg),.dout(tmp_368_fu_2045_p9));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
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
        if (((icmp_ln66_fu_1378_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_352 <= add_ln66_fu_1384_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_352 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_fu_372 <= output_difference_0_promoted;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_11_reg_2199_pp0_iter16_reg == 2'd0))) begin
            output_difference_1_fu_372 <= mul5_i_reg_2564;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_2_fu_376 <= output_difference_2_promoted;
        end else if ((1'b1 == ap_condition_1690)) begin
            output_difference_2_fu_376 <= mul5_i_reg_2564;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_fu_368 <= output_difference_1_promoted;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_11_reg_2199_pp0_iter16_reg == 2'd1))) begin
            output_difference_fu_368 <= mul5_i_reg_2564;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_idx5660_val5717_fu_360 <= output_difference_idx5660_val5719;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_11_reg_2199_pp0_iter16_reg == 2'd1))) begin
            output_difference_idx5660_val5717_fu_360 <= mul5_i_reg_2564;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_idx5661_val5720_fu_364 <= output_difference_idx5661_val5722;
        end else if ((1'b1 == ap_condition_1690)) begin
            output_difference_idx5661_val5720_fu_364 <= mul5_i_reg_2564;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_idx_val5714_fu_356 <= output_difference_idx_val5716;
        end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (i_11_reg_2199_pp0_iter16_reg == 2'd0))) begin
            output_difference_idx_val5714_fu_356 <= mul5_i_reg_2564;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        i_11_reg_2199_pp0_iter10_reg <= i_11_reg_2199_pp0_iter9_reg;
        i_11_reg_2199_pp0_iter11_reg <= i_11_reg_2199_pp0_iter10_reg;
        i_11_reg_2199_pp0_iter12_reg <= i_11_reg_2199_pp0_iter11_reg;
        i_11_reg_2199_pp0_iter13_reg <= i_11_reg_2199_pp0_iter12_reg;
        i_11_reg_2199_pp0_iter14_reg <= i_11_reg_2199_pp0_iter13_reg;
        i_11_reg_2199_pp0_iter15_reg <= i_11_reg_2199_pp0_iter14_reg;
        i_11_reg_2199_pp0_iter16_reg <= i_11_reg_2199_pp0_iter15_reg;
        i_11_reg_2199_pp0_iter2_reg <= i_11_reg_2199_pp0_iter1_reg;
        i_11_reg_2199_pp0_iter3_reg <= i_11_reg_2199_pp0_iter2_reg;
        i_11_reg_2199_pp0_iter4_reg <= i_11_reg_2199_pp0_iter3_reg;
        i_11_reg_2199_pp0_iter5_reg <= i_11_reg_2199_pp0_iter4_reg;
        i_11_reg_2199_pp0_iter6_reg <= i_11_reg_2199_pp0_iter5_reg;
        i_11_reg_2199_pp0_iter7_reg <= i_11_reg_2199_pp0_iter6_reg;
        i_11_reg_2199_pp0_iter8_reg <= i_11_reg_2199_pp0_iter7_reg;
        i_11_reg_2199_pp0_iter9_reg <= i_11_reg_2199_pp0_iter8_reg;
        icmp_ln66_reg_2205_pp0_iter10_reg <= icmp_ln66_reg_2205_pp0_iter9_reg;
        icmp_ln66_reg_2205_pp0_iter11_reg <= icmp_ln66_reg_2205_pp0_iter10_reg;
        icmp_ln66_reg_2205_pp0_iter12_reg <= icmp_ln66_reg_2205_pp0_iter11_reg;
        icmp_ln66_reg_2205_pp0_iter13_reg <= icmp_ln66_reg_2205_pp0_iter12_reg;
        icmp_ln66_reg_2205_pp0_iter14_reg <= icmp_ln66_reg_2205_pp0_iter13_reg;
        icmp_ln66_reg_2205_pp0_iter15_reg <= icmp_ln66_reg_2205_pp0_iter14_reg;
        icmp_ln66_reg_2205_pp0_iter2_reg <= icmp_ln66_reg_2205_pp0_iter1_reg;
        icmp_ln66_reg_2205_pp0_iter3_reg <= icmp_ln66_reg_2205_pp0_iter2_reg;
        icmp_ln66_reg_2205_pp0_iter4_reg <= icmp_ln66_reg_2205_pp0_iter3_reg;
        icmp_ln66_reg_2205_pp0_iter5_reg <= icmp_ln66_reg_2205_pp0_iter4_reg;
        icmp_ln66_reg_2205_pp0_iter6_reg <= icmp_ln66_reg_2205_pp0_iter5_reg;
        icmp_ln66_reg_2205_pp0_iter7_reg <= icmp_ln66_reg_2205_pp0_iter6_reg;
        icmp_ln66_reg_2205_pp0_iter8_reg <= icmp_ln66_reg_2205_pp0_iter7_reg;
        icmp_ln66_reg_2205_pp0_iter9_reg <= icmp_ln66_reg_2205_pp0_iter8_reg;
        mul5_i_reg_2564 <= grp_fu_22879_p_dout0;
        tmp_368_reg_2554 <= tmp_368_fu_2045_p9;
        trunc_ln67_1_reg_2549 <= trunc_ln67_1_fu_2041_p1;
        xor_ln67_reg_2544 <= xor_ln67_fu_2035_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_11_reg_2199 <= ap_sig_allocacmp_i_11;
        i_11_reg_2199_pp0_iter1_reg <= i_11_reg_2199;
        icmp_ln66_reg_2205 <= icmp_ln66_fu_1378_p2;
        icmp_ln66_reg_2205_pp0_iter1_reg <= icmp_ln66_reg_2205;
        tmp_367_reg_2534 <= tmp_367_fu_1743_p131;
        trunc_ln67_reg_2209 <= trunc_ln67_fu_1400_p1;
    end
end
always @ (*) begin
    if (((icmp_ln66_fu_1378_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_11 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_11 = i_fu_352;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln66_reg_2205_pp0_iter15_reg == 1'd1))) begin
        output_difference_1_out_ap_vld = 1'b1;
    end else begin
        output_difference_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln66_reg_2205_pp0_iter15_reg == 1'd1))) begin
        output_difference_2_out_ap_vld = 1'b1;
    end else begin
        output_difference_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln66_reg_2205_pp0_iter15_reg == 1'd1))) begin
        output_difference_idx5660_val5717_out_ap_vld = 1'b1;
    end else begin
        output_difference_idx5660_val5717_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln66_reg_2205_pp0_iter15_reg == 1'd1))) begin
        output_difference_idx5661_val5720_out_ap_vld = 1'b1;
    end else begin
        output_difference_idx5661_val5720_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln66_reg_2205_pp0_iter15_reg == 1'd1))) begin
        output_difference_idx_val5714_out_ap_vld = 1'b1;
    end else begin
        output_difference_idx_val5714_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln66_reg_2205_pp0_iter15_reg == 1'd1))) begin
        output_difference_out_ap_vld = 1'b1;
    end else begin
        output_difference_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_0_ce0_local = 1'b1;
    end else begin
        training_targets_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_10_ce0_local = 1'b1;
    end else begin
        training_targets_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_11_ce0_local = 1'b1;
    end else begin
        training_targets_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_12_ce0_local = 1'b1;
    end else begin
        training_targets_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_13_ce0_local = 1'b1;
    end else begin
        training_targets_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_14_ce0_local = 1'b1;
    end else begin
        training_targets_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_15_ce0_local = 1'b1;
    end else begin
        training_targets_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_16_ce0_local = 1'b1;
    end else begin
        training_targets_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_17_ce0_local = 1'b1;
    end else begin
        training_targets_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_18_ce0_local = 1'b1;
    end else begin
        training_targets_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_19_ce0_local = 1'b1;
    end else begin
        training_targets_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_1_ce0_local = 1'b1;
    end else begin
        training_targets_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_20_ce0_local = 1'b1;
    end else begin
        training_targets_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_21_ce0_local = 1'b1;
    end else begin
        training_targets_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_22_ce0_local = 1'b1;
    end else begin
        training_targets_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_23_ce0_local = 1'b1;
    end else begin
        training_targets_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_24_ce0_local = 1'b1;
    end else begin
        training_targets_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_25_ce0_local = 1'b1;
    end else begin
        training_targets_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_26_ce0_local = 1'b1;
    end else begin
        training_targets_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_27_ce0_local = 1'b1;
    end else begin
        training_targets_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_28_ce0_local = 1'b1;
    end else begin
        training_targets_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_29_ce0_local = 1'b1;
    end else begin
        training_targets_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_2_ce0_local = 1'b1;
    end else begin
        training_targets_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_30_ce0_local = 1'b1;
    end else begin
        training_targets_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_31_ce0_local = 1'b1;
    end else begin
        training_targets_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_32_ce0_local = 1'b1;
    end else begin
        training_targets_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_33_ce0_local = 1'b1;
    end else begin
        training_targets_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_34_ce0_local = 1'b1;
    end else begin
        training_targets_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_35_ce0_local = 1'b1;
    end else begin
        training_targets_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_36_ce0_local = 1'b1;
    end else begin
        training_targets_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_37_ce0_local = 1'b1;
    end else begin
        training_targets_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_38_ce0_local = 1'b1;
    end else begin
        training_targets_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_39_ce0_local = 1'b1;
    end else begin
        training_targets_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_3_ce0_local = 1'b1;
    end else begin
        training_targets_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_40_ce0_local = 1'b1;
    end else begin
        training_targets_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_41_ce0_local = 1'b1;
    end else begin
        training_targets_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_42_ce0_local = 1'b1;
    end else begin
        training_targets_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_43_ce0_local = 1'b1;
    end else begin
        training_targets_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_44_ce0_local = 1'b1;
    end else begin
        training_targets_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_45_ce0_local = 1'b1;
    end else begin
        training_targets_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_46_ce0_local = 1'b1;
    end else begin
        training_targets_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_47_ce0_local = 1'b1;
    end else begin
        training_targets_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_48_ce0_local = 1'b1;
    end else begin
        training_targets_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_49_ce0_local = 1'b1;
    end else begin
        training_targets_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_4_ce0_local = 1'b1;
    end else begin
        training_targets_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_50_ce0_local = 1'b1;
    end else begin
        training_targets_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_51_ce0_local = 1'b1;
    end else begin
        training_targets_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_52_ce0_local = 1'b1;
    end else begin
        training_targets_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_53_ce0_local = 1'b1;
    end else begin
        training_targets_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_54_ce0_local = 1'b1;
    end else begin
        training_targets_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_55_ce0_local = 1'b1;
    end else begin
        training_targets_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_56_ce0_local = 1'b1;
    end else begin
        training_targets_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_57_ce0_local = 1'b1;
    end else begin
        training_targets_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_58_ce0_local = 1'b1;
    end else begin
        training_targets_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_59_ce0_local = 1'b1;
    end else begin
        training_targets_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_5_ce0_local = 1'b1;
    end else begin
        training_targets_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_60_ce0_local = 1'b1;
    end else begin
        training_targets_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_61_ce0_local = 1'b1;
    end else begin
        training_targets_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_62_ce0_local = 1'b1;
    end else begin
        training_targets_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_63_ce0_local = 1'b1;
    end else begin
        training_targets_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_6_ce0_local = 1'b1;
    end else begin
        training_targets_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_7_ce0_local = 1'b1;
    end else begin
        training_targets_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_8_ce0_local = 1'b1;
    end else begin
        training_targets_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_targets_9_ce0_local = 1'b1;
    end else begin
        training_targets_9_ce0_local = 1'b0;
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
assign add_ln66_fu_1384_p2 = (ap_sig_allocacmp_i_11 + 2'd1);
assign add_ln67_fu_1394_p2 = (zext_ln66_fu_1390_p1 + mul_ln66);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1690 = (~(i_11_reg_2199_pp0_iter16_reg == 2'd1) & ~(i_11_reg_2199_pp0_iter16_reg == 2'd0) & (ap_enable_reg_pp0_iter17 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel5_fu_2027_p3 = bitcast_ln67_64_fu_2023_p1[64'd63];
assign bitcast_ln67_64_fu_2023_p1 = grp_fu_22783_p_dout0;
assign bitcast_ln67_65_fu_2067_p1 = xor_ln2_fu_2061_p3;
assign grp_fu_22783_p_ce = 1'b1;
assign grp_fu_22783_p_din0 = tmp_s_fu_2006_p9;
assign grp_fu_22783_p_din1 = tmp_367_reg_2534;
assign grp_fu_22783_p_opcode = 2'd1;
assign grp_fu_22879_p_ce = 1'b1;
assign grp_fu_22879_p_din0 = bitcast_ln67_65_fu_2067_p1;
assign grp_fu_22879_p_din1 = tmp_368_reg_2554;
assign icmp_ln66_fu_1378_p2 = ((ap_sig_allocacmp_i_11 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1404_p4 = {{add_ln67_fu_1394_p2[8:6]}};
assign output_difference_1_out = output_difference_1_fu_372;
assign output_difference_2_out = output_difference_2_fu_376;
assign output_difference_idx5660_val5717_out = output_difference_idx5660_val5717_fu_360;
assign output_difference_idx5661_val5720_out = output_difference_idx5661_val5720_fu_364;
assign output_difference_idx_val5714_out = output_difference_idx_val5714_fu_356;
assign output_difference_out = output_difference_fu_368;
assign tmp_367_fu_1743_p10 = training_targets_4_q0;
assign tmp_367_fu_1743_p100 = training_targets_49_q0;
assign tmp_367_fu_1743_p102 = training_targets_50_q0;
assign tmp_367_fu_1743_p104 = training_targets_51_q0;
assign tmp_367_fu_1743_p106 = training_targets_52_q0;
assign tmp_367_fu_1743_p108 = training_targets_53_q0;
assign tmp_367_fu_1743_p110 = training_targets_54_q0;
assign tmp_367_fu_1743_p112 = training_targets_55_q0;
assign tmp_367_fu_1743_p114 = training_targets_56_q0;
assign tmp_367_fu_1743_p116 = training_targets_57_q0;
assign tmp_367_fu_1743_p118 = training_targets_58_q0;
assign tmp_367_fu_1743_p12 = training_targets_5_q0;
assign tmp_367_fu_1743_p120 = training_targets_59_q0;
assign tmp_367_fu_1743_p122 = training_targets_60_q0;
assign tmp_367_fu_1743_p124 = training_targets_61_q0;
assign tmp_367_fu_1743_p126 = training_targets_62_q0;
assign tmp_367_fu_1743_p128 = training_targets_63_q0;
assign tmp_367_fu_1743_p129 = 'bx;
assign tmp_367_fu_1743_p14 = training_targets_6_q0;
assign tmp_367_fu_1743_p16 = training_targets_7_q0;
assign tmp_367_fu_1743_p18 = training_targets_8_q0;
assign tmp_367_fu_1743_p2 = training_targets_0_q0;
assign tmp_367_fu_1743_p20 = training_targets_9_q0;
assign tmp_367_fu_1743_p22 = training_targets_10_q0;
assign tmp_367_fu_1743_p24 = training_targets_11_q0;
assign tmp_367_fu_1743_p26 = training_targets_12_q0;
assign tmp_367_fu_1743_p28 = training_targets_13_q0;
assign tmp_367_fu_1743_p30 = training_targets_14_q0;
assign tmp_367_fu_1743_p32 = training_targets_15_q0;
assign tmp_367_fu_1743_p34 = training_targets_16_q0;
assign tmp_367_fu_1743_p36 = training_targets_17_q0;
assign tmp_367_fu_1743_p38 = training_targets_18_q0;
assign tmp_367_fu_1743_p4 = training_targets_1_q0;
assign tmp_367_fu_1743_p40 = training_targets_19_q0;
assign tmp_367_fu_1743_p42 = training_targets_20_q0;
assign tmp_367_fu_1743_p44 = training_targets_21_q0;
assign tmp_367_fu_1743_p46 = training_targets_22_q0;
assign tmp_367_fu_1743_p48 = training_targets_23_q0;
assign tmp_367_fu_1743_p50 = training_targets_24_q0;
assign tmp_367_fu_1743_p52 = training_targets_25_q0;
assign tmp_367_fu_1743_p54 = training_targets_26_q0;
assign tmp_367_fu_1743_p56 = training_targets_27_q0;
assign tmp_367_fu_1743_p58 = training_targets_28_q0;
assign tmp_367_fu_1743_p6 = training_targets_2_q0;
assign tmp_367_fu_1743_p60 = training_targets_29_q0;
assign tmp_367_fu_1743_p62 = training_targets_30_q0;
assign tmp_367_fu_1743_p64 = training_targets_31_q0;
assign tmp_367_fu_1743_p66 = training_targets_32_q0;
assign tmp_367_fu_1743_p68 = training_targets_33_q0;
assign tmp_367_fu_1743_p70 = training_targets_34_q0;
assign tmp_367_fu_1743_p72 = training_targets_35_q0;
assign tmp_367_fu_1743_p74 = training_targets_36_q0;
assign tmp_367_fu_1743_p76 = training_targets_37_q0;
assign tmp_367_fu_1743_p78 = training_targets_38_q0;
assign tmp_367_fu_1743_p8 = training_targets_3_q0;
assign tmp_367_fu_1743_p80 = training_targets_39_q0;
assign tmp_367_fu_1743_p82 = training_targets_40_q0;
assign tmp_367_fu_1743_p84 = training_targets_41_q0;
assign tmp_367_fu_1743_p86 = training_targets_42_q0;
assign tmp_367_fu_1743_p88 = training_targets_43_q0;
assign tmp_367_fu_1743_p90 = training_targets_44_q0;
assign tmp_367_fu_1743_p92 = training_targets_45_q0;
assign tmp_367_fu_1743_p94 = training_targets_46_q0;
assign tmp_367_fu_1743_p96 = training_targets_47_q0;
assign tmp_367_fu_1743_p98 = training_targets_48_q0;
assign tmp_368_fu_2045_p7 = 'bx;
assign tmp_s_fu_2006_p7 = 'bx;
assign training_targets_0_address0 = zext_ln67_fu_1414_p1;
assign training_targets_0_ce0 = training_targets_0_ce0_local;
assign training_targets_10_address0 = zext_ln67_fu_1414_p1;
assign training_targets_10_ce0 = training_targets_10_ce0_local;
assign training_targets_11_address0 = zext_ln67_fu_1414_p1;
assign training_targets_11_ce0 = training_targets_11_ce0_local;
assign training_targets_12_address0 = zext_ln67_fu_1414_p1;
assign training_targets_12_ce0 = training_targets_12_ce0_local;
assign training_targets_13_address0 = zext_ln67_fu_1414_p1;
assign training_targets_13_ce0 = training_targets_13_ce0_local;
assign training_targets_14_address0 = zext_ln67_fu_1414_p1;
assign training_targets_14_ce0 = training_targets_14_ce0_local;
assign training_targets_15_address0 = zext_ln67_fu_1414_p1;
assign training_targets_15_ce0 = training_targets_15_ce0_local;
assign training_targets_16_address0 = zext_ln67_fu_1414_p1;
assign training_targets_16_ce0 = training_targets_16_ce0_local;
assign training_targets_17_address0 = zext_ln67_fu_1414_p1;
assign training_targets_17_ce0 = training_targets_17_ce0_local;
assign training_targets_18_address0 = zext_ln67_fu_1414_p1;
assign training_targets_18_ce0 = training_targets_18_ce0_local;
assign training_targets_19_address0 = zext_ln67_fu_1414_p1;
assign training_targets_19_ce0 = training_targets_19_ce0_local;
assign training_targets_1_address0 = zext_ln67_fu_1414_p1;
assign training_targets_1_ce0 = training_targets_1_ce0_local;
assign training_targets_20_address0 = zext_ln67_fu_1414_p1;
assign training_targets_20_ce0 = training_targets_20_ce0_local;
assign training_targets_21_address0 = zext_ln67_fu_1414_p1;
assign training_targets_21_ce0 = training_targets_21_ce0_local;
assign training_targets_22_address0 = zext_ln67_fu_1414_p1;
assign training_targets_22_ce0 = training_targets_22_ce0_local;
assign training_targets_23_address0 = zext_ln67_fu_1414_p1;
assign training_targets_23_ce0 = training_targets_23_ce0_local;
assign training_targets_24_address0 = zext_ln67_fu_1414_p1;
assign training_targets_24_ce0 = training_targets_24_ce0_local;
assign training_targets_25_address0 = zext_ln67_fu_1414_p1;
assign training_targets_25_ce0 = training_targets_25_ce0_local;
assign training_targets_26_address0 = zext_ln67_fu_1414_p1;
assign training_targets_26_ce0 = training_targets_26_ce0_local;
assign training_targets_27_address0 = zext_ln67_fu_1414_p1;
assign training_targets_27_ce0 = training_targets_27_ce0_local;
assign training_targets_28_address0 = zext_ln67_fu_1414_p1;
assign training_targets_28_ce0 = training_targets_28_ce0_local;
assign training_targets_29_address0 = zext_ln67_fu_1414_p1;
assign training_targets_29_ce0 = training_targets_29_ce0_local;
assign training_targets_2_address0 = zext_ln67_fu_1414_p1;
assign training_targets_2_ce0 = training_targets_2_ce0_local;
assign training_targets_30_address0 = zext_ln67_fu_1414_p1;
assign training_targets_30_ce0 = training_targets_30_ce0_local;
assign training_targets_31_address0 = zext_ln67_fu_1414_p1;
assign training_targets_31_ce0 = training_targets_31_ce0_local;
assign training_targets_32_address0 = zext_ln67_fu_1414_p1;
assign training_targets_32_ce0 = training_targets_32_ce0_local;
assign training_targets_33_address0 = zext_ln67_fu_1414_p1;
assign training_targets_33_ce0 = training_targets_33_ce0_local;
assign training_targets_34_address0 = zext_ln67_fu_1414_p1;
assign training_targets_34_ce0 = training_targets_34_ce0_local;
assign training_targets_35_address0 = zext_ln67_fu_1414_p1;
assign training_targets_35_ce0 = training_targets_35_ce0_local;
assign training_targets_36_address0 = zext_ln67_fu_1414_p1;
assign training_targets_36_ce0 = training_targets_36_ce0_local;
assign training_targets_37_address0 = zext_ln67_fu_1414_p1;
assign training_targets_37_ce0 = training_targets_37_ce0_local;
assign training_targets_38_address0 = zext_ln67_fu_1414_p1;
assign training_targets_38_ce0 = training_targets_38_ce0_local;
assign training_targets_39_address0 = zext_ln67_fu_1414_p1;
assign training_targets_39_ce0 = training_targets_39_ce0_local;
assign training_targets_3_address0 = zext_ln67_fu_1414_p1;
assign training_targets_3_ce0 = training_targets_3_ce0_local;
assign training_targets_40_address0 = zext_ln67_fu_1414_p1;
assign training_targets_40_ce0 = training_targets_40_ce0_local;
assign training_targets_41_address0 = zext_ln67_fu_1414_p1;
assign training_targets_41_ce0 = training_targets_41_ce0_local;
assign training_targets_42_address0 = zext_ln67_fu_1414_p1;
assign training_targets_42_ce0 = training_targets_42_ce0_local;
assign training_targets_43_address0 = zext_ln67_fu_1414_p1;
assign training_targets_43_ce0 = training_targets_43_ce0_local;
assign training_targets_44_address0 = zext_ln67_fu_1414_p1;
assign training_targets_44_ce0 = training_targets_44_ce0_local;
assign training_targets_45_address0 = zext_ln67_fu_1414_p1;
assign training_targets_45_ce0 = training_targets_45_ce0_local;
assign training_targets_46_address0 = zext_ln67_fu_1414_p1;
assign training_targets_46_ce0 = training_targets_46_ce0_local;
assign training_targets_47_address0 = zext_ln67_fu_1414_p1;
assign training_targets_47_ce0 = training_targets_47_ce0_local;
assign training_targets_48_address0 = zext_ln67_fu_1414_p1;
assign training_targets_48_ce0 = training_targets_48_ce0_local;
assign training_targets_49_address0 = zext_ln67_fu_1414_p1;
assign training_targets_49_ce0 = training_targets_49_ce0_local;
assign training_targets_4_address0 = zext_ln67_fu_1414_p1;
assign training_targets_4_ce0 = training_targets_4_ce0_local;
assign training_targets_50_address0 = zext_ln67_fu_1414_p1;
assign training_targets_50_ce0 = training_targets_50_ce0_local;
assign training_targets_51_address0 = zext_ln67_fu_1414_p1;
assign training_targets_51_ce0 = training_targets_51_ce0_local;
assign training_targets_52_address0 = zext_ln67_fu_1414_p1;
assign training_targets_52_ce0 = training_targets_52_ce0_local;
assign training_targets_53_address0 = zext_ln67_fu_1414_p1;
assign training_targets_53_ce0 = training_targets_53_ce0_local;
assign training_targets_54_address0 = zext_ln67_fu_1414_p1;
assign training_targets_54_ce0 = training_targets_54_ce0_local;
assign training_targets_55_address0 = zext_ln67_fu_1414_p1;
assign training_targets_55_ce0 = training_targets_55_ce0_local;
assign training_targets_56_address0 = zext_ln67_fu_1414_p1;
assign training_targets_56_ce0 = training_targets_56_ce0_local;
assign training_targets_57_address0 = zext_ln67_fu_1414_p1;
assign training_targets_57_ce0 = training_targets_57_ce0_local;
assign training_targets_58_address0 = zext_ln67_fu_1414_p1;
assign training_targets_58_ce0 = training_targets_58_ce0_local;
assign training_targets_59_address0 = zext_ln67_fu_1414_p1;
assign training_targets_59_ce0 = training_targets_59_ce0_local;
assign training_targets_5_address0 = zext_ln67_fu_1414_p1;
assign training_targets_5_ce0 = training_targets_5_ce0_local;
assign training_targets_60_address0 = zext_ln67_fu_1414_p1;
assign training_targets_60_ce0 = training_targets_60_ce0_local;
assign training_targets_61_address0 = zext_ln67_fu_1414_p1;
assign training_targets_61_ce0 = training_targets_61_ce0_local;
assign training_targets_62_address0 = zext_ln67_fu_1414_p1;
assign training_targets_62_ce0 = training_targets_62_ce0_local;
assign training_targets_63_address0 = zext_ln67_fu_1414_p1;
assign training_targets_63_ce0 = training_targets_63_ce0_local;
assign training_targets_6_address0 = zext_ln67_fu_1414_p1;
assign training_targets_6_ce0 = training_targets_6_ce0_local;
assign training_targets_7_address0 = zext_ln67_fu_1414_p1;
assign training_targets_7_ce0 = training_targets_7_ce0_local;
assign training_targets_8_address0 = zext_ln67_fu_1414_p1;
assign training_targets_8_ce0 = training_targets_8_ce0_local;
assign training_targets_9_address0 = zext_ln67_fu_1414_p1;
assign training_targets_9_ce0 = training_targets_9_ce0_local;
assign trunc_ln67_1_fu_2041_p1 = bitcast_ln67_64_fu_2023_p1[62:0];
assign trunc_ln67_fu_1400_p1 = add_ln67_fu_1394_p2[5:0];
assign xor_ln2_fu_2061_p3 = {{xor_ln67_reg_2544}, {trunc_ln67_1_reg_2549}};
assign xor_ln67_fu_2035_p2 = (bit_sel5_fu_2027_p3 ^ 1'd1);
assign zext_ln66_fu_1390_p1 = ap_sig_allocacmp_i_11;
assign zext_ln67_fu_1414_p1 = lshr_ln_fu_1404_p4;
endmodule 