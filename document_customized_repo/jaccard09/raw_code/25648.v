module backprop_update_weights_45_46_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,norm_44); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
input  [63:0] norm_44;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] tmp_reg_1000;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_320;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_324;
reg   [63:0] reg_328;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_333;
reg   [63:0] reg_338;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_343;
wire   [63:0] grp_fu_312_p2;
reg   [63:0] reg_348;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [63:0] grp_fu_316_p2;
reg   [63:0] reg_352;
reg   [63:0] reg_356;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_360;
reg   [63:0] reg_364;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_368;
reg   [6:0] i_4_reg_995;
reg   [6:0] weights3_0_addr_reg_1004;
reg   [6:0] weights3_0_addr_reg_1004_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_reg_1004_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_reg_1004_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_reg_1004_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_reg_1004_pp0_iter5_reg;
wire   [7:0] empty_fu_475_p2;
reg   [7:0] empty_reg_1009;
wire   [6:0] lshr_ln194_1_fu_481_p4;
reg   [6:0] lshr_ln194_1_reg_1020;
reg   [4:0] tmp_7_reg_1025;
reg   [6:0] weights3_1_addr_reg_1030;
reg   [6:0] weights3_1_addr_reg_1030_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_reg_1030_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_reg_1030_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_reg_1030_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_reg_1030_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_12_reg_1035;
reg   [6:0] weights3_0_addr_12_reg_1035_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_12_reg_1035_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_12_reg_1035_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_12_reg_1035_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_12_reg_1035_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_12_reg_1040;
reg   [6:0] weights3_1_addr_12_reg_1040_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_12_reg_1040_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_12_reg_1040_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_12_reg_1040_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_12_reg_1040_pp0_iter5_reg;
wire   [6:0] or_ln194_1_fu_536_p3;
reg   [6:0] or_ln194_1_reg_1045;
reg   [6:0] lshr_ln194_3_reg_1054;
reg   [6:0] weights3_0_addr_13_reg_1060;
reg   [6:0] weights3_0_addr_13_reg_1060_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_13_reg_1060_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_13_reg_1060_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_13_reg_1060_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_13_reg_1060_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_13_reg_1065;
reg   [6:0] weights3_1_addr_13_reg_1065_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_13_reg_1065_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_13_reg_1065_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_13_reg_1065_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_13_reg_1065_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_14_reg_1070;
reg   [6:0] weights3_0_addr_14_reg_1070_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_14_reg_1070_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_14_reg_1070_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_14_reg_1070_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_14_reg_1070_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_14_reg_1075;
reg   [6:0] weights3_1_addr_14_reg_1075_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_14_reg_1075_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_14_reg_1075_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_14_reg_1075_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_14_reg_1075_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_fu_564_p1;
wire   [63:0] bitcast_ln194_1_fu_613_p1;
reg   [6:0] weights3_0_addr_15_reg_1090;
reg   [6:0] weights3_0_addr_15_reg_1090_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_15_reg_1090_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_15_reg_1090_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_15_reg_1090_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_15_reg_1090_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_15_reg_1095;
reg   [6:0] weights3_1_addr_15_reg_1095_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_15_reg_1095_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_15_reg_1095_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_15_reg_1095_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_15_reg_1095_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_16_reg_1100;
reg   [6:0] weights3_0_addr_16_reg_1100_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_16_reg_1100_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_16_reg_1100_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_16_reg_1100_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_16_reg_1100_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_16_reg_1105;
reg   [6:0] weights3_1_addr_16_reg_1105_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_16_reg_1105_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_16_reg_1105_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_16_reg_1105_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_16_reg_1105_pp0_iter5_reg;
wire   [6:0] lshr_ln194_5_fu_644_p4;
reg   [6:0] lshr_ln194_5_reg_1110;
wire   [63:0] bitcast_ln194_2_fu_659_p1;
wire   [63:0] bitcast_ln194_3_fu_664_p1;
reg   [63:0] weights3_0_load_16_reg_1125;
reg   [63:0] weights3_1_load_16_reg_1130;
reg   [6:0] weights3_0_addr_17_reg_1135;
reg   [6:0] weights3_0_addr_17_reg_1135_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_17_reg_1135_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_17_reg_1135_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_17_reg_1135_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_17_reg_1135_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_17_reg_1140;
reg   [6:0] weights3_1_addr_17_reg_1140_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_17_reg_1140_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_17_reg_1140_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_17_reg_1140_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_17_reg_1140_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_18_reg_1145;
reg   [6:0] weights3_0_addr_18_reg_1145_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_18_reg_1145_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_18_reg_1145_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_18_reg_1145_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_18_reg_1145_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_18_reg_1150;
reg   [6:0] weights3_1_addr_18_reg_1150_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_18_reg_1150_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_18_reg_1150_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_18_reg_1150_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_18_reg_1150_pp0_iter5_reg;
reg   [6:0] lshr_ln194_7_reg_1155;
reg   [6:0] lshr_ln194_8_reg_1161;
wire   [63:0] bitcast_ln194_6_fu_740_p1;
wire   [63:0] bitcast_ln194_7_fu_745_p1;
reg   [63:0] weights3_0_load_18_reg_1176;
reg   [63:0] weights3_1_load_18_reg_1181;
reg   [6:0] weights3_0_addr_19_reg_1186;
reg   [6:0] weights3_0_addr_19_reg_1186_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_19_reg_1186_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_19_reg_1186_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_19_reg_1186_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_19_reg_1186_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_19_reg_1191;
reg   [6:0] weights3_1_addr_19_reg_1191_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_19_reg_1191_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_19_reg_1191_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_19_reg_1191_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_19_reg_1191_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_20_reg_1196;
reg   [6:0] weights3_0_addr_20_reg_1196_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_20_reg_1196_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_20_reg_1196_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_20_reg_1196_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_20_reg_1196_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_20_reg_1201;
reg   [6:0] weights3_1_addr_20_reg_1201_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_20_reg_1201_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_20_reg_1201_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_20_reg_1201_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_20_reg_1201_pp0_iter5_reg;
wire   [63:0] bitcast_ln194_4_fu_778_p1;
wire   [63:0] bitcast_ln194_5_fu_783_p1;
reg   [63:0] weights3_0_load_20_reg_1216;
reg   [63:0] weights3_1_load_20_reg_1221;
reg   [6:0] weights3_0_addr_21_reg_1226;
reg   [6:0] weights3_0_addr_21_reg_1226_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_21_reg_1226_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_21_reg_1226_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_21_reg_1226_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_21_reg_1226_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_21_reg_1231;
reg   [6:0] weights3_1_addr_21_reg_1231_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_21_reg_1231_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_21_reg_1231_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_21_reg_1231_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_21_reg_1231_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_22_reg_1236;
reg   [6:0] weights3_0_addr_22_reg_1236_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_22_reg_1236_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_22_reg_1236_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_22_reg_1236_pp0_iter4_reg;
reg   [6:0] weights3_0_addr_22_reg_1236_pp0_iter5_reg;
reg   [6:0] weights3_0_addr_22_reg_1236_pp0_iter6_reg;
reg   [6:0] weights3_1_addr_22_reg_1241;
reg   [6:0] weights3_1_addr_22_reg_1241_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_22_reg_1241_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_22_reg_1241_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_22_reg_1241_pp0_iter4_reg;
reg   [6:0] weights3_1_addr_22_reg_1241_pp0_iter5_reg;
reg   [6:0] weights3_1_addr_22_reg_1241_pp0_iter6_reg;
wire   [63:0] bitcast_ln194_8_fu_788_p1;
wire   [63:0] bitcast_ln194_9_fu_793_p1;
reg   [63:0] weights3_0_load_22_reg_1256;
reg   [63:0] weights3_1_load_22_reg_1261;
wire   [63:0] bitcast_ln194_10_fu_798_p1;
wire   [63:0] bitcast_ln194_11_fu_802_p1;
wire   [63:0] bitcast_ln194_12_fu_806_p1;
wire   [63:0] bitcast_ln194_13_fu_811_p1;
wire   [63:0] bitcast_ln194_14_fu_816_p1;
wire   [63:0] bitcast_ln194_15_fu_820_p1;
wire   [63:0] bitcast_ln194_16_fu_824_p1;
wire   [63:0] bitcast_ln194_17_fu_829_p1;
wire   [63:0] bitcast_ln194_18_fu_834_p1;
wire    ap_block_pp0_stage11_11001;
wire   [63:0] bitcast_ln194_19_fu_838_p1;
wire   [63:0] bitcast_ln194_20_fu_852_p1;
wire   [63:0] bitcast_ln194_21_fu_857_p1;
wire   [63:0] bitcast_ln194_22_fu_862_p1;
wire   [63:0] bitcast_ln194_23_fu_866_p1;
reg   [63:0] div213_1_1_reg_1336;
reg   [63:0] div213_1_2_reg_1341;
reg   [63:0] div213_2_2_reg_1346;
reg   [63:0] div213_3_reg_1351;
reg   [63:0] div213_3_1_reg_1356;
reg   [63:0] div213_3_2_reg_1361;
reg   [63:0] div213_7_1_reg_1366;
reg   [63:0] div213_7_2_reg_1371;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln194_fu_426_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln192_fu_450_p1;
wire   [63:0] zext_ln194_1_fu_491_p1;
wire   [63:0] zext_ln194_2_fu_521_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_3_fu_531_p1;
wire   [63:0] zext_ln194_4_fu_543_p1;
wire   [63:0] add_ln194_2_cast_fu_574_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln194_5_fu_579_p1;
wire   [63:0] zext_ln194_6_fu_598_p1;
wire   [63:0] zext_ln194_7_fu_608_p1;
wire   [63:0] zext_ln194_8_fu_623_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] add_ln194_6_cast_fu_634_p1;
wire   [63:0] zext_ln194_9_fu_654_p1;
wire   [63:0] zext_ln194_10_fu_684_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln194_11_fu_694_p1;
wire   [63:0] zext_ln194_12_fu_704_p1;
wire   [63:0] add_ln194_10_cast_fu_755_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln194_13_fu_760_p1;
wire   [63:0] zext_ln194_14_fu_764_p1;
wire   [63:0] zext_ln194_15_fu_773_p1;
reg   [6:0] i_fu_92;
wire   [6:0] add_ln192_fu_842_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_0_ce1_local;
reg   [6:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [6:0] weights3_0_address0_local;
reg    weights3_0_we1_local;
reg   [63:0] weights3_0_d1_local;
wire   [63:0] bitcast_ln194_24_fu_870_p1;
wire    ap_block_pp0_stage6;
reg    weights3_0_we0_local;
reg   [63:0] weights3_0_d0_local;
wire   [63:0] bitcast_ln194_25_fu_875_p1;
wire   [63:0] bitcast_ln194_26_fu_890_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln194_27_fu_894_p1;
wire   [63:0] bitcast_ln194_28_fu_908_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln194_29_fu_912_p1;
wire   [63:0] bitcast_ln194_30_fu_924_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] bitcast_ln194_31_fu_929_p1;
wire   [63:0] bitcast_ln194_32_fu_944_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] bitcast_ln194_33_fu_949_p1;
wire   [63:0] bitcast_ln194_34_fu_964_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln194_35_fu_974_p1;
reg    weights3_1_ce1_local;
reg   [6:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [6:0] weights3_1_address0_local;
reg    weights3_1_we1_local;
reg   [63:0] weights3_1_d1_local;
wire   [63:0] bitcast_ln194_36_fu_880_p1;
reg    weights3_1_we0_local;
reg   [63:0] weights3_1_d0_local;
wire   [63:0] bitcast_ln194_37_fu_885_p1;
wire   [63:0] bitcast_ln194_38_fu_899_p1;
wire   [63:0] bitcast_ln194_39_fu_903_p1;
wire   [63:0] bitcast_ln194_40_fu_916_p1;
wire   [63:0] bitcast_ln194_41_fu_920_p1;
wire   [63:0] bitcast_ln194_42_fu_934_p1;
wire   [63:0] bitcast_ln194_43_fu_939_p1;
wire   [63:0] bitcast_ln194_44_fu_954_p1;
wire   [63:0] bitcast_ln194_45_fu_959_p1;
wire   [63:0] bitcast_ln194_46_fu_969_p1;
wire   [63:0] bitcast_ln194_47_fu_978_p1;
reg   [63:0] grp_fu_312_p0;
reg   [63:0] grp_fu_316_p0;
wire   [5:0] lshr_ln7_fu_388_p4;
wire   [4:0] tmp_6_fu_402_p4;
wire   [6:0] p_shl8_fu_412_p3;
wire   [6:0] zext_ln194_16_fu_398_p1;
wire   [6:0] sub_ln194_fu_420_p2;
wire   [5:0] tmp_s_fu_432_p4;
wire   [6:0] or_ln5_fu_442_p3;
wire   [5:0] or_ln6_fu_455_p3;
wire   [7:0] p_shl_fu_467_p3;
wire   [7:0] or_ln192_cast_fu_463_p1;
wire   [7:0] add_ln194_fu_506_p2;
wire   [6:0] lshr_ln194_2_fu_511_p4;
wire   [6:0] add_ln194_1_fu_526_p2;
wire   [7:0] empty_39_fu_549_p2;
wire   [6:0] add_ln194_2_fu_569_p2;
wire   [7:0] add_ln194_3_fu_583_p2;
wire   [6:0] lshr_ln194_4_fu_588_p4;
wire   [6:0] add_ln194_4_fu_603_p2;
wire   [6:0] add_ln194_5_fu_618_p2;
wire   [6:0] add_ln194_6_fu_629_p2;
wire   [7:0] empty_40_fu_639_p2;
wire   [7:0] add_ln194_7_fu_669_p2;
wire   [6:0] lshr_ln194_6_fu_674_p4;
wire   [6:0] add_ln194_8_fu_689_p2;
wire   [6:0] add_ln194_9_fu_699_p2;
wire   [7:0] empty_41_fu_710_p2;
wire   [7:0] add_ln194_11_fu_725_p2;
wire   [6:0] add_ln194_10_fu_750_p2;
wire   [6:0] add_ln194_12_fu_768_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to6;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_92 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U288(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_312_p0),.din1(norm_44),.ce(1'b1),.dout(grp_fu_312_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U289(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_316_p0),.din1(norm_44),.ce(1'b1),.dout(grp_fu_316_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_92 <= 7'd0;
    end else if (((tmp_reg_1000 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        i_fu_92 <= add_ln192_fu_842_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_328 <= weights3_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_328 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_333 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_333 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_338 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_338 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_343 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_343 <= weights3_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div213_1_1_reg_1336 <= grp_fu_312_p2;
        div213_1_2_reg_1341 <= grp_fu_316_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div213_2_2_reg_1346 <= grp_fu_312_p2;
        div213_3_reg_1351 <= grp_fu_316_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div213_3_1_reg_1356 <= grp_fu_312_p2;
        div213_3_2_reg_1361 <= grp_fu_316_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        div213_7_1_reg_1366 <= grp_fu_312_p2;
        div213_7_2_reg_1371 <= grp_fu_316_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1009[7 : 1] <= empty_fu_475_p2[7 : 1];
        i_4_reg_995 <= ap_sig_allocacmp_i_4;
        lshr_ln194_1_reg_1020 <= {{empty_fu_475_p2[7:1]}};
        tmp_7_reg_1025 <= {{sub_ln194_fu_420_p2[6:2]}};
        tmp_reg_1000 <= ap_sig_allocacmp_i_4[32'd6];
        weights3_0_addr_12_reg_1035[6 : 1] <= zext_ln192_fu_450_p1[6 : 1];
        weights3_0_addr_12_reg_1035_pp0_iter1_reg[6 : 1] <= weights3_0_addr_12_reg_1035[6 : 1];
        weights3_0_addr_12_reg_1035_pp0_iter2_reg[6 : 1] <= weights3_0_addr_12_reg_1035_pp0_iter1_reg[6 : 1];
        weights3_0_addr_12_reg_1035_pp0_iter3_reg[6 : 1] <= weights3_0_addr_12_reg_1035_pp0_iter2_reg[6 : 1];
        weights3_0_addr_12_reg_1035_pp0_iter4_reg[6 : 1] <= weights3_0_addr_12_reg_1035_pp0_iter3_reg[6 : 1];
        weights3_0_addr_12_reg_1035_pp0_iter5_reg[6 : 1] <= weights3_0_addr_12_reg_1035_pp0_iter4_reg[6 : 1];
        weights3_0_addr_reg_1004 <= zext_ln194_fu_426_p1;
        weights3_0_addr_reg_1004_pp0_iter1_reg <= weights3_0_addr_reg_1004;
        weights3_0_addr_reg_1004_pp0_iter2_reg <= weights3_0_addr_reg_1004_pp0_iter1_reg;
        weights3_0_addr_reg_1004_pp0_iter3_reg <= weights3_0_addr_reg_1004_pp0_iter2_reg;
        weights3_0_addr_reg_1004_pp0_iter4_reg <= weights3_0_addr_reg_1004_pp0_iter3_reg;
        weights3_0_addr_reg_1004_pp0_iter5_reg <= weights3_0_addr_reg_1004_pp0_iter4_reg;
        weights3_1_addr_12_reg_1040 <= zext_ln194_1_fu_491_p1;
        weights3_1_addr_12_reg_1040_pp0_iter1_reg <= weights3_1_addr_12_reg_1040;
        weights3_1_addr_12_reg_1040_pp0_iter2_reg <= weights3_1_addr_12_reg_1040_pp0_iter1_reg;
        weights3_1_addr_12_reg_1040_pp0_iter3_reg <= weights3_1_addr_12_reg_1040_pp0_iter2_reg;
        weights3_1_addr_12_reg_1040_pp0_iter4_reg <= weights3_1_addr_12_reg_1040_pp0_iter3_reg;
        weights3_1_addr_12_reg_1040_pp0_iter5_reg <= weights3_1_addr_12_reg_1040_pp0_iter4_reg;
        weights3_1_addr_reg_1030 <= zext_ln194_fu_426_p1;
        weights3_1_addr_reg_1030_pp0_iter1_reg <= weights3_1_addr_reg_1030;
        weights3_1_addr_reg_1030_pp0_iter2_reg <= weights3_1_addr_reg_1030_pp0_iter1_reg;
        weights3_1_addr_reg_1030_pp0_iter3_reg <= weights3_1_addr_reg_1030_pp0_iter2_reg;
        weights3_1_addr_reg_1030_pp0_iter4_reg <= weights3_1_addr_reg_1030_pp0_iter3_reg;
        weights3_1_addr_reg_1030_pp0_iter5_reg <= weights3_1_addr_reg_1030_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln194_3_reg_1054 <= {{empty_39_fu_549_p2[7:1]}};
        or_ln194_1_reg_1045[6 : 2] <= or_ln194_1_fu_536_p3[6 : 2];
        weights3_0_addr_13_reg_1060 <= zext_ln194_2_fu_521_p1;
        weights3_0_addr_13_reg_1060_pp0_iter1_reg <= weights3_0_addr_13_reg_1060;
        weights3_0_addr_13_reg_1060_pp0_iter2_reg <= weights3_0_addr_13_reg_1060_pp0_iter1_reg;
        weights3_0_addr_13_reg_1060_pp0_iter3_reg <= weights3_0_addr_13_reg_1060_pp0_iter2_reg;
        weights3_0_addr_13_reg_1060_pp0_iter4_reg <= weights3_0_addr_13_reg_1060_pp0_iter3_reg;
        weights3_0_addr_13_reg_1060_pp0_iter5_reg <= weights3_0_addr_13_reg_1060_pp0_iter4_reg;
        weights3_0_addr_14_reg_1070[6 : 2] <= zext_ln194_4_fu_543_p1[6 : 2];
        weights3_0_addr_14_reg_1070_pp0_iter1_reg[6 : 2] <= weights3_0_addr_14_reg_1070[6 : 2];
        weights3_0_addr_14_reg_1070_pp0_iter2_reg[6 : 2] <= weights3_0_addr_14_reg_1070_pp0_iter1_reg[6 : 2];
        weights3_0_addr_14_reg_1070_pp0_iter3_reg[6 : 2] <= weights3_0_addr_14_reg_1070_pp0_iter2_reg[6 : 2];
        weights3_0_addr_14_reg_1070_pp0_iter4_reg[6 : 2] <= weights3_0_addr_14_reg_1070_pp0_iter3_reg[6 : 2];
        weights3_0_addr_14_reg_1070_pp0_iter5_reg[6 : 2] <= weights3_0_addr_14_reg_1070_pp0_iter4_reg[6 : 2];
        weights3_1_addr_13_reg_1065 <= zext_ln194_3_fu_531_p1;
        weights3_1_addr_13_reg_1065_pp0_iter1_reg <= weights3_1_addr_13_reg_1065;
        weights3_1_addr_13_reg_1065_pp0_iter2_reg <= weights3_1_addr_13_reg_1065_pp0_iter1_reg;
        weights3_1_addr_13_reg_1065_pp0_iter3_reg <= weights3_1_addr_13_reg_1065_pp0_iter2_reg;
        weights3_1_addr_13_reg_1065_pp0_iter4_reg <= weights3_1_addr_13_reg_1065_pp0_iter3_reg;
        weights3_1_addr_13_reg_1065_pp0_iter5_reg <= weights3_1_addr_13_reg_1065_pp0_iter4_reg;
        weights3_1_addr_14_reg_1075[6 : 2] <= zext_ln194_4_fu_543_p1[6 : 2];
        weights3_1_addr_14_reg_1075_pp0_iter1_reg[6 : 2] <= weights3_1_addr_14_reg_1075[6 : 2];
        weights3_1_addr_14_reg_1075_pp0_iter2_reg[6 : 2] <= weights3_1_addr_14_reg_1075_pp0_iter1_reg[6 : 2];
        weights3_1_addr_14_reg_1075_pp0_iter3_reg[6 : 2] <= weights3_1_addr_14_reg_1075_pp0_iter2_reg[6 : 2];
        weights3_1_addr_14_reg_1075_pp0_iter4_reg[6 : 2] <= weights3_1_addr_14_reg_1075_pp0_iter3_reg[6 : 2];
        weights3_1_addr_14_reg_1075_pp0_iter5_reg[6 : 2] <= weights3_1_addr_14_reg_1075_pp0_iter4_reg[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln194_5_reg_1110 <= {{empty_40_fu_639_p2[7:1]}};
        weights3_0_addr_17_reg_1135[6 : 2] <= zext_ln194_8_fu_623_p1[6 : 2];
        weights3_0_addr_17_reg_1135_pp0_iter1_reg[6 : 2] <= weights3_0_addr_17_reg_1135[6 : 2];
        weights3_0_addr_17_reg_1135_pp0_iter2_reg[6 : 2] <= weights3_0_addr_17_reg_1135_pp0_iter1_reg[6 : 2];
        weights3_0_addr_17_reg_1135_pp0_iter3_reg[6 : 2] <= weights3_0_addr_17_reg_1135_pp0_iter2_reg[6 : 2];
        weights3_0_addr_17_reg_1135_pp0_iter4_reg[6 : 2] <= weights3_0_addr_17_reg_1135_pp0_iter3_reg[6 : 2];
        weights3_0_addr_17_reg_1135_pp0_iter5_reg[6 : 2] <= weights3_0_addr_17_reg_1135_pp0_iter4_reg[6 : 2];
        weights3_0_addr_18_reg_1145[6 : 2] <= add_ln194_6_cast_fu_634_p1[6 : 2];
        weights3_0_addr_18_reg_1145_pp0_iter1_reg[6 : 2] <= weights3_0_addr_18_reg_1145[6 : 2];
        weights3_0_addr_18_reg_1145_pp0_iter2_reg[6 : 2] <= weights3_0_addr_18_reg_1145_pp0_iter1_reg[6 : 2];
        weights3_0_addr_18_reg_1145_pp0_iter3_reg[6 : 2] <= weights3_0_addr_18_reg_1145_pp0_iter2_reg[6 : 2];
        weights3_0_addr_18_reg_1145_pp0_iter4_reg[6 : 2] <= weights3_0_addr_18_reg_1145_pp0_iter3_reg[6 : 2];
        weights3_0_addr_18_reg_1145_pp0_iter5_reg[6 : 2] <= weights3_0_addr_18_reg_1145_pp0_iter4_reg[6 : 2];
        weights3_1_addr_17_reg_1140[6 : 2] <= zext_ln194_8_fu_623_p1[6 : 2];
        weights3_1_addr_17_reg_1140_pp0_iter1_reg[6 : 2] <= weights3_1_addr_17_reg_1140[6 : 2];
        weights3_1_addr_17_reg_1140_pp0_iter2_reg[6 : 2] <= weights3_1_addr_17_reg_1140_pp0_iter1_reg[6 : 2];
        weights3_1_addr_17_reg_1140_pp0_iter3_reg[6 : 2] <= weights3_1_addr_17_reg_1140_pp0_iter2_reg[6 : 2];
        weights3_1_addr_17_reg_1140_pp0_iter4_reg[6 : 2] <= weights3_1_addr_17_reg_1140_pp0_iter3_reg[6 : 2];
        weights3_1_addr_17_reg_1140_pp0_iter5_reg[6 : 2] <= weights3_1_addr_17_reg_1140_pp0_iter4_reg[6 : 2];
        weights3_1_addr_18_reg_1150 <= zext_ln194_9_fu_654_p1;
        weights3_1_addr_18_reg_1150_pp0_iter1_reg <= weights3_1_addr_18_reg_1150;
        weights3_1_addr_18_reg_1150_pp0_iter2_reg <= weights3_1_addr_18_reg_1150_pp0_iter1_reg;
        weights3_1_addr_18_reg_1150_pp0_iter3_reg <= weights3_1_addr_18_reg_1150_pp0_iter2_reg;
        weights3_1_addr_18_reg_1150_pp0_iter4_reg <= weights3_1_addr_18_reg_1150_pp0_iter3_reg;
        weights3_1_addr_18_reg_1150_pp0_iter5_reg <= weights3_1_addr_18_reg_1150_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln194_7_reg_1155 <= {{empty_41_fu_710_p2[7:1]}};
        lshr_ln194_8_reg_1161 <= {{add_ln194_11_fu_725_p2[7:1]}};
        weights3_0_addr_19_reg_1186 <= zext_ln194_10_fu_684_p1;
        weights3_0_addr_19_reg_1186_pp0_iter1_reg <= weights3_0_addr_19_reg_1186;
        weights3_0_addr_19_reg_1186_pp0_iter2_reg <= weights3_0_addr_19_reg_1186_pp0_iter1_reg;
        weights3_0_addr_19_reg_1186_pp0_iter3_reg <= weights3_0_addr_19_reg_1186_pp0_iter2_reg;
        weights3_0_addr_19_reg_1186_pp0_iter4_reg <= weights3_0_addr_19_reg_1186_pp0_iter3_reg;
        weights3_0_addr_19_reg_1186_pp0_iter5_reg <= weights3_0_addr_19_reg_1186_pp0_iter4_reg;
        weights3_0_addr_20_reg_1196[6 : 2] <= zext_ln194_12_fu_704_p1[6 : 2];
        weights3_0_addr_20_reg_1196_pp0_iter1_reg[6 : 2] <= weights3_0_addr_20_reg_1196[6 : 2];
        weights3_0_addr_20_reg_1196_pp0_iter2_reg[6 : 2] <= weights3_0_addr_20_reg_1196_pp0_iter1_reg[6 : 2];
        weights3_0_addr_20_reg_1196_pp0_iter3_reg[6 : 2] <= weights3_0_addr_20_reg_1196_pp0_iter2_reg[6 : 2];
        weights3_0_addr_20_reg_1196_pp0_iter4_reg[6 : 2] <= weights3_0_addr_20_reg_1196_pp0_iter3_reg[6 : 2];
        weights3_0_addr_20_reg_1196_pp0_iter5_reg[6 : 2] <= weights3_0_addr_20_reg_1196_pp0_iter4_reg[6 : 2];
        weights3_1_addr_19_reg_1191 <= zext_ln194_11_fu_694_p1;
        weights3_1_addr_19_reg_1191_pp0_iter1_reg <= weights3_1_addr_19_reg_1191;
        weights3_1_addr_19_reg_1191_pp0_iter2_reg <= weights3_1_addr_19_reg_1191_pp0_iter1_reg;
        weights3_1_addr_19_reg_1191_pp0_iter3_reg <= weights3_1_addr_19_reg_1191_pp0_iter2_reg;
        weights3_1_addr_19_reg_1191_pp0_iter4_reg <= weights3_1_addr_19_reg_1191_pp0_iter3_reg;
        weights3_1_addr_19_reg_1191_pp0_iter5_reg <= weights3_1_addr_19_reg_1191_pp0_iter4_reg;
        weights3_1_addr_20_reg_1201[6 : 2] <= zext_ln194_12_fu_704_p1[6 : 2];
        weights3_1_addr_20_reg_1201_pp0_iter1_reg[6 : 2] <= weights3_1_addr_20_reg_1201[6 : 2];
        weights3_1_addr_20_reg_1201_pp0_iter2_reg[6 : 2] <= weights3_1_addr_20_reg_1201_pp0_iter1_reg[6 : 2];
        weights3_1_addr_20_reg_1201_pp0_iter3_reg[6 : 2] <= weights3_1_addr_20_reg_1201_pp0_iter2_reg[6 : 2];
        weights3_1_addr_20_reg_1201_pp0_iter4_reg[6 : 2] <= weights3_1_addr_20_reg_1201_pp0_iter3_reg[6 : 2];
        weights3_1_addr_20_reg_1201_pp0_iter5_reg[6 : 2] <= weights3_1_addr_20_reg_1201_pp0_iter4_reg[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_320 <= weights3_0_q1;
        reg_324 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_348 <= grp_fu_312_p2;
        reg_352 <= grp_fu_316_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_356 <= grp_fu_312_p2;
        reg_360 <= grp_fu_316_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_364 <= grp_fu_312_p2;
        reg_368 <= grp_fu_316_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_addr_15_reg_1090[6 : 2] <= add_ln194_2_cast_fu_574_p1[6 : 2];
        weights3_0_addr_15_reg_1090_pp0_iter1_reg[6 : 2] <= weights3_0_addr_15_reg_1090[6 : 2];
        weights3_0_addr_15_reg_1090_pp0_iter2_reg[6 : 2] <= weights3_0_addr_15_reg_1090_pp0_iter1_reg[6 : 2];
        weights3_0_addr_15_reg_1090_pp0_iter3_reg[6 : 2] <= weights3_0_addr_15_reg_1090_pp0_iter2_reg[6 : 2];
        weights3_0_addr_15_reg_1090_pp0_iter4_reg[6 : 2] <= weights3_0_addr_15_reg_1090_pp0_iter3_reg[6 : 2];
        weights3_0_addr_15_reg_1090_pp0_iter5_reg[6 : 2] <= weights3_0_addr_15_reg_1090_pp0_iter4_reg[6 : 2];
        weights3_0_addr_16_reg_1100 <= zext_ln194_6_fu_598_p1;
        weights3_0_addr_16_reg_1100_pp0_iter1_reg <= weights3_0_addr_16_reg_1100;
        weights3_0_addr_16_reg_1100_pp0_iter2_reg <= weights3_0_addr_16_reg_1100_pp0_iter1_reg;
        weights3_0_addr_16_reg_1100_pp0_iter3_reg <= weights3_0_addr_16_reg_1100_pp0_iter2_reg;
        weights3_0_addr_16_reg_1100_pp0_iter4_reg <= weights3_0_addr_16_reg_1100_pp0_iter3_reg;
        weights3_0_addr_16_reg_1100_pp0_iter5_reg <= weights3_0_addr_16_reg_1100_pp0_iter4_reg;
        weights3_1_addr_15_reg_1095 <= zext_ln194_5_fu_579_p1;
        weights3_1_addr_15_reg_1095_pp0_iter1_reg <= weights3_1_addr_15_reg_1095;
        weights3_1_addr_15_reg_1095_pp0_iter2_reg <= weights3_1_addr_15_reg_1095_pp0_iter1_reg;
        weights3_1_addr_15_reg_1095_pp0_iter3_reg <= weights3_1_addr_15_reg_1095_pp0_iter2_reg;
        weights3_1_addr_15_reg_1095_pp0_iter4_reg <= weights3_1_addr_15_reg_1095_pp0_iter3_reg;
        weights3_1_addr_15_reg_1095_pp0_iter5_reg <= weights3_1_addr_15_reg_1095_pp0_iter4_reg;
        weights3_1_addr_16_reg_1105 <= zext_ln194_7_fu_608_p1;
        weights3_1_addr_16_reg_1105_pp0_iter1_reg <= weights3_1_addr_16_reg_1105;
        weights3_1_addr_16_reg_1105_pp0_iter2_reg <= weights3_1_addr_16_reg_1105_pp0_iter1_reg;
        weights3_1_addr_16_reg_1105_pp0_iter3_reg <= weights3_1_addr_16_reg_1105_pp0_iter2_reg;
        weights3_1_addr_16_reg_1105_pp0_iter4_reg <= weights3_1_addr_16_reg_1105_pp0_iter3_reg;
        weights3_1_addr_16_reg_1105_pp0_iter5_reg <= weights3_1_addr_16_reg_1105_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_addr_21_reg_1226[6 : 2] <= add_ln194_10_cast_fu_755_p1[6 : 2];
        weights3_0_addr_21_reg_1226_pp0_iter1_reg[6 : 2] <= weights3_0_addr_21_reg_1226[6 : 2];
        weights3_0_addr_21_reg_1226_pp0_iter2_reg[6 : 2] <= weights3_0_addr_21_reg_1226_pp0_iter1_reg[6 : 2];
        weights3_0_addr_21_reg_1226_pp0_iter3_reg[6 : 2] <= weights3_0_addr_21_reg_1226_pp0_iter2_reg[6 : 2];
        weights3_0_addr_21_reg_1226_pp0_iter4_reg[6 : 2] <= weights3_0_addr_21_reg_1226_pp0_iter3_reg[6 : 2];
        weights3_0_addr_21_reg_1226_pp0_iter5_reg[6 : 2] <= weights3_0_addr_21_reg_1226_pp0_iter4_reg[6 : 2];
        weights3_0_addr_22_reg_1236 <= zext_ln194_14_fu_764_p1;
        weights3_0_addr_22_reg_1236_pp0_iter1_reg <= weights3_0_addr_22_reg_1236;
        weights3_0_addr_22_reg_1236_pp0_iter2_reg <= weights3_0_addr_22_reg_1236_pp0_iter1_reg;
        weights3_0_addr_22_reg_1236_pp0_iter3_reg <= weights3_0_addr_22_reg_1236_pp0_iter2_reg;
        weights3_0_addr_22_reg_1236_pp0_iter4_reg <= weights3_0_addr_22_reg_1236_pp0_iter3_reg;
        weights3_0_addr_22_reg_1236_pp0_iter5_reg <= weights3_0_addr_22_reg_1236_pp0_iter4_reg;
        weights3_0_addr_22_reg_1236_pp0_iter6_reg <= weights3_0_addr_22_reg_1236_pp0_iter5_reg;
        weights3_1_addr_21_reg_1231 <= zext_ln194_13_fu_760_p1;
        weights3_1_addr_21_reg_1231_pp0_iter1_reg <= weights3_1_addr_21_reg_1231;
        weights3_1_addr_21_reg_1231_pp0_iter2_reg <= weights3_1_addr_21_reg_1231_pp0_iter1_reg;
        weights3_1_addr_21_reg_1231_pp0_iter3_reg <= weights3_1_addr_21_reg_1231_pp0_iter2_reg;
        weights3_1_addr_21_reg_1231_pp0_iter4_reg <= weights3_1_addr_21_reg_1231_pp0_iter3_reg;
        weights3_1_addr_21_reg_1231_pp0_iter5_reg <= weights3_1_addr_21_reg_1231_pp0_iter4_reg;
        weights3_1_addr_22_reg_1241 <= zext_ln194_15_fu_773_p1;
        weights3_1_addr_22_reg_1241_pp0_iter1_reg <= weights3_1_addr_22_reg_1241;
        weights3_1_addr_22_reg_1241_pp0_iter2_reg <= weights3_1_addr_22_reg_1241_pp0_iter1_reg;
        weights3_1_addr_22_reg_1241_pp0_iter3_reg <= weights3_1_addr_22_reg_1241_pp0_iter2_reg;
        weights3_1_addr_22_reg_1241_pp0_iter4_reg <= weights3_1_addr_22_reg_1241_pp0_iter3_reg;
        weights3_1_addr_22_reg_1241_pp0_iter5_reg <= weights3_1_addr_22_reg_1241_pp0_iter4_reg;
        weights3_1_addr_22_reg_1241_pp0_iter6_reg <= weights3_1_addr_22_reg_1241_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_load_16_reg_1125 <= weights3_0_q0;
        weights3_1_load_16_reg_1130 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_load_18_reg_1176 <= weights3_0_q0;
        weights3_1_load_18_reg_1181 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_load_20_reg_1216 <= weights3_0_q0;
        weights3_1_load_20_reg_1221 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_load_22_reg_1256 <= weights3_0_q0;
        weights3_1_load_22_reg_1261 <= weights3_1_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_1000 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_312_p0 = bitcast_ln194_22_fu_862_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_312_p0 = bitcast_ln194_20_fu_852_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_312_p0 = bitcast_ln194_18_fu_834_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_312_p0 = bitcast_ln194_16_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_312_p0 = bitcast_ln194_14_fu_816_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_312_p0 = bitcast_ln194_12_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_312_p0 = bitcast_ln194_10_fu_798_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_312_p0 = bitcast_ln194_8_fu_788_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_312_p0 = bitcast_ln194_4_fu_778_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_312_p0 = bitcast_ln194_6_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_312_p0 = bitcast_ln194_2_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_312_p0 = bitcast_ln194_fu_564_p1;
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_316_p0 = bitcast_ln194_23_fu_866_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_316_p0 = bitcast_ln194_21_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_316_p0 = bitcast_ln194_19_fu_838_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_316_p0 = bitcast_ln194_17_fu_829_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_316_p0 = bitcast_ln194_15_fu_820_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_316_p0 = bitcast_ln194_13_fu_811_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_316_p0 = bitcast_ln194_11_fu_802_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_316_p0 = bitcast_ln194_9_fu_793_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_316_p0 = bitcast_ln194_5_fu_783_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_316_p0 = bitcast_ln194_7_fu_745_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_316_p0 = bitcast_ln194_3_fu_664_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_316_p0 = bitcast_ln194_1_fu_613_p1;
    end else begin
        grp_fu_316_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_address0_local = weights3_0_addr_22_reg_1236_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_address0_local = weights3_0_addr_20_reg_1196_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_address0_local = weights3_0_addr_18_reg_1145_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_address0_local = weights3_0_addr_16_reg_1100_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_address0_local = weights3_0_addr_14_reg_1070_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_address0_local = weights3_0_addr_12_reg_1035_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address0_local = zext_ln194_14_fu_764_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address0_local = zext_ln194_12_fu_704_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address0_local = add_ln194_6_cast_fu_634_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address0_local = zext_ln194_6_fu_598_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = zext_ln194_4_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address0_local = zext_ln192_fu_450_p1;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_address1_local = weights3_0_addr_21_reg_1226_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_address1_local = weights3_0_addr_19_reg_1186_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_address1_local = weights3_0_addr_17_reg_1135_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_address1_local = weights3_0_addr_15_reg_1090_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_address1_local = weights3_0_addr_13_reg_1060_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_address1_local = weights3_0_addr_reg_1004_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address1_local = add_ln194_10_cast_fu_755_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address1_local = zext_ln194_10_fu_684_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address1_local = zext_ln194_8_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address1_local = add_ln194_2_cast_fu_574_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address1_local = zext_ln194_2_fu_521_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address1_local = zext_ln194_fu_426_p1;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_d0_local = bitcast_ln194_35_fu_974_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_d0_local = bitcast_ln194_33_fu_949_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_d0_local = bitcast_ln194_31_fu_929_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_d0_local = bitcast_ln194_29_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_d0_local = bitcast_ln194_27_fu_894_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_d0_local = bitcast_ln194_25_fu_875_p1;
    end else begin
        weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_0_d1_local = bitcast_ln194_34_fu_964_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_0_d1_local = bitcast_ln194_32_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_0_d1_local = bitcast_ln194_30_fu_924_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_0_d1_local = bitcast_ln194_28_fu_908_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_0_d1_local = bitcast_ln194_26_fu_890_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_0_d1_local = bitcast_ln194_24_fu_870_p1;
        end else begin
            weights3_0_d1_local = 'bx;
        end
    end else begin
        weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_address0_local = weights3_1_addr_22_reg_1241_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_address0_local = weights3_1_addr_20_reg_1201_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_address0_local = weights3_1_addr_18_reg_1150_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_address0_local = weights3_1_addr_16_reg_1105_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_address0_local = weights3_1_addr_14_reg_1075_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_address0_local = weights3_1_addr_12_reg_1040_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address0_local = zext_ln194_15_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address0_local = zext_ln194_12_fu_704_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address0_local = zext_ln194_9_fu_654_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address0_local = zext_ln194_7_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = zext_ln194_4_fu_543_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address0_local = zext_ln194_1_fu_491_p1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_address1_local = weights3_1_addr_21_reg_1231_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_address1_local = weights3_1_addr_19_reg_1191_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_address1_local = weights3_1_addr_17_reg_1140_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_address1_local = weights3_1_addr_15_reg_1095_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_address1_local = weights3_1_addr_13_reg_1065_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_address1_local = weights3_1_addr_reg_1030_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address1_local = zext_ln194_13_fu_760_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address1_local = zext_ln194_11_fu_694_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address1_local = zext_ln194_8_fu_623_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address1_local = zext_ln194_5_fu_579_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address1_local = zext_ln194_3_fu_531_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address1_local = zext_ln194_fu_426_p1;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) &(ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_d0_local = bitcast_ln194_47_fu_978_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_d0_local = bitcast_ln194_45_fu_959_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_d0_local = bitcast_ln194_43_fu_939_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_d0_local = bitcast_ln194_41_fu_920_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_d0_local = bitcast_ln194_39_fu_903_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_d0_local = bitcast_ln194_37_fu_885_p1;
    end else begin
        weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            weights3_1_d1_local = bitcast_ln194_46_fu_969_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            weights3_1_d1_local = bitcast_ln194_44_fu_954_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            weights3_1_d1_local = bitcast_ln194_42_fu_934_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            weights3_1_d1_local = bitcast_ln194_40_fu_916_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            weights3_1_d1_local = bitcast_ln194_38_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights3_1_d1_local = bitcast_ln194_36_fu_880_p1;
        end else begin
            weights3_1_d1_local = 'bx;
        end
    end else begin
        weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln192_fu_842_p2 = (i_4_reg_995 + 7'd8);
assign add_ln194_10_cast_fu_755_p1 = add_ln194_10_fu_750_p2;
assign add_ln194_10_fu_750_p2 = (or_ln194_1_reg_1045 + 7'd7);
assign add_ln194_11_fu_725_p2 = (empty_reg_1009 + 8'd19);
assign add_ln194_12_fu_768_p2 = (lshr_ln194_7_reg_1155 + 7'd1);
assign add_ln194_1_fu_526_p2 = (lshr_ln194_1_reg_1020 + 7'd1);
assign add_ln194_2_cast_fu_574_p1 = add_ln194_2_fu_569_p2;
assign add_ln194_2_fu_569_p2 = (or_ln194_1_reg_1045 + 7'd1);
assign add_ln194_3_fu_583_p2 = (empty_reg_1009 + 8'd7);
assign add_ln194_4_fu_603_p2 = (lshr_ln194_3_reg_1054 + 7'd1);
assign add_ln194_5_fu_618_p2 = (or_ln194_1_reg_1045 + 7'd3);
assign add_ln194_6_cast_fu_634_p1 = add_ln194_6_fu_629_p2;
assign add_ln194_6_fu_629_p2 = (or_ln194_1_reg_1045 + 7'd4);
assign add_ln194_7_fu_669_p2 = (empty_reg_1009 + 8'd13);
assign add_ln194_8_fu_689_p2 = (lshr_ln194_5_reg_1110 + 7'd1);
assign add_ln194_9_fu_699_p2 = (or_ln194_1_reg_1045 + 7'd6);
assign add_ln194_fu_506_p2 = (empty_reg_1009 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign bitcast_ln194_10_fu_798_p1 = weights3_0_load_16_reg_1125;
assign bitcast_ln194_11_fu_802_p1 = weights3_1_load_16_reg_1130;
assign bitcast_ln194_12_fu_806_p1 = reg_338;
assign bitcast_ln194_13_fu_811_p1 = reg_343;
assign bitcast_ln194_14_fu_816_p1 = weights3_0_load_18_reg_1176;
assign bitcast_ln194_15_fu_820_p1 = weights3_1_load_18_reg_1181;
assign bitcast_ln194_16_fu_824_p1 = reg_320;
assign bitcast_ln194_17_fu_829_p1 = reg_324;
assign bitcast_ln194_18_fu_834_p1 = weights3_0_load_20_reg_1216;
assign bitcast_ln194_19_fu_838_p1 = weights3_1_load_20_reg_1221;
assign bitcast_ln194_1_fu_613_p1 = reg_324;
assign bitcast_ln194_20_fu_852_p1 = reg_328;
assign bitcast_ln194_21_fu_857_p1 = reg_333;
assign bitcast_ln194_22_fu_862_p1 = weights3_0_load_22_reg_1256;
assign bitcast_ln194_23_fu_866_p1 = weights3_1_load_22_reg_1261;
assign bitcast_ln194_24_fu_870_p1 = reg_348;
assign bitcast_ln194_25_fu_875_p1 = reg_356;
assign bitcast_ln194_26_fu_890_p1 = div213_1_1_reg_1336;
assign bitcast_ln194_27_fu_894_p1 = reg_364;
assign bitcast_ln194_28_fu_908_p1 = div213_2_2_reg_1346;
assign bitcast_ln194_29_fu_912_p1 = div213_3_1_reg_1356;
assign bitcast_ln194_2_fu_659_p1 = reg_328;
assign bitcast_ln194_30_fu_924_p1 = reg_348;
assign bitcast_ln194_31_fu_929_p1 = reg_356;
assign bitcast_ln194_32_fu_944_p1 = reg_364;
assign bitcast_ln194_33_fu_949_p1 = reg_348;
assign bitcast_ln194_34_fu_964_p1 = reg_348;
assign bitcast_ln194_35_fu_974_p1 = div213_7_1_reg_1366;
assign bitcast_ln194_36_fu_880_p1 = reg_352;
assign bitcast_ln194_37_fu_885_p1 = reg_360;
assign bitcast_ln194_38_fu_899_p1 = div213_1_2_reg_1341;
assign bitcast_ln194_39_fu_903_p1 = reg_368;
assign bitcast_ln194_3_fu_664_p1 = reg_333;
assign bitcast_ln194_40_fu_916_p1 = div213_3_reg_1351;
assign bitcast_ln194_41_fu_920_p1 = div213_3_2_reg_1361;
assign bitcast_ln194_42_fu_934_p1 = reg_352;
assign bitcast_ln194_43_fu_939_p1 = reg_360;
assign bitcast_ln194_44_fu_954_p1 = reg_368;
assign bitcast_ln194_45_fu_959_p1 = reg_352;
assign bitcast_ln194_46_fu_969_p1 = reg_352;
assign bitcast_ln194_47_fu_978_p1 = div213_7_2_reg_1371;
assign bitcast_ln194_4_fu_778_p1 = reg_320;
assign bitcast_ln194_5_fu_783_p1 = reg_324;
assign bitcast_ln194_6_fu_740_p1 = reg_338;
assign bitcast_ln194_7_fu_745_p1 = reg_343;
assign bitcast_ln194_8_fu_788_p1 = reg_328;
assign bitcast_ln194_9_fu_793_p1 = reg_333;
assign bitcast_ln194_fu_564_p1 = reg_320;
assign empty_39_fu_549_p2 = (empty_reg_1009 + 8'd6);
assign empty_40_fu_639_p2 = (empty_reg_1009 + 8'd12);
assign empty_41_fu_710_p2 = (empty_reg_1009 + 8'd18);
assign empty_fu_475_p2 = (p_shl_fu_467_p3 - or_ln192_cast_fu_463_p1);
assign lshr_ln194_1_fu_481_p4 = {{empty_fu_475_p2[7:1]}};
assign lshr_ln194_2_fu_511_p4 = {{add_ln194_fu_506_p2[7:1]}};
assign lshr_ln194_4_fu_588_p4 = {{add_ln194_3_fu_583_p2[7:1]}};
assign lshr_ln194_5_fu_644_p4 = {{empty_40_fu_639_p2[7:1]}};
assign lshr_ln194_6_fu_674_p4 = {{add_ln194_7_fu_669_p2[7:1]}};
assign lshr_ln7_fu_388_p4 = {{ap_sig_allocacmp_i_4[6:1]}};
assign or_ln192_cast_fu_463_p1 = or_ln6_fu_455_p3;
assign or_ln194_1_fu_536_p3 = {{tmp_7_reg_1025}, {2'd3}};
assign or_ln5_fu_442_p3 = {{tmp_s_fu_432_p4}, {1'd1}};
assign or_ln6_fu_455_p3 = {{tmp_6_fu_402_p4}, {1'd1}};
assign p_shl8_fu_412_p3 = {{tmp_6_fu_402_p4}, {2'd0}};
assign p_shl_fu_467_p3 = {{tmp_6_fu_402_p4}, {3'd4}};
assign sub_ln194_fu_420_p2 = (p_shl8_fu_412_p3 - zext_ln194_16_fu_398_p1);
assign tmp_6_fu_402_p4 = {{ap_sig_allocacmp_i_4[5:1]}};
assign tmp_s_fu_432_p4 = {{sub_ln194_fu_420_p2[6:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_0_d0 = weights3_0_d0_local;
assign weights3_0_d1 = weights3_0_d1_local;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_0_we1 = weights3_0_we1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_1_d0 = weights3_1_d0_local;
assign weights3_1_d1 = weights3_1_d1_local;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_1_we1 = weights3_1_we1_local;
assign zext_ln192_fu_450_p1 = or_ln5_fu_442_p3;
assign zext_ln194_10_fu_684_p1 = lshr_ln194_6_fu_674_p4;
assign zext_ln194_11_fu_694_p1 = add_ln194_8_fu_689_p2;
assign zext_ln194_12_fu_704_p1 = add_ln194_9_fu_699_p2;
assign zext_ln194_13_fu_760_p1 = lshr_ln194_7_reg_1155;
assign zext_ln194_14_fu_764_p1 = lshr_ln194_8_reg_1161;
assign zext_ln194_15_fu_773_p1 = add_ln194_12_fu_768_p2;
assign zext_ln194_16_fu_398_p1 = lshr_ln7_fu_388_p4;
assign zext_ln194_1_fu_491_p1 = lshr_ln194_1_fu_481_p4;
assign zext_ln194_2_fu_521_p1 = lshr_ln194_2_fu_511_p4;
assign zext_ln194_3_fu_531_p1 = add_ln194_1_fu_526_p2;
assign zext_ln194_4_fu_543_p1 = or_ln194_1_fu_536_p3;
assign zext_ln194_5_fu_579_p1 = lshr_ln194_3_reg_1054;
assign zext_ln194_6_fu_598_p1 = lshr_ln194_4_fu_588_p4;
assign zext_ln194_7_fu_608_p1 = add_ln194_4_fu_603_p2;
assign zext_ln194_8_fu_623_p1 = add_ln194_5_fu_618_p2;
assign zext_ln194_9_fu_654_p1 = lshr_ln194_5_fu_644_p4;
assign zext_ln194_fu_426_p1 = sub_ln194_fu_420_p2;
always @ (posedge ap_clk) begin
    empty_reg_1009[0] <= 1'b1;
    weights3_0_addr_12_reg_1035[0] <= 1'b1;
    weights3_0_addr_12_reg_1035_pp0_iter1_reg[0] <= 1'b1;
    weights3_0_addr_12_reg_1035_pp0_iter2_reg[0] <= 1'b1;
    weights3_0_addr_12_reg_1035_pp0_iter3_reg[0] <= 1'b1;
    weights3_0_addr_12_reg_1035_pp0_iter4_reg[0] <= 1'b1;
    weights3_0_addr_12_reg_1035_pp0_iter5_reg[0] <= 1'b1;
    or_ln194_1_reg_1045[1:0] <= 2'b11;
    weights3_0_addr_14_reg_1070[1:0] <= 2'b11;
    weights3_0_addr_14_reg_1070_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_1070_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_1070_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_1070_pp0_iter4_reg[1:0] <= 2'b11;
    weights3_0_addr_14_reg_1070_pp0_iter5_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_1075[1:0] <= 2'b11;
    weights3_1_addr_14_reg_1075_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_1075_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_1075_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_1075_pp0_iter4_reg[1:0] <= 2'b11;
    weights3_1_addr_14_reg_1075_pp0_iter5_reg[1:0] <= 2'b11;
    weights3_0_addr_15_reg_1090[1:0] <= 2'b00;
    weights3_0_addr_15_reg_1090_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_0_addr_15_reg_1090_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_0_addr_15_reg_1090_pp0_iter3_reg[1:0] <= 2'b00;
    weights3_0_addr_15_reg_1090_pp0_iter4_reg[1:0] <= 2'b00;
    weights3_0_addr_15_reg_1090_pp0_iter5_reg[1:0] <= 2'b00;
    weights3_0_addr_17_reg_1135[1:0] <= 2'b10;
    weights3_0_addr_17_reg_1135_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_0_addr_17_reg_1135_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_0_addr_17_reg_1135_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_0_addr_17_reg_1135_pp0_iter4_reg[1:0] <= 2'b10;
    weights3_0_addr_17_reg_1135_pp0_iter5_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_1140[1:0] <= 2'b10;
    weights3_1_addr_17_reg_1140_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_1140_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_1140_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_1140_pp0_iter4_reg[1:0] <= 2'b10;
    weights3_1_addr_17_reg_1140_pp0_iter5_reg[1:0] <= 2'b10;
    weights3_0_addr_18_reg_1145[1:0] <= 2'b11;
    weights3_0_addr_18_reg_1145_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_0_addr_18_reg_1145_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_0_addr_18_reg_1145_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_0_addr_18_reg_1145_pp0_iter4_reg[1:0] <= 2'b11;
    weights3_0_addr_18_reg_1145_pp0_iter5_reg[1:0] <= 2'b11;
    weights3_0_addr_20_reg_1196[1:0] <= 2'b01;
    weights3_0_addr_20_reg_1196_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_0_addr_20_reg_1196_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_0_addr_20_reg_1196_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_0_addr_20_reg_1196_pp0_iter4_reg[1:0] <= 2'b01;
    weights3_0_addr_20_reg_1196_pp0_iter5_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_1201[1:0] <= 2'b01;
    weights3_1_addr_20_reg_1201_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_1201_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_1201_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_1201_pp0_iter4_reg[1:0] <= 2'b01;
    weights3_1_addr_20_reg_1201_pp0_iter5_reg[1:0] <= 2'b01;
    weights3_0_addr_21_reg_1226[1:0] <= 2'b10;
    weights3_0_addr_21_reg_1226_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_0_addr_21_reg_1226_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_0_addr_21_reg_1226_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_0_addr_21_reg_1226_pp0_iter4_reg[1:0] <= 2'b10;
    weights3_0_addr_21_reg_1226_pp0_iter5_reg[1:0] <= 2'b10;
end
endmodule 