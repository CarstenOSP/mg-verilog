module forward_dataflow_in_loop_VITIS_LOOP_6026_1_Loop_VITIS_LOOP_5584_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln5584,v4109_31_address0,v4109_31_ce0,v4109_31_q0,v4109_27_address0,v4109_27_ce0,v4109_27_q0,v4109_23_address0,v4109_23_ce0,v4109_23_q0,v4109_19_address0,v4109_19_ce0,v4109_19_q0,v4109_15_address0,v4109_15_ce0,v4109_15_q0,v4109_11_address0,v4109_11_ce0,v4109_11_q0,v4109_7_address0,v4109_7_ce0,v4109_7_q0,v4109_3_address0,v4109_3_ce0,v4109_3_q0,v4109_30_address0,v4109_30_ce0,v4109_30_q0,v4109_26_address0,v4109_26_ce0,v4109_26_q0,v4109_22_address0,v4109_22_ce0,v4109_22_q0,v4109_18_address0,v4109_18_ce0,v4109_18_q0,v4109_14_address0,v4109_14_ce0,v4109_14_q0,v4109_10_address0,v4109_10_ce0,v4109_10_q0,v4109_6_address0,v4109_6_ce0,v4109_6_q0,v4109_2_address0,v4109_2_ce0,v4109_2_q0,v4109_29_address0,v4109_29_ce0,v4109_29_q0,v4109_25_address0,v4109_25_ce0,v4109_25_q0,v4109_21_address0,v4109_21_ce0,v4109_21_q0,v4109_17_address0,v4109_17_ce0,v4109_17_q0,v4109_13_address0,v4109_13_ce0,v4109_13_q0,v4109_9_address0,v4109_9_ce0,v4109_9_q0,v4109_5_address0,v4109_5_ce0,v4109_5_q0,v4109_1_address0,v4109_1_ce0,v4109_1_q0,v4109_28_address0,v4109_28_ce0,v4109_28_q0,v4109_24_address0,v4109_24_ce0,v4109_24_q0,v4109_20_address0,v4109_20_ce0,v4109_20_q0,v4109_16_address0,v4109_16_ce0,v4109_16_q0,v4109_12_address0,v4109_12_ce0,v4109_12_q0,v4109_8_address0,v4109_8_ce0,v4109_8_q0,v4109_4_address0,v4109_4_ce0,v4109_4_q0,v4109_address0,v4109_ce0,v4109_q0,mul_ln5590,v4111_address0,v4111_ce0,v4111_we0,v4111_d0,v4111_address1,v4111_ce1,v4111_q1,v4111_1_address0,v4111_1_ce0,v4111_1_we0,v4111_1_d0,v4111_1_address1,v4111_1_ce1,v4111_1_q1,v4111_2_address0,v4111_2_ce0,v4111_2_we0,v4111_2_d0,v4111_2_address1,v4111_2_ce1,v4111_2_q1,v4111_3_address0,v4111_3_ce0,v4111_3_we0,v4111_3_d0,v4111_3_address1,v4111_3_ce1,v4111_3_q1,v4111_4_address0,v4111_4_ce0,v4111_4_we0,v4111_4_d0,v4111_4_address1,v4111_4_ce1,v4111_4_q1,v4111_5_address0,v4111_5_ce0,v4111_5_we0,v4111_5_d0,v4111_5_address1,v4111_5_ce1,v4111_5_q1,v4111_6_address0,v4111_6_ce0,v4111_6_we0,v4111_6_d0,v4111_6_address1,v4111_6_ce1,v4111_6_q1,v4111_7_address0,v4111_7_ce0,v4111_7_we0,v4111_7_d0,v4111_7_address1,v4111_7_ce1,v4111_7_q1,v4110_3_address0,v4110_3_ce0,v4110_3_q0,v4108_7_address0,v4108_7_ce0,v4108_7_q0,v4108_6_address0,v4108_6_ce0,v4108_6_q0,v4108_5_address0,v4108_5_ce0,v4108_5_q0,v4108_4_address0,v4108_4_ce0,v4108_4_q0,v4108_3_address0,v4108_3_ce0,v4108_3_q0,v4108_2_address0,v4108_2_ce0,v4108_2_q0,v4108_1_address0,v4108_1_ce0,v4108_1_q0,v4108_address0,v4108_ce0,v4108_q0,v4110_2_address0,v4110_2_ce0,v4110_2_q0,v4110_1_address0,v4110_1_ce0,v4110_1_q0,v4110_address0,v4110_ce0,v4110_q0,cmp33_i); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [2:0] zext_ln5584;
output  [4:0] v4109_31_address0;
output   v4109_31_ce0;
input  [7:0] v4109_31_q0;
output  [4:0] v4109_27_address0;
output   v4109_27_ce0;
input  [7:0] v4109_27_q0;
output  [4:0] v4109_23_address0;
output   v4109_23_ce0;
input  [7:0] v4109_23_q0;
output  [4:0] v4109_19_address0;
output   v4109_19_ce0;
input  [7:0] v4109_19_q0;
output  [4:0] v4109_15_address0;
output   v4109_15_ce0;
input  [7:0] v4109_15_q0;
output  [4:0] v4109_11_address0;
output   v4109_11_ce0;
input  [7:0] v4109_11_q0;
output  [4:0] v4109_7_address0;
output   v4109_7_ce0;
input  [7:0] v4109_7_q0;
output  [4:0] v4109_3_address0;
output   v4109_3_ce0;
input  [7:0] v4109_3_q0;
output  [4:0] v4109_30_address0;
output   v4109_30_ce0;
input  [7:0] v4109_30_q0;
output  [4:0] v4109_26_address0;
output   v4109_26_ce0;
input  [7:0] v4109_26_q0;
output  [4:0] v4109_22_address0;
output   v4109_22_ce0;
input  [7:0] v4109_22_q0;
output  [4:0] v4109_18_address0;
output   v4109_18_ce0;
input  [7:0] v4109_18_q0;
output  [4:0] v4109_14_address0;
output   v4109_14_ce0;
input  [7:0] v4109_14_q0;
output  [4:0] v4109_10_address0;
output   v4109_10_ce0;
input  [7:0] v4109_10_q0;
output  [4:0] v4109_6_address0;
output   v4109_6_ce0;
input  [7:0] v4109_6_q0;
output  [4:0] v4109_2_address0;
output   v4109_2_ce0;
input  [7:0] v4109_2_q0;
output  [4:0] v4109_29_address0;
output   v4109_29_ce0;
input  [7:0] v4109_29_q0;
output  [4:0] v4109_25_address0;
output   v4109_25_ce0;
input  [7:0] v4109_25_q0;
output  [4:0] v4109_21_address0;
output   v4109_21_ce0;
input  [7:0] v4109_21_q0;
output  [4:0] v4109_17_address0;
output   v4109_17_ce0;
input  [7:0] v4109_17_q0;
output  [4:0] v4109_13_address0;
output   v4109_13_ce0;
input  [7:0] v4109_13_q0;
output  [4:0] v4109_9_address0;
output   v4109_9_ce0;
input  [7:0] v4109_9_q0;
output  [4:0] v4109_5_address0;
output   v4109_5_ce0;
input  [7:0] v4109_5_q0;
output  [4:0] v4109_1_address0;
output   v4109_1_ce0;
input  [7:0] v4109_1_q0;
output  [4:0] v4109_28_address0;
output   v4109_28_ce0;
input  [7:0] v4109_28_q0;
output  [4:0] v4109_24_address0;
output   v4109_24_ce0;
input  [7:0] v4109_24_q0;
output  [4:0] v4109_20_address0;
output   v4109_20_ce0;
input  [7:0] v4109_20_q0;
output  [4:0] v4109_16_address0;
output   v4109_16_ce0;
input  [7:0] v4109_16_q0;
output  [4:0] v4109_12_address0;
output   v4109_12_ce0;
input  [7:0] v4109_12_q0;
output  [4:0] v4109_8_address0;
output   v4109_8_ce0;
input  [7:0] v4109_8_q0;
output  [4:0] v4109_4_address0;
output   v4109_4_ce0;
input  [7:0] v4109_4_q0;
output  [4:0] v4109_address0;
output   v4109_ce0;
input  [7:0] v4109_q0;
input  [5:0] mul_ln5590;
output  [7:0] v4111_address0;
output   v4111_ce0;
output   v4111_we0;
output  [7:0] v4111_d0;
output  [7:0] v4111_address1;
output   v4111_ce1;
input  [7:0] v4111_q1;
output  [7:0] v4111_1_address0;
output   v4111_1_ce0;
output   v4111_1_we0;
output  [7:0] v4111_1_d0;
output  [7:0] v4111_1_address1;
output   v4111_1_ce1;
input  [7:0] v4111_1_q1;
output  [7:0] v4111_2_address0;
output   v4111_2_ce0;
output   v4111_2_we0;
output  [7:0] v4111_2_d0;
output  [7:0] v4111_2_address1;
output   v4111_2_ce1;
input  [7:0] v4111_2_q1;
output  [7:0] v4111_3_address0;
output   v4111_3_ce0;
output   v4111_3_we0;
output  [7:0] v4111_3_d0;
output  [7:0] v4111_3_address1;
output   v4111_3_ce1;
input  [7:0] v4111_3_q1;
output  [7:0] v4111_4_address0;
output   v4111_4_ce0;
output   v4111_4_we0;
output  [7:0] v4111_4_d0;
output  [7:0] v4111_4_address1;
output   v4111_4_ce1;
input  [7:0] v4111_4_q1;
output  [7:0] v4111_5_address0;
output   v4111_5_ce0;
output   v4111_5_we0;
output  [7:0] v4111_5_d0;
output  [7:0] v4111_5_address1;
output   v4111_5_ce1;
input  [7:0] v4111_5_q1;
output  [7:0] v4111_6_address0;
output   v4111_6_ce0;
output   v4111_6_we0;
output  [7:0] v4111_6_d0;
output  [7:0] v4111_6_address1;
output   v4111_6_ce1;
input  [7:0] v4111_6_q1;
output  [7:0] v4111_7_address0;
output   v4111_7_ce0;
output   v4111_7_we0;
output  [7:0] v4111_7_d0;
output  [7:0] v4111_7_address1;
output   v4111_7_ce1;
input  [7:0] v4111_7_q1;
output  [8:0] v4110_3_address0;
output   v4110_3_ce0;
input  [7:0] v4110_3_q0;
output  [7:0] v4108_7_address0;
output   v4108_7_ce0;
input  [7:0] v4108_7_q0;
output  [7:0] v4108_6_address0;
output   v4108_6_ce0;
input  [7:0] v4108_6_q0;
output  [7:0] v4108_5_address0;
output   v4108_5_ce0;
input  [7:0] v4108_5_q0;
output  [7:0] v4108_4_address0;
output   v4108_4_ce0;
input  [7:0] v4108_4_q0;
output  [7:0] v4108_3_address0;
output   v4108_3_ce0;
input  [7:0] v4108_3_q0;
output  [7:0] v4108_2_address0;
output   v4108_2_ce0;
input  [7:0] v4108_2_q0;
output  [7:0] v4108_1_address0;
output   v4108_1_ce0;
input  [7:0] v4108_1_q0;
output  [7:0] v4108_address0;
output   v4108_ce0;
input  [7:0] v4108_q0;
output  [8:0] v4110_2_address0;
output   v4110_2_ce0;
input  [7:0] v4110_2_q0;
output  [8:0] v4110_1_address0;
output   v4110_1_ce0;
input  [7:0] v4110_1_q0;
output  [8:0] v4110_address0;
output   v4110_ce0;
input  [7:0] v4110_q0;
input  [0:0] cmp33_i;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln5586_fu_950_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln5587_fu_971_p2;
reg   [0:0] icmp_ln5587_reg_1636;
wire   [2:0] v3777_mid2_fu_1015_p3;
reg   [2:0] v3777_mid2_reg_1641;
reg   [2:0] v3777_mid2_reg_1641_pp0_iter1_reg;
reg   [2:0] v3777_mid2_reg_1641_pp0_iter2_reg;
reg   [2:0] v3777_mid2_reg_1641_pp0_iter3_reg;
wire   [2:0] select_ln5587_fu_1023_p3;
reg   [2:0] select_ln5587_reg_1647;
reg   [2:0] select_ln5587_reg_1647_pp0_iter1_reg;
reg   [2:0] select_ln5587_reg_1647_pp0_iter2_reg;
wire   [1:0] lshr_ln_fu_1087_p4;
reg   [1:0] lshr_ln_reg_1653;
reg   [1:0] lshr_ln_reg_1653_pp0_iter2_reg;
wire   [63:0] p_cast_fu_1104_p1;
reg   [63:0] p_cast_reg_1659;
wire   [63:0] zext_ln5590_1_fu_1151_p1;
reg   [63:0] zext_ln5590_1_reg_1727;
wire   [4:0] add_ln5656_fu_1180_p2;
reg   [4:0] add_ln5656_reg_2006;
wire   [7:0] mul_ln5787_2_fu_1186_p2;
reg   [7:0] mul_ln5787_2_reg_2036;
wire   [7:0] mul_ln5795_2_fu_1192_p2;
reg   [7:0] mul_ln5795_2_reg_2041;
wire   [7:0] mul_ln5803_2_fu_1198_p2;
reg   [7:0] mul_ln5803_2_reg_2046;
wire   [7:0] mul_ln5811_2_fu_1204_p2;
reg   [7:0] mul_ln5811_2_reg_2051;
wire   [7:0] mul_ln5819_2_fu_1210_p2;
reg   [7:0] mul_ln5819_2_reg_2056;
wire   [7:0] mul_ln5827_2_fu_1216_p2;
reg   [7:0] mul_ln5827_2_reg_2061;
wire   [7:0] mul_ln5835_2_fu_1222_p2;
reg   [7:0] mul_ln5835_2_reg_2066;
wire   [7:0] mul_ln5843_2_fu_1228_p2;
reg   [7:0] mul_ln5843_2_reg_2071;
reg   [7:0] v4111_addr_reg_2076;
reg   [7:0] v4111_addr_reg_2076_pp0_iter5_reg;
reg   [7:0] v4111_1_addr_reg_2082;
reg   [7:0] v4111_1_addr_reg_2082_pp0_iter5_reg;
reg   [7:0] v4111_2_addr_reg_2088;
reg   [7:0] v4111_2_addr_reg_2088_pp0_iter5_reg;
reg   [7:0] v4111_3_addr_reg_2094;
reg   [7:0] v4111_3_addr_reg_2094_pp0_iter5_reg;
reg   [7:0] v4111_4_addr_reg_2100;
reg   [7:0] v4111_4_addr_reg_2100_pp0_iter5_reg;
reg   [7:0] v4111_5_addr_reg_2106;
reg   [7:0] v4111_5_addr_reg_2106_pp0_iter5_reg;
reg   [7:0] v4111_6_addr_reg_2112;
reg   [7:0] v4111_6_addr_reg_2112_pp0_iter5_reg;
reg   [7:0] v4111_7_addr_reg_2118;
reg   [7:0] v4111_7_addr_reg_2118_pp0_iter5_reg;
wire   [7:0] grp_fu_1375_p3;
wire   [7:0] grp_fu_1382_p3;
wire   [7:0] grp_fu_1389_p3;
wire   [7:0] grp_fu_1396_p3;
wire   [7:0] grp_fu_1403_p3;
wire   [7:0] grp_fu_1410_p3;
wire   [7:0] grp_fu_1417_p3;
wire   [7:0] grp_fu_1424_p3;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5656_6_fu_1259_p1;
reg   [2:0] v3777_fu_176;
wire   [2:0] add_ln5588_fu_1031_p2;
wire    ap_loop_init;
reg   [2:0] ap_sig_allocacmp_v3777_load;
reg   [2:0] v3776_fu_180;
reg   [2:0] ap_sig_allocacmp_v3776_load;
reg   [5:0] indvar_flatten_fu_184;
wire   [5:0] select_ln5587_1_fu_1043_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten_load;
reg   [5:0] v3775_fu_188;
wire   [5:0] select_ln5586_1_fu_1080_p3;
reg   [7:0] indvar_flatten12_fu_192;
wire   [7:0] add_ln5586_1_fu_956_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten12_load;
reg    v4109_28_ce0_local;
reg    v4109_24_ce0_local;
reg    v4109_20_ce0_local;
reg    v4109_16_ce0_local;
reg    v4109_12_ce0_local;
reg    v4109_8_ce0_local;
reg    v4109_4_ce0_local;
reg    v4109_ce0_local;
reg    v4110_ce0_local;
reg    v4109_31_ce0_local;
reg    v4109_27_ce0_local;
reg    v4109_23_ce0_local;
reg    v4109_19_ce0_local;
reg    v4109_15_ce0_local;
reg    v4109_11_ce0_local;
reg    v4109_7_ce0_local;
reg    v4109_3_ce0_local;
reg    v4109_30_ce0_local;
reg    v4109_26_ce0_local;
reg    v4109_22_ce0_local;
reg    v4109_18_ce0_local;
reg    v4109_14_ce0_local;
reg    v4109_10_ce0_local;
reg    v4109_6_ce0_local;
reg    v4109_2_ce0_local;
reg    v4109_29_ce0_local;
reg    v4109_25_ce0_local;
reg    v4109_21_ce0_local;
reg    v4109_17_ce0_local;
reg    v4109_13_ce0_local;
reg    v4109_9_ce0_local;
reg    v4109_5_ce0_local;
reg    v4109_1_ce0_local;
reg    v4110_3_ce0_local;
reg    v4110_2_ce0_local;
reg    v4110_1_ce0_local;
reg    v4108_7_ce0_local;
reg    v4111_7_ce1_local;
reg    v4111_7_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v3975_fu_1335_p2;
reg    v4111_7_ce0_local;
reg    v4108_6_ce0_local;
reg    v4111_6_ce1_local;
reg    v4111_6_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v3982_fu_1340_p2;
reg    v4111_6_ce0_local;
reg    v4108_5_ce0_local;
reg    v4111_5_ce1_local;
reg    v4111_5_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v3989_fu_1345_p2;
reg    v4111_5_ce0_local;
reg    v4108_4_ce0_local;
reg    v4111_4_ce1_local;
reg    v4111_4_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v3996_fu_1350_p2;
reg    v4111_4_ce0_local;
reg    v4108_3_ce0_local;
reg    v4111_3_ce1_local;
reg    v4111_3_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4003_fu_1355_p2;
reg    v4111_3_ce0_local;
reg    v4108_2_ce0_local;
reg    v4111_2_ce1_local;
reg    v4111_2_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4010_fu_1360_p2;
reg    v4111_2_ce0_local;
reg    v4108_1_ce0_local;
reg    v4111_1_ce1_local;
reg    v4111_1_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4017_fu_1365_p2;
reg    v4111_1_ce0_local;
reg    v4108_ce0_local;
reg    v4111_ce1_local;
reg    v4111_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v4024_fu_1370_p2;
reg    v4111_ce0_local;
wire   [0:0] icmp_ln5588_fu_991_p2;
wire   [0:0] xor_ln5586_fu_985_p2;
wire   [2:0] select_ln5586_fu_977_p3;
wire   [0:0] and_ln5586_fu_997_p2;
wire   [0:0] empty_fu_1009_p2;
wire   [2:0] add_ln5587_fu_1003_p2;
wire   [5:0] add_ln5587_1_fu_1037_p2;
wire   [5:0] add_ln5586_fu_1074_p2;
wire   [4:0] tmp_fu_1097_p3;
wire   [5:0] zext_ln5656_1_fu_1116_p1;
wire   [5:0] add_ln5590_fu_1119_p2;
wire   [8:0] p_shl_fu_1128_p3;
wire   [8:0] zext_ln5590_fu_1124_p1;
wire   [8:0] sub_ln5590_fu_1136_p2;
wire   [8:0] zext_ln5656_4_fu_1142_p1;
wire   [8:0] add_ln5590_1_fu_1145_p2;
wire   [4:0] p_shl18_fu_1164_p3;
wire   [4:0] zext_ln5656_fu_1161_p1;
wire   [4:0] sub_ln5656_fu_1171_p2;
wire   [4:0] zext_ln5656_2_fu_1177_p1;
wire   [7:0] p_shl17_fu_1237_p3;
wire   [7:0] zext_ln5656_3_fu_1234_p1;
wire   [7:0] sub_ln5656_1_fu_1244_p2;
wire   [7:0] zext_ln5656_5_fu_1250_p1;
wire   [7:0] add_ln5656_1_fu_1253_p2;
wire  signed [7:0] v3975_fu_1335_p0;
wire   [7:0] grp_fu_1431_p3;
wire  signed [7:0] v3975_fu_1335_p1;
wire   [7:0] grp_fu_1440_p3;
wire  signed [7:0] v3982_fu_1340_p0;
wire   [7:0] grp_fu_1449_p3;
wire  signed [7:0] v3982_fu_1340_p1;
wire   [7:0] grp_fu_1458_p3;
wire  signed [7:0] v3989_fu_1345_p0;
wire   [7:0] grp_fu_1467_p3;
wire  signed [7:0] v3989_fu_1345_p1;
wire   [7:0] grp_fu_1476_p3;
wire  signed [7:0] v3996_fu_1350_p0;
wire   [7:0] grp_fu_1485_p3;
wire  signed [7:0] v3996_fu_1350_p1;
wire   [7:0] grp_fu_1494_p3;
wire  signed [7:0] v4003_fu_1355_p0;
wire   [7:0] grp_fu_1503_p3;
wire  signed [7:0] v4003_fu_1355_p1;
wire   [7:0] grp_fu_1512_p3;
wire  signed [7:0] v4010_fu_1360_p0;
wire   [7:0] grp_fu_1521_p3;
wire  signed [7:0] v4010_fu_1360_p1;
wire   [7:0] grp_fu_1530_p3;
wire  signed [7:0] v4017_fu_1365_p0;
wire   [7:0] grp_fu_1539_p3;
wire  signed [7:0] v4017_fu_1365_p1;
wire   [7:0] grp_fu_1548_p3;
wire  signed [7:0] v4024_fu_1370_p0;
wire   [7:0] grp_fu_1557_p3;
wire  signed [7:0] v4024_fu_1370_p1;
wire   [7:0] grp_fu_1566_p3;
wire   [7:0] grp_fu_1440_p2;
wire   [7:0] grp_fu_1458_p2;
wire   [7:0] grp_fu_1476_p2;
wire   [7:0] grp_fu_1494_p2;
wire   [7:0] grp_fu_1512_p2;
wire   [7:0] grp_fu_1530_p2;
wire   [7:0] grp_fu_1548_p2;
wire   [7:0] grp_fu_1566_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 v3777_fu_176 = 3'd0;
#0 v3776_fu_180 = 3'd0;
#0 indvar_flatten_fu_184 = 6'd0;
#0 v3775_fu_188 = 6'd0;
#0 indvar_flatten12_fu_192 = 8'd0;
#0 ap_done_reg = 1'b0;
end
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7833(.din0(v4110_1_q0),.din1(v4109_29_q0),.dout(mul_ln5787_2_fu_1186_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7834(.din0(v4110_1_q0),.din1(v4109_25_q0),.dout(mul_ln5795_2_fu_1192_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7835(.din0(v4110_1_q0),.din1(v4109_21_q0),.dout(mul_ln5803_2_fu_1198_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7836(.din0(v4110_1_q0),.din1(v4109_17_q0),.dout(mul_ln5811_2_fu_1204_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7837(.din0(v4110_1_q0),.din1(v4109_13_q0),.dout(mul_ln5819_2_fu_1210_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7838(.din0(v4110_1_q0),.din1(v4109_9_q0),.dout(mul_ln5827_2_fu_1216_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7839(.din0(v4110_1_q0),.din1(v4109_5_q0),.dout(mul_ln5835_2_fu_1222_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7840(.din0(v4110_1_q0),.din1(v4109_1_q0),.dout(mul_ln5843_2_fu_1228_p2));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7841(.clk(ap_clk),.reset(ap_rst),.din0(v4110_q0),.din1(v4109_28_q0),.din2(mul_ln5787_2_reg_2036),.ce(1'b1),.dout(grp_fu_1375_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7842(.clk(ap_clk),.reset(ap_rst),.din0(v4110_q0),.din1(v4109_24_q0),.din2(mul_ln5795_2_reg_2041),.ce(1'b1),.dout(grp_fu_1382_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7843(.clk(ap_clk),.reset(ap_rst),.din0(v4110_q0),.din1(v4109_20_q0),.din2(mul_ln5803_2_reg_2046),.ce(1'b1),.dout(grp_fu_1389_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7844(.clk(ap_clk),.reset(ap_rst),.din0(v4110_q0),.din1(v4109_16_q0),.din2(mul_ln5811_2_reg_2051),.ce(1'b1),.dout(grp_fu_1396_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7845(.clk(ap_clk),.reset(ap_rst),.din0(v4110_q0),.din1(v4109_12_q0),.din2(mul_ln5819_2_reg_2056),.ce(1'b1),.dout(grp_fu_1403_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7846(.clk(ap_clk),.reset(ap_rst),.din0(v4110_q0),.din1(v4109_8_q0),.din2(mul_ln5827_2_reg_2061),.ce(1'b1),.dout(grp_fu_1410_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7847(.clk(ap_clk),.reset(ap_rst),.din0(v4110_q0),.din1(v4109_4_q0),.din2(mul_ln5835_2_reg_2066),.ce(1'b1),.dout(grp_fu_1417_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7848(.clk(ap_clk),.reset(ap_rst),.din0(v4110_q0),.din1(v4109_q0),.din2(mul_ln5843_2_reg_2071),.ce(1'b1),.dout(grp_fu_1424_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7849(.clk(ap_clk),.reset(ap_rst),.din0(v4110_2_q0),.din1(v4109_30_q0),.din2(grp_fu_1375_p3),.ce(1'b1),.dout(grp_fu_1431_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7850(.clk(ap_clk),.reset(ap_rst),.din0(v4110_3_q0),.din1(v4109_31_q0),.din2(grp_fu_1440_p2),.ce(1'b1),.dout(grp_fu_1440_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7851(.clk(ap_clk),.reset(ap_rst),.din0(v4110_2_q0),.din1(v4109_26_q0),.din2(grp_fu_1382_p3),.ce(1'b1),.dout(grp_fu_1449_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7852(.clk(ap_clk),.reset(ap_rst),.din0(v4110_3_q0),.din1(v4109_27_q0),.din2(grp_fu_1458_p2),.ce(1'b1),.dout(grp_fu_1458_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7853(.clk(ap_clk),.reset(ap_rst),.din0(v4110_2_q0),.din1(v4109_22_q0),.din2(grp_fu_1389_p3),.ce(1'b1),.dout(grp_fu_1467_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7854(.clk(ap_clk),.reset(ap_rst),.din0(v4110_3_q0),.din1(v4109_23_q0),.din2(grp_fu_1476_p2),.ce(1'b1),.dout(grp_fu_1476_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7855(.clk(ap_clk),.reset(ap_rst),.din0(v4110_2_q0),.din1(v4109_18_q0),.din2(grp_fu_1396_p3),.ce(1'b1),.dout(grp_fu_1485_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7856(.clk(ap_clk),.reset(ap_rst),.din0(v4110_3_q0),.din1(v4109_19_q0),.din2(grp_fu_1494_p2),.ce(1'b1),.dout(grp_fu_1494_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7857(.clk(ap_clk),.reset(ap_rst),.din0(v4110_2_q0),.din1(v4109_14_q0),.din2(grp_fu_1403_p3),.ce(1'b1),.dout(grp_fu_1503_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7858(.clk(ap_clk),.reset(ap_rst),.din0(v4110_3_q0),.din1(v4109_15_q0),.din2(grp_fu_1512_p2),.ce(1'b1),.dout(grp_fu_1512_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7859(.clk(ap_clk),.reset(ap_rst),.din0(v4110_2_q0),.din1(v4109_10_q0),.din2(grp_fu_1410_p3),.ce(1'b1),.dout(grp_fu_1521_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7860(.clk(ap_clk),.reset(ap_rst),.din0(v4110_3_q0),.din1(v4109_11_q0),.din2(grp_fu_1530_p2),.ce(1'b1),.dout(grp_fu_1530_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7861(.clk(ap_clk),.reset(ap_rst),.din0(v4110_2_q0),.din1(v4109_6_q0),.din2(grp_fu_1417_p3),.ce(1'b1),.dout(grp_fu_1539_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7862(.clk(ap_clk),.reset(ap_rst),.din0(v4110_3_q0),.din1(v4109_7_q0),.din2(grp_fu_1548_p2),.ce(1'b1),.dout(grp_fu_1548_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7863(.clk(ap_clk),.reset(ap_rst),.din0(v4110_2_q0),.din1(v4109_2_q0),.din2(grp_fu_1424_p3),.ce(1'b1),.dout(grp_fu_1557_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7864(.clk(ap_clk),.reset(ap_rst),.din0(v4110_3_q0),.din1(v4109_3_q0),.din2(grp_fu_1566_p2),.ce(1'b1),.dout(grp_fu_1566_p3));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln5586_fu_950_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten12_fu_192 <= add_ln5586_1_fu_956_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12_fu_192 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln5586_fu_950_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_184 <= select_ln5587_1_fu_1043_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_184 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v3775_fu_188 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v3775_fu_188 <= select_ln5586_1_fu_1080_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln5586_fu_950_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v3776_fu_180 <= select_ln5587_fu_1023_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v3776_fu_180 <= 3'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln5586_fu_950_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v3777_fu_176 <= add_ln5588_fu_1031_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v3777_fu_176 <= 3'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln5656_reg_2006 <= add_ln5656_fu_1180_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        lshr_ln_reg_1653_pp0_iter2_reg <= lshr_ln_reg_1653;
        mul_ln5787_2_reg_2036 <= mul_ln5787_2_fu_1186_p2;
        mul_ln5795_2_reg_2041 <= mul_ln5795_2_fu_1192_p2;
        mul_ln5803_2_reg_2046 <= mul_ln5803_2_fu_1198_p2;
        mul_ln5811_2_reg_2051 <= mul_ln5811_2_fu_1204_p2;
        mul_ln5819_2_reg_2056 <= mul_ln5819_2_fu_1210_p2;
        mul_ln5827_2_reg_2061 <= mul_ln5827_2_fu_1216_p2;
        mul_ln5835_2_reg_2066 <= mul_ln5835_2_fu_1222_p2;
        mul_ln5843_2_reg_2071 <= mul_ln5843_2_fu_1228_p2;
        select_ln5587_reg_1647_pp0_iter2_reg <= select_ln5587_reg_1647_pp0_iter1_reg;
        v3777_mid2_reg_1641_pp0_iter2_reg <= v3777_mid2_reg_1641_pp0_iter1_reg;
        v3777_mid2_reg_1641_pp0_iter3_reg <= v3777_mid2_reg_1641_pp0_iter2_reg;
        v4111_1_addr_reg_2082 <= zext_ln5656_6_fu_1259_p1;
        v4111_1_addr_reg_2082_pp0_iter5_reg <= v4111_1_addr_reg_2082;
        v4111_2_addr_reg_2088 <= zext_ln5656_6_fu_1259_p1;
        v4111_2_addr_reg_2088_pp0_iter5_reg <= v4111_2_addr_reg_2088;
        v4111_3_addr_reg_2094 <= zext_ln5656_6_fu_1259_p1;
        v4111_3_addr_reg_2094_pp0_iter5_reg <= v4111_3_addr_reg_2094;
        v4111_4_addr_reg_2100 <= zext_ln5656_6_fu_1259_p1;
        v4111_4_addr_reg_2100_pp0_iter5_reg <= v4111_4_addr_reg_2100;
        v4111_5_addr_reg_2106 <= zext_ln5656_6_fu_1259_p1;
        v4111_5_addr_reg_2106_pp0_iter5_reg <= v4111_5_addr_reg_2106;
        v4111_6_addr_reg_2112 <= zext_ln5656_6_fu_1259_p1;
        v4111_6_addr_reg_2112_pp0_iter5_reg <= v4111_6_addr_reg_2112;
        v4111_7_addr_reg_2118 <= zext_ln5656_6_fu_1259_p1;
        v4111_7_addr_reg_2118_pp0_iter5_reg <= v4111_7_addr_reg_2118;
        v4111_addr_reg_2076 <= zext_ln5656_6_fu_1259_p1;
        v4111_addr_reg_2076_pp0_iter5_reg <= v4111_addr_reg_2076;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln5587_reg_1636 <= icmp_ln5587_fu_971_p2;
        lshr_ln_reg_1653 <= {{select_ln5586_1_fu_1080_p3[4:3]}};
        p_cast_reg_1659[4 : 0] <= p_cast_fu_1104_p1[4 : 0];
        select_ln5587_reg_1647 <= select_ln5587_fu_1023_p3;
        select_ln5587_reg_1647_pp0_iter1_reg <= select_ln5587_reg_1647;
        v3777_mid2_reg_1641 <= v3777_mid2_fu_1015_p3;
        v3777_mid2_reg_1641_pp0_iter1_reg <= v3777_mid2_reg_1641;
        zext_ln5590_1_reg_1727[8 : 0] <= zext_ln5590_1_fu_1151_p1[8 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln5586_fu_950_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten12_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12_load = indvar_flatten12_fu_192;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_184;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v3776_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v3776_load = v3776_fu_180;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v3777_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v3777_load = v3777_fu_176;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4108_1_ce0_local = 1'b1;
    end else begin
        v4108_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4108_2_ce0_local = 1'b1;
    end else begin
        v4108_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4108_3_ce0_local = 1'b1;
    end else begin
        v4108_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4108_4_ce0_local = 1'b1;
    end else begin
        v4108_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4108_5_ce0_local = 1'b1;
    end else begin
        v4108_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4108_6_ce0_local = 1'b1;
    end else begin
        v4108_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4108_7_ce0_local = 1'b1;
    end else begin
        v4108_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4108_ce0_local = 1'b1;
    end else begin
        v4108_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_10_ce0_local = 1'b1;
    end else begin
        v4109_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_11_ce0_local = 1'b1;
    end else begin
        v4109_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4109_12_ce0_local = 1'b1;
    end else begin
        v4109_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_13_ce0_local = 1'b1;
    end else begin
        v4109_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_14_ce0_local = 1'b1;
    end else begin
        v4109_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_15_ce0_local = 1'b1;
    end else begin
        v4109_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4109_16_ce0_local = 1'b1;
    end else begin
        v4109_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_17_ce0_local = 1'b1;
    end else begin
        v4109_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_18_ce0_local = 1'b1;
    end else begin
        v4109_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_19_ce0_local = 1'b1;
    end else begin
        v4109_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_1_ce0_local = 1'b1;
    end else begin
        v4109_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4109_20_ce0_local = 1'b1;
    end else begin
        v4109_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_21_ce0_local = 1'b1;
    end else begin
        v4109_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_22_ce0_local = 1'b1;
    end else begin
        v4109_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_23_ce0_local = 1'b1;
    end else begin
        v4109_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4109_24_ce0_local = 1'b1;
    end else begin
        v4109_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_25_ce0_local = 1'b1;
    end else begin
        v4109_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_26_ce0_local = 1'b1;
    end else begin
        v4109_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_27_ce0_local = 1'b1;
    end else begin
        v4109_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4109_28_ce0_local = 1'b1;
    end else begin
        v4109_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_29_ce0_local = 1'b1;
    end else begin
        v4109_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_2_ce0_local = 1'b1;
    end else begin
        v4109_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_30_ce0_local = 1'b1;
    end else begin
        v4109_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_31_ce0_local = 1'b1;
    end else begin
        v4109_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_3_ce0_local = 1'b1;
    end else begin
        v4109_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4109_4_ce0_local = 1'b1;
    end else begin
        v4109_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_5_ce0_local = 1'b1;
    end else begin
        v4109_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_6_ce0_local = 1'b1;
    end else begin
        v4109_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_7_ce0_local = 1'b1;
    end else begin
        v4109_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4109_8_ce0_local = 1'b1;
    end else begin
        v4109_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4109_9_ce0_local = 1'b1;
    end else begin
        v4109_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4109_ce0_local = 1'b1;
    end else begin
        v4109_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4110_1_ce0_local = 1'b1;
    end else begin
        v4110_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4110_2_ce0_local = 1'b1;
    end else begin
        v4110_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4110_3_ce0_local = 1'b1;
    end else begin
        v4110_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4110_ce0_local = 1'b1;
    end else begin
        v4110_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_1_ce0_local = 1'b1;
    end else begin
        v4111_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4111_1_ce1_local = 1'b1;
    end else begin
        v4111_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_1_we0_local = 1'b1;
    end else begin
        v4111_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_2_ce0_local = 1'b1;
    end else begin
        v4111_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4111_2_ce1_local = 1'b1;
    end else begin
        v4111_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_2_we0_local = 1'b1;
    end else begin
        v4111_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_3_ce0_local = 1'b1;
    end else begin
        v4111_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4111_3_ce1_local = 1'b1;
    end else begin
        v4111_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_3_we0_local = 1'b1;
    end else begin
        v4111_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_4_ce0_local = 1'b1;
    end else begin
        v4111_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4111_4_ce1_local = 1'b1;
    end else begin
        v4111_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_4_we0_local = 1'b1;
    end else begin
        v4111_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_5_ce0_local = 1'b1;
    end else begin
        v4111_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4111_5_ce1_local = 1'b1;
    end else begin
        v4111_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_5_we0_local = 1'b1;
    end else begin
        v4111_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_6_ce0_local = 1'b1;
    end else begin
        v4111_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4111_6_ce1_local = 1'b1;
    end else begin
        v4111_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_6_we0_local = 1'b1;
    end else begin
        v4111_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_7_ce0_local = 1'b1;
    end else begin
        v4111_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4111_7_ce1_local = 1'b1;
    end else begin
        v4111_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_7_we0_local = 1'b1;
    end else begin
        v4111_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_ce0_local = 1'b1;
    end else begin
        v4111_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4111_ce1_local = 1'b1;
    end else begin
        v4111_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v4111_we0_local = 1'b1;
    end else begin
        v4111_we0_local = 1'b0;
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
assign add_ln5586_1_fu_956_p2 = (ap_sig_allocacmp_indvar_flatten12_load + 8'd1);
assign add_ln5586_fu_1074_p2 = (v3775_fu_188 + 6'd8);
assign add_ln5587_1_fu_1037_p2 = (ap_sig_allocacmp_indvar_flatten_load + 6'd1);
assign add_ln5587_fu_1003_p2 = (select_ln5586_fu_977_p3 + 3'd1);
assign add_ln5588_fu_1031_p2 = (v3777_mid2_fu_1015_p3 + 3'd1);
assign add_ln5590_1_fu_1145_p2 = (sub_ln5590_fu_1136_p2 + zext_ln5656_4_fu_1142_p1);
assign add_ln5590_fu_1119_p2 = (mul_ln5590 + zext_ln5656_1_fu_1116_p1);
assign add_ln5656_1_fu_1253_p2 = (sub_ln5656_1_fu_1244_p2 + zext_ln5656_5_fu_1250_p1);
assign add_ln5656_fu_1180_p2 = (sub_ln5656_fu_1171_p2 + zext_ln5656_2_fu_1177_p1);
assign and_ln5586_fu_997_p2 = (xor_ln5586_fu_985_p2 & icmp_ln5588_fu_991_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_1009_p2 = (icmp_ln5587_fu_971_p2 | and_ln5586_fu_997_p2);
assign grp_fu_1440_p2 = ((cmp33_i[0:0] == 1'b1) ? v4108_7_q0 : v4111_7_q1);
assign grp_fu_1458_p2 = ((cmp33_i[0:0] == 1'b1) ? v4108_6_q0 : v4111_6_q1);
assign grp_fu_1476_p2 = ((cmp33_i[0:0] == 1'b1) ? v4108_5_q0 : v4111_5_q1);
assign grp_fu_1494_p2 = ((cmp33_i[0:0] == 1'b1) ? v4108_4_q0 : v4111_4_q1);
assign grp_fu_1512_p2 = ((cmp33_i[0:0] == 1'b1) ? v4108_3_q0 : v4111_3_q1);
assign grp_fu_1530_p2 = ((cmp33_i[0:0] == 1'b1) ? v4108_2_q0 : v4111_2_q1);
assign grp_fu_1548_p2 = ((cmp33_i[0:0] == 1'b1) ? v4108_1_q0 : v4111_1_q1);
assign grp_fu_1566_p2 = ((cmp33_i[0:0] == 1'b1) ? v4108_q0 : v4111_q1);
assign icmp_ln5586_fu_950_p2 = ((ap_sig_allocacmp_indvar_flatten12_load == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln5587_fu_971_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln5588_fu_991_p2 = ((ap_sig_allocacmp_v3777_load == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1087_p4 = {{select_ln5586_1_fu_1080_p3[4:3]}};
assign p_cast_fu_1104_p1 = tmp_fu_1097_p3;
assign p_shl17_fu_1237_p3 = {{add_ln5656_reg_2006}, {3'd0}};
assign p_shl18_fu_1164_p3 = {{lshr_ln_reg_1653_pp0_iter2_reg}, {3'd0}};
assign p_shl_fu_1128_p3 = {{add_ln5590_fu_1119_p2}, {3'd0}};
assign select_ln5586_1_fu_1080_p3 = ((icmp_ln5587_reg_1636[0:0] == 1'b1) ? add_ln5586_fu_1074_p2 : v3775_fu_188);
assign select_ln5586_fu_977_p3 = ((icmp_ln5587_fu_971_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v3776_load);
assign select_ln5587_1_fu_1043_p3 = ((icmp_ln5587_fu_971_p2[0:0] == 1'b1) ? 6'd1 : add_ln5587_1_fu_1037_p2);
assign select_ln5587_fu_1023_p3 = ((and_ln5586_fu_997_p2[0:0] == 1'b1) ? add_ln5587_fu_1003_p2 : select_ln5586_fu_977_p3);
assign sub_ln5590_fu_1136_p2 = (p_shl_fu_1128_p3 - zext_ln5590_fu_1124_p1);
assign sub_ln5656_1_fu_1244_p2 = (p_shl17_fu_1237_p3 - zext_ln5656_3_fu_1234_p1);
assign sub_ln5656_fu_1171_p2 = (p_shl18_fu_1164_p3 - zext_ln5656_fu_1161_p1);
assign tmp_fu_1097_p3 = {{lshr_ln_fu_1087_p4}, {zext_ln5584}};
assign v3777_mid2_fu_1015_p3 = ((empty_fu_1009_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v3777_load);
assign v3975_fu_1335_p0 = grp_fu_1431_p3;
assign v3975_fu_1335_p1 = grp_fu_1440_p3;
assign v3975_fu_1335_p2 = ($signed(v3975_fu_1335_p0) + $signed(v3975_fu_1335_p1));
assign v3982_fu_1340_p0 = grp_fu_1449_p3;
assign v3982_fu_1340_p1 = grp_fu_1458_p3;
assign v3982_fu_1340_p2 = ($signed(v3982_fu_1340_p0) + $signed(v3982_fu_1340_p1));
assign v3989_fu_1345_p0 = grp_fu_1467_p3;
assign v3989_fu_1345_p1 = grp_fu_1476_p3;
assign v3989_fu_1345_p2 = ($signed(v3989_fu_1345_p0) + $signed(v3989_fu_1345_p1));
assign v3996_fu_1350_p0 = grp_fu_1485_p3;
assign v3996_fu_1350_p1 = grp_fu_1494_p3;
assign v3996_fu_1350_p2 = ($signed(v3996_fu_1350_p0) + $signed(v3996_fu_1350_p1));
assign v4003_fu_1355_p0 = grp_fu_1503_p3;
assign v4003_fu_1355_p1 = grp_fu_1512_p3;
assign v4003_fu_1355_p2 = ($signed(v4003_fu_1355_p0) + $signed(v4003_fu_1355_p1));
assign v4010_fu_1360_p0 = grp_fu_1521_p3;
assign v4010_fu_1360_p1 = grp_fu_1530_p3;
assign v4010_fu_1360_p2 = ($signed(v4010_fu_1360_p0) + $signed(v4010_fu_1360_p1));
assign v4017_fu_1365_p0 = grp_fu_1539_p3;
assign v4017_fu_1365_p1 = grp_fu_1548_p3;
assign v4017_fu_1365_p2 = ($signed(v4017_fu_1365_p0) + $signed(v4017_fu_1365_p1));
assign v4024_fu_1370_p0 = grp_fu_1557_p3;
assign v4024_fu_1370_p1 = grp_fu_1566_p3;
assign v4024_fu_1370_p2 = ($signed(v4024_fu_1370_p0) + $signed(v4024_fu_1370_p1));
assign v4108_1_address0 = zext_ln5656_6_fu_1259_p1;
assign v4108_1_ce0 = v4108_1_ce0_local;
assign v4108_2_address0 = zext_ln5656_6_fu_1259_p1;
assign v4108_2_ce0 = v4108_2_ce0_local;
assign v4108_3_address0 = zext_ln5656_6_fu_1259_p1;
assign v4108_3_ce0 = v4108_3_ce0_local;
assign v4108_4_address0 = zext_ln5656_6_fu_1259_p1;
assign v4108_4_ce0 = v4108_4_ce0_local;
assign v4108_5_address0 = zext_ln5656_6_fu_1259_p1;
assign v4108_5_ce0 = v4108_5_ce0_local;
assign v4108_6_address0 = zext_ln5656_6_fu_1259_p1;
assign v4108_6_ce0 = v4108_6_ce0_local;
assign v4108_7_address0 = zext_ln5656_6_fu_1259_p1;
assign v4108_7_ce0 = v4108_7_ce0_local;
assign v4108_address0 = zext_ln5656_6_fu_1259_p1;
assign v4108_ce0 = v4108_ce0_local;
assign v4109_10_address0 = p_cast_reg_1659;
assign v4109_10_ce0 = v4109_10_ce0_local;
assign v4109_11_address0 = p_cast_reg_1659;
assign v4109_11_ce0 = v4109_11_ce0_local;
assign v4109_12_address0 = p_cast_fu_1104_p1;
assign v4109_12_ce0 = v4109_12_ce0_local;
assign v4109_13_address0 = p_cast_reg_1659;
assign v4109_13_ce0 = v4109_13_ce0_local;
assign v4109_14_address0 = p_cast_reg_1659;
assign v4109_14_ce0 = v4109_14_ce0_local;
assign v4109_15_address0 = p_cast_reg_1659;
assign v4109_15_ce0 = v4109_15_ce0_local;
assign v4109_16_address0 = p_cast_fu_1104_p1;
assign v4109_16_ce0 = v4109_16_ce0_local;
assign v4109_17_address0 = p_cast_reg_1659;
assign v4109_17_ce0 = v4109_17_ce0_local;
assign v4109_18_address0 = p_cast_reg_1659;
assign v4109_18_ce0 = v4109_18_ce0_local;
assign v4109_19_address0 = p_cast_reg_1659;
assign v4109_19_ce0 = v4109_19_ce0_local;
assign v4109_1_address0 = p_cast_reg_1659;
assign v4109_1_ce0 = v4109_1_ce0_local;
assign v4109_20_address0 = p_cast_fu_1104_p1;
assign v4109_20_ce0 = v4109_20_ce0_local;
assign v4109_21_address0 = p_cast_reg_1659;
assign v4109_21_ce0 = v4109_21_ce0_local;
assign v4109_22_address0 = p_cast_reg_1659;
assign v4109_22_ce0 = v4109_22_ce0_local;
assign v4109_23_address0 = p_cast_reg_1659;
assign v4109_23_ce0 = v4109_23_ce0_local;
assign v4109_24_address0 = p_cast_fu_1104_p1;
assign v4109_24_ce0 = v4109_24_ce0_local;
assign v4109_25_address0 = p_cast_reg_1659;
assign v4109_25_ce0 = v4109_25_ce0_local;
assign v4109_26_address0 = p_cast_reg_1659;
assign v4109_26_ce0 = v4109_26_ce0_local;
assign v4109_27_address0 = p_cast_reg_1659;
assign v4109_27_ce0 = v4109_27_ce0_local;
assign v4109_28_address0 = p_cast_fu_1104_p1;
assign v4109_28_ce0 = v4109_28_ce0_local;
assign v4109_29_address0 = p_cast_reg_1659;
assign v4109_29_ce0 = v4109_29_ce0_local;
assign v4109_2_address0 = p_cast_reg_1659;
assign v4109_2_ce0 = v4109_2_ce0_local;
assign v4109_30_address0 = p_cast_reg_1659;
assign v4109_30_ce0 = v4109_30_ce0_local;
assign v4109_31_address0 = p_cast_reg_1659;
assign v4109_31_ce0 = v4109_31_ce0_local;
assign v4109_3_address0 = p_cast_reg_1659;
assign v4109_3_ce0 = v4109_3_ce0_local;
assign v4109_4_address0 = p_cast_fu_1104_p1;
assign v4109_4_ce0 = v4109_4_ce0_local;
assign v4109_5_address0 = p_cast_reg_1659;
assign v4109_5_ce0 = v4109_5_ce0_local;
assign v4109_6_address0 = p_cast_reg_1659;
assign v4109_6_ce0 = v4109_6_ce0_local;
assign v4109_7_address0 = p_cast_reg_1659;
assign v4109_7_ce0 = v4109_7_ce0_local;
assign v4109_8_address0 = p_cast_fu_1104_p1;
assign v4109_8_ce0 = v4109_8_ce0_local;
assign v4109_9_address0 = p_cast_reg_1659;
assign v4109_9_ce0 = v4109_9_ce0_local;
assign v4109_address0 = p_cast_fu_1104_p1;
assign v4109_ce0 = v4109_ce0_local;
assign v4110_1_address0 = zext_ln5590_1_reg_1727;
assign v4110_1_ce0 = v4110_1_ce0_local;
assign v4110_2_address0 = zext_ln5590_1_reg_1727;
assign v4110_2_ce0 = v4110_2_ce0_local;
assign v4110_3_address0 = zext_ln5590_1_reg_1727;
assign v4110_3_ce0 = v4110_3_ce0_local;
assign v4110_address0 = zext_ln5590_1_fu_1151_p1;
assign v4110_ce0 = v4110_ce0_local;
assign v4111_1_address0 = v4111_1_addr_reg_2082_pp0_iter5_reg;
assign v4111_1_address1 = zext_ln5656_6_fu_1259_p1;
assign v4111_1_ce0 = v4111_1_ce0_local;
assign v4111_1_ce1 = v4111_1_ce1_local;
assign v4111_1_d0 = v4017_fu_1365_p2;
assign v4111_1_we0 = v4111_1_we0_local;
assign v4111_2_address0 = v4111_2_addr_reg_2088_pp0_iter5_reg;
assign v4111_2_address1 = zext_ln5656_6_fu_1259_p1;
assign v4111_2_ce0 = v4111_2_ce0_local;
assign v4111_2_ce1 = v4111_2_ce1_local;
assign v4111_2_d0 = v4010_fu_1360_p2;
assign v4111_2_we0 = v4111_2_we0_local;
assign v4111_3_address0 = v4111_3_addr_reg_2094_pp0_iter5_reg;
assign v4111_3_address1 = zext_ln5656_6_fu_1259_p1;
assign v4111_3_ce0 = v4111_3_ce0_local;
assign v4111_3_ce1 = v4111_3_ce1_local;
assign v4111_3_d0 = v4003_fu_1355_p2;
assign v4111_3_we0 = v4111_3_we0_local;
assign v4111_4_address0 = v4111_4_addr_reg_2100_pp0_iter5_reg;
assign v4111_4_address1 = zext_ln5656_6_fu_1259_p1;
assign v4111_4_ce0 = v4111_4_ce0_local;
assign v4111_4_ce1 = v4111_4_ce1_local;
assign v4111_4_d0 = v3996_fu_1350_p2;
assign v4111_4_we0 = v4111_4_we0_local;
assign v4111_5_address0 = v4111_5_addr_reg_2106_pp0_iter5_reg;
assign v4111_5_address1 = zext_ln5656_6_fu_1259_p1;
assign v4111_5_ce0 = v4111_5_ce0_local;
assign v4111_5_ce1 = v4111_5_ce1_local;
assign v4111_5_d0 = v3989_fu_1345_p2;
assign v4111_5_we0 = v4111_5_we0_local;
assign v4111_6_address0 = v4111_6_addr_reg_2112_pp0_iter5_reg;
assign v4111_6_address1 = zext_ln5656_6_fu_1259_p1;
assign v4111_6_ce0 = v4111_6_ce0_local;
assign v4111_6_ce1 = v4111_6_ce1_local;
assign v4111_6_d0 = v3982_fu_1340_p2;
assign v4111_6_we0 = v4111_6_we0_local;
assign v4111_7_address0 = v4111_7_addr_reg_2118_pp0_iter5_reg;
assign v4111_7_address1 = zext_ln5656_6_fu_1259_p1;
assign v4111_7_ce0 = v4111_7_ce0_local;
assign v4111_7_ce1 = v4111_7_ce1_local;
assign v4111_7_d0 = v3975_fu_1335_p2;
assign v4111_7_we0 = v4111_7_we0_local;
assign v4111_address0 = v4111_addr_reg_2076_pp0_iter5_reg;
assign v4111_address1 = zext_ln5656_6_fu_1259_p1;
assign v4111_ce0 = v4111_ce0_local;
assign v4111_ce1 = v4111_ce1_local;
assign v4111_d0 = v4024_fu_1370_p2;
assign v4111_we0 = v4111_we0_local;
assign xor_ln5586_fu_985_p2 = (icmp_ln5587_fu_971_p2 ^ 1'd1);
assign zext_ln5590_1_fu_1151_p1 = add_ln5590_1_fu_1145_p2;
assign zext_ln5590_fu_1124_p1 = add_ln5590_fu_1119_p2;
assign zext_ln5656_1_fu_1116_p1 = select_ln5587_reg_1647;
assign zext_ln5656_2_fu_1177_p1 = select_ln5587_reg_1647_pp0_iter2_reg;
assign zext_ln5656_3_fu_1234_p1 = add_ln5656_reg_2006;
assign zext_ln5656_4_fu_1142_p1 = v3777_mid2_reg_1641;
assign zext_ln5656_5_fu_1250_p1 = v3777_mid2_reg_1641_pp0_iter3_reg;
assign zext_ln5656_6_fu_1259_p1 = add_ln5656_1_fu_1253_p2;
assign zext_ln5656_fu_1161_p1 = lshr_ln_reg_1653_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    p_cast_reg_1659[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln5590_1_reg_1727[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 