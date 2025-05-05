module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,add6_3127_out,add6_3127_out_ap_vld,add6_2125_out,add6_2125_out_ap_vld,add6_1123_out,add6_1123_out_ap_vld,add6121_out,add6121_out_ap_vld,add6_3119_out,add6_3119_out_ap_vld,add6_2117_out,add6_2117_out_ap_vld,add6_1115_out,add6_1115_out_ap_vld,add6113_out,add6113_out_ap_vld,add6_3111_out,add6_3111_out_ap_vld,add6_2109_out,add6_2109_out_ap_vld,add6_1107_out,add6_1107_out_ap_vld,add6105_out,add6105_out_ap_vld,add6_3103_out,add6_3103_out_ap_vld,add6_2101_out,add6_2101_out_ap_vld,add6_199_out,add6_199_out_ap_vld,add697_out,add697_out_ap_vld,add6_395_out,add6_395_out_ap_vld,add6_293_out,add6_293_out_ap_vld,add6_191_out,add6_191_out_ap_vld,add689_out,add689_out_ap_vld,add6_387_out,add6_387_out_ap_vld,add6_285_out,add6_285_out_ap_vld,add6_183_out,add6_183_out_ap_vld,add681_out,add681_out_ap_vld,add6_379_out,add6_379_out_ap_vld,add6_277_out,add6_277_out_ap_vld,add6_175_out,add6_175_out_ap_vld,add673_out,add673_out_ap_vld,add6_371_out,add6_371_out_ap_vld,add6_269_out,add6_269_out_ap_vld,add6_167_out,add6_167_out_ap_vld,add665_out,add665_out_ap_vld,add6_363_out,add6_363_out_ap_vld,add6_261_out,add6_261_out_ap_vld,add6_159_out,add6_159_out_ap_vld,add657_out,add657_out_ap_vld,add6_355_out,add6_355_out_ap_vld,add6_253_out,add6_253_out_ap_vld,add6_151_out,add6_151_out_ap_vld,add649_out,add649_out_ap_vld,add6_347_out,add6_347_out_ap_vld,add6_245_out,add6_245_out_ap_vld,add6_143_out,add6_143_out_ap_vld,add641_out,add641_out_ap_vld,add6_339_out,add6_339_out_ap_vld,add6_237_out,add6_237_out_ap_vld,add6_135_out,add6_135_out_ap_vld,add633_out,add633_out_ap_vld,add6_331_out,add6_331_out_ap_vld,add6_229_out,add6_229_out_ap_vld,add6_127_out,add6_127_out_ap_vld,add625_out,add625_out_ap_vld,add6_323_out,add6_323_out_ap_vld,add6_221_out,add6_221_out_ap_vld,add6_119_out,add6_119_out_ap_vld,add617_out,add617_out_ap_vld,add6_315_out,add6_315_out_ap_vld,add6_213_out,add6_213_out_ap_vld,add6_111_out,add6_111_out_ap_vld,add69_out,add69_out_ap_vld,add6_37_out,add6_37_out_ap_vld,add6_25_out,add6_25_out_ap_vld,add6_13_out,add6_13_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_3911_p_din0,grp_fu_3911_p_din1,grp_fu_3911_p_opcode,grp_fu_3911_p_dout0,grp_fu_3911_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [4:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [6:0] conv3_udiv;
output  [10:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [10:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [10:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [10:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
input  [0:0] empty;
input  [6:0] conv3_udiv_cast;
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [4:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [63:0] add6_3127_out;
output   add6_3127_out_ap_vld;
output  [63:0] add6_2125_out;
output   add6_2125_out_ap_vld;
output  [63:0] add6_1123_out;
output   add6_1123_out_ap_vld;
output  [63:0] add6121_out;
output   add6121_out_ap_vld;
output  [63:0] add6_3119_out;
output   add6_3119_out_ap_vld;
output  [63:0] add6_2117_out;
output   add6_2117_out_ap_vld;
output  [63:0] add6_1115_out;
output   add6_1115_out_ap_vld;
output  [63:0] add6113_out;
output   add6113_out_ap_vld;
output  [63:0] add6_3111_out;
output   add6_3111_out_ap_vld;
output  [63:0] add6_2109_out;
output   add6_2109_out_ap_vld;
output  [63:0] add6_1107_out;
output   add6_1107_out_ap_vld;
output  [63:0] add6105_out;
output   add6105_out_ap_vld;
output  [63:0] add6_3103_out;
output   add6_3103_out_ap_vld;
output  [63:0] add6_2101_out;
output   add6_2101_out_ap_vld;
output  [63:0] add6_199_out;
output   add6_199_out_ap_vld;
output  [63:0] add697_out;
output   add697_out_ap_vld;
output  [63:0] add6_395_out;
output   add6_395_out_ap_vld;
output  [63:0] add6_293_out;
output   add6_293_out_ap_vld;
output  [63:0] add6_191_out;
output   add6_191_out_ap_vld;
output  [63:0] add689_out;
output   add689_out_ap_vld;
output  [63:0] add6_387_out;
output   add6_387_out_ap_vld;
output  [63:0] add6_285_out;
output   add6_285_out_ap_vld;
output  [63:0] add6_183_out;
output   add6_183_out_ap_vld;
output  [63:0] add681_out;
output   add681_out_ap_vld;
output  [63:0] add6_379_out;
output   add6_379_out_ap_vld;
output  [63:0] add6_277_out;
output   add6_277_out_ap_vld;
output  [63:0] add6_175_out;
output   add6_175_out_ap_vld;
output  [63:0] add673_out;
output   add673_out_ap_vld;
output  [63:0] add6_371_out;
output   add6_371_out_ap_vld;
output  [63:0] add6_269_out;
output   add6_269_out_ap_vld;
output  [63:0] add6_167_out;
output   add6_167_out_ap_vld;
output  [63:0] add665_out;
output   add665_out_ap_vld;
output  [63:0] add6_363_out;
output   add6_363_out_ap_vld;
output  [63:0] add6_261_out;
output   add6_261_out_ap_vld;
output  [63:0] add6_159_out;
output   add6_159_out_ap_vld;
output  [63:0] add657_out;
output   add657_out_ap_vld;
output  [63:0] add6_355_out;
output   add6_355_out_ap_vld;
output  [63:0] add6_253_out;
output   add6_253_out_ap_vld;
output  [63:0] add6_151_out;
output   add6_151_out_ap_vld;
output  [63:0] add649_out;
output   add649_out_ap_vld;
output  [63:0] add6_347_out;
output   add6_347_out_ap_vld;
output  [63:0] add6_245_out;
output   add6_245_out_ap_vld;
output  [63:0] add6_143_out;
output   add6_143_out_ap_vld;
output  [63:0] add641_out;
output   add641_out_ap_vld;
output  [63:0] add6_339_out;
output   add6_339_out_ap_vld;
output  [63:0] add6_237_out;
output   add6_237_out_ap_vld;
output  [63:0] add6_135_out;
output   add6_135_out_ap_vld;
output  [63:0] add633_out;
output   add633_out_ap_vld;
output  [63:0] add6_331_out;
output   add6_331_out_ap_vld;
output  [63:0] add6_229_out;
output   add6_229_out_ap_vld;
output  [63:0] add6_127_out;
output   add6_127_out_ap_vld;
output  [63:0] add625_out;
output   add625_out_ap_vld;
output  [63:0] add6_323_out;
output   add6_323_out_ap_vld;
output  [63:0] add6_221_out;
output   add6_221_out_ap_vld;
output  [63:0] add6_119_out;
output   add6_119_out_ap_vld;
output  [63:0] add617_out;
output   add617_out_ap_vld;
output  [63:0] add6_315_out;
output   add6_315_out_ap_vld;
output  [63:0] add6_213_out;
output   add6_213_out_ap_vld;
output  [63:0] add6_111_out;
output   add6_111_out_ap_vld;
output  [63:0] add69_out;
output   add69_out_ap_vld;
output  [63:0] add6_37_out;
output   add6_37_out_ap_vld;
output  [63:0] add6_25_out;
output   add6_25_out_ap_vld;
output  [63:0] add6_13_out;
output   add6_13_out_ap_vld;
output  [63:0] add61_out;
output   add61_out_ap_vld;
output  [63:0] grp_fu_3911_p_din0;
output  [63:0] grp_fu_3911_p_din1;
output  [1:0] grp_fu_3911_p_opcode;
input  [63:0] grp_fu_3911_p_dout0;
output   grp_fu_3911_p_ce;
reg ap_idle;
reg add6_3127_out_ap_vld;
reg add6_2125_out_ap_vld;
reg add6_1123_out_ap_vld;
reg add6121_out_ap_vld;
reg add6_3119_out_ap_vld;
reg add6_2117_out_ap_vld;
reg add6_1115_out_ap_vld;
reg add6113_out_ap_vld;
reg add6_3111_out_ap_vld;
reg add6_2109_out_ap_vld;
reg add6_1107_out_ap_vld;
reg add6105_out_ap_vld;
reg add6_3103_out_ap_vld;
reg add6_2101_out_ap_vld;
reg add6_199_out_ap_vld;
reg add697_out_ap_vld;
reg add6_395_out_ap_vld;
reg add6_293_out_ap_vld;
reg add6_191_out_ap_vld;
reg add689_out_ap_vld;
reg add6_387_out_ap_vld;
reg add6_285_out_ap_vld;
reg add6_183_out_ap_vld;
reg add681_out_ap_vld;
reg add6_379_out_ap_vld;
reg add6_277_out_ap_vld;
reg add6_175_out_ap_vld;
reg add673_out_ap_vld;
reg add6_371_out_ap_vld;
reg add6_269_out_ap_vld;
reg add6_167_out_ap_vld;
reg add665_out_ap_vld;
reg add6_363_out_ap_vld;
reg add6_261_out_ap_vld;
reg add6_159_out_ap_vld;
reg add657_out_ap_vld;
reg add6_355_out_ap_vld;
reg add6_253_out_ap_vld;
reg add6_151_out_ap_vld;
reg add649_out_ap_vld;
reg add6_347_out_ap_vld;
reg add6_245_out_ap_vld;
reg add6_143_out_ap_vld;
reg add641_out_ap_vld;
reg add6_339_out_ap_vld;
reg add6_237_out_ap_vld;
reg add6_135_out_ap_vld;
reg add633_out_ap_vld;
reg add6_331_out_ap_vld;
reg add6_229_out_ap_vld;
reg add6_127_out_ap_vld;
reg add625_out_ap_vld;
reg add6_323_out_ap_vld;
reg add6_221_out_ap_vld;
reg add6_119_out_ap_vld;
reg add617_out_ap_vld;
reg add6_315_out_ap_vld;
reg add6_213_out_ap_vld;
reg add6_111_out_ap_vld;
reg add69_out_ap_vld;
reg add6_37_out_ap_vld;
reg add6_25_out_ap_vld;
reg add6_13_out_ap_vld;
reg add61_out_ap_vld;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_127_reg_2286;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] conv3_udiv_cast_cast_fu_1096_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_2275;
reg   [6:0] s_1_reg_2281;
reg   [0:0] tmp_127_reg_2286_pp0_iter1_reg;
reg   [0:0] tmp_127_reg_2286_pp0_iter2_reg;
reg   [0:0] tmp_127_reg_2286_pp0_iter3_reg;
wire   [5:0] trunc_ln13_fu_1116_p1;
reg   [5:0] trunc_ln13_reg_2290;
reg   [5:0] trunc_ln13_reg_2290_pp0_iter1_reg;
reg   [5:0] trunc_ln13_reg_2290_pp0_iter2_reg;
reg   [5:0] trunc_ln13_reg_2290_pp0_iter3_reg;
reg   [5:0] trunc_ln13_reg_2290_pp0_iter4_reg;
wire   [3:0] tmp_134_fu_1136_p4;
reg   [3:0] tmp_134_reg_2299;
reg   [63:0] init_0_load_reg_2340;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] select_ln14_fu_1194_p3;
reg   [63:0] select_ln14_reg_2345;
wire   [63:0] select_ln14_1_fu_1201_p3;
reg   [63:0] select_ln14_1_reg_2350;
reg   [63:0] init_0_load_1_reg_2355;
reg   [63:0] init_1_load_reg_2370;
reg   [63:0] init_1_load_1_reg_2375;
wire   [63:0] bitcast_ln14_fu_1254_p1;
wire   [63:0] bitcast_ln14_1_fu_1258_p1;
wire   [63:0] bitcast_ln14_2_fu_1262_p1;
wire   [63:0] select_ln14_2_fu_1266_p3;
reg   [63:0] select_ln14_2_reg_2405;
wire   [63:0] bitcast_ln14_5_fu_1273_p1;
wire   [63:0] select_ln14_3_fu_1277_p3;
reg   [63:0] select_ln14_3_reg_2415;
wire   [63:0] bitcast_ln14_3_fu_1284_p1;
wire   [63:0] bitcast_ln14_4_fu_1288_p1;
wire   [63:0] bitcast_ln14_6_fu_1292_p1;
wire   [63:0] bitcast_ln14_7_fu_1296_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln9_fu_1130_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1154_p1;
wire   [63:0] zext_ln14_1_fu_1174_p1;
wire   [63:0] zext_ln14_4_fu_1188_p1;
wire   [63:0] zext_ln14_2_fu_1220_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1238_p1;
reg   [6:0] s_fu_230;
wire   [6:0] add_ln13_fu_1244_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_234;
reg    ap_predicate_pred787_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage0;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [63:0] add6_13_fu_238;
wire   [63:0] grp_fu_1092_p2;
reg   [63:0] add6_25_fu_242;
reg    ap_predicate_pred815_state11;
reg   [63:0] add6_37_fu_246;
reg   [63:0] add69_fu_250;
reg    ap_predicate_pred828_state10;
reg   [63:0] add6_111_fu_254;
reg   [63:0] add6_213_fu_258;
reg    ap_predicate_pred838_state11;
reg   [63:0] add6_315_fu_262;
reg   [63:0] add617_fu_266;
reg    ap_predicate_pred850_state10;
reg   [63:0] add6_119_fu_270;
reg   [63:0] add6_221_fu_274;
reg    ap_predicate_pred860_state11;
reg   [63:0] add6_323_fu_278;
reg   [63:0] add625_fu_282;
reg    ap_predicate_pred872_state10;
reg   [63:0] add6_127_fu_286;
reg   [63:0] add6_229_fu_290;
reg    ap_predicate_pred882_state11;
reg   [63:0] add6_331_fu_294;
reg   [63:0] add633_fu_298;
reg    ap_predicate_pred894_state10;
reg   [63:0] add6_135_fu_302;
reg   [63:0] add6_237_fu_306;
reg    ap_predicate_pred904_state11;
reg   [63:0] add6_339_fu_310;
reg   [63:0] add641_fu_314;
reg    ap_predicate_pred916_state10;
reg   [63:0] add6_143_fu_318;
reg   [63:0] add6_245_fu_322;
reg    ap_predicate_pred926_state11;
reg   [63:0] add6_347_fu_326;
reg   [63:0] add649_fu_330;
reg    ap_predicate_pred938_state10;
reg   [63:0] add6_151_fu_334;
reg   [63:0] add6_253_fu_338;
reg    ap_predicate_pred948_state11;
reg   [63:0] add6_355_fu_342;
reg   [63:0] add657_fu_346;
reg    ap_predicate_pred960_state10;
reg   [63:0] add6_159_fu_350;
reg   [63:0] add6_261_fu_354;
reg    ap_predicate_pred970_state11;
reg   [63:0] add6_363_fu_358;
reg   [63:0] add665_fu_362;
reg    ap_predicate_pred982_state10;
reg   [63:0] add6_167_fu_366;
reg   [63:0] add6_269_fu_370;
reg    ap_predicate_pred992_state11;
reg   [63:0] add6_371_fu_374;
reg   [63:0] add673_fu_378;
reg    ap_predicate_pred1004_state10;
reg   [63:0] add6_175_fu_382;
reg   [63:0] add6_277_fu_386;
reg    ap_predicate_pred1014_state11;
reg   [63:0] add6_379_fu_390;
reg   [63:0] add681_fu_394;
reg    ap_predicate_pred1026_state10;
reg   [63:0] add6_183_fu_398;
reg   [63:0] add6_285_fu_402;
reg    ap_predicate_pred1036_state11;
reg   [63:0] add6_387_fu_406;
reg   [63:0] add689_fu_410;
reg    ap_predicate_pred1048_state10;
reg   [63:0] add6_191_fu_414;
reg   [63:0] add6_293_fu_418;
reg    ap_predicate_pred1058_state11;
reg   [63:0] add6_395_fu_422;
reg   [63:0] add697_fu_426;
reg    ap_predicate_pred1070_state10;
reg   [63:0] add6_199_fu_430;
reg   [63:0] add6_2101_fu_434;
reg    ap_predicate_pred1080_state11;
reg   [63:0] add6_3103_fu_438;
reg   [63:0] add6105_fu_442;
reg    ap_predicate_pred1092_state10;
reg   [63:0] add6_1107_fu_446;
reg   [63:0] add6_2109_fu_450;
reg    ap_predicate_pred1102_state11;
reg   [63:0] add6_3111_fu_454;
reg   [63:0] add6113_fu_458;
reg    ap_predicate_pred1114_state10;
reg   [63:0] add6_1115_fu_462;
reg   [63:0] add6_2117_fu_466;
reg    ap_predicate_pred1124_state11;
reg   [63:0] add6_3119_fu_470;
reg   [63:0] add6121_fu_474;
reg    ap_predicate_pred1163_state10;
reg   [63:0] add6_1123_fu_478;
reg   [63:0] add6_2125_fu_482;
reg    ap_predicate_pred1201_state11;
reg   [63:0] add6_3127_fu_486;
wire    ap_block_pp0_stage0_01001;
reg    init_0_ce1_local;
reg    init_0_ce0_local;
reg    emission_0_ce1_local;
reg   [10:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [10:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [10:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [10:0] emission_1_address0_local;
reg    init_1_ce1_local;
reg    init_1_ce0_local;
reg   [63:0] grp_fu_1088_p0;
reg   [63:0] grp_fu_1088_p1;
reg   [63:0] grp_fu_1092_p0;
reg   [63:0] grp_fu_1092_p1;
wire   [4:0] lshr_ln9_fu_1120_p4;
wire   [10:0] or_ln_fu_1146_p3;
wire   [10:0] or_ln14_1_fu_1160_p3;
wire   [10:0] add_ln14_fu_1168_p2;
wire   [4:0] or_ln14_2_fu_1180_p3;
wire   [10:0] or_ln14_3_fu_1208_p3;
wire   [10:0] add_ln14_1_fu_1215_p2;
wire   [10:0] or_ln14_4_fu_1226_p3;
wire   [10:0] add_ln14_2_fu_1233_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_230 = 7'd0;
#0 add61_fu_234 = 64'd0;
#0 add6_13_fu_238 = 64'd0;
#0 add6_25_fu_242 = 64'd0;
#0 add6_37_fu_246 = 64'd0;
#0 add69_fu_250 = 64'd0;
#0 add6_111_fu_254 = 64'd0;
#0 add6_213_fu_258 = 64'd0;
#0 add6_315_fu_262 = 64'd0;
#0 add617_fu_266 = 64'd0;
#0 add6_119_fu_270 = 64'd0;
#0 add6_221_fu_274 = 64'd0;
#0 add6_323_fu_278 = 64'd0;
#0 add625_fu_282 = 64'd0;
#0 add6_127_fu_286 = 64'd0;
#0 add6_229_fu_290 = 64'd0;
#0 add6_331_fu_294 = 64'd0;
#0 add633_fu_298 = 64'd0;
#0 add6_135_fu_302 = 64'd0;
#0 add6_237_fu_306 = 64'd0;
#0 add6_339_fu_310 = 64'd0;
#0 add641_fu_314 = 64'd0;
#0 add6_143_fu_318 = 64'd0;
#0 add6_245_fu_322 = 64'd0;
#0 add6_347_fu_326 = 64'd0;
#0 add649_fu_330 = 64'd0;
#0 add6_151_fu_334 = 64'd0;
#0 add6_253_fu_338 = 64'd0;
#0 add6_355_fu_342 = 64'd0;
#0 add657_fu_346 = 64'd0;
#0 add6_159_fu_350 = 64'd0;
#0 add6_261_fu_354 = 64'd0;
#0 add6_363_fu_358 = 64'd0;
#0 add665_fu_362 = 64'd0;
#0 add6_167_fu_366 = 64'd0;
#0 add6_269_fu_370 = 64'd0;
#0 add6_371_fu_374 = 64'd0;
#0 add673_fu_378 = 64'd0;
#0 add6_175_fu_382 = 64'd0;
#0 add6_277_fu_386 = 64'd0;
#0 add6_379_fu_390 = 64'd0;
#0 add681_fu_394 = 64'd0;
#0 add6_183_fu_398 = 64'd0;
#0 add6_285_fu_402 = 64'd0;
#0 add6_387_fu_406 = 64'd0;
#0 add689_fu_410 = 64'd0;
#0 add6_191_fu_414 = 64'd0;
#0 add6_293_fu_418 = 64'd0;
#0 add6_395_fu_422 = 64'd0;
#0 add697_fu_426 = 64'd0;
#0 add6_199_fu_430 = 64'd0;
#0 add6_2101_fu_434 = 64'd0;
#0 add6_3103_fu_438 = 64'd0;
#0 add6105_fu_442 = 64'd0;
#0 add6_1107_fu_446 = 64'd0;
#0 add6_2109_fu_450 = 64'd0;
#0 add6_3111_fu_454 = 64'd0;
#0 add6113_fu_458 = 64'd0;
#0 add6_1115_fu_462 = 64'd0;
#0 add6_2117_fu_466 = 64'd0;
#0 add6_3119_fu_470 = 64'd0;
#0 add6121_fu_474 = 64'd0;
#0 add6_1123_fu_478 = 64'd0;
#0 add6_2125_fu_482 = 64'd0;
#0 add6_3127_fu_486 = 64'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1092_p0),.din1(grp_fu_1092_p1),.ce(1'b1),.dout(grp_fu_1092_p2));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_230 <= 7'd0;
    end else if (((tmp_127_reg_2286 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        s_fu_230 <= add_ln13_fu_1244_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1092_state10 == 1'b1))) begin
        add6105_fu_442 <= grp_fu_3911_p_dout0;
        add6_1107_fu_446 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1114_state10 == 1'b1))) begin
        add6113_fu_458 <= grp_fu_3911_p_dout0;
        add6_1115_fu_462 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1163_state10 == 1'b1))) begin
        add6121_fu_474 <= grp_fu_3911_p_dout0;
        add6_1123_fu_478 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred850_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add617_fu_266 <= grp_fu_3911_p_dout0;
        add6_119_fu_270 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred787_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add61_fu_234 <= grp_fu_3911_p_dout0;
        add6_13_fu_238 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred872_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add625_fu_282 <= grp_fu_3911_p_dout0;
        add6_127_fu_286 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred894_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add633_fu_298 <= grp_fu_3911_p_dout0;
        add6_135_fu_302 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred916_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add641_fu_314 <= grp_fu_3911_p_dout0;
        add6_143_fu_318 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred938_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add649_fu_330 <= grp_fu_3911_p_dout0;
        add6_151_fu_334 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred960_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add657_fu_346 <= grp_fu_3911_p_dout0;
        add6_159_fu_350 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred982_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add665_fu_362 <= grp_fu_3911_p_dout0;
        add6_167_fu_366 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1004_state10 == 1'b1))) begin
        add673_fu_378 <= grp_fu_3911_p_dout0;
        add6_175_fu_382 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1026_state10 == 1'b1))) begin
        add681_fu_394 <= grp_fu_3911_p_dout0;
        add6_183_fu_398 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1048_state10 == 1'b1))) begin
        add689_fu_410 <= grp_fu_3911_p_dout0;
        add6_191_fu_414 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1070_state10 == 1'b1))) begin
        add697_fu_426 <= grp_fu_3911_p_dout0;
        add6_199_fu_430 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred828_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add69_fu_250 <= grp_fu_3911_p_dout0;
        add6_111_fu_254 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1080_state11 == 1'b1))) begin
        add6_2101_fu_434 <= grp_fu_3911_p_dout0;
        add6_3103_fu_438 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1102_state11 == 1'b1))) begin
        add6_2109_fu_450 <= grp_fu_3911_p_dout0;
        add6_3111_fu_454 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1124_state11 == 1'b1))) begin
        add6_2117_fu_466 <= grp_fu_3911_p_dout0;
        add6_3119_fu_470 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1201_state11 == 1'b1))) begin
        add6_2125_fu_482 <= grp_fu_3911_p_dout0;
        add6_3127_fu_486 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred838_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_213_fu_258 <= grp_fu_3911_p_dout0;
        add6_315_fu_262 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred860_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_221_fu_274 <= grp_fu_3911_p_dout0;
        add6_323_fu_278 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred882_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_229_fu_290 <= grp_fu_3911_p_dout0;
        add6_331_fu_294 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred904_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_237_fu_306 <= grp_fu_3911_p_dout0;
        add6_339_fu_310 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred926_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_245_fu_322 <= grp_fu_3911_p_dout0;
        add6_347_fu_326 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred948_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_253_fu_338 <= grp_fu_3911_p_dout0;
        add6_355_fu_342 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred815_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_25_fu_242 <= grp_fu_3911_p_dout0;
        add6_37_fu_246 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred970_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_261_fu_354 <= grp_fu_3911_p_dout0;
        add6_363_fu_358 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred992_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_269_fu_370 <= grp_fu_3911_p_dout0;
        add6_371_fu_374 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1014_state11 == 1'b1))) begin
        add6_277_fu_386 <= grp_fu_3911_p_dout0;
        add6_379_fu_390 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1036_state11 == 1'b1))) begin
        add6_285_fu_402 <= grp_fu_3911_p_dout0;
        add6_387_fu_406 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1058_state11 == 1'b1))) begin
        add6_293_fu_418 <= grp_fu_3911_p_dout0;
        add6_395_fu_422 <= grp_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred1004_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd20);
        ap_predicate_pred1026_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd16);
        ap_predicate_pred1048_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd12);
        ap_predicate_pred1070_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd8);
        ap_predicate_pred1092_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd4);
        ap_predicate_pred1114_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd0);
        ap_predicate_pred1163_state10 <= (~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd24) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd28) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd32) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd36) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd40) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd44) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd48) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd52) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd56) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd0) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd4) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd8) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd12) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd16) & ~(trunc_ln13_reg_2290_pp0_iter3_reg == 6'd20));
        ap_predicate_pred787_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd56);
        ap_predicate_pred828_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd52);
        ap_predicate_pred850_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd48);
        ap_predicate_pred872_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd44);
        ap_predicate_pred894_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd40);
        ap_predicate_pred916_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd36);
        ap_predicate_pred938_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd32);
        ap_predicate_pred960_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd28);
        ap_predicate_pred982_state10 <= (trunc_ln13_reg_2290_pp0_iter3_reg == 6'd24);
        conv3_udiv_cast_cast_reg_2275[6 : 0] <= conv3_udiv_cast_cast_fu_1096_p1[6 : 0];
        s_1_reg_2281 <= ap_sig_allocacmp_s_1;
        select_ln14_2_reg_2405 <= select_ln14_2_fu_1266_p3;
        select_ln14_3_reg_2415 <= select_ln14_3_fu_1277_p3;
        tmp_127_reg_2286 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_127_reg_2286_pp0_iter1_reg <= tmp_127_reg_2286;
        tmp_127_reg_2286_pp0_iter2_reg <= tmp_127_reg_2286_pp0_iter1_reg;
        tmp_127_reg_2286_pp0_iter3_reg <= tmp_127_reg_2286_pp0_iter2_reg;
        tmp_134_reg_2299 <= {{ap_sig_allocacmp_s_1[5:2]}};
        trunc_ln13_reg_2290 <= trunc_ln13_fu_1116_p1;
        trunc_ln13_reg_2290_pp0_iter1_reg <= trunc_ln13_reg_2290;
        trunc_ln13_reg_2290_pp0_iter2_reg <= trunc_ln13_reg_2290_pp0_iter1_reg;
        trunc_ln13_reg_2290_pp0_iter3_reg <= trunc_ln13_reg_2290_pp0_iter2_reg;
        trunc_ln13_reg_2290_pp0_iter4_reg <= trunc_ln13_reg_2290_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred1014_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd20);
        ap_predicate_pred1036_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd16);
        ap_predicate_pred1058_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd12);
        ap_predicate_pred1080_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd8);
        ap_predicate_pred1102_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd4);
        ap_predicate_pred1124_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd0);
        ap_predicate_pred1201_state11 <= (~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd24) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd28) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd32) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd36) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd40) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd44) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd48) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd52) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd56) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd0) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd4) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd8) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd12) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd16) & ~(trunc_ln13_reg_2290_pp0_iter4_reg == 6'd20));
        ap_predicate_pred815_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd56);
        ap_predicate_pred838_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd52);
        ap_predicate_pred860_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd48);
        ap_predicate_pred882_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd44);
        ap_predicate_pred904_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd40);
        ap_predicate_pred926_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd36);
        ap_predicate_pred948_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd32);
        ap_predicate_pred970_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd28);
        ap_predicate_pred992_state11 <= (trunc_ln13_reg_2290_pp0_iter4_reg == 6'd24);
        select_ln14_1_reg_2350 <= select_ln14_1_fu_1201_p3;
        select_ln14_reg_2345 <= select_ln14_fu_1194_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_2355 <= init_0_q0;
        init_0_load_reg_2340 <= init_0_q1;
        init_1_load_1_reg_2375 <= init_1_q0;
        init_1_load_reg_2370 <= init_1_q1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6105_out_ap_vld = 1'b1;
    end else begin
        add6105_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6113_out_ap_vld = 1'b1;
    end else begin
        add6113_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6121_out_ap_vld = 1'b1;
    end else begin
        add6121_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add617_out_ap_vld = 1'b1;
    end else begin
        add617_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add625_out_ap_vld = 1'b1;
    end else begin
        add625_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add633_out_ap_vld = 1'b1;
    end else begin
        add633_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add641_out_ap_vld = 1'b1;
    end else begin
        add641_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add649_out_ap_vld = 1'b1;
    end else begin
        add649_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add657_out_ap_vld = 1'b1;
    end else begin
        add657_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add665_out_ap_vld = 1'b1;
    end else begin
        add665_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add673_out_ap_vld = 1'b1;
    end else begin
        add673_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add681_out_ap_vld = 1'b1;
    end else begin
        add681_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add689_out_ap_vld = 1'b1;
    end else begin
        add689_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add697_out_ap_vld = 1'b1;
    end else begin
        add697_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add69_out_ap_vld = 1'b1;
    end else begin
        add69_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1107_out_ap_vld = 1'b1;
    end else begin
        add6_1107_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1115_out_ap_vld = 1'b1;
    end else begin
        add6_1115_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_111_out_ap_vld = 1'b1;
    end else begin
        add6_111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1123_out_ap_vld = 1'b1;
    end else begin
        add6_1123_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_119_out_ap_vld = 1'b1;
    end else begin
        add6_119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_127_out_ap_vld = 1'b1;
    end else begin
        add6_127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_135_out_ap_vld = 1'b1;
    end else begin
        add6_135_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_13_out_ap_vld = 1'b1;
    end else begin
        add6_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_143_out_ap_vld = 1'b1;
    end else begin
        add6_143_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_151_out_ap_vld = 1'b1;
    end else begin
        add6_151_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_159_out_ap_vld = 1'b1;
    end else begin
        add6_159_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_167_out_ap_vld = 1'b1;
    end else begin
        add6_167_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_175_out_ap_vld = 1'b1;
    end else begin
        add6_175_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_183_out_ap_vld = 1'b1;
    end else begin
        add6_183_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_191_out_ap_vld = 1'b1;
    end else begin
        add6_191_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_199_out_ap_vld = 1'b1;
    end else begin
        add6_199_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2101_out_ap_vld = 1'b1;
    end else begin
        add6_2101_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2109_out_ap_vld = 1'b1;
    end else begin
        add6_2109_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2117_out_ap_vld = 1'b1;
    end else begin
        add6_2117_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2125_out_ap_vld = 1'b1;
    end else begin
        add6_2125_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_213_out_ap_vld = 1'b1;
    end else begin
        add6_213_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_221_out_ap_vld = 1'b1;
    end else begin
        add6_221_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_229_out_ap_vld = 1'b1;
    end else begin
        add6_229_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_237_out_ap_vld = 1'b1;
    end else begin
        add6_237_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_245_out_ap_vld = 1'b1;
    end else begin
        add6_245_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_253_out_ap_vld = 1'b1;
    end else begin
        add6_253_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_25_out_ap_vld = 1'b1;
    end else begin
        add6_25_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_261_out_ap_vld = 1'b1;
    end else begin
        add6_261_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_269_out_ap_vld = 1'b1;
    end else begin
        add6_269_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_277_out_ap_vld = 1'b1;
    end else begin
        add6_277_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_285_out_ap_vld = 1'b1;
    end else begin
        add6_285_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_293_out_ap_vld = 1'b1;
    end else begin
        add6_293_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3103_out_ap_vld = 1'b1;
    end else begin
        add6_3103_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3111_out_ap_vld = 1'b1;
    end else begin
        add6_3111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3119_out_ap_vld = 1'b1;
    end else begin
        add6_3119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3127_out_ap_vld = 1'b1;
    end else begin
        add6_3127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_315_out_ap_vld = 1'b1;
    end else begin
        add6_315_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_323_out_ap_vld = 1'b1;
    end else begin
        add6_323_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_331_out_ap_vld = 1'b1;
    end else begin
        add6_331_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_339_out_ap_vld = 1'b1;
    end else begin
        add6_339_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_347_out_ap_vld = 1'b1;
    end else begin
        add6_347_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_355_out_ap_vld = 1'b1;
    end else begin
        add6_355_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_363_out_ap_vld = 1'b1;
    end else begin
        add6_363_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_371_out_ap_vld = 1'b1;
    end else begin
        add6_371_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_379_out_ap_vld = 1'b1;
    end else begin
        add6_379_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_37_out_ap_vld = 1'b1;
    end else begin
        add6_37_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_387_out_ap_vld = 1'b1;
    end else begin
        add6_387_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_395_out_ap_vld = 1'b1;
    end else begin
        add6_395_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2286 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2286_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_230;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1238_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1174_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1220_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1154_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1238_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1174_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1220_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1154_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1088_p0 = bitcast_ln14_3_fu_1284_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1088_p0 = bitcast_ln14_fu_1254_p1;
        end else begin
            grp_fu_1088_p0 = 'bx;
        end
    end else begin
        grp_fu_1088_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1088_p1 = bitcast_ln14_4_fu_1288_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1088_p1 = bitcast_ln14_1_fu_1258_p1;
        end else begin
            grp_fu_1088_p1 = 'bx;
        end
    end else begin
        grp_fu_1088_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1092_p0 = bitcast_ln14_6_fu_1292_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1092_p0 = bitcast_ln14_5_fu_1273_p1;
        end else begin
            grp_fu_1092_p0 = 'bx;
        end
    end else begin
        grp_fu_1092_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1092_p1 = bitcast_ln14_7_fu_1296_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1092_p1 = bitcast_ln14_2_fu_1262_p1;
        end else begin
            grp_fu_1092_p1 = 'bx;
        end
    end else begin
        grp_fu_1092_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add6105_out = add6105_fu_442;
assign add6113_out = add6113_fu_458;
assign add6121_out = add6121_fu_474;
assign add617_out = add617_fu_266;
assign add61_out = add61_fu_234;
assign add625_out = add625_fu_282;
assign add633_out = add633_fu_298;
assign add641_out = add641_fu_314;
assign add649_out = add649_fu_330;
assign add657_out = add657_fu_346;
assign add665_out = add665_fu_362;
assign add673_out = add673_fu_378;
assign add681_out = add681_fu_394;
assign add689_out = add689_fu_410;
assign add697_out = add697_fu_426;
assign add69_out = add69_fu_250;
assign add6_1107_out = add6_1107_fu_446;
assign add6_1115_out = add6_1115_fu_462;
assign add6_111_out = add6_111_fu_254;
assign add6_1123_out = add6_1123_fu_478;
assign add6_119_out = add6_119_fu_270;
assign add6_127_out = add6_127_fu_286;
assign add6_135_out = add6_135_fu_302;
assign add6_13_out = add6_13_fu_238;
assign add6_143_out = add6_143_fu_318;
assign add6_151_out = add6_151_fu_334;
assign add6_159_out = add6_159_fu_350;
assign add6_167_out = add6_167_fu_366;
assign add6_175_out = add6_175_fu_382;
assign add6_183_out = add6_183_fu_398;
assign add6_191_out = add6_191_fu_414;
assign add6_199_out = add6_199_fu_430;
assign add6_2101_out = add6_2101_fu_434;
assign add6_2109_out = add6_2109_fu_450;
assign add6_2117_out = add6_2117_fu_466;
assign add6_2125_out = add6_2125_fu_482;
assign add6_213_out = add6_213_fu_258;
assign add6_221_out = add6_221_fu_274;
assign add6_229_out = add6_229_fu_290;
assign add6_237_out = add6_237_fu_306;
assign add6_245_out = add6_245_fu_322;
assign add6_253_out = add6_253_fu_338;
assign add6_25_out = add6_25_fu_242;
assign add6_261_out = add6_261_fu_354;
assign add6_269_out = add6_269_fu_370;
assign add6_277_out = add6_277_fu_386;
assign add6_285_out = add6_285_fu_402;
assign add6_293_out = add6_293_fu_418;
assign add6_3103_out = add6_3103_fu_438;
assign add6_3111_out = add6_3111_fu_454;
assign add6_3119_out = add6_3119_fu_470;
assign add6_3127_out = add6_3127_fu_486;
assign add6_315_out = add6_315_fu_262;
assign add6_323_out = add6_323_fu_278;
assign add6_331_out = add6_331_fu_294;
assign add6_339_out = add6_339_fu_310;
assign add6_347_out = add6_347_fu_326;
assign add6_355_out = add6_355_fu_342;
assign add6_363_out = add6_363_fu_358;
assign add6_371_out = add6_371_fu_374;
assign add6_379_out = add6_379_fu_390;
assign add6_37_out = add6_37_fu_246;
assign add6_387_out = add6_387_fu_406;
assign add6_395_out = add6_395_fu_422;
assign add_ln13_fu_1244_p2 = (s_1_reg_2281 + 7'd4);
assign add_ln14_1_fu_1215_p2 = (or_ln14_3_fu_1208_p3 + conv3_udiv_cast_cast_reg_2275);
assign add_ln14_2_fu_1233_p2 = (or_ln14_4_fu_1226_p3 + conv3_udiv_cast_cast_reg_2275);
assign add_ln14_fu_1168_p2 = (or_ln14_1_fu_1160_p3 + conv3_udiv_cast_cast_fu_1096_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_1_fu_1258_p1 = select_ln14_reg_2345;
assign bitcast_ln14_2_fu_1262_p1 = select_ln14_1_reg_2350;
assign bitcast_ln14_3_fu_1284_p1 = init_0_load_1_reg_2355;
assign bitcast_ln14_4_fu_1288_p1 = select_ln14_2_reg_2405;
assign bitcast_ln14_5_fu_1273_p1 = init_1_load_reg_2370;
assign bitcast_ln14_6_fu_1292_p1 = init_1_load_1_reg_2375;
assign bitcast_ln14_7_fu_1296_p1 = select_ln14_3_reg_2415;
assign bitcast_ln14_fu_1254_p1 = init_0_load_reg_2340;
assign conv3_udiv_cast_cast_fu_1096_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_3911_p_ce = 1'b1;
assign grp_fu_3911_p_din0 = grp_fu_1088_p0;
assign grp_fu_3911_p_din1 = grp_fu_1088_p1;
assign grp_fu_3911_p_opcode = 2'd0;
assign init_0_address0 = zext_ln14_4_fu_1188_p1;
assign init_0_address1 = zext_ln9_fu_1130_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = zext_ln14_4_fu_1188_p1;
assign init_1_address1 = zext_ln9_fu_1130_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign lshr_ln9_fu_1120_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln14_1_fu_1160_p3 = {{lshr_ln9_fu_1120_p4}, {6'd32}};
assign or_ln14_2_fu_1180_p3 = {{tmp_134_fu_1136_p4}, {1'd1}};
assign or_ln14_3_fu_1208_p3 = {{tmp_134_reg_2299}, {7'd64}};
assign or_ln14_4_fu_1226_p3 = {{tmp_134_reg_2299}, {7'd96}};
assign or_ln_fu_1146_p3 = {{tmp_134_fu_1136_p4}, {conv3_udiv}};
assign select_ln14_1_fu_1201_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign select_ln14_2_fu_1266_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_3_fu_1277_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign select_ln14_fu_1194_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign tmp_134_fu_1136_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign trunc_ln13_fu_1116_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln14_1_fu_1174_p1 = add_ln14_fu_1168_p2;
assign zext_ln14_2_fu_1220_p1 = add_ln14_1_fu_1215_p2;
assign zext_ln14_3_fu_1238_p1 = add_ln14_2_fu_1233_p2;
assign zext_ln14_4_fu_1188_p1 = or_ln14_2_fu_1180_p3;
assign zext_ln14_fu_1154_p1 = or_ln_fu_1146_p3;
assign zext_ln9_fu_1130_p1 = lshr_ln9_fu_1120_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_2275[10:7] <= 4'b0000;
end
endmodule 