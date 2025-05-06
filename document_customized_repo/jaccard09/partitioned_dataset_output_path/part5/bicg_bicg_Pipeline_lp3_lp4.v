
module bicg_bicg_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_16_address0,buff_A_16_ce0,buff_A_16_q0,buff_A_18_address0,buff_A_18_ce0,buff_A_18_q0,buff_A_20_address0,buff_A_20_ce0,buff_A_20_q0,buff_A_22_address0,buff_A_22_ce0,buff_A_22_q0,buff_A_24_address0,buff_A_24_ce0,buff_A_24_q0,buff_A_26_address0,buff_A_26_ce0,buff_A_26_q0,buff_A_28_address0,buff_A_28_ce0,buff_A_28_q0,buff_A_30_address0,buff_A_30_ce0,buff_A_30_q0,buff_A_32_address0,buff_A_32_ce0,buff_A_32_q0,buff_A_34_address0,buff_A_34_ce0,buff_A_34_q0,buff_A_36_address0,buff_A_36_ce0,buff_A_36_q0,buff_A_38_address0,buff_A_38_ce0,buff_A_38_q0,buff_A_40_address0,buff_A_40_ce0,buff_A_40_q0,buff_A_42_address0,buff_A_42_ce0,buff_A_42_q0,buff_A_44_address0,buff_A_44_ce0,buff_A_44_q0,buff_A_46_address0,buff_A_46_ce0,buff_A_46_q0,buff_A_48_address0,buff_A_48_ce0,buff_A_48_q0,buff_A_50_address0,buff_A_50_ce0,buff_A_50_q0,buff_A_52_address0,buff_A_52_ce0,buff_A_52_q0,buff_A_54_address0,buff_A_54_ce0,buff_A_54_q0,buff_A_56_address0,buff_A_56_ce0,buff_A_56_q0,buff_A_58_address0,buff_A_58_ce0,buff_A_58_q0,buff_A_60_address0,buff_A_60_ce0,buff_A_60_q0,buff_A_62_address0,buff_A_62_ce0,buff_A_62_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_A_17_address0,buff_A_17_ce0,buff_A_17_q0,buff_A_19_address0,buff_A_19_ce0,buff_A_19_q0,buff_A_21_address0,buff_A_21_ce0,buff_A_21_q0,buff_A_23_address0,buff_A_23_ce0,buff_A_23_q0,buff_A_25_address0,buff_A_25_ce0,buff_A_25_q0,buff_A_27_address0,buff_A_27_ce0,buff_A_27_q0,buff_A_29_address0,buff_A_29_ce0,buff_A_29_q0,buff_A_31_address0,buff_A_31_ce0,buff_A_31_q0,buff_A_33_address0,buff_A_33_ce0,buff_A_33_q0,buff_A_35_address0,buff_A_35_ce0,buff_A_35_q0,buff_A_37_address0,buff_A_37_ce0,buff_A_37_q0,buff_A_39_address0,buff_A_39_ce0,buff_A_39_q0,buff_A_41_address0,buff_A_41_ce0,buff_A_41_q0,buff_A_43_address0,buff_A_43_ce0,buff_A_43_q0,buff_A_45_address0,buff_A_45_ce0,buff_A_45_q0,buff_A_47_address0,buff_A_47_ce0,buff_A_47_q0,buff_A_49_address0,buff_A_49_ce0,buff_A_49_q0,buff_A_51_address0,buff_A_51_ce0,buff_A_51_q0,buff_A_53_address0,buff_A_53_ce0,buff_A_53_q0,buff_A_55_address0,buff_A_55_ce0,buff_A_55_q0,buff_A_57_address0,buff_A_57_ce0,buff_A_57_q0,buff_A_59_address0,buff_A_59_ce0,buff_A_59_q0,buff_A_61_address0,buff_A_61_ce0,buff_A_61_q0,buff_A_63_address0,buff_A_63_ce0,buff_A_63_q0,buff_p_address0,buff_p_ce0,buff_p_q0,buff_p_address1,buff_p_ce1,buff_p_q1,buff_q_out_address0,buff_q_out_ce0,buff_q_out_we0,buff_q_out_d0,buff_q_out_q0,grp_fu_2920_p_din0,grp_fu_2920_p_din1,grp_fu_2920_p_opcode,grp_fu_2920_p_dout0,grp_fu_2920_p_ce,grp_fu_2924_p_din0,grp_fu_2924_p_din1,grp_fu_2924_p_dout0,grp_fu_2924_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 15'd1;
parameter    ap_ST_fsm_pp0_stage1 = 15'd2;
parameter    ap_ST_fsm_pp0_stage2 = 15'd4;
parameter    ap_ST_fsm_pp0_stage3 = 15'd8;
parameter    ap_ST_fsm_pp0_stage4 = 15'd16;
parameter    ap_ST_fsm_pp0_stage5 = 15'd32;
parameter    ap_ST_fsm_pp0_stage6 = 15'd64;
parameter    ap_ST_fsm_pp0_stage7 = 15'd128;
parameter    ap_ST_fsm_pp0_stage8 = 15'd256;
parameter    ap_ST_fsm_pp0_stage9 = 15'd512;
parameter    ap_ST_fsm_pp0_stage10 = 15'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 15'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 15'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 15'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [5:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [5:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [5:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [5:0] buff_A_8_address0;
output   buff_A_8_ce0;
input  [31:0] buff_A_8_q0;
output  [5:0] buff_A_10_address0;
output   buff_A_10_ce0;
input  [31:0] buff_A_10_q0;
output  [5:0] buff_A_12_address0;
output   buff_A_12_ce0;
input  [31:0] buff_A_12_q0;
output  [5:0] buff_A_14_address0;
output   buff_A_14_ce0;
input  [31:0] buff_A_14_q0;
output  [5:0] buff_A_16_address0;
output   buff_A_16_ce0;
input  [31:0] buff_A_16_q0;
output  [5:0] buff_A_18_address0;
output   buff_A_18_ce0;
input  [31:0] buff_A_18_q0;
output  [5:0] buff_A_20_address0;
output   buff_A_20_ce0;
input  [31:0] buff_A_20_q0;
output  [5:0] buff_A_22_address0;
output   buff_A_22_ce0;
input  [31:0] buff_A_22_q0;
output  [5:0] buff_A_24_address0;
output   buff_A_24_ce0;
input  [31:0] buff_A_24_q0;
output  [5:0] buff_A_26_address0;
output   buff_A_26_ce0;
input  [31:0] buff_A_26_q0;
output  [5:0] buff_A_28_address0;
output   buff_A_28_ce0;
input  [31:0] buff_A_28_q0;
output  [5:0] buff_A_30_address0;
output   buff_A_30_ce0;
input  [31:0] buff_A_30_q0;
output  [5:0] buff_A_32_address0;
output   buff_A_32_ce0;
input  [31:0] buff_A_32_q0;
output  [5:0] buff_A_34_address0;
output   buff_A_34_ce0;
input  [31:0] buff_A_34_q0;
output  [5:0] buff_A_36_address0;
output   buff_A_36_ce0;
input  [31:0] buff_A_36_q0;
output  [5:0] buff_A_38_address0;
output   buff_A_38_ce0;
input  [31:0] buff_A_38_q0;
output  [5:0] buff_A_40_address0;
output   buff_A_40_ce0;
input  [31:0] buff_A_40_q0;
output  [5:0] buff_A_42_address0;
output   buff_A_42_ce0;
input  [31:0] buff_A_42_q0;
output  [5:0] buff_A_44_address0;
output   buff_A_44_ce0;
input  [31:0] buff_A_44_q0;
output  [5:0] buff_A_46_address0;
output   buff_A_46_ce0;
input  [31:0] buff_A_46_q0;
output  [5:0] buff_A_48_address0;
output   buff_A_48_ce0;
input  [31:0] buff_A_48_q0;
output  [5:0] buff_A_50_address0;
output   buff_A_50_ce0;
input  [31:0] buff_A_50_q0;
output  [5:0] buff_A_52_address0;
output   buff_A_52_ce0;
input  [31:0] buff_A_52_q0;
output  [5:0] buff_A_54_address0;
output   buff_A_54_ce0;
input  [31:0] buff_A_54_q0;
output  [5:0] buff_A_56_address0;
output   buff_A_56_ce0;
input  [31:0] buff_A_56_q0;
output  [5:0] buff_A_58_address0;
output   buff_A_58_ce0;
input  [31:0] buff_A_58_q0;
output  [5:0] buff_A_60_address0;
output   buff_A_60_ce0;
input  [31:0] buff_A_60_q0;
output  [5:0] buff_A_62_address0;
output   buff_A_62_ce0;
input  [31:0] buff_A_62_q0;
output  [5:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [5:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [5:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [5:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [5:0] buff_A_9_address0;
output   buff_A_9_ce0;
input  [31:0] buff_A_9_q0;
output  [5:0] buff_A_11_address0;
output   buff_A_11_ce0;
input  [31:0] buff_A_11_q0;
output  [5:0] buff_A_13_address0;
output   buff_A_13_ce0;
input  [31:0] buff_A_13_q0;
output  [5:0] buff_A_15_address0;
output   buff_A_15_ce0;
input  [31:0] buff_A_15_q0;
output  [5:0] buff_A_17_address0;
output   buff_A_17_ce0;
input  [31:0] buff_A_17_q0;
output  [5:0] buff_A_19_address0;
output   buff_A_19_ce0;
input  [31:0] buff_A_19_q0;
output  [5:0] buff_A_21_address0;
output   buff_A_21_ce0;
input  [31:0] buff_A_21_q0;
output  [5:0] buff_A_23_address0;
output   buff_A_23_ce0;
input  [31:0] buff_A_23_q0;
output  [5:0] buff_A_25_address0;
output   buff_A_25_ce0;
input  [31:0] buff_A_25_q0;
output  [5:0] buff_A_27_address0;
output   buff_A_27_ce0;
input  [31:0] buff_A_27_q0;
output  [5:0] buff_A_29_address0;
output   buff_A_29_ce0;
input  [31:0] buff_A_29_q0;
output  [5:0] buff_A_31_address0;
output   buff_A_31_ce0;
input  [31:0] buff_A_31_q0;
output  [5:0] buff_A_33_address0;
output   buff_A_33_ce0;
input  [31:0] buff_A_33_q0;
output  [5:0] buff_A_35_address0;
output   buff_A_35_ce0;
input  [31:0] buff_A_35_q0;
output  [5:0] buff_A_37_address0;
output   buff_A_37_ce0;
input  [31:0] buff_A_37_q0;
output  [5:0] buff_A_39_address0;
output   buff_A_39_ce0;
input  [31:0] buff_A_39_q0;
output  [5:0] buff_A_41_address0;
output   buff_A_41_ce0;
input  [31:0] buff_A_41_q0;
output  [5:0] buff_A_43_address0;
output   buff_A_43_ce0;
input  [31:0] buff_A_43_q0;
output  [5:0] buff_A_45_address0;
output   buff_A_45_ce0;
input  [31:0] buff_A_45_q0;
output  [5:0] buff_A_47_address0;
output   buff_A_47_ce0;
input  [31:0] buff_A_47_q0;
output  [5:0] buff_A_49_address0;
output   buff_A_49_ce0;
input  [31:0] buff_A_49_q0;
output  [5:0] buff_A_51_address0;
output   buff_A_51_ce0;
input  [31:0] buff_A_51_q0;
output  [5:0] buff_A_53_address0;
output   buff_A_53_ce0;
input  [31:0] buff_A_53_q0;
output  [5:0] buff_A_55_address0;
output   buff_A_55_ce0;
input  [31:0] buff_A_55_q0;
output  [5:0] buff_A_57_address0;
output   buff_A_57_ce0;
input  [31:0] buff_A_57_q0;
output  [5:0] buff_A_59_address0;
output   buff_A_59_ce0;
input  [31:0] buff_A_59_q0;
output  [5:0] buff_A_61_address0;
output   buff_A_61_ce0;
input  [31:0] buff_A_61_q0;
output  [5:0] buff_A_63_address0;
output   buff_A_63_ce0;
input  [31:0] buff_A_63_q0;
output  [5:0] buff_p_address0;
output   buff_p_ce0;
input  [31:0] buff_p_q0;
output  [5:0] buff_p_address1;
output   buff_p_ce1;
input  [31:0] buff_p_q1;
output  [5:0] buff_q_out_address0;
output   buff_q_out_ce0;
output   buff_q_out_we0;
output  [31:0] buff_q_out_d0;
input  [31:0] buff_q_out_q0;
output  [31:0] grp_fu_2920_p_din0;
output  [31:0] grp_fu_2920_p_din1;
output  [1:0] grp_fu_2920_p_opcode;
input  [31:0] grp_fu_2920_p_dout0;
output   grp_fu_2920_p_ce;
output  [31:0] grp_fu_2924_p_din0;
output  [31:0] grp_fu_2924_p_din1;
input  [31:0] grp_fu_2924_p_dout0;
output   grp_fu_2924_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln29_reg_1656;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [31:0] reg_1138;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln29_fu_1162_p2;
wire   [0:0] tmp_2_fu_1177_p3;
reg   [0:0] tmp_2_reg_1660;
wire   [6:0] select_ln5_fu_1185_p3;
reg   [6:0] select_ln5_reg_1665;
wire   [0:0] first_iter_1_fu_1193_p2;
reg   [0:0] first_iter_1_reg_1671;
reg   [5:0] buff_q_out_addr_reg_1685;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] buff_q_out_addr_reg_1685_pp0_iter1_reg;
reg   [31:0] buff_p_load_reg_2010;
reg   [31:0] buff_p_load_1_reg_2015;
reg   [31:0] buff_q_out_load_reg_2020;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_fu_1325_p67;
reg   [31:0] tmp_reg_2025;
wire   [31:0] tmp_1_fu_1461_p67;
reg   [31:0] tmp_1_reg_2030;
reg   [31:0] mul1_reg_2035;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul61_1_reg_2045;
reg   [0:0] tmp_3_reg_2050;
wire    ap_block_pp0_stage14_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln30_fu_1199_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln31_fu_1222_p1;
wire   [63:0] zext_ln29_fu_1248_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_244;
wire   [6:0] add_ln30_fu_1605_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_248;
wire   [6:0] select_ln29_fu_1241_p3;
reg   [11:0] indvar_flatten7_fu_252;
wire   [11:0] add_ln29_1_fu_1168_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten7_load;
reg   [31:0] empty_fu_256;
wire    ap_block_pp0_stage7;
reg    buff_p_ce1_local;
reg    buff_p_ce0_local;
reg    buff_q_out_ce0_local;
reg   [5:0] buff_q_out_address0_local;
reg    buff_q_out_we0_local;
wire    ap_block_pp0_stage6;
reg    buff_A_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_8_ce0_local;
reg    buff_A_10_ce0_local;
reg    buff_A_12_ce0_local;
reg    buff_A_14_ce0_local;
reg    buff_A_16_ce0_local;
reg    buff_A_18_ce0_local;
reg    buff_A_20_ce0_local;
reg    buff_A_22_ce0_local;
reg    buff_A_24_ce0_local;
reg    buff_A_26_ce0_local;
reg    buff_A_28_ce0_local;
reg    buff_A_30_ce0_local;
reg    buff_A_32_ce0_local;
reg    buff_A_34_ce0_local;
reg    buff_A_36_ce0_local;
reg    buff_A_38_ce0_local;
reg    buff_A_40_ce0_local;
reg    buff_A_42_ce0_local;
reg    buff_A_44_ce0_local;
reg    buff_A_46_ce0_local;
reg    buff_A_48_ce0_local;
reg    buff_A_50_ce0_local;
reg    buff_A_52_ce0_local;
reg    buff_A_54_ce0_local;
reg    buff_A_56_ce0_local;
reg    buff_A_58_ce0_local;
reg    buff_A_60_ce0_local;
reg    buff_A_62_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_7_ce0_local;
reg    buff_A_9_ce0_local;
reg    buff_A_11_ce0_local;
reg    buff_A_13_ce0_local;
reg    buff_A_15_ce0_local;
reg    buff_A_17_ce0_local;
reg    buff_A_19_ce0_local;
reg    buff_A_21_ce0_local;
reg    buff_A_23_ce0_local;
reg    buff_A_25_ce0_local;
reg    buff_A_27_ce0_local;
reg    buff_A_29_ce0_local;
reg    buff_A_31_ce0_local;
reg    buff_A_33_ce0_local;
reg    buff_A_35_ce0_local;
reg    buff_A_37_ce0_local;
reg    buff_A_39_ce0_local;
reg    buff_A_41_ce0_local;
reg    buff_A_43_ce0_local;
reg    buff_A_45_ce0_local;
reg    buff_A_47_ce0_local;
reg    buff_A_49_ce0_local;
reg    buff_A_51_ce0_local;
reg    buff_A_53_ce0_local;
reg    buff_A_55_ce0_local;
reg    buff_A_57_ce0_local;
reg    buff_A_59_ce0_local;
reg    buff_A_61_ce0_local;
reg    buff_A_63_ce0_local;
reg   [31:0] grp_fu_1130_p0;
reg   [31:0] grp_fu_1130_p1;
wire    ap_block_pp0_stage14;
reg   [31:0] grp_fu_1134_p0;
reg   [31:0] grp_fu_1134_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [4:0] tmp_4_fu_1204_p4;
wire   [5:0] or_ln1_fu_1214_p3;
wire   [6:0] add_ln29_fu_1235_p2;
wire    ap_block_pp0_stage2;
wire   [31:0] tmp_fu_1325_p65;
wire   [5:0] trunc_ln30_fu_1322_p1;
wire   [31:0] tmp_1_fu_1461_p65;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [14:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage14_00001;
reg    ap_condition_1342;
wire   [5:0] tmp_fu_1325_p1;
wire   [5:0] tmp_fu_1325_p3;
wire   [5:0] tmp_fu_1325_p5;
wire   [5:0] tmp_fu_1325_p7;
wire   [5:0] tmp_fu_1325_p9;
wire   [5:0] tmp_fu_1325_p11;
wire   [5:0] tmp_fu_1325_p13;
wire   [5:0] tmp_fu_1325_p15;
wire   [5:0] tmp_fu_1325_p17;
wire   [5:0] tmp_fu_1325_p19;
wire   [5:0] tmp_fu_1325_p21;
wire   [5:0] tmp_fu_1325_p23;
wire   [5:0] tmp_fu_1325_p25;
wire   [5:0] tmp_fu_1325_p27;
wire   [5:0] tmp_fu_1325_p29;
wire   [5:0] tmp_fu_1325_p31;
wire  signed [5:0] tmp_fu_1325_p33;
wire  signed [5:0] tmp_fu_1325_p35;
wire  signed [5:0] tmp_fu_1325_p37;
wire  signed [5:0] tmp_fu_1325_p39;
wire  signed [5:0] tmp_fu_1325_p41;
wire  signed [5:0] tmp_fu_1325_p43;
wire  signed [5:0] tmp_fu_1325_p45;
wire  signed [5:0] tmp_fu_1325_p47;
wire  signed [5:0] tmp_fu_1325_p49;
wire  signed [5:0] tmp_fu_1325_p51;
wire  signed [5:0] tmp_fu_1325_p53;
wire  signed [5:0] tmp_fu_1325_p55;
wire  signed [5:0] tmp_fu_1325_p57;
wire  signed [5:0] tmp_fu_1325_p59;
wire  signed [5:0] tmp_fu_1325_p61;
wire  signed [5:0] tmp_fu_1325_p63;
wire   [5:0] tmp_1_fu_1461_p1;
wire   [5:0] tmp_1_fu_1461_p3;
wire   [5:0] tmp_1_fu_1461_p5;
wire   [5:0] tmp_1_fu_1461_p7;
wire   [5:0] tmp_1_fu_1461_p9;
wire   [5:0] tmp_1_fu_1461_p11;
wire   [5:0] tmp_1_fu_1461_p13;
wire   [5:0] tmp_1_fu_1461_p15;
wire   [5:0] tmp_1_fu_1461_p17;
wire   [5:0] tmp_1_fu_1461_p19;
wire   [5:0] tmp_1_fu_1461_p21;
wire   [5:0] tmp_1_fu_1461_p23;
wire   [5:0] tmp_1_fu_1461_p25;
wire   [5:0] tmp_1_fu_1461_p27;
wire   [5:0] tmp_1_fu_1461_p29;
wire   [5:0] tmp_1_fu_1461_p31;
wire  signed [5:0] tmp_1_fu_1461_p33;
wire  signed [5:0] tmp_1_fu_1461_p35;
wire  signed [5:0] tmp_1_fu_1461_p37;
wire  signed [5:0] tmp_1_fu_1461_p39;
wire  signed [5:0] tmp_1_fu_1461_p41;
wire  signed [5:0] tmp_1_fu_1461_p43;
wire  signed [5:0] tmp_1_fu_1461_p45;
wire  signed [5:0] tmp_1_fu_1461_p47;
wire  signed [5:0] tmp_1_fu_1461_p49;
wire  signed [5:0] tmp_1_fu_1461_p51;
wire  signed [5:0] tmp_1_fu_1461_p53;
wire  signed [5:0] tmp_1_fu_1461_p55;
wire  signed [5:0] tmp_1_fu_1461_p57;
wire  signed [5:0] tmp_1_fu_1461_p59;
wire  signed [5:0] tmp_1_fu_1461_p61;
wire  signed [5:0] tmp_1_fu_1461_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_244 = 7'd0;
#0 i_fu_248 = 7'd0;
#0 indvar_flatten7_fu_252 = 12'd0;
#0 empty_fu_256 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_65_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h2 ),.din1_WIDTH( 32 ),.CASE2( 6'h4 ),.din2_WIDTH( 32 ),.CASE3( 6'h6 ),.din3_WIDTH( 32 ),.CASE4( 6'h8 ),.din4_WIDTH( 32 ),.CASE5( 6'hA ),.din5_WIDTH( 32 ),.CASE6( 6'hC ),.din6_WIDTH( 32 ),.CASE7( 6'hE ),.din7_WIDTH( 32 ),.CASE8( 6'h10 ),.din8_WIDTH( 32 ),.CASE9( 6'h12 ),.din9_WIDTH( 32 ),.CASE10( 6'h14 ),.din10_WIDTH( 32 ),.CASE11( 6'h16 ),.din11_WIDTH( 32 ),.CASE12( 6'h18 ),.din12_WIDTH( 32 ),.CASE13( 6'h1A ),.din13_WIDTH( 32 ),.CASE14( 6'h1C ),.din14_WIDTH( 32 ),.CASE15( 6'h1E ),.din15_WIDTH( 32 ),.CASE16( 6'h20 ),.din16_WIDTH( 32 ),.CASE17( 6'h22 ),.din17_WIDTH( 32 ),.CASE18( 6'h24 ),.din18_WIDTH( 32 ),.CASE19( 6'h26 ),.din19_WIDTH( 32 ),.CASE20( 6'h28 ),.din20_WIDTH( 32 ),.CASE21( 6'h2A ),.din21_WIDTH( 32 ),.CASE22( 6'h2C ),.din22_WIDTH( 32 ),.CASE23( 6'h2E ),.din23_WIDTH( 32 ),.CASE24( 6'h30 ),.din24_WIDTH( 32 ),.CASE25( 6'h32 ),.din25_WIDTH( 32 ),.CASE26( 6'h34 ),.din26_WIDTH( 32 ),.CASE27( 6'h36 ),.din27_WIDTH( 32 ),.CASE28( 6'h38 ),.din28_WIDTH( 32 ),.CASE29( 6'h3A ),.din29_WIDTH( 32 ),.CASE30( 6'h3C ),.din30_WIDTH( 32 ),.CASE31( 6'h3E ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_65_6_32_1_1_U289(.din0(buff_A_q0),.din1(buff_A_2_q0),.din2(buff_A_4_q0),.din3(buff_A_6_q0),.din4(buff_A_8_q0),.din5(buff_A_10_q0),.din6(buff_A_12_q0),.din7(buff_A_14_q0),.din8(buff_A_16_q0),.din9(buff_A_18_q0),.din10(buff_A_20_q0),.din11(buff_A_22_q0),.din12(buff_A_24_q0),.din13(buff_A_26_q0),.din14(buff_A_28_q0),.din15(buff_A_30_q0),.din16(buff_A_32_q0),.din17(buff_A_34_q0),.din18(buff_A_36_q0),.din19(buff_A_38_q0),.din20(buff_A_40_q0),.din21(buff_A_42_q0),.din22(buff_A_44_q0),.din23(buff_A_46_q0),.din24(buff_A_48_q0),.din25(buff_A_50_q0),.din26(buff_A_52_q0),.din27(buff_A_54_q0),.din28(buff_A_56_q0),.din29(buff_A_58_q0),.din30(buff_A_60_q0),.din31(buff_A_62_q0),.def(tmp_fu_1325_p65),.sel(trunc_ln30_fu_1322_p1),.dout(tmp_fu_1325_p67));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_65_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h2 ),.din1_WIDTH( 32 ),.CASE2( 6'h4 ),.din2_WIDTH( 32 ),.CASE3( 6'h6 ),.din3_WIDTH( 32 ),.CASE4( 6'h8 ),.din4_WIDTH( 32 ),.CASE5( 6'hA ),.din5_WIDTH( 32 ),.CASE6( 6'hC ),.din6_WIDTH( 32 ),.CASE7( 6'hE ),.din7_WIDTH( 32 ),.CASE8( 6'h10 ),.din8_WIDTH( 32 ),.CASE9( 6'h12 ),.din9_WIDTH( 32 ),.CASE10( 6'h14 ),.din10_WIDTH( 32 ),.CASE11( 6'h16 ),.din11_WIDTH( 32 ),.CASE12( 6'h18 ),.din12_WIDTH( 32 ),.CASE13( 6'h1A ),.din13_WIDTH( 32 ),.CASE14( 6'h1C ),.din14_WIDTH( 32 ),.CASE15( 6'h1E ),.din15_WIDTH( 32 ),.CASE16( 6'h20 ),.din16_WIDTH( 32 ),.CASE17( 6'h22 ),.din17_WIDTH( 32 ),.CASE18( 6'h24 ),.din18_WIDTH( 32 ),.CASE19( 6'h26 ),.din19_WIDTH( 32 ),.CASE20( 6'h28 ),.din20_WIDTH( 32 ),.CASE21( 6'h2A ),.din21_WIDTH( 32 ),.CASE22( 6'h2C ),.din22_WIDTH( 32 ),.CASE23( 6'h2E ),.din23_WIDTH( 32 ),.CASE24( 6'h30 ),.din24_WIDTH( 32 ),.CASE25( 6'h32 ),.din25_WIDTH( 32 ),.CASE26( 6'h34 ),.din26_WIDTH( 32 ),.CASE27( 6'h36 ),.din27_WIDTH( 32 ),.CASE28( 6'h38 ),.din28_WIDTH( 32 ),.CASE29( 6'h3A ),.din29_WIDTH( 32 ),.CASE30( 6'h3C ),.din30_WIDTH( 32 ),.CASE31( 6'h3E ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_65_6_32_1_1_U290(.din0(buff_A_1_q0),.din1(buff_A_3_q0),.din2(buff_A_5_q0),.din3(buff_A_7_q0),.din4(buff_A_9_q0),.din5(buff_A_11_q0),.din6(buff_A_13_q0),.din7(buff_A_15_q0),.din8(buff_A_17_q0),.din9(buff_A_19_q0),.din10(buff_A_21_q0),.din11(buff_A_23_q0),.din12(buff_A_25_q0),.din13(buff_A_27_q0),.din14(buff_A_29_q0),.din15(buff_A_31_q0),.din16(buff_A_33_q0),.din17(buff_A_35_q0),.din18(buff_A_37_q0),.din19(buff_A_39_q0),.din20(buff_A_41_q0),.din21(buff_A_43_q0),.din22(buff_A_45_q0),.din23(buff_A_47_q0),.din24(buff_A_49_q0),.din25(buff_A_51_q0),.din26(buff_A_53_q0),.din27(buff_A_55_q0),.din28(buff_A_57_q0),.din29(buff_A_59_q0),.din30(buff_A_61_q0),.din31(buff_A_63_q0),.def(tmp_1_fu_1461_p65),.sel(trunc_ln30_fu_1322_p1),.dout(tmp_1_fu_1461_p67));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_1342)) begin
            empty_fu_256 <= buff_q_out_load_reg_2020;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_256 <= reg_1138;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_248 <= 7'd0;
    end else if (((icmp_ln29_reg_1656 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_248 <= select_ln29_fu_1241_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_1162_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten7_fu_252 <= add_ln29_1_fu_1168_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten7_fu_252 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_244 <= 7'd0;
    end else if (((icmp_ln29_reg_1656 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        j_fu_244 <= add_ln30_fu_1605_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_p_load_1_reg_2015 <= buff_p_q0;
        buff_p_load_reg_2010 <= buff_p_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_q_out_addr_reg_1685 <= zext_ln29_fu_1248_p1;
        buff_q_out_addr_reg_1685_pp0_iter1_reg <= buff_q_out_addr_reg_1685;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_q_out_load_reg_2020 <= buff_q_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        first_iter_1_reg_1671 <= first_iter_1_fu_1193_p2;
        icmp_ln29_reg_1656 <= icmp_ln29_fu_1162_p2;
        select_ln5_reg_1665 <= select_ln5_fu_1185_p3;
        tmp_2_reg_1660 <= ap_sig_allocacmp_j_load[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul1_reg_2035 <= grp_fu_2924_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul61_1_reg_2045 <= grp_fu_2924_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_1138 <= grp_fu_2920_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_1_reg_2030 <= tmp_1_fu_1461_p67;
        tmp_reg_2025 <= tmp_fu_1325_p67;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        tmp_3_reg_2050 <= add_ln30_fu_1605_p2[32'd6];
    end
end
always @ (*) begin
    if (((icmp_ln29_reg_1656 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten7_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten7_load = indvar_flatten7_fu_252;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_244;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_ce0_local = 1'b1;
    end else begin
        buff_p_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_p_ce1_local = 1'b1;
    end else begin
        buff_p_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_address0_local = buff_q_out_addr_reg_1685_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_q_out_address0_local = zext_ln29_fu_1248_p1;
    end else begin
        buff_q_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_q_out_ce0_local = 1'b1;
    end else begin
        buff_q_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_2050 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_q_out_we0_local = 1'b1;
    end else begin
        buff_q_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_1130_p0 = reg_1138;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1130_p0 = empty_fu_256;
        end else begin
            grp_fu_1130_p0 = 'bx;
        end
    end else begin
        grp_fu_1130_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_1130_p1 = mul61_1_reg_2045;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1130_p1 = mul1_reg_2035;
        end else begin
            grp_fu_1130_p1 = 'bx;
        end
    end else begin
        grp_fu_1130_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1134_p0 = tmp_1_reg_2030;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1134_p0 = tmp_reg_2025;
        end else begin
            grp_fu_1134_p0 = 'bx;
        end
    end else begin
        grp_fu_1134_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1134_p1 = buff_p_load_1_reg_2015;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1134_p1 = buff_p_load_reg_2010;
        end else begin
            grp_fu_1134_p1 = 'bx;
        end
    end else begin
        grp_fu_1134_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln29_1_fu_1168_p2 = (ap_sig_allocacmp_indvar_flatten7_load + 12'd1);
assign add_ln29_fu_1235_p2 = (i_fu_248 + 7'd1);
assign add_ln30_fu_1605_p2 = (select_ln5_reg_1665 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1342 = ((icmp_ln29_reg_1656 == 1'd0) & (first_iter_1_reg_1671 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_10_address0 = zext_ln29_fu_1248_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_11_address0 = zext_ln29_fu_1248_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_12_address0 = zext_ln29_fu_1248_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_13_address0 = zext_ln29_fu_1248_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_14_address0 = zext_ln29_fu_1248_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_15_address0 = zext_ln29_fu_1248_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_16_address0 = zext_ln29_fu_1248_p1;
assign buff_A_16_ce0 = buff_A_16_ce0_local;
assign buff_A_17_address0 = zext_ln29_fu_1248_p1;
assign buff_A_17_ce0 = buff_A_17_ce0_local;
assign buff_A_18_address0 = zext_ln29_fu_1248_p1;
assign buff_A_18_ce0 = buff_A_18_ce0_local;
assign buff_A_19_address0 = zext_ln29_fu_1248_p1;
assign buff_A_19_ce0 = buff_A_19_ce0_local;
assign buff_A_1_address0 = zext_ln29_fu_1248_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_20_address0 = zext_ln29_fu_1248_p1;
assign buff_A_20_ce0 = buff_A_20_ce0_local;
assign buff_A_21_address0 = zext_ln29_fu_1248_p1;
assign buff_A_21_ce0 = buff_A_21_ce0_local;
assign buff_A_22_address0 = zext_ln29_fu_1248_p1;
assign buff_A_22_ce0 = buff_A_22_ce0_local;
assign buff_A_23_address0 = zext_ln29_fu_1248_p1;
assign buff_A_23_ce0 = buff_A_23_ce0_local;
assign buff_A_24_address0 = zext_ln29_fu_1248_p1;
assign buff_A_24_ce0 = buff_A_24_ce0_local;
assign buff_A_25_address0 = zext_ln29_fu_1248_p1;
assign buff_A_25_ce0 = buff_A_25_ce0_local;
assign buff_A_26_address0 = zext_ln29_fu_1248_p1;
assign buff_A_26_ce0 = buff_A_26_ce0_local;
assign buff_A_27_address0 = zext_ln29_fu_1248_p1;
assign buff_A_27_ce0 = buff_A_27_ce0_local;
assign buff_A_28_address0 = zext_ln29_fu_1248_p1;
assign buff_A_28_ce0 = buff_A_28_ce0_local;
assign buff_A_29_address0 = zext_ln29_fu_1248_p1;
assign buff_A_29_ce0 = buff_A_29_ce0_local;
assign buff_A_2_address0 = zext_ln29_fu_1248_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_30_address0 = zext_ln29_fu_1248_p1;
assign buff_A_30_ce0 = buff_A_30_ce0_local;
assign buff_A_31_address0 = zext_ln29_fu_1248_p1;
assign buff_A_31_ce0 = buff_A_31_ce0_local;
assign buff_A_32_address0 = zext_ln29_fu_1248_p1;
assign buff_A_32_ce0 = buff_A_32_ce0_local;
assign buff_A_33_address0 = zext_ln29_fu_1248_p1;
assign buff_A_33_ce0 = buff_A_33_ce0_local;
assign buff_A_34_address0 = zext_ln29_fu_1248_p1;
assign buff_A_34_ce0 = buff_A_34_ce0_local;
assign buff_A_35_address0 = zext_ln29_fu_1248_p1;
assign buff_A_35_ce0 = buff_A_35_ce0_local;
assign buff_A_36_address0 = zext_ln29_fu_1248_p1;
assign buff_A_36_ce0 = buff_A_36_ce0_local;
assign buff_A_37_address0 = zext_ln29_fu_1248_p1;
assign buff_A_37_ce0 = buff_A_37_ce0_local;
assign buff_A_38_address0 = zext_ln29_fu_1248_p1;
assign buff_A_38_ce0 = buff_A_38_ce0_local;
assign buff_A_39_address0 = zext_ln29_fu_1248_p1;
assign buff_A_39_ce0 = buff_A_39_ce0_local;
assign buff_A_3_address0 = zext_ln29_fu_1248_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_40_address0 = zext_ln29_fu_1248_p1;
assign buff_A_40_ce0 = buff_A_40_ce0_local;
assign buff_A_41_address0 = zext_ln29_fu_1248_p1;
assign buff_A_41_ce0 = buff_A_41_ce0_local;
assign buff_A_42_address0 = zext_ln29_fu_1248_p1;
assign buff_A_42_ce0 = buff_A_42_ce0_local;
assign buff_A_43_address0 = zext_ln29_fu_1248_p1;
assign buff_A_43_ce0 = buff_A_43_ce0_local;
assign buff_A_44_address0 = zext_ln29_fu_1248_p1;
assign buff_A_44_ce0 = buff_A_44_ce0_local;
assign buff_A_45_address0 = zext_ln29_fu_1248_p1;
assign buff_A_45_ce0 = buff_A_45_ce0_local;
assign buff_A_46_address0 = zext_ln29_fu_1248_p1;
assign buff_A_46_ce0 = buff_A_46_ce0_local;
assign buff_A_47_address0 = zext_ln29_fu_1248_p1;
assign buff_A_47_ce0 = buff_A_47_ce0_local;
assign buff_A_48_address0 = zext_ln29_fu_1248_p1;
assign buff_A_48_ce0 = buff_A_48_ce0_local;
assign buff_A_49_address0 = zext_ln29_fu_1248_p1;
assign buff_A_49_ce0 = buff_A_49_ce0_local;
assign buff_A_4_address0 = zext_ln29_fu_1248_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_50_address0 = zext_ln29_fu_1248_p1;
assign buff_A_50_ce0 = buff_A_50_ce0_local;
assign buff_A_51_address0 = zext_ln29_fu_1248_p1;
assign buff_A_51_ce0 = buff_A_51_ce0_local;
assign buff_A_52_address0 = zext_ln29_fu_1248_p1;
assign buff_A_52_ce0 = buff_A_52_ce0_local;
assign buff_A_53_address0 = zext_ln29_fu_1248_p1;
assign buff_A_53_ce0 = buff_A_53_ce0_local;
assign buff_A_54_address0 = zext_ln29_fu_1248_p1;
assign buff_A_54_ce0 = buff_A_54_ce0_local;
assign buff_A_55_address0 = zext_ln29_fu_1248_p1;
assign buff_A_55_ce0 = buff_A_55_ce0_local;
assign buff_A_56_address0 = zext_ln29_fu_1248_p1;
assign buff_A_56_ce0 = buff_A_56_ce0_local;
assign buff_A_57_address0 = zext_ln29_fu_1248_p1;
assign buff_A_57_ce0 = buff_A_57_ce0_local;
assign buff_A_58_address0 = zext_ln29_fu_1248_p1;
assign buff_A_58_ce0 = buff_A_58_ce0_local;
assign buff_A_59_address0 = zext_ln29_fu_1248_p1;
assign buff_A_59_ce0 = buff_A_59_ce0_local;
assign buff_A_5_address0 = zext_ln29_fu_1248_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_60_address0 = zext_ln29_fu_1248_p1;
assign buff_A_60_ce0 = buff_A_60_ce0_local;
assign buff_A_61_address0 = zext_ln29_fu_1248_p1;
assign buff_A_61_ce0 = buff_A_61_ce0_local;
assign buff_A_62_address0 = zext_ln29_fu_1248_p1;
assign buff_A_62_ce0 = buff_A_62_ce0_local;
assign buff_A_63_address0 = zext_ln29_fu_1248_p1;
assign buff_A_63_ce0 = buff_A_63_ce0_local;
assign buff_A_6_address0 = zext_ln29_fu_1248_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln29_fu_1248_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_8_address0 = zext_ln29_fu_1248_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_9_address0 = zext_ln29_fu_1248_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_address0 = zext_ln29_fu_1248_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_p_address0 = zext_ln31_fu_1222_p1;
assign buff_p_address1 = zext_ln30_fu_1199_p1;
assign buff_p_ce0 = buff_p_ce0_local;
assign buff_p_ce1 = buff_p_ce1_local;
assign buff_q_out_address0 = buff_q_out_address0_local;
assign buff_q_out_ce0 = buff_q_out_ce0_local;
assign buff_q_out_d0 = reg_1138;
assign buff_q_out_we0 = buff_q_out_we0_local;
assign first_iter_1_fu_1193_p2 = ((select_ln5_fu_1185_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_2920_p_ce = 1'b1;
assign grp_fu_2920_p_din0 = grp_fu_1130_p0;
assign grp_fu_2920_p_din1 = grp_fu_1130_p1;
assign grp_fu_2920_p_opcode = 2'd0;
assign grp_fu_2924_p_ce = 1'b1;
assign grp_fu_2924_p_din0 = grp_fu_1134_p0;
assign grp_fu_2924_p_din1 = grp_fu_1134_p1;
assign icmp_ln29_fu_1162_p2 = ((ap_sig_allocacmp_indvar_flatten7_load == 12'd2048) ? 1'b1 : 1'b0);
assign or_ln1_fu_1214_p3 = {{tmp_4_fu_1204_p4}, {1'd1}};
assign select_ln29_fu_1241_p3 = ((tmp_2_reg_1660[0:0] == 1'b1) ? add_ln29_fu_1235_p2 : i_fu_248);
assign select_ln5_fu_1185_p3 = ((tmp_2_fu_1177_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp_1_fu_1461_p65 = 'bx;
assign tmp_2_fu_1177_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_4_fu_1204_p4 = {{select_ln5_fu_1185_p3[5:1]}};
assign tmp_fu_1325_p65 = 'bx;
assign trunc_ln30_fu_1322_p1 = select_ln5_reg_1665[5:0];
assign zext_ln29_fu_1248_p1 = select_ln29_fu_1241_p3;
assign zext_ln30_fu_1199_p1 = select_ln5_fu_1185_p3;
assign zext_ln31_fu_1222_p1 = or_ln1_fu_1214_p3;
endmodule 
