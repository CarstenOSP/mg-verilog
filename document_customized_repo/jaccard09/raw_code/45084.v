module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_9,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,conv3_udiv_cast,conv3_udiv,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,add6_7127_out,add6_7127_out_ap_vld,add6_6125_out,add6_6125_out_ap_vld,add6_5123_out,add6_5123_out_ap_vld,add6_4121_out,add6_4121_out_ap_vld,add6_3119_out,add6_3119_out_ap_vld,add6_2117_out,add6_2117_out_ap_vld,add6_1115_out,add6_1115_out_ap_vld,add6113_out,add6113_out_ap_vld,add6_7111_out,add6_7111_out_ap_vld,add6_6109_out,add6_6109_out_ap_vld,add6_5107_out,add6_5107_out_ap_vld,add6_4105_out,add6_4105_out_ap_vld,add6_3103_out,add6_3103_out_ap_vld,add6_2101_out,add6_2101_out_ap_vld,add6_199_out,add6_199_out_ap_vld,add697_out,add697_out_ap_vld,add6_795_out,add6_795_out_ap_vld,add6_693_out,add6_693_out_ap_vld,add6_591_out,add6_591_out_ap_vld,add6_489_out,add6_489_out_ap_vld,add6_387_out,add6_387_out_ap_vld,add6_285_out,add6_285_out_ap_vld,add6_183_out,add6_183_out_ap_vld,add681_out,add681_out_ap_vld,add6_779_out,add6_779_out_ap_vld,add6_677_out,add6_677_out_ap_vld,add6_575_out,add6_575_out_ap_vld,add6_473_out,add6_473_out_ap_vld,add6_371_out,add6_371_out_ap_vld,add6_269_out,add6_269_out_ap_vld,add6_167_out,add6_167_out_ap_vld,add665_out,add665_out_ap_vld,add6_763_out,add6_763_out_ap_vld,add6_661_out,add6_661_out_ap_vld,add6_559_out,add6_559_out_ap_vld,add6_457_out,add6_457_out_ap_vld,add6_355_out,add6_355_out_ap_vld,add6_253_out,add6_253_out_ap_vld,add6_151_out,add6_151_out_ap_vld,add649_out,add649_out_ap_vld,add6_747_out,add6_747_out_ap_vld,add6_645_out,add6_645_out_ap_vld,add6_543_out,add6_543_out_ap_vld,add6_441_out,add6_441_out_ap_vld,add6_339_out,add6_339_out_ap_vld,add6_237_out,add6_237_out_ap_vld,add6_135_out,add6_135_out_ap_vld,add633_out,add633_out_ap_vld,add6_731_out,add6_731_out_ap_vld,add6_629_out,add6_629_out_ap_vld,add6_527_out,add6_527_out_ap_vld,add6_425_out,add6_425_out_ap_vld,add6_323_out,add6_323_out_ap_vld,add6_221_out,add6_221_out_ap_vld,add6_119_out,add6_119_out_ap_vld,add617_out,add617_out_ap_vld,add6_715_out,add6_715_out_ap_vld,add6_613_out,add6_613_out_ap_vld,add6_511_out,add6_511_out_ap_vld,add6_49_out,add6_49_out_ap_vld,add6_37_out,add6_37_out_ap_vld,add6_25_out,add6_25_out_ap_vld,add6_13_out,add6_13_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_3912_p_din0,grp_fu_3912_p_din1,grp_fu_3912_p_opcode,grp_fu_3912_p_dout0,grp_fu_3912_p_ce); 
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
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [4:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [6:0] empty_9;
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
input  [6:0] conv3_udiv;
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [4:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
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
output  [63:0] grp_fu_3912_p_din0;
output  [63:0] grp_fu_3912_p_din1;
output  [1:0] grp_fu_3912_p_opcode;
input  [63:0] grp_fu_3912_p_dout0;
output   grp_fu_3912_p_ce;
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
reg   [0:0] tmp_128_reg_2581;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1218;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] grp_fu_1204_p3;
reg   [63:0] reg_1222;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_1211_p3;
reg   [63:0] reg_1226;
reg   [63:0] reg_1230;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] conv3_udiv_cast_cast_fu_1234_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_2566;
reg   [6:0] s_1_reg_2575;
reg   [0:0] tmp_128_reg_2581_pp0_iter1_reg;
wire   [5:0] trunc_ln13_fu_1258_p1;
reg   [5:0] trunc_ln13_reg_2585;
reg   [5:0] trunc_ln13_reg_2585_pp0_iter1_reg;
reg   [5:0] trunc_ln13_reg_2585_pp0_iter2_reg;
wire   [2:0] tmp_41_fu_1278_p4;
reg   [2:0] tmp_41_reg_2594;
wire   [3:0] tmp_138_fu_1322_p4;
reg   [3:0] tmp_138_reg_2624;
wire   [0:0] tmp_129_fu_1382_p3;
reg   [0:0] tmp_129_reg_2665;
reg   [63:0] init_0_load_1_reg_2670;
reg   [63:0] init_1_load_1_reg_2685;
wire   [63:0] bitcast_ln14_fu_1417_p1;
wire   [63:0] bitcast_ln14_1_fu_1422_p1;
wire   [63:0] bitcast_ln14_2_fu_1427_p1;
reg   [63:0] init_0_load_3_reg_2735;
wire   [63:0] bitcast_ln14_11_fu_1467_p1;
reg   [63:0] init_1_load_3_reg_2745;
wire   [63:0] bitcast_ln14_3_fu_1472_p1;
wire   [63:0] bitcast_ln14_4_fu_1477_p1;
wire   [63:0] bitcast_ln14_7_fu_1482_p1;
wire   [63:0] bitcast_ln14_12_fu_1504_p1;
wire   [63:0] bitcast_ln14_5_fu_1536_p1;
wire   [63:0] bitcast_ln14_6_fu_1541_p1;
wire   [63:0] bitcast_ln14_8_fu_1546_p1;
wire   [63:0] select_ln14_6_fu_1551_p3;
reg   [63:0] select_ln14_6_reg_2805;
wire   [63:0] bitcast_ln14_13_fu_1558_p1;
wire   [63:0] select_ln14_7_fu_1563_p3;
reg   [63:0] select_ln14_7_reg_2815;
wire   [63:0] bitcast_ln14_9_fu_1570_p1;
wire   [63:0] bitcast_ln14_10_fu_1574_p1;
wire   [63:0] bitcast_ln14_14_fu_1578_p1;
wire   [63:0] bitcast_ln14_15_fu_1582_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln9_fu_1272_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1296_p1;
wire   [63:0] zext_ln14_1_fu_1316_p1;
wire   [63:0] zext_ln14_8_fu_1340_p1;
wire   [63:0] zext_ln14_2_fu_1358_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1376_p1;
wire   [63:0] zext_ln14_9_fu_1398_p1;
wire   [63:0] zext_ln14_10_fu_1411_p1;
wire   [63:0] zext_ln14_4_fu_1440_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1461_p1;
wire   [63:0] zext_ln14_6_fu_1498_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1520_p1;
reg   [6:0] s_fu_236;
wire   [6:0] add_ln13_fu_1526_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_240;
reg    ap_predicate_pred743_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [63:0] add6_13_fu_244;
wire   [63:0] grp_fu_1200_p2;
reg   [63:0] add6_25_fu_248;
reg    ap_predicate_pred769_state11;
reg   [63:0] add6_37_fu_252;
reg   [63:0] add6_49_fu_256;
reg    ap_predicate_pred769_state12;
reg   [63:0] add6_511_fu_260;
reg   [63:0] add6_613_fu_264;
reg    ap_predicate_pred769_state13;
reg   [63:0] add6_715_fu_268;
reg   [63:0] add617_fu_272;
reg    ap_predicate_pred804_state10;
reg   [63:0] add6_119_fu_276;
reg   [63:0] add6_221_fu_280;
reg    ap_predicate_pred814_state11;
reg   [63:0] add6_323_fu_284;
reg   [63:0] add6_425_fu_288;
reg    ap_predicate_pred814_state12;
reg   [63:0] add6_527_fu_292;
reg   [63:0] add6_629_fu_296;
reg    ap_predicate_pred814_state13;
reg   [63:0] add6_731_fu_300;
reg   [63:0] add633_fu_304;
reg    ap_predicate_pred844_state10;
reg   [63:0] add6_135_fu_308;
reg   [63:0] add6_237_fu_312;
reg    ap_predicate_pred854_state11;
reg   [63:0] add6_339_fu_316;
reg   [63:0] add6_441_fu_320;
reg    ap_predicate_pred854_state12;
reg   [63:0] add6_543_fu_324;
reg   [63:0] add6_645_fu_328;
reg    ap_predicate_pred854_state13;
reg   [63:0] add6_747_fu_332;
reg   [63:0] add649_fu_336;
reg    ap_predicate_pred884_state10;
reg   [63:0] add6_151_fu_340;
reg   [63:0] add6_253_fu_344;
reg    ap_predicate_pred894_state11;
reg   [63:0] add6_355_fu_348;
reg   [63:0] add6_457_fu_352;
reg    ap_predicate_pred894_state12;
reg   [63:0] add6_559_fu_356;
reg   [63:0] add6_661_fu_360;
reg    ap_predicate_pred894_state13;
reg   [63:0] add6_763_fu_364;
reg   [63:0] add665_fu_368;
reg    ap_predicate_pred924_state10;
reg   [63:0] add6_167_fu_372;
reg   [63:0] add6_269_fu_376;
reg    ap_predicate_pred934_state11;
reg   [63:0] add6_371_fu_380;
reg   [63:0] add6_473_fu_384;
reg    ap_predicate_pred934_state12;
reg   [63:0] add6_575_fu_388;
reg   [63:0] add6_677_fu_392;
reg    ap_predicate_pred934_state13;
reg   [63:0] add6_779_fu_396;
reg   [63:0] add681_fu_400;
reg    ap_predicate_pred964_state10;
reg   [63:0] add6_183_fu_404;
reg   [63:0] add6_285_fu_408;
reg    ap_predicate_pred974_state11;
reg   [63:0] add6_387_fu_412;
reg   [63:0] add6_489_fu_416;
reg    ap_predicate_pred974_state12;
reg   [63:0] add6_591_fu_420;
reg   [63:0] add6_693_fu_424;
reg    ap_predicate_pred974_state13;
reg   [63:0] add6_795_fu_428;
reg   [63:0] add697_fu_432;
reg    ap_predicate_pred1004_state10;
reg   [63:0] add6_199_fu_436;
reg   [63:0] add6_2101_fu_440;
reg    ap_predicate_pred1014_state11;
reg   [63:0] add6_3103_fu_444;
reg   [63:0] add6_4105_fu_448;
reg    ap_predicate_pred1014_state12;
reg   [63:0] add6_5107_fu_452;
reg   [63:0] add6_6109_fu_456;
reg    ap_predicate_pred1014_state13;
reg   [63:0] add6_7111_fu_460;
reg   [63:0] add6113_fu_464;
reg    ap_predicate_pred1055_state10;
reg   [63:0] add6_1115_fu_468;
reg   [63:0] add6_2117_fu_472;
reg    ap_predicate_pred1077_state11;
reg   [63:0] add6_3119_fu_476;
reg   [63:0] add6_4121_fu_480;
reg    ap_predicate_pred1077_state12;
reg   [63:0] add6_5123_fu_484;
reg   [63:0] add6_6125_fu_488;
reg    ap_predicate_pred1077_state13;
reg   [63:0] add6_7127_fu_492;
wire    ap_block_pp0_stage0_01001;
reg    init_0_ce1_local;
reg   [4:0] init_0_address1_local;
reg    init_0_ce0_local;
reg   [4:0] init_0_address0_local;
reg    emission_0_ce1_local;
reg   [10:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [10:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [10:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [10:0] emission_1_address0_local;
reg    init_1_ce1_local;
reg   [4:0] init_1_address1_local;
reg    init_1_ce0_local;
reg   [4:0] init_1_address0_local;
reg   [63:0] grp_fu_1196_p0;
reg   [63:0] grp_fu_1196_p1;
reg   [63:0] grp_fu_1200_p0;
reg   [63:0] grp_fu_1200_p1;
wire   [4:0] lshr_ln9_fu_1262_p4;
wire   [7:0] p_cast_fu_1238_p1;
wire   [10:0] or_ln_fu_1288_p3;
wire   [10:0] or_ln1_fu_1302_p3;
wire   [10:0] add_ln14_fu_1310_p2;
wire   [4:0] or_ln14_1_fu_1332_p3;
wire   [10:0] or_ln14_2_fu_1346_p3;
wire   [10:0] add_ln14_1_fu_1353_p2;
wire   [10:0] or_ln14_3_fu_1364_p3;
wire   [10:0] add_ln14_2_fu_1371_p2;
wire   [4:0] or_ln14_4_fu_1389_p4;
wire   [4:0] or_ln14_7_fu_1404_p3;
wire   [10:0] or_ln14_5_fu_1432_p4;
wire   [10:0] or_ln14_6_fu_1446_p5;
wire   [10:0] add_ln14_3_fu_1456_p2;
wire   [10:0] or_ln14_8_fu_1486_p3;
wire   [10:0] add_ln14_4_fu_1493_p2;
wire   [10:0] or_ln14_9_fu_1508_p3;
wire   [10:0] add_ln14_5_fu_1515_p2;
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
#0 s_fu_236 = 7'd0;
#0 add61_fu_240 = 64'd0;
#0 add6_13_fu_244 = 64'd0;
#0 add6_25_fu_248 = 64'd0;
#0 add6_37_fu_252 = 64'd0;
#0 add6_49_fu_256 = 64'd0;
#0 add6_511_fu_260 = 64'd0;
#0 add6_613_fu_264 = 64'd0;
#0 add6_715_fu_268 = 64'd0;
#0 add617_fu_272 = 64'd0;
#0 add6_119_fu_276 = 64'd0;
#0 add6_221_fu_280 = 64'd0;
#0 add6_323_fu_284 = 64'd0;
#0 add6_425_fu_288 = 64'd0;
#0 add6_527_fu_292 = 64'd0;
#0 add6_629_fu_296 = 64'd0;
#0 add6_731_fu_300 = 64'd0;
#0 add633_fu_304 = 64'd0;
#0 add6_135_fu_308 = 64'd0;
#0 add6_237_fu_312 = 64'd0;
#0 add6_339_fu_316 = 64'd0;
#0 add6_441_fu_320 = 64'd0;
#0 add6_543_fu_324 = 64'd0;
#0 add6_645_fu_328 = 64'd0;
#0 add6_747_fu_332 = 64'd0;
#0 add649_fu_336 = 64'd0;
#0 add6_151_fu_340 = 64'd0;
#0 add6_253_fu_344 = 64'd0;
#0 add6_355_fu_348 = 64'd0;
#0 add6_457_fu_352 = 64'd0;
#0 add6_559_fu_356 = 64'd0;
#0 add6_661_fu_360 = 64'd0;
#0 add6_763_fu_364 = 64'd0;
#0 add665_fu_368 = 64'd0;
#0 add6_167_fu_372 = 64'd0;
#0 add6_269_fu_376 = 64'd0;
#0 add6_371_fu_380 = 64'd0;
#0 add6_473_fu_384 = 64'd0;
#0 add6_575_fu_388 = 64'd0;
#0 add6_677_fu_392 = 64'd0;
#0 add6_779_fu_396 = 64'd0;
#0 add681_fu_400 = 64'd0;
#0 add6_183_fu_404 = 64'd0;
#0 add6_285_fu_408 = 64'd0;
#0 add6_387_fu_412 = 64'd0;
#0 add6_489_fu_416 = 64'd0;
#0 add6_591_fu_420 = 64'd0;
#0 add6_693_fu_424 = 64'd0;
#0 add6_795_fu_428 = 64'd0;
#0 add697_fu_432 = 64'd0;
#0 add6_199_fu_436 = 64'd0;
#0 add6_2101_fu_440 = 64'd0;
#0 add6_3103_fu_444 = 64'd0;
#0 add6_4105_fu_448 = 64'd0;
#0 add6_5107_fu_452 = 64'd0;
#0 add6_6109_fu_456 = 64'd0;
#0 add6_7111_fu_460 = 64'd0;
#0 add6113_fu_464 = 64'd0;
#0 add6_1115_fu_468 = 64'd0;
#0 add6_2117_fu_472 = 64'd0;
#0 add6_3119_fu_476 = 64'd0;
#0 add6_4121_fu_480 = 64'd0;
#0 add6_5123_fu_484 = 64'd0;
#0 add6_6125_fu_488 = 64'd0;
#0 add6_7127_fu_492 = 64'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1200_p0),.din1(grp_fu_1200_p1),.ce(1'b1),.dout(grp_fu_1200_p2));
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
        s_fu_236 <= 7'd0;
    end else if (((tmp_128_reg_2581 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_fu_236 <= add_ln13_fu_1526_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1055_state10 == 1'b1))) begin
        add6113_fu_464 <= grp_fu_3912_p_dout0;
        add6_1115_fu_468 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred804_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add617_fu_272 <= grp_fu_3912_p_dout0;
        add6_119_fu_276 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred743_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add61_fu_240 <= grp_fu_3912_p_dout0;
        add6_13_fu_244 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred844_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add633_fu_304 <= grp_fu_3912_p_dout0;
        add6_135_fu_308 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred884_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add649_fu_336 <= grp_fu_3912_p_dout0;
        add6_151_fu_340 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred924_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add665_fu_368 <= grp_fu_3912_p_dout0;
        add6_167_fu_372 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred964_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add681_fu_400 <= grp_fu_3912_p_dout0;
        add6_183_fu_404 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1004_state10 == 1'b1))) begin
        add697_fu_432 <= grp_fu_3912_p_dout0;
        add6_199_fu_436 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1014_state11 == 1'b1))) begin
        add6_2101_fu_440 <= grp_fu_3912_p_dout0;
        add6_3103_fu_444 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1077_state11 == 1'b1))) begin
        add6_2117_fu_472 <= grp_fu_3912_p_dout0;
        add6_3119_fu_476 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred814_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_221_fu_280 <= grp_fu_3912_p_dout0;
        add6_323_fu_284 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred854_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_237_fu_312 <= grp_fu_3912_p_dout0;
        add6_339_fu_316 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred894_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_253_fu_344 <= grp_fu_3912_p_dout0;
        add6_355_fu_348 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred769_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_25_fu_248 <= grp_fu_3912_p_dout0;
        add6_37_fu_252 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred934_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_269_fu_376 <= grp_fu_3912_p_dout0;
        add6_371_fu_380 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred974_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_285_fu_408 <= grp_fu_3912_p_dout0;
        add6_387_fu_412 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1014_state12 == 1'b1))) begin
        add6_4105_fu_448 <= grp_fu_3912_p_dout0;
        add6_5107_fu_452 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1077_state12 == 1'b1))) begin
        add6_4121_fu_480 <= grp_fu_3912_p_dout0;
        add6_5123_fu_484 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred814_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_425_fu_288 <= grp_fu_3912_p_dout0;
        add6_527_fu_292 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred854_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_441_fu_320 <= grp_fu_3912_p_dout0;
        add6_543_fu_324 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred894_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_457_fu_352 <= grp_fu_3912_p_dout0;
        add6_559_fu_356 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred934_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_473_fu_384 <= grp_fu_3912_p_dout0;
        add6_575_fu_388 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred974_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_489_fu_416 <= grp_fu_3912_p_dout0;
        add6_591_fu_420 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred769_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_49_fu_256 <= grp_fu_3912_p_dout0;
        add6_511_fu_260 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1014_state13 == 1'b1))) begin
        add6_6109_fu_456 <= grp_fu_3912_p_dout0;
        add6_7111_fu_460 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1077_state13 == 1'b1))) begin
        add6_6125_fu_488 <= grp_fu_3912_p_dout0;
        add6_7127_fu_492 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred769_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_613_fu_264 <= grp_fu_3912_p_dout0;
        add6_715_fu_268 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred814_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_629_fu_296 <= grp_fu_3912_p_dout0;
        add6_731_fu_300 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred854_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_645_fu_328 <= grp_fu_3912_p_dout0;
        add6_747_fu_332 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred894_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_661_fu_360 <= grp_fu_3912_p_dout0;
        add6_763_fu_364 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred934_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_677_fu_392 <= grp_fu_3912_p_dout0;
        add6_779_fu_396 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred974_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_693_fu_424 <= grp_fu_3912_p_dout0;
        add6_795_fu_428 <= grp_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred1004_state10 <= (trunc_ln13_reg_2585_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1055_state10 <= (~(trunc_ln13_reg_2585_pp0_iter1_reg == 6'd8) & ~(trunc_ln13_reg_2585_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_2585_pp0_iter1_reg == 6'd24) & ~(trunc_ln13_reg_2585_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_2585_pp0_iter1_reg == 6'd40) & ~(trunc_ln13_reg_2585_pp0_iter1_reg == 6'd48) & ~(trunc_ln13_reg_2585_pp0_iter1_reg == 6'd0));
        ap_predicate_pred743_state10 <= (trunc_ln13_reg_2585_pp0_iter1_reg == 6'd48);
        ap_predicate_pred804_state10 <= (trunc_ln13_reg_2585_pp0_iter1_reg == 6'd40);
        ap_predicate_pred844_state10 <= (trunc_ln13_reg_2585_pp0_iter1_reg == 6'd32);
        ap_predicate_pred884_state10 <= (trunc_ln13_reg_2585_pp0_iter1_reg == 6'd24);
        ap_predicate_pred924_state10 <= (trunc_ln13_reg_2585_pp0_iter1_reg == 6'd16);
        ap_predicate_pred964_state10 <= (trunc_ln13_reg_2585_pp0_iter1_reg == 6'd8);
        conv3_udiv_cast_cast_reg_2566[6 : 0] <= conv3_udiv_cast_cast_fu_1234_p1[6 : 0];
        s_1_reg_2575 <= ap_sig_allocacmp_s_1;
        select_ln14_6_reg_2805 <= select_ln14_6_fu_1551_p3;
        select_ln14_7_reg_2815 <= select_ln14_7_fu_1563_p3;
        tmp_128_reg_2581 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_128_reg_2581_pp0_iter1_reg <= tmp_128_reg_2581;
        tmp_138_reg_2624 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_41_reg_2594 <= {{ap_sig_allocacmp_s_1[5:3]}};
        trunc_ln13_reg_2585 <= trunc_ln13_fu_1258_p1;
        trunc_ln13_reg_2585_pp0_iter1_reg <= trunc_ln13_reg_2585;
        trunc_ln13_reg_2585_pp0_iter2_reg <= trunc_ln13_reg_2585_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred1014_state11 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd0);
        ap_predicate_pred1077_state11 <= (~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd8) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd16) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd24) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd32) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd40) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd48) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd0));
        ap_predicate_pred769_state11 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd48);
        ap_predicate_pred814_state11 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd40);
        ap_predicate_pred854_state11 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd32);
        ap_predicate_pred894_state11 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd24);
        ap_predicate_pred934_state11 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd16);
        ap_predicate_pred974_state11 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd8);
        tmp_129_reg_2665 <= s_1_reg_2575[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred1014_state12 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd0);
        ap_predicate_pred1077_state12 <= (~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd8) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd16) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd24) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd32) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd40) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd48) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd0));
        ap_predicate_pred769_state12 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd48);
        ap_predicate_pred814_state12 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd40);
        ap_predicate_pred854_state12 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd32);
        ap_predicate_pred894_state12 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd24);
        ap_predicate_pred934_state12 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd16);
        ap_predicate_pred974_state12 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd8);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred1014_state13 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd0);
        ap_predicate_pred1077_state13 <= (~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd8) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd16) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd24) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd32) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd40) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd48) & ~(trunc_ln13_reg_2585_pp0_iter2_reg == 6'd0));
        ap_predicate_pred769_state13 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd48);
        ap_predicate_pred814_state13 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd40);
        ap_predicate_pred854_state13 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd32);
        ap_predicate_pred894_state13 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd24);
        ap_predicate_pred934_state13 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd16);
        ap_predicate_pred974_state13 <= (trunc_ln13_reg_2585_pp0_iter2_reg == 6'd8);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_2670 <= init_0_q0;
        init_1_load_1_reg_2685 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        init_0_load_3_reg_2735 <= init_0_q0;
        init_1_load_3_reg_2745 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1218 <= init_0_q1;
        reg_1230 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1222 <= grp_fu_1204_p3;
        reg_1226 <= grp_fu_1211_p3;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6113_out_ap_vld = 1'b1;
    end else begin
        add6113_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add617_out_ap_vld = 1'b1;
    end else begin
        add617_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add633_out_ap_vld = 1'b1;
    end else begin
        add633_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add649_out_ap_vld = 1'b1;
    end else begin
        add649_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add665_out_ap_vld = 1'b1;
    end else begin
        add665_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add681_out_ap_vld = 1'b1;
    end else begin
        add681_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add697_out_ap_vld = 1'b1;
    end else begin
        add697_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1115_out_ap_vld = 1'b1;
    end else begin
        add6_1115_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_119_out_ap_vld = 1'b1;
    end else begin
        add6_119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_135_out_ap_vld = 1'b1;
    end else begin
        add6_135_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_13_out_ap_vld = 1'b1;
    end else begin
        add6_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_151_out_ap_vld = 1'b1;
    end else begin
        add6_151_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_167_out_ap_vld = 1'b1;
    end else begin
        add6_167_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_183_out_ap_vld = 1'b1;
    end else begin
        add6_183_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_199_out_ap_vld = 1'b1;
    end else begin
        add6_199_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2101_out_ap_vld = 1'b1;
    end else begin
        add6_2101_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2117_out_ap_vld = 1'b1;
    end else begin
        add6_2117_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_221_out_ap_vld = 1'b1;
    end else begin
        add6_221_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_237_out_ap_vld = 1'b1;
    end else begin
        add6_237_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_253_out_ap_vld = 1'b1;
    end else begin
        add6_253_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_25_out_ap_vld = 1'b1;
    end else begin
        add6_25_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_269_out_ap_vld = 1'b1;
    end else begin
        add6_269_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_285_out_ap_vld = 1'b1;
    end else begin
        add6_285_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3103_out_ap_vld = 1'b1;
    end else begin
        add6_3103_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3119_out_ap_vld = 1'b1;
    end else begin
        add6_3119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_323_out_ap_vld = 1'b1;
    end else begin
        add6_323_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_339_out_ap_vld = 1'b1;
    end else begin
        add6_339_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_355_out_ap_vld = 1'b1;
    end else begin
        add6_355_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_371_out_ap_vld = 1'b1;
    end else begin
        add6_371_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_37_out_ap_vld = 1'b1;
    end else begin
        add6_37_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_387_out_ap_vld = 1'b1;
    end else begin
        add6_387_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_4105_out_ap_vld = 1'b1;
    end else begin
        add6_4105_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_4121_out_ap_vld = 1'b1;
    end else begin
        add6_4121_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_425_out_ap_vld = 1'b1;
    end else begin
        add6_425_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_441_out_ap_vld = 1'b1;
    end else begin
        add6_441_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_457_out_ap_vld = 1'b1;
    end else begin
        add6_457_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_473_out_ap_vld = 1'b1;
    end else begin
        add6_473_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_489_out_ap_vld = 1'b1;
    end else begin
        add6_489_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_49_out_ap_vld = 1'b1;
    end else begin
        add6_49_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_5107_out_ap_vld = 1'b1;
    end else begin
        add6_5107_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_511_out_ap_vld = 1'b1;
    end else begin
        add6_511_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_5123_out_ap_vld = 1'b1;
    end else begin
        add6_5123_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_527_out_ap_vld = 1'b1;
    end else begin
        add6_527_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_543_out_ap_vld = 1'b1;
    end else begin
        add6_543_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_559_out_ap_vld = 1'b1;
    end else begin
        add6_559_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_575_out_ap_vld = 1'b1;
    end else begin
        add6_575_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_591_out_ap_vld = 1'b1;
    end else begin
        add6_591_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_6109_out_ap_vld = 1'b1;
    end else begin
        add6_6109_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_6125_out_ap_vld = 1'b1;
    end else begin
        add6_6125_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_613_out_ap_vld = 1'b1;
    end else begin
        add6_613_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_629_out_ap_vld = 1'b1;
    end else begin
        add6_629_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_645_out_ap_vld = 1'b1;
    end else begin
        add6_645_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_661_out_ap_vld = 1'b1;
    end else begin
        add6_661_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_677_out_ap_vld = 1'b1;
    end else begin
        add6_677_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_693_out_ap_vld = 1'b1;
    end else begin
        add6_693_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_7111_out_ap_vld = 1'b1;
    end else begin
        add6_7111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_7127_out_ap_vld = 1'b1;
    end else begin
        add6_7127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_715_out_ap_vld = 1'b1;
    end else begin
        add6_715_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_731_out_ap_vld = 1'b1;
    end else begin
        add6_731_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_747_out_ap_vld = 1'b1;
    end else begin
        add6_747_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_763_out_ap_vld = 1'b1;
    end else begin
        add6_763_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_779_out_ap_vld = 1'b1;
    end else begin
        add6_779_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_795_out_ap_vld = 1'b1;
    end else begin
        add6_795_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_128_reg_2581 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_128_reg_2581_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_236;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1520_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1461_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1376_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1316_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1498_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1440_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1358_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1296_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1520_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1461_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1376_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1316_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1498_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1440_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1358_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1296_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1196_p0 = bitcast_ln14_9_fu_1570_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1196_p0 = bitcast_ln14_8_fu_1546_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1196_p0 = bitcast_ln14_7_fu_1482_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1196_p0 = bitcast_ln14_fu_1417_p1;
    end else begin
        grp_fu_1196_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1196_p1 = bitcast_ln14_10_fu_1574_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1196_p1 = bitcast_ln14_5_fu_1536_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1196_p1 = bitcast_ln14_3_fu_1472_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1196_p1 = bitcast_ln14_1_fu_1422_p1;
    end else begin
        grp_fu_1196_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1200_p0 = bitcast_ln14_14_fu_1578_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1200_p0 = bitcast_ln14_13_fu_1558_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1200_p0 = bitcast_ln14_12_fu_1504_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1200_p0 = bitcast_ln14_11_fu_1467_p1;
    end else begin
        grp_fu_1200_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1200_p1 = bitcast_ln14_15_fu_1582_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1200_p1 = bitcast_ln14_6_fu_1541_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1200_p1 = bitcast_ln14_4_fu_1477_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1200_p1 = bitcast_ln14_2_fu_1427_p1;
    end else begin
        grp_fu_1200_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_10_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_8_fu_1340_p1;
        end else begin
            init_0_address0_local = 'bx;
        end
    end else begin
        init_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_9_fu_1398_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_fu_1272_p1;
        end else begin
            init_0_address1_local = 'bx;
        end
    end else begin
        init_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_10_fu_1411_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_8_fu_1340_p1;
        end else begin
            init_1_address0_local = 'bx;
        end
    end else begin
        init_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_9_fu_1398_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_fu_1272_p1;
        end else begin
            init_1_address1_local = 'bx;
        end
    end else begin
        init_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
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
assign add6113_out = add6113_fu_464;
assign add617_out = add617_fu_272;
assign add61_out = add61_fu_240;
assign add633_out = add633_fu_304;
assign add649_out = add649_fu_336;
assign add665_out = add665_fu_368;
assign add681_out = add681_fu_400;
assign add697_out = add697_fu_432;
assign add6_1115_out = add6_1115_fu_468;
assign add6_119_out = add6_119_fu_276;
assign add6_135_out = add6_135_fu_308;
assign add6_13_out = add6_13_fu_244;
assign add6_151_out = add6_151_fu_340;
assign add6_167_out = add6_167_fu_372;
assign add6_183_out = add6_183_fu_404;
assign add6_199_out = add6_199_fu_436;
assign add6_2101_out = add6_2101_fu_440;
assign add6_2117_out = add6_2117_fu_472;
assign add6_221_out = add6_221_fu_280;
assign add6_237_out = add6_237_fu_312;
assign add6_253_out = add6_253_fu_344;
assign add6_25_out = add6_25_fu_248;
assign add6_269_out = add6_269_fu_376;
assign add6_285_out = add6_285_fu_408;
assign add6_3103_out = add6_3103_fu_444;
assign add6_3119_out = add6_3119_fu_476;
assign add6_323_out = add6_323_fu_284;
assign add6_339_out = add6_339_fu_316;
assign add6_355_out = add6_355_fu_348;
assign add6_371_out = add6_371_fu_380;
assign add6_37_out = add6_37_fu_252;
assign add6_387_out = add6_387_fu_412;
assign add6_4105_out = add6_4105_fu_448;
assign add6_4121_out = add6_4121_fu_480;
assign add6_425_out = add6_425_fu_288;
assign add6_441_out = add6_441_fu_320;
assign add6_457_out = add6_457_fu_352;
assign add6_473_out = add6_473_fu_384;
assign add6_489_out = add6_489_fu_416;
assign add6_49_out = add6_49_fu_256;
assign add6_5107_out = add6_5107_fu_452;
assign add6_511_out = add6_511_fu_260;
assign add6_5123_out = add6_5123_fu_484;
assign add6_527_out = add6_527_fu_292;
assign add6_543_out = add6_543_fu_324;
assign add6_559_out = add6_559_fu_356;
assign add6_575_out = add6_575_fu_388;
assign add6_591_out = add6_591_fu_420;
assign add6_6109_out = add6_6109_fu_456;
assign add6_6125_out = add6_6125_fu_488;
assign add6_613_out = add6_613_fu_264;
assign add6_629_out = add6_629_fu_296;
assign add6_645_out = add6_645_fu_328;
assign add6_661_out = add6_661_fu_360;
assign add6_677_out = add6_677_fu_392;
assign add6_693_out = add6_693_fu_424;
assign add6_7111_out = add6_7111_fu_460;
assign add6_7127_out = add6_7127_fu_492;
assign add6_715_out = add6_715_fu_268;
assign add6_731_out = add6_731_fu_300;
assign add6_747_out = add6_747_fu_332;
assign add6_763_out = add6_763_fu_364;
assign add6_779_out = add6_779_fu_396;
assign add6_795_out = add6_795_fu_428;
assign add_ln13_fu_1526_p2 = (s_1_reg_2575 + 7'd8);
assign add_ln14_1_fu_1353_p2 = (or_ln14_2_fu_1346_p3 + conv3_udiv_cast_cast_reg_2566);
assign add_ln14_2_fu_1371_p2 = (or_ln14_3_fu_1364_p3 + conv3_udiv_cast_cast_reg_2566);
assign add_ln14_3_fu_1456_p2 = (or_ln14_6_fu_1446_p5 + conv3_udiv_cast_cast_reg_2566);
assign add_ln14_4_fu_1493_p2 = (or_ln14_8_fu_1486_p3 + conv3_udiv_cast_cast_reg_2566);
assign add_ln14_5_fu_1515_p2 = (or_ln14_9_fu_1508_p3 + conv3_udiv_cast_cast_reg_2566);
assign add_ln14_fu_1310_p2 = (or_ln1_fu_1302_p3 + conv3_udiv_cast_cast_fu_1234_p1);
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
assign bitcast_ln14_10_fu_1574_p1 = select_ln14_6_reg_2805;
assign bitcast_ln14_11_fu_1467_p1 = reg_1230;
assign bitcast_ln14_12_fu_1504_p1 = init_1_load_1_reg_2685;
assign bitcast_ln14_13_fu_1558_p1 = reg_1230;
assign bitcast_ln14_14_fu_1578_p1 = init_1_load_3_reg_2745;
assign bitcast_ln14_15_fu_1582_p1 = select_ln14_7_reg_2815;
assign bitcast_ln14_1_fu_1422_p1 = reg_1222;
assign bitcast_ln14_2_fu_1427_p1 = reg_1226;
assign bitcast_ln14_3_fu_1472_p1 = reg_1222;
assign bitcast_ln14_4_fu_1477_p1 = reg_1226;
assign bitcast_ln14_5_fu_1536_p1 = reg_1222;
assign bitcast_ln14_6_fu_1541_p1 = reg_1226;
assign bitcast_ln14_7_fu_1482_p1 = init_0_load_1_reg_2670;
assign bitcast_ln14_8_fu_1546_p1 = reg_1218;
assign bitcast_ln14_9_fu_1570_p1 = init_0_load_3_reg_2735;
assign bitcast_ln14_fu_1417_p1 = reg_1218;
assign conv3_udiv_cast_cast_fu_1234_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_1204_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign grp_fu_1211_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign grp_fu_3912_p_ce = 1'b1;
assign grp_fu_3912_p_din0 = grp_fu_1196_p0;
assign grp_fu_3912_p_din1 = grp_fu_1196_p1;
assign grp_fu_3912_p_opcode = 2'd0;
assign init_0_address0 = init_0_address0_local;
assign init_0_address1 = init_0_address1_local;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = init_1_address0_local;
assign init_1_address1 = init_1_address1_local;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign lshr_ln9_fu_1262_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln14_1_fu_1332_p3 = {{tmp_138_fu_1322_p4}, {1'd1}};
assign or_ln14_2_fu_1346_p3 = {{tmp_138_reg_2624}, {7'd64}};
assign or_ln14_3_fu_1364_p3 = {{tmp_138_reg_2624}, {7'd96}};
assign or_ln14_4_fu_1389_p4 = {{{tmp_41_reg_2594}, {1'd1}}, {tmp_129_fu_1382_p3}};
assign or_ln14_5_fu_1432_p4 = {{{tmp_41_reg_2594}, {1'd1}}, {conv3_udiv}};
assign or_ln14_6_fu_1446_p5 = {{{{tmp_41_reg_2594}, {1'd1}}, {tmp_129_reg_2665}}, {6'd32}};
assign or_ln14_7_fu_1404_p3 = {{tmp_41_reg_2594}, {2'd3}};
assign or_ln14_8_fu_1486_p3 = {{tmp_41_reg_2594}, {8'd192}};
assign or_ln14_9_fu_1508_p3 = {{tmp_41_reg_2594}, {8'd224}};
assign or_ln1_fu_1302_p3 = {{lshr_ln9_fu_1262_p4}, {6'd32}};
assign or_ln_fu_1288_p3 = {{tmp_41_fu_1278_p4}, {p_cast_fu_1238_p1}};
assign p_cast_fu_1238_p1 = empty_9;
assign select_ln14_6_fu_1551_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_7_fu_1563_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign tmp_129_fu_1382_p3 = s_1_reg_2575[32'd1];
assign tmp_138_fu_1322_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_41_fu_1278_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign trunc_ln13_fu_1258_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln14_10_fu_1411_p1 = or_ln14_7_fu_1404_p3;
assign zext_ln14_1_fu_1316_p1 = add_ln14_fu_1310_p2;
assign zext_ln14_2_fu_1358_p1 = add_ln14_1_fu_1353_p2;
assign zext_ln14_3_fu_1376_p1 = add_ln14_2_fu_1371_p2;
assign zext_ln14_4_fu_1440_p1 = or_ln14_5_fu_1432_p4;
assign zext_ln14_5_fu_1461_p1 = add_ln14_3_fu_1456_p2;
assign zext_ln14_6_fu_1498_p1 = add_ln14_4_fu_1493_p2;
assign zext_ln14_7_fu_1520_p1 = add_ln14_5_fu_1515_p2;
assign zext_ln14_8_fu_1340_p1 = or_ln14_1_fu_1332_p3;
assign zext_ln14_9_fu_1398_p1 = or_ln14_4_fu_1389_p4;
assign zext_ln14_fu_1296_p1 = or_ln_fu_1288_p3;
assign zext_ln9_fu_1272_p1 = lshr_ln9_fu_1262_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_2566[10:7] <= 4'b0000;
end
endmodule 