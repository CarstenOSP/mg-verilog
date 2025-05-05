module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_0_address0,init_0_ce0,init_0_q0,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,emission_4_address0,emission_4_ce0,emission_4_q0,emission_4_address1,emission_4_ce1,emission_4_q1,emission_5_address0,emission_5_ce0,emission_5_q0,emission_5_address1,emission_5_ce1,emission_5_q1,emission_6_address0,emission_6_ce0,emission_6_q0,emission_6_address1,emission_6_ce1,emission_6_q1,emission_7_address0,emission_7_ce0,emission_7_q0,emission_7_address1,emission_7_ce1,emission_7_q1,empty,init_1_address0,init_1_ce0,init_1_q0,conv3_udiv_cast,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,init_4_address0,init_4_ce0,init_4_q0,init_5_address0,init_5_ce0,init_5_q0,init_6_address0,init_6_ce0,init_6_q0,init_7_address0,init_7_ce0,init_7_q0,add6_7127_out,add6_7127_out_ap_vld,add6_6125_out,add6_6125_out_ap_vld,add6_5123_out,add6_5123_out_ap_vld,add6_4121_out,add6_4121_out_ap_vld,add6_3119_out,add6_3119_out_ap_vld,add6_2117_out,add6_2117_out_ap_vld,add6_1115_out,add6_1115_out_ap_vld,add6113_out,add6113_out_ap_vld,add6_7111_out,add6_7111_out_ap_vld,add6_6109_out,add6_6109_out_ap_vld,add6_5107_out,add6_5107_out_ap_vld,add6_4105_out,add6_4105_out_ap_vld,add6_3103_out,add6_3103_out_ap_vld,add6_2101_out,add6_2101_out_ap_vld,add6_199_out,add6_199_out_ap_vld,add697_out,add697_out_ap_vld,add6_795_out,add6_795_out_ap_vld,add6_693_out,add6_693_out_ap_vld,add6_591_out,add6_591_out_ap_vld,add6_489_out,add6_489_out_ap_vld,add6_387_out,add6_387_out_ap_vld,add6_285_out,add6_285_out_ap_vld,add6_183_out,add6_183_out_ap_vld,add681_out,add681_out_ap_vld,add6_779_out,add6_779_out_ap_vld,add6_677_out,add6_677_out_ap_vld,add6_575_out,add6_575_out_ap_vld,add6_473_out,add6_473_out_ap_vld,add6_371_out,add6_371_out_ap_vld,add6_269_out,add6_269_out_ap_vld,add6_167_out,add6_167_out_ap_vld,add665_out,add665_out_ap_vld,add6_763_out,add6_763_out_ap_vld,add6_661_out,add6_661_out_ap_vld,add6_559_out,add6_559_out_ap_vld,add6_457_out,add6_457_out_ap_vld,add6_355_out,add6_355_out_ap_vld,add6_253_out,add6_253_out_ap_vld,add6_151_out,add6_151_out_ap_vld,add649_out,add649_out_ap_vld,add6_747_out,add6_747_out_ap_vld,add6_645_out,add6_645_out_ap_vld,add6_543_out,add6_543_out_ap_vld,add6_441_out,add6_441_out_ap_vld,add6_339_out,add6_339_out_ap_vld,add6_237_out,add6_237_out_ap_vld,add6_135_out,add6_135_out_ap_vld,add633_out,add633_out_ap_vld,add6_731_out,add6_731_out_ap_vld,add6_629_out,add6_629_out_ap_vld,add6_527_out,add6_527_out_ap_vld,add6_425_out,add6_425_out_ap_vld,add6_323_out,add6_323_out_ap_vld,add6_221_out,add6_221_out_ap_vld,add6_119_out,add6_119_out_ap_vld,add617_out,add617_out_ap_vld,add6_715_out,add6_715_out_ap_vld,add6_613_out,add6_613_out_ap_vld,add6_511_out,add6_511_out_ap_vld,add6_49_out,add6_49_out_ap_vld,add6_37_out,add6_37_out_ap_vld,add6_25_out,add6_25_out_ap_vld,add6_13_out,add6_13_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_4451_p_din0,grp_fu_4451_p_din1,grp_fu_4451_p_opcode,grp_fu_4451_p_dout0,grp_fu_4451_p_ce); 
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
output  [2:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
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
input  [4:0] conv3_udiv_cast;
output  [2:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [2:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [2:0] init_4_address0;
output   init_4_ce0;
input  [63:0] init_4_q0;
output  [2:0] init_5_address0;
output   init_5_ce0;
input  [63:0] init_5_q0;
output  [2:0] init_6_address0;
output   init_6_ce0;
input  [63:0] init_6_q0;
output  [2:0] init_7_address0;
output   init_7_ce0;
input  [63:0] init_7_q0;
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
output  [63:0] grp_fu_4451_p_din0;
output  [63:0] grp_fu_4451_p_din1;
output  [1:0] grp_fu_4451_p_opcode;
input  [63:0] grp_fu_4451_p_dout0;
output   grp_fu_4451_p_ce;
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
reg   [0:0] tmp_160_reg_3564;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] conv3_udiv_cast_cast_fu_1692_p1;
reg   [8:0] conv3_udiv_cast_cast_reg_3549;
reg   [6:0] s_1_reg_3558;
reg   [0:0] tmp_160_reg_3564_pp0_iter1_reg;
wire   [5:0] trunc_ln13_fu_1712_p1;
reg   [5:0] trunc_ln13_reg_3568;
reg   [5:0] trunc_ln13_reg_3568_pp0_iter1_reg;
reg   [5:0] trunc_ln13_reg_3568_pp0_iter2_reg;
wire   [2:0] lshr_ln9_fu_1716_p4;
reg   [2:0] lshr_ln9_reg_3572;
wire   [3:0] tmp_s_fu_1738_p4;
reg   [3:0] tmp_s_reg_3585;
reg   [63:0] init_0_load_reg_3706;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_fu_1836_p19;
reg   [63:0] tmp_reg_3711;
reg   [63:0] init_1_load_reg_3716;
wire   [63:0] tmp_1_fu_1907_p19;
reg   [63:0] tmp_1_reg_3721;
reg   [63:0] init_2_load_reg_3726;
reg   [63:0] init_3_load_reg_3771;
reg   [63:0] init_4_load_reg_3816;
reg   [63:0] init_5_load_reg_3821;
reg   [63:0] init_6_load_reg_3826;
reg   [63:0] init_7_load_reg_3831;
wire   [63:0] bitcast_ln14_fu_1994_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] bitcast_ln14_9_fu_1998_p1;
wire   [63:0] tmp_2_fu_2034_p19;
reg   [63:0] tmp_2_reg_3846;
wire   [63:0] tmp_3_fu_2105_p19;
reg   [63:0] tmp_3_reg_3851;
wire   [63:0] bitcast_ln14_18_fu_2199_p1;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln14_27_fu_2203_p1;
wire   [63:0] tmp_4_fu_2239_p19;
reg   [63:0] tmp_4_reg_3946;
wire   [63:0] tmp_5_fu_2310_p19;
reg   [63:0] tmp_5_reg_3951;
wire   [63:0] bitcast_ln14_36_fu_2407_p1;
wire   [63:0] bitcast_ln14_45_fu_2411_p1;
wire   [63:0] tmp_6_fu_2447_p19;
reg   [63:0] tmp_6_reg_4046;
wire   [63:0] tmp_7_fu_2518_p19;
reg   [63:0] tmp_7_reg_4051;
wire   [63:0] bitcast_ln14_54_fu_2557_p1;
wire   [63:0] bitcast_ln14_63_fu_2561_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln9_fu_1726_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1756_p1;
wire   [63:0] zext_ln14_1_fu_1792_p1;
wire   [63:0] zext_ln14_2_fu_1958_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1982_p1;
wire   [63:0] zext_ln14_4_fu_2152_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_2187_p1;
wire   [63:0] zext_ln14_6_fu_2361_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_2385_p1;
reg   [6:0] s_fu_270;
wire   [6:0] add_ln13_fu_2397_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_274;
reg    ap_predicate_pred966_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [63:0] add6_13_fu_278;
wire   [63:0] grp_fu_1688_p2;
reg   [63:0] add6_25_fu_282;
reg    ap_predicate_pred992_state11;
reg   [63:0] add6_37_fu_286;
reg   [63:0] add6_49_fu_290;
reg    ap_predicate_pred992_state12;
reg   [63:0] add6_511_fu_294;
reg   [63:0] add6_613_fu_298;
reg    ap_predicate_pred992_state13;
reg   [63:0] add6_715_fu_302;
reg   [63:0] add617_fu_306;
reg    ap_predicate_pred1027_state10;
reg   [63:0] add6_119_fu_310;
reg   [63:0] add6_221_fu_314;
reg    ap_predicate_pred1037_state11;
reg   [63:0] add6_323_fu_318;
reg   [63:0] add6_425_fu_322;
reg    ap_predicate_pred1037_state12;
reg   [63:0] add6_527_fu_326;
reg   [63:0] add6_629_fu_330;
reg    ap_predicate_pred1037_state13;
reg   [63:0] add6_731_fu_334;
reg   [63:0] add633_fu_338;
reg    ap_predicate_pred1067_state10;
reg   [63:0] add6_135_fu_342;
reg   [63:0] add6_237_fu_346;
reg    ap_predicate_pred1077_state11;
reg   [63:0] add6_339_fu_350;
reg   [63:0] add6_441_fu_354;
reg    ap_predicate_pred1077_state12;
reg   [63:0] add6_543_fu_358;
reg   [63:0] add6_645_fu_362;
reg    ap_predicate_pred1077_state13;
reg   [63:0] add6_747_fu_366;
reg   [63:0] add649_fu_370;
reg    ap_predicate_pred1107_state10;
reg   [63:0] add6_151_fu_374;
reg   [63:0] add6_253_fu_378;
reg    ap_predicate_pred1117_state11;
reg   [63:0] add6_355_fu_382;
reg   [63:0] add6_457_fu_386;
reg    ap_predicate_pred1117_state12;
reg   [63:0] add6_559_fu_390;
reg   [63:0] add6_661_fu_394;
reg    ap_predicate_pred1117_state13;
reg   [63:0] add6_763_fu_398;
reg   [63:0] add665_fu_402;
reg    ap_predicate_pred1147_state10;
reg   [63:0] add6_167_fu_406;
reg   [63:0] add6_269_fu_410;
reg    ap_predicate_pred1157_state11;
reg   [63:0] add6_371_fu_414;
reg   [63:0] add6_473_fu_418;
reg    ap_predicate_pred1157_state12;
reg   [63:0] add6_575_fu_422;
reg   [63:0] add6_677_fu_426;
reg    ap_predicate_pred1157_state13;
reg   [63:0] add6_779_fu_430;
reg   [63:0] add681_fu_434;
reg    ap_predicate_pred1187_state10;
reg   [63:0] add6_183_fu_438;
reg   [63:0] add6_285_fu_442;
reg    ap_predicate_pred1197_state11;
reg   [63:0] add6_387_fu_446;
reg   [63:0] add6_489_fu_450;
reg    ap_predicate_pred1197_state12;
reg   [63:0] add6_591_fu_454;
reg   [63:0] add6_693_fu_458;
reg    ap_predicate_pred1197_state13;
reg   [63:0] add6_795_fu_462;
reg   [63:0] add697_fu_466;
reg    ap_predicate_pred1227_state10;
reg   [63:0] add6_199_fu_470;
reg   [63:0] add6_2101_fu_474;
reg    ap_predicate_pred1237_state11;
reg   [63:0] add6_3103_fu_478;
reg   [63:0] add6_4105_fu_482;
reg    ap_predicate_pred1237_state12;
reg   [63:0] add6_5107_fu_486;
reg   [63:0] add6_6109_fu_490;
reg    ap_predicate_pred1237_state13;
reg   [63:0] add6_7111_fu_494;
reg   [63:0] add6113_fu_498;
reg    ap_predicate_pred1278_state10;
reg   [63:0] add6_1115_fu_502;
reg   [63:0] add6_2117_fu_506;
reg    ap_predicate_pred1300_state11;
reg   [63:0] add6_3119_fu_510;
reg   [63:0] add6_4121_fu_514;
reg    ap_predicate_pred1300_state12;
reg   [63:0] add6_5123_fu_518;
reg   [63:0] add6_6125_fu_522;
reg    ap_predicate_pred1300_state13;
reg   [63:0] add6_7127_fu_526;
wire    ap_block_pp0_stage0_01001;
reg    init_0_ce0_local;
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
reg    init_2_ce0_local;
reg    init_3_ce0_local;
reg    init_4_ce0_local;
reg    init_5_ce0_local;
reg    init_6_ce0_local;
reg    init_7_ce0_local;
reg   [63:0] grp_fu_1684_p0;
reg   [63:0] grp_fu_1684_p1;
reg   [63:0] grp_fu_1688_p0;
reg   [63:0] grp_fu_1688_p1;
wire   [8:0] or_ln_fu_1748_p3;
wire   [4:0] tmp_190_fu_1768_p4;
wire   [8:0] or_ln14_1_fu_1778_p3;
wire   [8:0] add_ln14_fu_1786_p2;
wire   [63:0] tmp_fu_1836_p2;
wire   [63:0] tmp_fu_1836_p4;
wire   [63:0] tmp_fu_1836_p6;
wire   [63:0] tmp_fu_1836_p8;
wire   [63:0] tmp_fu_1836_p10;
wire   [63:0] tmp_fu_1836_p12;
wire   [63:0] tmp_fu_1836_p14;
wire   [63:0] tmp_fu_1836_p16;
wire   [63:0] tmp_fu_1836_p17;
wire   [63:0] tmp_1_fu_1907_p2;
wire   [63:0] tmp_1_fu_1907_p4;
wire   [63:0] tmp_1_fu_1907_p6;
wire   [63:0] tmp_1_fu_1907_p8;
wire   [63:0] tmp_1_fu_1907_p10;
wire   [63:0] tmp_1_fu_1907_p12;
wire   [63:0] tmp_1_fu_1907_p14;
wire   [63:0] tmp_1_fu_1907_p16;
wire   [63:0] tmp_1_fu_1907_p17;
wire   [8:0] or_ln14_2_fu_1946_p3;
wire   [8:0] add_ln14_1_fu_1953_p2;
wire   [8:0] or_ln14_3_fu_1970_p3;
wire   [8:0] add_ln14_2_fu_1977_p2;
wire   [63:0] tmp_2_fu_2034_p2;
wire   [63:0] tmp_2_fu_2034_p4;
wire   [63:0] tmp_2_fu_2034_p6;
wire   [63:0] tmp_2_fu_2034_p8;
wire   [63:0] tmp_2_fu_2034_p10;
wire   [63:0] tmp_2_fu_2034_p12;
wire   [63:0] tmp_2_fu_2034_p14;
wire   [63:0] tmp_2_fu_2034_p16;
wire   [63:0] tmp_2_fu_2034_p17;
wire   [63:0] tmp_3_fu_2105_p2;
wire   [63:0] tmp_3_fu_2105_p4;
wire   [63:0] tmp_3_fu_2105_p6;
wire   [63:0] tmp_3_fu_2105_p8;
wire   [63:0] tmp_3_fu_2105_p10;
wire   [63:0] tmp_3_fu_2105_p12;
wire   [63:0] tmp_3_fu_2105_p14;
wire   [63:0] tmp_3_fu_2105_p16;
wire   [63:0] tmp_3_fu_2105_p17;
wire   [8:0] or_ln14_4_fu_2144_p4;
wire   [0:0] tmp_161_fu_2164_p3;
wire   [8:0] or_ln14_5_fu_2171_p5;
wire   [8:0] add_ln14_3_fu_2182_p2;
wire   [63:0] tmp_4_fu_2239_p2;
wire   [63:0] tmp_4_fu_2239_p4;
wire   [63:0] tmp_4_fu_2239_p6;
wire   [63:0] tmp_4_fu_2239_p8;
wire   [63:0] tmp_4_fu_2239_p10;
wire   [63:0] tmp_4_fu_2239_p12;
wire   [63:0] tmp_4_fu_2239_p14;
wire   [63:0] tmp_4_fu_2239_p16;
wire   [63:0] tmp_4_fu_2239_p17;
wire   [63:0] tmp_5_fu_2310_p2;
wire   [63:0] tmp_5_fu_2310_p4;
wire   [63:0] tmp_5_fu_2310_p6;
wire   [63:0] tmp_5_fu_2310_p8;
wire   [63:0] tmp_5_fu_2310_p10;
wire   [63:0] tmp_5_fu_2310_p12;
wire   [63:0] tmp_5_fu_2310_p14;
wire   [63:0] tmp_5_fu_2310_p16;
wire   [63:0] tmp_5_fu_2310_p17;
wire   [8:0] or_ln14_6_fu_2349_p3;
wire   [8:0] add_ln14_4_fu_2356_p2;
wire   [8:0] or_ln14_7_fu_2373_p3;
wire   [8:0] add_ln14_5_fu_2380_p2;
wire   [63:0] tmp_6_fu_2447_p2;
wire   [63:0] tmp_6_fu_2447_p4;
wire   [63:0] tmp_6_fu_2447_p6;
wire   [63:0] tmp_6_fu_2447_p8;
wire   [63:0] tmp_6_fu_2447_p10;
wire   [63:0] tmp_6_fu_2447_p12;
wire   [63:0] tmp_6_fu_2447_p14;
wire   [63:0] tmp_6_fu_2447_p16;
wire   [63:0] tmp_6_fu_2447_p17;
wire   [63:0] tmp_7_fu_2518_p2;
wire   [63:0] tmp_7_fu_2518_p4;
wire   [63:0] tmp_7_fu_2518_p6;
wire   [63:0] tmp_7_fu_2518_p8;
wire   [63:0] tmp_7_fu_2518_p10;
wire   [63:0] tmp_7_fu_2518_p12;
wire   [63:0] tmp_7_fu_2518_p14;
wire   [63:0] tmp_7_fu_2518_p16;
wire   [63:0] tmp_7_fu_2518_p17;
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
wire   [2:0] tmp_fu_1836_p1;
wire   [2:0] tmp_fu_1836_p3;
wire   [2:0] tmp_fu_1836_p5;
wire   [2:0] tmp_fu_1836_p7;
wire  signed [2:0] tmp_fu_1836_p9;
wire  signed [2:0] tmp_fu_1836_p11;
wire  signed [2:0] tmp_fu_1836_p13;
wire  signed [2:0] tmp_fu_1836_p15;
wire   [2:0] tmp_1_fu_1907_p1;
wire   [2:0] tmp_1_fu_1907_p3;
wire   [2:0] tmp_1_fu_1907_p5;
wire   [2:0] tmp_1_fu_1907_p7;
wire  signed [2:0] tmp_1_fu_1907_p9;
wire  signed [2:0] tmp_1_fu_1907_p11;
wire  signed [2:0] tmp_1_fu_1907_p13;
wire  signed [2:0] tmp_1_fu_1907_p15;
wire   [2:0] tmp_2_fu_2034_p1;
wire   [2:0] tmp_2_fu_2034_p3;
wire   [2:0] tmp_2_fu_2034_p5;
wire   [2:0] tmp_2_fu_2034_p7;
wire  signed [2:0] tmp_2_fu_2034_p9;
wire  signed [2:0] tmp_2_fu_2034_p11;
wire  signed [2:0] tmp_2_fu_2034_p13;
wire  signed [2:0] tmp_2_fu_2034_p15;
wire   [2:0] tmp_3_fu_2105_p1;
wire   [2:0] tmp_3_fu_2105_p3;
wire   [2:0] tmp_3_fu_2105_p5;
wire   [2:0] tmp_3_fu_2105_p7;
wire  signed [2:0] tmp_3_fu_2105_p9;
wire  signed [2:0] tmp_3_fu_2105_p11;
wire  signed [2:0] tmp_3_fu_2105_p13;
wire  signed [2:0] tmp_3_fu_2105_p15;
wire   [2:0] tmp_4_fu_2239_p1;
wire   [2:0] tmp_4_fu_2239_p3;
wire   [2:0] tmp_4_fu_2239_p5;
wire   [2:0] tmp_4_fu_2239_p7;
wire  signed [2:0] tmp_4_fu_2239_p9;
wire  signed [2:0] tmp_4_fu_2239_p11;
wire  signed [2:0] tmp_4_fu_2239_p13;
wire  signed [2:0] tmp_4_fu_2239_p15;
wire   [2:0] tmp_5_fu_2310_p1;
wire   [2:0] tmp_5_fu_2310_p3;
wire   [2:0] tmp_5_fu_2310_p5;
wire   [2:0] tmp_5_fu_2310_p7;
wire  signed [2:0] tmp_5_fu_2310_p9;
wire  signed [2:0] tmp_5_fu_2310_p11;
wire  signed [2:0] tmp_5_fu_2310_p13;
wire  signed [2:0] tmp_5_fu_2310_p15;
wire   [2:0] tmp_6_fu_2447_p1;
wire   [2:0] tmp_6_fu_2447_p3;
wire   [2:0] tmp_6_fu_2447_p5;
wire   [2:0] tmp_6_fu_2447_p7;
wire  signed [2:0] tmp_6_fu_2447_p9;
wire  signed [2:0] tmp_6_fu_2447_p11;
wire  signed [2:0] tmp_6_fu_2447_p13;
wire  signed [2:0] tmp_6_fu_2447_p15;
wire   [2:0] tmp_7_fu_2518_p1;
wire   [2:0] tmp_7_fu_2518_p3;
wire   [2:0] tmp_7_fu_2518_p5;
wire   [2:0] tmp_7_fu_2518_p7;
wire  signed [2:0] tmp_7_fu_2518_p9;
wire  signed [2:0] tmp_7_fu_2518_p11;
wire  signed [2:0] tmp_7_fu_2518_p13;
wire  signed [2:0] tmp_7_fu_2518_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_270 = 7'd0;
#0 add61_fu_274 = 64'd0;
#0 add6_13_fu_278 = 64'd0;
#0 add6_25_fu_282 = 64'd0;
#0 add6_37_fu_286 = 64'd0;
#0 add6_49_fu_290 = 64'd0;
#0 add6_511_fu_294 = 64'd0;
#0 add6_613_fu_298 = 64'd0;
#0 add6_715_fu_302 = 64'd0;
#0 add617_fu_306 = 64'd0;
#0 add6_119_fu_310 = 64'd0;
#0 add6_221_fu_314 = 64'd0;
#0 add6_323_fu_318 = 64'd0;
#0 add6_425_fu_322 = 64'd0;
#0 add6_527_fu_326 = 64'd0;
#0 add6_629_fu_330 = 64'd0;
#0 add6_731_fu_334 = 64'd0;
#0 add633_fu_338 = 64'd0;
#0 add6_135_fu_342 = 64'd0;
#0 add6_237_fu_346 = 64'd0;
#0 add6_339_fu_350 = 64'd0;
#0 add6_441_fu_354 = 64'd0;
#0 add6_543_fu_358 = 64'd0;
#0 add6_645_fu_362 = 64'd0;
#0 add6_747_fu_366 = 64'd0;
#0 add649_fu_370 = 64'd0;
#0 add6_151_fu_374 = 64'd0;
#0 add6_253_fu_378 = 64'd0;
#0 add6_355_fu_382 = 64'd0;
#0 add6_457_fu_386 = 64'd0;
#0 add6_559_fu_390 = 64'd0;
#0 add6_661_fu_394 = 64'd0;
#0 add6_763_fu_398 = 64'd0;
#0 add665_fu_402 = 64'd0;
#0 add6_167_fu_406 = 64'd0;
#0 add6_269_fu_410 = 64'd0;
#0 add6_371_fu_414 = 64'd0;
#0 add6_473_fu_418 = 64'd0;
#0 add6_575_fu_422 = 64'd0;
#0 add6_677_fu_426 = 64'd0;
#0 add6_779_fu_430 = 64'd0;
#0 add681_fu_434 = 64'd0;
#0 add6_183_fu_438 = 64'd0;
#0 add6_285_fu_442 = 64'd0;
#0 add6_387_fu_446 = 64'd0;
#0 add6_489_fu_450 = 64'd0;
#0 add6_591_fu_454 = 64'd0;
#0 add6_693_fu_458 = 64'd0;
#0 add6_795_fu_462 = 64'd0;
#0 add697_fu_466 = 64'd0;
#0 add6_199_fu_470 = 64'd0;
#0 add6_2101_fu_474 = 64'd0;
#0 add6_3103_fu_478 = 64'd0;
#0 add6_4105_fu_482 = 64'd0;
#0 add6_5107_fu_486 = 64'd0;
#0 add6_6109_fu_490 = 64'd0;
#0 add6_7111_fu_494 = 64'd0;
#0 add6113_fu_498 = 64'd0;
#0 add6_1115_fu_502 = 64'd0;
#0 add6_2117_fu_506 = 64'd0;
#0 add6_3119_fu_510 = 64'd0;
#0 add6_4121_fu_514 = 64'd0;
#0 add6_5123_fu_518 = 64'd0;
#0 add6_6125_fu_522 = 64'd0;
#0 add6_7127_fu_526 = 64'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1688_p0),.din1(grp_fu_1688_p1),.ce(1'b1),.dout(grp_fu_1688_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(tmp_fu_1836_p2),.din1(tmp_fu_1836_p4),.din2(tmp_fu_1836_p6),.din3(tmp_fu_1836_p8),.din4(tmp_fu_1836_p10),.din5(tmp_fu_1836_p12),.din6(tmp_fu_1836_p14),.din7(tmp_fu_1836_p16),.def(tmp_fu_1836_p17),.sel(empty),.dout(tmp_fu_1836_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U4(.din0(tmp_1_fu_1907_p2),.din1(tmp_1_fu_1907_p4),.din2(tmp_1_fu_1907_p6),.din3(tmp_1_fu_1907_p8),.din4(tmp_1_fu_1907_p10),.din5(tmp_1_fu_1907_p12),.din6(tmp_1_fu_1907_p14),.din7(tmp_1_fu_1907_p16),.def(tmp_1_fu_1907_p17),.sel(empty),.dout(tmp_1_fu_1907_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U5(.din0(tmp_2_fu_2034_p2),.din1(tmp_2_fu_2034_p4),.din2(tmp_2_fu_2034_p6),.din3(tmp_2_fu_2034_p8),.din4(tmp_2_fu_2034_p10),.din5(tmp_2_fu_2034_p12),.din6(tmp_2_fu_2034_p14),.din7(tmp_2_fu_2034_p16),.def(tmp_2_fu_2034_p17),.sel(empty),.dout(tmp_2_fu_2034_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U6(.din0(tmp_3_fu_2105_p2),.din1(tmp_3_fu_2105_p4),.din2(tmp_3_fu_2105_p6),.din3(tmp_3_fu_2105_p8),.din4(tmp_3_fu_2105_p10),.din5(tmp_3_fu_2105_p12),.din6(tmp_3_fu_2105_p14),.din7(tmp_3_fu_2105_p16),.def(tmp_3_fu_2105_p17),.sel(empty),.dout(tmp_3_fu_2105_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U7(.din0(tmp_4_fu_2239_p2),.din1(tmp_4_fu_2239_p4),.din2(tmp_4_fu_2239_p6),.din3(tmp_4_fu_2239_p8),.din4(tmp_4_fu_2239_p10),.din5(tmp_4_fu_2239_p12),.din6(tmp_4_fu_2239_p14),.din7(tmp_4_fu_2239_p16),.def(tmp_4_fu_2239_p17),.sel(empty),.dout(tmp_4_fu_2239_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U8(.din0(tmp_5_fu_2310_p2),.din1(tmp_5_fu_2310_p4),.din2(tmp_5_fu_2310_p6),.din3(tmp_5_fu_2310_p8),.din4(tmp_5_fu_2310_p10),.din5(tmp_5_fu_2310_p12),.din6(tmp_5_fu_2310_p14),.din7(tmp_5_fu_2310_p16),.def(tmp_5_fu_2310_p17),.sel(empty),.dout(tmp_5_fu_2310_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U9(.din0(tmp_6_fu_2447_p2),.din1(tmp_6_fu_2447_p4),.din2(tmp_6_fu_2447_p6),.din3(tmp_6_fu_2447_p8),.din4(tmp_6_fu_2447_p10),.din5(tmp_6_fu_2447_p12),.din6(tmp_6_fu_2447_p14),.din7(tmp_6_fu_2447_p16),.def(tmp_6_fu_2447_p17),.sel(empty),.dout(tmp_6_fu_2447_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U10(.din0(tmp_7_fu_2518_p2),.din1(tmp_7_fu_2518_p4),.din2(tmp_7_fu_2518_p6),.din3(tmp_7_fu_2518_p8),.din4(tmp_7_fu_2518_p10),.din5(tmp_7_fu_2518_p12),.din6(tmp_7_fu_2518_p14),.din7(tmp_7_fu_2518_p16),.def(tmp_7_fu_2518_p17),.sel(empty),.dout(tmp_7_fu_2518_p19));
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
        s_fu_270 <= 7'd0;
    end else if (((tmp_160_reg_3564 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        s_fu_270 <= add_ln13_fu_2397_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1278_state10 == 1'b1))) begin
        add6113_fu_498 <= grp_fu_4451_p_dout0;
        add6_1115_fu_502 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1027_state10 == 1'b1))) begin
        add617_fu_306 <= grp_fu_4451_p_dout0;
        add6_119_fu_310 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred966_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add61_fu_274 <= grp_fu_4451_p_dout0;
        add6_13_fu_278 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1067_state10 == 1'b1))) begin
        add633_fu_338 <= grp_fu_4451_p_dout0;
        add6_135_fu_342 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1107_state10 == 1'b1))) begin
        add649_fu_370 <= grp_fu_4451_p_dout0;
        add6_151_fu_374 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1147_state10 == 1'b1))) begin
        add665_fu_402 <= grp_fu_4451_p_dout0;
        add6_167_fu_406 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1187_state10 == 1'b1))) begin
        add681_fu_434 <= grp_fu_4451_p_dout0;
        add6_183_fu_438 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1227_state10 == 1'b1))) begin
        add697_fu_466 <= grp_fu_4451_p_dout0;
        add6_199_fu_470 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1237_state11 == 1'b1))) begin
        add6_2101_fu_474 <= grp_fu_4451_p_dout0;
        add6_3103_fu_478 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1300_state11 == 1'b1))) begin
        add6_2117_fu_506 <= grp_fu_4451_p_dout0;
        add6_3119_fu_510 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1037_state11 == 1'b1))) begin
        add6_221_fu_314 <= grp_fu_4451_p_dout0;
        add6_323_fu_318 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1077_state11 == 1'b1))) begin
        add6_237_fu_346 <= grp_fu_4451_p_dout0;
        add6_339_fu_350 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1117_state11 == 1'b1))) begin
        add6_253_fu_378 <= grp_fu_4451_p_dout0;
        add6_355_fu_382 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred992_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_25_fu_282 <= grp_fu_4451_p_dout0;
        add6_37_fu_286 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1157_state11 == 1'b1))) begin
        add6_269_fu_410 <= grp_fu_4451_p_dout0;
        add6_371_fu_414 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1197_state11 == 1'b1))) begin
        add6_285_fu_442 <= grp_fu_4451_p_dout0;
        add6_387_fu_446 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1237_state12 == 1'b1))) begin
        add6_4105_fu_482 <= grp_fu_4451_p_dout0;
        add6_5107_fu_486 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1300_state12 == 1'b1))) begin
        add6_4121_fu_514 <= grp_fu_4451_p_dout0;
        add6_5123_fu_518 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1037_state12 == 1'b1))) begin
        add6_425_fu_322 <= grp_fu_4451_p_dout0;
        add6_527_fu_326 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1077_state12 == 1'b1))) begin
        add6_441_fu_354 <= grp_fu_4451_p_dout0;
        add6_543_fu_358 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1117_state12 == 1'b1))) begin
        add6_457_fu_386 <= grp_fu_4451_p_dout0;
        add6_559_fu_390 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1157_state12 == 1'b1))) begin
        add6_473_fu_418 <= grp_fu_4451_p_dout0;
        add6_575_fu_422 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1197_state12 == 1'b1))) begin
        add6_489_fu_450 <= grp_fu_4451_p_dout0;
        add6_591_fu_454 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred992_state12 == 1'b1))) begin
        add6_49_fu_290 <= grp_fu_4451_p_dout0;
        add6_511_fu_294 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1237_state13 == 1'b1))) begin
        add6_6109_fu_490 <= grp_fu_4451_p_dout0;
        add6_7111_fu_494 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1300_state13 == 1'b1))) begin
        add6_6125_fu_522 <= grp_fu_4451_p_dout0;
        add6_7127_fu_526 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred992_state13 == 1'b1))) begin
        add6_613_fu_298 <= grp_fu_4451_p_dout0;
        add6_715_fu_302 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1037_state13 == 1'b1))) begin
        add6_629_fu_330 <= grp_fu_4451_p_dout0;
        add6_731_fu_334 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1077_state13 == 1'b1))) begin
        add6_645_fu_362 <= grp_fu_4451_p_dout0;
        add6_747_fu_366 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1117_state13 == 1'b1))) begin
        add6_661_fu_394 <= grp_fu_4451_p_dout0;
        add6_763_fu_398 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1157_state13 == 1'b1))) begin
        add6_677_fu_426 <= grp_fu_4451_p_dout0;
        add6_779_fu_430 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1197_state13 == 1'b1))) begin
        add6_693_fu_458 <= grp_fu_4451_p_dout0;
        add6_795_fu_462 <= grp_fu_1688_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred1027_state10 <= (trunc_ln13_reg_3568_pp0_iter1_reg == 6'd40);
        ap_predicate_pred1067_state10 <= (trunc_ln13_reg_3568_pp0_iter1_reg == 6'd32);
        ap_predicate_pred1107_state10 <= (trunc_ln13_reg_3568_pp0_iter1_reg == 6'd24);
        ap_predicate_pred1147_state10 <= (trunc_ln13_reg_3568_pp0_iter1_reg == 6'd16);
        ap_predicate_pred1187_state10 <= (trunc_ln13_reg_3568_pp0_iter1_reg == 6'd8);
        ap_predicate_pred1227_state10 <= (trunc_ln13_reg_3568_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1278_state10 <= (~(trunc_ln13_reg_3568_pp0_iter1_reg == 6'd48) & ~(trunc_ln13_reg_3568_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3568_pp0_iter1_reg == 6'd8) & ~(trunc_ln13_reg_3568_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3568_pp0_iter1_reg == 6'd24) & ~(trunc_ln13_reg_3568_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3568_pp0_iter1_reg == 6'd40));
        ap_predicate_pred966_state10 <= (trunc_ln13_reg_3568_pp0_iter1_reg == 6'd48);
        conv3_udiv_cast_cast_reg_3549[4 : 0] <= conv3_udiv_cast_cast_fu_1692_p1[4 : 0];
        lshr_ln9_reg_3572 <= {{ap_sig_allocacmp_s_1[5:3]}};
        s_1_reg_3558 <= ap_sig_allocacmp_s_1;
        tmp_160_reg_3564 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_160_reg_3564_pp0_iter1_reg <= tmp_160_reg_3564;
        tmp_6_reg_4046 <= tmp_6_fu_2447_p19;
        tmp_7_reg_4051 <= tmp_7_fu_2518_p19;
        tmp_s_reg_3585 <= {{ap_sig_allocacmp_s_1[5:2]}};
        trunc_ln13_reg_3568 <= trunc_ln13_fu_1712_p1;
        trunc_ln13_reg_3568_pp0_iter1_reg <= trunc_ln13_reg_3568;
        trunc_ln13_reg_3568_pp0_iter2_reg <= trunc_ln13_reg_3568_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred1037_state11 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd40);
        ap_predicate_pred1077_state11 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd32);
        ap_predicate_pred1117_state11 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd24);
        ap_predicate_pred1157_state11 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd16);
        ap_predicate_pred1197_state11 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd8);
        ap_predicate_pred1237_state11 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd0);
        ap_predicate_pred1300_state11 <= (~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd48) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd0) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd8) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd16) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd24) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd32) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd40));
        ap_predicate_pred992_state11 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd48);
        init_0_load_reg_3706 <= init_0_q0;
        init_1_load_reg_3716 <= init_1_q0;
        init_2_load_reg_3726 <= init_2_q0;
        init_3_load_reg_3771 <= init_3_q0;
        init_4_load_reg_3816 <= init_4_q0;
        init_5_load_reg_3821 <= init_5_q0;
        init_6_load_reg_3826 <= init_6_q0;
        init_7_load_reg_3831 <= init_7_q0;
        tmp_1_reg_3721 <= tmp_1_fu_1907_p19;
        tmp_reg_3711 <= tmp_fu_1836_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred1037_state12 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd40);
        ap_predicate_pred1077_state12 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd32);
        ap_predicate_pred1117_state12 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd24);
        ap_predicate_pred1157_state12 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd16);
        ap_predicate_pred1197_state12 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd8);
        ap_predicate_pred1237_state12 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd0);
        ap_predicate_pred1300_state12 <= (~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd48) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd0) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd8) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd16) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd24) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd32) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd40));
        ap_predicate_pred992_state12 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd48);
        tmp_2_reg_3846 <= tmp_2_fu_2034_p19;
        tmp_3_reg_3851 <= tmp_3_fu_2105_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred1037_state13 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd40);
        ap_predicate_pred1077_state13 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd32);
        ap_predicate_pred1117_state13 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd24);
        ap_predicate_pred1157_state13 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd16);
        ap_predicate_pred1197_state13 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd8);
        ap_predicate_pred1237_state13 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd0);
        ap_predicate_pred1300_state13 <= (~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd48) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd0) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd8) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd16) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd24) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd32) & ~(trunc_ln13_reg_3568_pp0_iter2_reg == 6'd40));
        ap_predicate_pred992_state13 <= (trunc_ln13_reg_3568_pp0_iter2_reg == 6'd48);
        tmp_4_reg_3946 <= tmp_4_fu_2239_p19;
        tmp_5_reg_3951 <= tmp_5_fu_2310_p19;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6113_out_ap_vld = 1'b1;
    end else begin
        add6113_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add617_out_ap_vld = 1'b1;
    end else begin
        add617_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add633_out_ap_vld = 1'b1;
    end else begin
        add633_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add649_out_ap_vld = 1'b1;
    end else begin
        add649_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add665_out_ap_vld = 1'b1;
    end else begin
        add665_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add681_out_ap_vld = 1'b1;
    end else begin
        add681_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add697_out_ap_vld = 1'b1;
    end else begin
        add697_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1115_out_ap_vld = 1'b1;
    end else begin
        add6_1115_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_119_out_ap_vld = 1'b1;
    end else begin
        add6_119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_135_out_ap_vld = 1'b1;
    end else begin
        add6_135_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_13_out_ap_vld = 1'b1;
    end else begin
        add6_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_151_out_ap_vld = 1'b1;
    end else begin
        add6_151_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_167_out_ap_vld = 1'b1;
    end else begin
        add6_167_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_183_out_ap_vld = 1'b1;
    end else begin
        add6_183_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_199_out_ap_vld = 1'b1;
    end else begin
        add6_199_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2101_out_ap_vld = 1'b1;
    end else begin
        add6_2101_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2117_out_ap_vld = 1'b1;
    end else begin
        add6_2117_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_221_out_ap_vld = 1'b1;
    end else begin
        add6_221_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_237_out_ap_vld = 1'b1;
    end else begin
        add6_237_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_253_out_ap_vld = 1'b1;
    end else begin
        add6_253_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_25_out_ap_vld = 1'b1;
    end else begin
        add6_25_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_269_out_ap_vld = 1'b1;
    end else begin
        add6_269_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_285_out_ap_vld = 1'b1;
    end else begin
        add6_285_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3103_out_ap_vld = 1'b1;
    end else begin
        add6_3103_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3119_out_ap_vld = 1'b1;
    end else begin
        add6_3119_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_323_out_ap_vld = 1'b1;
    end else begin
        add6_323_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_339_out_ap_vld = 1'b1;
    end else begin
        add6_339_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_355_out_ap_vld = 1'b1;
    end else begin
        add6_355_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_371_out_ap_vld = 1'b1;
    end else begin
        add6_371_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_37_out_ap_vld = 1'b1;
    end else begin
        add6_37_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_387_out_ap_vld = 1'b1;
    end else begin
        add6_387_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_4105_out_ap_vld = 1'b1;
    end else begin
        add6_4105_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_4121_out_ap_vld = 1'b1;
    end else begin
        add6_4121_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_425_out_ap_vld = 1'b1;
    end else begin
        add6_425_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_441_out_ap_vld = 1'b1;
    end else begin
        add6_441_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_457_out_ap_vld = 1'b1;
    end else begin
        add6_457_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_473_out_ap_vld = 1'b1;
    end else begin
        add6_473_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_489_out_ap_vld = 1'b1;
    end else begin
        add6_489_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_49_out_ap_vld = 1'b1;
    end else begin
        add6_49_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_5107_out_ap_vld = 1'b1;
    end else begin
        add6_5107_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_511_out_ap_vld = 1'b1;
    end else begin
        add6_511_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_5123_out_ap_vld = 1'b1;
    end else begin
        add6_5123_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_527_out_ap_vld = 1'b1;
    end else begin
        add6_527_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_543_out_ap_vld = 1'b1;
    end else begin
        add6_543_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_559_out_ap_vld = 1'b1;
    end else begin
        add6_559_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_575_out_ap_vld = 1'b1;
    end else begin
        add6_575_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_591_out_ap_vld = 1'b1;
    end else begin
        add6_591_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_6109_out_ap_vld = 1'b1;
    end else begin
        add6_6109_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_6125_out_ap_vld = 1'b1;
    end else begin
        add6_6125_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_613_out_ap_vld = 1'b1;
    end else begin
        add6_613_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_629_out_ap_vld = 1'b1;
    end else begin
        add6_629_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_645_out_ap_vld = 1'b1;
    end else begin
        add6_645_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_661_out_ap_vld = 1'b1;
    end else begin
        add6_661_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_677_out_ap_vld = 1'b1;
    end else begin
        add6_677_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_693_out_ap_vld = 1'b1;
    end else begin
        add6_693_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_7111_out_ap_vld = 1'b1;
    end else begin
        add6_7111_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_7127_out_ap_vld = 1'b1;
    end else begin
        add6_7127_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_715_out_ap_vld = 1'b1;
    end else begin
        add6_715_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_731_out_ap_vld = 1'b1;
    end else begin
        add6_731_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_747_out_ap_vld = 1'b1;
    end else begin
        add6_747_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_763_out_ap_vld = 1'b1;
    end else begin
        add6_763_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_779_out_ap_vld = 1'b1;
    end else begin
        add6_779_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_795_out_ap_vld = 1'b1;
    end else begin
        add6_795_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_160_reg_3564 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_160_reg_3564_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_270;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_2385_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_2187_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1982_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1792_p1;
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
            emission_0_address1_local = zext_ln14_6_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_2152_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1756_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_2385_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_2187_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1982_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1792_p1;
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
            emission_1_address1_local = zext_ln14_6_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_2152_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1756_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address0_local = zext_ln14_7_fu_2385_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address0_local = zext_ln14_5_fu_2187_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address0_local = zext_ln14_3_fu_1982_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address0_local = zext_ln14_1_fu_1792_p1;
        end else begin
            emission_2_address0_local = 'bx;
        end
    end else begin
        emission_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_2_address1_local = zext_ln14_6_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_2_address1_local = zext_ln14_4_fu_2152_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_2_address1_local = zext_ln14_2_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_2_address1_local = zext_ln14_fu_1756_p1;
        end else begin
            emission_2_address1_local = 'bx;
        end
    end else begin
        emission_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_2_ce1_local = 1'b1;
    end else begin
        emission_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address0_local = zext_ln14_7_fu_2385_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address0_local = zext_ln14_5_fu_2187_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address0_local = zext_ln14_3_fu_1982_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address0_local = zext_ln14_1_fu_1792_p1;
        end else begin
            emission_3_address0_local = 'bx;
        end
    end else begin
        emission_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_3_address1_local = zext_ln14_6_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_3_address1_local = zext_ln14_4_fu_2152_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_3_address1_local = zext_ln14_2_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_3_address1_local = zext_ln14_fu_1756_p1;
        end else begin
            emission_3_address1_local = 'bx;
        end
    end else begin
        emission_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_3_ce1_local = 1'b1;
    end else begin
        emission_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_4_address0_local = zext_ln14_7_fu_2385_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address0_local = zext_ln14_5_fu_2187_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address0_local = zext_ln14_3_fu_1982_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address0_local = zext_ln14_1_fu_1792_p1;
        end else begin
            emission_4_address0_local = 'bx;
        end
    end else begin
        emission_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_4_address1_local = zext_ln14_6_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_4_address1_local = zext_ln14_4_fu_2152_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_4_address1_local = zext_ln14_2_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_4_address1_local = zext_ln14_fu_1756_p1;
        end else begin
            emission_4_address1_local = 'bx;
        end
    end else begin
        emission_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_4_ce0_local = 1'b1;
    end else begin
        emission_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_4_ce1_local = 1'b1;
    end else begin
        emission_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_5_address0_local = zext_ln14_7_fu_2385_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address0_local = zext_ln14_5_fu_2187_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address0_local = zext_ln14_3_fu_1982_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address0_local = zext_ln14_1_fu_1792_p1;
        end else begin
            emission_5_address0_local = 'bx;
        end
    end else begin
        emission_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_5_address1_local = zext_ln14_6_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_5_address1_local = zext_ln14_4_fu_2152_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_5_address1_local = zext_ln14_2_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_5_address1_local = zext_ln14_fu_1756_p1;
        end else begin
            emission_5_address1_local = 'bx;
        end
    end else begin
        emission_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_5_ce0_local = 1'b1;
    end else begin
        emission_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_5_ce1_local = 1'b1;
    end else begin
        emission_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_6_address0_local = zext_ln14_7_fu_2385_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address0_local = zext_ln14_5_fu_2187_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address0_local = zext_ln14_3_fu_1982_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address0_local = zext_ln14_1_fu_1792_p1;
        end else begin
            emission_6_address0_local = 'bx;
        end
    end else begin
        emission_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_6_address1_local = zext_ln14_6_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_6_address1_local = zext_ln14_4_fu_2152_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_6_address1_local = zext_ln14_2_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_6_address1_local = zext_ln14_fu_1756_p1;
        end else begin
            emission_6_address1_local = 'bx;
        end
    end else begin
        emission_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_6_ce0_local = 1'b1;
    end else begin
        emission_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_6_ce1_local = 1'b1;
    end else begin
        emission_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_7_address0_local = zext_ln14_7_fu_2385_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address0_local = zext_ln14_5_fu_2187_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address0_local = zext_ln14_3_fu_1982_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address0_local = zext_ln14_1_fu_1792_p1;
        end else begin
            emission_7_address0_local = 'bx;
        end
    end else begin
        emission_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_7_address1_local = zext_ln14_6_fu_2361_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_7_address1_local = zext_ln14_4_fu_2152_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_7_address1_local = zext_ln14_2_fu_1958_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_7_address1_local = zext_ln14_fu_1756_p1;
        end else begin
            emission_7_address1_local = 'bx;
        end
    end else begin
        emission_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_7_ce0_local = 1'b1;
    end else begin
        emission_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        emission_7_ce1_local = 1'b1;
    end else begin
        emission_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1684_p0 = bitcast_ln14_54_fu_2557_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1684_p0 = bitcast_ln14_36_fu_2407_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1684_p0 = bitcast_ln14_18_fu_2199_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1684_p0 = bitcast_ln14_fu_1994_p1;
    end else begin
        grp_fu_1684_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1684_p1 = tmp_6_reg_4046;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1684_p1 = tmp_4_reg_3946;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1684_p1 = tmp_2_reg_3846;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1684_p1 = tmp_reg_3711;
    end else begin
        grp_fu_1684_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1688_p0 = bitcast_ln14_63_fu_2561_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1688_p0 = bitcast_ln14_45_fu_2411_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1688_p0 = bitcast_ln14_27_fu_2203_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1688_p0 = bitcast_ln14_9_fu_1998_p1;
    end else begin
        grp_fu_1688_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1688_p1 = tmp_7_reg_4051;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1688_p1 = tmp_5_reg_3951;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1688_p1 = tmp_3_reg_3851;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1688_p1 = tmp_1_reg_3721;
    end else begin
        grp_fu_1688_p1 = 'bx;
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
assign add6113_out = add6113_fu_498;
assign add617_out = add617_fu_306;
assign add61_out = add61_fu_274;
assign add633_out = add633_fu_338;
assign add649_out = add649_fu_370;
assign add665_out = add665_fu_402;
assign add681_out = add681_fu_434;
assign add697_out = add697_fu_466;
assign add6_1115_out = add6_1115_fu_502;
assign add6_119_out = add6_119_fu_310;
assign add6_135_out = add6_135_fu_342;
assign add6_13_out = add6_13_fu_278;
assign add6_151_out = add6_151_fu_374;
assign add6_167_out = add6_167_fu_406;
assign add6_183_out = add6_183_fu_438;
assign add6_199_out = add6_199_fu_470;
assign add6_2101_out = add6_2101_fu_474;
assign add6_2117_out = add6_2117_fu_506;
assign add6_221_out = add6_221_fu_314;
assign add6_237_out = add6_237_fu_346;
assign add6_253_out = add6_253_fu_378;
assign add6_25_out = add6_25_fu_282;
assign add6_269_out = add6_269_fu_410;
assign add6_285_out = add6_285_fu_442;
assign add6_3103_out = add6_3103_fu_478;
assign add6_3119_out = add6_3119_fu_510;
assign add6_323_out = add6_323_fu_318;
assign add6_339_out = add6_339_fu_350;
assign add6_355_out = add6_355_fu_382;
assign add6_371_out = add6_371_fu_414;
assign add6_37_out = add6_37_fu_286;
assign add6_387_out = add6_387_fu_446;
assign add6_4105_out = add6_4105_fu_482;
assign add6_4121_out = add6_4121_fu_514;
assign add6_425_out = add6_425_fu_322;
assign add6_441_out = add6_441_fu_354;
assign add6_457_out = add6_457_fu_386;
assign add6_473_out = add6_473_fu_418;
assign add6_489_out = add6_489_fu_450;
assign add6_49_out = add6_49_fu_290;
assign add6_5107_out = add6_5107_fu_486;
assign add6_511_out = add6_511_fu_294;
assign add6_5123_out = add6_5123_fu_518;
assign add6_527_out = add6_527_fu_326;
assign add6_543_out = add6_543_fu_358;
assign add6_559_out = add6_559_fu_390;
assign add6_575_out = add6_575_fu_422;
assign add6_591_out = add6_591_fu_454;
assign add6_6109_out = add6_6109_fu_490;
assign add6_6125_out = add6_6125_fu_522;
assign add6_613_out = add6_613_fu_298;
assign add6_629_out = add6_629_fu_330;
assign add6_645_out = add6_645_fu_362;
assign add6_661_out = add6_661_fu_394;
assign add6_677_out = add6_677_fu_426;
assign add6_693_out = add6_693_fu_458;
assign add6_7111_out = add6_7111_fu_494;
assign add6_7127_out = add6_7127_fu_526;
assign add6_715_out = add6_715_fu_302;
assign add6_731_out = add6_731_fu_334;
assign add6_747_out = add6_747_fu_366;
assign add6_763_out = add6_763_fu_398;
assign add6_779_out = add6_779_fu_430;
assign add6_795_out = add6_795_fu_462;
assign add_ln13_fu_2397_p2 = (s_1_reg_3558 + 7'd8);
assign add_ln14_1_fu_1953_p2 = (or_ln14_2_fu_1946_p3 + conv3_udiv_cast_cast_reg_3549);
assign add_ln14_2_fu_1977_p2 = (or_ln14_3_fu_1970_p3 + conv3_udiv_cast_cast_reg_3549);
assign add_ln14_3_fu_2182_p2 = (or_ln14_5_fu_2171_p5 + conv3_udiv_cast_cast_reg_3549);
assign add_ln14_4_fu_2356_p2 = (or_ln14_6_fu_2349_p3 + conv3_udiv_cast_cast_reg_3549);
assign add_ln14_5_fu_2380_p2 = (or_ln14_7_fu_2373_p3 + conv3_udiv_cast_cast_reg_3549);
assign add_ln14_fu_1786_p2 = (or_ln14_1_fu_1778_p3 + conv3_udiv_cast_cast_fu_1692_p1);
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
assign bitcast_ln14_18_fu_2199_p1 = init_2_load_reg_3726;
assign bitcast_ln14_27_fu_2203_p1 = init_3_load_reg_3771;
assign bitcast_ln14_36_fu_2407_p1 = init_4_load_reg_3816;
assign bitcast_ln14_45_fu_2411_p1 = init_5_load_reg_3821;
assign bitcast_ln14_54_fu_2557_p1 = init_6_load_reg_3826;
assign bitcast_ln14_63_fu_2561_p1 = init_7_load_reg_3831;
assign bitcast_ln14_9_fu_1998_p1 = init_1_load_reg_3716;
assign bitcast_ln14_fu_1994_p1 = init_0_load_reg_3706;
assign conv3_udiv_cast_cast_fu_1692_p1 = conv3_udiv_cast;
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
assign grp_fu_4451_p_din0 = grp_fu_1684_p0;
assign grp_fu_4451_p_din1 = grp_fu_1684_p1;
assign grp_fu_4451_p_opcode = 2'd0;
assign init_0_address0 = zext_ln9_fu_1726_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_1726_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_2_address0 = zext_ln9_fu_1726_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_3_address0 = zext_ln9_fu_1726_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_4_address0 = zext_ln9_fu_1726_p1;
assign init_4_ce0 = init_4_ce0_local;
assign init_5_address0 = zext_ln9_fu_1726_p1;
assign init_5_ce0 = init_5_ce0_local;
assign init_6_address0 = zext_ln9_fu_1726_p1;
assign init_6_ce0 = init_6_ce0_local;
assign init_7_address0 = zext_ln9_fu_1726_p1;
assign init_7_ce0 = init_7_ce0_local;
assign lshr_ln9_fu_1716_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign or_ln14_1_fu_1778_p3 = {{tmp_190_fu_1768_p4}, {4'd8}};
assign or_ln14_2_fu_1946_p3 = {{tmp_s_reg_3585}, {5'd16}};
assign or_ln14_3_fu_1970_p3 = {{tmp_s_reg_3585}, {5'd24}};
assign or_ln14_4_fu_2144_p4 = {{{lshr_ln9_reg_3572}, {1'd1}}, {conv3_udiv}};
assign or_ln14_5_fu_2171_p5 = {{{{lshr_ln9_reg_3572}, {1'd1}}, {tmp_161_fu_2164_p3}}, {4'd8}};
assign or_ln14_6_fu_2349_p3 = {{lshr_ln9_reg_3572}, {6'd48}};
assign or_ln14_7_fu_2373_p3 = {{lshr_ln9_reg_3572}, {6'd56}};
assign or_ln_fu_1748_p3 = {{tmp_s_fu_1738_p4}, {conv3_udiv}};
assign tmp_161_fu_2164_p3 = s_1_reg_3558[32'd1];
assign tmp_190_fu_1768_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign tmp_1_fu_1907_p10 = emission_4_q0;
assign tmp_1_fu_1907_p12 = emission_5_q0;
assign tmp_1_fu_1907_p14 = emission_6_q0;
assign tmp_1_fu_1907_p16 = emission_7_q0;
assign tmp_1_fu_1907_p17 = 'bx;
assign tmp_1_fu_1907_p2 = emission_0_q0;
assign tmp_1_fu_1907_p4 = emission_1_q0;
assign tmp_1_fu_1907_p6 = emission_2_q0;
assign tmp_1_fu_1907_p8 = emission_3_q0;
assign tmp_2_fu_2034_p10 = emission_4_q1;
assign tmp_2_fu_2034_p12 = emission_5_q1;
assign tmp_2_fu_2034_p14 = emission_6_q1;
assign tmp_2_fu_2034_p16 = emission_7_q1;
assign tmp_2_fu_2034_p17 = 'bx;
assign tmp_2_fu_2034_p2 = emission_0_q1;
assign tmp_2_fu_2034_p4 = emission_1_q1;
assign tmp_2_fu_2034_p6 = emission_2_q1;
assign tmp_2_fu_2034_p8 = emission_3_q1;
assign tmp_3_fu_2105_p10 = emission_4_q0;
assign tmp_3_fu_2105_p12 = emission_5_q0;
assign tmp_3_fu_2105_p14 = emission_6_q0;
assign tmp_3_fu_2105_p16 = emission_7_q0;
assign tmp_3_fu_2105_p17 = 'bx;
assign tmp_3_fu_2105_p2 = emission_0_q0;
assign tmp_3_fu_2105_p4 = emission_1_q0;
assign tmp_3_fu_2105_p6 = emission_2_q0;
assign tmp_3_fu_2105_p8 = emission_3_q0;
assign tmp_4_fu_2239_p10 = emission_4_q1;
assign tmp_4_fu_2239_p12 = emission_5_q1;
assign tmp_4_fu_2239_p14 = emission_6_q1;
assign tmp_4_fu_2239_p16 = emission_7_q1;
assign tmp_4_fu_2239_p17 = 'bx;
assign tmp_4_fu_2239_p2 = emission_0_q1;
assign tmp_4_fu_2239_p4 = emission_1_q1;
assign tmp_4_fu_2239_p6 = emission_2_q1;
assign tmp_4_fu_2239_p8 = emission_3_q1;
assign tmp_5_fu_2310_p10 = emission_4_q0;
assign tmp_5_fu_2310_p12 = emission_5_q0;
assign tmp_5_fu_2310_p14 = emission_6_q0;
assign tmp_5_fu_2310_p16 = emission_7_q0;
assign tmp_5_fu_2310_p17 = 'bx;
assign tmp_5_fu_2310_p2 = emission_0_q0;
assign tmp_5_fu_2310_p4 = emission_1_q0;
assign tmp_5_fu_2310_p6 = emission_2_q0;
assign tmp_5_fu_2310_p8 = emission_3_q0;
assign tmp_6_fu_2447_p10 = emission_4_q1;
assign tmp_6_fu_2447_p12 = emission_5_q1;
assign tmp_6_fu_2447_p14 = emission_6_q1;
assign tmp_6_fu_2447_p16 = emission_7_q1;
assign tmp_6_fu_2447_p17 = 'bx;
assign tmp_6_fu_2447_p2 = emission_0_q1;
assign tmp_6_fu_2447_p4 = emission_1_q1;
assign tmp_6_fu_2447_p6 = emission_2_q1;
assign tmp_6_fu_2447_p8 = emission_3_q1;
assign tmp_7_fu_2518_p10 = emission_4_q0;
assign tmp_7_fu_2518_p12 = emission_5_q0;
assign tmp_7_fu_2518_p14 = emission_6_q0;
assign tmp_7_fu_2518_p16 = emission_7_q0;
assign tmp_7_fu_2518_p17 = 'bx;
assign tmp_7_fu_2518_p2 = emission_0_q0;
assign tmp_7_fu_2518_p4 = emission_1_q0;
assign tmp_7_fu_2518_p6 = emission_2_q0;
assign tmp_7_fu_2518_p8 = emission_3_q0;
assign tmp_fu_1836_p10 = emission_4_q1;
assign tmp_fu_1836_p12 = emission_5_q1;
assign tmp_fu_1836_p14 = emission_6_q1;
assign tmp_fu_1836_p16 = emission_7_q1;
assign tmp_fu_1836_p17 = 'bx;
assign tmp_fu_1836_p2 = emission_0_q1;
assign tmp_fu_1836_p4 = emission_1_q1;
assign tmp_fu_1836_p6 = emission_2_q1;
assign tmp_fu_1836_p8 = emission_3_q1;
assign tmp_s_fu_1738_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign trunc_ln13_fu_1712_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln14_1_fu_1792_p1 = add_ln14_fu_1786_p2;
assign zext_ln14_2_fu_1958_p1 = add_ln14_1_fu_1953_p2;
assign zext_ln14_3_fu_1982_p1 = add_ln14_2_fu_1977_p2;
assign zext_ln14_4_fu_2152_p1 = or_ln14_4_fu_2144_p4;
assign zext_ln14_5_fu_2187_p1 = add_ln14_3_fu_2182_p2;
assign zext_ln14_6_fu_2361_p1 = add_ln14_4_fu_2356_p2;
assign zext_ln14_7_fu_2385_p1 = add_ln14_5_fu_2380_p2;
assign zext_ln14_fu_1756_p1 = or_ln_fu_1748_p3;
assign zext_ln9_fu_1726_p1 = lshr_ln9_fu_1716_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_3549[8:5] <= 4'b0000;
end
endmodule 