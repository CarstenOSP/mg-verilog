module md_md_Pipeline_loop_q (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_z,sum_y,sum_x,sext_ln24,p_x,p_y,p_z,mul_ln31,position_address0,position_ce0,position_q0,position_address1,position_ce1,position_q1,q_idx_range,position_load,empty,trunc_ln34_3,trunc_ln34_5,sum_z_1_out,sum_z_1_out_ap_vld,sum_y_1_out,sum_y_1_out_ap_vld,sum_x_1_out,sum_x_1_out_ap_vld,sum_x_3_out,sum_x_3_out_ap_vld,sum_y_3_out,sum_y_3_out_ap_vld,sum_z_3_out,sum_z_3_out_ap_vld,ap_return); 
parameter    ap_ST_fsm_state1 = 20'd1;
parameter    ap_ST_fsm_pp0_stage0 = 20'd2;
parameter    ap_ST_fsm_pp0_stage1 = 20'd4;
parameter    ap_ST_fsm_pp0_stage2 = 20'd8;
parameter    ap_ST_fsm_pp0_stage3 = 20'd16;
parameter    ap_ST_fsm_pp0_stage4 = 20'd32;
parameter    ap_ST_fsm_pp0_stage5 = 20'd64;
parameter    ap_ST_fsm_pp0_stage6 = 20'd128;
parameter    ap_ST_fsm_pp0_stage7 = 20'd256;
parameter    ap_ST_fsm_pp0_stage8 = 20'd512;
parameter    ap_ST_fsm_pp0_stage9 = 20'd1024;
parameter    ap_ST_fsm_pp0_stage10 = 20'd2048;
parameter    ap_ST_fsm_pp0_stage11 = 20'd4096;
parameter    ap_ST_fsm_pp0_stage12 = 20'd8192;
parameter    ap_ST_fsm_pp0_stage13 = 20'd16384;
parameter    ap_ST_fsm_pp0_stage14 = 20'd32768;
parameter    ap_ST_fsm_pp0_stage15 = 20'd65536;
parameter    ap_ST_fsm_state174 = 20'd131072;
parameter    ap_ST_fsm_state175 = 20'd262144;
parameter    ap_ST_fsm_state176 = 20'd524288;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] sum_z;
input  [63:0] sum_y;
input  [63:0] sum_x;
input  [31:0] sext_ln24;
input  [63:0] p_x;
input  [63:0] p_y;
input  [63:0] p_z;
input  [9:0] mul_ln31;
output  [9:0] position_address0;
output   position_ce0;
input  [191:0] position_q0;
output  [9:0] position_address1;
output   position_ce1;
input  [191:0] position_q1;
input  [31:0] q_idx_range;
input  [190:0] position_load;
input  [51:0] empty;
input  [51:0] trunc_ln34_3;
input  [51:0] trunc_ln34_5;
output  [63:0] sum_z_1_out;
output   sum_z_1_out_ap_vld;
output  [63:0] sum_y_1_out;
output   sum_y_1_out_ap_vld;
output  [63:0] sum_x_1_out;
output   sum_x_1_out_ap_vld;
output  [63:0] sum_x_3_out;
output   sum_x_3_out_ap_vld;
output  [63:0] sum_y_3_out;
output   sum_y_3_out_ap_vld;
output  [63:0] sum_z_3_out;
output   sum_z_3_out_ap_vld;
output  [0:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg sum_z_1_out_ap_vld;
reg sum_y_1_out_ap_vld;
reg sum_x_1_out_ap_vld;
reg sum_x_3_out_ap_vld;
reg sum_y_3_out_ap_vld;
reg sum_z_3_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] sum_x_3_reg_301;
reg   [63:0] sum_y_3_reg_312;
reg   [63:0] sum_z_3_reg_323;
wire  signed [32:0] sext_ln24_cast_fu_411_p1;
reg  signed [32:0] sext_ln24_cast_reg_1072;
reg   [31:0] q_idx_1_reg_1077;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln30_fu_442_p2;
reg   [0:0] icmp_ln30_reg_1082;
reg   [0:0] icmp_ln30_reg_1082_pp0_iter1_reg;
reg   [0:0] icmp_ln30_reg_1082_pp0_iter2_reg;
reg   [0:0] icmp_ln30_reg_1082_pp0_iter3_reg;
reg   [0:0] icmp_ln30_reg_1082_pp0_iter4_reg;
reg   [0:0] icmp_ln30_reg_1082_pp0_iter5_reg;
reg   [0:0] icmp_ln30_reg_1082_pp0_iter6_reg;
reg   [0:0] icmp_ln30_reg_1082_pp0_iter7_reg;
reg   [0:0] icmp_ln30_reg_1082_pp0_iter8_reg;
reg   [0:0] icmp_ln30_reg_1082_pp0_iter9_reg;
reg   [0:0] icmp_ln30_reg_1082_pp0_iter10_reg;
wire   [0:0] or_ln34_1_fu_481_p2;
reg   [0:0] or_ln34_1_reg_1091;
wire   [0:0] or_ln34_3_fu_507_p2;
reg   [0:0] or_ln34_3_reg_1097;
wire   [0:0] or_ln34_5_fu_533_p2;
reg   [0:0] or_ln34_5_reg_1103;
wire   [0:0] icmp_ln30_1_fu_589_p2;
reg   [0:0] icmp_ln30_1_reg_1114;
reg   [0:0] icmp_ln30_1_reg_1114_pp0_iter1_reg;
reg   [0:0] icmp_ln30_1_reg_1114_pp0_iter2_reg;
reg   [0:0] icmp_ln30_1_reg_1114_pp0_iter3_reg;
reg   [0:0] icmp_ln30_1_reg_1114_pp0_iter4_reg;
reg   [0:0] icmp_ln30_1_reg_1114_pp0_iter5_reg;
reg   [0:0] icmp_ln30_1_reg_1114_pp0_iter6_reg;
reg   [0:0] icmp_ln30_1_reg_1114_pp0_iter7_reg;
reg   [0:0] icmp_ln30_1_reg_1114_pp0_iter8_reg;
reg   [0:0] icmp_ln30_1_reg_1114_pp0_iter9_reg;
reg   [0:0] icmp_ln30_1_reg_1114_pp0_iter10_reg;
wire   [63:0] q_x_fu_598_p1;
reg   [63:0] q_x_reg_1118;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] q_y_fu_612_p1;
reg   [63:0] q_y_reg_1124;
wire   [63:0] q_z_fu_626_p1;
reg   [63:0] q_z_reg_1130;
wire   [0:0] icmp_ln34_fu_644_p2;
reg   [0:0] icmp_ln34_reg_1136;
wire   [0:0] icmp_ln34_1_fu_650_p2;
reg   [0:0] icmp_ln34_1_reg_1141;
wire   [0:0] icmp_ln34_4_fu_676_p2;
reg   [0:0] icmp_ln34_4_reg_1146;
wire   [0:0] icmp_ln34_5_fu_682_p2;
reg   [0:0] icmp_ln34_5_reg_1151;
wire   [0:0] icmp_ln34_8_fu_708_p2;
reg   [0:0] icmp_ln34_8_reg_1156;
wire   [0:0] icmp_ln34_9_fu_714_p2;
reg   [0:0] icmp_ln34_9_reg_1161;
wire   [63:0] q_x_1_fu_724_p1;
reg   [63:0] q_x_1_reg_1166;
wire   [63:0] q_y_1_fu_738_p1;
reg   [63:0] q_y_1_reg_1172;
wire   [63:0] q_z_1_fu_752_p1;
reg   [63:0] q_z_1_reg_1178;
wire   [0:0] icmp_ln34_12_fu_770_p2;
reg   [0:0] icmp_ln34_12_reg_1184;
wire   [0:0] icmp_ln34_13_fu_776_p2;
reg   [0:0] icmp_ln34_13_reg_1189;
wire   [0:0] icmp_ln34_14_fu_802_p2;
reg   [0:0] icmp_ln34_14_reg_1194;
wire   [0:0] icmp_ln34_15_fu_808_p2;
reg   [0:0] icmp_ln34_15_reg_1199;
wire   [0:0] icmp_ln34_16_fu_834_p2;
reg   [0:0] icmp_ln34_16_reg_1204;
wire   [0:0] icmp_ln34_17_fu_840_p2;
reg   [0:0] icmp_ln34_17_reg_1209;
wire   [0:0] grp_fu_407_p2;
reg   [0:0] tmp_5_reg_1214;
wire    ap_CS_fsm_pp0_stage3;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] and_ln34_2_fu_850_p2;
reg   [0:0] and_ln34_2_reg_1219;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] and_ln34_7_fu_895_p2;
reg   [0:0] and_ln34_7_reg_1224;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [0:0] and_ln34_7_reg_1224_pp0_iter1_reg;
reg   [0:0] and_ln34_7_reg_1224_pp0_iter2_reg;
reg   [0:0] and_ln34_7_reg_1224_pp0_iter3_reg;
reg   [0:0] and_ln34_7_reg_1224_pp0_iter4_reg;
reg   [0:0] and_ln34_7_reg_1224_pp0_iter5_reg;
reg   [0:0] and_ln34_7_reg_1224_pp0_iter6_reg;
reg   [0:0] and_ln34_7_reg_1224_pp0_iter7_reg;
reg   [0:0] and_ln34_7_reg_1224_pp0_iter8_reg;
reg   [0:0] and_ln34_7_reg_1224_pp0_iter9_reg;
wire   [0:0] and_ln34_9_fu_910_p2;
reg   [0:0] and_ln34_9_reg_1228;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] and_ln34_13_fu_925_p2;
reg   [0:0] and_ln34_13_reg_1233;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln34_15_fu_951_p2;
reg   [0:0] and_ln34_15_reg_1238;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [0:0] and_ln34_15_reg_1238_pp0_iter1_reg;
reg   [0:0] and_ln34_15_reg_1238_pp0_iter2_reg;
reg   [0:0] and_ln34_15_reg_1238_pp0_iter3_reg;
reg   [0:0] and_ln34_15_reg_1238_pp0_iter4_reg;
reg   [0:0] and_ln34_15_reg_1238_pp0_iter5_reg;
reg   [0:0] and_ln34_15_reg_1238_pp0_iter6_reg;
reg   [0:0] and_ln34_15_reg_1238_pp0_iter7_reg;
reg   [0:0] and_ln34_15_reg_1238_pp0_iter8_reg;
reg   [0:0] and_ln34_15_reg_1238_pp0_iter9_reg;
reg   [0:0] and_ln34_15_reg_1238_pp0_iter10_reg;
wire   [63:0] grp_fu_377_p2;
reg   [63:0] dx_reg_1242;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] dx_reg_1242_pp0_iter1_reg;
reg   [63:0] dx_reg_1242_pp0_iter2_reg;
reg   [63:0] dx_reg_1242_pp0_iter3_reg;
reg   [63:0] dx_reg_1242_pp0_iter4_reg;
reg   [63:0] dx_reg_1242_pp0_iter5_reg;
reg   [63:0] dx_reg_1242_pp0_iter6_reg;
reg   [63:0] dx_reg_1242_pp0_iter7_reg;
reg   [63:0] dx_reg_1242_pp0_iter8_reg;
wire   [63:0] grp_fu_381_p2;
reg   [63:0] dy_reg_1248;
reg   [63:0] dy_reg_1248_pp0_iter1_reg;
reg   [63:0] dy_reg_1248_pp0_iter2_reg;
reg   [63:0] dy_reg_1248_pp0_iter3_reg;
reg   [63:0] dy_reg_1248_pp0_iter4_reg;
reg   [63:0] dy_reg_1248_pp0_iter5_reg;
reg   [63:0] dy_reg_1248_pp0_iter6_reg;
reg   [63:0] dy_reg_1248_pp0_iter7_reg;
reg   [63:0] dy_reg_1248_pp0_iter8_reg;
wire   [63:0] grp_fu_385_p2;
reg   [63:0] dz_reg_1254;
reg   [63:0] dz_reg_1254_pp0_iter1_reg;
reg   [63:0] dz_reg_1254_pp0_iter2_reg;
reg   [63:0] dz_reg_1254_pp0_iter3_reg;
reg   [63:0] dz_reg_1254_pp0_iter4_reg;
reg   [63:0] dz_reg_1254_pp0_iter5_reg;
reg   [63:0] dz_reg_1254_pp0_iter6_reg;
reg   [63:0] dz_reg_1254_pp0_iter7_reg;
reg   [63:0] dz_reg_1254_pp0_iter8_reg;
reg   [63:0] dx_1_reg_1260;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] dx_1_reg_1260_pp0_iter1_reg;
reg   [63:0] dx_1_reg_1260_pp0_iter2_reg;
reg   [63:0] dx_1_reg_1260_pp0_iter3_reg;
reg   [63:0] dx_1_reg_1260_pp0_iter4_reg;
reg   [63:0] dx_1_reg_1260_pp0_iter5_reg;
reg   [63:0] dx_1_reg_1260_pp0_iter6_reg;
reg   [63:0] dx_1_reg_1260_pp0_iter7_reg;
reg   [63:0] dx_1_reg_1260_pp0_iter8_reg;
reg   [63:0] dy_1_reg_1267;
reg   [63:0] dy_1_reg_1267_pp0_iter1_reg;
reg   [63:0] dy_1_reg_1267_pp0_iter2_reg;
reg   [63:0] dy_1_reg_1267_pp0_iter3_reg;
reg   [63:0] dy_1_reg_1267_pp0_iter4_reg;
reg   [63:0] dy_1_reg_1267_pp0_iter5_reg;
reg   [63:0] dy_1_reg_1267_pp0_iter6_reg;
reg   [63:0] dy_1_reg_1267_pp0_iter7_reg;
reg   [63:0] dy_1_reg_1267_pp0_iter8_reg;
reg   [63:0] dz_1_reg_1274;
reg   [63:0] dz_1_reg_1274_pp0_iter1_reg;
reg   [63:0] dz_1_reg_1274_pp0_iter2_reg;
reg   [63:0] dz_1_reg_1274_pp0_iter3_reg;
reg   [63:0] dz_1_reg_1274_pp0_iter4_reg;
reg   [63:0] dz_1_reg_1274_pp0_iter5_reg;
reg   [63:0] dz_1_reg_1274_pp0_iter6_reg;
reg   [63:0] dz_1_reg_1274_pp0_iter7_reg;
reg   [63:0] dz_1_reg_1274_pp0_iter8_reg;
wire   [63:0] grp_fu_393_p2;
reg   [63:0] mul_reg_1281;
reg    ap_enable_reg_pp0_iter1;
wire   [63:0] grp_fu_397_p2;
reg   [63:0] mul1_reg_1286;
reg   [63:0] mul2_reg_1291;
reg   [63:0] mul_1_reg_1296;
reg   [63:0] mul170_1_reg_1301;
reg   [63:0] mul172_1_reg_1306;
reg   [63:0] add_reg_1311;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] add171_1_reg_1316;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add1_reg_1321;
reg    ap_enable_reg_pp0_iter2;
reg   [63:0] add173_1_reg_1326;
wire   [63:0] grp_fu_402_p2;
reg   [63:0] r2inv_reg_1331;
reg    ap_enable_reg_pp0_iter5;
reg   [63:0] r2inv_reg_1331_pp0_iter6_reg;
reg   [63:0] r2inv_reg_1331_pp0_iter7_reg;
reg   [63:0] r2inv_1_reg_1338;
reg    ap_enable_reg_pp0_iter6;
reg   [63:0] r2inv_1_reg_1338_pp0_iter7_reg;
reg   [63:0] r2inv_1_reg_1338_pp0_iter8_reg;
reg   [63:0] mul3_reg_1345;
reg   [63:0] mul174_1_reg_1350;
reg   [63:0] r6inv_reg_1355;
reg   [63:0] r6inv_reg_1355_pp0_iter7_reg;
reg   [63:0] r6inv_1_reg_1360;
reg   [63:0] r6inv_1_reg_1360_pp0_iter7_reg;
reg   [63:0] mul4_reg_1365;
reg    ap_enable_reg_pp0_iter7;
reg   [63:0] mul176_1_reg_1370;
reg   [63:0] sub_reg_1375;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] sub177_1_reg_1380;
reg    ap_enable_reg_pp0_iter8;
reg   [63:0] potential_reg_1385;
reg   [63:0] potential_1_reg_1390;
reg   [63:0] f_reg_1395;
reg   [63:0] f_1_reg_1401;
reg   [63:0] mul5_reg_1407;
wire    ap_CS_fsm_pp0_stage9;
reg    ap_enable_reg_pp0_iter9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul6_reg_1412;
reg   [63:0] mul7_reg_1417;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul180_1_reg_1422;
reg   [63:0] sum_x_6_reg_1427;
reg   [63:0] sum_y_6_reg_1434;
reg   [63:0] sum_z_6_reg_1441;
reg   [63:0] mul182_1_reg_1448;
reg   [63:0] mul184_1_reg_1453;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_enable_reg_pp0_iter10;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage15_subdone;
reg    ap_predicate_tran165to174_state17;
reg    ap_condition_pp0_flush_enable;
wire    ap_block_pp0_stage3_subdone;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_x_3_reg_301;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_x_3_reg_301;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_x_3_reg_301;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_x_3_reg_301;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_x_3_reg_301;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_x_3_reg_301;
reg   [63:0] ap_phi_reg_pp0_iter6_sum_x_3_reg_301;
reg   [63:0] ap_phi_reg_pp0_iter7_sum_x_3_reg_301;
reg   [63:0] ap_phi_reg_pp0_iter8_sum_x_3_reg_301;
reg   [63:0] ap_phi_reg_pp0_iter9_sum_x_3_reg_301;
reg   [63:0] ap_phi_reg_pp0_iter10_sum_x_3_reg_301;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_y_3_reg_312;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_y_3_reg_312;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_y_3_reg_312;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_y_3_reg_312;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_y_3_reg_312;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_y_3_reg_312;
reg   [63:0] ap_phi_reg_pp0_iter6_sum_y_3_reg_312;
reg   [63:0] ap_phi_reg_pp0_iter7_sum_y_3_reg_312;
reg   [63:0] ap_phi_reg_pp0_iter8_sum_y_3_reg_312;
reg   [63:0] ap_phi_reg_pp0_iter9_sum_y_3_reg_312;
reg   [63:0] ap_phi_reg_pp0_iter10_sum_y_3_reg_312;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_z_3_reg_323;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_z_3_reg_323;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_z_3_reg_323;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_z_3_reg_323;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_z_3_reg_323;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_z_3_reg_323;
reg   [63:0] ap_phi_reg_pp0_iter6_sum_z_3_reg_323;
reg   [63:0] ap_phi_reg_pp0_iter7_sum_z_3_reg_323;
reg   [63:0] ap_phi_reg_pp0_iter8_sum_z_3_reg_323;
reg   [63:0] ap_phi_reg_pp0_iter9_sum_z_3_reg_323;
reg   [63:0] ap_phi_reg_pp0_iter10_sum_z_3_reg_323;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_x_5_reg_334;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_x_5_reg_334;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_x_5_reg_334;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_x_5_reg_334;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_x_5_reg_334;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_x_5_reg_334;
reg   [63:0] ap_phi_reg_pp0_iter6_sum_x_5_reg_334;
reg   [63:0] ap_phi_reg_pp0_iter7_sum_x_5_reg_334;
reg   [63:0] ap_phi_reg_pp0_iter8_sum_x_5_reg_334;
reg   [63:0] ap_phi_reg_pp0_iter9_sum_x_5_reg_334;
reg   [63:0] ap_phi_reg_pp0_iter10_sum_x_5_reg_334;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_y_5_reg_344;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_y_5_reg_344;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_y_5_reg_344;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_y_5_reg_344;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_y_5_reg_344;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_y_5_reg_344;
reg   [63:0] ap_phi_reg_pp0_iter6_sum_y_5_reg_344;
reg   [63:0] ap_phi_reg_pp0_iter7_sum_y_5_reg_344;
reg   [63:0] ap_phi_reg_pp0_iter8_sum_y_5_reg_344;
reg   [63:0] ap_phi_reg_pp0_iter9_sum_y_5_reg_344;
reg   [63:0] ap_phi_reg_pp0_iter10_sum_y_5_reg_344;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_z_5_reg_354;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_z_5_reg_354;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_z_5_reg_354;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_z_5_reg_354;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_z_5_reg_354;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_z_5_reg_354;
reg   [63:0] ap_phi_reg_pp0_iter6_sum_z_5_reg_354;
reg   [63:0] ap_phi_reg_pp0_iter7_sum_z_5_reg_354;
reg   [63:0] ap_phi_reg_pp0_iter8_sum_z_5_reg_354;
reg   [63:0] ap_phi_reg_pp0_iter9_sum_z_5_reg_354;
reg   [63:0] ap_phi_reg_pp0_iter10_sum_z_5_reg_354;
reg   [0:0] UnifiedRetVal_reg_364;
wire    ap_CS_fsm_state175;
wire    ap_CS_fsm_state174;
wire   [63:0] zext_ln31_fu_456_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln31_1_fu_580_p1;
reg   [31:0] q_idx_fu_140;
wire   [31:0] add_ln30_fu_956_p2;
reg   [63:0] sum_x_1_fu_144;
reg   [63:0] ap_sig_allocacmp_sum_x_6;
wire    ap_block_pp0_stage11;
reg   [63:0] sum_y_1_fu_148;
reg   [63:0] ap_sig_allocacmp_sum_y_6;
reg   [63:0] sum_z_1_fu_152;
reg   [63:0] ap_sig_allocacmp_sum_z_6;
reg    position_ce1_local;
reg    position_ce0_local;
reg   [63:0] grp_fu_377_p0;
reg   [63:0] grp_fu_377_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_381_p0;
reg   [63:0] grp_fu_381_p1;
reg   [63:0] grp_fu_385_p0;
reg   [63:0] grp_fu_385_p1;
reg   [63:0] grp_fu_393_p0;
reg   [63:0] grp_fu_393_p1;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_397_p0;
reg   [63:0] grp_fu_397_p1;
reg   [63:0] grp_fu_402_p1;
reg   [63:0] grp_fu_407_p0;
reg   [63:0] grp_fu_407_p1;
wire   [32:0] zext_ln30_fu_438_p1;
wire   [9:0] trunc_ln31_fu_447_p1;
wire   [9:0] add_ln31_fu_451_p2;
wire   [10:0] tmp_1_fu_461_p4;
wire   [0:0] icmp_ln34_3_fu_476_p2;
wire   [0:0] icmp_ln34_2_fu_470_p2;
wire   [10:0] tmp_4_fu_487_p4;
wire   [0:0] icmp_ln34_7_fu_502_p2;
wire   [0:0] icmp_ln34_6_fu_496_p2;
wire   [10:0] tmp_7_fu_513_p4;
wire   [0:0] icmp_ln34_11_fu_528_p2;
wire   [0:0] icmp_ln34_10_fu_522_p2;
wire   [29:0] tmp_13_fu_539_p4;
wire   [8:0] tmp_16_fu_549_p4;
wire   [9:0] or_ln1_cast_fu_567_p3;
wire   [9:0] add_ln31_1_fu_575_p2;
wire   [30:0] or_ln1_fu_559_p3;
wire   [31:0] zext_ln28_fu_585_p1;
wire   [63:0] trunc_ln31_3_fu_594_p1;
wire   [63:0] trunc_ln31_1_fu_602_p4;
wire   [63:0] trunc_ln31_2_fu_616_p4;
wire   [10:0] tmp_fu_630_p4;
wire   [51:0] trunc_ln34_fu_640_p1;
wire   [10:0] tmp_3_fu_656_p4;
wire   [51:0] trunc_ln34_2_fu_666_p4;
wire   [10:0] tmp_6_fu_688_p4;
wire   [51:0] trunc_ln34_4_fu_698_p4;
wire   [63:0] trunc_ln31_6_fu_720_p1;
wire   [63:0] trunc_ln31_4_fu_728_p4;
wire   [63:0] trunc_ln31_5_fu_742_p4;
wire   [10:0] tmp_9_fu_756_p4;
wire   [51:0] trunc_ln34_1_fu_766_p1;
wire   [10:0] tmp_11_fu_782_p4;
wire   [51:0] trunc_ln34_8_fu_792_p4;
wire   [10:0] tmp_14_fu_814_p4;
wire   [51:0] trunc_ln34_s_fu_824_p4;
wire   [0:0] or_ln34_2_fu_846_p2;
wire   [0:0] or_ln34_fu_856_p2;
wire   [0:0] and_ln34_fu_860_p2;
wire   [0:0] or_ln34_4_fu_871_p2;
wire   [0:0] and_ln34_4_fu_875_p2;
wire   [0:0] and_ln34_5_fu_879_p2;
wire   [0:0] and_ln34_3_fu_885_p2;
wire   [0:0] and_ln34_6_fu_890_p2;
wire   [0:0] and_ln34_1_fu_865_p2;
wire   [0:0] or_ln34_6_fu_901_p2;
wire   [0:0] and_ln34_8_fu_905_p2;
wire   [0:0] or_ln34_8_fu_916_p2;
wire   [0:0] and_ln34_12_fu_920_p2;
wire   [0:0] or_ln34_7_fu_931_p2;
wire   [0:0] and_ln34_10_fu_935_p2;
wire   [0:0] and_ln34_11_fu_940_p2;
wire   [0:0] and_ln34_14_fu_946_p2;
reg   [1:0] grp_fu_377_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage8_00001;
reg   [1:0] grp_fu_381_opcode;
reg   [1:0] grp_fu_385_opcode;
wire    ap_block_pp0_stage2_00001;
reg   [0:0] ap_return_preg;
wire    ap_CS_fsm_state176;
reg   [19:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state174_blk;
wire    ap_ST_fsm_state175_blk;
wire    ap_ST_fsm_state176_blk;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
reg   [1:0] ap_exit_tran_regpp0;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 20'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 q_idx_fu_140 = 32'd0;
#0 sum_x_1_fu_144 = 64'd0;
#0 sum_y_1_fu_148 = 64'd0;
#0 sum_z_1_fu_152 = 64'd0;
#0 ap_return_preg = 1'd0;
end
md_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_377_p0),.din1(grp_fu_377_p1),.opcode(grp_fu_377_opcode),.ce(1'b1),.dout(grp_fu_377_p2));
md_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_381_p0),.din1(grp_fu_381_p1),.opcode(grp_fu_381_opcode),.ce(1'b1),.dout(grp_fu_381_p2));
md_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_385_p0),.din1(grp_fu_385_p1),.opcode(grp_fu_385_opcode),.ce(1'b1),.dout(grp_fu_385_p2));
md_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_393_p0),.din1(grp_fu_393_p1),.ce(1'b1),.dout(grp_fu_393_p2));
md_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_397_p0),.din1(grp_fu_397_p1),.ce(1'b1),.dout(grp_fu_397_p2));
md_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(64'd4607182418800017408),.din1(grp_fu_402_p1),.ce(1'b1),.dout(grp_fu_402_p2));
md_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_407_p0),.din1(grp_fu_407_p1),.ce(1'b1),.opcode(5'd1),.dout(grp_fu_407_p2));
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
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((((ap_enable_reg_pp0_iter9 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_subdone)))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter10 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_subdone))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_subdone))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_subdone))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_subdone))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state176)) begin
            ap_return_preg <= UnifiedRetVal_reg_364;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state174)) begin
        UnifiedRetVal_reg_364 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state175)) begin
        UnifiedRetVal_reg_364 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage15_subdone))) begin
        if ((icmp_ln30_reg_1082 == 1'd0)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
        end else if ((ap_predicate_tran165to174_state17 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'd0 == and_ln34_7_reg_1224_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        ap_phi_reg_pp0_iter10_sum_x_3_reg_301 <= grp_fu_377_p2;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter10_sum_x_3_reg_301 <= ap_phi_reg_pp0_iter9_sum_x_3_reg_301;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln34_15_reg_1238_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_phi_reg_pp0_iter10_sum_x_5_reg_334 <= ap_phi_reg_pp0_iter10_sum_x_3_reg_301;
    end else if (((1'd0 == and_ln34_15_reg_1238_pp0_iter10_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001))) begin
        ap_phi_reg_pp0_iter10_sum_x_5_reg_334 <= grp_fu_377_p2;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter10_sum_x_5_reg_334 <= ap_phi_reg_pp0_iter9_sum_x_5_reg_334;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd0 == and_ln34_7_reg_1224_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        ap_phi_reg_pp0_iter10_sum_y_3_reg_312 <= grp_fu_381_p2;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter10_sum_y_3_reg_312 <= ap_phi_reg_pp0_iter9_sum_y_3_reg_312;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln34_15_reg_1238_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_phi_reg_pp0_iter10_sum_y_5_reg_344 <= ap_phi_reg_pp0_iter10_sum_y_3_reg_312;
    end else if (((1'd0 == and_ln34_15_reg_1238_pp0_iter10_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001))) begin
        ap_phi_reg_pp0_iter10_sum_y_5_reg_344 <= grp_fu_381_p2;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter10_sum_y_5_reg_344 <= ap_phi_reg_pp0_iter9_sum_y_5_reg_344;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd0 == and_ln34_7_reg_1224_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        ap_phi_reg_pp0_iter10_sum_z_3_reg_323 <= grp_fu_385_p2;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter10_sum_z_3_reg_323 <= ap_phi_reg_pp0_iter9_sum_z_3_reg_323;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln34_15_reg_1238_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_phi_reg_pp0_iter10_sum_z_5_reg_354 <= ap_phi_reg_pp0_iter10_sum_z_3_reg_323;
    end else if (((1'd0 == and_ln34_15_reg_1238_pp0_iter10_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001))) begin
        ap_phi_reg_pp0_iter10_sum_z_5_reg_354 <= grp_fu_385_p2;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter10_sum_z_5_reg_354 <= ap_phi_reg_pp0_iter9_sum_z_5_reg_354;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln34_7_reg_1224_pp0_iter9_reg) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln30_reg_1082_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        ap_phi_reg_pp0_iter9_sum_x_3_reg_301 <= ap_sig_allocacmp_sum_x_6;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter9_sum_x_3_reg_301 <= ap_phi_reg_pp0_iter8_sum_x_3_reg_301;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln34_7_reg_1224_pp0_iter9_reg) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln30_reg_1082_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        ap_phi_reg_pp0_iter9_sum_y_3_reg_312 <= ap_sig_allocacmp_sum_y_6;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter9_sum_y_3_reg_312 <= ap_phi_reg_pp0_iter8_sum_y_3_reg_312;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln34_7_reg_1224_pp0_iter9_reg) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln30_reg_1082_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        ap_phi_reg_pp0_iter9_sum_z_3_reg_323 <= ap_sig_allocacmp_sum_z_6;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter9_sum_z_3_reg_323 <= ap_phi_reg_pp0_iter8_sum_z_3_reg_323;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        q_idx_fu_140 <= 32'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln30_1_reg_1114 == 1'd1) & (icmp_ln30_reg_1082 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        q_idx_fu_140 <= add_ln30_fu_956_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_x_1_fu_144 <= sum_x;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        sum_x_1_fu_144 <= ap_phi_reg_pp0_iter10_sum_x_5_reg_334;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_y_1_fu_148 <= sum_y;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        sum_y_1_fu_148 <= ap_phi_reg_pp0_iter10_sum_y_5_reg_344;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_z_1_fu_152 <= sum_z;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        sum_z_1_fu_152 <= ap_phi_reg_pp0_iter10_sum_z_5_reg_354;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14_11001))) begin
        add171_1_reg_1316 <= grp_fu_377_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add173_1_reg_1326 <= grp_fu_377_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        add1_reg_1321 <= grp_fu_377_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        add_reg_1311 <= grp_fu_377_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        and_ln34_13_reg_1233 <= and_ln34_13_fu_925_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        and_ln34_15_reg_1238 <= and_ln34_15_fu_951_p2;
        and_ln34_15_reg_1238_pp0_iter10_reg <= and_ln34_15_reg_1238_pp0_iter9_reg;
        and_ln34_15_reg_1238_pp0_iter1_reg <= and_ln34_15_reg_1238;
        and_ln34_15_reg_1238_pp0_iter2_reg <= and_ln34_15_reg_1238_pp0_iter1_reg;
        and_ln34_15_reg_1238_pp0_iter3_reg <= and_ln34_15_reg_1238_pp0_iter2_reg;
        and_ln34_15_reg_1238_pp0_iter4_reg <= and_ln34_15_reg_1238_pp0_iter3_reg;
        and_ln34_15_reg_1238_pp0_iter5_reg <= and_ln34_15_reg_1238_pp0_iter4_reg;
        and_ln34_15_reg_1238_pp0_iter6_reg <= and_ln34_15_reg_1238_pp0_iter5_reg;
        and_ln34_15_reg_1238_pp0_iter7_reg <= and_ln34_15_reg_1238_pp0_iter6_reg;
        and_ln34_15_reg_1238_pp0_iter8_reg <= and_ln34_15_reg_1238_pp0_iter7_reg;
        and_ln34_15_reg_1238_pp0_iter9_reg <= and_ln34_15_reg_1238_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        and_ln34_2_reg_1219 <= and_ln34_2_fu_850_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        and_ln34_7_reg_1224 <= and_ln34_7_fu_895_p2;
        and_ln34_7_reg_1224_pp0_iter1_reg <= and_ln34_7_reg_1224;
        and_ln34_7_reg_1224_pp0_iter2_reg <= and_ln34_7_reg_1224_pp0_iter1_reg;
        and_ln34_7_reg_1224_pp0_iter3_reg <= and_ln34_7_reg_1224_pp0_iter2_reg;
        and_ln34_7_reg_1224_pp0_iter4_reg <= and_ln34_7_reg_1224_pp0_iter3_reg;
        and_ln34_7_reg_1224_pp0_iter5_reg <= and_ln34_7_reg_1224_pp0_iter4_reg;
        and_ln34_7_reg_1224_pp0_iter6_reg <= and_ln34_7_reg_1224_pp0_iter5_reg;
        and_ln34_7_reg_1224_pp0_iter7_reg <= and_ln34_7_reg_1224_pp0_iter6_reg;
        and_ln34_7_reg_1224_pp0_iter8_reg <= and_ln34_7_reg_1224_pp0_iter7_reg;
        and_ln34_7_reg_1224_pp0_iter9_reg <= and_ln34_7_reg_1224_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        and_ln34_9_reg_1228 <= and_ln34_9_fu_910_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter1_sum_x_3_reg_301 <= ap_phi_reg_pp0_iter0_sum_x_3_reg_301;
        ap_phi_reg_pp0_iter1_sum_x_5_reg_334 <= ap_phi_reg_pp0_iter0_sum_x_5_reg_334;
        ap_phi_reg_pp0_iter1_sum_y_3_reg_312 <= ap_phi_reg_pp0_iter0_sum_y_3_reg_312;
        ap_phi_reg_pp0_iter1_sum_y_5_reg_344 <= ap_phi_reg_pp0_iter0_sum_y_5_reg_344;
        ap_phi_reg_pp0_iter1_sum_z_3_reg_323 <= ap_phi_reg_pp0_iter0_sum_z_3_reg_323;
        ap_phi_reg_pp0_iter1_sum_z_5_reg_354 <= ap_phi_reg_pp0_iter0_sum_z_5_reg_354;
        dx_1_reg_1260 <= grp_fu_377_p2;
        dy_1_reg_1267 <= grp_fu_381_p2;
        dz_1_reg_1274 <= grp_fu_385_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter2_sum_x_3_reg_301 <= ap_phi_reg_pp0_iter1_sum_x_3_reg_301;
        ap_phi_reg_pp0_iter2_sum_x_5_reg_334 <= ap_phi_reg_pp0_iter1_sum_x_5_reg_334;
        ap_phi_reg_pp0_iter2_sum_y_3_reg_312 <= ap_phi_reg_pp0_iter1_sum_y_3_reg_312;
        ap_phi_reg_pp0_iter2_sum_y_5_reg_344 <= ap_phi_reg_pp0_iter1_sum_y_5_reg_344;
        ap_phi_reg_pp0_iter2_sum_z_3_reg_323 <= ap_phi_reg_pp0_iter1_sum_z_3_reg_323;
        ap_phi_reg_pp0_iter2_sum_z_5_reg_354 <= ap_phi_reg_pp0_iter1_sum_z_5_reg_354;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter3_sum_x_3_reg_301 <= ap_phi_reg_pp0_iter2_sum_x_3_reg_301;
        ap_phi_reg_pp0_iter3_sum_x_5_reg_334 <= ap_phi_reg_pp0_iter2_sum_x_5_reg_334;
        ap_phi_reg_pp0_iter3_sum_y_3_reg_312 <= ap_phi_reg_pp0_iter2_sum_y_3_reg_312;
        ap_phi_reg_pp0_iter3_sum_y_5_reg_344 <= ap_phi_reg_pp0_iter2_sum_y_5_reg_344;
        ap_phi_reg_pp0_iter3_sum_z_3_reg_323 <= ap_phi_reg_pp0_iter2_sum_z_3_reg_323;
        ap_phi_reg_pp0_iter3_sum_z_5_reg_354 <= ap_phi_reg_pp0_iter2_sum_z_5_reg_354;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter4_sum_x_3_reg_301 <= ap_phi_reg_pp0_iter3_sum_x_3_reg_301;
        ap_phi_reg_pp0_iter4_sum_x_5_reg_334 <= ap_phi_reg_pp0_iter3_sum_x_5_reg_334;
        ap_phi_reg_pp0_iter4_sum_y_3_reg_312 <= ap_phi_reg_pp0_iter3_sum_y_3_reg_312;
        ap_phi_reg_pp0_iter4_sum_y_5_reg_344 <= ap_phi_reg_pp0_iter3_sum_y_5_reg_344;
        ap_phi_reg_pp0_iter4_sum_z_3_reg_323 <= ap_phi_reg_pp0_iter3_sum_z_3_reg_323;
        ap_phi_reg_pp0_iter4_sum_z_5_reg_354 <= ap_phi_reg_pp0_iter3_sum_z_5_reg_354;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter5_sum_x_3_reg_301 <= ap_phi_reg_pp0_iter4_sum_x_3_reg_301;
        ap_phi_reg_pp0_iter5_sum_x_5_reg_334 <= ap_phi_reg_pp0_iter4_sum_x_5_reg_334;
        ap_phi_reg_pp0_iter5_sum_y_3_reg_312 <= ap_phi_reg_pp0_iter4_sum_y_3_reg_312;
        ap_phi_reg_pp0_iter5_sum_y_5_reg_344 <= ap_phi_reg_pp0_iter4_sum_y_5_reg_344;
        ap_phi_reg_pp0_iter5_sum_z_3_reg_323 <= ap_phi_reg_pp0_iter4_sum_z_3_reg_323;
        ap_phi_reg_pp0_iter5_sum_z_5_reg_354 <= ap_phi_reg_pp0_iter4_sum_z_5_reg_354;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter6_sum_x_3_reg_301 <= ap_phi_reg_pp0_iter5_sum_x_3_reg_301;
        ap_phi_reg_pp0_iter6_sum_x_5_reg_334 <= ap_phi_reg_pp0_iter5_sum_x_5_reg_334;
        ap_phi_reg_pp0_iter6_sum_y_3_reg_312 <= ap_phi_reg_pp0_iter5_sum_y_3_reg_312;
        ap_phi_reg_pp0_iter6_sum_y_5_reg_344 <= ap_phi_reg_pp0_iter5_sum_y_5_reg_344;
        ap_phi_reg_pp0_iter6_sum_z_3_reg_323 <= ap_phi_reg_pp0_iter5_sum_z_3_reg_323;
        ap_phi_reg_pp0_iter6_sum_z_5_reg_354 <= ap_phi_reg_pp0_iter5_sum_z_5_reg_354;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter7_sum_x_3_reg_301 <= ap_phi_reg_pp0_iter6_sum_x_3_reg_301;
        ap_phi_reg_pp0_iter7_sum_x_5_reg_334 <= ap_phi_reg_pp0_iter6_sum_x_5_reg_334;
        ap_phi_reg_pp0_iter7_sum_y_3_reg_312 <= ap_phi_reg_pp0_iter6_sum_y_3_reg_312;
        ap_phi_reg_pp0_iter7_sum_y_5_reg_344 <= ap_phi_reg_pp0_iter6_sum_y_5_reg_344;
        ap_phi_reg_pp0_iter7_sum_z_3_reg_323 <= ap_phi_reg_pp0_iter6_sum_z_3_reg_323;
        ap_phi_reg_pp0_iter7_sum_z_5_reg_354 <= ap_phi_reg_pp0_iter6_sum_z_5_reg_354;
        r6inv_1_reg_1360 <= grp_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter8_sum_x_3_reg_301 <= ap_phi_reg_pp0_iter7_sum_x_3_reg_301;
        ap_phi_reg_pp0_iter8_sum_x_5_reg_334 <= ap_phi_reg_pp0_iter7_sum_x_5_reg_334;
        ap_phi_reg_pp0_iter8_sum_y_3_reg_312 <= ap_phi_reg_pp0_iter7_sum_y_3_reg_312;
        ap_phi_reg_pp0_iter8_sum_y_5_reg_344 <= ap_phi_reg_pp0_iter7_sum_y_5_reg_344;
        ap_phi_reg_pp0_iter8_sum_z_3_reg_323 <= ap_phi_reg_pp0_iter7_sum_z_3_reg_323;
        ap_phi_reg_pp0_iter8_sum_z_5_reg_354 <= ap_phi_reg_pp0_iter7_sum_z_5_reg_354;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_phi_reg_pp0_iter9_sum_x_5_reg_334 <= ap_phi_reg_pp0_iter8_sum_x_5_reg_334;
        ap_phi_reg_pp0_iter9_sum_y_5_reg_344 <= ap_phi_reg_pp0_iter8_sum_y_5_reg_344;
        ap_phi_reg_pp0_iter9_sum_z_5_reg_354 <= ap_phi_reg_pp0_iter8_sum_z_5_reg_354;
        f_1_reg_1401 <= grp_fu_397_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        dx_1_reg_1260_pp0_iter1_reg <= dx_1_reg_1260;
        dx_1_reg_1260_pp0_iter2_reg <= dx_1_reg_1260_pp0_iter1_reg;
        dx_1_reg_1260_pp0_iter3_reg <= dx_1_reg_1260_pp0_iter2_reg;
        dx_1_reg_1260_pp0_iter4_reg <= dx_1_reg_1260_pp0_iter3_reg;
        dx_1_reg_1260_pp0_iter5_reg <= dx_1_reg_1260_pp0_iter4_reg;
        dx_1_reg_1260_pp0_iter6_reg <= dx_1_reg_1260_pp0_iter5_reg;
        dx_1_reg_1260_pp0_iter7_reg <= dx_1_reg_1260_pp0_iter6_reg;
        dx_1_reg_1260_pp0_iter8_reg <= dx_1_reg_1260_pp0_iter7_reg;
        dy_1_reg_1267_pp0_iter1_reg <= dy_1_reg_1267;
        dy_1_reg_1267_pp0_iter2_reg <= dy_1_reg_1267_pp0_iter1_reg;
        dy_1_reg_1267_pp0_iter3_reg <= dy_1_reg_1267_pp0_iter2_reg;
        dy_1_reg_1267_pp0_iter4_reg <= dy_1_reg_1267_pp0_iter3_reg;
        dy_1_reg_1267_pp0_iter5_reg <= dy_1_reg_1267_pp0_iter4_reg;
        dy_1_reg_1267_pp0_iter6_reg <= dy_1_reg_1267_pp0_iter5_reg;
        dy_1_reg_1267_pp0_iter7_reg <= dy_1_reg_1267_pp0_iter6_reg;
        dy_1_reg_1267_pp0_iter8_reg <= dy_1_reg_1267_pp0_iter7_reg;
        dz_1_reg_1274_pp0_iter1_reg <= dz_1_reg_1274;
        dz_1_reg_1274_pp0_iter2_reg <= dz_1_reg_1274_pp0_iter1_reg;
        dz_1_reg_1274_pp0_iter3_reg <= dz_1_reg_1274_pp0_iter2_reg;
        dz_1_reg_1274_pp0_iter4_reg <= dz_1_reg_1274_pp0_iter3_reg;
        dz_1_reg_1274_pp0_iter5_reg <= dz_1_reg_1274_pp0_iter4_reg;
        dz_1_reg_1274_pp0_iter6_reg <= dz_1_reg_1274_pp0_iter5_reg;
        dz_1_reg_1274_pp0_iter7_reg <= dz_1_reg_1274_pp0_iter6_reg;
        dz_1_reg_1274_pp0_iter8_reg <= dz_1_reg_1274_pp0_iter7_reg;
        r6inv_1_reg_1360_pp0_iter7_reg <= r6inv_1_reg_1360;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12_11001))) begin
        dx_reg_1242 <= grp_fu_377_p2;
        dy_reg_1248 <= grp_fu_381_p2;
        dz_reg_1254 <= grp_fu_385_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12_11001))) begin
        dx_reg_1242_pp0_iter1_reg <= dx_reg_1242;
        dx_reg_1242_pp0_iter2_reg <= dx_reg_1242_pp0_iter1_reg;
        dx_reg_1242_pp0_iter3_reg <= dx_reg_1242_pp0_iter2_reg;
        dx_reg_1242_pp0_iter4_reg <= dx_reg_1242_pp0_iter3_reg;
        dx_reg_1242_pp0_iter5_reg <= dx_reg_1242_pp0_iter4_reg;
        dx_reg_1242_pp0_iter6_reg <= dx_reg_1242_pp0_iter5_reg;
        dx_reg_1242_pp0_iter7_reg <= dx_reg_1242_pp0_iter6_reg;
        dx_reg_1242_pp0_iter8_reg <= dx_reg_1242_pp0_iter7_reg;
        dy_reg_1248_pp0_iter1_reg <= dy_reg_1248;
        dy_reg_1248_pp0_iter2_reg <= dy_reg_1248_pp0_iter1_reg;
        dy_reg_1248_pp0_iter3_reg <= dy_reg_1248_pp0_iter2_reg;
        dy_reg_1248_pp0_iter4_reg <= dy_reg_1248_pp0_iter3_reg;
        dy_reg_1248_pp0_iter5_reg <= dy_reg_1248_pp0_iter4_reg;
        dy_reg_1248_pp0_iter6_reg <= dy_reg_1248_pp0_iter5_reg;
        dy_reg_1248_pp0_iter7_reg <= dy_reg_1248_pp0_iter6_reg;
        dy_reg_1248_pp0_iter8_reg <= dy_reg_1248_pp0_iter7_reg;
        dz_reg_1254_pp0_iter1_reg <= dz_reg_1254;
        dz_reg_1254_pp0_iter2_reg <= dz_reg_1254_pp0_iter1_reg;
        dz_reg_1254_pp0_iter3_reg <= dz_reg_1254_pp0_iter2_reg;
        dz_reg_1254_pp0_iter4_reg <= dz_reg_1254_pp0_iter3_reg;
        dz_reg_1254_pp0_iter5_reg <= dz_reg_1254_pp0_iter4_reg;
        dz_reg_1254_pp0_iter6_reg <= dz_reg_1254_pp0_iter5_reg;
        dz_reg_1254_pp0_iter7_reg <= dz_reg_1254_pp0_iter6_reg;
        dz_reg_1254_pp0_iter8_reg <= dz_reg_1254_pp0_iter7_reg;
        r6inv_reg_1355_pp0_iter7_reg <= r6inv_reg_1355;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12_11001))) begin
        f_reg_1395 <= grp_fu_397_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln30_1_reg_1114 <= icmp_ln30_1_fu_589_p2;
        icmp_ln30_1_reg_1114_pp0_iter10_reg <= icmp_ln30_1_reg_1114_pp0_iter9_reg;
        icmp_ln30_1_reg_1114_pp0_iter1_reg <= icmp_ln30_1_reg_1114;
        icmp_ln30_1_reg_1114_pp0_iter2_reg <= icmp_ln30_1_reg_1114_pp0_iter1_reg;
        icmp_ln30_1_reg_1114_pp0_iter3_reg <= icmp_ln30_1_reg_1114_pp0_iter2_reg;
        icmp_ln30_1_reg_1114_pp0_iter4_reg <= icmp_ln30_1_reg_1114_pp0_iter3_reg;
        icmp_ln30_1_reg_1114_pp0_iter5_reg <= icmp_ln30_1_reg_1114_pp0_iter4_reg;
        icmp_ln30_1_reg_1114_pp0_iter6_reg <= icmp_ln30_1_reg_1114_pp0_iter5_reg;
        icmp_ln30_1_reg_1114_pp0_iter7_reg <= icmp_ln30_1_reg_1114_pp0_iter6_reg;
        icmp_ln30_1_reg_1114_pp0_iter8_reg <= icmp_ln30_1_reg_1114_pp0_iter7_reg;
        icmp_ln30_1_reg_1114_pp0_iter9_reg <= icmp_ln30_1_reg_1114_pp0_iter8_reg;
        icmp_ln30_reg_1082 <= icmp_ln30_fu_442_p2;
        icmp_ln30_reg_1082_pp0_iter10_reg <= icmp_ln30_reg_1082_pp0_iter9_reg;
        icmp_ln30_reg_1082_pp0_iter1_reg <= icmp_ln30_reg_1082;
        icmp_ln30_reg_1082_pp0_iter2_reg <= icmp_ln30_reg_1082_pp0_iter1_reg;
        icmp_ln30_reg_1082_pp0_iter3_reg <= icmp_ln30_reg_1082_pp0_iter2_reg;
        icmp_ln30_reg_1082_pp0_iter4_reg <= icmp_ln30_reg_1082_pp0_iter3_reg;
        icmp_ln30_reg_1082_pp0_iter5_reg <= icmp_ln30_reg_1082_pp0_iter4_reg;
        icmp_ln30_reg_1082_pp0_iter6_reg <= icmp_ln30_reg_1082_pp0_iter5_reg;
        icmp_ln30_reg_1082_pp0_iter7_reg <= icmp_ln30_reg_1082_pp0_iter6_reg;
        icmp_ln30_reg_1082_pp0_iter8_reg <= icmp_ln30_reg_1082_pp0_iter7_reg;
        icmp_ln30_reg_1082_pp0_iter9_reg <= icmp_ln30_reg_1082_pp0_iter8_reg;
        or_ln34_1_reg_1091 <= or_ln34_1_fu_481_p2;
        or_ln34_3_reg_1097 <= or_ln34_3_fu_507_p2;
        or_ln34_5_reg_1103 <= or_ln34_5_fu_533_p2;
        q_idx_1_reg_1077 <= q_idx_fu_140;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        icmp_ln34_12_reg_1184 <= icmp_ln34_12_fu_770_p2;
        icmp_ln34_13_reg_1189 <= icmp_ln34_13_fu_776_p2;
        icmp_ln34_14_reg_1194 <= icmp_ln34_14_fu_802_p2;
        icmp_ln34_15_reg_1199 <= icmp_ln34_15_fu_808_p2;
        icmp_ln34_16_reg_1204 <= icmp_ln34_16_fu_834_p2;
        icmp_ln34_17_reg_1209 <= icmp_ln34_17_fu_840_p2;
        icmp_ln34_1_reg_1141 <= icmp_ln34_1_fu_650_p2;
        icmp_ln34_4_reg_1146 <= icmp_ln34_4_fu_676_p2;
        icmp_ln34_5_reg_1151 <= icmp_ln34_5_fu_682_p2;
        icmp_ln34_8_reg_1156 <= icmp_ln34_8_fu_708_p2;
        icmp_ln34_9_reg_1161 <= icmp_ln34_9_fu_714_p2;
        icmp_ln34_reg_1136 <= icmp_ln34_fu_644_p2;
        q_x_1_reg_1166 <= q_x_1_fu_724_p1;
        q_x_reg_1118 <= q_x_fu_598_p1;
        q_y_1_reg_1172 <= q_y_1_fu_738_p1;
        q_y_reg_1124 <= q_y_fu_612_p1;
        q_z_1_reg_1178 <= q_z_1_fu_752_p1;
        q_z_reg_1130 <= q_z_fu_626_p1;
        r2inv_1_reg_1338_pp0_iter7_reg <= r2inv_1_reg_1338;
        r2inv_1_reg_1338_pp0_iter8_reg <= r2inv_1_reg_1338_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        mul170_1_reg_1301 <= grp_fu_397_p2;
        mul_1_reg_1296 <= grp_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        mul172_1_reg_1306 <= grp_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        mul174_1_reg_1350 <= grp_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        mul176_1_reg_1370 <= grp_fu_397_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001))) begin
        mul180_1_reg_1422 <= grp_fu_397_p2;
        mul7_reg_1417 <= grp_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        mul182_1_reg_1448 <= grp_fu_393_p2;
        mul184_1_reg_1453 <= grp_fu_397_p2;
        sum_x_6_reg_1427 <= ap_sig_allocacmp_sum_x_6;
        sum_y_6_reg_1434 <= ap_sig_allocacmp_sum_y_6;
        sum_z_6_reg_1441 <= ap_sig_allocacmp_sum_z_6;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        mul1_reg_1286 <= grp_fu_397_p2;
        mul_reg_1281 <= grp_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        mul2_reg_1291 <= grp_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        mul3_reg_1345 <= grp_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        mul4_reg_1365 <= grp_fu_397_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001))) begin
        mul5_reg_1407 <= grp_fu_393_p2;
        mul6_reg_1412 <= grp_fu_397_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        potential_1_reg_1390 <= grp_fu_397_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        potential_reg_1385 <= grp_fu_397_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        r2inv_1_reg_1338 <= grp_fu_402_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14_11001))) begin
        r2inv_reg_1331 <= grp_fu_402_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14_11001))) begin
        r2inv_reg_1331_pp0_iter6_reg <= r2inv_reg_1331;
        r2inv_reg_1331_pp0_iter7_reg <= r2inv_reg_1331_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12_11001))) begin
        r6inv_reg_1355 <= grp_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sext_ln24_cast_reg_1072 <= sext_ln24_cast_fu_411_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sub177_1_reg_1380 <= grp_fu_377_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001))) begin
        sub_reg_1375 <= grp_fu_377_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        sum_x_3_reg_301 <= ap_phi_reg_pp0_iter10_sum_x_3_reg_301;
        sum_y_3_reg_312 <= ap_phi_reg_pp0_iter10_sum_y_3_reg_312;
        sum_z_3_reg_323 <= ap_phi_reg_pp0_iter10_sum_z_3_reg_323;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        tmp_5_reg_1214 <= grp_fu_407_p2;
    end
end
assign ap_ST_fsm_state174_blk = 1'b0;
assign ap_ST_fsm_state175_blk = 1'b0;
assign ap_ST_fsm_state176_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_subdone) & ((ap_predicate_tran165to174_state17 == 1'b1) | (icmp_ln30_reg_1082 == 1'd0)))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state176) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state176)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state176)) begin
        ap_return = UnifiedRetVal_reg_364;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11))) begin
        ap_sig_allocacmp_sum_x_6 = ap_phi_reg_pp0_iter10_sum_x_5_reg_334;
    end else begin
        ap_sig_allocacmp_sum_x_6 = sum_x_1_fu_144;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11))) begin
        ap_sig_allocacmp_sum_y_6 = ap_phi_reg_pp0_iter10_sum_y_5_reg_344;
    end else begin
        ap_sig_allocacmp_sum_y_6 = sum_y_1_fu_148;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11))) begin
        ap_sig_allocacmp_sum_z_6 = ap_phi_reg_pp0_iter10_sum_z_5_reg_354;
    end else begin
        ap_sig_allocacmp_sum_z_6 = sum_z_1_fu_152;
    end
end
always @ (*) begin
    if ((((1'd0 == and_ln34_15_fu_951_p2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (icmp_ln30_1_reg_1114 == 1'd1) & (icmp_ln30_reg_1082 == 1'd1) & (1'b0 == ap_block_pp0_stage8_00001)) | ((1'd0 == and_ln34_7_fu_895_p2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln30_reg_1082 == 1'd1) & (1'b0 == ap_block_pp0_stage5_00001)))) begin
        grp_fu_377_opcode = 2'd1;
end else if ((((1'd0 == and_ln34_7_reg_1224_pp0_iter9_reg) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln30_reg_1082_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_00001)) | ((1'd0 == and_ln34_15_reg_1238_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_00001)) | ((1'd0 == and_ln34_15_reg_1238_pp0_iter7_reg) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (icmp_ln30_1_reg_1114_pp0_iter7_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage9_00001)) | ((1'd0 == and_ln34_7_reg_1224_pp0_iter7_reg) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln30_reg_1082_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_00001)) | ((1'd0 == and_ln34_15_reg_1238_pp0_iter1_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln30_1_reg_1114_pp0_iter1_reg== 1'd1) & (icmp_ln30_reg_1082_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage15_00001)) | ((1'd0 == and_ln34_7_reg_1224_pp0_iter1_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (icmp_ln30_reg_1082_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage12_00001)) | ((1'd0 == and_ln34_15_reg_1238) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (icmp_ln30_1_reg_1114_pp0_iter1_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage7_00001)) | ((1'd0 == and_ln34_7_reg_1224) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln30_reg_1082_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_00001)))) begin
        grp_fu_377_opcode = 2'd0;
    end else begin
        grp_fu_377_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_377_p0 = ap_phi_reg_pp0_iter10_sum_x_3_reg_301;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11))) begin
        grp_fu_377_p0 = ap_sig_allocacmp_sum_x_6;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9))) begin
        grp_fu_377_p0 = mul176_1_reg_1370;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_377_p0 = mul4_reg_1365;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15))) begin
        grp_fu_377_p0 = add171_1_reg_1316;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12))) begin
        grp_fu_377_p0 = add_reg_1311;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_377_p0 = mul_1_reg_1296;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_377_p0 = mul_reg_1281;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)))) begin
        grp_fu_377_p0 = p_x;
    end else begin
        grp_fu_377_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_377_p1 = mul180_1_reg_1422;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11))) begin
        grp_fu_377_p1 = mul5_reg_1407;
    end else if ((((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)))) begin
        grp_fu_377_p1 = 64'd13835058055282163712;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15))) begin
        grp_fu_377_p1 = mul172_1_reg_1306;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12))) begin
        grp_fu_377_p1 = mul2_reg_1291;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
        grp_fu_377_p1 = mul170_1_reg_1301;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_377_p1 = mul1_reg_1286;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8))) begin
        grp_fu_377_p1 = q_x_1_reg_1166;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_377_p1 = q_x_reg_1118;
    end else begin
        grp_fu_377_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'd0 == and_ln34_15_fu_951_p2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (icmp_ln30_1_reg_1114 == 1'd1) & (icmp_ln30_reg_1082 == 1'd1) & (1'b0 == ap_block_pp0_stage8_00001)) | ((1'd0 == and_ln34_7_fu_895_p2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln30_reg_1082 == 1'd1) & (1'b0 == ap_block_pp0_stage5_00001)))) begin
        grp_fu_381_opcode = 2'd1;
    end else if ((((1'd0 == and_ln34_7_reg_1224_pp0_iter9_reg) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln30_reg_1082_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_00001)) | ((1'd0 == and_ln34_15_reg_1238_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_381_opcode = 2'd0;
    end else begin
        grp_fu_381_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_381_p0 = ap_phi_reg_pp0_iter10_sum_y_3_reg_312;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11))) begin
        grp_fu_381_p0 = ap_sig_allocacmp_sum_y_6;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)))) begin
        grp_fu_381_p0 = p_y;
    end else begin
        grp_fu_381_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_381_p1 = mul182_1_reg_1448;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11))) begin
        grp_fu_381_p1 = mul6_reg_1412;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8))) begin
        grp_fu_381_p1 = q_y_1_reg_1172;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_381_p1 = q_y_reg_1124;
    end else begin
        grp_fu_381_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'd0 == and_ln34_15_fu_951_p2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (icmp_ln30_1_reg_1114 == 1'd1) & (icmp_ln30_reg_1082 == 1'd1) & (1'b0 == ap_block_pp0_stage8_00001)) | ((1'd0 == and_ln34_7_fu_895_p2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln30_reg_1082 == 1'd1) & (1'b0 == ap_block_pp0_stage5_00001)))) begin
        grp_fu_385_opcode = 2'd1;
    end else if ((((1'd0 == and_ln34_7_reg_1224_pp0_iter9_reg) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln30_reg_1082_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_00001)) | ((1'd0 == and_ln34_15_reg_1238_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln30_1_reg_1114_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1082_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_00001)))) begin
        grp_fu_385_opcode = 2'd0;
    end else begin
        grp_fu_385_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_385_p0 = ap_phi_reg_pp0_iter10_sum_z_3_reg_323;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11))) begin
        grp_fu_385_p0 = ap_sig_allocacmp_sum_z_6;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)))) begin
        grp_fu_385_p0 = p_z;
    end else begin
        grp_fu_385_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_385_p1 = mul184_1_reg_1453;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11))) begin
        grp_fu_385_p1 = mul7_reg_1417;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8))) begin
        grp_fu_385_p1 = q_z_1_reg_1178;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_385_p1 = q_z_reg_1130;
    end else begin
        grp_fu_385_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_393_p0 = f_1_reg_1401;
    end else if ((((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_393_p0 = f_reg_1395;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9))) begin
        grp_fu_393_p0 = mul174_1_reg_1350;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_393_p0 = mul3_reg_1345;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_393_p0 = r2inv_1_reg_1338;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15))) begin
        grp_fu_393_p0 = r2inv_reg_1331;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_393_p0 = dz_1_reg_1274;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_393_p0 = dx_1_reg_1260;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14))) begin
        grp_fu_393_p0 = dz_reg_1254;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13))) begin
        grp_fu_393_p0 = dx_reg_1242;
    end else begin
        grp_fu_393_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_393_p1 = dy_1_reg_1267_pp0_iter8_reg;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_393_p1 = dz_reg_1254_pp0_iter8_reg;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_393_p1 = dx_reg_1242_pp0_iter8_reg;
    end else if ((((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9)))) begin
        grp_fu_393_p1 = r2inv_1_reg_1338;
    end else if ((((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15)))) begin
        grp_fu_393_p1 = r2inv_reg_1331;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_393_p1 = dz_1_reg_1274;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_393_p1 = dx_1_reg_1260;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14))) begin
        grp_fu_393_p1 = dz_reg_1254;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13))) begin
        grp_fu_393_p1 = dx_reg_1242;
    end else begin
        grp_fu_393_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)))) begin
        grp_fu_397_p0 = f_1_reg_1401;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_397_p0 = f_reg_1395;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9))) begin
        grp_fu_397_p0 = r2inv_1_reg_1338_pp0_iter8_reg;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_397_p0 = r2inv_reg_1331_pp0_iter7_reg;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_397_p0 = r6inv_1_reg_1360_pp0_iter7_reg;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15))) begin
        grp_fu_397_p0 = r6inv_reg_1355_pp0_iter7_reg;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_397_p0 = r6inv_1_reg_1360;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14))) begin
        grp_fu_397_p0 = r6inv_reg_1355;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_397_p0 = dy_1_reg_1267;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13))) begin
        grp_fu_397_p0 = dy_reg_1248;
    end else begin
        grp_fu_397_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_397_p1 = dz_1_reg_1274_pp0_iter8_reg;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_397_p1 = dx_1_reg_1260_pp0_iter8_reg;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_397_p1 = dy_reg_1248_pp0_iter8_reg;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9))) begin
        grp_fu_397_p1 = potential_1_reg_1390;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_397_p1 = potential_reg_1385;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_397_p1 = sub177_1_reg_1380;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15))) begin
        grp_fu_397_p1 = sub_reg_1375;
    end else if ((((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14)))) begin
        grp_fu_397_p1 = 64'd4609434218613702656;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_397_p1 = dy_1_reg_1267;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13))) begin
        grp_fu_397_p1 = dy_reg_1248;
    end else begin
        grp_fu_397_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            grp_fu_402_p1 = add173_1_reg_1326;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            grp_fu_402_p1 = add1_reg_1321;
        end else begin
            grp_fu_402_p1 = 'bx;
        end
    end else begin
        grp_fu_402_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            grp_fu_407_p0 = q_y_1_reg_1172;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            grp_fu_407_p0 = q_z_1_reg_1178;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            grp_fu_407_p0 = q_x_1_reg_1166;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            grp_fu_407_p0 = q_x_reg_1118;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            grp_fu_407_p0 = q_z_reg_1130;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            grp_fu_407_p0 = q_y_reg_1124;
        end else begin
            grp_fu_407_p0 = 'bx;
        end
    end else begin
        grp_fu_407_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4)))) begin
        grp_fu_407_p1 = p_x;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)))) begin
        grp_fu_407_p1 = p_z;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7)))) begin
        grp_fu_407_p1 = p_y;
    end else begin
        grp_fu_407_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        position_ce0_local = 1'b1;
    end else begin
        position_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        position_ce1_local = 1'b1;
    end else begin
        position_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state174) | (1'b1 == ap_CS_fsm_state175))) begin
        sum_x_1_out_ap_vld = 1'b1;
    end else begin
        sum_x_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state174)) begin
        sum_x_3_out_ap_vld = 1'b1;
    end else begin
        sum_x_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state174) | (1'b1 == ap_CS_fsm_state175))) begin
        sum_y_1_out_ap_vld = 1'b1;
    end else begin
        sum_y_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state174)) begin
        sum_y_3_out_ap_vld = 1'b1;
    end else begin
        sum_y_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state174) | (1'b1 == ap_CS_fsm_state175))) begin
        sum_z_1_out_ap_vld = 1'b1;
    end else begin
        sum_z_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state174)) begin
        sum_z_3_out_ap_vld = 1'b1;
    end else begin
        sum_z_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
            if ((~((ap_enable_reg_pp0_iter10 == 1'b1) & (ap_enable_reg_pp0_iter9 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone)) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (ap_enable_reg_pp0_iter9 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_exit_tran_regpp0 == 2'd1) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state175;
            end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (ap_enable_reg_pp0_iter9 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_exit_tran_regpp0 == 2'd0) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state174;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_state174 : begin
            ap_NS_fsm = ap_ST_fsm_state176;
        end
        ap_ST_fsm_state175 : begin
            ap_NS_fsm = ap_ST_fsm_state176;
        end
        ap_ST_fsm_state176 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln30_fu_956_p2 = (q_idx_1_reg_1077 + 32'd2);
assign add_ln31_1_fu_575_p2 = (mul_ln31 + or_ln1_cast_fu_567_p3);
assign add_ln31_fu_451_p2 = (mul_ln31 + trunc_ln31_fu_447_p1);
assign and_ln34_10_fu_935_p2 = (or_ln34_3_reg_1097 & grp_fu_407_p2);
assign and_ln34_11_fu_940_p2 = (or_ln34_7_fu_931_p2 & and_ln34_10_fu_935_p2);
assign and_ln34_12_fu_920_p2 = (or_ln34_5_reg_1103 & grp_fu_407_p2);
assign and_ln34_13_fu_925_p2 = (or_ln34_8_fu_916_p2 & and_ln34_12_fu_920_p2);
assign and_ln34_14_fu_946_p2 = (and_ln34_13_reg_1233 & and_ln34_11_fu_940_p2);
assign and_ln34_15_fu_951_p2 = (and_ln34_9_reg_1228 & and_ln34_14_fu_946_p2);
assign and_ln34_1_fu_865_p2 = (grp_fu_407_p2 & and_ln34_fu_860_p2);
assign and_ln34_2_fu_850_p2 = (or_ln34_2_fu_846_p2 & grp_fu_407_p2);
assign and_ln34_3_fu_885_p2 = (and_ln34_5_fu_879_p2 & and_ln34_2_reg_1219);
assign and_ln34_4_fu_875_p2 = (or_ln34_5_reg_1103 & or_ln34_3_reg_1097);
assign and_ln34_5_fu_879_p2 = (or_ln34_4_fu_871_p2 & and_ln34_4_fu_875_p2);
assign and_ln34_6_fu_890_p2 = (tmp_5_reg_1214 & and_ln34_3_fu_885_p2);
assign and_ln34_7_fu_895_p2 = (and_ln34_6_fu_890_p2 & and_ln34_1_fu_865_p2);
assign and_ln34_8_fu_905_p2 = (or_ln34_6_fu_901_p2 & or_ln34_1_reg_1091);
assign and_ln34_9_fu_910_p2 = (grp_fu_407_p2 & and_ln34_8_fu_905_p2);
assign and_ln34_fu_860_p2 = (or_ln34_fu_856_p2 & or_ln34_1_reg_1091);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state174 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state175 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state176 = ap_CS_fsm[32'd19];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_phi_reg_pp0_iter0_sum_x_3_reg_301 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_x_5_reg_334 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_y_3_reg_312 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_y_5_reg_344 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_z_3_reg_323 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_z_5_reg_354 = 'bx;
always @ (*) begin
    ap_predicate_tran165to174_state17 = ((icmp_ln30_1_reg_1114 == 1'd0) & (icmp_ln30_reg_1082 == 1'd1));
end
assign icmp_ln30_1_fu_589_p2 = (($signed(zext_ln28_fu_585_p1) < $signed(q_idx_range)) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_442_p2 = (($signed(zext_ln30_fu_438_p1) < $signed(sext_ln24_cast_reg_1072)) ? 1'b1 : 1'b0);
assign icmp_ln34_10_fu_522_p2 = ((tmp_7_fu_513_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_11_fu_528_p2 = ((trunc_ln34_5 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_12_fu_770_p2 = ((tmp_9_fu_756_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_13_fu_776_p2 = ((trunc_ln34_1_fu_766_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_14_fu_802_p2 = ((tmp_11_fu_782_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_15_fu_808_p2 = ((trunc_ln34_8_fu_792_p4 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_16_fu_834_p2 = ((tmp_14_fu_814_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_17_fu_840_p2 = ((trunc_ln34_s_fu_824_p4 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_1_fu_650_p2 = ((trunc_ln34_fu_640_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_2_fu_470_p2 = ((tmp_1_fu_461_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_3_fu_476_p2 = ((empty == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_4_fu_676_p2 = ((tmp_3_fu_656_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_5_fu_682_p2 = ((trunc_ln34_2_fu_666_p4 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_6_fu_496_p2 = ((tmp_4_fu_487_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_7_fu_502_p2 = ((trunc_ln34_3 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_8_fu_708_p2 = ((tmp_6_fu_688_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_9_fu_714_p2 = ((trunc_ln34_4_fu_698_p4 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_fu_644_p2 = ((tmp_fu_630_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign or_ln1_cast_fu_567_p3 = {{tmp_16_fu_549_p4}, {1'd1}};
assign or_ln1_fu_559_p3 = {{tmp_13_fu_539_p4}, {1'd1}};
assign or_ln34_1_fu_481_p2 = (icmp_ln34_3_fu_476_p2 | icmp_ln34_2_fu_470_p2);
assign or_ln34_2_fu_846_p2 = (icmp_ln34_5_reg_1151 | icmp_ln34_4_reg_1146);
assign or_ln34_3_fu_507_p2 = (icmp_ln34_7_fu_502_p2 | icmp_ln34_6_fu_496_p2);
assign or_ln34_4_fu_871_p2 = (icmp_ln34_9_reg_1161 | icmp_ln34_8_reg_1156);
assign or_ln34_5_fu_533_p2 = (icmp_ln34_11_fu_528_p2 | icmp_ln34_10_fu_522_p2);
assign or_ln34_6_fu_901_p2 = (icmp_ln34_13_reg_1189 | icmp_ln34_12_reg_1184);
assign or_ln34_7_fu_931_p2 = (icmp_ln34_15_reg_1199 | icmp_ln34_14_reg_1194);
assign or_ln34_8_fu_916_p2 = (icmp_ln34_17_reg_1209 | icmp_ln34_16_reg_1204);
assign or_ln34_fu_856_p2 = (icmp_ln34_reg_1136 | icmp_ln34_1_reg_1141);
assign position_address0 = zext_ln31_1_fu_580_p1;
assign position_address1 = zext_ln31_fu_456_p1;
assign position_ce0 = position_ce0_local;
assign position_ce1 = position_ce1_local;
assign q_x_1_fu_724_p1 = trunc_ln31_6_fu_720_p1;
assign q_x_fu_598_p1 = trunc_ln31_3_fu_594_p1;
assign q_y_1_fu_738_p1 = trunc_ln31_4_fu_728_p4;
assign q_y_fu_612_p1 = trunc_ln31_1_fu_602_p4;
assign q_z_1_fu_752_p1 = trunc_ln31_5_fu_742_p4;
assign q_z_fu_626_p1 = trunc_ln31_2_fu_616_p4;
assign sext_ln24_cast_fu_411_p1 = $signed(sext_ln24);
assign sum_x_1_out = sum_x_6_reg_1427;
assign sum_x_3_out = sum_x_3_reg_301;
assign sum_y_1_out = sum_y_6_reg_1434;
assign sum_y_3_out = sum_y_3_reg_312;
assign sum_z_1_out = sum_z_6_reg_1441;
assign sum_z_3_out = sum_z_3_reg_323;
assign tmp_11_fu_782_p4 = {{position_q0[126:116]}};
assign tmp_13_fu_539_p4 = {{q_idx_fu_140[30:1]}};
assign tmp_14_fu_814_p4 = {{position_q0[190:180]}};
assign tmp_16_fu_549_p4 = {{q_idx_fu_140[9:1]}};
assign tmp_1_fu_461_p4 = {{position_load[62:52]}};
assign tmp_3_fu_656_p4 = {{position_q1[126:116]}};
assign tmp_4_fu_487_p4 = {{position_load[126:116]}};
assign tmp_6_fu_688_p4 = {{position_q1[190:180]}};
assign tmp_7_fu_513_p4 = {{position_load[190:180]}};
assign tmp_9_fu_756_p4 = {{position_q0[62:52]}};
assign tmp_fu_630_p4 = {{position_q1[62:52]}};
assign trunc_ln31_1_fu_602_p4 = {{position_q1[127:64]}};
assign trunc_ln31_2_fu_616_p4 = {{position_q1[191:128]}};
assign trunc_ln31_3_fu_594_p1 = position_q1[63:0];
assign trunc_ln31_4_fu_728_p4 = {{position_q0[127:64]}};
assign trunc_ln31_5_fu_742_p4 = {{position_q0[191:128]}};
assign trunc_ln31_6_fu_720_p1 = position_q0[63:0];
assign trunc_ln31_fu_447_p1 = q_idx_fu_140[9:0];
assign trunc_ln34_1_fu_766_p1 = position_q0[51:0];
assign trunc_ln34_2_fu_666_p4 = {{position_q1[115:64]}};
assign trunc_ln34_4_fu_698_p4 = {{position_q1[179:128]}};
assign trunc_ln34_8_fu_792_p4 = {{position_q0[115:64]}};
assign trunc_ln34_fu_640_p1 = position_q1[51:0];
assign trunc_ln34_s_fu_824_p4 = {{position_q0[179:128]}};
assign zext_ln28_fu_585_p1 = or_ln1_fu_559_p3;
assign zext_ln30_fu_438_p1 = q_idx_fu_140;
assign zext_ln31_1_fu_580_p1 = add_ln31_1_fu_575_p2;
assign zext_ln31_fu_456_p1 = add_ln31_fu_451_p2;
always @ (posedge ap_clk) begin
    ap_exit_tran_regpp0[1] <= 1'b0;
end
endmodule 