module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_0_address0,init_0_ce0,init_0_q0,conv3_udiv_cast,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,init_1_address0,init_1_ce0,init_1_q0,add6_1127_out,add6_1127_out_ap_vld,add6125_out,add6125_out_ap_vld,add6_1123_out,add6_1123_out_ap_vld,add6121_out,add6121_out_ap_vld,add6_1119_out,add6_1119_out_ap_vld,add6117_out,add6117_out_ap_vld,add6_1115_out,add6_1115_out_ap_vld,add6113_out,add6113_out_ap_vld,add6_1111_out,add6_1111_out_ap_vld,add6109_out,add6109_out_ap_vld,add6_1107_out,add6_1107_out_ap_vld,add6105_out,add6105_out_ap_vld,add6_1103_out,add6_1103_out_ap_vld,add6101_out,add6101_out_ap_vld,add6_199_out,add6_199_out_ap_vld,add697_out,add697_out_ap_vld,add6_195_out,add6_195_out_ap_vld,add693_out,add693_out_ap_vld,add6_191_out,add6_191_out_ap_vld,add689_out,add689_out_ap_vld,add6_187_out,add6_187_out_ap_vld,add685_out,add685_out_ap_vld,add6_183_out,add6_183_out_ap_vld,add681_out,add681_out_ap_vld,add6_179_out,add6_179_out_ap_vld,add677_out,add677_out_ap_vld,add6_175_out,add6_175_out_ap_vld,add673_out,add673_out_ap_vld,add6_171_out,add6_171_out_ap_vld,add669_out,add669_out_ap_vld,add6_167_out,add6_167_out_ap_vld,add665_out,add665_out_ap_vld,add6_163_out,add6_163_out_ap_vld,add661_out,add661_out_ap_vld,add6_159_out,add6_159_out_ap_vld,add657_out,add657_out_ap_vld,add6_155_out,add6_155_out_ap_vld,add653_out,add653_out_ap_vld,add6_151_out,add6_151_out_ap_vld,add649_out,add649_out_ap_vld,add6_147_out,add6_147_out_ap_vld,add645_out,add645_out_ap_vld,add6_143_out,add6_143_out_ap_vld,add641_out,add641_out_ap_vld,add6_139_out,add6_139_out_ap_vld,add637_out,add637_out_ap_vld,add6_135_out,add6_135_out_ap_vld,add633_out,add633_out_ap_vld,add6_131_out,add6_131_out_ap_vld,add629_out,add629_out_ap_vld,add6_127_out,add6_127_out_ap_vld,add625_out,add625_out_ap_vld,add6_123_out,add6_123_out_ap_vld,add621_out,add621_out_ap_vld,add6_119_out,add6_119_out_ap_vld,add617_out,add617_out_ap_vld,add6_115_out,add6_115_out_ap_vld,add613_out,add613_out_ap_vld,add6_111_out,add6_111_out_ap_vld,add69_out,add69_out_ap_vld,add6_17_out,add6_17_out_ap_vld,add65_out,add65_out_ap_vld,add6_13_out,add6_13_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_3910_p_din0,grp_fu_3910_p_din1,grp_fu_3910_p_opcode,grp_fu_3910_p_dout0,grp_fu_3910_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
input  [6:0] conv3_udiv_cast;
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
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [63:0] add6_1127_out;
output   add6_1127_out_ap_vld;
output  [63:0] add6125_out;
output   add6125_out_ap_vld;
output  [63:0] add6_1123_out;
output   add6_1123_out_ap_vld;
output  [63:0] add6121_out;
output   add6121_out_ap_vld;
output  [63:0] add6_1119_out;
output   add6_1119_out_ap_vld;
output  [63:0] add6117_out;
output   add6117_out_ap_vld;
output  [63:0] add6_1115_out;
output   add6_1115_out_ap_vld;
output  [63:0] add6113_out;
output   add6113_out_ap_vld;
output  [63:0] add6_1111_out;
output   add6_1111_out_ap_vld;
output  [63:0] add6109_out;
output   add6109_out_ap_vld;
output  [63:0] add6_1107_out;
output   add6_1107_out_ap_vld;
output  [63:0] add6105_out;
output   add6105_out_ap_vld;
output  [63:0] add6_1103_out;
output   add6_1103_out_ap_vld;
output  [63:0] add6101_out;
output   add6101_out_ap_vld;
output  [63:0] add6_199_out;
output   add6_199_out_ap_vld;
output  [63:0] add697_out;
output   add697_out_ap_vld;
output  [63:0] add6_195_out;
output   add6_195_out_ap_vld;
output  [63:0] add693_out;
output   add693_out_ap_vld;
output  [63:0] add6_191_out;
output   add6_191_out_ap_vld;
output  [63:0] add689_out;
output   add689_out_ap_vld;
output  [63:0] add6_187_out;
output   add6_187_out_ap_vld;
output  [63:0] add685_out;
output   add685_out_ap_vld;
output  [63:0] add6_183_out;
output   add6_183_out_ap_vld;
output  [63:0] add681_out;
output   add681_out_ap_vld;
output  [63:0] add6_179_out;
output   add6_179_out_ap_vld;
output  [63:0] add677_out;
output   add677_out_ap_vld;
output  [63:0] add6_175_out;
output   add6_175_out_ap_vld;
output  [63:0] add673_out;
output   add673_out_ap_vld;
output  [63:0] add6_171_out;
output   add6_171_out_ap_vld;
output  [63:0] add669_out;
output   add669_out_ap_vld;
output  [63:0] add6_167_out;
output   add6_167_out_ap_vld;
output  [63:0] add665_out;
output   add665_out_ap_vld;
output  [63:0] add6_163_out;
output   add6_163_out_ap_vld;
output  [63:0] add661_out;
output   add661_out_ap_vld;
output  [63:0] add6_159_out;
output   add6_159_out_ap_vld;
output  [63:0] add657_out;
output   add657_out_ap_vld;
output  [63:0] add6_155_out;
output   add6_155_out_ap_vld;
output  [63:0] add653_out;
output   add653_out_ap_vld;
output  [63:0] add6_151_out;
output   add6_151_out_ap_vld;
output  [63:0] add649_out;
output   add649_out_ap_vld;
output  [63:0] add6_147_out;
output   add6_147_out_ap_vld;
output  [63:0] add645_out;
output   add645_out_ap_vld;
output  [63:0] add6_143_out;
output   add6_143_out_ap_vld;
output  [63:0] add641_out;
output   add641_out_ap_vld;
output  [63:0] add6_139_out;
output   add6_139_out_ap_vld;
output  [63:0] add637_out;
output   add637_out_ap_vld;
output  [63:0] add6_135_out;
output   add6_135_out_ap_vld;
output  [63:0] add633_out;
output   add633_out_ap_vld;
output  [63:0] add6_131_out;
output   add6_131_out_ap_vld;
output  [63:0] add629_out;
output   add629_out_ap_vld;
output  [63:0] add6_127_out;
output   add6_127_out_ap_vld;
output  [63:0] add625_out;
output   add625_out_ap_vld;
output  [63:0] add6_123_out;
output   add6_123_out_ap_vld;
output  [63:0] add621_out;
output   add621_out_ap_vld;
output  [63:0] add6_119_out;
output   add6_119_out_ap_vld;
output  [63:0] add617_out;
output   add617_out_ap_vld;
output  [63:0] add6_115_out;
output   add6_115_out_ap_vld;
output  [63:0] add613_out;
output   add613_out_ap_vld;
output  [63:0] add6_111_out;
output   add6_111_out_ap_vld;
output  [63:0] add69_out;
output   add69_out_ap_vld;
output  [63:0] add6_17_out;
output   add6_17_out_ap_vld;
output  [63:0] add65_out;
output   add65_out_ap_vld;
output  [63:0] add6_13_out;
output   add6_13_out_ap_vld;
output  [63:0] add61_out;
output   add61_out_ap_vld;
output  [63:0] grp_fu_3910_p_din0;
output  [63:0] grp_fu_3910_p_din1;
output  [1:0] grp_fu_3910_p_opcode;
input  [63:0] grp_fu_3910_p_dout0;
output   grp_fu_3910_p_ce;
reg ap_idle;
reg add6_1127_out_ap_vld;
reg add6125_out_ap_vld;
reg add6_1123_out_ap_vld;
reg add6121_out_ap_vld;
reg add6_1119_out_ap_vld;
reg add6117_out_ap_vld;
reg add6_1115_out_ap_vld;
reg add6113_out_ap_vld;
reg add6_1111_out_ap_vld;
reg add6109_out_ap_vld;
reg add6_1107_out_ap_vld;
reg add6105_out_ap_vld;
reg add6_1103_out_ap_vld;
reg add6101_out_ap_vld;
reg add6_199_out_ap_vld;
reg add697_out_ap_vld;
reg add6_195_out_ap_vld;
reg add693_out_ap_vld;
reg add6_191_out_ap_vld;
reg add689_out_ap_vld;
reg add6_187_out_ap_vld;
reg add685_out_ap_vld;
reg add6_183_out_ap_vld;
reg add681_out_ap_vld;
reg add6_179_out_ap_vld;
reg add677_out_ap_vld;
reg add6_175_out_ap_vld;
reg add673_out_ap_vld;
reg add6_171_out_ap_vld;
reg add669_out_ap_vld;
reg add6_167_out_ap_vld;
reg add665_out_ap_vld;
reg add6_163_out_ap_vld;
reg add661_out_ap_vld;
reg add6_159_out_ap_vld;
reg add657_out_ap_vld;
reg add6_155_out_ap_vld;
reg add653_out_ap_vld;
reg add6_151_out_ap_vld;
reg add649_out_ap_vld;
reg add6_147_out_ap_vld;
reg add645_out_ap_vld;
reg add6_143_out_ap_vld;
reg add641_out_ap_vld;
reg add6_139_out_ap_vld;
reg add637_out_ap_vld;
reg add6_135_out_ap_vld;
reg add633_out_ap_vld;
reg add6_131_out_ap_vld;
reg add629_out_ap_vld;
reg add6_127_out_ap_vld;
reg add625_out_ap_vld;
reg add6_123_out_ap_vld;
reg add621_out_ap_vld;
reg add6_119_out_ap_vld;
reg add617_out_ap_vld;
reg add6_115_out_ap_vld;
reg add613_out_ap_vld;
reg add6_111_out_ap_vld;
reg add69_out_ap_vld;
reg add6_17_out_ap_vld;
reg add65_out_ap_vld;
reg add6_13_out_ap_vld;
reg add61_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_127_fu_1066_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_127_reg_2148;
reg   [0:0] tmp_127_reg_2148_pp0_iter1_reg;
reg   [0:0] tmp_127_reg_2148_pp0_iter2_reg;
reg   [0:0] tmp_127_reg_2148_pp0_iter3_reg;
reg   [0:0] tmp_127_reg_2148_pp0_iter4_reg;
reg   [0:0] tmp_127_reg_2148_pp0_iter5_reg;
reg   [0:0] tmp_127_reg_2148_pp0_iter6_reg;
reg   [0:0] tmp_127_reg_2148_pp0_iter7_reg;
wire   [5:0] trunc_ln13_fu_1074_p1;
reg   [5:0] trunc_ln13_reg_2152;
reg   [5:0] trunc_ln13_reg_2152_pp0_iter1_reg;
reg   [5:0] trunc_ln13_reg_2152_pp0_iter2_reg;
reg   [5:0] trunc_ln13_reg_2152_pp0_iter3_reg;
reg   [5:0] trunc_ln13_reg_2152_pp0_iter4_reg;
reg   [5:0] trunc_ln13_reg_2152_pp0_iter5_reg;
reg   [5:0] trunc_ln13_reg_2152_pp0_iter6_reg;
reg   [5:0] trunc_ln13_reg_2152_pp0_iter7_reg;
reg   [63:0] init_0_load_reg_2186;
wire   [63:0] select_ln14_fu_1145_p3;
reg   [63:0] select_ln14_reg_2191;
reg   [63:0] init_1_load_reg_2196;
wire   [63:0] select_ln14_1_fu_1152_p3;
reg   [63:0] select_ln14_1_reg_2201;
wire   [63:0] bitcast_ln14_fu_1159_p1;
wire   [63:0] bitcast_ln14_1_fu_1163_p1;
wire   [63:0] zext_ln9_fu_1088_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1108_p1;
wire   [63:0] zext_ln14_1_fu_1128_p1;
reg   [6:0] s_fu_250;
wire   [6:0] add_ln13_fu_1134_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_254;
reg    ap_predicate_pred986_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [63:0] add6_13_fu_258;
wire   [63:0] grp_fu_1050_p2;
reg   [63:0] add65_fu_262;
reg    ap_predicate_pred1012_state10;
reg   [63:0] add6_17_fu_266;
reg   [63:0] add69_fu_270;
reg    ap_predicate_pred1024_state10;
reg   [63:0] add6_111_fu_274;
reg   [63:0] add613_fu_278;
reg    ap_predicate_pred1036_state10;
reg   [63:0] add6_115_fu_282;
reg   [63:0] add617_fu_286;
reg    ap_predicate_pred1048_state10;
reg   [63:0] add6_119_fu_290;
reg   [63:0] add621_fu_294;
reg    ap_predicate_pred1060_state10;
reg   [63:0] add6_123_fu_298;
reg   [63:0] add625_fu_302;
reg    ap_predicate_pred1072_state10;
reg   [63:0] add6_127_fu_306;
reg   [63:0] add629_fu_310;
reg    ap_predicate_pred1084_state10;
reg   [63:0] add6_131_fu_314;
reg   [63:0] add633_fu_318;
reg    ap_predicate_pred1096_state10;
reg   [63:0] add6_135_fu_322;
reg   [63:0] add637_fu_326;
reg    ap_predicate_pred1108_state10;
reg   [63:0] add6_139_fu_330;
reg   [63:0] add641_fu_334;
reg    ap_predicate_pred1120_state10;
reg   [63:0] add6_143_fu_338;
reg   [63:0] add645_fu_342;
reg    ap_predicate_pred1132_state10;
reg   [63:0] add6_147_fu_346;
reg   [63:0] add649_fu_350;
reg    ap_predicate_pred1144_state10;
reg   [63:0] add6_151_fu_354;
reg   [63:0] add653_fu_358;
reg    ap_predicate_pred1156_state10;
reg   [63:0] add6_155_fu_362;
reg   [63:0] add657_fu_366;
reg    ap_predicate_pred1168_state10;
reg   [63:0] add6_159_fu_370;
reg   [63:0] add661_fu_374;
reg    ap_predicate_pred1180_state10;
reg   [63:0] add6_163_fu_378;
reg   [63:0] add665_fu_382;
reg    ap_predicate_pred1192_state10;
reg   [63:0] add6_167_fu_386;
reg   [63:0] add669_fu_390;
reg    ap_predicate_pred1204_state10;
reg   [63:0] add6_171_fu_394;
reg   [63:0] add673_fu_398;
reg    ap_predicate_pred1216_state10;
reg   [63:0] add6_175_fu_402;
reg   [63:0] add677_fu_406;
reg    ap_predicate_pred1228_state10;
reg   [63:0] add6_179_fu_410;
reg   [63:0] add681_fu_414;
reg    ap_predicate_pred1240_state10;
reg   [63:0] add6_183_fu_418;
reg   [63:0] add685_fu_422;
reg    ap_predicate_pred1252_state10;
reg   [63:0] add6_187_fu_426;
reg   [63:0] add689_fu_430;
reg    ap_predicate_pred1264_state10;
reg   [63:0] add6_191_fu_434;
reg   [63:0] add693_fu_438;
reg    ap_predicate_pred1276_state10;
reg   [63:0] add6_195_fu_442;
reg   [63:0] add697_fu_446;
reg    ap_predicate_pred1288_state10;
reg   [63:0] add6_199_fu_450;
reg   [63:0] add6101_fu_454;
reg    ap_predicate_pred1300_state10;
reg   [63:0] add6_1103_fu_458;
reg   [63:0] add6105_fu_462;
reg    ap_predicate_pred1312_state10;
reg   [63:0] add6_1107_fu_466;
reg   [63:0] add6109_fu_470;
reg    ap_predicate_pred1324_state10;
reg   [63:0] add6_1111_fu_474;
reg   [63:0] add6113_fu_478;
reg    ap_predicate_pred1336_state10;
reg   [63:0] add6_1115_fu_482;
reg   [63:0] add6117_fu_486;
reg    ap_predicate_pred1348_state10;
reg   [63:0] add6_1119_fu_490;
reg   [63:0] add6121_fu_494;
reg    ap_predicate_pred1360_state10;
reg   [63:0] add6_1123_fu_498;
reg   [63:0] add6125_fu_502;
reg    ap_predicate_pred1431_state10;
reg   [63:0] add6_1127_fu_506;
wire    ap_block_pp0_stage0_01001;
reg    init_0_ce0_local;
reg    emission_0_ce1_local;
reg    emission_0_ce0_local;
reg    emission_1_ce1_local;
reg    emission_1_ce0_local;
reg    init_1_ce0_local;
wire   [63:0] grp_fu_1050_p0;
wire   [63:0] grp_fu_1050_p1;
wire   [4:0] lshr_ln9_fu_1078_p4;
wire   [10:0] shl_ln_fu_1094_p3;
wire   [10:0] conv3_udiv_cast_cast_fu_1054_p1;
wire   [10:0] add_ln14_fu_1102_p2;
wire   [10:0] or_ln_fu_1114_p3;
wire   [10:0] add_ln14_1_fu_1122_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 s_fu_250 = 7'd0;
#0 add61_fu_254 = 64'd0;
#0 add6_13_fu_258 = 64'd0;
#0 add65_fu_262 = 64'd0;
#0 add6_17_fu_266 = 64'd0;
#0 add69_fu_270 = 64'd0;
#0 add6_111_fu_274 = 64'd0;
#0 add613_fu_278 = 64'd0;
#0 add6_115_fu_282 = 64'd0;
#0 add617_fu_286 = 64'd0;
#0 add6_119_fu_290 = 64'd0;
#0 add621_fu_294 = 64'd0;
#0 add6_123_fu_298 = 64'd0;
#0 add625_fu_302 = 64'd0;
#0 add6_127_fu_306 = 64'd0;
#0 add629_fu_310 = 64'd0;
#0 add6_131_fu_314 = 64'd0;
#0 add633_fu_318 = 64'd0;
#0 add6_135_fu_322 = 64'd0;
#0 add637_fu_326 = 64'd0;
#0 add6_139_fu_330 = 64'd0;
#0 add641_fu_334 = 64'd0;
#0 add6_143_fu_338 = 64'd0;
#0 add645_fu_342 = 64'd0;
#0 add6_147_fu_346 = 64'd0;
#0 add649_fu_350 = 64'd0;
#0 add6_151_fu_354 = 64'd0;
#0 add653_fu_358 = 64'd0;
#0 add6_155_fu_362 = 64'd0;
#0 add657_fu_366 = 64'd0;
#0 add6_159_fu_370 = 64'd0;
#0 add661_fu_374 = 64'd0;
#0 add6_163_fu_378 = 64'd0;
#0 add665_fu_382 = 64'd0;
#0 add6_167_fu_386 = 64'd0;
#0 add669_fu_390 = 64'd0;
#0 add6_171_fu_394 = 64'd0;
#0 add673_fu_398 = 64'd0;
#0 add6_175_fu_402 = 64'd0;
#0 add677_fu_406 = 64'd0;
#0 add6_179_fu_410 = 64'd0;
#0 add681_fu_414 = 64'd0;
#0 add6_183_fu_418 = 64'd0;
#0 add685_fu_422 = 64'd0;
#0 add6_187_fu_426 = 64'd0;
#0 add689_fu_430 = 64'd0;
#0 add6_191_fu_434 = 64'd0;
#0 add693_fu_438 = 64'd0;
#0 add6_195_fu_442 = 64'd0;
#0 add697_fu_446 = 64'd0;
#0 add6_199_fu_450 = 64'd0;
#0 add6101_fu_454 = 64'd0;
#0 add6_1103_fu_458 = 64'd0;
#0 add6105_fu_462 = 64'd0;
#0 add6_1107_fu_466 = 64'd0;
#0 add6109_fu_470 = 64'd0;
#0 add6_1111_fu_474 = 64'd0;
#0 add6113_fu_478 = 64'd0;
#0 add6_1115_fu_482 = 64'd0;
#0 add6117_fu_486 = 64'd0;
#0 add6_1119_fu_490 = 64'd0;
#0 add6121_fu_494 = 64'd0;
#0 add6_1123_fu_498 = 64'd0;
#0 add6125_fu_502 = 64'd0;
#0 add6_1127_fu_506 = 64'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1050_p0),.din1(grp_fu_1050_p1),.ce(1'b1),.dout(grp_fu_1050_p2));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_127_fu_1066_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            s_fu_250 <= add_ln13_fu_1134_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            s_fu_250 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1300_state10 == 1'b1))) begin
        add6101_fu_454 <= grp_fu_3910_p_dout0;
        add6_1103_fu_458 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1312_state10 == 1'b1))) begin
        add6105_fu_462 <= grp_fu_3910_p_dout0;
        add6_1107_fu_466 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1324_state10 == 1'b1))) begin
        add6109_fu_470 <= grp_fu_3910_p_dout0;
        add6_1111_fu_474 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1336_state10 == 1'b1))) begin
        add6113_fu_478 <= grp_fu_3910_p_dout0;
        add6_1115_fu_482 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1348_state10 == 1'b1))) begin
        add6117_fu_486 <= grp_fu_3910_p_dout0;
        add6_1119_fu_490 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1360_state10 == 1'b1))) begin
        add6121_fu_494 <= grp_fu_3910_p_dout0;
        add6_1123_fu_498 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1431_state10 == 1'b1))) begin
        add6125_fu_502 <= grp_fu_3910_p_dout0;
        add6_1127_fu_506 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1036_state10 == 1'b1))) begin
        add613_fu_278 <= grp_fu_3910_p_dout0;
        add6_115_fu_282 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1048_state10 == 1'b1))) begin
        add617_fu_286 <= grp_fu_3910_p_dout0;
        add6_119_fu_290 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred986_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        add61_fu_254 <= grp_fu_3910_p_dout0;
        add6_13_fu_258 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1060_state10 == 1'b1))) begin
        add621_fu_294 <= grp_fu_3910_p_dout0;
        add6_123_fu_298 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1072_state10 == 1'b1))) begin
        add625_fu_302 <= grp_fu_3910_p_dout0;
        add6_127_fu_306 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1084_state10 == 1'b1))) begin
        add629_fu_310 <= grp_fu_3910_p_dout0;
        add6_131_fu_314 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1096_state10 == 1'b1))) begin
        add633_fu_318 <= grp_fu_3910_p_dout0;
        add6_135_fu_322 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1108_state10 == 1'b1))) begin
        add637_fu_326 <= grp_fu_3910_p_dout0;
        add6_139_fu_330 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1120_state10 == 1'b1))) begin
        add641_fu_334 <= grp_fu_3910_p_dout0;
        add6_143_fu_338 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1132_state10 == 1'b1))) begin
        add645_fu_342 <= grp_fu_3910_p_dout0;
        add6_147_fu_346 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1144_state10 == 1'b1))) begin
        add649_fu_350 <= grp_fu_3910_p_dout0;
        add6_151_fu_354 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1156_state10 == 1'b1))) begin
        add653_fu_358 <= grp_fu_3910_p_dout0;
        add6_155_fu_362 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1168_state10 == 1'b1))) begin
        add657_fu_366 <= grp_fu_3910_p_dout0;
        add6_159_fu_370 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1012_state10 == 1'b1))) begin
        add65_fu_262 <= grp_fu_3910_p_dout0;
        add6_17_fu_266 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1180_state10 == 1'b1))) begin
        add661_fu_374 <= grp_fu_3910_p_dout0;
        add6_163_fu_378 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1192_state10 == 1'b1))) begin
        add665_fu_382 <= grp_fu_3910_p_dout0;
        add6_167_fu_386 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1204_state10 == 1'b1))) begin
        add669_fu_390 <= grp_fu_3910_p_dout0;
        add6_171_fu_394 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1216_state10 == 1'b1))) begin
        add673_fu_398 <= grp_fu_3910_p_dout0;
        add6_175_fu_402 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1228_state10 == 1'b1))) begin
        add677_fu_406 <= grp_fu_3910_p_dout0;
        add6_179_fu_410 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1240_state10 == 1'b1))) begin
        add681_fu_414 <= grp_fu_3910_p_dout0;
        add6_183_fu_418 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1252_state10 == 1'b1))) begin
        add685_fu_422 <= grp_fu_3910_p_dout0;
        add6_187_fu_426 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1264_state10 == 1'b1))) begin
        add689_fu_430 <= grp_fu_3910_p_dout0;
        add6_191_fu_434 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1276_state10 == 1'b1))) begin
        add693_fu_438 <= grp_fu_3910_p_dout0;
        add6_195_fu_442 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1288_state10 == 1'b1))) begin
        add697_fu_446 <= grp_fu_3910_p_dout0;
        add6_199_fu_450 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1024_state10 == 1'b1))) begin
        add69_fu_270 <= grp_fu_3910_p_dout0;
        add6_111_fu_274 <= grp_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        init_0_load_reg_2186 <= init_0_q0;
        init_1_load_reg_2196 <= init_1_q0;
        select_ln14_1_reg_2201 <= select_ln14_1_fu_1152_p3;
        select_ln14_reg_2191 <= select_ln14_fu_1145_p3;
        tmp_127_reg_2148 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_127_reg_2148_pp0_iter1_reg <= tmp_127_reg_2148;
        trunc_ln13_reg_2152 <= trunc_ln13_fu_1074_p1;
        trunc_ln13_reg_2152_pp0_iter1_reg <= trunc_ln13_reg_2152;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_predicate_pred1012_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd58);
        ap_predicate_pred1024_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd56);
        ap_predicate_pred1036_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd54);
        ap_predicate_pred1048_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd52);
        ap_predicate_pred1060_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd50);
        ap_predicate_pred1072_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd48);
        ap_predicate_pred1084_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd46);
        ap_predicate_pred1096_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd44);
        ap_predicate_pred1108_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd42);
        ap_predicate_pred1120_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd40);
        ap_predicate_pred1132_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd38);
        ap_predicate_pred1144_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd36);
        ap_predicate_pred1156_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd34);
        ap_predicate_pred1168_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd32);
        ap_predicate_pred1180_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd30);
        ap_predicate_pred1192_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd28);
        ap_predicate_pred1204_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd26);
        ap_predicate_pred1216_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd24);
        ap_predicate_pred1228_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd22);
        ap_predicate_pred1240_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd20);
        ap_predicate_pred1252_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd18);
        ap_predicate_pred1264_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd16);
        ap_predicate_pred1276_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd14);
        ap_predicate_pred1288_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd12);
        ap_predicate_pred1300_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd10);
        ap_predicate_pred1312_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd8);
        ap_predicate_pred1324_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd6);
        ap_predicate_pred1336_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd4);
        ap_predicate_pred1348_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd2);
        ap_predicate_pred1360_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd0);
ap_predicate_pred1431_state10 <= (~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd60) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd0) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd2) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd4) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd6) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd8) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd10) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd12) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd14) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd16) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd18) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd20) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd22) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd24) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd26) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd28) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd30) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd32) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd34) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd36) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd38) & ~(trunc_ln13_reg_2152_pp0_iter7_reg== 6'd40) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd42) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd44) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd46) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd48) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd50) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd52) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd54) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd56) & ~(trunc_ln13_reg_2152_pp0_iter7_reg == 6'd58));
        ap_predicate_pred986_state10 <= (trunc_ln13_reg_2152_pp0_iter7_reg == 6'd60);
        tmp_127_reg_2148_pp0_iter2_reg <= tmp_127_reg_2148_pp0_iter1_reg;
        tmp_127_reg_2148_pp0_iter3_reg <= tmp_127_reg_2148_pp0_iter2_reg;
        tmp_127_reg_2148_pp0_iter4_reg <= tmp_127_reg_2148_pp0_iter3_reg;
        tmp_127_reg_2148_pp0_iter5_reg <= tmp_127_reg_2148_pp0_iter4_reg;
        tmp_127_reg_2148_pp0_iter6_reg <= tmp_127_reg_2148_pp0_iter5_reg;
        tmp_127_reg_2148_pp0_iter7_reg <= tmp_127_reg_2148_pp0_iter6_reg;
        trunc_ln13_reg_2152_pp0_iter2_reg <= trunc_ln13_reg_2152_pp0_iter1_reg;
        trunc_ln13_reg_2152_pp0_iter3_reg <= trunc_ln13_reg_2152_pp0_iter2_reg;
        trunc_ln13_reg_2152_pp0_iter4_reg <= trunc_ln13_reg_2152_pp0_iter3_reg;
        trunc_ln13_reg_2152_pp0_iter5_reg <= trunc_ln13_reg_2152_pp0_iter4_reg;
        trunc_ln13_reg_2152_pp0_iter6_reg <= trunc_ln13_reg_2152_pp0_iter5_reg;
        trunc_ln13_reg_2152_pp0_iter7_reg <= trunc_ln13_reg_2152_pp0_iter6_reg;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6101_out_ap_vld = 1'b1;
    end else begin
        add6101_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6105_out_ap_vld = 1'b1;
    end else begin
        add6105_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6109_out_ap_vld = 1'b1;
    end else begin
        add6109_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6113_out_ap_vld = 1'b1;
    end else begin
        add6113_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6117_out_ap_vld = 1'b1;
    end else begin
        add6117_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6121_out_ap_vld = 1'b1;
    end else begin
        add6121_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6125_out_ap_vld = 1'b1;
    end else begin
        add6125_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add613_out_ap_vld = 1'b1;
    end else begin
        add613_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add617_out_ap_vld = 1'b1;
    end else begin
        add617_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add621_out_ap_vld = 1'b1;
    end else begin
        add621_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add625_out_ap_vld = 1'b1;
    end else begin
        add625_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add629_out_ap_vld = 1'b1;
    end else begin
        add629_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add633_out_ap_vld = 1'b1;
    end else begin
        add633_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add637_out_ap_vld = 1'b1;
    end else begin
        add637_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add641_out_ap_vld = 1'b1;
    end else begin
        add641_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add645_out_ap_vld = 1'b1;
    end else begin
        add645_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add649_out_ap_vld = 1'b1;
    end else begin
        add649_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add653_out_ap_vld = 1'b1;
    end else begin
        add653_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add657_out_ap_vld = 1'b1;
    end else begin
        add657_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add65_out_ap_vld = 1'b1;
    end else begin
        add65_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add661_out_ap_vld = 1'b1;
    end else begin
        add661_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add665_out_ap_vld = 1'b1;
    end else begin
        add665_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add669_out_ap_vld = 1'b1;
    end else begin
        add669_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add673_out_ap_vld = 1'b1;
    end else begin
        add673_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add677_out_ap_vld = 1'b1;
    end else begin
        add677_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add681_out_ap_vld = 1'b1;
    end else begin
        add681_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add685_out_ap_vld = 1'b1;
    end else begin
        add685_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add689_out_ap_vld = 1'b1;
    end else begin
        add689_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add693_out_ap_vld = 1'b1;
    end else begin
        add693_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add697_out_ap_vld = 1'b1;
    end else begin
        add697_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add69_out_ap_vld = 1'b1;
    end else begin
        add69_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_1103_out_ap_vld = 1'b1;
    end else begin
        add6_1103_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_1107_out_ap_vld = 1'b1;
    end else begin
        add6_1107_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_1111_out_ap_vld = 1'b1;
    end else begin
        add6_1111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_1115_out_ap_vld = 1'b1;
    end else begin
        add6_1115_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_1119_out_ap_vld = 1'b1;
    end else begin
        add6_1119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_111_out_ap_vld = 1'b1;
    end else begin
        add6_111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_1123_out_ap_vld = 1'b1;
    end else begin
        add6_1123_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_1127_out_ap_vld = 1'b1;
    end else begin
        add6_1127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_115_out_ap_vld = 1'b1;
    end else begin
        add6_115_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_119_out_ap_vld = 1'b1;
    end else begin
        add6_119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_123_out_ap_vld = 1'b1;
    end else begin
        add6_123_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_127_out_ap_vld = 1'b1;
    end else begin
        add6_127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_131_out_ap_vld = 1'b1;
    end else begin
        add6_131_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_135_out_ap_vld = 1'b1;
    end else begin
        add6_135_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_139_out_ap_vld = 1'b1;
    end else begin
        add6_139_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_13_out_ap_vld = 1'b1;
    end else begin
        add6_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_143_out_ap_vld = 1'b1;
    end else begin
        add6_143_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_147_out_ap_vld = 1'b1;
    end else begin
        add6_147_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_151_out_ap_vld = 1'b1;
    end else begin
        add6_151_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_155_out_ap_vld = 1'b1;
    end else begin
        add6_155_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_159_out_ap_vld = 1'b1;
    end else begin
        add6_159_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_163_out_ap_vld = 1'b1;
    end else begin
        add6_163_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_167_out_ap_vld = 1'b1;
    end else begin
        add6_167_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_171_out_ap_vld = 1'b1;
    end else begin
        add6_171_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_175_out_ap_vld = 1'b1;
    end else begin
        add6_175_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_179_out_ap_vld = 1'b1;
    end else begin
        add6_179_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_17_out_ap_vld = 1'b1;
    end else begin
        add6_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_183_out_ap_vld = 1'b1;
    end else begin
        add6_183_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_187_out_ap_vld = 1'b1;
    end else begin
        add6_187_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_191_out_ap_vld = 1'b1;
    end else begin
        add6_191_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_195_out_ap_vld = 1'b1;
    end else begin
        add6_195_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_reg_2148_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6_199_out_ap_vld = 1'b1;
    end else begin
        add6_199_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_127_fu_1066_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_250;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add6101_out = add6101_fu_454;
assign add6105_out = add6105_fu_462;
assign add6109_out = add6109_fu_470;
assign add6113_out = add6113_fu_478;
assign add6117_out = add6117_fu_486;
assign add6121_out = add6121_fu_494;
assign add6125_out = add6125_fu_502;
assign add613_out = add613_fu_278;
assign add617_out = add617_fu_286;
assign add61_out = add61_fu_254;
assign add621_out = add621_fu_294;
assign add625_out = add625_fu_302;
assign add629_out = add629_fu_310;
assign add633_out = add633_fu_318;
assign add637_out = add637_fu_326;
assign add641_out = add641_fu_334;
assign add645_out = add645_fu_342;
assign add649_out = add649_fu_350;
assign add653_out = add653_fu_358;
assign add657_out = add657_fu_366;
assign add65_out = add65_fu_262;
assign add661_out = add661_fu_374;
assign add665_out = add665_fu_382;
assign add669_out = add669_fu_390;
assign add673_out = add673_fu_398;
assign add677_out = add677_fu_406;
assign add681_out = add681_fu_414;
assign add685_out = add685_fu_422;
assign add689_out = add689_fu_430;
assign add693_out = add693_fu_438;
assign add697_out = add697_fu_446;
assign add69_out = add69_fu_270;
assign add6_1103_out = add6_1103_fu_458;
assign add6_1107_out = add6_1107_fu_466;
assign add6_1111_out = add6_1111_fu_474;
assign add6_1115_out = add6_1115_fu_482;
assign add6_1119_out = add6_1119_fu_490;
assign add6_111_out = add6_111_fu_274;
assign add6_1123_out = add6_1123_fu_498;
assign add6_1127_out = add6_1127_fu_506;
assign add6_115_out = add6_115_fu_282;
assign add6_119_out = add6_119_fu_290;
assign add6_123_out = add6_123_fu_298;
assign add6_127_out = add6_127_fu_306;
assign add6_131_out = add6_131_fu_314;
assign add6_135_out = add6_135_fu_322;
assign add6_139_out = add6_139_fu_330;
assign add6_13_out = add6_13_fu_258;
assign add6_143_out = add6_143_fu_338;
assign add6_147_out = add6_147_fu_346;
assign add6_151_out = add6_151_fu_354;
assign add6_155_out = add6_155_fu_362;
assign add6_159_out = add6_159_fu_370;
assign add6_163_out = add6_163_fu_378;
assign add6_167_out = add6_167_fu_386;
assign add6_171_out = add6_171_fu_394;
assign add6_175_out = add6_175_fu_402;
assign add6_179_out = add6_179_fu_410;
assign add6_17_out = add6_17_fu_266;
assign add6_183_out = add6_183_fu_418;
assign add6_187_out = add6_187_fu_426;
assign add6_191_out = add6_191_fu_434;
assign add6_195_out = add6_195_fu_442;
assign add6_199_out = add6_199_fu_450;
assign add_ln13_fu_1134_p2 = (ap_sig_allocacmp_s_1 + 7'd2);
assign add_ln14_1_fu_1122_p2 = (or_ln_fu_1114_p3 + conv3_udiv_cast_cast_fu_1054_p1);
assign add_ln14_fu_1102_p2 = (shl_ln_fu_1094_p3 + conv3_udiv_cast_cast_fu_1054_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_1_fu_1163_p1 = select_ln14_reg_2191;
assign bitcast_ln14_fu_1159_p1 = init_0_load_reg_2186;
assign conv3_udiv_cast_cast_fu_1054_p1 = conv3_udiv_cast;
assign emission_0_address0 = zext_ln14_1_fu_1128_p1;
assign emission_0_address1 = zext_ln14_fu_1108_p1;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = zext_ln14_1_fu_1128_p1;
assign emission_1_address1 = zext_ln14_fu_1108_p1;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_1050_p0 = init_1_load_reg_2196;
assign grp_fu_1050_p1 = select_ln14_1_reg_2201;
assign grp_fu_3910_p_ce = 1'b1;
assign grp_fu_3910_p_din0 = bitcast_ln14_fu_1159_p1;
assign grp_fu_3910_p_din1 = bitcast_ln14_1_fu_1163_p1;
assign grp_fu_3910_p_opcode = 2'd0;
assign init_0_address0 = zext_ln9_fu_1088_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_1088_p1;
assign init_1_ce0 = init_1_ce0_local;
assign lshr_ln9_fu_1078_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln_fu_1114_p3 = {{lshr_ln9_fu_1078_p4}, {6'd32}};
assign select_ln14_1_fu_1152_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign select_ln14_fu_1145_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign shl_ln_fu_1094_p3 = {{trunc_ln13_fu_1074_p1}, {5'd0}};
assign tmp_127_fu_1066_p3 = ap_sig_allocacmp_s_1[32'd6];
assign trunc_ln13_fu_1074_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln14_1_fu_1128_p1 = add_ln14_1_fu_1122_p2;
assign zext_ln14_fu_1108_p1 = add_ln14_fu_1102_p2;
assign zext_ln9_fu_1088_p1 = lshr_ln9_fu_1078_p4;
endmodule 