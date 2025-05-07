module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,obs_load_cast,add6_7127_out,add6_7127_out_ap_vld,add6_6125_out,add6_6125_out_ap_vld,add6_5123_out,add6_5123_out_ap_vld,add6_4121_out,add6_4121_out_ap_vld,add6_3119_out,add6_3119_out_ap_vld,add6_2117_out,add6_2117_out_ap_vld,add6_1115_out,add6_1115_out_ap_vld,add6113_out,add6113_out_ap_vld,add6_7111_out,add6_7111_out_ap_vld,add6_6109_out,add6_6109_out_ap_vld,add6_5107_out,add6_5107_out_ap_vld,add6_4105_out,add6_4105_out_ap_vld,add6_3103_out,add6_3103_out_ap_vld,add6_2101_out,add6_2101_out_ap_vld,add6_199_out,add6_199_out_ap_vld,add697_out,add697_out_ap_vld,add6_795_out,add6_795_out_ap_vld,add6_693_out,add6_693_out_ap_vld,add6_591_out,add6_591_out_ap_vld,add6_489_out,add6_489_out_ap_vld,add6_387_out,add6_387_out_ap_vld,add6_285_out,add6_285_out_ap_vld,add6_183_out,add6_183_out_ap_vld,add681_out,add681_out_ap_vld,add6_779_out,add6_779_out_ap_vld,add6_677_out,add6_677_out_ap_vld,add6_575_out,add6_575_out_ap_vld,add6_473_out,add6_473_out_ap_vld,add6_371_out,add6_371_out_ap_vld,add6_269_out,add6_269_out_ap_vld,add6_167_out,add6_167_out_ap_vld,add665_out,add665_out_ap_vld,add6_763_out,add6_763_out_ap_vld,add6_661_out,add6_661_out_ap_vld,add6_559_out,add6_559_out_ap_vld,add6_457_out,add6_457_out_ap_vld,add6_355_out,add6_355_out_ap_vld,add6_253_out,add6_253_out_ap_vld,add6_151_out,add6_151_out_ap_vld,add649_out,add649_out_ap_vld,add6_747_out,add6_747_out_ap_vld,add6_645_out,add6_645_out_ap_vld,add6_543_out,add6_543_out_ap_vld,add6_441_out,add6_441_out_ap_vld,add6_339_out,add6_339_out_ap_vld,add6_237_out,add6_237_out_ap_vld,add6_135_out,add6_135_out_ap_vld,add633_out,add633_out_ap_vld,add6_731_out,add6_731_out_ap_vld,add6_629_out,add6_629_out_ap_vld,add6_527_out,add6_527_out_ap_vld,add6_425_out,add6_425_out_ap_vld,add6_323_out,add6_323_out_ap_vld,add6_221_out,add6_221_out_ap_vld,add6_119_out,add6_119_out_ap_vld,add617_out,add617_out_ap_vld,add6_715_out,add6_715_out_ap_vld,add6_613_out,add6_613_out_ap_vld,add6_511_out,add6_511_out_ap_vld,add6_49_out,add6_49_out_ap_vld,add6_37_out,add6_37_out_ap_vld,add6_25_out,add6_25_out_ap_vld,add6_13_out,add6_13_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_3803_p_din0,grp_fu_3803_p_din1,grp_fu_3803_p_opcode,grp_fu_3803_p_dout0,grp_fu_3803_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [5:0] init_address1;
output   init_ce1;
input  [63:0] init_q1;
input  [7:0] obs_load;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
input  [7:0] obs_load_cast;
output  [63:0] add6_7127_out;
output   add6_7127_out_ap_vld;
output  [63:0] add6_6125_out;
output   add6_6125_out_ap_vld;
output  [63:0] add6_5123_out;
output   add6_5123_out_ap_vld;
output  [63:0] add6_4121_out;
output   add6_4121_out_ap_vld;
output  [63:0] add6_3119_out;
output   add6_3119_out_ap_vld;
output  [63:0] add6_2117_out;
output   add6_2117_out_ap_vld;
output  [63:0] add6_1115_out;
output   add6_1115_out_ap_vld;
output  [63:0] add6113_out;
output   add6113_out_ap_vld;
output  [63:0] add6_7111_out;
output   add6_7111_out_ap_vld;
output  [63:0] add6_6109_out;
output   add6_6109_out_ap_vld;
output  [63:0] add6_5107_out;
output   add6_5107_out_ap_vld;
output  [63:0] add6_4105_out;
output   add6_4105_out_ap_vld;
output  [63:0] add6_3103_out;
output   add6_3103_out_ap_vld;
output  [63:0] add6_2101_out;
output   add6_2101_out_ap_vld;
output  [63:0] add6_199_out;
output   add6_199_out_ap_vld;
output  [63:0] add697_out;
output   add697_out_ap_vld;
output  [63:0] add6_795_out;
output   add6_795_out_ap_vld;
output  [63:0] add6_693_out;
output   add6_693_out_ap_vld;
output  [63:0] add6_591_out;
output   add6_591_out_ap_vld;
output  [63:0] add6_489_out;
output   add6_489_out_ap_vld;
output  [63:0] add6_387_out;
output   add6_387_out_ap_vld;
output  [63:0] add6_285_out;
output   add6_285_out_ap_vld;
output  [63:0] add6_183_out;
output   add6_183_out_ap_vld;
output  [63:0] add681_out;
output   add681_out_ap_vld;
output  [63:0] add6_779_out;
output   add6_779_out_ap_vld;
output  [63:0] add6_677_out;
output   add6_677_out_ap_vld;
output  [63:0] add6_575_out;
output   add6_575_out_ap_vld;
output  [63:0] add6_473_out;
output   add6_473_out_ap_vld;
output  [63:0] add6_371_out;
output   add6_371_out_ap_vld;
output  [63:0] add6_269_out;
output   add6_269_out_ap_vld;
output  [63:0] add6_167_out;
output   add6_167_out_ap_vld;
output  [63:0] add665_out;
output   add665_out_ap_vld;
output  [63:0] add6_763_out;
output   add6_763_out_ap_vld;
output  [63:0] add6_661_out;
output   add6_661_out_ap_vld;
output  [63:0] add6_559_out;
output   add6_559_out_ap_vld;
output  [63:0] add6_457_out;
output   add6_457_out_ap_vld;
output  [63:0] add6_355_out;
output   add6_355_out_ap_vld;
output  [63:0] add6_253_out;
output   add6_253_out_ap_vld;
output  [63:0] add6_151_out;
output   add6_151_out_ap_vld;
output  [63:0] add649_out;
output   add649_out_ap_vld;
output  [63:0] add6_747_out;
output   add6_747_out_ap_vld;
output  [63:0] add6_645_out;
output   add6_645_out_ap_vld;
output  [63:0] add6_543_out;
output   add6_543_out_ap_vld;
output  [63:0] add6_441_out;
output   add6_441_out_ap_vld;
output  [63:0] add6_339_out;
output   add6_339_out_ap_vld;
output  [63:0] add6_237_out;
output   add6_237_out_ap_vld;
output  [63:0] add6_135_out;
output   add6_135_out_ap_vld;
output  [63:0] add633_out;
output   add633_out_ap_vld;
output  [63:0] add6_731_out;
output   add6_731_out_ap_vld;
output  [63:0] add6_629_out;
output   add6_629_out_ap_vld;
output  [63:0] add6_527_out;
output   add6_527_out_ap_vld;
output  [63:0] add6_425_out;
output   add6_425_out_ap_vld;
output  [63:0] add6_323_out;
output   add6_323_out_ap_vld;
output  [63:0] add6_221_out;
output   add6_221_out_ap_vld;
output  [63:0] add6_119_out;
output   add6_119_out_ap_vld;
output  [63:0] add617_out;
output   add617_out_ap_vld;
output  [63:0] add6_715_out;
output   add6_715_out_ap_vld;
output  [63:0] add6_613_out;
output   add6_613_out_ap_vld;
output  [63:0] add6_511_out;
output   add6_511_out_ap_vld;
output  [63:0] add6_49_out;
output   add6_49_out_ap_vld;
output  [63:0] add6_37_out;
output   add6_37_out_ap_vld;
output  [63:0] add6_25_out;
output   add6_25_out_ap_vld;
output  [63:0] add6_13_out;
output   add6_13_out_ap_vld;
output  [63:0] add61_out;
output   add61_out_ap_vld;
output  [63:0] grp_fu_3803_p_din0;
output  [63:0] grp_fu_3803_p_din1;
output  [1:0] grp_fu_3803_p_opcode;
input  [63:0] grp_fu_3803_p_dout0;
output   grp_fu_3803_p_ce;
reg ap_idle;
reg add6_7127_out_ap_vld;
reg add6_6125_out_ap_vld;
reg add6_5123_out_ap_vld;
reg add6_4121_out_ap_vld;
reg add6_3119_out_ap_vld;
reg add6_2117_out_ap_vld;
reg add6_1115_out_ap_vld;
reg add6113_out_ap_vld;
reg add6_7111_out_ap_vld;
reg add6_6109_out_ap_vld;
reg add6_5107_out_ap_vld;
reg add6_4105_out_ap_vld;
reg add6_3103_out_ap_vld;
reg add6_2101_out_ap_vld;
reg add6_199_out_ap_vld;
reg add697_out_ap_vld;
reg add6_795_out_ap_vld;
reg add6_693_out_ap_vld;
reg add6_591_out_ap_vld;
reg add6_489_out_ap_vld;
reg add6_387_out_ap_vld;
reg add6_285_out_ap_vld;
reg add6_183_out_ap_vld;
reg add681_out_ap_vld;
reg add6_779_out_ap_vld;
reg add6_677_out_ap_vld;
reg add6_575_out_ap_vld;
reg add6_473_out_ap_vld;
reg add6_371_out_ap_vld;
reg add6_269_out_ap_vld;
reg add6_167_out_ap_vld;
reg add665_out_ap_vld;
reg add6_763_out_ap_vld;
reg add6_661_out_ap_vld;
reg add6_559_out_ap_vld;
reg add6_457_out_ap_vld;
reg add6_355_out_ap_vld;
reg add6_253_out_ap_vld;
reg add6_151_out_ap_vld;
reg add649_out_ap_vld;
reg add6_747_out_ap_vld;
reg add6_645_out_ap_vld;
reg add6_543_out_ap_vld;
reg add6_441_out_ap_vld;
reg add6_339_out_ap_vld;
reg add6_237_out_ap_vld;
reg add6_135_out_ap_vld;
reg add633_out_ap_vld;
reg add6_731_out_ap_vld;
reg add6_629_out_ap_vld;
reg add6_527_out_ap_vld;
reg add6_425_out_ap_vld;
reg add6_323_out_ap_vld;
reg add6_221_out_ap_vld;
reg add6_119_out_ap_vld;
reg add617_out_ap_vld;
reg add6_715_out_ap_vld;
reg add6_613_out_ap_vld;
reg add6_511_out_ap_vld;
reg add6_49_out_ap_vld;
reg add6_37_out_ap_vld;
reg add6_25_out_ap_vld;
reg add6_13_out_ap_vld;
reg add61_out_ap_vld;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_2498;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1112;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1116;
reg   [63:0] reg_1120;
reg   [63:0] reg_1124;
wire   [11:0] obs_load_cast_cast_fu_1128_p1;
reg   [11:0] obs_load_cast_cast_reg_2482;
reg   [6:0] s_1_reg_2491;
reg   [0:0] tmp_reg_2498_pp0_iter1_reg;
wire   [5:0] trunc_ln13_fu_1153_p1;
reg   [5:0] trunc_ln13_reg_2502;
reg   [5:0] trunc_ln13_reg_2502_pp0_iter1_reg;
reg   [5:0] trunc_ln13_reg_2502_pp0_iter2_reg;
wire   [3:0] tmp_39_cast_fu_1157_p4;
reg   [3:0] tmp_39_cast_reg_2511;
wire   [63:0] bitcast_ln14_fu_1280_p1;
wire   [63:0] bitcast_ln14_1_fu_1285_p1;
wire   [63:0] bitcast_ln14_2_fu_1290_p1;
wire   [63:0] bitcast_ln14_3_fu_1295_p1;
wire   [2:0] tmp_157_fu_1300_p4;
reg   [2:0] tmp_157_reg_2574;
wire   [63:0] bitcast_ln14_4_fu_1382_p1;
wire   [63:0] bitcast_ln14_5_fu_1387_p1;
wire   [63:0] bitcast_ln14_6_fu_1392_p1;
wire   [63:0] bitcast_ln14_7_fu_1397_p1;
wire   [63:0] bitcast_ln14_8_fu_1470_p1;
wire   [63:0] bitcast_ln14_9_fu_1475_p1;
wire   [63:0] bitcast_ln14_10_fu_1480_p1;
wire   [63:0] bitcast_ln14_11_fu_1485_p1;
wire   [63:0] bitcast_ln14_12_fu_1490_p1;
wire   [63:0] bitcast_ln14_13_fu_1495_p1;
wire   [63:0] bitcast_ln14_14_fu_1500_p1;
wire   [63:0] bitcast_ln14_15_fu_1505_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln13_fu_1148_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1175_p1;
wire   [63:0] zext_ln14_1_fu_1198_p1;
wire   [63:0] zext_ln14_2_fu_1217_p1;
wire   [63:0] zext_ln14_3_fu_1229_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_1246_p1;
wire   [63:0] zext_ln14_5_fu_1258_p1;
wire   [63:0] zext_ln14_6_fu_1275_p1;
wire   [63:0] zext_ln14_8_fu_1317_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_1331_p1;
wire   [63:0] zext_ln14_10_fu_1355_p1;
wire   [63:0] zext_ln14_9_fu_1377_p1;
wire   [63:0] zext_ln14_12_fu_1409_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_1426_p1;
wire   [63:0] zext_ln14_14_fu_1438_p1;
wire   [63:0] zext_ln14_13_fu_1455_p1;
reg   [6:0] s_fu_238;
wire   [6:0] add_ln13_fu_1460_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_242;
reg    ap_predicate_pred687_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [63:0] add6_13_fu_246;
wire   [63:0] grp_fu_1108_p2;
reg   [63:0] add6_25_fu_250;
reg    ap_predicate_pred713_state11;
reg   [63:0] add6_37_fu_254;
reg   [63:0] add6_49_fu_258;
reg    ap_predicate_pred713_state12;
reg   [63:0] add6_511_fu_262;
reg   [63:0] add6_613_fu_266;
reg    ap_predicate_pred713_state13;
reg   [63:0] add6_715_fu_270;
reg   [63:0] add617_fu_274;
reg    ap_predicate_pred748_state10;
reg   [63:0] add6_119_fu_278;
reg   [63:0] add6_221_fu_282;
reg    ap_predicate_pred758_state11;
reg   [63:0] add6_323_fu_286;
reg   [63:0] add6_425_fu_290;
reg    ap_predicate_pred758_state12;
reg   [63:0] add6_527_fu_294;
reg   [63:0] add6_629_fu_298;
reg    ap_predicate_pred758_state13;
reg   [63:0] add6_731_fu_302;
reg   [63:0] add633_fu_306;
reg    ap_predicate_pred788_state10;
reg   [63:0] add6_135_fu_310;
reg   [63:0] add6_237_fu_314;
reg    ap_predicate_pred798_state11;
reg   [63:0] add6_339_fu_318;
reg   [63:0] add6_441_fu_322;
reg    ap_predicate_pred798_state12;
reg   [63:0] add6_543_fu_326;
reg   [63:0] add6_645_fu_330;
reg    ap_predicate_pred798_state13;
reg   [63:0] add6_747_fu_334;
reg   [63:0] add649_fu_338;
reg    ap_predicate_pred828_state10;
reg   [63:0] add6_151_fu_342;
reg   [63:0] add6_253_fu_346;
reg    ap_predicate_pred838_state11;
reg   [63:0] add6_355_fu_350;
reg   [63:0] add6_457_fu_354;
reg    ap_predicate_pred838_state12;
reg   [63:0] add6_559_fu_358;
reg   [63:0] add6_661_fu_362;
reg    ap_predicate_pred838_state13;
reg   [63:0] add6_763_fu_366;
reg   [63:0] add665_fu_370;
reg    ap_predicate_pred868_state10;
reg   [63:0] add6_167_fu_374;
reg   [63:0] add6_269_fu_378;
reg    ap_predicate_pred878_state11;
reg   [63:0] add6_371_fu_382;
reg   [63:0] add6_473_fu_386;
reg    ap_predicate_pred878_state12;
reg   [63:0] add6_575_fu_390;
reg   [63:0] add6_677_fu_394;
reg    ap_predicate_pred878_state13;
reg   [63:0] add6_779_fu_398;
reg   [63:0] add681_fu_402;
reg    ap_predicate_pred908_state10;
reg   [63:0] add6_183_fu_406;
reg   [63:0] add6_285_fu_410;
reg    ap_predicate_pred918_state11;
reg   [63:0] add6_387_fu_414;
reg   [63:0] add6_489_fu_418;
reg    ap_predicate_pred918_state12;
reg   [63:0] add6_591_fu_422;
reg   [63:0] add6_693_fu_426;
reg    ap_predicate_pred918_state13;
reg   [63:0] add6_795_fu_430;
reg   [63:0] add697_fu_434;
reg    ap_predicate_pred948_state10;
reg   [63:0] add6_199_fu_438;
reg   [63:0] add6_2101_fu_442;
reg    ap_predicate_pred958_state11;
reg   [63:0] add6_3103_fu_446;
reg   [63:0] add6_4105_fu_450;
reg    ap_predicate_pred958_state12;
reg   [63:0] add6_5107_fu_454;
reg   [63:0] add6_6109_fu_458;
reg    ap_predicate_pred958_state13;
reg   [63:0] add6_7111_fu_462;
reg   [63:0] add6113_fu_466;
reg    ap_predicate_pred999_state10;
reg   [63:0] add6_1115_fu_470;
reg   [63:0] add6_2117_fu_474;
reg    ap_predicate_pred1021_state11;
reg   [63:0] add6_3119_fu_478;
reg   [63:0] add6_4121_fu_482;
reg    ap_predicate_pred1021_state12;
reg   [63:0] add6_5123_fu_486;
reg   [63:0] add6_6125_fu_490;
reg    ap_predicate_pred1021_state13;
reg   [63:0] add6_7127_fu_494;
wire    ap_block_pp0_stage0_01001;
reg    init_ce1_local;
reg   [5:0] init_address1_local;
reg    init_ce0_local;
reg   [5:0] init_address0_local;
reg    emission_ce1_local;
reg   [11:0] emission_address1_local;
reg    emission_ce0_local;
reg   [11:0] emission_address0_local;
reg   [63:0] grp_fu_1104_p0;
reg   [63:0] grp_fu_1104_p1;
reg   [63:0] grp_fu_1108_p0;
reg   [63:0] grp_fu_1108_p1;
wire   [11:0] or_ln_fu_1167_p3;
wire   [4:0] tmp_s_fu_1180_p4;
wire   [5:0] or_ln1_fu_1190_p3;
wire   [11:0] shl_ln_fu_1203_p3;
wire   [11:0] add_ln14_fu_1211_p2;
wire   [5:0] or_ln13_1_fu_1222_p3;
wire   [11:0] shl_ln14_1_fu_1234_p3;
wire   [11:0] add_ln14_1_fu_1241_p2;
wire   [5:0] or_ln13_2_fu_1251_p3;
wire   [11:0] shl_ln14_2_fu_1263_p3;
wire   [11:0] add_ln14_2_fu_1270_p2;
wire   [5:0] or_ln13_3_fu_1309_p3;
wire   [11:0] or_ln14_1_fu_1322_p4;
wire   [0:0] tmp_10_fu_1336_p3;
wire   [5:0] or_ln13_4_fu_1343_p5;
wire   [11:0] shl_ln14_3_fu_1360_p5;
wire   [11:0] add_ln14_3_fu_1372_p2;
wire   [5:0] or_ln13_5_fu_1402_p3;
wire   [11:0] shl_ln14_4_fu_1414_p3;
wire   [11:0] add_ln14_4_fu_1421_p2;
wire   [5:0] or_ln13_6_fu_1431_p3;
wire   [11:0] shl_ln14_5_fu_1443_p3;
wire   [11:0] add_ln14_5_fu_1450_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_238 = 7'd0;
#0 add61_fu_242 = 64'd0;
#0 add6_13_fu_246 = 64'd0;
#0 add6_25_fu_250 = 64'd0;
#0 add6_37_fu_254 = 64'd0;
#0 add6_49_fu_258 = 64'd0;
#0 add6_511_fu_262 = 64'd0;
#0 add6_613_fu_266 = 64'd0;
#0 add6_715_fu_270 = 64'd0;
#0 add617_fu_274 = 64'd0;
#0 add6_119_fu_278 = 64'd0;
#0 add6_221_fu_282 = 64'd0;
#0 add6_323_fu_286 = 64'd0;
#0 add6_425_fu_290 = 64'd0;
#0 add6_527_fu_294 = 64'd0;
#0 add6_629_fu_298 = 64'd0;
#0 add6_731_fu_302 = 64'd0;
#0 add633_fu_306 = 64'd0;
#0 add6_135_fu_310 = 64'd0;
#0 add6_237_fu_314 = 64'd0;
#0 add6_339_fu_318 = 64'd0;
#0 add6_441_fu_322 = 64'd0;
#0 add6_543_fu_326 = 64'd0;
#0 add6_645_fu_330 = 64'd0;
#0 add6_747_fu_334 = 64'd0;
#0 add649_fu_338 = 64'd0;
#0 add6_151_fu_342 = 64'd0;
#0 add6_253_fu_346 = 64'd0;
#0 add6_355_fu_350 = 64'd0;
#0 add6_457_fu_354 = 64'd0;
#0 add6_559_fu_358 = 64'd0;
#0 add6_661_fu_362 = 64'd0;
#0 add6_763_fu_366 = 64'd0;
#0 add665_fu_370 = 64'd0;
#0 add6_167_fu_374 = 64'd0;
#0 add6_269_fu_378 = 64'd0;
#0 add6_371_fu_382 = 64'd0;
#0 add6_473_fu_386 = 64'd0;
#0 add6_575_fu_390 = 64'd0;
#0 add6_677_fu_394 = 64'd0;
#0 add6_779_fu_398 = 64'd0;
#0 add681_fu_402 = 64'd0;
#0 add6_183_fu_406 = 64'd0;
#0 add6_285_fu_410 = 64'd0;
#0 add6_387_fu_414 = 64'd0;
#0 add6_489_fu_418 = 64'd0;
#0 add6_591_fu_422 = 64'd0;
#0 add6_693_fu_426 = 64'd0;
#0 add6_795_fu_430 = 64'd0;
#0 add697_fu_434 = 64'd0;
#0 add6_199_fu_438 = 64'd0;
#0 add6_2101_fu_442 = 64'd0;
#0 add6_3103_fu_446 = 64'd0;
#0 add6_4105_fu_450 = 64'd0;
#0 add6_5107_fu_454 = 64'd0;
#0 add6_6109_fu_458 = 64'd0;
#0 add6_7111_fu_462 = 64'd0;
#0 add6113_fu_466 = 64'd0;
#0 add6_1115_fu_470 = 64'd0;
#0 add6_2117_fu_474 = 64'd0;
#0 add6_3119_fu_478 = 64'd0;
#0 add6_4121_fu_482 = 64'd0;
#0 add6_5123_fu_486 = 64'd0;
#0 add6_6125_fu_490 = 64'd0;
#0 add6_7127_fu_494 = 64'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1108_p0),.din1(grp_fu_1108_p1),.ce(1'b1),.dout(grp_fu_1108_p2));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_238 <= 7'd0;
    end else if (((tmp_reg_2498 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_fu_238 <= add_ln13_fu_1460_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred999_state10 == 1'b1))) begin
        add6113_fu_466 <= grp_fu_3803_p_dout0;
        add6_1115_fu_470 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred748_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add617_fu_274 <= grp_fu_3803_p_dout0;
        add6_119_fu_278 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred687_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add61_fu_242 <= grp_fu_3803_p_dout0;
        add6_13_fu_246 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred788_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add633_fu_306 <= grp_fu_3803_p_dout0;
        add6_135_fu_310 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred828_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add649_fu_338 <= grp_fu_3803_p_dout0;
        add6_151_fu_342 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred868_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add665_fu_370 <= grp_fu_3803_p_dout0;
        add6_167_fu_374 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred908_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add681_fu_402 <= grp_fu_3803_p_dout0;
        add6_183_fu_406 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred948_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add697_fu_434 <= grp_fu_3803_p_dout0;
        add6_199_fu_438 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred958_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_2101_fu_442 <= grp_fu_3803_p_dout0;
        add6_3103_fu_446 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1021_state11 == 1'b1))) begin
        add6_2117_fu_474 <= grp_fu_3803_p_dout0;
        add6_3119_fu_478 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred758_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_221_fu_282 <= grp_fu_3803_p_dout0;
        add6_323_fu_286 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred798_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_237_fu_314 <= grp_fu_3803_p_dout0;
        add6_339_fu_318 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred838_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_253_fu_346 <= grp_fu_3803_p_dout0;
        add6_355_fu_350 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred713_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_25_fu_250 <= grp_fu_3803_p_dout0;
        add6_37_fu_254 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred878_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_269_fu_378 <= grp_fu_3803_p_dout0;
        add6_371_fu_382 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred918_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_285_fu_410 <= grp_fu_3803_p_dout0;
        add6_387_fu_414 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred958_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_4105_fu_450 <= grp_fu_3803_p_dout0;
        add6_5107_fu_454 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1021_state12 == 1'b1))) begin
        add6_4121_fu_482 <= grp_fu_3803_p_dout0;
        add6_5123_fu_486 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred758_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_425_fu_290 <= grp_fu_3803_p_dout0;
        add6_527_fu_294 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred798_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_441_fu_322 <= grp_fu_3803_p_dout0;
        add6_543_fu_326 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred838_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_457_fu_354 <= grp_fu_3803_p_dout0;
        add6_559_fu_358 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred878_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_473_fu_386 <= grp_fu_3803_p_dout0;
        add6_575_fu_390 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred918_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_489_fu_418 <= grp_fu_3803_p_dout0;
        add6_591_fu_422 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred713_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_49_fu_258 <= grp_fu_3803_p_dout0;
        add6_511_fu_262 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred958_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_6109_fu_458 <= grp_fu_3803_p_dout0;
        add6_7111_fu_462 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1021_state13 == 1'b1))) begin
        add6_6125_fu_490 <= grp_fu_3803_p_dout0;
        add6_7127_fu_494 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred713_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_613_fu_266 <= grp_fu_3803_p_dout0;
        add6_715_fu_270 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred758_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_629_fu_298 <= grp_fu_3803_p_dout0;
        add6_731_fu_302 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred798_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_645_fu_330 <= grp_fu_3803_p_dout0;
        add6_747_fu_334 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred838_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_661_fu_362 <= grp_fu_3803_p_dout0;
        add6_763_fu_366 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred878_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_677_fu_394 <= grp_fu_3803_p_dout0;
        add6_779_fu_398 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred918_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_693_fu_426 <= grp_fu_3803_p_dout0;
        add6_795_fu_430 <= grp_fu_1108_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred1021_state11 <= (~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd0) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd8) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd16) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd24) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd32) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd40) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd48));
        ap_predicate_pred713_state11 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd48);
        ap_predicate_pred758_state11 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd40);
        ap_predicate_pred798_state11 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd32);
        ap_predicate_pred838_state11 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd24);
        ap_predicate_pred878_state11 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd16);
        ap_predicate_pred918_state11 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd8);
        ap_predicate_pred958_state11 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd0);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred1021_state12 <= (~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd0) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd8) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd16) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd24) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd32) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd40) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd48));
        ap_predicate_pred713_state12 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd48);
        ap_predicate_pred758_state12 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd40);
        ap_predicate_pred798_state12 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd32);
        ap_predicate_pred838_state12 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd24);
        ap_predicate_pred878_state12 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd16);
        ap_predicate_pred918_state12 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd8);
        ap_predicate_pred958_state12 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd0);
        tmp_157_reg_2574 <= {{s_1_reg_2491[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred1021_state13 <= (~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd0) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd8) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd16) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd24) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd32) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd40) & ~(trunc_ln13_reg_2502_pp0_iter2_reg == 6'd48));
        ap_predicate_pred713_state13 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd48);
        ap_predicate_pred758_state13 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd40);
        ap_predicate_pred798_state13 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd32);
        ap_predicate_pred838_state13 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd24);
        ap_predicate_pred878_state13 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd16);
        ap_predicate_pred918_state13 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd8);
        ap_predicate_pred958_state13 <= (trunc_ln13_reg_2502_pp0_iter2_reg == 6'd0);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred687_state10 <= (trunc_ln13_reg_2502_pp0_iter1_reg == 6'd48);
        ap_predicate_pred748_state10 <= (trunc_ln13_reg_2502_pp0_iter1_reg == 6'd40);
        ap_predicate_pred788_state10 <= (trunc_ln13_reg_2502_pp0_iter1_reg == 6'd32);
        ap_predicate_pred828_state10 <= (trunc_ln13_reg_2502_pp0_iter1_reg == 6'd24);
        ap_predicate_pred868_state10 <= (trunc_ln13_reg_2502_pp0_iter1_reg == 6'd16);
        ap_predicate_pred908_state10 <= (trunc_ln13_reg_2502_pp0_iter1_reg == 6'd8);
        ap_predicate_pred948_state10 <= (trunc_ln13_reg_2502_pp0_iter1_reg == 6'd0);
        ap_predicate_pred999_state10 <= (~(trunc_ln13_reg_2502_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_2502_pp0_iter1_reg == 6'd8) & ~(trunc_ln13_reg_2502_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_2502_pp0_iter1_reg == 6'd24) & ~(trunc_ln13_reg_2502_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_2502_pp0_iter1_reg == 6'd40) & ~(trunc_ln13_reg_2502_pp0_iter1_reg == 6'd48));
        obs_load_cast_cast_reg_2482[7 : 0] <= obs_load_cast_cast_fu_1128_p1[7 : 0];
        s_1_reg_2491 <= ap_sig_allocacmp_s_1;
        tmp_39_cast_reg_2511 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_2498 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_reg_2498_pp0_iter1_reg <= tmp_reg_2498;
        trunc_ln13_reg_2502 <= trunc_ln13_fu_1153_p1;
        trunc_ln13_reg_2502_pp0_iter1_reg <= trunc_ln13_reg_2502;
        trunc_ln13_reg_2502_pp0_iter2_reg <= trunc_ln13_reg_2502_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1112 <= init_q1;
        reg_1116 <= emission_q1;
        reg_1120 <= init_q0;
        reg_1124 <= emission_q0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6113_out_ap_vld = 1'b1;
    end else begin
        add6113_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add617_out_ap_vld = 1'b1;
    end else begin
        add617_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add633_out_ap_vld = 1'b1;
    end else begin
        add633_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add649_out_ap_vld = 1'b1;
    end else begin
        add649_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add665_out_ap_vld = 1'b1;
    end else begin
        add665_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add681_out_ap_vld = 1'b1;
    end else begin
        add681_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add697_out_ap_vld = 1'b1;
    end else begin
        add697_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1115_out_ap_vld = 1'b1;
    end else begin
        add6_1115_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_119_out_ap_vld = 1'b1;
    end else begin
        add6_119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_135_out_ap_vld = 1'b1;
    end else begin
        add6_135_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_13_out_ap_vld = 1'b1;
    end else begin
        add6_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_151_out_ap_vld = 1'b1;
    end else begin
        add6_151_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_167_out_ap_vld = 1'b1;
    end else begin
        add6_167_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_183_out_ap_vld = 1'b1;
    end else begin
        add6_183_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_199_out_ap_vld = 1'b1;
    end else begin
        add6_199_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2101_out_ap_vld = 1'b1;
    end else begin
        add6_2101_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2117_out_ap_vld = 1'b1;
    end else begin
        add6_2117_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_221_out_ap_vld = 1'b1;
    end else begin
        add6_221_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_237_out_ap_vld = 1'b1;
    end else begin
        add6_237_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_253_out_ap_vld = 1'b1;
    end else begin
        add6_253_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_25_out_ap_vld = 1'b1;
    end else begin
        add6_25_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_269_out_ap_vld = 1'b1;
    end else begin
        add6_269_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_285_out_ap_vld = 1'b1;
    end else begin
        add6_285_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3103_out_ap_vld = 1'b1;
    end else begin
        add6_3103_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3119_out_ap_vld = 1'b1;
    end else begin
        add6_3119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_323_out_ap_vld = 1'b1;
    end else begin
        add6_323_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_339_out_ap_vld = 1'b1;
    end else begin
        add6_339_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_355_out_ap_vld = 1'b1;
    end else begin
        add6_355_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_371_out_ap_vld = 1'b1;
    end else begin
        add6_371_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_37_out_ap_vld = 1'b1;
    end else begin
        add6_37_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_387_out_ap_vld = 1'b1;
    end else begin
        add6_387_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_4105_out_ap_vld = 1'b1;
    end else begin
        add6_4105_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_4121_out_ap_vld = 1'b1;
    end else begin
        add6_4121_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_425_out_ap_vld = 1'b1;
    end else begin
        add6_425_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_441_out_ap_vld = 1'b1;
    end else begin
        add6_441_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_457_out_ap_vld = 1'b1;
    end else begin
        add6_457_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_473_out_ap_vld = 1'b1;
    end else begin
        add6_473_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_489_out_ap_vld = 1'b1;
    end else begin
        add6_489_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_49_out_ap_vld = 1'b1;
    end else begin
        add6_49_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_5107_out_ap_vld = 1'b1;
    end else begin
        add6_5107_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_511_out_ap_vld = 1'b1;
    end else begin
        add6_511_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_5123_out_ap_vld = 1'b1;
    end else begin
        add6_5123_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_527_out_ap_vld = 1'b1;
    end else begin
        add6_527_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_543_out_ap_vld = 1'b1;
    end else begin
        add6_543_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_559_out_ap_vld = 1'b1;
    end else begin
        add6_559_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_575_out_ap_vld = 1'b1;
    end else begin
        add6_575_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_591_out_ap_vld = 1'b1;
    end else begin
        add6_591_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_6109_out_ap_vld = 1'b1;
    end else begin
        add6_6109_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_6125_out_ap_vld = 1'b1;
    end else begin
        add6_6125_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_613_out_ap_vld = 1'b1;
    end else begin
        add6_613_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_629_out_ap_vld = 1'b1;
    end else begin
        add6_629_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_645_out_ap_vld = 1'b1;
    end else begin
        add6_645_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_661_out_ap_vld = 1'b1;
    end else begin
        add6_661_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_677_out_ap_vld = 1'b1;
    end else begin
        add6_677_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_693_out_ap_vld = 1'b1;
    end else begin
        add6_693_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_7111_out_ap_vld = 1'b1;
    end else begin
        add6_7111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_7127_out_ap_vld = 1'b1;
    end else begin
        add6_7127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_715_out_ap_vld = 1'b1;
    end else begin
        add6_715_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_731_out_ap_vld = 1'b1;
    end else begin
        add6_731_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_747_out_ap_vld = 1'b1;
    end else begin
        add6_747_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_763_out_ap_vld = 1'b1;
    end else begin
        add6_763_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_779_out_ap_vld = 1'b1;
    end else begin
        add6_779_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_795_out_ap_vld = 1'b1;
    end else begin
        add6_795_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2498 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_2498_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_238;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_1455_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_1377_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_1275_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_1217_p1;
        end else begin
            emission_address0_local = 'bx;
        end
    end else begin
        emission_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_1426_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_1331_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_1246_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_1175_p1;
        end else begin
            emission_address1_local = 'bx;
        end
    end else begin
        emission_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1104_p0 = bitcast_ln14_12_fu_1490_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1104_p0 = bitcast_ln14_8_fu_1470_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1104_p0 = bitcast_ln14_4_fu_1382_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1104_p0 = bitcast_ln14_fu_1280_p1;
    end else begin
        grp_fu_1104_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1104_p1 = bitcast_ln14_13_fu_1495_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1104_p1 = bitcast_ln14_9_fu_1475_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1104_p1 = bitcast_ln14_5_fu_1387_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1104_p1 = bitcast_ln14_1_fu_1285_p1;
    end else begin
        grp_fu_1104_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1108_p0 = bitcast_ln14_14_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1108_p0 = bitcast_ln14_10_fu_1480_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1108_p0 = bitcast_ln14_6_fu_1392_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1108_p0 = bitcast_ln14_2_fu_1290_p1;
    end else begin
        grp_fu_1108_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1108_p1 = bitcast_ln14_15_fu_1505_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1108_p1 = bitcast_ln14_11_fu_1485_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1108_p1 = bitcast_ln14_7_fu_1397_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1108_p1 = bitcast_ln14_3_fu_1295_p1;
    end else begin
        grp_fu_1108_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_14_fu_1438_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_10_fu_1355_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_1258_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_1198_p1;
        end else begin
            init_address0_local = 'bx;
        end
    end else begin
        init_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_12_fu_1409_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_8_fu_1317_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_1229_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_fu_1148_p1;
        end else begin
            init_address1_local = 'bx;
        end
    end else begin
        init_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add6113_out = add6113_fu_466;
assign add617_out = add617_fu_274;
assign add61_out = add61_fu_242;
assign add633_out = add633_fu_306;
assign add649_out = add649_fu_338;
assign add665_out = add665_fu_370;
assign add681_out = add681_fu_402;
assign add697_out = add697_fu_434;
assign add6_1115_out = add6_1115_fu_470;
assign add6_119_out = add6_119_fu_278;
assign add6_135_out = add6_135_fu_310;
assign add6_13_out = add6_13_fu_246;
assign add6_151_out = add6_151_fu_342;
assign add6_167_out = add6_167_fu_374;
assign add6_183_out = add6_183_fu_406;
assign add6_199_out = add6_199_fu_438;
assign add6_2101_out = add6_2101_fu_442;
assign add6_2117_out = add6_2117_fu_474;
assign add6_221_out = add6_221_fu_282;
assign add6_237_out = add6_237_fu_314;
assign add6_253_out = add6_253_fu_346;
assign add6_25_out = add6_25_fu_250;
assign add6_269_out = add6_269_fu_378;
assign add6_285_out = add6_285_fu_410;
assign add6_3103_out = add6_3103_fu_446;
assign add6_3119_out = add6_3119_fu_478;
assign add6_323_out = add6_323_fu_286;
assign add6_339_out = add6_339_fu_318;
assign add6_355_out = add6_355_fu_350;
assign add6_371_out = add6_371_fu_382;
assign add6_37_out = add6_37_fu_254;
assign add6_387_out = add6_387_fu_414;
assign add6_4105_out = add6_4105_fu_450;
assign add6_4121_out = add6_4121_fu_482;
assign add6_425_out = add6_425_fu_290;
assign add6_441_out = add6_441_fu_322;
assign add6_457_out = add6_457_fu_354;
assign add6_473_out = add6_473_fu_386;
assign add6_489_out = add6_489_fu_418;
assign add6_49_out = add6_49_fu_258;
assign add6_5107_out = add6_5107_fu_454;
assign add6_511_out = add6_511_fu_262;
assign add6_5123_out = add6_5123_fu_486;
assign add6_527_out = add6_527_fu_294;
assign add6_543_out = add6_543_fu_326;
assign add6_559_out = add6_559_fu_358;
assign add6_575_out = add6_575_fu_390;
assign add6_591_out = add6_591_fu_422;
assign add6_6109_out = add6_6109_fu_458;
assign add6_6125_out = add6_6125_fu_490;
assign add6_613_out = add6_613_fu_266;
assign add6_629_out = add6_629_fu_298;
assign add6_645_out = add6_645_fu_330;
assign add6_661_out = add6_661_fu_362;
assign add6_677_out = add6_677_fu_394;
assign add6_693_out = add6_693_fu_426;
assign add6_7111_out = add6_7111_fu_462;
assign add6_7127_out = add6_7127_fu_494;
assign add6_715_out = add6_715_fu_270;
assign add6_731_out = add6_731_fu_302;
assign add6_747_out = add6_747_fu_334;
assign add6_763_out = add6_763_fu_366;
assign add6_779_out = add6_779_fu_398;
assign add6_795_out = add6_795_fu_430;
assign add_ln13_fu_1460_p2 = (s_1_reg_2491 + 7'd8);
assign add_ln14_1_fu_1241_p2 = (shl_ln14_1_fu_1234_p3 + obs_load_cast_cast_reg_2482);
assign add_ln14_2_fu_1270_p2 = (shl_ln14_2_fu_1263_p3 + obs_load_cast_cast_reg_2482);
assign add_ln14_3_fu_1372_p2 = (shl_ln14_3_fu_1360_p5 + obs_load_cast_cast_reg_2482);
assign add_ln14_4_fu_1421_p2 = (shl_ln14_4_fu_1414_p3 + obs_load_cast_cast_reg_2482);
assign add_ln14_5_fu_1450_p2 = (shl_ln14_5_fu_1443_p3 + obs_load_cast_cast_reg_2482);
assign add_ln14_fu_1211_p2 = (shl_ln_fu_1203_p3 + obs_load_cast_cast_fu_1128_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_10_fu_1480_p1 = reg_1120;
assign bitcast_ln14_11_fu_1485_p1 = reg_1124;
assign bitcast_ln14_12_fu_1490_p1 = reg_1112;
assign bitcast_ln14_13_fu_1495_p1 = reg_1116;
assign bitcast_ln14_14_fu_1500_p1 = reg_1120;
assign bitcast_ln14_15_fu_1505_p1 = reg_1124;
assign bitcast_ln14_1_fu_1285_p1 = reg_1116;
assign bitcast_ln14_2_fu_1290_p1 = reg_1120;
assign bitcast_ln14_3_fu_1295_p1 = reg_1124;
assign bitcast_ln14_4_fu_1382_p1 = reg_1112;
assign bitcast_ln14_5_fu_1387_p1 = reg_1116;
assign bitcast_ln14_6_fu_1392_p1 = reg_1120;
assign bitcast_ln14_7_fu_1397_p1 = reg_1124;
assign bitcast_ln14_8_fu_1470_p1 = reg_1112;
assign bitcast_ln14_9_fu_1475_p1 = reg_1116;
assign bitcast_ln14_fu_1280_p1 = reg_1112;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_3803_p_ce = 1'b1;
assign grp_fu_3803_p_din0 = grp_fu_1104_p0;
assign grp_fu_3803_p_din1 = grp_fu_1104_p1;
assign grp_fu_3803_p_opcode = 2'd0;
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign obs_load_cast_cast_fu_1128_p1 = obs_load_cast;
assign or_ln13_1_fu_1222_p3 = {{tmp_39_cast_reg_2511}, {2'd2}};
assign or_ln13_2_fu_1251_p3 = {{tmp_39_cast_reg_2511}, {2'd3}};
assign or_ln13_3_fu_1309_p3 = {{tmp_157_fu_1300_p4}, {3'd4}};
assign or_ln13_4_fu_1343_p5 = {{{{tmp_157_fu_1300_p4}, {1'd1}}, {tmp_10_fu_1336_p3}}, {1'd1}};
assign or_ln13_5_fu_1402_p3 = {{tmp_157_reg_2574}, {3'd6}};
assign or_ln13_6_fu_1431_p3 = {{tmp_157_reg_2574}, {3'd7}};
assign or_ln14_1_fu_1322_p4 = {{{tmp_157_fu_1300_p4}, {1'd1}}, {obs_load}};
assign or_ln1_fu_1190_p3 = {{tmp_s_fu_1180_p4}, {1'd1}};
assign or_ln_fu_1167_p3 = {{tmp_39_cast_fu_1157_p4}, {obs_load}};
assign shl_ln14_1_fu_1234_p3 = {{tmp_39_cast_reg_2511}, {8'd128}};
assign shl_ln14_2_fu_1263_p3 = {{tmp_39_cast_reg_2511}, {8'd192}};
assign shl_ln14_3_fu_1360_p5 = {{{{tmp_157_fu_1300_p4}, {1'd1}}, {tmp_10_fu_1336_p3}}, {7'd64}};
assign shl_ln14_4_fu_1414_p3 = {{tmp_157_reg_2574}, {9'd384}};
assign shl_ln14_5_fu_1443_p3 = {{tmp_157_reg_2574}, {9'd448}};
assign shl_ln_fu_1203_p3 = {{tmp_s_fu_1180_p4}, {7'd64}};
assign tmp_10_fu_1336_p3 = s_1_reg_2491[32'd1];
assign tmp_157_fu_1300_p4 = {{s_1_reg_2491[5:3]}};
assign tmp_39_cast_fu_1157_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_s_fu_1180_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign trunc_ln13_fu_1153_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln13_fu_1148_p1 = ap_sig_allocacmp_s_1;
assign zext_ln14_10_fu_1355_p1 = or_ln13_4_fu_1343_p5;
assign zext_ln14_11_fu_1426_p1 = add_ln14_4_fu_1421_p2;
assign zext_ln14_12_fu_1409_p1 = or_ln13_5_fu_1402_p3;
assign zext_ln14_13_fu_1455_p1 = add_ln14_5_fu_1450_p2;
assign zext_ln14_14_fu_1438_p1 = or_ln13_6_fu_1431_p3;
assign zext_ln14_1_fu_1198_p1 = or_ln1_fu_1190_p3;
assign zext_ln14_2_fu_1217_p1 = add_ln14_fu_1211_p2;
assign zext_ln14_3_fu_1229_p1 = or_ln13_1_fu_1222_p3;
assign zext_ln14_4_fu_1246_p1 = add_ln14_1_fu_1241_p2;
assign zext_ln14_5_fu_1258_p1 = or_ln13_2_fu_1251_p3;
assign zext_ln14_6_fu_1275_p1 = add_ln14_2_fu_1270_p2;
assign zext_ln14_7_fu_1331_p1 = or_ln14_1_fu_1322_p4;
assign zext_ln14_8_fu_1317_p1 = or_ln13_3_fu_1309_p3;
assign zext_ln14_9_fu_1377_p1 = add_ln14_3_fu_1372_p2;
assign zext_ln14_fu_1175_p1 = or_ln_fu_1167_p3;
always @ (posedge ap_clk) begin
    obs_load_cast_cast_reg_2482[11:8] <= 4'b0000;
end
endmodule 