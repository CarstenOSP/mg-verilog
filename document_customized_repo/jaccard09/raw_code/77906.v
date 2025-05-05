module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_0_address0,init_0_ce0,init_0_q0,init_1_address0,init_1_ce0,init_1_q0,init_2_address0,init_2_ce0,init_2_q0,init_3_address0,init_3_ce0,init_3_q0,init_4_address0,init_4_ce0,init_4_q0,init_5_address0,init_5_ce0,init_5_q0,init_6_address0,init_6_ce0,init_6_q0,init_7_address0,init_7_ce0,init_7_q0,conv3_udiv_cast,emission_0_address0,emission_0_ce0,emission_0_q0,emission_1_address0,emission_1_ce0,emission_1_q0,emission_2_address0,emission_2_ce0,emission_2_q0,emission_3_address0,emission_3_ce0,emission_3_q0,emission_4_address0,emission_4_ce0,emission_4_q0,emission_5_address0,emission_5_ce0,emission_5_q0,emission_6_address0,emission_6_ce0,emission_6_q0,emission_7_address0,emission_7_ce0,emission_7_q0,empty,add6128_out,add6128_out_ap_vld,add6126_out,add6126_out_ap_vld,add6124_out,add6124_out_ap_vld,add6122_out,add6122_out_ap_vld,add6120_out,add6120_out_ap_vld,add6118_out,add6118_out_ap_vld,add6116_out,add6116_out_ap_vld,add6114_out,add6114_out_ap_vld,add6112_out,add6112_out_ap_vld,add6110_out,add6110_out_ap_vld,add6108_out,add6108_out_ap_vld,add6106_out,add6106_out_ap_vld,add6104_out,add6104_out_ap_vld,add6102_out,add6102_out_ap_vld,add6100_out,add6100_out_ap_vld,add698_out,add698_out_ap_vld,add696_out,add696_out_ap_vld,add694_out,add694_out_ap_vld,add692_out,add692_out_ap_vld,add690_out,add690_out_ap_vld,add688_out,add688_out_ap_vld,add686_out,add686_out_ap_vld,add684_out,add684_out_ap_vld,add682_out,add682_out_ap_vld,add680_out,add680_out_ap_vld,add678_out,add678_out_ap_vld,add676_out,add676_out_ap_vld,add674_out,add674_out_ap_vld,add672_out,add672_out_ap_vld,add670_out,add670_out_ap_vld,add668_out,add668_out_ap_vld,add666_out,add666_out_ap_vld,add664_out,add664_out_ap_vld,add662_out,add662_out_ap_vld,add660_out,add660_out_ap_vld,add658_out,add658_out_ap_vld,add656_out,add656_out_ap_vld,add654_out,add654_out_ap_vld,add652_out,add652_out_ap_vld,add650_out,add650_out_ap_vld,add648_out,add648_out_ap_vld,add646_out,add646_out_ap_vld,add644_out,add644_out_ap_vld,add642_out,add642_out_ap_vld,add640_out,add640_out_ap_vld,add638_out,add638_out_ap_vld,add636_out,add636_out_ap_vld,add634_out,add634_out_ap_vld,add632_out,add632_out_ap_vld,add630_out,add630_out_ap_vld,add628_out,add628_out_ap_vld,add626_out,add626_out_ap_vld,add624_out,add624_out_ap_vld,add622_out,add622_out_ap_vld,add620_out,add620_out_ap_vld,add618_out,add618_out_ap_vld,add616_out,add616_out_ap_vld,add614_out,add614_out_ap_vld,add612_out,add612_out_ap_vld,add610_out,add610_out_ap_vld,add68_out,add68_out_ap_vld,add66_out,add66_out_ap_vld,add64_out,add64_out_ap_vld,add62_out,add62_out_ap_vld,grp_fu_3308_p_din0,grp_fu_3308_p_din1,grp_fu_3308_p_opcode,grp_fu_3308_p_dout0,grp_fu_3308_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [2:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
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
input  [4:0] conv3_udiv_cast;
output  [8:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [8:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [8:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [8:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [8:0] emission_4_address0;
output   emission_4_ce0;
input  [63:0] emission_4_q0;
output  [8:0] emission_5_address0;
output   emission_5_ce0;
input  [63:0] emission_5_q0;
output  [8:0] emission_6_address0;
output   emission_6_ce0;
input  [63:0] emission_6_q0;
output  [8:0] emission_7_address0;
output   emission_7_ce0;
input  [63:0] emission_7_q0;
input  [2:0] empty;
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
output  [63:0] grp_fu_3308_p_din0;
output  [63:0] grp_fu_3308_p_din1;
output  [1:0] grp_fu_3308_p_opcode;
input  [63:0] grp_fu_3308_p_dout0;
output   grp_fu_3308_p_ce;
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
wire   [0:0] icmp_ln13_fu_1298_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln13_reg_2485;
reg   [0:0] icmp_ln13_reg_2485_pp0_iter1_reg;
reg   [0:0] icmp_ln13_reg_2485_pp0_iter2_reg;
reg   [0:0] icmp_ln13_reg_2485_pp0_iter3_reg;
reg   [0:0] icmp_ln13_reg_2485_pp0_iter4_reg;
reg   [0:0] icmp_ln13_reg_2485_pp0_iter5_reg;
reg   [0:0] icmp_ln13_reg_2485_pp0_iter6_reg;
reg   [0:0] icmp_ln13_reg_2485_pp0_iter7_reg;
wire   [2:0] trunc_ln13_fu_1310_p1;
reg   [2:0] trunc_ln13_reg_2489;
wire   [5:0] trunc_ln13_1_fu_1314_p1;
reg   [5:0] trunc_ln13_1_reg_2494;
reg   [5:0] trunc_ln13_1_reg_2494_pp0_iter1_reg;
reg   [5:0] trunc_ln13_1_reg_2494_pp0_iter2_reg;
reg   [5:0] trunc_ln13_1_reg_2494_pp0_iter3_reg;
reg   [5:0] trunc_ln13_1_reg_2494_pp0_iter4_reg;
reg   [5:0] trunc_ln13_1_reg_2494_pp0_iter5_reg;
reg   [5:0] trunc_ln13_1_reg_2494_pp0_iter6_reg;
reg   [5:0] trunc_ln13_1_reg_2494_pp0_iter7_reg;
wire   [63:0] tmp_fu_1403_p19;
reg   [63:0] tmp_reg_2578;
wire   [63:0] tmp_1_fu_1474_p19;
reg   [63:0] tmp_1_reg_2583;
wire   [63:0] zext_ln9_fu_1328_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1354_p1;
reg   [6:0] s_fu_354;
wire   [6:0] add_ln13_fu_1304_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add62_fu_358;
reg    ap_predicate_pred1075_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [63:0] add64_fu_362;
reg    ap_predicate_pred1097_state10;
reg   [63:0] add66_fu_366;
reg    ap_predicate_pred1106_state10;
reg   [63:0] add68_fu_370;
reg    ap_predicate_pred1115_state10;
reg   [63:0] add610_fu_374;
reg    ap_predicate_pred1124_state10;
reg   [63:0] add612_fu_378;
reg    ap_predicate_pred1133_state10;
reg   [63:0] add614_fu_382;
reg    ap_predicate_pred1142_state10;
reg   [63:0] add616_fu_386;
reg    ap_predicate_pred1151_state10;
reg   [63:0] add618_fu_390;
reg    ap_predicate_pred1160_state10;
reg   [63:0] add620_fu_394;
reg    ap_predicate_pred1169_state10;
reg   [63:0] add622_fu_398;
reg    ap_predicate_pred1178_state10;
reg   [63:0] add624_fu_402;
reg    ap_predicate_pred1187_state10;
reg   [63:0] add626_fu_406;
reg    ap_predicate_pred1196_state10;
reg   [63:0] add628_fu_410;
reg    ap_predicate_pred1205_state10;
reg   [63:0] add630_fu_414;
reg    ap_predicate_pred1214_state10;
reg   [63:0] add632_fu_418;
reg    ap_predicate_pred1223_state10;
reg   [63:0] add634_fu_422;
reg    ap_predicate_pred1232_state10;
reg   [63:0] add636_fu_426;
reg    ap_predicate_pred1241_state10;
reg   [63:0] add638_fu_430;
reg    ap_predicate_pred1250_state10;
reg   [63:0] add640_fu_434;
reg    ap_predicate_pred1259_state10;
reg   [63:0] add642_fu_438;
reg    ap_predicate_pred1268_state10;
reg   [63:0] add644_fu_442;
reg    ap_predicate_pred1277_state10;
reg   [63:0] add646_fu_446;
reg    ap_predicate_pred1286_state10;
reg   [63:0] add648_fu_450;
reg    ap_predicate_pred1295_state10;
reg   [63:0] add650_fu_454;
reg    ap_predicate_pred1304_state10;
reg   [63:0] add652_fu_458;
reg    ap_predicate_pred1313_state10;
reg   [63:0] add654_fu_462;
reg    ap_predicate_pred1322_state10;
reg   [63:0] add656_fu_466;
reg    ap_predicate_pred1331_state10;
reg   [63:0] add658_fu_470;
reg    ap_predicate_pred1340_state10;
reg   [63:0] add660_fu_474;
reg    ap_predicate_pred1349_state10;
reg   [63:0] add662_fu_478;
reg    ap_predicate_pred1358_state10;
reg   [63:0] add664_fu_482;
reg    ap_predicate_pred1367_state10;
reg   [63:0] add666_fu_486;
reg    ap_predicate_pred1376_state10;
reg   [63:0] add668_fu_490;
reg    ap_predicate_pred1385_state10;
reg   [63:0] add670_fu_494;
reg    ap_predicate_pred1394_state10;
reg   [63:0] add672_fu_498;
reg    ap_predicate_pred1403_state10;
reg   [63:0] add674_fu_502;
reg    ap_predicate_pred1412_state10;
reg   [63:0] add676_fu_506;
reg    ap_predicate_pred1421_state10;
reg   [63:0] add678_fu_510;
reg    ap_predicate_pred1430_state10;
reg   [63:0] add680_fu_514;
reg    ap_predicate_pred1439_state10;
reg   [63:0] add682_fu_518;
reg    ap_predicate_pred1448_state10;
reg   [63:0] add684_fu_522;
reg    ap_predicate_pred1457_state10;
reg   [63:0] add686_fu_526;
reg    ap_predicate_pred1466_state10;
reg   [63:0] add688_fu_530;
reg    ap_predicate_pred1475_state10;
reg   [63:0] add690_fu_534;
reg    ap_predicate_pred1484_state10;
reg   [63:0] add692_fu_538;
reg    ap_predicate_pred1493_state10;
reg   [63:0] add694_fu_542;
reg    ap_predicate_pred1502_state10;
reg   [63:0] add696_fu_546;
reg    ap_predicate_pred1511_state10;
reg   [63:0] add698_fu_550;
reg    ap_predicate_pred1520_state10;
reg   [63:0] add6100_fu_554;
reg    ap_predicate_pred1529_state10;
reg   [63:0] add6102_fu_558;
reg    ap_predicate_pred1538_state10;
reg   [63:0] add6104_fu_562;
reg    ap_predicate_pred1547_state10;
reg   [63:0] add6106_fu_566;
reg    ap_predicate_pred1556_state10;
reg   [63:0] add6108_fu_570;
reg    ap_predicate_pred1565_state10;
reg   [63:0] add6110_fu_574;
reg    ap_predicate_pred1574_state10;
reg   [63:0] add6112_fu_578;
reg    ap_predicate_pred1583_state10;
reg   [63:0] add6114_fu_582;
reg    ap_predicate_pred1592_state10;
reg   [63:0] add6116_fu_586;
reg    ap_predicate_pred1601_state10;
reg   [63:0] add6118_fu_590;
reg    ap_predicate_pred1610_state10;
reg   [63:0] add6120_fu_594;
reg    ap_predicate_pred1619_state10;
reg   [63:0] add6122_fu_598;
reg    ap_predicate_pred1628_state10;
reg   [63:0] add6124_fu_602;
reg    ap_predicate_pred1637_state10;
reg   [63:0] add6126_fu_606;
reg    ap_predicate_pred1646_state10;
reg   [63:0] add6128_fu_610;
reg    ap_predicate_pred1655_state10;
wire    ap_block_pp0_stage0_01001;
reg    init_0_ce0_local;
reg    init_1_ce0_local;
reg    init_2_ce0_local;
reg    init_3_ce0_local;
reg    init_4_ce0_local;
reg    init_5_ce0_local;
reg    init_6_ce0_local;
reg    init_7_ce0_local;
reg    emission_0_ce0_local;
reg    emission_1_ce0_local;
reg    emission_2_ce0_local;
reg    emission_3_ce0_local;
reg    emission_4_ce0_local;
reg    emission_5_ce0_local;
reg    emission_6_ce0_local;
reg    emission_7_ce0_local;
wire   [2:0] lshr_ln9_fu_1318_p4;
wire   [8:0] shl_ln_fu_1340_p3;
wire   [8:0] conv3_udiv_cast_cast_fu_1286_p1;
wire   [8:0] add_ln14_fu_1348_p2;
wire   [63:0] tmp_fu_1403_p2;
wire   [63:0] tmp_fu_1403_p4;
wire   [63:0] tmp_fu_1403_p6;
wire   [63:0] tmp_fu_1403_p8;
wire   [63:0] tmp_fu_1403_p10;
wire   [63:0] tmp_fu_1403_p12;
wire   [63:0] tmp_fu_1403_p14;
wire   [63:0] tmp_fu_1403_p16;
wire   [63:0] tmp_fu_1403_p17;
wire   [63:0] tmp_1_fu_1474_p2;
wire   [63:0] tmp_1_fu_1474_p4;
wire   [63:0] tmp_1_fu_1474_p6;
wire   [63:0] tmp_1_fu_1474_p8;
wire   [63:0] tmp_1_fu_1474_p10;
wire   [63:0] tmp_1_fu_1474_p12;
wire   [63:0] tmp_1_fu_1474_p14;
wire   [63:0] tmp_1_fu_1474_p16;
wire   [63:0] tmp_1_fu_1474_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire   [2:0] tmp_fu_1403_p1;
wire   [2:0] tmp_fu_1403_p3;
wire   [2:0] tmp_fu_1403_p5;
wire   [2:0] tmp_fu_1403_p7;
wire  signed [2:0] tmp_fu_1403_p9;
wire  signed [2:0] tmp_fu_1403_p11;
wire  signed [2:0] tmp_fu_1403_p13;
wire  signed [2:0] tmp_fu_1403_p15;
wire   [2:0] tmp_1_fu_1474_p1;
wire   [2:0] tmp_1_fu_1474_p3;
wire   [2:0] tmp_1_fu_1474_p5;
wire   [2:0] tmp_1_fu_1474_p7;
wire  signed [2:0] tmp_1_fu_1474_p9;
wire  signed [2:0] tmp_1_fu_1474_p11;
wire  signed [2:0] tmp_1_fu_1474_p13;
wire  signed [2:0] tmp_1_fu_1474_p15;
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
#0 s_fu_354 = 7'd0;
#0 add62_fu_358 = 64'd0;
#0 add64_fu_362 = 64'd0;
#0 add66_fu_366 = 64'd0;
#0 add68_fu_370 = 64'd0;
#0 add610_fu_374 = 64'd0;
#0 add612_fu_378 = 64'd0;
#0 add614_fu_382 = 64'd0;
#0 add616_fu_386 = 64'd0;
#0 add618_fu_390 = 64'd0;
#0 add620_fu_394 = 64'd0;
#0 add622_fu_398 = 64'd0;
#0 add624_fu_402 = 64'd0;
#0 add626_fu_406 = 64'd0;
#0 add628_fu_410 = 64'd0;
#0 add630_fu_414 = 64'd0;
#0 add632_fu_418 = 64'd0;
#0 add634_fu_422 = 64'd0;
#0 add636_fu_426 = 64'd0;
#0 add638_fu_430 = 64'd0;
#0 add640_fu_434 = 64'd0;
#0 add642_fu_438 = 64'd0;
#0 add644_fu_442 = 64'd0;
#0 add646_fu_446 = 64'd0;
#0 add648_fu_450 = 64'd0;
#0 add650_fu_454 = 64'd0;
#0 add652_fu_458 = 64'd0;
#0 add654_fu_462 = 64'd0;
#0 add656_fu_466 = 64'd0;
#0 add658_fu_470 = 64'd0;
#0 add660_fu_474 = 64'd0;
#0 add662_fu_478 = 64'd0;
#0 add664_fu_482 = 64'd0;
#0 add666_fu_486 = 64'd0;
#0 add668_fu_490 = 64'd0;
#0 add670_fu_494 = 64'd0;
#0 add672_fu_498 = 64'd0;
#0 add674_fu_502 = 64'd0;
#0 add676_fu_506 = 64'd0;
#0 add678_fu_510 = 64'd0;
#0 add680_fu_514 = 64'd0;
#0 add682_fu_518 = 64'd0;
#0 add684_fu_522 = 64'd0;
#0 add686_fu_526 = 64'd0;
#0 add688_fu_530 = 64'd0;
#0 add690_fu_534 = 64'd0;
#0 add692_fu_538 = 64'd0;
#0 add694_fu_542 = 64'd0;
#0 add696_fu_546 = 64'd0;
#0 add698_fu_550 = 64'd0;
#0 add6100_fu_554 = 64'd0;
#0 add6102_fu_558 = 64'd0;
#0 add6104_fu_562 = 64'd0;
#0 add6106_fu_566 = 64'd0;
#0 add6108_fu_570 = 64'd0;
#0 add6110_fu_574 = 64'd0;
#0 add6112_fu_578 = 64'd0;
#0 add6114_fu_582 = 64'd0;
#0 add6116_fu_586 = 64'd0;
#0 add6118_fu_590 = 64'd0;
#0 add6120_fu_594 = 64'd0;
#0 add6122_fu_598 = 64'd0;
#0 add6124_fu_602 = 64'd0;
#0 add6126_fu_606 = 64'd0;
#0 add6128_fu_610 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U2(.din0(tmp_fu_1403_p2),.din1(tmp_fu_1403_p4),.din2(tmp_fu_1403_p6),.din3(tmp_fu_1403_p8),.din4(tmp_fu_1403_p10),.din5(tmp_fu_1403_p12),.din6(tmp_fu_1403_p14),.din7(tmp_fu_1403_p16),.def(tmp_fu_1403_p17),.sel(trunc_ln13_reg_2489),.dout(tmp_fu_1403_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(tmp_1_fu_1474_p2),.din1(tmp_1_fu_1474_p4),.din2(tmp_1_fu_1474_p6),.din3(tmp_1_fu_1474_p8),.din4(tmp_1_fu_1474_p10),.din5(tmp_1_fu_1474_p12),.din6(tmp_1_fu_1474_p14),.din7(tmp_1_fu_1474_p16),.def(tmp_1_fu_1474_p17),.sel(empty),.dout(tmp_1_fu_1474_p19));
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
        if (((icmp_ln13_fu_1298_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            s_fu_354 <= add_ln13_fu_1304_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            s_fu_354 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1529_state10 == 1'b1))) begin
        add6100_fu_554 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1538_state10 == 1'b1))) begin
        add6102_fu_558 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1547_state10 == 1'b1))) begin
        add6104_fu_562 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1556_state10 == 1'b1))) begin
        add6106_fu_566 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1565_state10 == 1'b1))) begin
        add6108_fu_570 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1124_state10 == 1'b1))) begin
        add610_fu_374 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1574_state10 == 1'b1))) begin
        add6110_fu_574 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1583_state10 == 1'b1))) begin
        add6112_fu_578 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1592_state10 == 1'b1))) begin
        add6114_fu_582 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1601_state10 == 1'b1))) begin
        add6116_fu_586 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1610_state10 == 1'b1))) begin
        add6118_fu_590 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1619_state10 == 1'b1))) begin
        add6120_fu_594 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1628_state10 == 1'b1))) begin
        add6122_fu_598 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1637_state10 == 1'b1))) begin
        add6124_fu_602 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1646_state10 == 1'b1))) begin
        add6126_fu_606 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1655_state10 == 1'b1))) begin
        add6128_fu_610 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1133_state10 == 1'b1))) begin
        add612_fu_378 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1142_state10 == 1'b1))) begin
        add614_fu_382 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1151_state10 == 1'b1))) begin
        add616_fu_386 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1160_state10 == 1'b1))) begin
        add618_fu_390 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1169_state10 == 1'b1))) begin
        add620_fu_394 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1178_state10 == 1'b1))) begin
        add622_fu_398 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1187_state10 == 1'b1))) begin
        add624_fu_402 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1196_state10 == 1'b1))) begin
        add626_fu_406 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1205_state10 == 1'b1))) begin
        add628_fu_410 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1075_state10 == 1'b1))) begin
        add62_fu_358 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1214_state10 == 1'b1))) begin
        add630_fu_414 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1223_state10 == 1'b1))) begin
        add632_fu_418 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1232_state10 == 1'b1))) begin
        add634_fu_422 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1241_state10 == 1'b1))) begin
        add636_fu_426 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1250_state10 == 1'b1))) begin
        add638_fu_430 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1259_state10 == 1'b1))) begin
        add640_fu_434 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1268_state10 == 1'b1))) begin
        add642_fu_438 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1277_state10 == 1'b1))) begin
        add644_fu_442 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1286_state10 == 1'b1))) begin
        add646_fu_446 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1295_state10 == 1'b1))) begin
        add648_fu_450 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1097_state10 == 1'b1))) begin
        add64_fu_362 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1304_state10 == 1'b1))) begin
        add650_fu_454 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1313_state10 == 1'b1))) begin
        add652_fu_458 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1322_state10 == 1'b1))) begin
        add654_fu_462 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1331_state10 == 1'b1))) begin
        add656_fu_466 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1340_state10 == 1'b1))) begin
        add658_fu_470 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1349_state10 == 1'b1))) begin
        add660_fu_474 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1358_state10 == 1'b1))) begin
        add662_fu_478 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1367_state10 == 1'b1))) begin
        add664_fu_482 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1376_state10 == 1'b1))) begin
        add666_fu_486 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1385_state10 == 1'b1))) begin
        add668_fu_490 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1106_state10 == 1'b1))) begin
        add66_fu_366 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1394_state10 == 1'b1))) begin
        add670_fu_494 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1403_state10 == 1'b1))) begin
        add672_fu_498 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1412_state10 == 1'b1))) begin
        add674_fu_502 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1421_state10 == 1'b1))) begin
        add676_fu_506 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1430_state10 == 1'b1))) begin
        add678_fu_510 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1439_state10 == 1'b1))) begin
        add680_fu_514 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1448_state10 == 1'b1))) begin
        add682_fu_518 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1457_state10 == 1'b1))) begin
        add684_fu_522 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1466_state10 == 1'b1))) begin
        add686_fu_526 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1475_state10 == 1'b1))) begin
        add688_fu_530 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1115_state10 == 1'b1))) begin
        add68_fu_370 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1484_state10 == 1'b1))) begin
        add690_fu_534 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1493_state10 == 1'b1))) begin
        add692_fu_538 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1502_state10 == 1'b1))) begin
        add694_fu_542 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1511_state10 == 1'b1))) begin
        add696_fu_546 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (ap_predicate_pred1520_state10 == 1'b1))) begin
        add698_fu_550 <= grp_fu_3308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln13_reg_2485 <= icmp_ln13_fu_1298_p2;
        icmp_ln13_reg_2485_pp0_iter1_reg <= icmp_ln13_reg_2485;
        tmp_1_reg_2583 <= tmp_1_fu_1474_p19;
        tmp_reg_2578 <= tmp_fu_1403_p19;
        trunc_ln13_1_reg_2494 <= trunc_ln13_1_fu_1314_p1;
        trunc_ln13_1_reg_2494_pp0_iter1_reg <= trunc_ln13_1_reg_2494;
        trunc_ln13_reg_2489 <= trunc_ln13_fu_1310_p1;
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
        ap_predicate_pred1075_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd62);
        ap_predicate_pred1097_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd61);
        ap_predicate_pred1106_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd60);
        ap_predicate_pred1115_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd59);
        ap_predicate_pred1124_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd58);
        ap_predicate_pred1133_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd57);
        ap_predicate_pred1142_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd56);
        ap_predicate_pred1151_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd55);
        ap_predicate_pred1160_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd54);
        ap_predicate_pred1169_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd53);
        ap_predicate_pred1178_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd52);
        ap_predicate_pred1187_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd51);
        ap_predicate_pred1196_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd50);
        ap_predicate_pred1205_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd49);
        ap_predicate_pred1214_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd48);
        ap_predicate_pred1223_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd47);
        ap_predicate_pred1232_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd46);
        ap_predicate_pred1241_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd45);
        ap_predicate_pred1250_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd44);
        ap_predicate_pred1259_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd43);
        ap_predicate_pred1268_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd42);
        ap_predicate_pred1277_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd41);
        ap_predicate_pred1286_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd40);
        ap_predicate_pred1295_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd39);
        ap_predicate_pred1304_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd38);
        ap_predicate_pred1313_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd37);
        ap_predicate_pred1322_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd36);
        ap_predicate_pred1331_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd35);
        ap_predicate_pred1340_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd34);
        ap_predicate_pred1349_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd33);
        ap_predicate_pred1358_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd32);
        ap_predicate_pred1367_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd31);
        ap_predicate_pred1376_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd30);
        ap_predicate_pred1385_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd29);
        ap_predicate_pred1394_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd28);
        ap_predicate_pred1403_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd27);
        ap_predicate_pred1412_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd26);
        ap_predicate_pred1421_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd25);
        ap_predicate_pred1430_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd24);
        ap_predicate_pred1439_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd23);
        ap_predicate_pred1448_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd22);
        ap_predicate_pred1457_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd21);
        ap_predicate_pred1466_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd20);
        ap_predicate_pred1475_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd19);
        ap_predicate_pred1484_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd18);
        ap_predicate_pred1493_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd17);
        ap_predicate_pred1502_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd16);
        ap_predicate_pred1511_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd15);
        ap_predicate_pred1520_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd14);
        ap_predicate_pred1529_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd13);
        ap_predicate_pred1538_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd12);
        ap_predicate_pred1547_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd11);
        ap_predicate_pred1556_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd10);
        ap_predicate_pred1565_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd9);
        ap_predicate_pred1574_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd8);
        ap_predicate_pred1583_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd7);
        ap_predicate_pred1592_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd6);
        ap_predicate_pred1601_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd5);
        ap_predicate_pred1610_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd4);
        ap_predicate_pred1619_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd3);
        ap_predicate_pred1628_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd2);
        ap_predicate_pred1637_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd1);
        ap_predicate_pred1646_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd0);
        ap_predicate_pred1655_state10 <= (trunc_ln13_1_reg_2494_pp0_iter7_reg == 6'd63);
        icmp_ln13_reg_2485_pp0_iter2_reg <= icmp_ln13_reg_2485_pp0_iter1_reg;
        icmp_ln13_reg_2485_pp0_iter3_reg <= icmp_ln13_reg_2485_pp0_iter2_reg;
        icmp_ln13_reg_2485_pp0_iter4_reg <= icmp_ln13_reg_2485_pp0_iter3_reg;
        icmp_ln13_reg_2485_pp0_iter5_reg <= icmp_ln13_reg_2485_pp0_iter4_reg;
        icmp_ln13_reg_2485_pp0_iter6_reg <= icmp_ln13_reg_2485_pp0_iter5_reg;
        icmp_ln13_reg_2485_pp0_iter7_reg <= icmp_ln13_reg_2485_pp0_iter6_reg;
        trunc_ln13_1_reg_2494_pp0_iter2_reg <= trunc_ln13_1_reg_2494_pp0_iter1_reg;
        trunc_ln13_1_reg_2494_pp0_iter3_reg <= trunc_ln13_1_reg_2494_pp0_iter2_reg;
        trunc_ln13_1_reg_2494_pp0_iter4_reg <= trunc_ln13_1_reg_2494_pp0_iter3_reg;
        trunc_ln13_1_reg_2494_pp0_iter5_reg <= trunc_ln13_1_reg_2494_pp0_iter4_reg;
        trunc_ln13_1_reg_2494_pp0_iter6_reg <= trunc_ln13_1_reg_2494_pp0_iter5_reg;
        trunc_ln13_1_reg_2494_pp0_iter7_reg <= trunc_ln13_1_reg_2494_pp0_iter6_reg;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6100_out_ap_vld = 1'b1;
    end else begin
        add6100_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6102_out_ap_vld = 1'b1;
    end else begin
        add6102_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6104_out_ap_vld = 1'b1;
    end else begin
        add6104_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6106_out_ap_vld = 1'b1;
    end else begin
        add6106_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6108_out_ap_vld = 1'b1;
    end else begin
        add6108_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add610_out_ap_vld = 1'b1;
    end else begin
        add610_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6110_out_ap_vld = 1'b1;
    end else begin
        add6110_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6112_out_ap_vld = 1'b1;
    end else begin
        add6112_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6114_out_ap_vld = 1'b1;
    end else begin
        add6114_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6116_out_ap_vld = 1'b1;
    end else begin
        add6116_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6118_out_ap_vld = 1'b1;
    end else begin
        add6118_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6120_out_ap_vld = 1'b1;
    end else begin
        add6120_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6122_out_ap_vld = 1'b1;
    end else begin
        add6122_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6124_out_ap_vld = 1'b1;
    end else begin
        add6124_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6126_out_ap_vld = 1'b1;
    end else begin
        add6126_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add6128_out_ap_vld = 1'b1;
    end else begin
        add6128_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add612_out_ap_vld = 1'b1;
    end else begin
        add612_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add614_out_ap_vld = 1'b1;
    end else begin
        add614_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add616_out_ap_vld = 1'b1;
    end else begin
        add616_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add618_out_ap_vld = 1'b1;
    end else begin
        add618_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add620_out_ap_vld = 1'b1;
    end else begin
        add620_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add622_out_ap_vld = 1'b1;
    end else begin
        add622_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add624_out_ap_vld = 1'b1;
    end else begin
        add624_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add626_out_ap_vld = 1'b1;
    end else begin
        add626_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add628_out_ap_vld = 1'b1;
    end else begin
        add628_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add62_out_ap_vld = 1'b1;
    end else begin
        add62_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add630_out_ap_vld = 1'b1;
    end else begin
        add630_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add632_out_ap_vld = 1'b1;
    end else begin
        add632_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add634_out_ap_vld = 1'b1;
    end else begin
        add634_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add636_out_ap_vld = 1'b1;
    end else begin
        add636_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add638_out_ap_vld = 1'b1;
    end else begin
        add638_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add640_out_ap_vld = 1'b1;
    end else begin
        add640_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add642_out_ap_vld = 1'b1;
    end else begin
        add642_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add644_out_ap_vld = 1'b1;
    end else begin
        add644_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add646_out_ap_vld = 1'b1;
    end else begin
        add646_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add648_out_ap_vld = 1'b1;
    end else begin
        add648_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add64_out_ap_vld = 1'b1;
    end else begin
        add64_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add650_out_ap_vld = 1'b1;
    end else begin
        add650_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add652_out_ap_vld = 1'b1;
    end else begin
        add652_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add654_out_ap_vld = 1'b1;
    end else begin
        add654_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add656_out_ap_vld = 1'b1;
    end else begin
        add656_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add658_out_ap_vld = 1'b1;
    end else begin
        add658_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add660_out_ap_vld = 1'b1;
    end else begin
        add660_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add662_out_ap_vld = 1'b1;
    end else begin
        add662_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add664_out_ap_vld = 1'b1;
    end else begin
        add664_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add666_out_ap_vld = 1'b1;
    end else begin
        add666_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add668_out_ap_vld = 1'b1;
    end else begin
        add668_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add66_out_ap_vld = 1'b1;
    end else begin
        add66_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add670_out_ap_vld = 1'b1;
    end else begin
        add670_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add672_out_ap_vld = 1'b1;
    end else begin
        add672_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add674_out_ap_vld = 1'b1;
    end else begin
        add674_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add676_out_ap_vld = 1'b1;
    end else begin
        add676_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add678_out_ap_vld = 1'b1;
    end else begin
        add678_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add680_out_ap_vld = 1'b1;
    end else begin
        add680_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add682_out_ap_vld = 1'b1;
    end else begin
        add682_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add684_out_ap_vld = 1'b1;
    end else begin
        add684_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add686_out_ap_vld = 1'b1;
    end else begin
        add686_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add688_out_ap_vld = 1'b1;
    end else begin
        add688_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add68_out_ap_vld = 1'b1;
    end else begin
        add68_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add690_out_ap_vld = 1'b1;
    end else begin
        add690_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add692_out_ap_vld = 1'b1;
    end else begin
        add692_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add694_out_ap_vld = 1'b1;
    end else begin
        add694_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add696_out_ap_vld = 1'b1;
    end else begin
        add696_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_2485_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
        add698_out_ap_vld = 1'b1;
    end else begin
        add698_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln13_fu_1298_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_354;
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
        emission_4_ce0_local = 1'b1;
    end else begin
        emission_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_5_ce0_local = 1'b1;
    end else begin
        emission_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_6_ce0_local = 1'b1;
    end else begin
        emission_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_7_ce0_local = 1'b1;
    end else begin
        emission_7_ce0_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add6100_out = add6100_fu_554;
assign add6102_out = add6102_fu_558;
assign add6104_out = add6104_fu_562;
assign add6106_out = add6106_fu_566;
assign add6108_out = add6108_fu_570;
assign add610_out = add610_fu_374;
assign add6110_out = add6110_fu_574;
assign add6112_out = add6112_fu_578;
assign add6114_out = add6114_fu_582;
assign add6116_out = add6116_fu_586;
assign add6118_out = add6118_fu_590;
assign add6120_out = add6120_fu_594;
assign add6122_out = add6122_fu_598;
assign add6124_out = add6124_fu_602;
assign add6126_out = add6126_fu_606;
assign add6128_out = add6128_fu_610;
assign add612_out = add612_fu_378;
assign add614_out = add614_fu_382;
assign add616_out = add616_fu_386;
assign add618_out = add618_fu_390;
assign add620_out = add620_fu_394;
assign add622_out = add622_fu_398;
assign add624_out = add624_fu_402;
assign add626_out = add626_fu_406;
assign add628_out = add628_fu_410;
assign add62_out = add62_fu_358;
assign add630_out = add630_fu_414;
assign add632_out = add632_fu_418;
assign add634_out = add634_fu_422;
assign add636_out = add636_fu_426;
assign add638_out = add638_fu_430;
assign add640_out = add640_fu_434;
assign add642_out = add642_fu_438;
assign add644_out = add644_fu_442;
assign add646_out = add646_fu_446;
assign add648_out = add648_fu_450;
assign add64_out = add64_fu_362;
assign add650_out = add650_fu_454;
assign add652_out = add652_fu_458;
assign add654_out = add654_fu_462;
assign add656_out = add656_fu_466;
assign add658_out = add658_fu_470;
assign add660_out = add660_fu_474;
assign add662_out = add662_fu_478;
assign add664_out = add664_fu_482;
assign add666_out = add666_fu_486;
assign add668_out = add668_fu_490;
assign add66_out = add66_fu_366;
assign add670_out = add670_fu_494;
assign add672_out = add672_fu_498;
assign add674_out = add674_fu_502;
assign add676_out = add676_fu_506;
assign add678_out = add678_fu_510;
assign add680_out = add680_fu_514;
assign add682_out = add682_fu_518;
assign add684_out = add684_fu_522;
assign add686_out = add686_fu_526;
assign add688_out = add688_fu_530;
assign add68_out = add68_fu_370;
assign add690_out = add690_fu_534;
assign add692_out = add692_fu_538;
assign add694_out = add694_fu_542;
assign add696_out = add696_fu_546;
assign add698_out = add698_fu_550;
assign add_ln13_fu_1304_p2 = (ap_sig_allocacmp_s_1 + 7'd1);
assign add_ln14_fu_1348_p2 = (shl_ln_fu_1340_p3 + conv3_udiv_cast_cast_fu_1286_p1);
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
assign conv3_udiv_cast_cast_fu_1286_p1 = conv3_udiv_cast;
assign emission_0_address0 = zext_ln14_fu_1354_p1;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_1_address0 = zext_ln14_fu_1354_p1;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_2_address0 = zext_ln14_fu_1354_p1;
assign emission_2_ce0 = emission_2_ce0_local;
assign emission_3_address0 = zext_ln14_fu_1354_p1;
assign emission_3_ce0 = emission_3_ce0_local;
assign emission_4_address0 = zext_ln14_fu_1354_p1;
assign emission_4_ce0 = emission_4_ce0_local;
assign emission_5_address0 = zext_ln14_fu_1354_p1;
assign emission_5_ce0 = emission_5_ce0_local;
assign emission_6_address0 = zext_ln14_fu_1354_p1;
assign emission_6_ce0 = emission_6_ce0_local;
assign emission_7_address0 = zext_ln14_fu_1354_p1;
assign emission_7_ce0 = emission_7_ce0_local;
assign grp_fu_3308_p_ce = 1'b1;
assign grp_fu_3308_p_din0 = tmp_reg_2578;
assign grp_fu_3308_p_din1 = tmp_1_reg_2583;
assign grp_fu_3308_p_opcode = 2'd0;
assign icmp_ln13_fu_1298_p2 = ((ap_sig_allocacmp_s_1 == 7'd64) ? 1'b1 : 1'b0);
assign init_0_address0 = zext_ln9_fu_1328_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_1328_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_2_address0 = zext_ln9_fu_1328_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_3_address0 = zext_ln9_fu_1328_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_4_address0 = zext_ln9_fu_1328_p1;
assign init_4_ce0 = init_4_ce0_local;
assign init_5_address0 = zext_ln9_fu_1328_p1;
assign init_5_ce0 = init_5_ce0_local;
assign init_6_address0 = zext_ln9_fu_1328_p1;
assign init_6_ce0 = init_6_ce0_local;
assign init_7_address0 = zext_ln9_fu_1328_p1;
assign init_7_ce0 = init_7_ce0_local;
assign lshr_ln9_fu_1318_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign shl_ln_fu_1340_p3 = {{trunc_ln13_1_fu_1314_p1}, {3'd0}};
assign tmp_1_fu_1474_p10 = emission_4_q0;
assign tmp_1_fu_1474_p12 = emission_5_q0;
assign tmp_1_fu_1474_p14 = emission_6_q0;
assign tmp_1_fu_1474_p16 = emission_7_q0;
assign tmp_1_fu_1474_p17 = 'bx;
assign tmp_1_fu_1474_p2 = emission_0_q0;
assign tmp_1_fu_1474_p4 = emission_1_q0;
assign tmp_1_fu_1474_p6 = emission_2_q0;
assign tmp_1_fu_1474_p8 = emission_3_q0;
assign tmp_fu_1403_p10 = init_4_q0;
assign tmp_fu_1403_p12 = init_5_q0;
assign tmp_fu_1403_p14 = init_6_q0;
assign tmp_fu_1403_p16 = init_7_q0;
assign tmp_fu_1403_p17 = 'bx;
assign tmp_fu_1403_p2 = init_0_q0;
assign tmp_fu_1403_p4 = init_1_q0;
assign tmp_fu_1403_p6 = init_2_q0;
assign tmp_fu_1403_p8 = init_3_q0;
assign trunc_ln13_1_fu_1314_p1 = ap_sig_allocacmp_s_1[5:0];
assign trunc_ln13_fu_1310_p1 = ap_sig_allocacmp_s_1[2:0];
assign zext_ln14_fu_1354_p1 = add_ln14_fu_1348_p2;
assign zext_ln9_fu_1328_p1 = lshr_ln9_fu_1318_p4;
endmodule 