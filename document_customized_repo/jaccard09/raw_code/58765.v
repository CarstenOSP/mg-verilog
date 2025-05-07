module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_9,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,conv3_udiv_cast,conv3_udiv,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,add6_15130_out,add6_15130_out_ap_vld,add6_14128_out,add6_14128_out_ap_vld,add6_13126_out,add6_13126_out_ap_vld,add6_12124_out,add6_12124_out_ap_vld,add6_11122_out,add6_11122_out_ap_vld,add6_10120_out,add6_10120_out_ap_vld,add6_9118_out,add6_9118_out_ap_vld,add6_8116_out,add6_8116_out_ap_vld,add6_7114_out,add6_7114_out_ap_vld,add6_6112_out,add6_6112_out_ap_vld,add6_5110_out,add6_5110_out_ap_vld,add6_4108_out,add6_4108_out_ap_vld,add6_3106_out,add6_3106_out_ap_vld,add6_2104_out,add6_2104_out_ap_vld,add6_1102_out,add6_1102_out_ap_vld,add6100_out,add6100_out_ap_vld,add6_1598_out,add6_1598_out_ap_vld,add6_1496_out,add6_1496_out_ap_vld,add6_1394_out,add6_1394_out_ap_vld,add6_1292_out,add6_1292_out_ap_vld,add6_1190_out,add6_1190_out_ap_vld,add6_1088_out,add6_1088_out_ap_vld,add6_986_out,add6_986_out_ap_vld,add6_884_out,add6_884_out_ap_vld,add6_782_out,add6_782_out_ap_vld,add6_680_out,add6_680_out_ap_vld,add6_578_out,add6_578_out_ap_vld,add6_476_out,add6_476_out_ap_vld,add6_374_out,add6_374_out_ap_vld,add6_272_out,add6_272_out_ap_vld,add6_170_out,add6_170_out_ap_vld,add668_out,add668_out_ap_vld,add6_1566_out,add6_1566_out_ap_vld,add6_1464_out,add6_1464_out_ap_vld,add6_1362_out,add6_1362_out_ap_vld,add6_1260_out,add6_1260_out_ap_vld,add6_1158_out,add6_1158_out_ap_vld,add6_1056_out,add6_1056_out_ap_vld,add6_954_out,add6_954_out_ap_vld,add6_852_out,add6_852_out_ap_vld,add6_750_out,add6_750_out_ap_vld,add6_648_out,add6_648_out_ap_vld,add6_546_out,add6_546_out_ap_vld,add6_444_out,add6_444_out_ap_vld,add6_342_out,add6_342_out_ap_vld,add6_240_out,add6_240_out_ap_vld,add6_138_out,add6_138_out_ap_vld,add636_out,add636_out_ap_vld,add6_1534_out,add6_1534_out_ap_vld,add6_1432_out,add6_1432_out_ap_vld,add6_1330_out,add6_1330_out_ap_vld,add6_1228_out,add6_1228_out_ap_vld,add6_1126_out,add6_1126_out_ap_vld,add6_1024_out,add6_1024_out_ap_vld,add6_922_out,add6_922_out_ap_vld,add6_820_out,add6_820_out_ap_vld,add6_718_out,add6_718_out_ap_vld,add6_616_out,add6_616_out_ap_vld,add6_514_out,add6_514_out_ap_vld,add6_412_out,add6_412_out_ap_vld,add6_310_out,add6_310_out_ap_vld,add6_28_out,add6_28_out_ap_vld,add6_16_out,add6_16_out_ap_vld,add61_out,add61_out_ap_vld,grp_fu_3912_p_din0,grp_fu_3912_p_din1,grp_fu_3912_p_opcode,grp_fu_3912_p_dout0,grp_fu_3912_p_ce,grp_fu_7037_p_din0,grp_fu_7037_p_din1,grp_fu_7037_p_opcode,grp_fu_7037_p_dout0,grp_fu_7037_p_ce); 
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
output  [63:0] grp_fu_3912_p_din0;
output  [63:0] grp_fu_3912_p_din1;
output  [1:0] grp_fu_3912_p_opcode;
input  [63:0] grp_fu_3912_p_dout0;
output   grp_fu_3912_p_ce;
output  [63:0] grp_fu_7037_p_din0;
output  [63:0] grp_fu_7037_p_din1;
output  [1:0] grp_fu_7037_p_opcode;
input  [63:0] grp_fu_7037_p_dout0;
output   grp_fu_7037_p_ce;
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
reg   [0:0] tmp_128_reg_3132;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1432;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_1418_p3;
reg   [63:0] reg_1436;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] grp_fu_1425_p3;
reg   [63:0] reg_1440;
reg   [63:0] reg_1444;
reg   [63:0] reg_1449;
reg   [63:0] reg_1453;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] conv3_udiv_cast_cast_fu_1458_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_3103;
wire   [7:0] p_cast_fu_1462_p1;
reg   [7:0] p_cast_reg_3118;
reg   [6:0] s_1_reg_3123;
wire   [5:0] trunc_ln13_fu_1482_p1;
reg   [5:0] trunc_ln13_reg_3136;
reg   [5:0] trunc_ln13_reg_3136_pp0_iter1_reg;
wire   [2:0] tmp_49_fu_1502_p4;
reg   [2:0] tmp_49_reg_3145;
wire   [3:0] tmp_146_fu_1546_p4;
reg   [3:0] tmp_146_reg_3175;
wire   [0:0] tmp_129_fu_1606_p3;
reg   [0:0] tmp_129_reg_3216;
wire   [63:0] bitcast_ln14_fu_1641_p1;
wire   [63:0] bitcast_ln14_1_fu_1646_p1;
wire   [63:0] bitcast_ln14_2_fu_1651_p1;
wire   [1:0] tmp_s_fu_1691_p4;
reg   [1:0] tmp_s_reg_3278;
wire   [1:0] tmp_191_fu_1700_p4;
reg   [1:0] tmp_191_reg_3292;
wire   [0:0] tmp_130_fu_1725_p3;
reg   [0:0] tmp_130_reg_3297;
reg   [63:0] init_0_load_3_reg_3303;
wire   [63:0] bitcast_ln14_23_fu_1750_p1;
reg   [63:0] init_1_load_3_reg_3323;
wire   [63:0] bitcast_ln14_3_fu_1765_p1;
wire   [63:0] bitcast_ln14_4_fu_1770_p1;
wire   [63:0] bitcast_ln14_15_fu_1838_p1;
reg   [63:0] init_0_load_5_reg_3373;
wire   [63:0] bitcast_ln14_24_fu_1843_p1;
reg   [63:0] init_1_load_5_reg_3393;
wire   [63:0] bitcast_ln14_5_fu_1848_p1;
wire   [63:0] bitcast_ln14_6_fu_1853_p1;
wire   [63:0] bitcast_ln14_16_fu_1893_p1;
reg   [63:0] init_0_load_7_reg_3443;
wire   [63:0] bitcast_ln14_25_fu_1898_p1;
reg   [63:0] init_1_load_7_reg_3453;
wire   [63:0] bitcast_ln14_7_fu_1903_p1;
wire   [63:0] bitcast_ln14_8_fu_1908_p1;
wire   [63:0] bitcast_ln14_17_fu_1955_p1;
wire   [63:0] bitcast_ln14_26_fu_1959_p1;
wire   [63:0] bitcast_ln14_9_fu_1963_p1;
wire   [63:0] bitcast_ln14_10_fu_1968_p1;
wire   [63:0] bitcast_ln14_18_fu_2008_p1;
wire   [63:0] bitcast_ln14_27_fu_2013_p1;
wire   [63:0] bitcast_ln14_11_fu_2018_p1;
wire   [63:0] bitcast_ln14_12_fu_2023_p1;
wire   [63:0] bitcast_ln14_19_fu_2028_p1;
wire   [63:0] bitcast_ln14_28_fu_2050_p1;
wire   [63:0] bitcast_ln14_13_fu_2072_p1;
wire   [63:0] bitcast_ln14_14_fu_2077_p1;
wire   [63:0] bitcast_ln14_20_fu_2082_p1;
wire   [63:0] select_ln14_14_fu_2087_p3;
reg   [63:0] select_ln14_14_reg_3593;
wire   [63:0] bitcast_ln14_29_fu_2094_p1;
wire   [63:0] select_ln14_15_fu_2099_p3;
reg   [63:0] select_ln14_15_reg_3603;
wire   [63:0] bitcast_ln14_21_fu_2106_p1;
wire   [63:0] bitcast_ln14_22_fu_2110_p1;
wire   [63:0] bitcast_ln14_30_fu_2114_p1;
wire   [63:0] bitcast_ln14_31_fu_2118_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln9_fu_1496_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_1520_p1;
wire   [63:0] zext_ln14_1_fu_1540_p1;
wire   [63:0] zext_ln14_16_fu_1564_p1;
wire   [63:0] zext_ln14_2_fu_1582_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_1600_p1;
wire   [63:0] zext_ln14_17_fu_1622_p1;
wire   [63:0] zext_ln14_18_fu_1635_p1;
wire   [63:0] zext_ln14_4_fu_1664_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1685_p1;
wire   [63:0] zext_ln14_19_fu_1719_p1;
wire   [63:0] zext_ln14_20_fu_1744_p1;
wire   [63:0] zext_ln14_6_fu_1787_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1805_p1;
wire   [63:0] zext_ln14_21_fu_1819_p1;
wire   [63:0] zext_ln14_22_fu_1832_p1;
wire   [63:0] zext_ln14_8_fu_1866_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_1887_p1;
wire   [63:0] zext_ln14_10_fu_1928_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_1949_p1;
wire   [63:0] zext_ln14_12_fu_1981_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_2002_p1;
wire   [63:0] zext_ln14_14_fu_2044_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_2066_p1;
reg   [6:0] s_fu_258;
wire   [6:0] add_ln13_fu_1755_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg   [63:0] add61_fu_262;
reg    ap_predicate_pred824_state10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [63:0] add6_16_fu_266;
reg   [63:0] add6_28_fu_270;
reg    ap_predicate_pred848_state11;
reg   [63:0] add6_310_fu_274;
reg   [63:0] add6_412_fu_278;
reg    ap_predicate_pred848_state12;
reg   [63:0] add6_514_fu_282;
reg   [63:0] add6_616_fu_286;
reg    ap_predicate_pred848_state13;
reg   [63:0] add6_718_fu_290;
reg   [63:0] add6_820_fu_294;
reg    ap_predicate_pred848_state14;
reg   [63:0] add6_922_fu_298;
reg   [63:0] add6_1024_fu_302;
reg    ap_predicate_pred848_state15;
reg   [63:0] add6_1126_fu_306;
reg   [63:0] add6_1228_fu_310;
reg    ap_predicate_pred848_state16;
reg   [63:0] add6_1330_fu_314;
reg   [63:0] add6_1432_fu_318;
reg    ap_predicate_pred848_state17;
reg   [63:0] add6_1534_fu_322;
reg   [63:0] add636_fu_326;
reg    ap_predicate_pred927_state10;
reg   [63:0] add6_138_fu_330;
reg   [63:0] add6_240_fu_334;
reg    ap_predicate_pred937_state11;
reg   [63:0] add6_342_fu_338;
reg   [63:0] add6_444_fu_342;
reg    ap_predicate_pred937_state12;
reg   [63:0] add6_546_fu_346;
reg   [63:0] add6_648_fu_350;
reg    ap_predicate_pred937_state13;
reg   [63:0] add6_750_fu_354;
reg   [63:0] add6_852_fu_358;
reg    ap_predicate_pred937_state14;
reg   [63:0] add6_954_fu_362;
reg   [63:0] add6_1056_fu_366;
reg    ap_predicate_pred937_state15;
reg   [63:0] add6_1158_fu_370;
reg   [63:0] add6_1260_fu_374;
reg    ap_predicate_pred937_state16;
reg   [63:0] add6_1362_fu_378;
reg   [63:0] add6_1464_fu_382;
reg    ap_predicate_pred937_state17;
reg   [63:0] add6_1566_fu_386;
reg   [63:0] add668_fu_390;
reg    ap_predicate_pred1003_state10;
reg   [63:0] add6_170_fu_394;
reg   [63:0] add6_272_fu_398;
reg    ap_predicate_pred1013_state11;
reg   [63:0] add6_374_fu_402;
reg   [63:0] add6_476_fu_406;
reg    ap_predicate_pred1013_state12;
reg   [63:0] add6_578_fu_410;
reg   [63:0] add6_680_fu_414;
reg    ap_predicate_pred1013_state13;
reg   [63:0] add6_782_fu_418;
reg   [63:0] add6_884_fu_422;
reg    ap_predicate_pred1013_state14;
reg   [63:0] add6_986_fu_426;
reg   [63:0] add6_1088_fu_430;
reg    ap_predicate_pred1013_state15;
reg   [63:0] add6_1190_fu_434;
reg   [63:0] add6_1292_fu_438;
reg    ap_predicate_pred1013_state16;
reg   [63:0] add6_1394_fu_442;
reg   [63:0] add6_1496_fu_446;
reg    ap_predicate_pred1013_state17;
reg   [63:0] add6_1598_fu_450;
reg   [63:0] add6100_fu_454;
reg    ap_predicate_pred1082_state10;
reg   [63:0] add6_1102_fu_458;
reg   [63:0] add6_2104_fu_462;
reg    ap_predicate_pred1096_state11;
reg   [63:0] add6_3106_fu_466;
reg   [63:0] add6_4108_fu_470;
reg    ap_predicate_pred1096_state12;
reg   [63:0] add6_5110_fu_474;
reg   [63:0] add6_6112_fu_478;
reg    ap_predicate_pred1096_state13;
reg   [63:0] add6_7114_fu_482;
reg   [63:0] add6_8116_fu_486;
reg    ap_predicate_pred1096_state14;
reg   [63:0] add6_9118_fu_490;
reg   [63:0] add6_10120_fu_494;
reg    ap_predicate_pred1096_state15;
reg   [63:0] add6_11122_fu_498;
reg   [63:0] add6_12124_fu_502;
reg    ap_predicate_pred1096_state16;
reg   [63:0] add6_13126_fu_506;
reg   [63:0] add6_14128_fu_510;
reg    ap_predicate_pred1096_state17;
reg   [63:0] add6_15130_fu_514;
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
reg   [63:0] grp_fu_1410_p0;
reg   [63:0] grp_fu_1410_p1;
reg   [63:0] grp_fu_1414_p0;
reg   [63:0] grp_fu_1414_p1;
wire   [4:0] lshr_ln9_fu_1486_p4;
wire   [10:0] or_ln_fu_1512_p3;
wire   [10:0] or_ln1_fu_1526_p3;
wire   [10:0] add_ln14_fu_1534_p2;
wire   [4:0] or_ln14_1_fu_1556_p3;
wire   [10:0] or_ln14_2_fu_1570_p3;
wire   [10:0] add_ln14_1_fu_1577_p2;
wire   [10:0] or_ln14_3_fu_1588_p3;
wire   [10:0] add_ln14_2_fu_1595_p2;
wire   [4:0] or_ln14_4_fu_1613_p4;
wire   [4:0] or_ln14_7_fu_1628_p3;
wire   [10:0] or_ln14_5_fu_1656_p4;
wire   [10:0] or_ln14_6_fu_1670_p5;
wire   [10:0] add_ln14_3_fu_1680_p2;
wire   [4:0] or_ln14_s_fu_1709_p4;
wire   [4:0] or_ln14_12_fu_1732_p5;
wire   [10:0] or_ln14_8_fu_1775_p3;
wire   [10:0] add_ln14_4_fu_1782_p2;
wire   [10:0] or_ln14_9_fu_1793_p3;
wire   [10:0] add_ln14_5_fu_1800_p2;
wire   [4:0] or_ln14_15_fu_1811_p4;
wire   [4:0] or_ln14_18_fu_1825_p3;
wire   [10:0] or_ln14_10_fu_1858_p4;
wire   [10:0] or_ln14_11_fu_1872_p5;
wire   [10:0] add_ln14_6_fu_1882_p2;
wire   [10:0] or_ln14_13_fu_1913_p5;
wire   [10:0] add_ln14_7_fu_1923_p2;
wire   [10:0] or_ln14_14_fu_1934_p5;
wire   [10:0] add_ln14_8_fu_1944_p2;
wire   [10:0] or_ln14_16_fu_1973_p4;
wire   [10:0] or_ln14_17_fu_1987_p5;
wire   [10:0] add_ln14_9_fu_1997_p2;
wire   [10:0] or_ln14_19_fu_2032_p3;
wire   [10:0] add_ln14_10_fu_2039_p2;
wire   [10:0] or_ln14_20_fu_2054_p3;
wire   [10:0] add_ln14_11_fu_2061_p2;
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
#0 s_fu_258 = 7'd0;
#0 add61_fu_262 = 64'd0;
#0 add6_16_fu_266 = 64'd0;
#0 add6_28_fu_270 = 64'd0;
#0 add6_310_fu_274 = 64'd0;
#0 add6_412_fu_278 = 64'd0;
#0 add6_514_fu_282 = 64'd0;
#0 add6_616_fu_286 = 64'd0;
#0 add6_718_fu_290 = 64'd0;
#0 add6_820_fu_294 = 64'd0;
#0 add6_922_fu_298 = 64'd0;
#0 add6_1024_fu_302 = 64'd0;
#0 add6_1126_fu_306 = 64'd0;
#0 add6_1228_fu_310 = 64'd0;
#0 add6_1330_fu_314 = 64'd0;
#0 add6_1432_fu_318 = 64'd0;
#0 add6_1534_fu_322 = 64'd0;
#0 add636_fu_326 = 64'd0;
#0 add6_138_fu_330 = 64'd0;
#0 add6_240_fu_334 = 64'd0;
#0 add6_342_fu_338 = 64'd0;
#0 add6_444_fu_342 = 64'd0;
#0 add6_546_fu_346 = 64'd0;
#0 add6_648_fu_350 = 64'd0;
#0 add6_750_fu_354 = 64'd0;
#0 add6_852_fu_358 = 64'd0;
#0 add6_954_fu_362 = 64'd0;
#0 add6_1056_fu_366 = 64'd0;
#0 add6_1158_fu_370 = 64'd0;
#0 add6_1260_fu_374 = 64'd0;
#0 add6_1362_fu_378 = 64'd0;
#0 add6_1464_fu_382 = 64'd0;
#0 add6_1566_fu_386 = 64'd0;
#0 add668_fu_390 = 64'd0;
#0 add6_170_fu_394 = 64'd0;
#0 add6_272_fu_398 = 64'd0;
#0 add6_374_fu_402 = 64'd0;
#0 add6_476_fu_406 = 64'd0;
#0 add6_578_fu_410 = 64'd0;
#0 add6_680_fu_414 = 64'd0;
#0 add6_782_fu_418 = 64'd0;
#0 add6_884_fu_422 = 64'd0;
#0 add6_986_fu_426 = 64'd0;
#0 add6_1088_fu_430 = 64'd0;
#0 add6_1190_fu_434 = 64'd0;
#0 add6_1292_fu_438 = 64'd0;
#0 add6_1394_fu_442 = 64'd0;
#0 add6_1496_fu_446 = 64'd0;
#0 add6_1598_fu_450 = 64'd0;
#0 add6100_fu_454 = 64'd0;
#0 add6_1102_fu_458 = 64'd0;
#0 add6_2104_fu_462 = 64'd0;
#0 add6_3106_fu_466 = 64'd0;
#0 add6_4108_fu_470 = 64'd0;
#0 add6_5110_fu_474 = 64'd0;
#0 add6_6112_fu_478 = 64'd0;
#0 add6_7114_fu_482 = 64'd0;
#0 add6_8116_fu_486 = 64'd0;
#0 add6_9118_fu_490 = 64'd0;
#0 add6_10120_fu_494 = 64'd0;
#0 add6_11122_fu_498 = 64'd0;
#0 add6_12124_fu_502 = 64'd0;
#0 add6_13126_fu_506 = 64'd0;
#0 add6_14128_fu_510 = 64'd0;
#0 add6_15130_fu_514 = 64'd0;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1444 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1444 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_1453 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_1453 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_258 <= 7'd0;
    end else if (((tmp_128_reg_3132 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        s_fu_258 <= add_ln13_fu_1755_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1082_state10 == 1'b1))) begin
        add6100_fu_454 <= grp_fu_3912_p_dout0;
        add6_1102_fu_458 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred824_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add61_fu_262 <= grp_fu_3912_p_dout0;
        add6_16_fu_266 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred927_state10 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add636_fu_326 <= grp_fu_3912_p_dout0;
        add6_138_fu_330 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_pred1003_state10 == 1'b1))) begin
        add668_fu_390 <= grp_fu_3912_p_dout0;
        add6_170_fu_394 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_predicate_pred1096_state15 == 1'b1))) begin
        add6_10120_fu_494 <= grp_fu_3912_p_dout0;
        add6_11122_fu_498 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred848_state15 == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add6_1024_fu_302 <= grp_fu_3912_p_dout0;
        add6_1126_fu_306 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred937_state15 == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add6_1056_fu_366 <= grp_fu_3912_p_dout0;
        add6_1158_fu_370 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_predicate_pred1013_state15 == 1'b1))) begin
        add6_1088_fu_430 <= grp_fu_3912_p_dout0;
        add6_1190_fu_434 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_predicate_pred1096_state16 == 1'b1))) begin
        add6_12124_fu_502 <= grp_fu_3912_p_dout0;
        add6_13126_fu_506 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred848_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add6_1228_fu_310 <= grp_fu_3912_p_dout0;
        add6_1330_fu_314 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred937_state16 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add6_1260_fu_374 <= grp_fu_3912_p_dout0;
        add6_1362_fu_378 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_predicate_pred1013_state16 == 1'b1))) begin
        add6_1292_fu_438 <= grp_fu_3912_p_dout0;
        add6_1394_fu_442 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1096_state17 == 1'b1))) begin
        add6_14128_fu_510 <= grp_fu_3912_p_dout0;
        add6_15130_fu_514 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred848_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1432_fu_318 <= grp_fu_3912_p_dout0;
        add6_1534_fu_322 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred937_state17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1464_fu_382 <= grp_fu_3912_p_dout0;
        add6_1566_fu_386 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_pred1013_state17 == 1'b1))) begin
        add6_1496_fu_446 <= grp_fu_3912_p_dout0;
        add6_1598_fu_450 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1096_state11 == 1'b1))) begin
        add6_2104_fu_462 <= grp_fu_3912_p_dout0;
        add6_3106_fu_466 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred937_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_240_fu_334 <= grp_fu_3912_p_dout0;
        add6_342_fu_338 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_predicate_pred1013_state11 == 1'b1))) begin
        add6_272_fu_398 <= grp_fu_3912_p_dout0;
        add6_374_fu_402 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred848_state11 == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add6_28_fu_270 <= grp_fu_3912_p_dout0;
        add6_310_fu_274 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1096_state12 == 1'b1))) begin
        add6_4108_fu_470 <= grp_fu_3912_p_dout0;
        add6_5110_fu_474 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred848_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_412_fu_278 <= grp_fu_3912_p_dout0;
        add6_514_fu_282 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred937_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add6_444_fu_342 <= grp_fu_3912_p_dout0;
        add6_546_fu_346 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1013_state12 == 1'b1))) begin
        add6_476_fu_406 <= grp_fu_3912_p_dout0;
        add6_578_fu_410 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1096_state13 == 1'b1))) begin
        add6_6112_fu_478 <= grp_fu_3912_p_dout0;
        add6_7114_fu_482 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred848_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add6_616_fu_286 <= grp_fu_3912_p_dout0;
        add6_718_fu_290 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred937_state13 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add6_648_fu_350 <= grp_fu_3912_p_dout0;
        add6_750_fu_354 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (ap_predicate_pred1013_state13 == 1'b1))) begin
        add6_680_fu_414 <= grp_fu_3912_p_dout0;
        add6_782_fu_418 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_predicate_pred1096_state14 == 1'b1))) begin
        add6_8116_fu_486 <= grp_fu_3912_p_dout0;
        add6_9118_fu_490 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred848_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add6_820_fu_294 <= grp_fu_3912_p_dout0;
        add6_922_fu_298 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_predicate_pred937_state14 == 1'b1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add6_852_fu_358 <= grp_fu_3912_p_dout0;
        add6_954_fu_362 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_predicate_pred1013_state14 == 1'b1))) begin
        add6_884_fu_422 <= grp_fu_3912_p_dout0;
        add6_986_fu_426 <= grp_fu_7037_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_predicate_pred1003_state10 <= (trunc_ln13_reg_3136 == 6'd0);
        ap_predicate_pred1082_state10 <= (~(trunc_ln13_reg_3136 == 6'd16) & ~(trunc_ln13_reg_3136 == 6'd32) & ~(trunc_ln13_reg_3136 == 6'd0));
        ap_predicate_pred824_state10 <= (trunc_ln13_reg_3136 == 6'd32);
        ap_predicate_pred927_state10 <= (trunc_ln13_reg_3136 == 6'd16);
        conv3_udiv_cast_cast_reg_3103[6 : 0] <= conv3_udiv_cast_cast_fu_1458_p1[6 : 0];
        p_cast_reg_3118[6 : 0] <= p_cast_fu_1462_p1[6 : 0];
        s_1_reg_3123 <= ap_sig_allocacmp_s_1;
        select_ln14_14_reg_3593 <= select_ln14_14_fu_2087_p3;
        select_ln14_15_reg_3603 <= select_ln14_15_fu_2099_p3;
        tmp_128_reg_3132 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_146_reg_3175 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_49_reg_3145 <= {{ap_sig_allocacmp_s_1[5:3]}};
        trunc_ln13_reg_3136 <= trunc_ln13_fu_1482_p1;
        trunc_ln13_reg_3136_pp0_iter1_reg <= trunc_ln13_reg_3136;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_predicate_pred1013_state11 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1096_state11 <= (~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0));
        ap_predicate_pred848_state11 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32);
        ap_predicate_pred937_state11 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16);
        tmp_129_reg_3216 <= s_1_reg_3123[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred1013_state12 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1096_state12 <= (~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0));
        ap_predicate_pred848_state12 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32);
        ap_predicate_pred937_state12 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16);
        tmp_130_reg_3297 <= s_1_reg_3123[32'd2];
        tmp_191_reg_3292 <= {{s_1_reg_3123[2:1]}};
        tmp_s_reg_3278 <= {{s_1_reg_3123[5:4]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred1013_state13 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1096_state13 <= (~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0));
        ap_predicate_pred848_state13 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32);
        ap_predicate_pred937_state13 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_predicate_pred1013_state14 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1096_state14 <= (~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0));
        ap_predicate_pred848_state14 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32);
        ap_predicate_pred937_state14 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_predicate_pred1013_state15 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1096_state15 <= (~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0));
        ap_predicate_pred848_state15 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32);
        ap_predicate_pred937_state15 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_predicate_pred1013_state16 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1096_state16 <= (~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0));
        ap_predicate_pred848_state16 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32);
        ap_predicate_pred937_state16 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_predicate_pred1013_state17 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0);
        ap_predicate_pred1096_state17 <= (~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32) & ~(trunc_ln13_reg_3136_pp0_iter1_reg == 6'd0));
        ap_predicate_pred848_state17 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd32);
        ap_predicate_pred937_state17 <= (trunc_ln13_reg_3136_pp0_iter1_reg == 6'd16);
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        init_0_load_3_reg_3303 <= init_0_q0;
        init_1_load_3_reg_3323 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        init_0_load_5_reg_3373 <= init_0_q0;
        init_1_load_5_reg_3393 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        init_0_load_7_reg_3443 <= init_0_q0;
        init_1_load_7_reg_3453 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1432 <= init_0_q1;
        reg_1449 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1436 <= grp_fu_1418_p3;
        reg_1440 <= grp_fu_1425_p3;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6100_out_ap_vld = 1'b1;
    end else begin
        add6100_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add61_out_ap_vld = 1'b1;
    end else begin
        add61_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add636_out_ap_vld = 1'b1;
    end else begin
        add636_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add668_out_ap_vld = 1'b1;
    end else begin
        add668_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_10120_out_ap_vld = 1'b1;
    end else begin
        add6_10120_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1024_out_ap_vld = 1'b1;
    end else begin
        add6_1024_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1056_out_ap_vld = 1'b1;
    end else begin
        add6_1056_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1088_out_ap_vld = 1'b1;
    end else begin
        add6_1088_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1102_out_ap_vld = 1'b1;
    end else begin
        add6_1102_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_11122_out_ap_vld = 1'b1;
    end else begin
        add6_11122_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1126_out_ap_vld = 1'b1;
    end else begin
        add6_1126_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1158_out_ap_vld = 1'b1;
    end else begin
        add6_1158_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1190_out_ap_vld = 1'b1;
    end else begin
        add6_1190_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_12124_out_ap_vld = 1'b1;
    end else begin
        add6_12124_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1228_out_ap_vld = 1'b1;
    end else begin
        add6_1228_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1260_out_ap_vld = 1'b1;
    end else begin
        add6_1260_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1292_out_ap_vld = 1'b1;
    end else begin
        add6_1292_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_13126_out_ap_vld = 1'b1;
    end else begin
        add6_13126_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1330_out_ap_vld = 1'b1;
    end else begin
        add6_1330_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1362_out_ap_vld = 1'b1;
    end else begin
        add6_1362_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_138_out_ap_vld = 1'b1;
    end else begin
        add6_138_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1394_out_ap_vld = 1'b1;
    end else begin
        add6_1394_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_14128_out_ap_vld = 1'b1;
    end else begin
        add6_14128_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1432_out_ap_vld = 1'b1;
    end else begin
        add6_1432_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1464_out_ap_vld = 1'b1;
    end else begin
        add6_1464_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1496_out_ap_vld = 1'b1;
    end else begin
        add6_1496_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_15130_out_ap_vld = 1'b1;
    end else begin
        add6_15130_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1534_out_ap_vld = 1'b1;
    end else begin
        add6_1534_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1566_out_ap_vld = 1'b1;
    end else begin
        add6_1566_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_1598_out_ap_vld = 1'b1;
    end else begin
        add6_1598_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_16_out_ap_vld = 1'b1;
    end else begin
        add6_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_170_out_ap_vld = 1'b1;
    end else begin
        add6_170_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_2104_out_ap_vld = 1'b1;
    end else begin
        add6_2104_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_240_out_ap_vld = 1'b1;
    end else begin
        add6_240_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_272_out_ap_vld = 1'b1;
    end else begin
        add6_272_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_28_out_ap_vld = 1'b1;
    end else begin
        add6_28_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_3106_out_ap_vld = 1'b1;
    end else begin
        add6_3106_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_310_out_ap_vld = 1'b1;
    end else begin
        add6_310_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_342_out_ap_vld = 1'b1;
    end else begin
        add6_342_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_374_out_ap_vld = 1'b1;
    end else begin
        add6_374_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_4108_out_ap_vld = 1'b1;
    end else begin
        add6_4108_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_412_out_ap_vld = 1'b1;
    end else begin
        add6_412_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_444_out_ap_vld = 1'b1;
    end else begin
        add6_444_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_476_out_ap_vld = 1'b1;
    end else begin
        add6_476_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_5110_out_ap_vld = 1'b1;
    end else begin
        add6_5110_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_514_out_ap_vld = 1'b1;
    end else begin
        add6_514_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_546_out_ap_vld = 1'b1;
    end else begin
        add6_546_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_578_out_ap_vld = 1'b1;
    end else begin
        add6_578_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_6112_out_ap_vld = 1'b1;
    end else begin
        add6_6112_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_616_out_ap_vld = 1'b1;
    end else begin
        add6_616_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_648_out_ap_vld = 1'b1;
    end else begin
        add6_648_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_680_out_ap_vld = 1'b1;
    end else begin
        add6_680_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_7114_out_ap_vld = 1'b1;
    end else begin
        add6_7114_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_718_out_ap_vld = 1'b1;
    end else begin
        add6_718_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_750_out_ap_vld = 1'b1;
    end else begin
        add6_750_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_782_out_ap_vld = 1'b1;
    end else begin
        add6_782_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_8116_out_ap_vld = 1'b1;
    end else begin
        add6_8116_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_820_out_ap_vld = 1'b1;
    end else begin
        add6_820_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_852_out_ap_vld = 1'b1;
    end else begin
        add6_852_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_884_out_ap_vld = 1'b1;
    end else begin
        add6_884_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_9118_out_ap_vld = 1'b1;
    end else begin
        add6_9118_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_922_out_ap_vld = 1'b1;
    end else begin
        add6_922_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_954_out_ap_vld = 1'b1;
    end else begin
        add6_954_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add6_986_out_ap_vld = 1'b1;
    end else begin
        add6_986_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_128_reg_3132 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_258;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_2066_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_2002_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_1949_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_1887_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1805_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1685_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_1600_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_1540_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address1_local = zext_ln14_14_fu_2044_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_1981_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_1928_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_1866_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1787_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1664_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_1582_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_1520_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address0_local = zext_ln14_15_fu_2066_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_2002_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_1949_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_1887_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1805_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1685_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_1600_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_1540_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address1_local = zext_ln14_14_fu_2044_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_1981_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_1928_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_1866_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1787_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1664_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_1582_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_1520_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1410_p0 = bitcast_ln14_21_fu_2106_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1410_p0 = bitcast_ln14_20_fu_2082_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1410_p0 = bitcast_ln14_19_fu_2028_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1410_p0 = bitcast_ln14_18_fu_2008_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1410_p0 = bitcast_ln14_17_fu_1955_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1410_p0 = bitcast_ln14_16_fu_1893_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1410_p0 = bitcast_ln14_15_fu_1838_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1410_p0 = bitcast_ln14_fu_1641_p1;
    end else begin
        grp_fu_1410_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1410_p1 = bitcast_ln14_22_fu_2110_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1410_p1 = bitcast_ln14_13_fu_2072_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1410_p1 = bitcast_ln14_11_fu_2018_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1410_p1 = bitcast_ln14_9_fu_1963_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1410_p1 = bitcast_ln14_7_fu_1903_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1410_p1 = bitcast_ln14_5_fu_1848_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1410_p1 = bitcast_ln14_3_fu_1765_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1410_p1 = bitcast_ln14_1_fu_1646_p1;
    end else begin
        grp_fu_1410_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1414_p0 = bitcast_ln14_30_fu_2114_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1414_p0 = bitcast_ln14_29_fu_2094_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1414_p0 = bitcast_ln14_28_fu_2050_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1414_p0 = bitcast_ln14_27_fu_2013_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1414_p0 = bitcast_ln14_26_fu_1959_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1414_p0 = bitcast_ln14_25_fu_1898_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1414_p0 = bitcast_ln14_24_fu_1843_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1414_p0 = bitcast_ln14_23_fu_1750_p1;
    end else begin
        grp_fu_1414_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1414_p1 = bitcast_ln14_31_fu_2118_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1414_p1 = bitcast_ln14_14_fu_2077_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1414_p1 = bitcast_ln14_12_fu_2023_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1414_p1 = bitcast_ln14_10_fu_1968_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1414_p1 = bitcast_ln14_8_fu_1908_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1414_p1 = bitcast_ln14_6_fu_1853_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1414_p1 = bitcast_ln14_4_fu_1770_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1414_p1 = bitcast_ln14_2_fu_1651_p1;
    end else begin
        grp_fu_1414_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address0_local = zext_ln14_22_fu_1832_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address0_local = zext_ln14_20_fu_1744_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_18_fu_1635_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_16_fu_1564_p1;
        end else begin
            init_0_address0_local = 'bx;
        end
    end else begin
        init_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address1_local = zext_ln14_21_fu_1819_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address1_local = zext_ln14_19_fu_1719_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_17_fu_1622_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_fu_1496_p1;
        end else begin
            init_0_address1_local = 'bx;
        end
    end else begin
        init_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address0_local = zext_ln14_22_fu_1832_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address0_local = zext_ln14_20_fu_1744_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_18_fu_1635_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_16_fu_1564_p1;
        end else begin
            init_1_address0_local = 'bx;
        end
    end else begin
        init_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address1_local = zext_ln14_21_fu_1819_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address1_local = zext_ln14_19_fu_1719_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_17_fu_1622_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_fu_1496_p1;
        end else begin
            init_1_address1_local = 'bx;
        end
    end else begin
        init_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
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
assign add6100_out = add6100_fu_454;
assign add61_out = add61_fu_262;
assign add636_out = add636_fu_326;
assign add668_out = add668_fu_390;
assign add6_10120_out = add6_10120_fu_494;
assign add6_1024_out = add6_1024_fu_302;
assign add6_1056_out = add6_1056_fu_366;
assign add6_1088_out = add6_1088_fu_430;
assign add6_1102_out = add6_1102_fu_458;
assign add6_11122_out = add6_11122_fu_498;
assign add6_1126_out = add6_1126_fu_306;
assign add6_1158_out = add6_1158_fu_370;
assign add6_1190_out = add6_1190_fu_434;
assign add6_12124_out = add6_12124_fu_502;
assign add6_1228_out = add6_1228_fu_310;
assign add6_1260_out = add6_1260_fu_374;
assign add6_1292_out = add6_1292_fu_438;
assign add6_13126_out = add6_13126_fu_506;
assign add6_1330_out = add6_1330_fu_314;
assign add6_1362_out = add6_1362_fu_378;
assign add6_138_out = add6_138_fu_330;
assign add6_1394_out = add6_1394_fu_442;
assign add6_14128_out = add6_14128_fu_510;
assign add6_1432_out = add6_1432_fu_318;
assign add6_1464_out = add6_1464_fu_382;
assign add6_1496_out = add6_1496_fu_446;
assign add6_15130_out = add6_15130_fu_514;
assign add6_1534_out = add6_1534_fu_322;
assign add6_1566_out = add6_1566_fu_386;
assign add6_1598_out = add6_1598_fu_450;
assign add6_16_out = add6_16_fu_266;
assign add6_170_out = add6_170_fu_394;
assign add6_2104_out = add6_2104_fu_462;
assign add6_240_out = add6_240_fu_334;
assign add6_272_out = add6_272_fu_398;
assign add6_28_out = add6_28_fu_270;
assign add6_3106_out = add6_3106_fu_466;
assign add6_310_out = add6_310_fu_274;
assign add6_342_out = add6_342_fu_338;
assign add6_374_out = add6_374_fu_402;
assign add6_4108_out = add6_4108_fu_470;
assign add6_412_out = add6_412_fu_278;
assign add6_444_out = add6_444_fu_342;
assign add6_476_out = add6_476_fu_406;
assign add6_5110_out = add6_5110_fu_474;
assign add6_514_out = add6_514_fu_282;
assign add6_546_out = add6_546_fu_346;
assign add6_578_out = add6_578_fu_410;
assign add6_6112_out = add6_6112_fu_478;
assign add6_616_out = add6_616_fu_286;
assign add6_648_out = add6_648_fu_350;
assign add6_680_out = add6_680_fu_414;
assign add6_7114_out = add6_7114_fu_482;
assign add6_718_out = add6_718_fu_290;
assign add6_750_out = add6_750_fu_354;
assign add6_782_out = add6_782_fu_418;
assign add6_8116_out = add6_8116_fu_486;
assign add6_820_out = add6_820_fu_294;
assign add6_852_out = add6_852_fu_358;
assign add6_884_out = add6_884_fu_422;
assign add6_9118_out = add6_9118_fu_490;
assign add6_922_out = add6_922_fu_298;
assign add6_954_out = add6_954_fu_362;
assign add6_986_out = add6_986_fu_426;
assign add_ln13_fu_1755_p2 = (s_1_reg_3123 + 7'd16);
assign add_ln14_10_fu_2039_p2 = (or_ln14_19_fu_2032_p3 + conv3_udiv_cast_cast_reg_3103);
assign add_ln14_11_fu_2061_p2 = (or_ln14_20_fu_2054_p3 + conv3_udiv_cast_cast_reg_3103);
assign add_ln14_1_fu_1577_p2 = (or_ln14_2_fu_1570_p3 + conv3_udiv_cast_cast_reg_3103);
assign add_ln14_2_fu_1595_p2 = (or_ln14_3_fu_1588_p3 + conv3_udiv_cast_cast_reg_3103);
assign add_ln14_3_fu_1680_p2 = (or_ln14_6_fu_1670_p5 + conv3_udiv_cast_cast_reg_3103);
assign add_ln14_4_fu_1782_p2 = (or_ln14_8_fu_1775_p3 + conv3_udiv_cast_cast_reg_3103);
assign add_ln14_5_fu_1800_p2 = (or_ln14_9_fu_1793_p3 + conv3_udiv_cast_cast_reg_3103);
assign add_ln14_6_fu_1882_p2 = (or_ln14_11_fu_1872_p5 + conv3_udiv_cast_cast_reg_3103);
assign add_ln14_7_fu_1923_p2 = (or_ln14_13_fu_1913_p5 + conv3_udiv_cast_cast_reg_3103);
assign add_ln14_8_fu_1944_p2 = (or_ln14_14_fu_1934_p5 + conv3_udiv_cast_cast_reg_3103);
assign add_ln14_9_fu_1997_p2 = (or_ln14_17_fu_1987_p5 + conv3_udiv_cast_cast_reg_3103);
assign add_ln14_fu_1534_p2 = (or_ln1_fu_1526_p3 + conv3_udiv_cast_cast_fu_1458_p1);
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
assign bitcast_ln14_10_fu_1968_p1 = reg_1440;
assign bitcast_ln14_11_fu_2018_p1 = reg_1436;
assign bitcast_ln14_12_fu_2023_p1 = reg_1440;
assign bitcast_ln14_13_fu_2072_p1 = reg_1436;
assign bitcast_ln14_14_fu_2077_p1 = reg_1440;
assign bitcast_ln14_15_fu_1838_p1 = reg_1444;
assign bitcast_ln14_16_fu_1893_p1 = reg_1432;
assign bitcast_ln14_17_fu_1955_p1 = init_0_load_3_reg_3303;
assign bitcast_ln14_18_fu_2008_p1 = reg_1444;
assign bitcast_ln14_19_fu_2028_p1 = init_0_load_5_reg_3373;
assign bitcast_ln14_1_fu_1646_p1 = reg_1436;
assign bitcast_ln14_20_fu_2082_p1 = reg_1432;
assign bitcast_ln14_21_fu_2106_p1 = init_0_load_7_reg_3443;
assign bitcast_ln14_22_fu_2110_p1 = select_ln14_14_reg_3593;
assign bitcast_ln14_23_fu_1750_p1 = reg_1449;
assign bitcast_ln14_24_fu_1843_p1 = reg_1453;
assign bitcast_ln14_25_fu_1898_p1 = reg_1449;
assign bitcast_ln14_26_fu_1959_p1 = init_1_load_3_reg_3323;
assign bitcast_ln14_27_fu_2013_p1 = reg_1453;
assign bitcast_ln14_28_fu_2050_p1 = init_1_load_5_reg_3393;
assign bitcast_ln14_29_fu_2094_p1 = reg_1449;
assign bitcast_ln14_2_fu_1651_p1 = reg_1440;
assign bitcast_ln14_30_fu_2114_p1 = init_1_load_7_reg_3453;
assign bitcast_ln14_31_fu_2118_p1 = select_ln14_15_reg_3603;
assign bitcast_ln14_3_fu_1765_p1 = reg_1436;
assign bitcast_ln14_4_fu_1770_p1 = reg_1440;
assign bitcast_ln14_5_fu_1848_p1 = reg_1436;
assign bitcast_ln14_6_fu_1853_p1 = reg_1440;
assign bitcast_ln14_7_fu_1903_p1 = reg_1436;
assign bitcast_ln14_8_fu_1908_p1 = reg_1440;
assign bitcast_ln14_9_fu_1963_p1 = reg_1436;
assign bitcast_ln14_fu_1641_p1 = reg_1432;
assign conv3_udiv_cast_cast_fu_1458_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_1418_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign grp_fu_1425_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign grp_fu_3912_p_ce = 1'b1;
assign grp_fu_3912_p_din0 = grp_fu_1410_p0;
assign grp_fu_3912_p_din1 = grp_fu_1410_p1;
assign grp_fu_3912_p_opcode = 2'd0;
assign grp_fu_7037_p_ce = 1'b1;
assign grp_fu_7037_p_din0 = grp_fu_1414_p0;
assign grp_fu_7037_p_din1 = grp_fu_1414_p1;
assign grp_fu_7037_p_opcode = 2'd0;
assign init_0_address0 = init_0_address0_local;
assign init_0_address1 = init_0_address1_local;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = init_1_address0_local;
assign init_1_address1 = init_1_address1_local;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign lshr_ln9_fu_1486_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln14_10_fu_1858_p4 = {{{tmp_s_reg_3278}, {1'd1}}, {p_cast_reg_3118}};
assign or_ln14_11_fu_1872_p5 = {{{{tmp_s_reg_3278}, {1'd1}}, {tmp_191_reg_3292}}, {6'd32}};
assign or_ln14_12_fu_1732_p5 = {{{{tmp_s_fu_1691_p4}, {1'd1}}, {tmp_130_fu_1725_p3}}, {1'd1}};
assign or_ln14_13_fu_1913_p5 = {{{{tmp_s_reg_3278}, {1'd1}}, {tmp_130_reg_3297}}, {7'd64}};
assign or_ln14_14_fu_1934_p5 = {{{{tmp_s_reg_3278}, {1'd1}}, {tmp_130_reg_3297}}, {7'd96}};
assign or_ln14_15_fu_1811_p4 = {{{tmp_s_reg_3278}, {2'd3}}, {tmp_129_reg_3216}};
assign or_ln14_16_fu_1973_p4 = {{{tmp_s_reg_3278}, {2'd3}}, {conv3_udiv}};
assign or_ln14_17_fu_1987_p5 = {{{{tmp_s_reg_3278}, {2'd3}}, {tmp_129_reg_3216}}, {6'd32}};
assign or_ln14_18_fu_1825_p3 = {{tmp_s_reg_3278}, {3'd7}};
assign or_ln14_19_fu_2032_p3 = {{tmp_s_reg_3278}, {9'd448}};
assign or_ln14_1_fu_1556_p3 = {{tmp_146_fu_1546_p4}, {1'd1}};
assign or_ln14_20_fu_2054_p3 = {{tmp_s_reg_3278}, {9'd480}};
assign or_ln14_2_fu_1570_p3 = {{tmp_146_reg_3175}, {7'd64}};
assign or_ln14_3_fu_1588_p3 = {{tmp_146_reg_3175}, {7'd96}};
assign or_ln14_4_fu_1613_p4 = {{{tmp_49_reg_3145}, {1'd1}}, {tmp_129_fu_1606_p3}};
assign or_ln14_5_fu_1656_p4 = {{{tmp_49_reg_3145}, {1'd1}}, {conv3_udiv}};
assign or_ln14_6_fu_1670_p5 = {{{{tmp_49_reg_3145}, {1'd1}}, {tmp_129_reg_3216}}, {6'd32}};
assign or_ln14_7_fu_1628_p3 = {{tmp_49_reg_3145}, {2'd3}};
assign or_ln14_8_fu_1775_p3 = {{tmp_49_reg_3145}, {8'd192}};
assign or_ln14_9_fu_1793_p3 = {{tmp_49_reg_3145}, {8'd224}};
assign or_ln14_s_fu_1709_p4 = {{{tmp_s_fu_1691_p4}, {1'd1}}, {tmp_191_fu_1700_p4}};
assign or_ln1_fu_1526_p3 = {{lshr_ln9_fu_1486_p4}, {6'd32}};
assign or_ln_fu_1512_p3 = {{tmp_49_fu_1502_p4}, {p_cast_fu_1462_p1}};
assign p_cast_fu_1462_p1 = empty_9;
assign select_ln14_14_fu_2087_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_15_fu_2099_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign tmp_129_fu_1606_p3 = s_1_reg_3123[32'd1];
assign tmp_130_fu_1725_p3 = s_1_reg_3123[32'd2];
assign tmp_146_fu_1546_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_191_fu_1700_p4 = {{s_1_reg_3123[2:1]}};
assign tmp_49_fu_1502_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_s_fu_1691_p4 = {{s_1_reg_3123[5:4]}};
assign trunc_ln13_fu_1482_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln14_10_fu_1928_p1 = add_ln14_7_fu_1923_p2;
assign zext_ln14_11_fu_1949_p1 = add_ln14_8_fu_1944_p2;
assign zext_ln14_12_fu_1981_p1 = or_ln14_16_fu_1973_p4;
assign zext_ln14_13_fu_2002_p1 = add_ln14_9_fu_1997_p2;
assign zext_ln14_14_fu_2044_p1 = add_ln14_10_fu_2039_p2;
assign zext_ln14_15_fu_2066_p1 = add_ln14_11_fu_2061_p2;
assign zext_ln14_16_fu_1564_p1 = or_ln14_1_fu_1556_p3;
assign zext_ln14_17_fu_1622_p1 = or_ln14_4_fu_1613_p4;
assign zext_ln14_18_fu_1635_p1 = or_ln14_7_fu_1628_p3;
assign zext_ln14_19_fu_1719_p1 = or_ln14_s_fu_1709_p4;
assign zext_ln14_1_fu_1540_p1 = add_ln14_fu_1534_p2;
assign zext_ln14_20_fu_1744_p1 = or_ln14_12_fu_1732_p5;
assign zext_ln14_21_fu_1819_p1 = or_ln14_15_fu_1811_p4;
assign zext_ln14_22_fu_1832_p1 = or_ln14_18_fu_1825_p3;
assign zext_ln14_2_fu_1582_p1 = add_ln14_1_fu_1577_p2;
assign zext_ln14_3_fu_1600_p1 = add_ln14_2_fu_1595_p2;
assign zext_ln14_4_fu_1664_p1 = or_ln14_5_fu_1656_p4;
assign zext_ln14_5_fu_1685_p1 = add_ln14_3_fu_1680_p2;
assign zext_ln14_6_fu_1787_p1 = add_ln14_4_fu_1782_p2;
assign zext_ln14_7_fu_1805_p1 = add_ln14_5_fu_1800_p2;
assign zext_ln14_8_fu_1866_p1 = or_ln14_10_fu_1858_p4;
assign zext_ln14_9_fu_1887_p1 = add_ln14_6_fu_1882_p2;
assign zext_ln14_fu_1520_p1 = or_ln_fu_1512_p3;
assign zext_ln9_fu_1496_p1 = lshr_ln9_fu_1486_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_3103[10:7] <= 4'b0000;
    p_cast_reg_3118[7] <= 1'b0;
end
endmodule 