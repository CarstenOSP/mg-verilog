module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load_cast,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,add6_1127_out,add6_1127_out_ap_vld,add6125_out,add6125_out_ap_vld,add6_1123_out,add6_1123_out_ap_vld,add6121_out,add6121_out_ap_vld,add6_1119_out,add6_1119_out_ap_vld,add6117_out,add6117_out_ap_vld,add6_1115_out,add6_1115_out_ap_vld,add6113_out,add6113_out_ap_vld,add6_1111_out,add6_1111_out_ap_vld,add6109_out,add6109_out_ap_vld,add6_1107_out,add6_1107_out_ap_vld,add6105_out,add6105_out_ap_vld,add6_1103_out,add6_1103_out_ap_vld,add6101_out,add6101_out_ap_vld,add6_199_out,add6_199_out_ap_vld,add697_out,add697_out_ap_vld,add6_195_out,add6_195_out_ap_vld,add693_out,add693_out_ap_vld,add6_191_out,add6_191_out_ap_vld,add689_out,add689_out_ap_vld,add6_187_out,add6_187_out_ap_vld,add685_out,add685_out_ap_vld,add6_183_out,add6_183_out_ap_vld,add681_out,add681_out_ap_vld,add6_179_out,add6_179_out_ap_vld,add677_out,add677_out_ap_vld,add6_175_out,add6_175_out_ap_vld,add673_out,add673_out_ap_vld,add6_171_out,add6_171_out_ap_vld,add669_out,add669_out_ap_vld,add6_167_out,add6_167_out_ap_vld,add665_out,add665_out_ap_vld,add6_163_out,add6_163_out_ap_vld,add661_out,add661_out_ap_vld,add6_159_out,add6_159_out_ap_vld,add657_out,add657_out_ap_vld,add6_155_out,add6_155_out_ap_vld,add653_out,add653_out_ap_vld,add6_151_out,add6_151_out_ap_vld,add649_out,add649_out_ap_vld,add6_147_out,add6_147_out_ap_vld,add645_out,add645_out_ap_vld,add6_143_out,add6_143_out_ap_vld,add641_out,add641_out_ap_vld,add6_139_out,add6_139_out_ap_vld,add637_out,add637_out_ap_vld,add6_135_out,add6_135_out_ap_vld,add633_out,add633_out_ap_vld,add6_131_out,add6_131_out_ap_vld,add629_out,add629_out_ap_vld,add6_127_out,add6_127_out_ap_vld,add625_out,add625_out_ap_vld,add6_123_out,add6_123_out_ap_vld,add621_out,add621_out_ap_vld,add6_119_out,add6_119_out_ap_vld,add617_out,add617_out_ap_vld,add6_115_out,add6_115_out_ap_vld,add613_out,add613_out_ap_vld,add6_111_out,add6_111_out_ap_vld,add69_out,add69_out_ap_vld,add6_17_out,add6_17_out_ap_vld,add65_out,add65_out_ap_vld,add6_13_out,add6_13_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_3802_p_din0,grp_fu_3802_p_din1,grp_fu_3802_p_opcode,grp_fu_3802_p_dout0,grp_fu_3802_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
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
input  [7:0] obs_load_cast;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
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
output  [63:0] grp_fu_3802_p_din0;
output  [63:0] grp_fu_3802_p_din1;
output  [1:0] grp_fu_3802_p_opcode;
input  [63:0] grp_fu_3802_p_dout0;
output   grp_fu_3802_p_ce;
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
wire   [0:0] tmp_fu_1030_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] tmp_reg_2102;
reg   [0:0] tmp_reg_2102_pp0_iter1_reg;
reg   [0:0] tmp_reg_2102_pp0_iter2_reg;
reg   [0:0] tmp_reg_2102_pp0_iter3_reg;
reg   [0:0] tmp_reg_2102_pp0_iter4_reg;
reg   [0:0] tmp_reg_2102_pp0_iter5_reg;
reg   [0:0] tmp_reg_2102_pp0_iter6_reg;
reg   [0:0] tmp_reg_2102_pp0_iter7_reg;
wire   [5:0] trunc_ln13_fu_1043_p1;
reg   [5:0] trunc_ln13_reg_2106;
reg   [5:0] trunc_ln13_reg_2106_pp0_iter1_reg;
reg   [5:0] trunc_ln13_reg_2106_pp0_iter2_reg;
reg   [5:0] trunc_ln13_reg_2106_pp0_iter3_reg;
reg   [5:0] trunc_ln13_reg_2106_pp0_iter4_reg;
reg   [5:0] trunc_ln13_reg_2106_pp0_iter5_reg;
reg   [5:0] trunc_ln13_reg_2106_pp0_iter6_reg;
reg   [5:0] trunc_ln13_reg_2106_pp0_iter7_reg;
reg   [63:0] init_load_reg_2130;
reg   [63:0] emission_load_reg_2135;
reg   [63:0] init_load_1_reg_2140;
reg   [63:0] emission_load_1_reg_2145;
wire   [63:0] bitcast_ln14_fu_1119_p1;
wire   [63:0] bitcast_ln14_1_fu_1123_p1;
wire   [63:0] zext_ln13_fu_1038_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1061_p1;
wire   [63:0] zext_ln14_1_fu_1084_p1;
wire   [63:0] zext_ln14_2_fu_1103_p1;
reg   [6:0] s_fu_246;
wire   [6:0] add_ln13_fu_1108_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_250;
reg    ap_predicate_pred965_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [63:0] add6_13_fu_254;
wire   [63:0] grp_fu_1014_p2;
reg   [63:0] add65_fu_258;
reg    ap_predicate_pred991_state10;
reg   [63:0] add6_17_fu_262;
reg   [63:0] add69_fu_266;
reg    ap_predicate_pred1003_state10;
reg   [63:0] add6_111_fu_270;
reg   [63:0] add613_fu_274;
reg    ap_predicate_pred1015_state10;
reg   [63:0] add6_115_fu_278;
reg   [63:0] add617_fu_282;
reg    ap_predicate_pred1027_state10;
reg   [63:0] add6_119_fu_286;
reg   [63:0] add621_fu_290;
reg    ap_predicate_pred1039_state10;
reg   [63:0] add6_123_fu_294;
reg   [63:0] add625_fu_298;
reg    ap_predicate_pred1051_state10;
reg   [63:0] add6_127_fu_302;
reg   [63:0] add629_fu_306;
reg    ap_predicate_pred1063_state10;
reg   [63:0] add6_131_fu_310;
reg   [63:0] add633_fu_314;
reg    ap_predicate_pred1075_state10;
reg   [63:0] add6_135_fu_318;
reg   [63:0] add637_fu_322;
reg    ap_predicate_pred1087_state10;
reg   [63:0] add6_139_fu_326;
reg   [63:0] add641_fu_330;
reg    ap_predicate_pred1099_state10;
reg   [63:0] add6_143_fu_334;
reg   [63:0] add645_fu_338;
reg    ap_predicate_pred1111_state10;
reg   [63:0] add6_147_fu_342;
reg   [63:0] add649_fu_346;
reg    ap_predicate_pred1123_state10;
reg   [63:0] add6_151_fu_350;
reg   [63:0] add653_fu_354;
reg    ap_predicate_pred1135_state10;
reg   [63:0] add6_155_fu_358;
reg   [63:0] add657_fu_362;
reg    ap_predicate_pred1147_state10;
reg   [63:0] add6_159_fu_366;
reg   [63:0] add661_fu_370;
reg    ap_predicate_pred1159_state10;
reg   [63:0] add6_163_fu_374;
reg   [63:0] add665_fu_378;
reg    ap_predicate_pred1171_state10;
reg   [63:0] add6_167_fu_382;
reg   [63:0] add669_fu_386;
reg    ap_predicate_pred1183_state10;
reg   [63:0] add6_171_fu_390;
reg   [63:0] add673_fu_394;
reg    ap_predicate_pred1195_state10;
reg   [63:0] add6_175_fu_398;
reg   [63:0] add677_fu_402;
reg    ap_predicate_pred1207_state10;
reg   [63:0] add6_179_fu_406;
reg   [63:0] add681_fu_410;
reg    ap_predicate_pred1219_state10;
reg   [63:0] add6_183_fu_414;
reg   [63:0] add685_fu_418;
reg    ap_predicate_pred1231_state10;
reg   [63:0] add6_187_fu_422;
reg   [63:0] add689_fu_426;
reg    ap_predicate_pred1243_state10;
reg   [63:0] add6_191_fu_430;
reg   [63:0] add693_fu_434;
reg    ap_predicate_pred1255_state10;
reg   [63:0] add6_195_fu_438;
reg   [63:0] add697_fu_442;
reg    ap_predicate_pred1267_state10;
reg   [63:0] add6_199_fu_446;
reg   [63:0] add6101_fu_450;
reg    ap_predicate_pred1279_state10;
reg   [63:0] add6_1103_fu_454;
reg   [63:0] add6105_fu_458;
reg    ap_predicate_pred1291_state10;
reg   [63:0] add6_1107_fu_462;
reg   [63:0] add6109_fu_466;
reg    ap_predicate_pred1303_state10;
reg   [63:0] add6_1111_fu_470;
reg   [63:0] add6113_fu_474;
reg    ap_predicate_pred1315_state10;
reg   [63:0] add6_1115_fu_478;
reg   [63:0] add6117_fu_482;
reg    ap_predicate_pred1327_state10;
reg   [63:0] add6_1119_fu_486;
reg   [63:0] add6121_fu_490;
reg    ap_predicate_pred1339_state10;
reg   [63:0] add6_1123_fu_494;
reg   [63:0] add6125_fu_498;
reg    ap_predicate_pred1410_state10;
reg   [63:0] add6_1127_fu_502;
wire    ap_block_pp0_stage0_01001;
reg    init_ce1_local;
reg    init_ce0_local;
reg    emission_ce1_local;
reg    emission_ce0_local;
wire   [63:0] grp_fu_1014_p0;
wire   [63:0] grp_fu_1014_p1;
wire   [11:0] shl_ln_fu_1047_p3;
wire   [11:0] obs_load_cast_cast_fu_1018_p1;
wire   [11:0] add_ln14_fu_1055_p2;
wire   [4:0] tmp_s_fu_1066_p4;
wire   [5:0] or_ln_fu_1076_p3;
wire   [11:0] shl_ln14_1_fu_1089_p3;
wire   [11:0] add_ln14_1_fu_1097_p2;
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
#0 s_fu_246 = 7'd0;
#0 add61_fu_250 = 64'd0;
#0 add6_13_fu_254 = 64'd0;
#0 add65_fu_258 = 64'd0;
#0 add6_17_fu_262 = 64'd0;
#0 add69_fu_266 = 64'd0;
#0 add6_111_fu_270 = 64'd0;
#0 add613_fu_274 = 64'd0;
#0 add6_115_fu_278 = 64'd0;
#0 add617_fu_282 = 64'd0;
#0 add6_119_fu_286 = 64'd0;
#0 add621_fu_290 = 64'd0;
#0 add6_123_fu_294 = 64'd0;
#0 add625_fu_298 = 64'd0;
#0 add6_127_fu_302 = 64'd0;
#0 add629_fu_306 = 64'd0;
#0 add6_131_fu_310 = 64'd0;
#0 add633_fu_314 = 64'd0;
#0 add6_135_fu_318 = 64'd0;
#0 add637_fu_322 = 64'd0;
#0 add6_139_fu_326 = 64'd0;
#0 add641_fu_330 = 64'd0;
#0 add6_143_fu_334 = 64'd0;
#0 add645_fu_338 = 64'd0;
#0 add6_147_fu_342 = 64'd0;
#0 add649_fu_346 = 64'd0;
#0 add6_151_fu_350 = 64'd0;
#0 add653_fu_354 = 64'd0;
#0 add6_155_fu_358 = 64'd0;
#0 add657_fu_362 = 64'd0;
#0 add6_159_fu_366 = 64'd0;
#0 add661_fu_370 = 64'd0;
#0 add6_163_fu_374 = 64'd0;
#0 add665_fu_378 = 64'd0;
#0 add6_167_fu_382 = 64'd0;
#0 add669_fu_386 = 64'd0;
#0 add6_171_fu_390 = 64'd0;
#0 add673_fu_394 = 64'd0;
#0 add6_175_fu_398 = 64'd0;
#0 add677_fu_402 = 64'd0;
#0 add6_179_fu_406 = 64'd0;
#0 add681_fu_410 = 64'd0;
#0 add6_183_fu_414 = 64'd0;
#0 add685_fu_418 = 64'd0;
#0 add6_187_fu_422 = 64'd0;
#0 add689_fu_426 = 64'd0;
#0 add6_191_fu_430 = 64'd0;
#0 add693_fu_434 = 64'd0;
#0 add6_195_fu_438 = 64'd0;
#0 add697_fu_442 = 64'd0;
#0 add6_199_fu_446 = 64'd0;
#0 add6101_fu_450 = 64'd0;
#0 add6_1103_fu_454 = 64'd0;
#0 add6105_fu_458 = 64'd0;
#0 add6_1107_fu_462 = 64'd0;
#0 add6109_fu_466 = 64'd0;
#0 add6_1111_fu_470 = 64'd0;
#0 add6113_fu_474 = 64'd0;
#0 add6_1115_fu_478 = 64'd0;
#0 add6117_fu_482 = 64'd0;
#0 add6_1119_fu_486 = 64'd0;
#0 add6121_fu_490 = 64'd0;
#0 add6_1123_fu_494 = 64'd0;
#0 add6125_fu_498 = 64'd0;
#0 add6_1127_fu_502 = 64'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1014_p0),.din1(grp_fu_1014_p1),.ce(1'b1),.dout(grp_fu_1014_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((tmp_fu_1030_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            s_fu_246 <= add_ln13_fu_1108_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            s_fu_246 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1279_state10 == 1'b1))) begin
        add6101_fu_450 <= grp_fu_3802_p_dout0;
        add6_1103_fu_454 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1291_state10 == 1'b1))) begin
        add6105_fu_458 <= grp_fu_3802_p_dout0;
        add6_1107_fu_462 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1303_state10 == 1'b1))) begin
        add6109_fu_466 <= grp_fu_3802_p_dout0;
        add6_1111_fu_470 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1315_state10 == 1'b1))) begin
        add6113_fu_474 <= grp_fu_3802_p_dout0;
        add6_1115_fu_478 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1327_state10 == 1'b1))) begin
        add6117_fu_482 <= grp_fu_3802_p_dout0;
        add6_1119_fu_486 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1339_state10 == 1'b1))) begin
        add6121_fu_490 <= grp_fu_3802_p_dout0;
        add6_1123_fu_494 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1410_state10 == 1'b1))) begin
        add6125_fu_498 <= grp_fu_3802_p_dout0;
        add6_1127_fu_502 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1015_state10 == 1'b1))) begin
        add613_fu_274 <= grp_fu_3802_p_dout0;
        add6_115_fu_278 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1027_state10 == 1'b1))) begin
        add617_fu_282 <= grp_fu_3802_p_dout0;
        add6_119_fu_286 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred965_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        add61_fu_250 <= grp_fu_3802_p_dout0;
        add6_13_fu_254 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1039_state10 == 1'b1))) begin
        add621_fu_290 <= grp_fu_3802_p_dout0;
        add6_123_fu_294 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1051_state10 == 1'b1))) begin
        add625_fu_298 <= grp_fu_3802_p_dout0;
        add6_127_fu_302 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1063_state10 == 1'b1))) begin
        add629_fu_306 <= grp_fu_3802_p_dout0;
        add6_131_fu_310 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1075_state10 == 1'b1))) begin
        add633_fu_314 <= grp_fu_3802_p_dout0;
        add6_135_fu_318 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1087_state10 == 1'b1))) begin
        add637_fu_322 <= grp_fu_3802_p_dout0;
        add6_139_fu_326 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1099_state10 == 1'b1))) begin
        add641_fu_330 <= grp_fu_3802_p_dout0;
        add6_143_fu_334 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1111_state10 == 1'b1))) begin
        add645_fu_338 <= grp_fu_3802_p_dout0;
        add6_147_fu_342 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1123_state10 == 1'b1))) begin
        add649_fu_346 <= grp_fu_3802_p_dout0;
        add6_151_fu_350 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1135_state10 == 1'b1))) begin
        add653_fu_354 <= grp_fu_3802_p_dout0;
        add6_155_fu_358 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1147_state10 == 1'b1))) begin
        add657_fu_362 <= grp_fu_3802_p_dout0;
        add6_159_fu_366 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred991_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        add65_fu_258 <= grp_fu_3802_p_dout0;
        add6_17_fu_262 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1159_state10 == 1'b1))) begin
        add661_fu_370 <= grp_fu_3802_p_dout0;
        add6_163_fu_374 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1171_state10 == 1'b1))) begin
        add665_fu_378 <= grp_fu_3802_p_dout0;
        add6_167_fu_382 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1183_state10 == 1'b1))) begin
        add669_fu_386 <= grp_fu_3802_p_dout0;
        add6_171_fu_390 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1195_state10 == 1'b1))) begin
        add673_fu_394 <= grp_fu_3802_p_dout0;
        add6_175_fu_398 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1207_state10 == 1'b1))) begin
        add677_fu_402 <= grp_fu_3802_p_dout0;
        add6_179_fu_406 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1219_state10 == 1'b1))) begin
        add681_fu_410 <= grp_fu_3802_p_dout0;
        add6_183_fu_414 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1231_state10 == 1'b1))) begin
        add685_fu_418 <= grp_fu_3802_p_dout0;
        add6_187_fu_422 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1243_state10 == 1'b1))) begin
        add689_fu_426 <= grp_fu_3802_p_dout0;
        add6_191_fu_430 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1255_state10 == 1'b1))) begin
        add693_fu_434 <= grp_fu_3802_p_dout0;
        add6_195_fu_438 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1267_state10 == 1'b1))) begin
        add697_fu_442 <= grp_fu_3802_p_dout0;
        add6_199_fu_446 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1003_state10 == 1'b1))) begin
        add69_fu_266 <= grp_fu_3802_p_dout0;
        add6_111_fu_270 <= grp_fu_1014_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        tmp_reg_2102 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_reg_2102_pp0_iter1_reg <= tmp_reg_2102;
        trunc_ln13_reg_2106 <= trunc_ln13_fu_1043_p1;
        trunc_ln13_reg_2106_pp0_iter1_reg <= trunc_ln13_reg_2106;
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
        ap_predicate_pred1003_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd56);
        ap_predicate_pred1015_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd54);
        ap_predicate_pred1027_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd52);
        ap_predicate_pred1039_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd50);
        ap_predicate_pred1051_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd48);
        ap_predicate_pred1063_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd46);
        ap_predicate_pred1075_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd44);
        ap_predicate_pred1087_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd42);
        ap_predicate_pred1099_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd40);
        ap_predicate_pred1111_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd38);
        ap_predicate_pred1123_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd36);
        ap_predicate_pred1135_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd34);
        ap_predicate_pred1147_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd32);
        ap_predicate_pred1159_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd30);
        ap_predicate_pred1171_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd28);
        ap_predicate_pred1183_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd26);
        ap_predicate_pred1195_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd24);
        ap_predicate_pred1207_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd22);
        ap_predicate_pred1219_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd20);
        ap_predicate_pred1231_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd18);
        ap_predicate_pred1243_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd16);
        ap_predicate_pred1255_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd14);
        ap_predicate_pred1267_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd12);
        ap_predicate_pred1279_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd10);
        ap_predicate_pred1291_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd8);
        ap_predicate_pred1303_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd6);
        ap_predicate_pred1315_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd4);
        ap_predicate_pred1327_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd2);
        ap_predicate_pred1339_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd0);
ap_predicate_pred1410_state10 <= (~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd58) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd60) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd0) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd2) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd4) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd6) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd8) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd10) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd12) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd14) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd16) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd18) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd20) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd22) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd24) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd26) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd28) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd30) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd32) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd34) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd36) & ~(trunc_ln13_reg_2106_pp0_iter7_reg== 6'd38) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd40) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd42) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd44) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd46) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd48) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd50) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd52) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd54) & ~(trunc_ln13_reg_2106_pp0_iter7_reg == 6'd56));
        ap_predicate_pred965_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd60);
        ap_predicate_pred991_state10 <= (trunc_ln13_reg_2106_pp0_iter7_reg == 6'd58);
        tmp_reg_2102_pp0_iter2_reg <= tmp_reg_2102_pp0_iter1_reg;
        tmp_reg_2102_pp0_iter3_reg <= tmp_reg_2102_pp0_iter2_reg;
        tmp_reg_2102_pp0_iter4_reg <= tmp_reg_2102_pp0_iter3_reg;
        tmp_reg_2102_pp0_iter5_reg <= tmp_reg_2102_pp0_iter4_reg;
        tmp_reg_2102_pp0_iter6_reg <= tmp_reg_2102_pp0_iter5_reg;
        tmp_reg_2102_pp0_iter7_reg <= tmp_reg_2102_pp0_iter6_reg;
        trunc_ln13_reg_2106_pp0_iter2_reg <= trunc_ln13_reg_2106_pp0_iter1_reg;
        trunc_ln13_reg_2106_pp0_iter3_reg <= trunc_ln13_reg_2106_pp0_iter2_reg;
        trunc_ln13_reg_2106_pp0_iter4_reg <= trunc_ln13_reg_2106_pp0_iter3_reg;
        trunc_ln13_reg_2106_pp0_iter5_reg <= trunc_ln13_reg_2106_pp0_iter4_reg;
        trunc_ln13_reg_2106_pp0_iter6_reg <= trunc_ln13_reg_2106_pp0_iter5_reg;
        trunc_ln13_reg_2106_pp0_iter7_reg <= trunc_ln13_reg_2106_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_load_1_reg_2145 <= emission_q0;
        emission_load_reg_2135 <= emission_q1;
        init_load_1_reg_2140 <= init_q0;
        init_load_reg_2130 <= init_q1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6101_out_ap_vld = 1'b1;
    end else begin
        add6101_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6105_out_ap_vld = 1'b1;
    end else begin
        add6105_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6109_out_ap_vld = 1'b1;
    end else begin
        add6109_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6113_out_ap_vld = 1'b1;
    end else begin
        add6113_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6117_out_ap_vld = 1'b1;
    end else begin
        add6117_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6121_out_ap_vld = 1'b1;
    end else begin
        add6121_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6125_out_ap_vld = 1'b1;
    end else begin
        add6125_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add613_out_ap_vld = 1'b1;
    end else begin
        add613_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add617_out_ap_vld = 1'b1;
    end else begin
        add617_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add621_out_ap_vld = 1'b1;
    end else begin
        add621_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add625_out_ap_vld = 1'b1;
    end else begin
        add625_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add629_out_ap_vld = 1'b1;
    end else begin
        add629_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add633_out_ap_vld = 1'b1;
    end else begin
        add633_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add637_out_ap_vld = 1'b1;
    end else begin
        add637_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add641_out_ap_vld = 1'b1;
    end else begin
        add641_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add645_out_ap_vld = 1'b1;
    end else begin
        add645_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add649_out_ap_vld = 1'b1;
    end else begin
        add649_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add653_out_ap_vld = 1'b1;
    end else begin
        add653_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add657_out_ap_vld = 1'b1;
    end else begin
        add657_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add65_out_ap_vld = 1'b1;
    end else begin
        add65_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add661_out_ap_vld = 1'b1;
    end else begin
        add661_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add665_out_ap_vld = 1'b1;
    end else begin
        add665_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add669_out_ap_vld = 1'b1;
    end else begin
        add669_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add673_out_ap_vld = 1'b1;
    end else begin
        add673_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add677_out_ap_vld = 1'b1;
    end else begin
        add677_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add681_out_ap_vld = 1'b1;
    end else begin
        add681_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add685_out_ap_vld = 1'b1;
    end else begin
        add685_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add689_out_ap_vld = 1'b1;
    end else begin
        add689_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add693_out_ap_vld = 1'b1;
    end else begin
        add693_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add697_out_ap_vld = 1'b1;
    end else begin
        add697_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add69_out_ap_vld = 1'b1;
    end else begin
        add69_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_1103_out_ap_vld = 1'b1;
    end else begin
        add6_1103_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_1107_out_ap_vld = 1'b1;
    end else begin
        add6_1107_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_1111_out_ap_vld = 1'b1;
    end else begin
        add6_1111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_1115_out_ap_vld = 1'b1;
    end else begin
        add6_1115_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_1119_out_ap_vld = 1'b1;
    end else begin
        add6_1119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_111_out_ap_vld = 1'b1;
    end else begin
        add6_111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_1123_out_ap_vld = 1'b1;
    end else begin
        add6_1123_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_1127_out_ap_vld = 1'b1;
    end else begin
        add6_1127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_115_out_ap_vld = 1'b1;
    end else begin
        add6_115_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_119_out_ap_vld = 1'b1;
    end else begin
        add6_119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_123_out_ap_vld = 1'b1;
    end else begin
        add6_123_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_127_out_ap_vld = 1'b1;
    end else begin
        add6_127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_131_out_ap_vld = 1'b1;
    end else begin
        add6_131_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_135_out_ap_vld = 1'b1;
    end else begin
        add6_135_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_139_out_ap_vld = 1'b1;
    end else begin
        add6_139_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_13_out_ap_vld = 1'b1;
    end else begin
        add6_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_143_out_ap_vld = 1'b1;
    end else begin
        add6_143_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_147_out_ap_vld = 1'b1;
    end else begin
        add6_147_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_151_out_ap_vld = 1'b1;
    end else begin
        add6_151_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_155_out_ap_vld = 1'b1;
    end else begin
        add6_155_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_159_out_ap_vld = 1'b1;
    end else begin
        add6_159_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_163_out_ap_vld = 1'b1;
    end else begin
        add6_163_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_167_out_ap_vld = 1'b1;
    end else begin
        add6_167_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_171_out_ap_vld = 1'b1;
    end else begin
        add6_171_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_175_out_ap_vld = 1'b1;
    end else begin
        add6_175_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_179_out_ap_vld = 1'b1;
    end else begin
        add6_179_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_17_out_ap_vld = 1'b1;
    end else begin
        add6_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_183_out_ap_vld = 1'b1;
    end else begin
        add6_183_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_187_out_ap_vld = 1'b1;
    end else begin
        add6_187_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_191_out_ap_vld = 1'b1;
    end else begin
        add6_191_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_195_out_ap_vld = 1'b1;
    end else begin
        add6_195_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (tmp_reg_2102_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6_199_out_ap_vld = 1'b1;
    end else begin
        add6_199_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_1030_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_246;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
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
assign add6101_out = add6101_fu_450;
assign add6105_out = add6105_fu_458;
assign add6109_out = add6109_fu_466;
assign add6113_out = add6113_fu_474;
assign add6117_out = add6117_fu_482;
assign add6121_out = add6121_fu_490;
assign add6125_out = add6125_fu_498;
assign add613_out = add613_fu_274;
assign add617_out = add617_fu_282;
assign add61_out = add61_fu_250;
assign add621_out = add621_fu_290;
assign add625_out = add625_fu_298;
assign add629_out = add629_fu_306;
assign add633_out = add633_fu_314;
assign add637_out = add637_fu_322;
assign add641_out = add641_fu_330;
assign add645_out = add645_fu_338;
assign add649_out = add649_fu_346;
assign add653_out = add653_fu_354;
assign add657_out = add657_fu_362;
assign add65_out = add65_fu_258;
assign add661_out = add661_fu_370;
assign add665_out = add665_fu_378;
assign add669_out = add669_fu_386;
assign add673_out = add673_fu_394;
assign add677_out = add677_fu_402;
assign add681_out = add681_fu_410;
assign add685_out = add685_fu_418;
assign add689_out = add689_fu_426;
assign add693_out = add693_fu_434;
assign add697_out = add697_fu_442;
assign add69_out = add69_fu_266;
assign add6_1103_out = add6_1103_fu_454;
assign add6_1107_out = add6_1107_fu_462;
assign add6_1111_out = add6_1111_fu_470;
assign add6_1115_out = add6_1115_fu_478;
assign add6_1119_out = add6_1119_fu_486;
assign add6_111_out = add6_111_fu_270;
assign add6_1123_out = add6_1123_fu_494;
assign add6_1127_out = add6_1127_fu_502;
assign add6_115_out = add6_115_fu_278;
assign add6_119_out = add6_119_fu_286;
assign add6_123_out = add6_123_fu_294;
assign add6_127_out = add6_127_fu_302;
assign add6_131_out = add6_131_fu_310;
assign add6_135_out = add6_135_fu_318;
assign add6_139_out = add6_139_fu_326;
assign add6_13_out = add6_13_fu_254;
assign add6_143_out = add6_143_fu_334;
assign add6_147_out = add6_147_fu_342;
assign add6_151_out = add6_151_fu_350;
assign add6_155_out = add6_155_fu_358;
assign add6_159_out = add6_159_fu_366;
assign add6_163_out = add6_163_fu_374;
assign add6_167_out = add6_167_fu_382;
assign add6_171_out = add6_171_fu_390;
assign add6_175_out = add6_175_fu_398;
assign add6_179_out = add6_179_fu_406;
assign add6_17_out = add6_17_fu_262;
assign add6_183_out = add6_183_fu_414;
assign add6_187_out = add6_187_fu_422;
assign add6_191_out = add6_191_fu_430;
assign add6_195_out = add6_195_fu_438;
assign add6_199_out = add6_199_fu_446;
assign add_ln13_fu_1108_p2 = (ap_sig_allocacmp_s_1 + 7'd2);
assign add_ln14_1_fu_1097_p2 = (shl_ln14_1_fu_1089_p3 + obs_load_cast_cast_fu_1018_p1);
assign add_ln14_fu_1055_p2 = (shl_ln_fu_1047_p3 + obs_load_cast_cast_fu_1018_p1);
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
assign bitcast_ln14_1_fu_1123_p1 = emission_load_reg_2135;
assign bitcast_ln14_fu_1119_p1 = init_load_reg_2130;
assign emission_address0 = zext_ln14_2_fu_1103_p1;
assign emission_address1 = zext_ln14_fu_1061_p1;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_1014_p0 = init_load_1_reg_2140;
assign grp_fu_1014_p1 = emission_load_1_reg_2145;
assign grp_fu_3802_p_ce = 1'b1;
assign grp_fu_3802_p_din0 = bitcast_ln14_fu_1119_p1;
assign grp_fu_3802_p_din1 = bitcast_ln14_1_fu_1123_p1;
assign grp_fu_3802_p_opcode = 2'd0;
assign init_address0 = zext_ln14_1_fu_1084_p1;
assign init_address1 = zext_ln13_fu_1038_p1;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign obs_load_cast_cast_fu_1018_p1 = obs_load_cast;
assign or_ln_fu_1076_p3 = {{tmp_s_fu_1066_p4}, {1'd1}};
assign shl_ln14_1_fu_1089_p3 = {{tmp_s_fu_1066_p4}, {7'd64}};
assign shl_ln_fu_1047_p3 = {{trunc_ln13_fu_1043_p1}, {6'd0}};
assign tmp_fu_1030_p3 = ap_sig_allocacmp_s_1[32'd6];
assign tmp_s_fu_1066_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign trunc_ln13_fu_1043_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln13_fu_1038_p1 = ap_sig_allocacmp_s_1;
assign zext_ln14_1_fu_1084_p1 = or_ln_fu_1076_p3;
assign zext_ln14_2_fu_1103_p1 = add_ln14_1_fu_1097_p2;
assign zext_ln14_fu_1061_p1 = add_ln14_fu_1055_p2;
endmodule 