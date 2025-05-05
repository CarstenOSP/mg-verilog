module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,obs_load_cast,add6_15130_out,add6_15130_out_ap_vld,add6_14128_out,add6_14128_out_ap_vld,add6_13126_out,add6_13126_out_ap_vld,add6_12124_out,add6_12124_out_ap_vld,add6_11122_out,add6_11122_out_ap_vld,add6_10120_out,add6_10120_out_ap_vld,add6_9118_out,add6_9118_out_ap_vld,add6_8116_out,add6_8116_out_ap_vld,add6_7114_out,add6_7114_out_ap_vld,add6_6112_out,add6_6112_out_ap_vld,add6_5110_out,add6_5110_out_ap_vld,add6_4108_out,add6_4108_out_ap_vld,add6_3106_out,add6_3106_out_ap_vld,add6_2104_out,add6_2104_out_ap_vld,add6_1102_out,add6_1102_out_ap_vld,add6100_out,add6100_out_ap_vld,add6_1598_out,add6_1598_out_ap_vld,add6_1496_out,add6_1496_out_ap_vld,add6_1394_out,add6_1394_out_ap_vld,add6_1292_out,add6_1292_out_ap_vld,add6_1190_out,add6_1190_out_ap_vld,add6_1088_out,add6_1088_out_ap_vld,add6_986_out,add6_986_out_ap_vld,add6_884_out,add6_884_out_ap_vld,add6_782_out,add6_782_out_ap_vld,add6_680_out,add6_680_out_ap_vld,add6_578_out,add6_578_out_ap_vld,add6_476_out,add6_476_out_ap_vld,add6_374_out,add6_374_out_ap_vld,add6_272_out,add6_272_out_ap_vld,add6_170_out,add6_170_out_ap_vld,add668_out,add668_out_ap_vld,add6_1566_out,add6_1566_out_ap_vld,add6_1464_out,add6_1464_out_ap_vld,add6_1362_out,add6_1362_out_ap_vld,add6_1260_out,add6_1260_out_ap_vld,add6_1158_out,add6_1158_out_ap_vld,add6_1056_out,add6_1056_out_ap_vld,add6_954_out,add6_954_out_ap_vld,add6_852_out,add6_852_out_ap_vld,add6_750_out,add6_750_out_ap_vld,add6_648_out,add6_648_out_ap_vld,add6_546_out,add6_546_out_ap_vld,add6_444_out,add6_444_out_ap_vld,add6_342_out,add6_342_out_ap_vld,add6_240_out,add6_240_out_ap_vld,add6_138_out,add6_138_out_ap_vld,add636_out,add636_out_ap_vld,add6_1534_out,add6_1534_out_ap_vld,add6_1432_out,add6_1432_out_ap_vld,add6_1330_out,add6_1330_out_ap_vld,add6_1228_out,add6_1228_out_ap_vld,add6_1126_out,add6_1126_out_ap_vld,add6_1024_out,add6_1024_out_ap_vld,add6_922_out,add6_922_out_ap_vld,add6_820_out,add6_820_out_ap_vld,add6_718_out,add6_718_out_ap_vld,add6_616_out,add6_616_out_ap_vld,add6_514_out,add6_514_out_ap_vld,add6_412_out,add6_412_out_ap_vld,add6_310_out,add6_310_out_ap_vld,add6_28_out,add6_28_out_ap_vld,add6_16_out,add6_16_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_3803_p_din0,grp_fu_3803_p_din1,grp_fu_3803_p_opcode,grp_fu_3803_p_dout0,grp_fu_3803_p_ce,grp_fu_6727_p_din0,grp_fu_6727_p_din1,grp_fu_6727_p_opcode,grp_fu_6727_p_dout0,grp_fu_6727_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
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
input  [7:0] obs_load;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
input  [7:0] obs_load_cast;
output  [63:0] add6_15130_out;
output   add6_15130_out_ap_vld;
output  [63:0] add6_14128_out;
output   add6_14128_out_ap_vld;
output  [63:0] add6_13126_out;
output   add6_13126_out_ap_vld;
output  [63:0] add6_12124_out;
output   add6_12124_out_ap_vld;
output  [63:0] add6_11122_out;
output   add6_11122_out_ap_vld;
output  [63:0] add6_10120_out;
output   add6_10120_out_ap_vld;
output  [63:0] add6_9118_out;
output   add6_9118_out_ap_vld;
output  [63:0] add6_8116_out;
output   add6_8116_out_ap_vld;
output  [63:0] add6_7114_out;
output   add6_7114_out_ap_vld;
output  [63:0] add6_6112_out;
output   add6_6112_out_ap_vld;
output  [63:0] add6_5110_out;
output   add6_5110_out_ap_vld;
output  [63:0] add6_4108_out;
output   add6_4108_out_ap_vld;
output  [63:0] add6_3106_out;
output   add6_3106_out_ap_vld;
output  [63:0] add6_2104_out;
output   add6_2104_out_ap_vld;
output  [63:0] add6_1102_out;
output   add6_1102_out_ap_vld;
output  [63:0] add6100_out;
output   add6100_out_ap_vld;
output  [63:0] add6_1598_out;
output   add6_1598_out_ap_vld;
output  [63:0] add6_1496_out;
output   add6_1496_out_ap_vld;
output  [63:0] add6_1394_out;
output   add6_1394_out_ap_vld;
output  [63:0] add6_1292_out;
output   add6_1292_out_ap_vld;
output  [63:0] add6_1190_out;
output   add6_1190_out_ap_vld;
output  [63:0] add6_1088_out;
output   add6_1088_out_ap_vld;
output  [63:0] add6_986_out;
output   add6_986_out_ap_vld;
output  [63:0] add6_884_out;
output   add6_884_out_ap_vld;
output  [63:0] add6_782_out;
output   add6_782_out_ap_vld;
output  [63:0] add6_680_out;
output   add6_680_out_ap_vld;
output  [63:0] add6_578_out;
output   add6_578_out_ap_vld;
output  [63:0] add6_476_out;
output   add6_476_out_ap_vld;
output  [63:0] add6_374_out;
output   add6_374_out_ap_vld;
output  [63:0] add6_272_out;
output   add6_272_out_ap_vld;
output  [63:0] add6_170_out;
output   add6_170_out_ap_vld;
output  [63:0] add668_out;
output   add668_out_ap_vld;
output  [63:0] add6_1566_out;
output   add6_1566_out_ap_vld;
output  [63:0] add6_1464_out;
output   add6_1464_out_ap_vld;
output  [63:0] add6_1362_out;
output   add6_1362_out_ap_vld;
output  [63:0] add6_1260_out;
output   add6_1260_out_ap_vld;
output  [63:0] add6_1158_out;
output   add6_1158_out_ap_vld;
output  [63:0] add6_1056_out;
output   add6_1056_out_ap_vld;
output  [63:0] add6_954_out;
output   add6_954_out_ap_vld;
output  [63:0] add6_852_out;
output   add6_852_out_ap_vld;
output  [63:0] add6_750_out;
output   add6_750_out_ap_vld;
output  [63:0] add6_648_out;
output   add6_648_out_ap_vld;
output  [63:0] add6_546_out;
output   add6_546_out_ap_vld;
output  [63:0] add6_444_out;
output   add6_444_out_ap_vld;
output  [63:0] add6_342_out;
output   add6_342_out_ap_vld;
output  [63:0] add6_240_out;
output   add6_240_out_ap_vld;
output  [63:0] add6_138_out;
output   add6_138_out_ap_vld;
output  [63:0] add636_out;
output   add636_out_ap_vld;
output  [63:0] add6_1534_out;
output   add6_1534_out_ap_vld;
output  [63:0] add6_1432_out;
output   add6_1432_out_ap_vld;
output  [63:0] add6_1330_out;
output   add6_1330_out_ap_vld;
output  [63:0] add6_1228_out;
output   add6_1228_out_ap_vld;
output  [63:0] add6_1126_out;
output   add6_1126_out_ap_vld;
output  [63:0] add6_1024_out;
output   add6_1024_out_ap_vld;
output  [63:0] add6_922_out;
output   add6_922_out_ap_vld;
output  [63:0] add6_820_out;
output   add6_820_out_ap_vld;
output  [63:0] add6_718_out;
output   add6_718_out_ap_vld;
output  [63:0] add6_616_out;
output   add6_616_out_ap_vld;
output  [63:0] add6_514_out;
output   add6_514_out_ap_vld;
output  [63:0] add6_412_out;
output   add6_412_out_ap_vld;
output  [63:0] add6_310_out;
output   add6_310_out_ap_vld;
output  [63:0] add6_28_out;
output   add6_28_out_ap_vld;
output  [63:0] add6_16_out;
output   add6_16_out_ap_vld;
output  [63:0] add61_out;
output   add61_out_ap_vld;
output  [63:0] grp_fu_3803_p_din0;
output  [63:0] grp_fu_3803_p_din1;
output  [1:0] grp_fu_3803_p_opcode;
input  [63:0] grp_fu_3803_p_dout0;
output   grp_fu_3803_p_ce;
output  [63:0] grp_fu_6727_p_din0;
output  [63:0] grp_fu_6727_p_din1;
output  [1:0] grp_fu_6727_p_opcode;
input  [63:0] grp_fu_6727_p_dout0;
output   grp_fu_6727_p_ce;
reg ap_idle;
reg add6_15130_out_ap_vld;
reg add6_14128_out_ap_vld;
reg add6_13126_out_ap_vld;
reg add6_12124_out_ap_vld;
reg add6_11122_out_ap_vld;
reg add6_10120_out_ap_vld;
reg add6_9118_out_ap_vld;
reg add6_8116_out_ap_vld;
reg add6_7114_out_ap_vld;
reg add6_6112_out_ap_vld;
reg add6_5110_out_ap_vld;
reg add6_4108_out_ap_vld;
reg add6_3106_out_ap_vld;
reg add6_2104_out_ap_vld;
reg add6_1102_out_ap_vld;
reg add6100_out_ap_vld;
reg add6_1598_out_ap_vld;
reg add6_1496_out_ap_vld;
reg add6_1394_out_ap_vld;
reg add6_1292_out_ap_vld;
reg add6_1190_out_ap_vld;
reg add6_1088_out_ap_vld;
reg add6_986_out_ap_vld;
reg add6_884_out_ap_vld;
reg add6_782_out_ap_vld;
reg add6_680_out_ap_vld;
reg add6_578_out_ap_vld;
reg add6_476_out_ap_vld;
reg add6_374_out_ap_vld;
reg add6_272_out_ap_vld;
reg add6_170_out_ap_vld;
reg add668_out_ap_vld;
reg add6_1566_out_ap_vld;
reg add6_1464_out_ap_vld;
reg add6_1362_out_ap_vld;
reg add6_1260_out_ap_vld;
reg add6_1158_out_ap_vld;
reg add6_1056_out_ap_vld;
reg add6_954_out_ap_vld;
reg add6_852_out_ap_vld;
reg add6_750_out_ap_vld;
reg add6_648_out_ap_vld;
reg add6_546_out_ap_vld;
reg add6_444_out_ap_vld;
reg add6_342_out_ap_vld;
reg add6_240_out_ap_vld;
reg add6_138_out_ap_vld;
reg add636_out_ap_vld;
reg add6_1534_out_ap_vld;
reg add6_1432_out_ap_vld;
reg add6_1330_out_ap_vld;
reg add6_1228_out_ap_vld;
reg add6_1126_out_ap_vld;
reg add6_1024_out_ap_vld;
reg add6_922_out_ap_vld;
reg add6_820_out_ap_vld;
reg add6_718_out_ap_vld;
reg add6_616_out_ap_vld;
reg add6_514_out_ap_vld;
reg add6_412_out_ap_vld;
reg add6_310_out_ap_vld;
reg add6_28_out_ap_vld;
reg add6_16_out_ap_vld;
reg add61_out_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_3024;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1266;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_1270;
reg   [63:0] reg_1274;
reg   [63:0] reg_1278;
wire   [11:0] obs_load_cast_cast_fu_1282_p1;
reg   [11:0] obs_load_cast_cast_reg_2999;
reg   [6:0] s_1_reg_3014;
wire   [5:0] trunc_ln13_fu_1307_p1;
reg   [5:0] trunc_ln13_reg_3028;
reg   [5:0] trunc_ln13_reg_3028_pp0_iter1_reg;
wire   [3:0] tmp_47_cast_fu_1311_p4;
reg   [3:0] tmp_47_cast_reg_3037;
wire   [63:0] bitcast_ln14_fu_1434_p1;
wire   [63:0] bitcast_ln14_1_fu_1439_p1;
wire   [63:0] bitcast_ln14_2_fu_1444_p1;
wire   [63:0] bitcast_ln14_3_fu_1449_p1;
wire   [2:0] tmp_190_fu_1454_p4;
reg   [2:0] tmp_190_reg_3100;
wire   [0:0] tmp_17_fu_1490_p3;
reg   [0:0] tmp_17_reg_3118;
wire   [63:0] bitcast_ln14_4_fu_1536_p1;
wire   [63:0] bitcast_ln14_5_fu_1541_p1;
wire   [63:0] bitcast_ln14_6_fu_1546_p1;
wire   [63:0] bitcast_ln14_7_fu_1551_p1;
wire   [63:0] bitcast_ln14_8_fu_1614_p1;
wire   [63:0] bitcast_ln14_9_fu_1619_p1;
wire   [63:0] bitcast_ln14_10_fu_1624_p1;
wire   [63:0] bitcast_ln14_11_fu_1629_p1;
wire   [1:0] tmp_191_fu_1634_p4;
reg   [1:0] tmp_191_reg_3194;
wire   [0:0] tmp_18_fu_1656_p3;
reg   [0:0] tmp_18_reg_3215;
wire   [63:0] bitcast_ln14_12_fu_1737_p1;
wire   [63:0] bitcast_ln14_13_fu_1742_p1;
wire   [63:0] bitcast_ln14_14_fu_1747_p1;
wire   [63:0] bitcast_ln14_15_fu_1752_p1;
wire   [63:0] bitcast_ln14_16_fu_1827_p1;
wire   [63:0] bitcast_ln14_17_fu_1832_p1;
wire   [63:0] bitcast_ln14_18_fu_1837_p1;
wire   [63:0] bitcast_ln14_19_fu_1842_p1;
wire   [63:0] bitcast_ln14_20_fu_1907_p1;
wire   [63:0] bitcast_ln14_21_fu_1912_p1;
wire   [63:0] bitcast_ln14_22_fu_1917_p1;
wire   [63:0] bitcast_ln14_23_fu_1922_p1;
wire   [63:0] bitcast_ln14_24_fu_1985_p1;
wire   [63:0] bitcast_ln14_25_fu_1990_p1;
wire   [63:0] bitcast_ln14_26_fu_1995_p1;
wire   [63:0] bitcast_ln14_27_fu_2000_p1;
wire   [63:0] bitcast_ln14_28_fu_2005_p1;
wire   [63:0] bitcast_ln14_29_fu_2010_p1;
wire   [63:0] bitcast_ln14_30_fu_2015_p1;
wire   [63:0] bitcast_ln14_31_fu_2020_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln13_fu_1302_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1329_p1;
wire   [63:0] zext_ln14_1_fu_1352_p1;
wire   [63:0] zext_ln14_2_fu_1371_p1;
wire   [63:0] zext_ln14_3_fu_1383_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_1400_p1;
wire   [63:0] zext_ln14_5_fu_1412_p1;
wire   [63:0] zext_ln14_6_fu_1429_p1;
wire   [63:0] zext_ln14_8_fu_1471_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_1485_p1;
wire   [63:0] zext_ln14_10_fu_1509_p1;
wire   [63:0] zext_ln14_9_fu_1531_p1;
wire   [63:0] zext_ln14_12_fu_1563_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_1580_p1;
wire   [63:0] zext_ln14_15_fu_1592_p1;
wire   [63:0] zext_ln14_13_fu_1609_p1;
wire   [63:0] zext_ln14_17_fu_1651_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_14_fu_1674_p1;
wire   [63:0] zext_ln14_19_fu_1700_p1;
wire   [63:0] zext_ln14_16_fu_1722_p1;
wire   [63:0] zext_ln14_22_fu_1767_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_18_fu_1787_p1;
wire   [63:0] zext_ln14_24_fu_1802_p1;
wire   [63:0] zext_ln14_20_fu_1822_p1;
wire   [63:0] zext_ln14_26_fu_1854_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_21_fu_1867_p1;
wire   [63:0] zext_ln14_28_fu_1882_p1;
wire   [63:0] zext_ln14_23_fu_1902_p1;
wire   [63:0] zext_ln14_29_fu_1934_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_25_fu_1951_p1;
wire   [63:0] zext_ln14_30_fu_1963_p1;
wire   [63:0] zext_ln14_27_fu_1980_p1;
reg   [6:0] s_fu_264;
wire   [6:0] add_ln13_fu_1727_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_268;
reg    ap_predicate_pred742_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [63:0] add6_16_fu_272;
reg   [63:0] add6_28_fu_276;
reg    ap_predicate_pred766_state11;
reg   [63:0] add6_310_fu_280;
reg   [63:0] add6_412_fu_284;
reg    ap_predicate_pred766_state12;
reg   [63:0] add6_514_fu_288;
reg   [63:0] add6_616_fu_292;
reg    ap_predicate_pred766_state13;
reg   [63:0] add6_718_fu_296;
reg   [63:0] add6_820_fu_300;
reg    ap_predicate_pred766_state14;
reg   [63:0] add6_922_fu_304;
reg   [63:0] add6_1024_fu_308;
reg    ap_predicate_pred766_state15;
reg   [63:0] add6_1126_fu_312;
reg   [63:0] add6_1228_fu_316;
reg    ap_predicate_pred766_state16;
reg   [63:0] add6_1330_fu_320;
reg   [63:0] add6_1432_fu_324;
reg    ap_predicate_pred766_state17;
reg   [63:0] add6_1534_fu_328;
reg   [63:0] add636_fu_332;
reg    ap_predicate_pred845_state10;
reg   [63:0] add6_138_fu_336;
reg   [63:0] add6_240_fu_340;
reg    ap_predicate_pred855_state11;
reg   [63:0] add6_342_fu_344;
reg   [63:0] add6_444_fu_348;
reg    ap_predicate_pred855_state12;
reg   [63:0] add6_546_fu_352;
reg   [63:0] add6_648_fu_356;
reg    ap_predicate_pred855_state13;
reg   [63:0] add6_750_fu_360;
reg   [63:0] add6_852_fu_364;
reg    ap_predicate_pred855_state14;
reg   [63:0] add6_954_fu_368;
reg   [63:0] add6_1056_fu_372;
reg    ap_predicate_pred855_state15;
reg   [63:0] add6_1158_fu_376;
reg   [63:0] add6_1260_fu_380;
reg    ap_predicate_pred855_state16;
reg   [63:0] add6_1362_fu_384;
reg   [63:0] add6_1464_fu_388;
reg    ap_predicate_pred855_state17;
reg   [63:0] add6_1566_fu_392;
reg   [63:0] add668_fu_396;
reg    ap_predicate_pred921_state10;
reg   [63:0] add6_170_fu_400;
reg   [63:0] add6_272_fu_404;
reg    ap_predicate_pred931_state11;
reg   [63:0] add6_374_fu_408;
reg   [63:0] add6_476_fu_412;
reg    ap_predicate_pred931_state12;
reg   [63:0] add6_578_fu_416;
reg   [63:0] add6_680_fu_420;
reg    ap_predicate_pred931_state13;
reg   [63:0] add6_782_fu_424;
reg   [63:0] add6_884_fu_428;
reg    ap_predicate_pred931_state14;
reg   [63:0] add6_986_fu_432;
reg   [63:0] add6_1088_fu_436;
reg    ap_predicate_pred931_state15;
reg   [63:0] add6_1190_fu_440;
reg   [63:0] add6_1292_fu_444;
reg    ap_predicate_pred931_state16;
reg   [63:0] add6_1394_fu_448;
reg   [63:0] add6_1496_fu_452;
reg    ap_predicate_pred931_state17;
reg   [63:0] add6_1598_fu_456;
reg   [63:0] add6100_fu_460;
reg    ap_predicate_pred1000_state10;
reg   [63:0] add6_1102_fu_464;
reg   [63:0] add6_2104_fu_468;
reg    ap_predicate_pred1014_state11;
reg   [63:0] add6_3106_fu_472;
reg   [63:0] add6_4108_fu_476;
reg    ap_predicate_pred1014_state12;
reg   [63:0] add6_5110_fu_480;
reg   [63:0] add6_6112_fu_484;
reg    ap_predicate_pred1014_state13;
reg   [63:0] add6_7114_fu_488;
reg   [63:0] add6_8116_fu_492;
reg    ap_predicate_pred1014_state14;
reg   [63:0] add6_9118_fu_496;
reg   [63:0] add6_10120_fu_500;
reg    ap_predicate_pred1014_state15;
reg   [63:0] add6_11122_fu_504;
reg   [63:0] add6_12124_fu_508;
reg    ap_predicate_pred1014_state16;
reg   [63:0] add6_13126_fu_512;
reg   [63:0] add6_14128_fu_516;
reg    ap_predicate_pred1014_state17;
reg   [63:0] add6_15130_fu_520;
wire    ap_block_pp0_stage0_01001;
reg    init_ce1_local;
reg   [5:0] init_address1_local;
reg    init_ce0_local;
reg   [5:0] init_address0_local;
reg    emission_ce1_local;
reg   [11:0] emission_address1_local;
reg    emission_ce0_local;
reg   [11:0] emission_address0_local;
reg   [63:0] grp_fu_1258_p0;
reg   [63:0] grp_fu_1258_p1;
reg   [63:0] grp_fu_1262_p0;
reg   [63:0] grp_fu_1262_p1;
wire   [11:0] or_ln_fu_1321_p3;
wire   [4:0] tmp_s_fu_1334_p4;
wire   [5:0] or_ln1_fu_1344_p3;
wire   [11:0] shl_ln_fu_1357_p3;
wire   [11:0] add_ln14_fu_1365_p2;
wire   [5:0] or_ln13_1_fu_1376_p3;
wire   [11:0] shl_ln14_1_fu_1388_p3;
wire   [11:0] add_ln14_1_fu_1395_p2;
wire   [5:0] or_ln13_2_fu_1405_p3;
wire   [11:0] shl_ln14_2_fu_1417_p3;
wire   [11:0] add_ln14_2_fu_1424_p2;
wire   [5:0] or_ln13_3_fu_1463_p3;
wire   [11:0] or_ln14_1_fu_1476_p4;
wire   [5:0] or_ln13_4_fu_1497_p5;
wire   [11:0] shl_ln14_3_fu_1514_p5;
wire   [11:0] add_ln14_3_fu_1526_p2;
wire   [5:0] or_ln13_5_fu_1556_p3;
wire   [11:0] shl_ln14_4_fu_1568_p3;
wire   [11:0] add_ln14_4_fu_1575_p2;
wire   [5:0] or_ln13_6_fu_1585_p3;
wire   [11:0] shl_ln14_5_fu_1597_p3;
wire   [11:0] add_ln14_5_fu_1604_p2;
wire   [5:0] or_ln13_7_fu_1643_p3;
wire   [11:0] or_ln14_2_fu_1663_p5;
wire   [1:0] tmp_192_fu_1679_p4;
wire   [5:0] or_ln13_8_fu_1688_p5;
wire   [11:0] shl_ln14_6_fu_1705_p5;
wire   [11:0] add_ln14_6_fu_1717_p2;
wire   [5:0] or_ln13_9_fu_1757_p5;
wire   [11:0] shl_ln14_7_fu_1772_p5;
wire   [11:0] add_ln14_7_fu_1782_p2;
wire   [5:0] or_ln13_s_fu_1792_p5;
wire   [11:0] shl_ln14_8_fu_1807_p5;
wire   [11:0] add_ln14_8_fu_1817_p2;
wire   [5:0] or_ln13_10_fu_1847_p3;
wire   [11:0] or_ln14_3_fu_1859_p4;
wire   [5:0] or_ln13_11_fu_1872_p5;
wire   [11:0] shl_ln14_9_fu_1887_p5;
wire   [11:0] add_ln14_9_fu_1897_p2;
wire   [5:0] or_ln13_12_fu_1927_p3;
wire   [11:0] shl_ln14_s_fu_1939_p3;
wire   [11:0] add_ln14_10_fu_1946_p2;
wire   [5:0] or_ln13_13_fu_1956_p3;
wire   [11:0] shl_ln14_10_fu_1968_p3;
wire   [11:0] add_ln14_11_fu_1975_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_264 = 7'd0;
#0 add61_fu_268 = 64'd0;
#0 add6_16_fu_272 = 64'd0;
#0 add6_28_fu_276 = 64'd0;
#0 add6_310_fu_280 = 64'd0;
#0 add6_412_fu_284 = 64'd0;
#0 add6_514_fu_288 = 64'd0;
#0 add6_616_fu_292 = 64'd0;
#0 add6_718_fu_296 = 64'd0;
#0 add6_820_fu_300 = 64'd0;
#0 add6_922_fu_304 = 64'd0;
#0 add6_1024_fu_308 = 64'd0;
#0 add6_1126_fu_312 = 64'd0;
#0 add6_1228_fu_316 = 64'd0;
#0 add6_1330_fu_320 = 64'd0;
#0 add6_1432_fu_324 = 64'd0;
#0 add6_1534_fu_328 = 64'd0;
#0 add636_fu_332 = 64'd0;
#0 add6_138_fu_336 = 64'd0;
#0 add6_240_fu_340 = 64'd0;
#0 add6_342_fu_344 = 64'd0;
#0 add6_444_fu_348 = 64'd0;
#0 add6_546_fu_352 = 64'd0;
#0 add6_648_fu_356 = 64'd0;
#0 add6_750_fu_360 = 64'd0;
#0 add6_852_fu_364 = 64'd0;
#0 add6_954_fu_368 = 64'd0;
#0 add6_1056_fu_372 = 64'd0;
#0 add6_1158_fu_376 = 64'd0;
#0 add6_1260_fu_380 = 64'd0;
#0 add6_1362_fu_384 = 64'd0;
#0 add6_1464_fu_388 = 64'd0;
#0 add6_1566_fu_392 = 64'd0;
#0 add668_fu_396 = 64'd0;
#0 add6_170_fu_400 = 64'd0;
#0 add6_272_fu_404 = 64'd0;
#0 add6_374_fu_408 = 64'd0;
#0 add6_476_fu_412 = 64'd0;
#0 add6_578_fu_416 = 64'd0;
#0 add6_680_fu_420 = 64'd0;
#0 add6_782_fu_424 = 64'd0;
#0 add6_884_fu_428 = 64'd0;
#0 add6_986_fu_432 = 64'd0;
#0 add6_1088_fu_436 = 64'd0;
#0 add6_1190_fu_440 = 64'd0;
#0 add6_1292_fu_444 = 64'd0;
#0 add6_1394_fu_448 = 64'd0;
#0 add6_1496_fu_452 = 64'd0;
#0 add6_1598_fu_456 = 64'd0;
#0 add6100_fu_460 = 64'd0;
#0 add6_1102_fu_464 = 64'd0;
#0 add6_2104_fu_468 = 64'd0;
#0 add6_3106_fu_472 = 64'd0;
#0 add6_4108_fu_476 = 64'd0;
#0 add6_5110_fu_480 = 64'd0;
#0 add6_6112_fu_484 = 64'd0;
#0 add6_7114_fu_488 = 64'd0;
#0 add6_8116_fu_492 = 64'd0;
#0 add6_9118_fu_496 = 64'd0;
#0 add6_10120_fu_500 = 64'd0;
#0 add6_11122_fu_504 = 64'd0;
#0 add6_12124_fu_508 = 64'd0;
#0 add6_13126_fu_512 = 64'd0;
#0 add6_14128_fu_516 = 64'd0;
#0 add6_15130_fu_520 = 64'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_264 <= 7'd0;
    end else if (((tmp_reg_3024 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        s_fu_264 <= add_ln13_fu_1727_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1000_state10 == 1'b1))) begin
        add6100_fu_460 <= grp_fu_3803_p_dout0;
        add6_1102_fu_464 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred742_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add61_fu_268 <= grp_fu_3803_p_dout0;
        add6_16_fu_272 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred845_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add636_fu_332 <= grp_fu_3803_p_dout0;
        add6_138_fu_336 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred921_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add668_fu_396 <= grp_fu_3803_p_dout0;
        add6_170_fu_400 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_predicate_pred1014_state15 == 1'b1))) begin
        add6_10120_fu_500 <= grp_fu_3803_p_dout0;
        add6_11122_fu_504 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred766_state15 == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add6_1024_fu_308 <= grp_fu_3803_p_dout0;
        add6_1126_fu_312 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred855_state15 == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add6_1056_fu_372 <= grp_fu_3803_p_dout0;
        add6_1158_fu_376 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred931_state15 == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add6_1088_fu_436 <= grp_fu_3803_p_dout0;
        add6_1190_fu_440 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_predicate_pred1014_state16 == 1'b1))) begin
        add6_12124_fu_508 <= grp_fu_3803_p_dout0;
        add6_13126_fu_512 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred766_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add6_1228_fu_316 <= grp_fu_3803_p_dout0;
        add6_1330_fu_320 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred855_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add6_1260_fu_380 <= grp_fu_3803_p_dout0;
        add6_1362_fu_384 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred931_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add6_1292_fu_444 <= grp_fu_3803_p_dout0;
        add6_1394_fu_448 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1014_state17 == 1'b1))) begin
        add6_14128_fu_516 <= grp_fu_3803_p_dout0;
        add6_15130_fu_520 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred766_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1432_fu_324 <= grp_fu_3803_p_dout0;
        add6_1534_fu_328 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred855_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1464_fu_388 <= grp_fu_3803_p_dout0;
        add6_1566_fu_392 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred931_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1496_fu_452 <= grp_fu_3803_p_dout0;
        add6_1598_fu_456 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1014_state11 == 1'b1))) begin
        add6_2104_fu_468 <= grp_fu_3803_p_dout0;
        add6_3106_fu_472 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred855_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_240_fu_340 <= grp_fu_3803_p_dout0;
        add6_342_fu_344 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred931_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_272_fu_404 <= grp_fu_3803_p_dout0;
        add6_374_fu_408 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred766_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_28_fu_276 <= grp_fu_3803_p_dout0;
        add6_310_fu_280 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1014_state12 == 1'b1))) begin
        add6_4108_fu_476 <= grp_fu_3803_p_dout0;
        add6_5110_fu_480 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred766_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_412_fu_284 <= grp_fu_3803_p_dout0;
        add6_514_fu_288 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred855_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_444_fu_348 <= grp_fu_3803_p_dout0;
        add6_546_fu_352 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred931_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_476_fu_412 <= grp_fu_3803_p_dout0;
        add6_578_fu_416 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1014_state13 == 1'b1))) begin
        add6_6112_fu_484 <= grp_fu_3803_p_dout0;
        add6_7114_fu_488 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred766_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add6_616_fu_292 <= grp_fu_3803_p_dout0;
        add6_718_fu_296 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred855_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add6_648_fu_356 <= grp_fu_3803_p_dout0;
        add6_750_fu_360 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred931_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add6_680_fu_420 <= grp_fu_3803_p_dout0;
        add6_782_fu_424 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_predicate_pred1014_state14 == 1'b1))) begin
        add6_8116_fu_492 <= grp_fu_3803_p_dout0;
        add6_9118_fu_496 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred766_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add6_820_fu_300 <= grp_fu_3803_p_dout0;
        add6_922_fu_304 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred855_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add6_852_fu_364 <= grp_fu_3803_p_dout0;
        add6_954_fu_368 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred931_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add6_884_fu_428 <= grp_fu_3803_p_dout0;
        add6_986_fu_432 <= grp_fu_6727_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred1000_state10 <= (~(trunc_ln13_reg_3028 == 6'd0) & ~(trunc_ln13_reg_3028 == 6'd16) & ~(trunc_ln13_reg_3028 == 6'd32));
        ap_predicate_pred742_state10 <= (trunc_ln13_reg_3028 == 6'd32);
        ap_predicate_pred845_state10 <= (trunc_ln13_reg_3028 == 6'd16);
        ap_predicate_pred921_state10 <= (trunc_ln13_reg_3028 == 6'd0);
        obs_load_cast_cast_reg_2999[7 : 0] <= obs_load_cast_cast_fu_1282_p1[7 : 0];
        s_1_reg_3014 <= ap_sig_allocacmp_s_1;
        tmp_47_cast_reg_3037 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_3024 <= ap_sig_allocacmp_s_1[32'd6];
        trunc_ln13_reg_3028 <= trunc_ln13_fu_1307_p1;
        trunc_ln13_reg_3028_pp0_iter1_reg <= trunc_ln13_reg_3028;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred1014_state11 <= (~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32));
        ap_predicate_pred766_state11 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32);
        ap_predicate_pred855_state11 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16);
        ap_predicate_pred931_state11 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred1014_state12 <= (~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32));
        ap_predicate_pred766_state12 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32);
        ap_predicate_pred855_state12 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16);
        ap_predicate_pred931_state12 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0);
        tmp_17_reg_3118 <= s_1_reg_3014[32'd1];
        tmp_190_reg_3100 <= {{s_1_reg_3014[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred1014_state13 <= (~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32));
        ap_predicate_pred766_state13 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32);
        ap_predicate_pred855_state13 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16);
        ap_predicate_pred931_state13 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_predicate_pred1014_state14 <= (~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32));
        ap_predicate_pred766_state14 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32);
        ap_predicate_pred855_state14 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16);
        ap_predicate_pred931_state14 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0);
        tmp_18_reg_3215 <= s_1_reg_3014[32'd2];
        tmp_191_reg_3194 <= {{s_1_reg_3014[5:4]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_predicate_pred1014_state15 <= (~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32));
        ap_predicate_pred766_state15 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32);
        ap_predicate_pred855_state15 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16);
        ap_predicate_pred931_state15 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_predicate_pred1014_state16 <= (~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32));
        ap_predicate_pred766_state16 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32);
        ap_predicate_pred855_state16 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16);
        ap_predicate_pred931_state16 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_predicate_pred1014_state17 <= (~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32));
        ap_predicate_pred766_state17 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd32);
        ap_predicate_pred855_state17 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd16);
        ap_predicate_pred931_state17 <= (trunc_ln13_reg_3028_pp0_iter1_reg == 6'd0);
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1266 <= init_q1;
        reg_1270 <= emission_q1;
        reg_1274 <= init_q0;
        reg_1278 <= emission_q0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6100_out_ap_vld = 1'b1;
    end else begin
        add6100_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add636_out_ap_vld = 1'b1;
    end else begin
        add636_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add668_out_ap_vld = 1'b1;
    end else begin
        add668_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_10120_out_ap_vld = 1'b1;
    end else begin
        add6_10120_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1024_out_ap_vld = 1'b1;
    end else begin
        add6_1024_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1056_out_ap_vld = 1'b1;
    end else begin
        add6_1056_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1088_out_ap_vld = 1'b1;
    end else begin
        add6_1088_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1102_out_ap_vld = 1'b1;
    end else begin
        add6_1102_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_11122_out_ap_vld = 1'b1;
    end else begin
        add6_11122_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1126_out_ap_vld = 1'b1;
    end else begin
        add6_1126_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1158_out_ap_vld = 1'b1;
    end else begin
        add6_1158_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1190_out_ap_vld = 1'b1;
    end else begin
        add6_1190_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_12124_out_ap_vld = 1'b1;
    end else begin
        add6_12124_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1228_out_ap_vld = 1'b1;
    end else begin
        add6_1228_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1260_out_ap_vld = 1'b1;
    end else begin
        add6_1260_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1292_out_ap_vld = 1'b1;
    end else begin
        add6_1292_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_13126_out_ap_vld = 1'b1;
    end else begin
        add6_13126_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1330_out_ap_vld = 1'b1;
    end else begin
        add6_1330_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1362_out_ap_vld = 1'b1;
    end else begin
        add6_1362_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_138_out_ap_vld = 1'b1;
    end else begin
        add6_138_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1394_out_ap_vld = 1'b1;
    end else begin
        add6_1394_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_14128_out_ap_vld = 1'b1;
    end else begin
        add6_14128_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1432_out_ap_vld = 1'b1;
    end else begin
        add6_1432_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1464_out_ap_vld = 1'b1;
    end else begin
        add6_1464_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1496_out_ap_vld = 1'b1;
    end else begin
        add6_1496_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_15130_out_ap_vld = 1'b1;
    end else begin
        add6_15130_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1534_out_ap_vld = 1'b1;
    end else begin
        add6_1534_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1566_out_ap_vld = 1'b1;
    end else begin
        add6_1566_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1598_out_ap_vld = 1'b1;
    end else begin
        add6_1598_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_16_out_ap_vld = 1'b1;
    end else begin
        add6_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_170_out_ap_vld = 1'b1;
    end else begin
        add6_170_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2104_out_ap_vld = 1'b1;
    end else begin
        add6_2104_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_240_out_ap_vld = 1'b1;
    end else begin
        add6_240_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_272_out_ap_vld = 1'b1;
    end else begin
        add6_272_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_28_out_ap_vld = 1'b1;
    end else begin
        add6_28_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3106_out_ap_vld = 1'b1;
    end else begin
        add6_3106_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_310_out_ap_vld = 1'b1;
    end else begin
        add6_310_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_342_out_ap_vld = 1'b1;
    end else begin
        add6_342_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_374_out_ap_vld = 1'b1;
    end else begin
        add6_374_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_4108_out_ap_vld = 1'b1;
    end else begin
        add6_4108_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_412_out_ap_vld = 1'b1;
    end else begin
        add6_412_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_444_out_ap_vld = 1'b1;
    end else begin
        add6_444_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_476_out_ap_vld = 1'b1;
    end else begin
        add6_476_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_5110_out_ap_vld = 1'b1;
    end else begin
        add6_5110_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_514_out_ap_vld = 1'b1;
    end else begin
        add6_514_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_546_out_ap_vld = 1'b1;
    end else begin
        add6_546_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_578_out_ap_vld = 1'b1;
    end else begin
        add6_578_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_6112_out_ap_vld = 1'b1;
    end else begin
        add6_6112_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_616_out_ap_vld = 1'b1;
    end else begin
        add6_616_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_648_out_ap_vld = 1'b1;
    end else begin
        add6_648_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_680_out_ap_vld = 1'b1;
    end else begin
        add6_680_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_7114_out_ap_vld = 1'b1;
    end else begin
        add6_7114_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_718_out_ap_vld = 1'b1;
    end else begin
        add6_718_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_750_out_ap_vld = 1'b1;
    end else begin
        add6_750_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_782_out_ap_vld = 1'b1;
    end else begin
        add6_782_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_8116_out_ap_vld = 1'b1;
    end else begin
        add6_8116_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_820_out_ap_vld = 1'b1;
    end else begin
        add6_820_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_852_out_ap_vld = 1'b1;
    end else begin
        add6_852_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_884_out_ap_vld = 1'b1;
    end else begin
        add6_884_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_9118_out_ap_vld = 1'b1;
    end else begin
        add6_9118_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_922_out_ap_vld = 1'b1;
    end else begin
        add6_922_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_954_out_ap_vld = 1'b1;
    end else begin
        add6_954_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_986_out_ap_vld = 1'b1;
    end else begin
        add6_986_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_3024 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_264;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address0_local = zext_ln14_27_fu_1980_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address0_local = zext_ln14_23_fu_1902_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address0_local = zext_ln14_20_fu_1822_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address0_local = zext_ln14_16_fu_1722_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_1609_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_1531_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_1429_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_1371_p1;
        end else begin
            emission_address0_local = 'bx;
        end
    end else begin
        emission_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address1_local = zext_ln14_25_fu_1951_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address1_local = zext_ln14_21_fu_1867_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address1_local = zext_ln14_18_fu_1787_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address1_local = zext_ln14_14_fu_1674_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_1580_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_1485_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_1400_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_1329_p1;
        end else begin
            emission_address1_local = 'bx;
        end
    end else begin
        emission_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1258_p0 = bitcast_ln14_28_fu_2005_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1258_p0 = bitcast_ln14_24_fu_1985_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1258_p0 = bitcast_ln14_20_fu_1907_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1258_p0 = bitcast_ln14_16_fu_1827_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1258_p0 = bitcast_ln14_12_fu_1737_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1258_p0 = bitcast_ln14_8_fu_1614_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1258_p0 = bitcast_ln14_4_fu_1536_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1258_p0 = bitcast_ln14_fu_1434_p1;
    end else begin
        grp_fu_1258_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1258_p1 = bitcast_ln14_29_fu_2010_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1258_p1 = bitcast_ln14_25_fu_1990_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1258_p1 = bitcast_ln14_21_fu_1912_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1258_p1 = bitcast_ln14_17_fu_1832_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1258_p1 = bitcast_ln14_13_fu_1742_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1258_p1 = bitcast_ln14_9_fu_1619_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1258_p1 = bitcast_ln14_5_fu_1541_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1258_p1 = bitcast_ln14_1_fu_1439_p1;
    end else begin
        grp_fu_1258_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1262_p0 = bitcast_ln14_30_fu_2015_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1262_p0 = bitcast_ln14_26_fu_1995_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1262_p0 = bitcast_ln14_22_fu_1917_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1262_p0 = bitcast_ln14_18_fu_1837_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1262_p0 = bitcast_ln14_14_fu_1747_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1262_p0 = bitcast_ln14_10_fu_1624_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1262_p0 = bitcast_ln14_6_fu_1546_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1262_p0 = bitcast_ln14_2_fu_1444_p1;
    end else begin
        grp_fu_1262_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1262_p1 = bitcast_ln14_31_fu_2020_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1262_p1 = bitcast_ln14_27_fu_2000_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1262_p1 = bitcast_ln14_23_fu_1922_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1262_p1 = bitcast_ln14_19_fu_1842_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1262_p1 = bitcast_ln14_15_fu_1752_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1262_p1 = bitcast_ln14_11_fu_1629_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1262_p1 = bitcast_ln14_7_fu_1551_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1262_p1 = bitcast_ln14_3_fu_1449_p1;
    end else begin
        grp_fu_1262_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address0_local = zext_ln14_30_fu_1963_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address0_local = zext_ln14_28_fu_1882_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address0_local = zext_ln14_24_fu_1802_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address0_local = zext_ln14_19_fu_1700_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_15_fu_1592_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_10_fu_1509_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_1412_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_1352_p1;
        end else begin
            init_address0_local = 'bx;
        end
    end else begin
        init_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address1_local = zext_ln14_29_fu_1934_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address1_local = zext_ln14_26_fu_1854_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address1_local = zext_ln14_22_fu_1767_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address1_local = zext_ln14_17_fu_1651_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_12_fu_1563_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_8_fu_1471_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_1383_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_fu_1302_p1;
        end else begin
            init_address1_local = 'bx;
        end
    end else begin
        init_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add6100_out = add6100_fu_460;
assign add61_out = add61_fu_268;
assign add636_out = add636_fu_332;
assign add668_out = add668_fu_396;
assign add6_10120_out = add6_10120_fu_500;
assign add6_1024_out = add6_1024_fu_308;
assign add6_1056_out = add6_1056_fu_372;
assign add6_1088_out = add6_1088_fu_436;
assign add6_1102_out = add6_1102_fu_464;
assign add6_11122_out = add6_11122_fu_504;
assign add6_1126_out = add6_1126_fu_312;
assign add6_1158_out = add6_1158_fu_376;
assign add6_1190_out = add6_1190_fu_440;
assign add6_12124_out = add6_12124_fu_508;
assign add6_1228_out = add6_1228_fu_316;
assign add6_1260_out = add6_1260_fu_380;
assign add6_1292_out = add6_1292_fu_444;
assign add6_13126_out = add6_13126_fu_512;
assign add6_1330_out = add6_1330_fu_320;
assign add6_1362_out = add6_1362_fu_384;
assign add6_138_out = add6_138_fu_336;
assign add6_1394_out = add6_1394_fu_448;
assign add6_14128_out = add6_14128_fu_516;
assign add6_1432_out = add6_1432_fu_324;
assign add6_1464_out = add6_1464_fu_388;
assign add6_1496_out = add6_1496_fu_452;
assign add6_15130_out = add6_15130_fu_520;
assign add6_1534_out = add6_1534_fu_328;
assign add6_1566_out = add6_1566_fu_392;
assign add6_1598_out = add6_1598_fu_456;
assign add6_16_out = add6_16_fu_272;
assign add6_170_out = add6_170_fu_400;
assign add6_2104_out = add6_2104_fu_468;
assign add6_240_out = add6_240_fu_340;
assign add6_272_out = add6_272_fu_404;
assign add6_28_out = add6_28_fu_276;
assign add6_3106_out = add6_3106_fu_472;
assign add6_310_out = add6_310_fu_280;
assign add6_342_out = add6_342_fu_344;
assign add6_374_out = add6_374_fu_408;
assign add6_4108_out = add6_4108_fu_476;
assign add6_412_out = add6_412_fu_284;
assign add6_444_out = add6_444_fu_348;
assign add6_476_out = add6_476_fu_412;
assign add6_5110_out = add6_5110_fu_480;
assign add6_514_out = add6_514_fu_288;
assign add6_546_out = add6_546_fu_352;
assign add6_578_out = add6_578_fu_416;
assign add6_6112_out = add6_6112_fu_484;
assign add6_616_out = add6_616_fu_292;
assign add6_648_out = add6_648_fu_356;
assign add6_680_out = add6_680_fu_420;
assign add6_7114_out = add6_7114_fu_488;
assign add6_718_out = add6_718_fu_296;
assign add6_750_out = add6_750_fu_360;
assign add6_782_out = add6_782_fu_424;
assign add6_8116_out = add6_8116_fu_492;
assign add6_820_out = add6_820_fu_300;
assign add6_852_out = add6_852_fu_364;
assign add6_884_out = add6_884_fu_428;
assign add6_9118_out = add6_9118_fu_496;
assign add6_922_out = add6_922_fu_304;
assign add6_954_out = add6_954_fu_368;
assign add6_986_out = add6_986_fu_432;
assign add_ln13_fu_1727_p2 = (s_1_reg_3014 + 7'd16);
assign add_ln14_10_fu_1946_p2 = (shl_ln14_s_fu_1939_p3 + obs_load_cast_cast_reg_2999);
assign add_ln14_11_fu_1975_p2 = (shl_ln14_10_fu_1968_p3 + obs_load_cast_cast_reg_2999);
assign add_ln14_1_fu_1395_p2 = (shl_ln14_1_fu_1388_p3 + obs_load_cast_cast_reg_2999);
assign add_ln14_2_fu_1424_p2 = (shl_ln14_2_fu_1417_p3 + obs_load_cast_cast_reg_2999);
assign add_ln14_3_fu_1526_p2 = (shl_ln14_3_fu_1514_p5 + obs_load_cast_cast_reg_2999);
assign add_ln14_4_fu_1575_p2 = (shl_ln14_4_fu_1568_p3 + obs_load_cast_cast_reg_2999);
assign add_ln14_5_fu_1604_p2 = (shl_ln14_5_fu_1597_p3 + obs_load_cast_cast_reg_2999);
assign add_ln14_6_fu_1717_p2 = (shl_ln14_6_fu_1705_p5 + obs_load_cast_cast_reg_2999);
assign add_ln14_7_fu_1782_p2 = (shl_ln14_7_fu_1772_p5 + obs_load_cast_cast_reg_2999);
assign add_ln14_8_fu_1817_p2 = (shl_ln14_8_fu_1807_p5 + obs_load_cast_cast_reg_2999);
assign add_ln14_9_fu_1897_p2 = (shl_ln14_9_fu_1887_p5 + obs_load_cast_cast_reg_2999);
assign add_ln14_fu_1365_p2 = (shl_ln_fu_1357_p3 + obs_load_cast_cast_fu_1282_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_10_fu_1624_p1 = reg_1274;
assign bitcast_ln14_11_fu_1629_p1 = reg_1278;
assign bitcast_ln14_12_fu_1737_p1 = reg_1266;
assign bitcast_ln14_13_fu_1742_p1 = reg_1270;
assign bitcast_ln14_14_fu_1747_p1 = reg_1274;
assign bitcast_ln14_15_fu_1752_p1 = reg_1278;
assign bitcast_ln14_16_fu_1827_p1 = reg_1266;
assign bitcast_ln14_17_fu_1832_p1 = reg_1270;
assign bitcast_ln14_18_fu_1837_p1 = reg_1274;
assign bitcast_ln14_19_fu_1842_p1 = reg_1278;
assign bitcast_ln14_1_fu_1439_p1 = reg_1270;
assign bitcast_ln14_20_fu_1907_p1 = reg_1266;
assign bitcast_ln14_21_fu_1912_p1 = reg_1270;
assign bitcast_ln14_22_fu_1917_p1 = reg_1274;
assign bitcast_ln14_23_fu_1922_p1 = reg_1278;
assign bitcast_ln14_24_fu_1985_p1 = reg_1266;
assign bitcast_ln14_25_fu_1990_p1 = reg_1270;
assign bitcast_ln14_26_fu_1995_p1 = reg_1274;
assign bitcast_ln14_27_fu_2000_p1 = reg_1278;
assign bitcast_ln14_28_fu_2005_p1 = reg_1266;
assign bitcast_ln14_29_fu_2010_p1 = reg_1270;
assign bitcast_ln14_2_fu_1444_p1 = reg_1274;
assign bitcast_ln14_30_fu_2015_p1 = reg_1274;
assign bitcast_ln14_31_fu_2020_p1 = reg_1278;
assign bitcast_ln14_3_fu_1449_p1 = reg_1278;
assign bitcast_ln14_4_fu_1536_p1 = reg_1266;
assign bitcast_ln14_5_fu_1541_p1 = reg_1270;
assign bitcast_ln14_6_fu_1546_p1 = reg_1274;
assign bitcast_ln14_7_fu_1551_p1 = reg_1278;
assign bitcast_ln14_8_fu_1614_p1 = reg_1266;
assign bitcast_ln14_9_fu_1619_p1 = reg_1270;
assign bitcast_ln14_fu_1434_p1 = reg_1266;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_3803_p_ce = 1'b1;
assign grp_fu_3803_p_din0 = grp_fu_1258_p0;
assign grp_fu_3803_p_din1 = grp_fu_1258_p1;
assign grp_fu_3803_p_opcode = 2'd0;
assign grp_fu_6727_p_ce = 1'b1;
assign grp_fu_6727_p_din0 = grp_fu_1262_p0;
assign grp_fu_6727_p_din1 = grp_fu_1262_p1;
assign grp_fu_6727_p_opcode = 2'd0;
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign obs_load_cast_cast_fu_1282_p1 = obs_load_cast;
assign or_ln13_10_fu_1847_p3 = {{tmp_191_reg_3194}, {4'd12}};
assign or_ln13_11_fu_1872_p5 = {{{{tmp_191_reg_3194}, {2'd3}}, {tmp_17_reg_3118}}, {1'd1}};
assign or_ln13_12_fu_1927_p3 = {{tmp_191_reg_3194}, {4'd14}};
assign or_ln13_13_fu_1956_p3 = {{tmp_191_reg_3194}, {4'd15}};
assign or_ln13_1_fu_1376_p3 = {{tmp_47_cast_reg_3037}, {2'd2}};
assign or_ln13_2_fu_1405_p3 = {{tmp_47_cast_reg_3037}, {2'd3}};
assign or_ln13_3_fu_1463_p3 = {{tmp_190_fu_1454_p4}, {3'd4}};
assign or_ln13_4_fu_1497_p5 = {{{{tmp_190_fu_1454_p4}, {1'd1}}, {tmp_17_fu_1490_p3}}, {1'd1}};
assign or_ln13_5_fu_1556_p3 = {{tmp_190_reg_3100}, {3'd6}};
assign or_ln13_6_fu_1585_p3 = {{tmp_190_reg_3100}, {3'd7}};
assign or_ln13_7_fu_1643_p3 = {{tmp_191_fu_1634_p4}, {4'd8}};
assign or_ln13_8_fu_1688_p5 = {{{{tmp_191_fu_1634_p4}, {1'd1}}, {tmp_192_fu_1679_p4}}, {1'd1}};
assign or_ln13_9_fu_1757_p5 = {{{{tmp_191_reg_3194}, {1'd1}}, {tmp_18_reg_3215}}, {2'd2}};
assign or_ln13_s_fu_1792_p5 = {{{{tmp_191_reg_3194}, {1'd1}}, {tmp_18_reg_3215}}, {2'd3}};
assign or_ln14_1_fu_1476_p4 = {{{tmp_190_fu_1454_p4}, {1'd1}}, {obs_load}};
assign or_ln14_2_fu_1663_p5 = {{{{tmp_191_fu_1634_p4}, {1'd1}}, {tmp_18_fu_1656_p3}}, {obs_load}};
assign or_ln14_3_fu_1859_p4 = {{{tmp_191_reg_3194}, {2'd3}}, {obs_load}};
assign or_ln1_fu_1344_p3 = {{tmp_s_fu_1334_p4}, {1'd1}};
assign or_ln_fu_1321_p3 = {{tmp_47_cast_fu_1311_p4}, {obs_load}};
assign shl_ln14_10_fu_1968_p3 = {{tmp_191_reg_3194}, {10'd960}};
assign shl_ln14_1_fu_1388_p3 = {{tmp_47_cast_reg_3037}, {8'd128}};
assign shl_ln14_2_fu_1417_p3 = {{tmp_47_cast_reg_3037}, {8'd192}};
assign shl_ln14_3_fu_1514_p5 = {{{{tmp_190_fu_1454_p4}, {1'd1}}, {tmp_17_fu_1490_p3}}, {7'd64}};
assign shl_ln14_4_fu_1568_p3 = {{tmp_190_reg_3100}, {9'd384}};
assign shl_ln14_5_fu_1597_p3 = {{tmp_190_reg_3100}, {9'd448}};
assign shl_ln14_6_fu_1705_p5 = {{{{tmp_191_fu_1634_p4}, {1'd1}}, {tmp_192_fu_1679_p4}}, {7'd64}};
assign shl_ln14_7_fu_1772_p5 = {{{{tmp_191_reg_3194}, {1'd1}}, {tmp_18_reg_3215}}, {8'd128}};
assign shl_ln14_8_fu_1807_p5 = {{{{tmp_191_reg_3194}, {1'd1}}, {tmp_18_reg_3215}}, {8'd192}};
assign shl_ln14_9_fu_1887_p5 = {{{{tmp_191_reg_3194}, {2'd3}}, {tmp_17_reg_3118}}, {7'd64}};
assign shl_ln14_s_fu_1939_p3 = {{tmp_191_reg_3194}, {10'd896}};
assign shl_ln_fu_1357_p3 = {{tmp_s_fu_1334_p4}, {7'd64}};
assign tmp_17_fu_1490_p3 = s_1_reg_3014[32'd1];
assign tmp_18_fu_1656_p3 = s_1_reg_3014[32'd2];
assign tmp_190_fu_1454_p4 = {{s_1_reg_3014[5:3]}};
assign tmp_191_fu_1634_p4 = {{s_1_reg_3014[5:4]}};
assign tmp_192_fu_1679_p4 = {{s_1_reg_3014[2:1]}};
assign tmp_47_cast_fu_1311_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_s_fu_1334_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign trunc_ln13_fu_1307_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln13_fu_1302_p1 = ap_sig_allocacmp_s_1;
assign zext_ln14_10_fu_1509_p1 = or_ln13_4_fu_1497_p5;
assign zext_ln14_11_fu_1580_p1 = add_ln14_4_fu_1575_p2;
assign zext_ln14_12_fu_1563_p1 = or_ln13_5_fu_1556_p3;
assign zext_ln14_13_fu_1609_p1 = add_ln14_5_fu_1604_p2;
assign zext_ln14_14_fu_1674_p1 = or_ln14_2_fu_1663_p5;
assign zext_ln14_15_fu_1592_p1 = or_ln13_6_fu_1585_p3;
assign zext_ln14_16_fu_1722_p1 = add_ln14_6_fu_1717_p2;
assign zext_ln14_17_fu_1651_p1 = or_ln13_7_fu_1643_p3;
assign zext_ln14_18_fu_1787_p1 = add_ln14_7_fu_1782_p2;
assign zext_ln14_19_fu_1700_p1 = or_ln13_8_fu_1688_p5;
assign zext_ln14_1_fu_1352_p1 = or_ln1_fu_1344_p3;
assign zext_ln14_20_fu_1822_p1 = add_ln14_8_fu_1817_p2;
assign zext_ln14_21_fu_1867_p1 = or_ln14_3_fu_1859_p4;
assign zext_ln14_22_fu_1767_p1 = or_ln13_9_fu_1757_p5;
assign zext_ln14_23_fu_1902_p1 = add_ln14_9_fu_1897_p2;
assign zext_ln14_24_fu_1802_p1 = or_ln13_s_fu_1792_p5;
assign zext_ln14_25_fu_1951_p1 = add_ln14_10_fu_1946_p2;
assign zext_ln14_26_fu_1854_p1 = or_ln13_10_fu_1847_p3;
assign zext_ln14_27_fu_1980_p1 = add_ln14_11_fu_1975_p2;
assign zext_ln14_28_fu_1882_p1 = or_ln13_11_fu_1872_p5;
assign zext_ln14_29_fu_1934_p1 = or_ln13_12_fu_1927_p3;
assign zext_ln14_2_fu_1371_p1 = add_ln14_fu_1365_p2;
assign zext_ln14_30_fu_1963_p1 = or_ln13_13_fu_1956_p3;
assign zext_ln14_3_fu_1383_p1 = or_ln13_1_fu_1376_p3;
assign zext_ln14_4_fu_1400_p1 = add_ln14_1_fu_1395_p2;
assign zext_ln14_5_fu_1412_p1 = or_ln13_2_fu_1405_p3;
assign zext_ln14_6_fu_1429_p1 = add_ln14_2_fu_1424_p2;
assign zext_ln14_7_fu_1485_p1 = or_ln14_1_fu_1476_p4;
assign zext_ln14_8_fu_1471_p1 = or_ln13_3_fu_1463_p3;
assign zext_ln14_9_fu_1531_p1 = add_ln14_3_fu_1526_p2;
assign zext_ln14_fu_1329_p1 = or_ln_fu_1321_p3;
always @ (posedge ap_clk) begin
    obs_load_cast_cast_reg_2999[11:8] <= 4'b0000;
end
endmodule 