module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_163,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,zext_ln52,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,llike_address0,llike_ce0,llike_q0,zext_ln52_2,min_s_18_out,min_s_18_out_ap_vld,grp_fu_215_p_din0,grp_fu_215_p_din1,grp_fu_215_p_opcode,grp_fu_215_p_dout0,grp_fu_215_p_ce,grp_fu_390_p_din0,grp_fu_390_p_din1,grp_fu_390_p_opcode,grp_fu_390_p_dout0,grp_fu_390_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 17'd1;
parameter    ap_ST_fsm_pp0_stage1 = 17'd2;
parameter    ap_ST_fsm_pp0_stage2 = 17'd4;
parameter    ap_ST_fsm_pp0_stage3 = 17'd8;
parameter    ap_ST_fsm_pp0_stage4 = 17'd16;
parameter    ap_ST_fsm_pp0_stage5 = 17'd32;
parameter    ap_ST_fsm_pp0_stage6 = 17'd64;
parameter    ap_ST_fsm_pp0_stage7 = 17'd128;
parameter    ap_ST_fsm_pp0_stage8 = 17'd256;
parameter    ap_ST_fsm_pp0_stage9 = 17'd512;
parameter    ap_ST_fsm_pp0_stage10 = 17'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 17'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 17'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 17'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 17'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 17'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_163;
input  [7:0] t_1;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [11:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [11:0] llike_2_address1;
output   llike_2_ce1;
input  [63:0] llike_2_q1;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [11:0] llike_3_address1;
output   llike_3_ce1;
input  [63:0] llike_3_q1;
input  [7:0] zext_ln52;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [11:0] zext_ln52_2;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_215_p_din0;
output  [63:0] grp_fu_215_p_din1;
output  [1:0] grp_fu_215_p_opcode;
input  [63:0] grp_fu_215_p_dout0;
output   grp_fu_215_p_ce;
output  [63:0] grp_fu_390_p_din0;
output  [63:0] grp_fu_390_p_din1;
output  [4:0] grp_fu_390_p_opcode;
input  [0:0] grp_fu_390_p_dout0;
output   grp_fu_390_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_reg_1675;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_320;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_325;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_329;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_334;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_339;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] zext_ln52_cast_fu_344_p1;
reg   [11:0] zext_ln52_cast_reg_1581;
reg   [5:0] s_reg_1592;
wire   [5:0] add_ln53_fu_414_p2;
reg   [5:0] add_ln53_reg_1619;
wire   [5:0] add_ln53_1_fu_420_p2;
reg   [5:0] add_ln53_1_reg_1625;
reg   [5:0] add_ln53_1_reg_1625_pp0_iter1_reg;
wire   [5:0] add_ln53_2_fu_426_p2;
reg   [5:0] add_ln53_2_reg_1631;
reg   [5:0] add_ln53_2_reg_1631_pp0_iter1_reg;
wire   [5:0] add_ln53_4_fu_474_p2;
reg   [5:0] add_ln53_4_reg_1647;
reg   [5:0] add_ln53_4_reg_1647_pp0_iter1_reg;
wire   [5:0] add_ln53_5_fu_503_p2;
reg   [5:0] add_ln53_5_reg_1658;
reg   [5:0] add_ln53_5_reg_1658_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_532_p2;
reg   [6:0] add_ln53_6_reg_1669;
reg   [0:0] tmp_reg_1675_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1679;
reg   [63:0] llike_2_load_reg_1684;
reg   [63:0] llike_3_load_reg_1694;
reg   [63:0] llike_load_reg_1704;
wire   [5:0] add_ln53_3_fu_580_p2;
reg   [5:0] add_ln53_3_reg_1709;
reg   [5:0] add_ln53_3_reg_1709_pp0_iter1_reg;
reg   [63:0] llike_1_load_16_reg_1715;
reg   [63:0] llike_2_load_16_reg_1720;
reg   [63:0] llike_3_load_16_reg_1725;
wire   [63:0] bitcast_ln54_fu_608_p1;
reg   [63:0] llike_load_16_reg_1750;
wire   [63:0] bitcast_ln54_1_fu_647_p1;
reg   [63:0] transition_load_67_reg_1760;
wire   [63:0] bitcast_ln54_2_fu_686_p1;
reg   [63:0] transition_load_69_reg_1780;
wire   [5:0] trunc_ln54_fu_691_p1;
reg   [5:0] trunc_ln54_reg_1785;
reg   [5:0] trunc_ln54_reg_1785_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_3_fu_712_p1;
wire   [63:0] bitcast_ln54_4_fu_717_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln54_5_fu_721_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln54_6_fu_726_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln54_7_fu_730_p1;
reg   [63:0] min_p_127_reg_1820;
wire   [0:0] and_ln55_1_fu_816_p2;
reg   [0:0] and_ln55_1_reg_1827;
wire   [63:0] min_p_129_fu_822_p3;
reg   [63:0] min_p_129_reg_1833;
wire   [0:0] and_ln55_3_fu_906_p2;
reg   [0:0] and_ln55_3_reg_1840;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_66_reg_1846;
wire   [63:0] min_p_131_fu_925_p3;
reg   [63:0] min_p_131_reg_1853;
wire   [7:0] min_s_5_fu_935_p3;
reg   [7:0] min_s_5_reg_1860;
wire   [0:0] and_ln55_5_fu_1019_p2;
reg   [0:0] and_ln55_5_reg_1865;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_68_reg_1871;
wire   [63:0] min_p_133_fu_1025_p3;
reg   [63:0] min_p_133_reg_1878;
wire   [0:0] icmp_ln55_14_fu_1050_p2;
reg   [0:0] icmp_ln55_14_reg_1884;
wire   [0:0] icmp_ln55_15_fu_1056_p2;
reg   [0:0] icmp_ln55_15_reg_1889;
wire   [0:0] and_ln55_7_fu_1118_p2;
reg   [0:0] and_ln55_7_reg_1894;
wire   [63:0] min_p_135_fu_1133_p3;
reg   [63:0] min_p_135_reg_1900;
wire   [7:0] min_s_7_fu_1143_p3;
reg   [7:0] min_s_7_reg_1907;
wire   [0:0] and_ln55_9_fu_1226_p2;
reg   [0:0] and_ln55_9_reg_1912;
wire   [63:0] min_p_137_fu_1232_p3;
reg   [63:0] min_p_137_reg_1918;
wire   [0:0] and_ln55_11_fu_1315_p2;
reg   [0:0] and_ln55_11_reg_1925;
wire   [63:0] min_p_139_fu_1321_p3;
reg   [63:0] min_p_139_reg_1931;
wire   [0:0] and_ln55_13_fu_1404_p2;
reg   [0:0] and_ln55_13_reg_1938;
wire   [7:0] min_s_10_fu_1432_p3;
reg   [7:0] min_s_10_reg_1944;
wire   [63:0] min_p_141_fu_1440_p3;
reg   [63:0] min_p_141_reg_1949;
reg   [0:0] tmp_233_reg_1956;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_388_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_409_p1;
wire   [63:0] zext_ln54_9_fu_450_p1;
wire   [63:0] zext_ln54_10_fu_469_p1;
wire   [63:0] zext_ln54_11_fu_498_p1;
wire   [63:0] zext_ln54_12_fu_527_p1;
wire   [63:0] zext_ln54_1_fu_558_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_575_p1;
wire   [63:0] zext_ln54_14_fu_603_p1;
wire   [63:0] zext_ln54_3_fu_625_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_642_p1;
wire   [63:0] zext_ln54_5_fu_664_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_681_p1;
wire   [63:0] zext_ln54_7_fu_707_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_100;
wire   [63:0] min_p_143_fu_1528_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_104;
wire   [7:0] min_s_11_fu_1538_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_108;
wire   [5:0] add_ln53_7_fu_1062_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    llike_2_ce1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce1_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg   [63:0] grp_fu_312_p0;
reg   [63:0] grp_fu_312_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_316_p0;
reg   [63:0] grp_fu_316_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [3:0] lshr_ln8_4_fu_370_p4;
wire   [11:0] tmp_s_fu_380_p3;
wire   [11:0] shl_ln2_fu_395_p3;
wire   [11:0] add_ln54_fu_403_p2;
wire   [3:0] lshr_ln8_5_fu_432_p4;
wire   [11:0] tmp_215_fu_442_p3;
wire   [3:0] add_ln8_fu_455_p2;
wire   [11:0] tmp_219_fu_461_p3;
wire   [3:0] lshr_ln8_6_fu_480_p4;
wire   [11:0] tmp_223_fu_490_p3;
wire   [3:0] lshr_ln8_7_fu_509_p4;
wire   [11:0] tmp_227_fu_519_p3;
wire   [6:0] zext_ln12_fu_366_p1;
wire   [11:0] shl_ln54_1_fu_546_p3;
wire   [11:0] add_ln54_1_fu_553_p2;
wire   [11:0] shl_ln54_2_fu_563_p3;
wire   [11:0] add_ln54_2_fu_570_p2;
wire   [4:0] lshr_ln9_2_fu_585_p4;
wire   [11:0] zext_ln54_13_fu_594_p1;
wire   [11:0] add_ln54_8_fu_598_p2;
wire   [11:0] shl_ln54_3_fu_613_p3;
wire   [11:0] add_ln54_3_fu_620_p2;
wire   [11:0] shl_ln54_4_fu_630_p3;
wire   [11:0] add_ln54_4_fu_637_p2;
wire   [11:0] shl_ln54_5_fu_652_p3;
wire   [11:0] add_ln54_5_fu_659_p2;
wire   [11:0] shl_ln54_6_fu_669_p3;
wire   [11:0] add_ln54_6_fu_676_p2;
wire   [11:0] shl_ln54_7_fu_694_p3;
wire   [11:0] add_ln54_7_fu_702_p2;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_739_p1;
wire   [63:0] bitcast_ln55_1_fu_757_p1;
wire   [10:0] tmp_206_fu_743_p4;
wire   [51:0] trunc_ln55_fu_753_p1;
wire   [0:0] icmp_ln55_1_fu_780_p2;
wire   [0:0] icmp_ln55_fu_774_p2;
wire   [10:0] tmp_207_fu_760_p4;
wire   [51:0] trunc_ln55_1_fu_770_p1;
wire   [0:0] icmp_ln55_3_fu_798_p2;
wire   [0:0] icmp_ln55_2_fu_792_p2;
wire   [0:0] or_ln55_fu_786_p2;
wire   [0:0] and_ln55_fu_810_p2;
wire   [0:0] or_ln55_1_fu_804_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_829_p1;
wire   [63:0] bitcast_ln55_3_fu_847_p1;
wire   [10:0] tmp_209_fu_833_p4;
wire   [51:0] trunc_ln55_2_fu_843_p1;
wire   [0:0] icmp_ln55_5_fu_870_p2;
wire   [0:0] icmp_ln55_4_fu_864_p2;
wire   [10:0] tmp_210_fu_850_p4;
wire   [51:0] trunc_ln55_3_fu_860_p1;
wire   [0:0] icmp_ln55_7_fu_888_p2;
wire   [0:0] icmp_ln55_6_fu_882_p2;
wire   [0:0] or_ln55_3_fu_894_p2;
wire   [0:0] or_ln55_2_fu_876_p2;
wire   [0:0] and_ln55_2_fu_900_p2;
wire   [7:0] zext_ln55_fu_915_p1;
wire   [7:0] zext_ln55_1_fu_932_p1;
wire   [7:0] min_s_4_fu_918_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_942_p1;
wire   [63:0] bitcast_ln55_5_fu_960_p1;
wire   [10:0] tmp_212_fu_946_p4;
wire   [51:0] trunc_ln55_4_fu_956_p1;
wire   [0:0] icmp_ln55_9_fu_983_p2;
wire   [0:0] icmp_ln55_8_fu_977_p2;
wire   [10:0] tmp_213_fu_963_p4;
wire   [51:0] trunc_ln55_5_fu_973_p1;
wire   [0:0] icmp_ln55_11_fu_1001_p2;
wire   [0:0] icmp_ln55_10_fu_995_p2;
wire   [0:0] or_ln55_5_fu_1007_p2;
wire   [0:0] or_ln55_4_fu_989_p2;
wire   [0:0] and_ln55_4_fu_1013_p2;
wire   [63:0] bitcast_ln55_7_fu_1032_p1;
wire   [10:0] tmp_217_fu_1036_p4;
wire   [51:0] trunc_ln55_7_fu_1046_p1;
wire   [63:0] bitcast_ln55_6_fu_1072_p1;
wire   [10:0] tmp_216_fu_1076_p4;
wire   [51:0] trunc_ln55_6_fu_1086_p1;
wire   [0:0] icmp_ln55_13_fu_1096_p2;
wire   [0:0] icmp_ln55_12_fu_1090_p2;
wire   [0:0] or_ln55_7_fu_1108_p2;
wire   [0:0] or_ln55_6_fu_1102_p2;
wire   [0:0] and_ln55_6_fu_1112_p2;
wire   [7:0] zext_ln55_2_fu_1124_p1;
wire   [7:0] zext_ln55_3_fu_1140_p1;
wire   [7:0] min_s_6_fu_1127_p3;
wire   [63:0] bitcast_ln55_8_fu_1150_p1;
wire   [63:0] bitcast_ln55_9_fu_1167_p1;
wire   [10:0] tmp_220_fu_1153_p4;
wire   [51:0] trunc_ln55_8_fu_1163_p1;
wire   [0:0] icmp_ln55_17_fu_1190_p2;
wire   [0:0] icmp_ln55_16_fu_1184_p2;
wire   [10:0] tmp_221_fu_1170_p4;
wire   [51:0] trunc_ln55_9_fu_1180_p1;
wire   [0:0] icmp_ln55_19_fu_1208_p2;
wire   [0:0] icmp_ln55_18_fu_1202_p2;
wire   [0:0] or_ln55_9_fu_1214_p2;
wire   [0:0] or_ln55_8_fu_1196_p2;
wire   [0:0] and_ln55_8_fu_1220_p2;
wire   [63:0] bitcast_ln55_10_fu_1238_p1;
wire   [63:0] bitcast_ln55_11_fu_1256_p1;
wire   [10:0] tmp_224_fu_1242_p4;
wire   [51:0] trunc_ln55_10_fu_1252_p1;
wire   [0:0] icmp_ln55_21_fu_1279_p2;
wire   [0:0] icmp_ln55_20_fu_1273_p2;
wire   [10:0] tmp_225_fu_1259_p4;
wire   [51:0] trunc_ln55_11_fu_1269_p1;
wire   [0:0] icmp_ln55_23_fu_1297_p2;
wire   [0:0] icmp_ln55_22_fu_1291_p2;
wire   [0:0] or_ln55_11_fu_1303_p2;
wire   [0:0] or_ln55_10_fu_1285_p2;
wire   [0:0] and_ln55_10_fu_1309_p2;
wire   [63:0] bitcast_ln55_12_fu_1328_p1;
wire   [63:0] bitcast_ln55_13_fu_1345_p1;
wire   [10:0] tmp_228_fu_1331_p4;
wire   [51:0] trunc_ln55_12_fu_1341_p1;
wire   [0:0] icmp_ln55_25_fu_1368_p2;
wire   [0:0] icmp_ln55_24_fu_1362_p2;
wire   [10:0] tmp_229_fu_1348_p4;
wire   [51:0] trunc_ln55_13_fu_1358_p1;
wire   [0:0] icmp_ln55_27_fu_1386_p2;
wire   [0:0] icmp_ln55_26_fu_1380_p2;
wire   [0:0] or_ln55_13_fu_1392_p2;
wire   [0:0] or_ln55_12_fu_1374_p2;
wire   [0:0] and_ln55_12_fu_1398_p2;
wire   [7:0] zext_ln55_4_fu_1410_p1;
wire   [7:0] zext_ln55_5_fu_1419_p1;
wire   [7:0] min_s_8_fu_1413_p3;
wire   [7:0] zext_ln55_6_fu_1429_p1;
wire   [7:0] min_s_9_fu_1422_p3;
wire   [63:0] bitcast_ln55_14_fu_1446_p1;
wire   [63:0] bitcast_ln55_15_fu_1464_p1;
wire   [10:0] tmp_231_fu_1450_p4;
wire   [51:0] trunc_ln55_14_fu_1460_p1;
wire   [0:0] icmp_ln55_29_fu_1487_p2;
wire   [0:0] icmp_ln55_28_fu_1481_p2;
wire   [10:0] tmp_232_fu_1467_p4;
wire   [51:0] trunc_ln55_15_fu_1477_p1;
wire   [0:0] icmp_ln55_31_fu_1505_p2;
wire   [0:0] icmp_ln55_30_fu_1499_p2;
wire   [0:0] or_ln55_15_fu_1511_p2;
wire   [0:0] or_ln55_14_fu_1493_p2;
wire   [0:0] and_ln55_14_fu_1517_p2;
wire   [0:0] and_ln55_15_fu_1523_p2;
wire   [7:0] zext_ln55_7_fu_1535_p1;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [16:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_100 = 64'd0;
#0 min_s_fu_104 = 8'd0;
#0 min_s_1_fu_108 = 6'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage16),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage7) | ((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_100 <= min_p_163;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1675_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_100 <= min_p_143_fu_1528_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_108 <= 6'd1;
    end else if (((tmp_reg_1675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_108 <= add_ln53_7_fu_1062_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_104 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1675_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_104 <= min_s_11_fu_1538_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_320 <= transition_q1;
    end else if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_320 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1625 <= add_ln53_1_fu_420_p2;
        add_ln53_1_reg_1625_pp0_iter1_reg <= add_ln53_1_reg_1625;
        add_ln53_2_reg_1631 <= add_ln53_2_fu_426_p2;
        add_ln53_2_reg_1631_pp0_iter1_reg <= add_ln53_2_reg_1631;
        add_ln53_4_reg_1647 <= add_ln53_4_fu_474_p2;
        add_ln53_4_reg_1647_pp0_iter1_reg <= add_ln53_4_reg_1647;
        add_ln53_5_reg_1658 <= add_ln53_5_fu_503_p2;
        add_ln53_5_reg_1658_pp0_iter1_reg <= add_ln53_5_reg_1658;
        add_ln53_6_reg_1669 <= add_ln53_6_fu_532_p2;
        add_ln53_reg_1619 <= add_ln53_fu_414_p2;
        and_ln55_7_reg_1894 <= and_ln55_7_fu_1118_p2;
        s_reg_1592 <= ap_sig_allocacmp_s;
        tmp_reg_1675 <= add_ln53_6_fu_532_p2[32'd6];
        tmp_reg_1675_pp0_iter1_reg <= tmp_reg_1675;
        zext_ln52_cast_reg_1581[7 : 0] <= zext_ln52_cast_fu_344_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_3_reg_1709 <= add_ln53_3_fu_580_p2;
        add_ln53_3_reg_1709_pp0_iter1_reg <= add_ln53_3_reg_1709;
        min_p_135_reg_1900 <= min_p_135_fu_1133_p3;
        min_s_7_reg_1907 <= min_s_7_fu_1143_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_1925 <= and_ln55_11_fu_1315_p2;
        trunc_ln54_reg_1785 <= trunc_ln54_fu_691_p1;
        trunc_ln54_reg_1785_pp0_iter1_reg <= trunc_ln54_reg_1785;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_1938 <= and_ln55_13_fu_1404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_1827 <= and_ln55_1_fu_816_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_1840 <= and_ln55_3_fu_906_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_1865 <= and_ln55_5_fu_1019_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_9_reg_1912 <= and_ln55_9_fu_1226_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_1884 <= icmp_ln55_14_fu_1050_p2;
        icmp_ln55_15_reg_1889 <= icmp_ln55_15_fu_1056_p2;
        min_p_133_reg_1878 <= min_p_133_fu_1025_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_16_reg_1715 <= llike_1_q0;
        llike_1_load_reg_1679 <= llike_1_q1;
        llike_2_load_16_reg_1720 <= llike_2_q0;
        llike_2_load_reg_1684 <= llike_2_q1;
        llike_3_load_16_reg_1725 <= llike_3_q0;
        llike_3_load_reg_1694 <= llike_3_q1;
        llike_load_reg_1704 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_16_reg_1750 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_127_reg_1820 <= min_p_fu_100;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_129_reg_1833 <= min_p_129_fu_822_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_131_reg_1853 <= min_p_131_fu_925_p3;
        min_s_5_reg_1860 <= min_s_5_fu_935_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_137_reg_1918 <= min_p_137_fu_1232_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_139_reg_1931 <= min_p_139_fu_1321_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_141_reg_1949 <= min_p_141_fu_1440_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_1944 <= min_s_10_fu_1432_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_66_reg_1846 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_68_reg_1871 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_325 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_329 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_334 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_339 <= grp_fu_215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_233_reg_1956 <= grp_fu_390_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        transition_load_67_reg_1760 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        transition_load_69_reg_1780 <= transition_q1;
    end
end
always @ (*) begin
    if (((tmp_reg_1675 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1675_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_108;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_312_p0 = llike_load_16_reg_1750;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_312_p0 = llike_3_load_16_reg_1725;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_312_p0 = llike_2_load_16_reg_1720;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_312_p0 = llike_1_load_16_reg_1715;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_312_p0 = llike_load_reg_1704;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_312_p0 = llike_3_load_reg_1694;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_312_p0 = llike_2_load_reg_1684;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_312_p0 = llike_1_load_reg_1679;
        end else begin
            grp_fu_312_p0 = 'bx;
        end
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_312_p1 = bitcast_ln54_7_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_312_p1 = bitcast_ln54_6_fu_726_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_312_p1 = bitcast_ln54_5_fu_721_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_312_p1 = bitcast_ln54_4_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_312_p1 = bitcast_ln54_3_fu_712_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_312_p1 = bitcast_ln54_2_fu_686_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_312_p1 = bitcast_ln54_1_fu_647_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_312_p1 = bitcast_ln54_fu_608_p1;
        end else begin
            grp_fu_312_p1 = 'bx;
        end
    end else begin
        grp_fu_312_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_316_p0 = p_68_reg_1871;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_316_p0 = p_66_reg_1846;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_316_p0 = reg_339;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_316_p0 = reg_334;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_316_p0 = reg_329;
    end else begin
        grp_fu_316_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_316_p1 = min_p_141_fu_1440_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_316_p1 = min_p_139_fu_1321_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_316_p1 = min_p_137_fu_1232_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_316_p1 = min_p_135_fu_1133_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_316_p1 = min_p_133_fu_1025_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_316_p1 = min_p_131_fu_925_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_316_p1 = min_p_129_fu_822_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_316_p1 = min_p_fu_100;
    end else begin
        grp_fu_316_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_2_ce1_local = 1'b1;
    end else begin
        llike_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_3_ce1_local = 1'b1;
    end else begin
        llike_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_14_fu_603_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_9_fu_450_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_reg_1675_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln54_5_fu_664_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln54_3_fu_625_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln54_2_fu_575_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln54_fu_409_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_address1_local = zext_ln54_7_fu_707_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln54_6_fu_681_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln54_4_fu_642_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln54_1_fu_558_p1;
        end else begin
            transition_address1_local = 'bx;
        end
    end else begin
        transition_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce1_local = 1'b1;
    end else begin
        transition_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln53_1_fu_420_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_426_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln53_3_fu_580_p2 = (s_reg_1592 + 6'd4);
assign add_ln53_4_fu_474_p2 = (ap_sig_allocacmp_s + 6'd5);
assign add_ln53_5_fu_503_p2 = (ap_sig_allocacmp_s + 6'd6);
assign add_ln53_6_fu_532_p2 = (zext_ln12_fu_366_p1 + 7'd7);
assign add_ln53_7_fu_1062_p2 = (s_reg_1592 + 6'd8);
assign add_ln53_fu_414_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_553_p2 = (shl_ln54_1_fu_546_p3 + zext_ln52_cast_reg_1581);
assign add_ln54_2_fu_570_p2 = (shl_ln54_2_fu_563_p3 + zext_ln52_cast_reg_1581);
assign add_ln54_3_fu_620_p2 = (shl_ln54_3_fu_613_p3 + zext_ln52_cast_reg_1581);
assign add_ln54_4_fu_637_p2 = (shl_ln54_4_fu_630_p3 + zext_ln52_cast_reg_1581);
assign add_ln54_5_fu_659_p2 = (shl_ln54_5_fu_652_p3 + zext_ln52_cast_reg_1581);
assign add_ln54_6_fu_676_p2 = (shl_ln54_6_fu_669_p3 + zext_ln52_cast_reg_1581);
assign add_ln54_7_fu_702_p2 = (shl_ln54_7_fu_694_p3 + zext_ln52_cast_reg_1581);
assign add_ln54_8_fu_598_p2 = (zext_ln52_2 + zext_ln54_13_fu_594_p1);
assign add_ln54_fu_403_p2 = (shl_ln2_fu_395_p3 + zext_ln52_cast_fu_344_p1);
assign add_ln8_fu_455_p2 = (lshr_ln8_4_fu_370_p4 + 4'd1);
assign and_ln55_10_fu_1309_p2 = (or_ln55_11_fu_1303_p2 & or_ln55_10_fu_1285_p2);
assign and_ln55_11_fu_1315_p2 = (grp_fu_390_p_dout0 & and_ln55_10_fu_1309_p2);
assign and_ln55_12_fu_1398_p2 = (or_ln55_13_fu_1392_p2 & or_ln55_12_fu_1374_p2);
assign and_ln55_13_fu_1404_p2 = (grp_fu_390_p_dout0 & and_ln55_12_fu_1398_p2);
assign and_ln55_14_fu_1517_p2 = (or_ln55_15_fu_1511_p2 & or_ln55_14_fu_1493_p2);
assign and_ln55_15_fu_1523_p2 = (tmp_233_reg_1956 & and_ln55_14_fu_1517_p2);
assign and_ln55_1_fu_816_p2 = (or_ln55_1_fu_804_p2 & and_ln55_fu_810_p2);
assign and_ln55_2_fu_900_p2 = (or_ln55_3_fu_894_p2 & or_ln55_2_fu_876_p2);
assign and_ln55_3_fu_906_p2 = (grp_fu_390_p_dout0 & and_ln55_2_fu_900_p2);
assign and_ln55_4_fu_1013_p2 = (or_ln55_5_fu_1007_p2 & or_ln55_4_fu_989_p2);
assign and_ln55_5_fu_1019_p2 = (grp_fu_390_p_dout0 & and_ln55_4_fu_1013_p2);
assign and_ln55_6_fu_1112_p2 = (or_ln55_7_fu_1108_p2 & or_ln55_6_fu_1102_p2);
assign and_ln55_7_fu_1118_p2 = (grp_fu_390_p_dout0 & and_ln55_6_fu_1112_p2);
assign and_ln55_8_fu_1220_p2 = (or_ln55_9_fu_1214_p2 & or_ln55_8_fu_1196_p2);
assign and_ln55_9_fu_1226_p2 = (grp_fu_390_p_dout0 & and_ln55_8_fu_1220_p2);
assign and_ln55_fu_810_p2 = (or_ln55_fu_786_p2 & grp_fu_390_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage16;
assign ap_ready = ap_ready_sig;
assign bitcast_ln54_1_fu_647_p1 = reg_320;
assign bitcast_ln54_2_fu_686_p1 = reg_325;
assign bitcast_ln54_3_fu_712_p1 = reg_320;
assign bitcast_ln54_4_fu_717_p1 = transition_load_67_reg_1760;
assign bitcast_ln54_5_fu_721_p1 = reg_325;
assign bitcast_ln54_6_fu_726_p1 = transition_load_69_reg_1780;
assign bitcast_ln54_7_fu_730_p1 = reg_320;
assign bitcast_ln54_fu_608_p1 = reg_320;
assign bitcast_ln55_10_fu_1238_p1 = reg_334;
assign bitcast_ln55_11_fu_1256_p1 = min_p_137_reg_1918;
assign bitcast_ln55_12_fu_1328_p1 = p_68_reg_1871;
assign bitcast_ln55_13_fu_1345_p1 = min_p_139_reg_1931;
assign bitcast_ln55_14_fu_1446_p1 = reg_339;
assign bitcast_ln55_15_fu_1464_p1 = min_p_141_reg_1949;
assign bitcast_ln55_1_fu_757_p1 = min_p_127_reg_1820;
assign bitcast_ln55_2_fu_829_p1 = reg_334;
assign bitcast_ln55_3_fu_847_p1 = min_p_129_reg_1833;
assign bitcast_ln55_4_fu_942_p1 = reg_339;
assign bitcast_ln55_5_fu_960_p1 = min_p_131_reg_1853;
assign bitcast_ln55_6_fu_1072_p1 = reg_329;
assign bitcast_ln55_7_fu_1032_p1 = min_p_133_fu_1025_p3;
assign bitcast_ln55_8_fu_1150_p1 = p_66_reg_1846;
assign bitcast_ln55_9_fu_1167_p1 = min_p_135_reg_1900;
assign bitcast_ln55_fu_739_p1 = reg_329;
assign grp_fu_215_p_ce = 1'b1;
assign grp_fu_215_p_din0 = grp_fu_312_p0;
assign grp_fu_215_p_din1 = grp_fu_312_p1;
assign grp_fu_215_p_opcode = 2'd0;
assign grp_fu_390_p_ce = 1'b1;
assign grp_fu_390_p_din0 = grp_fu_316_p0;
assign grp_fu_390_p_din1 = grp_fu_316_p1;
assign grp_fu_390_p_opcode = 5'd4;
assign icmp_ln55_10_fu_995_p2 = ((tmp_213_fu_963_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1001_p2 = ((trunc_ln55_5_fu_973_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1090_p2 = ((tmp_216_fu_1076_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1096_p2 = ((trunc_ln55_6_fu_1086_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1050_p2 = ((tmp_217_fu_1036_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1056_p2 = ((trunc_ln55_7_fu_1046_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1184_p2 = ((tmp_220_fu_1153_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1190_p2 = ((trunc_ln55_8_fu_1163_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1202_p2 = ((tmp_221_fu_1170_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1208_p2 = ((trunc_ln55_9_fu_1180_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_780_p2 = ((trunc_ln55_fu_753_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1273_p2 = ((tmp_224_fu_1242_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1279_p2 = ((trunc_ln55_10_fu_1252_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1291_p2 = ((tmp_225_fu_1259_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1297_p2 = ((trunc_ln55_11_fu_1269_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1362_p2 = ((tmp_228_fu_1331_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1368_p2 = ((trunc_ln55_12_fu_1341_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1380_p2 = ((tmp_229_fu_1348_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1386_p2 = ((trunc_ln55_13_fu_1358_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_1481_p2 = ((tmp_231_fu_1450_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_1487_p2 = ((trunc_ln55_14_fu_1460_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_792_p2 = ((tmp_207_fu_760_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_1499_p2 = ((tmp_232_fu_1467_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_1505_p2 = ((trunc_ln55_15_fu_1477_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_798_p2 = ((trunc_ln55_1_fu_770_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_864_p2 = ((tmp_209_fu_833_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_870_p2 = ((trunc_ln55_2_fu_843_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_882_p2 = ((tmp_210_fu_850_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_888_p2 = ((trunc_ln55_3_fu_860_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_977_p2 = ((tmp_212_fu_946_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_983_p2 = ((trunc_ln55_4_fu_956_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_774_p2 = ((tmp_206_fu_743_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_10_fu_469_p1;
assign llike_1_address1 = zext_ln54_8_fu_388_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = zext_ln54_11_fu_498_p1;
assign llike_2_address1 = zext_ln54_8_fu_388_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = zext_ln54_12_fu_527_p1;
assign llike_3_address1 = zext_ln54_8_fu_388_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_4_fu_370_p4 = {{ap_sig_allocacmp_s[5:2]}};
assign lshr_ln8_5_fu_432_p4 = {{add_ln53_2_fu_426_p2[5:2]}};
assign lshr_ln8_6_fu_480_p4 = {{add_ln53_4_fu_474_p2[5:2]}};
assign lshr_ln8_7_fu_509_p4 = {{add_ln53_5_fu_503_p2[5:2]}};
assign lshr_ln9_2_fu_585_p4 = {{add_ln53_6_reg_1669[6:2]}};
assign min_p_129_fu_822_p3 = ((and_ln55_1_reg_1827[0:0] == 1'b1) ? reg_329 : min_p_127_reg_1820);
assign min_p_131_fu_925_p3 = ((and_ln55_3_reg_1840[0:0] == 1'b1) ? reg_334 : min_p_129_reg_1833);
assign min_p_133_fu_1025_p3 = ((and_ln55_5_reg_1865[0:0] == 1'b1) ? reg_339 : min_p_131_reg_1853);
assign min_p_135_fu_1133_p3 = ((and_ln55_7_reg_1894[0:0] == 1'b1) ? reg_329 : min_p_133_reg_1878);
assign min_p_137_fu_1232_p3 = ((and_ln55_9_reg_1912[0:0] == 1'b1) ? p_66_reg_1846 : min_p_135_reg_1900);
assign min_p_139_fu_1321_p3 = ((and_ln55_11_reg_1925[0:0] == 1'b1) ? reg_334 : min_p_137_reg_1918);
assign min_p_141_fu_1440_p3 = ((and_ln55_13_reg_1938[0:0] == 1'b1) ? p_68_reg_1871 : min_p_139_reg_1931);
assign min_p_143_fu_1528_p3 = ((and_ln55_15_fu_1523_p2[0:0] == 1'b1) ? reg_339 : min_p_141_reg_1949);
assign min_s_10_fu_1432_p3 = ((and_ln55_13_reg_1938[0:0] == 1'b1) ? zext_ln55_6_fu_1429_p1 : min_s_9_fu_1422_p3);
assign min_s_11_fu_1538_p3 = ((and_ln55_15_fu_1523_p2[0:0] == 1'b1) ? zext_ln55_7_fu_1535_p1 : min_s_10_reg_1944);
assign min_s_18_out = ((and_ln55_13_reg_1938[0:0] == 1'b1) ? zext_ln55_6_fu_1429_p1 : min_s_9_fu_1422_p3);
assign min_s_4_fu_918_p3 = ((and_ln55_1_reg_1827[0:0] == 1'b1) ? zext_ln55_fu_915_p1 : min_s_fu_104);
assign min_s_5_fu_935_p3 = ((and_ln55_3_reg_1840[0:0] == 1'b1) ? zext_ln55_1_fu_932_p1 : min_s_4_fu_918_p3);
assign min_s_6_fu_1127_p3 = ((and_ln55_5_reg_1865[0:0] == 1'b1) ? zext_ln55_2_fu_1124_p1 : min_s_5_reg_1860);
assign min_s_7_fu_1143_p3 = ((and_ln55_7_reg_1894[0:0] == 1'b1) ? zext_ln55_3_fu_1140_p1 : min_s_6_fu_1127_p3);
assign min_s_8_fu_1413_p3 = ((and_ln55_9_reg_1912[0:0] == 1'b1) ? zext_ln55_4_fu_1410_p1 : min_s_7_reg_1907);
assign min_s_9_fu_1422_p3 = ((and_ln55_11_reg_1925[0:0] == 1'b1) ? zext_ln55_5_fu_1419_p1 : min_s_8_fu_1413_p3);
assign or_ln55_10_fu_1285_p2 = (icmp_ln55_21_fu_1279_p2 | icmp_ln55_20_fu_1273_p2);
assign or_ln55_11_fu_1303_p2 = (icmp_ln55_23_fu_1297_p2 | icmp_ln55_22_fu_1291_p2);
assign or_ln55_12_fu_1374_p2 = (icmp_ln55_25_fu_1368_p2 | icmp_ln55_24_fu_1362_p2);
assign or_ln55_13_fu_1392_p2 = (icmp_ln55_27_fu_1386_p2 | icmp_ln55_26_fu_1380_p2);
assign or_ln55_14_fu_1493_p2 = (icmp_ln55_29_fu_1487_p2 | icmp_ln55_28_fu_1481_p2);
assign or_ln55_15_fu_1511_p2 = (icmp_ln55_31_fu_1505_p2 | icmp_ln55_30_fu_1499_p2);
assign or_ln55_1_fu_804_p2 = (icmp_ln55_3_fu_798_p2 | icmp_ln55_2_fu_792_p2);
assign or_ln55_2_fu_876_p2 = (icmp_ln55_5_fu_870_p2 | icmp_ln55_4_fu_864_p2);
assign or_ln55_3_fu_894_p2 = (icmp_ln55_7_fu_888_p2 | icmp_ln55_6_fu_882_p2);
assign or_ln55_4_fu_989_p2 = (icmp_ln55_9_fu_983_p2 | icmp_ln55_8_fu_977_p2);
assign or_ln55_5_fu_1007_p2 = (icmp_ln55_11_fu_1001_p2 | icmp_ln55_10_fu_995_p2);
assign or_ln55_6_fu_1102_p2 = (icmp_ln55_13_fu_1096_p2 | icmp_ln55_12_fu_1090_p2);
assign or_ln55_7_fu_1108_p2 = (icmp_ln55_15_reg_1889 | icmp_ln55_14_reg_1884);
assign or_ln55_8_fu_1196_p2 = (icmp_ln55_17_fu_1190_p2 | icmp_ln55_16_fu_1184_p2);
assign or_ln55_9_fu_1214_p2 = (icmp_ln55_19_fu_1208_p2 | icmp_ln55_18_fu_1202_p2);
assign or_ln55_fu_786_p2 = (icmp_ln55_fu_774_p2 | icmp_ln55_1_fu_780_p2);
assign shl_ln2_fu_395_p3 = {{ap_sig_allocacmp_s}, {6'd0}};
assign shl_ln54_1_fu_546_p3 = {{add_ln53_reg_1619}, {6'd0}};
assign shl_ln54_2_fu_563_p3 = {{add_ln53_1_reg_1625}, {6'd0}};
assign shl_ln54_3_fu_613_p3 = {{add_ln53_2_reg_1631}, {6'd0}};
assign shl_ln54_4_fu_630_p3 = {{add_ln53_3_reg_1709}, {6'd0}};
assign shl_ln54_5_fu_652_p3 = {{add_ln53_4_reg_1647}, {6'd0}};
assign shl_ln54_6_fu_669_p3 = {{add_ln53_5_reg_1658}, {6'd0}};
assign shl_ln54_7_fu_694_p3 = {{trunc_ln54_fu_691_p1}, {6'd0}};
assign tmp_206_fu_743_p4 = {{bitcast_ln55_fu_739_p1[62:52]}};
assign tmp_207_fu_760_p4 = {{bitcast_ln55_1_fu_757_p1[62:52]}};
assign tmp_209_fu_833_p4 = {{bitcast_ln55_2_fu_829_p1[62:52]}};
assign tmp_210_fu_850_p4 = {{bitcast_ln55_3_fu_847_p1[62:52]}};
assign tmp_212_fu_946_p4 = {{bitcast_ln55_4_fu_942_p1[62:52]}};
assign tmp_213_fu_963_p4 = {{bitcast_ln55_5_fu_960_p1[62:52]}};
assign tmp_215_fu_442_p3 = {{t_1}, {lshr_ln8_5_fu_432_p4}};
assign tmp_216_fu_1076_p4 = {{bitcast_ln55_6_fu_1072_p1[62:52]}};
assign tmp_217_fu_1036_p4 = {{bitcast_ln55_7_fu_1032_p1[62:52]}};
assign tmp_219_fu_461_p3 = {{t_1}, {add_ln8_fu_455_p2}};
assign tmp_220_fu_1153_p4 = {{bitcast_ln55_8_fu_1150_p1[62:52]}};
assign tmp_221_fu_1170_p4 = {{bitcast_ln55_9_fu_1167_p1[62:52]}};
assign tmp_223_fu_490_p3 = {{t_1}, {lshr_ln8_6_fu_480_p4}};
assign tmp_224_fu_1242_p4 = {{bitcast_ln55_10_fu_1238_p1[62:52]}};
assign tmp_225_fu_1259_p4 = {{bitcast_ln55_11_fu_1256_p1[62:52]}};
assign tmp_227_fu_519_p3 = {{t_1}, {lshr_ln8_7_fu_509_p4}};
assign tmp_228_fu_1331_p4 = {{bitcast_ln55_12_fu_1328_p1[62:52]}};
assign tmp_229_fu_1348_p4 = {{bitcast_ln55_13_fu_1345_p1[62:52]}};
assign tmp_231_fu_1450_p4 = {{bitcast_ln55_14_fu_1446_p1[62:52]}};
assign tmp_232_fu_1467_p4 = {{bitcast_ln55_15_fu_1464_p1[62:52]}};
assign tmp_s_fu_380_p3 = {{t_1}, {lshr_ln8_4_fu_370_p4}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln54_fu_691_p1 = add_ln53_6_reg_1669[5:0];
assign trunc_ln55_10_fu_1252_p1 = bitcast_ln55_10_fu_1238_p1[51:0];
assign trunc_ln55_11_fu_1269_p1 = bitcast_ln55_11_fu_1256_p1[51:0];
assign trunc_ln55_12_fu_1341_p1 = bitcast_ln55_12_fu_1328_p1[51:0];
assign trunc_ln55_13_fu_1358_p1 = bitcast_ln55_13_fu_1345_p1[51:0];
assign trunc_ln55_14_fu_1460_p1 = bitcast_ln55_14_fu_1446_p1[51:0];
assign trunc_ln55_15_fu_1477_p1 = bitcast_ln55_15_fu_1464_p1[51:0];
assign trunc_ln55_1_fu_770_p1 = bitcast_ln55_1_fu_757_p1[51:0];
assign trunc_ln55_2_fu_843_p1 = bitcast_ln55_2_fu_829_p1[51:0];
assign trunc_ln55_3_fu_860_p1 = bitcast_ln55_3_fu_847_p1[51:0];
assign trunc_ln55_4_fu_956_p1 = bitcast_ln55_4_fu_942_p1[51:0];
assign trunc_ln55_5_fu_973_p1 = bitcast_ln55_5_fu_960_p1[51:0];
assign trunc_ln55_6_fu_1086_p1 = bitcast_ln55_6_fu_1072_p1[51:0];
assign trunc_ln55_7_fu_1046_p1 = bitcast_ln55_7_fu_1032_p1[51:0];
assign trunc_ln55_8_fu_1163_p1 = bitcast_ln55_8_fu_1150_p1[51:0];
assign trunc_ln55_9_fu_1180_p1 = bitcast_ln55_9_fu_1167_p1[51:0];
assign trunc_ln55_fu_753_p1 = bitcast_ln55_fu_739_p1[51:0];
assign zext_ln12_fu_366_p1 = ap_sig_allocacmp_s;
assign zext_ln52_cast_fu_344_p1 = zext_ln52;
assign zext_ln54_10_fu_469_p1 = tmp_219_fu_461_p3;
assign zext_ln54_11_fu_498_p1 = tmp_223_fu_490_p3;
assign zext_ln54_12_fu_527_p1 = tmp_227_fu_519_p3;
assign zext_ln54_13_fu_594_p1 = lshr_ln9_2_fu_585_p4;
assign zext_ln54_14_fu_603_p1 = add_ln54_8_fu_598_p2;
assign zext_ln54_1_fu_558_p1 = add_ln54_1_fu_553_p2;
assign zext_ln54_2_fu_575_p1 = add_ln54_2_fu_570_p2;
assign zext_ln54_3_fu_625_p1 = add_ln54_3_fu_620_p2;
assign zext_ln54_4_fu_642_p1 = add_ln54_4_fu_637_p2;
assign zext_ln54_5_fu_664_p1 = add_ln54_5_fu_659_p2;
assign zext_ln54_6_fu_681_p1 = add_ln54_6_fu_676_p2;
assign zext_ln54_7_fu_707_p1 = add_ln54_7_fu_702_p2;
assign zext_ln54_8_fu_388_p1 = tmp_s_fu_380_p3;
assign zext_ln54_9_fu_450_p1 = tmp_215_fu_442_p3;
assign zext_ln54_fu_409_p1 = add_ln54_fu_403_p2;
assign zext_ln55_1_fu_932_p1 = add_ln53_reg_1619;
assign zext_ln55_2_fu_1124_p1 = add_ln53_1_reg_1625_pp0_iter1_reg;
assign zext_ln55_3_fu_1140_p1 = add_ln53_2_reg_1631_pp0_iter1_reg;
assign zext_ln55_4_fu_1410_p1 = add_ln53_3_reg_1709_pp0_iter1_reg;
assign zext_ln55_5_fu_1419_p1 = add_ln53_4_reg_1647_pp0_iter1_reg;
assign zext_ln55_6_fu_1429_p1 = add_ln53_5_reg_1658_pp0_iter1_reg;
assign zext_ln55_7_fu_1535_p1 = trunc_ln54_reg_1785_pp0_iter1_reg;
assign zext_ln55_fu_915_p1 = s_reg_1592;
always @ (posedge ap_clk) begin
    zext_ln52_cast_reg_1581[11:8] <= 4'b0000;
end
endmodule 