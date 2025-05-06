
module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_163,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,zext_ln52_3,min_s_18_out,min_s_18_out_ap_vld,grp_fu_271_p_din0,grp_fu_271_p_din1,grp_fu_271_p_opcode,grp_fu_271_p_dout0,grp_fu_271_p_ce,grp_fu_536_p_din0,grp_fu_536_p_din1,grp_fu_536_p_opcode,grp_fu_536_p_dout0,grp_fu_536_p_ce);  
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
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
input  [6:0] zext_ln52_2;
output  [10:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [10:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [10:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [10:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
input  [0:0] empty;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [12:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [12:0] zext_ln52_3;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_271_p_din0;
output  [63:0] grp_fu_271_p_din1;
output  [1:0] grp_fu_271_p_opcode;
input  [63:0] grp_fu_271_p_dout0;
output   grp_fu_271_p_ce;
output  [63:0] grp_fu_536_p_din0;
output  [63:0] grp_fu_536_p_din1;
output  [4:0] grp_fu_536_p_opcode;
input  [0:0] grp_fu_536_p_dout0;
output   grp_fu_536_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_1_reg_1794;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_391_p3;
reg   [63:0] reg_405;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_398_p3;
reg   [63:0] reg_409;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_413;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_418;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_423;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] zext_ln52_2_cast_fu_428_p1;
reg   [10:0] zext_ln52_2_cast_reg_1714;
reg   [5:0] s_reg_1725;
wire   [4:0] lshr_ln8_4_fu_454_p4;
reg   [4:0] lshr_ln8_4_reg_1734;
wire   [5:0] add_ln53_fu_497_p2;
reg   [5:0] add_ln53_reg_1755;
wire   [5:0] add_ln53_1_fu_526_p2;
reg   [5:0] add_ln53_1_reg_1766;
reg   [5:0] add_ln53_1_reg_1766_pp0_iter1_reg;
wire   [5:0] add_ln53_2_fu_551_p2;
reg   [5:0] add_ln53_2_reg_1777;
reg   [5:0] add_ln53_2_reg_1777_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_580_p2;
reg   [6:0] add_ln53_6_reg_1788;
reg   [0:0] tmp_1_reg_1794_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1798;
reg   [63:0] llike_load_reg_1803;
reg   [63:0] llike_1_load_32_reg_1818;
reg   [63:0] llike_load_32_reg_1833;
wire   [5:0] add_ln53_3_fu_630_p2;
reg   [5:0] add_ln53_3_reg_1838;
reg   [5:0] add_ln53_3_reg_1838_pp0_iter1_reg;
wire   [5:0] add_ln53_4_fu_652_p2;
reg   [5:0] add_ln53_4_reg_1849;
reg   [5:0] add_ln53_4_reg_1849_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_fu_719_p1;
reg   [63:0] llike_1_load_33_reg_1885;
reg   [63:0] llike_load_33_reg_1900;
wire   [5:0] add_ln53_5_fu_760_p2;
reg   [5:0] add_ln53_5_reg_1905;
reg   [5:0] add_ln53_5_reg_1905_pp0_iter1_reg;
reg   [63:0] llike_1_load_34_reg_1911;
reg   [63:0] llike_load_34_reg_1916;
wire   [63:0] bitcast_ln54_1_fu_765_p1;
reg   [63:0] select_ln54_3_reg_1926;
wire   [63:0] bitcast_ln54_2_fu_806_p1;
reg   [63:0] select_ln54_6_reg_1956;
wire   [5:0] trunc_ln54_fu_811_p1;
reg   [5:0] trunc_ln54_reg_1961;
reg   [5:0] trunc_ln54_reg_1961_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_3_fu_833_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] select_ln54_7_reg_1981;
wire   [63:0] bitcast_ln54_4_fu_837_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln54_5_fu_842_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln54_6_fu_847_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln54_7_fu_851_p1;
reg   [63:0] min_p_127_reg_2006;
wire   [0:0] and_ln55_1_fu_936_p2;
reg   [0:0] and_ln55_1_reg_2013;
wire   [63:0] min_p_129_fu_942_p3;
reg   [63:0] min_p_129_reg_2019;
wire   [0:0] and_ln55_3_fu_1026_p2;
reg   [0:0] and_ln55_3_reg_2026;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_66_reg_2032;
wire   [63:0] min_p_131_fu_1045_p3;
reg   [63:0] min_p_131_reg_2039;
wire   [7:0] min_s_5_fu_1055_p3;
reg   [7:0] min_s_5_reg_2046;
wire   [0:0] and_ln55_5_fu_1139_p2;
reg   [0:0] and_ln55_5_reg_2051;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_68_reg_2057;
wire   [63:0] min_p_133_fu_1145_p3;
reg   [63:0] min_p_133_reg_2064;
wire   [0:0] icmp_ln55_14_fu_1170_p2;
reg   [0:0] icmp_ln55_14_reg_2070;
wire   [0:0] icmp_ln55_15_fu_1176_p2;
reg   [0:0] icmp_ln55_15_reg_2075;
wire   [0:0] and_ln55_7_fu_1238_p2;
reg   [0:0] and_ln55_7_reg_2080;
wire   [63:0] min_p_135_fu_1253_p3;
reg   [63:0] min_p_135_reg_2086;
wire   [7:0] min_s_7_fu_1263_p3;
reg   [7:0] min_s_7_reg_2093;
wire   [0:0] and_ln55_9_fu_1346_p2;
reg   [0:0] and_ln55_9_reg_2098;
wire   [63:0] min_p_137_fu_1352_p3;
reg   [63:0] min_p_137_reg_2104;
wire   [0:0] and_ln55_11_fu_1435_p2;
reg   [0:0] and_ln55_11_reg_2111;
wire   [63:0] min_p_139_fu_1441_p3;
reg   [63:0] min_p_139_reg_2117;
wire   [0:0] and_ln55_13_fu_1524_p2;
reg   [0:0] and_ln55_13_reg_2124;
wire   [7:0] min_s_10_fu_1552_p3;
reg   [7:0] min_s_10_reg_2130;
wire   [63:0] min_p_141_fu_1560_p3;
reg   [63:0] min_p_141_reg_2135;
reg   [0:0] tmp_236_reg_2142;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_472_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_491_p1;
wire   [63:0] zext_ln54_9_fu_521_p1;
wire   [63:0] zext_ln54_10_fu_546_p1;
wire   [63:0] zext_ln54_11_fu_575_p1;
wire   [63:0] zext_ln54_1_fu_606_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_624_p1;
wire   [63:0] zext_ln54_12_fu_647_p1;
wire   [63:0] zext_ln54_13_fu_674_p1;
wire   [63:0] zext_ln54_14_fu_691_p1;
wire   [63:0] zext_ln54_16_fu_714_p1;
wire   [63:0] zext_ln54_3_fu_736_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_754_p1;
wire   [63:0] zext_ln54_5_fu_782_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_800_p1;
wire   [63:0] zext_ln54_7_fu_827_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_106;
wire   [63:0] min_p_143_fu_1648_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_110;
wire   [7:0] min_s_11_fu_1658_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_114;
wire   [5:0] add_ln53_7_fu_1182_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce1_local;
reg   [12:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    llike_ce1_local;
reg   [12:0] llike_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_383_p0;
reg   [63:0] grp_fu_383_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_387_p0;
reg   [63:0] grp_fu_387_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [12:0] tmp_s_fu_464_p3;
wire   [10:0] shl_ln2_fu_477_p3;
wire   [10:0] add_ln54_fu_485_p2;
wire   [4:0] lshr_ln8_5_fu_503_p4;
wire   [12:0] tmp_237_fu_513_p3;
wire   [4:0] add_ln8_fu_532_p2;
wire   [12:0] tmp_238_fu_538_p3;
wire   [4:0] lshr_ln8_6_fu_557_p4;
wire   [12:0] tmp_239_fu_567_p3;
wire   [6:0] zext_ln17_fu_450_p1;
wire   [10:0] shl_ln54_1_fu_594_p3;
wire   [10:0] add_ln54_1_fu_601_p2;
wire   [10:0] shl_ln54_2_fu_612_p3;
wire   [10:0] add_ln54_2_fu_619_p2;
wire   [4:0] add_ln8_1_fu_635_p2;
wire   [12:0] tmp_240_fu_640_p3;
wire   [4:0] lshr_ln8_7_fu_657_p4;
wire   [12:0] tmp_241_fu_667_p3;
wire   [4:0] add_ln8_2_fu_679_p2;
wire   [12:0] tmp_242_fu_684_p3;
wire   [5:0] lshr_ln9_2_fu_696_p4;
wire   [12:0] zext_ln54_15_fu_705_p1;
wire   [12:0] add_ln54_8_fu_709_p2;
wire   [10:0] shl_ln54_3_fu_724_p3;
wire   [10:0] add_ln54_3_fu_731_p2;
wire   [10:0] shl_ln54_4_fu_742_p3;
wire   [10:0] add_ln54_4_fu_749_p2;
wire   [10:0] shl_ln54_5_fu_770_p3;
wire   [10:0] add_ln54_5_fu_777_p2;
wire   [10:0] shl_ln54_6_fu_788_p3;
wire   [10:0] add_ln54_6_fu_795_p2;
wire   [10:0] shl_ln54_7_fu_814_p3;
wire   [10:0] add_ln54_7_fu_822_p2;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_859_p1;
wire   [63:0] bitcast_ln55_1_fu_877_p1;
wire   [10:0] tmp_213_fu_863_p4;
wire   [51:0] trunc_ln55_fu_873_p1;
wire   [0:0] icmp_ln55_1_fu_900_p2;
wire   [0:0] icmp_ln55_fu_894_p2;
wire   [10:0] tmp_214_fu_880_p4;
wire   [51:0] trunc_ln55_1_fu_890_p1;
wire   [0:0] icmp_ln55_3_fu_918_p2;
wire   [0:0] icmp_ln55_2_fu_912_p2;
wire   [0:0] or_ln55_fu_906_p2;
wire   [0:0] and_ln55_fu_930_p2;
wire   [0:0] or_ln55_1_fu_924_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_949_p1;
wire   [63:0] bitcast_ln55_3_fu_967_p1;
wire   [10:0] tmp_216_fu_953_p4;
wire   [51:0] trunc_ln55_2_fu_963_p1;
wire   [0:0] icmp_ln55_5_fu_990_p2;
wire   [0:0] icmp_ln55_4_fu_984_p2;
wire   [10:0] tmp_217_fu_970_p4;
wire   [51:0] trunc_ln55_3_fu_980_p1;
wire   [0:0] icmp_ln55_7_fu_1008_p2;
wire   [0:0] icmp_ln55_6_fu_1002_p2;
wire   [0:0] or_ln55_3_fu_1014_p2;
wire   [0:0] or_ln55_2_fu_996_p2;
wire   [0:0] and_ln55_2_fu_1020_p2;
wire   [7:0] zext_ln55_fu_1035_p1;
wire   [7:0] zext_ln55_1_fu_1052_p1;
wire   [7:0] min_s_4_fu_1038_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_1062_p1;
wire   [63:0] bitcast_ln55_5_fu_1080_p1;
wire   [10:0] tmp_219_fu_1066_p4;
wire   [51:0] trunc_ln55_4_fu_1076_p1;
wire   [0:0] icmp_ln55_9_fu_1103_p2;
wire   [0:0] icmp_ln55_8_fu_1097_p2;
wire   [10:0] tmp_220_fu_1083_p4;
wire   [51:0] trunc_ln55_5_fu_1093_p1;
wire   [0:0] icmp_ln55_11_fu_1121_p2;
wire   [0:0] icmp_ln55_10_fu_1115_p2;
wire   [0:0] or_ln55_5_fu_1127_p2;
wire   [0:0] or_ln55_4_fu_1109_p2;
wire   [0:0] and_ln55_4_fu_1133_p2;
wire   [63:0] bitcast_ln55_7_fu_1152_p1;
wire   [10:0] tmp_223_fu_1156_p4;
wire   [51:0] trunc_ln55_7_fu_1166_p1;
wire   [63:0] bitcast_ln55_6_fu_1192_p1;
wire   [10:0] tmp_222_fu_1196_p4;
wire   [51:0] trunc_ln55_6_fu_1206_p1;
wire   [0:0] icmp_ln55_13_fu_1216_p2;
wire   [0:0] icmp_ln55_12_fu_1210_p2;
wire   [0:0] or_ln55_7_fu_1228_p2;
wire   [0:0] or_ln55_6_fu_1222_p2;
wire   [0:0] and_ln55_6_fu_1232_p2;
wire   [7:0] zext_ln55_2_fu_1244_p1;
wire   [7:0] zext_ln55_3_fu_1260_p1;
wire   [7:0] min_s_6_fu_1247_p3;
wire   [63:0] bitcast_ln55_8_fu_1270_p1;
wire   [63:0] bitcast_ln55_9_fu_1287_p1;
wire   [10:0] tmp_225_fu_1273_p4;
wire   [51:0] trunc_ln55_8_fu_1283_p1;
wire   [0:0] icmp_ln55_17_fu_1310_p2;
wire   [0:0] icmp_ln55_16_fu_1304_p2;
wire   [10:0] tmp_226_fu_1290_p4;
wire   [51:0] trunc_ln55_9_fu_1300_p1;
wire   [0:0] icmp_ln55_19_fu_1328_p2;
wire   [0:0] icmp_ln55_18_fu_1322_p2;
wire   [0:0] or_ln55_9_fu_1334_p2;
wire   [0:0] or_ln55_8_fu_1316_p2;
wire   [0:0] and_ln55_8_fu_1340_p2;
wire   [63:0] bitcast_ln55_10_fu_1358_p1;
wire   [63:0] bitcast_ln55_11_fu_1376_p1;
wire   [10:0] tmp_228_fu_1362_p4;
wire   [51:0] trunc_ln55_10_fu_1372_p1;
wire   [0:0] icmp_ln55_21_fu_1399_p2;
wire   [0:0] icmp_ln55_20_fu_1393_p2;
wire   [10:0] tmp_229_fu_1379_p4;
wire   [51:0] trunc_ln55_11_fu_1389_p1;
wire   [0:0] icmp_ln55_23_fu_1417_p2;
wire   [0:0] icmp_ln55_22_fu_1411_p2;
wire   [0:0] or_ln55_11_fu_1423_p2;
wire   [0:0] or_ln55_10_fu_1405_p2;
wire   [0:0] and_ln55_10_fu_1429_p2;
wire   [63:0] bitcast_ln55_12_fu_1448_p1;
wire   [63:0] bitcast_ln55_13_fu_1465_p1;
wire   [10:0] tmp_231_fu_1451_p4;
wire   [51:0] trunc_ln55_12_fu_1461_p1;
wire   [0:0] icmp_ln55_25_fu_1488_p2;
wire   [0:0] icmp_ln55_24_fu_1482_p2;
wire   [10:0] tmp_232_fu_1468_p4;
wire   [51:0] trunc_ln55_13_fu_1478_p1;
wire   [0:0] icmp_ln55_27_fu_1506_p2;
wire   [0:0] icmp_ln55_26_fu_1500_p2;
wire   [0:0] or_ln55_13_fu_1512_p2;
wire   [0:0] or_ln55_12_fu_1494_p2;
wire   [0:0] and_ln55_12_fu_1518_p2;
wire   [7:0] zext_ln55_4_fu_1530_p1;
wire   [7:0] zext_ln55_5_fu_1539_p1;
wire   [7:0] min_s_8_fu_1533_p3;
wire   [7:0] zext_ln55_6_fu_1549_p1;
wire   [7:0] min_s_9_fu_1542_p3;
wire   [63:0] bitcast_ln55_14_fu_1566_p1;
wire   [63:0] bitcast_ln55_15_fu_1584_p1;
wire   [10:0] tmp_234_fu_1570_p4;
wire   [51:0] trunc_ln55_14_fu_1580_p1;
wire   [0:0] icmp_ln55_29_fu_1607_p2;
wire   [0:0] icmp_ln55_28_fu_1601_p2;
wire   [10:0] tmp_235_fu_1587_p4;
wire   [51:0] trunc_ln55_15_fu_1597_p1;
wire   [0:0] icmp_ln55_31_fu_1625_p2;
wire   [0:0] icmp_ln55_30_fu_1619_p2;
wire   [0:0] or_ln55_15_fu_1631_p2;
wire   [0:0] or_ln55_14_fu_1613_p2;
wire   [0:0] and_ln55_14_fu_1637_p2;
wire   [0:0] and_ln55_15_fu_1643_p2;
wire   [7:0] zext_ln55_7_fu_1655_p1;
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
#0 min_p_fu_106 = 64'd0;
#0 min_s_fu_110 = 8'd0;
#0 min_s_1_fu_114 = 6'd0;
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
        min_p_fu_106 <= min_p_163;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_1794_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_106 <= min_p_143_fu_1648_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_114 <= 6'd1;
    end else if (((tmp_1_reg_1794 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_114 <= add_ln53_7_fu_1182_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_110 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_1794_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_110 <= min_s_11_fu_1658_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1766 <= add_ln53_1_fu_526_p2;
        add_ln53_1_reg_1766_pp0_iter1_reg <= add_ln53_1_reg_1766;
        add_ln53_2_reg_1777 <= add_ln53_2_fu_551_p2;
        add_ln53_2_reg_1777_pp0_iter1_reg <= add_ln53_2_reg_1777;
        add_ln53_6_reg_1788 <= add_ln53_6_fu_580_p2;
        add_ln53_reg_1755 <= add_ln53_fu_497_p2;
        and_ln55_7_reg_2080 <= and_ln55_7_fu_1238_p2;
        lshr_ln8_4_reg_1734 <= {{ap_sig_allocacmp_s[5:1]}};
        s_reg_1725 <= ap_sig_allocacmp_s;
        tmp_1_reg_1794 <= add_ln53_6_fu_580_p2[32'd6];
        tmp_1_reg_1794_pp0_iter1_reg <= tmp_1_reg_1794;
        zext_ln52_2_cast_reg_1714[6 : 0] <= zext_ln52_2_cast_fu_428_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_3_reg_1838 <= add_ln53_3_fu_630_p2;
        add_ln53_3_reg_1838_pp0_iter1_reg <= add_ln53_3_reg_1838;
        add_ln53_4_reg_1849 <= add_ln53_4_fu_652_p2;
        add_ln53_4_reg_1849_pp0_iter1_reg <= add_ln53_4_reg_1849;
        min_p_135_reg_2086 <= min_p_135_fu_1253_p3;
        min_s_7_reg_2093 <= min_s_7_fu_1263_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_5_reg_1905 <= add_ln53_5_fu_760_p2;
        add_ln53_5_reg_1905_pp0_iter1_reg <= add_ln53_5_reg_1905;
        and_ln55_9_reg_2098 <= and_ln55_9_fu_1346_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_2111 <= and_ln55_11_fu_1435_p2;
        trunc_ln54_reg_1961 <= trunc_ln54_fu_811_p1;
        trunc_ln54_reg_1961_pp0_iter1_reg <= trunc_ln54_reg_1961;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_2124 <= and_ln55_13_fu_1524_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_2013 <= and_ln55_1_fu_936_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_2026 <= and_ln55_3_fu_1026_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_2051 <= and_ln55_5_fu_1139_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_2070 <= icmp_ln55_14_fu_1170_p2;
        icmp_ln55_15_reg_2075 <= icmp_ln55_15_fu_1176_p2;
        min_p_133_reg_2064 <= min_p_133_fu_1145_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_32_reg_1818 <= llike_1_q0;
        llike_1_load_reg_1798 <= llike_1_q1;
        llike_load_32_reg_1833 <= llike_q0;
        llike_load_reg_1803 <= llike_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_33_reg_1885 <= llike_1_q1;
        llike_1_load_34_reg_1911 <= llike_1_q0;
        llike_load_33_reg_1900 <= llike_q1;
        llike_load_34_reg_1916 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_127_reg_2006 <= min_p_fu_106;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_129_reg_2019 <= min_p_129_fu_942_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_131_reg_2039 <= min_p_131_fu_1045_p3;
        min_s_5_reg_2046 <= min_s_5_fu_1055_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_137_reg_2104 <= min_p_137_fu_1352_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_139_reg_2117 <= min_p_139_fu_1441_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_141_reg_2135 <= min_p_141_fu_1560_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_2130 <= min_s_10_fu_1552_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_66_reg_2032 <= grp_fu_271_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_68_reg_2057 <= grp_fu_271_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_405 <= grp_fu_391_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_409 <= grp_fu_398_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_413 <= grp_fu_271_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_418 <= grp_fu_271_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_423 <= grp_fu_271_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln54_3_reg_1926 <= grp_fu_391_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln54_6_reg_1956 <= grp_fu_398_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        select_ln54_7_reg_1981 <= grp_fu_398_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_236_reg_2142 <= grp_fu_536_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_1794 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_1794_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_114;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_383_p0 = llike_load_34_reg_1916;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_383_p0 = llike_1_load_34_reg_1911;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_383_p0 = llike_load_33_reg_1900;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_383_p0 = llike_1_load_33_reg_1885;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_383_p0 = llike_load_32_reg_1833;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_383_p0 = llike_1_load_32_reg_1818;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_383_p0 = llike_load_reg_1803;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_383_p0 = llike_1_load_reg_1798;
        end else begin
            grp_fu_383_p0 = 'bx;
        end
    end else begin
        grp_fu_383_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_383_p1 = bitcast_ln54_7_fu_851_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_383_p1 = bitcast_ln54_6_fu_847_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_383_p1 = bitcast_ln54_5_fu_842_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_383_p1 = bitcast_ln54_4_fu_837_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_383_p1 = bitcast_ln54_3_fu_833_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_383_p1 = bitcast_ln54_2_fu_806_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_383_p1 = bitcast_ln54_1_fu_765_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_383_p1 = bitcast_ln54_fu_719_p1;
        end else begin
            grp_fu_383_p1 = 'bx;
        end
    end else begin
        grp_fu_383_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_387_p0 = p_68_reg_2057;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_387_p0 = p_66_reg_2032;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_387_p0 = reg_423;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_387_p0 = reg_418;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_387_p0 = reg_413;
    end else begin
        grp_fu_387_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_387_p1 = min_p_141_fu_1560_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_387_p1 = min_p_139_fu_1441_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_387_p1 = min_p_137_fu_1352_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_387_p1 = min_p_135_fu_1253_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_387_p1 = min_p_133_fu_1145_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_387_p1 = min_p_131_fu_1045_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_387_p1 = min_p_129_fu_942_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_387_p1 = min_p_fu_106;
    end else begin
        grp_fu_387_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln54_14_fu_691_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln54_10_fu_546_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address1_local = zext_ln54_12_fu_647_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln54_8_fu_472_p1;
        end else begin
            llike_1_address1_local = 'bx;
        end
    end else begin
        llike_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_16_fu_714_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_11_fu_575_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln54_13_fu_674_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln54_9_fu_521_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_1_reg_1794_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_782_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_736_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_624_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_491_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_0_address1_local = zext_ln54_7_fu_827_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_800_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_754_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_606_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln54_5_fu_782_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_736_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_624_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_491_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            transition_1_address1_local = zext_ln54_7_fu_827_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_800_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_754_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_606_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
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
assign add_ln53_1_fu_526_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_551_p2 = (ap_sig_allocacmp_s + 6'd3);
assign add_ln53_3_fu_630_p2 = (s_reg_1725 + 6'd4);
assign add_ln53_4_fu_652_p2 = (s_reg_1725 + 6'd5);
assign add_ln53_5_fu_760_p2 = (s_reg_1725 + 6'd6);
assign add_ln53_6_fu_580_p2 = (zext_ln17_fu_450_p1 + 7'd7);
assign add_ln53_7_fu_1182_p2 = (s_reg_1725 + 6'd8);
assign add_ln53_fu_497_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_601_p2 = (shl_ln54_1_fu_594_p3 + zext_ln52_2_cast_reg_1714);
assign add_ln54_2_fu_619_p2 = (shl_ln54_2_fu_612_p3 + zext_ln52_2_cast_reg_1714);
assign add_ln54_3_fu_731_p2 = (shl_ln54_3_fu_724_p3 + zext_ln52_2_cast_reg_1714);
assign add_ln54_4_fu_749_p2 = (shl_ln54_4_fu_742_p3 + zext_ln52_2_cast_reg_1714);
assign add_ln54_5_fu_777_p2 = (shl_ln54_5_fu_770_p3 + zext_ln52_2_cast_reg_1714);
assign add_ln54_6_fu_795_p2 = (shl_ln54_6_fu_788_p3 + zext_ln52_2_cast_reg_1714);
assign add_ln54_7_fu_822_p2 = (shl_ln54_7_fu_814_p3 + zext_ln52_2_cast_reg_1714);
assign add_ln54_8_fu_709_p2 = (zext_ln52_3 + zext_ln54_15_fu_705_p1);
assign add_ln54_fu_485_p2 = (shl_ln2_fu_477_p3 + zext_ln52_2_cast_fu_428_p1);
assign add_ln8_1_fu_635_p2 = (lshr_ln8_4_reg_1734 + 5'd2);
assign add_ln8_2_fu_679_p2 = (lshr_ln8_4_reg_1734 + 5'd3);
assign add_ln8_fu_532_p2 = (lshr_ln8_4_fu_454_p4 + 5'd1);
assign and_ln55_10_fu_1429_p2 = (or_ln55_11_fu_1423_p2 & or_ln55_10_fu_1405_p2);
assign and_ln55_11_fu_1435_p2 = (grp_fu_536_p_dout0 & and_ln55_10_fu_1429_p2);
assign and_ln55_12_fu_1518_p2 = (or_ln55_13_fu_1512_p2 & or_ln55_12_fu_1494_p2);
assign and_ln55_13_fu_1524_p2 = (grp_fu_536_p_dout0 & and_ln55_12_fu_1518_p2);
assign and_ln55_14_fu_1637_p2 = (or_ln55_15_fu_1631_p2 & or_ln55_14_fu_1613_p2);
assign and_ln55_15_fu_1643_p2 = (tmp_236_reg_2142 & and_ln55_14_fu_1637_p2);
assign and_ln55_1_fu_936_p2 = (or_ln55_1_fu_924_p2 & and_ln55_fu_930_p2);
assign and_ln55_2_fu_1020_p2 = (or_ln55_3_fu_1014_p2 & or_ln55_2_fu_996_p2);
assign and_ln55_3_fu_1026_p2 = (grp_fu_536_p_dout0 & and_ln55_2_fu_1020_p2);
assign and_ln55_4_fu_1133_p2 = (or_ln55_5_fu_1127_p2 & or_ln55_4_fu_1109_p2);
assign and_ln55_5_fu_1139_p2 = (grp_fu_536_p_dout0 & and_ln55_4_fu_1133_p2);
assign and_ln55_6_fu_1232_p2 = (or_ln55_7_fu_1228_p2 & or_ln55_6_fu_1222_p2);
assign and_ln55_7_fu_1238_p2 = (grp_fu_536_p_dout0 & and_ln55_6_fu_1232_p2);
assign and_ln55_8_fu_1340_p2 = (or_ln55_9_fu_1334_p2 & or_ln55_8_fu_1316_p2);
assign and_ln55_9_fu_1346_p2 = (grp_fu_536_p_dout0 & and_ln55_8_fu_1340_p2);
assign and_ln55_fu_930_p2 = (or_ln55_fu_906_p2 & grp_fu_536_p_dout0);
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
assign bitcast_ln54_1_fu_765_p1 = reg_409;
assign bitcast_ln54_2_fu_806_p1 = reg_405;
assign bitcast_ln54_3_fu_833_p1 = select_ln54_3_reg_1926;
assign bitcast_ln54_4_fu_837_p1 = reg_409;
assign bitcast_ln54_5_fu_842_p1 = reg_405;
assign bitcast_ln54_6_fu_847_p1 = select_ln54_6_reg_1956;
assign bitcast_ln54_7_fu_851_p1 = select_ln54_7_reg_1981;
assign bitcast_ln54_fu_719_p1 = reg_405;
assign bitcast_ln55_10_fu_1358_p1 = reg_418;
assign bitcast_ln55_11_fu_1376_p1 = min_p_137_reg_2104;
assign bitcast_ln55_12_fu_1448_p1 = p_68_reg_2057;
assign bitcast_ln55_13_fu_1465_p1 = min_p_139_reg_2117;
assign bitcast_ln55_14_fu_1566_p1 = reg_423;
assign bitcast_ln55_15_fu_1584_p1 = min_p_141_reg_2135;
assign bitcast_ln55_1_fu_877_p1 = min_p_127_reg_2006;
assign bitcast_ln55_2_fu_949_p1 = reg_418;
assign bitcast_ln55_3_fu_967_p1 = min_p_129_reg_2019;
assign bitcast_ln55_4_fu_1062_p1 = reg_423;
assign bitcast_ln55_5_fu_1080_p1 = min_p_131_reg_2039;
assign bitcast_ln55_6_fu_1192_p1 = reg_413;
assign bitcast_ln55_7_fu_1152_p1 = min_p_133_fu_1145_p3;
assign bitcast_ln55_8_fu_1270_p1 = p_66_reg_2032;
assign bitcast_ln55_9_fu_1287_p1 = min_p_135_reg_2086;
assign bitcast_ln55_fu_859_p1 = reg_413;
assign grp_fu_271_p_ce = 1'b1;
assign grp_fu_271_p_din0 = grp_fu_383_p0;
assign grp_fu_271_p_din1 = grp_fu_383_p1;
assign grp_fu_271_p_opcode = 2'd0;
assign grp_fu_391_p3 = ((empty[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_398_p3 = ((empty[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_536_p_ce = 1'b1;
assign grp_fu_536_p_din0 = grp_fu_387_p0;
assign grp_fu_536_p_din1 = grp_fu_387_p1;
assign grp_fu_536_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1115_p2 = ((tmp_220_fu_1083_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1121_p2 = ((trunc_ln55_5_fu_1093_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1210_p2 = ((tmp_222_fu_1196_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1216_p2 = ((trunc_ln55_6_fu_1206_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1170_p2 = ((tmp_223_fu_1156_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1176_p2 = ((trunc_ln55_7_fu_1166_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1304_p2 = ((tmp_225_fu_1273_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1310_p2 = ((trunc_ln55_8_fu_1283_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1322_p2 = ((tmp_226_fu_1290_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1328_p2 = ((trunc_ln55_9_fu_1300_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_900_p2 = ((trunc_ln55_fu_873_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1393_p2 = ((tmp_228_fu_1362_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1399_p2 = ((trunc_ln55_10_fu_1372_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1411_p2 = ((tmp_229_fu_1379_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1417_p2 = ((trunc_ln55_11_fu_1389_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1482_p2 = ((tmp_231_fu_1451_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1488_p2 = ((trunc_ln55_12_fu_1461_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1500_p2 = ((tmp_232_fu_1468_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1506_p2 = ((trunc_ln55_13_fu_1478_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_1601_p2 = ((tmp_234_fu_1570_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_1607_p2 = ((trunc_ln55_14_fu_1580_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_912_p2 = ((tmp_214_fu_880_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_1619_p2 = ((tmp_235_fu_1587_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_1625_p2 = ((trunc_ln55_15_fu_1597_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_918_p2 = ((trunc_ln55_1_fu_890_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_984_p2 = ((tmp_216_fu_953_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_990_p2 = ((trunc_ln55_2_fu_963_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_1002_p2 = ((tmp_217_fu_970_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_1008_p2 = ((trunc_ln55_3_fu_980_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1097_p2 = ((tmp_219_fu_1066_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1103_p2 = ((trunc_ln55_4_fu_1076_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_894_p2 = ((tmp_213_fu_863_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln8_4_fu_454_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign lshr_ln8_5_fu_503_p4 = {{add_ln53_fu_497_p2[5:1]}};
assign lshr_ln8_6_fu_557_p4 = {{add_ln53_2_fu_551_p2[5:1]}};
assign lshr_ln8_7_fu_657_p4 = {{add_ln53_4_fu_652_p2[5:1]}};
assign lshr_ln9_2_fu_696_p4 = {{add_ln53_6_reg_1788[6:1]}};
assign min_p_129_fu_942_p3 = ((and_ln55_1_reg_2013[0:0] == 1'b1) ? reg_413 : min_p_127_reg_2006);
assign min_p_131_fu_1045_p3 = ((and_ln55_3_reg_2026[0:0] == 1'b1) ? reg_418 : min_p_129_reg_2019);
assign min_p_133_fu_1145_p3 = ((and_ln55_5_reg_2051[0:0] == 1'b1) ? reg_423 : min_p_131_reg_2039);
assign min_p_135_fu_1253_p3 = ((and_ln55_7_reg_2080[0:0] == 1'b1) ? reg_413 : min_p_133_reg_2064);
assign min_p_137_fu_1352_p3 = ((and_ln55_9_reg_2098[0:0] == 1'b1) ? p_66_reg_2032 : min_p_135_reg_2086);
assign min_p_139_fu_1441_p3 = ((and_ln55_11_reg_2111[0:0] == 1'b1) ? reg_418 : min_p_137_reg_2104);
assign min_p_141_fu_1560_p3 = ((and_ln55_13_reg_2124[0:0] == 1'b1) ? p_68_reg_2057 : min_p_139_reg_2117);
assign min_p_143_fu_1648_p3 = ((and_ln55_15_fu_1643_p2[0:0] == 1'b1) ? reg_423 : min_p_141_reg_2135);
assign min_s_10_fu_1552_p3 = ((and_ln55_13_reg_2124[0:0] == 1'b1) ? zext_ln55_6_fu_1549_p1 : min_s_9_fu_1542_p3);
assign min_s_11_fu_1658_p3 = ((and_ln55_15_fu_1643_p2[0:0] == 1'b1) ? zext_ln55_7_fu_1655_p1 : min_s_10_reg_2130);
assign min_s_18_out = ((and_ln55_13_reg_2124[0:0] == 1'b1) ? zext_ln55_6_fu_1549_p1 : min_s_9_fu_1542_p3);
assign min_s_4_fu_1038_p3 = ((and_ln55_1_reg_2013[0:0] == 1'b1) ? zext_ln55_fu_1035_p1 : min_s_fu_110);
assign min_s_5_fu_1055_p3 = ((and_ln55_3_reg_2026[0:0] == 1'b1) ? zext_ln55_1_fu_1052_p1 : min_s_4_fu_1038_p3);
assign min_s_6_fu_1247_p3 = ((and_ln55_5_reg_2051[0:0] == 1'b1) ? zext_ln55_2_fu_1244_p1 : min_s_5_reg_2046);
assign min_s_7_fu_1263_p3 = ((and_ln55_7_reg_2080[0:0] == 1'b1) ? zext_ln55_3_fu_1260_p1 : min_s_6_fu_1247_p3);
assign min_s_8_fu_1533_p3 = ((and_ln55_9_reg_2098[0:0] == 1'b1) ? zext_ln55_4_fu_1530_p1 : min_s_7_reg_2093);
assign min_s_9_fu_1542_p3 = ((and_ln55_11_reg_2111[0:0] == 1'b1) ? zext_ln55_5_fu_1539_p1 : min_s_8_fu_1533_p3);
assign or_ln55_10_fu_1405_p2 = (icmp_ln55_21_fu_1399_p2 | icmp_ln55_20_fu_1393_p2);
assign or_ln55_11_fu_1423_p2 = (icmp_ln55_23_fu_1417_p2 | icmp_ln55_22_fu_1411_p2);
assign or_ln55_12_fu_1494_p2 = (icmp_ln55_25_fu_1488_p2 | icmp_ln55_24_fu_1482_p2);
assign or_ln55_13_fu_1512_p2 = (icmp_ln55_27_fu_1506_p2 | icmp_ln55_26_fu_1500_p2);
assign or_ln55_14_fu_1613_p2 = (icmp_ln55_29_fu_1607_p2 | icmp_ln55_28_fu_1601_p2);
assign or_ln55_15_fu_1631_p2 = (icmp_ln55_31_fu_1625_p2 | icmp_ln55_30_fu_1619_p2);
assign or_ln55_1_fu_924_p2 = (icmp_ln55_3_fu_918_p2 | icmp_ln55_2_fu_912_p2);
assign or_ln55_2_fu_996_p2 = (icmp_ln55_5_fu_990_p2 | icmp_ln55_4_fu_984_p2);
assign or_ln55_3_fu_1014_p2 = (icmp_ln55_7_fu_1008_p2 | icmp_ln55_6_fu_1002_p2);
assign or_ln55_4_fu_1109_p2 = (icmp_ln55_9_fu_1103_p2 | icmp_ln55_8_fu_1097_p2);
assign or_ln55_5_fu_1127_p2 = (icmp_ln55_11_fu_1121_p2 | icmp_ln55_10_fu_1115_p2);
assign or_ln55_6_fu_1222_p2 = (icmp_ln55_13_fu_1216_p2 | icmp_ln55_12_fu_1210_p2);
assign or_ln55_7_fu_1228_p2 = (icmp_ln55_15_reg_2075 | icmp_ln55_14_reg_2070);
assign or_ln55_8_fu_1316_p2 = (icmp_ln55_17_fu_1310_p2 | icmp_ln55_16_fu_1304_p2);
assign or_ln55_9_fu_1334_p2 = (icmp_ln55_19_fu_1328_p2 | icmp_ln55_18_fu_1322_p2);
assign or_ln55_fu_906_p2 = (icmp_ln55_fu_894_p2 | icmp_ln55_1_fu_900_p2);
assign shl_ln2_fu_477_p3 = {{ap_sig_allocacmp_s}, {5'd0}};
assign shl_ln54_1_fu_594_p3 = {{add_ln53_reg_1755}, {5'd0}};
assign shl_ln54_2_fu_612_p3 = {{add_ln53_1_reg_1766}, {5'd0}};
assign shl_ln54_3_fu_724_p3 = {{add_ln53_2_reg_1777}, {5'd0}};
assign shl_ln54_4_fu_742_p3 = {{add_ln53_3_reg_1838}, {5'd0}};
assign shl_ln54_5_fu_770_p3 = {{add_ln53_4_reg_1849}, {5'd0}};
assign shl_ln54_6_fu_788_p3 = {{add_ln53_5_reg_1905}, {5'd0}};
assign shl_ln54_7_fu_814_p3 = {{trunc_ln54_fu_811_p1}, {5'd0}};
assign tmp_213_fu_863_p4 = {{bitcast_ln55_fu_859_p1[62:52]}};
assign tmp_214_fu_880_p4 = {{bitcast_ln55_1_fu_877_p1[62:52]}};
assign tmp_216_fu_953_p4 = {{bitcast_ln55_2_fu_949_p1[62:52]}};
assign tmp_217_fu_970_p4 = {{bitcast_ln55_3_fu_967_p1[62:52]}};
assign tmp_219_fu_1066_p4 = {{bitcast_ln55_4_fu_1062_p1[62:52]}};
assign tmp_220_fu_1083_p4 = {{bitcast_ln55_5_fu_1080_p1[62:52]}};
assign tmp_222_fu_1196_p4 = {{bitcast_ln55_6_fu_1192_p1[62:52]}};
assign tmp_223_fu_1156_p4 = {{bitcast_ln55_7_fu_1152_p1[62:52]}};
assign tmp_225_fu_1273_p4 = {{bitcast_ln55_8_fu_1270_p1[62:52]}};
assign tmp_226_fu_1290_p4 = {{bitcast_ln55_9_fu_1287_p1[62:52]}};
assign tmp_228_fu_1362_p4 = {{bitcast_ln55_10_fu_1358_p1[62:52]}};
assign tmp_229_fu_1379_p4 = {{bitcast_ln55_11_fu_1376_p1[62:52]}};
assign tmp_231_fu_1451_p4 = {{bitcast_ln55_12_fu_1448_p1[62:52]}};
assign tmp_232_fu_1468_p4 = {{bitcast_ln55_13_fu_1465_p1[62:52]}};
assign tmp_234_fu_1570_p4 = {{bitcast_ln55_14_fu_1566_p1[62:52]}};
assign tmp_235_fu_1587_p4 = {{bitcast_ln55_15_fu_1584_p1[62:52]}};
assign tmp_237_fu_513_p3 = {{t_1}, {lshr_ln8_5_fu_503_p4}};
assign tmp_238_fu_538_p3 = {{t_1}, {add_ln8_fu_532_p2}};
assign tmp_239_fu_567_p3 = {{t_1}, {lshr_ln8_6_fu_557_p4}};
assign tmp_240_fu_640_p3 = {{t_1}, {add_ln8_1_fu_635_p2}};
assign tmp_241_fu_667_p3 = {{t_1}, {lshr_ln8_7_fu_657_p4}};
assign tmp_242_fu_684_p3 = {{t_1}, {add_ln8_2_fu_679_p2}};
assign tmp_s_fu_464_p3 = {{t_1}, {lshr_ln8_4_fu_454_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln54_fu_811_p1 = add_ln53_6_reg_1788[5:0];
assign trunc_ln55_10_fu_1372_p1 = bitcast_ln55_10_fu_1358_p1[51:0];
assign trunc_ln55_11_fu_1389_p1 = bitcast_ln55_11_fu_1376_p1[51:0];
assign trunc_ln55_12_fu_1461_p1 = bitcast_ln55_12_fu_1448_p1[51:0];
assign trunc_ln55_13_fu_1478_p1 = bitcast_ln55_13_fu_1465_p1[51:0];
assign trunc_ln55_14_fu_1580_p1 = bitcast_ln55_14_fu_1566_p1[51:0];
assign trunc_ln55_15_fu_1597_p1 = bitcast_ln55_15_fu_1584_p1[51:0];
assign trunc_ln55_1_fu_890_p1 = bitcast_ln55_1_fu_877_p1[51:0];
assign trunc_ln55_2_fu_963_p1 = bitcast_ln55_2_fu_949_p1[51:0];
assign trunc_ln55_3_fu_980_p1 = bitcast_ln55_3_fu_967_p1[51:0];
assign trunc_ln55_4_fu_1076_p1 = bitcast_ln55_4_fu_1062_p1[51:0];
assign trunc_ln55_5_fu_1093_p1 = bitcast_ln55_5_fu_1080_p1[51:0];
assign trunc_ln55_6_fu_1206_p1 = bitcast_ln55_6_fu_1192_p1[51:0];
assign trunc_ln55_7_fu_1166_p1 = bitcast_ln55_7_fu_1152_p1[51:0];
assign trunc_ln55_8_fu_1283_p1 = bitcast_ln55_8_fu_1270_p1[51:0];
assign trunc_ln55_9_fu_1300_p1 = bitcast_ln55_9_fu_1287_p1[51:0];
assign trunc_ln55_fu_873_p1 = bitcast_ln55_fu_859_p1[51:0];
assign zext_ln17_fu_450_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_428_p1 = zext_ln52_2;
assign zext_ln54_10_fu_546_p1 = tmp_238_fu_538_p3;
assign zext_ln54_11_fu_575_p1 = tmp_239_fu_567_p3;
assign zext_ln54_12_fu_647_p1 = tmp_240_fu_640_p3;
assign zext_ln54_13_fu_674_p1 = tmp_241_fu_667_p3;
assign zext_ln54_14_fu_691_p1 = tmp_242_fu_684_p3;
assign zext_ln54_15_fu_705_p1 = lshr_ln9_2_fu_696_p4;
assign zext_ln54_16_fu_714_p1 = add_ln54_8_fu_709_p2;
assign zext_ln54_1_fu_606_p1 = add_ln54_1_fu_601_p2;
assign zext_ln54_2_fu_624_p1 = add_ln54_2_fu_619_p2;
assign zext_ln54_3_fu_736_p1 = add_ln54_3_fu_731_p2;
assign zext_ln54_4_fu_754_p1 = add_ln54_4_fu_749_p2;
assign zext_ln54_5_fu_782_p1 = add_ln54_5_fu_777_p2;
assign zext_ln54_6_fu_800_p1 = add_ln54_6_fu_795_p2;
assign zext_ln54_7_fu_827_p1 = add_ln54_7_fu_822_p2;
assign zext_ln54_8_fu_472_p1 = tmp_s_fu_464_p3;
assign zext_ln54_9_fu_521_p1 = tmp_237_fu_513_p3;
assign zext_ln54_fu_491_p1 = add_ln54_fu_485_p2;
assign zext_ln55_1_fu_1052_p1 = add_ln53_reg_1755;
assign zext_ln55_2_fu_1244_p1 = add_ln53_1_reg_1766_pp0_iter1_reg;
assign zext_ln55_3_fu_1260_p1 = add_ln53_2_reg_1777_pp0_iter1_reg;
assign zext_ln55_4_fu_1530_p1 = add_ln53_3_reg_1838_pp0_iter1_reg;
assign zext_ln55_5_fu_1539_p1 = add_ln53_4_reg_1849_pp0_iter1_reg;
assign zext_ln55_6_fu_1549_p1 = add_ln53_5_reg_1905_pp0_iter1_reg;
assign zext_ln55_7_fu_1655_p1 = trunc_ln54_reg_1961_pp0_iter1_reg;
assign zext_ln55_fu_1035_p1 = s_reg_1725;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1714[10:7] <= 4'b0000;
end
endmodule 
