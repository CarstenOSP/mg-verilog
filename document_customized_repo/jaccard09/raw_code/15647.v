module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_66,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_2_address0,llike_2_ce0,llike_2_q0,llike_2_address1,llike_2_ce1,llike_2_q1,llike_3_address0,llike_3_ce0,llike_3_q0,llike_3_address1,llike_3_ce1,llike_3_q1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty_10,bitcast_ln24,llike_address0,llike_ce0,llike_q0,empty,min_p_82_out,min_p_82_out_ap_vld,grp_fu_453_p_din0,grp_fu_453_p_din1,grp_fu_453_p_opcode,grp_fu_453_p_dout0,grp_fu_453_p_ce,grp_fu_1050_p_din0,grp_fu_1050_p_din1,grp_fu_1050_p_opcode,grp_fu_1050_p_dout0,grp_fu_1050_p_ce); 
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
input  [63:0] min_p_66;
input  [7:0] empty_9;
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
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [11:0] empty;
output  [63:0] min_p_82_out;
output   min_p_82_out_ap_vld;
output  [63:0] grp_fu_453_p_din0;
output  [63:0] grp_fu_453_p_din1;
output  [1:0] grp_fu_453_p_opcode;
input  [63:0] grp_fu_453_p_dout0;
output   grp_fu_453_p_ce;
output  [63:0] grp_fu_1050_p_din0;
output  [63:0] grp_fu_1050_p_din1;
output  [4:0] grp_fu_1050_p_opcode;
input  [0:0] grp_fu_1050_p_dout0;
output   grp_fu_1050_p_ce;
reg ap_idle;
reg min_p_82_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_137_reg_1717;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_415_p3;
reg   [63:0] reg_429;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_422_p3;
reg   [63:0] reg_433;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_437;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_443;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_449;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_455;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_461;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_467;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_1630;
wire   [10:0] shl_ln1_fu_515_p3;
reg   [10:0] shl_ln1_reg_1650;
wire   [5:0] add_ln25_fu_567_p2;
reg   [5:0] add_ln25_reg_1676;
wire   [5:0] add_ln25_1_fu_615_p2;
reg   [5:0] add_ln25_1_reg_1691;
wire   [5:0] add_ln25_2_fu_644_p2;
reg   [5:0] add_ln25_2_reg_1701;
wire   [6:0] add_ln25_3_fu_673_p2;
reg   [6:0] add_ln25_3_reg_1711;
reg   [0:0] tmp_137_reg_1717_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1721;
reg   [63:0] llike_2_load_reg_1726;
reg   [63:0] llike_3_load_reg_1731;
reg   [63:0] llike_load_1_reg_1746;
reg   [63:0] llike_1_load_1_reg_1761;
reg   [5:0] tmp_134_reg_1766;
reg   [63:0] llike_2_load_1_reg_1771;
reg   [63:0] llike_3_load_1_reg_1776;
wire   [63:0] bitcast_ln27_fu_765_p1;
reg   [63:0] select_ln27_3_reg_1791;
reg   [63:0] llike_load_3_reg_1816;
wire   [63:0] bitcast_ln27_1_fu_794_p1;
reg   [63:0] select_ln27_4_reg_1826;
wire   [63:0] bitcast_ln27_2_fu_827_p1;
reg   [63:0] select_ln27_7_reg_1856;
wire   [63:0] bitcast_ln27_3_fu_832_p1;
wire   [63:0] bitcast_ln27_4_fu_836_p1;
wire   [63:0] bitcast_ln27_5_fu_840_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln27_6_fu_845_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln27_7_fu_850_p1;
reg   [63:0] add52_5_reg_1886;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_1891;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_67_reg_1896;
wire   [0:0] and_ln29_1_fu_945_p2;
reg   [0:0] and_ln29_1_reg_1903;
wire   [63:0] min_p_69_fu_951_p3;
reg   [63:0] min_p_69_reg_1908;
wire   [0:0] and_ln29_3_fu_1035_p2;
reg   [0:0] and_ln29_3_reg_1915;
wire   [63:0] min_p_71_fu_1041_p3;
reg   [63:0] min_p_71_reg_1920;
wire   [0:0] and_ln29_5_fu_1125_p2;
reg   [0:0] and_ln29_5_reg_1927;
wire   [63:0] min_p_73_fu_1131_p3;
reg   [63:0] min_p_73_reg_1932;
wire   [0:0] icmp_ln29_14_fu_1156_p2;
reg   [0:0] icmp_ln29_14_reg_1938;
wire   [0:0] icmp_ln29_15_fu_1162_p2;
reg   [0:0] icmp_ln29_15_reg_1943;
reg   [63:0] p_38_reg_1948;
wire   [0:0] and_ln29_7_fu_1214_p2;
reg   [0:0] and_ln29_7_reg_1955;
wire   [63:0] min_p_75_fu_1220_p3;
reg   [63:0] min_p_75_reg_1960;
wire   [0:0] and_ln29_9_fu_1304_p2;
reg   [0:0] and_ln29_9_reg_1967;
wire   [63:0] min_p_77_fu_1310_p3;
reg   [63:0] min_p_77_reg_1972;
wire   [0:0] and_ln29_11_fu_1394_p2;
reg   [0:0] and_ln29_11_reg_1979;
wire   [63:0] min_p_79_fu_1400_p3;
reg   [63:0] min_p_79_reg_1984;
wire   [0:0] and_ln29_13_fu_1484_p2;
reg   [0:0] and_ln29_13_reg_1991;
wire   [63:0] min_p_81_fu_1490_p3;
reg   [63:0] min_p_81_reg_1996;
reg   [0:0] tmp_128_reg_2003;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_508_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_531_p1;
wire   [63:0] zext_ln27_1_fu_561_p1;
wire   [63:0] zext_ln26_1_fu_591_p1;
wire   [63:0] zext_ln26_2_fu_610_p1;
wire   [63:0] zext_ln26_3_fu_639_p1;
wire   [63:0] zext_ln26_4_fu_668_p1;
wire   [63:0] zext_ln27_2_fu_709_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_721_p1;
wire   [63:0] zext_ln26_6_fu_760_p1;
wire   [63:0] zext_ln27_4_fu_776_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_788_p1;
wire   [63:0] zext_ln27_6_fu_805_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_821_p1;
reg   [63:0] min_p_fu_114;
wire   [63:0] min_p_83_fu_1579_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_118;
wire   [5:0] add_ln25_4_fu_854_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    llike_2_ce1_local;
reg    llike_2_ce0_local;
reg    llike_3_ce1_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg   [63:0] grp_fu_407_p0;
reg   [63:0] grp_fu_407_p1;
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
reg   [63:0] grp_fu_411_p0;
reg   [63:0] grp_fu_411_p1;
wire   [3:0] lshr_ln7_1_fu_490_p4;
wire   [11:0] tmp_s_fu_500_p3;
wire   [10:0] add_ln_fu_523_p3;
wire   [10:0] add_ln27_fu_537_p2;
wire   [5:0] tmp_130_fu_543_p4;
wire   [10:0] add_ln27_2_fu_553_p3;
wire   [3:0] lshr_ln8_s_fu_573_p4;
wire   [11:0] tmp_132_fu_583_p3;
wire   [3:0] add_ln8_fu_596_p2;
wire   [11:0] tmp_133_fu_602_p3;
wire   [3:0] lshr_ln8_1_fu_621_p4;
wire   [11:0] tmp_135_fu_631_p3;
wire   [3:0] lshr_ln8_2_fu_650_p4;
wire   [11:0] tmp_136_fu_660_p3;
wire   [6:0] zext_ln16_fu_486_p1;
wire   [10:0] add_ln27_1_fu_687_p2;
wire   [5:0] tmp_131_fu_692_p4;
wire   [10:0] add_ln27_4_fu_702_p3;
wire   [10:0] add_ln27_5_fu_715_p3;
wire   [10:0] add_ln27_3_fu_727_p2;
wire   [4:0] lshr_ln8_3_fu_742_p4;
wire   [11:0] zext_ln26_5_fu_751_p1;
wire   [11:0] add_ln26_fu_755_p2;
wire   [10:0] add_ln27_7_fu_770_p3;
wire   [10:0] add_ln27_8_fu_782_p3;
wire   [10:0] add_ln27_9_fu_799_p3;
wire   [5:0] trunc_ln27_fu_811_p1;
wire   [10:0] add_ln27_s_fu_814_p3;
wire   [63:0] bitcast_ln29_fu_868_p1;
wire   [63:0] bitcast_ln29_1_fu_886_p1;
wire   [10:0] tmp_98_fu_872_p4;
wire   [51:0] trunc_ln29_fu_882_p1;
wire   [0:0] icmp_ln29_1_fu_909_p2;
wire   [0:0] icmp_ln29_fu_903_p2;
wire   [10:0] tmp_100_fu_889_p4;
wire   [51:0] trunc_ln29_1_fu_899_p1;
wire   [0:0] icmp_ln29_3_fu_927_p2;
wire   [0:0] icmp_ln29_2_fu_921_p2;
wire   [0:0] or_ln29_fu_915_p2;
wire   [0:0] and_ln29_fu_939_p2;
wire   [0:0] or_ln29_1_fu_933_p2;
wire   [63:0] bitcast_ln29_2_fu_958_p1;
wire   [63:0] bitcast_ln29_3_fu_976_p1;
wire   [10:0] tmp_102_fu_962_p4;
wire   [51:0] trunc_ln29_2_fu_972_p1;
wire   [0:0] icmp_ln29_5_fu_999_p2;
wire   [0:0] icmp_ln29_4_fu_993_p2;
wire   [10:0] tmp_103_fu_979_p4;
wire   [51:0] trunc_ln29_3_fu_989_p1;
wire   [0:0] icmp_ln29_7_fu_1017_p2;
wire   [0:0] icmp_ln29_6_fu_1011_p2;
wire   [0:0] or_ln29_3_fu_1023_p2;
wire   [0:0] or_ln29_2_fu_1005_p2;
wire   [0:0] and_ln29_2_fu_1029_p2;
wire   [63:0] bitcast_ln29_4_fu_1048_p1;
wire   [63:0] bitcast_ln29_5_fu_1066_p1;
wire   [10:0] tmp_105_fu_1052_p4;
wire   [51:0] trunc_ln29_4_fu_1062_p1;
wire   [0:0] icmp_ln29_9_fu_1089_p2;
wire   [0:0] icmp_ln29_8_fu_1083_p2;
wire   [10:0] tmp_107_fu_1069_p4;
wire   [51:0] trunc_ln29_5_fu_1079_p1;
wire   [0:0] icmp_ln29_11_fu_1107_p2;
wire   [0:0] icmp_ln29_10_fu_1101_p2;
wire   [0:0] or_ln29_5_fu_1113_p2;
wire   [0:0] or_ln29_4_fu_1095_p2;
wire   [0:0] and_ln29_4_fu_1119_p2;
wire   [63:0] bitcast_ln29_7_fu_1138_p1;
wire   [10:0] tmp_111_fu_1142_p4;
wire   [51:0] trunc_ln29_7_fu_1152_p1;
wire   [63:0] bitcast_ln29_6_fu_1168_p1;
wire   [10:0] tmp_109_fu_1172_p4;
wire   [51:0] trunc_ln29_6_fu_1182_p1;
wire   [0:0] icmp_ln29_13_fu_1192_p2;
wire   [0:0] icmp_ln29_12_fu_1186_p2;
wire   [0:0] or_ln29_7_fu_1204_p2;
wire   [0:0] or_ln29_6_fu_1198_p2;
wire   [0:0] and_ln29_6_fu_1208_p2;
wire   [63:0] bitcast_ln29_8_fu_1227_p1;
wire   [63:0] bitcast_ln29_9_fu_1245_p1;
wire   [10:0] tmp_113_fu_1231_p4;
wire   [51:0] trunc_ln29_8_fu_1241_p1;
wire   [0:0] icmp_ln29_17_fu_1268_p2;
wire   [0:0] icmp_ln29_16_fu_1262_p2;
wire   [10:0] tmp_115_fu_1248_p4;
wire   [51:0] trunc_ln29_9_fu_1258_p1;
wire   [0:0] icmp_ln29_19_fu_1286_p2;
wire   [0:0] icmp_ln29_18_fu_1280_p2;
wire   [0:0] or_ln29_9_fu_1292_p2;
wire   [0:0] or_ln29_8_fu_1274_p2;
wire   [0:0] and_ln29_8_fu_1298_p2;
wire   [63:0] bitcast_ln29_10_fu_1317_p1;
wire   [63:0] bitcast_ln29_11_fu_1335_p1;
wire   [10:0] tmp_117_fu_1321_p4;
wire   [51:0] trunc_ln29_10_fu_1331_p1;
wire   [0:0] icmp_ln29_21_fu_1358_p2;
wire   [0:0] icmp_ln29_20_fu_1352_p2;
wire   [10:0] tmp_119_fu_1338_p4;
wire   [51:0] trunc_ln29_11_fu_1348_p1;
wire   [0:0] icmp_ln29_23_fu_1376_p2;
wire   [0:0] icmp_ln29_22_fu_1370_p2;
wire   [0:0] or_ln29_11_fu_1382_p2;
wire   [0:0] or_ln29_10_fu_1364_p2;
wire   [0:0] and_ln29_10_fu_1388_p2;
wire   [63:0] bitcast_ln29_12_fu_1407_p1;
wire   [63:0] bitcast_ln29_13_fu_1425_p1;
wire   [10:0] tmp_121_fu_1411_p4;
wire   [51:0] trunc_ln29_12_fu_1421_p1;
wire   [0:0] icmp_ln29_25_fu_1448_p2;
wire   [0:0] icmp_ln29_24_fu_1442_p2;
wire   [10:0] tmp_123_fu_1428_p4;
wire   [51:0] trunc_ln29_13_fu_1438_p1;
wire   [0:0] icmp_ln29_27_fu_1466_p2;
wire   [0:0] icmp_ln29_26_fu_1460_p2;
wire   [0:0] or_ln29_13_fu_1472_p2;
wire   [0:0] or_ln29_12_fu_1454_p2;
wire   [0:0] and_ln29_12_fu_1478_p2;
wire   [63:0] bitcast_ln29_14_fu_1498_p1;
wire   [63:0] bitcast_ln29_15_fu_1515_p1;
wire   [10:0] tmp_125_fu_1501_p4;
wire   [51:0] trunc_ln29_14_fu_1511_p1;
wire   [0:0] icmp_ln29_29_fu_1538_p2;
wire   [0:0] icmp_ln29_28_fu_1532_p2;
wire   [10:0] tmp_127_fu_1518_p4;
wire   [51:0] trunc_ln29_15_fu_1528_p1;
wire   [0:0] icmp_ln29_31_fu_1556_p2;
wire   [0:0] icmp_ln29_30_fu_1550_p2;
wire   [0:0] or_ln29_15_fu_1562_p2;
wire   [0:0] or_ln29_14_fu_1544_p2;
wire   [0:0] and_ln29_14_fu_1568_p2;
wire   [0:0] and_ln29_15_fu_1574_p2;
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
#0 min_p_fu_114 = 64'd0;
#0 prev_fu_118 = 6'd0;
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
            min_p_fu_114 <= min_p_66;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_114 <= min_p_83_fu_1579_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_118 <= 6'd1;
    end else if (((tmp_137_reg_1717 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_118 <= add_ln25_4_fu_854_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_1886 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_1891 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_1691 <= add_ln25_1_fu_615_p2;
        add_ln25_2_reg_1701 <= add_ln25_2_fu_644_p2;
        add_ln25_3_reg_1711 <= add_ln25_3_fu_673_p2;
        add_ln25_reg_1676 <= add_ln25_fu_567_p2;
        prev_1_reg_1630 <= ap_sig_allocacmp_prev_1;
        shl_ln1_reg_1650[10 : 5] <= shl_ln1_fu_515_p3[10 : 5];
        tmp_137_reg_1717 <= add_ln25_3_fu_673_p2[32'd6];
        tmp_137_reg_1717_pp0_iter1_reg <= tmp_137_reg_1717;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_1979 <= and_ln29_11_fu_1394_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_1991 <= and_ln29_13_fu_1484_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_1903 <= and_ln29_1_fu_945_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_1915 <= and_ln29_3_fu_1035_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_1927 <= and_ln29_5_fu_1125_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_1955 <= and_ln29_7_fu_1214_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_1967 <= and_ln29_9_fu_1304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_1938 <= icmp_ln29_14_fu_1156_p2;
        icmp_ln29_15_reg_1943 <= icmp_ln29_15_fu_1162_p2;
        min_p_73_reg_1932 <= min_p_73_fu_1131_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_1761 <= llike_1_q0;
        llike_1_load_reg_1721 <= llike_1_q1;
        llike_2_load_1_reg_1771 <= llike_2_q0;
        llike_2_load_reg_1726 <= llike_2_q1;
        llike_3_load_1_reg_1776 <= llike_3_q0;
        llike_3_load_reg_1731 <= llike_3_q1;
        llike_load_1_reg_1746 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_3_reg_1816 <= llike_q0;
        select_ln27_3_reg_1791 <= grp_fu_422_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_67_reg_1896 <= min_p_fu_114;
        tmp_134_reg_1766 <= {{add_ln27_3_fu_727_p2[10:5]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_69_reg_1908 <= min_p_69_fu_951_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_71_reg_1920 <= min_p_71_fu_1041_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_75_reg_1960 <= min_p_75_fu_1220_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_77_reg_1972 <= min_p_77_fu_1310_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_79_reg_1984 <= min_p_79_fu_1400_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_81_reg_1996 <= min_p_81_fu_1490_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_38_reg_1948 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_429 <= grp_fu_415_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_433 <= grp_fu_422_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_437 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_443 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_449 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_455 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_461 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_467 <= grp_fu_453_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        select_ln27_4_reg_1826 <= grp_fu_415_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        select_ln27_7_reg_1856 <= grp_fu_422_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_128_reg_2003 <= grp_fu_1050_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_137_reg_1717 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_137_reg_1717_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_407_p0 = add52_7_reg_1891;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_407_p0 = reg_467;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_407_p0 = add52_5_reg_1886;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_407_p0 = reg_461;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_407_p0 = reg_455;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_407_p0 = reg_449;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_407_p0 = reg_443;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_407_p0 = reg_437;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_407_p0 = llike_load_3_reg_1816;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_407_p0 = llike_3_load_1_reg_1776;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_407_p0 = llike_2_load_1_reg_1771;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_407_p0 = llike_1_load_1_reg_1761;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_407_p0 = llike_load_1_reg_1746;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_407_p0 = llike_3_load_reg_1731;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p0 = llike_2_load_reg_1726;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_407_p0 = llike_1_load_reg_1721;
    end else begin
        grp_fu_407_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_407_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_407_p1 = bitcast_ln27_7_fu_850_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_407_p1 = bitcast_ln27_6_fu_845_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_407_p1 = bitcast_ln27_5_fu_840_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_407_p1 = bitcast_ln27_4_fu_836_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_407_p1 = bitcast_ln27_3_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_407_p1 = bitcast_ln27_2_fu_827_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_407_p1 = bitcast_ln27_1_fu_794_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_407_p1 = bitcast_ln27_fu_765_p1;
    end else begin
        grp_fu_407_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_411_p0 = p_38_reg_1948;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_411_p0 = reg_467;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_411_p0 = reg_461;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_411_p0 = reg_455;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_411_p0 = reg_449;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_411_p0 = reg_443;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_411_p0 = reg_437;
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_411_p1 = min_p_81_fu_1490_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_411_p1 = min_p_79_fu_1400_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_411_p1 = min_p_77_fu_1310_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_411_p1 = min_p_75_fu_1220_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_411_p1 = min_p_73_fu_1131_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_411_p1 = min_p_71_fu_1041_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_411_p1 = min_p_69_fu_951_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_411_p1 = min_p_fu_114;
        end else begin
            grp_fu_411_p1 = 'bx;
        end
    end else begin
        grp_fu_411_p1 = 'bx;
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
            llike_address0_local = zext_ln26_6_fu_760_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_591_p1;
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (tmp_137_reg_1717_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_82_out_ap_vld = 1'b1;
    end else begin
        min_p_82_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_821_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_788_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_721_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_561_p1;
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
            transition_0_address1_local = zext_ln27_6_fu_805_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_776_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_709_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_531_p1;
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
            transition_1_address0_local = zext_ln27_7_fu_821_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_788_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_721_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_561_p1;
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
            transition_1_address1_local = zext_ln27_6_fu_805_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_776_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_709_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_531_p1;
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
assign add_ln25_1_fu_615_p2 = (ap_sig_allocacmp_prev_1 + 6'd5);
assign add_ln25_2_fu_644_p2 = (ap_sig_allocacmp_prev_1 + 6'd6);
assign add_ln25_3_fu_673_p2 = (zext_ln16_fu_486_p1 + 7'd7);
assign add_ln25_4_fu_854_p2 = (prev_1_reg_1630 + 6'd8);
assign add_ln25_fu_567_p2 = (ap_sig_allocacmp_prev_1 + 6'd3);
assign add_ln26_fu_755_p2 = (empty + zext_ln26_5_fu_751_p1);
assign add_ln27_1_fu_687_p2 = (shl_ln1_reg_1650 + 11'd64);
assign add_ln27_2_fu_553_p3 = {{tmp_130_fu_543_p4}, {lshr_ln}};
assign add_ln27_3_fu_727_p2 = (shl_ln1_reg_1650 + 11'd128);
assign add_ln27_4_fu_702_p3 = {{tmp_131_fu_692_p4}, {lshr_ln}};
assign add_ln27_5_fu_715_p3 = {{add_ln25_reg_1676}, {lshr_ln}};
assign add_ln27_7_fu_770_p3 = {{tmp_134_reg_1766}, {lshr_ln}};
assign add_ln27_8_fu_782_p3 = {{add_ln25_1_reg_1691}, {lshr_ln}};
assign add_ln27_9_fu_799_p3 = {{add_ln25_2_reg_1701}, {lshr_ln}};
assign add_ln27_fu_537_p2 = (shl_ln1_fu_515_p3 + 11'd32);
assign add_ln27_s_fu_814_p3 = {{trunc_ln27_fu_811_p1}, {lshr_ln}};
assign add_ln8_fu_596_p2 = (lshr_ln7_1_fu_490_p4 + 4'd1);
assign add_ln_fu_523_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_10_fu_1388_p2 = (or_ln29_11_fu_1382_p2 & or_ln29_10_fu_1364_p2);
assign and_ln29_11_fu_1394_p2 = (grp_fu_1050_p_dout0 & and_ln29_10_fu_1388_p2);
assign and_ln29_12_fu_1478_p2 = (or_ln29_13_fu_1472_p2 & or_ln29_12_fu_1454_p2);
assign and_ln29_13_fu_1484_p2 = (grp_fu_1050_p_dout0 & and_ln29_12_fu_1478_p2);
assign and_ln29_14_fu_1568_p2 = (or_ln29_15_fu_1562_p2 & or_ln29_14_fu_1544_p2);
assign and_ln29_15_fu_1574_p2 = (tmp_128_reg_2003 & and_ln29_14_fu_1568_p2);
assign and_ln29_1_fu_945_p2 = (or_ln29_1_fu_933_p2 & and_ln29_fu_939_p2);
assign and_ln29_2_fu_1029_p2 = (or_ln29_3_fu_1023_p2 & or_ln29_2_fu_1005_p2);
assign and_ln29_3_fu_1035_p2 = (grp_fu_1050_p_dout0 & and_ln29_2_fu_1029_p2);
assign and_ln29_4_fu_1119_p2 = (or_ln29_5_fu_1113_p2 & or_ln29_4_fu_1095_p2);
assign and_ln29_5_fu_1125_p2 = (grp_fu_1050_p_dout0 & and_ln29_4_fu_1119_p2);
assign and_ln29_6_fu_1208_p2 = (or_ln29_7_fu_1204_p2 & or_ln29_6_fu_1198_p2);
assign and_ln29_7_fu_1214_p2 = (grp_fu_1050_p_dout0 & and_ln29_6_fu_1208_p2);
assign and_ln29_8_fu_1298_p2 = (or_ln29_9_fu_1292_p2 & or_ln29_8_fu_1274_p2);
assign and_ln29_9_fu_1304_p2 = (grp_fu_1050_p_dout0 & and_ln29_8_fu_1298_p2);
assign and_ln29_fu_939_p2 = (or_ln29_fu_915_p2 & grp_fu_1050_p_dout0);
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
assign bitcast_ln27_1_fu_794_p1 = reg_433;
assign bitcast_ln27_2_fu_827_p1 = reg_429;
assign bitcast_ln27_3_fu_832_p1 = select_ln27_3_reg_1791;
assign bitcast_ln27_4_fu_836_p1 = select_ln27_4_reg_1826;
assign bitcast_ln27_5_fu_840_p1 = reg_433;
assign bitcast_ln27_6_fu_845_p1 = reg_429;
assign bitcast_ln27_7_fu_850_p1 = select_ln27_7_reg_1856;
assign bitcast_ln27_fu_765_p1 = reg_429;
assign bitcast_ln29_10_fu_1317_p1 = reg_461;
assign bitcast_ln29_11_fu_1335_p1 = min_p_77_reg_1972;
assign bitcast_ln29_12_fu_1407_p1 = reg_467;
assign bitcast_ln29_13_fu_1425_p1 = min_p_79_reg_1984;
assign bitcast_ln29_14_fu_1498_p1 = p_38_reg_1948;
assign bitcast_ln29_15_fu_1515_p1 = min_p_81_reg_1996;
assign bitcast_ln29_1_fu_886_p1 = min_p_67_reg_1896;
assign bitcast_ln29_2_fu_958_p1 = reg_443;
assign bitcast_ln29_3_fu_976_p1 = min_p_69_reg_1908;
assign bitcast_ln29_4_fu_1048_p1 = reg_449;
assign bitcast_ln29_5_fu_1066_p1 = min_p_71_reg_1920;
assign bitcast_ln29_6_fu_1168_p1 = reg_437;
assign bitcast_ln29_7_fu_1138_p1 = min_p_73_fu_1131_p3;
assign bitcast_ln29_8_fu_1227_p1 = reg_455;
assign bitcast_ln29_9_fu_1245_p1 = min_p_75_reg_1960;
assign bitcast_ln29_fu_868_p1 = reg_437;
assign grp_fu_1050_p_ce = 1'b1;
assign grp_fu_1050_p_din0 = grp_fu_411_p0;
assign grp_fu_1050_p_din1 = grp_fu_411_p1;
assign grp_fu_1050_p_opcode = 5'd4;
assign grp_fu_415_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_422_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_453_p_ce = 1'b1;
assign grp_fu_453_p_din0 = grp_fu_407_p0;
assign grp_fu_453_p_din1 = grp_fu_407_p1;
assign grp_fu_453_p_opcode = 2'd0;
assign icmp_ln29_10_fu_1101_p2 = ((tmp_107_fu_1069_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1107_p2 = ((trunc_ln29_5_fu_1079_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1186_p2 = ((tmp_109_fu_1172_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1192_p2 = ((trunc_ln29_6_fu_1182_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1156_p2 = ((tmp_111_fu_1142_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1162_p2 = ((trunc_ln29_7_fu_1152_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1262_p2 = ((tmp_113_fu_1231_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1268_p2 = ((trunc_ln29_8_fu_1241_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1280_p2 = ((tmp_115_fu_1248_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1286_p2 = ((trunc_ln29_9_fu_1258_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_909_p2 = ((trunc_ln29_fu_882_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1352_p2 = ((tmp_117_fu_1321_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1358_p2 = ((trunc_ln29_10_fu_1331_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1370_p2 = ((tmp_119_fu_1338_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1376_p2 = ((trunc_ln29_11_fu_1348_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1442_p2 = ((tmp_121_fu_1411_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1448_p2 = ((trunc_ln29_12_fu_1421_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1460_p2 = ((tmp_123_fu_1428_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1466_p2 = ((trunc_ln29_13_fu_1438_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_1532_p2 = ((tmp_125_fu_1501_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_1538_p2 = ((trunc_ln29_14_fu_1511_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_921_p2 = ((tmp_100_fu_889_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_1550_p2 = ((tmp_127_fu_1518_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_1556_p2 = ((trunc_ln29_15_fu_1528_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_927_p2 = ((trunc_ln29_1_fu_899_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_993_p2 = ((tmp_102_fu_962_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_999_p2 = ((trunc_ln29_2_fu_972_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_1011_p2 = ((tmp_103_fu_979_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_1017_p2 = ((trunc_ln29_3_fu_989_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_1083_p2 = ((tmp_105_fu_1052_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_1089_p2 = ((trunc_ln29_4_fu_1062_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_903_p2 = ((tmp_98_fu_872_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_2_fu_610_p1;
assign llike_1_address1 = zext_ln26_fu_508_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_2_address0 = zext_ln26_3_fu_639_p1;
assign llike_2_address1 = zext_ln26_fu_508_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_ce1 = llike_2_ce1_local;
assign llike_3_address0 = zext_ln26_4_fu_668_p1;
assign llike_3_address1 = zext_ln26_fu_508_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_ce1 = llike_3_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_490_p4 = {{ap_sig_allocacmp_prev_1[5:2]}};
assign lshr_ln8_1_fu_621_p4 = {{add_ln25_1_fu_615_p2[5:2]}};
assign lshr_ln8_2_fu_650_p4 = {{add_ln25_2_fu_644_p2[5:2]}};
assign lshr_ln8_3_fu_742_p4 = {{add_ln25_3_reg_1711[6:2]}};
assign lshr_ln8_s_fu_573_p4 = {{add_ln25_fu_567_p2[5:2]}};
assign min_p_69_fu_951_p3 = ((and_ln29_1_reg_1903[0:0] == 1'b1) ? reg_437 : min_p_67_reg_1896);
assign min_p_71_fu_1041_p3 = ((and_ln29_3_reg_1915[0:0] == 1'b1) ? reg_443 : min_p_69_reg_1908);
assign min_p_73_fu_1131_p3 = ((and_ln29_5_reg_1927[0:0] == 1'b1) ? reg_449 : min_p_71_reg_1920);
assign min_p_75_fu_1220_p3 = ((and_ln29_7_reg_1955[0:0] == 1'b1) ? reg_437 : min_p_73_reg_1932);
assign min_p_77_fu_1310_p3 = ((and_ln29_9_reg_1967[0:0] == 1'b1) ? reg_455 : min_p_75_reg_1960);
assign min_p_79_fu_1400_p3 = ((and_ln29_11_reg_1979[0:0] == 1'b1) ? reg_461 : min_p_77_reg_1972);
assign min_p_81_fu_1490_p3 = ((and_ln29_13_reg_1991[0:0] == 1'b1) ? reg_467 : min_p_79_reg_1984);
assign min_p_82_out = ((and_ln29_13_reg_1991[0:0] == 1'b1) ? reg_467 : min_p_79_reg_1984);
assign min_p_83_fu_1579_p3 = ((and_ln29_15_fu_1574_p2[0:0] == 1'b1) ? p_38_reg_1948 : min_p_81_reg_1996);
assign or_ln29_10_fu_1364_p2 = (icmp_ln29_21_fu_1358_p2 | icmp_ln29_20_fu_1352_p2);
assign or_ln29_11_fu_1382_p2 = (icmp_ln29_23_fu_1376_p2 | icmp_ln29_22_fu_1370_p2);
assign or_ln29_12_fu_1454_p2 = (icmp_ln29_25_fu_1448_p2 | icmp_ln29_24_fu_1442_p2);
assign or_ln29_13_fu_1472_p2 = (icmp_ln29_27_fu_1466_p2 | icmp_ln29_26_fu_1460_p2);
assign or_ln29_14_fu_1544_p2 = (icmp_ln29_29_fu_1538_p2 | icmp_ln29_28_fu_1532_p2);
assign or_ln29_15_fu_1562_p2 = (icmp_ln29_31_fu_1556_p2 | icmp_ln29_30_fu_1550_p2);
assign or_ln29_1_fu_933_p2 = (icmp_ln29_3_fu_927_p2 | icmp_ln29_2_fu_921_p2);
assign or_ln29_2_fu_1005_p2 = (icmp_ln29_5_fu_999_p2 | icmp_ln29_4_fu_993_p2);
assign or_ln29_3_fu_1023_p2 = (icmp_ln29_7_fu_1017_p2 | icmp_ln29_6_fu_1011_p2);
assign or_ln29_4_fu_1095_p2 = (icmp_ln29_9_fu_1089_p2 | icmp_ln29_8_fu_1083_p2);
assign or_ln29_5_fu_1113_p2 = (icmp_ln29_11_fu_1107_p2 | icmp_ln29_10_fu_1101_p2);
assign or_ln29_6_fu_1198_p2 = (icmp_ln29_13_fu_1192_p2 | icmp_ln29_12_fu_1186_p2);
assign or_ln29_7_fu_1204_p2 = (icmp_ln29_15_reg_1943 | icmp_ln29_14_reg_1938);
assign or_ln29_8_fu_1274_p2 = (icmp_ln29_17_fu_1268_p2 | icmp_ln29_16_fu_1262_p2);
assign or_ln29_9_fu_1292_p2 = (icmp_ln29_19_fu_1286_p2 | icmp_ln29_18_fu_1280_p2);
assign or_ln29_fu_915_p2 = (icmp_ln29_fu_903_p2 | icmp_ln29_1_fu_909_p2);
assign shl_ln1_fu_515_p3 = {{ap_sig_allocacmp_prev_1}, {5'd0}};
assign tmp_100_fu_889_p4 = {{bitcast_ln29_1_fu_886_p1[62:52]}};
assign tmp_102_fu_962_p4 = {{bitcast_ln29_2_fu_958_p1[62:52]}};
assign tmp_103_fu_979_p4 = {{bitcast_ln29_3_fu_976_p1[62:52]}};
assign tmp_105_fu_1052_p4 = {{bitcast_ln29_4_fu_1048_p1[62:52]}};
assign tmp_107_fu_1069_p4 = {{bitcast_ln29_5_fu_1066_p1[62:52]}};
assign tmp_109_fu_1172_p4 = {{bitcast_ln29_6_fu_1168_p1[62:52]}};
assign tmp_111_fu_1142_p4 = {{bitcast_ln29_7_fu_1138_p1[62:52]}};
assign tmp_113_fu_1231_p4 = {{bitcast_ln29_8_fu_1227_p1[62:52]}};
assign tmp_115_fu_1248_p4 = {{bitcast_ln29_9_fu_1245_p1[62:52]}};
assign tmp_117_fu_1321_p4 = {{bitcast_ln29_10_fu_1317_p1[62:52]}};
assign tmp_119_fu_1338_p4 = {{bitcast_ln29_11_fu_1335_p1[62:52]}};
assign tmp_121_fu_1411_p4 = {{bitcast_ln29_12_fu_1407_p1[62:52]}};
assign tmp_123_fu_1428_p4 = {{bitcast_ln29_13_fu_1425_p1[62:52]}};
assign tmp_125_fu_1501_p4 = {{bitcast_ln29_14_fu_1498_p1[62:52]}};
assign tmp_127_fu_1518_p4 = {{bitcast_ln29_15_fu_1515_p1[62:52]}};
assign tmp_130_fu_543_p4 = {{add_ln27_fu_537_p2[10:5]}};
assign tmp_131_fu_692_p4 = {{add_ln27_1_fu_687_p2[10:5]}};
assign tmp_132_fu_583_p3 = {{empty_9}, {lshr_ln8_s_fu_573_p4}};
assign tmp_133_fu_602_p3 = {{empty_9}, {add_ln8_fu_596_p2}};
assign tmp_135_fu_631_p3 = {{empty_9}, {lshr_ln8_1_fu_621_p4}};
assign tmp_136_fu_660_p3 = {{empty_9}, {lshr_ln8_2_fu_650_p4}};
assign tmp_98_fu_872_p4 = {{bitcast_ln29_fu_868_p1[62:52]}};
assign tmp_s_fu_500_p3 = {{empty_9}, {lshr_ln7_1_fu_490_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln27_fu_811_p1 = add_ln25_3_reg_1711[5:0];
assign trunc_ln29_10_fu_1331_p1 = bitcast_ln29_10_fu_1317_p1[51:0];
assign trunc_ln29_11_fu_1348_p1 = bitcast_ln29_11_fu_1335_p1[51:0];
assign trunc_ln29_12_fu_1421_p1 = bitcast_ln29_12_fu_1407_p1[51:0];
assign trunc_ln29_13_fu_1438_p1 = bitcast_ln29_13_fu_1425_p1[51:0];
assign trunc_ln29_14_fu_1511_p1 = bitcast_ln29_14_fu_1498_p1[51:0];
assign trunc_ln29_15_fu_1528_p1 = bitcast_ln29_15_fu_1515_p1[51:0];
assign trunc_ln29_1_fu_899_p1 = bitcast_ln29_1_fu_886_p1[51:0];
assign trunc_ln29_2_fu_972_p1 = bitcast_ln29_2_fu_958_p1[51:0];
assign trunc_ln29_3_fu_989_p1 = bitcast_ln29_3_fu_976_p1[51:0];
assign trunc_ln29_4_fu_1062_p1 = bitcast_ln29_4_fu_1048_p1[51:0];
assign trunc_ln29_5_fu_1079_p1 = bitcast_ln29_5_fu_1066_p1[51:0];
assign trunc_ln29_6_fu_1182_p1 = bitcast_ln29_6_fu_1168_p1[51:0];
assign trunc_ln29_7_fu_1152_p1 = bitcast_ln29_7_fu_1138_p1[51:0];
assign trunc_ln29_8_fu_1241_p1 = bitcast_ln29_8_fu_1227_p1[51:0];
assign trunc_ln29_9_fu_1258_p1 = bitcast_ln29_9_fu_1245_p1[51:0];
assign trunc_ln29_fu_882_p1 = bitcast_ln29_fu_868_p1[51:0];
assign zext_ln16_fu_486_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_591_p1 = tmp_132_fu_583_p3;
assign zext_ln26_2_fu_610_p1 = tmp_133_fu_602_p3;
assign zext_ln26_3_fu_639_p1 = tmp_135_fu_631_p3;
assign zext_ln26_4_fu_668_p1 = tmp_136_fu_660_p3;
assign zext_ln26_5_fu_751_p1 = lshr_ln8_3_fu_742_p4;
assign zext_ln26_6_fu_760_p1 = add_ln26_fu_755_p2;
assign zext_ln26_fu_508_p1 = tmp_s_fu_500_p3;
assign zext_ln27_1_fu_561_p1 = add_ln27_2_fu_553_p3;
assign zext_ln27_2_fu_709_p1 = add_ln27_4_fu_702_p3;
assign zext_ln27_3_fu_721_p1 = add_ln27_5_fu_715_p3;
assign zext_ln27_4_fu_776_p1 = add_ln27_7_fu_770_p3;
assign zext_ln27_5_fu_788_p1 = add_ln27_8_fu_782_p3;
assign zext_ln27_6_fu_805_p1 = add_ln27_9_fu_799_p3;
assign zext_ln27_7_fu_821_p1 = add_ln27_s_fu_814_p3;
assign zext_ln27_fu_531_p1 = add_ln_fu_523_p3;
always @ (posedge ap_clk) begin
    shl_ln1_reg_1650[4:0] <= 5'b00000;
end
endmodule 