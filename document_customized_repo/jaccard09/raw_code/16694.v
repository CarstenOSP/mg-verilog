module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_10,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,lshr_ln7,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty_10,bitcast_ln24,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,empty,min_p_26_out,min_p_26_out_ap_vld,grp_fu_400_p_din0,grp_fu_400_p_din1,grp_fu_400_p_opcode,grp_fu_400_p_dout0,grp_fu_400_p_ce,grp_fu_971_p_din0,grp_fu_971_p_din1,grp_fu_971_p_opcode,grp_fu_971_p_dout0,grp_fu_971_p_ce); 
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
input  [63:0] min_p_10;
input  [7:0] empty_9;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
input  [4:0] lshr_ln7;
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
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [12:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [12:0] empty;
output  [63:0] min_p_26_out;
output   min_p_26_out_ap_vld;
output  [63:0] grp_fu_400_p_din0;
output  [63:0] grp_fu_400_p_din1;
output  [1:0] grp_fu_400_p_opcode;
input  [63:0] grp_fu_400_p_dout0;
output   grp_fu_400_p_ce;
output  [63:0] grp_fu_971_p_din0;
output  [63:0] grp_fu_971_p_din1;
output  [4:0] grp_fu_971_p_opcode;
input  [0:0] grp_fu_971_p_dout0;
output   grp_fu_971_p_ce;
reg ap_idle;
reg min_p_26_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_48_reg_1713;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_397_p3;
reg   [63:0] reg_411;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_404_p3;
reg   [63:0] reg_415;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_419;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_425;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_431;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_437;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_443;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_449;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_1649;
wire   [4:0] lshr_ln7_1_fu_472_p4;
reg   [4:0] lshr_ln7_1_reg_1656;
wire   [5:0] add_ln25_1_fu_571_p2;
reg   [5:0] add_ln25_1_reg_1697;
wire   [6:0] add_ln25_3_fu_600_p2;
reg   [6:0] add_ln25_3_reg_1707;
reg   [0:0] tmp_48_reg_1713_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1717;
wire   [10:0] shl_ln1_fu_614_p3;
reg   [10:0] shl_ln1_reg_1722;
reg   [63:0] llike_load_1_reg_1728;
reg   [63:0] llike_1_load_1_reg_1733;
reg   [63:0] llike_load_reg_1748;
wire   [5:0] add_ln25_2_fu_679_p2;
reg   [5:0] add_ln25_2_reg_1768;
wire   [63:0] bitcast_ln27_fu_746_p1;
reg   [63:0] select_ln27_3_reg_1793;
reg   [63:0] llike_1_load_2_reg_1798;
reg   [63:0] llike_load_2_reg_1813;
reg   [63:0] llike_1_load_3_reg_1828;
reg   [5:0] tmp_47_reg_1833;
reg   [63:0] llike_load_3_reg_1838;
wire   [63:0] bitcast_ln27_1_fu_806_p1;
reg   [63:0] select_ln27_4_reg_1848;
wire   [63:0] bitcast_ln27_2_fu_839_p1;
reg   [63:0] select_ln27_7_reg_1878;
wire   [63:0] bitcast_ln27_3_fu_844_p1;
wire   [63:0] bitcast_ln27_4_fu_848_p1;
wire   [63:0] bitcast_ln27_5_fu_852_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln27_6_fu_857_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln27_7_fu_862_p1;
reg   [63:0] add52_5_reg_1908;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_1913;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_11_reg_1918;
wire   [0:0] and_ln29_1_fu_957_p2;
reg   [0:0] and_ln29_1_reg_1925;
wire   [63:0] min_p_13_fu_963_p3;
reg   [63:0] min_p_13_reg_1930;
wire   [0:0] and_ln29_3_fu_1047_p2;
reg   [0:0] and_ln29_3_reg_1937;
wire   [63:0] min_p_15_fu_1053_p3;
reg   [63:0] min_p_15_reg_1942;
wire   [0:0] and_ln29_5_fu_1137_p2;
reg   [0:0] and_ln29_5_reg_1949;
wire   [63:0] min_p_17_fu_1143_p3;
reg   [63:0] min_p_17_reg_1954;
wire   [0:0] icmp_ln29_14_fu_1168_p2;
reg   [0:0] icmp_ln29_14_reg_1960;
wire   [0:0] icmp_ln29_15_fu_1174_p2;
reg   [0:0] icmp_ln29_15_reg_1965;
reg   [63:0] p_10_reg_1970;
wire   [0:0] and_ln29_7_fu_1226_p2;
reg   [0:0] and_ln29_7_reg_1977;
wire   [63:0] min_p_19_fu_1232_p3;
reg   [63:0] min_p_19_reg_1982;
wire   [0:0] and_ln29_9_fu_1316_p2;
reg   [0:0] and_ln29_9_reg_1989;
wire   [63:0] min_p_21_fu_1322_p3;
reg   [63:0] min_p_21_reg_1994;
wire   [0:0] and_ln29_11_fu_1406_p2;
reg   [0:0] and_ln29_11_reg_2001;
wire   [63:0] min_p_23_fu_1412_p3;
reg   [63:0] min_p_23_reg_2006;
wire   [0:0] and_ln29_13_fu_1496_p2;
reg   [0:0] and_ln29_13_reg_2013;
wire   [63:0] min_p_25_fu_1502_p3;
reg   [63:0] min_p_25_reg_2018;
reg   [0:0] tmp_44_reg_2025;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_490_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_503_p1;
wire   [63:0] zext_ln26_1_fu_533_p1;
wire   [63:0] zext_ln27_1_fu_546_p1;
wire   [63:0] zext_ln26_2_fu_566_p1;
wire   [63:0] zext_ln26_3_fu_595_p1;
wire   [63:0] zext_ln27_2_fu_644_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_656_p1;
wire   [63:0] zext_ln26_4_fu_674_p1;
wire   [63:0] zext_ln26_5_fu_701_p1;
wire   [63:0] zext_ln26_6_fu_718_p1;
wire   [63:0] zext_ln26_8_fu_741_p1;
wire   [63:0] zext_ln27_4_fu_773_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_785_p1;
wire   [63:0] zext_ln27_6_fu_817_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_833_p1;
reg   [63:0] min_p_fu_110;
wire   [63:0] min_p_27_fu_1591_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_114;
wire   [5:0] add_ln25_4_fu_866_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce1_local;
reg   [12:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    llike_ce1_local;
reg   [12:0] llike_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_389_p0;
reg   [63:0] grp_fu_389_p1;
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
reg   [63:0] grp_fu_393_p0;
reg   [63:0] grp_fu_393_p1;
wire   [12:0] tmp_s_fu_482_p3;
wire   [10:0] add_ln_fu_495_p3;
wire   [5:0] add_ln25_fu_509_p2;
wire   [4:0] lshr_ln8_2_fu_515_p4;
wire   [12:0] tmp_19_fu_525_p3;
wire   [10:0] add_ln27_1_fu_538_p3;
wire   [4:0] add_ln8_fu_552_p2;
wire   [12:0] tmp_26_fu_558_p3;
wire   [4:0] lshr_ln8_3_fu_577_p4;
wire   [12:0] tmp_34_fu_587_p3;
wire   [6:0] zext_ln16_fu_468_p1;
wire   [10:0] add_ln27_fu_621_p2;
wire   [5:0] tmp_30_fu_627_p4;
wire   [10:0] add_ln27_3_fu_637_p3;
wire   [10:0] add_ln27_4_fu_650_p3;
wire   [4:0] add_ln8_1_fu_662_p2;
wire   [12:0] tmp_38_fu_667_p3;
wire   [4:0] lshr_ln8_4_fu_684_p4;
wire   [12:0] tmp_45_fu_694_p3;
wire   [4:0] add_ln8_2_fu_706_p2;
wire   [12:0] tmp_46_fu_711_p3;
wire   [5:0] lshr_ln8_5_fu_723_p4;
wire   [12:0] zext_ln26_7_fu_732_p1;
wire   [12:0] add_ln26_fu_736_p2;
wire   [10:0] add_ln27_2_fu_751_p2;
wire   [5:0] tmp_42_fu_756_p4;
wire   [10:0] add_ln27_6_fu_766_p3;
wire   [10:0] add_ln27_7_fu_779_p3;
wire   [10:0] add_ln27_5_fu_791_p2;
wire   [10:0] add_ln27_9_fu_811_p3;
wire   [5:0] trunc_ln27_fu_823_p1;
wire   [10:0] add_ln27_s_fu_826_p3;
wire   [63:0] bitcast_ln29_fu_880_p1;
wire   [63:0] bitcast_ln29_1_fu_898_p1;
wire   [10:0] tmp_14_fu_884_p4;
wire   [51:0] trunc_ln29_fu_894_p1;
wire   [0:0] icmp_ln29_1_fu_921_p2;
wire   [0:0] icmp_ln29_fu_915_p2;
wire   [10:0] tmp_16_fu_901_p4;
wire   [51:0] trunc_ln29_1_fu_911_p1;
wire   [0:0] icmp_ln29_3_fu_939_p2;
wire   [0:0] icmp_ln29_2_fu_933_p2;
wire   [0:0] or_ln29_fu_927_p2;
wire   [0:0] and_ln29_fu_951_p2;
wire   [0:0] or_ln29_1_fu_945_p2;
wire   [63:0] bitcast_ln29_2_fu_970_p1;
wire   [63:0] bitcast_ln29_3_fu_988_p1;
wire   [10:0] tmp_18_fu_974_p4;
wire   [51:0] trunc_ln29_2_fu_984_p1;
wire   [0:0] icmp_ln29_5_fu_1011_p2;
wire   [0:0] icmp_ln29_4_fu_1005_p2;
wire   [10:0] tmp_20_fu_991_p4;
wire   [51:0] trunc_ln29_3_fu_1001_p1;
wire   [0:0] icmp_ln29_7_fu_1029_p2;
wire   [0:0] icmp_ln29_6_fu_1023_p2;
wire   [0:0] or_ln29_3_fu_1035_p2;
wire   [0:0] or_ln29_2_fu_1017_p2;
wire   [0:0] and_ln29_2_fu_1041_p2;
wire   [63:0] bitcast_ln29_4_fu_1060_p1;
wire   [63:0] bitcast_ln29_5_fu_1078_p1;
wire   [10:0] tmp_22_fu_1064_p4;
wire   [51:0] trunc_ln29_4_fu_1074_p1;
wire   [0:0] icmp_ln29_9_fu_1101_p2;
wire   [0:0] icmp_ln29_8_fu_1095_p2;
wire   [10:0] tmp_23_fu_1081_p4;
wire   [51:0] trunc_ln29_5_fu_1091_p1;
wire   [0:0] icmp_ln29_11_fu_1119_p2;
wire   [0:0] icmp_ln29_10_fu_1113_p2;
wire   [0:0] or_ln29_5_fu_1125_p2;
wire   [0:0] or_ln29_4_fu_1107_p2;
wire   [0:0] and_ln29_4_fu_1131_p2;
wire   [63:0] bitcast_ln29_7_fu_1150_p1;
wire   [10:0] tmp_27_fu_1154_p4;
wire   [51:0] trunc_ln29_7_fu_1164_p1;
wire   [63:0] bitcast_ln29_6_fu_1180_p1;
wire   [10:0] tmp_25_fu_1184_p4;
wire   [51:0] trunc_ln29_6_fu_1194_p1;
wire   [0:0] icmp_ln29_13_fu_1204_p2;
wire   [0:0] icmp_ln29_12_fu_1198_p2;
wire   [0:0] or_ln29_7_fu_1216_p2;
wire   [0:0] or_ln29_6_fu_1210_p2;
wire   [0:0] and_ln29_6_fu_1220_p2;
wire   [63:0] bitcast_ln29_8_fu_1239_p1;
wire   [63:0] bitcast_ln29_9_fu_1257_p1;
wire   [10:0] tmp_29_fu_1243_p4;
wire   [51:0] trunc_ln29_8_fu_1253_p1;
wire   [0:0] icmp_ln29_17_fu_1280_p2;
wire   [0:0] icmp_ln29_16_fu_1274_p2;
wire   [10:0] tmp_31_fu_1260_p4;
wire   [51:0] trunc_ln29_9_fu_1270_p1;
wire   [0:0] icmp_ln29_19_fu_1298_p2;
wire   [0:0] icmp_ln29_18_fu_1292_p2;
wire   [0:0] or_ln29_9_fu_1304_p2;
wire   [0:0] or_ln29_8_fu_1286_p2;
wire   [0:0] and_ln29_8_fu_1310_p2;
wire   [63:0] bitcast_ln29_10_fu_1329_p1;
wire   [63:0] bitcast_ln29_11_fu_1347_p1;
wire   [10:0] tmp_33_fu_1333_p4;
wire   [51:0] trunc_ln29_10_fu_1343_p1;
wire   [0:0] icmp_ln29_21_fu_1370_p2;
wire   [0:0] icmp_ln29_20_fu_1364_p2;
wire   [10:0] tmp_35_fu_1350_p4;
wire   [51:0] trunc_ln29_11_fu_1360_p1;
wire   [0:0] icmp_ln29_23_fu_1388_p2;
wire   [0:0] icmp_ln29_22_fu_1382_p2;
wire   [0:0] or_ln29_11_fu_1394_p2;
wire   [0:0] or_ln29_10_fu_1376_p2;
wire   [0:0] and_ln29_10_fu_1400_p2;
wire   [63:0] bitcast_ln29_12_fu_1419_p1;
wire   [63:0] bitcast_ln29_13_fu_1437_p1;
wire   [10:0] tmp_37_fu_1423_p4;
wire   [51:0] trunc_ln29_12_fu_1433_p1;
wire   [0:0] icmp_ln29_25_fu_1460_p2;
wire   [0:0] icmp_ln29_24_fu_1454_p2;
wire   [10:0] tmp_39_fu_1440_p4;
wire   [51:0] trunc_ln29_13_fu_1450_p1;
wire   [0:0] icmp_ln29_27_fu_1478_p2;
wire   [0:0] icmp_ln29_26_fu_1472_p2;
wire   [0:0] or_ln29_13_fu_1484_p2;
wire   [0:0] or_ln29_12_fu_1466_p2;
wire   [0:0] and_ln29_12_fu_1490_p2;
wire   [63:0] bitcast_ln29_14_fu_1510_p1;
wire   [63:0] bitcast_ln29_15_fu_1527_p1;
wire   [10:0] tmp_41_fu_1513_p4;
wire   [51:0] trunc_ln29_14_fu_1523_p1;
wire   [0:0] icmp_ln29_29_fu_1550_p2;
wire   [0:0] icmp_ln29_28_fu_1544_p2;
wire   [10:0] tmp_43_fu_1530_p4;
wire   [51:0] trunc_ln29_15_fu_1540_p1;
wire   [0:0] icmp_ln29_31_fu_1568_p2;
wire   [0:0] icmp_ln29_30_fu_1562_p2;
wire   [0:0] or_ln29_15_fu_1574_p2;
wire   [0:0] or_ln29_14_fu_1556_p2;
wire   [0:0] and_ln29_14_fu_1580_p2;
wire   [0:0] and_ln29_15_fu_1586_p2;
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
#0 min_p_fu_110 = 64'd0;
#0 prev_fu_114 = 6'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
            min_p_fu_110 <= min_p_10;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_110 <= min_p_27_fu_1591_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_114 <= 6'd1;
    end else if (((tmp_48_reg_1713 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_114 <= add_ln25_4_fu_866_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_1908 <= grp_fu_400_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_1913 <= grp_fu_400_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_1697 <= add_ln25_1_fu_571_p2;
        add_ln25_3_reg_1707 <= add_ln25_3_fu_600_p2;
        lshr_ln7_1_reg_1656 <= {{ap_sig_allocacmp_prev_1[5:1]}};
        prev_1_reg_1649 <= ap_sig_allocacmp_prev_1;
        tmp_48_reg_1713 <= add_ln25_3_fu_600_p2[32'd6];
        tmp_48_reg_1713_pp0_iter1_reg <= tmp_48_reg_1713;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln25_2_reg_1768 <= add_ln25_2_fu_679_p2;
        min_p_11_reg_1918 <= min_p_fu_110;
        shl_ln1_reg_1722[10 : 5] <= shl_ln1_fu_614_p3[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_2001 <= and_ln29_11_fu_1406_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_2013 <= and_ln29_13_fu_1496_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_1925 <= and_ln29_1_fu_957_p2;
        tmp_47_reg_1833 <= {{add_ln27_5_fu_791_p2[10:5]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_1937 <= and_ln29_3_fu_1047_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_1949 <= and_ln29_5_fu_1137_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_1977 <= and_ln29_7_fu_1226_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_1989 <= and_ln29_9_fu_1316_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_1960 <= icmp_ln29_14_fu_1168_p2;
        icmp_ln29_15_reg_1965 <= icmp_ln29_15_fu_1174_p2;
        min_p_17_reg_1954 <= min_p_17_fu_1143_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_1733 <= llike_1_q0;
        llike_1_load_reg_1717 <= llike_1_q1;
        llike_load_1_reg_1728 <= llike_q1;
        llike_load_reg_1748 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_1798 <= llike_1_q1;
        llike_1_load_3_reg_1828 <= llike_1_q0;
        llike_load_2_reg_1813 <= llike_q1;
        llike_load_3_reg_1838 <= llike_q0;
        select_ln27_3_reg_1793 <= grp_fu_404_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_13_reg_1930 <= min_p_13_fu_963_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_15_reg_1942 <= min_p_15_fu_1053_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_19_reg_1982 <= min_p_19_fu_1232_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_21_reg_1994 <= min_p_21_fu_1322_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_23_reg_2006 <= min_p_23_fu_1412_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_25_reg_2018 <= min_p_25_fu_1502_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_10_reg_1970 <= grp_fu_400_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_411 <= grp_fu_397_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_415 <= grp_fu_404_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_419 <= grp_fu_400_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_425 <= grp_fu_400_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_431 <= grp_fu_400_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_437 <= grp_fu_400_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_443 <= grp_fu_400_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_449 <= grp_fu_400_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln27_4_reg_1848 <= grp_fu_397_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln27_7_reg_1878 <= grp_fu_404_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_44_reg_2025 <= grp_fu_971_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_48_reg_1713 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_48_reg_1713_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_389_p0 = add52_7_reg_1913;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_389_p0 = reg_449;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_389_p0 = add52_5_reg_1908;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_389_p0 = reg_443;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_389_p0 = reg_437;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_389_p0 = reg_431;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_389_p0 = reg_425;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_389_p0 = reg_419;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_389_p0 = llike_load_3_reg_1838;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_389_p0 = llike_1_load_3_reg_1828;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_389_p0 = llike_load_2_reg_1813;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_389_p0 = llike_1_load_2_reg_1798;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_389_p0 = llike_load_reg_1748;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_389_p0 = llike_1_load_1_reg_1733;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_389_p0 = llike_load_1_reg_1728;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_389_p0 = llike_1_load_reg_1717;
    end else begin
        grp_fu_389_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_389_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_389_p1 = bitcast_ln27_7_fu_862_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_389_p1 = bitcast_ln27_6_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_389_p1 = bitcast_ln27_5_fu_852_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_389_p1 = bitcast_ln27_4_fu_848_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_389_p1 = bitcast_ln27_3_fu_844_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_389_p1 = bitcast_ln27_2_fu_839_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_389_p1 = bitcast_ln27_1_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_389_p1 = bitcast_ln27_fu_746_p1;
    end else begin
        grp_fu_389_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_393_p0 = p_10_reg_1970;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_393_p0 = reg_449;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_393_p0 = reg_443;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_393_p0 = reg_437;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_393_p0 = reg_431;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_393_p0 = reg_425;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_393_p0 = reg_419;
    end else begin
        grp_fu_393_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_393_p1 = min_p_25_fu_1502_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_393_p1 = min_p_23_fu_1412_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_393_p1 = min_p_21_fu_1322_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_393_p1 = min_p_19_fu_1232_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_393_p1 = min_p_17_fu_1143_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_393_p1 = min_p_15_fu_1053_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_393_p1 = min_p_13_fu_963_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_393_p1 = min_p_fu_110;
        end else begin
            grp_fu_393_p1 = 'bx;
        end
    end else begin
        grp_fu_393_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_6_fu_718_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_2_fu_566_p1;
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
            llike_1_address1_local = zext_ln26_4_fu_674_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln26_fu_490_p1;
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
            llike_address0_local = zext_ln26_8_fu_741_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_3_fu_595_p1;
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
            llike_address1_local = zext_ln26_5_fu_701_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_1_fu_533_p1;
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
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_48_reg_1713_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_26_out_ap_vld = 1'b1;
    end else begin
        min_p_26_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_833_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_785_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_656_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_546_p1;
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
            transition_0_address1_local = zext_ln27_6_fu_817_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_773_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_644_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_503_p1;
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
            transition_1_address0_local = zext_ln27_7_fu_833_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_785_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_656_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_546_p1;
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
            transition_1_address1_local = zext_ln27_6_fu_817_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_773_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_644_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_503_p1;
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
assign add_ln25_1_fu_571_p2 = (ap_sig_allocacmp_prev_1 + 6'd3);
assign add_ln25_2_fu_679_p2 = (prev_1_reg_1649 + 6'd5);
assign add_ln25_3_fu_600_p2 = (zext_ln16_fu_468_p1 + 7'd7);
assign add_ln25_4_fu_866_p2 = (prev_1_reg_1649 + 6'd8);
assign add_ln25_fu_509_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_736_p2 = (empty + zext_ln26_7_fu_732_p1);
assign add_ln27_1_fu_538_p3 = {{add_ln25_fu_509_p2}, {lshr_ln7}};
assign add_ln27_2_fu_751_p2 = (shl_ln1_reg_1722 + 11'd128);
assign add_ln27_3_fu_637_p3 = {{tmp_30_fu_627_p4}, {lshr_ln7}};
assign add_ln27_4_fu_650_p3 = {{add_ln25_1_reg_1697}, {lshr_ln7}};
assign add_ln27_5_fu_791_p2 = (shl_ln1_reg_1722 + 11'd192);
assign add_ln27_6_fu_766_p3 = {{tmp_42_fu_756_p4}, {lshr_ln7}};
assign add_ln27_7_fu_779_p3 = {{add_ln25_2_reg_1768}, {lshr_ln7}};
assign add_ln27_9_fu_811_p3 = {{tmp_47_reg_1833}, {lshr_ln7}};
assign add_ln27_fu_621_p2 = (shl_ln1_fu_614_p3 + 11'd64);
assign add_ln27_s_fu_826_p3 = {{trunc_ln27_fu_823_p1}, {lshr_ln7}};
assign add_ln8_1_fu_662_p2 = (lshr_ln7_1_reg_1656 + 5'd2);
assign add_ln8_2_fu_706_p2 = (lshr_ln7_1_reg_1656 + 5'd3);
assign add_ln8_fu_552_p2 = (lshr_ln7_1_fu_472_p4 + 5'd1);
assign add_ln_fu_495_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln7}};
assign and_ln29_10_fu_1400_p2 = (or_ln29_11_fu_1394_p2 & or_ln29_10_fu_1376_p2);
assign and_ln29_11_fu_1406_p2 = (grp_fu_971_p_dout0 & and_ln29_10_fu_1400_p2);
assign and_ln29_12_fu_1490_p2 = (or_ln29_13_fu_1484_p2 & or_ln29_12_fu_1466_p2);
assign and_ln29_13_fu_1496_p2 = (grp_fu_971_p_dout0 & and_ln29_12_fu_1490_p2);
assign and_ln29_14_fu_1580_p2 = (or_ln29_15_fu_1574_p2 & or_ln29_14_fu_1556_p2);
assign and_ln29_15_fu_1586_p2 = (tmp_44_reg_2025 & and_ln29_14_fu_1580_p2);
assign and_ln29_1_fu_957_p2 = (or_ln29_1_fu_945_p2 & and_ln29_fu_951_p2);
assign and_ln29_2_fu_1041_p2 = (or_ln29_3_fu_1035_p2 & or_ln29_2_fu_1017_p2);
assign and_ln29_3_fu_1047_p2 = (grp_fu_971_p_dout0 & and_ln29_2_fu_1041_p2);
assign and_ln29_4_fu_1131_p2 = (or_ln29_5_fu_1125_p2 & or_ln29_4_fu_1107_p2);
assign and_ln29_5_fu_1137_p2 = (grp_fu_971_p_dout0 & and_ln29_4_fu_1131_p2);
assign and_ln29_6_fu_1220_p2 = (or_ln29_7_fu_1216_p2 & or_ln29_6_fu_1210_p2);
assign and_ln29_7_fu_1226_p2 = (grp_fu_971_p_dout0 & and_ln29_6_fu_1220_p2);
assign and_ln29_8_fu_1310_p2 = (or_ln29_9_fu_1304_p2 & or_ln29_8_fu_1286_p2);
assign and_ln29_9_fu_1316_p2 = (grp_fu_971_p_dout0 & and_ln29_8_fu_1310_p2);
assign and_ln29_fu_951_p2 = (or_ln29_fu_927_p2 & grp_fu_971_p_dout0);
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
assign bitcast_ln27_1_fu_806_p1 = reg_415;
assign bitcast_ln27_2_fu_839_p1 = reg_411;
assign bitcast_ln27_3_fu_844_p1 = select_ln27_3_reg_1793;
assign bitcast_ln27_4_fu_848_p1 = select_ln27_4_reg_1848;
assign bitcast_ln27_5_fu_852_p1 = reg_415;
assign bitcast_ln27_6_fu_857_p1 = reg_411;
assign bitcast_ln27_7_fu_862_p1 = select_ln27_7_reg_1878;
assign bitcast_ln27_fu_746_p1 = reg_411;
assign bitcast_ln29_10_fu_1329_p1 = reg_443;
assign bitcast_ln29_11_fu_1347_p1 = min_p_21_reg_1994;
assign bitcast_ln29_12_fu_1419_p1 = reg_449;
assign bitcast_ln29_13_fu_1437_p1 = min_p_23_reg_2006;
assign bitcast_ln29_14_fu_1510_p1 = p_10_reg_1970;
assign bitcast_ln29_15_fu_1527_p1 = min_p_25_reg_2018;
assign bitcast_ln29_1_fu_898_p1 = min_p_11_reg_1918;
assign bitcast_ln29_2_fu_970_p1 = reg_425;
assign bitcast_ln29_3_fu_988_p1 = min_p_13_reg_1930;
assign bitcast_ln29_4_fu_1060_p1 = reg_431;
assign bitcast_ln29_5_fu_1078_p1 = min_p_15_reg_1942;
assign bitcast_ln29_6_fu_1180_p1 = reg_419;
assign bitcast_ln29_7_fu_1150_p1 = min_p_17_fu_1143_p3;
assign bitcast_ln29_8_fu_1239_p1 = reg_437;
assign bitcast_ln29_9_fu_1257_p1 = min_p_19_reg_1982;
assign bitcast_ln29_fu_880_p1 = reg_419;
assign grp_fu_397_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_400_p_ce = 1'b1;
assign grp_fu_400_p_din0 = grp_fu_389_p0;
assign grp_fu_400_p_din1 = grp_fu_389_p1;
assign grp_fu_400_p_opcode = 2'd0;
assign grp_fu_404_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_971_p_ce = 1'b1;
assign grp_fu_971_p_din0 = grp_fu_393_p0;
assign grp_fu_971_p_din1 = grp_fu_393_p1;
assign grp_fu_971_p_opcode = 5'd4;
assign icmp_ln29_10_fu_1113_p2 = ((tmp_23_fu_1081_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1119_p2 = ((trunc_ln29_5_fu_1091_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1198_p2 = ((tmp_25_fu_1184_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1204_p2 = ((trunc_ln29_6_fu_1194_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1168_p2 = ((tmp_27_fu_1154_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1174_p2 = ((trunc_ln29_7_fu_1164_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1274_p2 = ((tmp_29_fu_1243_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1280_p2 = ((trunc_ln29_8_fu_1253_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1292_p2 = ((tmp_31_fu_1260_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1298_p2 = ((trunc_ln29_9_fu_1270_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_921_p2 = ((trunc_ln29_fu_894_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1364_p2 = ((tmp_33_fu_1333_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1370_p2 = ((trunc_ln29_10_fu_1343_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1382_p2 = ((tmp_35_fu_1350_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1388_p2 = ((trunc_ln29_11_fu_1360_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1454_p2 = ((tmp_37_fu_1423_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1460_p2 = ((trunc_ln29_12_fu_1433_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1472_p2 = ((tmp_39_fu_1440_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1478_p2 = ((trunc_ln29_13_fu_1450_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_1544_p2 = ((tmp_41_fu_1513_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_1550_p2 = ((trunc_ln29_14_fu_1523_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_933_p2 = ((tmp_16_fu_901_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_1562_p2 = ((tmp_43_fu_1530_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_1568_p2 = ((trunc_ln29_15_fu_1540_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_939_p2 = ((trunc_ln29_1_fu_911_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_1005_p2 = ((tmp_18_fu_974_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_1011_p2 = ((trunc_ln29_2_fu_984_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1023_p2 = ((tmp_20_fu_991_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1029_p2 = ((trunc_ln29_3_fu_1001_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1095_p2 = ((tmp_22_fu_1064_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1101_p2 = ((trunc_ln29_4_fu_1074_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_915_p2 = ((tmp_14_fu_884_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln7_1_fu_472_p4 = {{ap_sig_allocacmp_prev_1[5:1]}};
assign lshr_ln8_2_fu_515_p4 = {{add_ln25_fu_509_p2[5:1]}};
assign lshr_ln8_3_fu_577_p4 = {{add_ln25_1_fu_571_p2[5:1]}};
assign lshr_ln8_4_fu_684_p4 = {{add_ln25_2_fu_679_p2[5:1]}};
assign lshr_ln8_5_fu_723_p4 = {{add_ln25_3_reg_1707[6:1]}};
assign min_p_13_fu_963_p3 = ((and_ln29_1_reg_1925[0:0] == 1'b1) ? reg_419 : min_p_11_reg_1918);
assign min_p_15_fu_1053_p3 = ((and_ln29_3_reg_1937[0:0] == 1'b1) ? reg_425 : min_p_13_reg_1930);
assign min_p_17_fu_1143_p3 = ((and_ln29_5_reg_1949[0:0] == 1'b1) ? reg_431 : min_p_15_reg_1942);
assign min_p_19_fu_1232_p3 = ((and_ln29_7_reg_1977[0:0] == 1'b1) ? reg_419 : min_p_17_reg_1954);
assign min_p_21_fu_1322_p3 = ((and_ln29_9_reg_1989[0:0] == 1'b1) ? reg_437 : min_p_19_reg_1982);
assign min_p_23_fu_1412_p3 = ((and_ln29_11_reg_2001[0:0] == 1'b1) ? reg_443 : min_p_21_reg_1994);
assign min_p_25_fu_1502_p3 = ((and_ln29_13_reg_2013[0:0] == 1'b1) ? reg_449 : min_p_23_reg_2006);
assign min_p_26_out = ((and_ln29_13_reg_2013[0:0] == 1'b1) ? reg_449 : min_p_23_reg_2006);
assign min_p_27_fu_1591_p3 = ((and_ln29_15_fu_1586_p2[0:0] == 1'b1) ? p_10_reg_1970 : min_p_25_reg_2018);
assign or_ln29_10_fu_1376_p2 = (icmp_ln29_21_fu_1370_p2 | icmp_ln29_20_fu_1364_p2);
assign or_ln29_11_fu_1394_p2 = (icmp_ln29_23_fu_1388_p2 | icmp_ln29_22_fu_1382_p2);
assign or_ln29_12_fu_1466_p2 = (icmp_ln29_25_fu_1460_p2 | icmp_ln29_24_fu_1454_p2);
assign or_ln29_13_fu_1484_p2 = (icmp_ln29_27_fu_1478_p2 | icmp_ln29_26_fu_1472_p2);
assign or_ln29_14_fu_1556_p2 = (icmp_ln29_29_fu_1550_p2 | icmp_ln29_28_fu_1544_p2);
assign or_ln29_15_fu_1574_p2 = (icmp_ln29_31_fu_1568_p2 | icmp_ln29_30_fu_1562_p2);
assign or_ln29_1_fu_945_p2 = (icmp_ln29_3_fu_939_p2 | icmp_ln29_2_fu_933_p2);
assign or_ln29_2_fu_1017_p2 = (icmp_ln29_5_fu_1011_p2 | icmp_ln29_4_fu_1005_p2);
assign or_ln29_3_fu_1035_p2 = (icmp_ln29_7_fu_1029_p2 | icmp_ln29_6_fu_1023_p2);
assign or_ln29_4_fu_1107_p2 = (icmp_ln29_9_fu_1101_p2 | icmp_ln29_8_fu_1095_p2);
assign or_ln29_5_fu_1125_p2 = (icmp_ln29_11_fu_1119_p2 | icmp_ln29_10_fu_1113_p2);
assign or_ln29_6_fu_1210_p2 = (icmp_ln29_13_fu_1204_p2 | icmp_ln29_12_fu_1198_p2);
assign or_ln29_7_fu_1216_p2 = (icmp_ln29_15_reg_1965 | icmp_ln29_14_reg_1960);
assign or_ln29_8_fu_1286_p2 = (icmp_ln29_17_fu_1280_p2 | icmp_ln29_16_fu_1274_p2);
assign or_ln29_9_fu_1304_p2 = (icmp_ln29_19_fu_1298_p2 | icmp_ln29_18_fu_1292_p2);
assign or_ln29_fu_927_p2 = (icmp_ln29_fu_915_p2 | icmp_ln29_1_fu_921_p2);
assign shl_ln1_fu_614_p3 = {{prev_1_reg_1649}, {5'd0}};
assign tmp_14_fu_884_p4 = {{bitcast_ln29_fu_880_p1[62:52]}};
assign tmp_16_fu_901_p4 = {{bitcast_ln29_1_fu_898_p1[62:52]}};
assign tmp_18_fu_974_p4 = {{bitcast_ln29_2_fu_970_p1[62:52]}};
assign tmp_19_fu_525_p3 = {{empty_9}, {lshr_ln8_2_fu_515_p4}};
assign tmp_20_fu_991_p4 = {{bitcast_ln29_3_fu_988_p1[62:52]}};
assign tmp_22_fu_1064_p4 = {{bitcast_ln29_4_fu_1060_p1[62:52]}};
assign tmp_23_fu_1081_p4 = {{bitcast_ln29_5_fu_1078_p1[62:52]}};
assign tmp_25_fu_1184_p4 = {{bitcast_ln29_6_fu_1180_p1[62:52]}};
assign tmp_26_fu_558_p3 = {{empty_9}, {add_ln8_fu_552_p2}};
assign tmp_27_fu_1154_p4 = {{bitcast_ln29_7_fu_1150_p1[62:52]}};
assign tmp_29_fu_1243_p4 = {{bitcast_ln29_8_fu_1239_p1[62:52]}};
assign tmp_30_fu_627_p4 = {{add_ln27_fu_621_p2[10:5]}};
assign tmp_31_fu_1260_p4 = {{bitcast_ln29_9_fu_1257_p1[62:52]}};
assign tmp_33_fu_1333_p4 = {{bitcast_ln29_10_fu_1329_p1[62:52]}};
assign tmp_34_fu_587_p3 = {{empty_9}, {lshr_ln8_3_fu_577_p4}};
assign tmp_35_fu_1350_p4 = {{bitcast_ln29_11_fu_1347_p1[62:52]}};
assign tmp_37_fu_1423_p4 = {{bitcast_ln29_12_fu_1419_p1[62:52]}};
assign tmp_38_fu_667_p3 = {{empty_9}, {add_ln8_1_fu_662_p2}};
assign tmp_39_fu_1440_p4 = {{bitcast_ln29_13_fu_1437_p1[62:52]}};
assign tmp_41_fu_1513_p4 = {{bitcast_ln29_14_fu_1510_p1[62:52]}};
assign tmp_42_fu_756_p4 = {{add_ln27_2_fu_751_p2[10:5]}};
assign tmp_43_fu_1530_p4 = {{bitcast_ln29_15_fu_1527_p1[62:52]}};
assign tmp_45_fu_694_p3 = {{empty_9}, {lshr_ln8_4_fu_684_p4}};
assign tmp_46_fu_711_p3 = {{empty_9}, {add_ln8_2_fu_706_p2}};
assign tmp_s_fu_482_p3 = {{empty_9}, {lshr_ln7_1_fu_472_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln27_fu_823_p1 = add_ln25_3_reg_1707[5:0];
assign trunc_ln29_10_fu_1343_p1 = bitcast_ln29_10_fu_1329_p1[51:0];
assign trunc_ln29_11_fu_1360_p1 = bitcast_ln29_11_fu_1347_p1[51:0];
assign trunc_ln29_12_fu_1433_p1 = bitcast_ln29_12_fu_1419_p1[51:0];
assign trunc_ln29_13_fu_1450_p1 = bitcast_ln29_13_fu_1437_p1[51:0];
assign trunc_ln29_14_fu_1523_p1 = bitcast_ln29_14_fu_1510_p1[51:0];
assign trunc_ln29_15_fu_1540_p1 = bitcast_ln29_15_fu_1527_p1[51:0];
assign trunc_ln29_1_fu_911_p1 = bitcast_ln29_1_fu_898_p1[51:0];
assign trunc_ln29_2_fu_984_p1 = bitcast_ln29_2_fu_970_p1[51:0];
assign trunc_ln29_3_fu_1001_p1 = bitcast_ln29_3_fu_988_p1[51:0];
assign trunc_ln29_4_fu_1074_p1 = bitcast_ln29_4_fu_1060_p1[51:0];
assign trunc_ln29_5_fu_1091_p1 = bitcast_ln29_5_fu_1078_p1[51:0];
assign trunc_ln29_6_fu_1194_p1 = bitcast_ln29_6_fu_1180_p1[51:0];
assign trunc_ln29_7_fu_1164_p1 = bitcast_ln29_7_fu_1150_p1[51:0];
assign trunc_ln29_8_fu_1253_p1 = bitcast_ln29_8_fu_1239_p1[51:0];
assign trunc_ln29_9_fu_1270_p1 = bitcast_ln29_9_fu_1257_p1[51:0];
assign trunc_ln29_fu_894_p1 = bitcast_ln29_fu_880_p1[51:0];
assign zext_ln16_fu_468_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_533_p1 = tmp_19_fu_525_p3;
assign zext_ln26_2_fu_566_p1 = tmp_26_fu_558_p3;
assign zext_ln26_3_fu_595_p1 = tmp_34_fu_587_p3;
assign zext_ln26_4_fu_674_p1 = tmp_38_fu_667_p3;
assign zext_ln26_5_fu_701_p1 = tmp_45_fu_694_p3;
assign zext_ln26_6_fu_718_p1 = tmp_46_fu_711_p3;
assign zext_ln26_7_fu_732_p1 = lshr_ln8_5_fu_723_p4;
assign zext_ln26_8_fu_741_p1 = add_ln26_fu_736_p2;
assign zext_ln26_fu_490_p1 = tmp_s_fu_482_p3;
assign zext_ln27_1_fu_546_p1 = add_ln27_1_fu_538_p3;
assign zext_ln27_2_fu_644_p1 = add_ln27_3_fu_637_p3;
assign zext_ln27_3_fu_656_p1 = add_ln27_4_fu_650_p3;
assign zext_ln27_4_fu_773_p1 = add_ln27_6_fu_766_p3;
assign zext_ln27_5_fu_785_p1 = add_ln27_7_fu_779_p3;
assign zext_ln27_6_fu_817_p1 = add_ln27_9_fu_811_p3;
assign zext_ln27_7_fu_833_p1 = add_ln27_s_fu_826_p3;
assign zext_ln27_fu_503_p1 = add_ln_fu_495_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_1722[4:0] <= 5'b00000;
end
endmodule 