module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_19_reload,B_7_reload,C_17_reload,D_19_reload,E_7_reload,W_address0,W_ce0,W_q0,W_4_address0,W_4_ce0,W_4_q0,W_8_address0,W_8_ce0,W_8_q0,W_12_address0,W_12_ce0,W_12_q0,W_16_address0,W_16_ce0,W_16_q0,W_20_address0,W_20_ce0,W_20_q0,W_24_address0,W_24_ce0,W_24_q0,W_28_address0,W_28_ce0,W_28_q0,W_32_address0,W_32_ce0,W_32_q0,W_36_address0,W_36_ce0,W_36_q0,W_40_address0,W_40_ce0,W_40_q0,W_44_address0,W_44_ce0,W_44_q0,W_48_address0,W_48_ce0,W_48_q0,W_52_address0,W_52_ce0,W_52_q0,W_56_address0,W_56_ce0,W_56_q0,W_60_address0,W_60_ce0,W_60_q0,W_1_address0,W_1_ce0,W_1_q0,W_5_address0,W_5_ce0,W_5_q0,W_9_address0,W_9_ce0,W_9_q0,W_13_address0,W_13_ce0,W_13_q0,W_17_address0,W_17_ce0,W_17_q0,W_21_address0,W_21_ce0,W_21_q0,W_25_address0,W_25_ce0,W_25_q0,W_29_address0,W_29_ce0,W_29_q0,W_33_address0,W_33_ce0,W_33_q0,W_37_address0,W_37_ce0,W_37_q0,W_41_address0,W_41_ce0,W_41_q0,W_45_address0,W_45_ce0,W_45_q0,W_49_address0,W_49_ce0,W_49_q0,W_53_address0,W_53_ce0,W_53_q0,W_57_address0,W_57_ce0,W_57_q0,W_61_address0,W_61_ce0,W_61_q0,W_2_address0,W_2_ce0,W_2_q0,W_6_address0,W_6_ce0,W_6_q0,W_10_address0,W_10_ce0,W_10_q0,W_14_address0,W_14_ce0,W_14_q0,W_18_address0,W_18_ce0,W_18_q0,W_22_address0,W_22_ce0,W_22_q0,W_26_address0,W_26_ce0,W_26_q0,W_30_address0,W_30_ce0,W_30_q0,W_34_address0,W_34_ce0,W_34_q0,W_38_address0,W_38_ce0,W_38_q0,W_42_address0,W_42_ce0,W_42_q0,W_46_address0,W_46_ce0,W_46_q0,W_50_address0,W_50_ce0,W_50_q0,W_54_address0,W_54_ce0,W_54_q0,W_58_address0,W_58_ce0,W_58_q0,W_62_address0,W_62_ce0,W_62_q0,W_3_address0,W_3_ce0,W_3_q0,W_7_address0,W_7_ce0,W_7_q0,W_11_address0,W_11_ce0,W_11_q0,W_15_address0,W_15_ce0,W_15_q0,W_19_address0,W_19_ce0,W_19_q0,W_23_address0,W_23_ce0,W_23_q0,W_27_address0,W_27_ce0,W_27_q0,W_31_address0,W_31_ce0,W_31_q0,W_35_address0,W_35_ce0,W_35_q0,W_39_address0,W_39_ce0,W_39_q0,W_43_address0,W_43_ce0,W_43_q0,W_47_address0,W_47_ce0,W_47_q0,W_51_address0,W_51_ce0,W_51_q0,W_55_address0,W_55_ce0,W_55_q0,W_59_address0,W_59_ce0,W_59_q0,W_63_address0,W_63_ce0,W_63_q0,A_21_out,A_21_out_ap_vld,B_12_out,B_12_out_ap_vld,C_19_out,C_19_out_ap_vld,D_21_out,D_21_out_ap_vld,E_12_out,E_12_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_19_reload;
input  [31:0] B_7_reload;
input  [31:0] C_17_reload;
input  [31:0] D_19_reload;
input  [31:0] E_7_reload;
output  [0:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [0:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [0:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [0:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [0:0] W_16_address0;
output   W_16_ce0;
input  [31:0] W_16_q0;
output  [0:0] W_20_address0;
output   W_20_ce0;
input  [31:0] W_20_q0;
output  [0:0] W_24_address0;
output   W_24_ce0;
input  [31:0] W_24_q0;
output  [0:0] W_28_address0;
output   W_28_ce0;
input  [31:0] W_28_q0;
output  [0:0] W_32_address0;
output   W_32_ce0;
input  [31:0] W_32_q0;
output  [0:0] W_36_address0;
output   W_36_ce0;
input  [31:0] W_36_q0;
output  [0:0] W_40_address0;
output   W_40_ce0;
input  [31:0] W_40_q0;
output  [0:0] W_44_address0;
output   W_44_ce0;
input  [31:0] W_44_q0;
output  [0:0] W_48_address0;
output   W_48_ce0;
input  [31:0] W_48_q0;
output  [0:0] W_52_address0;
output   W_52_ce0;
input  [31:0] W_52_q0;
output  [0:0] W_56_address0;
output   W_56_ce0;
input  [31:0] W_56_q0;
output  [0:0] W_60_address0;
output   W_60_ce0;
input  [31:0] W_60_q0;
output  [0:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [0:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [0:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [0:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [0:0] W_17_address0;
output   W_17_ce0;
input  [31:0] W_17_q0;
output  [0:0] W_21_address0;
output   W_21_ce0;
input  [31:0] W_21_q0;
output  [0:0] W_25_address0;
output   W_25_ce0;
input  [31:0] W_25_q0;
output  [0:0] W_29_address0;
output   W_29_ce0;
input  [31:0] W_29_q0;
output  [0:0] W_33_address0;
output   W_33_ce0;
input  [31:0] W_33_q0;
output  [0:0] W_37_address0;
output   W_37_ce0;
input  [31:0] W_37_q0;
output  [0:0] W_41_address0;
output   W_41_ce0;
input  [31:0] W_41_q0;
output  [0:0] W_45_address0;
output   W_45_ce0;
input  [31:0] W_45_q0;
output  [0:0] W_49_address0;
output   W_49_ce0;
input  [31:0] W_49_q0;
output  [0:0] W_53_address0;
output   W_53_ce0;
input  [31:0] W_53_q0;
output  [0:0] W_57_address0;
output   W_57_ce0;
input  [31:0] W_57_q0;
output  [0:0] W_61_address0;
output   W_61_ce0;
input  [31:0] W_61_q0;
output  [0:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [0:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [0:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [0:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [0:0] W_18_address0;
output   W_18_ce0;
input  [31:0] W_18_q0;
output  [0:0] W_22_address0;
output   W_22_ce0;
input  [31:0] W_22_q0;
output  [0:0] W_26_address0;
output   W_26_ce0;
input  [31:0] W_26_q0;
output  [0:0] W_30_address0;
output   W_30_ce0;
input  [31:0] W_30_q0;
output  [0:0] W_34_address0;
output   W_34_ce0;
input  [31:0] W_34_q0;
output  [0:0] W_38_address0;
output   W_38_ce0;
input  [31:0] W_38_q0;
output  [0:0] W_42_address0;
output   W_42_ce0;
input  [31:0] W_42_q0;
output  [0:0] W_46_address0;
output   W_46_ce0;
input  [31:0] W_46_q0;
output  [0:0] W_50_address0;
output   W_50_ce0;
input  [31:0] W_50_q0;
output  [0:0] W_54_address0;
output   W_54_ce0;
input  [31:0] W_54_q0;
output  [0:0] W_58_address0;
output   W_58_ce0;
input  [31:0] W_58_q0;
output  [0:0] W_62_address0;
output   W_62_ce0;
input  [31:0] W_62_q0;
output  [0:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [0:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [0:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [0:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [0:0] W_19_address0;
output   W_19_ce0;
input  [31:0] W_19_q0;
output  [0:0] W_23_address0;
output   W_23_ce0;
input  [31:0] W_23_q0;
output  [0:0] W_27_address0;
output   W_27_ce0;
input  [31:0] W_27_q0;
output  [0:0] W_31_address0;
output   W_31_ce0;
input  [31:0] W_31_q0;
output  [0:0] W_35_address0;
output   W_35_ce0;
input  [31:0] W_35_q0;
output  [0:0] W_39_address0;
output   W_39_ce0;
input  [31:0] W_39_q0;
output  [0:0] W_43_address0;
output   W_43_ce0;
input  [31:0] W_43_q0;
output  [0:0] W_47_address0;
output   W_47_ce0;
input  [31:0] W_47_q0;
output  [0:0] W_51_address0;
output   W_51_ce0;
input  [31:0] W_51_q0;
output  [0:0] W_55_address0;
output   W_55_ce0;
input  [31:0] W_55_q0;
output  [0:0] W_59_address0;
output   W_59_ce0;
input  [31:0] W_59_q0;
output  [0:0] W_63_address0;
output   W_63_ce0;
input  [31:0] W_63_q0;
output  [31:0] A_21_out;
output   A_21_out_ap_vld;
output  [31:0] B_12_out;
output   B_12_out_ap_vld;
output  [31:0] C_19_out;
output   C_19_out_ap_vld;
output  [31:0] D_21_out;
output   D_21_out_ap_vld;
output  [31:0] E_12_out;
output   E_12_out_ap_vld;
reg ap_idle;
reg A_21_out_ap_vld;
reg B_12_out_ap_vld;
reg C_19_out_ap_vld;
reg D_21_out_ap_vld;
reg E_12_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln128_reg_1977;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_1971;
wire   [0:0] icmp_ln128_fu_1188_p2;
reg   [31:0] E_1_load_reg_2301;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_2_load_reg_2306;
wire   [31:0] add_ln130_1_fu_1369_p2;
reg   [31:0] add_ln130_1_reg_2312;
wire   [31:0] add_ln130_fu_1375_p2;
reg   [31:0] add_ln130_reg_2317;
wire   [1:0] trunc_ln130_1_fu_1381_p1;
reg   [1:0] trunc_ln130_1_reg_2322;
reg   [29:0] lshr_ln130_1_reg_2327;
wire   [31:0] tmp_s_fu_1395_p35;
reg   [31:0] tmp_s_reg_2332;
wire   [31:0] tmp_2_fu_1467_p35;
reg   [31:0] tmp_2_reg_2337;
wire   [31:0] tmp_3_fu_1539_p35;
reg   [31:0] tmp_3_reg_2342;
wire   [31:0] temp_fu_1641_p2;
reg   [31:0] temp_reg_2347;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_fu_1646_p3;
reg   [31:0] C_reg_2352;
wire   [31:0] add_ln130_5_fu_1685_p2;
reg   [31:0] add_ln130_5_reg_2358;
wire   [31:0] add_ln130_4_fu_1690_p2;
reg   [31:0] add_ln130_4_reg_2363;
wire   [1:0] trunc_ln130_3_fu_1696_p1;
reg   [1:0] trunc_ln130_3_reg_2368;
reg   [29:0] lshr_ln130_3_reg_2373;
wire   [31:0] add_ln130_10_fu_1715_p2;
reg   [31:0] add_ln130_10_reg_2378;
wire   [1:0] trunc_ln130_5_fu_1720_p1;
reg   [1:0] trunc_ln130_5_reg_2383;
reg   [29:0] lshr_ln130_5_reg_2388;
wire   [26:0] trunc_ln130_4_fu_1749_p1;
reg   [26:0] trunc_ln130_4_reg_2393;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [4:0] lshr_ln130_4_reg_2398;
wire   [31:0] xor_ln130_5_fu_1768_p2;
reg   [31:0] xor_ln130_5_reg_2403;
wire   [31:0] xor_ln130_7_fu_1785_p2;
reg   [31:0] xor_ln130_7_reg_2408;
wire   [26:0] trunc_ln130_6_fu_1844_p1;
reg   [26:0] trunc_ln130_6_reg_2413;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln130_6_reg_2418;
wire   [31:0] add_ln130_14_fu_1884_p2;
reg   [31:0] add_ln130_14_reg_2423;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_1202_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_234;
wire   [31:0] C_3_fu_1743_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_1_fu_238;
wire   [31:0] C_4_fu_1773_p3;
reg   [31:0] B_fu_242;
wire   [31:0] temp_2_fu_1838_p2;
reg   [31:0] B_1_fu_246;
wire   [31:0] temp_3_fu_1894_p2;
wire    ap_block_pp0_stage2;
reg   [31:0] E_2_fu_250;
wire   [31:0] C_2_fu_1805_p3;
reg   [6:0] i_fu_254;
wire   [6:0] add_ln128_fu_1858_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_4_ce0_local;
reg    W_8_ce0_local;
reg    W_12_ce0_local;
reg    W_16_ce0_local;
reg    W_20_ce0_local;
reg    W_24_ce0_local;
reg    W_28_ce0_local;
reg    W_32_ce0_local;
reg    W_36_ce0_local;
reg    W_40_ce0_local;
reg    W_44_ce0_local;
reg    W_48_ce0_local;
reg    W_52_ce0_local;
reg    W_56_ce0_local;
reg    W_60_ce0_local;
reg    W_1_ce0_local;
reg    W_5_ce0_local;
reg    W_9_ce0_local;
reg    W_13_ce0_local;
reg    W_17_ce0_local;
reg    W_21_ce0_local;
reg    W_25_ce0_local;
reg    W_29_ce0_local;
reg    W_33_ce0_local;
reg    W_37_ce0_local;
reg    W_41_ce0_local;
reg    W_45_ce0_local;
reg    W_49_ce0_local;
reg    W_53_ce0_local;
reg    W_57_ce0_local;
reg    W_61_ce0_local;
reg    W_2_ce0_local;
reg    W_6_ce0_local;
reg    W_10_ce0_local;
reg    W_14_ce0_local;
reg    W_18_ce0_local;
reg    W_22_ce0_local;
reg    W_26_ce0_local;
reg    W_30_ce0_local;
reg    W_34_ce0_local;
reg    W_38_ce0_local;
reg    W_42_ce0_local;
reg    W_46_ce0_local;
reg    W_50_ce0_local;
reg    W_54_ce0_local;
reg    W_58_ce0_local;
reg    W_62_ce0_local;
reg    W_3_ce0_local;
reg    W_7_ce0_local;
reg    W_11_ce0_local;
reg    W_15_ce0_local;
reg    W_19_ce0_local;
reg    W_23_ce0_local;
reg    W_27_ce0_local;
reg    W_31_ce0_local;
reg    W_35_ce0_local;
reg    W_39_ce0_local;
reg    W_43_ce0_local;
reg    W_47_ce0_local;
reg    W_51_ce0_local;
reg    W_55_ce0_local;
reg    W_59_ce0_local;
reg    W_63_ce0_local;
wire   [0:0] tmp_fu_1194_p3;
wire   [31:0] tmp_1_fu_1285_p33;
wire   [5:0] trunc_ln128_fu_1282_p1;
wire   [31:0] xor_ln130_fu_1357_p2;
wire   [31:0] tmp_1_fu_1285_p35;
wire   [31:0] xor_ln130_1_fu_1363_p2;
wire   [31:0] tmp_s_fu_1395_p33;
wire   [31:0] tmp_2_fu_1467_p33;
wire   [31:0] tmp_3_fu_1539_p33;
wire   [26:0] trunc_ln130_fu_1614_p1;
wire   [4:0] lshr_ln6_fu_1618_p4;
wire   [31:0] or_ln1_fu_1628_p3;
wire   [31:0] add_ln130_2_fu_1636_p2;
wire   [31:0] xor_ln130_2_fu_1666_p2;
wire   [26:0] trunc_ln130_2_fu_1652_p1;
wire   [4:0] lshr_ln130_2_fu_1656_p4;
wire   [31:0] or_ln130_2_fu_1677_p3;
wire   [31:0] xor_ln130_3_fu_1672_p2;
wire   [31:0] add_ln130_9_fu_1710_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln130_6_fu_1734_p2;
wire   [31:0] temp_1_fu_1738_p2;
wire   [31:0] xor_ln130_4_fu_1763_p2;
wire   [31:0] xor_ln130_6_fu_1779_p2;
wire   [1:0] trunc_ln130_7_fu_1791_p1;
wire   [29:0] lshr_ln130_7_fu_1795_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln130_8_fu_1834_p2;
wire   [31:0] or_ln130_4_fu_1828_p3;
wire   [31:0] or_ln130_6_fu_1873_p3;
wire   [31:0] add_ln130_13_fu_1879_p2;
wire   [31:0] add_ln130_12_fu_1890_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_1_fu_1285_p1;
wire   [5:0] tmp_1_fu_1285_p3;
wire   [5:0] tmp_1_fu_1285_p5;
wire   [5:0] tmp_1_fu_1285_p7;
wire   [5:0] tmp_1_fu_1285_p9;
wire   [5:0] tmp_1_fu_1285_p11;
wire   [5:0] tmp_1_fu_1285_p13;
wire   [5:0] tmp_1_fu_1285_p15;
wire  signed [5:0] tmp_1_fu_1285_p17;
wire  signed [5:0] tmp_1_fu_1285_p19;
wire  signed [5:0] tmp_1_fu_1285_p21;
wire  signed [5:0] tmp_1_fu_1285_p23;
wire  signed [5:0] tmp_1_fu_1285_p25;
wire  signed [5:0] tmp_1_fu_1285_p27;
wire  signed [5:0] tmp_1_fu_1285_p29;
wire  signed [5:0] tmp_1_fu_1285_p31;
wire   [5:0] tmp_s_fu_1395_p1;
wire   [5:0] tmp_s_fu_1395_p3;
wire   [5:0] tmp_s_fu_1395_p5;
wire   [5:0] tmp_s_fu_1395_p7;
wire   [5:0] tmp_s_fu_1395_p9;
wire   [5:0] tmp_s_fu_1395_p11;
wire   [5:0] tmp_s_fu_1395_p13;
wire   [5:0] tmp_s_fu_1395_p15;
wire  signed [5:0] tmp_s_fu_1395_p17;
wire  signed [5:0] tmp_s_fu_1395_p19;
wire  signed [5:0] tmp_s_fu_1395_p21;
wire  signed [5:0] tmp_s_fu_1395_p23;
wire  signed [5:0] tmp_s_fu_1395_p25;
wire  signed [5:0] tmp_s_fu_1395_p27;
wire  signed [5:0] tmp_s_fu_1395_p29;
wire  signed [5:0] tmp_s_fu_1395_p31;
wire   [5:0] tmp_2_fu_1467_p1;
wire   [5:0] tmp_2_fu_1467_p3;
wire   [5:0] tmp_2_fu_1467_p5;
wire   [5:0] tmp_2_fu_1467_p7;
wire   [5:0] tmp_2_fu_1467_p9;
wire   [5:0] tmp_2_fu_1467_p11;
wire   [5:0] tmp_2_fu_1467_p13;
wire   [5:0] tmp_2_fu_1467_p15;
wire  signed [5:0] tmp_2_fu_1467_p17;
wire  signed [5:0] tmp_2_fu_1467_p19;
wire  signed [5:0] tmp_2_fu_1467_p21;
wire  signed [5:0] tmp_2_fu_1467_p23;
wire  signed [5:0] tmp_2_fu_1467_p25;
wire  signed [5:0] tmp_2_fu_1467_p27;
wire  signed [5:0] tmp_2_fu_1467_p29;
wire  signed [5:0] tmp_2_fu_1467_p31;
wire   [5:0] tmp_3_fu_1539_p1;
wire   [5:0] tmp_3_fu_1539_p3;
wire   [5:0] tmp_3_fu_1539_p5;
wire   [5:0] tmp_3_fu_1539_p7;
wire   [5:0] tmp_3_fu_1539_p9;
wire   [5:0] tmp_3_fu_1539_p11;
wire   [5:0] tmp_3_fu_1539_p13;
wire   [5:0] tmp_3_fu_1539_p15;
wire  signed [5:0] tmp_3_fu_1539_p17;
wire  signed [5:0] tmp_3_fu_1539_p19;
wire  signed [5:0] tmp_3_fu_1539_p21;
wire  signed [5:0] tmp_3_fu_1539_p23;
wire  signed [5:0] tmp_3_fu_1539_p25;
wire  signed [5:0] tmp_3_fu_1539_p27;
wire  signed [5:0] tmp_3_fu_1539_p29;
wire  signed [5:0] tmp_3_fu_1539_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_234 = 32'd0;
#0 E_1_fu_238 = 32'd0;
#0 B_fu_242 = 32'd0;
#0 B_1_fu_246 = 32'd0;
#0 E_2_fu_250 = 32'd0;
#0 i_fu_254 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h4 ),.din1_WIDTH( 32 ),.CASE2( 6'h8 ),.din2_WIDTH( 32 ),.CASE3( 6'hC ),.din3_WIDTH( 32 ),.CASE4( 6'h10 ),.din4_WIDTH( 32 ),.CASE5( 6'h14 ),.din5_WIDTH( 32 ),.CASE6( 6'h18 ),.din6_WIDTH( 32 ),.CASE7( 6'h1C ),.din7_WIDTH( 32 ),.CASE8( 6'h20 ),.din8_WIDTH( 32 ),.CASE9( 6'h24 ),.din9_WIDTH( 32 ),.CASE10( 6'h28 ),.din10_WIDTH( 32 ),.CASE11( 6'h2C ),.din11_WIDTH( 32 ),.CASE12( 6'h30 ),.din12_WIDTH( 32 ),.CASE13( 6'h34 ),.din13_WIDTH( 32 ),.CASE14( 6'h38 ),.din14_WIDTH( 32 ),.CASE15( 6'h3C ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_33_6_32_1_1_U177(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.din4(W_16_q0),.din5(W_20_q0),.din6(W_24_q0),.din7(W_28_q0),.din8(W_32_q0),.din9(W_36_q0),.din10(W_40_q0),.din11(W_44_q0),.din12(W_48_q0),.din13(W_52_q0),.din14(W_56_q0),.din15(W_60_q0),.def(tmp_1_fu_1285_p33),.sel(trunc_ln128_fu_1282_p1),.dout(tmp_1_fu_1285_p35));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h4 ),.din1_WIDTH( 32 ),.CASE2( 6'h8 ),.din2_WIDTH( 32 ),.CASE3( 6'hC ),.din3_WIDTH( 32 ),.CASE4( 6'h10 ),.din4_WIDTH( 32 ),.CASE5( 6'h14 ),.din5_WIDTH( 32 ),.CASE6( 6'h18 ),.din6_WIDTH( 32 ),.CASE7( 6'h1C ),.din7_WIDTH( 32 ),.CASE8( 6'h20 ),.din8_WIDTH( 32 ),.CASE9( 6'h24 ),.din9_WIDTH( 32 ),.CASE10( 6'h28 ),.din10_WIDTH( 32 ),.CASE11( 6'h2C ),.din11_WIDTH( 32 ),.CASE12( 6'h30 ),.din12_WIDTH( 32 ),.CASE13( 6'h34 ),.din13_WIDTH( 32 ),.CASE14( 6'h38 ),.din14_WIDTH( 32 ),.CASE15( 6'h3C ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_33_6_32_1_1_U178(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.din4(W_17_q0),.din5(W_21_q0),.din6(W_25_q0),.din7(W_29_q0),.din8(W_33_q0),.din9(W_37_q0),.din10(W_41_q0),.din11(W_45_q0),.din12(W_49_q0),.din13(W_53_q0),.din14(W_57_q0),.din15(W_61_q0),.def(tmp_s_fu_1395_p33),.sel(trunc_ln128_fu_1282_p1),.dout(tmp_s_fu_1395_p35));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h4 ),.din1_WIDTH( 32 ),.CASE2( 6'h8 ),.din2_WIDTH( 32 ),.CASE3( 6'hC ),.din3_WIDTH( 32 ),.CASE4( 6'h10 ),.din4_WIDTH( 32 ),.CASE5( 6'h14 ),.din5_WIDTH( 32 ),.CASE6( 6'h18 ),.din6_WIDTH( 32 ),.CASE7( 6'h1C ),.din7_WIDTH( 32 ),.CASE8( 6'h20 ),.din8_WIDTH( 32 ),.CASE9( 6'h24 ),.din9_WIDTH( 32 ),.CASE10( 6'h28 ),.din10_WIDTH( 32 ),.CASE11( 6'h2C ),.din11_WIDTH( 32 ),.CASE12( 6'h30 ),.din12_WIDTH( 32 ),.CASE13( 6'h34 ),.din13_WIDTH( 32 ),.CASE14( 6'h38 ),.din14_WIDTH( 32 ),.CASE15( 6'h3C ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_33_6_32_1_1_U179(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.din4(W_18_q0),.din5(W_22_q0),.din6(W_26_q0),.din7(W_30_q0),.din8(W_34_q0),.din9(W_38_q0),.din10(W_42_q0),.din11(W_46_q0),.din12(W_50_q0),.din13(W_54_q0),.din14(W_58_q0),.din15(W_62_q0),.def(tmp_2_fu_1467_p33),.sel(trunc_ln128_fu_1282_p1),.dout(tmp_2_fu_1467_p35));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h4 ),.din1_WIDTH( 32 ),.CASE2( 6'h8 ),.din2_WIDTH( 32 ),.CASE3( 6'hC ),.din3_WIDTH( 32 ),.CASE4( 6'h10 ),.din4_WIDTH( 32 ),.CASE5( 6'h14 ),.din5_WIDTH( 32 ),.CASE6( 6'h18 ),.din6_WIDTH( 32 ),.CASE7( 6'h1C ),.din7_WIDTH( 32 ),.CASE8( 6'h20 ),.din8_WIDTH( 32 ),.CASE9( 6'h24 ),.din9_WIDTH( 32 ),.CASE10( 6'h28 ),.din10_WIDTH( 32 ),.CASE11( 6'h2C ),.din11_WIDTH( 32 ),.CASE12( 6'h30 ),.din12_WIDTH( 32 ),.CASE13( 6'h34 ),.din13_WIDTH( 32 ),.CASE14( 6'h38 ),.din14_WIDTH( 32 ),.CASE15( 6'h3C ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_33_6_32_1_1_U180(.din0(W_3_q0),.din1(W_7_q0),.din2(W_11_q0),.din3(W_15_q0),.din4(W_19_q0),.din5(W_23_q0),.din6(W_27_q0),.din7(W_31_q0),.din8(W_35_q0),.din9(W_39_q0),.din10(W_43_q0),.din11(W_47_q0),.din12(W_51_q0),.din13(W_55_q0),.din14(W_59_q0),.din15(W_63_q0),.def(tmp_3_fu_1539_p33),.sel(trunc_ln128_fu_1282_p1),.dout(tmp_3_fu_1539_p35));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_246 <= A_19_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_fu_246 <= temp_3_fu_1894_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_242 <= B_7_reload;
    end else if (((icmp_ln128_reg_1977 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_fu_242 <= temp_2_fu_1838_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_238 <= D_19_reload;
    end else if (((icmp_ln128_reg_1977 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_1_fu_238 <= C_4_fu_1773_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_250 <= C_17_reload;
    end else if (((icmp_ln128_reg_1977 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_2_fu_250 <= C_2_fu_1805_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_234 <= E_7_reload;
    end else if (((icmp_ln128_reg_1977 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_fu_234 <= C_3_fu_1743_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_254 <= 7'd60;
    end else if (((icmp_ln128_reg_1977 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_fu_254 <= add_ln128_fu_1858_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_reg_2352 <= C_fu_1646_p3;
        add_ln130_10_reg_2378 <= add_ln130_10_fu_1715_p2;
        add_ln130_4_reg_2363 <= add_ln130_4_fu_1690_p2;
        add_ln130_5_reg_2358 <= add_ln130_5_fu_1685_p2;
        lshr_ln130_3_reg_2373 <= {{B_1_fu_246[31:2]}};
        lshr_ln130_5_reg_2388 <= {{temp_fu_1641_p2[31:2]}};
        temp_reg_2347 <= temp_fu_1641_p2;
        trunc_ln130_3_reg_2368 <= trunc_ln130_3_fu_1696_p1;
        trunc_ln130_5_reg_2383 <= trunc_ln130_5_fu_1720_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_1_load_reg_2301 <= E_1_fu_238;
        E_2_load_reg_2306 <= E_2_fu_250;
        add_ln130_1_reg_2312 <= add_ln130_1_fu_1369_p2;
        add_ln130_reg_2317 <= add_ln130_fu_1375_p2;
        lshr_ln130_1_reg_2327 <= {{B_fu_242[31:2]}};
        tmp_2_reg_2337 <= tmp_2_fu_1467_p35;
        tmp_3_reg_2342 <= tmp_3_fu_1539_p35;
        tmp_s_reg_2332 <= tmp_s_fu_1395_p35;
        trunc_ln130_1_reg_2322 <= trunc_ln130_1_fu_1381_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln130_14_reg_2423 <= add_ln130_14_fu_1884_p2;
        i_1_reg_1971 <= ap_sig_allocacmp_i_1;
        icmp_ln128_reg_1977 <= icmp_ln128_fu_1188_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln130_4_reg_2398 <= {{temp_1_fu_1738_p2[31:27]}};
        trunc_ln130_4_reg_2393 <= trunc_ln130_4_fu_1749_p1;
        xor_ln130_5_reg_2403 <= xor_ln130_5_fu_1768_p2;
        xor_ln130_7_reg_2408 <= xor_ln130_7_fu_1785_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln130_6_reg_2418 <= {{temp_2_fu_1838_p2[31:27]}};
        trunc_ln130_6_reg_2413 <= trunc_ln130_6_fu_1844_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1977 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_21_out_ap_vld = 1'b1;
    end else begin
        A_21_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1977 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_12_out_ap_vld = 1'b1;
    end else begin
        B_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1977 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_19_out_ap_vld = 1'b1;
    end else begin
        C_19_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1977 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_21_out_ap_vld = 1'b1;
    end else begin
        D_21_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1977 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_12_out_ap_vld = 1'b1;
    end else begin
        E_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_16_ce0_local = 1'b1;
    end else begin
        W_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_17_ce0_local = 1'b1;
    end else begin
        W_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_18_ce0_local = 1'b1;
    end else begin
        W_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_19_ce0_local = 1'b1;
    end else begin
        W_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_20_ce0_local = 1'b1;
    end else begin
        W_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_21_ce0_local = 1'b1;
    end else begin
        W_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_22_ce0_local = 1'b1;
    end else begin
        W_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_23_ce0_local = 1'b1;
    end else begin
        W_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_24_ce0_local = 1'b1;
    end else begin
        W_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_25_ce0_local = 1'b1;
    end else begin
        W_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_26_ce0_local = 1'b1;
    end else begin
        W_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_27_ce0_local = 1'b1;
    end else begin
        W_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_28_ce0_local = 1'b1;
    end else begin
        W_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_29_ce0_local = 1'b1;
    end else begin
        W_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_30_ce0_local = 1'b1;
    end else begin
        W_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_31_ce0_local = 1'b1;
    end else begin
        W_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_32_ce0_local = 1'b1;
    end else begin
        W_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_33_ce0_local = 1'b1;
    end else begin
        W_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_34_ce0_local = 1'b1;
    end else begin
        W_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_35_ce0_local = 1'b1;
    end else begin
        W_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_36_ce0_local = 1'b1;
    end else begin
        W_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_37_ce0_local = 1'b1;
    end else begin
        W_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_38_ce0_local = 1'b1;
    end else begin
        W_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_39_ce0_local = 1'b1;
    end else begin
        W_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_40_ce0_local = 1'b1;
    end else begin
        W_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_41_ce0_local = 1'b1;
    end else begin
        W_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_42_ce0_local = 1'b1;
    end else begin
        W_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_43_ce0_local = 1'b1;
    end else begin
        W_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_44_ce0_local = 1'b1;
    end else begin
        W_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_45_ce0_local = 1'b1;
    end else begin
        W_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_46_ce0_local = 1'b1;
    end else begin
        W_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_47_ce0_local = 1'b1;
    end else begin
        W_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_48_ce0_local = 1'b1;
    end else begin
        W_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_49_ce0_local = 1'b1;
    end else begin
        W_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_50_ce0_local = 1'b1;
    end else begin
        W_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_51_ce0_local = 1'b1;
    end else begin
        W_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_52_ce0_local = 1'b1;
    end else begin
        W_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_53_ce0_local = 1'b1;
    end else begin
        W_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_54_ce0_local = 1'b1;
    end else begin
        W_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_55_ce0_local = 1'b1;
    end else begin
        W_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_56_ce0_local = 1'b1;
    end else begin
        W_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_57_ce0_local = 1'b1;
    end else begin
        W_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_58_ce0_local = 1'b1;
    end else begin
        W_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_59_ce0_local = 1'b1;
    end else begin
        W_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_60_ce0_local = 1'b1;
    end else begin
        W_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_61_ce0_local = 1'b1;
    end else begin
        W_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_62_ce0_local = 1'b1;
    end else begin
        W_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_63_ce0_local = 1'b1;
    end else begin
        W_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_1977 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_254;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_21_out = B_1_fu_246;
assign B_12_out = B_fu_242;
assign C_19_out = E_2_fu_250;
assign C_2_fu_1805_p3 = {{trunc_ln130_7_fu_1791_p1}, {lshr_ln130_7_fu_1795_p4}};
assign C_3_fu_1743_p3 = {{trunc_ln130_3_reg_2368}, {lshr_ln130_3_reg_2373}};
assign C_4_fu_1773_p3 = {{trunc_ln130_5_reg_2383}, {lshr_ln130_5_reg_2388}};
assign C_fu_1646_p3 = {{trunc_ln130_1_reg_2322}, {lshr_ln130_1_reg_2327}};
assign D_21_out = E_1_fu_238;
assign E_12_out = E_fu_234;
assign W_10_address0 = zext_ln100_fu_1202_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_1202_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_1202_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_1202_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_1202_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_1202_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_16_address0 = zext_ln100_fu_1202_p1;
assign W_16_ce0 = W_16_ce0_local;
assign W_17_address0 = zext_ln100_fu_1202_p1;
assign W_17_ce0 = W_17_ce0_local;
assign W_18_address0 = zext_ln100_fu_1202_p1;
assign W_18_ce0 = W_18_ce0_local;
assign W_19_address0 = zext_ln100_fu_1202_p1;
assign W_19_ce0 = W_19_ce0_local;
assign W_1_address0 = zext_ln100_fu_1202_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_20_address0 = zext_ln100_fu_1202_p1;
assign W_20_ce0 = W_20_ce0_local;
assign W_21_address0 = zext_ln100_fu_1202_p1;
assign W_21_ce0 = W_21_ce0_local;
assign W_22_address0 = zext_ln100_fu_1202_p1;
assign W_22_ce0 = W_22_ce0_local;
assign W_23_address0 = zext_ln100_fu_1202_p1;
assign W_23_ce0 = W_23_ce0_local;
assign W_24_address0 = zext_ln100_fu_1202_p1;
assign W_24_ce0 = W_24_ce0_local;
assign W_25_address0 = zext_ln100_fu_1202_p1;
assign W_25_ce0 = W_25_ce0_local;
assign W_26_address0 = zext_ln100_fu_1202_p1;
assign W_26_ce0 = W_26_ce0_local;
assign W_27_address0 = zext_ln100_fu_1202_p1;
assign W_27_ce0 = W_27_ce0_local;
assign W_28_address0 = zext_ln100_fu_1202_p1;
assign W_28_ce0 = W_28_ce0_local;
assign W_29_address0 = zext_ln100_fu_1202_p1;
assign W_29_ce0 = W_29_ce0_local;
assign W_2_address0 = zext_ln100_fu_1202_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_30_address0 = zext_ln100_fu_1202_p1;
assign W_30_ce0 = W_30_ce0_local;
assign W_31_address0 = zext_ln100_fu_1202_p1;
assign W_31_ce0 = W_31_ce0_local;
assign W_32_address0 = zext_ln100_fu_1202_p1;
assign W_32_ce0 = W_32_ce0_local;
assign W_33_address0 = zext_ln100_fu_1202_p1;
assign W_33_ce0 = W_33_ce0_local;
assign W_34_address0 = zext_ln100_fu_1202_p1;
assign W_34_ce0 = W_34_ce0_local;
assign W_35_address0 = zext_ln100_fu_1202_p1;
assign W_35_ce0 = W_35_ce0_local;
assign W_36_address0 = zext_ln100_fu_1202_p1;
assign W_36_ce0 = W_36_ce0_local;
assign W_37_address0 = zext_ln100_fu_1202_p1;
assign W_37_ce0 = W_37_ce0_local;
assign W_38_address0 = zext_ln100_fu_1202_p1;
assign W_38_ce0 = W_38_ce0_local;
assign W_39_address0 = zext_ln100_fu_1202_p1;
assign W_39_ce0 = W_39_ce0_local;
assign W_3_address0 = zext_ln100_fu_1202_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_40_address0 = zext_ln100_fu_1202_p1;
assign W_40_ce0 = W_40_ce0_local;
assign W_41_address0 = zext_ln100_fu_1202_p1;
assign W_41_ce0 = W_41_ce0_local;
assign W_42_address0 = zext_ln100_fu_1202_p1;
assign W_42_ce0 = W_42_ce0_local;
assign W_43_address0 = zext_ln100_fu_1202_p1;
assign W_43_ce0 = W_43_ce0_local;
assign W_44_address0 = zext_ln100_fu_1202_p1;
assign W_44_ce0 = W_44_ce0_local;
assign W_45_address0 = zext_ln100_fu_1202_p1;
assign W_45_ce0 = W_45_ce0_local;
assign W_46_address0 = zext_ln100_fu_1202_p1;
assign W_46_ce0 = W_46_ce0_local;
assign W_47_address0 = zext_ln100_fu_1202_p1;
assign W_47_ce0 = W_47_ce0_local;
assign W_48_address0 = zext_ln100_fu_1202_p1;
assign W_48_ce0 = W_48_ce0_local;
assign W_49_address0 = zext_ln100_fu_1202_p1;
assign W_49_ce0 = W_49_ce0_local;
assign W_4_address0 = zext_ln100_fu_1202_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_50_address0 = zext_ln100_fu_1202_p1;
assign W_50_ce0 = W_50_ce0_local;
assign W_51_address0 = zext_ln100_fu_1202_p1;
assign W_51_ce0 = W_51_ce0_local;
assign W_52_address0 = zext_ln100_fu_1202_p1;
assign W_52_ce0 = W_52_ce0_local;
assign W_53_address0 = zext_ln100_fu_1202_p1;
assign W_53_ce0 = W_53_ce0_local;
assign W_54_address0 = zext_ln100_fu_1202_p1;
assign W_54_ce0 = W_54_ce0_local;
assign W_55_address0 = zext_ln100_fu_1202_p1;
assign W_55_ce0 = W_55_ce0_local;
assign W_56_address0 = zext_ln100_fu_1202_p1;
assign W_56_ce0 = W_56_ce0_local;
assign W_57_address0 = zext_ln100_fu_1202_p1;
assign W_57_ce0 = W_57_ce0_local;
assign W_58_address0 = zext_ln100_fu_1202_p1;
assign W_58_ce0 = W_58_ce0_local;
assign W_59_address0 = zext_ln100_fu_1202_p1;
assign W_59_ce0 = W_59_ce0_local;
assign W_5_address0 = zext_ln100_fu_1202_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_60_address0 = zext_ln100_fu_1202_p1;
assign W_60_ce0 = W_60_ce0_local;
assign W_61_address0 = zext_ln100_fu_1202_p1;
assign W_61_ce0 = W_61_ce0_local;
assign W_62_address0 = zext_ln100_fu_1202_p1;
assign W_62_ce0 = W_62_ce0_local;
assign W_63_address0 = zext_ln100_fu_1202_p1;
assign W_63_ce0 = W_63_ce0_local;
assign W_6_address0 = zext_ln100_fu_1202_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_1202_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_1202_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_1202_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_1202_p1;
assign W_ce0 = W_ce0_local;
assign add_ln128_fu_1858_p2 = (i_1_reg_1971 + 7'd4);
assign add_ln130_10_fu_1715_p2 = (add_ln130_9_fu_1710_p2 + E_2_load_reg_2306);
assign add_ln130_12_fu_1890_p2 = (C_reg_2352 + xor_ln130_7_reg_2408);
assign add_ln130_13_fu_1879_p2 = ($signed(tmp_3_reg_2342) + $signed(32'd3395469782));
assign add_ln130_14_fu_1884_p2 = (or_ln130_6_fu_1873_p3 + add_ln130_13_fu_1879_p2);
assign add_ln130_1_fu_1369_p2 = ($signed(tmp_1_fu_1285_p35) + $signed(32'd3395469782));
assign add_ln130_2_fu_1636_p2 = (add_ln130_1_reg_2312 + or_ln1_fu_1628_p3);
assign add_ln130_4_fu_1690_p2 = (or_ln130_2_fu_1677_p3 + xor_ln130_3_fu_1672_p2);
assign add_ln130_5_fu_1685_p2 = ($signed(tmp_s_reg_2332) + $signed(32'd3395469782));
assign add_ln130_6_fu_1734_p2 = (add_ln130_5_reg_2358 + E_1_load_reg_2301);
assign add_ln130_8_fu_1834_p2 = (add_ln130_10_reg_2378 + xor_ln130_5_reg_2403);
assign add_ln130_9_fu_1710_p2 = ($signed(tmp_2_reg_2337) + $signed(32'd3395469782));
assign add_ln130_fu_1375_p2 = (xor_ln130_1_fu_1363_p2 + E_fu_234);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln128_fu_1188_p2 = ((ap_sig_allocacmp_i_1 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln130_2_fu_1656_p4 = {{temp_fu_1641_p2[31:27]}};
assign lshr_ln130_7_fu_1795_p4 = {{temp_1_fu_1738_p2[31:2]}};
assign lshr_ln6_fu_1618_p4 = {{B_1_fu_246[31:27]}};
assign or_ln130_2_fu_1677_p3 = {{trunc_ln130_2_fu_1652_p1}, {lshr_ln130_2_fu_1656_p4}};
assign or_ln130_4_fu_1828_p3 = {{trunc_ln130_4_reg_2393}, {lshr_ln130_4_reg_2398}};
assign or_ln130_6_fu_1873_p3 = {{trunc_ln130_6_reg_2413}, {lshr_ln130_6_reg_2418}};
assign or_ln1_fu_1628_p3 = {{trunc_ln130_fu_1614_p1}, {lshr_ln6_fu_1618_p4}};
assign temp_1_fu_1738_p2 = (add_ln130_4_reg_2363 + add_ln130_6_fu_1734_p2);
assign temp_2_fu_1838_p2 = (add_ln130_8_fu_1834_p2 + or_ln130_4_fu_1828_p3);
assign temp_3_fu_1894_p2 = (add_ln130_14_reg_2423 + add_ln130_12_fu_1890_p2);
assign temp_fu_1641_p2 = (add_ln130_reg_2317 + add_ln130_2_fu_1636_p2);
assign tmp_1_fu_1285_p33 = 'bx;
assign tmp_2_fu_1467_p33 = 'bx;
assign tmp_3_fu_1539_p33 = 'bx;
assign tmp_fu_1194_p3 = ap_sig_allocacmp_i_1[32'd6];
assign tmp_s_fu_1395_p33 = 'bx;
assign trunc_ln128_fu_1282_p1 = i_1_reg_1971[5:0];
assign trunc_ln130_1_fu_1381_p1 = B_fu_242[1:0];
assign trunc_ln130_2_fu_1652_p1 = temp_fu_1641_p2[26:0];
assign trunc_ln130_3_fu_1696_p1 = B_1_fu_246[1:0];
assign trunc_ln130_4_fu_1749_p1 = temp_1_fu_1738_p2[26:0];
assign trunc_ln130_5_fu_1720_p1 = temp_fu_1641_p2[1:0];
assign trunc_ln130_6_fu_1844_p1 = temp_2_fu_1838_p2[26:0];
assign trunc_ln130_7_fu_1791_p1 = temp_1_fu_1738_p2[1:0];
assign trunc_ln130_fu_1614_p1 = B_1_fu_246[26:0];
assign xor_ln130_1_fu_1363_p2 = (xor_ln130_fu_1357_p2 ^ E_2_fu_250);
assign xor_ln130_2_fu_1666_p2 = (C_fu_1646_p3 ^ B_1_fu_246);
assign xor_ln130_3_fu_1672_p2 = (xor_ln130_2_fu_1666_p2 ^ E_2_load_reg_2306);
assign xor_ln130_4_fu_1763_p2 = (temp_reg_2347 ^ C_3_fu_1743_p3);
assign xor_ln130_5_fu_1768_p2 = (xor_ln130_4_fu_1763_p2 ^ C_reg_2352);
assign xor_ln130_6_fu_1779_p2 = (temp_1_fu_1738_p2 ^ C_3_fu_1743_p3);
assign xor_ln130_7_fu_1785_p2 = (xor_ln130_6_fu_1779_p2 ^ C_4_fu_1773_p3);
assign xor_ln130_fu_1357_p2 = (E_1_fu_238 ^ B_fu_242);
assign zext_ln100_fu_1202_p1 = tmp_fu_1194_p3;
endmodule 