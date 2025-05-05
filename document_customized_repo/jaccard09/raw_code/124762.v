module mvt_mvt_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_A_16_address0,buff_A_16_ce0,buff_A_16_q0,buff_A_17_address0,buff_A_17_ce0,buff_A_17_q0,buff_A_18_address0,buff_A_18_ce0,buff_A_18_q0,buff_A_19_address0,buff_A_19_ce0,buff_A_19_q0,buff_A_20_address0,buff_A_20_ce0,buff_A_20_q0,buff_A_21_address0,buff_A_21_ce0,buff_A_21_q0,buff_A_22_address0,buff_A_22_ce0,buff_A_22_q0,buff_A_23_address0,buff_A_23_ce0,buff_A_23_q0,buff_A_24_address0,buff_A_24_ce0,buff_A_24_q0,buff_A_25_address0,buff_A_25_ce0,buff_A_25_q0,buff_A_26_address0,buff_A_26_ce0,buff_A_26_q0,buff_A_27_address0,buff_A_27_ce0,buff_A_27_q0,buff_A_28_address0,buff_A_28_ce0,buff_A_28_q0,buff_A_29_address0,buff_A_29_ce0,buff_A_29_q0,buff_A_30_address0,buff_A_30_ce0,buff_A_30_q0,buff_A_31_address0,buff_A_31_ce0,buff_A_31_q0,buff_A_32_address0,buff_A_32_ce0,buff_A_32_q0,buff_A_33_address0,buff_A_33_ce0,buff_A_33_q0,buff_A_34_address0,buff_A_34_ce0,buff_A_34_q0,buff_A_35_address0,buff_A_35_ce0,buff_A_35_q0,buff_A_36_address0,buff_A_36_ce0,buff_A_36_q0,buff_A_37_address0,buff_A_37_ce0,buff_A_37_q0,buff_A_38_address0,buff_A_38_ce0,buff_A_38_q0,buff_A_39_address0,buff_A_39_ce0,buff_A_39_q0,buff_A_40_address0,buff_A_40_ce0,buff_A_40_q0,buff_A_41_address0,buff_A_41_ce0,buff_A_41_q0,buff_A_42_address0,buff_A_42_ce0,buff_A_42_q0,buff_A_43_address0,buff_A_43_ce0,buff_A_43_q0,buff_A_44_address0,buff_A_44_ce0,buff_A_44_q0,buff_A_45_address0,buff_A_45_ce0,buff_A_45_q0,buff_A_46_address0,buff_A_46_ce0,buff_A_46_q0,buff_A_47_address0,buff_A_47_ce0,buff_A_47_q0,buff_A_48_address0,buff_A_48_ce0,buff_A_48_q0,buff_A_49_address0,buff_A_49_ce0,buff_A_49_q0,buff_A_50_address0,buff_A_50_ce0,buff_A_50_q0,buff_A_51_address0,buff_A_51_ce0,buff_A_51_q0,buff_A_52_address0,buff_A_52_ce0,buff_A_52_q0,buff_A_53_address0,buff_A_53_ce0,buff_A_53_q0,buff_A_54_address0,buff_A_54_ce0,buff_A_54_q0,buff_A_55_address0,buff_A_55_ce0,buff_A_55_q0,buff_A_56_address0,buff_A_56_ce0,buff_A_56_q0,buff_A_57_address0,buff_A_57_ce0,buff_A_57_q0,buff_A_58_address0,buff_A_58_ce0,buff_A_58_q0,buff_A_59_address0,buff_A_59_ce0,buff_A_59_q0,buff_A_60_address0,buff_A_60_ce0,buff_A_60_q0,buff_A_61_address0,buff_A_61_ce0,buff_A_61_q0,buff_A_62_address0,buff_A_62_ce0,buff_A_62_q0,buff_A_63_address0,buff_A_63_ce0,buff_A_63_q0,buff_y2_address0,buff_y2_ce0,buff_y2_q0,buff_x2_address0,buff_x2_ce0,buff_x2_we0,buff_x2_d0,buff_x2_q0,grp_fu_1825_p_din0,grp_fu_1825_p_din1,grp_fu_1825_p_opcode,grp_fu_1825_p_dout0,grp_fu_1825_p_ce,grp_fu_1829_p_din0,grp_fu_1829_p_din1,grp_fu_1829_p_dout0,grp_fu_1829_p_ce); 
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
output  [5:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [5:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [5:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [5:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [5:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [5:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [5:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [5:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [5:0] buff_A_8_address0;
output   buff_A_8_ce0;
input  [31:0] buff_A_8_q0;
output  [5:0] buff_A_9_address0;
output   buff_A_9_ce0;
input  [31:0] buff_A_9_q0;
output  [5:0] buff_A_10_address0;
output   buff_A_10_ce0;
input  [31:0] buff_A_10_q0;
output  [5:0] buff_A_11_address0;
output   buff_A_11_ce0;
input  [31:0] buff_A_11_q0;
output  [5:0] buff_A_12_address0;
output   buff_A_12_ce0;
input  [31:0] buff_A_12_q0;
output  [5:0] buff_A_13_address0;
output   buff_A_13_ce0;
input  [31:0] buff_A_13_q0;
output  [5:0] buff_A_14_address0;
output   buff_A_14_ce0;
input  [31:0] buff_A_14_q0;
output  [5:0] buff_A_15_address0;
output   buff_A_15_ce0;
input  [31:0] buff_A_15_q0;
output  [5:0] buff_A_16_address0;
output   buff_A_16_ce0;
input  [31:0] buff_A_16_q0;
output  [5:0] buff_A_17_address0;
output   buff_A_17_ce0;
input  [31:0] buff_A_17_q0;
output  [5:0] buff_A_18_address0;
output   buff_A_18_ce0;
input  [31:0] buff_A_18_q0;
output  [5:0] buff_A_19_address0;
output   buff_A_19_ce0;
input  [31:0] buff_A_19_q0;
output  [5:0] buff_A_20_address0;
output   buff_A_20_ce0;
input  [31:0] buff_A_20_q0;
output  [5:0] buff_A_21_address0;
output   buff_A_21_ce0;
input  [31:0] buff_A_21_q0;
output  [5:0] buff_A_22_address0;
output   buff_A_22_ce0;
input  [31:0] buff_A_22_q0;
output  [5:0] buff_A_23_address0;
output   buff_A_23_ce0;
input  [31:0] buff_A_23_q0;
output  [5:0] buff_A_24_address0;
output   buff_A_24_ce0;
input  [31:0] buff_A_24_q0;
output  [5:0] buff_A_25_address0;
output   buff_A_25_ce0;
input  [31:0] buff_A_25_q0;
output  [5:0] buff_A_26_address0;
output   buff_A_26_ce0;
input  [31:0] buff_A_26_q0;
output  [5:0] buff_A_27_address0;
output   buff_A_27_ce0;
input  [31:0] buff_A_27_q0;
output  [5:0] buff_A_28_address0;
output   buff_A_28_ce0;
input  [31:0] buff_A_28_q0;
output  [5:0] buff_A_29_address0;
output   buff_A_29_ce0;
input  [31:0] buff_A_29_q0;
output  [5:0] buff_A_30_address0;
output   buff_A_30_ce0;
input  [31:0] buff_A_30_q0;
output  [5:0] buff_A_31_address0;
output   buff_A_31_ce0;
input  [31:0] buff_A_31_q0;
output  [5:0] buff_A_32_address0;
output   buff_A_32_ce0;
input  [31:0] buff_A_32_q0;
output  [5:0] buff_A_33_address0;
output   buff_A_33_ce0;
input  [31:0] buff_A_33_q0;
output  [5:0] buff_A_34_address0;
output   buff_A_34_ce0;
input  [31:0] buff_A_34_q0;
output  [5:0] buff_A_35_address0;
output   buff_A_35_ce0;
input  [31:0] buff_A_35_q0;
output  [5:0] buff_A_36_address0;
output   buff_A_36_ce0;
input  [31:0] buff_A_36_q0;
output  [5:0] buff_A_37_address0;
output   buff_A_37_ce0;
input  [31:0] buff_A_37_q0;
output  [5:0] buff_A_38_address0;
output   buff_A_38_ce0;
input  [31:0] buff_A_38_q0;
output  [5:0] buff_A_39_address0;
output   buff_A_39_ce0;
input  [31:0] buff_A_39_q0;
output  [5:0] buff_A_40_address0;
output   buff_A_40_ce0;
input  [31:0] buff_A_40_q0;
output  [5:0] buff_A_41_address0;
output   buff_A_41_ce0;
input  [31:0] buff_A_41_q0;
output  [5:0] buff_A_42_address0;
output   buff_A_42_ce0;
input  [31:0] buff_A_42_q0;
output  [5:0] buff_A_43_address0;
output   buff_A_43_ce0;
input  [31:0] buff_A_43_q0;
output  [5:0] buff_A_44_address0;
output   buff_A_44_ce0;
input  [31:0] buff_A_44_q0;
output  [5:0] buff_A_45_address0;
output   buff_A_45_ce0;
input  [31:0] buff_A_45_q0;
output  [5:0] buff_A_46_address0;
output   buff_A_46_ce0;
input  [31:0] buff_A_46_q0;
output  [5:0] buff_A_47_address0;
output   buff_A_47_ce0;
input  [31:0] buff_A_47_q0;
output  [5:0] buff_A_48_address0;
output   buff_A_48_ce0;
input  [31:0] buff_A_48_q0;
output  [5:0] buff_A_49_address0;
output   buff_A_49_ce0;
input  [31:0] buff_A_49_q0;
output  [5:0] buff_A_50_address0;
output   buff_A_50_ce0;
input  [31:0] buff_A_50_q0;
output  [5:0] buff_A_51_address0;
output   buff_A_51_ce0;
input  [31:0] buff_A_51_q0;
output  [5:0] buff_A_52_address0;
output   buff_A_52_ce0;
input  [31:0] buff_A_52_q0;
output  [5:0] buff_A_53_address0;
output   buff_A_53_ce0;
input  [31:0] buff_A_53_q0;
output  [5:0] buff_A_54_address0;
output   buff_A_54_ce0;
input  [31:0] buff_A_54_q0;
output  [5:0] buff_A_55_address0;
output   buff_A_55_ce0;
input  [31:0] buff_A_55_q0;
output  [5:0] buff_A_56_address0;
output   buff_A_56_ce0;
input  [31:0] buff_A_56_q0;
output  [5:0] buff_A_57_address0;
output   buff_A_57_ce0;
input  [31:0] buff_A_57_q0;
output  [5:0] buff_A_58_address0;
output   buff_A_58_ce0;
input  [31:0] buff_A_58_q0;
output  [5:0] buff_A_59_address0;
output   buff_A_59_ce0;
input  [31:0] buff_A_59_q0;
output  [5:0] buff_A_60_address0;
output   buff_A_60_ce0;
input  [31:0] buff_A_60_q0;
output  [5:0] buff_A_61_address0;
output   buff_A_61_ce0;
input  [31:0] buff_A_61_q0;
output  [5:0] buff_A_62_address0;
output   buff_A_62_ce0;
input  [31:0] buff_A_62_q0;
output  [5:0] buff_A_63_address0;
output   buff_A_63_ce0;
input  [31:0] buff_A_63_q0;
output  [5:0] buff_y2_address0;
output   buff_y2_ce0;
input  [31:0] buff_y2_q0;
output  [5:0] buff_x2_address0;
output   buff_x2_ce0;
output   buff_x2_we0;
output  [31:0] buff_x2_d0;
input  [31:0] buff_x2_q0;
output  [31:0] grp_fu_1825_p_din0;
output  [31:0] grp_fu_1825_p_din1;
output  [1:0] grp_fu_1825_p_opcode;
input  [31:0] grp_fu_1825_p_dout0;
output   grp_fu_1825_p_ce;
output  [31:0] grp_fu_1829_p_din0;
output  [31:0] grp_fu_1829_p_din1;
input  [31:0] grp_fu_1829_p_dout0;
output   grp_fu_1829_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
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
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln29_fu_1196_p2;
wire   [0:0] first_iter_1_fu_1247_p2;
reg   [0:0] first_iter_1_reg_1660;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] buff_x2_addr_reg_1664;
reg   [5:0] buff_x2_addr_reg_1664_pp0_iter1_reg;
wire   [5:0] trunc_ln29_fu_1258_p1;
reg   [5:0] trunc_ln29_reg_1669;
wire   [0:0] icmp_ln30_1_fu_1337_p2;
reg   [0:0] icmp_ln30_1_reg_1999;
reg   [0:0] icmp_ln30_1_reg_1999_pp0_iter1_reg;
reg   [31:0] buff_x2_load_reg_2003;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_fu_1353_p131;
reg   [31:0] tmp_reg_2008;
reg   [31:0] buff_y2_load_reg_2013;
reg   [31:0] mul1_reg_2018;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] add1_reg_2028;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln29_fu_1253_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln30_fu_1262_p1;
reg   [6:0] j_fu_296;
wire   [6:0] add_ln30_fu_1331_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_300;
wire   [6:0] select_ln29_fu_1239_p3;
reg   [12:0] indvar_flatten135_fu_304;
wire   [12:0] add_ln29_1_fu_1202_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten135_load;
wire    ap_block_pp0_stage0;
reg   [31:0] empty_fu_308;
wire    ap_block_pp0_stage7;
reg    buff_x2_ce0_local;
reg   [5:0] buff_x2_address0_local;
reg    buff_x2_we0_local;
wire    ap_block_pp0_stage6;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_7_ce0_local;
reg    buff_A_8_ce0_local;
reg    buff_A_9_ce0_local;
reg    buff_A_10_ce0_local;
reg    buff_A_11_ce0_local;
reg    buff_A_12_ce0_local;
reg    buff_A_13_ce0_local;
reg    buff_A_14_ce0_local;
reg    buff_A_15_ce0_local;
reg    buff_A_16_ce0_local;
reg    buff_A_17_ce0_local;
reg    buff_A_18_ce0_local;
reg    buff_A_19_ce0_local;
reg    buff_A_20_ce0_local;
reg    buff_A_21_ce0_local;
reg    buff_A_22_ce0_local;
reg    buff_A_23_ce0_local;
reg    buff_A_24_ce0_local;
reg    buff_A_25_ce0_local;
reg    buff_A_26_ce0_local;
reg    buff_A_27_ce0_local;
reg    buff_A_28_ce0_local;
reg    buff_A_29_ce0_local;
reg    buff_A_30_ce0_local;
reg    buff_A_31_ce0_local;
reg    buff_A_32_ce0_local;
reg    buff_A_33_ce0_local;
reg    buff_A_34_ce0_local;
reg    buff_A_35_ce0_local;
reg    buff_A_36_ce0_local;
reg    buff_A_37_ce0_local;
reg    buff_A_38_ce0_local;
reg    buff_A_39_ce0_local;
reg    buff_A_40_ce0_local;
reg    buff_A_41_ce0_local;
reg    buff_A_42_ce0_local;
reg    buff_A_43_ce0_local;
reg    buff_A_44_ce0_local;
reg    buff_A_45_ce0_local;
reg    buff_A_46_ce0_local;
reg    buff_A_47_ce0_local;
reg    buff_A_48_ce0_local;
reg    buff_A_49_ce0_local;
reg    buff_A_50_ce0_local;
reg    buff_A_51_ce0_local;
reg    buff_A_52_ce0_local;
reg    buff_A_53_ce0_local;
reg    buff_A_54_ce0_local;
reg    buff_A_55_ce0_local;
reg    buff_A_56_ce0_local;
reg    buff_A_57_ce0_local;
reg    buff_A_58_ce0_local;
reg    buff_A_59_ce0_local;
reg    buff_A_60_ce0_local;
reg    buff_A_61_ce0_local;
reg    buff_A_62_ce0_local;
reg    buff_A_63_ce0_local;
reg    buff_y2_ce0_local;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln30_fu_1225_p2;
wire   [6:0] add_ln29_fu_1219_p2;
wire   [6:0] select_ln6_fu_1231_p3;
wire   [31:0] tmp_fu_1353_p129;
wire    ap_block_pp0_stage2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
reg    ap_condition_1269;
wire   [5:0] tmp_fu_1353_p1;
wire   [5:0] tmp_fu_1353_p3;
wire   [5:0] tmp_fu_1353_p5;
wire   [5:0] tmp_fu_1353_p7;
wire   [5:0] tmp_fu_1353_p9;
wire   [5:0] tmp_fu_1353_p11;
wire   [5:0] tmp_fu_1353_p13;
wire   [5:0] tmp_fu_1353_p15;
wire   [5:0] tmp_fu_1353_p17;
wire   [5:0] tmp_fu_1353_p19;
wire   [5:0] tmp_fu_1353_p21;
wire   [5:0] tmp_fu_1353_p23;
wire   [5:0] tmp_fu_1353_p25;
wire   [5:0] tmp_fu_1353_p27;
wire   [5:0] tmp_fu_1353_p29;
wire   [5:0] tmp_fu_1353_p31;
wire   [5:0] tmp_fu_1353_p33;
wire   [5:0] tmp_fu_1353_p35;
wire   [5:0] tmp_fu_1353_p37;
wire   [5:0] tmp_fu_1353_p39;
wire   [5:0] tmp_fu_1353_p41;
wire   [5:0] tmp_fu_1353_p43;
wire   [5:0] tmp_fu_1353_p45;
wire   [5:0] tmp_fu_1353_p47;
wire   [5:0] tmp_fu_1353_p49;
wire   [5:0] tmp_fu_1353_p51;
wire   [5:0] tmp_fu_1353_p53;
wire   [5:0] tmp_fu_1353_p55;
wire   [5:0] tmp_fu_1353_p57;
wire   [5:0] tmp_fu_1353_p59;
wire   [5:0] tmp_fu_1353_p61;
wire   [5:0] tmp_fu_1353_p63;
wire  signed [5:0] tmp_fu_1353_p65;
wire  signed [5:0] tmp_fu_1353_p67;
wire  signed [5:0] tmp_fu_1353_p69;
wire  signed [5:0] tmp_fu_1353_p71;
wire  signed [5:0] tmp_fu_1353_p73;
wire  signed [5:0] tmp_fu_1353_p75;
wire  signed [5:0] tmp_fu_1353_p77;
wire  signed [5:0] tmp_fu_1353_p79;
wire  signed [5:0] tmp_fu_1353_p81;
wire  signed [5:0] tmp_fu_1353_p83;
wire  signed [5:0] tmp_fu_1353_p85;
wire  signed [5:0] tmp_fu_1353_p87;
wire  signed [5:0] tmp_fu_1353_p89;
wire  signed [5:0] tmp_fu_1353_p91;
wire  signed [5:0] tmp_fu_1353_p93;
wire  signed [5:0] tmp_fu_1353_p95;
wire  signed [5:0] tmp_fu_1353_p97;
wire  signed [5:0] tmp_fu_1353_p99;
wire  signed [5:0] tmp_fu_1353_p101;
wire  signed [5:0] tmp_fu_1353_p103;
wire  signed [5:0] tmp_fu_1353_p105;
wire  signed [5:0] tmp_fu_1353_p107;
wire  signed [5:0] tmp_fu_1353_p109;
wire  signed [5:0] tmp_fu_1353_p111;
wire  signed [5:0] tmp_fu_1353_p113;
wire  signed [5:0] tmp_fu_1353_p115;
wire  signed [5:0] tmp_fu_1353_p117;
wire  signed [5:0] tmp_fu_1353_p119;
wire  signed [5:0] tmp_fu_1353_p121;
wire  signed [5:0] tmp_fu_1353_p123;
wire  signed [5:0] tmp_fu_1353_p125;
wire  signed [5:0] tmp_fu_1353_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_296 = 7'd0;
#0 i_fu_300 = 7'd0;
#0 indvar_flatten135_fu_304 = 13'd0;
#0 empty_fu_308 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) mvt_sparsemux_129_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h1 ),.din1_WIDTH( 32 ),.CASE2( 6'h2 ),.din2_WIDTH( 32 ),.CASE3( 6'h3 ),.din3_WIDTH( 32 ),.CASE4( 6'h4 ),.din4_WIDTH( 32 ),.CASE5( 6'h5 ),.din5_WIDTH( 32 ),.CASE6( 6'h6 ),.din6_WIDTH( 32 ),.CASE7( 6'h7 ),.din7_WIDTH( 32 ),.CASE8( 6'h8 ),.din8_WIDTH( 32 ),.CASE9( 6'h9 ),.din9_WIDTH( 32 ),.CASE10( 6'hA ),.din10_WIDTH( 32 ),.CASE11( 6'hB ),.din11_WIDTH( 32 ),.CASE12( 6'hC ),.din12_WIDTH( 32 ),.CASE13( 6'hD ),.din13_WIDTH( 32 ),.CASE14( 6'hE ),.din14_WIDTH( 32 ),.CASE15( 6'hF ),.din15_WIDTH( 32 ),.CASE16( 6'h10 ),.din16_WIDTH( 32 ),.CASE17( 6'h11 ),.din17_WIDTH( 32 ),.CASE18( 6'h12 ),.din18_WIDTH( 32 ),.CASE19( 6'h13 ),.din19_WIDTH( 32 ),.CASE20( 6'h14 ),.din20_WIDTH( 32 ),.CASE21( 6'h15 ),.din21_WIDTH( 32 ),.CASE22( 6'h16 ),.din22_WIDTH( 32 ),.CASE23( 6'h17 ),.din23_WIDTH( 32 ),.CASE24( 6'h18 ),.din24_WIDTH( 32 ),.CASE25( 6'h19 ),.din25_WIDTH( 32 ),.CASE26( 6'h1A ),.din26_WIDTH( 32 ),.CASE27( 6'h1B ),.din27_WIDTH( 32 ),.CASE28( 6'h1C ),.din28_WIDTH( 32 ),.CASE29( 6'h1D ),.din29_WIDTH( 32 ),.CASE30( 6'h1E ),.din30_WIDTH( 32 ),.CASE31( 6'h1F ),.din31_WIDTH( 32 ),.CASE32( 6'h20 ),.din32_WIDTH( 32 ),.CASE33( 6'h21 ),.din33_WIDTH( 32 ),.CASE34( 6'h22 ),.din34_WIDTH( 32 ),.CASE35( 6'h23 ),.din35_WIDTH( 32 ),.CASE36( 6'h24 ),.din36_WIDTH( 32 ),.CASE37( 6'h25 ),.din37_WIDTH( 32 ),.CASE38( 6'h26 ),.din38_WIDTH( 32 ),.CASE39( 6'h27 ),.din39_WIDTH( 32 ),.CASE40( 6'h28 ),.din40_WIDTH( 32 ),.CASE41( 6'h29 ),.din41_WIDTH( 32 ),.CASE42( 6'h2A ),.din42_WIDTH( 32 ),.CASE43( 6'h2B ),.din43_WIDTH( 32 ),.CASE44( 6'h2C ),.din44_WIDTH( 32 ),.CASE45( 6'h2D ),.din45_WIDTH( 32 ),.CASE46( 6'h2E ),.din46_WIDTH( 32 ),.CASE47( 6'h2F ),.din47_WIDTH( 32 ),.CASE48( 6'h30 ),.din48_WIDTH( 32 ),.CASE49( 6'h31 ),.din49_WIDTH( 32 ),.CASE50( 6'h32 ),.din50_WIDTH( 32 ),.CASE51( 6'h33 ),.din51_WIDTH( 32 ),.CASE52( 6'h34 ),.din52_WIDTH( 32 ),.CASE53( 6'h35 ),.din53_WIDTH( 32 ),.CASE54( 6'h36 ),.din54_WIDTH( 32 ),.CASE55( 6'h37 ),.din55_WIDTH( 32 ),.CASE56( 6'h38 ),.din56_WIDTH( 32 ),.CASE57( 6'h39 ),.din57_WIDTH( 32 ),.CASE58( 6'h3A ),.din58_WIDTH( 32 ),.CASE59( 6'h3B ),.din59_WIDTH( 32 ),.CASE60( 6'h3C ),.din60_WIDTH( 32 ),.CASE61( 6'h3D ),.din61_WIDTH( 32 ),.CASE62( 6'h3E ),.din62_WIDTH( 32 ),.CASE63( 6'h3F ),.din63_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_129_6_32_1_1_U398(.din0(buff_A_q0),.din1(buff_A_1_q0),.din2(buff_A_2_q0),.din3(buff_A_3_q0),.din4(buff_A_4_q0),.din5(buff_A_5_q0),.din6(buff_A_6_q0),.din7(buff_A_7_q0),.din8(buff_A_8_q0),.din9(buff_A_9_q0),.din10(buff_A_10_q0),.din11(buff_A_11_q0),.din12(buff_A_12_q0),.din13(buff_A_13_q0),.din14(buff_A_14_q0),.din15(buff_A_15_q0),.din16(buff_A_16_q0),.din17(buff_A_17_q0),.din18(buff_A_18_q0),.din19(buff_A_19_q0),.din20(buff_A_20_q0),.din21(buff_A_21_q0),.din22(buff_A_22_q0),.din23(buff_A_23_q0),.din24(buff_A_24_q0),.din25(buff_A_25_q0),.din26(buff_A_26_q0),.din27(buff_A_27_q0),.din28(buff_A_28_q0),.din29(buff_A_29_q0),.din30(buff_A_30_q0),.din31(buff_A_31_q0),.din32(buff_A_32_q0),.din33(buff_A_33_q0),.din34(buff_A_34_q0),.din35(buff_A_35_q0),.din36(buff_A_36_q0),.din37(buff_A_37_q0),.din38(buff_A_38_q0),.din39(buff_A_39_q0),.din40(buff_A_40_q0),.din41(buff_A_41_q0),.din42(buff_A_42_q0),.din43(buff_A_43_q0),.din44(buff_A_44_q0),.din45(buff_A_45_q0),.din46(buff_A_46_q0),.din47(buff_A_47_q0),.din48(buff_A_48_q0),.din49(buff_A_49_q0),.din50(buff_A_50_q0),.din51(buff_A_51_q0),.din52(buff_A_52_q0),.din53(buff_A_53_q0),.din54(buff_A_54_q0),.din55(buff_A_55_q0),.din56(buff_A_56_q0),.din57(buff_A_57_q0),.din58(buff_A_58_q0),.din59(buff_A_59_q0),.din60(buff_A_60_q0),.din61(buff_A_61_q0),.din62(buff_A_62_q0),.din63(buff_A_63_q0),.def(tmp_fu_1353_p129),.sel(trunc_ln29_reg_1669),.dout(tmp_fu_1353_p131));
mvt_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        if ((1'b1 == ap_condition_1269)) begin
            empty_fu_308 <= buff_x2_load_reg_2003;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            empty_fu_308 <= add1_reg_2028;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_300 <= 7'd0;
    end else if (((icmp_ln29_reg_1656 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_300 <= select_ln29_fu_1239_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_1196_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten135_fu_304 <= add_ln29_1_fu_1202_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten135_fu_304 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_296 <= 7'd0;
    end else if (((icmp_ln29_reg_1656 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_296 <= add_ln30_fu_1331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add1_reg_2028 <= grp_fu_1825_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_x2_addr_reg_1664 <= zext_ln29_fu_1253_p1;
        buff_x2_addr_reg_1664_pp0_iter1_reg <= buff_x2_addr_reg_1664;
        first_iter_1_reg_1660 <= first_iter_1_fu_1247_p2;
        icmp_ln30_1_reg_1999 <= icmp_ln30_1_fu_1337_p2;
        icmp_ln30_1_reg_1999_pp0_iter1_reg <= icmp_ln30_1_reg_1999;
        trunc_ln29_reg_1669 <= trunc_ln29_fu_1258_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_x2_load_reg_2003 <= buff_x2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_y2_load_reg_2013 <= buff_y2_q0;
        tmp_reg_2008 <= tmp_fu_1353_p131;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln29_reg_1656 <= icmp_ln29_fu_1196_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul1_reg_2018 <= grp_fu_1829_p_dout0;
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten135_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten135_load = indvar_flatten135_fu_304;
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
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_address0_local = buff_x2_addr_reg_1664_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_x2_address0_local = zext_ln29_fu_1253_p1;
    end else begin
        buff_x2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_x2_ce0_local = 1'b1;
    end else begin
        buff_x2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln30_1_reg_1999_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        buff_x2_we0_local = 1'b1;
    end else begin
        buff_x2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y2_ce0_local = 1'b1;
    end else begin
        buff_y2_ce0_local = 1'b0;
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
assign add_ln29_1_fu_1202_p2 = (ap_sig_allocacmp_indvar_flatten135_load + 13'd1);
assign add_ln29_fu_1219_p2 = (i_fu_300 + 7'd1);
assign add_ln30_fu_1331_p2 = (select_ln6_fu_1231_p3 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
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
always @ (*) begin
    ap_condition_1269 = ((icmp_ln29_reg_1656 == 1'd0) & (first_iter_1_reg_1660 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign buff_A_10_address0 = zext_ln30_fu_1262_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_11_address0 = zext_ln30_fu_1262_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_12_address0 = zext_ln30_fu_1262_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_13_address0 = zext_ln30_fu_1262_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_14_address0 = zext_ln30_fu_1262_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_15_address0 = zext_ln30_fu_1262_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_16_address0 = zext_ln30_fu_1262_p1;
assign buff_A_16_ce0 = buff_A_16_ce0_local;
assign buff_A_17_address0 = zext_ln30_fu_1262_p1;
assign buff_A_17_ce0 = buff_A_17_ce0_local;
assign buff_A_18_address0 = zext_ln30_fu_1262_p1;
assign buff_A_18_ce0 = buff_A_18_ce0_local;
assign buff_A_19_address0 = zext_ln30_fu_1262_p1;
assign buff_A_19_ce0 = buff_A_19_ce0_local;
assign buff_A_1_address0 = zext_ln30_fu_1262_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_20_address0 = zext_ln30_fu_1262_p1;
assign buff_A_20_ce0 = buff_A_20_ce0_local;
assign buff_A_21_address0 = zext_ln30_fu_1262_p1;
assign buff_A_21_ce0 = buff_A_21_ce0_local;
assign buff_A_22_address0 = zext_ln30_fu_1262_p1;
assign buff_A_22_ce0 = buff_A_22_ce0_local;
assign buff_A_23_address0 = zext_ln30_fu_1262_p1;
assign buff_A_23_ce0 = buff_A_23_ce0_local;
assign buff_A_24_address0 = zext_ln30_fu_1262_p1;
assign buff_A_24_ce0 = buff_A_24_ce0_local;
assign buff_A_25_address0 = zext_ln30_fu_1262_p1;
assign buff_A_25_ce0 = buff_A_25_ce0_local;
assign buff_A_26_address0 = zext_ln30_fu_1262_p1;
assign buff_A_26_ce0 = buff_A_26_ce0_local;
assign buff_A_27_address0 = zext_ln30_fu_1262_p1;
assign buff_A_27_ce0 = buff_A_27_ce0_local;
assign buff_A_28_address0 = zext_ln30_fu_1262_p1;
assign buff_A_28_ce0 = buff_A_28_ce0_local;
assign buff_A_29_address0 = zext_ln30_fu_1262_p1;
assign buff_A_29_ce0 = buff_A_29_ce0_local;
assign buff_A_2_address0 = zext_ln30_fu_1262_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_30_address0 = zext_ln30_fu_1262_p1;
assign buff_A_30_ce0 = buff_A_30_ce0_local;
assign buff_A_31_address0 = zext_ln30_fu_1262_p1;
assign buff_A_31_ce0 = buff_A_31_ce0_local;
assign buff_A_32_address0 = zext_ln30_fu_1262_p1;
assign buff_A_32_ce0 = buff_A_32_ce0_local;
assign buff_A_33_address0 = zext_ln30_fu_1262_p1;
assign buff_A_33_ce0 = buff_A_33_ce0_local;
assign buff_A_34_address0 = zext_ln30_fu_1262_p1;
assign buff_A_34_ce0 = buff_A_34_ce0_local;
assign buff_A_35_address0 = zext_ln30_fu_1262_p1;
assign buff_A_35_ce0 = buff_A_35_ce0_local;
assign buff_A_36_address0 = zext_ln30_fu_1262_p1;
assign buff_A_36_ce0 = buff_A_36_ce0_local;
assign buff_A_37_address0 = zext_ln30_fu_1262_p1;
assign buff_A_37_ce0 = buff_A_37_ce0_local;
assign buff_A_38_address0 = zext_ln30_fu_1262_p1;
assign buff_A_38_ce0 = buff_A_38_ce0_local;
assign buff_A_39_address0 = zext_ln30_fu_1262_p1;
assign buff_A_39_ce0 = buff_A_39_ce0_local;
assign buff_A_3_address0 = zext_ln30_fu_1262_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_40_address0 = zext_ln30_fu_1262_p1;
assign buff_A_40_ce0 = buff_A_40_ce0_local;
assign buff_A_41_address0 = zext_ln30_fu_1262_p1;
assign buff_A_41_ce0 = buff_A_41_ce0_local;
assign buff_A_42_address0 = zext_ln30_fu_1262_p1;
assign buff_A_42_ce0 = buff_A_42_ce0_local;
assign buff_A_43_address0 = zext_ln30_fu_1262_p1;
assign buff_A_43_ce0 = buff_A_43_ce0_local;
assign buff_A_44_address0 = zext_ln30_fu_1262_p1;
assign buff_A_44_ce0 = buff_A_44_ce0_local;
assign buff_A_45_address0 = zext_ln30_fu_1262_p1;
assign buff_A_45_ce0 = buff_A_45_ce0_local;
assign buff_A_46_address0 = zext_ln30_fu_1262_p1;
assign buff_A_46_ce0 = buff_A_46_ce0_local;
assign buff_A_47_address0 = zext_ln30_fu_1262_p1;
assign buff_A_47_ce0 = buff_A_47_ce0_local;
assign buff_A_48_address0 = zext_ln30_fu_1262_p1;
assign buff_A_48_ce0 = buff_A_48_ce0_local;
assign buff_A_49_address0 = zext_ln30_fu_1262_p1;
assign buff_A_49_ce0 = buff_A_49_ce0_local;
assign buff_A_4_address0 = zext_ln30_fu_1262_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_50_address0 = zext_ln30_fu_1262_p1;
assign buff_A_50_ce0 = buff_A_50_ce0_local;
assign buff_A_51_address0 = zext_ln30_fu_1262_p1;
assign buff_A_51_ce0 = buff_A_51_ce0_local;
assign buff_A_52_address0 = zext_ln30_fu_1262_p1;
assign buff_A_52_ce0 = buff_A_52_ce0_local;
assign buff_A_53_address0 = zext_ln30_fu_1262_p1;
assign buff_A_53_ce0 = buff_A_53_ce0_local;
assign buff_A_54_address0 = zext_ln30_fu_1262_p1;
assign buff_A_54_ce0 = buff_A_54_ce0_local;
assign buff_A_55_address0 = zext_ln30_fu_1262_p1;
assign buff_A_55_ce0 = buff_A_55_ce0_local;
assign buff_A_56_address0 = zext_ln30_fu_1262_p1;
assign buff_A_56_ce0 = buff_A_56_ce0_local;
assign buff_A_57_address0 = zext_ln30_fu_1262_p1;
assign buff_A_57_ce0 = buff_A_57_ce0_local;
assign buff_A_58_address0 = zext_ln30_fu_1262_p1;
assign buff_A_58_ce0 = buff_A_58_ce0_local;
assign buff_A_59_address0 = zext_ln30_fu_1262_p1;
assign buff_A_59_ce0 = buff_A_59_ce0_local;
assign buff_A_5_address0 = zext_ln30_fu_1262_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_60_address0 = zext_ln30_fu_1262_p1;
assign buff_A_60_ce0 = buff_A_60_ce0_local;
assign buff_A_61_address0 = zext_ln30_fu_1262_p1;
assign buff_A_61_ce0 = buff_A_61_ce0_local;
assign buff_A_62_address0 = zext_ln30_fu_1262_p1;
assign buff_A_62_ce0 = buff_A_62_ce0_local;
assign buff_A_63_address0 = zext_ln30_fu_1262_p1;
assign buff_A_63_ce0 = buff_A_63_ce0_local;
assign buff_A_6_address0 = zext_ln30_fu_1262_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln30_fu_1262_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_8_address0 = zext_ln30_fu_1262_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_9_address0 = zext_ln30_fu_1262_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_address0 = zext_ln30_fu_1262_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_x2_address0 = buff_x2_address0_local;
assign buff_x2_ce0 = buff_x2_ce0_local;
assign buff_x2_d0 = add1_reg_2028;
assign buff_x2_we0 = buff_x2_we0_local;
assign buff_y2_address0 = zext_ln30_fu_1262_p1;
assign buff_y2_ce0 = buff_y2_ce0_local;
assign first_iter_1_fu_1247_p2 = ((select_ln6_fu_1231_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_1825_p_ce = 1'b1;
assign grp_fu_1825_p_din0 = empty_fu_308;
assign grp_fu_1825_p_din1 = mul1_reg_2018;
assign grp_fu_1825_p_opcode = 2'd0;
assign grp_fu_1829_p_ce = 1'b1;
assign grp_fu_1829_p_din0 = tmp_reg_2008;
assign grp_fu_1829_p_din1 = buff_y2_load_reg_2013;
assign icmp_ln29_fu_1196_p2 = ((ap_sig_allocacmp_indvar_flatten135_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_1337_p2 = ((add_ln30_fu_1331_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_1225_p2 = ((j_fu_296 == 7'd64) ? 1'b1 : 1'b0);
assign select_ln29_fu_1239_p3 = ((icmp_ln30_fu_1225_p2[0:0] == 1'b1) ? add_ln29_fu_1219_p2 : i_fu_300);
assign select_ln6_fu_1231_p3 = ((icmp_ln30_fu_1225_p2[0:0] == 1'b1) ? 7'd0 : j_fu_296);
assign tmp_fu_1353_p129 = 'bx;
assign trunc_ln29_fu_1258_p1 = select_ln29_fu_1239_p3[5:0];
assign zext_ln29_fu_1253_p1 = select_ln29_fu_1239_p3;
assign zext_ln30_fu_1262_p1 = select_ln6_fu_1231_p3;
endmodule 