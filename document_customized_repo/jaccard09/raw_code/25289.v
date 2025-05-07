module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_18,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty_10,bitcast_ln24,empty,llike_address0,llike_ce0,llike_q0,min_p_34_out,min_p_34_out_ap_vld,grp_fu_539_p_din0,grp_fu_539_p_din1,grp_fu_539_p_opcode,grp_fu_539_p_dout0,grp_fu_539_p_ce,grp_fu_1144_p_din0,grp_fu_1144_p_din1,grp_fu_1144_p_opcode,grp_fu_1144_p_dout0,grp_fu_1144_p_ce); 
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
input  [63:0] min_p_18;
input  [7:0] empty_9;
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
input  [4:0] lshr_ln;
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
input  [0:0] empty_10;
input  [63:0] bitcast_ln24;
input  [10:0] empty;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [63:0] min_p_34_out;
output   min_p_34_out_ap_vld;
output  [63:0] grp_fu_539_p_din0;
output  [63:0] grp_fu_539_p_din1;
output  [1:0] grp_fu_539_p_opcode;
input  [63:0] grp_fu_539_p_dout0;
output   grp_fu_539_p_ce;
output  [63:0] grp_fu_1144_p_din0;
output  [63:0] grp_fu_1144_p_din1;
output  [4:0] grp_fu_1144_p_opcode;
input  [0:0] grp_fu_1144_p_dout0;
output   grp_fu_1144_p_ce;
reg ap_idle;
reg min_p_34_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_25_reg_1665;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_429_p3;
reg   [63:0] reg_443;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_436_p3;
reg   [63:0] reg_447;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_451;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_457;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_463;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_469;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_475;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_481;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_1590;
wire   [10:0] shl_ln1_fu_533_p3;
reg   [10:0] shl_ln1_reg_1630;
wire   [6:0] add_ln25_fu_585_p2;
reg   [6:0] add_ln25_reg_1659;
reg   [0:0] tmp_25_reg_1665_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1669;
reg   [63:0] llike_2_load_reg_1674;
reg   [63:0] llike_3_load_reg_1679;
reg   [63:0] llike_4_load_reg_1694;
reg   [63:0] llike_5_load_reg_1709;
reg   [63:0] llike_6_load_reg_1714;
reg   [63:0] llike_7_load_reg_1719;
wire   [63:0] bitcast_ln27_fu_678_p1;
reg   [63:0] select_ln27_3_reg_1734;
reg   [5:0] tmp_50_reg_1759;
reg   [63:0] llike_load_reg_1764;
wire   [63:0] bitcast_ln27_1_fu_754_p1;
reg   [63:0] select_ln27_4_reg_1774;
wire   [63:0] bitcast_ln27_2_fu_787_p1;
reg   [63:0] select_ln27_7_reg_1804;
wire   [63:0] bitcast_ln27_3_fu_792_p1;
wire   [63:0] bitcast_ln27_4_fu_796_p1;
wire   [63:0] bitcast_ln27_5_fu_800_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln27_6_fu_805_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln27_7_fu_810_p1;
reg   [63:0] add52_5_reg_1834;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_1839;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_19_reg_1844;
wire   [0:0] and_ln29_1_fu_905_p2;
reg   [0:0] and_ln29_1_reg_1851;
wire   [63:0] min_p_21_fu_911_p3;
reg   [63:0] min_p_21_reg_1856;
wire   [0:0] and_ln29_3_fu_995_p2;
reg   [0:0] and_ln29_3_reg_1863;
wire   [63:0] min_p_23_fu_1001_p3;
reg   [63:0] min_p_23_reg_1868;
wire   [0:0] and_ln29_5_fu_1085_p2;
reg   [0:0] and_ln29_5_reg_1875;
wire   [63:0] min_p_25_fu_1091_p3;
reg   [63:0] min_p_25_reg_1880;
wire   [0:0] icmp_ln29_14_fu_1116_p2;
reg   [0:0] icmp_ln29_14_reg_1886;
wire   [0:0] icmp_ln29_15_fu_1122_p2;
reg   [0:0] icmp_ln29_15_reg_1891;
reg   [63:0] p_14_reg_1896;
wire   [0:0] and_ln29_7_fu_1174_p2;
reg   [0:0] and_ln29_7_reg_1903;
wire   [63:0] min_p_27_fu_1180_p3;
reg   [63:0] min_p_27_reg_1908;
wire   [0:0] and_ln29_9_fu_1264_p2;
reg   [0:0] and_ln29_9_reg_1915;
wire   [63:0] min_p_29_fu_1270_p3;
reg   [63:0] min_p_29_reg_1920;
wire   [0:0] and_ln29_11_fu_1354_p2;
reg   [0:0] and_ln29_11_reg_1927;
wire   [63:0] min_p_31_fu_1360_p3;
reg   [63:0] min_p_31_reg_1932;
wire   [0:0] and_ln29_13_fu_1444_p2;
reg   [0:0] and_ln29_13_reg_1939;
wire   [63:0] min_p_33_fu_1450_p3;
reg   [63:0] min_p_33_reg_1944;
reg   [0:0] tmp_55_reg_1951;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_522_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_549_p1;
wire   [63:0] zext_ln27_1_fu_579_p1;
wire   [63:0] zext_ln27_2_fu_621_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_649_p1;
wire   [63:0] zext_ln26_2_fu_673_p1;
wire   [63:0] zext_ln27_4_fu_705_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_733_p1;
wire   [63:0] zext_ln27_6_fu_765_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_781_p1;
reg   [63:0] min_p_fu_120;
wire   [63:0] min_p_35_fu_1539_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_124;
wire   [5:0] add_ln25_1_fu_814_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_4_ce0_local;
reg    llike_5_ce0_local;
reg    llike_6_ce0_local;
reg    llike_7_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_421_p0;
reg   [63:0] grp_fu_421_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
reg   [63:0] grp_fu_425_p0;
reg   [63:0] grp_fu_425_p1;
wire   [2:0] lshr_ln7_1_fu_504_p4;
wire   [10:0] tmp_s_fu_514_p3;
wire   [10:0] add_ln_fu_541_p3;
wire   [10:0] add_ln27_fu_555_p2;
wire   [5:0] tmp_29_fu_561_p4;
wire   [10:0] add_ln27_2_fu_571_p3;
wire   [6:0] zext_ln16_fu_500_p1;
wire   [10:0] add_ln27_1_fu_599_p2;
wire   [5:0] tmp_34_fu_604_p4;
wire   [10:0] add_ln27_4_fu_614_p3;
wire   [10:0] add_ln27_3_fu_627_p2;
wire   [5:0] tmp_38_fu_632_p4;
wire   [10:0] add_ln27_6_fu_642_p3;
wire   [3:0] lshr_ln8_1_fu_655_p4;
wire   [10:0] zext_ln26_1_fu_664_p1;
wire   [10:0] add_ln26_fu_668_p2;
wire   [10:0] add_ln27_5_fu_683_p2;
wire   [5:0] tmp_42_fu_688_p4;
wire   [10:0] add_ln27_8_fu_698_p3;
wire   [10:0] add_ln27_7_fu_711_p2;
wire   [5:0] tmp_46_fu_716_p4;
wire   [10:0] add_ln27_s_fu_726_p3;
wire   [10:0] add_ln27_9_fu_739_p2;
wire   [10:0] add_ln27_10_fu_759_p3;
wire   [5:0] trunc_ln27_fu_771_p1;
wire   [10:0] add_ln27_11_fu_774_p3;
wire   [63:0] bitcast_ln29_fu_828_p1;
wire   [63:0] bitcast_ln29_1_fu_846_p1;
wire   [10:0] tmp_26_fu_832_p4;
wire   [51:0] trunc_ln29_fu_842_p1;
wire   [0:0] icmp_ln29_1_fu_869_p2;
wire   [0:0] icmp_ln29_fu_863_p2;
wire   [10:0] tmp_27_fu_849_p4;
wire   [51:0] trunc_ln29_1_fu_859_p1;
wire   [0:0] icmp_ln29_3_fu_887_p2;
wire   [0:0] icmp_ln29_2_fu_881_p2;
wire   [0:0] or_ln29_fu_875_p2;
wire   [0:0] and_ln29_fu_899_p2;
wire   [0:0] or_ln29_1_fu_893_p2;
wire   [63:0] bitcast_ln29_2_fu_918_p1;
wire   [63:0] bitcast_ln29_3_fu_936_p1;
wire   [10:0] tmp_30_fu_922_p4;
wire   [51:0] trunc_ln29_2_fu_932_p1;
wire   [0:0] icmp_ln29_5_fu_959_p2;
wire   [0:0] icmp_ln29_4_fu_953_p2;
wire   [10:0] tmp_31_fu_939_p4;
wire   [51:0] trunc_ln29_3_fu_949_p1;
wire   [0:0] icmp_ln29_7_fu_977_p2;
wire   [0:0] icmp_ln29_6_fu_971_p2;
wire   [0:0] or_ln29_3_fu_983_p2;
wire   [0:0] or_ln29_2_fu_965_p2;
wire   [0:0] and_ln29_2_fu_989_p2;
wire   [63:0] bitcast_ln29_4_fu_1008_p1;
wire   [63:0] bitcast_ln29_5_fu_1026_p1;
wire   [10:0] tmp_33_fu_1012_p4;
wire   [51:0] trunc_ln29_4_fu_1022_p1;
wire   [0:0] icmp_ln29_9_fu_1049_p2;
wire   [0:0] icmp_ln29_8_fu_1043_p2;
wire   [10:0] tmp_35_fu_1029_p4;
wire   [51:0] trunc_ln29_5_fu_1039_p1;
wire   [0:0] icmp_ln29_11_fu_1067_p2;
wire   [0:0] icmp_ln29_10_fu_1061_p2;
wire   [0:0] or_ln29_5_fu_1073_p2;
wire   [0:0] or_ln29_4_fu_1055_p2;
wire   [0:0] and_ln29_4_fu_1079_p2;
wire   [63:0] bitcast_ln29_7_fu_1098_p1;
wire   [10:0] tmp_39_fu_1102_p4;
wire   [51:0] trunc_ln29_7_fu_1112_p1;
wire   [63:0] bitcast_ln29_6_fu_1128_p1;
wire   [10:0] tmp_37_fu_1132_p4;
wire   [51:0] trunc_ln29_6_fu_1142_p1;
wire   [0:0] icmp_ln29_13_fu_1152_p2;
wire   [0:0] icmp_ln29_12_fu_1146_p2;
wire   [0:0] or_ln29_7_fu_1164_p2;
wire   [0:0] or_ln29_6_fu_1158_p2;
wire   [0:0] and_ln29_6_fu_1168_p2;
wire   [63:0] bitcast_ln29_8_fu_1187_p1;
wire   [63:0] bitcast_ln29_9_fu_1205_p1;
wire   [10:0] tmp_41_fu_1191_p4;
wire   [51:0] trunc_ln29_8_fu_1201_p1;
wire   [0:0] icmp_ln29_17_fu_1228_p2;
wire   [0:0] icmp_ln29_16_fu_1222_p2;
wire   [10:0] tmp_43_fu_1208_p4;
wire   [51:0] trunc_ln29_9_fu_1218_p1;
wire   [0:0] icmp_ln29_19_fu_1246_p2;
wire   [0:0] icmp_ln29_18_fu_1240_p2;
wire   [0:0] or_ln29_9_fu_1252_p2;
wire   [0:0] or_ln29_8_fu_1234_p2;
wire   [0:0] and_ln29_8_fu_1258_p2;
wire   [63:0] bitcast_ln29_10_fu_1277_p1;
wire   [63:0] bitcast_ln29_11_fu_1295_p1;
wire   [10:0] tmp_45_fu_1281_p4;
wire   [51:0] trunc_ln29_10_fu_1291_p1;
wire   [0:0] icmp_ln29_21_fu_1318_p2;
wire   [0:0] icmp_ln29_20_fu_1312_p2;
wire   [10:0] tmp_47_fu_1298_p4;
wire   [51:0] trunc_ln29_11_fu_1308_p1;
wire   [0:0] icmp_ln29_23_fu_1336_p2;
wire   [0:0] icmp_ln29_22_fu_1330_p2;
wire   [0:0] or_ln29_11_fu_1342_p2;
wire   [0:0] or_ln29_10_fu_1324_p2;
wire   [0:0] and_ln29_10_fu_1348_p2;
wire   [63:0] bitcast_ln29_12_fu_1367_p1;
wire   [63:0] bitcast_ln29_13_fu_1385_p1;
wire   [10:0] tmp_49_fu_1371_p4;
wire   [51:0] trunc_ln29_12_fu_1381_p1;
wire   [0:0] icmp_ln29_25_fu_1408_p2;
wire   [0:0] icmp_ln29_24_fu_1402_p2;
wire   [10:0] tmp_51_fu_1388_p4;
wire   [51:0] trunc_ln29_13_fu_1398_p1;
wire   [0:0] icmp_ln29_27_fu_1426_p2;
wire   [0:0] icmp_ln29_26_fu_1420_p2;
wire   [0:0] or_ln29_13_fu_1432_p2;
wire   [0:0] or_ln29_12_fu_1414_p2;
wire   [0:0] and_ln29_12_fu_1438_p2;
wire   [63:0] bitcast_ln29_14_fu_1458_p1;
wire   [63:0] bitcast_ln29_15_fu_1475_p1;
wire   [10:0] tmp_53_fu_1461_p4;
wire   [51:0] trunc_ln29_14_fu_1471_p1;
wire   [0:0] icmp_ln29_29_fu_1498_p2;
wire   [0:0] icmp_ln29_28_fu_1492_p2;
wire   [10:0] tmp_54_fu_1478_p4;
wire   [51:0] trunc_ln29_15_fu_1488_p1;
wire   [0:0] icmp_ln29_31_fu_1516_p2;
wire   [0:0] icmp_ln29_30_fu_1510_p2;
wire   [0:0] or_ln29_15_fu_1522_p2;
wire   [0:0] or_ln29_14_fu_1504_p2;
wire   [0:0] and_ln29_14_fu_1528_p2;
wire   [0:0] and_ln29_15_fu_1534_p2;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage15_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [16:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_120 = 64'd0;
#0 prev_fu_124 = 6'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_p_fu_120 <= min_p_18;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_120 <= min_p_35_fu_1539_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_124 <= 6'd1;
    end else if (((tmp_25_reg_1665 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_124 <= add_ln25_1_fu_814_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_1834 <= grp_fu_539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_1839 <= grp_fu_539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_1659 <= add_ln25_fu_585_p2;
        prev_1_reg_1590 <= ap_sig_allocacmp_prev_1;
        shl_ln1_reg_1630[10 : 5] <= shl_ln1_fu_533_p3[10 : 5];
        tmp_25_reg_1665 <= add_ln25_fu_585_p2[32'd6];
        tmp_25_reg_1665_pp0_iter1_reg <= tmp_25_reg_1665;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_1927 <= and_ln29_11_fu_1354_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_1939 <= and_ln29_13_fu_1444_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_1851 <= and_ln29_1_fu_905_p2;
        llike_load_reg_1764 <= llike_q0;
        tmp_50_reg_1759 <= {{add_ln27_9_fu_739_p2[10:5]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_1863 <= and_ln29_3_fu_995_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_1875 <= and_ln29_5_fu_1085_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_1903 <= and_ln29_7_fu_1174_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_1915 <= and_ln29_9_fu_1264_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_1886 <= icmp_ln29_14_fu_1116_p2;
        icmp_ln29_15_reg_1891 <= icmp_ln29_15_fu_1122_p2;
        min_p_25_reg_1880 <= min_p_25_fu_1091_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_reg_1669 <= llike_1_q0;
        llike_2_load_reg_1674 <= llike_2_q0;
        llike_3_load_reg_1679 <= llike_3_q0;
        llike_4_load_reg_1694 <= llike_4_q0;
        llike_5_load_reg_1709 <= llike_5_q0;
        llike_6_load_reg_1714 <= llike_6_q0;
        llike_7_load_reg_1719 <= llike_7_q0;
        min_p_19_reg_1844 <= min_p_fu_120;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_21_reg_1856 <= min_p_21_fu_911_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_23_reg_1868 <= min_p_23_fu_1001_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_27_reg_1908 <= min_p_27_fu_1180_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_29_reg_1920 <= min_p_29_fu_1270_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_31_reg_1932 <= min_p_31_fu_1360_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_33_reg_1944 <= min_p_33_fu_1450_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_14_reg_1896 <= grp_fu_539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_443 <= grp_fu_429_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_447 <= grp_fu_436_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_451 <= grp_fu_539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_457 <= grp_fu_539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_463 <= grp_fu_539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_469 <= grp_fu_539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_475 <= grp_fu_539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_481 <= grp_fu_539_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln27_3_reg_1734 <= grp_fu_436_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln27_4_reg_1774 <= grp_fu_429_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln27_7_reg_1804 <= grp_fu_436_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_55_reg_1951 <= grp_fu_1144_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_25_reg_1665 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_25_reg_1665_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_421_p0 = add52_7_reg_1839;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_421_p0 = reg_481;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_421_p0 = add52_5_reg_1834;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_421_p0 = reg_475;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_421_p0 = reg_469;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_421_p0 = reg_463;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_421_p0 = reg_457;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_421_p0 = reg_451;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_421_p0 = llike_load_reg_1764;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_421_p0 = llike_7_load_reg_1719;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_421_p0 = llike_6_load_reg_1714;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_421_p0 = llike_5_load_reg_1709;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_421_p0 = llike_4_load_reg_1694;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_421_p0 = llike_3_load_reg_1679;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_421_p0 = llike_2_load_reg_1674;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p0 = llike_1_load_reg_1669;
    end else begin
        grp_fu_421_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_421_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_421_p1 = bitcast_ln27_7_fu_810_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_421_p1 = bitcast_ln27_6_fu_805_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_421_p1 = bitcast_ln27_5_fu_800_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_421_p1 = bitcast_ln27_4_fu_796_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_421_p1 = bitcast_ln27_3_fu_792_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_421_p1 = bitcast_ln27_2_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_421_p1 = bitcast_ln27_1_fu_754_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_421_p1 = bitcast_ln27_fu_678_p1;
    end else begin
        grp_fu_421_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_425_p0 = p_14_reg_1896;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_425_p0 = reg_481;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_425_p0 = reg_475;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_425_p0 = reg_469;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_425_p0 = reg_463;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_425_p0 = reg_457;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_425_p0 = reg_451;
    end else begin
        grp_fu_425_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_425_p1 = min_p_33_fu_1450_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_425_p1 = min_p_31_fu_1360_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_425_p1 = min_p_29_fu_1270_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_425_p1 = min_p_27_fu_1180_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_425_p1 = min_p_25_fu_1091_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_425_p1 = min_p_23_fu_1001_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_425_p1 = min_p_21_fu_911_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_425_p1 = min_p_fu_120;
        end else begin
            grp_fu_425_p1 = 'bx;
        end
    end else begin
        grp_fu_425_p1 = 'bx;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_25_reg_1665_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_34_out_ap_vld = 1'b1;
    end else begin
        min_p_34_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_781_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_733_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_649_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_579_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln27_6_fu_765_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_705_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_621_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_549_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln27_7_fu_781_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_733_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_649_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_579_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln27_6_fu_765_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_705_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_621_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_549_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
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
assign add_ln25_1_fu_814_p2 = (prev_1_reg_1590 + 6'd8);
assign add_ln25_fu_585_p2 = (zext_ln16_fu_500_p1 + 7'd7);
assign add_ln26_fu_668_p2 = (empty + zext_ln26_1_fu_664_p1);
assign add_ln27_10_fu_759_p3 = {{tmp_50_reg_1759}, {lshr_ln}};
assign add_ln27_11_fu_774_p3 = {{trunc_ln27_fu_771_p1}, {lshr_ln}};
assign add_ln27_1_fu_599_p2 = (shl_ln1_reg_1630 + 11'd64);
assign add_ln27_2_fu_571_p3 = {{tmp_29_fu_561_p4}, {lshr_ln}};
assign add_ln27_3_fu_627_p2 = (shl_ln1_reg_1630 + 11'd96);
assign add_ln27_4_fu_614_p3 = {{tmp_34_fu_604_p4}, {lshr_ln}};
assign add_ln27_5_fu_683_p2 = (shl_ln1_reg_1630 + 11'd128);
assign add_ln27_6_fu_642_p3 = {{tmp_38_fu_632_p4}, {lshr_ln}};
assign add_ln27_7_fu_711_p2 = (shl_ln1_reg_1630 + 11'd160);
assign add_ln27_8_fu_698_p3 = {{tmp_42_fu_688_p4}, {lshr_ln}};
assign add_ln27_9_fu_739_p2 = (shl_ln1_reg_1630 + 11'd192);
assign add_ln27_fu_555_p2 = (shl_ln1_fu_533_p3 + 11'd32);
assign add_ln27_s_fu_726_p3 = {{tmp_46_fu_716_p4}, {lshr_ln}};
assign add_ln_fu_541_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_10_fu_1348_p2 = (or_ln29_11_fu_1342_p2 & or_ln29_10_fu_1324_p2);
assign and_ln29_11_fu_1354_p2 = (grp_fu_1144_p_dout0 & and_ln29_10_fu_1348_p2);
assign and_ln29_12_fu_1438_p2 = (or_ln29_13_fu_1432_p2 & or_ln29_12_fu_1414_p2);
assign and_ln29_13_fu_1444_p2 = (grp_fu_1144_p_dout0 & and_ln29_12_fu_1438_p2);
assign and_ln29_14_fu_1528_p2 = (or_ln29_15_fu_1522_p2 & or_ln29_14_fu_1504_p2);
assign and_ln29_15_fu_1534_p2 = (tmp_55_reg_1951 & and_ln29_14_fu_1528_p2);
assign and_ln29_1_fu_905_p2 = (or_ln29_1_fu_893_p2 & and_ln29_fu_899_p2);
assign and_ln29_2_fu_989_p2 = (or_ln29_3_fu_983_p2 & or_ln29_2_fu_965_p2);
assign and_ln29_3_fu_995_p2 = (grp_fu_1144_p_dout0 & and_ln29_2_fu_989_p2);
assign and_ln29_4_fu_1079_p2 = (or_ln29_5_fu_1073_p2 & or_ln29_4_fu_1055_p2);
assign and_ln29_5_fu_1085_p2 = (grp_fu_1144_p_dout0 & and_ln29_4_fu_1079_p2);
assign and_ln29_6_fu_1168_p2 = (or_ln29_7_fu_1164_p2 & or_ln29_6_fu_1158_p2);
assign and_ln29_7_fu_1174_p2 = (grp_fu_1144_p_dout0 & and_ln29_6_fu_1168_p2);
assign and_ln29_8_fu_1258_p2 = (or_ln29_9_fu_1252_p2 & or_ln29_8_fu_1234_p2);
assign and_ln29_9_fu_1264_p2 = (grp_fu_1144_p_dout0 & and_ln29_8_fu_1258_p2);
assign and_ln29_fu_899_p2 = (or_ln29_fu_875_p2 & grp_fu_1144_p_dout0);
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
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_01001 = ~(1'b1 == 1'b1);
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
assign bitcast_ln27_1_fu_754_p1 = reg_447;
assign bitcast_ln27_2_fu_787_p1 = reg_443;
assign bitcast_ln27_3_fu_792_p1 = select_ln27_3_reg_1734;
assign bitcast_ln27_4_fu_796_p1 = select_ln27_4_reg_1774;
assign bitcast_ln27_5_fu_800_p1 = reg_447;
assign bitcast_ln27_6_fu_805_p1 = reg_443;
assign bitcast_ln27_7_fu_810_p1 = select_ln27_7_reg_1804;
assign bitcast_ln27_fu_678_p1 = reg_443;
assign bitcast_ln29_10_fu_1277_p1 = reg_475;
assign bitcast_ln29_11_fu_1295_p1 = min_p_29_reg_1920;
assign bitcast_ln29_12_fu_1367_p1 = reg_481;
assign bitcast_ln29_13_fu_1385_p1 = min_p_31_reg_1932;
assign bitcast_ln29_14_fu_1458_p1 = p_14_reg_1896;
assign bitcast_ln29_15_fu_1475_p1 = min_p_33_reg_1944;
assign bitcast_ln29_1_fu_846_p1 = min_p_19_reg_1844;
assign bitcast_ln29_2_fu_918_p1 = reg_457;
assign bitcast_ln29_3_fu_936_p1 = min_p_21_reg_1856;
assign bitcast_ln29_4_fu_1008_p1 = reg_463;
assign bitcast_ln29_5_fu_1026_p1 = min_p_23_reg_1868;
assign bitcast_ln29_6_fu_1128_p1 = reg_451;
assign bitcast_ln29_7_fu_1098_p1 = min_p_25_fu_1091_p3;
assign bitcast_ln29_8_fu_1187_p1 = reg_469;
assign bitcast_ln29_9_fu_1205_p1 = min_p_27_reg_1908;
assign bitcast_ln29_fu_828_p1 = reg_451;
assign grp_fu_1144_p_ce = 1'b1;
assign grp_fu_1144_p_din0 = grp_fu_425_p0;
assign grp_fu_1144_p_din1 = grp_fu_425_p1;
assign grp_fu_1144_p_opcode = 5'd4;
assign grp_fu_429_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_436_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_539_p_ce = 1'b1;
assign grp_fu_539_p_din0 = grp_fu_421_p0;
assign grp_fu_539_p_din1 = grp_fu_421_p1;
assign grp_fu_539_p_opcode = 2'd0;
assign icmp_ln29_10_fu_1061_p2 = ((tmp_35_fu_1029_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1067_p2 = ((trunc_ln29_5_fu_1039_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1146_p2 = ((tmp_37_fu_1132_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1152_p2 = ((trunc_ln29_6_fu_1142_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1116_p2 = ((tmp_39_fu_1102_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1122_p2 = ((trunc_ln29_7_fu_1112_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1222_p2 = ((tmp_41_fu_1191_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1228_p2 = ((trunc_ln29_8_fu_1201_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1240_p2 = ((tmp_43_fu_1208_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1246_p2 = ((trunc_ln29_9_fu_1218_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_869_p2 = ((trunc_ln29_fu_842_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1312_p2 = ((tmp_45_fu_1281_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1318_p2 = ((trunc_ln29_10_fu_1291_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1330_p2 = ((tmp_47_fu_1298_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1336_p2 = ((trunc_ln29_11_fu_1308_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1402_p2 = ((tmp_49_fu_1371_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1408_p2 = ((trunc_ln29_12_fu_1381_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1420_p2 = ((tmp_51_fu_1388_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1426_p2 = ((trunc_ln29_13_fu_1398_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_1492_p2 = ((tmp_53_fu_1461_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_1498_p2 = ((trunc_ln29_14_fu_1471_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_881_p2 = ((tmp_27_fu_849_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_1510_p2 = ((tmp_54_fu_1478_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_1516_p2 = ((trunc_ln29_15_fu_1488_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_887_p2 = ((trunc_ln29_1_fu_859_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_953_p2 = ((tmp_30_fu_922_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_959_p2 = ((trunc_ln29_2_fu_932_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_971_p2 = ((tmp_31_fu_939_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_977_p2 = ((trunc_ln29_3_fu_949_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1043_p2 = ((tmp_33_fu_1012_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1049_p2 = ((trunc_ln29_4_fu_1022_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_863_p2 = ((tmp_26_fu_832_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_fu_522_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln26_fu_522_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln26_fu_522_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln26_fu_522_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln26_fu_522_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln26_fu_522_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln26_fu_522_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_address0 = zext_ln26_2_fu_673_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_504_p4 = {{ap_sig_allocacmp_prev_1[5:3]}};
assign lshr_ln8_1_fu_655_p4 = {{add_ln25_reg_1659[6:3]}};
assign min_p_21_fu_911_p3 = ((and_ln29_1_reg_1851[0:0] == 1'b1) ? reg_451 : min_p_19_reg_1844);
assign min_p_23_fu_1001_p3 = ((and_ln29_3_reg_1863[0:0] == 1'b1) ? reg_457 : min_p_21_reg_1856);
assign min_p_25_fu_1091_p3 = ((and_ln29_5_reg_1875[0:0] == 1'b1) ? reg_463 : min_p_23_reg_1868);
assign min_p_27_fu_1180_p3 = ((and_ln29_7_reg_1903[0:0] == 1'b1) ? reg_451 : min_p_25_reg_1880);
assign min_p_29_fu_1270_p3 = ((and_ln29_9_reg_1915[0:0] == 1'b1) ? reg_469 : min_p_27_reg_1908);
assign min_p_31_fu_1360_p3 = ((and_ln29_11_reg_1927[0:0] == 1'b1) ? reg_475 : min_p_29_reg_1920);
assign min_p_33_fu_1450_p3 = ((and_ln29_13_reg_1939[0:0] == 1'b1) ? reg_481 : min_p_31_reg_1932);
assign min_p_34_out = ((and_ln29_13_reg_1939[0:0] == 1'b1) ? reg_481 : min_p_31_reg_1932);
assign min_p_35_fu_1539_p3 = ((and_ln29_15_fu_1534_p2[0:0] == 1'b1) ? p_14_reg_1896 : min_p_33_reg_1944);
assign or_ln29_10_fu_1324_p2 = (icmp_ln29_21_fu_1318_p2 | icmp_ln29_20_fu_1312_p2);
assign or_ln29_11_fu_1342_p2 = (icmp_ln29_23_fu_1336_p2 | icmp_ln29_22_fu_1330_p2);
assign or_ln29_12_fu_1414_p2 = (icmp_ln29_25_fu_1408_p2 | icmp_ln29_24_fu_1402_p2);
assign or_ln29_13_fu_1432_p2 = (icmp_ln29_27_fu_1426_p2 | icmp_ln29_26_fu_1420_p2);
assign or_ln29_14_fu_1504_p2 = (icmp_ln29_29_fu_1498_p2 | icmp_ln29_28_fu_1492_p2);
assign or_ln29_15_fu_1522_p2 = (icmp_ln29_31_fu_1516_p2 | icmp_ln29_30_fu_1510_p2);
assign or_ln29_1_fu_893_p2 = (icmp_ln29_3_fu_887_p2 | icmp_ln29_2_fu_881_p2);
assign or_ln29_2_fu_965_p2 = (icmp_ln29_5_fu_959_p2 | icmp_ln29_4_fu_953_p2);
assign or_ln29_3_fu_983_p2 = (icmp_ln29_7_fu_977_p2 | icmp_ln29_6_fu_971_p2);
assign or_ln29_4_fu_1055_p2 = (icmp_ln29_9_fu_1049_p2 | icmp_ln29_8_fu_1043_p2);
assign or_ln29_5_fu_1073_p2 = (icmp_ln29_11_fu_1067_p2 | icmp_ln29_10_fu_1061_p2);
assign or_ln29_6_fu_1158_p2 = (icmp_ln29_13_fu_1152_p2 | icmp_ln29_12_fu_1146_p2);
assign or_ln29_7_fu_1164_p2 = (icmp_ln29_15_reg_1891 | icmp_ln29_14_reg_1886);
assign or_ln29_8_fu_1234_p2 = (icmp_ln29_17_fu_1228_p2 | icmp_ln29_16_fu_1222_p2);
assign or_ln29_9_fu_1252_p2 = (icmp_ln29_19_fu_1246_p2 | icmp_ln29_18_fu_1240_p2);
assign or_ln29_fu_875_p2 = (icmp_ln29_fu_863_p2 | icmp_ln29_1_fu_869_p2);
assign shl_ln1_fu_533_p3 = {{ap_sig_allocacmp_prev_1}, {5'd0}};
assign tmp_26_fu_832_p4 = {{bitcast_ln29_fu_828_p1[62:52]}};
assign tmp_27_fu_849_p4 = {{bitcast_ln29_1_fu_846_p1[62:52]}};
assign tmp_29_fu_561_p4 = {{add_ln27_fu_555_p2[10:5]}};
assign tmp_30_fu_922_p4 = {{bitcast_ln29_2_fu_918_p1[62:52]}};
assign tmp_31_fu_939_p4 = {{bitcast_ln29_3_fu_936_p1[62:52]}};
assign tmp_33_fu_1012_p4 = {{bitcast_ln29_4_fu_1008_p1[62:52]}};
assign tmp_34_fu_604_p4 = {{add_ln27_1_fu_599_p2[10:5]}};
assign tmp_35_fu_1029_p4 = {{bitcast_ln29_5_fu_1026_p1[62:52]}};
assign tmp_37_fu_1132_p4 = {{bitcast_ln29_6_fu_1128_p1[62:52]}};
assign tmp_38_fu_632_p4 = {{add_ln27_3_fu_627_p2[10:5]}};
assign tmp_39_fu_1102_p4 = {{bitcast_ln29_7_fu_1098_p1[62:52]}};
assign tmp_41_fu_1191_p4 = {{bitcast_ln29_8_fu_1187_p1[62:52]}};
assign tmp_42_fu_688_p4 = {{add_ln27_5_fu_683_p2[10:5]}};
assign tmp_43_fu_1208_p4 = {{bitcast_ln29_9_fu_1205_p1[62:52]}};
assign tmp_45_fu_1281_p4 = {{bitcast_ln29_10_fu_1277_p1[62:52]}};
assign tmp_46_fu_716_p4 = {{add_ln27_7_fu_711_p2[10:5]}};
assign tmp_47_fu_1298_p4 = {{bitcast_ln29_11_fu_1295_p1[62:52]}};
assign tmp_49_fu_1371_p4 = {{bitcast_ln29_12_fu_1367_p1[62:52]}};
assign tmp_51_fu_1388_p4 = {{bitcast_ln29_13_fu_1385_p1[62:52]}};
assign tmp_53_fu_1461_p4 = {{bitcast_ln29_14_fu_1458_p1[62:52]}};
assign tmp_54_fu_1478_p4 = {{bitcast_ln29_15_fu_1475_p1[62:52]}};
assign tmp_s_fu_514_p3 = {{empty_9}, {lshr_ln7_1_fu_504_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln27_fu_771_p1 = add_ln25_reg_1659[5:0];
assign trunc_ln29_10_fu_1291_p1 = bitcast_ln29_10_fu_1277_p1[51:0];
assign trunc_ln29_11_fu_1308_p1 = bitcast_ln29_11_fu_1295_p1[51:0];
assign trunc_ln29_12_fu_1381_p1 = bitcast_ln29_12_fu_1367_p1[51:0];
assign trunc_ln29_13_fu_1398_p1 = bitcast_ln29_13_fu_1385_p1[51:0];
assign trunc_ln29_14_fu_1471_p1 = bitcast_ln29_14_fu_1458_p1[51:0];
assign trunc_ln29_15_fu_1488_p1 = bitcast_ln29_15_fu_1475_p1[51:0];
assign trunc_ln29_1_fu_859_p1 = bitcast_ln29_1_fu_846_p1[51:0];
assign trunc_ln29_2_fu_932_p1 = bitcast_ln29_2_fu_918_p1[51:0];
assign trunc_ln29_3_fu_949_p1 = bitcast_ln29_3_fu_936_p1[51:0];
assign trunc_ln29_4_fu_1022_p1 = bitcast_ln29_4_fu_1008_p1[51:0];
assign trunc_ln29_5_fu_1039_p1 = bitcast_ln29_5_fu_1026_p1[51:0];
assign trunc_ln29_6_fu_1142_p1 = bitcast_ln29_6_fu_1128_p1[51:0];
assign trunc_ln29_7_fu_1112_p1 = bitcast_ln29_7_fu_1098_p1[51:0];
assign trunc_ln29_8_fu_1201_p1 = bitcast_ln29_8_fu_1187_p1[51:0];
assign trunc_ln29_9_fu_1218_p1 = bitcast_ln29_9_fu_1205_p1[51:0];
assign trunc_ln29_fu_842_p1 = bitcast_ln29_fu_828_p1[51:0];
assign zext_ln16_fu_500_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_664_p1 = lshr_ln8_1_fu_655_p4;
assign zext_ln26_2_fu_673_p1 = add_ln26_fu_668_p2;
assign zext_ln26_fu_522_p1 = tmp_s_fu_514_p3;
assign zext_ln27_1_fu_579_p1 = add_ln27_2_fu_571_p3;
assign zext_ln27_2_fu_621_p1 = add_ln27_4_fu_614_p3;
assign zext_ln27_3_fu_649_p1 = add_ln27_6_fu_642_p3;
assign zext_ln27_4_fu_705_p1 = add_ln27_8_fu_698_p3;
assign zext_ln27_5_fu_733_p1 = add_ln27_s_fu_726_p3;
assign zext_ln27_6_fu_765_p1 = add_ln27_10_fu_759_p3;
assign zext_ln27_7_fu_781_p1 = add_ln27_11_fu_774_p3;
assign zext_ln27_fu_549_p1 = add_ln_fu_541_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_1630[4:0] <= 5'b00000;
end
endmodule 