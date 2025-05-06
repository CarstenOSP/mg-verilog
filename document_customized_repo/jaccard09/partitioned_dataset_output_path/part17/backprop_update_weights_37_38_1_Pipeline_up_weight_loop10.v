
module backprop_update_weights_37_38_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_3_address0,weights3_3_ce0,weights3_3_we0,weights3_3_d0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_we1,weights3_3_d1,weights3_3_q1,weights3_2_address0,weights3_2_ce0,weights3_2_we0,weights3_2_d0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_we1,weights3_2_d1,weights3_2_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,norm_44);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] weights3_3_address0;
output   weights3_3_ce0;
output   weights3_3_we0;
output  [63:0] weights3_3_d0;
input  [63:0] weights3_3_q0;
output  [5:0] weights3_3_address1;
output   weights3_3_ce1;
output   weights3_3_we1;
output  [63:0] weights3_3_d1;
input  [63:0] weights3_3_q1;
output  [5:0] weights3_2_address0;
output   weights3_2_ce0;
output   weights3_2_we0;
output  [63:0] weights3_2_d0;
input  [63:0] weights3_2_q0;
output  [5:0] weights3_2_address1;
output   weights3_2_ce1;
output   weights3_2_we1;
output  [63:0] weights3_2_d1;
input  [63:0] weights3_2_q1;
output  [5:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [5:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [5:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [5:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
input  [63:0] norm_44;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] tmp_reg_1016;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_346;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_350;
reg   [63:0] reg_354;
reg   [63:0] reg_358;
reg   [63:0] reg_362;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_367;
reg   [63:0] reg_372;
reg   [63:0] reg_377;
wire   [63:0] grp_fu_330_p2;
reg   [63:0] reg_382;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] grp_fu_334_p2;
reg   [63:0] reg_386;
wire   [63:0] grp_fu_338_p2;
reg   [63:0] reg_390;
wire   [63:0] grp_fu_342_p2;
reg   [63:0] reg_394;
reg   [63:0] reg_398;
reg   [63:0] reg_402;
reg   [63:0] reg_406;
reg   [63:0] reg_410;
reg   [6:0] i_4_reg_1011;
reg   [0:0] tmp_reg_1016_pp0_iter1_reg;
reg   [0:0] tmp_reg_1016_pp0_iter2_reg;
reg   [0:0] tmp_reg_1016_pp0_iter3_reg;
reg   [0:0] tmp_reg_1016_pp0_iter4_reg;
reg   [0:0] tmp_reg_1016_pp0_iter5_reg;
reg   [0:0] tmp_reg_1016_pp0_iter6_reg;
reg   [0:0] tmp_reg_1016_pp0_iter7_reg;
reg   [0:0] tmp_reg_1016_pp0_iter8_reg;
reg   [0:0] tmp_reg_1016_pp0_iter9_reg;
wire   [5:0] sub_ln194_fu_452_p2;
reg   [5:0] sub_ln194_reg_1020;
reg   [5:0] weights3_0_addr_reg_1025;
reg   [5:0] weights3_0_addr_reg_1025_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_reg_1025_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_reg_1025_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_reg_1025_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_reg_1025_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_reg_1025_pp0_iter6_reg;
reg   [5:0] weights3_0_addr_reg_1025_pp0_iter7_reg;
reg   [5:0] weights3_0_addr_reg_1025_pp0_iter8_reg;
reg   [5:0] weights3_0_addr_reg_1025_pp0_iter9_reg;
reg   [5:0] weights3_0_addr_reg_1025_pp0_iter10_reg;
wire   [7:0] empty_fu_495_p2;
reg   [7:0] empty_reg_1031;
reg   [5:0] weights3_1_addr_reg_1046;
reg   [5:0] weights3_1_addr_reg_1046_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_reg_1046_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_reg_1046_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_reg_1046_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_reg_1046_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_reg_1046_pp0_iter6_reg;
reg   [5:0] weights3_1_addr_reg_1046_pp0_iter7_reg;
reg   [5:0] weights3_1_addr_reg_1046_pp0_iter8_reg;
reg   [5:0] weights3_1_addr_reg_1046_pp0_iter9_reg;
reg   [5:0] weights3_1_addr_reg_1046_pp0_iter10_reg;
reg   [5:0] weights3_2_addr_reg_1052;
reg   [5:0] weights3_2_addr_reg_1052_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_reg_1052_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_reg_1052_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_reg_1052_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_reg_1052_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_reg_1052_pp0_iter6_reg;
reg   [5:0] weights3_2_addr_reg_1052_pp0_iter7_reg;
reg   [5:0] weights3_2_addr_reg_1052_pp0_iter8_reg;
reg   [5:0] weights3_2_addr_reg_1052_pp0_iter9_reg;
reg   [5:0] weights3_2_addr_reg_1052_pp0_iter10_reg;
reg   [5:0] weights3_3_addr_reg_1058;
reg   [5:0] weights3_3_addr_reg_1058_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_reg_1058_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_reg_1058_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_reg_1058_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_reg_1058_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_reg_1058_pp0_iter6_reg;
reg   [5:0] weights3_3_addr_reg_1058_pp0_iter7_reg;
reg   [5:0] weights3_3_addr_reg_1058_pp0_iter8_reg;
reg   [5:0] weights3_3_addr_reg_1058_pp0_iter9_reg;
reg   [5:0] weights3_3_addr_reg_1058_pp0_iter10_reg;
reg   [5:0] weights3_0_addr_6_reg_1064;
reg   [5:0] weights3_0_addr_6_reg_1064_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_6_reg_1064_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_6_reg_1064_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_6_reg_1064_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_6_reg_1064_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_6_reg_1064_pp0_iter6_reg;
reg   [5:0] weights3_0_addr_6_reg_1064_pp0_iter7_reg;
reg   [5:0] weights3_0_addr_6_reg_1064_pp0_iter8_reg;
reg   [5:0] weights3_0_addr_6_reg_1064_pp0_iter9_reg;
reg   [5:0] weights3_0_addr_6_reg_1064_pp0_iter10_reg;
reg   [5:0] weights3_1_addr_6_reg_1069;
reg   [5:0] weights3_1_addr_6_reg_1069_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_6_reg_1069_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_6_reg_1069_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_6_reg_1069_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_6_reg_1069_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_6_reg_1069_pp0_iter6_reg;
reg   [5:0] weights3_1_addr_6_reg_1069_pp0_iter7_reg;
reg   [5:0] weights3_1_addr_6_reg_1069_pp0_iter8_reg;
reg   [5:0] weights3_1_addr_6_reg_1069_pp0_iter9_reg;
reg   [5:0] weights3_1_addr_6_reg_1069_pp0_iter10_reg;
reg   [5:0] weights3_2_addr_6_reg_1074;
reg   [5:0] weights3_2_addr_6_reg_1074_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_6_reg_1074_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_6_reg_1074_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_6_reg_1074_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_6_reg_1074_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_6_reg_1074_pp0_iter6_reg;
reg   [5:0] weights3_2_addr_6_reg_1074_pp0_iter7_reg;
reg   [5:0] weights3_2_addr_6_reg_1074_pp0_iter8_reg;
reg   [5:0] weights3_2_addr_6_reg_1074_pp0_iter9_reg;
reg   [5:0] weights3_2_addr_6_reg_1074_pp0_iter10_reg;
reg   [5:0] weights3_3_addr_6_reg_1079;
reg   [5:0] weights3_3_addr_6_reg_1079_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_6_reg_1079_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_6_reg_1079_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_6_reg_1079_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_6_reg_1079_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_6_reg_1079_pp0_iter6_reg;
reg   [5:0] weights3_3_addr_6_reg_1079_pp0_iter7_reg;
reg   [5:0] weights3_3_addr_6_reg_1079_pp0_iter8_reg;
reg   [5:0] weights3_3_addr_6_reg_1079_pp0_iter9_reg;
reg   [5:0] weights3_3_addr_6_reg_1079_pp0_iter10_reg;
reg   [5:0] weights3_0_addr_7_reg_1084;
reg   [5:0] weights3_0_addr_7_reg_1084_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_7_reg_1084_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_7_reg_1084_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_7_reg_1084_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_7_reg_1084_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_7_reg_1084_pp0_iter6_reg;
reg   [5:0] weights3_0_addr_7_reg_1084_pp0_iter7_reg;
reg   [5:0] weights3_0_addr_7_reg_1084_pp0_iter8_reg;
reg   [5:0] weights3_0_addr_7_reg_1084_pp0_iter9_reg;
reg   [5:0] weights3_0_addr_7_reg_1084_pp0_iter10_reg;
reg   [5:0] weights3_1_addr_7_reg_1089;
reg   [5:0] weights3_1_addr_7_reg_1089_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_7_reg_1089_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_7_reg_1089_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_7_reg_1089_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_7_reg_1089_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_7_reg_1089_pp0_iter6_reg;
reg   [5:0] weights3_1_addr_7_reg_1089_pp0_iter7_reg;
reg   [5:0] weights3_1_addr_7_reg_1089_pp0_iter8_reg;
reg   [5:0] weights3_1_addr_7_reg_1089_pp0_iter9_reg;
reg   [5:0] weights3_1_addr_7_reg_1089_pp0_iter10_reg;
reg   [5:0] weights3_2_addr_7_reg_1094;
reg   [5:0] weights3_2_addr_7_reg_1094_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_7_reg_1094_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_7_reg_1094_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_7_reg_1094_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_7_reg_1094_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_7_reg_1094_pp0_iter6_reg;
reg   [5:0] weights3_2_addr_7_reg_1094_pp0_iter7_reg;
reg   [5:0] weights3_2_addr_7_reg_1094_pp0_iter8_reg;
reg   [5:0] weights3_2_addr_7_reg_1094_pp0_iter9_reg;
reg   [5:0] weights3_2_addr_7_reg_1094_pp0_iter10_reg;
reg   [5:0] weights3_3_addr_7_reg_1099;
reg   [5:0] weights3_3_addr_7_reg_1099_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_7_reg_1099_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_7_reg_1099_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_7_reg_1099_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_7_reg_1099_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_7_reg_1099_pp0_iter6_reg;
reg   [5:0] weights3_3_addr_7_reg_1099_pp0_iter7_reg;
reg   [5:0] weights3_3_addr_7_reg_1099_pp0_iter8_reg;
reg   [5:0] weights3_3_addr_7_reg_1099_pp0_iter9_reg;
reg   [5:0] weights3_3_addr_7_reg_1099_pp0_iter10_reg;
wire   [63:0] bitcast_ln194_fu_619_p1;
wire   [63:0] bitcast_ln194_1_fu_717_p1;
wire   [63:0] bitcast_ln194_2_fu_722_p1;
wire   [63:0] bitcast_ln194_3_fu_727_p1;
reg   [5:0] weights3_0_addr_8_reg_1124;
reg   [5:0] weights3_0_addr_8_reg_1124_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_8_reg_1124_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_8_reg_1124_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_8_reg_1124_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_8_reg_1124_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_8_reg_1124_pp0_iter6_reg;
reg   [5:0] weights3_0_addr_8_reg_1124_pp0_iter7_reg;
reg   [5:0] weights3_0_addr_8_reg_1124_pp0_iter8_reg;
reg   [5:0] weights3_0_addr_8_reg_1124_pp0_iter9_reg;
reg   [5:0] weights3_0_addr_8_reg_1124_pp0_iter10_reg;
reg   [5:0] weights3_1_addr_8_reg_1129;
reg   [5:0] weights3_1_addr_8_reg_1129_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_8_reg_1129_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_8_reg_1129_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_8_reg_1129_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_8_reg_1129_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_8_reg_1129_pp0_iter6_reg;
reg   [5:0] weights3_1_addr_8_reg_1129_pp0_iter7_reg;
reg   [5:0] weights3_1_addr_8_reg_1129_pp0_iter8_reg;
reg   [5:0] weights3_1_addr_8_reg_1129_pp0_iter9_reg;
reg   [5:0] weights3_1_addr_8_reg_1129_pp0_iter10_reg;
reg   [5:0] weights3_2_addr_8_reg_1134;
reg   [5:0] weights3_2_addr_8_reg_1134_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_8_reg_1134_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_8_reg_1134_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_8_reg_1134_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_8_reg_1134_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_8_reg_1134_pp0_iter6_reg;
reg   [5:0] weights3_2_addr_8_reg_1134_pp0_iter7_reg;
reg   [5:0] weights3_2_addr_8_reg_1134_pp0_iter8_reg;
reg   [5:0] weights3_2_addr_8_reg_1134_pp0_iter9_reg;
reg   [5:0] weights3_2_addr_8_reg_1134_pp0_iter10_reg;
reg   [5:0] weights3_3_addr_8_reg_1139;
reg   [5:0] weights3_3_addr_8_reg_1139_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_8_reg_1139_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_8_reg_1139_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_8_reg_1139_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_8_reg_1139_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_8_reg_1139_pp0_iter6_reg;
reg   [5:0] weights3_3_addr_8_reg_1139_pp0_iter7_reg;
reg   [5:0] weights3_3_addr_8_reg_1139_pp0_iter8_reg;
reg   [5:0] weights3_3_addr_8_reg_1139_pp0_iter9_reg;
reg   [5:0] weights3_3_addr_8_reg_1139_pp0_iter10_reg;
reg   [5:0] weights3_0_addr_9_reg_1144;
reg   [5:0] weights3_0_addr_9_reg_1144_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_9_reg_1144_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_9_reg_1144_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_9_reg_1144_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_9_reg_1144_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_9_reg_1144_pp0_iter6_reg;
reg   [5:0] weights3_0_addr_9_reg_1144_pp0_iter7_reg;
reg   [5:0] weights3_0_addr_9_reg_1144_pp0_iter8_reg;
reg   [5:0] weights3_0_addr_9_reg_1144_pp0_iter9_reg;
reg   [5:0] weights3_0_addr_9_reg_1144_pp0_iter10_reg;
reg   [5:0] weights3_1_addr_9_reg_1149;
reg   [5:0] weights3_1_addr_9_reg_1149_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_9_reg_1149_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_9_reg_1149_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_9_reg_1149_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_9_reg_1149_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_9_reg_1149_pp0_iter6_reg;
reg   [5:0] weights3_1_addr_9_reg_1149_pp0_iter7_reg;
reg   [5:0] weights3_1_addr_9_reg_1149_pp0_iter8_reg;
reg   [5:0] weights3_1_addr_9_reg_1149_pp0_iter9_reg;
reg   [5:0] weights3_1_addr_9_reg_1149_pp0_iter10_reg;
reg   [5:0] weights3_2_addr_9_reg_1154;
reg   [5:0] weights3_2_addr_9_reg_1154_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_9_reg_1154_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_9_reg_1154_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_9_reg_1154_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_9_reg_1154_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_9_reg_1154_pp0_iter6_reg;
reg   [5:0] weights3_2_addr_9_reg_1154_pp0_iter7_reg;
reg   [5:0] weights3_2_addr_9_reg_1154_pp0_iter8_reg;
reg   [5:0] weights3_2_addr_9_reg_1154_pp0_iter9_reg;
reg   [5:0] weights3_2_addr_9_reg_1154_pp0_iter10_reg;
reg   [5:0] weights3_3_addr_9_reg_1159;
reg   [5:0] weights3_3_addr_9_reg_1159_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_9_reg_1159_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_9_reg_1159_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_9_reg_1159_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_9_reg_1159_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_9_reg_1159_pp0_iter6_reg;
reg   [5:0] weights3_3_addr_9_reg_1159_pp0_iter7_reg;
reg   [5:0] weights3_3_addr_9_reg_1159_pp0_iter8_reg;
reg   [5:0] weights3_3_addr_9_reg_1159_pp0_iter9_reg;
reg   [5:0] weights3_3_addr_9_reg_1159_pp0_iter10_reg;
wire   [63:0] bitcast_ln194_4_fu_774_p1;
wire   [63:0] bitcast_ln194_5_fu_779_p1;
wire   [63:0] bitcast_ln194_6_fu_784_p1;
wire   [63:0] bitcast_ln194_7_fu_789_p1;
reg   [63:0] weights3_0_load_9_reg_1184;
reg   [63:0] weights3_1_load_9_reg_1189;
reg   [63:0] weights3_2_load_9_reg_1194;
reg   [63:0] weights3_3_load_9_reg_1199;
reg   [5:0] weights3_0_addr_10_reg_1204;
reg   [5:0] weights3_0_addr_10_reg_1204_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_10_reg_1204_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_10_reg_1204_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_10_reg_1204_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_10_reg_1204_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_10_reg_1204_pp0_iter6_reg;
reg   [5:0] weights3_0_addr_10_reg_1204_pp0_iter7_reg;
reg   [5:0] weights3_0_addr_10_reg_1204_pp0_iter8_reg;
reg   [5:0] weights3_0_addr_10_reg_1204_pp0_iter9_reg;
reg   [5:0] weights3_0_addr_10_reg_1204_pp0_iter10_reg;
reg   [5:0] weights3_1_addr_10_reg_1210;
reg   [5:0] weights3_1_addr_10_reg_1210_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_10_reg_1210_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_10_reg_1210_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_10_reg_1210_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_10_reg_1210_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_10_reg_1210_pp0_iter6_reg;
reg   [5:0] weights3_1_addr_10_reg_1210_pp0_iter7_reg;
reg   [5:0] weights3_1_addr_10_reg_1210_pp0_iter8_reg;
reg   [5:0] weights3_1_addr_10_reg_1210_pp0_iter9_reg;
reg   [5:0] weights3_1_addr_10_reg_1210_pp0_iter10_reg;
reg   [5:0] weights3_2_addr_10_reg_1216;
reg   [5:0] weights3_2_addr_10_reg_1216_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_10_reg_1216_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_10_reg_1216_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_10_reg_1216_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_10_reg_1216_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_10_reg_1216_pp0_iter6_reg;
reg   [5:0] weights3_2_addr_10_reg_1216_pp0_iter7_reg;
reg   [5:0] weights3_2_addr_10_reg_1216_pp0_iter8_reg;
reg   [5:0] weights3_2_addr_10_reg_1216_pp0_iter9_reg;
reg   [5:0] weights3_2_addr_10_reg_1216_pp0_iter10_reg;
reg   [5:0] weights3_3_addr_10_reg_1222;
reg   [5:0] weights3_3_addr_10_reg_1222_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_10_reg_1222_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_10_reg_1222_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_10_reg_1222_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_10_reg_1222_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_10_reg_1222_pp0_iter6_reg;
reg   [5:0] weights3_3_addr_10_reg_1222_pp0_iter7_reg;
reg   [5:0] weights3_3_addr_10_reg_1222_pp0_iter8_reg;
reg   [5:0] weights3_3_addr_10_reg_1222_pp0_iter9_reg;
reg   [5:0] weights3_3_addr_10_reg_1222_pp0_iter10_reg;
wire   [63:0] bitcast_ln194_8_fu_794_p1;
wire   [63:0] bitcast_ln194_9_fu_799_p1;
wire   [63:0] bitcast_ln194_10_fu_804_p1;
wire   [63:0] bitcast_ln194_11_fu_809_p1;
wire   [63:0] bitcast_ln194_12_fu_814_p1;
wire   [63:0] bitcast_ln194_13_fu_819_p1;
wire   [63:0] bitcast_ln194_14_fu_824_p1;
wire   [63:0] bitcast_ln194_15_fu_829_p1;
wire   [63:0] bitcast_ln194_16_fu_844_p1;
wire   [63:0] bitcast_ln194_17_fu_848_p1;
wire   [63:0] bitcast_ln194_18_fu_852_p1;
wire   [63:0] bitcast_ln194_19_fu_856_p1;
wire   [63:0] bitcast_ln194_20_fu_860_p1;
wire   [63:0] bitcast_ln194_21_fu_865_p1;
wire   [63:0] bitcast_ln194_22_fu_870_p1;
wire   [63:0] bitcast_ln194_23_fu_875_p1;
reg   [63:0] div213_2_2_reg_1308;
reg   [63:0] div213_3_reg_1313;
reg   [63:0] div213_3_1_reg_1318;
reg   [63:0] div213_3_2_reg_1323;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln194_fu_458_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_1_fu_511_p1;
wire   [63:0] zext_ln194_2_fu_531_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] lshr_ln194_3_cast_fu_551_p1;
wire   [63:0] zext_ln194_3_fu_571_p1;
wire   [63:0] lshr_ln194_5_cast_fu_592_p1;
wire   [63:0] zext_ln194_4_fu_612_p1;
wire   [63:0] add_ln194_3_cast_fu_629_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln194_5_fu_651_p1;
wire   [63:0] zext_ln194_6_fu_671_p1;
wire   [63:0] lshr_ln194_9_cast_fu_691_p1;
wire   [63:0] zext_ln194_7_fu_711_p1;
wire   [63:0] lshr_ln194_11_cast_fu_747_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_8_fu_767_p1;
reg   [6:0] i_fu_92;
wire   [6:0] add_ln192_fu_834_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_0_ce1_local;
reg   [5:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [5:0] weights3_0_address0_local;
reg    weights3_0_we0_local;
reg   [63:0] weights3_0_d0_local;
wire   [63:0] bitcast_ln194_24_fu_880_p1;
reg    weights3_0_we1_local;
reg   [63:0] weights3_0_d1_local;
wire   [63:0] bitcast_ln194_25_fu_900_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln194_26_fu_905_p1;
wire   [63:0] bitcast_ln194_27_fu_936_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln194_28_fu_941_p1;
wire   [63:0] bitcast_ln194_29_fu_976_p1;
reg    weights3_1_ce1_local;
reg   [5:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [5:0] weights3_1_address0_local;
reg    weights3_1_we0_local;
reg   [63:0] weights3_1_d0_local;
wire   [63:0] bitcast_ln194_30_fu_885_p1;
reg    weights3_1_we1_local;
reg   [63:0] weights3_1_d1_local;
wire   [63:0] bitcast_ln194_31_fu_909_p1;
wire   [63:0] bitcast_ln194_32_fu_914_p1;
wire   [63:0] bitcast_ln194_33_fu_946_p1;
wire   [63:0] bitcast_ln194_34_fu_951_p1;
wire   [63:0] bitcast_ln194_35_fu_981_p1;
reg    weights3_2_ce1_local;
reg   [5:0] weights3_2_address1_local;
reg    weights3_2_ce0_local;
reg   [5:0] weights3_2_address0_local;
reg    weights3_2_we0_local;
reg   [63:0] weights3_2_d0_local;
wire   [63:0] bitcast_ln194_36_fu_890_p1;
reg    weights3_2_we1_local;
reg   [63:0] weights3_2_d1_local;
wire   [63:0] bitcast_ln194_37_fu_918_p1;
wire   [63:0] bitcast_ln194_38_fu_923_p1;
wire   [63:0] bitcast_ln194_39_fu_956_p1;
wire   [63:0] bitcast_ln194_40_fu_961_p1;
wire   [63:0] bitcast_ln194_41_fu_986_p1;
reg    weights3_3_ce1_local;
reg   [5:0] weights3_3_address1_local;
reg    weights3_3_ce0_local;
reg   [5:0] weights3_3_address0_local;
reg    weights3_3_we0_local;
reg   [63:0] weights3_3_d0_local;
wire   [63:0] bitcast_ln194_42_fu_895_p1;
reg    weights3_3_we1_local;
reg   [63:0] weights3_3_d1_local;
wire   [63:0] bitcast_ln194_43_fu_927_p1;
wire   [63:0] bitcast_ln194_44_fu_932_p1;
wire   [63:0] bitcast_ln194_45_fu_966_p1;
wire   [63:0] bitcast_ln194_46_fu_971_p1;
wire   [63:0] bitcast_ln194_47_fu_991_p1;
reg   [63:0] grp_fu_330_p0;
reg   [63:0] grp_fu_334_p0;
reg   [63:0] grp_fu_338_p0;
reg   [63:0] grp_fu_342_p0;
wire   [3:0] lshr_ln7_fu_430_p4;
wire   [5:0] p_shl1_fu_444_p3;
wire   [5:0] zext_ln194_9_fu_440_p1;
wire   [4:0] tmp_s_fu_465_p4;
wire   [5:0] or_ln4_fu_475_p3;
wire   [7:0] p_shl_fu_487_p3;
wire   [7:0] or_ln192_cast_fu_483_p1;
wire   [5:0] lshr_ln194_1_fu_501_p4;
wire   [7:0] add_ln194_fu_516_p2;
wire   [5:0] lshr_ln194_2_fu_521_p4;
wire   [7:0] add_ln194_1_fu_536_p2;
wire   [5:0] lshr_ln194_3_fu_541_p4;
wire   [7:0] empty_43_fu_556_p2;
wire   [5:0] lshr_ln194_4_fu_561_p4;
wire   [7:0] add_ln194_2_fu_577_p2;
wire   [5:0] lshr_ln194_5_fu_582_p4;
wire   [7:0] empty_44_fu_597_p2;
wire   [5:0] lshr_ln194_6_fu_602_p4;
wire   [5:0] add_ln194_3_fu_624_p2;
wire   [7:0] empty_45_fu_636_p2;
wire   [5:0] lshr_ln194_7_fu_641_p4;
wire   [7:0] add_ln194_4_fu_656_p2;
wire   [5:0] lshr_ln194_8_fu_661_p4;
wire   [7:0] add_ln194_5_fu_676_p2;
wire   [5:0] lshr_ln194_9_fu_681_p4;
wire   [7:0] empty_46_fu_696_p2;
wire   [5:0] lshr_ln194_s_fu_701_p4;
wire   [7:0] add_ln194_6_fu_732_p2;
wire   [5:0] lshr_ln194_10_fu_737_p4;
wire   [7:0] empty_47_fu_752_p2;
wire   [5:0] lshr_ln194_11_fu_757_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter10_stage0;
reg    ap_idle_pp0_0to9;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0_1to11;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_92 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U425(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_330_p0),.din1(norm_44),.ce(1'b1),.dout(grp_fu_330_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U426(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_334_p0),.din1(norm_44),.ce(1'b1),.dout(grp_fu_334_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U427(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_338_p0),.din1(norm_44),.ce(1'b1),.dout(grp_fu_338_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U428(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_342_p0),.din1(norm_44),.ce(1'b1),.dout(grp_fu_342_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter11 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter10_stage0) & (ap_idle_pp0_0to9 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter10_stage0) & (ap_idle_pp0_0to9 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter10_stage0) & (ap_idle_pp0_0to9 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter10_stage0) & (ap_idle_pp0_0to9 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter10_stage0) & (ap_idle_pp0_0to9 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter10_stage0) & (ap_idle_pp0_0to9 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter10_stage0) & (ap_idle_pp0_0to9 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter10_stage0) & (ap_idle_pp0_0to9 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter10_stage0) & (ap_idle_pp0_0to9 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter10_stage0) & (ap_idle_pp0_0to9 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_92 <= 7'd0;
    end else if (((tmp_reg_1016 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        i_fu_92 <= add_ln192_fu_834_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_362 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_362 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_367 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_367 <= weights3_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_372 <= weights3_2_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_372 <= weights3_2_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_377 <= weights3_3_q1;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_377 <= weights3_3_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div213_2_2_reg_1308 <= grp_fu_330_p2;
        div213_3_1_reg_1318 <= grp_fu_338_p2;
        div213_3_2_reg_1323 <= grp_fu_342_p2;
        div213_3_reg_1313 <= grp_fu_334_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1031[7 : 1] <= empty_fu_495_p2[7 : 1];
        i_4_reg_1011 <= ap_sig_allocacmp_i_4;
        sub_ln194_reg_1020 <= sub_ln194_fu_452_p2;
        tmp_reg_1016 <= ap_sig_allocacmp_i_4[32'd6];
        tmp_reg_1016_pp0_iter1_reg <= tmp_reg_1016;
        tmp_reg_1016_pp0_iter2_reg <= tmp_reg_1016_pp0_iter1_reg;
        tmp_reg_1016_pp0_iter3_reg <= tmp_reg_1016_pp0_iter2_reg;
        tmp_reg_1016_pp0_iter4_reg <= tmp_reg_1016_pp0_iter3_reg;
        tmp_reg_1016_pp0_iter5_reg <= tmp_reg_1016_pp0_iter4_reg;
        tmp_reg_1016_pp0_iter6_reg <= tmp_reg_1016_pp0_iter5_reg;
        tmp_reg_1016_pp0_iter7_reg <= tmp_reg_1016_pp0_iter6_reg;
        tmp_reg_1016_pp0_iter8_reg <= tmp_reg_1016_pp0_iter7_reg;
        tmp_reg_1016_pp0_iter9_reg <= tmp_reg_1016_pp0_iter8_reg;
        weights3_0_addr_reg_1025 <= zext_ln194_fu_458_p1;
        weights3_0_addr_reg_1025_pp0_iter10_reg <= weights3_0_addr_reg_1025_pp0_iter9_reg;
        weights3_0_addr_reg_1025_pp0_iter1_reg <= weights3_0_addr_reg_1025;
        weights3_0_addr_reg_1025_pp0_iter2_reg <= weights3_0_addr_reg_1025_pp0_iter1_reg;
        weights3_0_addr_reg_1025_pp0_iter3_reg <= weights3_0_addr_reg_1025_pp0_iter2_reg;
        weights3_0_addr_reg_1025_pp0_iter4_reg <= weights3_0_addr_reg_1025_pp0_iter3_reg;
        weights3_0_addr_reg_1025_pp0_iter5_reg <= weights3_0_addr_reg_1025_pp0_iter4_reg;
        weights3_0_addr_reg_1025_pp0_iter6_reg <= weights3_0_addr_reg_1025_pp0_iter5_reg;
        weights3_0_addr_reg_1025_pp0_iter7_reg <= weights3_0_addr_reg_1025_pp0_iter6_reg;
        weights3_0_addr_reg_1025_pp0_iter8_reg <= weights3_0_addr_reg_1025_pp0_iter7_reg;
        weights3_0_addr_reg_1025_pp0_iter9_reg <= weights3_0_addr_reg_1025_pp0_iter8_reg;
        weights3_1_addr_reg_1046 <= zext_ln194_fu_458_p1;
        weights3_1_addr_reg_1046_pp0_iter10_reg <= weights3_1_addr_reg_1046_pp0_iter9_reg;
        weights3_1_addr_reg_1046_pp0_iter1_reg <= weights3_1_addr_reg_1046;
        weights3_1_addr_reg_1046_pp0_iter2_reg <= weights3_1_addr_reg_1046_pp0_iter1_reg;
        weights3_1_addr_reg_1046_pp0_iter3_reg <= weights3_1_addr_reg_1046_pp0_iter2_reg;
        weights3_1_addr_reg_1046_pp0_iter4_reg <= weights3_1_addr_reg_1046_pp0_iter3_reg;
        weights3_1_addr_reg_1046_pp0_iter5_reg <= weights3_1_addr_reg_1046_pp0_iter4_reg;
        weights3_1_addr_reg_1046_pp0_iter6_reg <= weights3_1_addr_reg_1046_pp0_iter5_reg;
        weights3_1_addr_reg_1046_pp0_iter7_reg <= weights3_1_addr_reg_1046_pp0_iter6_reg;
        weights3_1_addr_reg_1046_pp0_iter8_reg <= weights3_1_addr_reg_1046_pp0_iter7_reg;
        weights3_1_addr_reg_1046_pp0_iter9_reg <= weights3_1_addr_reg_1046_pp0_iter8_reg;
        weights3_2_addr_reg_1052 <= zext_ln194_fu_458_p1;
        weights3_2_addr_reg_1052_pp0_iter10_reg <= weights3_2_addr_reg_1052_pp0_iter9_reg;
        weights3_2_addr_reg_1052_pp0_iter1_reg <= weights3_2_addr_reg_1052;
        weights3_2_addr_reg_1052_pp0_iter2_reg <= weights3_2_addr_reg_1052_pp0_iter1_reg;
        weights3_2_addr_reg_1052_pp0_iter3_reg <= weights3_2_addr_reg_1052_pp0_iter2_reg;
        weights3_2_addr_reg_1052_pp0_iter4_reg <= weights3_2_addr_reg_1052_pp0_iter3_reg;
        weights3_2_addr_reg_1052_pp0_iter5_reg <= weights3_2_addr_reg_1052_pp0_iter4_reg;
        weights3_2_addr_reg_1052_pp0_iter6_reg <= weights3_2_addr_reg_1052_pp0_iter5_reg;
        weights3_2_addr_reg_1052_pp0_iter7_reg <= weights3_2_addr_reg_1052_pp0_iter6_reg;
        weights3_2_addr_reg_1052_pp0_iter8_reg <= weights3_2_addr_reg_1052_pp0_iter7_reg;
        weights3_2_addr_reg_1052_pp0_iter9_reg <= weights3_2_addr_reg_1052_pp0_iter8_reg;
        weights3_3_addr_reg_1058 <= zext_ln194_1_fu_511_p1;
        weights3_3_addr_reg_1058_pp0_iter10_reg <= weights3_3_addr_reg_1058_pp0_iter9_reg;
        weights3_3_addr_reg_1058_pp0_iter1_reg <= weights3_3_addr_reg_1058;
        weights3_3_addr_reg_1058_pp0_iter2_reg <= weights3_3_addr_reg_1058_pp0_iter1_reg;
        weights3_3_addr_reg_1058_pp0_iter3_reg <= weights3_3_addr_reg_1058_pp0_iter2_reg;
        weights3_3_addr_reg_1058_pp0_iter4_reg <= weights3_3_addr_reg_1058_pp0_iter3_reg;
        weights3_3_addr_reg_1058_pp0_iter5_reg <= weights3_3_addr_reg_1058_pp0_iter4_reg;
        weights3_3_addr_reg_1058_pp0_iter6_reg <= weights3_3_addr_reg_1058_pp0_iter5_reg;
        weights3_3_addr_reg_1058_pp0_iter7_reg <= weights3_3_addr_reg_1058_pp0_iter6_reg;
        weights3_3_addr_reg_1058_pp0_iter8_reg <= weights3_3_addr_reg_1058_pp0_iter7_reg;
        weights3_3_addr_reg_1058_pp0_iter9_reg <= weights3_3_addr_reg_1058_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_346 <= weights3_0_q1;
        reg_350 <= weights3_1_q1;
        reg_354 <= weights3_2_q1;
        reg_358 <= weights3_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_382 <= grp_fu_330_p2;
        reg_386 <= grp_fu_334_p2;
        reg_390 <= grp_fu_338_p2;
        reg_394 <= grp_fu_342_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_398 <= grp_fu_330_p2;
        reg_402 <= grp_fu_334_p2;
        reg_406 <= grp_fu_338_p2;
        reg_410 <= grp_fu_342_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_addr_10_reg_1204 <= lshr_ln194_11_cast_fu_747_p1;
        weights3_0_addr_10_reg_1204_pp0_iter10_reg <= weights3_0_addr_10_reg_1204_pp0_iter9_reg;
        weights3_0_addr_10_reg_1204_pp0_iter1_reg <= weights3_0_addr_10_reg_1204;
        weights3_0_addr_10_reg_1204_pp0_iter2_reg <= weights3_0_addr_10_reg_1204_pp0_iter1_reg;
        weights3_0_addr_10_reg_1204_pp0_iter3_reg <= weights3_0_addr_10_reg_1204_pp0_iter2_reg;
        weights3_0_addr_10_reg_1204_pp0_iter4_reg <= weights3_0_addr_10_reg_1204_pp0_iter3_reg;
        weights3_0_addr_10_reg_1204_pp0_iter5_reg <= weights3_0_addr_10_reg_1204_pp0_iter4_reg;
        weights3_0_addr_10_reg_1204_pp0_iter6_reg <= weights3_0_addr_10_reg_1204_pp0_iter5_reg;
        weights3_0_addr_10_reg_1204_pp0_iter7_reg <= weights3_0_addr_10_reg_1204_pp0_iter6_reg;
        weights3_0_addr_10_reg_1204_pp0_iter8_reg <= weights3_0_addr_10_reg_1204_pp0_iter7_reg;
        weights3_0_addr_10_reg_1204_pp0_iter9_reg <= weights3_0_addr_10_reg_1204_pp0_iter8_reg;
        weights3_1_addr_10_reg_1210 <= zext_ln194_8_fu_767_p1;
        weights3_1_addr_10_reg_1210_pp0_iter10_reg <= weights3_1_addr_10_reg_1210_pp0_iter9_reg;
        weights3_1_addr_10_reg_1210_pp0_iter1_reg <= weights3_1_addr_10_reg_1210;
        weights3_1_addr_10_reg_1210_pp0_iter2_reg <= weights3_1_addr_10_reg_1210_pp0_iter1_reg;
        weights3_1_addr_10_reg_1210_pp0_iter3_reg <= weights3_1_addr_10_reg_1210_pp0_iter2_reg;
        weights3_1_addr_10_reg_1210_pp0_iter4_reg <= weights3_1_addr_10_reg_1210_pp0_iter3_reg;
        weights3_1_addr_10_reg_1210_pp0_iter5_reg <= weights3_1_addr_10_reg_1210_pp0_iter4_reg;
        weights3_1_addr_10_reg_1210_pp0_iter6_reg <= weights3_1_addr_10_reg_1210_pp0_iter5_reg;
        weights3_1_addr_10_reg_1210_pp0_iter7_reg <= weights3_1_addr_10_reg_1210_pp0_iter6_reg;
        weights3_1_addr_10_reg_1210_pp0_iter8_reg <= weights3_1_addr_10_reg_1210_pp0_iter7_reg;
        weights3_1_addr_10_reg_1210_pp0_iter9_reg <= weights3_1_addr_10_reg_1210_pp0_iter8_reg;
        weights3_2_addr_10_reg_1216 <= zext_ln194_8_fu_767_p1;
        weights3_2_addr_10_reg_1216_pp0_iter10_reg <= weights3_2_addr_10_reg_1216_pp0_iter9_reg;
        weights3_2_addr_10_reg_1216_pp0_iter1_reg <= weights3_2_addr_10_reg_1216;
        weights3_2_addr_10_reg_1216_pp0_iter2_reg <= weights3_2_addr_10_reg_1216_pp0_iter1_reg;
        weights3_2_addr_10_reg_1216_pp0_iter3_reg <= weights3_2_addr_10_reg_1216_pp0_iter2_reg;
        weights3_2_addr_10_reg_1216_pp0_iter4_reg <= weights3_2_addr_10_reg_1216_pp0_iter3_reg;
        weights3_2_addr_10_reg_1216_pp0_iter5_reg <= weights3_2_addr_10_reg_1216_pp0_iter4_reg;
        weights3_2_addr_10_reg_1216_pp0_iter6_reg <= weights3_2_addr_10_reg_1216_pp0_iter5_reg;
        weights3_2_addr_10_reg_1216_pp0_iter7_reg <= weights3_2_addr_10_reg_1216_pp0_iter6_reg;
        weights3_2_addr_10_reg_1216_pp0_iter8_reg <= weights3_2_addr_10_reg_1216_pp0_iter7_reg;
        weights3_2_addr_10_reg_1216_pp0_iter9_reg <= weights3_2_addr_10_reg_1216_pp0_iter8_reg;
        weights3_3_addr_10_reg_1222 <= zext_ln194_8_fu_767_p1;
        weights3_3_addr_10_reg_1222_pp0_iter10_reg <= weights3_3_addr_10_reg_1222_pp0_iter9_reg;
        weights3_3_addr_10_reg_1222_pp0_iter1_reg <= weights3_3_addr_10_reg_1222;
        weights3_3_addr_10_reg_1222_pp0_iter2_reg <= weights3_3_addr_10_reg_1222_pp0_iter1_reg;
        weights3_3_addr_10_reg_1222_pp0_iter3_reg <= weights3_3_addr_10_reg_1222_pp0_iter2_reg;
        weights3_3_addr_10_reg_1222_pp0_iter4_reg <= weights3_3_addr_10_reg_1222_pp0_iter3_reg;
        weights3_3_addr_10_reg_1222_pp0_iter5_reg <= weights3_3_addr_10_reg_1222_pp0_iter4_reg;
        weights3_3_addr_10_reg_1222_pp0_iter6_reg <= weights3_3_addr_10_reg_1222_pp0_iter5_reg;
        weights3_3_addr_10_reg_1222_pp0_iter7_reg <= weights3_3_addr_10_reg_1222_pp0_iter6_reg;
        weights3_3_addr_10_reg_1222_pp0_iter8_reg <= weights3_3_addr_10_reg_1222_pp0_iter7_reg;
        weights3_3_addr_10_reg_1222_pp0_iter9_reg <= weights3_3_addr_10_reg_1222_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_addr_6_reg_1064 <= zext_ln194_2_fu_531_p1;
        weights3_0_addr_6_reg_1064_pp0_iter10_reg <= weights3_0_addr_6_reg_1064_pp0_iter9_reg;
        weights3_0_addr_6_reg_1064_pp0_iter1_reg <= weights3_0_addr_6_reg_1064;
        weights3_0_addr_6_reg_1064_pp0_iter2_reg <= weights3_0_addr_6_reg_1064_pp0_iter1_reg;
        weights3_0_addr_6_reg_1064_pp0_iter3_reg <= weights3_0_addr_6_reg_1064_pp0_iter2_reg;
        weights3_0_addr_6_reg_1064_pp0_iter4_reg <= weights3_0_addr_6_reg_1064_pp0_iter3_reg;
        weights3_0_addr_6_reg_1064_pp0_iter5_reg <= weights3_0_addr_6_reg_1064_pp0_iter4_reg;
        weights3_0_addr_6_reg_1064_pp0_iter6_reg <= weights3_0_addr_6_reg_1064_pp0_iter5_reg;
        weights3_0_addr_6_reg_1064_pp0_iter7_reg <= weights3_0_addr_6_reg_1064_pp0_iter6_reg;
        weights3_0_addr_6_reg_1064_pp0_iter8_reg <= weights3_0_addr_6_reg_1064_pp0_iter7_reg;
        weights3_0_addr_6_reg_1064_pp0_iter9_reg <= weights3_0_addr_6_reg_1064_pp0_iter8_reg;
        weights3_0_addr_7_reg_1084 <= lshr_ln194_5_cast_fu_592_p1;
        weights3_0_addr_7_reg_1084_pp0_iter10_reg <= weights3_0_addr_7_reg_1084_pp0_iter9_reg;
        weights3_0_addr_7_reg_1084_pp0_iter1_reg <= weights3_0_addr_7_reg_1084;
        weights3_0_addr_7_reg_1084_pp0_iter2_reg <= weights3_0_addr_7_reg_1084_pp0_iter1_reg;
        weights3_0_addr_7_reg_1084_pp0_iter3_reg <= weights3_0_addr_7_reg_1084_pp0_iter2_reg;
        weights3_0_addr_7_reg_1084_pp0_iter4_reg <= weights3_0_addr_7_reg_1084_pp0_iter3_reg;
        weights3_0_addr_7_reg_1084_pp0_iter5_reg <= weights3_0_addr_7_reg_1084_pp0_iter4_reg;
        weights3_0_addr_7_reg_1084_pp0_iter6_reg <= weights3_0_addr_7_reg_1084_pp0_iter5_reg;
        weights3_0_addr_7_reg_1084_pp0_iter7_reg <= weights3_0_addr_7_reg_1084_pp0_iter6_reg;
        weights3_0_addr_7_reg_1084_pp0_iter8_reg <= weights3_0_addr_7_reg_1084_pp0_iter7_reg;
        weights3_0_addr_7_reg_1084_pp0_iter9_reg <= weights3_0_addr_7_reg_1084_pp0_iter8_reg;
        weights3_1_addr_6_reg_1069 <= lshr_ln194_3_cast_fu_551_p1;
        weights3_1_addr_6_reg_1069_pp0_iter10_reg <= weights3_1_addr_6_reg_1069_pp0_iter9_reg;
        weights3_1_addr_6_reg_1069_pp0_iter1_reg <= weights3_1_addr_6_reg_1069;
        weights3_1_addr_6_reg_1069_pp0_iter2_reg <= weights3_1_addr_6_reg_1069_pp0_iter1_reg;
        weights3_1_addr_6_reg_1069_pp0_iter3_reg <= weights3_1_addr_6_reg_1069_pp0_iter2_reg;
        weights3_1_addr_6_reg_1069_pp0_iter4_reg <= weights3_1_addr_6_reg_1069_pp0_iter3_reg;
        weights3_1_addr_6_reg_1069_pp0_iter5_reg <= weights3_1_addr_6_reg_1069_pp0_iter4_reg;
        weights3_1_addr_6_reg_1069_pp0_iter6_reg <= weights3_1_addr_6_reg_1069_pp0_iter5_reg;
        weights3_1_addr_6_reg_1069_pp0_iter7_reg <= weights3_1_addr_6_reg_1069_pp0_iter6_reg;
        weights3_1_addr_6_reg_1069_pp0_iter8_reg <= weights3_1_addr_6_reg_1069_pp0_iter7_reg;
        weights3_1_addr_6_reg_1069_pp0_iter9_reg <= weights3_1_addr_6_reg_1069_pp0_iter8_reg;
        weights3_1_addr_7_reg_1089 <= zext_ln194_4_fu_612_p1;
        weights3_1_addr_7_reg_1089_pp0_iter10_reg <= weights3_1_addr_7_reg_1089_pp0_iter9_reg;
        weights3_1_addr_7_reg_1089_pp0_iter1_reg <= weights3_1_addr_7_reg_1089;
        weights3_1_addr_7_reg_1089_pp0_iter2_reg <= weights3_1_addr_7_reg_1089_pp0_iter1_reg;
        weights3_1_addr_7_reg_1089_pp0_iter3_reg <= weights3_1_addr_7_reg_1089_pp0_iter2_reg;
        weights3_1_addr_7_reg_1089_pp0_iter4_reg <= weights3_1_addr_7_reg_1089_pp0_iter3_reg;
        weights3_1_addr_7_reg_1089_pp0_iter5_reg <= weights3_1_addr_7_reg_1089_pp0_iter4_reg;
        weights3_1_addr_7_reg_1089_pp0_iter6_reg <= weights3_1_addr_7_reg_1089_pp0_iter5_reg;
        weights3_1_addr_7_reg_1089_pp0_iter7_reg <= weights3_1_addr_7_reg_1089_pp0_iter6_reg;
        weights3_1_addr_7_reg_1089_pp0_iter8_reg <= weights3_1_addr_7_reg_1089_pp0_iter7_reg;
        weights3_1_addr_7_reg_1089_pp0_iter9_reg <= weights3_1_addr_7_reg_1089_pp0_iter8_reg;
        weights3_2_addr_6_reg_1074 <= zext_ln194_3_fu_571_p1;
        weights3_2_addr_6_reg_1074_pp0_iter10_reg <= weights3_2_addr_6_reg_1074_pp0_iter9_reg;
        weights3_2_addr_6_reg_1074_pp0_iter1_reg <= weights3_2_addr_6_reg_1074;
        weights3_2_addr_6_reg_1074_pp0_iter2_reg <= weights3_2_addr_6_reg_1074_pp0_iter1_reg;
        weights3_2_addr_6_reg_1074_pp0_iter3_reg <= weights3_2_addr_6_reg_1074_pp0_iter2_reg;
        weights3_2_addr_6_reg_1074_pp0_iter4_reg <= weights3_2_addr_6_reg_1074_pp0_iter3_reg;
        weights3_2_addr_6_reg_1074_pp0_iter5_reg <= weights3_2_addr_6_reg_1074_pp0_iter4_reg;
        weights3_2_addr_6_reg_1074_pp0_iter6_reg <= weights3_2_addr_6_reg_1074_pp0_iter5_reg;
        weights3_2_addr_6_reg_1074_pp0_iter7_reg <= weights3_2_addr_6_reg_1074_pp0_iter6_reg;
        weights3_2_addr_6_reg_1074_pp0_iter8_reg <= weights3_2_addr_6_reg_1074_pp0_iter7_reg;
        weights3_2_addr_6_reg_1074_pp0_iter9_reg <= weights3_2_addr_6_reg_1074_pp0_iter8_reg;
        weights3_2_addr_7_reg_1094 <= zext_ln194_4_fu_612_p1;
        weights3_2_addr_7_reg_1094_pp0_iter10_reg <= weights3_2_addr_7_reg_1094_pp0_iter9_reg;
        weights3_2_addr_7_reg_1094_pp0_iter1_reg <= weights3_2_addr_7_reg_1094;
        weights3_2_addr_7_reg_1094_pp0_iter2_reg <= weights3_2_addr_7_reg_1094_pp0_iter1_reg;
        weights3_2_addr_7_reg_1094_pp0_iter3_reg <= weights3_2_addr_7_reg_1094_pp0_iter2_reg;
        weights3_2_addr_7_reg_1094_pp0_iter4_reg <= weights3_2_addr_7_reg_1094_pp0_iter3_reg;
        weights3_2_addr_7_reg_1094_pp0_iter5_reg <= weights3_2_addr_7_reg_1094_pp0_iter4_reg;
        weights3_2_addr_7_reg_1094_pp0_iter6_reg <= weights3_2_addr_7_reg_1094_pp0_iter5_reg;
        weights3_2_addr_7_reg_1094_pp0_iter7_reg <= weights3_2_addr_7_reg_1094_pp0_iter6_reg;
        weights3_2_addr_7_reg_1094_pp0_iter8_reg <= weights3_2_addr_7_reg_1094_pp0_iter7_reg;
        weights3_2_addr_7_reg_1094_pp0_iter9_reg <= weights3_2_addr_7_reg_1094_pp0_iter8_reg;
        weights3_3_addr_6_reg_1079 <= zext_ln194_3_fu_571_p1;
        weights3_3_addr_6_reg_1079_pp0_iter10_reg <= weights3_3_addr_6_reg_1079_pp0_iter9_reg;
        weights3_3_addr_6_reg_1079_pp0_iter1_reg <= weights3_3_addr_6_reg_1079;
        weights3_3_addr_6_reg_1079_pp0_iter2_reg <= weights3_3_addr_6_reg_1079_pp0_iter1_reg;
        weights3_3_addr_6_reg_1079_pp0_iter3_reg <= weights3_3_addr_6_reg_1079_pp0_iter2_reg;
        weights3_3_addr_6_reg_1079_pp0_iter4_reg <= weights3_3_addr_6_reg_1079_pp0_iter3_reg;
        weights3_3_addr_6_reg_1079_pp0_iter5_reg <= weights3_3_addr_6_reg_1079_pp0_iter4_reg;
        weights3_3_addr_6_reg_1079_pp0_iter6_reg <= weights3_3_addr_6_reg_1079_pp0_iter5_reg;
        weights3_3_addr_6_reg_1079_pp0_iter7_reg <= weights3_3_addr_6_reg_1079_pp0_iter6_reg;
        weights3_3_addr_6_reg_1079_pp0_iter8_reg <= weights3_3_addr_6_reg_1079_pp0_iter7_reg;
        weights3_3_addr_6_reg_1079_pp0_iter9_reg <= weights3_3_addr_6_reg_1079_pp0_iter8_reg;
        weights3_3_addr_7_reg_1099 <= zext_ln194_4_fu_612_p1;
        weights3_3_addr_7_reg_1099_pp0_iter10_reg <= weights3_3_addr_7_reg_1099_pp0_iter9_reg;
        weights3_3_addr_7_reg_1099_pp0_iter1_reg <= weights3_3_addr_7_reg_1099;
        weights3_3_addr_7_reg_1099_pp0_iter2_reg <= weights3_3_addr_7_reg_1099_pp0_iter1_reg;
        weights3_3_addr_7_reg_1099_pp0_iter3_reg <= weights3_3_addr_7_reg_1099_pp0_iter2_reg;
        weights3_3_addr_7_reg_1099_pp0_iter4_reg <= weights3_3_addr_7_reg_1099_pp0_iter3_reg;
        weights3_3_addr_7_reg_1099_pp0_iter5_reg <= weights3_3_addr_7_reg_1099_pp0_iter4_reg;
        weights3_3_addr_7_reg_1099_pp0_iter6_reg <= weights3_3_addr_7_reg_1099_pp0_iter5_reg;
        weights3_3_addr_7_reg_1099_pp0_iter7_reg <= weights3_3_addr_7_reg_1099_pp0_iter6_reg;
        weights3_3_addr_7_reg_1099_pp0_iter8_reg <= weights3_3_addr_7_reg_1099_pp0_iter7_reg;
        weights3_3_addr_7_reg_1099_pp0_iter9_reg <= weights3_3_addr_7_reg_1099_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_addr_8_reg_1124 <= add_ln194_3_cast_fu_629_p1;
        weights3_0_addr_8_reg_1124_pp0_iter10_reg <= weights3_0_addr_8_reg_1124_pp0_iter9_reg;
        weights3_0_addr_8_reg_1124_pp0_iter1_reg <= weights3_0_addr_8_reg_1124;
        weights3_0_addr_8_reg_1124_pp0_iter2_reg <= weights3_0_addr_8_reg_1124_pp0_iter1_reg;
        weights3_0_addr_8_reg_1124_pp0_iter3_reg <= weights3_0_addr_8_reg_1124_pp0_iter2_reg;
        weights3_0_addr_8_reg_1124_pp0_iter4_reg <= weights3_0_addr_8_reg_1124_pp0_iter3_reg;
        weights3_0_addr_8_reg_1124_pp0_iter5_reg <= weights3_0_addr_8_reg_1124_pp0_iter4_reg;
        weights3_0_addr_8_reg_1124_pp0_iter6_reg <= weights3_0_addr_8_reg_1124_pp0_iter5_reg;
        weights3_0_addr_8_reg_1124_pp0_iter7_reg <= weights3_0_addr_8_reg_1124_pp0_iter6_reg;
        weights3_0_addr_8_reg_1124_pp0_iter8_reg <= weights3_0_addr_8_reg_1124_pp0_iter7_reg;
        weights3_0_addr_8_reg_1124_pp0_iter9_reg <= weights3_0_addr_8_reg_1124_pp0_iter8_reg;
        weights3_0_addr_9_reg_1144 <= zext_ln194_6_fu_671_p1;
        weights3_0_addr_9_reg_1144_pp0_iter10_reg <= weights3_0_addr_9_reg_1144_pp0_iter9_reg;
        weights3_0_addr_9_reg_1144_pp0_iter1_reg <= weights3_0_addr_9_reg_1144;
        weights3_0_addr_9_reg_1144_pp0_iter2_reg <= weights3_0_addr_9_reg_1144_pp0_iter1_reg;
        weights3_0_addr_9_reg_1144_pp0_iter3_reg <= weights3_0_addr_9_reg_1144_pp0_iter2_reg;
        weights3_0_addr_9_reg_1144_pp0_iter4_reg <= weights3_0_addr_9_reg_1144_pp0_iter3_reg;
        weights3_0_addr_9_reg_1144_pp0_iter5_reg <= weights3_0_addr_9_reg_1144_pp0_iter4_reg;
        weights3_0_addr_9_reg_1144_pp0_iter6_reg <= weights3_0_addr_9_reg_1144_pp0_iter5_reg;
        weights3_0_addr_9_reg_1144_pp0_iter7_reg <= weights3_0_addr_9_reg_1144_pp0_iter6_reg;
        weights3_0_addr_9_reg_1144_pp0_iter8_reg <= weights3_0_addr_9_reg_1144_pp0_iter7_reg;
        weights3_0_addr_9_reg_1144_pp0_iter9_reg <= weights3_0_addr_9_reg_1144_pp0_iter8_reg;
        weights3_1_addr_8_reg_1129 <= add_ln194_3_cast_fu_629_p1;
        weights3_1_addr_8_reg_1129_pp0_iter10_reg <= weights3_1_addr_8_reg_1129_pp0_iter9_reg;
        weights3_1_addr_8_reg_1129_pp0_iter1_reg <= weights3_1_addr_8_reg_1129;
        weights3_1_addr_8_reg_1129_pp0_iter2_reg <= weights3_1_addr_8_reg_1129_pp0_iter1_reg;
        weights3_1_addr_8_reg_1129_pp0_iter3_reg <= weights3_1_addr_8_reg_1129_pp0_iter2_reg;
        weights3_1_addr_8_reg_1129_pp0_iter4_reg <= weights3_1_addr_8_reg_1129_pp0_iter3_reg;
        weights3_1_addr_8_reg_1129_pp0_iter5_reg <= weights3_1_addr_8_reg_1129_pp0_iter4_reg;
        weights3_1_addr_8_reg_1129_pp0_iter6_reg <= weights3_1_addr_8_reg_1129_pp0_iter5_reg;
        weights3_1_addr_8_reg_1129_pp0_iter7_reg <= weights3_1_addr_8_reg_1129_pp0_iter6_reg;
        weights3_1_addr_8_reg_1129_pp0_iter8_reg <= weights3_1_addr_8_reg_1129_pp0_iter7_reg;
        weights3_1_addr_8_reg_1129_pp0_iter9_reg <= weights3_1_addr_8_reg_1129_pp0_iter8_reg;
        weights3_1_addr_9_reg_1149 <= lshr_ln194_9_cast_fu_691_p1;
        weights3_1_addr_9_reg_1149_pp0_iter10_reg <= weights3_1_addr_9_reg_1149_pp0_iter9_reg;
        weights3_1_addr_9_reg_1149_pp0_iter1_reg <= weights3_1_addr_9_reg_1149;
        weights3_1_addr_9_reg_1149_pp0_iter2_reg <= weights3_1_addr_9_reg_1149_pp0_iter1_reg;
        weights3_1_addr_9_reg_1149_pp0_iter3_reg <= weights3_1_addr_9_reg_1149_pp0_iter2_reg;
        weights3_1_addr_9_reg_1149_pp0_iter4_reg <= weights3_1_addr_9_reg_1149_pp0_iter3_reg;
        weights3_1_addr_9_reg_1149_pp0_iter5_reg <= weights3_1_addr_9_reg_1149_pp0_iter4_reg;
        weights3_1_addr_9_reg_1149_pp0_iter6_reg <= weights3_1_addr_9_reg_1149_pp0_iter5_reg;
        weights3_1_addr_9_reg_1149_pp0_iter7_reg <= weights3_1_addr_9_reg_1149_pp0_iter6_reg;
        weights3_1_addr_9_reg_1149_pp0_iter8_reg <= weights3_1_addr_9_reg_1149_pp0_iter7_reg;
        weights3_1_addr_9_reg_1149_pp0_iter9_reg <= weights3_1_addr_9_reg_1149_pp0_iter8_reg;
        weights3_2_addr_8_reg_1134 <= add_ln194_3_cast_fu_629_p1;
        weights3_2_addr_8_reg_1134_pp0_iter10_reg <= weights3_2_addr_8_reg_1134_pp0_iter9_reg;
        weights3_2_addr_8_reg_1134_pp0_iter1_reg <= weights3_2_addr_8_reg_1134;
        weights3_2_addr_8_reg_1134_pp0_iter2_reg <= weights3_2_addr_8_reg_1134_pp0_iter1_reg;
        weights3_2_addr_8_reg_1134_pp0_iter3_reg <= weights3_2_addr_8_reg_1134_pp0_iter2_reg;
        weights3_2_addr_8_reg_1134_pp0_iter4_reg <= weights3_2_addr_8_reg_1134_pp0_iter3_reg;
        weights3_2_addr_8_reg_1134_pp0_iter5_reg <= weights3_2_addr_8_reg_1134_pp0_iter4_reg;
        weights3_2_addr_8_reg_1134_pp0_iter6_reg <= weights3_2_addr_8_reg_1134_pp0_iter5_reg;
        weights3_2_addr_8_reg_1134_pp0_iter7_reg <= weights3_2_addr_8_reg_1134_pp0_iter6_reg;
        weights3_2_addr_8_reg_1134_pp0_iter8_reg <= weights3_2_addr_8_reg_1134_pp0_iter7_reg;
        weights3_2_addr_8_reg_1134_pp0_iter9_reg <= weights3_2_addr_8_reg_1134_pp0_iter8_reg;
        weights3_2_addr_9_reg_1154 <= zext_ln194_7_fu_711_p1;
        weights3_2_addr_9_reg_1154_pp0_iter10_reg <= weights3_2_addr_9_reg_1154_pp0_iter9_reg;
        weights3_2_addr_9_reg_1154_pp0_iter1_reg <= weights3_2_addr_9_reg_1154;
        weights3_2_addr_9_reg_1154_pp0_iter2_reg <= weights3_2_addr_9_reg_1154_pp0_iter1_reg;
        weights3_2_addr_9_reg_1154_pp0_iter3_reg <= weights3_2_addr_9_reg_1154_pp0_iter2_reg;
        weights3_2_addr_9_reg_1154_pp0_iter4_reg <= weights3_2_addr_9_reg_1154_pp0_iter3_reg;
        weights3_2_addr_9_reg_1154_pp0_iter5_reg <= weights3_2_addr_9_reg_1154_pp0_iter4_reg;
        weights3_2_addr_9_reg_1154_pp0_iter6_reg <= weights3_2_addr_9_reg_1154_pp0_iter5_reg;
        weights3_2_addr_9_reg_1154_pp0_iter7_reg <= weights3_2_addr_9_reg_1154_pp0_iter6_reg;
        weights3_2_addr_9_reg_1154_pp0_iter8_reg <= weights3_2_addr_9_reg_1154_pp0_iter7_reg;
        weights3_2_addr_9_reg_1154_pp0_iter9_reg <= weights3_2_addr_9_reg_1154_pp0_iter8_reg;
        weights3_3_addr_8_reg_1139 <= zext_ln194_5_fu_651_p1;
        weights3_3_addr_8_reg_1139_pp0_iter10_reg <= weights3_3_addr_8_reg_1139_pp0_iter9_reg;
        weights3_3_addr_8_reg_1139_pp0_iter1_reg <= weights3_3_addr_8_reg_1139;
        weights3_3_addr_8_reg_1139_pp0_iter2_reg <= weights3_3_addr_8_reg_1139_pp0_iter1_reg;
        weights3_3_addr_8_reg_1139_pp0_iter3_reg <= weights3_3_addr_8_reg_1139_pp0_iter2_reg;
        weights3_3_addr_8_reg_1139_pp0_iter4_reg <= weights3_3_addr_8_reg_1139_pp0_iter3_reg;
        weights3_3_addr_8_reg_1139_pp0_iter5_reg <= weights3_3_addr_8_reg_1139_pp0_iter4_reg;
        weights3_3_addr_8_reg_1139_pp0_iter6_reg <= weights3_3_addr_8_reg_1139_pp0_iter5_reg;
        weights3_3_addr_8_reg_1139_pp0_iter7_reg <= weights3_3_addr_8_reg_1139_pp0_iter6_reg;
        weights3_3_addr_8_reg_1139_pp0_iter8_reg <= weights3_3_addr_8_reg_1139_pp0_iter7_reg;
        weights3_3_addr_8_reg_1139_pp0_iter9_reg <= weights3_3_addr_8_reg_1139_pp0_iter8_reg;
        weights3_3_addr_9_reg_1159 <= zext_ln194_7_fu_711_p1;
        weights3_3_addr_9_reg_1159_pp0_iter10_reg <= weights3_3_addr_9_reg_1159_pp0_iter9_reg;
        weights3_3_addr_9_reg_1159_pp0_iter1_reg <= weights3_3_addr_9_reg_1159;
        weights3_3_addr_9_reg_1159_pp0_iter2_reg <= weights3_3_addr_9_reg_1159_pp0_iter1_reg;
        weights3_3_addr_9_reg_1159_pp0_iter3_reg <= weights3_3_addr_9_reg_1159_pp0_iter2_reg;
        weights3_3_addr_9_reg_1159_pp0_iter4_reg <= weights3_3_addr_9_reg_1159_pp0_iter3_reg;
        weights3_3_addr_9_reg_1159_pp0_iter5_reg <= weights3_3_addr_9_reg_1159_pp0_iter4_reg;
        weights3_3_addr_9_reg_1159_pp0_iter6_reg <= weights3_3_addr_9_reg_1159_pp0_iter5_reg;
        weights3_3_addr_9_reg_1159_pp0_iter7_reg <= weights3_3_addr_9_reg_1159_pp0_iter6_reg;
        weights3_3_addr_9_reg_1159_pp0_iter8_reg <= weights3_3_addr_9_reg_1159_pp0_iter7_reg;
        weights3_3_addr_9_reg_1159_pp0_iter9_reg <= weights3_3_addr_9_reg_1159_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_load_9_reg_1184 <= weights3_0_q0;
        weights3_1_load_9_reg_1189 <= weights3_1_q0;
        weights3_2_load_9_reg_1194 <= weights3_2_q0;
        weights3_3_load_9_reg_1199 <= weights3_3_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_1016 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter10 == 1'b1) & (tmp_reg_1016_pp0_iter9_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter10_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter10_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to9 = 1'b1;
    end else begin
        ap_idle_pp0_0to9 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to11 = 1'b1;
    end else begin
        ap_idle_pp0_1to11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        grp_fu_330_p0 = bitcast_ln194_20_fu_860_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_330_p0 = bitcast_ln194_16_fu_844_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_330_p0 = bitcast_ln194_12_fu_814_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_330_p0 = bitcast_ln194_8_fu_794_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_330_p0 = bitcast_ln194_4_fu_774_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_330_p0 = bitcast_ln194_fu_619_p1;
    end else begin
        grp_fu_330_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_334_p0 = bitcast_ln194_21_fu_865_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_334_p0 = bitcast_ln194_17_fu_848_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_334_p0 = bitcast_ln194_13_fu_819_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_334_p0 = bitcast_ln194_9_fu_799_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_334_p0 = bitcast_ln194_5_fu_779_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_334_p0 = bitcast_ln194_1_fu_717_p1;
    end else begin
        grp_fu_334_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_338_p0 = bitcast_ln194_22_fu_870_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_338_p0 = bitcast_ln194_18_fu_852_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_338_p0 = bitcast_ln194_14_fu_824_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_338_p0 = bitcast_ln194_10_fu_804_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_338_p0 = bitcast_ln194_6_fu_784_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_338_p0 = bitcast_ln194_2_fu_722_p1;
    end else begin
        grp_fu_338_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_342_p0 = bitcast_ln194_23_fu_875_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_342_p0 = bitcast_ln194_19_fu_856_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_342_p0 = bitcast_ln194_15_fu_829_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_342_p0 = bitcast_ln194_11_fu_809_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_342_p0 = bitcast_ln194_7_fu_789_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_342_p0 = bitcast_ln194_3_fu_727_p1;
    end else begin
        grp_fu_342_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address0_local = weights3_0_addr_10_reg_1204_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address0_local = weights3_0_addr_9_reg_1144_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address0_local = weights3_0_addr_7_reg_1084_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address0_local = weights3_0_addr_reg_1025_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address0_local = zext_ln194_6_fu_671_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = lshr_ln194_5_cast_fu_592_p1;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address1_local = weights3_0_addr_8_reg_1124_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address1_local = weights3_0_addr_6_reg_1064_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address1_local = lshr_ln194_11_cast_fu_747_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address1_local = add_ln194_3_cast_fu_629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address1_local = zext_ln194_2_fu_531_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address1_local = zext_ln194_fu_458_p1;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_d0_local = bitcast_ln194_29_fu_976_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_d0_local = bitcast_ln194_28_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_d0_local = bitcast_ln194_26_fu_905_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_d0_local = bitcast_ln194_24_fu_880_p1;
    end else begin
        weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter10 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_0_d1_local = bitcast_ln194_27_fu_936_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_0_d1_local = bitcast_ln194_25_fu_900_p1;
        end else begin
            weights3_0_d1_local = 'bx;
        end
    end else begin
        weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address0_local = weights3_1_addr_10_reg_1210_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address0_local = weights3_1_addr_9_reg_1149_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address0_local = weights3_1_addr_7_reg_1089_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address0_local = weights3_1_addr_reg_1046_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address0_local = lshr_ln194_9_cast_fu_691_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = zext_ln194_4_fu_612_p1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address1_local = weights3_1_addr_8_reg_1129_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address1_local = weights3_1_addr_6_reg_1069_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address1_local = zext_ln194_8_fu_767_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address1_local = add_ln194_3_cast_fu_629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address1_local = lshr_ln194_3_cast_fu_551_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address1_local = zext_ln194_fu_458_p1;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_d0_local = bitcast_ln194_35_fu_981_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_d0_local = bitcast_ln194_34_fu_951_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_d0_local = bitcast_ln194_32_fu_914_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_d0_local = bitcast_ln194_30_fu_885_p1;
    end else begin
        weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter10 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_1_d1_local = bitcast_ln194_33_fu_946_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_1_d1_local = bitcast_ln194_31_fu_909_p1;
        end else begin
            weights3_1_d1_local = 'bx;
        end
    end else begin
        weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_address0_local = weights3_2_addr_10_reg_1216_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_2_address0_local = weights3_2_addr_9_reg_1154_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_2_address0_local = weights3_2_addr_7_reg_1094_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_2_address0_local = weights3_2_addr_reg_1052_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_address0_local = zext_ln194_7_fu_711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address0_local = zext_ln194_4_fu_612_p1;
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_2_address1_local = weights3_2_addr_8_reg_1134_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_2_address1_local = weights3_2_addr_6_reg_1074_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_2_address1_local = zext_ln194_8_fu_767_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_address1_local = add_ln194_3_cast_fu_629_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address1_local = zext_ln194_3_fu_571_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_address1_local = zext_ln194_fu_458_p1;
    end else begin
        weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_d0_local = bitcast_ln194_41_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_2_d0_local = bitcast_ln194_40_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_2_d0_local = bitcast_ln194_38_fu_923_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_2_d0_local = bitcast_ln194_36_fu_890_p1;
    end else begin
        weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter10 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_2_d1_local = bitcast_ln194_39_fu_956_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_2_d1_local = bitcast_ln194_37_fu_918_p1;
        end else begin
            weights3_2_d1_local = 'bx;
        end
    end else begin
        weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights3_2_we0_local = 1'b1;
    end else begin
        weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights3_2_we1_local = 1'b1;
    end else begin
        weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address0_local = weights3_3_addr_10_reg_1222_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_3_address0_local = weights3_3_addr_9_reg_1159_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_address0_local = weights3_3_addr_7_reg_1099_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_3_address0_local = weights3_3_addr_reg_1058_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address0_local = zext_ln194_7_fu_711_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address0_local = zext_ln194_4_fu_612_p1;
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_3_address1_local = weights3_3_addr_8_reg_1139_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_address1_local = weights3_3_addr_6_reg_1079_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_3_address1_local = zext_ln194_8_fu_767_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address1_local = zext_ln194_5_fu_651_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address1_local = zext_ln194_3_fu_571_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address1_local = zext_ln194_1_fu_511_p1;
    end else begin
        weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_d0_local = bitcast_ln194_47_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_3_d0_local = bitcast_ln194_46_fu_971_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_3_d0_local = bitcast_ln194_44_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_3_d0_local = bitcast_ln194_42_fu_895_p1;
    end else begin
        weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter10 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights3_3_d1_local = bitcast_ln194_45_fu_966_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights3_3_d1_local = bitcast_ln194_43_fu_927_p1;
        end else begin
            weights3_3_d1_local = 'bx;
        end
    end else begin
        weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights3_3_we0_local = 1'b1;
    end else begin
        weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        weights3_3_we1_local = 1'b1;
    end else begin
        weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter10_stage0) & (ap_idle_pp0_0to9 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to11 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln192_fu_834_p2 = (i_4_reg_1011 + 7'd8);
assign add_ln194_1_fu_536_p2 = (empty_reg_1031 + 8'd2);
assign add_ln194_2_fu_577_p2 = (empty_reg_1031 + 8'd5);
assign add_ln194_3_cast_fu_629_p1 = add_ln194_3_fu_624_p2;
assign add_ln194_3_fu_624_p2 = (sub_ln194_reg_1020 + 6'd3);
assign add_ln194_4_fu_656_p2 = (empty_reg_1031 + 8'd13);
assign add_ln194_5_fu_676_p2 = (empty_reg_1031 + 8'd14);
assign add_ln194_6_fu_732_p2 = (empty_reg_1031 + 8'd17);
assign add_ln194_fu_516_p2 = (empty_reg_1031 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign bitcast_ln194_10_fu_804_p1 = reg_372;
assign bitcast_ln194_11_fu_809_p1 = reg_377;
assign bitcast_ln194_12_fu_814_p1 = reg_346;
assign bitcast_ln194_13_fu_819_p1 = reg_350;
assign bitcast_ln194_14_fu_824_p1 = reg_354;
assign bitcast_ln194_15_fu_829_p1 = reg_358;
assign bitcast_ln194_16_fu_844_p1 = weights3_0_load_9_reg_1184;
assign bitcast_ln194_17_fu_848_p1 = weights3_1_load_9_reg_1189;
assign bitcast_ln194_18_fu_852_p1 = weights3_2_load_9_reg_1194;
assign bitcast_ln194_19_fu_856_p1 = weights3_3_load_9_reg_1199;
assign bitcast_ln194_1_fu_717_p1 = reg_350;
assign bitcast_ln194_20_fu_860_p1 = reg_362;
assign bitcast_ln194_21_fu_865_p1 = reg_367;
assign bitcast_ln194_22_fu_870_p1 = reg_372;
assign bitcast_ln194_23_fu_875_p1 = reg_377;
assign bitcast_ln194_24_fu_880_p1 = reg_382;
assign bitcast_ln194_25_fu_900_p1 = reg_398;
assign bitcast_ln194_26_fu_905_p1 = div213_2_2_reg_1308;
assign bitcast_ln194_27_fu_936_p1 = reg_382;
assign bitcast_ln194_28_fu_941_p1 = reg_398;
assign bitcast_ln194_29_fu_976_p1 = reg_382;
assign bitcast_ln194_2_fu_722_p1 = reg_354;
assign bitcast_ln194_30_fu_885_p1 = reg_386;
assign bitcast_ln194_31_fu_909_p1 = reg_402;
assign bitcast_ln194_32_fu_914_p1 = div213_3_reg_1313;
assign bitcast_ln194_33_fu_946_p1 = reg_386;
assign bitcast_ln194_34_fu_951_p1 = reg_402;
assign bitcast_ln194_35_fu_981_p1 = reg_386;
assign bitcast_ln194_36_fu_890_p1 = reg_390;
assign bitcast_ln194_37_fu_918_p1 = reg_406;
assign bitcast_ln194_38_fu_923_p1 = div213_3_1_reg_1318;
assign bitcast_ln194_39_fu_956_p1 = reg_390;
assign bitcast_ln194_3_fu_727_p1 = reg_358;
assign bitcast_ln194_40_fu_961_p1 = reg_406;
assign bitcast_ln194_41_fu_986_p1 = reg_390;
assign bitcast_ln194_42_fu_895_p1 = reg_394;
assign bitcast_ln194_43_fu_927_p1 = reg_410;
assign bitcast_ln194_44_fu_932_p1 = div213_3_2_reg_1323;
assign bitcast_ln194_45_fu_966_p1 = reg_394;
assign bitcast_ln194_46_fu_971_p1 = reg_410;
assign bitcast_ln194_47_fu_991_p1 = reg_394;
assign bitcast_ln194_4_fu_774_p1 = reg_346;
assign bitcast_ln194_5_fu_779_p1 = reg_350;
assign bitcast_ln194_6_fu_784_p1 = reg_354;
assign bitcast_ln194_7_fu_789_p1 = reg_358;
assign bitcast_ln194_8_fu_794_p1 = reg_362;
assign bitcast_ln194_9_fu_799_p1 = reg_367;
assign bitcast_ln194_fu_619_p1 = reg_346;
assign empty_43_fu_556_p2 = (empty_reg_1031 + 8'd3);
assign empty_44_fu_597_p2 = (empty_reg_1031 + 8'd6);
assign empty_45_fu_636_p2 = (empty_reg_1031 + 8'd12);
assign empty_46_fu_696_p2 = (empty_reg_1031 + 8'd15);
assign empty_47_fu_752_p2 = (empty_reg_1031 + 8'd18);
assign empty_fu_495_p2 = (p_shl_fu_487_p3 - or_ln192_cast_fu_483_p1);
assign lshr_ln194_10_fu_737_p4 = {{add_ln194_6_fu_732_p2[7:2]}};
assign lshr_ln194_11_cast_fu_747_p1 = lshr_ln194_10_fu_737_p4;
assign lshr_ln194_11_fu_757_p4 = {{empty_47_fu_752_p2[7:2]}};
assign lshr_ln194_1_fu_501_p4 = {{empty_fu_495_p2[7:2]}};
assign lshr_ln194_2_fu_521_p4 = {{add_ln194_fu_516_p2[7:2]}};
assign lshr_ln194_3_cast_fu_551_p1 = lshr_ln194_3_fu_541_p4;
assign lshr_ln194_3_fu_541_p4 = {{add_ln194_1_fu_536_p2[7:2]}};
assign lshr_ln194_4_fu_561_p4 = {{empty_43_fu_556_p2[7:2]}};
assign lshr_ln194_5_cast_fu_592_p1 = lshr_ln194_5_fu_582_p4;
assign lshr_ln194_5_fu_582_p4 = {{add_ln194_2_fu_577_p2[7:2]}};
assign lshr_ln194_6_fu_602_p4 = {{empty_44_fu_597_p2[7:2]}};
assign lshr_ln194_7_fu_641_p4 = {{empty_45_fu_636_p2[7:2]}};
assign lshr_ln194_8_fu_661_p4 = {{add_ln194_4_fu_656_p2[7:2]}};
assign lshr_ln194_9_cast_fu_691_p1 = lshr_ln194_9_fu_681_p4;
assign lshr_ln194_9_fu_681_p4 = {{add_ln194_5_fu_676_p2[7:2]}};
assign lshr_ln194_s_fu_701_p4 = {{empty_46_fu_696_p2[7:2]}};
assign lshr_ln7_fu_430_p4 = {{ap_sig_allocacmp_i_4[5:2]}};
assign or_ln192_cast_fu_483_p1 = or_ln4_fu_475_p3;
assign or_ln4_fu_475_p3 = {{tmp_s_fu_465_p4}, {1'd1}};
assign p_shl1_fu_444_p3 = {{lshr_ln7_fu_430_p4}, {2'd0}};
assign p_shl_fu_487_p3 = {{tmp_s_fu_465_p4}, {3'd4}};
assign sub_ln194_fu_452_p2 = (p_shl1_fu_444_p3 - zext_ln194_9_fu_440_p1);
assign tmp_s_fu_465_p4 = {{ap_sig_allocacmp_i_4[5:1]}};
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
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = weights3_2_address1_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_2_d0 = weights3_2_d0_local;
assign weights3_2_d1 = weights3_2_d1_local;
assign weights3_2_we0 = weights3_2_we0_local;
assign weights3_2_we1 = weights3_2_we1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = weights3_3_address1_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
assign weights3_3_d0 = weights3_3_d0_local;
assign weights3_3_d1 = weights3_3_d1_local;
assign weights3_3_we0 = weights3_3_we0_local;
assign weights3_3_we1 = weights3_3_we1_local;
assign zext_ln194_1_fu_511_p1 = lshr_ln194_1_fu_501_p4;
assign zext_ln194_2_fu_531_p1 = lshr_ln194_2_fu_521_p4;
assign zext_ln194_3_fu_571_p1 = lshr_ln194_4_fu_561_p4;
assign zext_ln194_4_fu_612_p1 = lshr_ln194_6_fu_602_p4;
assign zext_ln194_5_fu_651_p1 = lshr_ln194_7_fu_641_p4;
assign zext_ln194_6_fu_671_p1 = lshr_ln194_8_fu_661_p4;
assign zext_ln194_7_fu_711_p1 = lshr_ln194_s_fu_701_p4;
assign zext_ln194_8_fu_767_p1 = lshr_ln194_11_fu_757_p4;
assign zext_ln194_9_fu_440_p1 = lshr_ln7_fu_430_p4;
assign zext_ln194_fu_458_p1 = sub_ln194_fu_452_p2;
always @ (posedge ap_clk) begin
    empty_reg_1031[0] <= 1'b1;
end
endmodule 
