module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_0_address0,init_0_ce0,init_0_q0,init_4_address0,init_4_ce0,init_4_q0,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,emission_4_address0,emission_4_ce0,emission_4_q0,emission_4_address1,emission_4_ce1,emission_4_q1,emission_5_address0,emission_5_ce0,emission_5_q0,emission_5_address1,emission_5_ce1,emission_5_q1,emission_6_address0,emission_6_ce0,emission_6_q0,emission_6_address1,emission_6_ce1,emission_6_q1,emission_7_address0,emission_7_ce0,emission_7_q0,emission_7_address1,emission_7_ce1,emission_7_q1,empty,init_1_address0,init_1_ce0,init_1_q0,init_5_address0,init_5_ce0,init_5_q0,conv3_udiv_cast,init_2_address0,init_2_ce0,init_2_q0,init_6_address0,init_6_ce0,init_6_q0,init_3_address0,init_3_ce0,init_3_q0,init_7_address0,init_7_ce0,init_7_q0,add6_3127_out,add6_3127_out_ap_vld,add6_2125_out,add6_2125_out_ap_vld,add6_1123_out,add6_1123_out_ap_vld,add6121_out,add6121_out_ap_vld,add6_3119_out,add6_3119_out_ap_vld,add6_2117_out,add6_2117_out_ap_vld,add6_1115_out,add6_1115_out_ap_vld,add6113_out,add6113_out_ap_vld,add6_3111_out,add6_3111_out_ap_vld,add6_2109_out,add6_2109_out_ap_vld,add6_1107_out,add6_1107_out_ap_vld,add6105_out,add6105_out_ap_vld,add6_3103_out,add6_3103_out_ap_vld,add6_2101_out,add6_2101_out_ap_vld,add6_199_out,add6_199_out_ap_vld,add697_out,add697_out_ap_vld,add6_395_out,add6_395_out_ap_vld,add6_293_out,add6_293_out_ap_vld,add6_191_out,add6_191_out_ap_vld,add689_out,add689_out_ap_vld,add6_387_out,add6_387_out_ap_vld,add6_285_out,add6_285_out_ap_vld,add6_183_out,add6_183_out_ap_vld,add681_out,add681_out_ap_vld,add6_379_out,add6_379_out_ap_vld,add6_277_out,add6_277_out_ap_vld,add6_175_out,add6_175_out_ap_vld,add673_out,add673_out_ap_vld,add6_371_out,add6_371_out_ap_vld,add6_269_out,add6_269_out_ap_vld,add6_167_out,add6_167_out_ap_vld,add665_out,add665_out_ap_vld,add6_363_out,add6_363_out_ap_vld,add6_261_out,add6_261_out_ap_vld,add6_159_out,add6_159_out_ap_vld,add657_out,add657_out_ap_vld,add6_355_out,add6_355_out_ap_vld,add6_253_out,add6_253_out_ap_vld,add6_151_out,add6_151_out_ap_vld,add649_out,add649_out_ap_vld,add6_347_out,add6_347_out_ap_vld,add6_245_out,add6_245_out_ap_vld,add6_143_out,add6_143_out_ap_vld,add641_out,add641_out_ap_vld,add6_339_out,add6_339_out_ap_vld,add6_237_out,add6_237_out_ap_vld,add6_135_out,add6_135_out_ap_vld,add633_out,add633_out_ap_vld,add6_331_out,add6_331_out_ap_vld,add6_229_out,add6_229_out_ap_vld,add6_127_out,add6_127_out_ap_vld,add625_out,add625_out_ap_vld,add6_323_out,add6_323_out_ap_vld,add6_221_out,add6_221_out_ap_vld,add6_119_out,add6_119_out_ap_vld,add617_out,add617_out_ap_vld,add6_315_out,add6_315_out_ap_vld,add6_213_out,add6_213_out_ap_vld,add6_111_out,add6_111_out_ap_vld,add69_out,add69_out_ap_vld,add6_37_out,add6_37_out_ap_vld,add6_25_out,add6_25_out_ap_vld,add6_13_out,add6_13_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_4451_p_din0,grp_fu_4451_p_din1,grp_fu_4451_p_opcode,grp_fu_4451_p_dout0,grp_fu_4451_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [2:0] init_4_address0;
output   init_4_ce0;
input  [63:0] init_4_q0;
input  [4:0] conv3_udiv;
output  [8:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [8:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [8:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [8:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [8:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [8:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [8:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [8:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
output  [8:0] emission_4_address0;
output   emission_4_ce0;
input  [63:0] emission_4_q0;
output  [8:0] emission_4_address1;
output   emission_4_ce1;
input  [63:0] emission_4_q1;
output  [8:0] emission_5_address0;
output   emission_5_ce0;
input  [63:0] emission_5_q0;
output  [8:0] emission_5_address1;
output   emission_5_ce1;
input  [63:0] emission_5_q1;
output  [8:0] emission_6_address0;
output   emission_6_ce0;
input  [63:0] emission_6_q0;
output  [8:0] emission_6_address1;
output   emission_6_ce1;
input  [63:0] emission_6_q1;
output  [8:0] emission_7_address0;
output   emission_7_ce0;
input  [63:0] emission_7_q0;
output  [8:0] emission_7_address1;
output   emission_7_ce1;
input  [63:0] emission_7_q1;
input  [2:0] empty;
output  [2:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [2:0] init_5_address0;
output   init_5_ce0;
input  [63:0] init_5_q0;
input  [4:0] conv3_udiv_cast;
output  [2:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [2:0] init_6_address0;
output   init_6_ce0;
input  [63:0] init_6_q0;
output  [2:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [2:0] init_7_address0;
output   init_7_ce0;
input  [63:0] init_7_q0;
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
output  [63:0] grp_fu_4451_p_din0;
output  [63:0] grp_fu_4451_p_din1;
output  [1:0] grp_fu_4451_p_opcode;
input  [63:0] grp_fu_4451_p_dout0;
output   grp_fu_4451_p_ce;
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
reg   [0:0] tmp_159_reg_2940;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] conv3_udiv_cast_cast_fu_1442_p1;
reg   [8:0] conv3_udiv_cast_cast_reg_2928;
reg   [6:0] s_1_reg_2934;
reg   [0:0] tmp_159_reg_2940_pp0_iter1_reg;
reg   [0:0] tmp_159_reg_2940_pp0_iter2_reg;
reg   [0:0] tmp_159_reg_2940_pp0_iter3_reg;
wire   [5:0] trunc_ln13_1_fu_1462_p1;
reg   [5:0] trunc_ln13_1_reg_2944;
reg   [5:0] trunc_ln13_1_reg_2944_pp0_iter1_reg;
reg   [5:0] trunc_ln13_1_reg_2944_pp0_iter2_reg;
reg   [5:0] trunc_ln13_1_reg_2944_pp0_iter3_reg;
reg   [5:0] trunc_ln13_1_reg_2944_pp0_iter4_reg;
wire   [3:0] tmp_s_fu_1488_p4;
reg   [3:0] tmp_s_reg_2958;
wire   [63:0] select_ln14_fu_1563_p3;
reg   [63:0] select_ln14_reg_3074;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_1603_p19;
reg   [63:0] tmp_1_reg_3079;
wire   [63:0] select_ln14_1_fu_1642_p3;
reg   [63:0] select_ln14_1_reg_3084;
wire   [63:0] tmp_3_fu_1682_p19;
reg   [63:0] tmp_3_reg_3089;
wire   [63:0] select_ln14_2_fu_1721_p3;
reg   [63:0] select_ln14_2_reg_3094;
wire   [63:0] select_ln14_3_fu_1753_p3;
reg   [63:0] select_ln14_3_reg_3139;
wire   [63:0] bitcast_ln14_fu_1795_p1;
wire   [63:0] bitcast_ln14_9_fu_1799_p1;
wire   [63:0] tmp_5_fu_1835_p19;
reg   [63:0] tmp_5_reg_3194;
wire   [63:0] tmp_7_fu_1906_p19;
reg   [63:0] tmp_7_reg_3199;
wire   [63:0] bitcast_ln14_18_fu_1945_p1;
wire   [63:0] bitcast_ln14_27_fu_1949_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln9_fu_1476_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1506_p1;
wire   [63:0] zext_ln14_1_fu_1542_p1;
wire   [63:0] zext_ln14_2_fu_1741_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1773_p1;
reg   [6:0] s_fu_276;
wire   [6:0] add_ln13_fu_1785_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_280;
reg    ap_predicate_pred962_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage0;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [63:0] add6_13_fu_284;
wire   [63:0] grp_fu_1438_p2;
reg   [63:0] add6_25_fu_288;
reg    ap_predicate_pred990_state11;
reg   [63:0] add6_37_fu_292;
reg   [63:0] add69_fu_296;
reg    ap_predicate_pred1003_state10;
reg   [63:0] add6_111_fu_300;
reg   [63:0] add6_213_fu_304;
reg    ap_predicate_pred1013_state11;
reg   [63:0] add6_315_fu_308;
reg   [63:0] add617_fu_312;
reg    ap_predicate_pred1025_state10;
reg   [63:0] add6_119_fu_316;
reg   [63:0] add6_221_fu_320;
reg    ap_predicate_pred1035_state11;
reg   [63:0] add6_323_fu_324;
reg   [63:0] add625_fu_328;
reg    ap_predicate_pred1047_state10;
reg   [63:0] add6_127_fu_332;
reg   [63:0] add6_229_fu_336;
reg    ap_predicate_pred1057_state11;
reg   [63:0] add6_331_fu_340;
reg   [63:0] add633_fu_344;
reg    ap_predicate_pred1069_state10;
reg   [63:0] add6_135_fu_348;
reg   [63:0] add6_237_fu_352;
reg    ap_predicate_pred1079_state11;
reg   [63:0] add6_339_fu_356;
reg   [63:0] add641_fu_360;
reg    ap_predicate_pred1091_state10;
reg   [63:0] add6_143_fu_364;
reg   [63:0] add6_245_fu_368;
reg    ap_predicate_pred1101_state11;
reg   [63:0] add6_347_fu_372;
reg   [63:0] add649_fu_376;
reg    ap_predicate_pred1113_state10;
reg   [63:0] add6_151_fu_380;
reg   [63:0] add6_253_fu_384;
reg    ap_predicate_pred1123_state11;
reg   [63:0] add6_355_fu_388;
reg   [63:0] add657_fu_392;
reg    ap_predicate_pred1135_state10;
reg   [63:0] add6_159_fu_396;
reg   [63:0] add6_261_fu_400;
reg    ap_predicate_pred1145_state11;
reg   [63:0] add6_363_fu_404;
reg   [63:0] add665_fu_408;
reg    ap_predicate_pred1157_state10;
reg   [63:0] add6_167_fu_412;
reg   [63:0] add6_269_fu_416;
reg    ap_predicate_pred1167_state11;
reg   [63:0] add6_371_fu_420;
reg   [63:0] add673_fu_424;
reg    ap_predicate_pred1179_state10;
reg   [63:0] add6_175_fu_428;
reg   [63:0] add6_277_fu_432;
reg    ap_predicate_pred1189_state11;
reg   [63:0] add6_379_fu_436;
reg   [63:0] add681_fu_440;
reg    ap_predicate_pred1201_state10;
reg   [63:0] add6_183_fu_444;
reg   [63:0] add6_285_fu_448;
reg    ap_predicate_pred1211_state11;
reg   [63:0] add6_387_fu_452;
reg   [63:0] add689_fu_456;
reg    ap_predicate_pred1223_state10;
reg   [63:0] add6_191_fu_460;
reg   [63:0] add6_293_fu_464;
reg    ap_predicate_pred1233_state11;
reg   [63:0] add6_395_fu_468;
reg   [63:0] add697_fu_472;
reg    ap_predicate_pred1245_state10;
reg   [63:0] add6_199_fu_476;
reg   [63:0] add6_2101_fu_480;
reg    ap_predicate_pred1255_state11;
reg   [63:0] add6_3103_fu_484;
reg   [63:0] add6105_fu_488;
reg    ap_predicate_pred1267_state10;
reg   [63:0] add6_1107_fu_492;
reg   [63:0] add6_2109_fu_496;
reg    ap_predicate_pred1277_state11;
reg   [63:0] add6_3111_fu_500;
reg   [63:0] add6113_fu_504;
reg    ap_predicate_pred1289_state10;
reg   [63:0] add6_1115_fu_508;
reg   [63:0] add6_2117_fu_512;
reg    ap_predicate_pred1299_state11;
reg   [63:0] add6_3119_fu_516;
reg   [63:0] add6121_fu_520;
reg    ap_predicate_pred1338_state10;
reg   [63:0] add6_1123_fu_524;
reg   [63:0] add6_2125_fu_528;
reg    ap_predicate_pred1376_state11;
reg   [63:0] add6_3127_fu_532;
wire    ap_block_pp0_stage0_01001;
reg    init_0_ce0_local;
reg    init_4_ce0_local;
reg    emission_0_ce1_local;
reg   [8:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [8:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [8:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [8:0] emission_1_address0_local;
reg    emission_2_ce1_local;
reg   [8:0] emission_2_address1_local;
reg    emission_2_ce0_local;
reg   [8:0] emission_2_address0_local;
reg    emission_3_ce1_local;
reg   [8:0] emission_3_address1_local;
reg    emission_3_ce0_local;
reg   [8:0] emission_3_address0_local;
reg    emission_4_ce1_local;
reg   [8:0] emission_4_address1_local;
reg    emission_4_ce0_local;
reg   [8:0] emission_4_address0_local;
reg    emission_5_ce1_local;
reg   [8:0] emission_5_address1_local;
reg    emission_5_ce0_local;
reg   [8:0] emission_5_address0_local;
reg    emission_6_ce1_local;
reg   [8:0] emission_6_address1_local;
reg    emission_6_ce0_local;
reg   [8:0] emission_6_address0_local;
reg    emission_7_ce1_local;
reg   [8:0] emission_7_address1_local;
reg    emission_7_ce0_local;
reg   [8:0] emission_7_address0_local;
reg    init_1_ce0_local;
reg    init_5_ce0_local;
reg    init_2_ce0_local;
reg    init_6_ce0_local;
reg    init_3_ce0_local;
reg    init_7_ce0_local;
reg   [63:0] grp_fu_1434_p0;
reg   [63:0] grp_fu_1434_p1;
reg   [63:0] grp_fu_1438_p0;
reg   [63:0] grp_fu_1438_p1;
wire   [2:0] lshr_ln9_fu_1466_p4;
wire   [8:0] or_ln_fu_1498_p3;
wire   [4:0] tmp_174_fu_1518_p4;
wire   [8:0] or_ln14_1_fu_1528_p3;
wire   [8:0] add_ln14_fu_1536_p2;
wire   [2:0] trunc_ln13_fu_1554_p1;
wire   [0:0] icmp_ln14_1_fu_1557_p2;
wire   [63:0] tmp_1_fu_1603_p2;
wire   [63:0] tmp_1_fu_1603_p4;
wire   [63:0] tmp_1_fu_1603_p6;
wire   [63:0] tmp_1_fu_1603_p8;
wire   [63:0] tmp_1_fu_1603_p10;
wire   [63:0] tmp_1_fu_1603_p12;
wire   [63:0] tmp_1_fu_1603_p14;
wire   [63:0] tmp_1_fu_1603_p16;
wire   [63:0] tmp_1_fu_1603_p17;
wire   [63:0] tmp_3_fu_1682_p2;
wire   [63:0] tmp_3_fu_1682_p4;
wire   [63:0] tmp_3_fu_1682_p6;
wire   [63:0] tmp_3_fu_1682_p8;
wire   [63:0] tmp_3_fu_1682_p10;
wire   [63:0] tmp_3_fu_1682_p12;
wire   [63:0] tmp_3_fu_1682_p14;
wire   [63:0] tmp_3_fu_1682_p16;
wire   [63:0] tmp_3_fu_1682_p17;
wire   [8:0] or_ln14_2_fu_1729_p3;
wire   [8:0] add_ln14_1_fu_1736_p2;
wire   [8:0] or_ln14_3_fu_1761_p3;
wire   [8:0] add_ln14_2_fu_1768_p2;
wire   [63:0] tmp_5_fu_1835_p2;
wire   [63:0] tmp_5_fu_1835_p4;
wire   [63:0] tmp_5_fu_1835_p6;
wire   [63:0] tmp_5_fu_1835_p8;
wire   [63:0] tmp_5_fu_1835_p10;
wire   [63:0] tmp_5_fu_1835_p12;
wire   [63:0] tmp_5_fu_1835_p14;
wire   [63:0] tmp_5_fu_1835_p16;
wire   [63:0] tmp_5_fu_1835_p17;
wire   [63:0] tmp_7_fu_1906_p2;
wire   [63:0] tmp_7_fu_1906_p4;
wire   [63:0] tmp_7_fu_1906_p6;
wire   [63:0] tmp_7_fu_1906_p8;
wire   [63:0] tmp_7_fu_1906_p10;
wire   [63:0] tmp_7_fu_1906_p12;
wire   [63:0] tmp_7_fu_1906_p14;
wire   [63:0] tmp_7_fu_1906_p16;
wire   [63:0] tmp_7_fu_1906_p17;
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
wire   [2:0] tmp_1_fu_1603_p1;
wire   [2:0] tmp_1_fu_1603_p3;
wire   [2:0] tmp_1_fu_1603_p5;
wire   [2:0] tmp_1_fu_1603_p7;
wire  signed [2:0] tmp_1_fu_1603_p9;
wire  signed [2:0] tmp_1_fu_1603_p11;
wire  signed [2:0] tmp_1_fu_1603_p13;
wire  signed [2:0] tmp_1_fu_1603_p15;
wire   [2:0] tmp_3_fu_1682_p1;
wire   [2:0] tmp_3_fu_1682_p3;
wire   [2:0] tmp_3_fu_1682_p5;
wire   [2:0] tmp_3_fu_1682_p7;
wire  signed [2:0] tmp_3_fu_1682_p9;
wire  signed [2:0] tmp_3_fu_1682_p11;
wire  signed [2:0] tmp_3_fu_1682_p13;
wire  signed [2:0] tmp_3_fu_1682_p15;
wire   [2:0] tmp_5_fu_1835_p1;
wire   [2:0] tmp_5_fu_1835_p3;
wire   [2:0] tmp_5_fu_1835_p5;
wire   [2:0] tmp_5_fu_1835_p7;
wire  signed [2:0] tmp_5_fu_1835_p9;
wire  signed [2:0] tmp_5_fu_1835_p11;
wire  signed [2:0] tmp_5_fu_1835_p13;
wire  signed [2:0] tmp_5_fu_1835_p15;
wire   [2:0] tmp_7_fu_1906_p1;
wire   [2:0] tmp_7_fu_1906_p3;
wire   [2:0] tmp_7_fu_1906_p5;
wire   [2:0] tmp_7_fu_1906_p7;
wire  signed [2:0] tmp_7_fu_1906_p9;
wire  signed [2:0] tmp_7_fu_1906_p11;
wire  signed [2:0] tmp_7_fu_1906_p13;
wire  signed [2:0] tmp_7_fu_1906_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_276 = 7'd0;
#0 add61_fu_280 = 64'd0;
#0 add6_13_fu_284 = 64'd0;
#0 add6_25_fu_288 = 64'd0;
#0 add6_37_fu_292 = 64'd0;
#0 add69_fu_296 = 64'd0;
#0 add6_111_fu_300 = 64'd0;
#0 add6_213_fu_304 = 64'd0;
#0 add6_315_fu_308 = 64'd0;
#0 add617_fu_312 = 64'd0;
#0 add6_119_fu_316 = 64'd0;
#0 add6_221_fu_320 = 64'd0;
#0 add6_323_fu_324 = 64'd0;
#0 add625_fu_328 = 64'd0;
#0 add6_127_fu_332 = 64'd0;
#0 add6_229_fu_336 = 64'd0;
#0 add6_331_fu_340 = 64'd0;
#0 add633_fu_344 = 64'd0;
#0 add6_135_fu_348 = 64'd0;
#0 add6_237_fu_352 = 64'd0;
#0 add6_339_fu_356 = 64'd0;
#0 add641_fu_360 = 64'd0;
#0 add6_143_fu_364 = 64'd0;
#0 add6_245_fu_368 = 64'd0;
#0 add6_347_fu_372 = 64'd0;
#0 add649_fu_376 = 64'd0;
#0 add6_151_fu_380 = 64'd0;
#0 add6_253_fu_384 = 64'd0;
#0 add6_355_fu_388 = 64'd0;
#0 add657_fu_392 = 64'd0;
#0 add6_159_fu_396 = 64'd0;
#0 add6_261_fu_400 = 64'd0;
#0 add6_363_fu_404 = 64'd0;
#0 add665_fu_408 = 64'd0;
#0 add6_167_fu_412 = 64'd0;
#0 add6_269_fu_416 = 64'd0;
#0 add6_371_fu_420 = 64'd0;
#0 add673_fu_424 = 64'd0;
#0 add6_175_fu_428 = 64'd0;
#0 add6_277_fu_432 = 64'd0;
#0 add6_379_fu_436 = 64'd0;
#0 add681_fu_440 = 64'd0;
#0 add6_183_fu_444 = 64'd0;
#0 add6_285_fu_448 = 64'd0;
#0 add6_387_fu_452 = 64'd0;
#0 add689_fu_456 = 64'd0;
#0 add6_191_fu_460 = 64'd0;
#0 add6_293_fu_464 = 64'd0;
#0 add6_395_fu_468 = 64'd0;
#0 add697_fu_472 = 64'd0;
#0 add6_199_fu_476 = 64'd0;
#0 add6_2101_fu_480 = 64'd0;
#0 add6_3103_fu_484 = 64'd0;
#0 add6105_fu_488 = 64'd0;
#0 add6_1107_fu_492 = 64'd0;
#0 add6_2109_fu_496 = 64'd0;
#0 add6_3111_fu_500 = 64'd0;
#0 add6113_fu_504 = 64'd0;
#0 add6_1115_fu_508 = 64'd0;
#0 add6_2117_fu_512 = 64'd0;
#0 add6_3119_fu_516 = 64'd0;
#0 add6121_fu_520 = 64'd0;
#0 add6_1123_fu_524 = 64'd0;
#0 add6_2125_fu_528 = 64'd0;
#0 add6_3127_fu_532 = 64'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1438_p0),.din1(grp_fu_1438_p1),.ce(1'b1),.dout(grp_fu_1438_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(tmp_1_fu_1603_p2),.din1(tmp_1_fu_1603_p4),.din2(tmp_1_fu_1603_p6),.din3(tmp_1_fu_1603_p8),.din4(tmp_1_fu_1603_p10),.din5(tmp_1_fu_1603_p12),.din6(tmp_1_fu_1603_p14),.din7(tmp_1_fu_1603_p16),.def(tmp_1_fu_1603_p17),.sel(empty),.dout(tmp_1_fu_1603_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U4(.din0(tmp_3_fu_1682_p2),.din1(tmp_3_fu_1682_p4),.din2(tmp_3_fu_1682_p6),.din3(tmp_3_fu_1682_p8),.din4(tmp_3_fu_1682_p10),.din5(tmp_3_fu_1682_p12),.din6(tmp_3_fu_1682_p14),.din7(tmp_3_fu_1682_p16),.def(tmp_3_fu_1682_p17),.sel(empty),.dout(tmp_3_fu_1682_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U5(.din0(tmp_5_fu_1835_p2),.din1(tmp_5_fu_1835_p4),.din2(tmp_5_fu_1835_p6),.din3(tmp_5_fu_1835_p8),.din4(tmp_5_fu_1835_p10),.din5(tmp_5_fu_1835_p12),.din6(tmp_5_fu_1835_p14),.din7(tmp_5_fu_1835_p16),.def(tmp_5_fu_1835_p17),.sel(empty),.dout(tmp_5_fu_1835_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U6(.din0(tmp_7_fu_1906_p2),.din1(tmp_7_fu_1906_p4),.din2(tmp_7_fu_1906_p6),.din3(tmp_7_fu_1906_p8),.din4(tmp_7_fu_1906_p10),.din5(tmp_7_fu_1906_p12),.din6(tmp_7_fu_1906_p14),.din7(tmp_7_fu_1906_p16),.def(tmp_7_fu_1906_p17),.sel(empty),.dout(tmp_7_fu_1906_p19));
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
        s_fu_276 <= 7'd0;
    end else if (((tmp_159_reg_2940 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        s_fu_276 <= add_ln13_fu_1785_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1267_state10 == 1'b1))) begin
        add6105_fu_488 <= grp_fu_4451_p_dout0;
        add6_1107_fu_492 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1289_state10 == 1'b1))) begin
        add6113_fu_504 <= grp_fu_4451_p_dout0;
        add6_1115_fu_508 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1338_state10 == 1'b1))) begin
        add6121_fu_520 <= grp_fu_4451_p_dout0;
        add6_1123_fu_524 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1025_state10 == 1'b1))) begin
        add617_fu_312 <= grp_fu_4451_p_dout0;
        add6_119_fu_316 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred962_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add61_fu_280 <= grp_fu_4451_p_dout0;
        add6_13_fu_284 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1047_state10 == 1'b1))) begin
        add625_fu_328 <= grp_fu_4451_p_dout0;
        add6_127_fu_332 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1069_state10 == 1'b1))) begin
        add633_fu_344 <= grp_fu_4451_p_dout0;
        add6_135_fu_348 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1091_state10 == 1'b1))) begin
        add641_fu_360 <= grp_fu_4451_p_dout0;
        add6_143_fu_364 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1113_state10 == 1'b1))) begin
        add649_fu_376 <= grp_fu_4451_p_dout0;
        add6_151_fu_380 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1135_state10 == 1'b1))) begin
        add657_fu_392 <= grp_fu_4451_p_dout0;
        add6_159_fu_396 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1157_state10 == 1'b1))) begin
        add665_fu_408 <= grp_fu_4451_p_dout0;
        add6_167_fu_412 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1179_state10 == 1'b1))) begin
        add673_fu_424 <= grp_fu_4451_p_dout0;
        add6_175_fu_428 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1201_state10 == 1'b1))) begin
        add681_fu_440 <= grp_fu_4451_p_dout0;
        add6_183_fu_444 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1223_state10 == 1'b1))) begin
        add689_fu_456 <= grp_fu_4451_p_dout0;
        add6_191_fu_460 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1245_state10 == 1'b1))) begin
        add697_fu_472 <= grp_fu_4451_p_dout0;
        add6_199_fu_476 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1003_state10 == 1'b1))) begin
        add69_fu_296 <= grp_fu_4451_p_dout0;
        add6_111_fu_300 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1255_state11 == 1'b1))) begin
        add6_2101_fu_480 <= grp_fu_4451_p_dout0;
        add6_3103_fu_484 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1277_state11 == 1'b1))) begin
        add6_2109_fu_496 <= grp_fu_4451_p_dout0;
        add6_3111_fu_500 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1299_state11 == 1'b1))) begin
        add6_2117_fu_512 <= grp_fu_4451_p_dout0;
        add6_3119_fu_516 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1376_state11 == 1'b1))) begin
        add6_2125_fu_528 <= grp_fu_4451_p_dout0;
        add6_3127_fu_532 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1013_state11 == 1'b1))) begin
        add6_213_fu_304 <= grp_fu_4451_p_dout0;
        add6_315_fu_308 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1035_state11 == 1'b1))) begin
        add6_221_fu_320 <= grp_fu_4451_p_dout0;
        add6_323_fu_324 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1057_state11 == 1'b1))) begin
        add6_229_fu_336 <= grp_fu_4451_p_dout0;
        add6_331_fu_340 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1079_state11 == 1'b1))) begin
        add6_237_fu_352 <= grp_fu_4451_p_dout0;
        add6_339_fu_356 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1101_state11 == 1'b1))) begin
        add6_245_fu_368 <= grp_fu_4451_p_dout0;
        add6_347_fu_372 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1123_state11 == 1'b1))) begin
        add6_253_fu_384 <= grp_fu_4451_p_dout0;
        add6_355_fu_388 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred990_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_25_fu_288 <= grp_fu_4451_p_dout0;
        add6_37_fu_292 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1145_state11 == 1'b1))) begin
        add6_261_fu_400 <= grp_fu_4451_p_dout0;
        add6_363_fu_404 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1167_state11 == 1'b1))) begin
        add6_269_fu_416 <= grp_fu_4451_p_dout0;
        add6_371_fu_420 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1189_state11 == 1'b1))) begin
        add6_277_fu_432 <= grp_fu_4451_p_dout0;
        add6_379_fu_436 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1211_state11 == 1'b1))) begin
        add6_285_fu_448 <= grp_fu_4451_p_dout0;
        add6_387_fu_452 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1233_state11 == 1'b1))) begin
        add6_293_fu_464 <= grp_fu_4451_p_dout0;
        add6_395_fu_468 <= grp_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred1003_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd52);
        ap_predicate_pred1025_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd48);
        ap_predicate_pred1047_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd44);
        ap_predicate_pred1069_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd40);
        ap_predicate_pred1091_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd36);
        ap_predicate_pred1113_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd32);
        ap_predicate_pred1135_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd28);
        ap_predicate_pred1157_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd24);
        ap_predicate_pred1179_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd20);
        ap_predicate_pred1201_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd16);
        ap_predicate_pred1223_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd12);
        ap_predicate_pred1245_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd8);
        ap_predicate_pred1267_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd4);
        ap_predicate_pred1289_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd0);
        ap_predicate_pred1338_state10 <= (~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd56) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd0) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd4) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd8) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd12) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd16) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd20) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd24) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd28) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd32) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd36) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd40) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd44) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd48) & ~(trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd52));
        ap_predicate_pred962_state10 <= (trunc_ln13_1_reg_2944_pp0_iter3_reg == 6'd56);
        conv3_udiv_cast_cast_reg_2928[4 : 0] <= conv3_udiv_cast_cast_fu_1442_p1[4 : 0];
        s_1_reg_2934 <= ap_sig_allocacmp_s_1;
        tmp_159_reg_2940 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_159_reg_2940_pp0_iter1_reg <= tmp_159_reg_2940;
        tmp_159_reg_2940_pp0_iter2_reg <= tmp_159_reg_2940_pp0_iter1_reg;
        tmp_159_reg_2940_pp0_iter3_reg <= tmp_159_reg_2940_pp0_iter2_reg;
        tmp_5_reg_3194 <= tmp_5_fu_1835_p19;
        tmp_7_reg_3199 <= tmp_7_fu_1906_p19;
        tmp_s_reg_2958 <= {{ap_sig_allocacmp_s_1[5:2]}};
        trunc_ln13_1_reg_2944 <= trunc_ln13_1_fu_1462_p1;
        trunc_ln13_1_reg_2944_pp0_iter1_reg <= trunc_ln13_1_reg_2944;
        trunc_ln13_1_reg_2944_pp0_iter2_reg <= trunc_ln13_1_reg_2944_pp0_iter1_reg;
        trunc_ln13_1_reg_2944_pp0_iter3_reg <= trunc_ln13_1_reg_2944_pp0_iter2_reg;
        trunc_ln13_1_reg_2944_pp0_iter4_reg <= trunc_ln13_1_reg_2944_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred1013_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd52);
        ap_predicate_pred1035_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd48);
        ap_predicate_pred1057_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd44);
        ap_predicate_pred1079_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd40);
        ap_predicate_pred1101_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd36);
        ap_predicate_pred1123_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd32);
        ap_predicate_pred1145_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd28);
        ap_predicate_pred1167_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd24);
        ap_predicate_pred1189_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd20);
        ap_predicate_pred1211_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd16);
        ap_predicate_pred1233_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd12);
        ap_predicate_pred1255_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd8);
        ap_predicate_pred1277_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd4);
        ap_predicate_pred1299_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd0);
        ap_predicate_pred1376_state11 <= (~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd56) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd0) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd4) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd8) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd12) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd16) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd20) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd24) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd28) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd32) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd36) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd40) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd44) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd48) & ~(trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd52));
        ap_predicate_pred990_state11 <= (trunc_ln13_1_reg_2944_pp0_iter4_reg == 6'd56);
        select_ln14_1_reg_3084 <= select_ln14_1_fu_1642_p3;
        select_ln14_2_reg_3094 <= select_ln14_2_fu_1721_p3;
        select_ln14_3_reg_3139 <= select_ln14_3_fu_1753_p3;
        select_ln14_reg_3074 <= select_ln14_fu_1563_p3;
        tmp_1_reg_3079 <= tmp_1_fu_1603_p19;
        tmp_3_reg_3089 <= tmp_3_fu_1682_p19;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6105_out_ap_vld = 1'b1;
    end else begin
        add6105_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6113_out_ap_vld = 1'b1;
    end else begin
        add6113_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6121_out_ap_vld = 1'b1;
    end else begin
        add6121_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add617_out_ap_vld = 1'b1;
    end else begin
        add617_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add625_out_ap_vld = 1'b1;
    end else begin
        add625_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add633_out_ap_vld = 1'b1;
    end else begin
        add633_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add641_out_ap_vld = 1'b1;
    end else begin
        add641_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add649_out_ap_vld = 1'b1;
    end else begin
        add649_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add657_out_ap_vld = 1'b1;
    end else begin
        add657_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add665_out_ap_vld = 1'b1;
    end else begin
        add665_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add673_out_ap_vld = 1'b1;
    end else begin
        add673_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add681_out_ap_vld = 1'b1;
    end else begin
        add681_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add689_out_ap_vld = 1'b1;
    end else begin
        add689_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add697_out_ap_vld = 1'b1;
    end else begin
        add697_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add69_out_ap_vld = 1'b1;
    end else begin
        add69_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1107_out_ap_vld = 1'b1;
    end else begin
        add6_1107_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1115_out_ap_vld = 1'b1;
    end else begin
        add6_1115_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_111_out_ap_vld = 1'b1;
    end else begin
        add6_111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1123_out_ap_vld = 1'b1;
    end else begin
        add6_1123_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_119_out_ap_vld = 1'b1;
    end else begin
        add6_119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_127_out_ap_vld = 1'b1;
    end else begin
        add6_127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_135_out_ap_vld = 1'b1;
    end else begin
        add6_135_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_13_out_ap_vld = 1'b1;
    end else begin
        add6_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_143_out_ap_vld = 1'b1;
    end else begin
        add6_143_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_151_out_ap_vld = 1'b1;
    end else begin
        add6_151_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_159_out_ap_vld = 1'b1;
    end else begin
        add6_159_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_167_out_ap_vld = 1'b1;
    end else begin
        add6_167_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_175_out_ap_vld = 1'b1;
    end else begin
        add6_175_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_183_out_ap_vld = 1'b1;
    end else begin
        add6_183_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_191_out_ap_vld = 1'b1;
    end else begin
        add6_191_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_199_out_ap_vld = 1'b1;
    end else begin
        add6_199_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2101_out_ap_vld = 1'b1;
    end else begin
        add6_2101_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2109_out_ap_vld = 1'b1;
    end else begin
        add6_2109_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2117_out_ap_vld = 1'b1;
    end else begin
        add6_2117_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2125_out_ap_vld = 1'b1;
    end else begin
        add6_2125_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_213_out_ap_vld = 1'b1;
    end else begin
        add6_213_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_221_out_ap_vld = 1'b1;
    end else begin
        add6_221_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_229_out_ap_vld = 1'b1;
    end else begin
        add6_229_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_237_out_ap_vld = 1'b1;
    end else begin
        add6_237_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_245_out_ap_vld = 1'b1;
    end else begin
        add6_245_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_253_out_ap_vld = 1'b1;
    end else begin
        add6_253_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_25_out_ap_vld = 1'b1;
    end else begin
        add6_25_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_261_out_ap_vld = 1'b1;
    end else begin
        add6_261_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_269_out_ap_vld = 1'b1;
    end else begin
        add6_269_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_277_out_ap_vld = 1'b1;
    end else begin
        add6_277_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_285_out_ap_vld = 1'b1;
    end else begin
        add6_285_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_293_out_ap_vld = 1'b1;
    end else begin
        add6_293_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3103_out_ap_vld = 1'b1;
    end else begin
        add6_3103_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3111_out_ap_vld = 1'b1;
    end else begin
        add6_3111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3119_out_ap_vld = 1'b1;
    end else begin
        add6_3119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3127_out_ap_vld = 1'b1;
    end else begin
        add6_3127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_315_out_ap_vld = 1'b1;
    end else begin
        add6_315_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_323_out_ap_vld = 1'b1;
    end else begin
        add6_323_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_331_out_ap_vld = 1'b1;
    end else begin
        add6_331_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_339_out_ap_vld = 1'b1;
    end else begin
        add6_339_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_347_out_ap_vld = 1'b1;
    end else begin
        add6_347_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_355_out_ap_vld = 1'b1;
    end else begin
        add6_355_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_363_out_ap_vld = 1'b1;
    end else begin
        add6_363_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_371_out_ap_vld = 1'b1;
    end else begin
        add6_371_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_379_out_ap_vld = 1'b1;
    end else begin
        add6_379_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_37_out_ap_vld = 1'b1;
    end else begin
        add6_37_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_387_out_ap_vld = 1'b1;
    end else begin
        add6_387_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_395_out_ap_vld = 1'b1;
    end else begin
        add6_395_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_159_reg_2940 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_159_reg_2940_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_276;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1773_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1542_p1;
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
            emission_0_address1_local = zext_ln14_2_fu_1741_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1506_p1;
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
            emission_1_address0_local = zext_ln14_3_fu_1773_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1542_p1;
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
            emission_1_address1_local = zext_ln14_2_fu_1741_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1506_p1;
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
            emission_2_address0_local = zext_ln14_3_fu_1773_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1542_p1;
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
            emission_2_address1_local = zext_ln14_2_fu_1741_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1506_p1;
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
            emission_3_address0_local = zext_ln14_3_fu_1773_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1542_p1;
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
            emission_3_address1_local = zext_ln14_2_fu_1741_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1506_p1;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address0_local = zext_ln14_3_fu_1773_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address0_local = zext_ln14_1_fu_1542_p1;
        end else begin
            emission_4_address0_local = 'bx;
        end
    end else begin
        emission_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address1_local = zext_ln14_2_fu_1741_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address1_local = zext_ln14_fu_1506_p1;
        end else begin
            emission_4_address1_local = 'bx;
        end
    end else begin
        emission_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_4_ce0_local = 1'b1;
    end else begin
        emission_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_4_ce1_local = 1'b1;
    end else begin
        emission_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address0_local = zext_ln14_3_fu_1773_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address0_local = zext_ln14_1_fu_1542_p1;
        end else begin
            emission_5_address0_local = 'bx;
        end
    end else begin
        emission_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address1_local = zext_ln14_2_fu_1741_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address1_local = zext_ln14_fu_1506_p1;
        end else begin
            emission_5_address1_local = 'bx;
        end
    end else begin
        emission_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_5_ce0_local = 1'b1;
    end else begin
        emission_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_5_ce1_local = 1'b1;
    end else begin
        emission_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address0_local = zext_ln14_3_fu_1773_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address0_local = zext_ln14_1_fu_1542_p1;
        end else begin
            emission_6_address0_local = 'bx;
        end
    end else begin
        emission_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address1_local = zext_ln14_2_fu_1741_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address1_local = zext_ln14_fu_1506_p1;
        end else begin
            emission_6_address1_local = 'bx;
        end
    end else begin
        emission_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_6_ce0_local = 1'b1;
    end else begin
        emission_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_6_ce1_local = 1'b1;
    end else begin
        emission_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address0_local = zext_ln14_3_fu_1773_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address0_local = zext_ln14_1_fu_1542_p1;
        end else begin
            emission_7_address0_local = 'bx;
        end
    end else begin
        emission_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address1_local = zext_ln14_2_fu_1741_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address1_local = zext_ln14_fu_1506_p1;
        end else begin
            emission_7_address1_local = 'bx;
        end
    end else begin
        emission_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_7_ce0_local = 1'b1;
    end else begin
        emission_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_7_ce1_local = 1'b1;
    end else begin
        emission_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1434_p0 = bitcast_ln14_18_fu_1945_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1434_p0 = bitcast_ln14_fu_1795_p1;
        end else begin
            grp_fu_1434_p0 = 'bx;
        end
    end else begin
        grp_fu_1434_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1434_p1 = tmp_5_reg_3194;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1434_p1 = tmp_1_reg_3079;
        end else begin
            grp_fu_1434_p1 = 'bx;
        end
    end else begin
        grp_fu_1434_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1438_p0 = bitcast_ln14_27_fu_1949_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1438_p0 = bitcast_ln14_9_fu_1799_p1;
        end else begin
            grp_fu_1438_p0 = 'bx;
        end
    end else begin
        grp_fu_1438_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1438_p1 = tmp_7_reg_3199;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_1438_p1 = tmp_3_reg_3089;
        end else begin
            grp_fu_1438_p1 = 'bx;
        end
    end else begin
        grp_fu_1438_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_4_ce0_local = 1'b1;
    end else begin
        init_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_5_ce0_local = 1'b1;
    end else begin
        init_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_6_ce0_local = 1'b1;
    end else begin
        init_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_7_ce0_local = 1'b1;
    end else begin
        init_7_ce0_local = 1'b0;
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
assign add6105_out = add6105_fu_488;
assign add6113_out = add6113_fu_504;
assign add6121_out = add6121_fu_520;
assign add617_out = add617_fu_312;
assign add61_out = add61_fu_280;
assign add625_out = add625_fu_328;
assign add633_out = add633_fu_344;
assign add641_out = add641_fu_360;
assign add649_out = add649_fu_376;
assign add657_out = add657_fu_392;
assign add665_out = add665_fu_408;
assign add673_out = add673_fu_424;
assign add681_out = add681_fu_440;
assign add689_out = add689_fu_456;
assign add697_out = add697_fu_472;
assign add69_out = add69_fu_296;
assign add6_1107_out = add6_1107_fu_492;
assign add6_1115_out = add6_1115_fu_508;
assign add6_111_out = add6_111_fu_300;
assign add6_1123_out = add6_1123_fu_524;
assign add6_119_out = add6_119_fu_316;
assign add6_127_out = add6_127_fu_332;
assign add6_135_out = add6_135_fu_348;
assign add6_13_out = add6_13_fu_284;
assign add6_143_out = add6_143_fu_364;
assign add6_151_out = add6_151_fu_380;
assign add6_159_out = add6_159_fu_396;
assign add6_167_out = add6_167_fu_412;
assign add6_175_out = add6_175_fu_428;
assign add6_183_out = add6_183_fu_444;
assign add6_191_out = add6_191_fu_460;
assign add6_199_out = add6_199_fu_476;
assign add6_2101_out = add6_2101_fu_480;
assign add6_2109_out = add6_2109_fu_496;
assign add6_2117_out = add6_2117_fu_512;
assign add6_2125_out = add6_2125_fu_528;
assign add6_213_out = add6_213_fu_304;
assign add6_221_out = add6_221_fu_320;
assign add6_229_out = add6_229_fu_336;
assign add6_237_out = add6_237_fu_352;
assign add6_245_out = add6_245_fu_368;
assign add6_253_out = add6_253_fu_384;
assign add6_25_out = add6_25_fu_288;
assign add6_261_out = add6_261_fu_400;
assign add6_269_out = add6_269_fu_416;
assign add6_277_out = add6_277_fu_432;
assign add6_285_out = add6_285_fu_448;
assign add6_293_out = add6_293_fu_464;
assign add6_3103_out = add6_3103_fu_484;
assign add6_3111_out = add6_3111_fu_500;
assign add6_3119_out = add6_3119_fu_516;
assign add6_3127_out = add6_3127_fu_532;
assign add6_315_out = add6_315_fu_308;
assign add6_323_out = add6_323_fu_324;
assign add6_331_out = add6_331_fu_340;
assign add6_339_out = add6_339_fu_356;
assign add6_347_out = add6_347_fu_372;
assign add6_355_out = add6_355_fu_388;
assign add6_363_out = add6_363_fu_404;
assign add6_371_out = add6_371_fu_420;
assign add6_379_out = add6_379_fu_436;
assign add6_37_out = add6_37_fu_292;
assign add6_387_out = add6_387_fu_452;
assign add6_395_out = add6_395_fu_468;
assign add_ln13_fu_1785_p2 = (s_1_reg_2934 + 7'd4);
assign add_ln14_1_fu_1736_p2 = (or_ln14_2_fu_1729_p3 + conv3_udiv_cast_cast_reg_2928);
assign add_ln14_2_fu_1768_p2 = (or_ln14_3_fu_1761_p3 + conv3_udiv_cast_cast_reg_2928);
assign add_ln14_fu_1536_p2 = (or_ln14_1_fu_1528_p3 + conv3_udiv_cast_cast_fu_1442_p1);
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
assign bitcast_ln14_18_fu_1945_p1 = select_ln14_2_reg_3094;
assign bitcast_ln14_27_fu_1949_p1 = select_ln14_3_reg_3139;
assign bitcast_ln14_9_fu_1799_p1 = select_ln14_1_reg_3084;
assign bitcast_ln14_fu_1795_p1 = select_ln14_reg_3074;
assign conv3_udiv_cast_cast_fu_1442_p1 = conv3_udiv_cast;
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
assign emission_4_address0 = emission_4_address0_local;
assign emission_4_address1 = emission_4_address1_local;
assign emission_4_ce0 = emission_4_ce0_local;
assign emission_4_ce1 = emission_4_ce1_local;
assign emission_5_address0 = emission_5_address0_local;
assign emission_5_address1 = emission_5_address1_local;
assign emission_5_ce0 = emission_5_ce0_local;
assign emission_5_ce1 = emission_5_ce1_local;
assign emission_6_address0 = emission_6_address0_local;
assign emission_6_address1 = emission_6_address1_local;
assign emission_6_ce0 = emission_6_ce0_local;
assign emission_6_ce1 = emission_6_ce1_local;
assign emission_7_address0 = emission_7_address0_local;
assign emission_7_address1 = emission_7_address1_local;
assign emission_7_ce0 = emission_7_ce0_local;
assign emission_7_ce1 = emission_7_ce1_local;
assign grp_fu_4451_p_ce = 1'b1;
assign grp_fu_4451_p_din0 = grp_fu_1434_p0;
assign grp_fu_4451_p_din1 = grp_fu_1434_p1;
assign grp_fu_4451_p_opcode = 2'd0;
assign icmp_ln14_1_fu_1557_p2 = ((trunc_ln13_fu_1554_p1 != 3'd0) ? 1'b1 : 1'b0);
assign init_0_address0 = zext_ln9_fu_1476_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_1476_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_2_address0 = zext_ln9_fu_1476_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_3_address0 = zext_ln9_fu_1476_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_4_address0 = zext_ln9_fu_1476_p1;
assign init_4_ce0 = init_4_ce0_local;
assign init_5_address0 = zext_ln9_fu_1476_p1;
assign init_5_ce0 = init_5_ce0_local;
assign init_6_address0 = zext_ln9_fu_1476_p1;
assign init_6_ce0 = init_6_ce0_local;
assign init_7_address0 = zext_ln9_fu_1476_p1;
assign init_7_ce0 = init_7_ce0_local;
assign lshr_ln9_fu_1466_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign or_ln14_1_fu_1528_p3 = {{tmp_174_fu_1518_p4}, {4'd8}};
assign or_ln14_2_fu_1729_p3 = {{tmp_s_reg_2958}, {5'd16}};
assign or_ln14_3_fu_1761_p3 = {{tmp_s_reg_2958}, {5'd24}};
assign or_ln_fu_1498_p3 = {{tmp_s_fu_1488_p4}, {conv3_udiv}};
assign select_ln14_1_fu_1642_p3 = ((icmp_ln14_1_fu_1557_p2[0:0] == 1'b1) ? init_5_q0 : init_1_q0);
assign select_ln14_2_fu_1721_p3 = ((icmp_ln14_1_fu_1557_p2[0:0] == 1'b1) ? init_6_q0 : init_2_q0);
assign select_ln14_3_fu_1753_p3 = ((icmp_ln14_1_fu_1557_p2[0:0] == 1'b1) ? init_7_q0 : init_3_q0);
assign select_ln14_fu_1563_p3 = ((icmp_ln14_1_fu_1557_p2[0:0] == 1'b1) ? init_4_q0 : init_0_q0);
assign tmp_174_fu_1518_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_1_fu_1603_p10 = emission_4_q1;
assign tmp_1_fu_1603_p12 = emission_5_q1;
assign tmp_1_fu_1603_p14 = emission_6_q1;
assign tmp_1_fu_1603_p16 = emission_7_q1;
assign tmp_1_fu_1603_p17 = 'bx;
assign tmp_1_fu_1603_p2 = emission_0_q1;
assign tmp_1_fu_1603_p4 = emission_1_q1;
assign tmp_1_fu_1603_p6 = emission_2_q1;
assign tmp_1_fu_1603_p8 = emission_3_q1;
assign tmp_3_fu_1682_p10 = emission_4_q0;
assign tmp_3_fu_1682_p12 = emission_5_q0;
assign tmp_3_fu_1682_p14 = emission_6_q0;
assign tmp_3_fu_1682_p16 = emission_7_q0;
assign tmp_3_fu_1682_p17 = 'bx;
assign tmp_3_fu_1682_p2 = emission_0_q0;
assign tmp_3_fu_1682_p4 = emission_1_q0;
assign tmp_3_fu_1682_p6 = emission_2_q0;
assign tmp_3_fu_1682_p8 = emission_3_q0;
assign tmp_5_fu_1835_p10 = emission_4_q1;
assign tmp_5_fu_1835_p12 = emission_5_q1;
assign tmp_5_fu_1835_p14 = emission_6_q1;
assign tmp_5_fu_1835_p16 = emission_7_q1;
assign tmp_5_fu_1835_p17 = 'bx;
assign tmp_5_fu_1835_p2 = emission_0_q1;
assign tmp_5_fu_1835_p4 = emission_1_q1;
assign tmp_5_fu_1835_p6 = emission_2_q1;
assign tmp_5_fu_1835_p8 = emission_3_q1;
assign tmp_7_fu_1906_p10 = emission_4_q0;
assign tmp_7_fu_1906_p12 = emission_5_q0;
assign tmp_7_fu_1906_p14 = emission_6_q0;
assign tmp_7_fu_1906_p16 = emission_7_q0;
assign tmp_7_fu_1906_p17 = 'bx;
assign tmp_7_fu_1906_p2 = emission_0_q0;
assign tmp_7_fu_1906_p4 = emission_1_q0;
assign tmp_7_fu_1906_p6 = emission_2_q0;
assign tmp_7_fu_1906_p8 = emission_3_q0;
assign tmp_s_fu_1488_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign trunc_ln13_1_fu_1462_p1 = ap_sig_allocacmp_s_1[5:0];
assign trunc_ln13_fu_1554_p1 = s_1_reg_2934[2:0];
assign zext_ln14_1_fu_1542_p1 = add_ln14_fu_1536_p2;
assign zext_ln14_2_fu_1741_p1 = add_ln14_1_fu_1736_p2;
assign zext_ln14_3_fu_1773_p1 = add_ln14_2_fu_1768_p2;
assign zext_ln14_fu_1506_p1 = or_ln_fu_1498_p3;
assign zext_ln9_fu_1476_p1 = lshr_ln9_fu_1466_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_2928[8:5] <= 4'b0000;
end
endmodule 