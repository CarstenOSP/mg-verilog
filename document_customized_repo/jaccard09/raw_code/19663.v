module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_163,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty,zext_ln52_3,llike_address0,llike_ce0,llike_q0,min_s_18_out,min_s_18_out_ap_vld,grp_fu_319_p_din0,grp_fu_319_p_din1,grp_fu_319_p_opcode,grp_fu_319_p_dout0,grp_fu_319_p_ce,grp_fu_584_p_din0,grp_fu_584_p_din1,grp_fu_584_p_opcode,grp_fu_584_p_dout0,grp_fu_584_p_ce); 
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
output  [10:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
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
input  [10:0] zext_ln52_3;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_18_out;
output   min_s_18_out_ap_vld;
output  [63:0] grp_fu_319_p_din0;
output  [63:0] grp_fu_319_p_din1;
output  [1:0] grp_fu_319_p_opcode;
input  [63:0] grp_fu_319_p_dout0;
output   grp_fu_319_p_ce;
output  [63:0] grp_fu_584_p_din0;
output  [63:0] grp_fu_584_p_din1;
output  [4:0] grp_fu_584_p_opcode;
input  [0:0] grp_fu_584_p_dout0;
output   grp_fu_584_p_ce;
reg ap_idle;
reg min_s_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_1_reg_1705;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_421_p3;
reg   [63:0] reg_435;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_428_p3;
reg   [63:0] reg_439;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_443;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_448;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_453;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] zext_ln52_2_cast_fu_458_p1;
reg   [10:0] zext_ln52_2_cast_reg_1621;
reg   [5:0] s_reg_1632;
wire   [5:0] add_ln53_fu_533_p2;
reg   [5:0] add_ln53_reg_1687;
wire   [5:0] add_ln53_1_fu_539_p2;
reg   [5:0] add_ln53_1_reg_1693;
reg   [5:0] add_ln53_1_reg_1693_pp0_iter1_reg;
wire   [6:0] add_ln53_6_fu_545_p2;
reg   [6:0] add_ln53_6_reg_1699;
reg   [0:0] tmp_1_reg_1705_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1709;
reg   [63:0] llike_2_load_reg_1714;
reg   [63:0] llike_3_load_reg_1729;
wire   [5:0] add_ln53_2_fu_595_p2;
reg   [5:0] add_ln53_2_reg_1744;
reg   [63:0] llike_4_load_reg_1750;
wire   [5:0] add_ln53_3_fu_600_p2;
reg   [5:0] add_ln53_3_reg_1755;
reg   [5:0] add_ln53_3_reg_1755_pp0_iter1_reg;
reg   [63:0] llike_5_load_reg_1761;
reg   [63:0] llike_6_load_reg_1766;
reg   [63:0] llike_7_load_reg_1771;
wire   [63:0] bitcast_ln54_fu_628_p1;
wire   [5:0] add_ln53_4_fu_669_p2;
reg   [5:0] add_ln53_4_reg_1806;
reg   [5:0] add_ln53_4_reg_1806_pp0_iter1_reg;
wire   [5:0] add_ln53_5_fu_674_p2;
reg   [5:0] add_ln53_5_reg_1812;
reg   [5:0] add_ln53_5_reg_1812_pp0_iter1_reg;
reg   [63:0] llike_load_reg_1818;
wire   [63:0] bitcast_ln54_1_fu_679_p1;
reg   [63:0] select_ln54_3_reg_1828;
wire   [63:0] bitcast_ln54_2_fu_720_p1;
reg   [63:0] select_ln54_6_reg_1858;
wire   [5:0] trunc_ln54_fu_725_p1;
reg   [5:0] trunc_ln54_reg_1863;
reg   [5:0] trunc_ln54_reg_1863_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_3_fu_747_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] select_ln54_7_reg_1883;
wire   [63:0] bitcast_ln54_4_fu_751_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln54_5_fu_756_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln54_6_fu_761_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln54_7_fu_765_p1;
reg   [63:0] min_p_127_reg_1908;
wire   [0:0] and_ln55_1_fu_850_p2;
reg   [0:0] and_ln55_1_reg_1915;
wire   [63:0] min_p_129_fu_856_p3;
reg   [63:0] min_p_129_reg_1921;
wire   [0:0] and_ln55_3_fu_940_p2;
reg   [0:0] and_ln55_3_reg_1928;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] p_66_reg_1934;
wire   [63:0] min_p_131_fu_959_p3;
reg   [63:0] min_p_131_reg_1941;
wire   [7:0] min_s_5_fu_969_p3;
reg   [7:0] min_s_5_reg_1948;
wire   [0:0] and_ln55_5_fu_1053_p2;
reg   [0:0] and_ln55_5_reg_1953;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] p_68_reg_1959;
wire   [63:0] min_p_133_fu_1059_p3;
reg   [63:0] min_p_133_reg_1966;
wire   [0:0] icmp_ln55_14_fu_1084_p2;
reg   [0:0] icmp_ln55_14_reg_1972;
wire   [0:0] icmp_ln55_15_fu_1090_p2;
reg   [0:0] icmp_ln55_15_reg_1977;
wire   [0:0] and_ln55_7_fu_1152_p2;
reg   [0:0] and_ln55_7_reg_1982;
wire   [63:0] min_p_135_fu_1167_p3;
reg   [63:0] min_p_135_reg_1988;
wire   [7:0] min_s_7_fu_1177_p3;
reg   [7:0] min_s_7_reg_1995;
wire   [0:0] and_ln55_9_fu_1260_p2;
reg   [0:0] and_ln55_9_reg_2000;
wire   [63:0] min_p_137_fu_1266_p3;
reg   [63:0] min_p_137_reg_2006;
wire   [0:0] and_ln55_11_fu_1349_p2;
reg   [0:0] and_ln55_11_reg_2013;
wire   [63:0] min_p_139_fu_1355_p3;
reg   [63:0] min_p_139_reg_2019;
wire   [0:0] and_ln55_13_fu_1438_p2;
reg   [0:0] and_ln55_13_reg_2026;
wire   [7:0] min_s_10_fu_1466_p3;
reg   [7:0] min_s_10_reg_2032;
wire   [63:0] min_p_141_fu_1474_p3;
reg   [63:0] min_p_141_reg_2037;
reg   [0:0] tmp_222_reg_2044;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage9_subdone;
wire   [63:0] zext_ln54_8_fu_502_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_527_p1;
wire   [63:0] zext_ln54_1_fu_571_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_589_p1;
wire   [63:0] zext_ln54_10_fu_623_p1;
wire   [63:0] zext_ln54_3_fu_645_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_4_fu_663_p1;
wire   [63:0] zext_ln54_5_fu_696_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln54_6_fu_714_p1;
wire   [63:0] zext_ln54_7_fu_741_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] min_p_fu_114;
wire   [63:0] min_p_143_fu_1562_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage10;
reg   [7:0] min_s_fu_118;
wire   [7:0] min_s_11_fu_1572_p3;
wire    ap_block_pp0_stage14;
reg   [5:0] min_s_1_fu_122;
wire   [5:0] add_ln53_7_fu_1096_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce0_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_4_ce0_local;
reg    llike_5_ce0_local;
reg    llike_6_ce0_local;
reg    llike_7_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_413_p0;
reg   [63:0] grp_fu_413_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_417_p0;
reg   [63:0] grp_fu_417_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage16;
wire   [2:0] lshr_ln8_1_fu_484_p4;
wire   [10:0] tmp_s_fu_494_p3;
wire   [10:0] shl_ln2_fu_513_p3;
wire   [10:0] add_ln54_fu_521_p2;
wire   [6:0] zext_ln17_fu_480_p1;
wire   [10:0] shl_ln54_1_fu_559_p3;
wire   [10:0] add_ln54_1_fu_566_p2;
wire   [10:0] shl_ln54_2_fu_577_p3;
wire   [10:0] add_ln54_2_fu_584_p2;
wire   [3:0] lshr_ln9_3_fu_605_p4;
wire   [10:0] zext_ln54_9_fu_614_p1;
wire   [10:0] add_ln54_8_fu_618_p2;
wire   [10:0] shl_ln54_3_fu_633_p3;
wire   [10:0] add_ln54_3_fu_640_p2;
wire   [10:0] shl_ln54_4_fu_651_p3;
wire   [10:0] add_ln54_4_fu_658_p2;
wire   [10:0] shl_ln54_5_fu_684_p3;
wire   [10:0] add_ln54_5_fu_691_p2;
wire   [10:0] shl_ln54_6_fu_702_p3;
wire   [10:0] add_ln54_6_fu_709_p2;
wire   [10:0] shl_ln54_7_fu_728_p3;
wire   [10:0] add_ln54_7_fu_736_p2;
wire    ap_block_pp0_stage11;
wire   [63:0] bitcast_ln55_fu_773_p1;
wire   [63:0] bitcast_ln55_1_fu_791_p1;
wire   [10:0] tmp_199_fu_777_p4;
wire   [51:0] trunc_ln55_fu_787_p1;
wire   [0:0] icmp_ln55_1_fu_814_p2;
wire   [0:0] icmp_ln55_fu_808_p2;
wire   [10:0] tmp_200_fu_794_p4;
wire   [51:0] trunc_ln55_1_fu_804_p1;
wire   [0:0] icmp_ln55_3_fu_832_p2;
wire   [0:0] icmp_ln55_2_fu_826_p2;
wire   [0:0] or_ln55_fu_820_p2;
wire   [0:0] and_ln55_fu_844_p2;
wire   [0:0] or_ln55_1_fu_838_p2;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln55_2_fu_863_p1;
wire   [63:0] bitcast_ln55_3_fu_881_p1;
wire   [10:0] tmp_202_fu_867_p4;
wire   [51:0] trunc_ln55_2_fu_877_p1;
wire   [0:0] icmp_ln55_5_fu_904_p2;
wire   [0:0] icmp_ln55_4_fu_898_p2;
wire   [10:0] tmp_203_fu_884_p4;
wire   [51:0] trunc_ln55_3_fu_894_p1;
wire   [0:0] icmp_ln55_7_fu_922_p2;
wire   [0:0] icmp_ln55_6_fu_916_p2;
wire   [0:0] or_ln55_3_fu_928_p2;
wire   [0:0] or_ln55_2_fu_910_p2;
wire   [0:0] and_ln55_2_fu_934_p2;
wire   [7:0] zext_ln55_fu_949_p1;
wire   [7:0] zext_ln55_1_fu_966_p1;
wire   [7:0] min_s_4_fu_952_p3;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln55_4_fu_976_p1;
wire   [63:0] bitcast_ln55_5_fu_994_p1;
wire   [10:0] tmp_205_fu_980_p4;
wire   [51:0] trunc_ln55_4_fu_990_p1;
wire   [0:0] icmp_ln55_9_fu_1017_p2;
wire   [0:0] icmp_ln55_8_fu_1011_p2;
wire   [10:0] tmp_206_fu_997_p4;
wire   [51:0] trunc_ln55_5_fu_1007_p1;
wire   [0:0] icmp_ln55_11_fu_1035_p2;
wire   [0:0] icmp_ln55_10_fu_1029_p2;
wire   [0:0] or_ln55_5_fu_1041_p2;
wire   [0:0] or_ln55_4_fu_1023_p2;
wire   [0:0] and_ln55_4_fu_1047_p2;
wire   [63:0] bitcast_ln55_7_fu_1066_p1;
wire   [10:0] tmp_209_fu_1070_p4;
wire   [51:0] trunc_ln55_7_fu_1080_p1;
wire   [63:0] bitcast_ln55_6_fu_1106_p1;
wire   [10:0] tmp_208_fu_1110_p4;
wire   [51:0] trunc_ln55_6_fu_1120_p1;
wire   [0:0] icmp_ln55_13_fu_1130_p2;
wire   [0:0] icmp_ln55_12_fu_1124_p2;
wire   [0:0] or_ln55_7_fu_1142_p2;
wire   [0:0] or_ln55_6_fu_1136_p2;
wire   [0:0] and_ln55_6_fu_1146_p2;
wire   [7:0] zext_ln55_2_fu_1158_p1;
wire   [7:0] zext_ln55_3_fu_1174_p1;
wire   [7:0] min_s_6_fu_1161_p3;
wire   [63:0] bitcast_ln55_8_fu_1184_p1;
wire   [63:0] bitcast_ln55_9_fu_1201_p1;
wire   [10:0] tmp_211_fu_1187_p4;
wire   [51:0] trunc_ln55_8_fu_1197_p1;
wire   [0:0] icmp_ln55_17_fu_1224_p2;
wire   [0:0] icmp_ln55_16_fu_1218_p2;
wire   [10:0] tmp_212_fu_1204_p4;
wire   [51:0] trunc_ln55_9_fu_1214_p1;
wire   [0:0] icmp_ln55_19_fu_1242_p2;
wire   [0:0] icmp_ln55_18_fu_1236_p2;
wire   [0:0] or_ln55_9_fu_1248_p2;
wire   [0:0] or_ln55_8_fu_1230_p2;
wire   [0:0] and_ln55_8_fu_1254_p2;
wire   [63:0] bitcast_ln55_10_fu_1272_p1;
wire   [63:0] bitcast_ln55_11_fu_1290_p1;
wire   [10:0] tmp_214_fu_1276_p4;
wire   [51:0] trunc_ln55_10_fu_1286_p1;
wire   [0:0] icmp_ln55_21_fu_1313_p2;
wire   [0:0] icmp_ln55_20_fu_1307_p2;
wire   [10:0] tmp_215_fu_1293_p4;
wire   [51:0] trunc_ln55_11_fu_1303_p1;
wire   [0:0] icmp_ln55_23_fu_1331_p2;
wire   [0:0] icmp_ln55_22_fu_1325_p2;
wire   [0:0] or_ln55_11_fu_1337_p2;
wire   [0:0] or_ln55_10_fu_1319_p2;
wire   [0:0] and_ln55_10_fu_1343_p2;
wire   [63:0] bitcast_ln55_12_fu_1362_p1;
wire   [63:0] bitcast_ln55_13_fu_1379_p1;
wire   [10:0] tmp_217_fu_1365_p4;
wire   [51:0] trunc_ln55_12_fu_1375_p1;
wire   [0:0] icmp_ln55_25_fu_1402_p2;
wire   [0:0] icmp_ln55_24_fu_1396_p2;
wire   [10:0] tmp_218_fu_1382_p4;
wire   [51:0] trunc_ln55_13_fu_1392_p1;
wire   [0:0] icmp_ln55_27_fu_1420_p2;
wire   [0:0] icmp_ln55_26_fu_1414_p2;
wire   [0:0] or_ln55_13_fu_1426_p2;
wire   [0:0] or_ln55_12_fu_1408_p2;
wire   [0:0] and_ln55_12_fu_1432_p2;
wire   [7:0] zext_ln55_4_fu_1444_p1;
wire   [7:0] zext_ln55_5_fu_1453_p1;
wire   [7:0] min_s_8_fu_1447_p3;
wire   [7:0] zext_ln55_6_fu_1463_p1;
wire   [7:0] min_s_9_fu_1456_p3;
wire   [63:0] bitcast_ln55_14_fu_1480_p1;
wire   [63:0] bitcast_ln55_15_fu_1498_p1;
wire   [10:0] tmp_220_fu_1484_p4;
wire   [51:0] trunc_ln55_14_fu_1494_p1;
wire   [0:0] icmp_ln55_29_fu_1521_p2;
wire   [0:0] icmp_ln55_28_fu_1515_p2;
wire   [10:0] tmp_221_fu_1501_p4;
wire   [51:0] trunc_ln55_15_fu_1511_p1;
wire   [0:0] icmp_ln55_31_fu_1539_p2;
wire   [0:0] icmp_ln55_30_fu_1533_p2;
wire   [0:0] or_ln55_15_fu_1545_p2;
wire   [0:0] or_ln55_14_fu_1527_p2;
wire   [0:0] and_ln55_14_fu_1551_p2;
wire   [0:0] and_ln55_15_fu_1557_p2;
wire   [7:0] zext_ln55_7_fu_1569_p1;
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
#0 min_p_fu_114 = 64'd0;
#0 min_s_fu_118 = 8'd0;
#0 min_s_1_fu_122 = 6'd0;
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
        min_p_fu_114 <= min_p_163;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (tmp_1_reg_1705_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_fu_114 <= min_p_143_fu_1562_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_122 <= 6'd1;
    end else if (((tmp_1_reg_1705 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        min_s_1_fu_122 <= add_ln53_7_fu_1096_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_118 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (tmp_1_reg_1705_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_s_fu_118 <= min_s_11_fu_1572_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1693 <= add_ln53_1_fu_539_p2;
        add_ln53_1_reg_1693_pp0_iter1_reg <= add_ln53_1_reg_1693;
        add_ln53_6_reg_1699 <= add_ln53_6_fu_545_p2;
        add_ln53_reg_1687 <= add_ln53_fu_533_p2;
        and_ln55_7_reg_1982 <= and_ln55_7_fu_1152_p2;
        s_reg_1632 <= ap_sig_allocacmp_s;
        tmp_1_reg_1705 <= add_ln53_6_fu_545_p2[32'd6];
        tmp_1_reg_1705_pp0_iter1_reg <= tmp_1_reg_1705;
        zext_ln52_2_cast_reg_1621[6 : 0] <= zext_ln52_2_cast_fu_458_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln53_2_reg_1744 <= add_ln53_2_fu_595_p2;
        add_ln53_3_reg_1755 <= add_ln53_3_fu_600_p2;
        add_ln53_3_reg_1755_pp0_iter1_reg <= add_ln53_3_reg_1755;
        llike_1_load_reg_1709 <= llike_1_q0;
        llike_2_load_reg_1714 <= llike_2_q0;
        llike_3_load_reg_1729 <= llike_3_q0;
        llike_4_load_reg_1750 <= llike_4_q0;
        llike_5_load_reg_1761 <= llike_5_q0;
        llike_6_load_reg_1766 <= llike_6_q0;
        llike_7_load_reg_1771 <= llike_7_q0;
        min_p_135_reg_1988 <= min_p_135_fu_1167_p3;
        min_s_7_reg_1995 <= min_s_7_fu_1177_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln53_4_reg_1806 <= add_ln53_4_fu_669_p2;
        add_ln53_4_reg_1806_pp0_iter1_reg <= add_ln53_4_reg_1806;
        add_ln53_5_reg_1812 <= add_ln53_5_fu_674_p2;
        add_ln53_5_reg_1812_pp0_iter1_reg <= add_ln53_5_reg_1812;
        and_ln55_9_reg_2000 <= and_ln55_9_fu_1260_p2;
        llike_load_reg_1818 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_11_reg_2013 <= and_ln55_11_fu_1349_p2;
        trunc_ln54_reg_1863 <= trunc_ln54_fu_725_p1;
        trunc_ln54_reg_1863_pp0_iter1_reg <= trunc_ln54_reg_1863;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_13_reg_2026 <= and_ln55_13_fu_1438_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        and_ln55_1_reg_1915 <= and_ln55_1_fu_850_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        and_ln55_3_reg_1928 <= and_ln55_3_fu_940_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        and_ln55_5_reg_1953 <= and_ln55_5_fu_1053_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        icmp_ln55_14_reg_1972 <= icmp_ln55_14_fu_1084_p2;
        icmp_ln55_15_reg_1977 <= icmp_ln55_15_fu_1090_p2;
        min_p_133_reg_1966 <= min_p_133_fu_1059_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        min_p_127_reg_1908 <= min_p_fu_114;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        min_p_129_reg_1921 <= min_p_129_fu_856_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        min_p_131_reg_1941 <= min_p_131_fu_959_p3;
        min_s_5_reg_1948 <= min_s_5_fu_969_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_137_reg_2006 <= min_p_137_fu_1266_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_139_reg_2019 <= min_p_139_fu_1355_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_141_reg_2037 <= min_p_141_fu_1474_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_10_reg_2032 <= min_s_10_fu_1466_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        p_66_reg_1934 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        p_68_reg_1959 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_435 <= grp_fu_421_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_439 <= grp_fu_428_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_443 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_448 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_453 <= grp_fu_319_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln54_3_reg_1828 <= grp_fu_421_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln54_6_reg_1858 <= grp_fu_428_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        select_ln54_7_reg_1883 <= grp_fu_428_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_222_reg_2044 <= grp_fu_584_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_1705 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (tmp_1_reg_1705_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_122;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_413_p0 = llike_load_reg_1818;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_413_p0 = llike_7_load_reg_1771;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_413_p0 = llike_6_load_reg_1766;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_413_p0 = llike_5_load_reg_1761;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_413_p0 = llike_4_load_reg_1750;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_413_p0 = llike_3_load_reg_1729;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_413_p0 = llike_2_load_reg_1714;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_413_p0 = llike_1_load_reg_1709;
        end else begin
            grp_fu_413_p0 = 'bx;
        end
    end else begin
        grp_fu_413_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_413_p1 = bitcast_ln54_7_fu_765_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_413_p1 = bitcast_ln54_6_fu_761_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_413_p1 = bitcast_ln54_5_fu_756_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_413_p1 = bitcast_ln54_4_fu_751_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_413_p1 = bitcast_ln54_3_fu_747_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_413_p1 = bitcast_ln54_2_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_413_p1 = bitcast_ln54_1_fu_679_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_413_p1 = bitcast_ln54_fu_628_p1;
        end else begin
            grp_fu_413_p1 = 'bx;
        end
    end else begin
        grp_fu_413_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_417_p0 = p_68_reg_1959;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_417_p0 = p_66_reg_1934;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_417_p0 = reg_453;
    end else if ((((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_417_p0 = reg_448;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_417_p0 = reg_443;
    end else begin
        grp_fu_417_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_417_p1 = min_p_141_fu_1474_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_417_p1 = min_p_139_fu_1355_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_417_p1 = min_p_137_fu_1266_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_417_p1 = min_p_135_fu_1167_p3;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_417_p1 = min_p_133_fu_1059_p3;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_417_p1 = min_p_131_fu_959_p3;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_417_p1 = min_p_129_fu_856_p3;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_417_p1 = min_p_fu_114;
    end else begin
        grp_fu_417_p1 = 'bx;
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
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
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
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (tmp_1_reg_1705_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_18_out_ap_vld = 1'b1;
    end else begin
        min_s_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln54_5_fu_696_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln54_3_fu_645_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_589_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_527_p1;
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
            transition_0_address1_local = zext_ln54_7_fu_741_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln54_6_fu_714_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_4_fu_663_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_571_p1;
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
            transition_1_address0_local = zext_ln54_5_fu_696_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln54_3_fu_645_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_589_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_527_p1;
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
            transition_1_address1_local = zext_ln54_7_fu_741_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln54_6_fu_714_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_4_fu_663_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_571_p1;
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
assign add_ln53_1_fu_539_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_595_p2 = (s_reg_1632 + 6'd3);
assign add_ln53_3_fu_600_p2 = (s_reg_1632 + 6'd4);
assign add_ln53_4_fu_669_p2 = (s_reg_1632 + 6'd5);
assign add_ln53_5_fu_674_p2 = (s_reg_1632 + 6'd6);
assign add_ln53_6_fu_545_p2 = (zext_ln17_fu_480_p1 + 7'd7);
assign add_ln53_7_fu_1096_p2 = (s_reg_1632 + 6'd8);
assign add_ln53_fu_533_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_566_p2 = (shl_ln54_1_fu_559_p3 + zext_ln52_2_cast_reg_1621);
assign add_ln54_2_fu_584_p2 = (shl_ln54_2_fu_577_p3 + zext_ln52_2_cast_reg_1621);
assign add_ln54_3_fu_640_p2 = (shl_ln54_3_fu_633_p3 + zext_ln52_2_cast_reg_1621);
assign add_ln54_4_fu_658_p2 = (shl_ln54_4_fu_651_p3 + zext_ln52_2_cast_reg_1621);
assign add_ln54_5_fu_691_p2 = (shl_ln54_5_fu_684_p3 + zext_ln52_2_cast_reg_1621);
assign add_ln54_6_fu_709_p2 = (shl_ln54_6_fu_702_p3 + zext_ln52_2_cast_reg_1621);
assign add_ln54_7_fu_736_p2 = (shl_ln54_7_fu_728_p3 + zext_ln52_2_cast_reg_1621);
assign add_ln54_8_fu_618_p2 = (zext_ln52_3 + zext_ln54_9_fu_614_p1);
assign add_ln54_fu_521_p2 = (shl_ln2_fu_513_p3 + zext_ln52_2_cast_fu_458_p1);
assign and_ln55_10_fu_1343_p2 = (or_ln55_11_fu_1337_p2 & or_ln55_10_fu_1319_p2);
assign and_ln55_11_fu_1349_p2 = (grp_fu_584_p_dout0 & and_ln55_10_fu_1343_p2);
assign and_ln55_12_fu_1432_p2 = (or_ln55_13_fu_1426_p2 & or_ln55_12_fu_1408_p2);
assign and_ln55_13_fu_1438_p2 = (grp_fu_584_p_dout0 & and_ln55_12_fu_1432_p2);
assign and_ln55_14_fu_1551_p2 = (or_ln55_15_fu_1545_p2 & or_ln55_14_fu_1527_p2);
assign and_ln55_15_fu_1557_p2 = (tmp_222_reg_2044 & and_ln55_14_fu_1551_p2);
assign and_ln55_1_fu_850_p2 = (or_ln55_1_fu_838_p2 & and_ln55_fu_844_p2);
assign and_ln55_2_fu_934_p2 = (or_ln55_3_fu_928_p2 & or_ln55_2_fu_910_p2);
assign and_ln55_3_fu_940_p2 = (grp_fu_584_p_dout0 & and_ln55_2_fu_934_p2);
assign and_ln55_4_fu_1047_p2 = (or_ln55_5_fu_1041_p2 & or_ln55_4_fu_1023_p2);
assign and_ln55_5_fu_1053_p2 = (grp_fu_584_p_dout0 & and_ln55_4_fu_1047_p2);
assign and_ln55_6_fu_1146_p2 = (or_ln55_7_fu_1142_p2 & or_ln55_6_fu_1136_p2);
assign and_ln55_7_fu_1152_p2 = (grp_fu_584_p_dout0 & and_ln55_6_fu_1146_p2);
assign and_ln55_8_fu_1254_p2 = (or_ln55_9_fu_1248_p2 & or_ln55_8_fu_1230_p2);
assign and_ln55_9_fu_1260_p2 = (grp_fu_584_p_dout0 & and_ln55_8_fu_1254_p2);
assign and_ln55_fu_844_p2 = (or_ln55_fu_820_p2 & grp_fu_584_p_dout0);
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
assign bitcast_ln54_1_fu_679_p1 = reg_439;
assign bitcast_ln54_2_fu_720_p1 = reg_435;
assign bitcast_ln54_3_fu_747_p1 = select_ln54_3_reg_1828;
assign bitcast_ln54_4_fu_751_p1 = reg_439;
assign bitcast_ln54_5_fu_756_p1 = reg_435;
assign bitcast_ln54_6_fu_761_p1 = select_ln54_6_reg_1858;
assign bitcast_ln54_7_fu_765_p1 = select_ln54_7_reg_1883;
assign bitcast_ln54_fu_628_p1 = reg_435;
assign bitcast_ln55_10_fu_1272_p1 = reg_448;
assign bitcast_ln55_11_fu_1290_p1 = min_p_137_reg_2006;
assign bitcast_ln55_12_fu_1362_p1 = p_68_reg_1959;
assign bitcast_ln55_13_fu_1379_p1 = min_p_139_reg_2019;
assign bitcast_ln55_14_fu_1480_p1 = reg_453;
assign bitcast_ln55_15_fu_1498_p1 = min_p_141_reg_2037;
assign bitcast_ln55_1_fu_791_p1 = min_p_127_reg_1908;
assign bitcast_ln55_2_fu_863_p1 = reg_448;
assign bitcast_ln55_3_fu_881_p1 = min_p_129_reg_1921;
assign bitcast_ln55_4_fu_976_p1 = reg_453;
assign bitcast_ln55_5_fu_994_p1 = min_p_131_reg_1941;
assign bitcast_ln55_6_fu_1106_p1 = reg_443;
assign bitcast_ln55_7_fu_1066_p1 = min_p_133_fu_1059_p3;
assign bitcast_ln55_8_fu_1184_p1 = p_66_reg_1934;
assign bitcast_ln55_9_fu_1201_p1 = min_p_135_reg_1988;
assign bitcast_ln55_fu_773_p1 = reg_443;
assign grp_fu_319_p_ce = 1'b1;
assign grp_fu_319_p_din0 = grp_fu_413_p0;
assign grp_fu_319_p_din1 = grp_fu_413_p1;
assign grp_fu_319_p_opcode = 2'd0;
assign grp_fu_421_p3 = ((empty[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_428_p3 = ((empty[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_584_p_ce = 1'b1;
assign grp_fu_584_p_din0 = grp_fu_417_p0;
assign grp_fu_584_p_din1 = grp_fu_417_p1;
assign grp_fu_584_p_opcode = 5'd4;
assign icmp_ln55_10_fu_1029_p2 = ((tmp_206_fu_997_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_1035_p2 = ((trunc_ln55_5_fu_1007_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_1124_p2 = ((tmp_208_fu_1110_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_1130_p2 = ((trunc_ln55_6_fu_1120_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_1084_p2 = ((tmp_209_fu_1070_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_1090_p2 = ((trunc_ln55_7_fu_1080_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_16_fu_1218_p2 = ((tmp_211_fu_1187_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_17_fu_1224_p2 = ((trunc_ln55_8_fu_1197_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_18_fu_1236_p2 = ((tmp_212_fu_1204_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_19_fu_1242_p2 = ((trunc_ln55_9_fu_1214_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_814_p2 = ((trunc_ln55_fu_787_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_20_fu_1307_p2 = ((tmp_214_fu_1276_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_21_fu_1313_p2 = ((trunc_ln55_10_fu_1286_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_22_fu_1325_p2 = ((tmp_215_fu_1293_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_23_fu_1331_p2 = ((trunc_ln55_11_fu_1303_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_24_fu_1396_p2 = ((tmp_217_fu_1365_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_25_fu_1402_p2 = ((trunc_ln55_12_fu_1375_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_26_fu_1414_p2 = ((tmp_218_fu_1382_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_27_fu_1420_p2 = ((trunc_ln55_13_fu_1392_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_28_fu_1515_p2 = ((tmp_220_fu_1484_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_29_fu_1521_p2 = ((trunc_ln55_14_fu_1494_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_826_p2 = ((tmp_200_fu_794_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_30_fu_1533_p2 = ((tmp_221_fu_1501_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_31_fu_1539_p2 = ((trunc_ln55_15_fu_1511_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_832_p2 = ((trunc_ln55_1_fu_804_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_898_p2 = ((tmp_202_fu_867_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_904_p2 = ((trunc_ln55_2_fu_877_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_916_p2 = ((tmp_203_fu_884_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_922_p2 = ((trunc_ln55_3_fu_894_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_1011_p2 = ((tmp_205_fu_980_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_1017_p2 = ((trunc_ln55_4_fu_990_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_808_p2 = ((tmp_199_fu_777_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_8_fu_502_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln54_8_fu_502_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln54_8_fu_502_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln54_8_fu_502_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln54_8_fu_502_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln54_8_fu_502_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln54_8_fu_502_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_address0 = zext_ln54_10_fu_623_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_1_fu_484_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign lshr_ln9_3_fu_605_p4 = {{add_ln53_6_reg_1699[6:3]}};
assign min_p_129_fu_856_p3 = ((and_ln55_1_reg_1915[0:0] == 1'b1) ? reg_443 : min_p_127_reg_1908);
assign min_p_131_fu_959_p3 = ((and_ln55_3_reg_1928[0:0] == 1'b1) ? reg_448 : min_p_129_reg_1921);
assign min_p_133_fu_1059_p3 = ((and_ln55_5_reg_1953[0:0] == 1'b1) ? reg_453 : min_p_131_reg_1941);
assign min_p_135_fu_1167_p3 = ((and_ln55_7_reg_1982[0:0] == 1'b1) ? reg_443 : min_p_133_reg_1966);
assign min_p_137_fu_1266_p3 = ((and_ln55_9_reg_2000[0:0] == 1'b1) ? p_66_reg_1934 : min_p_135_reg_1988);
assign min_p_139_fu_1355_p3 = ((and_ln55_11_reg_2013[0:0] == 1'b1) ? reg_448 : min_p_137_reg_2006);
assign min_p_141_fu_1474_p3 = ((and_ln55_13_reg_2026[0:0] == 1'b1) ? p_68_reg_1959 : min_p_139_reg_2019);
assign min_p_143_fu_1562_p3 = ((and_ln55_15_fu_1557_p2[0:0] == 1'b1) ? reg_453 : min_p_141_reg_2037);
assign min_s_10_fu_1466_p3 = ((and_ln55_13_reg_2026[0:0] == 1'b1) ? zext_ln55_6_fu_1463_p1 : min_s_9_fu_1456_p3);
assign min_s_11_fu_1572_p3 = ((and_ln55_15_fu_1557_p2[0:0] == 1'b1) ? zext_ln55_7_fu_1569_p1 : min_s_10_reg_2032);
assign min_s_18_out = ((and_ln55_13_reg_2026[0:0] == 1'b1) ? zext_ln55_6_fu_1463_p1 : min_s_9_fu_1456_p3);
assign min_s_4_fu_952_p3 = ((and_ln55_1_reg_1915[0:0] == 1'b1) ? zext_ln55_fu_949_p1 : min_s_fu_118);
assign min_s_5_fu_969_p3 = ((and_ln55_3_reg_1928[0:0] == 1'b1) ? zext_ln55_1_fu_966_p1 : min_s_4_fu_952_p3);
assign min_s_6_fu_1161_p3 = ((and_ln55_5_reg_1953[0:0] == 1'b1) ? zext_ln55_2_fu_1158_p1 : min_s_5_reg_1948);
assign min_s_7_fu_1177_p3 = ((and_ln55_7_reg_1982[0:0] == 1'b1) ? zext_ln55_3_fu_1174_p1 : min_s_6_fu_1161_p3);
assign min_s_8_fu_1447_p3 = ((and_ln55_9_reg_2000[0:0] == 1'b1) ? zext_ln55_4_fu_1444_p1 : min_s_7_reg_1995);
assign min_s_9_fu_1456_p3 = ((and_ln55_11_reg_2013[0:0] == 1'b1) ? zext_ln55_5_fu_1453_p1 : min_s_8_fu_1447_p3);
assign or_ln55_10_fu_1319_p2 = (icmp_ln55_21_fu_1313_p2 | icmp_ln55_20_fu_1307_p2);
assign or_ln55_11_fu_1337_p2 = (icmp_ln55_23_fu_1331_p2 | icmp_ln55_22_fu_1325_p2);
assign or_ln55_12_fu_1408_p2 = (icmp_ln55_25_fu_1402_p2 | icmp_ln55_24_fu_1396_p2);
assign or_ln55_13_fu_1426_p2 = (icmp_ln55_27_fu_1420_p2 | icmp_ln55_26_fu_1414_p2);
assign or_ln55_14_fu_1527_p2 = (icmp_ln55_29_fu_1521_p2 | icmp_ln55_28_fu_1515_p2);
assign or_ln55_15_fu_1545_p2 = (icmp_ln55_31_fu_1539_p2 | icmp_ln55_30_fu_1533_p2);
assign or_ln55_1_fu_838_p2 = (icmp_ln55_3_fu_832_p2 | icmp_ln55_2_fu_826_p2);
assign or_ln55_2_fu_910_p2 = (icmp_ln55_5_fu_904_p2 | icmp_ln55_4_fu_898_p2);
assign or_ln55_3_fu_928_p2 = (icmp_ln55_7_fu_922_p2 | icmp_ln55_6_fu_916_p2);
assign or_ln55_4_fu_1023_p2 = (icmp_ln55_9_fu_1017_p2 | icmp_ln55_8_fu_1011_p2);
assign or_ln55_5_fu_1041_p2 = (icmp_ln55_11_fu_1035_p2 | icmp_ln55_10_fu_1029_p2);
assign or_ln55_6_fu_1136_p2 = (icmp_ln55_13_fu_1130_p2 | icmp_ln55_12_fu_1124_p2);
assign or_ln55_7_fu_1142_p2 = (icmp_ln55_15_reg_1977 | icmp_ln55_14_reg_1972);
assign or_ln55_8_fu_1230_p2 = (icmp_ln55_17_fu_1224_p2 | icmp_ln55_16_fu_1218_p2);
assign or_ln55_9_fu_1248_p2 = (icmp_ln55_19_fu_1242_p2 | icmp_ln55_18_fu_1236_p2);
assign or_ln55_fu_820_p2 = (icmp_ln55_fu_808_p2 | icmp_ln55_1_fu_814_p2);
assign shl_ln2_fu_513_p3 = {{ap_sig_allocacmp_s}, {5'd0}};
assign shl_ln54_1_fu_559_p3 = {{add_ln53_reg_1687}, {5'd0}};
assign shl_ln54_2_fu_577_p3 = {{add_ln53_1_reg_1693}, {5'd0}};
assign shl_ln54_3_fu_633_p3 = {{add_ln53_2_reg_1744}, {5'd0}};
assign shl_ln54_4_fu_651_p3 = {{add_ln53_3_reg_1755}, {5'd0}};
assign shl_ln54_5_fu_684_p3 = {{add_ln53_4_reg_1806}, {5'd0}};
assign shl_ln54_6_fu_702_p3 = {{add_ln53_5_reg_1812}, {5'd0}};
assign shl_ln54_7_fu_728_p3 = {{trunc_ln54_fu_725_p1}, {5'd0}};
assign tmp_199_fu_777_p4 = {{bitcast_ln55_fu_773_p1[62:52]}};
assign tmp_200_fu_794_p4 = {{bitcast_ln55_1_fu_791_p1[62:52]}};
assign tmp_202_fu_867_p4 = {{bitcast_ln55_2_fu_863_p1[62:52]}};
assign tmp_203_fu_884_p4 = {{bitcast_ln55_3_fu_881_p1[62:52]}};
assign tmp_205_fu_980_p4 = {{bitcast_ln55_4_fu_976_p1[62:52]}};
assign tmp_206_fu_997_p4 = {{bitcast_ln55_5_fu_994_p1[62:52]}};
assign tmp_208_fu_1110_p4 = {{bitcast_ln55_6_fu_1106_p1[62:52]}};
assign tmp_209_fu_1070_p4 = {{bitcast_ln55_7_fu_1066_p1[62:52]}};
assign tmp_211_fu_1187_p4 = {{bitcast_ln55_8_fu_1184_p1[62:52]}};
assign tmp_212_fu_1204_p4 = {{bitcast_ln55_9_fu_1201_p1[62:52]}};
assign tmp_214_fu_1276_p4 = {{bitcast_ln55_10_fu_1272_p1[62:52]}};
assign tmp_215_fu_1293_p4 = {{bitcast_ln55_11_fu_1290_p1[62:52]}};
assign tmp_217_fu_1365_p4 = {{bitcast_ln55_12_fu_1362_p1[62:52]}};
assign tmp_218_fu_1382_p4 = {{bitcast_ln55_13_fu_1379_p1[62:52]}};
assign tmp_220_fu_1484_p4 = {{bitcast_ln55_14_fu_1480_p1[62:52]}};
assign tmp_221_fu_1501_p4 = {{bitcast_ln55_15_fu_1498_p1[62:52]}};
assign tmp_s_fu_494_p3 = {{t_1}, {lshr_ln8_1_fu_484_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln54_fu_725_p1 = add_ln53_6_reg_1699[5:0];
assign trunc_ln55_10_fu_1286_p1 = bitcast_ln55_10_fu_1272_p1[51:0];
assign trunc_ln55_11_fu_1303_p1 = bitcast_ln55_11_fu_1290_p1[51:0];
assign trunc_ln55_12_fu_1375_p1 = bitcast_ln55_12_fu_1362_p1[51:0];
assign trunc_ln55_13_fu_1392_p1 = bitcast_ln55_13_fu_1379_p1[51:0];
assign trunc_ln55_14_fu_1494_p1 = bitcast_ln55_14_fu_1480_p1[51:0];
assign trunc_ln55_15_fu_1511_p1 = bitcast_ln55_15_fu_1498_p1[51:0];
assign trunc_ln55_1_fu_804_p1 = bitcast_ln55_1_fu_791_p1[51:0];
assign trunc_ln55_2_fu_877_p1 = bitcast_ln55_2_fu_863_p1[51:0];
assign trunc_ln55_3_fu_894_p1 = bitcast_ln55_3_fu_881_p1[51:0];
assign trunc_ln55_4_fu_990_p1 = bitcast_ln55_4_fu_976_p1[51:0];
assign trunc_ln55_5_fu_1007_p1 = bitcast_ln55_5_fu_994_p1[51:0];
assign trunc_ln55_6_fu_1120_p1 = bitcast_ln55_6_fu_1106_p1[51:0];
assign trunc_ln55_7_fu_1080_p1 = bitcast_ln55_7_fu_1066_p1[51:0];
assign trunc_ln55_8_fu_1197_p1 = bitcast_ln55_8_fu_1184_p1[51:0];
assign trunc_ln55_9_fu_1214_p1 = bitcast_ln55_9_fu_1201_p1[51:0];
assign trunc_ln55_fu_787_p1 = bitcast_ln55_fu_773_p1[51:0];
assign zext_ln17_fu_480_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_458_p1 = zext_ln52_2;
assign zext_ln54_10_fu_623_p1 = add_ln54_8_fu_618_p2;
assign zext_ln54_1_fu_571_p1 = add_ln54_1_fu_566_p2;
assign zext_ln54_2_fu_589_p1 = add_ln54_2_fu_584_p2;
assign zext_ln54_3_fu_645_p1 = add_ln54_3_fu_640_p2;
assign zext_ln54_4_fu_663_p1 = add_ln54_4_fu_658_p2;
assign zext_ln54_5_fu_696_p1 = add_ln54_5_fu_691_p2;
assign zext_ln54_6_fu_714_p1 = add_ln54_6_fu_709_p2;
assign zext_ln54_7_fu_741_p1 = add_ln54_7_fu_736_p2;
assign zext_ln54_8_fu_502_p1 = tmp_s_fu_494_p3;
assign zext_ln54_9_fu_614_p1 = lshr_ln9_3_fu_605_p4;
assign zext_ln54_fu_527_p1 = add_ln54_fu_521_p2;
assign zext_ln55_1_fu_966_p1 = add_ln53_reg_1687;
assign zext_ln55_2_fu_1158_p1 = add_ln53_1_reg_1693_pp0_iter1_reg;
assign zext_ln55_3_fu_1174_p1 = add_ln53_2_reg_1744;
assign zext_ln55_4_fu_1444_p1 = add_ln53_3_reg_1755_pp0_iter1_reg;
assign zext_ln55_5_fu_1453_p1 = add_ln53_4_reg_1806_pp0_iter1_reg;
assign zext_ln55_6_fu_1463_p1 = add_ln53_5_reg_1812_pp0_iter1_reg;
assign zext_ln55_7_fu_1569_p1 = trunc_ln54_reg_1863_pp0_iter1_reg;
assign zext_ln55_fu_949_p1 = s_reg_1632;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_1621[10:7] <= 4'b0000;
end
endmodule 