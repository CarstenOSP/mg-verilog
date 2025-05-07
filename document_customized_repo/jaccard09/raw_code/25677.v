module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_address0,init_ce0,init_q0,obs_load_cast,emission_address0,emission_ce0,emission_q0,add6128_out,add6128_out_ap_vld,add6126_out,add6126_out_ap_vld,add6124_out,add6124_out_ap_vld,add6122_out,add6122_out_ap_vld,add6120_out,add6120_out_ap_vld,add6118_out,add6118_out_ap_vld,add6116_out,add6116_out_ap_vld,add6114_out,add6114_out_ap_vld,add6112_out,add6112_out_ap_vld,add6110_out,add6110_out_ap_vld,add6108_out,add6108_out_ap_vld,add6106_out,add6106_out_ap_vld,add6104_out,add6104_out_ap_vld,add6102_out,add6102_out_ap_vld,add6100_out,add6100_out_ap_vld,add698_out,add698_out_ap_vld,add696_out,add696_out_ap_vld,add694_out,add694_out_ap_vld,add692_out,add692_out_ap_vld,add690_out,add690_out_ap_vld,add688_out,add688_out_ap_vld,add686_out,add686_out_ap_vld,add684_out,add684_out_ap_vld,add682_out,add682_out_ap_vld,add680_out,add680_out_ap_vld,add678_out,add678_out_ap_vld,add676_out,add676_out_ap_vld,add674_out,add674_out_ap_vld,add672_out,add672_out_ap_vld,add670_out,add670_out_ap_vld,add668_out,add668_out_ap_vld,add666_out,add666_out_ap_vld,add664_out,add664_out_ap_vld,add662_out,add662_out_ap_vld,add660_out,add660_out_ap_vld,add658_out,add658_out_ap_vld,add656_out,add656_out_ap_vld,add654_out,add654_out_ap_vld,add652_out,add652_out_ap_vld,add650_out,add650_out_ap_vld,add648_out,add648_out_ap_vld,add646_out,add646_out_ap_vld,add644_out,add644_out_ap_vld,add642_out,add642_out_ap_vld,add640_out,add640_out_ap_vld,add638_out,add638_out_ap_vld,add636_out,add636_out_ap_vld,add634_out,add634_out_ap_vld,add632_out,add632_out_ap_vld,add630_out,add630_out_ap_vld,add628_out,add628_out_ap_vld,add626_out,add626_out_ap_vld,add624_out,add624_out_ap_vld,add622_out,add622_out_ap_vld,add620_out,add620_out_ap_vld,add618_out,add618_out_ap_vld,add616_out,add616_out_ap_vld,add614_out,add614_out_ap_vld,add612_out,add612_out_ap_vld,add610_out,add610_out_ap_vld,add68_out,add68_out_ap_vld,add66_out,add66_out_ap_vld,add64_out,add64_out_ap_vld,add62_out,add62_out_ap_vld,grp_fu_3309_p_din0,grp_fu_3309_p_din1,grp_fu_3309_p_opcode,grp_fu_3309_p_dout0,grp_fu_3309_p_ce); 
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
input  [7:0] obs_load_cast;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
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
output  [63:0] grp_fu_3309_p_din0;
output  [63:0] grp_fu_3309_p_din1;
output  [1:0] grp_fu_3309_p_opcode;
input  [63:0] grp_fu_3309_p_dout0;
output   grp_fu_3309_p_ce;
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
wire   [0:0] icmp_ln13_fu_1052_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln13_reg_2072;
reg   [0:0] icmp_ln13_reg_2072_pp0_iter1_reg;
reg   [0:0] icmp_ln13_reg_2072_pp0_iter2_reg;
reg   [0:0] icmp_ln13_reg_2072_pp0_iter3_reg;
reg   [0:0] icmp_ln13_reg_2072_pp0_iter4_reg;
reg   [0:0] icmp_ln13_reg_2072_pp0_iter5_reg;
reg   [0:0] icmp_ln13_reg_2072_pp0_iter6_reg;
reg   [0:0] icmp_ln13_reg_2072_pp0_iter7_reg;
wire   [5:0] trunc_ln13_fu_1069_p1;
reg   [5:0] trunc_ln13_reg_2076;
reg   [5:0] trunc_ln13_reg_2076_pp0_iter1_reg;
reg   [5:0] trunc_ln13_reg_2076_pp0_iter2_reg;
reg   [5:0] trunc_ln13_reg_2076_pp0_iter3_reg;
reg   [5:0] trunc_ln13_reg_2076_pp0_iter4_reg;
reg   [5:0] trunc_ln13_reg_2076_pp0_iter5_reg;
reg   [5:0] trunc_ln13_reg_2076_pp0_iter6_reg;
reg   [5:0] trunc_ln13_reg_2076_pp0_iter7_reg;
reg   [63:0] init_load_reg_2090;
reg   [63:0] emission_load_reg_2095;
wire   [63:0] bitcast_ln14_fu_1097_p1;
wire   [63:0] bitcast_ln14_1_fu_1101_p1;
wire   [63:0] zext_ln13_fu_1064_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1087_p1;
reg   [6:0] s_fu_296;
wire   [6:0] add_ln13_fu_1058_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add62_fu_300;
reg    ap_predicate_pred928_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [63:0] add64_fu_304;
reg    ap_predicate_pred950_state10;
reg   [63:0] add66_fu_308;
reg    ap_predicate_pred959_state10;
reg   [63:0] add68_fu_312;
reg    ap_predicate_pred968_state10;
reg   [63:0] add610_fu_316;
reg    ap_predicate_pred977_state10;
reg   [63:0] add612_fu_320;
reg    ap_predicate_pred986_state10;
reg   [63:0] add614_fu_324;
reg    ap_predicate_pred995_state10;
reg   [63:0] add616_fu_328;
reg    ap_predicate_pred1004_state10;
reg   [63:0] add618_fu_332;
reg    ap_predicate_pred1013_state10;
reg   [63:0] add620_fu_336;
reg    ap_predicate_pred1022_state10;
reg   [63:0] add622_fu_340;
reg    ap_predicate_pred1031_state10;
reg   [63:0] add624_fu_344;
reg    ap_predicate_pred1040_state10;
reg   [63:0] add626_fu_348;
reg    ap_predicate_pred1049_state10;
reg   [63:0] add628_fu_352;
reg    ap_predicate_pred1058_state10;
reg   [63:0] add630_fu_356;
reg    ap_predicate_pred1067_state10;
reg   [63:0] add632_fu_360;
reg    ap_predicate_pred1076_state10;
reg   [63:0] add634_fu_364;
reg    ap_predicate_pred1085_state10;
reg   [63:0] add636_fu_368;
reg    ap_predicate_pred1094_state10;
reg   [63:0] add638_fu_372;
reg    ap_predicate_pred1103_state10;
reg   [63:0] add640_fu_376;
reg    ap_predicate_pred1112_state10;
reg   [63:0] add642_fu_380;
reg    ap_predicate_pred1121_state10;
reg   [63:0] add644_fu_384;
reg    ap_predicate_pred1130_state10;
reg   [63:0] add646_fu_388;
reg    ap_predicate_pred1139_state10;
reg   [63:0] add648_fu_392;
reg    ap_predicate_pred1148_state10;
reg   [63:0] add650_fu_396;
reg    ap_predicate_pred1157_state10;
reg   [63:0] add652_fu_400;
reg    ap_predicate_pred1166_state10;
reg   [63:0] add654_fu_404;
reg    ap_predicate_pred1175_state10;
reg   [63:0] add656_fu_408;
reg    ap_predicate_pred1184_state10;
reg   [63:0] add658_fu_412;
reg    ap_predicate_pred1193_state10;
reg   [63:0] add660_fu_416;
reg    ap_predicate_pred1202_state10;
reg   [63:0] add662_fu_420;
reg    ap_predicate_pred1211_state10;
reg   [63:0] add664_fu_424;
reg    ap_predicate_pred1220_state10;
reg   [63:0] add666_fu_428;
reg    ap_predicate_pred1229_state10;
reg   [63:0] add668_fu_432;
reg    ap_predicate_pred1238_state10;
reg   [63:0] add670_fu_436;
reg    ap_predicate_pred1247_state10;
reg   [63:0] add672_fu_440;
reg    ap_predicate_pred1256_state10;
reg   [63:0] add674_fu_444;
reg    ap_predicate_pred1265_state10;
reg   [63:0] add676_fu_448;
reg    ap_predicate_pred1274_state10;
reg   [63:0] add678_fu_452;
reg    ap_predicate_pred1283_state10;
reg   [63:0] add680_fu_456;
reg    ap_predicate_pred1292_state10;
reg   [63:0] add682_fu_460;
reg    ap_predicate_pred1301_state10;
reg   [63:0] add684_fu_464;
reg    ap_predicate_pred1310_state10;
reg   [63:0] add686_fu_468;
reg    ap_predicate_pred1319_state10;
reg   [63:0] add688_fu_472;
reg    ap_predicate_pred1328_state10;
reg   [63:0] add690_fu_476;
reg    ap_predicate_pred1337_state10;
reg   [63:0] add692_fu_480;
reg    ap_predicate_pred1346_state10;
reg   [63:0] add694_fu_484;
reg    ap_predicate_pred1355_state10;
reg   [63:0] add696_fu_488;
reg    ap_predicate_pred1364_state10;
reg   [63:0] add698_fu_492;
reg    ap_predicate_pred1373_state10;
reg   [63:0] add6100_fu_496;
reg    ap_predicate_pred1382_state10;
reg   [63:0] add6102_fu_500;
reg    ap_predicate_pred1391_state10;
reg   [63:0] add6104_fu_504;
reg    ap_predicate_pred1400_state10;
reg   [63:0] add6106_fu_508;
reg    ap_predicate_pred1409_state10;
reg   [63:0] add6108_fu_512;
reg    ap_predicate_pred1418_state10;
reg   [63:0] add6110_fu_516;
reg    ap_predicate_pred1427_state10;
reg   [63:0] add6112_fu_520;
reg    ap_predicate_pred1436_state10;
reg   [63:0] add6114_fu_524;
reg    ap_predicate_pred1445_state10;
reg   [63:0] add6116_fu_528;
reg    ap_predicate_pred1454_state10;
reg   [63:0] add6118_fu_532;
reg    ap_predicate_pred1463_state10;
reg   [63:0] add6120_fu_536;
reg    ap_predicate_pred1472_state10;
reg   [63:0] add6122_fu_540;
reg    ap_predicate_pred1481_state10;
reg   [63:0] add6124_fu_544;
reg    ap_predicate_pred1490_state10;
reg   [63:0] add6126_fu_548;
reg    ap_predicate_pred1499_state10;
reg   [63:0] add6128_fu_552;
reg    ap_predicate_pred1508_state10;
wire    ap_block_pp0_stage0_01001;
reg    init_ce0_local;
reg    emission_ce0_local;
wire   [11:0] shl_ln_fu_1073_p3;
wire   [11:0] obs_load_cast_cast_fu_1040_p1;
wire   [11:0] add_ln14_fu_1081_p2;
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
#0 s_fu_296 = 7'd0;
#0 add62_fu_300 = 64'd0;
#0 add64_fu_304 = 64'd0;
#0 add66_fu_308 = 64'd0;
#0 add68_fu_312 = 64'd0;
#0 add610_fu_316 = 64'd0;
#0 add612_fu_320 = 64'd0;
#0 add614_fu_324 = 64'd0;
#0 add616_fu_328 = 64'd0;
#0 add618_fu_332 = 64'd0;
#0 add620_fu_336 = 64'd0;
#0 add622_fu_340 = 64'd0;
#0 add624_fu_344 = 64'd0;
#0 add626_fu_348 = 64'd0;
#0 add628_fu_352 = 64'd0;
#0 add630_fu_356 = 64'd0;
#0 add632_fu_360 = 64'd0;
#0 add634_fu_364 = 64'd0;
#0 add636_fu_368 = 64'd0;
#0 add638_fu_372 = 64'd0;
#0 add640_fu_376 = 64'd0;
#0 add642_fu_380 = 64'd0;
#0 add644_fu_384 = 64'd0;
#0 add646_fu_388 = 64'd0;
#0 add648_fu_392 = 64'd0;
#0 add650_fu_396 = 64'd0;
#0 add652_fu_400 = 64'd0;
#0 add654_fu_404 = 64'd0;
#0 add656_fu_408 = 64'd0;
#0 add658_fu_412 = 64'd0;
#0 add660_fu_416 = 64'd0;
#0 add662_fu_420 = 64'd0;
#0 add664_fu_424 = 64'd0;
#0 add666_fu_428 = 64'd0;
#0 add668_fu_432 = 64'd0;
#0 add670_fu_436 = 64'd0;
#0 add672_fu_440 = 64'd0;
#0 add674_fu_444 = 64'd0;
#0 add676_fu_448 = 64'd0;
#0 add678_fu_452 = 64'd0;
#0 add680_fu_456 = 64'd0;
#0 add682_fu_460 = 64'd0;
#0 add684_fu_464 = 64'd0;
#0 add686_fu_468 = 64'd0;
#0 add688_fu_472 = 64'd0;
#0 add690_fu_476 = 64'd0;
#0 add692_fu_480 = 64'd0;
#0 add694_fu_484 = 64'd0;
#0 add696_fu_488 = 64'd0;
#0 add698_fu_492 = 64'd0;
#0 add6100_fu_496 = 64'd0;
#0 add6102_fu_500 = 64'd0;
#0 add6104_fu_504 = 64'd0;
#0 add6106_fu_508 = 64'd0;
#0 add6108_fu_512 = 64'd0;
#0 add6110_fu_516 = 64'd0;
#0 add6112_fu_520 = 64'd0;
#0 add6114_fu_524 = 64'd0;
#0 add6116_fu_528 = 64'd0;
#0 add6118_fu_532 = 64'd0;
#0 add6120_fu_536 = 64'd0;
#0 add6122_fu_540 = 64'd0;
#0 add6124_fu_544 = 64'd0;
#0 add6126_fu_548 = 64'd0;
#0 add6128_fu_552 = 64'd0;
#0 ap_done_reg = 1'b0;
end
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
        if (((icmp_ln13_fu_1052_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            s_fu_296 <= add_ln13_fu_1058_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            s_fu_296 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1382_state10 == 1'b1))) begin
        add6100_fu_496 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1391_state10 == 1'b1))) begin
        add6102_fu_500 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1400_state10 == 1'b1))) begin
        add6104_fu_504 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1409_state10 == 1'b1))) begin
        add6106_fu_508 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1418_state10 == 1'b1))) begin
        add6108_fu_512 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred977_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        add610_fu_316 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1427_state10 == 1'b1))) begin
        add6110_fu_516 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1436_state10 == 1'b1))) begin
        add6112_fu_520 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1445_state10 == 1'b1))) begin
        add6114_fu_524 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1454_state10 == 1'b1))) begin
        add6116_fu_528 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1463_state10 == 1'b1))) begin
        add6118_fu_532 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1472_state10 == 1'b1))) begin
        add6120_fu_536 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1481_state10 == 1'b1))) begin
        add6122_fu_540 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1490_state10 == 1'b1))) begin
        add6124_fu_544 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1499_state10 == 1'b1))) begin
        add6126_fu_548 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1508_state10 == 1'b1))) begin
        add6128_fu_552 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred986_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        add612_fu_320 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred995_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        add614_fu_324 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1004_state10 == 1'b1))) begin
        add616_fu_328 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1013_state10 == 1'b1))) begin
        add618_fu_332 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1022_state10 == 1'b1))) begin
        add620_fu_336 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1031_state10 == 1'b1))) begin
        add622_fu_340 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1040_state10 == 1'b1))) begin
        add624_fu_344 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1049_state10 == 1'b1))) begin
        add626_fu_348 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1058_state10 == 1'b1))) begin
        add628_fu_352 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred928_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        add62_fu_300 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1067_state10 == 1'b1))) begin
        add630_fu_356 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1076_state10 == 1'b1))) begin
        add632_fu_360 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1085_state10 == 1'b1))) begin
        add634_fu_364 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1094_state10 == 1'b1))) begin
        add636_fu_368 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1103_state10 == 1'b1))) begin
        add638_fu_372 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1112_state10 == 1'b1))) begin
        add640_fu_376 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1121_state10 == 1'b1))) begin
        add642_fu_380 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1130_state10 == 1'b1))) begin
        add644_fu_384 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1139_state10 == 1'b1))) begin
        add646_fu_388 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1148_state10 == 1'b1))) begin
        add648_fu_392 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred950_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        add64_fu_304 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1157_state10 == 1'b1))) begin
        add650_fu_396 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1166_state10 == 1'b1))) begin
        add652_fu_400 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1175_state10 == 1'b1))) begin
        add654_fu_404 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1184_state10 == 1'b1))) begin
        add656_fu_408 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1193_state10 == 1'b1))) begin
        add658_fu_412 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1202_state10 == 1'b1))) begin
        add660_fu_416 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1211_state10 == 1'b1))) begin
        add662_fu_420 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1220_state10 == 1'b1))) begin
        add664_fu_424 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1229_state10 == 1'b1))) begin
        add666_fu_428 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1238_state10 == 1'b1))) begin
        add668_fu_432 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred959_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        add66_fu_308 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1247_state10 == 1'b1))) begin
        add670_fu_436 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1256_state10 == 1'b1))) begin
        add672_fu_440 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1265_state10 == 1'b1))) begin
        add674_fu_444 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1274_state10 == 1'b1))) begin
        add676_fu_448 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1283_state10 == 1'b1))) begin
        add678_fu_452 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1292_state10 == 1'b1))) begin
        add680_fu_456 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1301_state10 == 1'b1))) begin
        add682_fu_460 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1310_state10 == 1'b1))) begin
        add684_fu_464 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1319_state10 == 1'b1))) begin
        add686_fu_468 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1328_state10 == 1'b1))) begin
        add688_fu_472 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred968_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        add68_fu_312 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1337_state10 == 1'b1))) begin
        add690_fu_476 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1346_state10 == 1'b1))) begin
        add692_fu_480 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1355_state10 == 1'b1))) begin
        add694_fu_484 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1364_state10 == 1'b1))) begin
        add696_fu_488 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1373_state10 == 1'b1))) begin
        add698_fu_492 <= grp_fu_3309_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        emission_load_reg_2095 <= emission_q0;
        icmp_ln13_reg_2072 <= icmp_ln13_fu_1052_p2;
        icmp_ln13_reg_2072_pp0_iter1_reg <= icmp_ln13_reg_2072;
        init_load_reg_2090 <= init_q0;
        trunc_ln13_reg_2076 <= trunc_ln13_fu_1069_p1;
        trunc_ln13_reg_2076_pp0_iter1_reg <= trunc_ln13_reg_2076;
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
        ap_predicate_pred1004_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd55);
        ap_predicate_pred1013_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd54);
        ap_predicate_pred1022_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd53);
        ap_predicate_pred1031_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd52);
        ap_predicate_pred1040_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd51);
        ap_predicate_pred1049_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd50);
        ap_predicate_pred1058_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd49);
        ap_predicate_pred1067_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd48);
        ap_predicate_pred1076_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd47);
        ap_predicate_pred1085_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd46);
        ap_predicate_pred1094_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd45);
        ap_predicate_pred1103_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd44);
        ap_predicate_pred1112_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd43);
        ap_predicate_pred1121_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd42);
        ap_predicate_pred1130_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd41);
        ap_predicate_pred1139_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd40);
        ap_predicate_pred1148_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd39);
        ap_predicate_pred1157_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd38);
        ap_predicate_pred1166_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd37);
        ap_predicate_pred1175_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd36);
        ap_predicate_pred1184_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd35);
        ap_predicate_pred1193_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd34);
        ap_predicate_pred1202_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd33);
        ap_predicate_pred1211_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd32);
        ap_predicate_pred1220_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd31);
        ap_predicate_pred1229_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd30);
        ap_predicate_pred1238_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd29);
        ap_predicate_pred1247_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd28);
        ap_predicate_pred1256_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd27);
        ap_predicate_pred1265_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd26);
        ap_predicate_pred1274_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd25);
        ap_predicate_pred1283_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd24);
        ap_predicate_pred1292_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd23);
        ap_predicate_pred1301_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd22);
        ap_predicate_pred1310_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd21);
        ap_predicate_pred1319_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd20);
        ap_predicate_pred1328_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd19);
        ap_predicate_pred1337_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd18);
        ap_predicate_pred1346_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd17);
        ap_predicate_pred1355_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd16);
        ap_predicate_pred1364_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd15);
        ap_predicate_pred1373_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd14);
        ap_predicate_pred1382_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd13);
        ap_predicate_pred1391_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd12);
        ap_predicate_pred1400_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd11);
        ap_predicate_pred1409_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd10);
        ap_predicate_pred1418_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd9);
        ap_predicate_pred1427_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd8);
        ap_predicate_pred1436_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd7);
        ap_predicate_pred1445_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd6);
        ap_predicate_pred1454_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd5);
        ap_predicate_pred1463_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd4);
        ap_predicate_pred1472_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd3);
        ap_predicate_pred1481_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd2);
        ap_predicate_pred1490_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd1);
        ap_predicate_pred1499_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd0);
        ap_predicate_pred1508_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd63);
        ap_predicate_pred928_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd62);
        ap_predicate_pred950_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd61);
        ap_predicate_pred959_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd60);
        ap_predicate_pred968_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd59);
        ap_predicate_pred977_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd58);
        ap_predicate_pred986_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd57);
        ap_predicate_pred995_state10 <= (trunc_ln13_reg_2076_pp0_iter7_reg == 6'd56);
        icmp_ln13_reg_2072_pp0_iter2_reg <= icmp_ln13_reg_2072_pp0_iter1_reg;
        icmp_ln13_reg_2072_pp0_iter3_reg <= icmp_ln13_reg_2072_pp0_iter2_reg;
        icmp_ln13_reg_2072_pp0_iter4_reg <= icmp_ln13_reg_2072_pp0_iter3_reg;
        icmp_ln13_reg_2072_pp0_iter5_reg <= icmp_ln13_reg_2072_pp0_iter4_reg;
        icmp_ln13_reg_2072_pp0_iter6_reg <= icmp_ln13_reg_2072_pp0_iter5_reg;
        icmp_ln13_reg_2072_pp0_iter7_reg <= icmp_ln13_reg_2072_pp0_iter6_reg;
        trunc_ln13_reg_2076_pp0_iter2_reg <= trunc_ln13_reg_2076_pp0_iter1_reg;
        trunc_ln13_reg_2076_pp0_iter3_reg <= trunc_ln13_reg_2076_pp0_iter2_reg;
        trunc_ln13_reg_2076_pp0_iter4_reg <= trunc_ln13_reg_2076_pp0_iter3_reg;
        trunc_ln13_reg_2076_pp0_iter5_reg <= trunc_ln13_reg_2076_pp0_iter4_reg;
        trunc_ln13_reg_2076_pp0_iter6_reg <= trunc_ln13_reg_2076_pp0_iter5_reg;
        trunc_ln13_reg_2076_pp0_iter7_reg <= trunc_ln13_reg_2076_pp0_iter6_reg;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6100_out_ap_vld = 1'b1;
    end else begin
        add6100_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6102_out_ap_vld = 1'b1;
    end else begin
        add6102_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6104_out_ap_vld = 1'b1;
    end else begin
        add6104_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6106_out_ap_vld = 1'b1;
    end else begin
        add6106_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6108_out_ap_vld = 1'b1;
    end else begin
        add6108_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add610_out_ap_vld = 1'b1;
    end else begin
        add610_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6110_out_ap_vld = 1'b1;
    end else begin
        add6110_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6112_out_ap_vld = 1'b1;
    end else begin
        add6112_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6114_out_ap_vld = 1'b1;
    end else begin
        add6114_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6116_out_ap_vld = 1'b1;
    end else begin
        add6116_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6118_out_ap_vld = 1'b1;
    end else begin
        add6118_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6120_out_ap_vld = 1'b1;
    end else begin
        add6120_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6122_out_ap_vld = 1'b1;
    end else begin
        add6122_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6124_out_ap_vld = 1'b1;
    end else begin
        add6124_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6126_out_ap_vld = 1'b1;
    end else begin
        add6126_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add6128_out_ap_vld = 1'b1;
    end else begin
        add6128_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add612_out_ap_vld = 1'b1;
    end else begin
        add612_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add614_out_ap_vld = 1'b1;
    end else begin
        add614_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add616_out_ap_vld = 1'b1;
    end else begin
        add616_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add618_out_ap_vld = 1'b1;
    end else begin
        add618_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add620_out_ap_vld = 1'b1;
    end else begin
        add620_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add622_out_ap_vld = 1'b1;
    end else begin
        add622_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add624_out_ap_vld = 1'b1;
    end else begin
        add624_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add626_out_ap_vld = 1'b1;
    end else begin
        add626_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add628_out_ap_vld = 1'b1;
    end else begin
        add628_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add62_out_ap_vld = 1'b1;
    end else begin
        add62_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add630_out_ap_vld = 1'b1;
    end else begin
        add630_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add632_out_ap_vld = 1'b1;
    end else begin
        add632_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add634_out_ap_vld = 1'b1;
    end else begin
        add634_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add636_out_ap_vld = 1'b1;
    end else begin
        add636_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add638_out_ap_vld = 1'b1;
    end else begin
        add638_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add640_out_ap_vld = 1'b1;
    end else begin
        add640_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add642_out_ap_vld = 1'b1;
    end else begin
        add642_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add644_out_ap_vld = 1'b1;
    end else begin
        add644_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add646_out_ap_vld = 1'b1;
    end else begin
        add646_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add648_out_ap_vld = 1'b1;
    end else begin
        add648_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add64_out_ap_vld = 1'b1;
    end else begin
        add64_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add650_out_ap_vld = 1'b1;
    end else begin
        add650_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add652_out_ap_vld = 1'b1;
    end else begin
        add652_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add654_out_ap_vld = 1'b1;
    end else begin
        add654_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add656_out_ap_vld = 1'b1;
    end else begin
        add656_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add658_out_ap_vld = 1'b1;
    end else begin
        add658_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add660_out_ap_vld = 1'b1;
    end else begin
        add660_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add662_out_ap_vld = 1'b1;
    end else begin
        add662_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add664_out_ap_vld = 1'b1;
    end else begin
        add664_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add666_out_ap_vld = 1'b1;
    end else begin
        add666_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add668_out_ap_vld = 1'b1;
    end else begin
        add668_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add66_out_ap_vld = 1'b1;
    end else begin
        add66_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add670_out_ap_vld = 1'b1;
    end else begin
        add670_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add672_out_ap_vld = 1'b1;
    end else begin
        add672_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add674_out_ap_vld = 1'b1;
    end else begin
        add674_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add676_out_ap_vld = 1'b1;
    end else begin
        add676_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add678_out_ap_vld = 1'b1;
    end else begin
        add678_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add680_out_ap_vld = 1'b1;
    end else begin
        add680_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add682_out_ap_vld = 1'b1;
    end else begin
        add682_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add684_out_ap_vld = 1'b1;
    end else begin
        add684_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add686_out_ap_vld = 1'b1;
    end else begin
        add686_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add688_out_ap_vld = 1'b1;
    end else begin
        add688_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add68_out_ap_vld = 1'b1;
    end else begin
        add68_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add690_out_ap_vld = 1'b1;
    end else begin
        add690_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add692_out_ap_vld = 1'b1;
    end else begin
        add692_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add694_out_ap_vld = 1'b1;
    end else begin
        add694_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add696_out_ap_vld = 1'b1;
    end else begin
        add696_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln13_reg_2072_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add698_out_ap_vld = 1'b1;
    end else begin
        add698_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_fu_1052_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_296;
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
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
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
assign add6100_out = add6100_fu_496;
assign add6102_out = add6102_fu_500;
assign add6104_out = add6104_fu_504;
assign add6106_out = add6106_fu_508;
assign add6108_out = add6108_fu_512;
assign add610_out = add610_fu_316;
assign add6110_out = add6110_fu_516;
assign add6112_out = add6112_fu_520;
assign add6114_out = add6114_fu_524;
assign add6116_out = add6116_fu_528;
assign add6118_out = add6118_fu_532;
assign add6120_out = add6120_fu_536;
assign add6122_out = add6122_fu_540;
assign add6124_out = add6124_fu_544;
assign add6126_out = add6126_fu_548;
assign add6128_out = add6128_fu_552;
assign add612_out = add612_fu_320;
assign add614_out = add614_fu_324;
assign add616_out = add616_fu_328;
assign add618_out = add618_fu_332;
assign add620_out = add620_fu_336;
assign add622_out = add622_fu_340;
assign add624_out = add624_fu_344;
assign add626_out = add626_fu_348;
assign add628_out = add628_fu_352;
assign add62_out = add62_fu_300;
assign add630_out = add630_fu_356;
assign add632_out = add632_fu_360;
assign add634_out = add634_fu_364;
assign add636_out = add636_fu_368;
assign add638_out = add638_fu_372;
assign add640_out = add640_fu_376;
assign add642_out = add642_fu_380;
assign add644_out = add644_fu_384;
assign add646_out = add646_fu_388;
assign add648_out = add648_fu_392;
assign add64_out = add64_fu_304;
assign add650_out = add650_fu_396;
assign add652_out = add652_fu_400;
assign add654_out = add654_fu_404;
assign add656_out = add656_fu_408;
assign add658_out = add658_fu_412;
assign add660_out = add660_fu_416;
assign add662_out = add662_fu_420;
assign add664_out = add664_fu_424;
assign add666_out = add666_fu_428;
assign add668_out = add668_fu_432;
assign add66_out = add66_fu_308;
assign add670_out = add670_fu_436;
assign add672_out = add672_fu_440;
assign add674_out = add674_fu_444;
assign add676_out = add676_fu_448;
assign add678_out = add678_fu_452;
assign add680_out = add680_fu_456;
assign add682_out = add682_fu_460;
assign add684_out = add684_fu_464;
assign add686_out = add686_fu_468;
assign add688_out = add688_fu_472;
assign add68_out = add68_fu_312;
assign add690_out = add690_fu_476;
assign add692_out = add692_fu_480;
assign add694_out = add694_fu_484;
assign add696_out = add696_fu_488;
assign add698_out = add698_fu_492;
assign add_ln13_fu_1058_p2 = (ap_sig_allocacmp_s_1 + 7'd1);
assign add_ln14_fu_1081_p2 = (shl_ln_fu_1073_p3 + obs_load_cast_cast_fu_1040_p1);
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
assign bitcast_ln14_1_fu_1101_p1 = emission_load_reg_2095;
assign bitcast_ln14_fu_1097_p1 = init_load_reg_2090;
assign emission_address0 = zext_ln14_fu_1087_p1;
assign emission_ce0 = emission_ce0_local;
assign grp_fu_3309_p_ce = 1'b1;
assign grp_fu_3309_p_din0 = bitcast_ln14_fu_1097_p1;
assign grp_fu_3309_p_din1 = bitcast_ln14_1_fu_1101_p1;
assign grp_fu_3309_p_opcode = 2'd0;
assign icmp_ln13_fu_1052_p2 = ((ap_sig_allocacmp_s_1 == 7'd64) ? 1'b1 : 1'b0);
assign init_address0 = zext_ln13_fu_1064_p1;
assign init_ce0 = init_ce0_local;
assign obs_load_cast_cast_fu_1040_p1 = obs_load_cast;
assign shl_ln_fu_1073_p3 = {{trunc_ln13_fu_1069_p1}, {6'd0}};
assign trunc_ln13_fu_1069_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln13_fu_1064_p1 = ap_sig_allocacmp_s_1;
assign zext_ln14_fu_1087_p1 = add_ln14_fu_1081_p2;
endmodule 