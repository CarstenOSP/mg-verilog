module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_0_address0,init_0_ce0,init_0_q0,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,empty,init_1_address0,init_1_ce0,init_1_q0,conv3_udiv_cast,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,add6_3127_out,add6_3127_out_ap_vld,add6_2125_out,add6_2125_out_ap_vld,add6_1123_out,add6_1123_out_ap_vld,add6121_out,add6121_out_ap_vld,add6_3119_out,add6_3119_out_ap_vld,add6_2117_out,add6_2117_out_ap_vld,add6_1115_out,add6_1115_out_ap_vld,add6113_out,add6113_out_ap_vld,add6_3111_out,add6_3111_out_ap_vld,add6_2109_out,add6_2109_out_ap_vld,add6_1107_out,add6_1107_out_ap_vld,add6105_out,add6105_out_ap_vld,add6_3103_out,add6_3103_out_ap_vld,add6_2101_out,add6_2101_out_ap_vld,add6_199_out,add6_199_out_ap_vld,add697_out,add697_out_ap_vld,add6_395_out,add6_395_out_ap_vld,add6_293_out,add6_293_out_ap_vld,add6_191_out,add6_191_out_ap_vld,add689_out,add689_out_ap_vld,add6_387_out,add6_387_out_ap_vld,add6_285_out,add6_285_out_ap_vld,add6_183_out,add6_183_out_ap_vld,add681_out,add681_out_ap_vld,add6_379_out,add6_379_out_ap_vld,add6_277_out,add6_277_out_ap_vld,add6_175_out,add6_175_out_ap_vld,add673_out,add673_out_ap_vld,add6_371_out,add6_371_out_ap_vld,add6_269_out,add6_269_out_ap_vld,add6_167_out,add6_167_out_ap_vld,add665_out,add665_out_ap_vld,add6_363_out,add6_363_out_ap_vld,add6_261_out,add6_261_out_ap_vld,add6_159_out,add6_159_out_ap_vld,add657_out,add657_out_ap_vld,add6_355_out,add6_355_out_ap_vld,add6_253_out,add6_253_out_ap_vld,add6_151_out,add6_151_out_ap_vld,add649_out,add649_out_ap_vld,add6_347_out,add6_347_out_ap_vld,add6_245_out,add6_245_out_ap_vld,add6_143_out,add6_143_out_ap_vld,add641_out,add641_out_ap_vld,add6_339_out,add6_339_out_ap_vld,add6_237_out,add6_237_out_ap_vld,add6_135_out,add6_135_out_ap_vld,add633_out,add633_out_ap_vld,add6_331_out,add6_331_out_ap_vld,add6_229_out,add6_229_out_ap_vld,add6_127_out,add6_127_out_ap_vld,add625_out,add625_out_ap_vld,add6_323_out,add6_323_out_ap_vld,add6_221_out,add6_221_out_ap_vld,add6_119_out,add6_119_out_ap_vld,add617_out,add617_out_ap_vld,add6_315_out,add6_315_out_ap_vld,add6_213_out,add6_213_out_ap_vld,add6_111_out,add6_111_out_ap_vld,add69_out,add69_out_ap_vld,add6_37_out,add6_37_out_ap_vld,add6_25_out,add6_25_out_ap_vld,add6_13_out,add6_13_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_4101_p_din0,grp_fu_4101_p_din1,grp_fu_4101_p_opcode,grp_fu_4101_p_dout0,grp_fu_4101_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
input  [5:0] conv3_udiv;
output  [9:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [9:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [9:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [9:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [9:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [9:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [9:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [9:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
input  [1:0] empty;
output  [3:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
input  [5:0] conv3_udiv_cast;
output  [3:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [3:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
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
output  [63:0] grp_fu_4101_p_din0;
output  [63:0] grp_fu_4101_p_din1;
output  [1:0] grp_fu_4101_p_opcode;
input  [63:0] grp_fu_4101_p_dout0;
output   grp_fu_4101_p_ce;
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
reg   [0:0] tmp_160_reg_2492;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] conv3_udiv_cast_cast_fu_1194_p1;
reg   [9:0] conv3_udiv_cast_cast_reg_2481;
reg   [6:0] s_1_reg_2487;
reg   [0:0] tmp_160_reg_2492_pp0_iter1_reg;
reg   [0:0] tmp_160_reg_2492_pp0_iter2_reg;
reg   [0:0] tmp_160_reg_2492_pp0_iter3_reg;
wire   [5:0] trunc_ln13_fu_1214_p1;
reg   [5:0] trunc_ln13_reg_2496;
reg   [5:0] trunc_ln13_reg_2496_pp0_iter1_reg;
reg   [5:0] trunc_ln13_reg_2496_pp0_iter2_reg;
reg   [5:0] trunc_ln13_reg_2496_pp0_iter3_reg;
reg   [5:0] trunc_ln13_reg_2496_pp0_iter4_reg;
wire   [3:0] lshr_ln9_fu_1218_p4;
reg   [3:0] lshr_ln9_reg_2500;
reg   [63:0] init_0_load_reg_2566;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_fu_1300_p11;
reg   [63:0] tmp_reg_2571;
reg   [63:0] init_1_load_reg_2576;
wire   [63:0] tmp_1_fu_1339_p11;
reg   [63:0] tmp_1_reg_2581;
reg   [63:0] init_2_load_reg_2586;
reg   [63:0] init_3_load_reg_2611;
wire   [63:0] bitcast_ln14_fu_1412_p1;
wire   [63:0] bitcast_ln14_5_fu_1416_p1;
wire   [63:0] tmp_2_fu_1436_p11;
reg   [63:0] tmp_2_reg_2646;
wire   [63:0] tmp_3_fu_1475_p11;
reg   [63:0] tmp_3_reg_2651;
wire   [63:0] bitcast_ln14_10_fu_1498_p1;
wire   [63:0] bitcast_ln14_15_fu_1502_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln9_fu_1228_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1244_p1;
wire   [63:0] zext_ln14_1_fu_1276_p1;
wire   [63:0] zext_ln14_2_fu_1374_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1394_p1;
reg   [6:0] s_fu_244;
wire   [6:0] add_ln13_fu_1402_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_248;
reg    ap_predicate_pred834_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage0;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [63:0] add6_13_fu_252;
wire   [63:0] grp_fu_1190_p2;
reg   [63:0] add6_25_fu_256;
reg    ap_predicate_pred862_state11;
reg   [63:0] add6_37_fu_260;
reg   [63:0] add69_fu_264;
reg    ap_predicate_pred875_state10;
reg   [63:0] add6_111_fu_268;
reg   [63:0] add6_213_fu_272;
reg    ap_predicate_pred885_state11;
reg   [63:0] add6_315_fu_276;
reg   [63:0] add617_fu_280;
reg    ap_predicate_pred897_state10;
reg   [63:0] add6_119_fu_284;
reg   [63:0] add6_221_fu_288;
reg    ap_predicate_pred907_state11;
reg   [63:0] add6_323_fu_292;
reg   [63:0] add625_fu_296;
reg    ap_predicate_pred919_state10;
reg   [63:0] add6_127_fu_300;
reg   [63:0] add6_229_fu_304;
reg    ap_predicate_pred929_state11;
reg   [63:0] add6_331_fu_308;
reg   [63:0] add633_fu_312;
reg    ap_predicate_pred941_state10;
reg   [63:0] add6_135_fu_316;
reg   [63:0] add6_237_fu_320;
reg    ap_predicate_pred951_state11;
reg   [63:0] add6_339_fu_324;
reg   [63:0] add641_fu_328;
reg    ap_predicate_pred963_state10;
reg   [63:0] add6_143_fu_332;
reg   [63:0] add6_245_fu_336;
reg    ap_predicate_pred973_state11;
reg   [63:0] add6_347_fu_340;
reg   [63:0] add649_fu_344;
reg    ap_predicate_pred985_state10;
reg   [63:0] add6_151_fu_348;
reg   [63:0] add6_253_fu_352;
reg    ap_predicate_pred995_state11;
reg   [63:0] add6_355_fu_356;
reg   [63:0] add657_fu_360;
reg    ap_predicate_pred1007_state10;
reg   [63:0] add6_159_fu_364;
reg   [63:0] add6_261_fu_368;
reg    ap_predicate_pred1017_state11;
reg   [63:0] add6_363_fu_372;
reg   [63:0] add665_fu_376;
reg    ap_predicate_pred1029_state10;
reg   [63:0] add6_167_fu_380;
reg   [63:0] add6_269_fu_384;
reg    ap_predicate_pred1039_state11;
reg   [63:0] add6_371_fu_388;
reg   [63:0] add673_fu_392;
reg    ap_predicate_pred1051_state10;
reg   [63:0] add6_175_fu_396;
reg   [63:0] add6_277_fu_400;
reg    ap_predicate_pred1061_state11;
reg   [63:0] add6_379_fu_404;
reg   [63:0] add681_fu_408;
reg    ap_predicate_pred1073_state10;
reg   [63:0] add6_183_fu_412;
reg   [63:0] add6_285_fu_416;
reg    ap_predicate_pred1083_state11;
reg   [63:0] add6_387_fu_420;
reg   [63:0] add689_fu_424;
reg    ap_predicate_pred1095_state10;
reg   [63:0] add6_191_fu_428;
reg   [63:0] add6_293_fu_432;
reg    ap_predicate_pred1105_state11;
reg   [63:0] add6_395_fu_436;
reg   [63:0] add697_fu_440;
reg    ap_predicate_pred1117_state10;
reg   [63:0] add6_199_fu_444;
reg   [63:0] add6_2101_fu_448;
reg    ap_predicate_pred1127_state11;
reg   [63:0] add6_3103_fu_452;
reg   [63:0] add6105_fu_456;
reg    ap_predicate_pred1139_state10;
reg   [63:0] add6_1107_fu_460;
reg   [63:0] add6_2109_fu_464;
reg    ap_predicate_pred1149_state11;
reg   [63:0] add6_3111_fu_468;
reg   [63:0] add6113_fu_472;
reg    ap_predicate_pred1161_state10;
reg   [63:0] add6_1115_fu_476;
reg   [63:0] add6_2117_fu_480;
reg    ap_predicate_pred1171_state11;
reg   [63:0] add6_3119_fu_484;
reg   [63:0] add6121_fu_488;
reg    ap_predicate_pred1210_state10;
reg   [63:0] add6_1123_fu_492;
reg   [63:0] add6_2125_fu_496;
reg    ap_predicate_pred1248_state11;
reg   [63:0] add6_3127_fu_500;
wire    ap_block_pp0_stage0_01001;
reg    init_0_ce0_local;
reg    emission_0_ce1_local;
reg   [9:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [9:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [9:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [9:0] emission_1_address0_local;
reg    emission_2_ce1_local;
reg   [9:0] emission_2_address1_local;
reg    emission_2_ce0_local;
reg   [9:0] emission_2_address0_local;
reg    emission_3_ce1_local;
reg   [9:0] emission_3_address1_local;
reg    emission_3_ce0_local;
reg   [9:0] emission_3_address0_local;
reg    init_1_ce0_local;
reg    init_2_ce0_local;
reg    init_3_ce0_local;
reg   [63:0] grp_fu_1186_p0;
reg   [63:0] grp_fu_1186_p1;
reg   [63:0] grp_fu_1190_p0;
reg   [63:0] grp_fu_1190_p1;
wire   [9:0] or_ln_fu_1236_p3;
wire   [4:0] tmp_s_fu_1252_p4;
wire   [9:0] or_ln14_1_fu_1262_p3;
wire   [9:0] add_ln14_fu_1270_p2;
wire   [63:0] tmp_fu_1300_p2;
wire   [63:0] tmp_fu_1300_p4;
wire   [63:0] tmp_fu_1300_p6;
wire   [63:0] tmp_fu_1300_p8;
wire   [63:0] tmp_fu_1300_p9;
wire   [63:0] tmp_1_fu_1339_p2;
wire   [63:0] tmp_1_fu_1339_p4;
wire   [63:0] tmp_1_fu_1339_p6;
wire   [63:0] tmp_1_fu_1339_p8;
wire   [63:0] tmp_1_fu_1339_p9;
wire   [9:0] or_ln14_2_fu_1362_p3;
wire   [9:0] add_ln14_1_fu_1369_p2;
wire   [9:0] or_ln14_3_fu_1382_p3;
wire   [9:0] add_ln14_2_fu_1389_p2;
wire   [63:0] tmp_2_fu_1436_p2;
wire   [63:0] tmp_2_fu_1436_p4;
wire   [63:0] tmp_2_fu_1436_p6;
wire   [63:0] tmp_2_fu_1436_p8;
wire   [63:0] tmp_2_fu_1436_p9;
wire   [63:0] tmp_3_fu_1475_p2;
wire   [63:0] tmp_3_fu_1475_p4;
wire   [63:0] tmp_3_fu_1475_p6;
wire   [63:0] tmp_3_fu_1475_p8;
wire   [63:0] tmp_3_fu_1475_p9;
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
wire   [1:0] tmp_fu_1300_p1;
wire   [1:0] tmp_fu_1300_p3;
wire  signed [1:0] tmp_fu_1300_p5;
wire  signed [1:0] tmp_fu_1300_p7;
wire   [1:0] tmp_1_fu_1339_p1;
wire   [1:0] tmp_1_fu_1339_p3;
wire  signed [1:0] tmp_1_fu_1339_p5;
wire  signed [1:0] tmp_1_fu_1339_p7;
wire   [1:0] tmp_2_fu_1436_p1;
wire   [1:0] tmp_2_fu_1436_p3;
wire  signed [1:0] tmp_2_fu_1436_p5;
wire  signed [1:0] tmp_2_fu_1436_p7;
wire   [1:0] tmp_3_fu_1475_p1;
wire   [1:0] tmp_3_fu_1475_p3;
wire  signed [1:0] tmp_3_fu_1475_p5;
wire  signed [1:0] tmp_3_fu_1475_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_244 = 7'd0;
#0 add61_fu_248 = 64'd0;
#0 add6_13_fu_252 = 64'd0;
#0 add6_25_fu_256 = 64'd0;
#0 add6_37_fu_260 = 64'd0;
#0 add69_fu_264 = 64'd0;
#0 add6_111_fu_268 = 64'd0;
#0 add6_213_fu_272 = 64'd0;
#0 add6_315_fu_276 = 64'd0;
#0 add617_fu_280 = 64'd0;
#0 add6_119_fu_284 = 64'd0;
#0 add6_221_fu_288 = 64'd0;
#0 add6_323_fu_292 = 64'd0;
#0 add625_fu_296 = 64'd0;
#0 add6_127_fu_300 = 64'd0;
#0 add6_229_fu_304 = 64'd0;
#0 add6_331_fu_308 = 64'd0;
#0 add633_fu_312 = 64'd0;
#0 add6_135_fu_316 = 64'd0;
#0 add6_237_fu_320 = 64'd0;
#0 add6_339_fu_324 = 64'd0;
#0 add641_fu_328 = 64'd0;
#0 add6_143_fu_332 = 64'd0;
#0 add6_245_fu_336 = 64'd0;
#0 add6_347_fu_340 = 64'd0;
#0 add649_fu_344 = 64'd0;
#0 add6_151_fu_348 = 64'd0;
#0 add6_253_fu_352 = 64'd0;
#0 add6_355_fu_356 = 64'd0;
#0 add657_fu_360 = 64'd0;
#0 add6_159_fu_364 = 64'd0;
#0 add6_261_fu_368 = 64'd0;
#0 add6_363_fu_372 = 64'd0;
#0 add665_fu_376 = 64'd0;
#0 add6_167_fu_380 = 64'd0;
#0 add6_269_fu_384 = 64'd0;
#0 add6_371_fu_388 = 64'd0;
#0 add673_fu_392 = 64'd0;
#0 add6_175_fu_396 = 64'd0;
#0 add6_277_fu_400 = 64'd0;
#0 add6_379_fu_404 = 64'd0;
#0 add681_fu_408 = 64'd0;
#0 add6_183_fu_412 = 64'd0;
#0 add6_285_fu_416 = 64'd0;
#0 add6_387_fu_420 = 64'd0;
#0 add689_fu_424 = 64'd0;
#0 add6_191_fu_428 = 64'd0;
#0 add6_293_fu_432 = 64'd0;
#0 add6_395_fu_436 = 64'd0;
#0 add697_fu_440 = 64'd0;
#0 add6_199_fu_444 = 64'd0;
#0 add6_2101_fu_448 = 64'd0;
#0 add6_3103_fu_452 = 64'd0;
#0 add6105_fu_456 = 64'd0;
#0 add6_1107_fu_460 = 64'd0;
#0 add6_2109_fu_464 = 64'd0;
#0 add6_3111_fu_468 = 64'd0;
#0 add6113_fu_472 = 64'd0;
#0 add6_1115_fu_476 = 64'd0;
#0 add6_2117_fu_480 = 64'd0;
#0 add6_3119_fu_484 = 64'd0;
#0 add6121_fu_488 = 64'd0;
#0 add6_1123_fu_492 = 64'd0;
#0 add6_2125_fu_496 = 64'd0;
#0 add6_3127_fu_500 = 64'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1190_p0),.din1(grp_fu_1190_p1),.ce(1'b1),.dout(grp_fu_1190_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_fu_1300_p2),.din1(tmp_fu_1300_p4),.din2(tmp_fu_1300_p6),.din3(tmp_fu_1300_p8),.def(tmp_fu_1300_p9),.sel(empty),.dout(tmp_fu_1300_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_1_fu_1339_p2),.din1(tmp_1_fu_1339_p4),.din2(tmp_1_fu_1339_p6),.din3(tmp_1_fu_1339_p8),.def(tmp_1_fu_1339_p9),.sel(empty),.dout(tmp_1_fu_1339_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U5(.din0(tmp_2_fu_1436_p2),.din1(tmp_2_fu_1436_p4),.din2(tmp_2_fu_1436_p6),.din3(tmp_2_fu_1436_p8),.def(tmp_2_fu_1436_p9),.sel(empty),.dout(tmp_2_fu_1436_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U6(.din0(tmp_3_fu_1475_p2),.din1(tmp_3_fu_1475_p4),.din2(tmp_3_fu_1475_p6),.din3(tmp_3_fu_1475_p8),.def(tmp_3_fu_1475_p9),.sel(empty),.dout(tmp_3_fu_1475_p11));
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
        s_fu_244 <= 7'd0;
    end else if (((tmp_160_reg_2492 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        s_fu_244 <= add_ln13_fu_1402_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1139_state10 == 1'b1))) begin
        add6105_fu_456 <= grp_fu_4101_p_dout0;
        add6_1107_fu_460 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1161_state10 == 1'b1))) begin
        add6113_fu_472 <= grp_fu_4101_p_dout0;
        add6_1115_fu_476 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1210_state10 == 1'b1))) begin
        add6121_fu_488 <= grp_fu_4101_p_dout0;
        add6_1123_fu_492 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred897_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add617_fu_280 <= grp_fu_4101_p_dout0;
        add6_119_fu_284 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred834_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add61_fu_248 <= grp_fu_4101_p_dout0;
        add6_13_fu_252 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred919_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add625_fu_296 <= grp_fu_4101_p_dout0;
        add6_127_fu_300 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred941_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add633_fu_312 <= grp_fu_4101_p_dout0;
        add6_135_fu_316 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred963_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add641_fu_328 <= grp_fu_4101_p_dout0;
        add6_143_fu_332 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred985_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add649_fu_344 <= grp_fu_4101_p_dout0;
        add6_151_fu_348 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1007_state10 == 1'b1))) begin
        add657_fu_360 <= grp_fu_4101_p_dout0;
        add6_159_fu_364 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1029_state10 == 1'b1))) begin
        add665_fu_376 <= grp_fu_4101_p_dout0;
        add6_167_fu_380 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1051_state10 == 1'b1))) begin
        add673_fu_392 <= grp_fu_4101_p_dout0;
        add6_175_fu_396 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1073_state10 == 1'b1))) begin
        add681_fu_408 <= grp_fu_4101_p_dout0;
        add6_183_fu_412 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1095_state10 == 1'b1))) begin
        add689_fu_424 <= grp_fu_4101_p_dout0;
        add6_191_fu_428 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1117_state10 == 1'b1))) begin
        add697_fu_440 <= grp_fu_4101_p_dout0;
        add6_199_fu_444 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred875_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add69_fu_264 <= grp_fu_4101_p_dout0;
        add6_111_fu_268 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1127_state11 == 1'b1))) begin
        add6_2101_fu_448 <= grp_fu_4101_p_dout0;
        add6_3103_fu_452 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1149_state11 == 1'b1))) begin
        add6_2109_fu_464 <= grp_fu_4101_p_dout0;
        add6_3111_fu_468 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1171_state11 == 1'b1))) begin
        add6_2117_fu_480 <= grp_fu_4101_p_dout0;
        add6_3119_fu_484 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1248_state11 == 1'b1))) begin
        add6_2125_fu_496 <= grp_fu_4101_p_dout0;
        add6_3127_fu_500 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred885_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_213_fu_272 <= grp_fu_4101_p_dout0;
        add6_315_fu_276 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred907_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_221_fu_288 <= grp_fu_4101_p_dout0;
        add6_323_fu_292 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred929_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_229_fu_304 <= grp_fu_4101_p_dout0;
        add6_331_fu_308 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred951_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_237_fu_320 <= grp_fu_4101_p_dout0;
        add6_339_fu_324 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred973_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_245_fu_336 <= grp_fu_4101_p_dout0;
        add6_347_fu_340 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred995_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_253_fu_352 <= grp_fu_4101_p_dout0;
        add6_355_fu_356 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred862_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_25_fu_256 <= grp_fu_4101_p_dout0;
        add6_37_fu_260 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1017_state11 == 1'b1))) begin
        add6_261_fu_368 <= grp_fu_4101_p_dout0;
        add6_363_fu_372 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1039_state11 == 1'b1))) begin
        add6_269_fu_384 <= grp_fu_4101_p_dout0;
        add6_371_fu_388 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1061_state11 == 1'b1))) begin
        add6_277_fu_400 <= grp_fu_4101_p_dout0;
        add6_379_fu_404 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1083_state11 == 1'b1))) begin
        add6_285_fu_416 <= grp_fu_4101_p_dout0;
        add6_387_fu_420 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1105_state11 == 1'b1))) begin
        add6_293_fu_432 <= grp_fu_4101_p_dout0;
        add6_395_fu_436 <= grp_fu_1190_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred1007_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd28);
        ap_predicate_pred1029_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd24);
        ap_predicate_pred1051_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd20);
        ap_predicate_pred1073_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd16);
        ap_predicate_pred1095_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd12);
        ap_predicate_pred1117_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd8);
        ap_predicate_pred1139_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd4);
        ap_predicate_pred1161_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd0);
        ap_predicate_pred1210_state10 <= (~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd32) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd36) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd40) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd44) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd48) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd52) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd56) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd0) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd4) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd8) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd12) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd16) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd20) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd24) & ~(trunc_ln13_reg_2496_pp0_iter3_reg == 6'd28));
        ap_predicate_pred834_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd56);
        ap_predicate_pred875_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd52);
        ap_predicate_pred897_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd48);
        ap_predicate_pred919_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd44);
        ap_predicate_pred941_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd40);
        ap_predicate_pred963_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd36);
        ap_predicate_pred985_state10 <= (trunc_ln13_reg_2496_pp0_iter3_reg == 6'd32);
        conv3_udiv_cast_cast_reg_2481[5 : 0] <= conv3_udiv_cast_cast_fu_1194_p1[5 : 0];
        lshr_ln9_reg_2500 <= {{ap_sig_allocacmp_s_1[5:2]}};
        s_1_reg_2487 <= ap_sig_allocacmp_s_1;
        tmp_160_reg_2492 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_160_reg_2492_pp0_iter1_reg <= tmp_160_reg_2492;
        tmp_160_reg_2492_pp0_iter2_reg <= tmp_160_reg_2492_pp0_iter1_reg;
        tmp_160_reg_2492_pp0_iter3_reg <= tmp_160_reg_2492_pp0_iter2_reg;
        tmp_2_reg_2646 <= tmp_2_fu_1436_p11;
        tmp_3_reg_2651 <= tmp_3_fu_1475_p11;
        trunc_ln13_reg_2496 <= trunc_ln13_fu_1214_p1;
        trunc_ln13_reg_2496_pp0_iter1_reg <= trunc_ln13_reg_2496;
        trunc_ln13_reg_2496_pp0_iter2_reg <= trunc_ln13_reg_2496_pp0_iter1_reg;
        trunc_ln13_reg_2496_pp0_iter3_reg <= trunc_ln13_reg_2496_pp0_iter2_reg;
        trunc_ln13_reg_2496_pp0_iter4_reg <= trunc_ln13_reg_2496_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred1017_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd28);
        ap_predicate_pred1039_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd24);
        ap_predicate_pred1061_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd20);
        ap_predicate_pred1083_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd16);
        ap_predicate_pred1105_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd12);
        ap_predicate_pred1127_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd8);
        ap_predicate_pred1149_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd4);
        ap_predicate_pred1171_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd0);
        ap_predicate_pred1248_state11 <= (~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd32) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd36) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd40) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd44) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd48) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd52) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd56) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd0) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd4) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd8) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd12) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd16) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd20) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd24) & ~(trunc_ln13_reg_2496_pp0_iter4_reg == 6'd28));
        ap_predicate_pred862_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd56);
        ap_predicate_pred885_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd52);
        ap_predicate_pred907_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd48);
        ap_predicate_pred929_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd44);
        ap_predicate_pred951_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd40);
        ap_predicate_pred973_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd36);
        ap_predicate_pred995_state11 <= (trunc_ln13_reg_2496_pp0_iter4_reg == 6'd32);
        init_0_load_reg_2566 <= init_0_q0;
        init_1_load_reg_2576 <= init_1_q0;
        init_2_load_reg_2586 <= init_2_q0;
        init_3_load_reg_2611 <= init_3_q0;
        tmp_1_reg_2581 <= tmp_1_fu_1339_p11;
        tmp_reg_2571 <= tmp_fu_1300_p11;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6105_out_ap_vld = 1'b1;
    end else begin
        add6105_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6113_out_ap_vld = 1'b1;
    end else begin
        add6113_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6121_out_ap_vld = 1'b1;
    end else begin
        add6121_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add617_out_ap_vld = 1'b1;
    end else begin
        add617_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add625_out_ap_vld = 1'b1;
    end else begin
        add625_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add633_out_ap_vld = 1'b1;
    end else begin
        add633_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add641_out_ap_vld = 1'b1;
    end else begin
        add641_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add649_out_ap_vld = 1'b1;
    end else begin
        add649_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add657_out_ap_vld = 1'b1;
    end else begin
        add657_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add665_out_ap_vld = 1'b1;
    end else begin
        add665_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add673_out_ap_vld = 1'b1;
    end else begin
        add673_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add681_out_ap_vld = 1'b1;
    end else begin
        add681_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add689_out_ap_vld = 1'b1;
    end else begin
        add689_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add697_out_ap_vld = 1'b1;
    end else begin
        add697_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add69_out_ap_vld = 1'b1;
    end else begin
        add69_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1107_out_ap_vld = 1'b1;
    end else begin
        add6_1107_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1115_out_ap_vld = 1'b1;
    end else begin
        add6_1115_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_111_out_ap_vld = 1'b1;
    end else begin
        add6_111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1123_out_ap_vld = 1'b1;
    end else begin
        add6_1123_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_119_out_ap_vld = 1'b1;
    end else begin
        add6_119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_127_out_ap_vld = 1'b1;
    end else begin
        add6_127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_135_out_ap_vld = 1'b1;
    end else begin
        add6_135_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_13_out_ap_vld = 1'b1;
    end else begin
        add6_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_143_out_ap_vld = 1'b1;
    end else begin
        add6_143_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_151_out_ap_vld = 1'b1;
    end else begin
        add6_151_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_159_out_ap_vld = 1'b1;
    end else begin
        add6_159_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_167_out_ap_vld = 1'b1;
    end else begin
        add6_167_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_175_out_ap_vld = 1'b1;
    end else begin
        add6_175_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_183_out_ap_vld = 1'b1;
    end else begin
        add6_183_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_191_out_ap_vld = 1'b1;
    end else begin
        add6_191_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_199_out_ap_vld = 1'b1;
    end else begin
        add6_199_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2101_out_ap_vld = 1'b1;
    end else begin
        add6_2101_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2109_out_ap_vld = 1'b1;
    end else begin
        add6_2109_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2117_out_ap_vld = 1'b1;
    end else begin
        add6_2117_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2125_out_ap_vld = 1'b1;
    end else begin
        add6_2125_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_213_out_ap_vld = 1'b1;
    end else begin
        add6_213_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_221_out_ap_vld = 1'b1;
    end else begin
        add6_221_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_229_out_ap_vld = 1'b1;
    end else begin
        add6_229_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_237_out_ap_vld = 1'b1;
    end else begin
        add6_237_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_245_out_ap_vld = 1'b1;
    end else begin
        add6_245_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_253_out_ap_vld = 1'b1;
    end else begin
        add6_253_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_25_out_ap_vld = 1'b1;
    end else begin
        add6_25_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_261_out_ap_vld = 1'b1;
    end else begin
        add6_261_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_269_out_ap_vld = 1'b1;
    end else begin
        add6_269_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_277_out_ap_vld = 1'b1;
    end else begin
        add6_277_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_285_out_ap_vld = 1'b1;
    end else begin
        add6_285_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_293_out_ap_vld = 1'b1;
    end else begin
        add6_293_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3103_out_ap_vld = 1'b1;
    end else begin
        add6_3103_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3111_out_ap_vld = 1'b1;
    end else begin
        add6_3111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3119_out_ap_vld = 1'b1;
    end else begin
        add6_3119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3127_out_ap_vld = 1'b1;
    end else begin
        add6_3127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_315_out_ap_vld = 1'b1;
    end else begin
        add6_315_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_323_out_ap_vld = 1'b1;
    end else begin
        add6_323_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_331_out_ap_vld = 1'b1;
    end else begin
        add6_331_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_339_out_ap_vld = 1'b1;
    end else begin
        add6_339_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_347_out_ap_vld = 1'b1;
    end else begin
        add6_347_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_355_out_ap_vld = 1'b1;
    end else begin
        add6_355_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_363_out_ap_vld = 1'b1;
    end else begin
        add6_363_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_371_out_ap_vld = 1'b1;
    end else begin
        add6_371_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_379_out_ap_vld = 1'b1;
    end else begin
        add6_379_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_37_out_ap_vld = 1'b1;
    end else begin
        add6_37_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_387_out_ap_vld = 1'b1;
    end else begin
        add6_387_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_395_out_ap_vld = 1'b1;
    end else begin
        add6_395_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_160_reg_2492 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_160_reg_2492_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_244;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1276_p1;
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
            emission_0_address1_local = zext_ln14_2_fu_1374_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1244_p1;
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
            emission_1_address0_local = zext_ln14_3_fu_1394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1276_p1;
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
            emission_1_address1_local = zext_ln14_2_fu_1374_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1244_p1;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1276_p1;
        end else begin
            emission_2_address0_local = 'bx;
        end
    end else begin
        emission_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1374_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1244_p1;
        end else begin
            emission_2_address1_local = 'bx;
        end
    end else begin
        emission_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_2_ce1_local = 1'b1;
    end else begin
        emission_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1394_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1276_p1;
        end else begin
            emission_3_address0_local = 'bx;
        end
    end else begin
        emission_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1374_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1244_p1;
        end else begin
            emission_3_address1_local = 'bx;
        end
    end else begin
        emission_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_3_ce1_local = 1'b1;
    end else begin
        emission_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1186_p0 = bitcast_ln14_10_fu_1498_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1186_p0 = bitcast_ln14_fu_1412_p1;
        end else begin
            grp_fu_1186_p0 = 'bx;
        end
    end else begin
        grp_fu_1186_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1186_p1 = tmp_2_reg_2646;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1186_p1 = tmp_reg_2571;
        end else begin
            grp_fu_1186_p1 = 'bx;
        end
    end else begin
        grp_fu_1186_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1190_p0 = bitcast_ln14_15_fu_1502_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1190_p0 = bitcast_ln14_5_fu_1416_p1;
        end else begin
            grp_fu_1190_p0 = 'bx;
        end
    end else begin
        grp_fu_1190_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1190_p1 = tmp_3_reg_2651;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1190_p1 = tmp_1_reg_2581;
        end else begin
            grp_fu_1190_p1 = 'bx;
        end
    end else begin
        grp_fu_1190_p1 = 'bx;
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
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_2_ce0_local = 1'b1;
    end else begin
        init_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_3_ce0_local = 1'b1;
    end else begin
        init_3_ce0_local = 1'b0;
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
assign add6105_out = add6105_fu_456;
assign add6113_out = add6113_fu_472;
assign add6121_out = add6121_fu_488;
assign add617_out = add617_fu_280;
assign add61_out = add61_fu_248;
assign add625_out = add625_fu_296;
assign add633_out = add633_fu_312;
assign add641_out = add641_fu_328;
assign add649_out = add649_fu_344;
assign add657_out = add657_fu_360;
assign add665_out = add665_fu_376;
assign add673_out = add673_fu_392;
assign add681_out = add681_fu_408;
assign add689_out = add689_fu_424;
assign add697_out = add697_fu_440;
assign add69_out = add69_fu_264;
assign add6_1107_out = add6_1107_fu_460;
assign add6_1115_out = add6_1115_fu_476;
assign add6_111_out = add6_111_fu_268;
assign add6_1123_out = add6_1123_fu_492;
assign add6_119_out = add6_119_fu_284;
assign add6_127_out = add6_127_fu_300;
assign add6_135_out = add6_135_fu_316;
assign add6_13_out = add6_13_fu_252;
assign add6_143_out = add6_143_fu_332;
assign add6_151_out = add6_151_fu_348;
assign add6_159_out = add6_159_fu_364;
assign add6_167_out = add6_167_fu_380;
assign add6_175_out = add6_175_fu_396;
assign add6_183_out = add6_183_fu_412;
assign add6_191_out = add6_191_fu_428;
assign add6_199_out = add6_199_fu_444;
assign add6_2101_out = add6_2101_fu_448;
assign add6_2109_out = add6_2109_fu_464;
assign add6_2117_out = add6_2117_fu_480;
assign add6_2125_out = add6_2125_fu_496;
assign add6_213_out = add6_213_fu_272;
assign add6_221_out = add6_221_fu_288;
assign add6_229_out = add6_229_fu_304;
assign add6_237_out = add6_237_fu_320;
assign add6_245_out = add6_245_fu_336;
assign add6_253_out = add6_253_fu_352;
assign add6_25_out = add6_25_fu_256;
assign add6_261_out = add6_261_fu_368;
assign add6_269_out = add6_269_fu_384;
assign add6_277_out = add6_277_fu_400;
assign add6_285_out = add6_285_fu_416;
assign add6_293_out = add6_293_fu_432;
assign add6_3103_out = add6_3103_fu_452;
assign add6_3111_out = add6_3111_fu_468;
assign add6_3119_out = add6_3119_fu_484;
assign add6_3127_out = add6_3127_fu_500;
assign add6_315_out = add6_315_fu_276;
assign add6_323_out = add6_323_fu_292;
assign add6_331_out = add6_331_fu_308;
assign add6_339_out = add6_339_fu_324;
assign add6_347_out = add6_347_fu_340;
assign add6_355_out = add6_355_fu_356;
assign add6_363_out = add6_363_fu_372;
assign add6_371_out = add6_371_fu_388;
assign add6_379_out = add6_379_fu_404;
assign add6_37_out = add6_37_fu_260;
assign add6_387_out = add6_387_fu_420;
assign add6_395_out = add6_395_fu_436;
assign add_ln13_fu_1402_p2 = (s_1_reg_2487 + 7'd4);
assign add_ln14_1_fu_1369_p2 = (or_ln14_2_fu_1362_p3 + conv3_udiv_cast_cast_reg_2481);
assign add_ln14_2_fu_1389_p2 = (or_ln14_3_fu_1382_p3 + conv3_udiv_cast_cast_reg_2481);
assign add_ln14_fu_1270_p2 = (or_ln14_1_fu_1262_p3 + conv3_udiv_cast_cast_fu_1194_p1);
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
assign bitcast_ln14_10_fu_1498_p1 = init_2_load_reg_2586;
assign bitcast_ln14_15_fu_1502_p1 = init_3_load_reg_2611;
assign bitcast_ln14_5_fu_1416_p1 = init_1_load_reg_2576;
assign bitcast_ln14_fu_1412_p1 = init_0_load_reg_2566;
assign conv3_udiv_cast_cast_fu_1194_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign emission_2_address0 = emission_2_address0_local;
assign emission_2_address1 = emission_2_address1_local;
assign emission_2_ce0 = emission_2_ce0_local;
assign emission_2_ce1 = emission_2_ce1_local;
assign emission_3_address0 = emission_3_address0_local;
assign emission_3_address1 = emission_3_address1_local;
assign emission_3_ce0 = emission_3_ce0_local;
assign emission_3_ce1 = emission_3_ce1_local;
assign grp_fu_4101_p_ce = 1'b1;
assign grp_fu_4101_p_din0 = grp_fu_1186_p0;
assign grp_fu_4101_p_din1 = grp_fu_1186_p1;
assign grp_fu_4101_p_opcode = 2'd0;
assign init_0_address0 = zext_ln9_fu_1228_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_1228_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_2_address0 = zext_ln9_fu_1228_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_3_address0 = zext_ln9_fu_1228_p1;
assign init_3_ce0 = init_3_ce0_local;
assign lshr_ln9_fu_1218_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln14_1_fu_1262_p3 = {{tmp_s_fu_1252_p4}, {5'd16}};
assign or_ln14_2_fu_1362_p3 = {{lshr_ln9_reg_2500}, {6'd32}};
assign or_ln14_3_fu_1382_p3 = {{lshr_ln9_reg_2500}, {6'd48}};
assign or_ln_fu_1236_p3 = {{lshr_ln9_fu_1218_p4}, {conv3_udiv}};
assign tmp_1_fu_1339_p2 = emission_0_q0;
assign tmp_1_fu_1339_p4 = emission_1_q0;
assign tmp_1_fu_1339_p6 = emission_2_q0;
assign tmp_1_fu_1339_p8 = emission_3_q0;
assign tmp_1_fu_1339_p9 = 'bx;
assign tmp_2_fu_1436_p2 = emission_0_q1;
assign tmp_2_fu_1436_p4 = emission_1_q1;
assign tmp_2_fu_1436_p6 = emission_2_q1;
assign tmp_2_fu_1436_p8 = emission_3_q1;
assign tmp_2_fu_1436_p9 = 'bx;
assign tmp_3_fu_1475_p2 = emission_0_q0;
assign tmp_3_fu_1475_p4 = emission_1_q0;
assign tmp_3_fu_1475_p6 = emission_2_q0;
assign tmp_3_fu_1475_p8 = emission_3_q0;
assign tmp_3_fu_1475_p9 = 'bx;
assign tmp_fu_1300_p2 = emission_0_q1;
assign tmp_fu_1300_p4 = emission_1_q1;
assign tmp_fu_1300_p6 = emission_2_q1;
assign tmp_fu_1300_p8 = emission_3_q1;
assign tmp_fu_1300_p9 = 'bx;
assign tmp_s_fu_1252_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign trunc_ln13_fu_1214_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln14_1_fu_1276_p1 = add_ln14_fu_1270_p2;
assign zext_ln14_2_fu_1374_p1 = add_ln14_1_fu_1369_p2;
assign zext_ln14_3_fu_1394_p1 = add_ln14_2_fu_1389_p2;
assign zext_ln14_fu_1244_p1 = or_ln_fu_1236_p3;
assign zext_ln9_fu_1228_p1 = lshr_ln9_fu_1218_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_2481[9:6] <= 4'b0000;
end
endmodule 