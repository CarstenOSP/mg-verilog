module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_address0,v137_ce0,v137_q0,v137_address1,v137_ce1,v137_q1,v138_0_address0,v138_0_ce0,v138_0_q0,v138_1_address0,v138_1_ce0,v138_1_q0,v138_2_address0,v138_2_ce0,v138_2_q0,v138_3_address0,v138_3_ce0,v138_3_q0,v138_4_address0,v138_4_ce0,v138_4_q0,v138_5_address0,v138_5_ce0,v138_5_q0,v138_6_address0,v138_6_ce0,v138_6_q0,v138_7_address0,v138_7_ce0,v138_7_q0,v138_8_address0,v138_8_ce0,v138_8_q0,v138_9_address0,v138_9_ce0,v138_9_q0,v138_10_address0,v138_10_ce0,v138_10_q0,v138_11_address0,v138_11_ce0,v138_11_q0,v138_12_address0,v138_12_ce0,v138_12_q0,v138_13_address0,v138_13_ce0,v138_13_q0,v138_14_address0,v138_14_ce0,v138_14_q0,v138_15_address0,v138_15_ce0,v138_15_q0,v138_16_address0,v138_16_ce0,v138_16_q0,v138_17_address0,v138_17_ce0,v138_17_q0,v138_18_address0,v138_18_ce0,v138_18_q0,v138_19_address0,v138_19_ce0,v138_19_q0,v138_20_address0,v138_20_ce0,v138_20_q0,v138_21_address0,v138_21_ce0,v138_21_q0,v138_22_address0,v138_22_ce0,v138_22_q0,v138_23_address0,v138_23_ce0,v138_23_q0,v138_24_address0,v138_24_ce0,v138_24_q0,v138_25_address0,v138_25_ce0,v138_25_q0,v138_26_address0,v138_26_ce0,v138_26_q0,v138_27_address0,v138_27_ce0,v138_27_q0,v138_28_address0,v138_28_ce0,v138_28_q0,v138_29_address0,v138_29_ce0,v138_29_q0,v138_30_address0,v138_30_ce0,v138_30_q0,v138_31_address0,v138_31_ce0,v138_31_q0,v138_32_address0,v138_32_ce0,v138_32_q0,v138_33_address0,v138_33_ce0,v138_33_q0,v138_34_address0,v138_34_ce0,v138_34_q0,v138_35_address0,v138_35_ce0,v138_35_q0,v138_36_address0,v138_36_ce0,v138_36_q0,v138_37_address0,v138_37_ce0,v138_37_q0,v138_38_address0,v138_38_ce0,v138_38_q0,v138_39_address0,v138_39_ce0,v138_39_q0,v138_40_address0,v138_40_ce0,v138_40_q0,v138_41_address0,v138_41_ce0,v138_41_q0,v138_42_address0,v138_42_ce0,v138_42_q0,v138_43_address0,v138_43_ce0,v138_43_q0,v138_44_address0,v138_44_ce0,v138_44_q0,v138_45_address0,v138_45_ce0,v138_45_q0,v138_46_address0,v138_46_ce0,v138_46_q0,v138_47_address0,v138_47_ce0,v138_47_q0,v138_48_address0,v138_48_ce0,v138_48_q0,v138_49_address0,v138_49_ce0,v138_49_q0,v138_50_address0,v138_50_ce0,v138_50_q0,v138_51_address0,v138_51_ce0,v138_51_q0,v138_52_address0,v138_52_ce0,v138_52_q0,v138_53_address0,v138_53_ce0,v138_53_q0,v138_54_address0,v138_54_ce0,v138_54_q0,v138_55_address0,v138_55_ce0,v138_55_q0,v138_56_address0,v138_56_ce0,v138_56_q0,v138_57_address0,v138_57_ce0,v138_57_q0,v138_58_address0,v138_58_ce0,v138_58_q0,v138_59_address0,v138_59_ce0,v138_59_q0,v138_60_address0,v138_60_ce0,v138_60_q0,v138_61_address0,v138_61_ce0,v138_61_q0,v138_62_address0,v138_62_ce0,v138_62_q0,v138_63_address0,v138_63_ce0,v138_63_q0,v139_address0,v139_ce0,v139_q0,v140_address0,v140_ce0,v140_q0,v141_address0,v141_ce0,v141_we0,v141_d0,v142_address0,v142_ce0,v142_we0,v142_d0); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v137_address0;
output   v137_ce0;
input  [31:0] v137_q0;
output  [11:0] v137_address1;
output   v137_ce1;
input  [31:0] v137_q1;
output  [5:0] v138_0_address0;
output   v138_0_ce0;
input  [31:0] v138_0_q0;
output  [5:0] v138_1_address0;
output   v138_1_ce0;
input  [31:0] v138_1_q0;
output  [5:0] v138_2_address0;
output   v138_2_ce0;
input  [31:0] v138_2_q0;
output  [5:0] v138_3_address0;
output   v138_3_ce0;
input  [31:0] v138_3_q0;
output  [5:0] v138_4_address0;
output   v138_4_ce0;
input  [31:0] v138_4_q0;
output  [5:0] v138_5_address0;
output   v138_5_ce0;
input  [31:0] v138_5_q0;
output  [5:0] v138_6_address0;
output   v138_6_ce0;
input  [31:0] v138_6_q0;
output  [5:0] v138_7_address0;
output   v138_7_ce0;
input  [31:0] v138_7_q0;
output  [5:0] v138_8_address0;
output   v138_8_ce0;
input  [31:0] v138_8_q0;
output  [5:0] v138_9_address0;
output   v138_9_ce0;
input  [31:0] v138_9_q0;
output  [5:0] v138_10_address0;
output   v138_10_ce0;
input  [31:0] v138_10_q0;
output  [5:0] v138_11_address0;
output   v138_11_ce0;
input  [31:0] v138_11_q0;
output  [5:0] v138_12_address0;
output   v138_12_ce0;
input  [31:0] v138_12_q0;
output  [5:0] v138_13_address0;
output   v138_13_ce0;
input  [31:0] v138_13_q0;
output  [5:0] v138_14_address0;
output   v138_14_ce0;
input  [31:0] v138_14_q0;
output  [5:0] v138_15_address0;
output   v138_15_ce0;
input  [31:0] v138_15_q0;
output  [5:0] v138_16_address0;
output   v138_16_ce0;
input  [31:0] v138_16_q0;
output  [5:0] v138_17_address0;
output   v138_17_ce0;
input  [31:0] v138_17_q0;
output  [5:0] v138_18_address0;
output   v138_18_ce0;
input  [31:0] v138_18_q0;
output  [5:0] v138_19_address0;
output   v138_19_ce0;
input  [31:0] v138_19_q0;
output  [5:0] v138_20_address0;
output   v138_20_ce0;
input  [31:0] v138_20_q0;
output  [5:0] v138_21_address0;
output   v138_21_ce0;
input  [31:0] v138_21_q0;
output  [5:0] v138_22_address0;
output   v138_22_ce0;
input  [31:0] v138_22_q0;
output  [5:0] v138_23_address0;
output   v138_23_ce0;
input  [31:0] v138_23_q0;
output  [5:0] v138_24_address0;
output   v138_24_ce0;
input  [31:0] v138_24_q0;
output  [5:0] v138_25_address0;
output   v138_25_ce0;
input  [31:0] v138_25_q0;
output  [5:0] v138_26_address0;
output   v138_26_ce0;
input  [31:0] v138_26_q0;
output  [5:0] v138_27_address0;
output   v138_27_ce0;
input  [31:0] v138_27_q0;
output  [5:0] v138_28_address0;
output   v138_28_ce0;
input  [31:0] v138_28_q0;
output  [5:0] v138_29_address0;
output   v138_29_ce0;
input  [31:0] v138_29_q0;
output  [5:0] v138_30_address0;
output   v138_30_ce0;
input  [31:0] v138_30_q0;
output  [5:0] v138_31_address0;
output   v138_31_ce0;
input  [31:0] v138_31_q0;
output  [5:0] v138_32_address0;
output   v138_32_ce0;
input  [31:0] v138_32_q0;
output  [5:0] v138_33_address0;
output   v138_33_ce0;
input  [31:0] v138_33_q0;
output  [5:0] v138_34_address0;
output   v138_34_ce0;
input  [31:0] v138_34_q0;
output  [5:0] v138_35_address0;
output   v138_35_ce0;
input  [31:0] v138_35_q0;
output  [5:0] v138_36_address0;
output   v138_36_ce0;
input  [31:0] v138_36_q0;
output  [5:0] v138_37_address0;
output   v138_37_ce0;
input  [31:0] v138_37_q0;
output  [5:0] v138_38_address0;
output   v138_38_ce0;
input  [31:0] v138_38_q0;
output  [5:0] v138_39_address0;
output   v138_39_ce0;
input  [31:0] v138_39_q0;
output  [5:0] v138_40_address0;
output   v138_40_ce0;
input  [31:0] v138_40_q0;
output  [5:0] v138_41_address0;
output   v138_41_ce0;
input  [31:0] v138_41_q0;
output  [5:0] v138_42_address0;
output   v138_42_ce0;
input  [31:0] v138_42_q0;
output  [5:0] v138_43_address0;
output   v138_43_ce0;
input  [31:0] v138_43_q0;
output  [5:0] v138_44_address0;
output   v138_44_ce0;
input  [31:0] v138_44_q0;
output  [5:0] v138_45_address0;
output   v138_45_ce0;
input  [31:0] v138_45_q0;
output  [5:0] v138_46_address0;
output   v138_46_ce0;
input  [31:0] v138_46_q0;
output  [5:0] v138_47_address0;
output   v138_47_ce0;
input  [31:0] v138_47_q0;
output  [5:0] v138_48_address0;
output   v138_48_ce0;
input  [31:0] v138_48_q0;
output  [5:0] v138_49_address0;
output   v138_49_ce0;
input  [31:0] v138_49_q0;
output  [5:0] v138_50_address0;
output   v138_50_ce0;
input  [31:0] v138_50_q0;
output  [5:0] v138_51_address0;
output   v138_51_ce0;
input  [31:0] v138_51_q0;
output  [5:0] v138_52_address0;
output   v138_52_ce0;
input  [31:0] v138_52_q0;
output  [5:0] v138_53_address0;
output   v138_53_ce0;
input  [31:0] v138_53_q0;
output  [5:0] v138_54_address0;
output   v138_54_ce0;
input  [31:0] v138_54_q0;
output  [5:0] v138_55_address0;
output   v138_55_ce0;
input  [31:0] v138_55_q0;
output  [5:0] v138_56_address0;
output   v138_56_ce0;
input  [31:0] v138_56_q0;
output  [5:0] v138_57_address0;
output   v138_57_ce0;
input  [31:0] v138_57_q0;
output  [5:0] v138_58_address0;
output   v138_58_ce0;
input  [31:0] v138_58_q0;
output  [5:0] v138_59_address0;
output   v138_59_ce0;
input  [31:0] v138_59_q0;
output  [5:0] v138_60_address0;
output   v138_60_ce0;
input  [31:0] v138_60_q0;
output  [5:0] v138_61_address0;
output   v138_61_ce0;
input  [31:0] v138_61_q0;
output  [5:0] v138_62_address0;
output   v138_62_ce0;
input  [31:0] v138_62_q0;
output  [5:0] v138_63_address0;
output   v138_63_ce0;
input  [31:0] v138_63_q0;
output  [5:0] v139_address0;
output   v139_ce0;
input  [31:0] v139_q0;
output  [5:0] v140_address0;
output   v140_ce0;
input  [31:0] v140_q0;
output  [5:0] v141_address0;
output   v141_ce0;
output   v141_we0;
output  [31:0] v141_d0;
output  [5:0] v142_address0;
output   v142_ce0;
output   v142_we0;
output  [31:0] v142_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [5:0] v41_load_reg_697;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln27_fu_568_p1;
reg   [2:0] trunc_ln27_reg_702;
wire   [0:0] trunc_ln27_1_fu_572_p1;
reg   [0:0] trunc_ln27_1_reg_707;
wire   [0:0] icmp_ln27_fu_620_p2;
wire   [63:0] zext_ln27_fu_631_p1;
reg   [63:0] zext_ln27_reg_766;
wire   [31:0] v6_fu_679_p3;
reg   [31:0] v6_reg_771;
reg    ap_enable_reg_pp0_iter0;
wire    ap_CS_fsm_state2;
wire    grp_bicg_node2_fu_398_ap_done;
wire    grp_bicg_node1_fu_548_ap_done;
reg    ap_block_state2_on_subcall_done;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg   [2:0] v151_address0;
reg    v151_ce0;
reg    v151_we0;
wire   [31:0] v151_q0;
reg    v151_ce1;
wire   [31:0] v151_q1;
reg   [2:0] v151_1_address0;
reg    v151_1_ce0;
reg    v151_1_we0;
wire   [31:0] v151_1_q0;
reg    v151_1_ce1;
wire   [31:0] v151_1_q1;
reg   [2:0] v151_2_address0;
reg    v151_2_ce0;
reg    v151_2_we0;
wire   [31:0] v151_2_q0;
reg    v151_2_ce1;
wire   [31:0] v151_2_q1;
reg   [2:0] v151_3_address0;
reg    v151_3_ce0;
reg    v151_3_we0;
wire   [31:0] v151_3_q0;
reg    v151_3_ce1;
wire   [31:0] v151_3_q1;
reg   [2:0] v151_4_address0;
reg    v151_4_ce0;
reg    v151_4_we0;
wire   [31:0] v151_4_q0;
reg   [2:0] v151_5_address0;
reg    v151_5_ce0;
reg    v151_5_we0;
wire   [31:0] v151_5_q0;
reg   [2:0] v151_6_address0;
reg    v151_6_ce0;
reg    v151_6_we0;
wire   [31:0] v151_6_q0;
reg   [2:0] v151_7_address0;
reg    v151_7_ce0;
reg    v151_7_we0;
wire   [31:0] v151_7_q0;
reg   [4:0] v152_address0;
reg    v152_ce0;
reg    v152_we0;
wire   [31:0] v152_q0;
reg    v152_ce1;
reg    v152_we1;
wire   [31:0] v152_q1;
reg   [4:0] v152_1_address0;
reg    v152_1_ce0;
reg    v152_1_we0;
wire   [31:0] v152_1_q0;
reg    v152_1_ce1;
reg    v152_1_we1;
wire   [31:0] v152_1_q1;
wire    grp_bicg_node2_fu_398_ap_start;
wire    grp_bicg_node2_fu_398_ap_idle;
wire    grp_bicg_node2_fu_398_ap_ready;
wire   [5:0] grp_bicg_node2_fu_398_v140_address0;
wire    grp_bicg_node2_fu_398_v140_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_0_address0;
wire    grp_bicg_node2_fu_398_v138_0_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_1_address0;
wire    grp_bicg_node2_fu_398_v138_1_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_2_address0;
wire    grp_bicg_node2_fu_398_v138_2_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_3_address0;
wire    grp_bicg_node2_fu_398_v138_3_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_4_address0;
wire    grp_bicg_node2_fu_398_v138_4_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_5_address0;
wire    grp_bicg_node2_fu_398_v138_5_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_6_address0;
wire    grp_bicg_node2_fu_398_v138_6_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_7_address0;
wire    grp_bicg_node2_fu_398_v138_7_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_8_address0;
wire    grp_bicg_node2_fu_398_v138_8_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_9_address0;
wire    grp_bicg_node2_fu_398_v138_9_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_10_address0;
wire    grp_bicg_node2_fu_398_v138_10_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_11_address0;
wire    grp_bicg_node2_fu_398_v138_11_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_12_address0;
wire    grp_bicg_node2_fu_398_v138_12_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_13_address0;
wire    grp_bicg_node2_fu_398_v138_13_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_14_address0;
wire    grp_bicg_node2_fu_398_v138_14_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_15_address0;
wire    grp_bicg_node2_fu_398_v138_15_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_16_address0;
wire    grp_bicg_node2_fu_398_v138_16_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_17_address0;
wire    grp_bicg_node2_fu_398_v138_17_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_18_address0;
wire    grp_bicg_node2_fu_398_v138_18_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_19_address0;
wire    grp_bicg_node2_fu_398_v138_19_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_20_address0;
wire    grp_bicg_node2_fu_398_v138_20_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_21_address0;
wire    grp_bicg_node2_fu_398_v138_21_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_22_address0;
wire    grp_bicg_node2_fu_398_v138_22_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_23_address0;
wire    grp_bicg_node2_fu_398_v138_23_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_24_address0;
wire    grp_bicg_node2_fu_398_v138_24_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_25_address0;
wire    grp_bicg_node2_fu_398_v138_25_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_26_address0;
wire    grp_bicg_node2_fu_398_v138_26_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_27_address0;
wire    grp_bicg_node2_fu_398_v138_27_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_28_address0;
wire    grp_bicg_node2_fu_398_v138_28_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_29_address0;
wire    grp_bicg_node2_fu_398_v138_29_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_30_address0;
wire    grp_bicg_node2_fu_398_v138_30_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_31_address0;
wire    grp_bicg_node2_fu_398_v138_31_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_32_address0;
wire    grp_bicg_node2_fu_398_v138_32_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_33_address0;
wire    grp_bicg_node2_fu_398_v138_33_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_34_address0;
wire    grp_bicg_node2_fu_398_v138_34_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_35_address0;
wire    grp_bicg_node2_fu_398_v138_35_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_36_address0;
wire    grp_bicg_node2_fu_398_v138_36_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_37_address0;
wire    grp_bicg_node2_fu_398_v138_37_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_38_address0;
wire    grp_bicg_node2_fu_398_v138_38_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_39_address0;
wire    grp_bicg_node2_fu_398_v138_39_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_40_address0;
wire    grp_bicg_node2_fu_398_v138_40_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_41_address0;
wire    grp_bicg_node2_fu_398_v138_41_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_42_address0;
wire    grp_bicg_node2_fu_398_v138_42_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_43_address0;
wire    grp_bicg_node2_fu_398_v138_43_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_44_address0;
wire    grp_bicg_node2_fu_398_v138_44_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_45_address0;
wire    grp_bicg_node2_fu_398_v138_45_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_46_address0;
wire    grp_bicg_node2_fu_398_v138_46_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_47_address0;
wire    grp_bicg_node2_fu_398_v138_47_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_48_address0;
wire    grp_bicg_node2_fu_398_v138_48_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_49_address0;
wire    grp_bicg_node2_fu_398_v138_49_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_50_address0;
wire    grp_bicg_node2_fu_398_v138_50_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_51_address0;
wire    grp_bicg_node2_fu_398_v138_51_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_52_address0;
wire    grp_bicg_node2_fu_398_v138_52_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_53_address0;
wire    grp_bicg_node2_fu_398_v138_53_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_54_address0;
wire    grp_bicg_node2_fu_398_v138_54_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_55_address0;
wire    grp_bicg_node2_fu_398_v138_55_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_56_address0;
wire    grp_bicg_node2_fu_398_v138_56_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_57_address0;
wire    grp_bicg_node2_fu_398_v138_57_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_58_address0;
wire    grp_bicg_node2_fu_398_v138_58_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_59_address0;
wire    grp_bicg_node2_fu_398_v138_59_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_60_address0;
wire    grp_bicg_node2_fu_398_v138_60_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_61_address0;
wire    grp_bicg_node2_fu_398_v138_61_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_62_address0;
wire    grp_bicg_node2_fu_398_v138_62_ce0;
wire   [5:0] grp_bicg_node2_fu_398_v138_63_address0;
wire    grp_bicg_node2_fu_398_v138_63_ce0;
wire   [2:0] grp_bicg_node2_fu_398_v65_0_address0;
wire    grp_bicg_node2_fu_398_v65_0_ce0;
wire    grp_bicg_node2_fu_398_v65_0_we0;
wire   [31:0] grp_bicg_node2_fu_398_v65_0_d0;
wire   [2:0] grp_bicg_node2_fu_398_v65_0_address1;
wire    grp_bicg_node2_fu_398_v65_0_ce1;
wire   [2:0] grp_bicg_node2_fu_398_v65_1_address0;
wire    grp_bicg_node2_fu_398_v65_1_ce0;
wire    grp_bicg_node2_fu_398_v65_1_we0;
wire   [31:0] grp_bicg_node2_fu_398_v65_1_d0;
wire   [2:0] grp_bicg_node2_fu_398_v65_1_address1;
wire    grp_bicg_node2_fu_398_v65_1_ce1;
wire   [2:0] grp_bicg_node2_fu_398_v65_2_address0;
wire    grp_bicg_node2_fu_398_v65_2_ce0;
wire    grp_bicg_node2_fu_398_v65_2_we0;
wire   [31:0] grp_bicg_node2_fu_398_v65_2_d0;
wire   [2:0] grp_bicg_node2_fu_398_v65_2_address1;
wire    grp_bicg_node2_fu_398_v65_2_ce1;
wire   [2:0] grp_bicg_node2_fu_398_v65_3_address0;
wire    grp_bicg_node2_fu_398_v65_3_ce0;
wire    grp_bicg_node2_fu_398_v65_3_we0;
wire   [31:0] grp_bicg_node2_fu_398_v65_3_d0;
wire   [2:0] grp_bicg_node2_fu_398_v65_3_address1;
wire    grp_bicg_node2_fu_398_v65_3_ce1;
wire   [2:0] grp_bicg_node2_fu_398_v65_4_address0;
wire    grp_bicg_node2_fu_398_v65_4_ce0;
wire    grp_bicg_node2_fu_398_v65_4_we0;
wire   [31:0] grp_bicg_node2_fu_398_v65_4_d0;
wire   [2:0] grp_bicg_node2_fu_398_v65_5_address0;
wire    grp_bicg_node2_fu_398_v65_5_ce0;
wire    grp_bicg_node2_fu_398_v65_5_we0;
wire   [31:0] grp_bicg_node2_fu_398_v65_5_d0;
wire   [2:0] grp_bicg_node2_fu_398_v65_6_address0;
wire    grp_bicg_node2_fu_398_v65_6_ce0;
wire    grp_bicg_node2_fu_398_v65_6_we0;
wire   [31:0] grp_bicg_node2_fu_398_v65_6_d0;
wire   [2:0] grp_bicg_node2_fu_398_v65_7_address0;
wire    grp_bicg_node2_fu_398_v65_7_ce0;
wire    grp_bicg_node2_fu_398_v65_7_we0;
wire   [31:0] grp_bicg_node2_fu_398_v65_7_d0;
wire    grp_bicg_node1_fu_548_ap_start;
wire    grp_bicg_node1_fu_548_ap_idle;
wire    grp_bicg_node1_fu_548_ap_ready;
wire   [11:0] grp_bicg_node1_fu_548_v137_address0;
wire    grp_bicg_node1_fu_548_v137_ce0;
wire   [11:0] grp_bicg_node1_fu_548_v137_address1;
wire    grp_bicg_node1_fu_548_v137_ce1;
wire   [5:0] grp_bicg_node1_fu_548_v139_address0;
wire    grp_bicg_node1_fu_548_v139_ce0;
wire   [4:0] grp_bicg_node1_fu_548_v10_0_address0;
wire    grp_bicg_node1_fu_548_v10_0_ce0;
wire    grp_bicg_node1_fu_548_v10_0_we0;
wire   [31:0] grp_bicg_node1_fu_548_v10_0_d0;
wire   [4:0] grp_bicg_node1_fu_548_v10_0_address1;
wire    grp_bicg_node1_fu_548_v10_0_ce1;
wire    grp_bicg_node1_fu_548_v10_0_we1;
wire   [31:0] grp_bicg_node1_fu_548_v10_0_d1;
wire   [4:0] grp_bicg_node1_fu_548_v10_1_address0;
wire    grp_bicg_node1_fu_548_v10_1_ce0;
wire    grp_bicg_node1_fu_548_v10_1_we0;
wire   [31:0] grp_bicg_node1_fu_548_v10_1_d0;
wire   [4:0] grp_bicg_node1_fu_548_v10_1_address1;
wire    grp_bicg_node1_fu_548_v10_1_ce1;
wire    grp_bicg_node1_fu_548_v10_1_we1;
wire   [31:0] grp_bicg_node1_fu_548_v10_1_d1;
reg    grp_bicg_node2_fu_398_ap_start_reg;
reg    grp_bicg_node1_fu_548_ap_start_reg;
wire   [63:0] zext_ln27_2_fu_602_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_1_fu_586_p1;
reg   [5:0] v41_fu_208;
wire   [5:0] v4_fu_614_p2;
reg    v151_ce0_local;
reg    v151_1_ce0_local;
reg    v151_2_ce0_local;
reg    v151_3_ce0_local;
reg    v151_4_ce0_local;
reg    v151_5_ce0_local;
reg    v151_6_ce0_local;
reg    v151_7_ce0_local;
reg    v152_ce0_local;
reg    v152_1_ce0_local;
reg    v141_we0_local;
wire   [31:0] bitcast_ln29_fu_674_p1;
reg    v141_ce0_local;
reg    v142_we0_local;
wire   [31:0] bitcast_ln31_fu_686_p1;
reg    v142_ce0_local;
wire   [4:0] lshr_ln_fu_576_p4;
wire   [2:0] lshr_ln27_1_fu_592_p4;
wire   [31:0] v5_fu_635_p17;
wire   [31:0] v5_fu_635_p19;
wire    ap_CS_fsm_state6;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [2:0] v5_fu_635_p1;
wire   [2:0] v5_fu_635_p3;
wire   [2:0] v5_fu_635_p5;
wire   [2:0] v5_fu_635_p7;
wire  signed [2:0] v5_fu_635_p9;
wire  signed [2:0] v5_fu_635_p11;
wire  signed [2:0] v5_fu_635_p13;
wire  signed [2:0] v5_fu_635_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 grp_bicg_node2_fu_398_ap_start_reg = 1'b0;
#0 grp_bicg_node1_fu_548_ap_start_reg = 1'b0;
#0 v41_fu_208 = 6'd0;
end
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_address0),.ce0(v151_ce0),.we0(v151_we0),.d0(grp_bicg_node2_fu_398_v65_0_d0),.q0(v151_q0),.address1(grp_bicg_node2_fu_398_v65_0_address1),.ce1(v151_ce1),.q1(v151_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_1_address0),.ce0(v151_1_ce0),.we0(v151_1_we0),.d0(grp_bicg_node2_fu_398_v65_1_d0),.q0(v151_1_q0),.address1(grp_bicg_node2_fu_398_v65_1_address1),.ce1(v151_1_ce1),.q1(v151_1_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_2_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_2_address0),.ce0(v151_2_ce0),.we0(v151_2_we0),.d0(grp_bicg_node2_fu_398_v65_2_d0),.q0(v151_2_q0),.address1(grp_bicg_node2_fu_398_v65_2_address1),.ce1(v151_2_ce1),.q1(v151_2_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_3_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_3_address0),.ce0(v151_3_ce0),.we0(v151_3_we0),.d0(grp_bicg_node2_fu_398_v65_3_d0),.q0(v151_3_q0),.address1(grp_bicg_node2_fu_398_v65_3_address1),.ce1(v151_3_ce1),.q1(v151_3_q1));
bicg_v151_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_4_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_4_address0),.ce0(v151_4_ce0),.we0(v151_4_we0),.d0(grp_bicg_node2_fu_398_v65_4_d0),.q0(v151_4_q0));
bicg_v151_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_5_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_5_address0),.ce0(v151_5_ce0),.we0(v151_5_we0),.d0(grp_bicg_node2_fu_398_v65_5_d0),.q0(v151_5_q0));
bicg_v151_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_6_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_6_address0),.ce0(v151_6_ce0),.we0(v151_6_we0),.d0(grp_bicg_node2_fu_398_v65_6_d0),.q0(v151_6_q0));
bicg_v151_4_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v151_7_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_7_address0),.ce0(v151_7_ce0),.we0(v151_7_we0),.d0(grp_bicg_node2_fu_398_v65_7_d0),.q0(v151_7_q0));
bicg_v152_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_address0),.ce0(v152_ce0),.we0(v152_we0),.d0(grp_bicg_node1_fu_548_v10_0_d0),.q0(v152_q0),.address1(grp_bicg_node1_fu_548_v10_0_address1),.ce1(v152_ce1),.we1(v152_we1),.d1(grp_bicg_node1_fu_548_v10_0_d1),.q1(v152_q1));
bicg_v152_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_1_address0),.ce0(v152_1_ce0),.we0(v152_1_we0),.d0(grp_bicg_node1_fu_548_v10_1_d0),.q0(v152_1_q0),.address1(grp_bicg_node1_fu_548_v10_1_address1),.ce1(v152_1_ce1),.we1(v152_1_we1),.d1(grp_bicg_node1_fu_548_v10_1_d1),.q1(v152_1_q1));
bicg_bicg_node2 grp_bicg_node2_fu_398(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_fu_398_ap_start),.ap_done(grp_bicg_node2_fu_398_ap_done),.ap_idle(grp_bicg_node2_fu_398_ap_idle),.ap_ready(grp_bicg_node2_fu_398_ap_ready),.v140_address0(grp_bicg_node2_fu_398_v140_address0),.v140_ce0(grp_bicg_node2_fu_398_v140_ce0),.v140_q0(v140_q0),.v138_0_address0(grp_bicg_node2_fu_398_v138_0_address0),.v138_0_ce0(grp_bicg_node2_fu_398_v138_0_ce0),.v138_0_q0(v138_0_q0),.v138_1_address0(grp_bicg_node2_fu_398_v138_1_address0),.v138_1_ce0(grp_bicg_node2_fu_398_v138_1_ce0),.v138_1_q0(v138_1_q0),.v138_2_address0(grp_bicg_node2_fu_398_v138_2_address0),.v138_2_ce0(grp_bicg_node2_fu_398_v138_2_ce0),.v138_2_q0(v138_2_q0),.v138_3_address0(grp_bicg_node2_fu_398_v138_3_address0),.v138_3_ce0(grp_bicg_node2_fu_398_v138_3_ce0),.v138_3_q0(v138_3_q0),.v138_4_address0(grp_bicg_node2_fu_398_v138_4_address0),.v138_4_ce0(grp_bicg_node2_fu_398_v138_4_ce0),.v138_4_q0(v138_4_q0),.v138_5_address0(grp_bicg_node2_fu_398_v138_5_address0),.v138_5_ce0(grp_bicg_node2_fu_398_v138_5_ce0),.v138_5_q0(v138_5_q0),.v138_6_address0(grp_bicg_node2_fu_398_v138_6_address0),.v138_6_ce0(grp_bicg_node2_fu_398_v138_6_ce0),.v138_6_q0(v138_6_q0),.v138_7_address0(grp_bicg_node2_fu_398_v138_7_address0),.v138_7_ce0(grp_bicg_node2_fu_398_v138_7_ce0),.v138_7_q0(v138_7_q0),.v138_8_address0(grp_bicg_node2_fu_398_v138_8_address0),.v138_8_ce0(grp_bicg_node2_fu_398_v138_8_ce0),.v138_8_q0(v138_8_q0),.v138_9_address0(grp_bicg_node2_fu_398_v138_9_address0),.v138_9_ce0(grp_bicg_node2_fu_398_v138_9_ce0),.v138_9_q0(v138_9_q0),.v138_10_address0(grp_bicg_node2_fu_398_v138_10_address0),.v138_10_ce0(grp_bicg_node2_fu_398_v138_10_ce0),.v138_10_q0(v138_10_q0),.v138_11_address0(grp_bicg_node2_fu_398_v138_11_address0),.v138_11_ce0(grp_bicg_node2_fu_398_v138_11_ce0),.v138_11_q0(v138_11_q0),.v138_12_address0(grp_bicg_node2_fu_398_v138_12_address0),.v138_12_ce0(grp_bicg_node2_fu_398_v138_12_ce0),.v138_12_q0(v138_12_q0),.v138_13_address0(grp_bicg_node2_fu_398_v138_13_address0),.v138_13_ce0(grp_bicg_node2_fu_398_v138_13_ce0),.v138_13_q0(v138_13_q0),.v138_14_address0(grp_bicg_node2_fu_398_v138_14_address0),.v138_14_ce0(grp_bicg_node2_fu_398_v138_14_ce0),.v138_14_q0(v138_14_q0),.v138_15_address0(grp_bicg_node2_fu_398_v138_15_address0),.v138_15_ce0(grp_bicg_node2_fu_398_v138_15_ce0),.v138_15_q0(v138_15_q0),.v138_16_address0(grp_bicg_node2_fu_398_v138_16_address0),.v138_16_ce0(grp_bicg_node2_fu_398_v138_16_ce0),.v138_16_q0(v138_16_q0),.v138_17_address0(grp_bicg_node2_fu_398_v138_17_address0),.v138_17_ce0(grp_bicg_node2_fu_398_v138_17_ce0),.v138_17_q0(v138_17_q0),.v138_18_address0(grp_bicg_node2_fu_398_v138_18_address0),.v138_18_ce0(grp_bicg_node2_fu_398_v138_18_ce0),.v138_18_q0(v138_18_q0),.v138_19_address0(grp_bicg_node2_fu_398_v138_19_address0),.v138_19_ce0(grp_bicg_node2_fu_398_v138_19_ce0),.v138_19_q0(v138_19_q0),.v138_20_address0(grp_bicg_node2_fu_398_v138_20_address0),.v138_20_ce0(grp_bicg_node2_fu_398_v138_20_ce0),.v138_20_q0(v138_20_q0),.v138_21_address0(grp_bicg_node2_fu_398_v138_21_address0),.v138_21_ce0(grp_bicg_node2_fu_398_v138_21_ce0),.v138_21_q0(v138_21_q0),.v138_22_address0(grp_bicg_node2_fu_398_v138_22_address0),.v138_22_ce0(grp_bicg_node2_fu_398_v138_22_ce0),.v138_22_q0(v138_22_q0),.v138_23_address0(grp_bicg_node2_fu_398_v138_23_address0),.v138_23_ce0(grp_bicg_node2_fu_398_v138_23_ce0),.v138_23_q0(v138_23_q0),.v138_24_address0(grp_bicg_node2_fu_398_v138_24_address0),.v138_24_ce0(grp_bicg_node2_fu_398_v138_24_ce0),.v138_24_q0(v138_24_q0),.v138_25_address0(grp_bicg_node2_fu_398_v138_25_address0),.v138_25_ce0(grp_bicg_node2_fu_398_v138_25_ce0),.v138_25_q0(v138_25_q0),.v138_26_address0(grp_bicg_node2_fu_398_v138_26_address0),.v138_26_ce0(grp_bicg_node2_fu_398_v138_26_ce0),.v138_26_q0(v138_26_q0),.v138_27_address0(grp_bicg_node2_fu_398_v138_27_address0),.v138_27_ce0(grp_bicg_node2_fu_398_v138_27_ce0),.v138_27_q0(v138_27_q0),.v138_28_address0(grp_bicg_node2_fu_398_v138_28_address0),.v138_28_ce0(grp_bicg_node2_fu_398_v138_28_ce0),.v138_28_q0(v138_28_q0),.v138_29_address0(grp_bicg_node2_fu_398_v138_29_address0),.v138_29_ce0(grp_bicg_node2_fu_398_v138_29_ce0),.v138_29_q0(v138_29_q0),.v138_30_address0(grp_bicg_node2_fu_398_v138_30_address0),.v138_30_ce0(grp_bicg_node2_fu_398_v138_30_ce0),.v138_30_q0(v138_30_q0),.v138_31_address0(grp_bicg_node2_fu_398_v138_31_address0),.v138_31_ce0(grp_bicg_node2_fu_398_v138_31_ce0),.v138_31_q0(v138_31_q0),.v138_32_address0(grp_bicg_node2_fu_398_v138_32_address0),.v138_32_ce0(grp_bicg_node2_fu_398_v138_32_ce0),.v138_32_q0(v138_32_q0),.v138_33_address0(grp_bicg_node2_fu_398_v138_33_address0),.v138_33_ce0(grp_bicg_node2_fu_398_v138_33_ce0),.v138_33_q0(v138_33_q0),.v138_34_address0(grp_bicg_node2_fu_398_v138_34_address0),.v138_34_ce0(grp_bicg_node2_fu_398_v138_34_ce0),.v138_34_q0(v138_34_q0),.v138_35_address0(grp_bicg_node2_fu_398_v138_35_address0),.v138_35_ce0(grp_bicg_node2_fu_398_v138_35_ce0),.v138_35_q0(v138_35_q0),.v138_36_address0(grp_bicg_node2_fu_398_v138_36_address0),.v138_36_ce0(grp_bicg_node2_fu_398_v138_36_ce0),.v138_36_q0(v138_36_q0),.v138_37_address0(grp_bicg_node2_fu_398_v138_37_address0),.v138_37_ce0(grp_bicg_node2_fu_398_v138_37_ce0),.v138_37_q0(v138_37_q0),.v138_38_address0(grp_bicg_node2_fu_398_v138_38_address0),.v138_38_ce0(grp_bicg_node2_fu_398_v138_38_ce0),.v138_38_q0(v138_38_q0),.v138_39_address0(grp_bicg_node2_fu_398_v138_39_address0),.v138_39_ce0(grp_bicg_node2_fu_398_v138_39_ce0),.v138_39_q0(v138_39_q0),.v138_40_address0(grp_bicg_node2_fu_398_v138_40_address0),.v138_40_ce0(grp_bicg_node2_fu_398_v138_40_ce0),.v138_40_q0(v138_40_q0),.v138_41_address0(grp_bicg_node2_fu_398_v138_41_address0),.v138_41_ce0(grp_bicg_node2_fu_398_v138_41_ce0),.v138_41_q0(v138_41_q0),.v138_42_address0(grp_bicg_node2_fu_398_v138_42_address0),.v138_42_ce0(grp_bicg_node2_fu_398_v138_42_ce0),.v138_42_q0(v138_42_q0),.v138_43_address0(grp_bicg_node2_fu_398_v138_43_address0),.v138_43_ce0(grp_bicg_node2_fu_398_v138_43_ce0),.v138_43_q0(v138_43_q0),.v138_44_address0(grp_bicg_node2_fu_398_v138_44_address0),.v138_44_ce0(grp_bicg_node2_fu_398_v138_44_ce0),.v138_44_q0(v138_44_q0),.v138_45_address0(grp_bicg_node2_fu_398_v138_45_address0),.v138_45_ce0(grp_bicg_node2_fu_398_v138_45_ce0),.v138_45_q0(v138_45_q0),.v138_46_address0(grp_bicg_node2_fu_398_v138_46_address0),.v138_46_ce0(grp_bicg_node2_fu_398_v138_46_ce0),.v138_46_q0(v138_46_q0),.v138_47_address0(grp_bicg_node2_fu_398_v138_47_address0),.v138_47_ce0(grp_bicg_node2_fu_398_v138_47_ce0),.v138_47_q0(v138_47_q0),.v138_48_address0(grp_bicg_node2_fu_398_v138_48_address0),.v138_48_ce0(grp_bicg_node2_fu_398_v138_48_ce0),.v138_48_q0(v138_48_q0),.v138_49_address0(grp_bicg_node2_fu_398_v138_49_address0),.v138_49_ce0(grp_bicg_node2_fu_398_v138_49_ce0),.v138_49_q0(v138_49_q0),.v138_50_address0(grp_bicg_node2_fu_398_v138_50_address0),.v138_50_ce0(grp_bicg_node2_fu_398_v138_50_ce0),.v138_50_q0(v138_50_q0),.v138_51_address0(grp_bicg_node2_fu_398_v138_51_address0),.v138_51_ce0(grp_bicg_node2_fu_398_v138_51_ce0),.v138_51_q0(v138_51_q0),.v138_52_address0(grp_bicg_node2_fu_398_v138_52_address0),.v138_52_ce0(grp_bicg_node2_fu_398_v138_52_ce0),.v138_52_q0(v138_52_q0),.v138_53_address0(grp_bicg_node2_fu_398_v138_53_address0),.v138_53_ce0(grp_bicg_node2_fu_398_v138_53_ce0),.v138_53_q0(v138_53_q0),.v138_54_address0(grp_bicg_node2_fu_398_v138_54_address0),.v138_54_ce0(grp_bicg_node2_fu_398_v138_54_ce0),.v138_54_q0(v138_54_q0),.v138_55_address0(grp_bicg_node2_fu_398_v138_55_address0),.v138_55_ce0(grp_bicg_node2_fu_398_v138_55_ce0),.v138_55_q0(v138_55_q0),.v138_56_address0(grp_bicg_node2_fu_398_v138_56_address0),.v138_56_ce0(grp_bicg_node2_fu_398_v138_56_ce0),.v138_56_q0(v138_56_q0),.v138_57_address0(grp_bicg_node2_fu_398_v138_57_address0),.v138_57_ce0(grp_bicg_node2_fu_398_v138_57_ce0),.v138_57_q0(v138_57_q0),.v138_58_address0(grp_bicg_node2_fu_398_v138_58_address0),.v138_58_ce0(grp_bicg_node2_fu_398_v138_58_ce0),.v138_58_q0(v138_58_q0),.v138_59_address0(grp_bicg_node2_fu_398_v138_59_address0),.v138_59_ce0(grp_bicg_node2_fu_398_v138_59_ce0),.v138_59_q0(v138_59_q0),.v138_60_address0(grp_bicg_node2_fu_398_v138_60_address0),.v138_60_ce0(grp_bicg_node2_fu_398_v138_60_ce0),.v138_60_q0(v138_60_q0),.v138_61_address0(grp_bicg_node2_fu_398_v138_61_address0),.v138_61_ce0(grp_bicg_node2_fu_398_v138_61_ce0),.v138_61_q0(v138_61_q0),.v138_62_address0(grp_bicg_node2_fu_398_v138_62_address0),.v138_62_ce0(grp_bicg_node2_fu_398_v138_62_ce0),.v138_62_q0(v138_62_q0),.v138_63_address0(grp_bicg_node2_fu_398_v138_63_address0),.v138_63_ce0(grp_bicg_node2_fu_398_v138_63_ce0),.v138_63_q0(v138_63_q0),.v65_0_address0(grp_bicg_node2_fu_398_v65_0_address0),.v65_0_ce0(grp_bicg_node2_fu_398_v65_0_ce0),.v65_0_we0(grp_bicg_node2_fu_398_v65_0_we0),.v65_0_d0(grp_bicg_node2_fu_398_v65_0_d0),.v65_0_address1(grp_bicg_node2_fu_398_v65_0_address1),.v65_0_ce1(grp_bicg_node2_fu_398_v65_0_ce1),.v65_0_q1(v151_q1),.v65_1_address0(grp_bicg_node2_fu_398_v65_1_address0),.v65_1_ce0(grp_bicg_node2_fu_398_v65_1_ce0),.v65_1_we0(grp_bicg_node2_fu_398_v65_1_we0),.v65_1_d0(grp_bicg_node2_fu_398_v65_1_d0),.v65_1_address1(grp_bicg_node2_fu_398_v65_1_address1),.v65_1_ce1(grp_bicg_node2_fu_398_v65_1_ce1),.v65_1_q1(v151_1_q1),.v65_2_address0(grp_bicg_node2_fu_398_v65_2_address0),.v65_2_ce0(grp_bicg_node2_fu_398_v65_2_ce0),.v65_2_we0(grp_bicg_node2_fu_398_v65_2_we0),.v65_2_d0(grp_bicg_node2_fu_398_v65_2_d0),.v65_2_address1(grp_bicg_node2_fu_398_v65_2_address1),.v65_2_ce1(grp_bicg_node2_fu_398_v65_2_ce1),.v65_2_q1(v151_2_q1),.v65_3_address0(grp_bicg_node2_fu_398_v65_3_address0),.v65_3_ce0(grp_bicg_node2_fu_398_v65_3_ce0),.v65_3_we0(grp_bicg_node2_fu_398_v65_3_we0),.v65_3_d0(grp_bicg_node2_fu_398_v65_3_d0),.v65_3_address1(grp_bicg_node2_fu_398_v65_3_address1),.v65_3_ce1(grp_bicg_node2_fu_398_v65_3_ce1),.v65_3_q1(v151_3_q1),.v65_4_address0(grp_bicg_node2_fu_398_v65_4_address0),.v65_4_ce0(grp_bicg_node2_fu_398_v65_4_ce0),.v65_4_we0(grp_bicg_node2_fu_398_v65_4_we0),.v65_4_d0(grp_bicg_node2_fu_398_v65_4_d0),.v65_4_q0(v151_4_q0),.v65_5_address0(grp_bicg_node2_fu_398_v65_5_address0),.v65_5_ce0(grp_bicg_node2_fu_398_v65_5_ce0),.v65_5_we0(grp_bicg_node2_fu_398_v65_5_we0),.v65_5_d0(grp_bicg_node2_fu_398_v65_5_d0),.v65_5_q0(v151_5_q0),.v65_6_address0(grp_bicg_node2_fu_398_v65_6_address0),.v65_6_ce0(grp_bicg_node2_fu_398_v65_6_ce0),.v65_6_we0(grp_bicg_node2_fu_398_v65_6_we0),.v65_6_d0(grp_bicg_node2_fu_398_v65_6_d0),.v65_6_q0(v151_6_q0),.v65_7_address0(grp_bicg_node2_fu_398_v65_7_address0),.v65_7_ce0(grp_bicg_node2_fu_398_v65_7_ce0),.v65_7_we0(grp_bicg_node2_fu_398_v65_7_we0),.v65_7_d0(grp_bicg_node2_fu_398_v65_7_d0),.v65_7_q0(v151_7_q0));
bicg_bicg_node1 grp_bicg_node1_fu_548(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_fu_548_ap_start),.ap_done(grp_bicg_node1_fu_548_ap_done),.ap_idle(grp_bicg_node1_fu_548_ap_idle),.ap_ready(grp_bicg_node1_fu_548_ap_ready),.v137_address0(grp_bicg_node1_fu_548_v137_address0),.v137_ce0(grp_bicg_node1_fu_548_v137_ce0),.v137_q0(v137_q0),.v137_address1(grp_bicg_node1_fu_548_v137_address1),.v137_ce1(grp_bicg_node1_fu_548_v137_ce1),.v137_q1(v137_q1),.v139_address0(grp_bicg_node1_fu_548_v139_address0),.v139_ce0(grp_bicg_node1_fu_548_v139_ce0),.v139_q0(v139_q0),.v10_0_address0(grp_bicg_node1_fu_548_v10_0_address0),.v10_0_ce0(grp_bicg_node1_fu_548_v10_0_ce0),.v10_0_we0(grp_bicg_node1_fu_548_v10_0_we0),.v10_0_d0(grp_bicg_node1_fu_548_v10_0_d0),.v10_0_q0(v152_q0),.v10_0_address1(grp_bicg_node1_fu_548_v10_0_address1),.v10_0_ce1(grp_bicg_node1_fu_548_v10_0_ce1),.v10_0_we1(grp_bicg_node1_fu_548_v10_0_we1),.v10_0_d1(grp_bicg_node1_fu_548_v10_0_d1),.v10_0_q1(v152_q1),.v10_1_address0(grp_bicg_node1_fu_548_v10_1_address0),.v10_1_ce0(grp_bicg_node1_fu_548_v10_1_ce0),.v10_1_we0(grp_bicg_node1_fu_548_v10_1_we0),.v10_1_d0(grp_bicg_node1_fu_548_v10_1_d0),.v10_1_q0(v152_1_q0),.v10_1_address1(grp_bicg_node1_fu_548_v10_1_address1),.v10_1_ce1(grp_bicg_node1_fu_548_v10_1_ce1),.v10_1_we1(grp_bicg_node1_fu_548_v10_1_we1),.v10_1_d1(grp_bicg_node1_fu_548_v10_1_d1),.v10_1_q1(v152_1_q1));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U101(.din0(v151_q0),.din1(v151_1_q0),.din2(v151_2_q0),.din3(v151_3_q0),.din4(v151_4_q0),.din5(v151_5_q0),.din6(v151_6_q0),.din7(v151_7_q0),.def(v5_fu_635_p17),.sel(trunc_ln27_reg_702),.dout(v5_fu_635_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_fu_548_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_node1_fu_548_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_fu_548_ap_ready == 1'b1)) begin
            grp_bicg_node1_fu_548_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_fu_398_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_bicg_node2_fu_398_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_fu_398_ap_ready == 1'b1)) begin
            grp_bicg_node2_fu_398_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v41_fu_208 <= 6'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v41_fu_208 <= v4_fu_614_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln27_1_reg_707 <= trunc_ln27_1_fu_572_p1;
        trunc_ln27_reg_702 <= trunc_ln27_fu_568_p1;
        v41_load_reg_697 <= v41_fu_208;
        v6_reg_771 <= v6_fu_679_p3;
        zext_ln27_reg_766[5 : 0] <= zext_ln27_fu_631_p1[5 : 0];
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
    if ((1'b1 == ap_block_state2_on_subcall_done)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln27_fu_620_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_ce0_local = 1'b1;
    end else begin
        v141_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_we0_local = 1'b1;
    end else begin
        v141_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v142_ce0_local = 1'b1;
    end else begin
        v142_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v142_we0_local = 1'b1;
    end else begin
        v142_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_address0 = grp_bicg_node2_fu_398_v65_1_address0;
    end else begin
        v151_1_address0 = zext_ln27_2_fu_602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_ce0 = grp_bicg_node2_fu_398_v65_1_ce0;
    end else begin
        v151_1_ce0 = v151_1_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_1_ce0_local = 1'b1;
    end else begin
        v151_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_ce1 = grp_bicg_node2_fu_398_v65_1_ce1;
    end else begin
        v151_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_we0 = grp_bicg_node2_fu_398_v65_1_we0;
    end else begin
        v151_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_2_address0 = grp_bicg_node2_fu_398_v65_2_address0;
    end else begin
        v151_2_address0 = zext_ln27_2_fu_602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_2_ce0 = grp_bicg_node2_fu_398_v65_2_ce0;
    end else begin
        v151_2_ce0 = v151_2_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_2_ce0_local = 1'b1;
    end else begin
        v151_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_2_ce1 = grp_bicg_node2_fu_398_v65_2_ce1;
    end else begin
        v151_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_2_we0 = grp_bicg_node2_fu_398_v65_2_we0;
    end else begin
        v151_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_3_address0 = grp_bicg_node2_fu_398_v65_3_address0;
    end else begin
        v151_3_address0 = zext_ln27_2_fu_602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_3_ce0 = grp_bicg_node2_fu_398_v65_3_ce0;
    end else begin
        v151_3_ce0 = v151_3_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_3_ce0_local = 1'b1;
    end else begin
        v151_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_3_ce1 = grp_bicg_node2_fu_398_v65_3_ce1;
    end else begin
        v151_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_3_we0 = grp_bicg_node2_fu_398_v65_3_we0;
    end else begin
        v151_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_4_address0 = grp_bicg_node2_fu_398_v65_4_address0;
    end else begin
        v151_4_address0 = zext_ln27_2_fu_602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_4_ce0 = grp_bicg_node2_fu_398_v65_4_ce0;
    end else begin
        v151_4_ce0 = v151_4_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_4_ce0_local = 1'b1;
    end else begin
        v151_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_4_we0 = grp_bicg_node2_fu_398_v65_4_we0;
    end else begin
        v151_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_5_address0 = grp_bicg_node2_fu_398_v65_5_address0;
    end else begin
        v151_5_address0 = zext_ln27_2_fu_602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_5_ce0 = grp_bicg_node2_fu_398_v65_5_ce0;
    end else begin
        v151_5_ce0 = v151_5_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_5_ce0_local = 1'b1;
    end else begin
        v151_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_5_we0 = grp_bicg_node2_fu_398_v65_5_we0;
    end else begin
        v151_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_6_address0 = grp_bicg_node2_fu_398_v65_6_address0;
    end else begin
        v151_6_address0 = zext_ln27_2_fu_602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_6_ce0 = grp_bicg_node2_fu_398_v65_6_ce0;
    end else begin
        v151_6_ce0 = v151_6_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_6_ce0_local = 1'b1;
    end else begin
        v151_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_6_we0 = grp_bicg_node2_fu_398_v65_6_we0;
    end else begin
        v151_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_7_address0 = grp_bicg_node2_fu_398_v65_7_address0;
    end else begin
        v151_7_address0 = zext_ln27_2_fu_602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_7_ce0 = grp_bicg_node2_fu_398_v65_7_ce0;
    end else begin
        v151_7_ce0 = v151_7_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_7_ce0_local = 1'b1;
    end else begin
        v151_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_7_we0 = grp_bicg_node2_fu_398_v65_7_we0;
    end else begin
        v151_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address0 = grp_bicg_node2_fu_398_v65_0_address0;
    end else begin
        v151_address0 = zext_ln27_2_fu_602_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce0 = grp_bicg_node2_fu_398_v65_0_ce0;
    end else begin
        v151_ce0 = v151_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_ce0_local = 1'b1;
    end else begin
        v151_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce1 = grp_bicg_node2_fu_398_v65_0_ce1;
    end else begin
        v151_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we0 = grp_bicg_node2_fu_398_v65_0_we0;
    end else begin
        v151_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_address0 = grp_bicg_node1_fu_548_v10_1_address0;
    end else begin
        v152_1_address0 = zext_ln27_1_fu_586_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce0 = grp_bicg_node1_fu_548_v10_1_ce0;
    end else begin
        v152_1_ce0 = v152_1_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v152_1_ce0_local = 1'b1;
    end else begin
        v152_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce1 = grp_bicg_node1_fu_548_v10_1_ce1;
    end else begin
        v152_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we0 = grp_bicg_node1_fu_548_v10_1_we0;
    end else begin
        v152_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we1 = grp_bicg_node1_fu_548_v10_1_we1;
    end else begin
        v152_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address0 = grp_bicg_node1_fu_548_v10_0_address0;
    end else begin
        v152_address0 = zext_ln27_1_fu_586_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce0 = grp_bicg_node1_fu_548_v10_0_ce0;
    end else begin
        v152_ce0 = v152_ce0_local;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v152_ce0_local = 1'b1;
    end else begin
        v152_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce1 = grp_bicg_node1_fu_548_v10_0_ce1;
    end else begin
        v152_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we0 = grp_bicg_node1_fu_548_v10_0_we0;
    end else begin
        v152_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we1 = grp_bicg_node1_fu_548_v10_0_we1;
    end else begin
        v152_we1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_bicg_node1_fu_548_ap_done == 1'b0) | (grp_bicg_node2_fu_398_ap_done == 1'b0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign bitcast_ln29_fu_674_p1 = v5_fu_635_p19;
assign bitcast_ln31_fu_686_p1 = v6_reg_771;
assign grp_bicg_node1_fu_548_ap_start = grp_bicg_node1_fu_548_ap_start_reg;
assign grp_bicg_node2_fu_398_ap_start = grp_bicg_node2_fu_398_ap_start_reg;
assign icmp_ln27_fu_620_p2 = ((v41_fu_208 == 6'd63) ? 1'b1 : 1'b0);
assign lshr_ln27_1_fu_592_p4 = {{v41_fu_208[5:3]}};
assign lshr_ln_fu_576_p4 = {{v41_fu_208[5:1]}};
assign trunc_ln27_1_fu_572_p1 = v41_fu_208[0:0];
assign trunc_ln27_fu_568_p1 = v41_fu_208[2:0];
assign v137_address0 = grp_bicg_node1_fu_548_v137_address0;
assign v137_address1 = grp_bicg_node1_fu_548_v137_address1;
assign v137_ce0 = grp_bicg_node1_fu_548_v137_ce0;
assign v137_ce1 = grp_bicg_node1_fu_548_v137_ce1;
assign v138_0_address0 = grp_bicg_node2_fu_398_v138_0_address0;
assign v138_0_ce0 = grp_bicg_node2_fu_398_v138_0_ce0;
assign v138_10_address0 = grp_bicg_node2_fu_398_v138_10_address0;
assign v138_10_ce0 = grp_bicg_node2_fu_398_v138_10_ce0;
assign v138_11_address0 = grp_bicg_node2_fu_398_v138_11_address0;
assign v138_11_ce0 = grp_bicg_node2_fu_398_v138_11_ce0;
assign v138_12_address0 = grp_bicg_node2_fu_398_v138_12_address0;
assign v138_12_ce0 = grp_bicg_node2_fu_398_v138_12_ce0;
assign v138_13_address0 = grp_bicg_node2_fu_398_v138_13_address0;
assign v138_13_ce0 = grp_bicg_node2_fu_398_v138_13_ce0;
assign v138_14_address0 = grp_bicg_node2_fu_398_v138_14_address0;
assign v138_14_ce0 = grp_bicg_node2_fu_398_v138_14_ce0;
assign v138_15_address0 = grp_bicg_node2_fu_398_v138_15_address0;
assign v138_15_ce0 = grp_bicg_node2_fu_398_v138_15_ce0;
assign v138_16_address0 = grp_bicg_node2_fu_398_v138_16_address0;
assign v138_16_ce0 = grp_bicg_node2_fu_398_v138_16_ce0;
assign v138_17_address0 = grp_bicg_node2_fu_398_v138_17_address0;
assign v138_17_ce0 = grp_bicg_node2_fu_398_v138_17_ce0;
assign v138_18_address0 = grp_bicg_node2_fu_398_v138_18_address0;
assign v138_18_ce0 = grp_bicg_node2_fu_398_v138_18_ce0;
assign v138_19_address0 = grp_bicg_node2_fu_398_v138_19_address0;
assign v138_19_ce0 = grp_bicg_node2_fu_398_v138_19_ce0;
assign v138_1_address0 = grp_bicg_node2_fu_398_v138_1_address0;
assign v138_1_ce0 = grp_bicg_node2_fu_398_v138_1_ce0;
assign v138_20_address0 = grp_bicg_node2_fu_398_v138_20_address0;
assign v138_20_ce0 = grp_bicg_node2_fu_398_v138_20_ce0;
assign v138_21_address0 = grp_bicg_node2_fu_398_v138_21_address0;
assign v138_21_ce0 = grp_bicg_node2_fu_398_v138_21_ce0;
assign v138_22_address0 = grp_bicg_node2_fu_398_v138_22_address0;
assign v138_22_ce0 = grp_bicg_node2_fu_398_v138_22_ce0;
assign v138_23_address0 = grp_bicg_node2_fu_398_v138_23_address0;
assign v138_23_ce0 = grp_bicg_node2_fu_398_v138_23_ce0;
assign v138_24_address0 = grp_bicg_node2_fu_398_v138_24_address0;
assign v138_24_ce0 = grp_bicg_node2_fu_398_v138_24_ce0;
assign v138_25_address0 = grp_bicg_node2_fu_398_v138_25_address0;
assign v138_25_ce0 = grp_bicg_node2_fu_398_v138_25_ce0;
assign v138_26_address0 = grp_bicg_node2_fu_398_v138_26_address0;
assign v138_26_ce0 = grp_bicg_node2_fu_398_v138_26_ce0;
assign v138_27_address0 = grp_bicg_node2_fu_398_v138_27_address0;
assign v138_27_ce0 = grp_bicg_node2_fu_398_v138_27_ce0;
assign v138_28_address0 = grp_bicg_node2_fu_398_v138_28_address0;
assign v138_28_ce0 = grp_bicg_node2_fu_398_v138_28_ce0;
assign v138_29_address0 = grp_bicg_node2_fu_398_v138_29_address0;
assign v138_29_ce0 = grp_bicg_node2_fu_398_v138_29_ce0;
assign v138_2_address0 = grp_bicg_node2_fu_398_v138_2_address0;
assign v138_2_ce0 = grp_bicg_node2_fu_398_v138_2_ce0;
assign v138_30_address0 = grp_bicg_node2_fu_398_v138_30_address0;
assign v138_30_ce0 = grp_bicg_node2_fu_398_v138_30_ce0;
assign v138_31_address0 = grp_bicg_node2_fu_398_v138_31_address0;
assign v138_31_ce0 = grp_bicg_node2_fu_398_v138_31_ce0;
assign v138_32_address0 = grp_bicg_node2_fu_398_v138_32_address0;
assign v138_32_ce0 = grp_bicg_node2_fu_398_v138_32_ce0;
assign v138_33_address0 = grp_bicg_node2_fu_398_v138_33_address0;
assign v138_33_ce0 = grp_bicg_node2_fu_398_v138_33_ce0;
assign v138_34_address0 = grp_bicg_node2_fu_398_v138_34_address0;
assign v138_34_ce0 = grp_bicg_node2_fu_398_v138_34_ce0;
assign v138_35_address0 = grp_bicg_node2_fu_398_v138_35_address0;
assign v138_35_ce0 = grp_bicg_node2_fu_398_v138_35_ce0;
assign v138_36_address0 = grp_bicg_node2_fu_398_v138_36_address0;
assign v138_36_ce0 = grp_bicg_node2_fu_398_v138_36_ce0;
assign v138_37_address0 = grp_bicg_node2_fu_398_v138_37_address0;
assign v138_37_ce0 = grp_bicg_node2_fu_398_v138_37_ce0;
assign v138_38_address0 = grp_bicg_node2_fu_398_v138_38_address0;
assign v138_38_ce0 = grp_bicg_node2_fu_398_v138_38_ce0;
assign v138_39_address0 = grp_bicg_node2_fu_398_v138_39_address0;
assign v138_39_ce0 = grp_bicg_node2_fu_398_v138_39_ce0;
assign v138_3_address0 = grp_bicg_node2_fu_398_v138_3_address0;
assign v138_3_ce0 = grp_bicg_node2_fu_398_v138_3_ce0;
assign v138_40_address0 = grp_bicg_node2_fu_398_v138_40_address0;
assign v138_40_ce0 = grp_bicg_node2_fu_398_v138_40_ce0;
assign v138_41_address0 = grp_bicg_node2_fu_398_v138_41_address0;
assign v138_41_ce0 = grp_bicg_node2_fu_398_v138_41_ce0;
assign v138_42_address0 = grp_bicg_node2_fu_398_v138_42_address0;
assign v138_42_ce0 = grp_bicg_node2_fu_398_v138_42_ce0;
assign v138_43_address0 = grp_bicg_node2_fu_398_v138_43_address0;
assign v138_43_ce0 = grp_bicg_node2_fu_398_v138_43_ce0;
assign v138_44_address0 = grp_bicg_node2_fu_398_v138_44_address0;
assign v138_44_ce0 = grp_bicg_node2_fu_398_v138_44_ce0;
assign v138_45_address0 = grp_bicg_node2_fu_398_v138_45_address0;
assign v138_45_ce0 = grp_bicg_node2_fu_398_v138_45_ce0;
assign v138_46_address0 = grp_bicg_node2_fu_398_v138_46_address0;
assign v138_46_ce0 = grp_bicg_node2_fu_398_v138_46_ce0;
assign v138_47_address0 = grp_bicg_node2_fu_398_v138_47_address0;
assign v138_47_ce0 = grp_bicg_node2_fu_398_v138_47_ce0;
assign v138_48_address0 = grp_bicg_node2_fu_398_v138_48_address0;
assign v138_48_ce0 = grp_bicg_node2_fu_398_v138_48_ce0;
assign v138_49_address0 = grp_bicg_node2_fu_398_v138_49_address0;
assign v138_49_ce0 = grp_bicg_node2_fu_398_v138_49_ce0;
assign v138_4_address0 = grp_bicg_node2_fu_398_v138_4_address0;
assign v138_4_ce0 = grp_bicg_node2_fu_398_v138_4_ce0;
assign v138_50_address0 = grp_bicg_node2_fu_398_v138_50_address0;
assign v138_50_ce0 = grp_bicg_node2_fu_398_v138_50_ce0;
assign v138_51_address0 = grp_bicg_node2_fu_398_v138_51_address0;
assign v138_51_ce0 = grp_bicg_node2_fu_398_v138_51_ce0;
assign v138_52_address0 = grp_bicg_node2_fu_398_v138_52_address0;
assign v138_52_ce0 = grp_bicg_node2_fu_398_v138_52_ce0;
assign v138_53_address0 = grp_bicg_node2_fu_398_v138_53_address0;
assign v138_53_ce0 = grp_bicg_node2_fu_398_v138_53_ce0;
assign v138_54_address0 = grp_bicg_node2_fu_398_v138_54_address0;
assign v138_54_ce0 = grp_bicg_node2_fu_398_v138_54_ce0;
assign v138_55_address0 = grp_bicg_node2_fu_398_v138_55_address0;
assign v138_55_ce0 = grp_bicg_node2_fu_398_v138_55_ce0;
assign v138_56_address0 = grp_bicg_node2_fu_398_v138_56_address0;
assign v138_56_ce0 = grp_bicg_node2_fu_398_v138_56_ce0;
assign v138_57_address0 = grp_bicg_node2_fu_398_v138_57_address0;
assign v138_57_ce0 = grp_bicg_node2_fu_398_v138_57_ce0;
assign v138_58_address0 = grp_bicg_node2_fu_398_v138_58_address0;
assign v138_58_ce0 = grp_bicg_node2_fu_398_v138_58_ce0;
assign v138_59_address0 = grp_bicg_node2_fu_398_v138_59_address0;
assign v138_59_ce0 = grp_bicg_node2_fu_398_v138_59_ce0;
assign v138_5_address0 = grp_bicg_node2_fu_398_v138_5_address0;
assign v138_5_ce0 = grp_bicg_node2_fu_398_v138_5_ce0;
assign v138_60_address0 = grp_bicg_node2_fu_398_v138_60_address0;
assign v138_60_ce0 = grp_bicg_node2_fu_398_v138_60_ce0;
assign v138_61_address0 = grp_bicg_node2_fu_398_v138_61_address0;
assign v138_61_ce0 = grp_bicg_node2_fu_398_v138_61_ce0;
assign v138_62_address0 = grp_bicg_node2_fu_398_v138_62_address0;
assign v138_62_ce0 = grp_bicg_node2_fu_398_v138_62_ce0;
assign v138_63_address0 = grp_bicg_node2_fu_398_v138_63_address0;
assign v138_63_ce0 = grp_bicg_node2_fu_398_v138_63_ce0;
assign v138_6_address0 = grp_bicg_node2_fu_398_v138_6_address0;
assign v138_6_ce0 = grp_bicg_node2_fu_398_v138_6_ce0;
assign v138_7_address0 = grp_bicg_node2_fu_398_v138_7_address0;
assign v138_7_ce0 = grp_bicg_node2_fu_398_v138_7_ce0;
assign v138_8_address0 = grp_bicg_node2_fu_398_v138_8_address0;
assign v138_8_ce0 = grp_bicg_node2_fu_398_v138_8_ce0;
assign v138_9_address0 = grp_bicg_node2_fu_398_v138_9_address0;
assign v138_9_ce0 = grp_bicg_node2_fu_398_v138_9_ce0;
assign v139_address0 = grp_bicg_node1_fu_548_v139_address0;
assign v139_ce0 = grp_bicg_node1_fu_548_v139_ce0;
assign v140_address0 = grp_bicg_node2_fu_398_v140_address0;
assign v140_ce0 = grp_bicg_node2_fu_398_v140_ce0;
assign v141_address0 = zext_ln27_fu_631_p1;
assign v141_ce0 = v141_ce0_local;
assign v141_d0 = bitcast_ln29_fu_674_p1;
assign v141_we0 = v141_we0_local;
assign v142_address0 = zext_ln27_reg_766;
assign v142_ce0 = v142_ce0_local;
assign v142_d0 = bitcast_ln31_fu_686_p1;
assign v142_we0 = v142_we0_local;
assign v4_fu_614_p2 = (v41_fu_208 + 6'd1);
assign v5_fu_635_p17 = 'bx;
assign v6_fu_679_p3 = ((trunc_ln27_1_reg_707[0:0] == 1'b1) ? v152_1_q0 : v152_q0);
assign zext_ln27_1_fu_586_p1 = lshr_ln_fu_576_p4;
assign zext_ln27_2_fu_602_p1 = lshr_ln27_1_fu_592_p4;
assign zext_ln27_fu_631_p1 = v41_load_reg_697;
always @ (posedge ap_clk) begin
    zext_ln27_reg_766[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 