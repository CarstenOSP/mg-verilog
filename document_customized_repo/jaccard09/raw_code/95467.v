module syr2k_syr2k_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B0_address0,buff_B0_ce0,buff_B0_q0,buff_B0_1_address0,buff_B0_1_ce0,buff_B0_1_q0,buff_B0_2_address0,buff_B0_2_ce0,buff_B0_2_q0,buff_B0_3_address0,buff_B0_3_ce0,buff_B0_3_q0,buff_B0_4_address0,buff_B0_4_ce0,buff_B0_4_q0,buff_B0_5_address0,buff_B0_5_ce0,buff_B0_5_q0,buff_B0_6_address0,buff_B0_6_ce0,buff_B0_6_q0,buff_B0_7_address0,buff_B0_7_ce0,buff_B0_7_q0,buff_B0_8_address0,buff_B0_8_ce0,buff_B0_8_q0,buff_B0_9_address0,buff_B0_9_ce0,buff_B0_9_q0,buff_B0_10_address0,buff_B0_10_ce0,buff_B0_10_q0,buff_B0_11_address0,buff_B0_11_ce0,buff_B0_11_q0,buff_B0_12_address0,buff_B0_12_ce0,buff_B0_12_q0,buff_B0_13_address0,buff_B0_13_ce0,buff_B0_13_q0,buff_B0_14_address0,buff_B0_14_ce0,buff_B0_14_q0,buff_B0_15_address0,buff_B0_15_ce0,buff_B0_15_q0,buff_B0_16_address0,buff_B0_16_ce0,buff_B0_16_q0,buff_B0_17_address0,buff_B0_17_ce0,buff_B0_17_q0,buff_B0_18_address0,buff_B0_18_ce0,buff_B0_18_q0,buff_B0_19_address0,buff_B0_19_ce0,buff_B0_19_q0,buff_B0_20_address0,buff_B0_20_ce0,buff_B0_20_q0,buff_B0_21_address0,buff_B0_21_ce0,buff_B0_21_q0,buff_B0_22_address0,buff_B0_22_ce0,buff_B0_22_q0,buff_B0_23_address0,buff_B0_23_ce0,buff_B0_23_q0,buff_B0_24_address0,buff_B0_24_ce0,buff_B0_24_q0,buff_B0_25_address0,buff_B0_25_ce0,buff_B0_25_q0,buff_B0_26_address0,buff_B0_26_ce0,buff_B0_26_q0,buff_B0_27_address0,buff_B0_27_ce0,buff_B0_27_q0,buff_B0_28_address0,buff_B0_28_ce0,buff_B0_28_q0,buff_B0_29_address0,buff_B0_29_ce0,buff_B0_29_q0,buff_B0_30_address0,buff_B0_30_ce0,buff_B0_30_q0,buff_B0_31_address0,buff_B0_31_ce0,buff_B0_31_q0,buff_B0_32_address0,buff_B0_32_ce0,buff_B0_32_q0,buff_B0_33_address0,buff_B0_33_ce0,buff_B0_33_q0,buff_B0_34_address0,buff_B0_34_ce0,buff_B0_34_q0,buff_B0_35_address0,buff_B0_35_ce0,buff_B0_35_q0,buff_B0_36_address0,buff_B0_36_ce0,buff_B0_36_q0,buff_B0_37_address0,buff_B0_37_ce0,buff_B0_37_q0,buff_B0_38_address0,buff_B0_38_ce0,buff_B0_38_q0,buff_B0_39_address0,buff_B0_39_ce0,buff_B0_39_q0,buff_B0_40_address0,buff_B0_40_ce0,buff_B0_40_q0,buff_B0_41_address0,buff_B0_41_ce0,buff_B0_41_q0,buff_B0_42_address0,buff_B0_42_ce0,buff_B0_42_q0,buff_B0_43_address0,buff_B0_43_ce0,buff_B0_43_q0,buff_B0_44_address0,buff_B0_44_ce0,buff_B0_44_q0,buff_B0_45_address0,buff_B0_45_ce0,buff_B0_45_q0,buff_B0_46_address0,buff_B0_46_ce0,buff_B0_46_q0,buff_B0_47_address0,buff_B0_47_ce0,buff_B0_47_q0,buff_B0_48_address0,buff_B0_48_ce0,buff_B0_48_q0,buff_B0_49_address0,buff_B0_49_ce0,buff_B0_49_q0,buff_B0_50_address0,buff_B0_50_ce0,buff_B0_50_q0,buff_B0_51_address0,buff_B0_51_ce0,buff_B0_51_q0,buff_B0_52_address0,buff_B0_52_ce0,buff_B0_52_q0,buff_B0_53_address0,buff_B0_53_ce0,buff_B0_53_q0,buff_B0_54_address0,buff_B0_54_ce0,buff_B0_54_q0,buff_B0_55_address0,buff_B0_55_ce0,buff_B0_55_q0,buff_B0_56_address0,buff_B0_56_ce0,buff_B0_56_q0,buff_B0_57_address0,buff_B0_57_ce0,buff_B0_57_q0,buff_B0_58_address0,buff_B0_58_ce0,buff_B0_58_q0,buff_B0_59_address0,buff_B0_59_ce0,buff_B0_59_q0,buff_B0_60_address0,buff_B0_60_ce0,buff_B0_60_q0,buff_B0_61_address0,buff_B0_61_ce0,buff_B0_61_q0,buff_B0_62_address0,buff_B0_62_ce0,buff_B0_62_q0,buff_B0_63_address0,buff_B0_63_ce0,buff_B0_63_q0,buff_A0_address0,buff_A0_ce0,buff_A0_q0,alpha,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,grp_fu_1102_p_din0,grp_fu_1102_p_din1,grp_fu_1102_p_opcode,grp_fu_1102_p_dout0,grp_fu_1102_p_ce,grp_fu_1106_p_din0,grp_fu_1106_p_din1,grp_fu_1106_p_dout0,grp_fu_1106_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] buff_B0_address0;
output   buff_B0_ce0;
input  [31:0] buff_B0_q0;
output  [5:0] buff_B0_1_address0;
output   buff_B0_1_ce0;
input  [31:0] buff_B0_1_q0;
output  [5:0] buff_B0_2_address0;
output   buff_B0_2_ce0;
input  [31:0] buff_B0_2_q0;
output  [5:0] buff_B0_3_address0;
output   buff_B0_3_ce0;
input  [31:0] buff_B0_3_q0;
output  [5:0] buff_B0_4_address0;
output   buff_B0_4_ce0;
input  [31:0] buff_B0_4_q0;
output  [5:0] buff_B0_5_address0;
output   buff_B0_5_ce0;
input  [31:0] buff_B0_5_q0;
output  [5:0] buff_B0_6_address0;
output   buff_B0_6_ce0;
input  [31:0] buff_B0_6_q0;
output  [5:0] buff_B0_7_address0;
output   buff_B0_7_ce0;
input  [31:0] buff_B0_7_q0;
output  [5:0] buff_B0_8_address0;
output   buff_B0_8_ce0;
input  [31:0] buff_B0_8_q0;
output  [5:0] buff_B0_9_address0;
output   buff_B0_9_ce0;
input  [31:0] buff_B0_9_q0;
output  [5:0] buff_B0_10_address0;
output   buff_B0_10_ce0;
input  [31:0] buff_B0_10_q0;
output  [5:0] buff_B0_11_address0;
output   buff_B0_11_ce0;
input  [31:0] buff_B0_11_q0;
output  [5:0] buff_B0_12_address0;
output   buff_B0_12_ce0;
input  [31:0] buff_B0_12_q0;
output  [5:0] buff_B0_13_address0;
output   buff_B0_13_ce0;
input  [31:0] buff_B0_13_q0;
output  [5:0] buff_B0_14_address0;
output   buff_B0_14_ce0;
input  [31:0] buff_B0_14_q0;
output  [5:0] buff_B0_15_address0;
output   buff_B0_15_ce0;
input  [31:0] buff_B0_15_q0;
output  [5:0] buff_B0_16_address0;
output   buff_B0_16_ce0;
input  [31:0] buff_B0_16_q0;
output  [5:0] buff_B0_17_address0;
output   buff_B0_17_ce0;
input  [31:0] buff_B0_17_q0;
output  [5:0] buff_B0_18_address0;
output   buff_B0_18_ce0;
input  [31:0] buff_B0_18_q0;
output  [5:0] buff_B0_19_address0;
output   buff_B0_19_ce0;
input  [31:0] buff_B0_19_q0;
output  [5:0] buff_B0_20_address0;
output   buff_B0_20_ce0;
input  [31:0] buff_B0_20_q0;
output  [5:0] buff_B0_21_address0;
output   buff_B0_21_ce0;
input  [31:0] buff_B0_21_q0;
output  [5:0] buff_B0_22_address0;
output   buff_B0_22_ce0;
input  [31:0] buff_B0_22_q0;
output  [5:0] buff_B0_23_address0;
output   buff_B0_23_ce0;
input  [31:0] buff_B0_23_q0;
output  [5:0] buff_B0_24_address0;
output   buff_B0_24_ce0;
input  [31:0] buff_B0_24_q0;
output  [5:0] buff_B0_25_address0;
output   buff_B0_25_ce0;
input  [31:0] buff_B0_25_q0;
output  [5:0] buff_B0_26_address0;
output   buff_B0_26_ce0;
input  [31:0] buff_B0_26_q0;
output  [5:0] buff_B0_27_address0;
output   buff_B0_27_ce0;
input  [31:0] buff_B0_27_q0;
output  [5:0] buff_B0_28_address0;
output   buff_B0_28_ce0;
input  [31:0] buff_B0_28_q0;
output  [5:0] buff_B0_29_address0;
output   buff_B0_29_ce0;
input  [31:0] buff_B0_29_q0;
output  [5:0] buff_B0_30_address0;
output   buff_B0_30_ce0;
input  [31:0] buff_B0_30_q0;
output  [5:0] buff_B0_31_address0;
output   buff_B0_31_ce0;
input  [31:0] buff_B0_31_q0;
output  [5:0] buff_B0_32_address0;
output   buff_B0_32_ce0;
input  [31:0] buff_B0_32_q0;
output  [5:0] buff_B0_33_address0;
output   buff_B0_33_ce0;
input  [31:0] buff_B0_33_q0;
output  [5:0] buff_B0_34_address0;
output   buff_B0_34_ce0;
input  [31:0] buff_B0_34_q0;
output  [5:0] buff_B0_35_address0;
output   buff_B0_35_ce0;
input  [31:0] buff_B0_35_q0;
output  [5:0] buff_B0_36_address0;
output   buff_B0_36_ce0;
input  [31:0] buff_B0_36_q0;
output  [5:0] buff_B0_37_address0;
output   buff_B0_37_ce0;
input  [31:0] buff_B0_37_q0;
output  [5:0] buff_B0_38_address0;
output   buff_B0_38_ce0;
input  [31:0] buff_B0_38_q0;
output  [5:0] buff_B0_39_address0;
output   buff_B0_39_ce0;
input  [31:0] buff_B0_39_q0;
output  [5:0] buff_B0_40_address0;
output   buff_B0_40_ce0;
input  [31:0] buff_B0_40_q0;
output  [5:0] buff_B0_41_address0;
output   buff_B0_41_ce0;
input  [31:0] buff_B0_41_q0;
output  [5:0] buff_B0_42_address0;
output   buff_B0_42_ce0;
input  [31:0] buff_B0_42_q0;
output  [5:0] buff_B0_43_address0;
output   buff_B0_43_ce0;
input  [31:0] buff_B0_43_q0;
output  [5:0] buff_B0_44_address0;
output   buff_B0_44_ce0;
input  [31:0] buff_B0_44_q0;
output  [5:0] buff_B0_45_address0;
output   buff_B0_45_ce0;
input  [31:0] buff_B0_45_q0;
output  [5:0] buff_B0_46_address0;
output   buff_B0_46_ce0;
input  [31:0] buff_B0_46_q0;
output  [5:0] buff_B0_47_address0;
output   buff_B0_47_ce0;
input  [31:0] buff_B0_47_q0;
output  [5:0] buff_B0_48_address0;
output   buff_B0_48_ce0;
input  [31:0] buff_B0_48_q0;
output  [5:0] buff_B0_49_address0;
output   buff_B0_49_ce0;
input  [31:0] buff_B0_49_q0;
output  [5:0] buff_B0_50_address0;
output   buff_B0_50_ce0;
input  [31:0] buff_B0_50_q0;
output  [5:0] buff_B0_51_address0;
output   buff_B0_51_ce0;
input  [31:0] buff_B0_51_q0;
output  [5:0] buff_B0_52_address0;
output   buff_B0_52_ce0;
input  [31:0] buff_B0_52_q0;
output  [5:0] buff_B0_53_address0;
output   buff_B0_53_ce0;
input  [31:0] buff_B0_53_q0;
output  [5:0] buff_B0_54_address0;
output   buff_B0_54_ce0;
input  [31:0] buff_B0_54_q0;
output  [5:0] buff_B0_55_address0;
output   buff_B0_55_ce0;
input  [31:0] buff_B0_55_q0;
output  [5:0] buff_B0_56_address0;
output   buff_B0_56_ce0;
input  [31:0] buff_B0_56_q0;
output  [5:0] buff_B0_57_address0;
output   buff_B0_57_ce0;
input  [31:0] buff_B0_57_q0;
output  [5:0] buff_B0_58_address0;
output   buff_B0_58_ce0;
input  [31:0] buff_B0_58_q0;
output  [5:0] buff_B0_59_address0;
output   buff_B0_59_ce0;
input  [31:0] buff_B0_59_q0;
output  [5:0] buff_B0_60_address0;
output   buff_B0_60_ce0;
input  [31:0] buff_B0_60_q0;
output  [5:0] buff_B0_61_address0;
output   buff_B0_61_ce0;
input  [31:0] buff_B0_61_q0;
output  [5:0] buff_B0_62_address0;
output   buff_B0_62_ce0;
input  [31:0] buff_B0_62_q0;
output  [5:0] buff_B0_63_address0;
output   buff_B0_63_ce0;
input  [31:0] buff_B0_63_q0;
output  [11:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
input  [31:0] alpha;
output  [11:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [31:0] grp_fu_1102_p_din0;
output  [31:0] grp_fu_1102_p_din1;
output  [1:0] grp_fu_1102_p_opcode;
input  [31:0] grp_fu_1102_p_dout0;
output   grp_fu_1102_p_ce;
output  [31:0] grp_fu_1106_p_din0;
output  [31:0] grp_fu_1106_p_din1;
input  [31:0] grp_fu_1106_p_dout0;
output   grp_fu_1106_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln27_reg_1819;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln27_fu_1236_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln27_reg_1819_pp0_iter1_reg;
reg   [6:0] k_load_reg_1823;
wire   [0:0] icmp_ln28_fu_1260_p2;
reg   [0:0] icmp_ln28_reg_1828;
wire   [0:0] and_ln5_fu_1278_p2;
reg   [0:0] and_ln5_reg_1834;
wire   [5:0] trunc_ln28_fu_1292_p1;
reg   [5:0] trunc_ln28_reg_1840;
wire   [6:0] k_mid2_fu_1345_p3;
reg   [6:0] k_mid2_reg_1845;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] first_iter_1_fu_1359_p2;
reg   [0:0] first_iter_1_reg_1850;
reg   [0:0] first_iter_1_reg_1850_pp0_iter1_reg;
reg   [11:0] tmp1_addr_reg_1854;
reg   [11:0] tmp1_addr_reg_1854_pp0_iter1_reg;
reg   [11:0] tmp1_addr_reg_1854_pp0_iter2_reg;
wire   [0:0] icmp_ln30_1_fu_1476_p2;
reg   [0:0] icmp_ln30_1_reg_2184;
reg   [0:0] icmp_ln30_1_reg_2184_pp0_iter1_reg;
reg   [0:0] icmp_ln30_1_reg_2184_pp0_iter2_reg;
reg   [31:0] mul3_reg_2188;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] buff_A0_load_reg_2193;
wire   [31:0] tmp_fu_1500_p131;
reg   [31:0] tmp_reg_2198;
reg   [31:0] mul_reg_2203;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] add_reg_2213;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] p_cast_fu_1450_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln28_fu_1372_p1;
wire   [63:0] zext_ln31_1_fu_1465_p1;
reg   [6:0] k_fu_310;
wire   [6:0] add_ln30_fu_1470_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_314;
wire   [6:0] select_ln28_fu_1352_p3;
reg   [13:0] indvar_flatten7_fu_318;
wire   [13:0] select_ln28_1_fu_1302_p3;
reg   [6:0] i_fu_322;
wire   [6:0] select_ln27_fu_1284_p3;
reg   [18:0] indvar_flatten21_fu_326;
wire   [18:0] add_ln27_1_fu_1242_p2;
reg   [31:0] empty_fu_330;
wire    ap_block_pp0_stage4;
reg    buff_B0_ce0_local;
reg    buff_B0_1_ce0_local;
reg    buff_B0_2_ce0_local;
reg    buff_B0_3_ce0_local;
reg    buff_B0_4_ce0_local;
reg    buff_B0_5_ce0_local;
reg    buff_B0_6_ce0_local;
reg    buff_B0_7_ce0_local;
reg    buff_B0_8_ce0_local;
reg    buff_B0_9_ce0_local;
reg    buff_B0_10_ce0_local;
reg    buff_B0_11_ce0_local;
reg    buff_B0_12_ce0_local;
reg    buff_B0_13_ce0_local;
reg    buff_B0_14_ce0_local;
reg    buff_B0_15_ce0_local;
reg    buff_B0_16_ce0_local;
reg    buff_B0_17_ce0_local;
reg    buff_B0_18_ce0_local;
reg    buff_B0_19_ce0_local;
reg    buff_B0_20_ce0_local;
reg    buff_B0_21_ce0_local;
reg    buff_B0_22_ce0_local;
reg    buff_B0_23_ce0_local;
reg    buff_B0_24_ce0_local;
reg    buff_B0_25_ce0_local;
reg    buff_B0_26_ce0_local;
reg    buff_B0_27_ce0_local;
reg    buff_B0_28_ce0_local;
reg    buff_B0_29_ce0_local;
reg    buff_B0_30_ce0_local;
reg    buff_B0_31_ce0_local;
reg    buff_B0_32_ce0_local;
reg    buff_B0_33_ce0_local;
reg    buff_B0_34_ce0_local;
reg    buff_B0_35_ce0_local;
reg    buff_B0_36_ce0_local;
reg    buff_B0_37_ce0_local;
reg    buff_B0_38_ce0_local;
reg    buff_B0_39_ce0_local;
reg    buff_B0_40_ce0_local;
reg    buff_B0_41_ce0_local;
reg    buff_B0_42_ce0_local;
reg    buff_B0_43_ce0_local;
reg    buff_B0_44_ce0_local;
reg    buff_B0_45_ce0_local;
reg    buff_B0_46_ce0_local;
reg    buff_B0_47_ce0_local;
reg    buff_B0_48_ce0_local;
reg    buff_B0_49_ce0_local;
reg    buff_B0_50_ce0_local;
reg    buff_B0_51_ce0_local;
reg    buff_B0_52_ce0_local;
reg    buff_B0_53_ce0_local;
reg    buff_B0_54_ce0_local;
reg    buff_B0_55_ce0_local;
reg    buff_B0_56_ce0_local;
reg    buff_B0_57_ce0_local;
reg    buff_B0_58_ce0_local;
reg    buff_B0_59_ce0_local;
reg    buff_B0_60_ce0_local;
reg    buff_B0_61_ce0_local;
reg    buff_B0_62_ce0_local;
reg    buff_B0_63_ce0_local;
reg    buff_A0_ce0_local;
reg    tmp1_ce0_local;
reg   [11:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_1201_p0;
reg   [31:0] grp_fu_1201_p1;
wire   [0:0] icmp_ln30_fu_1272_p2;
wire   [0:0] xor_ln5_fu_1266_p2;
wire   [6:0] add_ln27_fu_1254_p2;
wire   [13:0] add_ln28_1_fu_1296_p2;
wire   [6:0] select_ln5_fu_1328_p3;
wire   [0:0] empty_9_fu_1341_p2;
wire   [6:0] add_ln28_fu_1335_p2;
wire   [11:0] tmp_2_fu_1365_p3;
wire   [11:0] select_ln28_cast_fu_1440_p1;
wire   [11:0] empty_10_fu_1444_p2;
wire   [11:0] zext_ln31_fu_1455_p1;
wire   [11:0] add_ln31_fu_1459_p2;
wire   [31:0] tmp_fu_1500_p129;
wire   [5:0] tmp_fu_1500_p130;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage3;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage4_00001;
reg    ap_condition_1372;
wire   [5:0] tmp_fu_1500_p1;
wire   [5:0] tmp_fu_1500_p3;
wire   [5:0] tmp_fu_1500_p5;
wire   [5:0] tmp_fu_1500_p7;
wire   [5:0] tmp_fu_1500_p9;
wire   [5:0] tmp_fu_1500_p11;
wire   [5:0] tmp_fu_1500_p13;
wire   [5:0] tmp_fu_1500_p15;
wire   [5:0] tmp_fu_1500_p17;
wire   [5:0] tmp_fu_1500_p19;
wire   [5:0] tmp_fu_1500_p21;
wire   [5:0] tmp_fu_1500_p23;
wire   [5:0] tmp_fu_1500_p25;
wire   [5:0] tmp_fu_1500_p27;
wire   [5:0] tmp_fu_1500_p29;
wire   [5:0] tmp_fu_1500_p31;
wire   [5:0] tmp_fu_1500_p33;
wire   [5:0] tmp_fu_1500_p35;
wire   [5:0] tmp_fu_1500_p37;
wire   [5:0] tmp_fu_1500_p39;
wire   [5:0] tmp_fu_1500_p41;
wire   [5:0] tmp_fu_1500_p43;
wire   [5:0] tmp_fu_1500_p45;
wire   [5:0] tmp_fu_1500_p47;
wire   [5:0] tmp_fu_1500_p49;
wire   [5:0] tmp_fu_1500_p51;
wire   [5:0] tmp_fu_1500_p53;
wire   [5:0] tmp_fu_1500_p55;
wire   [5:0] tmp_fu_1500_p57;
wire   [5:0] tmp_fu_1500_p59;
wire   [5:0] tmp_fu_1500_p61;
wire   [5:0] tmp_fu_1500_p63;
wire  signed [5:0] tmp_fu_1500_p65;
wire  signed [5:0] tmp_fu_1500_p67;
wire  signed [5:0] tmp_fu_1500_p69;
wire  signed [5:0] tmp_fu_1500_p71;
wire  signed [5:0] tmp_fu_1500_p73;
wire  signed [5:0] tmp_fu_1500_p75;
wire  signed [5:0] tmp_fu_1500_p77;
wire  signed [5:0] tmp_fu_1500_p79;
wire  signed [5:0] tmp_fu_1500_p81;
wire  signed [5:0] tmp_fu_1500_p83;
wire  signed [5:0] tmp_fu_1500_p85;
wire  signed [5:0] tmp_fu_1500_p87;
wire  signed [5:0] tmp_fu_1500_p89;
wire  signed [5:0] tmp_fu_1500_p91;
wire  signed [5:0] tmp_fu_1500_p93;
wire  signed [5:0] tmp_fu_1500_p95;
wire  signed [5:0] tmp_fu_1500_p97;
wire  signed [5:0] tmp_fu_1500_p99;
wire  signed [5:0] tmp_fu_1500_p101;
wire  signed [5:0] tmp_fu_1500_p103;
wire  signed [5:0] tmp_fu_1500_p105;
wire  signed [5:0] tmp_fu_1500_p107;
wire  signed [5:0] tmp_fu_1500_p109;
wire  signed [5:0] tmp_fu_1500_p111;
wire  signed [5:0] tmp_fu_1500_p113;
wire  signed [5:0] tmp_fu_1500_p115;
wire  signed [5:0] tmp_fu_1500_p117;
wire  signed [5:0] tmp_fu_1500_p119;
wire  signed [5:0] tmp_fu_1500_p121;
wire  signed [5:0] tmp_fu_1500_p123;
wire  signed [5:0] tmp_fu_1500_p125;
wire  signed [5:0] tmp_fu_1500_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_310 = 7'd0;
#0 j_fu_314 = 7'd0;
#0 indvar_flatten7_fu_318 = 14'd0;
#0 i_fu_322 = 7'd0;
#0 indvar_flatten21_fu_326 = 19'd0;
#0 empty_fu_330 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_129_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h1 ),.din1_WIDTH( 32 ),.CASE2( 6'h2 ),.din2_WIDTH( 32 ),.CASE3( 6'h3 ),.din3_WIDTH( 32 ),.CASE4( 6'h4 ),.din4_WIDTH( 32 ),.CASE5( 6'h5 ),.din5_WIDTH( 32 ),.CASE6( 6'h6 ),.din6_WIDTH( 32 ),.CASE7( 6'h7 ),.din7_WIDTH( 32 ),.CASE8( 6'h8 ),.din8_WIDTH( 32 ),.CASE9( 6'h9 ),.din9_WIDTH( 32 ),.CASE10( 6'hA ),.din10_WIDTH( 32 ),.CASE11( 6'hB ),.din11_WIDTH( 32 ),.CASE12( 6'hC ),.din12_WIDTH( 32 ),.CASE13( 6'hD ),.din13_WIDTH( 32 ),.CASE14( 6'hE ),.din14_WIDTH( 32 ),.CASE15( 6'hF ),.din15_WIDTH( 32 ),.CASE16( 6'h10 ),.din16_WIDTH( 32 ),.CASE17( 6'h11 ),.din17_WIDTH( 32 ),.CASE18( 6'h12 ),.din18_WIDTH( 32 ),.CASE19( 6'h13 ),.din19_WIDTH( 32 ),.CASE20( 6'h14 ),.din20_WIDTH( 32 ),.CASE21( 6'h15 ),.din21_WIDTH( 32 ),.CASE22( 6'h16 ),.din22_WIDTH( 32 ),.CASE23( 6'h17 ),.din23_WIDTH( 32 ),.CASE24( 6'h18 ),.din24_WIDTH( 32 ),.CASE25( 6'h19 ),.din25_WIDTH( 32 ),.CASE26( 6'h1A ),.din26_WIDTH( 32 ),.CASE27( 6'h1B ),.din27_WIDTH( 32 ),.CASE28( 6'h1C ),.din28_WIDTH( 32 ),.CASE29( 6'h1D ),.din29_WIDTH( 32 ),.CASE30( 6'h1E ),.din30_WIDTH( 32 ),.CASE31( 6'h1F ),.din31_WIDTH( 32 ),.CASE32( 6'h20 ),.din32_WIDTH( 32 ),.CASE33( 6'h21 ),.din33_WIDTH( 32 ),.CASE34( 6'h22 ),.din34_WIDTH( 32 ),.CASE35( 6'h23 ),.din35_WIDTH( 32 ),.CASE36( 6'h24 ),.din36_WIDTH( 32 ),.CASE37( 6'h25 ),.din37_WIDTH( 32 ),.CASE38( 6'h26 ),.din38_WIDTH( 32 ),.CASE39( 6'h27 ),.din39_WIDTH( 32 ),.CASE40( 6'h28 ),.din40_WIDTH( 32 ),.CASE41( 6'h29 ),.din41_WIDTH( 32 ),.CASE42( 6'h2A ),.din42_WIDTH( 32 ),.CASE43( 6'h2B ),.din43_WIDTH( 32 ),.CASE44( 6'h2C ),.din44_WIDTH( 32 ),.CASE45( 6'h2D ),.din45_WIDTH( 32 ),.CASE46( 6'h2E ),.din46_WIDTH( 32 ),.CASE47( 6'h2F ),.din47_WIDTH( 32 ),.CASE48( 6'h30 ),.din48_WIDTH( 32 ),.CASE49( 6'h31 ),.din49_WIDTH( 32 ),.CASE50( 6'h32 ),.din50_WIDTH( 32 ),.CASE51( 6'h33 ),.din51_WIDTH( 32 ),.CASE52( 6'h34 ),.din52_WIDTH( 32 ),.CASE53( 6'h35 ),.din53_WIDTH( 32 ),.CASE54( 6'h36 ),.din54_WIDTH( 32 ),.CASE55( 6'h37 ),.din55_WIDTH( 32 ),.CASE56( 6'h38 ),.din56_WIDTH( 32 ),.CASE57( 6'h39 ),.din57_WIDTH( 32 ),.CASE58( 6'h3A ),.din58_WIDTH( 32 ),.CASE59( 6'h3B ),.din59_WIDTH( 32 ),.CASE60( 6'h3C ),.din60_WIDTH( 32 ),.CASE61( 6'h3D ),.din61_WIDTH( 32 ),.CASE62( 6'h3E ),.din62_WIDTH( 32 ),.CASE63( 6'h3F ),.din63_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_129_6_32_1_1_U139(.din0(buff_B0_q0),.din1(buff_B0_1_q0),.din2(buff_B0_2_q0),.din3(buff_B0_3_q0),.din4(buff_B0_4_q0),.din5(buff_B0_5_q0),.din6(buff_B0_6_q0),.din7(buff_B0_7_q0),.din8(buff_B0_8_q0),.din9(buff_B0_9_q0),.din10(buff_B0_10_q0),.din11(buff_B0_11_q0),.din12(buff_B0_12_q0),.din13(buff_B0_13_q0),.din14(buff_B0_14_q0),.din15(buff_B0_15_q0),.din16(buff_B0_16_q0),.din17(buff_B0_17_q0),.din18(buff_B0_18_q0),.din19(buff_B0_19_q0),.din20(buff_B0_20_q0),.din21(buff_B0_21_q0),.din22(buff_B0_22_q0),.din23(buff_B0_23_q0),.din24(buff_B0_24_q0),.din25(buff_B0_25_q0),.din26(buff_B0_26_q0),.din27(buff_B0_27_q0),.din28(buff_B0_28_q0),.din29(buff_B0_29_q0),.din30(buff_B0_30_q0),.din31(buff_B0_31_q0),.din32(buff_B0_32_q0),.din33(buff_B0_33_q0),.din34(buff_B0_34_q0),.din35(buff_B0_35_q0),.din36(buff_B0_36_q0),.din37(buff_B0_37_q0),.din38(buff_B0_38_q0),.din39(buff_B0_39_q0),.din40(buff_B0_40_q0),.din41(buff_B0_41_q0),.din42(buff_B0_42_q0),.din43(buff_B0_43_q0),.din44(buff_B0_44_q0),.din45(buff_B0_45_q0),.din46(buff_B0_46_q0),.din47(buff_B0_47_q0),.din48(buff_B0_48_q0),.din49(buff_B0_49_q0),.din50(buff_B0_50_q0),.din51(buff_B0_51_q0),.din52(buff_B0_52_q0),.din53(buff_B0_53_q0),.din54(buff_B0_54_q0),.din55(buff_B0_55_q0),.din56(buff_B0_56_q0),.din57(buff_B0_57_q0),.din58(buff_B0_58_q0),.din59(buff_B0_59_q0),.din60(buff_B0_60_q0),.din61(buff_B0_61_q0),.din62(buff_B0_62_q0),.din63(buff_B0_63_q0),.def(tmp_fu_1500_p129),.sel(tmp_fu_1500_p130),.dout(tmp_fu_1500_p131));
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage3) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        if ((1'b1 == ap_condition_1372)) begin
            empty_fu_330 <= tmp1_q0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            empty_fu_330 <= add_reg_2213;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_322 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_1236_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_322 <= select_ln27_fu_1284_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_326 <= 19'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_1236_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten21_fu_326 <= add_ln27_1_fu_1242_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_318 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_1236_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten7_fu_318 <= select_ln28_1_fu_1302_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_314 <= 7'd0;
    end else if (((icmp_ln27_reg_1819 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_314 <= select_ln28_fu_1352_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_310 <= 7'd0;
    end else if (((icmp_ln27_reg_1819 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_310 <= add_ln30_fu_1470_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_reg_2213 <= grp_fu_1102_p_dout0;
        first_iter_1_reg_1850 <= first_iter_1_fu_1359_p2;
        first_iter_1_reg_1850_pp0_iter1_reg <= first_iter_1_reg_1850;
        icmp_ln30_1_reg_2184 <= icmp_ln30_1_fu_1476_p2;
        icmp_ln30_1_reg_2184_pp0_iter1_reg <= icmp_ln30_1_reg_2184;
        icmp_ln30_1_reg_2184_pp0_iter2_reg <= icmp_ln30_1_reg_2184_pp0_iter1_reg;
        k_mid2_reg_1845 <= k_mid2_fu_1345_p3;
        tmp1_addr_reg_1854 <= p_cast_fu_1450_p1;
        tmp1_addr_reg_1854_pp0_iter1_reg <= tmp1_addr_reg_1854;
        tmp1_addr_reg_1854_pp0_iter2_reg <= tmp1_addr_reg_1854_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln5_reg_1834 <= and_ln5_fu_1278_p2;
        icmp_ln27_reg_1819 <= icmp_ln27_fu_1236_p2;
        icmp_ln27_reg_1819_pp0_iter1_reg <= icmp_ln27_reg_1819;
        icmp_ln28_reg_1828 <= icmp_ln28_fu_1260_p2;
        k_load_reg_1823 <= k_fu_310;
        trunc_ln28_reg_1840 <= trunc_ln28_fu_1292_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_A0_load_reg_2193 <= buff_A0_q0;
        tmp_reg_2198 <= tmp_fu_1500_p131;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul3_reg_2188 <= grp_fu_1106_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_2203 <= grp_fu_1106_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_1819 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_1819_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_10_ce0_local = 1'b1;
    end else begin
        buff_B0_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_11_ce0_local = 1'b1;
    end else begin
        buff_B0_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_12_ce0_local = 1'b1;
    end else begin
        buff_B0_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_13_ce0_local = 1'b1;
    end else begin
        buff_B0_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_14_ce0_local = 1'b1;
    end else begin
        buff_B0_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_15_ce0_local = 1'b1;
    end else begin
        buff_B0_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_16_ce0_local = 1'b1;
    end else begin
        buff_B0_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_17_ce0_local = 1'b1;
    end else begin
        buff_B0_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_18_ce0_local = 1'b1;
    end else begin
        buff_B0_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_19_ce0_local = 1'b1;
    end else begin
        buff_B0_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_1_ce0_local = 1'b1;
    end else begin
        buff_B0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_20_ce0_local = 1'b1;
    end else begin
        buff_B0_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_21_ce0_local = 1'b1;
    end else begin
        buff_B0_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_22_ce0_local = 1'b1;
    end else begin
        buff_B0_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_23_ce0_local = 1'b1;
    end else begin
        buff_B0_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_24_ce0_local = 1'b1;
    end else begin
        buff_B0_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_25_ce0_local = 1'b1;
    end else begin
        buff_B0_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_26_ce0_local = 1'b1;
    end else begin
        buff_B0_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_27_ce0_local = 1'b1;
    end else begin
        buff_B0_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_28_ce0_local = 1'b1;
    end else begin
        buff_B0_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_29_ce0_local = 1'b1;
    end else begin
        buff_B0_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_2_ce0_local = 1'b1;
    end else begin
        buff_B0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_30_ce0_local = 1'b1;
    end else begin
        buff_B0_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_31_ce0_local = 1'b1;
    end else begin
        buff_B0_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_32_ce0_local = 1'b1;
    end else begin
        buff_B0_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_33_ce0_local = 1'b1;
    end else begin
        buff_B0_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_34_ce0_local = 1'b1;
    end else begin
        buff_B0_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_35_ce0_local = 1'b1;
    end else begin
        buff_B0_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_36_ce0_local = 1'b1;
    end else begin
        buff_B0_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_37_ce0_local = 1'b1;
    end else begin
        buff_B0_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_38_ce0_local = 1'b1;
    end else begin
        buff_B0_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_39_ce0_local = 1'b1;
    end else begin
        buff_B0_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_3_ce0_local = 1'b1;
    end else begin
        buff_B0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_40_ce0_local = 1'b1;
    end else begin
        buff_B0_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_41_ce0_local = 1'b1;
    end else begin
        buff_B0_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_42_ce0_local = 1'b1;
    end else begin
        buff_B0_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_43_ce0_local = 1'b1;
    end else begin
        buff_B0_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_44_ce0_local = 1'b1;
    end else begin
        buff_B0_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_45_ce0_local = 1'b1;
    end else begin
        buff_B0_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_46_ce0_local = 1'b1;
    end else begin
        buff_B0_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_47_ce0_local = 1'b1;
    end else begin
        buff_B0_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_48_ce0_local = 1'b1;
    end else begin
        buff_B0_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_49_ce0_local = 1'b1;
    end else begin
        buff_B0_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_4_ce0_local = 1'b1;
    end else begin
        buff_B0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_50_ce0_local = 1'b1;
    end else begin
        buff_B0_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_51_ce0_local = 1'b1;
    end else begin
        buff_B0_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_52_ce0_local = 1'b1;
    end else begin
        buff_B0_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_53_ce0_local = 1'b1;
    end else begin
        buff_B0_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_54_ce0_local = 1'b1;
    end else begin
        buff_B0_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_55_ce0_local = 1'b1;
    end else begin
        buff_B0_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_56_ce0_local = 1'b1;
    end else begin
        buff_B0_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_57_ce0_local = 1'b1;
    end else begin
        buff_B0_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_58_ce0_local = 1'b1;
    end else begin
        buff_B0_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_59_ce0_local = 1'b1;
    end else begin
        buff_B0_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_5_ce0_local = 1'b1;
    end else begin
        buff_B0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_60_ce0_local = 1'b1;
    end else begin
        buff_B0_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_61_ce0_local = 1'b1;
    end else begin
        buff_B0_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_62_ce0_local = 1'b1;
    end else begin
        buff_B0_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_63_ce0_local = 1'b1;
    end else begin
        buff_B0_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_6_ce0_local = 1'b1;
    end else begin
        buff_B0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_7_ce0_local = 1'b1;
    end else begin
        buff_B0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_8_ce0_local = 1'b1;
    end else begin
        buff_B0_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_9_ce0_local = 1'b1;
    end else begin
        buff_B0_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_B0_ce0_local = 1'b1;
    end else begin
        buff_B0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1201_p0 = mul_reg_2203;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1201_p0 = buff_A0_load_reg_2193;
    end else begin
        grp_fu_1201_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1201_p1 = tmp_reg_2198;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1201_p1 = alpha;
    end else begin
        grp_fu_1201_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_address0_local = tmp1_addr_reg_1854_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp1_address0_local = tmp1_addr_reg_1854;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln30_1_reg_2184_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage3) & (ap_idle_pp0_0to0 == 1'b1))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_1_fu_1242_p2 = (indvar_flatten21_fu_326 + 19'd1);
assign add_ln27_fu_1254_p2 = (i_fu_322 + 7'd1);
assign add_ln28_1_fu_1296_p2 = (indvar_flatten7_fu_318 + 14'd1);
assign add_ln28_fu_1335_p2 = (select_ln5_fu_1328_p3 + 7'd1);
assign add_ln30_fu_1470_p2 = (k_mid2_fu_1345_p3 + 7'd1);
assign add_ln31_fu_1459_p2 = (tmp_2_fu_1365_p3 + zext_ln31_fu_1455_p1);
assign and_ln5_fu_1278_p2 = (xor_ln5_fu_1266_p2 & icmp_ln30_fu_1272_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1372 = ((first_iter_1_reg_1850_pp0_iter1_reg == 1'd1) & (icmp_ln27_reg_1819_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign buff_A0_address0 = zext_ln31_1_fu_1465_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_B0_10_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_10_ce0 = buff_B0_10_ce0_local;
assign buff_B0_11_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_11_ce0 = buff_B0_11_ce0_local;
assign buff_B0_12_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_12_ce0 = buff_B0_12_ce0_local;
assign buff_B0_13_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_13_ce0 = buff_B0_13_ce0_local;
assign buff_B0_14_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_14_ce0 = buff_B0_14_ce0_local;
assign buff_B0_15_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_15_ce0 = buff_B0_15_ce0_local;
assign buff_B0_16_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_16_ce0 = buff_B0_16_ce0_local;
assign buff_B0_17_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_17_ce0 = buff_B0_17_ce0_local;
assign buff_B0_18_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_18_ce0 = buff_B0_18_ce0_local;
assign buff_B0_19_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_19_ce0 = buff_B0_19_ce0_local;
assign buff_B0_1_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_1_ce0 = buff_B0_1_ce0_local;
assign buff_B0_20_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_20_ce0 = buff_B0_20_ce0_local;
assign buff_B0_21_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_21_ce0 = buff_B0_21_ce0_local;
assign buff_B0_22_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_22_ce0 = buff_B0_22_ce0_local;
assign buff_B0_23_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_23_ce0 = buff_B0_23_ce0_local;
assign buff_B0_24_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_24_ce0 = buff_B0_24_ce0_local;
assign buff_B0_25_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_25_ce0 = buff_B0_25_ce0_local;
assign buff_B0_26_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_26_ce0 = buff_B0_26_ce0_local;
assign buff_B0_27_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_27_ce0 = buff_B0_27_ce0_local;
assign buff_B0_28_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_28_ce0 = buff_B0_28_ce0_local;
assign buff_B0_29_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_29_ce0 = buff_B0_29_ce0_local;
assign buff_B0_2_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_2_ce0 = buff_B0_2_ce0_local;
assign buff_B0_30_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_30_ce0 = buff_B0_30_ce0_local;
assign buff_B0_31_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_31_ce0 = buff_B0_31_ce0_local;
assign buff_B0_32_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_32_ce0 = buff_B0_32_ce0_local;
assign buff_B0_33_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_33_ce0 = buff_B0_33_ce0_local;
assign buff_B0_34_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_34_ce0 = buff_B0_34_ce0_local;
assign buff_B0_35_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_35_ce0 = buff_B0_35_ce0_local;
assign buff_B0_36_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_36_ce0 = buff_B0_36_ce0_local;
assign buff_B0_37_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_37_ce0 = buff_B0_37_ce0_local;
assign buff_B0_38_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_38_ce0 = buff_B0_38_ce0_local;
assign buff_B0_39_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_39_ce0 = buff_B0_39_ce0_local;
assign buff_B0_3_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_3_ce0 = buff_B0_3_ce0_local;
assign buff_B0_40_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_40_ce0 = buff_B0_40_ce0_local;
assign buff_B0_41_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_41_ce0 = buff_B0_41_ce0_local;
assign buff_B0_42_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_42_ce0 = buff_B0_42_ce0_local;
assign buff_B0_43_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_43_ce0 = buff_B0_43_ce0_local;
assign buff_B0_44_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_44_ce0 = buff_B0_44_ce0_local;
assign buff_B0_45_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_45_ce0 = buff_B0_45_ce0_local;
assign buff_B0_46_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_46_ce0 = buff_B0_46_ce0_local;
assign buff_B0_47_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_47_ce0 = buff_B0_47_ce0_local;
assign buff_B0_48_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_48_ce0 = buff_B0_48_ce0_local;
assign buff_B0_49_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_49_ce0 = buff_B0_49_ce0_local;
assign buff_B0_4_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_4_ce0 = buff_B0_4_ce0_local;
assign buff_B0_50_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_50_ce0 = buff_B0_50_ce0_local;
assign buff_B0_51_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_51_ce0 = buff_B0_51_ce0_local;
assign buff_B0_52_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_52_ce0 = buff_B0_52_ce0_local;
assign buff_B0_53_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_53_ce0 = buff_B0_53_ce0_local;
assign buff_B0_54_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_54_ce0 = buff_B0_54_ce0_local;
assign buff_B0_55_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_55_ce0 = buff_B0_55_ce0_local;
assign buff_B0_56_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_56_ce0 = buff_B0_56_ce0_local;
assign buff_B0_57_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_57_ce0 = buff_B0_57_ce0_local;
assign buff_B0_58_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_58_ce0 = buff_B0_58_ce0_local;
assign buff_B0_59_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_59_ce0 = buff_B0_59_ce0_local;
assign buff_B0_5_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_5_ce0 = buff_B0_5_ce0_local;
assign buff_B0_60_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_60_ce0 = buff_B0_60_ce0_local;
assign buff_B0_61_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_61_ce0 = buff_B0_61_ce0_local;
assign buff_B0_62_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_62_ce0 = buff_B0_62_ce0_local;
assign buff_B0_63_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_63_ce0 = buff_B0_63_ce0_local;
assign buff_B0_6_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_6_ce0 = buff_B0_6_ce0_local;
assign buff_B0_7_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_7_ce0 = buff_B0_7_ce0_local;
assign buff_B0_8_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_8_ce0 = buff_B0_8_ce0_local;
assign buff_B0_9_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_9_ce0 = buff_B0_9_ce0_local;
assign buff_B0_address0 = zext_ln28_fu_1372_p1;
assign buff_B0_ce0 = buff_B0_ce0_local;
assign empty_10_fu_1444_p2 = (tmp_2_fu_1365_p3 + select_ln28_cast_fu_1440_p1);
assign empty_9_fu_1341_p2 = (icmp_ln28_reg_1828 | and_ln5_reg_1834);
assign first_iter_1_fu_1359_p2 = ((k_mid2_fu_1345_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_1102_p_ce = 1'b1;
assign grp_fu_1102_p_din0 = empty_fu_330;
assign grp_fu_1102_p_din1 = mul3_reg_2188;
assign grp_fu_1102_p_opcode = 2'd0;
assign grp_fu_1106_p_ce = 1'b1;
assign grp_fu_1106_p_din0 = grp_fu_1201_p0;
assign grp_fu_1106_p_din1 = grp_fu_1201_p1;
assign icmp_ln27_fu_1236_p2 = ((indvar_flatten21_fu_326 == 19'd262144) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_1260_p2 = ((indvar_flatten7_fu_318 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_1476_p2 = ((add_ln30_fu_1470_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_1272_p2 = ((k_fu_310 == 7'd64) ? 1'b1 : 1'b0);
assign k_mid2_fu_1345_p3 = ((empty_9_fu_1341_p2[0:0] == 1'b1) ? 7'd0 : k_load_reg_1823);
assign p_cast_fu_1450_p1 = empty_10_fu_1444_p2;
assign select_ln27_fu_1284_p3 = ((icmp_ln28_fu_1260_p2[0:0] == 1'b1) ? add_ln27_fu_1254_p2 : i_fu_322);
assign select_ln28_1_fu_1302_p3 = ((icmp_ln28_fu_1260_p2[0:0] == 1'b1) ? 14'd1 : add_ln28_1_fu_1296_p2);
assign select_ln28_cast_fu_1440_p1 = select_ln28_fu_1352_p3;
assign select_ln28_fu_1352_p3 = ((and_ln5_reg_1834[0:0] == 1'b1) ? add_ln28_fu_1335_p2 : select_ln5_fu_1328_p3);
assign select_ln5_fu_1328_p3 = ((icmp_ln28_reg_1828[0:0] == 1'b1) ? 7'd0 : j_fu_314);
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = add_reg_2213;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_2_fu_1365_p3 = {{trunc_ln28_reg_1840}, {6'd0}};
assign tmp_fu_1500_p129 = 'bx;
assign tmp_fu_1500_p130 = k_mid2_reg_1845[5:0];
assign trunc_ln28_fu_1292_p1 = select_ln27_fu_1284_p3[5:0];
assign xor_ln5_fu_1266_p2 = (icmp_ln28_fu_1260_p2 ^ 1'd1);
assign zext_ln28_fu_1372_p1 = select_ln28_fu_1352_p3;
assign zext_ln31_1_fu_1465_p1 = add_ln31_fu_1459_p2;
assign zext_ln31_fu_1455_p1 = k_mid2_fu_1345_p3;
endmodule 