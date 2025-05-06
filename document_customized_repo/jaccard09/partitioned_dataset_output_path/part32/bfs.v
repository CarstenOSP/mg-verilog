
module bfs (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nodes_0_address0,nodes_0_ce0,nodes_0_q0,nodes_1_address0,nodes_1_ce0,nodes_1_q0,nodes_2_address0,nodes_2_ce0,nodes_2_q0,nodes_3_address0,nodes_3_ce0,nodes_3_q0,nodes_4_address0,nodes_4_ce0,nodes_4_q0,nodes_5_address0,nodes_5_ce0,nodes_5_q0,nodes_6_address0,nodes_6_ce0,nodes_6_q0,nodes_7_address0,nodes_7_ce0,nodes_7_q0,nodes_8_address0,nodes_8_ce0,nodes_8_q0,nodes_9_address0,nodes_9_ce0,nodes_9_q0,nodes_10_address0,nodes_10_ce0,nodes_10_q0,nodes_11_address0,nodes_11_ce0,nodes_11_q0,nodes_12_address0,nodes_12_ce0,nodes_12_q0,nodes_13_address0,nodes_13_ce0,nodes_13_q0,nodes_14_address0,nodes_14_ce0,nodes_14_q0,nodes_15_address0,nodes_15_ce0,nodes_15_q0,nodes_16_address0,nodes_16_ce0,nodes_16_q0,nodes_17_address0,nodes_17_ce0,nodes_17_q0,nodes_18_address0,nodes_18_ce0,nodes_18_q0,nodes_19_address0,nodes_19_ce0,nodes_19_q0,nodes_20_address0,nodes_20_ce0,nodes_20_q0,nodes_21_address0,nodes_21_ce0,nodes_21_q0,nodes_22_address0,nodes_22_ce0,nodes_22_q0,nodes_23_address0,nodes_23_ce0,nodes_23_q0,nodes_24_address0,nodes_24_ce0,nodes_24_q0,nodes_25_address0,nodes_25_ce0,nodes_25_q0,nodes_26_address0,nodes_26_ce0,nodes_26_q0,nodes_27_address0,nodes_27_ce0,nodes_27_q0,nodes_28_address0,nodes_28_ce0,nodes_28_q0,nodes_29_address0,nodes_29_ce0,nodes_29_q0,nodes_30_address0,nodes_30_ce0,nodes_30_q0,nodes_31_address0,nodes_31_ce0,nodes_31_q0,nodes_32_address0,nodes_32_ce0,nodes_32_q0,nodes_33_address0,nodes_33_ce0,nodes_33_q0,nodes_34_address0,nodes_34_ce0,nodes_34_q0,nodes_35_address0,nodes_35_ce0,nodes_35_q0,nodes_36_address0,nodes_36_ce0,nodes_36_q0,nodes_37_address0,nodes_37_ce0,nodes_37_q0,nodes_38_address0,nodes_38_ce0,nodes_38_q0,nodes_39_address0,nodes_39_ce0,nodes_39_q0,nodes_40_address0,nodes_40_ce0,nodes_40_q0,nodes_41_address0,nodes_41_ce0,nodes_41_q0,nodes_42_address0,nodes_42_ce0,nodes_42_q0,nodes_43_address0,nodes_43_ce0,nodes_43_q0,nodes_44_address0,nodes_44_ce0,nodes_44_q0,nodes_45_address0,nodes_45_ce0,nodes_45_q0,nodes_46_address0,nodes_46_ce0,nodes_46_q0,nodes_47_address0,nodes_47_ce0,nodes_47_q0,nodes_48_address0,nodes_48_ce0,nodes_48_q0,nodes_49_address0,nodes_49_ce0,nodes_49_q0,nodes_50_address0,nodes_50_ce0,nodes_50_q0,nodes_51_address0,nodes_51_ce0,nodes_51_q0,nodes_52_address0,nodes_52_ce0,nodes_52_q0,nodes_53_address0,nodes_53_ce0,nodes_53_q0,nodes_54_address0,nodes_54_ce0,nodes_54_q0,nodes_55_address0,nodes_55_ce0,nodes_55_q0,nodes_56_address0,nodes_56_ce0,nodes_56_q0,nodes_57_address0,nodes_57_ce0,nodes_57_q0,nodes_58_address0,nodes_58_ce0,nodes_58_q0,nodes_59_address0,nodes_59_ce0,nodes_59_q0,nodes_60_address0,nodes_60_ce0,nodes_60_q0,nodes_61_address0,nodes_61_ce0,nodes_61_q0,nodes_62_address0,nodes_62_ce0,nodes_62_q0,nodes_63_address0,nodes_63_ce0,nodes_63_q0,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,edges_8_address0,edges_8_ce0,edges_8_q0,edges_9_address0,edges_9_ce0,edges_9_q0,edges_10_address0,edges_10_ce0,edges_10_q0,edges_11_address0,edges_11_ce0,edges_11_q0,edges_12_address0,edges_12_ce0,edges_12_q0,edges_13_address0,edges_13_ce0,edges_13_q0,edges_14_address0,edges_14_ce0,edges_14_q0,edges_15_address0,edges_15_ce0,edges_15_q0,edges_16_address0,edges_16_ce0,edges_16_q0,edges_17_address0,edges_17_ce0,edges_17_q0,edges_18_address0,edges_18_ce0,edges_18_q0,edges_19_address0,edges_19_ce0,edges_19_q0,edges_20_address0,edges_20_ce0,edges_20_q0,edges_21_address0,edges_21_ce0,edges_21_q0,edges_22_address0,edges_22_ce0,edges_22_q0,edges_23_address0,edges_23_ce0,edges_23_q0,edges_24_address0,edges_24_ce0,edges_24_q0,edges_25_address0,edges_25_ce0,edges_25_q0,edges_26_address0,edges_26_ce0,edges_26_q0,edges_27_address0,edges_27_ce0,edges_27_q0,edges_28_address0,edges_28_ce0,edges_28_q0,edges_29_address0,edges_29_ce0,edges_29_q0,edges_30_address0,edges_30_ce0,edges_30_q0,edges_31_address0,edges_31_ce0,edges_31_q0,edges_32_address0,edges_32_ce0,edges_32_q0,edges_33_address0,edges_33_ce0,edges_33_q0,edges_34_address0,edges_34_ce0,edges_34_q0,edges_35_address0,edges_35_ce0,edges_35_q0,edges_36_address0,edges_36_ce0,edges_36_q0,edges_37_address0,edges_37_ce0,edges_37_q0,edges_38_address0,edges_38_ce0,edges_38_q0,edges_39_address0,edges_39_ce0,edges_39_q0,edges_40_address0,edges_40_ce0,edges_40_q0,edges_41_address0,edges_41_ce0,edges_41_q0,edges_42_address0,edges_42_ce0,edges_42_q0,edges_43_address0,edges_43_ce0,edges_43_q0,edges_44_address0,edges_44_ce0,edges_44_q0,edges_45_address0,edges_45_ce0,edges_45_q0,edges_46_address0,edges_46_ce0,edges_46_q0,edges_47_address0,edges_47_ce0,edges_47_q0,edges_48_address0,edges_48_ce0,edges_48_q0,edges_49_address0,edges_49_ce0,edges_49_q0,edges_50_address0,edges_50_ce0,edges_50_q0,edges_51_address0,edges_51_ce0,edges_51_q0,edges_52_address0,edges_52_ce0,edges_52_q0,edges_53_address0,edges_53_ce0,edges_53_q0,edges_54_address0,edges_54_ce0,edges_54_q0,edges_55_address0,edges_55_ce0,edges_55_q0,edges_56_address0,edges_56_ce0,edges_56_q0,edges_57_address0,edges_57_ce0,edges_57_q0,edges_58_address0,edges_58_ce0,edges_58_q0,edges_59_address0,edges_59_ce0,edges_59_q0,edges_60_address0,edges_60_ce0,edges_60_q0,edges_61_address0,edges_61_ce0,edges_61_q0,edges_62_address0,edges_62_ce0,edges_62_q0,edges_63_address0,edges_63_ce0,edges_63_q0,starting_node,level_address0,level_ce0,level_we0,level_d0,level_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0);  
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] nodes_0_address0;
output   nodes_0_ce0;
input  [127:0] nodes_0_q0;
output  [1:0] nodes_1_address0;
output   nodes_1_ce0;
input  [127:0] nodes_1_q0;
output  [1:0] nodes_2_address0;
output   nodes_2_ce0;
input  [127:0] nodes_2_q0;
output  [1:0] nodes_3_address0;
output   nodes_3_ce0;
input  [127:0] nodes_3_q0;
output  [1:0] nodes_4_address0;
output   nodes_4_ce0;
input  [127:0] nodes_4_q0;
output  [1:0] nodes_5_address0;
output   nodes_5_ce0;
input  [127:0] nodes_5_q0;
output  [1:0] nodes_6_address0;
output   nodes_6_ce0;
input  [127:0] nodes_6_q0;
output  [1:0] nodes_7_address0;
output   nodes_7_ce0;
input  [127:0] nodes_7_q0;
output  [1:0] nodes_8_address0;
output   nodes_8_ce0;
input  [127:0] nodes_8_q0;
output  [1:0] nodes_9_address0;
output   nodes_9_ce0;
input  [127:0] nodes_9_q0;
output  [1:0] nodes_10_address0;
output   nodes_10_ce0;
input  [127:0] nodes_10_q0;
output  [1:0] nodes_11_address0;
output   nodes_11_ce0;
input  [127:0] nodes_11_q0;
output  [1:0] nodes_12_address0;
output   nodes_12_ce0;
input  [127:0] nodes_12_q0;
output  [1:0] nodes_13_address0;
output   nodes_13_ce0;
input  [127:0] nodes_13_q0;
output  [1:0] nodes_14_address0;
output   nodes_14_ce0;
input  [127:0] nodes_14_q0;
output  [1:0] nodes_15_address0;
output   nodes_15_ce0;
input  [127:0] nodes_15_q0;
output  [1:0] nodes_16_address0;
output   nodes_16_ce0;
input  [127:0] nodes_16_q0;
output  [1:0] nodes_17_address0;
output   nodes_17_ce0;
input  [127:0] nodes_17_q0;
output  [1:0] nodes_18_address0;
output   nodes_18_ce0;
input  [127:0] nodes_18_q0;
output  [1:0] nodes_19_address0;
output   nodes_19_ce0;
input  [127:0] nodes_19_q0;
output  [1:0] nodes_20_address0;
output   nodes_20_ce0;
input  [127:0] nodes_20_q0;
output  [1:0] nodes_21_address0;
output   nodes_21_ce0;
input  [127:0] nodes_21_q0;
output  [1:0] nodes_22_address0;
output   nodes_22_ce0;
input  [127:0] nodes_22_q0;
output  [1:0] nodes_23_address0;
output   nodes_23_ce0;
input  [127:0] nodes_23_q0;
output  [1:0] nodes_24_address0;
output   nodes_24_ce0;
input  [127:0] nodes_24_q0;
output  [1:0] nodes_25_address0;
output   nodes_25_ce0;
input  [127:0] nodes_25_q0;
output  [1:0] nodes_26_address0;
output   nodes_26_ce0;
input  [127:0] nodes_26_q0;
output  [1:0] nodes_27_address0;
output   nodes_27_ce0;
input  [127:0] nodes_27_q0;
output  [1:0] nodes_28_address0;
output   nodes_28_ce0;
input  [127:0] nodes_28_q0;
output  [1:0] nodes_29_address0;
output   nodes_29_ce0;
input  [127:0] nodes_29_q0;
output  [1:0] nodes_30_address0;
output   nodes_30_ce0;
input  [127:0] nodes_30_q0;
output  [1:0] nodes_31_address0;
output   nodes_31_ce0;
input  [127:0] nodes_31_q0;
output  [1:0] nodes_32_address0;
output   nodes_32_ce0;
input  [127:0] nodes_32_q0;
output  [1:0] nodes_33_address0;
output   nodes_33_ce0;
input  [127:0] nodes_33_q0;
output  [1:0] nodes_34_address0;
output   nodes_34_ce0;
input  [127:0] nodes_34_q0;
output  [1:0] nodes_35_address0;
output   nodes_35_ce0;
input  [127:0] nodes_35_q0;
output  [1:0] nodes_36_address0;
output   nodes_36_ce0;
input  [127:0] nodes_36_q0;
output  [1:0] nodes_37_address0;
output   nodes_37_ce0;
input  [127:0] nodes_37_q0;
output  [1:0] nodes_38_address0;
output   nodes_38_ce0;
input  [127:0] nodes_38_q0;
output  [1:0] nodes_39_address0;
output   nodes_39_ce0;
input  [127:0] nodes_39_q0;
output  [1:0] nodes_40_address0;
output   nodes_40_ce0;
input  [127:0] nodes_40_q0;
output  [1:0] nodes_41_address0;
output   nodes_41_ce0;
input  [127:0] nodes_41_q0;
output  [1:0] nodes_42_address0;
output   nodes_42_ce0;
input  [127:0] nodes_42_q0;
output  [1:0] nodes_43_address0;
output   nodes_43_ce0;
input  [127:0] nodes_43_q0;
output  [1:0] nodes_44_address0;
output   nodes_44_ce0;
input  [127:0] nodes_44_q0;
output  [1:0] nodes_45_address0;
output   nodes_45_ce0;
input  [127:0] nodes_45_q0;
output  [1:0] nodes_46_address0;
output   nodes_46_ce0;
input  [127:0] nodes_46_q0;
output  [1:0] nodes_47_address0;
output   nodes_47_ce0;
input  [127:0] nodes_47_q0;
output  [1:0] nodes_48_address0;
output   nodes_48_ce0;
input  [127:0] nodes_48_q0;
output  [1:0] nodes_49_address0;
output   nodes_49_ce0;
input  [127:0] nodes_49_q0;
output  [1:0] nodes_50_address0;
output   nodes_50_ce0;
input  [127:0] nodes_50_q0;
output  [1:0] nodes_51_address0;
output   nodes_51_ce0;
input  [127:0] nodes_51_q0;
output  [1:0] nodes_52_address0;
output   nodes_52_ce0;
input  [127:0] nodes_52_q0;
output  [1:0] nodes_53_address0;
output   nodes_53_ce0;
input  [127:0] nodes_53_q0;
output  [1:0] nodes_54_address0;
output   nodes_54_ce0;
input  [127:0] nodes_54_q0;
output  [1:0] nodes_55_address0;
output   nodes_55_ce0;
input  [127:0] nodes_55_q0;
output  [1:0] nodes_56_address0;
output   nodes_56_ce0;
input  [127:0] nodes_56_q0;
output  [1:0] nodes_57_address0;
output   nodes_57_ce0;
input  [127:0] nodes_57_q0;
output  [1:0] nodes_58_address0;
output   nodes_58_ce0;
input  [127:0] nodes_58_q0;
output  [1:0] nodes_59_address0;
output   nodes_59_ce0;
input  [127:0] nodes_59_q0;
output  [1:0] nodes_60_address0;
output   nodes_60_ce0;
input  [127:0] nodes_60_q0;
output  [1:0] nodes_61_address0;
output   nodes_61_ce0;
input  [127:0] nodes_61_q0;
output  [1:0] nodes_62_address0;
output   nodes_62_ce0;
input  [127:0] nodes_62_q0;
output  [1:0] nodes_63_address0;
output   nodes_63_ce0;
input  [127:0] nodes_63_q0;
output  [5:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [5:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [5:0] edges_2_address0;
output   edges_2_ce0;
input  [63:0] edges_2_q0;
output  [5:0] edges_3_address0;
output   edges_3_ce0;
input  [63:0] edges_3_q0;
output  [5:0] edges_4_address0;
output   edges_4_ce0;
input  [63:0] edges_4_q0;
output  [5:0] edges_5_address0;
output   edges_5_ce0;
input  [63:0] edges_5_q0;
output  [5:0] edges_6_address0;
output   edges_6_ce0;
input  [63:0] edges_6_q0;
output  [5:0] edges_7_address0;
output   edges_7_ce0;
input  [63:0] edges_7_q0;
output  [5:0] edges_8_address0;
output   edges_8_ce0;
input  [63:0] edges_8_q0;
output  [5:0] edges_9_address0;
output   edges_9_ce0;
input  [63:0] edges_9_q0;
output  [5:0] edges_10_address0;
output   edges_10_ce0;
input  [63:0] edges_10_q0;
output  [5:0] edges_11_address0;
output   edges_11_ce0;
input  [63:0] edges_11_q0;
output  [5:0] edges_12_address0;
output   edges_12_ce0;
input  [63:0] edges_12_q0;
output  [5:0] edges_13_address0;
output   edges_13_ce0;
input  [63:0] edges_13_q0;
output  [5:0] edges_14_address0;
output   edges_14_ce0;
input  [63:0] edges_14_q0;
output  [5:0] edges_15_address0;
output   edges_15_ce0;
input  [63:0] edges_15_q0;
output  [5:0] edges_16_address0;
output   edges_16_ce0;
input  [63:0] edges_16_q0;
output  [5:0] edges_17_address0;
output   edges_17_ce0;
input  [63:0] edges_17_q0;
output  [5:0] edges_18_address0;
output   edges_18_ce0;
input  [63:0] edges_18_q0;
output  [5:0] edges_19_address0;
output   edges_19_ce0;
input  [63:0] edges_19_q0;
output  [5:0] edges_20_address0;
output   edges_20_ce0;
input  [63:0] edges_20_q0;
output  [5:0] edges_21_address0;
output   edges_21_ce0;
input  [63:0] edges_21_q0;
output  [5:0] edges_22_address0;
output   edges_22_ce0;
input  [63:0] edges_22_q0;
output  [5:0] edges_23_address0;
output   edges_23_ce0;
input  [63:0] edges_23_q0;
output  [5:0] edges_24_address0;
output   edges_24_ce0;
input  [63:0] edges_24_q0;
output  [5:0] edges_25_address0;
output   edges_25_ce0;
input  [63:0] edges_25_q0;
output  [5:0] edges_26_address0;
output   edges_26_ce0;
input  [63:0] edges_26_q0;
output  [5:0] edges_27_address0;
output   edges_27_ce0;
input  [63:0] edges_27_q0;
output  [5:0] edges_28_address0;
output   edges_28_ce0;
input  [63:0] edges_28_q0;
output  [5:0] edges_29_address0;
output   edges_29_ce0;
input  [63:0] edges_29_q0;
output  [5:0] edges_30_address0;
output   edges_30_ce0;
input  [63:0] edges_30_q0;
output  [5:0] edges_31_address0;
output   edges_31_ce0;
input  [63:0] edges_31_q0;
output  [5:0] edges_32_address0;
output   edges_32_ce0;
input  [63:0] edges_32_q0;
output  [5:0] edges_33_address0;
output   edges_33_ce0;
input  [63:0] edges_33_q0;
output  [5:0] edges_34_address0;
output   edges_34_ce0;
input  [63:0] edges_34_q0;
output  [5:0] edges_35_address0;
output   edges_35_ce0;
input  [63:0] edges_35_q0;
output  [5:0] edges_36_address0;
output   edges_36_ce0;
input  [63:0] edges_36_q0;
output  [5:0] edges_37_address0;
output   edges_37_ce0;
input  [63:0] edges_37_q0;
output  [5:0] edges_38_address0;
output   edges_38_ce0;
input  [63:0] edges_38_q0;
output  [5:0] edges_39_address0;
output   edges_39_ce0;
input  [63:0] edges_39_q0;
output  [5:0] edges_40_address0;
output   edges_40_ce0;
input  [63:0] edges_40_q0;
output  [5:0] edges_41_address0;
output   edges_41_ce0;
input  [63:0] edges_41_q0;
output  [5:0] edges_42_address0;
output   edges_42_ce0;
input  [63:0] edges_42_q0;
output  [5:0] edges_43_address0;
output   edges_43_ce0;
input  [63:0] edges_43_q0;
output  [5:0] edges_44_address0;
output   edges_44_ce0;
input  [63:0] edges_44_q0;
output  [5:0] edges_45_address0;
output   edges_45_ce0;
input  [63:0] edges_45_q0;
output  [5:0] edges_46_address0;
output   edges_46_ce0;
input  [63:0] edges_46_q0;
output  [5:0] edges_47_address0;
output   edges_47_ce0;
input  [63:0] edges_47_q0;
output  [5:0] edges_48_address0;
output   edges_48_ce0;
input  [63:0] edges_48_q0;
output  [5:0] edges_49_address0;
output   edges_49_ce0;
input  [63:0] edges_49_q0;
output  [5:0] edges_50_address0;
output   edges_50_ce0;
input  [63:0] edges_50_q0;
output  [5:0] edges_51_address0;
output   edges_51_ce0;
input  [63:0] edges_51_q0;
output  [5:0] edges_52_address0;
output   edges_52_ce0;
input  [63:0] edges_52_q0;
output  [5:0] edges_53_address0;
output   edges_53_ce0;
input  [63:0] edges_53_q0;
output  [5:0] edges_54_address0;
output   edges_54_ce0;
input  [63:0] edges_54_q0;
output  [5:0] edges_55_address0;
output   edges_55_ce0;
input  [63:0] edges_55_q0;
output  [5:0] edges_56_address0;
output   edges_56_ce0;
input  [63:0] edges_56_q0;
output  [5:0] edges_57_address0;
output   edges_57_ce0;
input  [63:0] edges_57_q0;
output  [5:0] edges_58_address0;
output   edges_58_ce0;
input  [63:0] edges_58_q0;
output  [5:0] edges_59_address0;
output   edges_59_ce0;
input  [63:0] edges_59_q0;
output  [5:0] edges_60_address0;
output   edges_60_ce0;
input  [63:0] edges_60_q0;
output  [5:0] edges_61_address0;
output   edges_61_ce0;
input  [63:0] edges_61_q0;
output  [5:0] edges_62_address0;
output   edges_62_ce0;
input  [63:0] edges_62_q0;
output  [5:0] edges_63_address0;
output   edges_63_ce0;
input  [63:0] edges_63_q0;
input  [63:0] starting_node;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] level_address0;
reg level_ce0;
reg level_we0;
reg[7:0] level_d0;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] zext_ln15_fu_1538_p1;
reg   [7:0] zext_ln15_reg_3117;
wire    ap_CS_fsm_state2;
wire   [3:0] indvars_iv_next12_fu_1542_p2;
reg   [3:0] indvars_iv_next12_reg_3122;
wire   [63:0] indvars_iv_next12_cast3_fu_1548_p1;
reg   [63:0] indvars_iv_next12_cast3_reg_3129;
wire   [8:0] n_1_fu_1558_p2;
reg   [8:0] n_1_reg_3137;
wire    ap_CS_fsm_state3;
wire   [5:0] trunc_ln24_fu_1569_p1;
reg   [5:0] trunc_ln24_reg_3142;
reg   [1:0] lshr_ln_reg_3148;
wire   [0:0] icmp_ln25_fu_1671_p2;
reg   [0:0] icmp_ln25_reg_3161;
wire    ap_CS_fsm_state4;
wire   [63:0] e_fu_1932_p131;
reg   [63:0] e_reg_3485;
wire    ap_CS_fsm_state5;
wire   [63:0] tmp_end_fu_2836_p131;
reg   [63:0] tmp_end_reg_3490;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_start;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_done;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_idle;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_ready;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_0_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_0_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_1_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_2_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_2_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_3_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_3_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_4_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_4_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_5_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_5_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_6_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_6_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_7_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_7_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_8_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_8_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_9_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_9_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_10_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_10_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_11_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_11_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_12_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_12_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_13_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_13_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_14_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_14_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_15_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_15_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_16_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_16_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_17_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_17_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_18_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_18_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_19_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_19_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_20_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_20_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_21_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_21_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_22_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_22_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_23_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_23_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_24_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_24_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_25_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_25_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_26_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_26_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_27_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_27_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_28_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_28_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_29_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_29_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_30_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_30_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_31_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_31_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_32_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_32_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_33_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_33_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_34_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_34_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_35_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_35_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_36_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_36_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_37_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_37_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_38_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_38_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_39_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_39_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_40_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_40_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_41_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_41_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_42_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_42_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_43_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_43_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_44_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_44_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_45_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_45_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_46_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_46_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_47_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_47_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_48_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_48_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_49_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_49_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_50_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_50_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_51_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_51_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_52_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_52_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_53_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_53_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_54_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_54_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_55_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_55_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_56_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_56_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_57_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_57_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_58_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_58_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_59_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_59_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_60_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_60_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_61_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_61_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_62_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_62_ce0;
wire   [5:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_63_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_63_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_level_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_level_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_level_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_level_d0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_1390_cnt_1_out;
wire    grp_bfs_Pipeline_loop_neighbors_fu_1390_cnt_1_out_ap_vld;
reg   [63:0] cnt_reg_1354;
reg   [63:0] ap_phi_mux_cnt_2_phi_fu_1382_p4;
wire    ap_CS_fsm_state7;
reg   [8:0] n_reg_1367;
reg   [63:0] cnt_2_reg_1378;
reg    grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln24_fu_1564_p1;
wire   [0:0] icmp_ln24_fu_1552_p2;
wire   [63:0] zext_ln12_fu_1604_p1;
reg   [3:0] horizon_fu_462;
reg    level_we0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_counts_we0_local;
reg   [63:0] level_counts_d0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    nodes_0_ce0_local;
reg    nodes_1_ce0_local;
reg    nodes_2_ce0_local;
reg    nodes_3_ce0_local;
reg    nodes_4_ce0_local;
reg    nodes_5_ce0_local;
reg    nodes_6_ce0_local;
reg    nodes_7_ce0_local;
reg    nodes_8_ce0_local;
reg    nodes_9_ce0_local;
reg    nodes_10_ce0_local;
reg    nodes_11_ce0_local;
reg    nodes_12_ce0_local;
reg    nodes_13_ce0_local;
reg    nodes_14_ce0_local;
reg    nodes_15_ce0_local;
reg    nodes_16_ce0_local;
reg    nodes_17_ce0_local;
reg    nodes_18_ce0_local;
reg    nodes_19_ce0_local;
reg    nodes_20_ce0_local;
reg    nodes_21_ce0_local;
reg    nodes_22_ce0_local;
reg    nodes_23_ce0_local;
reg    nodes_24_ce0_local;
reg    nodes_25_ce0_local;
reg    nodes_26_ce0_local;
reg    nodes_27_ce0_local;
reg    nodes_28_ce0_local;
reg    nodes_29_ce0_local;
reg    nodes_30_ce0_local;
reg    nodes_31_ce0_local;
reg    nodes_32_ce0_local;
reg    nodes_33_ce0_local;
reg    nodes_34_ce0_local;
reg    nodes_35_ce0_local;
reg    nodes_36_ce0_local;
reg    nodes_37_ce0_local;
reg    nodes_38_ce0_local;
reg    nodes_39_ce0_local;
reg    nodes_40_ce0_local;
reg    nodes_41_ce0_local;
reg    nodes_42_ce0_local;
reg    nodes_43_ce0_local;
reg    nodes_44_ce0_local;
reg    nodes_45_ce0_local;
reg    nodes_46_ce0_local;
reg    nodes_47_ce0_local;
reg    nodes_48_ce0_local;
reg    nodes_49_ce0_local;
reg    nodes_50_ce0_local;
reg    nodes_51_ce0_local;
reg    nodes_52_ce0_local;
reg    nodes_53_ce0_local;
reg    nodes_54_ce0_local;
reg    nodes_55_ce0_local;
reg    nodes_56_ce0_local;
reg    nodes_57_ce0_local;
reg    nodes_58_ce0_local;
reg    nodes_59_ce0_local;
reg    nodes_60_ce0_local;
reg    nodes_61_ce0_local;
reg    nodes_62_ce0_local;
reg    nodes_63_ce0_local;
wire   [0:0] icmp_ln43_fu_1583_p2;
wire   [0:0] icmp_ln21_fu_1589_p2;
wire   [63:0] e_fu_1932_p2;
wire   [63:0] e_fu_1932_p4;
wire   [63:0] e_fu_1932_p6;
wire   [63:0] e_fu_1932_p8;
wire   [63:0] e_fu_1932_p10;
wire   [63:0] e_fu_1932_p12;
wire   [63:0] e_fu_1932_p14;
wire   [63:0] e_fu_1932_p16;
wire   [63:0] e_fu_1932_p18;
wire   [63:0] e_fu_1932_p20;
wire   [63:0] e_fu_1932_p22;
wire   [63:0] e_fu_1932_p24;
wire   [63:0] e_fu_1932_p26;
wire   [63:0] e_fu_1932_p28;
wire   [63:0] e_fu_1932_p30;
wire   [63:0] e_fu_1932_p32;
wire   [63:0] e_fu_1932_p34;
wire   [63:0] e_fu_1932_p36;
wire   [63:0] e_fu_1932_p38;
wire   [63:0] e_fu_1932_p40;
wire   [63:0] e_fu_1932_p42;
wire   [63:0] e_fu_1932_p44;
wire   [63:0] e_fu_1932_p46;
wire   [63:0] e_fu_1932_p48;
wire   [63:0] e_fu_1932_p50;
wire   [63:0] e_fu_1932_p52;
wire   [63:0] e_fu_1932_p54;
wire   [63:0] e_fu_1932_p56;
wire   [63:0] e_fu_1932_p58;
wire   [63:0] e_fu_1932_p60;
wire   [63:0] e_fu_1932_p62;
wire   [63:0] e_fu_1932_p64;
wire   [63:0] e_fu_1932_p66;
wire   [63:0] e_fu_1932_p68;
wire   [63:0] e_fu_1932_p70;
wire   [63:0] e_fu_1932_p72;
wire   [63:0] e_fu_1932_p74;
wire   [63:0] e_fu_1932_p76;
wire   [63:0] e_fu_1932_p78;
wire   [63:0] e_fu_1932_p80;
wire   [63:0] e_fu_1932_p82;
wire   [63:0] e_fu_1932_p84;
wire   [63:0] e_fu_1932_p86;
wire   [63:0] e_fu_1932_p88;
wire   [63:0] e_fu_1932_p90;
wire   [63:0] e_fu_1932_p92;
wire   [63:0] e_fu_1932_p94;
wire   [63:0] e_fu_1932_p96;
wire   [63:0] e_fu_1932_p98;
wire   [63:0] e_fu_1932_p100;
wire   [63:0] e_fu_1932_p102;
wire   [63:0] e_fu_1932_p104;
wire   [63:0] e_fu_1932_p106;
wire   [63:0] e_fu_1932_p108;
wire   [63:0] e_fu_1932_p110;
wire   [63:0] e_fu_1932_p112;
wire   [63:0] e_fu_1932_p114;
wire   [63:0] e_fu_1932_p116;
wire   [63:0] e_fu_1932_p118;
wire   [63:0] e_fu_1932_p120;
wire   [63:0] e_fu_1932_p122;
wire   [63:0] e_fu_1932_p124;
wire   [63:0] e_fu_1932_p126;
wire   [63:0] e_fu_1932_p128;
wire   [63:0] e_fu_1932_p129;
wire   [63:0] tmp_end_fu_2836_p2;
wire   [63:0] tmp_end_fu_2836_p4;
wire   [63:0] tmp_end_fu_2836_p6;
wire   [63:0] tmp_end_fu_2836_p8;
wire   [63:0] tmp_end_fu_2836_p10;
wire   [63:0] tmp_end_fu_2836_p12;
wire   [63:0] tmp_end_fu_2836_p14;
wire   [63:0] tmp_end_fu_2836_p16;
wire   [63:0] tmp_end_fu_2836_p18;
wire   [63:0] tmp_end_fu_2836_p20;
wire   [63:0] tmp_end_fu_2836_p22;
wire   [63:0] tmp_end_fu_2836_p24;
wire   [63:0] tmp_end_fu_2836_p26;
wire   [63:0] tmp_end_fu_2836_p28;
wire   [63:0] tmp_end_fu_2836_p30;
wire   [63:0] tmp_end_fu_2836_p32;
wire   [63:0] tmp_end_fu_2836_p34;
wire   [63:0] tmp_end_fu_2836_p36;
wire   [63:0] tmp_end_fu_2836_p38;
wire   [63:0] tmp_end_fu_2836_p40;
wire   [63:0] tmp_end_fu_2836_p42;
wire   [63:0] tmp_end_fu_2836_p44;
wire   [63:0] tmp_end_fu_2836_p46;
wire   [63:0] tmp_end_fu_2836_p48;
wire   [63:0] tmp_end_fu_2836_p50;
wire   [63:0] tmp_end_fu_2836_p52;
wire   [63:0] tmp_end_fu_2836_p54;
wire   [63:0] tmp_end_fu_2836_p56;
wire   [63:0] tmp_end_fu_2836_p58;
wire   [63:0] tmp_end_fu_2836_p60;
wire   [63:0] tmp_end_fu_2836_p62;
wire   [63:0] tmp_end_fu_2836_p64;
wire   [63:0] tmp_end_fu_2836_p66;
wire   [63:0] tmp_end_fu_2836_p68;
wire   [63:0] tmp_end_fu_2836_p70;
wire   [63:0] tmp_end_fu_2836_p72;
wire   [63:0] tmp_end_fu_2836_p74;
wire   [63:0] tmp_end_fu_2836_p76;
wire   [63:0] tmp_end_fu_2836_p78;
wire   [63:0] tmp_end_fu_2836_p80;
wire   [63:0] tmp_end_fu_2836_p82;
wire   [63:0] tmp_end_fu_2836_p84;
wire   [63:0] tmp_end_fu_2836_p86;
wire   [63:0] tmp_end_fu_2836_p88;
wire   [63:0] tmp_end_fu_2836_p90;
wire   [63:0] tmp_end_fu_2836_p92;
wire   [63:0] tmp_end_fu_2836_p94;
wire   [63:0] tmp_end_fu_2836_p96;
wire   [63:0] tmp_end_fu_2836_p98;
wire   [63:0] tmp_end_fu_2836_p100;
wire   [63:0] tmp_end_fu_2836_p102;
wire   [63:0] tmp_end_fu_2836_p104;
wire   [63:0] tmp_end_fu_2836_p106;
wire   [63:0] tmp_end_fu_2836_p108;
wire   [63:0] tmp_end_fu_2836_p110;
wire   [63:0] tmp_end_fu_2836_p112;
wire   [63:0] tmp_end_fu_2836_p114;
wire   [63:0] tmp_end_fu_2836_p116;
wire   [63:0] tmp_end_fu_2836_p118;
wire   [63:0] tmp_end_fu_2836_p120;
wire   [63:0] tmp_end_fu_2836_p122;
wire   [63:0] tmp_end_fu_2836_p124;
wire   [63:0] tmp_end_fu_2836_p126;
wire   [63:0] tmp_end_fu_2836_p128;
wire   [63:0] tmp_end_fu_2836_p129;
wire   [0:0] and_ln43_fu_1594_p2;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire   [5:0] e_fu_1932_p1;
wire   [5:0] e_fu_1932_p3;
wire   [5:0] e_fu_1932_p5;
wire   [5:0] e_fu_1932_p7;
wire   [5:0] e_fu_1932_p9;
wire   [5:0] e_fu_1932_p11;
wire   [5:0] e_fu_1932_p13;
wire   [5:0] e_fu_1932_p15;
wire   [5:0] e_fu_1932_p17;
wire   [5:0] e_fu_1932_p19;
wire   [5:0] e_fu_1932_p21;
wire   [5:0] e_fu_1932_p23;
wire   [5:0] e_fu_1932_p25;
wire   [5:0] e_fu_1932_p27;
wire   [5:0] e_fu_1932_p29;
wire   [5:0] e_fu_1932_p31;
wire   [5:0] e_fu_1932_p33;
wire   [5:0] e_fu_1932_p35;
wire   [5:0] e_fu_1932_p37;
wire   [5:0] e_fu_1932_p39;
wire   [5:0] e_fu_1932_p41;
wire   [5:0] e_fu_1932_p43;
wire   [5:0] e_fu_1932_p45;
wire   [5:0] e_fu_1932_p47;
wire   [5:0] e_fu_1932_p49;
wire   [5:0] e_fu_1932_p51;
wire   [5:0] e_fu_1932_p53;
wire   [5:0] e_fu_1932_p55;
wire   [5:0] e_fu_1932_p57;
wire   [5:0] e_fu_1932_p59;
wire   [5:0] e_fu_1932_p61;
wire   [5:0] e_fu_1932_p63;
wire  signed [5:0] e_fu_1932_p65;
wire  signed [5:0] e_fu_1932_p67;
wire  signed [5:0] e_fu_1932_p69;
wire  signed [5:0] e_fu_1932_p71;
wire  signed [5:0] e_fu_1932_p73;
wire  signed [5:0] e_fu_1932_p75;
wire  signed [5:0] e_fu_1932_p77;
wire  signed [5:0] e_fu_1932_p79;
wire  signed [5:0] e_fu_1932_p81;
wire  signed [5:0] e_fu_1932_p83;
wire  signed [5:0] e_fu_1932_p85;
wire  signed [5:0] e_fu_1932_p87;
wire  signed [5:0] e_fu_1932_p89;
wire  signed [5:0] e_fu_1932_p91;
wire  signed [5:0] e_fu_1932_p93;
wire  signed [5:0] e_fu_1932_p95;
wire  signed [5:0] e_fu_1932_p97;
wire  signed [5:0] e_fu_1932_p99;
wire  signed [5:0] e_fu_1932_p101;
wire  signed [5:0] e_fu_1932_p103;
wire  signed [5:0] e_fu_1932_p105;
wire  signed [5:0] e_fu_1932_p107;
wire  signed [5:0] e_fu_1932_p109;
wire  signed [5:0] e_fu_1932_p111;
wire  signed [5:0] e_fu_1932_p113;
wire  signed [5:0] e_fu_1932_p115;
wire  signed [5:0] e_fu_1932_p117;
wire  signed [5:0] e_fu_1932_p119;
wire  signed [5:0] e_fu_1932_p121;
wire  signed [5:0] e_fu_1932_p123;
wire  signed [5:0] e_fu_1932_p125;
wire  signed [5:0] e_fu_1932_p127;
wire   [5:0] tmp_end_fu_2836_p1;
wire   [5:0] tmp_end_fu_2836_p3;
wire   [5:0] tmp_end_fu_2836_p5;
wire   [5:0] tmp_end_fu_2836_p7;
wire   [5:0] tmp_end_fu_2836_p9;
wire   [5:0] tmp_end_fu_2836_p11;
wire   [5:0] tmp_end_fu_2836_p13;
wire   [5:0] tmp_end_fu_2836_p15;
wire   [5:0] tmp_end_fu_2836_p17;
wire   [5:0] tmp_end_fu_2836_p19;
wire   [5:0] tmp_end_fu_2836_p21;
wire   [5:0] tmp_end_fu_2836_p23;
wire   [5:0] tmp_end_fu_2836_p25;
wire   [5:0] tmp_end_fu_2836_p27;
wire   [5:0] tmp_end_fu_2836_p29;
wire   [5:0] tmp_end_fu_2836_p31;
wire   [5:0] tmp_end_fu_2836_p33;
wire   [5:0] tmp_end_fu_2836_p35;
wire   [5:0] tmp_end_fu_2836_p37;
wire   [5:0] tmp_end_fu_2836_p39;
wire   [5:0] tmp_end_fu_2836_p41;
wire   [5:0] tmp_end_fu_2836_p43;
wire   [5:0] tmp_end_fu_2836_p45;
wire   [5:0] tmp_end_fu_2836_p47;
wire   [5:0] tmp_end_fu_2836_p49;
wire   [5:0] tmp_end_fu_2836_p51;
wire   [5:0] tmp_end_fu_2836_p53;
wire   [5:0] tmp_end_fu_2836_p55;
wire   [5:0] tmp_end_fu_2836_p57;
wire   [5:0] tmp_end_fu_2836_p59;
wire   [5:0] tmp_end_fu_2836_p61;
wire   [5:0] tmp_end_fu_2836_p63;
wire  signed [5:0] tmp_end_fu_2836_p65;
wire  signed [5:0] tmp_end_fu_2836_p67;
wire  signed [5:0] tmp_end_fu_2836_p69;
wire  signed [5:0] tmp_end_fu_2836_p71;
wire  signed [5:0] tmp_end_fu_2836_p73;
wire  signed [5:0] tmp_end_fu_2836_p75;
wire  signed [5:0] tmp_end_fu_2836_p77;
wire  signed [5:0] tmp_end_fu_2836_p79;
wire  signed [5:0] tmp_end_fu_2836_p81;
wire  signed [5:0] tmp_end_fu_2836_p83;
wire  signed [5:0] tmp_end_fu_2836_p85;
wire  signed [5:0] tmp_end_fu_2836_p87;
wire  signed [5:0] tmp_end_fu_2836_p89;
wire  signed [5:0] tmp_end_fu_2836_p91;
wire  signed [5:0] tmp_end_fu_2836_p93;
wire  signed [5:0] tmp_end_fu_2836_p95;
wire  signed [5:0] tmp_end_fu_2836_p97;
wire  signed [5:0] tmp_end_fu_2836_p99;
wire  signed [5:0] tmp_end_fu_2836_p101;
wire  signed [5:0] tmp_end_fu_2836_p103;
wire  signed [5:0] tmp_end_fu_2836_p105;
wire  signed [5:0] tmp_end_fu_2836_p107;
wire  signed [5:0] tmp_end_fu_2836_p109;
wire  signed [5:0] tmp_end_fu_2836_p111;
wire  signed [5:0] tmp_end_fu_2836_p113;
wire  signed [5:0] tmp_end_fu_2836_p115;
wire  signed [5:0] tmp_end_fu_2836_p117;
wire  signed [5:0] tmp_end_fu_2836_p119;
wire  signed [5:0] tmp_end_fu_2836_p121;
wire  signed [5:0] tmp_end_fu_2836_p123;
wire  signed [5:0] tmp_end_fu_2836_p125;
wire  signed [5:0] tmp_end_fu_2836_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_start_reg = 1'b0;
#0 horizon_fu_462 = 4'd0;
end
bfs_bfs_Pipeline_loop_neighbors grp_bfs_Pipeline_loop_neighbors_fu_1390(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_start),.ap_done(grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_done),.ap_idle(grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_idle),.ap_ready(grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_ready),.e(e_reg_3485),.cnt(cnt_reg_1354),.tmp_end(tmp_end_reg_3490),.edges_0_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_0_address0),.edges_0_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_0_ce0),.edges_0_q0(edges_0_q0),.edges_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_1_address0),.edges_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_1_ce0),.edges_1_q0(edges_1_q0),.edges_2_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_2_address0),.edges_2_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_2_ce0),.edges_2_q0(edges_2_q0),.edges_3_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_3_address0),.edges_3_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_3_ce0),.edges_3_q0(edges_3_q0),.edges_4_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_4_address0),.edges_4_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_4_ce0),.edges_4_q0(edges_4_q0),.edges_5_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_5_address0),.edges_5_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_5_ce0),.edges_5_q0(edges_5_q0),.edges_6_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_6_address0),.edges_6_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_6_ce0),.edges_6_q0(edges_6_q0),.edges_7_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_7_address0),.edges_7_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_7_ce0),.edges_7_q0(edges_7_q0),.edges_8_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_8_address0),.edges_8_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_8_ce0),.edges_8_q0(edges_8_q0),.edges_9_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_9_address0),.edges_9_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_9_ce0),.edges_9_q0(edges_9_q0),.edges_10_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_10_address0),.edges_10_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_10_ce0),.edges_10_q0(edges_10_q0),.edges_11_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_11_address0),.edges_11_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_11_ce0),.edges_11_q0(edges_11_q0),.edges_12_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_12_address0),.edges_12_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_12_ce0),.edges_12_q0(edges_12_q0),.edges_13_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_13_address0),.edges_13_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_13_ce0),.edges_13_q0(edges_13_q0),.edges_14_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_14_address0),.edges_14_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_14_ce0),.edges_14_q0(edges_14_q0),.edges_15_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_15_address0),.edges_15_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_15_ce0),.edges_15_q0(edges_15_q0),.edges_16_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_16_address0),.edges_16_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_16_ce0),.edges_16_q0(edges_16_q0),.edges_17_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_17_address0),.edges_17_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_17_ce0),.edges_17_q0(edges_17_q0),.edges_18_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_18_address0),.edges_18_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_18_ce0),.edges_18_q0(edges_18_q0),.edges_19_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_19_address0),.edges_19_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_19_ce0),.edges_19_q0(edges_19_q0),.edges_20_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_20_address0),.edges_20_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_20_ce0),.edges_20_q0(edges_20_q0),.edges_21_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_21_address0),.edges_21_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_21_ce0),.edges_21_q0(edges_21_q0),.edges_22_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_22_address0),.edges_22_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_22_ce0),.edges_22_q0(edges_22_q0),.edges_23_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_23_address0),.edges_23_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_23_ce0),.edges_23_q0(edges_23_q0),.edges_24_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_24_address0),.edges_24_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_24_ce0),.edges_24_q0(edges_24_q0),.edges_25_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_25_address0),.edges_25_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_25_ce0),.edges_25_q0(edges_25_q0),.edges_26_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_26_address0),.edges_26_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_26_ce0),.edges_26_q0(edges_26_q0),.edges_27_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_27_address0),.edges_27_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_27_ce0),.edges_27_q0(edges_27_q0),.edges_28_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_28_address0),.edges_28_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_28_ce0),.edges_28_q0(edges_28_q0),.edges_29_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_29_address0),.edges_29_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_29_ce0),.edges_29_q0(edges_29_q0),.edges_30_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_30_address0),.edges_30_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_30_ce0),.edges_30_q0(edges_30_q0),.edges_31_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_31_address0),.edges_31_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_31_ce0),.edges_31_q0(edges_31_q0),.edges_32_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_32_address0),.edges_32_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_32_ce0),.edges_32_q0(edges_32_q0),.edges_33_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_33_address0),.edges_33_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_33_ce0),.edges_33_q0(edges_33_q0),.edges_34_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_34_address0),.edges_34_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_34_ce0),.edges_34_q0(edges_34_q0),.edges_35_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_35_address0),.edges_35_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_35_ce0),.edges_35_q0(edges_35_q0),.edges_36_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_36_address0),.edges_36_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_36_ce0),.edges_36_q0(edges_36_q0),.edges_37_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_37_address0),.edges_37_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_37_ce0),.edges_37_q0(edges_37_q0),.edges_38_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_38_address0),.edges_38_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_38_ce0),.edges_38_q0(edges_38_q0),.edges_39_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_39_address0),.edges_39_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_39_ce0),.edges_39_q0(edges_39_q0),.edges_40_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_40_address0),.edges_40_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_40_ce0),.edges_40_q0(edges_40_q0),.edges_41_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_41_address0),.edges_41_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_41_ce0),.edges_41_q0(edges_41_q0),.edges_42_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_42_address0),.edges_42_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_42_ce0),.edges_42_q0(edges_42_q0),.edges_43_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_43_address0),.edges_43_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_43_ce0),.edges_43_q0(edges_43_q0),.edges_44_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_44_address0),.edges_44_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_44_ce0),.edges_44_q0(edges_44_q0),.edges_45_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_45_address0),.edges_45_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_45_ce0),.edges_45_q0(edges_45_q0),.edges_46_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_46_address0),.edges_46_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_46_ce0),.edges_46_q0(edges_46_q0),.edges_47_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_47_address0),.edges_47_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_47_ce0),.edges_47_q0(edges_47_q0),.edges_48_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_48_address0),.edges_48_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_48_ce0),.edges_48_q0(edges_48_q0),.edges_49_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_49_address0),.edges_49_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_49_ce0),.edges_49_q0(edges_49_q0),.edges_50_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_50_address0),.edges_50_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_50_ce0),.edges_50_q0(edges_50_q0),.edges_51_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_51_address0),.edges_51_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_51_ce0),.edges_51_q0(edges_51_q0),.edges_52_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_52_address0),.edges_52_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_52_ce0),.edges_52_q0(edges_52_q0),.edges_53_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_53_address0),.edges_53_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_53_ce0),.edges_53_q0(edges_53_q0),.edges_54_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_54_address0),.edges_54_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_54_ce0),.edges_54_q0(edges_54_q0),.edges_55_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_55_address0),.edges_55_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_55_ce0),.edges_55_q0(edges_55_q0),.edges_56_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_56_address0),.edges_56_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_56_ce0),.edges_56_q0(edges_56_q0),.edges_57_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_57_address0),.edges_57_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_57_ce0),.edges_57_q0(edges_57_q0),.edges_58_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_58_address0),.edges_58_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_58_ce0),.edges_58_q0(edges_58_q0),.edges_59_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_59_address0),.edges_59_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_59_ce0),.edges_59_q0(edges_59_q0),.edges_60_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_60_address0),.edges_60_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_60_ce0),.edges_60_q0(edges_60_q0),.edges_61_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_61_address0),.edges_61_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_61_ce0),.edges_61_q0(edges_61_q0),.edges_62_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_62_address0),.edges_62_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_62_ce0),.edges_62_q0(edges_62_q0),.edges_63_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_63_address0),.edges_63_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_63_ce0),.edges_63_q0(edges_63_q0),.level_address0(grp_bfs_Pipeline_loop_neighbors_fu_1390_level_address0),.level_ce0(grp_bfs_Pipeline_loop_neighbors_fu_1390_level_ce0),.level_we0(grp_bfs_Pipeline_loop_neighbors_fu_1390_level_we0),.level_d0(grp_bfs_Pipeline_loop_neighbors_fu_1390_level_d0),.level_q0(level_q0),.indvars_iv_next12_cast4(indvars_iv_next12_reg_3122),.cnt_1_out(grp_bfs_Pipeline_loop_neighbors_fu_1390_cnt_1_out),.cnt_1_out_ap_vld(grp_bfs_Pipeline_loop_neighbors_fu_1390_cnt_1_out_ap_vld));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U73(.din0(e_fu_1932_p2),.din1(e_fu_1932_p4),.din2(e_fu_1932_p6),.din3(e_fu_1932_p8),.din4(e_fu_1932_p10),.din5(e_fu_1932_p12),.din6(e_fu_1932_p14),.din7(e_fu_1932_p16),.din8(e_fu_1932_p18),.din9(e_fu_1932_p20),.din10(e_fu_1932_p22),.din11(e_fu_1932_p24),.din12(e_fu_1932_p26),.din13(e_fu_1932_p28),.din14(e_fu_1932_p30),.din15(e_fu_1932_p32),.din16(e_fu_1932_p34),.din17(e_fu_1932_p36),.din18(e_fu_1932_p38),.din19(e_fu_1932_p40),.din20(e_fu_1932_p42),.din21(e_fu_1932_p44),.din22(e_fu_1932_p46),.din23(e_fu_1932_p48),.din24(e_fu_1932_p50),.din25(e_fu_1932_p52),.din26(e_fu_1932_p54),.din27(e_fu_1932_p56),.din28(e_fu_1932_p58),.din29(e_fu_1932_p60),.din30(e_fu_1932_p62),.din31(e_fu_1932_p64),.din32(e_fu_1932_p66),.din33(e_fu_1932_p68),.din34(e_fu_1932_p70),.din35(e_fu_1932_p72),.din36(e_fu_1932_p74),.din37(e_fu_1932_p76),.din38(e_fu_1932_p78),.din39(e_fu_1932_p80),.din40(e_fu_1932_p82),.din41(e_fu_1932_p84),.din42(e_fu_1932_p86),.din43(e_fu_1932_p88),.din44(e_fu_1932_p90),.din45(e_fu_1932_p92),.din46(e_fu_1932_p94),.din47(e_fu_1932_p96),.din48(e_fu_1932_p98),.din49(e_fu_1932_p100),.din50(e_fu_1932_p102),.din51(e_fu_1932_p104),.din52(e_fu_1932_p106),.din53(e_fu_1932_p108),.din54(e_fu_1932_p110),.din55(e_fu_1932_p112),.din56(e_fu_1932_p114),.din57(e_fu_1932_p116),.din58(e_fu_1932_p118),.din59(e_fu_1932_p120),.din60(e_fu_1932_p122),.din61(e_fu_1932_p124),.din62(e_fu_1932_p126),.din63(e_fu_1932_p128),.def(e_fu_1932_p129),.sel(trunc_ln24_reg_3142),.dout(e_fu_1932_p131));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U74(.din0(tmp_end_fu_2836_p2),.din1(tmp_end_fu_2836_p4),.din2(tmp_end_fu_2836_p6),.din3(tmp_end_fu_2836_p8),.din4(tmp_end_fu_2836_p10),.din5(tmp_end_fu_2836_p12),.din6(tmp_end_fu_2836_p14),.din7(tmp_end_fu_2836_p16),.din8(tmp_end_fu_2836_p18),.din9(tmp_end_fu_2836_p20),.din10(tmp_end_fu_2836_p22),.din11(tmp_end_fu_2836_p24),.din12(tmp_end_fu_2836_p26),.din13(tmp_end_fu_2836_p28),.din14(tmp_end_fu_2836_p30),.din15(tmp_end_fu_2836_p32),.din16(tmp_end_fu_2836_p34),.din17(tmp_end_fu_2836_p36),.din18(tmp_end_fu_2836_p38),.din19(tmp_end_fu_2836_p40),.din20(tmp_end_fu_2836_p42),.din21(tmp_end_fu_2836_p44),.din22(tmp_end_fu_2836_p46),.din23(tmp_end_fu_2836_p48),.din24(tmp_end_fu_2836_p50),.din25(tmp_end_fu_2836_p52),.din26(tmp_end_fu_2836_p54),.din27(tmp_end_fu_2836_p56),.din28(tmp_end_fu_2836_p58),.din29(tmp_end_fu_2836_p60),.din30(tmp_end_fu_2836_p62),.din31(tmp_end_fu_2836_p64),.din32(tmp_end_fu_2836_p66),.din33(tmp_end_fu_2836_p68),.din34(tmp_end_fu_2836_p70),.din35(tmp_end_fu_2836_p72),.din36(tmp_end_fu_2836_p74),.din37(tmp_end_fu_2836_p76),.din38(tmp_end_fu_2836_p78),.din39(tmp_end_fu_2836_p80),.din40(tmp_end_fu_2836_p82),.din41(tmp_end_fu_2836_p84),.din42(tmp_end_fu_2836_p86),.din43(tmp_end_fu_2836_p88),.din44(tmp_end_fu_2836_p90),.din45(tmp_end_fu_2836_p92),.din46(tmp_end_fu_2836_p94),.din47(tmp_end_fu_2836_p96),.din48(tmp_end_fu_2836_p98),.din49(tmp_end_fu_2836_p100),.din50(tmp_end_fu_2836_p102),.din51(tmp_end_fu_2836_p104),.din52(tmp_end_fu_2836_p106),.din53(tmp_end_fu_2836_p108),.din54(tmp_end_fu_2836_p110),.din55(tmp_end_fu_2836_p112),.din56(tmp_end_fu_2836_p114),.din57(tmp_end_fu_2836_p116),.din58(tmp_end_fu_2836_p118),.din59(tmp_end_fu_2836_p120),.din60(tmp_end_fu_2836_p122),.din61(tmp_end_fu_2836_p124),.din62(tmp_end_fu_2836_p126),.din63(tmp_end_fu_2836_p128),.def(tmp_end_fu_2836_p129),.sel(trunc_ln24_reg_3142),.dout(tmp_end_fu_2836_p131));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_start_reg <= 1'b1;
        end else if ((grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_ready == 1'b1)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln25_fu_1671_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        cnt_2_reg_1378 <= cnt_reg_1354;
    end else if (((icmp_ln25_reg_3161 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        cnt_2_reg_1378 <= grp_bfs_Pipeline_loop_neighbors_fu_1390_cnt_1_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        cnt_reg_1354 <= ap_phi_mux_cnt_2_phi_fu_1382_p4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        cnt_reg_1354 <= 64'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        horizon_fu_462 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_1552_p2 == 1'd1))) begin
        horizon_fu_462 <= indvars_iv_next12_reg_3122;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        n_reg_1367 <= n_1_reg_3137;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        n_reg_1367 <= 9'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        e_reg_3485 <= e_fu_1932_p131;
        tmp_end_reg_3490 <= tmp_end_fu_2836_p131;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln25_reg_3161 <= icmp_ln25_fu_1671_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvars_iv_next12_cast3_reg_3129[3 : 0] <= indvars_iv_next12_cast3_fu_1548_p1[3 : 0];
        indvars_iv_next12_reg_3122 <= indvars_iv_next12_fu_1542_p2;
        zext_ln15_reg_3117[3 : 0] <= zext_ln15_fu_1538_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        lshr_ln_reg_3148 <= {{n_reg_1367[7:6]}};
        n_1_reg_3137 <= n_1_fu_1558_p2;
        trunc_ln24_reg_3142 <= trunc_ln24_fu_1569_p1;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_1552_p2 == 1'd1) & (1'd0 == and_ln43_fu_1594_p2))) begin
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
    if (((icmp_ln25_reg_3161 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_phi_mux_cnt_2_phi_fu_1382_p4 = grp_bfs_Pipeline_loop_neighbors_fu_1390_cnt_1_out;
    end else begin
        ap_phi_mux_cnt_2_phi_fu_1382_p4 = cnt_2_reg_1378;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_1552_p2 == 1'd1) & (1'd0 == and_ln43_fu_1594_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_level_address0;
    end else begin
        level_address0 = level_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        level_address0_local = zext_ln24_fu_1564_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_address0_local = starting_node;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_level_ce0;
    end else begin
        level_ce0 = level_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        level_counts_address0_local = indvars_iv_next12_cast3_reg_3129;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_counts_address0_local = 64'd0;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        level_counts_d0_local = cnt_reg_1354;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_counts_d0_local = 64'd1;
    end else begin
        level_counts_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_1552_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_d0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_level_d0;
    end else begin
        level_d0 = 8'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_we0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_level_we0;
    end else begin
        level_we0 = level_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_0_ce0_local = 1'b1;
    end else begin
        nodes_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_10_ce0_local = 1'b1;
    end else begin
        nodes_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_11_ce0_local = 1'b1;
    end else begin
        nodes_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_12_ce0_local = 1'b1;
    end else begin
        nodes_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_13_ce0_local = 1'b1;
    end else begin
        nodes_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_14_ce0_local = 1'b1;
    end else begin
        nodes_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_15_ce0_local = 1'b1;
    end else begin
        nodes_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_16_ce0_local = 1'b1;
    end else begin
        nodes_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_17_ce0_local = 1'b1;
    end else begin
        nodes_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_18_ce0_local = 1'b1;
    end else begin
        nodes_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_19_ce0_local = 1'b1;
    end else begin
        nodes_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_1_ce0_local = 1'b1;
    end else begin
        nodes_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_20_ce0_local = 1'b1;
    end else begin
        nodes_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_21_ce0_local = 1'b1;
    end else begin
        nodes_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_22_ce0_local = 1'b1;
    end else begin
        nodes_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_23_ce0_local = 1'b1;
    end else begin
        nodes_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_24_ce0_local = 1'b1;
    end else begin
        nodes_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_25_ce0_local = 1'b1;
    end else begin
        nodes_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_26_ce0_local = 1'b1;
    end else begin
        nodes_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_27_ce0_local = 1'b1;
    end else begin
        nodes_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_28_ce0_local = 1'b1;
    end else begin
        nodes_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_29_ce0_local = 1'b1;
    end else begin
        nodes_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_2_ce0_local = 1'b1;
    end else begin
        nodes_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_30_ce0_local = 1'b1;
    end else begin
        nodes_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_31_ce0_local = 1'b1;
    end else begin
        nodes_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_32_ce0_local = 1'b1;
    end else begin
        nodes_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_33_ce0_local = 1'b1;
    end else begin
        nodes_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_34_ce0_local = 1'b1;
    end else begin
        nodes_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_35_ce0_local = 1'b1;
    end else begin
        nodes_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_36_ce0_local = 1'b1;
    end else begin
        nodes_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_37_ce0_local = 1'b1;
    end else begin
        nodes_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_38_ce0_local = 1'b1;
    end else begin
        nodes_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_39_ce0_local = 1'b1;
    end else begin
        nodes_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_3_ce0_local = 1'b1;
    end else begin
        nodes_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_40_ce0_local = 1'b1;
    end else begin
        nodes_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_41_ce0_local = 1'b1;
    end else begin
        nodes_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_42_ce0_local = 1'b1;
    end else begin
        nodes_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_43_ce0_local = 1'b1;
    end else begin
        nodes_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_44_ce0_local = 1'b1;
    end else begin
        nodes_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_45_ce0_local = 1'b1;
    end else begin
        nodes_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_46_ce0_local = 1'b1;
    end else begin
        nodes_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_47_ce0_local = 1'b1;
    end else begin
        nodes_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_48_ce0_local = 1'b1;
    end else begin
        nodes_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_49_ce0_local = 1'b1;
    end else begin
        nodes_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_4_ce0_local = 1'b1;
    end else begin
        nodes_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_50_ce0_local = 1'b1;
    end else begin
        nodes_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_51_ce0_local = 1'b1;
    end else begin
        nodes_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_52_ce0_local = 1'b1;
    end else begin
        nodes_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_53_ce0_local = 1'b1;
    end else begin
        nodes_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_54_ce0_local = 1'b1;
    end else begin
        nodes_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_55_ce0_local = 1'b1;
    end else begin
        nodes_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_56_ce0_local = 1'b1;
    end else begin
        nodes_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_57_ce0_local = 1'b1;
    end else begin
        nodes_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_58_ce0_local = 1'b1;
    end else begin
        nodes_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_59_ce0_local = 1'b1;
    end else begin
        nodes_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_5_ce0_local = 1'b1;
    end else begin
        nodes_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_60_ce0_local = 1'b1;
    end else begin
        nodes_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_61_ce0_local = 1'b1;
    end else begin
        nodes_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_62_ce0_local = 1'b1;
    end else begin
        nodes_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_63_ce0_local = 1'b1;
    end else begin
        nodes_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_6_ce0_local = 1'b1;
    end else begin
        nodes_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_7_ce0_local = 1'b1;
    end else begin
        nodes_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_8_ce0_local = 1'b1;
    end else begin
        nodes_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_9_ce0_local = 1'b1;
    end else begin
        nodes_9_ce0_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_1552_p2 == 1'd1) & (1'd0 == and_ln43_fu_1594_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_1552_p2 == 1'd1) & (1'd1 == and_ln43_fu_1594_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln25_fu_1671_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign and_ln43_fu_1594_p2 = (icmp_ln43_fu_1583_p2 & icmp_ln21_fu_1589_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign e_fu_1932_p10 = nodes_4_q0[63:0];
assign e_fu_1932_p100 = nodes_49_q0[63:0];
assign e_fu_1932_p102 = nodes_50_q0[63:0];
assign e_fu_1932_p104 = nodes_51_q0[63:0];
assign e_fu_1932_p106 = nodes_52_q0[63:0];
assign e_fu_1932_p108 = nodes_53_q0[63:0];
assign e_fu_1932_p110 = nodes_54_q0[63:0];
assign e_fu_1932_p112 = nodes_55_q0[63:0];
assign e_fu_1932_p114 = nodes_56_q0[63:0];
assign e_fu_1932_p116 = nodes_57_q0[63:0];
assign e_fu_1932_p118 = nodes_58_q0[63:0];
assign e_fu_1932_p12 = nodes_5_q0[63:0];
assign e_fu_1932_p120 = nodes_59_q0[63:0];
assign e_fu_1932_p122 = nodes_60_q0[63:0];
assign e_fu_1932_p124 = nodes_61_q0[63:0];
assign e_fu_1932_p126 = nodes_62_q0[63:0];
assign e_fu_1932_p128 = nodes_63_q0[63:0];
assign e_fu_1932_p129 = 'bx;
assign e_fu_1932_p14 = nodes_6_q0[63:0];
assign e_fu_1932_p16 = nodes_7_q0[63:0];
assign e_fu_1932_p18 = nodes_8_q0[63:0];
assign e_fu_1932_p2 = nodes_0_q0[63:0];
assign e_fu_1932_p20 = nodes_9_q0[63:0];
assign e_fu_1932_p22 = nodes_10_q0[63:0];
assign e_fu_1932_p24 = nodes_11_q0[63:0];
assign e_fu_1932_p26 = nodes_12_q0[63:0];
assign e_fu_1932_p28 = nodes_13_q0[63:0];
assign e_fu_1932_p30 = nodes_14_q0[63:0];
assign e_fu_1932_p32 = nodes_15_q0[63:0];
assign e_fu_1932_p34 = nodes_16_q0[63:0];
assign e_fu_1932_p36 = nodes_17_q0[63:0];
assign e_fu_1932_p38 = nodes_18_q0[63:0];
assign e_fu_1932_p4 = nodes_1_q0[63:0];
assign e_fu_1932_p40 = nodes_19_q0[63:0];
assign e_fu_1932_p42 = nodes_20_q0[63:0];
assign e_fu_1932_p44 = nodes_21_q0[63:0];
assign e_fu_1932_p46 = nodes_22_q0[63:0];
assign e_fu_1932_p48 = nodes_23_q0[63:0];
assign e_fu_1932_p50 = nodes_24_q0[63:0];
assign e_fu_1932_p52 = nodes_25_q0[63:0];
assign e_fu_1932_p54 = nodes_26_q0[63:0];
assign e_fu_1932_p56 = nodes_27_q0[63:0];
assign e_fu_1932_p58 = nodes_28_q0[63:0];
assign e_fu_1932_p6 = nodes_2_q0[63:0];
assign e_fu_1932_p60 = nodes_29_q0[63:0];
assign e_fu_1932_p62 = nodes_30_q0[63:0];
assign e_fu_1932_p64 = nodes_31_q0[63:0];
assign e_fu_1932_p66 = nodes_32_q0[63:0];
assign e_fu_1932_p68 = nodes_33_q0[63:0];
assign e_fu_1932_p70 = nodes_34_q0[63:0];
assign e_fu_1932_p72 = nodes_35_q0[63:0];
assign e_fu_1932_p74 = nodes_36_q0[63:0];
assign e_fu_1932_p76 = nodes_37_q0[63:0];
assign e_fu_1932_p78 = nodes_38_q0[63:0];
assign e_fu_1932_p8 = nodes_3_q0[63:0];
assign e_fu_1932_p80 = nodes_39_q0[63:0];
assign e_fu_1932_p82 = nodes_40_q0[63:0];
assign e_fu_1932_p84 = nodes_41_q0[63:0];
assign e_fu_1932_p86 = nodes_42_q0[63:0];
assign e_fu_1932_p88 = nodes_43_q0[63:0];
assign e_fu_1932_p90 = nodes_44_q0[63:0];
assign e_fu_1932_p92 = nodes_45_q0[63:0];
assign e_fu_1932_p94 = nodes_46_q0[63:0];
assign e_fu_1932_p96 = nodes_47_q0[63:0];
assign e_fu_1932_p98 = nodes_48_q0[63:0];
assign edges_0_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_0_address0;
assign edges_0_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_0_ce0;
assign edges_10_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_10_address0;
assign edges_10_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_10_ce0;
assign edges_11_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_11_address0;
assign edges_11_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_11_ce0;
assign edges_12_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_12_address0;
assign edges_12_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_12_ce0;
assign edges_13_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_13_address0;
assign edges_13_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_13_ce0;
assign edges_14_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_14_address0;
assign edges_14_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_14_ce0;
assign edges_15_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_15_address0;
assign edges_15_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_15_ce0;
assign edges_16_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_16_address0;
assign edges_16_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_16_ce0;
assign edges_17_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_17_address0;
assign edges_17_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_17_ce0;
assign edges_18_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_18_address0;
assign edges_18_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_18_ce0;
assign edges_19_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_19_address0;
assign edges_19_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_19_ce0;
assign edges_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_1_address0;
assign edges_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_1_ce0;
assign edges_20_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_20_address0;
assign edges_20_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_20_ce0;
assign edges_21_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_21_address0;
assign edges_21_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_21_ce0;
assign edges_22_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_22_address0;
assign edges_22_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_22_ce0;
assign edges_23_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_23_address0;
assign edges_23_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_23_ce0;
assign edges_24_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_24_address0;
assign edges_24_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_24_ce0;
assign edges_25_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_25_address0;
assign edges_25_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_25_ce0;
assign edges_26_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_26_address0;
assign edges_26_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_26_ce0;
assign edges_27_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_27_address0;
assign edges_27_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_27_ce0;
assign edges_28_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_28_address0;
assign edges_28_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_28_ce0;
assign edges_29_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_29_address0;
assign edges_29_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_29_ce0;
assign edges_2_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_2_address0;
assign edges_2_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_2_ce0;
assign edges_30_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_30_address0;
assign edges_30_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_30_ce0;
assign edges_31_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_31_address0;
assign edges_31_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_31_ce0;
assign edges_32_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_32_address0;
assign edges_32_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_32_ce0;
assign edges_33_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_33_address0;
assign edges_33_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_33_ce0;
assign edges_34_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_34_address0;
assign edges_34_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_34_ce0;
assign edges_35_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_35_address0;
assign edges_35_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_35_ce0;
assign edges_36_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_36_address0;
assign edges_36_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_36_ce0;
assign edges_37_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_37_address0;
assign edges_37_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_37_ce0;
assign edges_38_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_38_address0;
assign edges_38_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_38_ce0;
assign edges_39_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_39_address0;
assign edges_39_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_39_ce0;
assign edges_3_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_3_address0;
assign edges_3_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_3_ce0;
assign edges_40_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_40_address0;
assign edges_40_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_40_ce0;
assign edges_41_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_41_address0;
assign edges_41_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_41_ce0;
assign edges_42_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_42_address0;
assign edges_42_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_42_ce0;
assign edges_43_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_43_address0;
assign edges_43_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_43_ce0;
assign edges_44_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_44_address0;
assign edges_44_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_44_ce0;
assign edges_45_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_45_address0;
assign edges_45_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_45_ce0;
assign edges_46_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_46_address0;
assign edges_46_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_46_ce0;
assign edges_47_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_47_address0;
assign edges_47_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_47_ce0;
assign edges_48_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_48_address0;
assign edges_48_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_48_ce0;
assign edges_49_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_49_address0;
assign edges_49_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_49_ce0;
assign edges_4_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_4_address0;
assign edges_4_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_4_ce0;
assign edges_50_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_50_address0;
assign edges_50_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_50_ce0;
assign edges_51_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_51_address0;
assign edges_51_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_51_ce0;
assign edges_52_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_52_address0;
assign edges_52_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_52_ce0;
assign edges_53_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_53_address0;
assign edges_53_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_53_ce0;
assign edges_54_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_54_address0;
assign edges_54_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_54_ce0;
assign edges_55_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_55_address0;
assign edges_55_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_55_ce0;
assign edges_56_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_56_address0;
assign edges_56_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_56_ce0;
assign edges_57_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_57_address0;
assign edges_57_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_57_ce0;
assign edges_58_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_58_address0;
assign edges_58_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_58_ce0;
assign edges_59_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_59_address0;
assign edges_59_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_59_ce0;
assign edges_5_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_5_address0;
assign edges_5_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_5_ce0;
assign edges_60_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_60_address0;
assign edges_60_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_60_ce0;
assign edges_61_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_61_address0;
assign edges_61_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_61_ce0;
assign edges_62_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_62_address0;
assign edges_62_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_62_ce0;
assign edges_63_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_63_address0;
assign edges_63_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_63_ce0;
assign edges_6_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_6_address0;
assign edges_6_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_6_ce0;
assign edges_7_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_7_address0;
assign edges_7_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_7_ce0;
assign edges_8_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_8_address0;
assign edges_8_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_8_ce0;
assign edges_9_address0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_9_address0;
assign edges_9_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_1390_edges_9_ce0;
assign grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_start = grp_bfs_Pipeline_loop_neighbors_fu_1390_ap_start_reg;
assign icmp_ln21_fu_1589_p2 = ((indvars_iv_next12_reg_3122 < 4'd10) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_1552_p2 = ((n_reg_1367 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln25_fu_1671_p2 = ((zext_ln15_reg_3117 == level_q0) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_1583_p2 = ((cnt_reg_1354 != 64'd0) ? 1'b1 : 1'b0);
assign indvars_iv_next12_cast3_fu_1548_p1 = indvars_iv_next12_fu_1542_p2;
assign indvars_iv_next12_fu_1542_p2 = (horizon_fu_462 + 4'd1);
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = level_counts_d0_local;
assign level_counts_we0 = level_counts_we0_local;
assign n_1_fu_1558_p2 = (n_reg_1367 + 9'd1);
assign nodes_0_address0 = zext_ln12_fu_1604_p1;
assign nodes_0_ce0 = nodes_0_ce0_local;
assign nodes_10_address0 = zext_ln12_fu_1604_p1;
assign nodes_10_ce0 = nodes_10_ce0_local;
assign nodes_11_address0 = zext_ln12_fu_1604_p1;
assign nodes_11_ce0 = nodes_11_ce0_local;
assign nodes_12_address0 = zext_ln12_fu_1604_p1;
assign nodes_12_ce0 = nodes_12_ce0_local;
assign nodes_13_address0 = zext_ln12_fu_1604_p1;
assign nodes_13_ce0 = nodes_13_ce0_local;
assign nodes_14_address0 = zext_ln12_fu_1604_p1;
assign nodes_14_ce0 = nodes_14_ce0_local;
assign nodes_15_address0 = zext_ln12_fu_1604_p1;
assign nodes_15_ce0 = nodes_15_ce0_local;
assign nodes_16_address0 = zext_ln12_fu_1604_p1;
assign nodes_16_ce0 = nodes_16_ce0_local;
assign nodes_17_address0 = zext_ln12_fu_1604_p1;
assign nodes_17_ce0 = nodes_17_ce0_local;
assign nodes_18_address0 = zext_ln12_fu_1604_p1;
assign nodes_18_ce0 = nodes_18_ce0_local;
assign nodes_19_address0 = zext_ln12_fu_1604_p1;
assign nodes_19_ce0 = nodes_19_ce0_local;
assign nodes_1_address0 = zext_ln12_fu_1604_p1;
assign nodes_1_ce0 = nodes_1_ce0_local;
assign nodes_20_address0 = zext_ln12_fu_1604_p1;
assign nodes_20_ce0 = nodes_20_ce0_local;
assign nodes_21_address0 = zext_ln12_fu_1604_p1;
assign nodes_21_ce0 = nodes_21_ce0_local;
assign nodes_22_address0 = zext_ln12_fu_1604_p1;
assign nodes_22_ce0 = nodes_22_ce0_local;
assign nodes_23_address0 = zext_ln12_fu_1604_p1;
assign nodes_23_ce0 = nodes_23_ce0_local;
assign nodes_24_address0 = zext_ln12_fu_1604_p1;
assign nodes_24_ce0 = nodes_24_ce0_local;
assign nodes_25_address0 = zext_ln12_fu_1604_p1;
assign nodes_25_ce0 = nodes_25_ce0_local;
assign nodes_26_address0 = zext_ln12_fu_1604_p1;
assign nodes_26_ce0 = nodes_26_ce0_local;
assign nodes_27_address0 = zext_ln12_fu_1604_p1;
assign nodes_27_ce0 = nodes_27_ce0_local;
assign nodes_28_address0 = zext_ln12_fu_1604_p1;
assign nodes_28_ce0 = nodes_28_ce0_local;
assign nodes_29_address0 = zext_ln12_fu_1604_p1;
assign nodes_29_ce0 = nodes_29_ce0_local;
assign nodes_2_address0 = zext_ln12_fu_1604_p1;
assign nodes_2_ce0 = nodes_2_ce0_local;
assign nodes_30_address0 = zext_ln12_fu_1604_p1;
assign nodes_30_ce0 = nodes_30_ce0_local;
assign nodes_31_address0 = zext_ln12_fu_1604_p1;
assign nodes_31_ce0 = nodes_31_ce0_local;
assign nodes_32_address0 = zext_ln12_fu_1604_p1;
assign nodes_32_ce0 = nodes_32_ce0_local;
assign nodes_33_address0 = zext_ln12_fu_1604_p1;
assign nodes_33_ce0 = nodes_33_ce0_local;
assign nodes_34_address0 = zext_ln12_fu_1604_p1;
assign nodes_34_ce0 = nodes_34_ce0_local;
assign nodes_35_address0 = zext_ln12_fu_1604_p1;
assign nodes_35_ce0 = nodes_35_ce0_local;
assign nodes_36_address0 = zext_ln12_fu_1604_p1;
assign nodes_36_ce0 = nodes_36_ce0_local;
assign nodes_37_address0 = zext_ln12_fu_1604_p1;
assign nodes_37_ce0 = nodes_37_ce0_local;
assign nodes_38_address0 = zext_ln12_fu_1604_p1;
assign nodes_38_ce0 = nodes_38_ce0_local;
assign nodes_39_address0 = zext_ln12_fu_1604_p1;
assign nodes_39_ce0 = nodes_39_ce0_local;
assign nodes_3_address0 = zext_ln12_fu_1604_p1;
assign nodes_3_ce0 = nodes_3_ce0_local;
assign nodes_40_address0 = zext_ln12_fu_1604_p1;
assign nodes_40_ce0 = nodes_40_ce0_local;
assign nodes_41_address0 = zext_ln12_fu_1604_p1;
assign nodes_41_ce0 = nodes_41_ce0_local;
assign nodes_42_address0 = zext_ln12_fu_1604_p1;
assign nodes_42_ce0 = nodes_42_ce0_local;
assign nodes_43_address0 = zext_ln12_fu_1604_p1;
assign nodes_43_ce0 = nodes_43_ce0_local;
assign nodes_44_address0 = zext_ln12_fu_1604_p1;
assign nodes_44_ce0 = nodes_44_ce0_local;
assign nodes_45_address0 = zext_ln12_fu_1604_p1;
assign nodes_45_ce0 = nodes_45_ce0_local;
assign nodes_46_address0 = zext_ln12_fu_1604_p1;
assign nodes_46_ce0 = nodes_46_ce0_local;
assign nodes_47_address0 = zext_ln12_fu_1604_p1;
assign nodes_47_ce0 = nodes_47_ce0_local;
assign nodes_48_address0 = zext_ln12_fu_1604_p1;
assign nodes_48_ce0 = nodes_48_ce0_local;
assign nodes_49_address0 = zext_ln12_fu_1604_p1;
assign nodes_49_ce0 = nodes_49_ce0_local;
assign nodes_4_address0 = zext_ln12_fu_1604_p1;
assign nodes_4_ce0 = nodes_4_ce0_local;
assign nodes_50_address0 = zext_ln12_fu_1604_p1;
assign nodes_50_ce0 = nodes_50_ce0_local;
assign nodes_51_address0 = zext_ln12_fu_1604_p1;
assign nodes_51_ce0 = nodes_51_ce0_local;
assign nodes_52_address0 = zext_ln12_fu_1604_p1;
assign nodes_52_ce0 = nodes_52_ce0_local;
assign nodes_53_address0 = zext_ln12_fu_1604_p1;
assign nodes_53_ce0 = nodes_53_ce0_local;
assign nodes_54_address0 = zext_ln12_fu_1604_p1;
assign nodes_54_ce0 = nodes_54_ce0_local;
assign nodes_55_address0 = zext_ln12_fu_1604_p1;
assign nodes_55_ce0 = nodes_55_ce0_local;
assign nodes_56_address0 = zext_ln12_fu_1604_p1;
assign nodes_56_ce0 = nodes_56_ce0_local;
assign nodes_57_address0 = zext_ln12_fu_1604_p1;
assign nodes_57_ce0 = nodes_57_ce0_local;
assign nodes_58_address0 = zext_ln12_fu_1604_p1;
assign nodes_58_ce0 = nodes_58_ce0_local;
assign nodes_59_address0 = zext_ln12_fu_1604_p1;
assign nodes_59_ce0 = nodes_59_ce0_local;
assign nodes_5_address0 = zext_ln12_fu_1604_p1;
assign nodes_5_ce0 = nodes_5_ce0_local;
assign nodes_60_address0 = zext_ln12_fu_1604_p1;
assign nodes_60_ce0 = nodes_60_ce0_local;
assign nodes_61_address0 = zext_ln12_fu_1604_p1;
assign nodes_61_ce0 = nodes_61_ce0_local;
assign nodes_62_address0 = zext_ln12_fu_1604_p1;
assign nodes_62_ce0 = nodes_62_ce0_local;
assign nodes_63_address0 = zext_ln12_fu_1604_p1;
assign nodes_63_ce0 = nodes_63_ce0_local;
assign nodes_6_address0 = zext_ln12_fu_1604_p1;
assign nodes_6_ce0 = nodes_6_ce0_local;
assign nodes_7_address0 = zext_ln12_fu_1604_p1;
assign nodes_7_ce0 = nodes_7_ce0_local;
assign nodes_8_address0 = zext_ln12_fu_1604_p1;
assign nodes_8_ce0 = nodes_8_ce0_local;
assign nodes_9_address0 = zext_ln12_fu_1604_p1;
assign nodes_9_ce0 = nodes_9_ce0_local;
assign tmp_end_fu_2836_p10 = {{nodes_4_q0[127:64]}};
assign tmp_end_fu_2836_p100 = {{nodes_49_q0[127:64]}};
assign tmp_end_fu_2836_p102 = {{nodes_50_q0[127:64]}};
assign tmp_end_fu_2836_p104 = {{nodes_51_q0[127:64]}};
assign tmp_end_fu_2836_p106 = {{nodes_52_q0[127:64]}};
assign tmp_end_fu_2836_p108 = {{nodes_53_q0[127:64]}};
assign tmp_end_fu_2836_p110 = {{nodes_54_q0[127:64]}};
assign tmp_end_fu_2836_p112 = {{nodes_55_q0[127:64]}};
assign tmp_end_fu_2836_p114 = {{nodes_56_q0[127:64]}};
assign tmp_end_fu_2836_p116 = {{nodes_57_q0[127:64]}};
assign tmp_end_fu_2836_p118 = {{nodes_58_q0[127:64]}};
assign tmp_end_fu_2836_p12 = {{nodes_5_q0[127:64]}};
assign tmp_end_fu_2836_p120 = {{nodes_59_q0[127:64]}};
assign tmp_end_fu_2836_p122 = {{nodes_60_q0[127:64]}};
assign tmp_end_fu_2836_p124 = {{nodes_61_q0[127:64]}};
assign tmp_end_fu_2836_p126 = {{nodes_62_q0[127:64]}};
assign tmp_end_fu_2836_p128 = {{nodes_63_q0[127:64]}};
assign tmp_end_fu_2836_p129 = 'bx;
assign tmp_end_fu_2836_p14 = {{nodes_6_q0[127:64]}};
assign tmp_end_fu_2836_p16 = {{nodes_7_q0[127:64]}};
assign tmp_end_fu_2836_p18 = {{nodes_8_q0[127:64]}};
assign tmp_end_fu_2836_p2 = {{nodes_0_q0[127:64]}};
assign tmp_end_fu_2836_p20 = {{nodes_9_q0[127:64]}};
assign tmp_end_fu_2836_p22 = {{nodes_10_q0[127:64]}};
assign tmp_end_fu_2836_p24 = {{nodes_11_q0[127:64]}};
assign tmp_end_fu_2836_p26 = {{nodes_12_q0[127:64]}};
assign tmp_end_fu_2836_p28 = {{nodes_13_q0[127:64]}};
assign tmp_end_fu_2836_p30 = {{nodes_14_q0[127:64]}};
assign tmp_end_fu_2836_p32 = {{nodes_15_q0[127:64]}};
assign tmp_end_fu_2836_p34 = {{nodes_16_q0[127:64]}};
assign tmp_end_fu_2836_p36 = {{nodes_17_q0[127:64]}};
assign tmp_end_fu_2836_p38 = {{nodes_18_q0[127:64]}};
assign tmp_end_fu_2836_p4 = {{nodes_1_q0[127:64]}};
assign tmp_end_fu_2836_p40 = {{nodes_19_q0[127:64]}};
assign tmp_end_fu_2836_p42 = {{nodes_20_q0[127:64]}};
assign tmp_end_fu_2836_p44 = {{nodes_21_q0[127:64]}};
assign tmp_end_fu_2836_p46 = {{nodes_22_q0[127:64]}};
assign tmp_end_fu_2836_p48 = {{nodes_23_q0[127:64]}};
assign tmp_end_fu_2836_p50 = {{nodes_24_q0[127:64]}};
assign tmp_end_fu_2836_p52 = {{nodes_25_q0[127:64]}};
assign tmp_end_fu_2836_p54 = {{nodes_26_q0[127:64]}};
assign tmp_end_fu_2836_p56 = {{nodes_27_q0[127:64]}};
assign tmp_end_fu_2836_p58 = {{nodes_28_q0[127:64]}};
assign tmp_end_fu_2836_p6 = {{nodes_2_q0[127:64]}};
assign tmp_end_fu_2836_p60 = {{nodes_29_q0[127:64]}};
assign tmp_end_fu_2836_p62 = {{nodes_30_q0[127:64]}};
assign tmp_end_fu_2836_p64 = {{nodes_31_q0[127:64]}};
assign tmp_end_fu_2836_p66 = {{nodes_32_q0[127:64]}};
assign tmp_end_fu_2836_p68 = {{nodes_33_q0[127:64]}};
assign tmp_end_fu_2836_p70 = {{nodes_34_q0[127:64]}};
assign tmp_end_fu_2836_p72 = {{nodes_35_q0[127:64]}};
assign tmp_end_fu_2836_p74 = {{nodes_36_q0[127:64]}};
assign tmp_end_fu_2836_p76 = {{nodes_37_q0[127:64]}};
assign tmp_end_fu_2836_p78 = {{nodes_38_q0[127:64]}};
assign tmp_end_fu_2836_p8 = {{nodes_3_q0[127:64]}};
assign tmp_end_fu_2836_p80 = {{nodes_39_q0[127:64]}};
assign tmp_end_fu_2836_p82 = {{nodes_40_q0[127:64]}};
assign tmp_end_fu_2836_p84 = {{nodes_41_q0[127:64]}};
assign tmp_end_fu_2836_p86 = {{nodes_42_q0[127:64]}};
assign tmp_end_fu_2836_p88 = {{nodes_43_q0[127:64]}};
assign tmp_end_fu_2836_p90 = {{nodes_44_q0[127:64]}};
assign tmp_end_fu_2836_p92 = {{nodes_45_q0[127:64]}};
assign tmp_end_fu_2836_p94 = {{nodes_46_q0[127:64]}};
assign tmp_end_fu_2836_p96 = {{nodes_47_q0[127:64]}};
assign tmp_end_fu_2836_p98 = {{nodes_48_q0[127:64]}};
assign trunc_ln24_fu_1569_p1 = n_reg_1367[5:0];
assign zext_ln12_fu_1604_p1 = lshr_ln_reg_3148;
assign zext_ln15_fu_1538_p1 = horizon_fu_462;
assign zext_ln24_fu_1564_p1 = n_reg_1367;
always @ (posedge ap_clk) begin
    zext_ln15_reg_3117[7:4] <= 4'b0000;
    indvars_iv_next12_cast3_reg_3129[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 
