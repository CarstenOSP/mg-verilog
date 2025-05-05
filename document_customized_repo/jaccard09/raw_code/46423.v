module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_10,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,empty_10,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,bitcast_ln24,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,empty,min_p_26_out,min_p_26_out_ap_vld,grp_fu_300_p_din0,grp_fu_300_p_din1,grp_fu_300_p_opcode,grp_fu_300_p_dout0,grp_fu_300_p_ce,grp_fu_702_p_din0,grp_fu_702_p_din1,grp_fu_702_p_opcode,grp_fu_702_p_dout0,grp_fu_702_p_ce); 
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
input  [5:0] empty_10;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
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
output  [63:0] grp_fu_300_p_din0;
output  [63:0] grp_fu_300_p_din1;
output  [1:0] grp_fu_300_p_opcode;
input  [63:0] grp_fu_300_p_dout0;
output   grp_fu_300_p_ce;
output  [63:0] grp_fu_702_p_din0;
output  [63:0] grp_fu_702_p_din1;
output  [4:0] grp_fu_702_p_opcode;
input  [0:0] grp_fu_702_p_dout0;
output   grp_fu_702_p_ce;
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
reg   [0:0] tmp_3_reg_1591;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_312;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_316;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_321;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_327;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_333;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_339;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_345;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_351;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_1537;
wire   [4:0] lshr_ln7_1_fu_374_p4;
reg   [4:0] lshr_ln7_1_reg_1544;
wire   [5:0] add_ln25_1_fu_471_p2;
reg   [5:0] add_ln25_1_reg_1575;
wire   [6:0] add_ln25_3_fu_500_p2;
reg   [6:0] add_ln25_3_reg_1585;
reg   [0:0] tmp_3_reg_1591_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1595;
wire   [11:0] shl_ln2_fu_514_p3;
reg   [11:0] shl_ln2_reg_1600;
reg   [63:0] llike_load_1_reg_1606;
reg   [63:0] llike_1_load_1_reg_1611;
reg   [63:0] llike_load_reg_1621;
wire   [5:0] add_ln25_2_fu_577_p2;
reg   [5:0] add_ln25_2_reg_1636;
wire   [63:0] bitcast_ln27_fu_644_p1;
reg   [63:0] transition_load_reg_1661;
reg   [63:0] llike_1_load_2_reg_1666;
reg   [63:0] llike_load_2_reg_1676;
reg   [63:0] llike_1_load_3_reg_1686;
reg   [5:0] tmp_31_reg_1691;
reg   [63:0] llike_load_3_reg_1696;
wire   [63:0] bitcast_ln27_1_fu_702_p1;
reg   [63:0] transition_load_5_reg_1706;
wire   [63:0] bitcast_ln27_2_fu_733_p1;
reg   [63:0] transition_load_7_reg_1726;
wire   [63:0] bitcast_ln27_3_fu_738_p1;
wire   [63:0] bitcast_ln27_4_fu_742_p1;
wire   [63:0] bitcast_ln27_5_fu_747_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln27_6_fu_751_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln27_7_fu_756_p1;
reg   [63:0] add52_5_reg_1756;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_1761;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_11_reg_1766;
wire   [0:0] and_ln29_1_fu_851_p2;
reg   [0:0] and_ln29_1_reg_1773;
wire   [63:0] min_p_13_fu_857_p3;
reg   [63:0] min_p_13_reg_1778;
wire   [0:0] and_ln29_3_fu_941_p2;
reg   [0:0] and_ln29_3_reg_1785;
wire   [63:0] min_p_15_fu_947_p3;
reg   [63:0] min_p_15_reg_1790;
wire   [0:0] and_ln29_5_fu_1031_p2;
reg   [0:0] and_ln29_5_reg_1797;
wire   [63:0] min_p_17_fu_1037_p3;
reg   [63:0] min_p_17_reg_1802;
wire   [0:0] icmp_ln29_14_fu_1062_p2;
reg   [0:0] icmp_ln29_14_reg_1808;
wire   [0:0] icmp_ln29_15_fu_1068_p2;
reg   [0:0] icmp_ln29_15_reg_1813;
reg   [63:0] p_10_reg_1818;
wire   [0:0] and_ln29_7_fu_1120_p2;
reg   [0:0] and_ln29_7_reg_1825;
wire   [63:0] min_p_19_fu_1126_p3;
reg   [63:0] min_p_19_reg_1830;
wire   [0:0] and_ln29_9_fu_1210_p2;
reg   [0:0] and_ln29_9_reg_1837;
wire   [63:0] min_p_21_fu_1216_p3;
reg   [63:0] min_p_21_reg_1842;
wire   [0:0] and_ln29_11_fu_1300_p2;
reg   [0:0] and_ln29_11_reg_1849;
wire   [63:0] min_p_23_fu_1306_p3;
reg   [63:0] min_p_23_reg_1854;
wire   [0:0] and_ln29_13_fu_1390_p2;
reg   [0:0] and_ln29_13_reg_1861;
wire   [63:0] min_p_25_fu_1396_p3;
reg   [63:0] min_p_25_reg_1866;
reg   [0:0] tmp_37_reg_1873;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_392_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_405_p1;
wire   [63:0] zext_ln26_1_fu_434_p1;
wire   [63:0] zext_ln27_1_fu_447_p1;
wire   [63:0] zext_ln26_2_fu_466_p1;
wire   [63:0] zext_ln26_3_fu_495_p1;
wire   [63:0] zext_ln27_2_fu_544_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_555_p1;
wire   [63:0] zext_ln26_4_fu_572_p1;
wire   [63:0] zext_ln26_5_fu_599_p1;
wire   [63:0] zext_ln26_6_fu_616_p1;
wire   [63:0] zext_ln26_8_fu_639_p1;
wire   [63:0] zext_ln27_4_fu_671_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_682_p1;
wire   [63:0] zext_ln27_6_fu_713_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_728_p1;
reg   [63:0] min_p_fu_104;
wire   [63:0] min_p_27_fu_1485_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_108;
wire   [5:0] add_ln25_4_fu_760_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce1_local;
reg   [12:0] llike_1_address1_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    llike_ce1_local;
reg   [12:0] llike_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_304_p0;
reg   [63:0] grp_fu_304_p1;
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
reg   [63:0] grp_fu_308_p0;
reg   [63:0] grp_fu_308_p1;
wire   [12:0] tmp_s_fu_384_p3;
wire   [11:0] add_ln_fu_397_p3;
wire   [5:0] add_ln25_fu_410_p2;
wire   [4:0] lshr_ln8_2_fu_416_p4;
wire   [12:0] tmp_38_fu_426_p3;
wire   [11:0] add_ln27_1_fu_439_p3;
wire   [4:0] add_ln8_fu_452_p2;
wire   [12:0] tmp_39_fu_458_p3;
wire   [4:0] lshr_ln8_3_fu_477_p4;
wire   [12:0] tmp_40_fu_487_p3;
wire   [6:0] zext_ln10_fu_370_p1;
wire   [11:0] add_ln27_fu_521_p2;
wire   [5:0] tmp_17_fu_527_p4;
wire   [11:0] add_ln27_3_fu_537_p3;
wire   [11:0] add_ln27_4_fu_549_p3;
wire   [4:0] add_ln8_1_fu_560_p2;
wire   [12:0] tmp_41_fu_565_p3;
wire   [4:0] lshr_ln8_4_fu_582_p4;
wire   [12:0] tmp_42_fu_592_p3;
wire   [4:0] add_ln8_2_fu_604_p2;
wire   [12:0] tmp_43_fu_609_p3;
wire   [5:0] lshr_ln8_5_fu_621_p4;
wire   [12:0] zext_ln26_7_fu_630_p1;
wire   [12:0] add_ln26_fu_634_p2;
wire   [11:0] add_ln27_2_fu_649_p2;
wire   [5:0] tmp_24_fu_654_p4;
wire   [11:0] add_ln27_6_fu_664_p3;
wire   [11:0] add_ln27_7_fu_676_p3;
wire   [11:0] add_ln27_5_fu_687_p2;
wire   [11:0] add_ln27_9_fu_707_p3;
wire   [5:0] trunc_ln27_fu_718_p1;
wire   [11:0] add_ln27_s_fu_721_p3;
wire   [63:0] bitcast_ln29_fu_774_p1;
wire   [63:0] bitcast_ln29_1_fu_792_p1;
wire   [10:0] tmp_11_fu_778_p4;
wire   [51:0] trunc_ln29_fu_788_p1;
wire   [0:0] icmp_ln29_1_fu_815_p2;
wire   [0:0] icmp_ln29_fu_809_p2;
wire   [10:0] tmp_12_fu_795_p4;
wire   [51:0] trunc_ln29_1_fu_805_p1;
wire   [0:0] icmp_ln29_3_fu_833_p2;
wire   [0:0] icmp_ln29_2_fu_827_p2;
wire   [0:0] or_ln29_fu_821_p2;
wire   [0:0] and_ln29_fu_845_p2;
wire   [0:0] or_ln29_1_fu_839_p2;
wire   [63:0] bitcast_ln29_2_fu_864_p1;
wire   [63:0] bitcast_ln29_3_fu_882_p1;
wire   [10:0] tmp_14_fu_868_p4;
wire   [51:0] trunc_ln29_2_fu_878_p1;
wire   [0:0] icmp_ln29_5_fu_905_p2;
wire   [0:0] icmp_ln29_4_fu_899_p2;
wire   [10:0] tmp_15_fu_885_p4;
wire   [51:0] trunc_ln29_3_fu_895_p1;
wire   [0:0] icmp_ln29_7_fu_923_p2;
wire   [0:0] icmp_ln29_6_fu_917_p2;
wire   [0:0] or_ln29_3_fu_929_p2;
wire   [0:0] or_ln29_2_fu_911_p2;
wire   [0:0] and_ln29_2_fu_935_p2;
wire   [63:0] bitcast_ln29_4_fu_954_p1;
wire   [63:0] bitcast_ln29_5_fu_972_p1;
wire   [10:0] tmp_18_fu_958_p4;
wire   [51:0] trunc_ln29_4_fu_968_p1;
wire   [0:0] icmp_ln29_9_fu_995_p2;
wire   [0:0] icmp_ln29_8_fu_989_p2;
wire   [10:0] tmp_19_fu_975_p4;
wire   [51:0] trunc_ln29_5_fu_985_p1;
wire   [0:0] icmp_ln29_11_fu_1013_p2;
wire   [0:0] icmp_ln29_10_fu_1007_p2;
wire   [0:0] or_ln29_5_fu_1019_p2;
wire   [0:0] or_ln29_4_fu_1001_p2;
wire   [0:0] and_ln29_4_fu_1025_p2;
wire   [63:0] bitcast_ln29_7_fu_1044_p1;
wire   [10:0] tmp_22_fu_1048_p4;
wire   [51:0] trunc_ln29_7_fu_1058_p1;
wire   [63:0] bitcast_ln29_6_fu_1074_p1;
wire   [10:0] tmp_21_fu_1078_p4;
wire   [51:0] trunc_ln29_6_fu_1088_p1;
wire   [0:0] icmp_ln29_13_fu_1098_p2;
wire   [0:0] icmp_ln29_12_fu_1092_p2;
wire   [0:0] or_ln29_7_fu_1110_p2;
wire   [0:0] or_ln29_6_fu_1104_p2;
wire   [0:0] and_ln29_6_fu_1114_p2;
wire   [63:0] bitcast_ln29_8_fu_1133_p1;
wire   [63:0] bitcast_ln29_9_fu_1151_p1;
wire   [10:0] tmp_25_fu_1137_p4;
wire   [51:0] trunc_ln29_8_fu_1147_p1;
wire   [0:0] icmp_ln29_17_fu_1174_p2;
wire   [0:0] icmp_ln29_16_fu_1168_p2;
wire   [10:0] tmp_26_fu_1154_p4;
wire   [51:0] trunc_ln29_9_fu_1164_p1;
wire   [0:0] icmp_ln29_19_fu_1192_p2;
wire   [0:0] icmp_ln29_18_fu_1186_p2;
wire   [0:0] or_ln29_9_fu_1198_p2;
wire   [0:0] or_ln29_8_fu_1180_p2;
wire   [0:0] and_ln29_8_fu_1204_p2;
wire   [63:0] bitcast_ln29_10_fu_1223_p1;
wire   [63:0] bitcast_ln29_11_fu_1241_p1;
wire   [10:0] tmp_28_fu_1227_p4;
wire   [51:0] trunc_ln29_10_fu_1237_p1;
wire   [0:0] icmp_ln29_21_fu_1264_p2;
wire   [0:0] icmp_ln29_20_fu_1258_p2;
wire   [10:0] tmp_29_fu_1244_p4;
wire   [51:0] trunc_ln29_11_fu_1254_p1;
wire   [0:0] icmp_ln29_23_fu_1282_p2;
wire   [0:0] icmp_ln29_22_fu_1276_p2;
wire   [0:0] or_ln29_11_fu_1288_p2;
wire   [0:0] or_ln29_10_fu_1270_p2;
wire   [0:0] and_ln29_10_fu_1294_p2;
wire   [63:0] bitcast_ln29_12_fu_1313_p1;
wire   [63:0] bitcast_ln29_13_fu_1331_p1;
wire   [10:0] tmp_32_fu_1317_p4;
wire   [51:0] trunc_ln29_12_fu_1327_p1;
wire   [0:0] icmp_ln29_25_fu_1354_p2;
wire   [0:0] icmp_ln29_24_fu_1348_p2;
wire   [10:0] tmp_33_fu_1334_p4;
wire   [51:0] trunc_ln29_13_fu_1344_p1;
wire   [0:0] icmp_ln29_27_fu_1372_p2;
wire   [0:0] icmp_ln29_26_fu_1366_p2;
wire   [0:0] or_ln29_13_fu_1378_p2;
wire   [0:0] or_ln29_12_fu_1360_p2;
wire   [0:0] and_ln29_12_fu_1384_p2;
wire   [63:0] bitcast_ln29_14_fu_1404_p1;
wire   [63:0] bitcast_ln29_15_fu_1421_p1;
wire   [10:0] tmp_35_fu_1407_p4;
wire   [51:0] trunc_ln29_14_fu_1417_p1;
wire   [0:0] icmp_ln29_29_fu_1444_p2;
wire   [0:0] icmp_ln29_28_fu_1438_p2;
wire   [10:0] tmp_36_fu_1424_p4;
wire   [51:0] trunc_ln29_15_fu_1434_p1;
wire   [0:0] icmp_ln29_31_fu_1462_p2;
wire   [0:0] icmp_ln29_30_fu_1456_p2;
wire   [0:0] or_ln29_15_fu_1468_p2;
wire   [0:0] or_ln29_14_fu_1450_p2;
wire   [0:0] and_ln29_14_fu_1474_p2;
wire   [0:0] and_ln29_15_fu_1480_p2;
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
#0 min_p_fu_104 = 64'd0;
#0 prev_fu_108 = 6'd0;
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
            min_p_fu_104 <= min_p_10;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_104 <= min_p_27_fu_1485_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_108 <= 6'd1;
    end else if (((tmp_3_reg_1591 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_108 <= add_ln25_4_fu_760_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_316 <= transition_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_316 <= transition_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_1756 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_1761 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_1_reg_1575 <= add_ln25_1_fu_471_p2;
        add_ln25_3_reg_1585 <= add_ln25_3_fu_500_p2;
        lshr_ln7_1_reg_1544 <= {{ap_sig_allocacmp_prev_1[5:1]}};
        prev_1_reg_1537 <= ap_sig_allocacmp_prev_1;
        tmp_3_reg_1591 <= add_ln25_3_fu_500_p2[32'd6];
        tmp_3_reg_1591_pp0_iter1_reg <= tmp_3_reg_1591;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln25_2_reg_1636 <= add_ln25_2_fu_577_p2;
        min_p_11_reg_1766 <= min_p_fu_104;
        shl_ln2_reg_1600[11 : 6] <= shl_ln2_fu_514_p3[11 : 6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_1849 <= and_ln29_11_fu_1300_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_1861 <= and_ln29_13_fu_1390_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_1773 <= and_ln29_1_fu_851_p2;
        tmp_31_reg_1691 <= {{add_ln27_5_fu_687_p2[11:6]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_1785 <= and_ln29_3_fu_941_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_1797 <= and_ln29_5_fu_1031_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_1825 <= and_ln29_7_fu_1120_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_1837 <= and_ln29_9_fu_1210_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_1808 <= icmp_ln29_14_fu_1062_p2;
        icmp_ln29_15_reg_1813 <= icmp_ln29_15_fu_1068_p2;
        min_p_17_reg_1802 <= min_p_17_fu_1037_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_1611 <= llike_1_q0;
        llike_1_load_reg_1595 <= llike_1_q1;
        llike_load_1_reg_1606 <= llike_q1;
        llike_load_reg_1621 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_load_2_reg_1666 <= llike_1_q1;
        llike_1_load_3_reg_1686 <= llike_1_q0;
        llike_load_2_reg_1676 <= llike_q1;
        llike_load_3_reg_1696 <= llike_q0;
        transition_load_reg_1661 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_13_reg_1778 <= min_p_13_fu_857_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_15_reg_1790 <= min_p_15_fu_947_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_19_reg_1830 <= min_p_19_fu_1126_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_21_reg_1842 <= min_p_21_fu_1216_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_23_reg_1854 <= min_p_23_fu_1306_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_25_reg_1866 <= min_p_25_fu_1396_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_10_reg_1818 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_312 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_321 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_327 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_333 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_339 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_345 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_351 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_37_reg_1873 <= grp_fu_702_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        transition_load_5_reg_1706 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        transition_load_7_reg_1726 <= transition_q0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_1591 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_3_reg_1591_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_304_p0 = add52_7_reg_1761;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_304_p0 = reg_351;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_304_p0 = add52_5_reg_1756;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_304_p0 = reg_345;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_304_p0 = reg_339;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_304_p0 = reg_333;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_304_p0 = reg_327;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_304_p0 = reg_321;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_304_p0 = llike_load_3_reg_1696;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_304_p0 = llike_1_load_3_reg_1686;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_304_p0 = llike_load_2_reg_1676;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_304_p0 = llike_1_load_2_reg_1666;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_304_p0 = llike_load_reg_1621;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_304_p0 = llike_1_load_1_reg_1611;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_304_p0 = llike_load_1_reg_1606;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_304_p0 = llike_1_load_reg_1595;
    end else begin
        grp_fu_304_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_304_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_304_p1 = bitcast_ln27_7_fu_756_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_304_p1 = bitcast_ln27_6_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_304_p1 = bitcast_ln27_5_fu_747_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_304_p1 = bitcast_ln27_4_fu_742_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_304_p1 = bitcast_ln27_3_fu_738_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_304_p1 = bitcast_ln27_2_fu_733_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_304_p1 = bitcast_ln27_1_fu_702_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_304_p1 = bitcast_ln27_fu_644_p1;
    end else begin
        grp_fu_304_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_308_p0 = p_10_reg_1818;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_308_p0 = reg_351;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_308_p0 = reg_345;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_308_p0 = reg_339;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_308_p0 = reg_333;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_308_p0 = reg_327;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_308_p0 = reg_321;
    end else begin
        grp_fu_308_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_308_p1 = min_p_25_fu_1396_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_308_p1 = min_p_23_fu_1306_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_308_p1 = min_p_21_fu_1216_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_308_p1 = min_p_19_fu_1126_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_308_p1 = min_p_17_fu_1037_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_308_p1 = min_p_15_fu_947_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_308_p1 = min_p_13_fu_857_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_308_p1 = min_p_fu_104;
        end else begin
            grp_fu_308_p1 = 'bx;
        end
    end else begin
        grp_fu_308_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_6_fu_616_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_2_fu_466_p1;
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
            llike_1_address1_local = zext_ln26_4_fu_572_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address1_local = zext_ln26_fu_392_p1;
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
            llike_address0_local = zext_ln26_8_fu_639_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_3_fu_495_p1;
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
            llike_address1_local = zext_ln26_5_fu_599_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_1_fu_434_p1;
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
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_3_reg_1591_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_26_out_ap_vld = 1'b1;
    end else begin
        min_p_26_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln27_7_fu_728_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln27_5_fu_682_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln27_3_fu_555_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln27_1_fu_447_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln27_6_fu_713_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln27_4_fu_671_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln27_2_fu_544_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address1_local = zext_ln27_fu_405_p1;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce1_local = 1'b1;
    end else begin
        transition_ce1_local = 1'b0;
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
assign add_ln25_1_fu_471_p2 = (ap_sig_allocacmp_prev_1 + 6'd3);
assign add_ln25_2_fu_577_p2 = (prev_1_reg_1537 + 6'd5);
assign add_ln25_3_fu_500_p2 = (zext_ln10_fu_370_p1 + 7'd7);
assign add_ln25_4_fu_760_p2 = (prev_1_reg_1537 + 6'd8);
assign add_ln25_fu_410_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_634_p2 = (empty + zext_ln26_7_fu_630_p1);
assign add_ln27_1_fu_439_p3 = {{add_ln25_fu_410_p2}, {empty_10}};
assign add_ln27_2_fu_649_p2 = (shl_ln2_reg_1600 + 12'd256);
assign add_ln27_3_fu_537_p3 = {{tmp_17_fu_527_p4}, {empty_10}};
assign add_ln27_4_fu_549_p3 = {{add_ln25_1_reg_1575}, {empty_10}};
assign add_ln27_5_fu_687_p2 = (shl_ln2_reg_1600 + 12'd384);
assign add_ln27_6_fu_664_p3 = {{tmp_24_fu_654_p4}, {empty_10}};
assign add_ln27_7_fu_676_p3 = {{add_ln25_2_reg_1636}, {empty_10}};
assign add_ln27_9_fu_707_p3 = {{tmp_31_reg_1691}, {empty_10}};
assign add_ln27_fu_521_p2 = (shl_ln2_fu_514_p3 + 12'd128);
assign add_ln27_s_fu_721_p3 = {{trunc_ln27_fu_718_p1}, {empty_10}};
assign add_ln8_1_fu_560_p2 = (lshr_ln7_1_reg_1544 + 5'd2);
assign add_ln8_2_fu_604_p2 = (lshr_ln7_1_reg_1544 + 5'd3);
assign add_ln8_fu_452_p2 = (lshr_ln7_1_fu_374_p4 + 5'd1);
assign add_ln_fu_397_p3 = {{ap_sig_allocacmp_prev_1}, {empty_10}};
assign and_ln29_10_fu_1294_p2 = (or_ln29_11_fu_1288_p2 & or_ln29_10_fu_1270_p2);
assign and_ln29_11_fu_1300_p2 = (grp_fu_702_p_dout0 & and_ln29_10_fu_1294_p2);
assign and_ln29_12_fu_1384_p2 = (or_ln29_13_fu_1378_p2 & or_ln29_12_fu_1360_p2);
assign and_ln29_13_fu_1390_p2 = (grp_fu_702_p_dout0 & and_ln29_12_fu_1384_p2);
assign and_ln29_14_fu_1474_p2 = (or_ln29_15_fu_1468_p2 & or_ln29_14_fu_1450_p2);
assign and_ln29_15_fu_1480_p2 = (tmp_37_reg_1873 & and_ln29_14_fu_1474_p2);
assign and_ln29_1_fu_851_p2 = (or_ln29_1_fu_839_p2 & and_ln29_fu_845_p2);
assign and_ln29_2_fu_935_p2 = (or_ln29_3_fu_929_p2 & or_ln29_2_fu_911_p2);
assign and_ln29_3_fu_941_p2 = (grp_fu_702_p_dout0 & and_ln29_2_fu_935_p2);
assign and_ln29_4_fu_1025_p2 = (or_ln29_5_fu_1019_p2 & or_ln29_4_fu_1001_p2);
assign and_ln29_5_fu_1031_p2 = (grp_fu_702_p_dout0 & and_ln29_4_fu_1025_p2);
assign and_ln29_6_fu_1114_p2 = (or_ln29_7_fu_1110_p2 & or_ln29_6_fu_1104_p2);
assign and_ln29_7_fu_1120_p2 = (grp_fu_702_p_dout0 & and_ln29_6_fu_1114_p2);
assign and_ln29_8_fu_1204_p2 = (or_ln29_9_fu_1198_p2 & or_ln29_8_fu_1180_p2);
assign and_ln29_9_fu_1210_p2 = (grp_fu_702_p_dout0 & and_ln29_8_fu_1204_p2);
assign and_ln29_fu_845_p2 = (or_ln29_fu_821_p2 & grp_fu_702_p_dout0);
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
assign bitcast_ln27_1_fu_702_p1 = reg_316;
assign bitcast_ln27_2_fu_733_p1 = reg_312;
assign bitcast_ln27_3_fu_738_p1 = transition_load_reg_1661;
assign bitcast_ln27_4_fu_742_p1 = reg_316;
assign bitcast_ln27_5_fu_747_p1 = transition_load_5_reg_1706;
assign bitcast_ln27_6_fu_751_p1 = reg_312;
assign bitcast_ln27_7_fu_756_p1 = transition_load_7_reg_1726;
assign bitcast_ln27_fu_644_p1 = reg_312;
assign bitcast_ln29_10_fu_1223_p1 = reg_345;
assign bitcast_ln29_11_fu_1241_p1 = min_p_21_reg_1842;
assign bitcast_ln29_12_fu_1313_p1 = reg_351;
assign bitcast_ln29_13_fu_1331_p1 = min_p_23_reg_1854;
assign bitcast_ln29_14_fu_1404_p1 = p_10_reg_1818;
assign bitcast_ln29_15_fu_1421_p1 = min_p_25_reg_1866;
assign bitcast_ln29_1_fu_792_p1 = min_p_11_reg_1766;
assign bitcast_ln29_2_fu_864_p1 = reg_327;
assign bitcast_ln29_3_fu_882_p1 = min_p_13_reg_1778;
assign bitcast_ln29_4_fu_954_p1 = reg_333;
assign bitcast_ln29_5_fu_972_p1 = min_p_15_reg_1790;
assign bitcast_ln29_6_fu_1074_p1 = reg_321;
assign bitcast_ln29_7_fu_1044_p1 = min_p_17_fu_1037_p3;
assign bitcast_ln29_8_fu_1133_p1 = reg_339;
assign bitcast_ln29_9_fu_1151_p1 = min_p_19_reg_1830;
assign bitcast_ln29_fu_774_p1 = reg_321;
assign grp_fu_300_p_ce = 1'b1;
assign grp_fu_300_p_din0 = grp_fu_304_p0;
assign grp_fu_300_p_din1 = grp_fu_304_p1;
assign grp_fu_300_p_opcode = 2'd0;
assign grp_fu_702_p_ce = 1'b1;
assign grp_fu_702_p_din0 = grp_fu_308_p0;
assign grp_fu_702_p_din1 = grp_fu_308_p1;
assign grp_fu_702_p_opcode = 5'd4;
assign icmp_ln29_10_fu_1007_p2 = ((tmp_19_fu_975_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_1013_p2 = ((trunc_ln29_5_fu_985_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1092_p2 = ((tmp_21_fu_1078_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1098_p2 = ((trunc_ln29_6_fu_1088_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1062_p2 = ((tmp_22_fu_1048_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1068_p2 = ((trunc_ln29_7_fu_1058_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1168_p2 = ((tmp_25_fu_1137_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1174_p2 = ((trunc_ln29_8_fu_1147_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1186_p2 = ((tmp_26_fu_1154_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1192_p2 = ((trunc_ln29_9_fu_1164_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_815_p2 = ((trunc_ln29_fu_788_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1258_p2 = ((tmp_28_fu_1227_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1264_p2 = ((trunc_ln29_10_fu_1237_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1276_p2 = ((tmp_29_fu_1244_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1282_p2 = ((trunc_ln29_11_fu_1254_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1348_p2 = ((tmp_32_fu_1317_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1354_p2 = ((trunc_ln29_12_fu_1327_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1366_p2 = ((tmp_33_fu_1334_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1372_p2 = ((trunc_ln29_13_fu_1344_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_1438_p2 = ((tmp_35_fu_1407_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_1444_p2 = ((trunc_ln29_14_fu_1417_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_827_p2 = ((tmp_12_fu_795_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_1456_p2 = ((tmp_36_fu_1424_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_1462_p2 = ((trunc_ln29_15_fu_1434_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_833_p2 = ((trunc_ln29_1_fu_805_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_899_p2 = ((tmp_14_fu_868_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_905_p2 = ((trunc_ln29_2_fu_878_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_917_p2 = ((tmp_15_fu_885_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_923_p2 = ((trunc_ln29_3_fu_895_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_989_p2 = ((tmp_18_fu_958_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_995_p2 = ((trunc_ln29_4_fu_968_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_809_p2 = ((tmp_11_fu_778_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_address1 = llike_1_address1_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign lshr_ln7_1_fu_374_p4 = {{ap_sig_allocacmp_prev_1[5:1]}};
assign lshr_ln8_2_fu_416_p4 = {{add_ln25_fu_410_p2[5:1]}};
assign lshr_ln8_3_fu_477_p4 = {{add_ln25_1_fu_471_p2[5:1]}};
assign lshr_ln8_4_fu_582_p4 = {{add_ln25_2_fu_577_p2[5:1]}};
assign lshr_ln8_5_fu_621_p4 = {{add_ln25_3_reg_1585[6:1]}};
assign min_p_13_fu_857_p3 = ((and_ln29_1_reg_1773[0:0] == 1'b1) ? reg_321 : min_p_11_reg_1766);
assign min_p_15_fu_947_p3 = ((and_ln29_3_reg_1785[0:0] == 1'b1) ? reg_327 : min_p_13_reg_1778);
assign min_p_17_fu_1037_p3 = ((and_ln29_5_reg_1797[0:0] == 1'b1) ? reg_333 : min_p_15_reg_1790);
assign min_p_19_fu_1126_p3 = ((and_ln29_7_reg_1825[0:0] == 1'b1) ? reg_321 : min_p_17_reg_1802);
assign min_p_21_fu_1216_p3 = ((and_ln29_9_reg_1837[0:0] == 1'b1) ? reg_339 : min_p_19_reg_1830);
assign min_p_23_fu_1306_p3 = ((and_ln29_11_reg_1849[0:0] == 1'b1) ? reg_345 : min_p_21_reg_1842);
assign min_p_25_fu_1396_p3 = ((and_ln29_13_reg_1861[0:0] == 1'b1) ? reg_351 : min_p_23_reg_1854);
assign min_p_26_out = ((and_ln29_13_reg_1861[0:0] == 1'b1) ? reg_351 : min_p_23_reg_1854);
assign min_p_27_fu_1485_p3 = ((and_ln29_15_fu_1480_p2[0:0] == 1'b1) ? p_10_reg_1818 : min_p_25_reg_1866);
assign or_ln29_10_fu_1270_p2 = (icmp_ln29_21_fu_1264_p2 | icmp_ln29_20_fu_1258_p2);
assign or_ln29_11_fu_1288_p2 = (icmp_ln29_23_fu_1282_p2 | icmp_ln29_22_fu_1276_p2);
assign or_ln29_12_fu_1360_p2 = (icmp_ln29_25_fu_1354_p2 | icmp_ln29_24_fu_1348_p2);
assign or_ln29_13_fu_1378_p2 = (icmp_ln29_27_fu_1372_p2 | icmp_ln29_26_fu_1366_p2);
assign or_ln29_14_fu_1450_p2 = (icmp_ln29_29_fu_1444_p2 | icmp_ln29_28_fu_1438_p2);
assign or_ln29_15_fu_1468_p2 = (icmp_ln29_31_fu_1462_p2 | icmp_ln29_30_fu_1456_p2);
assign or_ln29_1_fu_839_p2 = (icmp_ln29_3_fu_833_p2 | icmp_ln29_2_fu_827_p2);
assign or_ln29_2_fu_911_p2 = (icmp_ln29_5_fu_905_p2 | icmp_ln29_4_fu_899_p2);
assign or_ln29_3_fu_929_p2 = (icmp_ln29_7_fu_923_p2 | icmp_ln29_6_fu_917_p2);
assign or_ln29_4_fu_1001_p2 = (icmp_ln29_9_fu_995_p2 | icmp_ln29_8_fu_989_p2);
assign or_ln29_5_fu_1019_p2 = (icmp_ln29_11_fu_1013_p2 | icmp_ln29_10_fu_1007_p2);
assign or_ln29_6_fu_1104_p2 = (icmp_ln29_13_fu_1098_p2 | icmp_ln29_12_fu_1092_p2);
assign or_ln29_7_fu_1110_p2 = (icmp_ln29_15_reg_1813 | icmp_ln29_14_reg_1808);
assign or_ln29_8_fu_1180_p2 = (icmp_ln29_17_fu_1174_p2 | icmp_ln29_16_fu_1168_p2);
assign or_ln29_9_fu_1198_p2 = (icmp_ln29_19_fu_1192_p2 | icmp_ln29_18_fu_1186_p2);
assign or_ln29_fu_821_p2 = (icmp_ln29_fu_809_p2 | icmp_ln29_1_fu_815_p2);
assign shl_ln2_fu_514_p3 = {{prev_1_reg_1537}, {6'd0}};
assign tmp_11_fu_778_p4 = {{bitcast_ln29_fu_774_p1[62:52]}};
assign tmp_12_fu_795_p4 = {{bitcast_ln29_1_fu_792_p1[62:52]}};
assign tmp_14_fu_868_p4 = {{bitcast_ln29_2_fu_864_p1[62:52]}};
assign tmp_15_fu_885_p4 = {{bitcast_ln29_3_fu_882_p1[62:52]}};
assign tmp_17_fu_527_p4 = {{add_ln27_fu_521_p2[11:6]}};
assign tmp_18_fu_958_p4 = {{bitcast_ln29_4_fu_954_p1[62:52]}};
assign tmp_19_fu_975_p4 = {{bitcast_ln29_5_fu_972_p1[62:52]}};
assign tmp_21_fu_1078_p4 = {{bitcast_ln29_6_fu_1074_p1[62:52]}};
assign tmp_22_fu_1048_p4 = {{bitcast_ln29_7_fu_1044_p1[62:52]}};
assign tmp_24_fu_654_p4 = {{add_ln27_2_fu_649_p2[11:6]}};
assign tmp_25_fu_1137_p4 = {{bitcast_ln29_8_fu_1133_p1[62:52]}};
assign tmp_26_fu_1154_p4 = {{bitcast_ln29_9_fu_1151_p1[62:52]}};
assign tmp_28_fu_1227_p4 = {{bitcast_ln29_10_fu_1223_p1[62:52]}};
assign tmp_29_fu_1244_p4 = {{bitcast_ln29_11_fu_1241_p1[62:52]}};
assign tmp_32_fu_1317_p4 = {{bitcast_ln29_12_fu_1313_p1[62:52]}};
assign tmp_33_fu_1334_p4 = {{bitcast_ln29_13_fu_1331_p1[62:52]}};
assign tmp_35_fu_1407_p4 = {{bitcast_ln29_14_fu_1404_p1[62:52]}};
assign tmp_36_fu_1424_p4 = {{bitcast_ln29_15_fu_1421_p1[62:52]}};
assign tmp_38_fu_426_p3 = {{empty_9}, {lshr_ln8_2_fu_416_p4}};
assign tmp_39_fu_458_p3 = {{empty_9}, {add_ln8_fu_452_p2}};
assign tmp_40_fu_487_p3 = {{empty_9}, {lshr_ln8_3_fu_477_p4}};
assign tmp_41_fu_565_p3 = {{empty_9}, {add_ln8_1_fu_560_p2}};
assign tmp_42_fu_592_p3 = {{empty_9}, {lshr_ln8_4_fu_582_p4}};
assign tmp_43_fu_609_p3 = {{empty_9}, {add_ln8_2_fu_604_p2}};
assign tmp_s_fu_384_p3 = {{empty_9}, {lshr_ln7_1_fu_374_p4}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln27_fu_718_p1 = add_ln25_3_reg_1585[5:0];
assign trunc_ln29_10_fu_1237_p1 = bitcast_ln29_10_fu_1223_p1[51:0];
assign trunc_ln29_11_fu_1254_p1 = bitcast_ln29_11_fu_1241_p1[51:0];
assign trunc_ln29_12_fu_1327_p1 = bitcast_ln29_12_fu_1313_p1[51:0];
assign trunc_ln29_13_fu_1344_p1 = bitcast_ln29_13_fu_1331_p1[51:0];
assign trunc_ln29_14_fu_1417_p1 = bitcast_ln29_14_fu_1404_p1[51:0];
assign trunc_ln29_15_fu_1434_p1 = bitcast_ln29_15_fu_1421_p1[51:0];
assign trunc_ln29_1_fu_805_p1 = bitcast_ln29_1_fu_792_p1[51:0];
assign trunc_ln29_2_fu_878_p1 = bitcast_ln29_2_fu_864_p1[51:0];
assign trunc_ln29_3_fu_895_p1 = bitcast_ln29_3_fu_882_p1[51:0];
assign trunc_ln29_4_fu_968_p1 = bitcast_ln29_4_fu_954_p1[51:0];
assign trunc_ln29_5_fu_985_p1 = bitcast_ln29_5_fu_972_p1[51:0];
assign trunc_ln29_6_fu_1088_p1 = bitcast_ln29_6_fu_1074_p1[51:0];
assign trunc_ln29_7_fu_1058_p1 = bitcast_ln29_7_fu_1044_p1[51:0];
assign trunc_ln29_8_fu_1147_p1 = bitcast_ln29_8_fu_1133_p1[51:0];
assign trunc_ln29_9_fu_1164_p1 = bitcast_ln29_9_fu_1151_p1[51:0];
assign trunc_ln29_fu_788_p1 = bitcast_ln29_fu_774_p1[51:0];
assign zext_ln10_fu_370_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_434_p1 = tmp_38_fu_426_p3;
assign zext_ln26_2_fu_466_p1 = tmp_39_fu_458_p3;
assign zext_ln26_3_fu_495_p1 = tmp_40_fu_487_p3;
assign zext_ln26_4_fu_572_p1 = tmp_41_fu_565_p3;
assign zext_ln26_5_fu_599_p1 = tmp_42_fu_592_p3;
assign zext_ln26_6_fu_616_p1 = tmp_43_fu_609_p3;
assign zext_ln26_7_fu_630_p1 = lshr_ln8_5_fu_621_p4;
assign zext_ln26_8_fu_639_p1 = add_ln26_fu_634_p2;
assign zext_ln26_fu_392_p1 = tmp_s_fu_384_p3;
assign zext_ln27_1_fu_447_p1 = add_ln27_1_fu_439_p3;
assign zext_ln27_2_fu_544_p1 = add_ln27_3_fu_537_p3;
assign zext_ln27_3_fu_555_p1 = add_ln27_4_fu_549_p3;
assign zext_ln27_4_fu_671_p1 = add_ln27_6_fu_664_p3;
assign zext_ln27_5_fu_682_p1 = add_ln27_7_fu_676_p3;
assign zext_ln27_6_fu_713_p1 = add_ln27_9_fu_707_p3;
assign zext_ln27_7_fu_728_p1 = add_ln27_s_fu_721_p3;
assign zext_ln27_fu_405_p1 = add_ln_fu_397_p3;
always @ (posedge ap_clk) begin
    shl_ln2_reg_1600[5:0] <= 6'b000000;
end
endmodule 