module backprop_backprop_Pipeline_label_27_label_28 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v12_address0,v12_ce0,v12_q0,v12_1_address0,v12_1_ce0,v12_1_q0,v12_2_address0,v12_2_ce0,v12_2_q0,v12_3_address0,v12_3_ce0,v12_3_q0,v12_4_address0,v12_4_ce0,v12_4_q0,v12_5_address0,v12_5_ce0,v12_5_q0,v12_6_address0,v12_6_ce0,v12_6_q0,v12_7_address0,v12_7_ce0,v12_7_q0,v12_8_address0,v12_8_ce0,v12_8_q0,v12_9_address0,v12_9_ce0,v12_9_q0,v12_10_address0,v12_10_ce0,v12_10_q0,v12_11_address0,v12_11_ce0,v12_11_q0,v12_12_address0,v12_12_ce0,v12_12_q0,v12_13_address0,v12_13_ce0,v12_13_q0,v12_14_address0,v12_14_ce0,v12_14_q0,v12_15_address0,v12_15_ce0,v12_15_q0,v12_16_address0,v12_16_ce0,v12_16_q0,v12_17_address0,v12_17_ce0,v12_17_q0,v12_18_address0,v12_18_ce0,v12_18_q0,v12_19_address0,v12_19_ce0,v12_19_q0,v12_20_address0,v12_20_ce0,v12_20_q0,v12_21_address0,v12_21_ce0,v12_21_q0,v12_22_address0,v12_22_ce0,v12_22_q0,v12_23_address0,v12_23_ce0,v12_23_q0,v12_24_address0,v12_24_ce0,v12_24_q0,v12_25_address0,v12_25_ce0,v12_25_q0,v12_26_address0,v12_26_ce0,v12_26_q0,v12_27_address0,v12_27_ce0,v12_27_q0,v12_28_address0,v12_28_ce0,v12_28_q0,v12_29_address0,v12_29_ce0,v12_29_q0,v12_30_address0,v12_30_ce0,v12_30_q0,v12_31_address0,v12_31_ce0,v12_31_q0,v12_32_address0,v12_32_ce0,v12_32_q0,v12_33_address0,v12_33_ce0,v12_33_q0,v12_34_address0,v12_34_ce0,v12_34_q0,v12_35_address0,v12_35_ce0,v12_35_q0,v12_36_address0,v12_36_ce0,v12_36_q0,v12_37_address0,v12_37_ce0,v12_37_q0,v12_38_address0,v12_38_ce0,v12_38_q0,v12_39_address0,v12_39_ce0,v12_39_q0,v12_40_address0,v12_40_ce0,v12_40_q0,v12_41_address0,v12_41_ce0,v12_41_q0,v12_42_address0,v12_42_ce0,v12_42_q0,v12_43_address0,v12_43_ce0,v12_43_q0,v12_44_address0,v12_44_ce0,v12_44_q0,v12_45_address0,v12_45_ce0,v12_45_q0,v12_46_address0,v12_46_ce0,v12_46_q0,v12_47_address0,v12_47_ce0,v12_47_q0,v12_48_address0,v12_48_ce0,v12_48_q0,v12_49_address0,v12_49_ce0,v12_49_q0,v12_50_address0,v12_50_ce0,v12_50_q0,v12_51_address0,v12_51_ce0,v12_51_q0,v12_52_address0,v12_52_ce0,v12_52_q0,v12_53_address0,v12_53_ce0,v12_53_q0,v12_54_address0,v12_54_ce0,v12_54_q0,v12_55_address0,v12_55_ce0,v12_55_q0,v12_56_address0,v12_56_ce0,v12_56_q0,v12_57_address0,v12_57_ce0,v12_57_q0,v12_58_address0,v12_58_ce0,v12_58_q0,v12_59_address0,v12_59_ce0,v12_59_q0,v12_60_address0,v12_60_ce0,v12_60_q0,v12_61_address0,v12_61_ce0,v12_61_q0,v12_62_address0,v12_62_ce0,v12_62_q0,v12_63_address0,v12_63_ce0,v12_63_q0,v0_7_address0,v0_7_ce0,v0_7_we0,v0_7_d0,v0_7_q0,v0_6_address0,v0_6_ce0,v0_6_we0,v0_6_d0,v0_6_q0,v0_5_address0,v0_5_ce0,v0_5_we0,v0_5_d0,v0_5_q0,v0_4_address0,v0_4_ce0,v0_4_we0,v0_4_d0,v0_4_q0,v0_3_address0,v0_3_ce0,v0_3_we0,v0_3_d0,v0_3_q0,v0_2_address0,v0_2_ce0,v0_2_we0,v0_2_d0,v0_2_q0,v0_1_address0,v0_1_ce0,v0_1_we0,v0_1_d0,v0_1_q0,v0_0_address0,v0_0_ce0,v0_0_we0,v0_0_d0,v0_0_q0,v150_out,v150_out_ap_vld,grp_fu_7886_p_din0,grp_fu_7886_p_din1,grp_fu_7886_p_opcode,grp_fu_7886_p_dout0,grp_fu_7886_p_ce,grp_fu_7898_p_din0,grp_fu_7898_p_din1,grp_fu_7898_p_dout0,grp_fu_7898_p_ce); 
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
output  [3:0] v12_address0;
output   v12_ce0;
input  [63:0] v12_q0;
output  [3:0] v12_1_address0;
output   v12_1_ce0;
input  [63:0] v12_1_q0;
output  [3:0] v12_2_address0;
output   v12_2_ce0;
input  [63:0] v12_2_q0;
output  [3:0] v12_3_address0;
output   v12_3_ce0;
input  [63:0] v12_3_q0;
output  [3:0] v12_4_address0;
output   v12_4_ce0;
input  [63:0] v12_4_q0;
output  [3:0] v12_5_address0;
output   v12_5_ce0;
input  [63:0] v12_5_q0;
output  [3:0] v12_6_address0;
output   v12_6_ce0;
input  [63:0] v12_6_q0;
output  [3:0] v12_7_address0;
output   v12_7_ce0;
input  [63:0] v12_7_q0;
output  [3:0] v12_8_address0;
output   v12_8_ce0;
input  [63:0] v12_8_q0;
output  [3:0] v12_9_address0;
output   v12_9_ce0;
input  [63:0] v12_9_q0;
output  [3:0] v12_10_address0;
output   v12_10_ce0;
input  [63:0] v12_10_q0;
output  [3:0] v12_11_address0;
output   v12_11_ce0;
input  [63:0] v12_11_q0;
output  [3:0] v12_12_address0;
output   v12_12_ce0;
input  [63:0] v12_12_q0;
output  [3:0] v12_13_address0;
output   v12_13_ce0;
input  [63:0] v12_13_q0;
output  [3:0] v12_14_address0;
output   v12_14_ce0;
input  [63:0] v12_14_q0;
output  [3:0] v12_15_address0;
output   v12_15_ce0;
input  [63:0] v12_15_q0;
output  [3:0] v12_16_address0;
output   v12_16_ce0;
input  [63:0] v12_16_q0;
output  [3:0] v12_17_address0;
output   v12_17_ce0;
input  [63:0] v12_17_q0;
output  [3:0] v12_18_address0;
output   v12_18_ce0;
input  [63:0] v12_18_q0;
output  [3:0] v12_19_address0;
output   v12_19_ce0;
input  [63:0] v12_19_q0;
output  [3:0] v12_20_address0;
output   v12_20_ce0;
input  [63:0] v12_20_q0;
output  [3:0] v12_21_address0;
output   v12_21_ce0;
input  [63:0] v12_21_q0;
output  [3:0] v12_22_address0;
output   v12_22_ce0;
input  [63:0] v12_22_q0;
output  [3:0] v12_23_address0;
output   v12_23_ce0;
input  [63:0] v12_23_q0;
output  [3:0] v12_24_address0;
output   v12_24_ce0;
input  [63:0] v12_24_q0;
output  [3:0] v12_25_address0;
output   v12_25_ce0;
input  [63:0] v12_25_q0;
output  [3:0] v12_26_address0;
output   v12_26_ce0;
input  [63:0] v12_26_q0;
output  [3:0] v12_27_address0;
output   v12_27_ce0;
input  [63:0] v12_27_q0;
output  [3:0] v12_28_address0;
output   v12_28_ce0;
input  [63:0] v12_28_q0;
output  [3:0] v12_29_address0;
output   v12_29_ce0;
input  [63:0] v12_29_q0;
output  [3:0] v12_30_address0;
output   v12_30_ce0;
input  [63:0] v12_30_q0;
output  [3:0] v12_31_address0;
output   v12_31_ce0;
input  [63:0] v12_31_q0;
output  [3:0] v12_32_address0;
output   v12_32_ce0;
input  [63:0] v12_32_q0;
output  [3:0] v12_33_address0;
output   v12_33_ce0;
input  [63:0] v12_33_q0;
output  [3:0] v12_34_address0;
output   v12_34_ce0;
input  [63:0] v12_34_q0;
output  [3:0] v12_35_address0;
output   v12_35_ce0;
input  [63:0] v12_35_q0;
output  [3:0] v12_36_address0;
output   v12_36_ce0;
input  [63:0] v12_36_q0;
output  [3:0] v12_37_address0;
output   v12_37_ce0;
input  [63:0] v12_37_q0;
output  [3:0] v12_38_address0;
output   v12_38_ce0;
input  [63:0] v12_38_q0;
output  [3:0] v12_39_address0;
output   v12_39_ce0;
input  [63:0] v12_39_q0;
output  [3:0] v12_40_address0;
output   v12_40_ce0;
input  [63:0] v12_40_q0;
output  [3:0] v12_41_address0;
output   v12_41_ce0;
input  [63:0] v12_41_q0;
output  [3:0] v12_42_address0;
output   v12_42_ce0;
input  [63:0] v12_42_q0;
output  [3:0] v12_43_address0;
output   v12_43_ce0;
input  [63:0] v12_43_q0;
output  [3:0] v12_44_address0;
output   v12_44_ce0;
input  [63:0] v12_44_q0;
output  [3:0] v12_45_address0;
output   v12_45_ce0;
input  [63:0] v12_45_q0;
output  [3:0] v12_46_address0;
output   v12_46_ce0;
input  [63:0] v12_46_q0;
output  [3:0] v12_47_address0;
output   v12_47_ce0;
input  [63:0] v12_47_q0;
output  [3:0] v12_48_address0;
output   v12_48_ce0;
input  [63:0] v12_48_q0;
output  [3:0] v12_49_address0;
output   v12_49_ce0;
input  [63:0] v12_49_q0;
output  [3:0] v12_50_address0;
output   v12_50_ce0;
input  [63:0] v12_50_q0;
output  [3:0] v12_51_address0;
output   v12_51_ce0;
input  [63:0] v12_51_q0;
output  [3:0] v12_52_address0;
output   v12_52_ce0;
input  [63:0] v12_52_q0;
output  [3:0] v12_53_address0;
output   v12_53_ce0;
input  [63:0] v12_53_q0;
output  [3:0] v12_54_address0;
output   v12_54_ce0;
input  [63:0] v12_54_q0;
output  [3:0] v12_55_address0;
output   v12_55_ce0;
input  [63:0] v12_55_q0;
output  [3:0] v12_56_address0;
output   v12_56_ce0;
input  [63:0] v12_56_q0;
output  [3:0] v12_57_address0;
output   v12_57_ce0;
input  [63:0] v12_57_q0;
output  [3:0] v12_58_address0;
output   v12_58_ce0;
input  [63:0] v12_58_q0;
output  [3:0] v12_59_address0;
output   v12_59_ce0;
input  [63:0] v12_59_q0;
output  [3:0] v12_60_address0;
output   v12_60_ce0;
input  [63:0] v12_60_q0;
output  [3:0] v12_61_address0;
output   v12_61_ce0;
input  [63:0] v12_61_q0;
output  [3:0] v12_62_address0;
output   v12_62_ce0;
input  [63:0] v12_62_q0;
output  [3:0] v12_63_address0;
output   v12_63_ce0;
input  [63:0] v12_63_q0;
output  [6:0] v0_7_address0;
output   v0_7_ce0;
output   v0_7_we0;
output  [63:0] v0_7_d0;
input  [63:0] v0_7_q0;
output  [6:0] v0_6_address0;
output   v0_6_ce0;
output   v0_6_we0;
output  [63:0] v0_6_d0;
input  [63:0] v0_6_q0;
output  [6:0] v0_5_address0;
output   v0_5_ce0;
output   v0_5_we0;
output  [63:0] v0_5_d0;
input  [63:0] v0_5_q0;
output  [6:0] v0_4_address0;
output   v0_4_ce0;
output   v0_4_we0;
output  [63:0] v0_4_d0;
input  [63:0] v0_4_q0;
output  [6:0] v0_3_address0;
output   v0_3_ce0;
output   v0_3_we0;
output  [63:0] v0_3_d0;
input  [63:0] v0_3_q0;
output  [6:0] v0_2_address0;
output   v0_2_ce0;
output   v0_2_we0;
output  [63:0] v0_2_d0;
input  [63:0] v0_2_q0;
output  [6:0] v0_1_address0;
output   v0_1_ce0;
output   v0_1_we0;
output  [63:0] v0_1_d0;
input  [63:0] v0_1_q0;
output  [6:0] v0_0_address0;
output   v0_0_ce0;
output   v0_0_we0;
output  [63:0] v0_0_d0;
input  [63:0] v0_0_q0;
output  [63:0] v150_out;
output   v150_out_ap_vld;
output  [63:0] grp_fu_7886_p_din0;
output  [63:0] grp_fu_7886_p_din1;
output  [1:0] grp_fu_7886_p_opcode;
input  [63:0] grp_fu_7886_p_dout0;
output   grp_fu_7886_p_ce;
output  [63:0] grp_fu_7898_p_din0;
output  [63:0] grp_fu_7898_p_din1;
input  [63:0] grp_fu_7898_p_dout0;
output   grp_fu_7898_p_ce;
reg ap_idle;
reg v150_out_ap_vld;
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
reg   [0:0] icmp_ln243_reg_1906;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln243_fu_1341_p2;
reg   [0:0] icmp_ln243_reg_1906_pp0_iter1_reg;
reg   [0:0] icmp_ln243_reg_1906_pp0_iter2_reg;
reg   [0:0] icmp_ln243_reg_1906_pp0_iter3_reg;
wire   [9:0] add_ln243_fu_1347_p2;
reg   [9:0] add_ln243_reg_1910;
wire   [6:0] select_ln244_fu_1365_p3;
reg   [6:0] select_ln244_reg_1915;
wire   [3:0] select_ln243_fu_1379_p3;
reg   [3:0] select_ln243_reg_1920;
wire   [5:0] trunc_ln247_fu_1455_p1;
reg   [5:0] trunc_ln247_reg_2246;
wire   [2:0] trunc_ln247_1_fu_1459_p1;
reg   [2:0] trunc_ln247_1_reg_2251;
reg   [2:0] trunc_ln247_1_reg_2251_pp0_iter1_reg;
reg   [2:0] trunc_ln247_1_reg_2251_pp0_iter2_reg;
reg   [3:0] lshr_ln4_reg_2256;
wire   [63:0] v151_fu_1501_p131;
reg   [63:0] v151_reg_2261;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] v0_0_addr_reg_2266;
reg   [6:0] v0_0_addr_reg_2266_pp0_iter1_reg;
reg   [6:0] v0_0_addr_reg_2266_pp0_iter2_reg;
reg   [6:0] v0_1_addr_reg_2271;
reg   [6:0] v0_1_addr_reg_2271_pp0_iter1_reg;
reg   [6:0] v0_1_addr_reg_2271_pp0_iter2_reg;
reg   [6:0] v0_2_addr_reg_2276;
reg   [6:0] v0_2_addr_reg_2276_pp0_iter1_reg;
reg   [6:0] v0_2_addr_reg_2276_pp0_iter2_reg;
reg   [6:0] v0_3_addr_reg_2281;
reg   [6:0] v0_3_addr_reg_2281_pp0_iter1_reg;
reg   [6:0] v0_3_addr_reg_2281_pp0_iter2_reg;
reg   [6:0] v0_4_addr_reg_2286;
reg   [6:0] v0_4_addr_reg_2286_pp0_iter1_reg;
reg   [6:0] v0_4_addr_reg_2286_pp0_iter2_reg;
reg   [6:0] v0_5_addr_reg_2291;
reg   [6:0] v0_5_addr_reg_2291_pp0_iter1_reg;
reg   [6:0] v0_5_addr_reg_2291_pp0_iter2_reg;
reg   [6:0] v0_6_addr_reg_2296;
reg   [6:0] v0_6_addr_reg_2296_pp0_iter1_reg;
reg   [6:0] v0_6_addr_reg_2296_pp0_iter2_reg;
reg   [6:0] v0_7_addr_reg_2301;
reg   [6:0] v0_7_addr_reg_2301_pp0_iter1_reg;
reg   [6:0] v0_7_addr_reg_2301_pp0_iter2_reg;
wire   [63:0] v153_fu_1814_p19;
reg   [63:0] v153_reg_2306;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] v152_reg_2311;
reg   [63:0] v154_reg_2316;
reg   [63:0] v155_reg_2323;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln243_fu_1387_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln249_fu_1489_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] v148_fu_350;
reg   [63:0] ap_sig_allocacmp_v148_load_1;
wire    ap_block_pp0_stage3;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage3;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v149_fu_354;
wire   [6:0] add_ln247_fu_1764_p2;
reg   [6:0] ap_sig_allocacmp_v149_load;
reg   [3:0] v146_fu_358;
reg   [3:0] ap_sig_allocacmp_v146_load;
reg   [9:0] indvar_flatten26_fu_362;
reg   [9:0] ap_sig_allocacmp_indvar_flatten26_load;
wire    ap_block_pp0_stage3_01001;
reg    v12_ce0_local;
reg    v12_1_ce0_local;
reg    v12_2_ce0_local;
reg    v12_3_ce0_local;
reg    v12_4_ce0_local;
reg    v12_5_ce0_local;
reg    v12_6_ce0_local;
reg    v12_7_ce0_local;
reg    v12_8_ce0_local;
reg    v12_9_ce0_local;
reg    v12_10_ce0_local;
reg    v12_11_ce0_local;
reg    v12_12_ce0_local;
reg    v12_13_ce0_local;
reg    v12_14_ce0_local;
reg    v12_15_ce0_local;
reg    v12_16_ce0_local;
reg    v12_17_ce0_local;
reg    v12_18_ce0_local;
reg    v12_19_ce0_local;
reg    v12_20_ce0_local;
reg    v12_21_ce0_local;
reg    v12_22_ce0_local;
reg    v12_23_ce0_local;
reg    v12_24_ce0_local;
reg    v12_25_ce0_local;
reg    v12_26_ce0_local;
reg    v12_27_ce0_local;
reg    v12_28_ce0_local;
reg    v12_29_ce0_local;
reg    v12_30_ce0_local;
reg    v12_31_ce0_local;
reg    v12_32_ce0_local;
reg    v12_33_ce0_local;
reg    v12_34_ce0_local;
reg    v12_35_ce0_local;
reg    v12_36_ce0_local;
reg    v12_37_ce0_local;
reg    v12_38_ce0_local;
reg    v12_39_ce0_local;
reg    v12_40_ce0_local;
reg    v12_41_ce0_local;
reg    v12_42_ce0_local;
reg    v12_43_ce0_local;
reg    v12_44_ce0_local;
reg    v12_45_ce0_local;
reg    v12_46_ce0_local;
reg    v12_47_ce0_local;
reg    v12_48_ce0_local;
reg    v12_49_ce0_local;
reg    v12_50_ce0_local;
reg    v12_51_ce0_local;
reg    v12_52_ce0_local;
reg    v12_53_ce0_local;
reg    v12_54_ce0_local;
reg    v12_55_ce0_local;
reg    v12_56_ce0_local;
reg    v12_57_ce0_local;
reg    v12_58_ce0_local;
reg    v12_59_ce0_local;
reg    v12_60_ce0_local;
reg    v12_61_ce0_local;
reg    v12_62_ce0_local;
reg    v12_63_ce0_local;
reg    v0_0_ce0_local;
reg   [6:0] v0_0_address0_local;
reg    v0_0_we0_local;
wire   [63:0] bitcast_ln253_fu_1853_p1;
reg    v0_1_ce0_local;
reg   [6:0] v0_1_address0_local;
reg    v0_1_we0_local;
reg    v0_2_ce0_local;
reg   [6:0] v0_2_address0_local;
reg    v0_2_we0_local;
reg    v0_3_ce0_local;
reg   [6:0] v0_3_address0_local;
reg    v0_3_we0_local;
reg    v0_4_ce0_local;
reg   [6:0] v0_4_address0_local;
reg    v0_4_we0_local;
reg    v0_5_ce0_local;
reg   [6:0] v0_5_address0_local;
reg    v0_5_we0_local;
reg    v0_6_ce0_local;
reg   [6:0] v0_6_address0_local;
reg    v0_6_we0_local;
reg    v0_7_ce0_local;
reg   [6:0] v0_7_address0_local;
reg    v0_7_we0_local;
reg   [63:0] grp_fu_1309_p0;
reg   [63:0] grp_fu_1309_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_1313_p0;
reg   [63:0] grp_fu_1313_p1;
wire   [0:0] icmp_ln247_fu_1359_p2;
wire   [3:0] add_ln243_1_fu_1373_p2;
wire   [6:0] zext_ln249_1_fu_1480_p1;
wire   [6:0] p_udiv_fu_1473_p3;
wire   [6:0] add_ln249_fu_1483_p2;
wire   [63:0] v151_fu_1501_p129;
wire   [63:0] v153_fu_1814_p2;
wire   [63:0] v153_fu_1814_p4;
wire   [63:0] v153_fu_1814_p6;
wire   [63:0] v153_fu_1814_p8;
wire   [63:0] v153_fu_1814_p10;
wire   [63:0] v153_fu_1814_p12;
wire   [63:0] v153_fu_1814_p14;
wire   [63:0] v153_fu_1814_p16;
wire   [63:0] v153_fu_1814_p17;
reg   [1:0] grp_fu_1309_opcode;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] v151_fu_1501_p1;
wire   [5:0] v151_fu_1501_p3;
wire   [5:0] v151_fu_1501_p5;
wire   [5:0] v151_fu_1501_p7;
wire   [5:0] v151_fu_1501_p9;
wire   [5:0] v151_fu_1501_p11;
wire   [5:0] v151_fu_1501_p13;
wire   [5:0] v151_fu_1501_p15;
wire   [5:0] v151_fu_1501_p17;
wire   [5:0] v151_fu_1501_p19;
wire   [5:0] v151_fu_1501_p21;
wire   [5:0] v151_fu_1501_p23;
wire   [5:0] v151_fu_1501_p25;
wire   [5:0] v151_fu_1501_p27;
wire   [5:0] v151_fu_1501_p29;
wire   [5:0] v151_fu_1501_p31;
wire   [5:0] v151_fu_1501_p33;
wire   [5:0] v151_fu_1501_p35;
wire   [5:0] v151_fu_1501_p37;
wire   [5:0] v151_fu_1501_p39;
wire   [5:0] v151_fu_1501_p41;
wire   [5:0] v151_fu_1501_p43;
wire   [5:0] v151_fu_1501_p45;
wire   [5:0] v151_fu_1501_p47;
wire   [5:0] v151_fu_1501_p49;
wire   [5:0] v151_fu_1501_p51;
wire   [5:0] v151_fu_1501_p53;
wire   [5:0] v151_fu_1501_p55;
wire   [5:0] v151_fu_1501_p57;
wire   [5:0] v151_fu_1501_p59;
wire   [5:0] v151_fu_1501_p61;
wire   [5:0] v151_fu_1501_p63;
wire  signed [5:0] v151_fu_1501_p65;
wire  signed [5:0] v151_fu_1501_p67;
wire  signed [5:0] v151_fu_1501_p69;
wire  signed [5:0] v151_fu_1501_p71;
wire  signed [5:0] v151_fu_1501_p73;
wire  signed [5:0] v151_fu_1501_p75;
wire  signed [5:0] v151_fu_1501_p77;
wire  signed [5:0] v151_fu_1501_p79;
wire  signed [5:0] v151_fu_1501_p81;
wire  signed [5:0] v151_fu_1501_p83;
wire  signed [5:0] v151_fu_1501_p85;
wire  signed [5:0] v151_fu_1501_p87;
wire  signed [5:0] v151_fu_1501_p89;
wire  signed [5:0] v151_fu_1501_p91;
wire  signed [5:0] v151_fu_1501_p93;
wire  signed [5:0] v151_fu_1501_p95;
wire  signed [5:0] v151_fu_1501_p97;
wire  signed [5:0] v151_fu_1501_p99;
wire  signed [5:0] v151_fu_1501_p101;
wire  signed [5:0] v151_fu_1501_p103;
wire  signed [5:0] v151_fu_1501_p105;
wire  signed [5:0] v151_fu_1501_p107;
wire  signed [5:0] v151_fu_1501_p109;
wire  signed [5:0] v151_fu_1501_p111;
wire  signed [5:0] v151_fu_1501_p113;
wire  signed [5:0] v151_fu_1501_p115;
wire  signed [5:0] v151_fu_1501_p117;
wire  signed [5:0] v151_fu_1501_p119;
wire  signed [5:0] v151_fu_1501_p121;
wire  signed [5:0] v151_fu_1501_p123;
wire  signed [5:0] v151_fu_1501_p125;
wire  signed [5:0] v151_fu_1501_p127;
wire   [2:0] v153_fu_1814_p1;
wire   [2:0] v153_fu_1814_p3;
wire   [2:0] v153_fu_1814_p5;
wire   [2:0] v153_fu_1814_p7;
wire  signed [2:0] v153_fu_1814_p9;
wire  signed [2:0] v153_fu_1814_p11;
wire  signed [2:0] v153_fu_1814_p13;
wire  signed [2:0] v153_fu_1814_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v148_fu_350 = 64'd0;
#0 v149_fu_354 = 7'd0;
#0 v146_fu_358 = 4'd0;
#0 indvar_flatten26_fu_362 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U1542(.din0(v12_q0),.din1(v12_1_q0),.din2(v12_2_q0),.din3(v12_3_q0),.din4(v12_4_q0),.din5(v12_5_q0),.din6(v12_6_q0),.din7(v12_7_q0),.din8(v12_8_q0),.din9(v12_9_q0),.din10(v12_10_q0),.din11(v12_11_q0),.din12(v12_12_q0),.din13(v12_13_q0),.din14(v12_14_q0),.din15(v12_15_q0),.din16(v12_16_q0),.din17(v12_17_q0),.din18(v12_18_q0),.din19(v12_19_q0),.din20(v12_20_q0),.din21(v12_21_q0),.din22(v12_22_q0),.din23(v12_23_q0),.din24(v12_24_q0),.din25(v12_25_q0),.din26(v12_26_q0),.din27(v12_27_q0),.din28(v12_28_q0),.din29(v12_29_q0),.din30(v12_30_q0),.din31(v12_31_q0),.din32(v12_32_q0),.din33(v12_33_q0),.din34(v12_34_q0),.din35(v12_35_q0),.din36(v12_36_q0),.din37(v12_37_q0),.din38(v12_38_q0),.din39(v12_39_q0),.din40(v12_40_q0),.din41(v12_41_q0),.din42(v12_42_q0),.din43(v12_43_q0),.din44(v12_44_q0),.din45(v12_45_q0),.din46(v12_46_q0),.din47(v12_47_q0),.din48(v12_48_q0),.din49(v12_49_q0),.din50(v12_50_q0),.din51(v12_51_q0),.din52(v12_52_q0),.din53(v12_53_q0),.din54(v12_54_q0),.din55(v12_55_q0),.din56(v12_56_q0),.din57(v12_57_q0),.din58(v12_58_q0),.din59(v12_59_q0),.din60(v12_60_q0),.din61(v12_61_q0),.din62(v12_62_q0),.din63(v12_63_q0),.def(v151_fu_1501_p129),.sel(trunc_ln247_reg_2246),.dout(v151_fu_1501_p131));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U1543(.din0(v153_fu_1814_p2),.din1(v153_fu_1814_p4),.din2(v153_fu_1814_p6),.din3(v153_fu_1814_p8),.din4(v153_fu_1814_p10),.din5(v153_fu_1814_p12),.din6(v153_fu_1814_p14),.din7(v153_fu_1814_p16),.def(v153_fu_1814_p17),.sel(trunc_ln247_1_reg_2251),.dout(v153_fu_1814_p19));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten26_fu_362 <= 10'd0;
    end else if (((icmp_ln243_reg_1906 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten26_fu_362 <= add_ln243_reg_1910;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v146_fu_358 <= 4'd0;
    end else if (((icmp_ln243_reg_1906 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v146_fu_358 <= select_ln243_reg_1920;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v148_fu_350 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v148_fu_350 <= grp_fu_7886_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v149_fu_354 <= 7'd0;
    end else if (((icmp_ln243_reg_1906 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v149_fu_354 <= add_ln247_fu_1764_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln243_reg_1910 <= add_ln243_fu_1347_p2;
        icmp_ln243_reg_1906 <= icmp_ln243_fu_1341_p2;
        icmp_ln243_reg_1906_pp0_iter1_reg <= icmp_ln243_reg_1906;
        icmp_ln243_reg_1906_pp0_iter2_reg <= icmp_ln243_reg_1906_pp0_iter1_reg;
        icmp_ln243_reg_1906_pp0_iter3_reg <= icmp_ln243_reg_1906_pp0_iter2_reg;
        lshr_ln4_reg_2256 <= {{select_ln244_fu_1365_p3[6:3]}};
        select_ln243_reg_1920 <= select_ln243_fu_1379_p3;
        select_ln244_reg_1915 <= select_ln244_fu_1365_p3;
        trunc_ln247_1_reg_2251 <= trunc_ln247_1_fu_1459_p1;
        trunc_ln247_1_reg_2251_pp0_iter1_reg <= trunc_ln247_1_reg_2251;
        trunc_ln247_1_reg_2251_pp0_iter2_reg <= trunc_ln247_1_reg_2251_pp0_iter1_reg;
        trunc_ln247_reg_2246 <= trunc_ln247_fu_1455_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_addr_reg_2266 <= zext_ln249_fu_1489_p1;
        v0_0_addr_reg_2266_pp0_iter1_reg <= v0_0_addr_reg_2266;
        v0_0_addr_reg_2266_pp0_iter2_reg <= v0_0_addr_reg_2266_pp0_iter1_reg;
        v0_1_addr_reg_2271 <= zext_ln249_fu_1489_p1;
        v0_1_addr_reg_2271_pp0_iter1_reg <= v0_1_addr_reg_2271;
        v0_1_addr_reg_2271_pp0_iter2_reg <= v0_1_addr_reg_2271_pp0_iter1_reg;
        v0_2_addr_reg_2276 <= zext_ln249_fu_1489_p1;
        v0_2_addr_reg_2276_pp0_iter1_reg <= v0_2_addr_reg_2276;
        v0_2_addr_reg_2276_pp0_iter2_reg <= v0_2_addr_reg_2276_pp0_iter1_reg;
        v0_3_addr_reg_2281 <= zext_ln249_fu_1489_p1;
        v0_3_addr_reg_2281_pp0_iter1_reg <= v0_3_addr_reg_2281;
        v0_3_addr_reg_2281_pp0_iter2_reg <= v0_3_addr_reg_2281_pp0_iter1_reg;
        v0_4_addr_reg_2286 <= zext_ln249_fu_1489_p1;
        v0_4_addr_reg_2286_pp0_iter1_reg <= v0_4_addr_reg_2286;
        v0_4_addr_reg_2286_pp0_iter2_reg <= v0_4_addr_reg_2286_pp0_iter1_reg;
        v0_5_addr_reg_2291 <= zext_ln249_fu_1489_p1;
        v0_5_addr_reg_2291_pp0_iter1_reg <= v0_5_addr_reg_2291;
        v0_5_addr_reg_2291_pp0_iter2_reg <= v0_5_addr_reg_2291_pp0_iter1_reg;
        v0_6_addr_reg_2296 <= zext_ln249_fu_1489_p1;
        v0_6_addr_reg_2296_pp0_iter1_reg <= v0_6_addr_reg_2296;
        v0_6_addr_reg_2296_pp0_iter2_reg <= v0_6_addr_reg_2296_pp0_iter1_reg;
        v0_7_addr_reg_2301 <= zext_ln249_fu_1489_p1;
        v0_7_addr_reg_2301_pp0_iter1_reg <= v0_7_addr_reg_2301;
        v0_7_addr_reg_2301_pp0_iter2_reg <= v0_7_addr_reg_2301_pp0_iter1_reg;
        v151_reg_2261 <= v151_fu_1501_p131;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v152_reg_2311 <= grp_fu_7898_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v153_reg_2306 <= v153_fu_1814_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v154_reg_2316 <= grp_fu_7886_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v155_reg_2323 <= grp_fu_7898_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln243_reg_1906 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln243_reg_1906_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_indvar_flatten26_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten26_load = indvar_flatten26_fu_362;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v146_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v146_load = v146_fu_358;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_sig_allocacmp_v148_load_1 = grp_fu_7886_p_dout0;
    end else begin
        ap_sig_allocacmp_v148_load_1 = v148_fu_350;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v149_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v149_load = v149_fu_354;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1309_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1309_opcode = 2'd0;
    end else begin
        grp_fu_1309_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1309_p0 = ap_sig_allocacmp_v148_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1309_p0 = v153_reg_2306;
    end else begin
        grp_fu_1309_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1309_p1 = v155_reg_2323;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1309_p1 = v152_reg_2311;
    end else begin
        grp_fu_1309_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1313_p0 = v154_reg_2316;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1313_p0 = v151_reg_2261;
    end else begin
        grp_fu_1313_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1313_p1 = v154_reg_2316;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1313_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1313_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = v0_0_addr_reg_2266_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln249_fu_1489_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln247_1_reg_2251_pp0_iter2_reg == 3'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_we0_local = 1'b1;
    end else begin
        v0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = v0_1_addr_reg_2271_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln249_fu_1489_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln247_1_reg_2251_pp0_iter2_reg == 3'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_we0_local = 1'b1;
    end else begin
        v0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address0_local = v0_2_addr_reg_2276_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address0_local = zext_ln249_fu_1489_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln247_1_reg_2251_pp0_iter2_reg == 3'd2) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_we0_local = 1'b1;
    end else begin
        v0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address0_local = v0_3_addr_reg_2281_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address0_local = zext_ln249_fu_1489_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln247_1_reg_2251_pp0_iter2_reg == 3'd3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_we0_local = 1'b1;
    end else begin
        v0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_4_address0_local = v0_4_addr_reg_2286_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_4_address0_local = zext_ln249_fu_1489_p1;
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln247_1_reg_2251_pp0_iter2_reg == 3'd4) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_4_we0_local = 1'b1;
    end else begin
        v0_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_5_address0_local = v0_5_addr_reg_2291_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_5_address0_local = zext_ln249_fu_1489_p1;
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln247_1_reg_2251_pp0_iter2_reg == 3'd5) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_5_we0_local = 1'b1;
    end else begin
        v0_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_6_address0_local = v0_6_addr_reg_2296_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_6_address0_local = zext_ln249_fu_1489_p1;
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln247_1_reg_2251_pp0_iter2_reg == 3'd6) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_6_we0_local = 1'b1;
    end else begin
        v0_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_7_address0_local = v0_7_addr_reg_2301_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_7_address0_local = zext_ln249_fu_1489_p1;
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln247_1_reg_2251_pp0_iter2_reg == 3'd7) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_7_we0_local = 1'b1;
    end else begin
        v0_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_10_ce0_local = 1'b1;
    end else begin
        v12_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_11_ce0_local = 1'b1;
    end else begin
        v12_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_12_ce0_local = 1'b1;
    end else begin
        v12_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_13_ce0_local = 1'b1;
    end else begin
        v12_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_14_ce0_local = 1'b1;
    end else begin
        v12_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_15_ce0_local = 1'b1;
    end else begin
        v12_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_16_ce0_local = 1'b1;
    end else begin
        v12_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_17_ce0_local = 1'b1;
    end else begin
        v12_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_18_ce0_local = 1'b1;
    end else begin
        v12_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_19_ce0_local = 1'b1;
    end else begin
        v12_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_1_ce0_local = 1'b1;
    end else begin
        v12_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_20_ce0_local = 1'b1;
    end else begin
        v12_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_21_ce0_local = 1'b1;
    end else begin
        v12_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_22_ce0_local = 1'b1;
    end else begin
        v12_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_23_ce0_local = 1'b1;
    end else begin
        v12_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_24_ce0_local = 1'b1;
    end else begin
        v12_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_25_ce0_local = 1'b1;
    end else begin
        v12_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_26_ce0_local = 1'b1;
    end else begin
        v12_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_27_ce0_local = 1'b1;
    end else begin
        v12_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_28_ce0_local = 1'b1;
    end else begin
        v12_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_29_ce0_local = 1'b1;
    end else begin
        v12_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_2_ce0_local = 1'b1;
    end else begin
        v12_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_30_ce0_local = 1'b1;
    end else begin
        v12_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_31_ce0_local = 1'b1;
    end else begin
        v12_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_32_ce0_local = 1'b1;
    end else begin
        v12_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_33_ce0_local = 1'b1;
    end else begin
        v12_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_34_ce0_local = 1'b1;
    end else begin
        v12_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_35_ce0_local = 1'b1;
    end else begin
        v12_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_36_ce0_local = 1'b1;
    end else begin
        v12_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_37_ce0_local = 1'b1;
    end else begin
        v12_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_38_ce0_local = 1'b1;
    end else begin
        v12_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_39_ce0_local = 1'b1;
    end else begin
        v12_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_3_ce0_local = 1'b1;
    end else begin
        v12_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_40_ce0_local = 1'b1;
    end else begin
        v12_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_41_ce0_local = 1'b1;
    end else begin
        v12_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_42_ce0_local = 1'b1;
    end else begin
        v12_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_43_ce0_local = 1'b1;
    end else begin
        v12_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_44_ce0_local = 1'b1;
    end else begin
        v12_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_45_ce0_local = 1'b1;
    end else begin
        v12_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_46_ce0_local = 1'b1;
    end else begin
        v12_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_47_ce0_local = 1'b1;
    end else begin
        v12_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_48_ce0_local = 1'b1;
    end else begin
        v12_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_49_ce0_local = 1'b1;
    end else begin
        v12_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_4_ce0_local = 1'b1;
    end else begin
        v12_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_50_ce0_local = 1'b1;
    end else begin
        v12_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_51_ce0_local = 1'b1;
    end else begin
        v12_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_52_ce0_local = 1'b1;
    end else begin
        v12_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_53_ce0_local = 1'b1;
    end else begin
        v12_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_54_ce0_local = 1'b1;
    end else begin
        v12_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_55_ce0_local = 1'b1;
    end else begin
        v12_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_56_ce0_local = 1'b1;
    end else begin
        v12_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_57_ce0_local = 1'b1;
    end else begin
        v12_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_58_ce0_local = 1'b1;
    end else begin
        v12_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_59_ce0_local = 1'b1;
    end else begin
        v12_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_5_ce0_local = 1'b1;
    end else begin
        v12_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_60_ce0_local = 1'b1;
    end else begin
        v12_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_61_ce0_local = 1'b1;
    end else begin
        v12_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_62_ce0_local = 1'b1;
    end else begin
        v12_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_63_ce0_local = 1'b1;
    end else begin
        v12_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_6_ce0_local = 1'b1;
    end else begin
        v12_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_7_ce0_local = 1'b1;
    end else begin
        v12_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_8_ce0_local = 1'b1;
    end else begin
        v12_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_9_ce0_local = 1'b1;
    end else begin
        v12_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_ce0_local = 1'b1;
    end else begin
        v12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln243_reg_1906_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v150_out_ap_vld = 1'b1;
    end else begin
        v150_out_ap_vld = 1'b0;
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
assign add_ln243_1_fu_1373_p2 = (ap_sig_allocacmp_v146_load + 4'd1);
assign add_ln243_fu_1347_p2 = (ap_sig_allocacmp_indvar_flatten26_load + 10'd1);
assign add_ln247_fu_1764_p2 = (select_ln244_reg_1915 + 7'd1);
assign add_ln249_fu_1483_p2 = (zext_ln249_1_fu_1480_p1 + p_udiv_fu_1473_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln253_fu_1853_p1 = v154_reg_2316;
assign grp_fu_7886_p_ce = 1'b1;
assign grp_fu_7886_p_din0 = grp_fu_1309_p0;
assign grp_fu_7886_p_din1 = grp_fu_1309_p1;
assign grp_fu_7886_p_opcode = grp_fu_1309_opcode;
assign grp_fu_7898_p_ce = 1'b1;
assign grp_fu_7898_p_din0 = grp_fu_1313_p0;
assign grp_fu_7898_p_din1 = grp_fu_1313_p1;
assign icmp_ln243_fu_1341_p2 = ((ap_sig_allocacmp_indvar_flatten26_load == 10'd832) ? 1'b1 : 1'b0);
assign icmp_ln247_fu_1359_p2 = ((ap_sig_allocacmp_v149_load == 7'd64) ? 1'b1 : 1'b0);
assign p_udiv_fu_1473_p3 = {{select_ln243_reg_1920}, {3'd0}};
assign select_ln243_fu_1379_p3 = ((icmp_ln247_fu_1359_p2[0:0] == 1'b1) ? add_ln243_1_fu_1373_p2 : ap_sig_allocacmp_v146_load);
assign select_ln244_fu_1365_p3 = ((icmp_ln247_fu_1359_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v149_load);
assign trunc_ln247_1_fu_1459_p1 = select_ln244_fu_1365_p3[2:0];
assign trunc_ln247_fu_1455_p1 = select_ln244_fu_1365_p3[5:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_d0 = bitcast_ln253_fu_1853_p1;
assign v0_0_we0 = v0_0_we0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_d0 = bitcast_ln253_fu_1853_p1;
assign v0_1_we0 = v0_1_we0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_d0 = bitcast_ln253_fu_1853_p1;
assign v0_2_we0 = v0_2_we0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_d0 = bitcast_ln253_fu_1853_p1;
assign v0_3_we0 = v0_3_we0_local;
assign v0_4_address0 = v0_4_address0_local;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_4_d0 = bitcast_ln253_fu_1853_p1;
assign v0_4_we0 = v0_4_we0_local;
assign v0_5_address0 = v0_5_address0_local;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_5_d0 = bitcast_ln253_fu_1853_p1;
assign v0_5_we0 = v0_5_we0_local;
assign v0_6_address0 = v0_6_address0_local;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_6_d0 = bitcast_ln253_fu_1853_p1;
assign v0_6_we0 = v0_6_we0_local;
assign v0_7_address0 = v0_7_address0_local;
assign v0_7_ce0 = v0_7_ce0_local;
assign v0_7_d0 = bitcast_ln253_fu_1853_p1;
assign v0_7_we0 = v0_7_we0_local;
assign v12_10_address0 = zext_ln243_fu_1387_p1;
assign v12_10_ce0 = v12_10_ce0_local;
assign v12_11_address0 = zext_ln243_fu_1387_p1;
assign v12_11_ce0 = v12_11_ce0_local;
assign v12_12_address0 = zext_ln243_fu_1387_p1;
assign v12_12_ce0 = v12_12_ce0_local;
assign v12_13_address0 = zext_ln243_fu_1387_p1;
assign v12_13_ce0 = v12_13_ce0_local;
assign v12_14_address0 = zext_ln243_fu_1387_p1;
assign v12_14_ce0 = v12_14_ce0_local;
assign v12_15_address0 = zext_ln243_fu_1387_p1;
assign v12_15_ce0 = v12_15_ce0_local;
assign v12_16_address0 = zext_ln243_fu_1387_p1;
assign v12_16_ce0 = v12_16_ce0_local;
assign v12_17_address0 = zext_ln243_fu_1387_p1;
assign v12_17_ce0 = v12_17_ce0_local;
assign v12_18_address0 = zext_ln243_fu_1387_p1;
assign v12_18_ce0 = v12_18_ce0_local;
assign v12_19_address0 = zext_ln243_fu_1387_p1;
assign v12_19_ce0 = v12_19_ce0_local;
assign v12_1_address0 = zext_ln243_fu_1387_p1;
assign v12_1_ce0 = v12_1_ce0_local;
assign v12_20_address0 = zext_ln243_fu_1387_p1;
assign v12_20_ce0 = v12_20_ce0_local;
assign v12_21_address0 = zext_ln243_fu_1387_p1;
assign v12_21_ce0 = v12_21_ce0_local;
assign v12_22_address0 = zext_ln243_fu_1387_p1;
assign v12_22_ce0 = v12_22_ce0_local;
assign v12_23_address0 = zext_ln243_fu_1387_p1;
assign v12_23_ce0 = v12_23_ce0_local;
assign v12_24_address0 = zext_ln243_fu_1387_p1;
assign v12_24_ce0 = v12_24_ce0_local;
assign v12_25_address0 = zext_ln243_fu_1387_p1;
assign v12_25_ce0 = v12_25_ce0_local;
assign v12_26_address0 = zext_ln243_fu_1387_p1;
assign v12_26_ce0 = v12_26_ce0_local;
assign v12_27_address0 = zext_ln243_fu_1387_p1;
assign v12_27_ce0 = v12_27_ce0_local;
assign v12_28_address0 = zext_ln243_fu_1387_p1;
assign v12_28_ce0 = v12_28_ce0_local;
assign v12_29_address0 = zext_ln243_fu_1387_p1;
assign v12_29_ce0 = v12_29_ce0_local;
assign v12_2_address0 = zext_ln243_fu_1387_p1;
assign v12_2_ce0 = v12_2_ce0_local;
assign v12_30_address0 = zext_ln243_fu_1387_p1;
assign v12_30_ce0 = v12_30_ce0_local;
assign v12_31_address0 = zext_ln243_fu_1387_p1;
assign v12_31_ce0 = v12_31_ce0_local;
assign v12_32_address0 = zext_ln243_fu_1387_p1;
assign v12_32_ce0 = v12_32_ce0_local;
assign v12_33_address0 = zext_ln243_fu_1387_p1;
assign v12_33_ce0 = v12_33_ce0_local;
assign v12_34_address0 = zext_ln243_fu_1387_p1;
assign v12_34_ce0 = v12_34_ce0_local;
assign v12_35_address0 = zext_ln243_fu_1387_p1;
assign v12_35_ce0 = v12_35_ce0_local;
assign v12_36_address0 = zext_ln243_fu_1387_p1;
assign v12_36_ce0 = v12_36_ce0_local;
assign v12_37_address0 = zext_ln243_fu_1387_p1;
assign v12_37_ce0 = v12_37_ce0_local;
assign v12_38_address0 = zext_ln243_fu_1387_p1;
assign v12_38_ce0 = v12_38_ce0_local;
assign v12_39_address0 = zext_ln243_fu_1387_p1;
assign v12_39_ce0 = v12_39_ce0_local;
assign v12_3_address0 = zext_ln243_fu_1387_p1;
assign v12_3_ce0 = v12_3_ce0_local;
assign v12_40_address0 = zext_ln243_fu_1387_p1;
assign v12_40_ce0 = v12_40_ce0_local;
assign v12_41_address0 = zext_ln243_fu_1387_p1;
assign v12_41_ce0 = v12_41_ce0_local;
assign v12_42_address0 = zext_ln243_fu_1387_p1;
assign v12_42_ce0 = v12_42_ce0_local;
assign v12_43_address0 = zext_ln243_fu_1387_p1;
assign v12_43_ce0 = v12_43_ce0_local;
assign v12_44_address0 = zext_ln243_fu_1387_p1;
assign v12_44_ce0 = v12_44_ce0_local;
assign v12_45_address0 = zext_ln243_fu_1387_p1;
assign v12_45_ce0 = v12_45_ce0_local;
assign v12_46_address0 = zext_ln243_fu_1387_p1;
assign v12_46_ce0 = v12_46_ce0_local;
assign v12_47_address0 = zext_ln243_fu_1387_p1;
assign v12_47_ce0 = v12_47_ce0_local;
assign v12_48_address0 = zext_ln243_fu_1387_p1;
assign v12_48_ce0 = v12_48_ce0_local;
assign v12_49_address0 = zext_ln243_fu_1387_p1;
assign v12_49_ce0 = v12_49_ce0_local;
assign v12_4_address0 = zext_ln243_fu_1387_p1;
assign v12_4_ce0 = v12_4_ce0_local;
assign v12_50_address0 = zext_ln243_fu_1387_p1;
assign v12_50_ce0 = v12_50_ce0_local;
assign v12_51_address0 = zext_ln243_fu_1387_p1;
assign v12_51_ce0 = v12_51_ce0_local;
assign v12_52_address0 = zext_ln243_fu_1387_p1;
assign v12_52_ce0 = v12_52_ce0_local;
assign v12_53_address0 = zext_ln243_fu_1387_p1;
assign v12_53_ce0 = v12_53_ce0_local;
assign v12_54_address0 = zext_ln243_fu_1387_p1;
assign v12_54_ce0 = v12_54_ce0_local;
assign v12_55_address0 = zext_ln243_fu_1387_p1;
assign v12_55_ce0 = v12_55_ce0_local;
assign v12_56_address0 = zext_ln243_fu_1387_p1;
assign v12_56_ce0 = v12_56_ce0_local;
assign v12_57_address0 = zext_ln243_fu_1387_p1;
assign v12_57_ce0 = v12_57_ce0_local;
assign v12_58_address0 = zext_ln243_fu_1387_p1;
assign v12_58_ce0 = v12_58_ce0_local;
assign v12_59_address0 = zext_ln243_fu_1387_p1;
assign v12_59_ce0 = v12_59_ce0_local;
assign v12_5_address0 = zext_ln243_fu_1387_p1;
assign v12_5_ce0 = v12_5_ce0_local;
assign v12_60_address0 = zext_ln243_fu_1387_p1;
assign v12_60_ce0 = v12_60_ce0_local;
assign v12_61_address0 = zext_ln243_fu_1387_p1;
assign v12_61_ce0 = v12_61_ce0_local;
assign v12_62_address0 = zext_ln243_fu_1387_p1;
assign v12_62_ce0 = v12_62_ce0_local;
assign v12_63_address0 = zext_ln243_fu_1387_p1;
assign v12_63_ce0 = v12_63_ce0_local;
assign v12_6_address0 = zext_ln243_fu_1387_p1;
assign v12_6_ce0 = v12_6_ce0_local;
assign v12_7_address0 = zext_ln243_fu_1387_p1;
assign v12_7_ce0 = v12_7_ce0_local;
assign v12_8_address0 = zext_ln243_fu_1387_p1;
assign v12_8_ce0 = v12_8_ce0_local;
assign v12_9_address0 = zext_ln243_fu_1387_p1;
assign v12_9_ce0 = v12_9_ce0_local;
assign v12_address0 = zext_ln243_fu_1387_p1;
assign v12_ce0 = v12_ce0_local;
assign v150_out = v148_fu_350;
assign v151_fu_1501_p129 = 'bx;
assign v153_fu_1814_p10 = v0_4_q0;
assign v153_fu_1814_p12 = v0_5_q0;
assign v153_fu_1814_p14 = v0_6_q0;
assign v153_fu_1814_p16 = v0_7_q0;
assign v153_fu_1814_p17 = 'bx;
assign v153_fu_1814_p2 = v0_0_q0;
assign v153_fu_1814_p4 = v0_1_q0;
assign v153_fu_1814_p6 = v0_2_q0;
assign v153_fu_1814_p8 = v0_3_q0;
assign zext_ln243_fu_1387_p1 = select_ln243_fu_1379_p3;
assign zext_ln249_1_fu_1480_p1 = lshr_ln4_reg_2256;
assign zext_ln249_fu_1489_p1 = add_ln249_fu_1483_p2;
endmodule 