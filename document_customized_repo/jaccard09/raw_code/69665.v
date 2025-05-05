module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,conv3_udiv_cast,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,emission_2_address0,emission_2_ce0,emission_2_q0,emission_3_address0,emission_3_ce0,emission_3_q0,empty,add6128_out,add6128_out_ap_vld,add6126_out,add6126_out_ap_vld,add6124_out,add6124_out_ap_vld,add6122_out,add6122_out_ap_vld,add6120_out,add6120_out_ap_vld,add6118_out,add6118_out_ap_vld,add6116_out,add6116_out_ap_vld,add6114_out,add6114_out_ap_vld,add6112_out,add6112_out_ap_vld,add6110_out,add6110_out_ap_vld,add6108_out,add6108_out_ap_vld,add6106_out,add6106_out_ap_vld,add6104_out,add6104_out_ap_vld,add6102_out,add6102_out_ap_vld,add6100_out,add6100_out_ap_vld,add698_out,add698_out_ap_vld,add696_out,add696_out_ap_vld,add694_out,add694_out_ap_vld,add692_out,add692_out_ap_vld,add690_out,add690_out_ap_vld,add688_out,add688_out_ap_vld,add686_out,add686_out_ap_vld,add684_out,add684_out_ap_vld,add682_out,add682_out_ap_vld,add680_out,add680_out_ap_vld,add678_out,add678_out_ap_vld,add676_out,add676_out_ap_vld,add674_out,add674_out_ap_vld,add672_out,add672_out_ap_vld,add670_out,add670_out_ap_vld,add668_out,add668_out_ap_vld,add666_out,add666_out_ap_vld,add664_out,add664_out_ap_vld,add662_out,add662_out_ap_vld,add660_out,add660_out_ap_vld,add658_out,add658_out_ap_vld,add656_out,add656_out_ap_vld,add654_out,add654_out_ap_vld,add652_out,add652_out_ap_vld,add650_out,add650_out_ap_vld,add648_out,add648_out_ap_vld,add646_out,add646_out_ap_vld,add644_out,add644_out_ap_vld,add642_out,add642_out_ap_vld,add640_out,add640_out_ap_vld,add638_out,add638_out_ap_vld,add636_out,add636_out_ap_vld,add634_out,add634_out_ap_vld,add632_out,add632_out_ap_vld,add630_out,add630_out_ap_vld,add628_out,add628_out_ap_vld,add626_out,add626_out_ap_vld,add624_out,add624_out_ap_vld,add622_out,add622_out_ap_vld,add620_out,add620_out_ap_vld,add618_out,add618_out_ap_vld,add616_out,add616_out_ap_vld,add614_out,add614_out_ap_vld,add612_out,add612_out_ap_vld,add610_out,add610_out_ap_vld,add68_out,add68_out_ap_vld,add66_out,add66_out_ap_vld,add64_out,add64_out_ap_vld,add62_out,add62_out_ap_vld,grp_fu_3032_p_din0,grp_fu_3032_p_din1,grp_fu_3032_p_opcode,grp_fu_3032_p_dout0,grp_fu_3032_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [3:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [3:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [3:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
input  [5:0] conv3_udiv_cast;
output  [9:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [9:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [9:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [9:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
input  [1:0] empty;
output  [63:0] add6128_out;
output   add6128_out_ap_vld;
output  [63:0] add6126_out;
output   add6126_out_ap_vld;
output  [63:0] add6124_out;
output   add6124_out_ap_vld;
output  [63:0] add6122_out;
output   add6122_out_ap_vld;
output  [63:0] add6120_out;
output   add6120_out_ap_vld;
output  [63:0] add6118_out;
output   add6118_out_ap_vld;
output  [63:0] add6116_out;
output   add6116_out_ap_vld;
output  [63:0] add6114_out;
output   add6114_out_ap_vld;
output  [63:0] add6112_out;
output   add6112_out_ap_vld;
output  [63:0] add6110_out;
output   add6110_out_ap_vld;
output  [63:0] add6108_out;
output   add6108_out_ap_vld;
output  [63:0] add6106_out;
output   add6106_out_ap_vld;
output  [63:0] add6104_out;
output   add6104_out_ap_vld;
output  [63:0] add6102_out;
output   add6102_out_ap_vld;
output  [63:0] add6100_out;
output   add6100_out_ap_vld;
output  [63:0] add698_out;
output   add698_out_ap_vld;
output  [63:0] add696_out;
output   add696_out_ap_vld;
output  [63:0] add694_out;
output   add694_out_ap_vld;
output  [63:0] add692_out;
output   add692_out_ap_vld;
output  [63:0] add690_out;
output   add690_out_ap_vld;
output  [63:0] add688_out;
output   add688_out_ap_vld;
output  [63:0] add686_out;
output   add686_out_ap_vld;
output  [63:0] add684_out;
output   add684_out_ap_vld;
output  [63:0] add682_out;
output   add682_out_ap_vld;
output  [63:0] add680_out;
output   add680_out_ap_vld;
output  [63:0] add678_out;
output   add678_out_ap_vld;
output  [63:0] add676_out;
output   add676_out_ap_vld;
output  [63:0] add674_out;
output   add674_out_ap_vld;
output  [63:0] add672_out;
output   add672_out_ap_vld;
output  [63:0] add670_out;
output   add670_out_ap_vld;
output  [63:0] add668_out;
output   add668_out_ap_vld;
output  [63:0] add666_out;
output   add666_out_ap_vld;
output  [63:0] add664_out;
output   add664_out_ap_vld;
output  [63:0] add662_out;
output   add662_out_ap_vld;
output  [63:0] add660_out;
output   add660_out_ap_vld;
output  [63:0] add658_out;
output   add658_out_ap_vld;
output  [63:0] add656_out;
output   add656_out_ap_vld;
output  [63:0] add654_out;
output   add654_out_ap_vld;
output  [63:0] add652_out;
output   add652_out_ap_vld;
output  [63:0] add650_out;
output   add650_out_ap_vld;
output  [63:0] add648_out;
output   add648_out_ap_vld;
output  [63:0] add646_out;
output   add646_out_ap_vld;
output  [63:0] add644_out;
output   add644_out_ap_vld;
output  [63:0] add642_out;
output   add642_out_ap_vld;
output  [63:0] add640_out;
output   add640_out_ap_vld;
output  [63:0] add638_out;
output   add638_out_ap_vld;
output  [63:0] add636_out;
output   add636_out_ap_vld;
output  [63:0] add634_out;
output   add634_out_ap_vld;
output  [63:0] add632_out;
output   add632_out_ap_vld;
output  [63:0] add630_out;
output   add630_out_ap_vld;
output  [63:0] add628_out;
output   add628_out_ap_vld;
output  [63:0] add626_out;
output   add626_out_ap_vld;
output  [63:0] add624_out;
output   add624_out_ap_vld;
output  [63:0] add622_out;
output   add622_out_ap_vld;
output  [63:0] add620_out;
output   add620_out_ap_vld;
output  [63:0] add618_out;
output   add618_out_ap_vld;
output  [63:0] add616_out;
output   add616_out_ap_vld;
output  [63:0] add614_out;
output   add614_out_ap_vld;
output  [63:0] add612_out;
output   add612_out_ap_vld;
output  [63:0] add610_out;
output   add610_out_ap_vld;
output  [63:0] add68_out;
output   add68_out_ap_vld;
output  [63:0] add66_out;
output   add66_out_ap_vld;
output  [63:0] add64_out;
output   add64_out_ap_vld;
output  [63:0] add62_out;
output   add62_out_ap_vld;
output  [63:0] grp_fu_3032_p_din0;
output  [63:0] grp_fu_3032_p_din1;
output  [1:0] grp_fu_3032_p_opcode;
input  [63:0] grp_fu_3032_p_dout0;
output   grp_fu_3032_p_ce;
reg ap_idle;
reg add6128_out_ap_vld;
reg add6126_out_ap_vld;
reg add6124_out_ap_vld;
reg add6122_out_ap_vld;
reg add6120_out_ap_vld;
reg add6118_out_ap_vld;
reg add6116_out_ap_vld;
reg add6114_out_ap_vld;
reg add6112_out_ap_vld;
reg add6110_out_ap_vld;
reg add6108_out_ap_vld;
reg add6106_out_ap_vld;
reg add6104_out_ap_vld;
reg add6102_out_ap_vld;
reg add6100_out_ap_vld;
reg add698_out_ap_vld;
reg add696_out_ap_vld;
reg add694_out_ap_vld;
reg add692_out_ap_vld;
reg add690_out_ap_vld;
reg add688_out_ap_vld;
reg add686_out_ap_vld;
reg add684_out_ap_vld;
reg add682_out_ap_vld;
reg add680_out_ap_vld;
reg add678_out_ap_vld;
reg add676_out_ap_vld;
reg add674_out_ap_vld;
reg add672_out_ap_vld;
reg add670_out_ap_vld;
reg add668_out_ap_vld;
reg add666_out_ap_vld;
reg add664_out_ap_vld;
reg add662_out_ap_vld;
reg add660_out_ap_vld;
reg add658_out_ap_vld;
reg add656_out_ap_vld;
reg add654_out_ap_vld;
reg add652_out_ap_vld;
reg add650_out_ap_vld;
reg add648_out_ap_vld;
reg add646_out_ap_vld;
reg add644_out_ap_vld;
reg add642_out_ap_vld;
reg add640_out_ap_vld;
reg add638_out_ap_vld;
reg add636_out_ap_vld;
reg add634_out_ap_vld;
reg add632_out_ap_vld;
reg add630_out_ap_vld;
reg add628_out_ap_vld;
reg add626_out_ap_vld;
reg add624_out_ap_vld;
reg add622_out_ap_vld;
reg add620_out_ap_vld;
reg add618_out_ap_vld;
reg add616_out_ap_vld;
reg add614_out_ap_vld;
reg add612_out_ap_vld;
reg add610_out_ap_vld;
reg add68_out_ap_vld;
reg add66_out_ap_vld;
reg add64_out_ap_vld;
reg add62_out_ap_vld;
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
wire   [0:0] icmp_ln13_fu_1172_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln13_reg_2287;
reg   [0:0] icmp_ln13_reg_2287_pp0_iter1_reg;
reg   [0:0] icmp_ln13_reg_2287_pp0_iter2_reg;
reg   [0:0] icmp_ln13_reg_2287_pp0_iter3_reg;
reg   [0:0] icmp_ln13_reg_2287_pp0_iter4_reg;
reg   [0:0] icmp_ln13_reg_2287_pp0_iter5_reg;
reg   [0:0] icmp_ln13_reg_2287_pp0_iter6_reg;
reg   [0:0] icmp_ln13_reg_2287_pp0_iter7_reg;
wire   [1:0] trunc_ln13_fu_1184_p1;
reg   [1:0] trunc_ln13_reg_2291;
wire   [5:0] trunc_ln13_1_fu_1188_p1;
reg   [5:0] trunc_ln13_1_reg_2296;
reg   [5:0] trunc_ln13_1_reg_2296_pp0_iter1_reg;
reg   [5:0] trunc_ln13_1_reg_2296_pp0_iter2_reg;
reg   [5:0] trunc_ln13_1_reg_2296_pp0_iter3_reg;
reg   [5:0] trunc_ln13_1_reg_2296_pp0_iter4_reg;
reg   [5:0] trunc_ln13_1_reg_2296_pp0_iter5_reg;
reg   [5:0] trunc_ln13_1_reg_2296_pp0_iter6_reg;
reg   [5:0] trunc_ln13_1_reg_2296_pp0_iter7_reg;
wire   [63:0] tmp_fu_1253_p11;
reg   [63:0] tmp_reg_2340;
wire   [63:0] tmp_1_fu_1292_p11;
reg   [63:0] tmp_1_reg_2345;
wire   [63:0] zext_ln9_fu_1202_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1224_p1;
reg   [6:0] s_fu_332;
wire   [6:0] add_ln13_fu_1178_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add62_fu_336;
reg    ap_predicate_pred995_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [63:0] add64_fu_340;
reg    ap_predicate_pred1017_state10;
reg   [63:0] add66_fu_344;
reg    ap_predicate_pred1026_state10;
reg   [63:0] add68_fu_348;
reg    ap_predicate_pred1035_state10;
reg   [63:0] add610_fu_352;
reg    ap_predicate_pred1044_state10;
reg   [63:0] add612_fu_356;
reg    ap_predicate_pred1053_state10;
reg   [63:0] add614_fu_360;
reg    ap_predicate_pred1062_state10;
reg   [63:0] add616_fu_364;
reg    ap_predicate_pred1071_state10;
reg   [63:0] add618_fu_368;
reg    ap_predicate_pred1080_state10;
reg   [63:0] add620_fu_372;
reg    ap_predicate_pred1089_state10;
reg   [63:0] add622_fu_376;
reg    ap_predicate_pred1098_state10;
reg   [63:0] add624_fu_380;
reg    ap_predicate_pred1107_state10;
reg   [63:0] add626_fu_384;
reg    ap_predicate_pred1116_state10;
reg   [63:0] add628_fu_388;
reg    ap_predicate_pred1125_state10;
reg   [63:0] add630_fu_392;
reg    ap_predicate_pred1134_state10;
reg   [63:0] add632_fu_396;
reg    ap_predicate_pred1143_state10;
reg   [63:0] add634_fu_400;
reg    ap_predicate_pred1152_state10;
reg   [63:0] add636_fu_404;
reg    ap_predicate_pred1161_state10;
reg   [63:0] add638_fu_408;
reg    ap_predicate_pred1170_state10;
reg   [63:0] add640_fu_412;
reg    ap_predicate_pred1179_state10;
reg   [63:0] add642_fu_416;
reg    ap_predicate_pred1188_state10;
reg   [63:0] add644_fu_420;
reg    ap_predicate_pred1197_state10;
reg   [63:0] add646_fu_424;
reg    ap_predicate_pred1206_state10;
reg   [63:0] add648_fu_428;
reg    ap_predicate_pred1215_state10;
reg   [63:0] add650_fu_432;
reg    ap_predicate_pred1224_state10;
reg   [63:0] add652_fu_436;
reg    ap_predicate_pred1233_state10;
reg   [63:0] add654_fu_440;
reg    ap_predicate_pred1242_state10;
reg   [63:0] add656_fu_444;
reg    ap_predicate_pred1251_state10;
reg   [63:0] add658_fu_448;
reg    ap_predicate_pred1260_state10;
reg   [63:0] add660_fu_452;
reg    ap_predicate_pred1269_state10;
reg   [63:0] add662_fu_456;
reg    ap_predicate_pred1278_state10;
reg   [63:0] add664_fu_460;
reg    ap_predicate_pred1287_state10;
reg   [63:0] add666_fu_464;
reg    ap_predicate_pred1296_state10;
reg   [63:0] add668_fu_468;
reg    ap_predicate_pred1305_state10;
reg   [63:0] add670_fu_472;
reg    ap_predicate_pred1314_state10;
reg   [63:0] add672_fu_476;
reg    ap_predicate_pred1323_state10;
reg   [63:0] add674_fu_480;
reg    ap_predicate_pred1332_state10;
reg   [63:0] add676_fu_484;
reg    ap_predicate_pred1341_state10;
reg   [63:0] add678_fu_488;
reg    ap_predicate_pred1350_state10;
reg   [63:0] add680_fu_492;
reg    ap_predicate_pred1359_state10;
reg   [63:0] add682_fu_496;
reg    ap_predicate_pred1368_state10;
reg   [63:0] add684_fu_500;
reg    ap_predicate_pred1377_state10;
reg   [63:0] add686_fu_504;
reg    ap_predicate_pred1386_state10;
reg   [63:0] add688_fu_508;
reg    ap_predicate_pred1395_state10;
reg   [63:0] add690_fu_512;
reg    ap_predicate_pred1404_state10;
reg   [63:0] add692_fu_516;
reg    ap_predicate_pred1413_state10;
reg   [63:0] add694_fu_520;
reg    ap_predicate_pred1422_state10;
reg   [63:0] add696_fu_524;
reg    ap_predicate_pred1431_state10;
reg   [63:0] add698_fu_528;
reg    ap_predicate_pred1440_state10;
reg   [63:0] add6100_fu_532;
reg    ap_predicate_pred1449_state10;
reg   [63:0] add6102_fu_536;
reg    ap_predicate_pred1458_state10;
reg   [63:0] add6104_fu_540;
reg    ap_predicate_pred1467_state10;
reg   [63:0] add6106_fu_544;
reg    ap_predicate_pred1476_state10;
reg   [63:0] add6108_fu_548;
reg    ap_predicate_pred1485_state10;
reg   [63:0] add6110_fu_552;
reg    ap_predicate_pred1494_state10;
reg   [63:0] add6112_fu_556;
reg    ap_predicate_pred1503_state10;
reg   [63:0] add6114_fu_560;
reg    ap_predicate_pred1512_state10;
reg   [63:0] add6116_fu_564;
reg    ap_predicate_pred1521_state10;
reg   [63:0] add6118_fu_568;
reg    ap_predicate_pred1530_state10;
reg   [63:0] add6120_fu_572;
reg    ap_predicate_pred1539_state10;
reg   [63:0] add6122_fu_576;
reg    ap_predicate_pred1548_state10;
reg   [63:0] add6124_fu_580;
reg    ap_predicate_pred1557_state10;
reg   [63:0] add6126_fu_584;
reg    ap_predicate_pred1566_state10;
reg   [63:0] add6128_fu_588;
reg    ap_predicate_pred1575_state10;
wire    ap_block_pp0_stage0_01001;
reg    init_0_ce0_local;
reg    init_1_ce0_local;
reg    init_2_ce0_local;
reg    init_3_ce0_local;
reg    emission_0_ce0_local;
reg    emission_1_ce0_local;
reg    emission_2_ce0_local;
reg    emission_3_ce0_local;
wire   [3:0] lshr_ln9_fu_1192_p4;
wire   [9:0] shl_ln_fu_1210_p3;
wire   [9:0] conv3_udiv_cast_cast_fu_1160_p1;
wire   [9:0] add_ln14_fu_1218_p2;
wire   [63:0] tmp_fu_1253_p2;
wire   [63:0] tmp_fu_1253_p4;
wire   [63:0] tmp_fu_1253_p6;
wire   [63:0] tmp_fu_1253_p8;
wire   [63:0] tmp_fu_1253_p9;
wire   [63:0] tmp_1_fu_1292_p2;
wire   [63:0] tmp_1_fu_1292_p4;
wire   [63:0] tmp_1_fu_1292_p6;
wire   [63:0] tmp_1_fu_1292_p8;
wire   [63:0] tmp_1_fu_1292_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire   [1:0] tmp_fu_1253_p1;
wire   [1:0] tmp_fu_1253_p3;
wire  signed [1:0] tmp_fu_1253_p5;
wire  signed [1:0] tmp_fu_1253_p7;
wire   [1:0] tmp_1_fu_1292_p1;
wire   [1:0] tmp_1_fu_1292_p3;
wire  signed [1:0] tmp_1_fu_1292_p5;
wire  signed [1:0] tmp_1_fu_1292_p7;
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
#0 s_fu_332 = 7'd0;
#0 add62_fu_336 = 64'd0;
#0 add64_fu_340 = 64'd0;
#0 add66_fu_344 = 64'd0;
#0 add68_fu_348 = 64'd0;
#0 add610_fu_352 = 64'd0;
#0 add612_fu_356 = 64'd0;
#0 add614_fu_360 = 64'd0;
#0 add616_fu_364 = 64'd0;
#0 add618_fu_368 = 64'd0;
#0 add620_fu_372 = 64'd0;
#0 add622_fu_376 = 64'd0;
#0 add624_fu_380 = 64'd0;
#0 add626_fu_384 = 64'd0;
#0 add628_fu_388 = 64'd0;
#0 add630_fu_392 = 64'd0;
#0 add632_fu_396 = 64'd0;
#0 add634_fu_400 = 64'd0;
#0 add636_fu_404 = 64'd0;
#0 add638_fu_408 = 64'd0;
#0 add640_fu_412 = 64'd0;
#0 add642_fu_416 = 64'd0;
#0 add644_fu_420 = 64'd0;
#0 add646_fu_424 = 64'd0;
#0 add648_fu_428 = 64'd0;
#0 add650_fu_432 = 64'd0;
#0 add652_fu_436 = 64'd0;
#0 add654_fu_440 = 64'd0;
#0 add656_fu_444 = 64'd0;
#0 add658_fu_448 = 64'd0;
#0 add660_fu_452 = 64'd0;
#0 add662_fu_456 = 64'd0;
#0 add664_fu_460 = 64'd0;
#0 add666_fu_464 = 64'd0;
#0 add668_fu_468 = 64'd0;
#0 add670_fu_472 = 64'd0;
#0 add672_fu_476 = 64'd0;
#0 add674_fu_480 = 64'd0;
#0 add676_fu_484 = 64'd0;
#0 add678_fu_488 = 64'd0;
#0 add680_fu_492 = 64'd0;
#0 add682_fu_496 = 64'd0;
#0 add684_fu_500 = 64'd0;
#0 add686_fu_504 = 64'd0;
#0 add688_fu_508 = 64'd0;
#0 add690_fu_512 = 64'd0;
#0 add692_fu_516 = 64'd0;
#0 add694_fu_520 = 64'd0;
#0 add696_fu_524 = 64'd0;
#0 add698_fu_528 = 64'd0;
#0 add6100_fu_532 = 64'd0;
#0 add6102_fu_536 = 64'd0;
#0 add6104_fu_540 = 64'd0;
#0 add6106_fu_544 = 64'd0;
#0 add6108_fu_548 = 64'd0;
#0 add6110_fu_552 = 64'd0;
#0 add6112_fu_556 = 64'd0;
#0 add6114_fu_560 = 64'd0;
#0 add6116_fu_564 = 64'd0;
#0 add6118_fu_568 = 64'd0;
#0 add6120_fu_572 = 64'd0;
#0 add6122_fu_576 = 64'd0;
#0 add6124_fu_580 = 64'd0;
#0 add6126_fu_584 = 64'd0;
#0 add6128_fu_588 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2(.din0(tmp_fu_1253_p2),.din1(tmp_fu_1253_p4),.din2(tmp_fu_1253_p6),.din3(tmp_fu_1253_p8),.def(tmp_fu_1253_p9),.sel(trunc_ln13_reg_2291),.dout(tmp_fu_1253_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_1_fu_1292_p2),.din1(tmp_1_fu_1292_p4),.din2(tmp_1_fu_1292_p6),.din3(tmp_1_fu_1292_p8),.def(tmp_1_fu_1292_p9),.sel(empty),.dout(tmp_1_fu_1292_p11));
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
        if (((icmp_ln13_fu_1172_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            s_fu_332 <= add_ln13_fu_1178_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            s_fu_332 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1449_state10 == 1'b1))) begin
        add6100_fu_532 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1458_state10 == 1'b1))) begin
        add6102_fu_536 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1467_state10 == 1'b1))) begin
        add6104_fu_540 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1476_state10 == 1'b1))) begin
        add6106_fu_544 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1485_state10 == 1'b1))) begin
        add6108_fu_548 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1044_state10 == 1'b1))) begin
        add610_fu_352 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1494_state10 == 1'b1))) begin
        add6110_fu_552 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1503_state10 == 1'b1))) begin
        add6112_fu_556 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1512_state10 == 1'b1))) begin
        add6114_fu_560 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1521_state10 == 1'b1))) begin
        add6116_fu_564 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1530_state10 == 1'b1))) begin
        add6118_fu_568 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1539_state10 == 1'b1))) begin
        add6120_fu_572 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1548_state10 == 1'b1))) begin
        add6122_fu_576 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1557_state10 == 1'b1))) begin
        add6124_fu_580 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1566_state10 == 1'b1))) begin
        add6126_fu_584 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1575_state10 == 1'b1))) begin
        add6128_fu_588 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1053_state10 == 1'b1))) begin
        add612_fu_356 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1062_state10 == 1'b1))) begin
        add614_fu_360 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1071_state10 == 1'b1))) begin
        add616_fu_364 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1080_state10 == 1'b1))) begin
        add618_fu_368 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1089_state10 == 1'b1))) begin
        add620_fu_372 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1098_state10 == 1'b1))) begin
        add622_fu_376 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1107_state10 == 1'b1))) begin
        add624_fu_380 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1116_state10 == 1'b1))) begin
        add626_fu_384 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1125_state10 == 1'b1))) begin
        add628_fu_388 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred995_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        add62_fu_336 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1134_state10 == 1'b1))) begin
        add630_fu_392 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1143_state10 == 1'b1))) begin
        add632_fu_396 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1152_state10 == 1'b1))) begin
        add634_fu_400 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1161_state10 == 1'b1))) begin
        add636_fu_404 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1170_state10 == 1'b1))) begin
        add638_fu_408 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1179_state10 == 1'b1))) begin
        add640_fu_412 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1188_state10 == 1'b1))) begin
        add642_fu_416 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1197_state10 == 1'b1))) begin
        add644_fu_420 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1206_state10 == 1'b1))) begin
        add646_fu_424 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1215_state10 == 1'b1))) begin
        add648_fu_428 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1017_state10 == 1'b1))) begin
        add64_fu_340 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1224_state10 == 1'b1))) begin
        add650_fu_432 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1233_state10 == 1'b1))) begin
        add652_fu_436 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1242_state10 == 1'b1))) begin
        add654_fu_440 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1251_state10 == 1'b1))) begin
        add656_fu_444 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1260_state10 == 1'b1))) begin
        add658_fu_448 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1269_state10 == 1'b1))) begin
        add660_fu_452 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1278_state10 == 1'b1))) begin
        add662_fu_456 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1287_state10 == 1'b1))) begin
        add664_fu_460 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1296_state10 == 1'b1))) begin
        add666_fu_464 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1305_state10 == 1'b1))) begin
        add668_fu_468 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1026_state10 == 1'b1))) begin
        add66_fu_344 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1314_state10 == 1'b1))) begin
        add670_fu_472 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1323_state10 == 1'b1))) begin
        add672_fu_476 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1332_state10 == 1'b1))) begin
        add674_fu_480 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1341_state10 == 1'b1))) begin
        add676_fu_484 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1350_state10 == 1'b1))) begin
        add678_fu_488 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1359_state10 == 1'b1))) begin
        add680_fu_492 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1368_state10 == 1'b1))) begin
        add682_fu_496 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1377_state10 == 1'b1))) begin
        add684_fu_500 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1386_state10 == 1'b1))) begin
        add686_fu_504 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1395_state10 == 1'b1))) begin
        add688_fu_508 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1035_state10 == 1'b1))) begin
        add68_fu_348 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1404_state10 == 1'b1))) begin
        add690_fu_512 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1413_state10 == 1'b1))) begin
        add692_fu_516 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1422_state10 == 1'b1))) begin
        add694_fu_520 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1431_state10 == 1'b1))) begin
        add696_fu_524 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1440_state10 == 1'b1))) begin
        add698_fu_528 <= grp_fu_3032_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln13_reg_2287 <= icmp_ln13_fu_1172_p2;
        icmp_ln13_reg_2287_pp0_iter1_reg <= icmp_ln13_reg_2287;
        tmp_1_reg_2345 <= tmp_1_fu_1292_p11;
        tmp_reg_2340 <= tmp_fu_1253_p11;
        trunc_ln13_1_reg_2296 <= trunc_ln13_1_fu_1188_p1;
        trunc_ln13_1_reg_2296_pp0_iter1_reg <= trunc_ln13_1_reg_2296;
        trunc_ln13_reg_2291 <= trunc_ln13_fu_1184_p1;
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
        ap_predicate_pred1017_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd61);
        ap_predicate_pred1026_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd60);
        ap_predicate_pred1035_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd59);
        ap_predicate_pred1044_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd58);
        ap_predicate_pred1053_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd57);
        ap_predicate_pred1062_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd56);
        ap_predicate_pred1071_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd55);
        ap_predicate_pred1080_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd54);
        ap_predicate_pred1089_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd53);
        ap_predicate_pred1098_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd52);
        ap_predicate_pred1107_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd51);
        ap_predicate_pred1116_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd50);
        ap_predicate_pred1125_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd49);
        ap_predicate_pred1134_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd48);
        ap_predicate_pred1143_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd47);
        ap_predicate_pred1152_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd46);
        ap_predicate_pred1161_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd45);
        ap_predicate_pred1170_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd44);
        ap_predicate_pred1179_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd43);
        ap_predicate_pred1188_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd42);
        ap_predicate_pred1197_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd41);
        ap_predicate_pred1206_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd40);
        ap_predicate_pred1215_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd39);
        ap_predicate_pred1224_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd38);
        ap_predicate_pred1233_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd37);
        ap_predicate_pred1242_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd36);
        ap_predicate_pred1251_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd35);
        ap_predicate_pred1260_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd34);
        ap_predicate_pred1269_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd33);
        ap_predicate_pred1278_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd32);
        ap_predicate_pred1287_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd31);
        ap_predicate_pred1296_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd30);
        ap_predicate_pred1305_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd29);
        ap_predicate_pred1314_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd28);
        ap_predicate_pred1323_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd27);
        ap_predicate_pred1332_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd26);
        ap_predicate_pred1341_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd25);
        ap_predicate_pred1350_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd24);
        ap_predicate_pred1359_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd23);
        ap_predicate_pred1368_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd22);
        ap_predicate_pred1377_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd21);
        ap_predicate_pred1386_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd20);
        ap_predicate_pred1395_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd19);
        ap_predicate_pred1404_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd18);
        ap_predicate_pred1413_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd17);
        ap_predicate_pred1422_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd16);
        ap_predicate_pred1431_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd15);
        ap_predicate_pred1440_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd14);
        ap_predicate_pred1449_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd13);
        ap_predicate_pred1458_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd12);
        ap_predicate_pred1467_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd11);
        ap_predicate_pred1476_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd10);
        ap_predicate_pred1485_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd9);
        ap_predicate_pred1494_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd8);
        ap_predicate_pred1503_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd7);
        ap_predicate_pred1512_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd6);
        ap_predicate_pred1521_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd5);
        ap_predicate_pred1530_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd4);
        ap_predicate_pred1539_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd3);
        ap_predicate_pred1548_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd2);
        ap_predicate_pred1557_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd1);
        ap_predicate_pred1566_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd0);
        ap_predicate_pred1575_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd63);
        ap_predicate_pred995_state10 <= (trunc_ln13_1_reg_2296_pp0_iter7_reg == 6'd62);
        icmp_ln13_reg_2287_pp0_iter2_reg <= icmp_ln13_reg_2287_pp0_iter1_reg;
        icmp_ln13_reg_2287_pp0_iter3_reg <= icmp_ln13_reg_2287_pp0_iter2_reg;
        icmp_ln13_reg_2287_pp0_iter4_reg <= icmp_ln13_reg_2287_pp0_iter3_reg;
        icmp_ln13_reg_2287_pp0_iter5_reg <= icmp_ln13_reg_2287_pp0_iter4_reg;
        icmp_ln13_reg_2287_pp0_iter6_reg <= icmp_ln13_reg_2287_pp0_iter5_reg;
        icmp_ln13_reg_2287_pp0_iter7_reg <= icmp_ln13_reg_2287_pp0_iter6_reg;
        trunc_ln13_1_reg_2296_pp0_iter2_reg <= trunc_ln13_1_reg_2296_pp0_iter1_reg;
        trunc_ln13_1_reg_2296_pp0_iter3_reg <= trunc_ln13_1_reg_2296_pp0_iter2_reg;
        trunc_ln13_1_reg_2296_pp0_iter4_reg <= trunc_ln13_1_reg_2296_pp0_iter3_reg;
        trunc_ln13_1_reg_2296_pp0_iter5_reg <= trunc_ln13_1_reg_2296_pp0_iter4_reg;
        trunc_ln13_1_reg_2296_pp0_iter6_reg <= trunc_ln13_1_reg_2296_pp0_iter5_reg;
        trunc_ln13_1_reg_2296_pp0_iter7_reg <= trunc_ln13_1_reg_2296_pp0_iter6_reg;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6100_out_ap_vld = 1'b1;
    end else begin
        add6100_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6102_out_ap_vld = 1'b1;
    end else begin
        add6102_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6104_out_ap_vld = 1'b1;
    end else begin
        add6104_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6106_out_ap_vld = 1'b1;
    end else begin
        add6106_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6108_out_ap_vld = 1'b1;
    end else begin
        add6108_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add610_out_ap_vld = 1'b1;
    end else begin
        add610_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6110_out_ap_vld = 1'b1;
    end else begin
        add6110_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6112_out_ap_vld = 1'b1;
    end else begin
        add6112_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6114_out_ap_vld = 1'b1;
    end else begin
        add6114_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6116_out_ap_vld = 1'b1;
    end else begin
        add6116_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6118_out_ap_vld = 1'b1;
    end else begin
        add6118_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6120_out_ap_vld = 1'b1;
    end else begin
        add6120_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6122_out_ap_vld = 1'b1;
    end else begin
        add6122_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6124_out_ap_vld = 1'b1;
    end else begin
        add6124_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6126_out_ap_vld = 1'b1;
    end else begin
        add6126_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6128_out_ap_vld = 1'b1;
    end else begin
        add6128_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add612_out_ap_vld = 1'b1;
    end else begin
        add612_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add614_out_ap_vld = 1'b1;
    end else begin
        add614_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add616_out_ap_vld = 1'b1;
    end else begin
        add616_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add618_out_ap_vld = 1'b1;
    end else begin
        add618_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add620_out_ap_vld = 1'b1;
    end else begin
        add620_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add622_out_ap_vld = 1'b1;
    end else begin
        add622_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add624_out_ap_vld = 1'b1;
    end else begin
        add624_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add626_out_ap_vld = 1'b1;
    end else begin
        add626_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add628_out_ap_vld = 1'b1;
    end else begin
        add628_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add62_out_ap_vld = 1'b1;
    end else begin
        add62_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add630_out_ap_vld = 1'b1;
    end else begin
        add630_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add632_out_ap_vld = 1'b1;
    end else begin
        add632_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add634_out_ap_vld = 1'b1;
    end else begin
        add634_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add636_out_ap_vld = 1'b1;
    end else begin
        add636_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add638_out_ap_vld = 1'b1;
    end else begin
        add638_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add640_out_ap_vld = 1'b1;
    end else begin
        add640_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add642_out_ap_vld = 1'b1;
    end else begin
        add642_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add644_out_ap_vld = 1'b1;
    end else begin
        add644_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add646_out_ap_vld = 1'b1;
    end else begin
        add646_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add648_out_ap_vld = 1'b1;
    end else begin
        add648_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add64_out_ap_vld = 1'b1;
    end else begin
        add64_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add650_out_ap_vld = 1'b1;
    end else begin
        add650_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add652_out_ap_vld = 1'b1;
    end else begin
        add652_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add654_out_ap_vld = 1'b1;
    end else begin
        add654_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add656_out_ap_vld = 1'b1;
    end else begin
        add656_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add658_out_ap_vld = 1'b1;
    end else begin
        add658_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add660_out_ap_vld = 1'b1;
    end else begin
        add660_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add662_out_ap_vld = 1'b1;
    end else begin
        add662_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add664_out_ap_vld = 1'b1;
    end else begin
        add664_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add666_out_ap_vld = 1'b1;
    end else begin
        add666_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add668_out_ap_vld = 1'b1;
    end else begin
        add668_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add66_out_ap_vld = 1'b1;
    end else begin
        add66_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add670_out_ap_vld = 1'b1;
    end else begin
        add670_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add672_out_ap_vld = 1'b1;
    end else begin
        add672_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add674_out_ap_vld = 1'b1;
    end else begin
        add674_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add676_out_ap_vld = 1'b1;
    end else begin
        add676_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add678_out_ap_vld = 1'b1;
    end else begin
        add678_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add680_out_ap_vld = 1'b1;
    end else begin
        add680_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add682_out_ap_vld = 1'b1;
    end else begin
        add682_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add684_out_ap_vld = 1'b1;
    end else begin
        add684_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add686_out_ap_vld = 1'b1;
    end else begin
        add686_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add688_out_ap_vld = 1'b1;
    end else begin
        add688_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add68_out_ap_vld = 1'b1;
    end else begin
        add68_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add690_out_ap_vld = 1'b1;
    end else begin
        add690_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add692_out_ap_vld = 1'b1;
    end else begin
        add692_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add694_out_ap_vld = 1'b1;
    end else begin
        add694_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add696_out_ap_vld = 1'b1;
    end else begin
        add696_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2287_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add698_out_ap_vld = 1'b1;
    end else begin
        add698_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_fu_1172_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_332;
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
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add6100_out = add6100_fu_532;
assign add6102_out = add6102_fu_536;
assign add6104_out = add6104_fu_540;
assign add6106_out = add6106_fu_544;
assign add6108_out = add6108_fu_548;
assign add610_out = add610_fu_352;
assign add6110_out = add6110_fu_552;
assign add6112_out = add6112_fu_556;
assign add6114_out = add6114_fu_560;
assign add6116_out = add6116_fu_564;
assign add6118_out = add6118_fu_568;
assign add6120_out = add6120_fu_572;
assign add6122_out = add6122_fu_576;
assign add6124_out = add6124_fu_580;
assign add6126_out = add6126_fu_584;
assign add6128_out = add6128_fu_588;
assign add612_out = add612_fu_356;
assign add614_out = add614_fu_360;
assign add616_out = add616_fu_364;
assign add618_out = add618_fu_368;
assign add620_out = add620_fu_372;
assign add622_out = add622_fu_376;
assign add624_out = add624_fu_380;
assign add626_out = add626_fu_384;
assign add628_out = add628_fu_388;
assign add62_out = add62_fu_336;
assign add630_out = add630_fu_392;
assign add632_out = add632_fu_396;
assign add634_out = add634_fu_400;
assign add636_out = add636_fu_404;
assign add638_out = add638_fu_408;
assign add640_out = add640_fu_412;
assign add642_out = add642_fu_416;
assign add644_out = add644_fu_420;
assign add646_out = add646_fu_424;
assign add648_out = add648_fu_428;
assign add64_out = add64_fu_340;
assign add650_out = add650_fu_432;
assign add652_out = add652_fu_436;
assign add654_out = add654_fu_440;
assign add656_out = add656_fu_444;
assign add658_out = add658_fu_448;
assign add660_out = add660_fu_452;
assign add662_out = add662_fu_456;
assign add664_out = add664_fu_460;
assign add666_out = add666_fu_464;
assign add668_out = add668_fu_468;
assign add66_out = add66_fu_344;
assign add670_out = add670_fu_472;
assign add672_out = add672_fu_476;
assign add674_out = add674_fu_480;
assign add676_out = add676_fu_484;
assign add678_out = add678_fu_488;
assign add680_out = add680_fu_492;
assign add682_out = add682_fu_496;
assign add684_out = add684_fu_500;
assign add686_out = add686_fu_504;
assign add688_out = add688_fu_508;
assign add68_out = add68_fu_348;
assign add690_out = add690_fu_512;
assign add692_out = add692_fu_516;
assign add694_out = add694_fu_520;
assign add696_out = add696_fu_524;
assign add698_out = add698_fu_528;
assign add_ln13_fu_1178_p2 = (ap_sig_allocacmp_s_1 + 7'd1);
assign add_ln14_fu_1218_p2 = (shl_ln_fu_1210_p3 + conv3_udiv_cast_cast_fu_1160_p1);
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
assign conv3_udiv_cast_cast_fu_1160_p1 = conv3_udiv_cast;
assign emission_0_address0 = zext_ln14_fu_1224_p1;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_1_address0 = zext_ln14_fu_1224_p1;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_2_address0 = zext_ln14_fu_1224_p1;
assign emission_2_ce0 = emission_2_ce0_local;
assign emission_3_address0 = zext_ln14_fu_1224_p1;
assign emission_3_ce0 = emission_3_ce0_local;
assign grp_fu_3032_p_ce = 1'b1;
assign grp_fu_3032_p_din0 = tmp_reg_2340;
assign grp_fu_3032_p_din1 = tmp_1_reg_2345;
assign grp_fu_3032_p_opcode = 2'd0;
assign icmp_ln13_fu_1172_p2 = ((ap_sig_allocacmp_s_1 == 7'd64) ? 1'b1 : 1'b0);
assign init_0_address0 = zext_ln9_fu_1202_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_1202_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_2_address0 = zext_ln9_fu_1202_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_3_address0 = zext_ln9_fu_1202_p1;
assign init_3_ce0 = init_3_ce0_local;
assign lshr_ln9_fu_1192_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign shl_ln_fu_1210_p3 = {{trunc_ln13_1_fu_1188_p1}, {4'd0}};
assign tmp_1_fu_1292_p2 = emission_0_q0;
assign tmp_1_fu_1292_p4 = emission_1_q0;
assign tmp_1_fu_1292_p6 = emission_2_q0;
assign tmp_1_fu_1292_p8 = emission_3_q0;
assign tmp_1_fu_1292_p9 = 'bx;
assign tmp_fu_1253_p2 = init_0_q0;
assign tmp_fu_1253_p4 = init_1_q0;
assign tmp_fu_1253_p6 = init_2_q0;
assign tmp_fu_1253_p8 = init_3_q0;
assign tmp_fu_1253_p9 = 'bx;
assign trunc_ln13_1_fu_1188_p1 = ap_sig_allocacmp_s_1[5:0];
assign trunc_ln13_fu_1184_p1 = ap_sig_allocacmp_s_1[1:0];
assign zext_ln14_fu_1224_p1 = add_ln14_fu_1218_p2;
assign zext_ln9_fu_1202_p1 = lshr_ln9_fu_1192_p4;
endmodule 