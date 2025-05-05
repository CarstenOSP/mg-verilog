module syrk_syrk_Pipeline_lpwr_1_lpwr_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,C_out_din,C_out_full_n,C_out_write,buff_C_out_address0,buff_C_out_ce0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_q0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_q0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_q0,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_q0,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_q0,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_q0,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_q0,buff_C_out_8_address0,buff_C_out_8_ce0,buff_C_out_8_q0,buff_C_out_9_address0,buff_C_out_9_ce0,buff_C_out_9_q0,buff_C_out_10_address0,buff_C_out_10_ce0,buff_C_out_10_q0,buff_C_out_11_address0,buff_C_out_11_ce0,buff_C_out_11_q0,buff_C_out_12_address0,buff_C_out_12_ce0,buff_C_out_12_q0,buff_C_out_13_address0,buff_C_out_13_ce0,buff_C_out_13_q0,buff_C_out_14_address0,buff_C_out_14_ce0,buff_C_out_14_q0,buff_C_out_15_address0,buff_C_out_15_ce0,buff_C_out_15_q0,buff_C_out_16_address0,buff_C_out_16_ce0,buff_C_out_16_q0,buff_C_out_17_address0,buff_C_out_17_ce0,buff_C_out_17_q0,buff_C_out_18_address0,buff_C_out_18_ce0,buff_C_out_18_q0,buff_C_out_19_address0,buff_C_out_19_ce0,buff_C_out_19_q0,buff_C_out_20_address0,buff_C_out_20_ce0,buff_C_out_20_q0,buff_C_out_21_address0,buff_C_out_21_ce0,buff_C_out_21_q0,buff_C_out_22_address0,buff_C_out_22_ce0,buff_C_out_22_q0,buff_C_out_23_address0,buff_C_out_23_ce0,buff_C_out_23_q0,buff_C_out_24_address0,buff_C_out_24_ce0,buff_C_out_24_q0,buff_C_out_25_address0,buff_C_out_25_ce0,buff_C_out_25_q0,buff_C_out_26_address0,buff_C_out_26_ce0,buff_C_out_26_q0,buff_C_out_27_address0,buff_C_out_27_ce0,buff_C_out_27_q0,buff_C_out_28_address0,buff_C_out_28_ce0,buff_C_out_28_q0,buff_C_out_29_address0,buff_C_out_29_ce0,buff_C_out_29_q0,buff_C_out_30_address0,buff_C_out_30_ce0,buff_C_out_30_q0,buff_C_out_31_address0,buff_C_out_31_ce0,buff_C_out_31_q0,buff_C_out_32_address0,buff_C_out_32_ce0,buff_C_out_32_q0,buff_C_out_33_address0,buff_C_out_33_ce0,buff_C_out_33_q0,buff_C_out_34_address0,buff_C_out_34_ce0,buff_C_out_34_q0,buff_C_out_35_address0,buff_C_out_35_ce0,buff_C_out_35_q0,buff_C_out_36_address0,buff_C_out_36_ce0,buff_C_out_36_q0,buff_C_out_37_address0,buff_C_out_37_ce0,buff_C_out_37_q0,buff_C_out_38_address0,buff_C_out_38_ce0,buff_C_out_38_q0,buff_C_out_39_address0,buff_C_out_39_ce0,buff_C_out_39_q0,buff_C_out_40_address0,buff_C_out_40_ce0,buff_C_out_40_q0,buff_C_out_41_address0,buff_C_out_41_ce0,buff_C_out_41_q0,buff_C_out_42_address0,buff_C_out_42_ce0,buff_C_out_42_q0,buff_C_out_43_address0,buff_C_out_43_ce0,buff_C_out_43_q0,buff_C_out_44_address0,buff_C_out_44_ce0,buff_C_out_44_q0,buff_C_out_45_address0,buff_C_out_45_ce0,buff_C_out_45_q0,buff_C_out_46_address0,buff_C_out_46_ce0,buff_C_out_46_q0,buff_C_out_47_address0,buff_C_out_47_ce0,buff_C_out_47_q0,buff_C_out_48_address0,buff_C_out_48_ce0,buff_C_out_48_q0,buff_C_out_49_address0,buff_C_out_49_ce0,buff_C_out_49_q0,buff_C_out_50_address0,buff_C_out_50_ce0,buff_C_out_50_q0,buff_C_out_51_address0,buff_C_out_51_ce0,buff_C_out_51_q0,buff_C_out_52_address0,buff_C_out_52_ce0,buff_C_out_52_q0,buff_C_out_53_address0,buff_C_out_53_ce0,buff_C_out_53_q0,buff_C_out_54_address0,buff_C_out_54_ce0,buff_C_out_54_q0,buff_C_out_55_address0,buff_C_out_55_ce0,buff_C_out_55_q0,buff_C_out_56_address0,buff_C_out_56_ce0,buff_C_out_56_q0,buff_C_out_57_address0,buff_C_out_57_ce0,buff_C_out_57_q0,buff_C_out_58_address0,buff_C_out_58_ce0,buff_C_out_58_q0,buff_C_out_59_address0,buff_C_out_59_ce0,buff_C_out_59_q0,buff_C_out_60_address0,buff_C_out_60_ce0,buff_C_out_60_q0,buff_C_out_61_address0,buff_C_out_61_ce0,buff_C_out_61_q0,buff_C_out_62_address0,buff_C_out_62_ce0,buff_C_out_62_q0,buff_C_out_63_address0,buff_C_out_63_ce0,buff_C_out_63_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] C_out_din;
input   C_out_full_n;
output   C_out_write;
output  [5:0] buff_C_out_address0;
output   buff_C_out_ce0;
input  [31:0] buff_C_out_q0;
output  [5:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
input  [31:0] buff_C_out_1_q0;
output  [5:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
input  [31:0] buff_C_out_2_q0;
output  [5:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
input  [31:0] buff_C_out_3_q0;
output  [5:0] buff_C_out_4_address0;
output   buff_C_out_4_ce0;
input  [31:0] buff_C_out_4_q0;
output  [5:0] buff_C_out_5_address0;
output   buff_C_out_5_ce0;
input  [31:0] buff_C_out_5_q0;
output  [5:0] buff_C_out_6_address0;
output   buff_C_out_6_ce0;
input  [31:0] buff_C_out_6_q0;
output  [5:0] buff_C_out_7_address0;
output   buff_C_out_7_ce0;
input  [31:0] buff_C_out_7_q0;
output  [5:0] buff_C_out_8_address0;
output   buff_C_out_8_ce0;
input  [31:0] buff_C_out_8_q0;
output  [5:0] buff_C_out_9_address0;
output   buff_C_out_9_ce0;
input  [31:0] buff_C_out_9_q0;
output  [5:0] buff_C_out_10_address0;
output   buff_C_out_10_ce0;
input  [31:0] buff_C_out_10_q0;
output  [5:0] buff_C_out_11_address0;
output   buff_C_out_11_ce0;
input  [31:0] buff_C_out_11_q0;
output  [5:0] buff_C_out_12_address0;
output   buff_C_out_12_ce0;
input  [31:0] buff_C_out_12_q0;
output  [5:0] buff_C_out_13_address0;
output   buff_C_out_13_ce0;
input  [31:0] buff_C_out_13_q0;
output  [5:0] buff_C_out_14_address0;
output   buff_C_out_14_ce0;
input  [31:0] buff_C_out_14_q0;
output  [5:0] buff_C_out_15_address0;
output   buff_C_out_15_ce0;
input  [31:0] buff_C_out_15_q0;
output  [5:0] buff_C_out_16_address0;
output   buff_C_out_16_ce0;
input  [31:0] buff_C_out_16_q0;
output  [5:0] buff_C_out_17_address0;
output   buff_C_out_17_ce0;
input  [31:0] buff_C_out_17_q0;
output  [5:0] buff_C_out_18_address0;
output   buff_C_out_18_ce0;
input  [31:0] buff_C_out_18_q0;
output  [5:0] buff_C_out_19_address0;
output   buff_C_out_19_ce0;
input  [31:0] buff_C_out_19_q0;
output  [5:0] buff_C_out_20_address0;
output   buff_C_out_20_ce0;
input  [31:0] buff_C_out_20_q0;
output  [5:0] buff_C_out_21_address0;
output   buff_C_out_21_ce0;
input  [31:0] buff_C_out_21_q0;
output  [5:0] buff_C_out_22_address0;
output   buff_C_out_22_ce0;
input  [31:0] buff_C_out_22_q0;
output  [5:0] buff_C_out_23_address0;
output   buff_C_out_23_ce0;
input  [31:0] buff_C_out_23_q0;
output  [5:0] buff_C_out_24_address0;
output   buff_C_out_24_ce0;
input  [31:0] buff_C_out_24_q0;
output  [5:0] buff_C_out_25_address0;
output   buff_C_out_25_ce0;
input  [31:0] buff_C_out_25_q0;
output  [5:0] buff_C_out_26_address0;
output   buff_C_out_26_ce0;
input  [31:0] buff_C_out_26_q0;
output  [5:0] buff_C_out_27_address0;
output   buff_C_out_27_ce0;
input  [31:0] buff_C_out_27_q0;
output  [5:0] buff_C_out_28_address0;
output   buff_C_out_28_ce0;
input  [31:0] buff_C_out_28_q0;
output  [5:0] buff_C_out_29_address0;
output   buff_C_out_29_ce0;
input  [31:0] buff_C_out_29_q0;
output  [5:0] buff_C_out_30_address0;
output   buff_C_out_30_ce0;
input  [31:0] buff_C_out_30_q0;
output  [5:0] buff_C_out_31_address0;
output   buff_C_out_31_ce0;
input  [31:0] buff_C_out_31_q0;
output  [5:0] buff_C_out_32_address0;
output   buff_C_out_32_ce0;
input  [31:0] buff_C_out_32_q0;
output  [5:0] buff_C_out_33_address0;
output   buff_C_out_33_ce0;
input  [31:0] buff_C_out_33_q0;
output  [5:0] buff_C_out_34_address0;
output   buff_C_out_34_ce0;
input  [31:0] buff_C_out_34_q0;
output  [5:0] buff_C_out_35_address0;
output   buff_C_out_35_ce0;
input  [31:0] buff_C_out_35_q0;
output  [5:0] buff_C_out_36_address0;
output   buff_C_out_36_ce0;
input  [31:0] buff_C_out_36_q0;
output  [5:0] buff_C_out_37_address0;
output   buff_C_out_37_ce0;
input  [31:0] buff_C_out_37_q0;
output  [5:0] buff_C_out_38_address0;
output   buff_C_out_38_ce0;
input  [31:0] buff_C_out_38_q0;
output  [5:0] buff_C_out_39_address0;
output   buff_C_out_39_ce0;
input  [31:0] buff_C_out_39_q0;
output  [5:0] buff_C_out_40_address0;
output   buff_C_out_40_ce0;
input  [31:0] buff_C_out_40_q0;
output  [5:0] buff_C_out_41_address0;
output   buff_C_out_41_ce0;
input  [31:0] buff_C_out_41_q0;
output  [5:0] buff_C_out_42_address0;
output   buff_C_out_42_ce0;
input  [31:0] buff_C_out_42_q0;
output  [5:0] buff_C_out_43_address0;
output   buff_C_out_43_ce0;
input  [31:0] buff_C_out_43_q0;
output  [5:0] buff_C_out_44_address0;
output   buff_C_out_44_ce0;
input  [31:0] buff_C_out_44_q0;
output  [5:0] buff_C_out_45_address0;
output   buff_C_out_45_ce0;
input  [31:0] buff_C_out_45_q0;
output  [5:0] buff_C_out_46_address0;
output   buff_C_out_46_ce0;
input  [31:0] buff_C_out_46_q0;
output  [5:0] buff_C_out_47_address0;
output   buff_C_out_47_ce0;
input  [31:0] buff_C_out_47_q0;
output  [5:0] buff_C_out_48_address0;
output   buff_C_out_48_ce0;
input  [31:0] buff_C_out_48_q0;
output  [5:0] buff_C_out_49_address0;
output   buff_C_out_49_ce0;
input  [31:0] buff_C_out_49_q0;
output  [5:0] buff_C_out_50_address0;
output   buff_C_out_50_ce0;
input  [31:0] buff_C_out_50_q0;
output  [5:0] buff_C_out_51_address0;
output   buff_C_out_51_ce0;
input  [31:0] buff_C_out_51_q0;
output  [5:0] buff_C_out_52_address0;
output   buff_C_out_52_ce0;
input  [31:0] buff_C_out_52_q0;
output  [5:0] buff_C_out_53_address0;
output   buff_C_out_53_ce0;
input  [31:0] buff_C_out_53_q0;
output  [5:0] buff_C_out_54_address0;
output   buff_C_out_54_ce0;
input  [31:0] buff_C_out_54_q0;
output  [5:0] buff_C_out_55_address0;
output   buff_C_out_55_ce0;
input  [31:0] buff_C_out_55_q0;
output  [5:0] buff_C_out_56_address0;
output   buff_C_out_56_ce0;
input  [31:0] buff_C_out_56_q0;
output  [5:0] buff_C_out_57_address0;
output   buff_C_out_57_ce0;
input  [31:0] buff_C_out_57_q0;
output  [5:0] buff_C_out_58_address0;
output   buff_C_out_58_ce0;
input  [31:0] buff_C_out_58_q0;
output  [5:0] buff_C_out_59_address0;
output   buff_C_out_59_ce0;
input  [31:0] buff_C_out_59_q0;
output  [5:0] buff_C_out_60_address0;
output   buff_C_out_60_ce0;
input  [31:0] buff_C_out_60_q0;
output  [5:0] buff_C_out_61_address0;
output   buff_C_out_61_ce0;
input  [31:0] buff_C_out_61_q0;
output  [5:0] buff_C_out_62_address0;
output   buff_C_out_62_ce0;
input  [31:0] buff_C_out_62_q0;
output  [5:0] buff_C_out_63_address0;
output   buff_C_out_63_ce0;
input  [31:0] buff_C_out_63_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg   [0:0] icmp_ln40_reg_1932;
reg   [0:0] icmp_ln40_reg_1932_pp0_iter2_reg;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln38_fu_1170_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    C_out_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire   [5:0] trunc_ln39_fu_1289_p1;
reg   [5:0] trunc_ln39_reg_1927;
wire   [0:0] icmp_ln40_fu_1293_p2;
wire   [31:0] tmp_1_fu_1315_p131;
reg   [31:0] tmp_1_reg_1936;
wire   [63:0] zext_ln38_fu_1221_p1;
reg   [6:0] j_fu_300;
wire   [6:0] add_ln39_fu_1299_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_304;
wire   [6:0] select_ln38_fu_1213_p3;
reg   [12:0] indvar_flatten540_fu_308;
wire   [12:0] add_ln38_1_fu_1176_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten540_load;
wire   [31:0] bitcast_ln41_fu_1578_p1;
reg   [31:0] C_out_din_local;
reg    ap_block_pp0_stage0_01001;
reg    C_out_write_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_1_ce0_local;
reg    buff_C_out_2_ce0_local;
reg    buff_C_out_3_ce0_local;
reg    buff_C_out_4_ce0_local;
reg    buff_C_out_5_ce0_local;
reg    buff_C_out_6_ce0_local;
reg    buff_C_out_7_ce0_local;
reg    buff_C_out_8_ce0_local;
reg    buff_C_out_9_ce0_local;
reg    buff_C_out_10_ce0_local;
reg    buff_C_out_11_ce0_local;
reg    buff_C_out_12_ce0_local;
reg    buff_C_out_13_ce0_local;
reg    buff_C_out_14_ce0_local;
reg    buff_C_out_15_ce0_local;
reg    buff_C_out_16_ce0_local;
reg    buff_C_out_17_ce0_local;
reg    buff_C_out_18_ce0_local;
reg    buff_C_out_19_ce0_local;
reg    buff_C_out_20_ce0_local;
reg    buff_C_out_21_ce0_local;
reg    buff_C_out_22_ce0_local;
reg    buff_C_out_23_ce0_local;
reg    buff_C_out_24_ce0_local;
reg    buff_C_out_25_ce0_local;
reg    buff_C_out_26_ce0_local;
reg    buff_C_out_27_ce0_local;
reg    buff_C_out_28_ce0_local;
reg    buff_C_out_29_ce0_local;
reg    buff_C_out_30_ce0_local;
reg    buff_C_out_31_ce0_local;
reg    buff_C_out_32_ce0_local;
reg    buff_C_out_33_ce0_local;
reg    buff_C_out_34_ce0_local;
reg    buff_C_out_35_ce0_local;
reg    buff_C_out_36_ce0_local;
reg    buff_C_out_37_ce0_local;
reg    buff_C_out_38_ce0_local;
reg    buff_C_out_39_ce0_local;
reg    buff_C_out_40_ce0_local;
reg    buff_C_out_41_ce0_local;
reg    buff_C_out_42_ce0_local;
reg    buff_C_out_43_ce0_local;
reg    buff_C_out_44_ce0_local;
reg    buff_C_out_45_ce0_local;
reg    buff_C_out_46_ce0_local;
reg    buff_C_out_47_ce0_local;
reg    buff_C_out_48_ce0_local;
reg    buff_C_out_49_ce0_local;
reg    buff_C_out_50_ce0_local;
reg    buff_C_out_51_ce0_local;
reg    buff_C_out_52_ce0_local;
reg    buff_C_out_53_ce0_local;
reg    buff_C_out_54_ce0_local;
reg    buff_C_out_55_ce0_local;
reg    buff_C_out_56_ce0_local;
reg    buff_C_out_57_ce0_local;
reg    buff_C_out_58_ce0_local;
reg    buff_C_out_59_ce0_local;
reg    buff_C_out_60_ce0_local;
reg    buff_C_out_61_ce0_local;
reg    buff_C_out_62_ce0_local;
reg    buff_C_out_63_ce0_local;
wire   [0:0] icmp_ln39_fu_1199_p2;
wire   [6:0] add_ln38_fu_1193_p2;
wire   [6:0] select_ln5_fu_1205_p3;
wire   [31:0] tmp_1_fu_1315_p129;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_1_fu_1315_p1;
wire   [5:0] tmp_1_fu_1315_p3;
wire   [5:0] tmp_1_fu_1315_p5;
wire   [5:0] tmp_1_fu_1315_p7;
wire   [5:0] tmp_1_fu_1315_p9;
wire   [5:0] tmp_1_fu_1315_p11;
wire   [5:0] tmp_1_fu_1315_p13;
wire   [5:0] tmp_1_fu_1315_p15;
wire   [5:0] tmp_1_fu_1315_p17;
wire   [5:0] tmp_1_fu_1315_p19;
wire   [5:0] tmp_1_fu_1315_p21;
wire   [5:0] tmp_1_fu_1315_p23;
wire   [5:0] tmp_1_fu_1315_p25;
wire   [5:0] tmp_1_fu_1315_p27;
wire   [5:0] tmp_1_fu_1315_p29;
wire   [5:0] tmp_1_fu_1315_p31;
wire   [5:0] tmp_1_fu_1315_p33;
wire   [5:0] tmp_1_fu_1315_p35;
wire   [5:0] tmp_1_fu_1315_p37;
wire   [5:0] tmp_1_fu_1315_p39;
wire   [5:0] tmp_1_fu_1315_p41;
wire   [5:0] tmp_1_fu_1315_p43;
wire   [5:0] tmp_1_fu_1315_p45;
wire   [5:0] tmp_1_fu_1315_p47;
wire   [5:0] tmp_1_fu_1315_p49;
wire   [5:0] tmp_1_fu_1315_p51;
wire   [5:0] tmp_1_fu_1315_p53;
wire   [5:0] tmp_1_fu_1315_p55;
wire   [5:0] tmp_1_fu_1315_p57;
wire   [5:0] tmp_1_fu_1315_p59;
wire   [5:0] tmp_1_fu_1315_p61;
wire   [5:0] tmp_1_fu_1315_p63;
wire  signed [5:0] tmp_1_fu_1315_p65;
wire  signed [5:0] tmp_1_fu_1315_p67;
wire  signed [5:0] tmp_1_fu_1315_p69;
wire  signed [5:0] tmp_1_fu_1315_p71;
wire  signed [5:0] tmp_1_fu_1315_p73;
wire  signed [5:0] tmp_1_fu_1315_p75;
wire  signed [5:0] tmp_1_fu_1315_p77;
wire  signed [5:0] tmp_1_fu_1315_p79;
wire  signed [5:0] tmp_1_fu_1315_p81;
wire  signed [5:0] tmp_1_fu_1315_p83;
wire  signed [5:0] tmp_1_fu_1315_p85;
wire  signed [5:0] tmp_1_fu_1315_p87;
wire  signed [5:0] tmp_1_fu_1315_p89;
wire  signed [5:0] tmp_1_fu_1315_p91;
wire  signed [5:0] tmp_1_fu_1315_p93;
wire  signed [5:0] tmp_1_fu_1315_p95;
wire  signed [5:0] tmp_1_fu_1315_p97;
wire  signed [5:0] tmp_1_fu_1315_p99;
wire  signed [5:0] tmp_1_fu_1315_p101;
wire  signed [5:0] tmp_1_fu_1315_p103;
wire  signed [5:0] tmp_1_fu_1315_p105;
wire  signed [5:0] tmp_1_fu_1315_p107;
wire  signed [5:0] tmp_1_fu_1315_p109;
wire  signed [5:0] tmp_1_fu_1315_p111;
wire  signed [5:0] tmp_1_fu_1315_p113;
wire  signed [5:0] tmp_1_fu_1315_p115;
wire  signed [5:0] tmp_1_fu_1315_p117;
wire  signed [5:0] tmp_1_fu_1315_p119;
wire  signed [5:0] tmp_1_fu_1315_p121;
wire  signed [5:0] tmp_1_fu_1315_p123;
wire  signed [5:0] tmp_1_fu_1315_p125;
wire  signed [5:0] tmp_1_fu_1315_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 j_fu_300 = 7'd0;
#0 i_fu_304 = 7'd0;
#0 indvar_flatten540_fu_308 = 13'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_129_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h1 ),.din1_WIDTH( 32 ),.CASE2( 6'h2 ),.din2_WIDTH( 32 ),.CASE3( 6'h3 ),.din3_WIDTH( 32 ),.CASE4( 6'h4 ),.din4_WIDTH( 32 ),.CASE5( 6'h5 ),.din5_WIDTH( 32 ),.CASE6( 6'h6 ),.din6_WIDTH( 32 ),.CASE7( 6'h7 ),.din7_WIDTH( 32 ),.CASE8( 6'h8 ),.din8_WIDTH( 32 ),.CASE9( 6'h9 ),.din9_WIDTH( 32 ),.CASE10( 6'hA ),.din10_WIDTH( 32 ),.CASE11( 6'hB ),.din11_WIDTH( 32 ),.CASE12( 6'hC ),.din12_WIDTH( 32 ),.CASE13( 6'hD ),.din13_WIDTH( 32 ),.CASE14( 6'hE ),.din14_WIDTH( 32 ),.CASE15( 6'hF ),.din15_WIDTH( 32 ),.CASE16( 6'h10 ),.din16_WIDTH( 32 ),.CASE17( 6'h11 ),.din17_WIDTH( 32 ),.CASE18( 6'h12 ),.din18_WIDTH( 32 ),.CASE19( 6'h13 ),.din19_WIDTH( 32 ),.CASE20( 6'h14 ),.din20_WIDTH( 32 ),.CASE21( 6'h15 ),.din21_WIDTH( 32 ),.CASE22( 6'h16 ),.din22_WIDTH( 32 ),.CASE23( 6'h17 ),.din23_WIDTH( 32 ),.CASE24( 6'h18 ),.din24_WIDTH( 32 ),.CASE25( 6'h19 ),.din25_WIDTH( 32 ),.CASE26( 6'h1A ),.din26_WIDTH( 32 ),.CASE27( 6'h1B ),.din27_WIDTH( 32 ),.CASE28( 6'h1C ),.din28_WIDTH( 32 ),.CASE29( 6'h1D ),.din29_WIDTH( 32 ),.CASE30( 6'h1E ),.din30_WIDTH( 32 ),.CASE31( 6'h1F ),.din31_WIDTH( 32 ),.CASE32( 6'h20 ),.din32_WIDTH( 32 ),.CASE33( 6'h21 ),.din33_WIDTH( 32 ),.CASE34( 6'h22 ),.din34_WIDTH( 32 ),.CASE35( 6'h23 ),.din35_WIDTH( 32 ),.CASE36( 6'h24 ),.din36_WIDTH( 32 ),.CASE37( 6'h25 ),.din37_WIDTH( 32 ),.CASE38( 6'h26 ),.din38_WIDTH( 32 ),.CASE39( 6'h27 ),.din39_WIDTH( 32 ),.CASE40( 6'h28 ),.din40_WIDTH( 32 ),.CASE41( 6'h29 ),.din41_WIDTH( 32 ),.CASE42( 6'h2A ),.din42_WIDTH( 32 ),.CASE43( 6'h2B ),.din43_WIDTH( 32 ),.CASE44( 6'h2C ),.din44_WIDTH( 32 ),.CASE45( 6'h2D ),.din45_WIDTH( 32 ),.CASE46( 6'h2E ),.din46_WIDTH( 32 ),.CASE47( 6'h2F ),.din47_WIDTH( 32 ),.CASE48( 6'h30 ),.din48_WIDTH( 32 ),.CASE49( 6'h31 ),.din49_WIDTH( 32 ),.CASE50( 6'h32 ),.din50_WIDTH( 32 ),.CASE51( 6'h33 ),.din51_WIDTH( 32 ),.CASE52( 6'h34 ),.din52_WIDTH( 32 ),.CASE53( 6'h35 ),.din53_WIDTH( 32 ),.CASE54( 6'h36 ),.din54_WIDTH( 32 ),.CASE55( 6'h37 ),.din55_WIDTH( 32 ),.CASE56( 6'h38 ),.din56_WIDTH( 32 ),.CASE57( 6'h39 ),.din57_WIDTH( 32 ),.CASE58( 6'h3A ),.din58_WIDTH( 32 ),.CASE59( 6'h3B ),.din59_WIDTH( 32 ),.CASE60( 6'h3C ),.din60_WIDTH( 32 ),.CASE61( 6'h3D ),.din61_WIDTH( 32 ),.CASE62( 6'h3E ),.din62_WIDTH( 32 ),.CASE63( 6'h3F ),.din63_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_129_6_32_1_1_U461(.din0(buff_C_out_q0),.din1(buff_C_out_1_q0),.din2(buff_C_out_2_q0),.din3(buff_C_out_3_q0),.din4(buff_C_out_4_q0),.din5(buff_C_out_5_q0),.din6(buff_C_out_6_q0),.din7(buff_C_out_7_q0),.din8(buff_C_out_8_q0),.din9(buff_C_out_9_q0),.din10(buff_C_out_10_q0),.din11(buff_C_out_11_q0),.din12(buff_C_out_12_q0),.din13(buff_C_out_13_q0),.din14(buff_C_out_14_q0),.din15(buff_C_out_15_q0),.din16(buff_C_out_16_q0),.din17(buff_C_out_17_q0),.din18(buff_C_out_18_q0),.din19(buff_C_out_19_q0),.din20(buff_C_out_20_q0),.din21(buff_C_out_21_q0),.din22(buff_C_out_22_q0),.din23(buff_C_out_23_q0),.din24(buff_C_out_24_q0),.din25(buff_C_out_25_q0),.din26(buff_C_out_26_q0),.din27(buff_C_out_27_q0),.din28(buff_C_out_28_q0),.din29(buff_C_out_29_q0),.din30(buff_C_out_30_q0),.din31(buff_C_out_31_q0),.din32(buff_C_out_32_q0),.din33(buff_C_out_33_q0),.din34(buff_C_out_34_q0),.din35(buff_C_out_35_q0),.din36(buff_C_out_36_q0),.din37(buff_C_out_37_q0),.din38(buff_C_out_38_q0),.din39(buff_C_out_39_q0),.din40(buff_C_out_40_q0),.din41(buff_C_out_41_q0),.din42(buff_C_out_42_q0),.din43(buff_C_out_43_q0),.din44(buff_C_out_44_q0),.din45(buff_C_out_45_q0),.din46(buff_C_out_46_q0),.din47(buff_C_out_47_q0),.din48(buff_C_out_48_q0),.din49(buff_C_out_49_q0),.din50(buff_C_out_50_q0),.din51(buff_C_out_51_q0),.din52(buff_C_out_52_q0),.din53(buff_C_out_53_q0),.din54(buff_C_out_54_q0),.din55(buff_C_out_55_q0),.din56(buff_C_out_56_q0),.din57(buff_C_out_57_q0),.din58(buff_C_out_58_q0),.din59(buff_C_out_59_q0),.din60(buff_C_out_60_q0),.din61(buff_C_out_61_q0),.din62(buff_C_out_62_q0),.din63(buff_C_out_63_q0),.def(tmp_1_fu_1315_p129),.sel(trunc_ln39_reg_1927),.dout(tmp_1_fu_1315_p131));
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_304 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_304 <= select_ln38_fu_1213_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln38_fu_1170_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten540_fu_308 <= add_ln38_1_fu_1176_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten540_fu_308 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_300 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_300 <= add_ln39_fu_1299_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln40_reg_1932 <= icmp_ln40_fu_1293_p2;
        trunc_ln39_reg_1927 <= trunc_ln39_fu_1289_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln40_reg_1932_pp0_iter2_reg <= icmp_ln40_reg_1932;
        tmp_1_reg_1936 <= tmp_1_fu_1315_p131;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (icmp_ln40_reg_1932_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0) & (icmp_ln40_reg_1932_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        C_out_blk_n = C_out_full_n;
    end else begin
        C_out_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((icmp_ln40_reg_1932_pp0_iter2_reg == 1'd1)) begin
            C_out_din_local = 32'd0;
        end else if ((icmp_ln40_reg_1932_pp0_iter2_reg == 1'd0)) begin
            C_out_din_local = bitcast_ln41_fu_1578_p1;
        end else begin
            C_out_din_local = 'bx;
        end
    end else begin
        C_out_din_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_reg_1932_pp0_iter2_reg == 1'd1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln40_reg_1932_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        C_out_write_local = 1'b1;
    end else begin
        C_out_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_1170_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten540_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten540_load = indvar_flatten540_fu_308;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_10_ce0_local = 1'b1;
    end else begin
        buff_C_out_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_11_ce0_local = 1'b1;
    end else begin
        buff_C_out_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_12_ce0_local = 1'b1;
    end else begin
        buff_C_out_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_13_ce0_local = 1'b1;
    end else begin
        buff_C_out_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_14_ce0_local = 1'b1;
    end else begin
        buff_C_out_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_15_ce0_local = 1'b1;
    end else begin
        buff_C_out_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_16_ce0_local = 1'b1;
    end else begin
        buff_C_out_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_17_ce0_local = 1'b1;
    end else begin
        buff_C_out_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_18_ce0_local = 1'b1;
    end else begin
        buff_C_out_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_19_ce0_local = 1'b1;
    end else begin
        buff_C_out_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_20_ce0_local = 1'b1;
    end else begin
        buff_C_out_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_21_ce0_local = 1'b1;
    end else begin
        buff_C_out_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_22_ce0_local = 1'b1;
    end else begin
        buff_C_out_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_23_ce0_local = 1'b1;
    end else begin
        buff_C_out_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_24_ce0_local = 1'b1;
    end else begin
        buff_C_out_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_25_ce0_local = 1'b1;
    end else begin
        buff_C_out_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_26_ce0_local = 1'b1;
    end else begin
        buff_C_out_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_27_ce0_local = 1'b1;
    end else begin
        buff_C_out_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_28_ce0_local = 1'b1;
    end else begin
        buff_C_out_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_29_ce0_local = 1'b1;
    end else begin
        buff_C_out_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_30_ce0_local = 1'b1;
    end else begin
        buff_C_out_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_31_ce0_local = 1'b1;
    end else begin
        buff_C_out_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_32_ce0_local = 1'b1;
    end else begin
        buff_C_out_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_33_ce0_local = 1'b1;
    end else begin
        buff_C_out_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_34_ce0_local = 1'b1;
    end else begin
        buff_C_out_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_35_ce0_local = 1'b1;
    end else begin
        buff_C_out_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_36_ce0_local = 1'b1;
    end else begin
        buff_C_out_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_37_ce0_local = 1'b1;
    end else begin
        buff_C_out_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_38_ce0_local = 1'b1;
    end else begin
        buff_C_out_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_39_ce0_local = 1'b1;
    end else begin
        buff_C_out_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_40_ce0_local = 1'b1;
    end else begin
        buff_C_out_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_41_ce0_local = 1'b1;
    end else begin
        buff_C_out_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_42_ce0_local = 1'b1;
    end else begin
        buff_C_out_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_43_ce0_local = 1'b1;
    end else begin
        buff_C_out_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_44_ce0_local = 1'b1;
    end else begin
        buff_C_out_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_45_ce0_local = 1'b1;
    end else begin
        buff_C_out_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_46_ce0_local = 1'b1;
    end else begin
        buff_C_out_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_47_ce0_local = 1'b1;
    end else begin
        buff_C_out_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_48_ce0_local = 1'b1;
    end else begin
        buff_C_out_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_49_ce0_local = 1'b1;
    end else begin
        buff_C_out_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_4_ce0_local = 1'b1;
    end else begin
        buff_C_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_50_ce0_local = 1'b1;
    end else begin
        buff_C_out_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_51_ce0_local = 1'b1;
    end else begin
        buff_C_out_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_52_ce0_local = 1'b1;
    end else begin
        buff_C_out_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_53_ce0_local = 1'b1;
    end else begin
        buff_C_out_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_54_ce0_local = 1'b1;
    end else begin
        buff_C_out_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_55_ce0_local = 1'b1;
    end else begin
        buff_C_out_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_56_ce0_local = 1'b1;
    end else begin
        buff_C_out_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_57_ce0_local = 1'b1;
    end else begin
        buff_C_out_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_58_ce0_local = 1'b1;
    end else begin
        buff_C_out_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_59_ce0_local = 1'b1;
    end else begin
        buff_C_out_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_5_ce0_local = 1'b1;
    end else begin
        buff_C_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_60_ce0_local = 1'b1;
    end else begin
        buff_C_out_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_61_ce0_local = 1'b1;
    end else begin
        buff_C_out_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_62_ce0_local = 1'b1;
    end else begin
        buff_C_out_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_63_ce0_local = 1'b1;
    end else begin
        buff_C_out_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_6_ce0_local = 1'b1;
    end else begin
        buff_C_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_7_ce0_local = 1'b1;
    end else begin
        buff_C_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_8_ce0_local = 1'b1;
    end else begin
        buff_C_out_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_9_ce0_local = 1'b1;
    end else begin
        buff_C_out_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
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
assign C_out_din = C_out_din_local;
assign C_out_write = C_out_write_local;
assign add_ln38_1_fu_1176_p2 = (ap_sig_allocacmp_indvar_flatten540_load + 13'd1);
assign add_ln38_fu_1193_p2 = (i_fu_304 + 7'd1);
assign add_ln39_fu_1299_p2 = (select_ln5_fu_1205_p3 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = (((icmp_ln40_reg_1932_pp0_iter2_reg == 1'd1) & (1'b0 == C_out_full_n)) | ((icmp_ln40_reg_1932_pp0_iter2_reg == 1'd0) & (1'b0 == C_out_full_n)));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln41_fu_1578_p1 = tmp_1_reg_1936;
assign buff_C_out_10_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_10_ce0 = buff_C_out_10_ce0_local;
assign buff_C_out_11_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_11_ce0 = buff_C_out_11_ce0_local;
assign buff_C_out_12_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_12_ce0 = buff_C_out_12_ce0_local;
assign buff_C_out_13_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_13_ce0 = buff_C_out_13_ce0_local;
assign buff_C_out_14_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_14_ce0 = buff_C_out_14_ce0_local;
assign buff_C_out_15_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_15_ce0 = buff_C_out_15_ce0_local;
assign buff_C_out_16_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_16_ce0 = buff_C_out_16_ce0_local;
assign buff_C_out_17_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_17_ce0 = buff_C_out_17_ce0_local;
assign buff_C_out_18_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_18_ce0 = buff_C_out_18_ce0_local;
assign buff_C_out_19_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_19_ce0 = buff_C_out_19_ce0_local;
assign buff_C_out_1_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_20_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_20_ce0 = buff_C_out_20_ce0_local;
assign buff_C_out_21_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_21_ce0 = buff_C_out_21_ce0_local;
assign buff_C_out_22_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_22_ce0 = buff_C_out_22_ce0_local;
assign buff_C_out_23_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_23_ce0 = buff_C_out_23_ce0_local;
assign buff_C_out_24_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_24_ce0 = buff_C_out_24_ce0_local;
assign buff_C_out_25_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_25_ce0 = buff_C_out_25_ce0_local;
assign buff_C_out_26_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_26_ce0 = buff_C_out_26_ce0_local;
assign buff_C_out_27_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_27_ce0 = buff_C_out_27_ce0_local;
assign buff_C_out_28_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_28_ce0 = buff_C_out_28_ce0_local;
assign buff_C_out_29_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_29_ce0 = buff_C_out_29_ce0_local;
assign buff_C_out_2_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_30_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_30_ce0 = buff_C_out_30_ce0_local;
assign buff_C_out_31_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_31_ce0 = buff_C_out_31_ce0_local;
assign buff_C_out_32_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_32_ce0 = buff_C_out_32_ce0_local;
assign buff_C_out_33_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_33_ce0 = buff_C_out_33_ce0_local;
assign buff_C_out_34_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_34_ce0 = buff_C_out_34_ce0_local;
assign buff_C_out_35_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_35_ce0 = buff_C_out_35_ce0_local;
assign buff_C_out_36_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_36_ce0 = buff_C_out_36_ce0_local;
assign buff_C_out_37_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_37_ce0 = buff_C_out_37_ce0_local;
assign buff_C_out_38_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_38_ce0 = buff_C_out_38_ce0_local;
assign buff_C_out_39_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_39_ce0 = buff_C_out_39_ce0_local;
assign buff_C_out_3_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_40_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_40_ce0 = buff_C_out_40_ce0_local;
assign buff_C_out_41_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_41_ce0 = buff_C_out_41_ce0_local;
assign buff_C_out_42_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_42_ce0 = buff_C_out_42_ce0_local;
assign buff_C_out_43_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_43_ce0 = buff_C_out_43_ce0_local;
assign buff_C_out_44_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_44_ce0 = buff_C_out_44_ce0_local;
assign buff_C_out_45_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_45_ce0 = buff_C_out_45_ce0_local;
assign buff_C_out_46_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_46_ce0 = buff_C_out_46_ce0_local;
assign buff_C_out_47_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_47_ce0 = buff_C_out_47_ce0_local;
assign buff_C_out_48_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_48_ce0 = buff_C_out_48_ce0_local;
assign buff_C_out_49_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_49_ce0 = buff_C_out_49_ce0_local;
assign buff_C_out_4_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_50_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_50_ce0 = buff_C_out_50_ce0_local;
assign buff_C_out_51_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_51_ce0 = buff_C_out_51_ce0_local;
assign buff_C_out_52_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_52_ce0 = buff_C_out_52_ce0_local;
assign buff_C_out_53_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_53_ce0 = buff_C_out_53_ce0_local;
assign buff_C_out_54_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_54_ce0 = buff_C_out_54_ce0_local;
assign buff_C_out_55_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_55_ce0 = buff_C_out_55_ce0_local;
assign buff_C_out_56_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_56_ce0 = buff_C_out_56_ce0_local;
assign buff_C_out_57_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_57_ce0 = buff_C_out_57_ce0_local;
assign buff_C_out_58_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_58_ce0 = buff_C_out_58_ce0_local;
assign buff_C_out_59_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_59_ce0 = buff_C_out_59_ce0_local;
assign buff_C_out_5_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_60_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_60_ce0 = buff_C_out_60_ce0_local;
assign buff_C_out_61_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_61_ce0 = buff_C_out_61_ce0_local;
assign buff_C_out_62_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_62_ce0 = buff_C_out_62_ce0_local;
assign buff_C_out_63_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_63_ce0 = buff_C_out_63_ce0_local;
assign buff_C_out_6_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_7_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_8_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_8_ce0 = buff_C_out_8_ce0_local;
assign buff_C_out_9_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_9_ce0 = buff_C_out_9_ce0_local;
assign buff_C_out_address0 = zext_ln38_fu_1221_p1;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign icmp_ln38_fu_1170_p2 = ((ap_sig_allocacmp_indvar_flatten540_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_1199_p2 = ((j_fu_300 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_1293_p2 = ((select_ln5_fu_1205_p3 > select_ln38_fu_1213_p3) ? 1'b1 : 1'b0);
assign select_ln38_fu_1213_p3 = ((icmp_ln39_fu_1199_p2[0:0] == 1'b1) ? add_ln38_fu_1193_p2 : i_fu_304);
assign select_ln5_fu_1205_p3 = ((icmp_ln39_fu_1199_p2[0:0] == 1'b1) ? 7'd0 : j_fu_300);
assign tmp_1_fu_1315_p129 = 'bx;
assign trunc_ln39_fu_1289_p1 = select_ln5_fu_1205_p3[5:0];
assign zext_ln38_fu_1221_p1 = select_ln38_fu_1213_p3;
endmodule 