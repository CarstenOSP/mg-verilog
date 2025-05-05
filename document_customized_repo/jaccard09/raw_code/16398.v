module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SEQB_address0,SEQB_ce0,SEQB_q0,ptr_address0,ptr_ce0,ptr_q0,alignedA_address0,alignedA_ce0,alignedA_we0,alignedA_d0,alignedB_address0,alignedB_ce0,alignedB_we0,alignedB_d0,SEQA_address0,SEQA_ce0,SEQA_q0,b_str_idx_6_out,b_str_idx_6_out_ap_vld,a_str_idx_0_0_out,a_str_idx_0_0_out_ap_vld,ap_return); 
parameter    ap_ST_fsm_state1 = 27'd1;
parameter    ap_ST_fsm_pp0_stage0 = 27'd2;
parameter    ap_ST_fsm_pp0_stage1 = 27'd4;
parameter    ap_ST_fsm_pp0_stage2 = 27'd8;
parameter    ap_ST_fsm_pp0_stage3 = 27'd16;
parameter    ap_ST_fsm_pp0_stage4 = 27'd32;
parameter    ap_ST_fsm_pp0_stage5 = 27'd64;
parameter    ap_ST_fsm_pp0_stage6 = 27'd128;
parameter    ap_ST_fsm_pp0_stage7 = 27'd256;
parameter    ap_ST_fsm_pp0_stage8 = 27'd512;
parameter    ap_ST_fsm_pp0_stage9 = 27'd1024;
parameter    ap_ST_fsm_pp0_stage10 = 27'd2048;
parameter    ap_ST_fsm_pp0_stage11 = 27'd4096;
parameter    ap_ST_fsm_pp0_stage12 = 27'd8192;
parameter    ap_ST_fsm_pp0_stage13 = 27'd16384;
parameter    ap_ST_fsm_pp0_stage14 = 27'd32768;
parameter    ap_ST_fsm_pp0_stage15 = 27'd65536;
parameter    ap_ST_fsm_pp0_stage16 = 27'd131072;
parameter    ap_ST_fsm_state20 = 27'd262144;
parameter    ap_ST_fsm_state21 = 27'd524288;
parameter    ap_ST_fsm_state22 = 27'd1048576;
parameter    ap_ST_fsm_state23 = 27'd2097152;
parameter    ap_ST_fsm_state24 = 27'd4194304;
parameter    ap_ST_fsm_state25 = 27'd8388608;
parameter    ap_ST_fsm_state26 = 27'd16777216;
parameter    ap_ST_fsm_state27 = 27'd33554432;
parameter    ap_ST_fsm_state28 = 27'd67108864;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] SEQB_address0;
output   SEQB_ce0;
input  [7:0] SEQB_q0;
output  [14:0] ptr_address0;
output   ptr_ce0;
input  [7:0] ptr_q0;
output  [7:0] alignedA_address0;
output   alignedA_ce0;
output   alignedA_we0;
output  [7:0] alignedA_d0;
output  [7:0] alignedB_address0;
output   alignedB_ce0;
output   alignedB_we0;
output  [7:0] alignedB_d0;
output  [6:0] SEQA_address0;
output   SEQA_ce0;
input  [7:0] SEQA_q0;
output  [8:0] b_str_idx_6_out;
output   b_str_idx_6_out_ap_vld;
output  [31:0] a_str_idx_0_0_out;
output   a_str_idx_0_0_out_ap_vld;
output  [2:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg b_str_idx_6_out_ap_vld;
reg a_str_idx_0_0_out_ap_vld;
reg[2:0] ap_return;
(* fsm_encoding = "none" *) reg   [26:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] a_idx_4_reg_607;
reg   [31:0] b_idx_4_reg_619;
reg   [31:0] a_idx_7_reg_631;
reg   [31:0] b_idx_7_reg_644;
reg   [31:0] a_idx_10_reg_657;
reg   [31:0] b_idx_10_reg_670;
reg   [31:0] a_idx_13_reg_683;
reg   [31:0] b_idx_13_reg_696;
reg   [31:0] a_idx_16_reg_709;
reg   [31:0] b_idx_16_reg_722;
reg   [31:0] a_idx_19_reg_735;
reg   [31:0] b_idx_19_reg_748;
reg   [31:0] a_idx_22_reg_761;
reg   [31:0] b_idx_22_reg_774;
wire   [31:0] grp_fu_848_p2;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] or_ln62_reg_1897;
wire   [7:0] ptr_q0_local;
wire   [31:0] grp_fu_853_p2;
wire   [31:0] grp_fu_861_p2;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [0:0] or_ln62_1_reg_1935;
wire   [31:0] grp_fu_867_p2;
wire   [31:0] grp_fu_873_p2;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [0:0] or_ln62_2_reg_1968;
wire   [31:0] grp_fu_879_p2;
wire   [31:0] grp_fu_885_p2;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [0:0] or_ln62_3_reg_2006;
wire   [31:0] grp_fu_891_p2;
wire   [31:0] grp_fu_897_p2;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [0:0] or_ln62_4_reg_2039;
wire   [31:0] grp_fu_903_p2;
wire   [31:0] grp_fu_909_p2;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [0:0] or_ln62_5_reg_2079;
wire   [31:0] grp_fu_915_p2;
wire   [31:0] grp_fu_921_p2;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [0:0] or_ln62_6_reg_2112;
wire   [31:0] grp_fu_927_p2;
wire   [31:0] grp_fu_933_p2;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [0:0] or_ln62_7_reg_2145;
wire   [31:0] grp_fu_939_p2;
reg   [31:0] b_idx_1_reg_1885;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_1891;
wire   [0:0] or_ln62_fu_1087_p2;
reg   [7:0] ptr_load_reg_1906;
reg   [6:0] tmp_s_reg_1930;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] or_ln62_1_fu_1186_p2;
reg   [7:0] ptr_load_1_reg_1944;
wire   [0:0] or_ln62_2_fu_1274_p2;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [7:0] ptr_load_2_reg_1977;
wire   [5:0] tmp_1_fu_1329_p4;
reg   [5:0] tmp_1_reg_2001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] or_ln62_3_fu_1373_p2;
reg   [7:0] ptr_load_3_reg_2015;
wire   [0:0] or_ln62_4_fu_1461_p2;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [7:0] ptr_load_4_reg_2048;
wire   [4:0] tmp_2_fu_1516_p4;
reg   [4:0] tmp_2_reg_2072;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [0:0] or_ln62_5_fu_1560_p2;
reg   [7:0] ptr_load_5_reg_2088;
wire   [0:0] or_ln62_6_fu_1660_p2;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [7:0] ptr_load_6_reg_2121;
wire   [0:0] or_ln62_7_fu_1748_p2;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [7:0] ptr_load_7_reg_2154;
wire    ap_block_pp0_stage16_subdone;
reg    ap_predicate_tran19to20_state18;
reg    ap_predicate_tran19to21_state18;
reg    ap_predicate_tran19to22_state18;
reg    ap_predicate_tran19to23_state18;
reg    ap_predicate_tran19to24_state18;
reg    ap_predicate_tran19to25_state18;
reg    ap_predicate_tran19to26_state18;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire    ap_CS_fsm_pp0_stage0;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_4_reg_607;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_4_reg_619;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_7_reg_631;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_7_reg_644;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_10_reg_657;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_10_reg_670;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_13_reg_683;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_13_reg_696;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_16_reg_709;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_16_reg_722;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_19_reg_735;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_19_reg_748;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_22_reg_761;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_22_reg_774;
wire   [31:0] ap_phi_reg_pp0_iter0_a_idx_25_reg_787;
reg   [31:0] ap_phi_reg_pp0_iter1_a_idx_25_reg_787;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] ap_phi_reg_pp0_iter0_b_idx_25_reg_799;
reg   [31:0] ap_phi_reg_pp0_iter1_b_idx_25_reg_799;
reg   [2:0] UnifiedRetVal_reg_811;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
wire   [63:0] zext_ln64_fu_1125_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln71_1_fu_1130_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln65_fu_1135_p1;
wire   [63:0] zext_ln66_fu_1140_p1;
wire   [63:0] zext_ln77_fu_1145_p1;
wire   [63:0] zext_ln18_fu_1150_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln64_1_fu_1216_p1;
wire   [63:0] zext_ln71_3_fu_1221_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln65_1_fu_1226_p1;
wire   [63:0] zext_ln66_1_fu_1231_p1;
wire   [63:0] zext_ln77_1_fu_1236_p1;
wire   [63:0] zext_ln71_fu_1248_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln64_2_fu_1304_p1;
wire   [63:0] zext_ln71_5_fu_1309_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln65_2_fu_1314_p1;
wire   [63:0] zext_ln66_2_fu_1319_p1;
wire   [63:0] zext_ln77_2_fu_1324_p1;
wire   [63:0] zext_ln71_2_fu_1347_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln64_3_fu_1403_p1;
wire   [63:0] zext_ln71_7_fu_1408_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln65_3_fu_1413_p1;
wire   [63:0] zext_ln66_3_fu_1418_p1;
wire   [63:0] zext_ln77_3_fu_1423_p1;
wire   [63:0] zext_ln71_4_fu_1435_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln64_4_fu_1491_p1;
wire   [63:0] zext_ln71_9_fu_1496_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln65_4_fu_1501_p1;
wire   [63:0] zext_ln66_4_fu_1506_p1;
wire   [63:0] zext_ln77_4_fu_1511_p1;
wire   [63:0] zext_ln71_6_fu_1534_p1;
wire    ap_block_pp0_stage11;
reg    ap_predicate_pred244_state13;
wire   [63:0] zext_ln64_5_fu_1590_p1;
wire   [63:0] zext_ln71_11_fu_1595_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln65_5_fu_1600_p1;
wire   [63:0] zext_ln66_5_fu_1605_p1;
wire   [63:0] zext_ln77_5_fu_1610_p1;
wire   [63:0] zext_ln71_8_fu_1634_p1;
wire    ap_block_pp0_stage13;
reg    ap_predicate_pred270_state15;
wire   [63:0] zext_ln64_6_fu_1690_p1;
wire   [63:0] zext_ln71_13_fu_1695_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln65_6_fu_1700_p1;
wire   [63:0] zext_ln66_6_fu_1705_p1;
wire   [63:0] zext_ln77_6_fu_1710_p1;
wire   [63:0] zext_ln71_10_fu_1722_p1;
wire    ap_block_pp0_stage15;
reg    ap_predicate_pred296_state17;
wire   [63:0] zext_ln64_7_fu_1778_p1;
wire   [63:0] zext_ln71_14_fu_1783_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln65_7_fu_1788_p1;
wire   [63:0] zext_ln66_7_fu_1793_p1;
wire   [63:0] zext_ln77_7_fu_1798_p1;
wire   [63:0] zext_ln71_12_fu_1810_p1;
wire    ap_block_pp0_stage0;
reg    ap_predicate_pred322_state19;
reg   [31:0] a_str_idx_0_0_fu_100;
wire   [31:0] b_str_idx_fu_1828_p2;
reg   [8:0] a_str_idx_fu_104;
wire   [8:0] add_ln65_fu_1822_p2;
reg   [31:0] b_idx_fu_108;
reg   [31:0] a_idx_fu_112;
reg    ptr_ce0_local;
reg   [14:0] ptr_address0_local;
reg    SEQA_ce0_local;
reg   [6:0] SEQA_address0_local;
reg    SEQB_ce0_local;
reg   [6:0] SEQB_address0_local;
reg    alignedA_we0_local;
reg   [7:0] alignedA_d0_local;
reg    alignedA_ce0_local;
reg   [7:0] alignedA_address0_local;
reg    alignedB_we0_local;
reg   [7:0] alignedB_d0_local;
reg    alignedB_ce0_local;
reg   [7:0] alignedB_address0_local;
wire   [0:0] icmp_ln62_fu_1075_p2;
wire   [0:0] icmp_ln62_1_fu_1081_p2;
wire   [7:0] trunc_ln16_fu_1101_p1;
wire   [14:0] p_shl_fu_1105_p3;
wire   [14:0] trunc_ln18_1_fu_1097_p1;
wire   [14:0] r_fu_1113_p2;
wire   [14:0] trunc_ln18_fu_1093_p1;
wire   [14:0] add_ln64_fu_1119_p2;
wire   [0:0] icmp_ln62_2_fu_1174_p2;
wire   [0:0] icmp_ln62_3_fu_1180_p2;
wire   [7:0] trunc_ln16_1_fu_1192_p1;
wire   [14:0] p_shl1_fu_1196_p3;
wire   [14:0] trunc_ln17_1_fu_1170_p1;
wire   [14:0] r_1_fu_1204_p2;
wire   [14:0] trunc_ln17_fu_1166_p1;
wire   [14:0] add_ln64_1_fu_1210_p2;
wire   [7:0] or_ln4_fu_1241_p3;
wire   [0:0] icmp_ln62_4_fu_1262_p2;
wire   [0:0] icmp_ln62_5_fu_1268_p2;
wire   [7:0] trunc_ln16_2_fu_1280_p1;
wire   [14:0] p_shl2_fu_1284_p3;
wire   [14:0] trunc_ln17_3_fu_1258_p1;
wire   [14:0] r_2_fu_1292_p2;
wire   [14:0] trunc_ln17_2_fu_1254_p1;
wire   [14:0] add_ln64_2_fu_1298_p2;
wire   [7:0] or_ln65_1_fu_1339_p3;
wire   [0:0] icmp_ln62_6_fu_1361_p2;
wire   [0:0] icmp_ln62_7_fu_1367_p2;
wire   [7:0] trunc_ln16_3_fu_1379_p1;
wire   [14:0] p_shl3_fu_1383_p3;
wire   [14:0] trunc_ln17_5_fu_1357_p1;
wire   [14:0] r_3_fu_1391_p2;
wire   [14:0] trunc_ln17_4_fu_1353_p1;
wire   [14:0] add_ln64_3_fu_1397_p2;
wire   [7:0] or_ln65_3_fu_1428_p3;
wire   [0:0] icmp_ln62_8_fu_1449_p2;
wire   [0:0] icmp_ln62_9_fu_1455_p2;
wire   [7:0] trunc_ln16_4_fu_1467_p1;
wire   [14:0] p_shl4_fu_1471_p3;
wire   [14:0] trunc_ln17_7_fu_1445_p1;
wire   [14:0] r_4_fu_1479_p2;
wire   [14:0] trunc_ln17_6_fu_1441_p1;
wire   [14:0] add_ln64_4_fu_1485_p2;
wire   [7:0] or_ln65_5_fu_1526_p3;
wire   [0:0] icmp_ln62_10_fu_1548_p2;
wire   [0:0] icmp_ln62_11_fu_1554_p2;
wire   [7:0] trunc_ln16_5_fu_1566_p1;
wire   [14:0] p_shl5_fu_1570_p3;
wire   [14:0] trunc_ln17_9_fu_1544_p1;
wire   [14:0] r_5_fu_1578_p2;
wire   [14:0] trunc_ln17_8_fu_1540_p1;
wire   [14:0] add_ln64_5_fu_1584_p2;
wire   [0:0] tmp_fu_1615_p3;
wire   [7:0] or_ln65_7_fu_1623_p5;
wire   [0:0] icmp_ln62_12_fu_1648_p2;
wire   [0:0] icmp_ln62_13_fu_1654_p2;
wire   [7:0] trunc_ln16_6_fu_1666_p1;
wire   [14:0] p_shl6_fu_1670_p3;
wire   [14:0] trunc_ln17_11_fu_1644_p1;
wire   [14:0] r_6_fu_1678_p2;
wire   [14:0] trunc_ln17_10_fu_1640_p1;
wire   [14:0] add_ln64_6_fu_1684_p2;
wire   [7:0] or_ln65_9_fu_1715_p3;
wire   [0:0] icmp_ln62_14_fu_1736_p2;
wire   [0:0] icmp_ln62_15_fu_1742_p2;
wire   [7:0] trunc_ln16_7_fu_1754_p1;
wire   [14:0] p_shl7_fu_1758_p3;
wire   [14:0] trunc_ln17_13_fu_1732_p1;
wire   [14:0] r_7_fu_1766_p2;
wire   [14:0] trunc_ln17_12_fu_1728_p1;
wire   [14:0] add_ln64_7_fu_1772_p2;
wire   [7:0] or_ln65_s_fu_1803_p3;
reg   [2:0] ap_return_preg;
wire    ap_CS_fsm_state28;
reg   [26:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
reg   [7:0] ap_exit_tran_regpp0;
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
wire    ap_block_pp0_stage15_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_1891;
reg    ap_condition_1895;
reg    ap_condition_1900;
reg    ap_condition_1904;
reg    ap_condition_1910;
reg    ap_condition_1914;
reg    ap_condition_1921;
reg    ap_condition_1925;
reg    ap_condition_1933;
reg    ap_condition_1937;
reg    ap_condition_1946;
reg    ap_condition_1950;
reg    ap_condition_1960;
reg    ap_condition_1964;
reg    ap_condition_1975;
reg    ap_condition_1979;
reg    ap_condition_1984;
reg    ap_condition_1989;
reg    ap_condition_1995;
reg    ap_condition_2002;
reg    ap_condition_2010;
reg    ap_condition_2019;
reg    ap_condition_2029;
reg    ap_condition_2040;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 27'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_str_idx_0_0_fu_100 = 32'd0;
#0 a_str_idx_fu_104 = 9'd0;
#0 b_idx_fu_108 = 32'd0;
#0 a_idx_fu_112 = 32'd0;
#0 ap_return_preg = 3'd0;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 3'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state28)) begin
            ap_return_preg <= UnifiedRetVal_reg_811;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        UnifiedRetVal_reg_811 <= 3'd7;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        UnifiedRetVal_reg_811 <= 3'd6;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        UnifiedRetVal_reg_811 <= 3'd5;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        UnifiedRetVal_reg_811 <= 3'd4;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        UnifiedRetVal_reg_811 <= 3'd3;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        UnifiedRetVal_reg_811 <= 3'd2;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        UnifiedRetVal_reg_811 <= 3'd1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        UnifiedRetVal_reg_811 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_idx_fu_112 <= 32'd128;
    end else if (((ap_predicate_pred322_state19 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        a_idx_fu_112 <= ap_phi_reg_pp0_iter1_a_idx_25_reg_787;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_str_idx_0_0_fu_100 <= 32'd0;
    end else if (((ap_predicate_pred322_state19 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        a_str_idx_0_0_fu_100 <= b_str_idx_fu_1828_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_str_idx_fu_104 <= 9'd0;
    end else if (((ap_predicate_pred322_state19 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        a_str_idx_fu_104 <= add_ln65_fu_1822_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((or_ln62_reg_1897 == 1'd0)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b1;
            ap_exit_tran_regpp0[2] <= 1'b1;
        end else if ((ap_predicate_tran19to26_state18 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b1;
            ap_exit_tran_regpp0[2] <= 1'b1;
        end else if ((ap_predicate_tran19to25_state18 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b0;
            ap_exit_tran_regpp0[2] <= 1'b1;
        end else if ((ap_predicate_tran19to24_state18 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b0;
            ap_exit_tran_regpp0[2] <= 1'b1;
        end else if ((ap_predicate_tran19to23_state18 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b1;
            ap_exit_tran_regpp0[2] <= 1'b0;
        end else if ((ap_predicate_tran19to22_state18 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b1;
            ap_exit_tran_regpp0[2] <= 1'b0;
        end else if ((ap_predicate_tran19to21_state18 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b0;
            ap_exit_tran_regpp0[2] <= 1'b0;
        end else if ((ap_predicate_tran19to20_state18 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b0;
            ap_exit_tran_regpp0[2] <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_10_reg_657 <= a_idx_7_reg_631;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_10_reg_657 <= grp_fu_873_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_13_reg_683 <= a_idx_10_reg_657;
    end else if ((((or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_13_reg_683 <= grp_fu_885_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_16_reg_709 <= a_idx_13_reg_683;
    end else if ((((or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_16_reg_709 <= grp_fu_897_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_19_reg_735 <= a_idx_16_reg_709;
    end else if ((((or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_19_reg_735 <= grp_fu_909_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_22_reg_761 <= a_idx_19_reg_735;
    end else if ((((or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_22_reg_761 <= grp_fu_921_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_607 <= a_idx_1_reg_1891;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_607 <= grp_fu_848_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_7_reg_631 <= a_idx_4_reg_607;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_7_reg_631 <= grp_fu_861_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_10_reg_670 <= b_idx_7_reg_644;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_10_reg_670 <= grp_fu_879_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_13_reg_696 <= b_idx_10_reg_670;
    end else if ((((or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_13_reg_696 <= grp_fu_891_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_16_reg_722 <= b_idx_13_reg_696;
    end else if ((((or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_16_reg_722 <= grp_fu_903_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_19_reg_748 <= b_idx_16_reg_722;
    end else if ((((or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_19_reg_748 <= grp_fu_915_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_22_reg_774 <= b_idx_19_reg_748;
    end else if ((((or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_22_reg_774 <= grp_fu_927_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_619 <= b_idx_1_reg_1885;
    end else if (((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_619 <= grp_fu_853_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_7_reg_644 <= b_idx_4_reg_619;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_7_reg_644 <= grp_fu_867_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_a_idx_25_reg_787 <= a_idx_22_reg_761;
    end else if ((((or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter1_a_idx_25_reg_787 <= grp_fu_933_p2;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_a_idx_25_reg_787 <= ap_phi_reg_pp0_iter0_a_idx_25_reg_787;
    end
end
always @ (posedge ap_clk) begin
    if (((or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_b_idx_25_reg_799 <= b_idx_22_reg_774;
    end else if ((((or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter1_b_idx_25_reg_799 <= grp_fu_939_p2;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter1_b_idx_25_reg_799 <= ap_phi_reg_pp0_iter0_b_idx_25_reg_799;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        b_idx_fu_108 <= 32'd128;
    end else if (((ap_predicate_pred322_state19 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        b_idx_fu_108 <= ap_phi_reg_pp0_iter1_b_idx_25_reg_799;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_10_reg_657 <= ap_phi_reg_pp0_iter0_a_idx_10_reg_657;
        b_idx_10_reg_670 <= ap_phi_reg_pp0_iter0_b_idx_10_reg_670;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_13_reg_683 <= ap_phi_reg_pp0_iter0_a_idx_13_reg_683;
        b_idx_13_reg_696 <= ap_phi_reg_pp0_iter0_b_idx_13_reg_696;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_16_reg_709 <= ap_phi_reg_pp0_iter0_a_idx_16_reg_709;
        b_idx_16_reg_722 <= ap_phi_reg_pp0_iter0_b_idx_16_reg_722;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_19_reg_735 <= ap_phi_reg_pp0_iter0_a_idx_19_reg_735;
        b_idx_19_reg_748 <= ap_phi_reg_pp0_iter0_b_idx_19_reg_748;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        a_idx_1_reg_1891 <= a_idx_fu_112;
        b_idx_1_reg_1885 <= b_idx_fu_108;
        or_ln62_reg_1897 <= or_ln62_fu_1087_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_22_reg_761 <= ap_phi_reg_pp0_iter0_a_idx_22_reg_761;
        b_idx_22_reg_774 <= ap_phi_reg_pp0_iter0_b_idx_22_reg_774;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_4_reg_607 <= ap_phi_reg_pp0_iter0_a_idx_4_reg_607;
        b_idx_4_reg_619 <= ap_phi_reg_pp0_iter0_b_idx_4_reg_619;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_7_reg_631 <= ap_phi_reg_pp0_iter0_a_idx_7_reg_631;
        b_idx_7_reg_644 <= ap_phi_reg_pp0_iter0_b_idx_7_reg_644;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001))) begin
        ap_predicate_pred244_state13 <= ((or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12_11001))) begin
        ap_predicate_pred270_state15 <= ((or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14_11001))) begin
        ap_predicate_pred296_state17 <= ((or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001))) begin
        ap_predicate_pred322_state19 <= ((or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        or_ln62_1_reg_1935 <= or_ln62_1_fu_1186_p2;
        tmp_s_reg_1930 <= {{a_str_idx_fu_104[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        or_ln62_2_reg_1968 <= or_ln62_2_fu_1274_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        or_ln62_3_reg_2006 <= or_ln62_3_fu_1373_p2;
        tmp_1_reg_2001 <= {{a_str_idx_fu_104[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001))) begin
        or_ln62_4_reg_2039 <= or_ln62_4_fu_1461_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        or_ln62_5_reg_2079 <= or_ln62_5_fu_1560_p2;
        tmp_2_reg_2072 <= {{a_str_idx_fu_104[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001))) begin
        or_ln62_6_reg_2112 <= or_ln62_6_fu_1660_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        or_ln62_7_reg_2145 <= or_ln62_7_fu_1748_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ptr_load_1_reg_1944 <= ptr_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ptr_load_2_reg_1977 <= ptr_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ptr_load_3_reg_2015 <= ptr_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ptr_load_4_reg_2048 <= ptr_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ptr_load_5_reg_2088 <= ptr_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ptr_load_6_reg_2121 <= ptr_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ptr_load_7_reg_2154 <= ptr_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ptr_load_reg_1906 <= ptr_q0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1897 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1979)) begin
            SEQA_address0_local = zext_ln65_7_fu_1788_p1;
        end else if ((1'b1 == ap_condition_1975)) begin
            SEQA_address0_local = zext_ln71_14_fu_1783_p1;
        end else if ((1'b1 == ap_condition_1964)) begin
            SEQA_address0_local = zext_ln65_6_fu_1700_p1;
        end else if ((1'b1 == ap_condition_1960)) begin
            SEQA_address0_local = zext_ln71_13_fu_1695_p1;
        end else if ((1'b1 == ap_condition_1950)) begin
            SEQA_address0_local = zext_ln65_5_fu_1600_p1;
        end else if ((1'b1 == ap_condition_1946)) begin
            SEQA_address0_local = zext_ln71_11_fu_1595_p1;
        end else if ((1'b1 == ap_condition_1937)) begin
            SEQA_address0_local = zext_ln65_4_fu_1501_p1;
        end else if ((1'b1 == ap_condition_1933)) begin
            SEQA_address0_local = zext_ln71_9_fu_1496_p1;
        end else if ((1'b1 == ap_condition_1925)) begin
            SEQA_address0_local = zext_ln65_3_fu_1413_p1;
        end else if ((1'b1 == ap_condition_1921)) begin
            SEQA_address0_local = zext_ln71_7_fu_1408_p1;
        end else if ((1'b1 == ap_condition_1914)) begin
            SEQA_address0_local = zext_ln65_2_fu_1314_p1;
        end else if ((1'b1 == ap_condition_1910)) begin
            SEQA_address0_local = zext_ln71_5_fu_1309_p1;
        end else if ((1'b1 == ap_condition_1904)) begin
            SEQA_address0_local = zext_ln65_1_fu_1226_p1;
        end else if ((1'b1 == ap_condition_1900)) begin
            SEQA_address0_local = zext_ln71_3_fu_1221_p1;
        end else if ((1'b1 == ap_condition_1895)) begin
            SEQA_address0_local = zext_ln65_fu_1135_p1;
        end else if ((1'b1 == ap_condition_1891)) begin
            SEQA_address0_local = zext_ln71_1_fu_1130_p1;
        end else begin
            SEQA_address0_local = 'bx;
        end
    end else begin
        SEQA_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897== 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60)& (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897== 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd60) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_ce0_local = 1'b1;
    end else begin
        SEQA_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_1897 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_2040)) begin
            SEQB_address0_local = zext_ln77_7_fu_1798_p1;
        end else if ((1'b1 == ap_condition_1979)) begin
            SEQB_address0_local = zext_ln66_7_fu_1793_p1;
        end else if ((1'b1 == ap_condition_2029)) begin
            SEQB_address0_local = zext_ln77_6_fu_1710_p1;
        end else if ((1'b1 == ap_condition_1964)) begin
            SEQB_address0_local = zext_ln66_6_fu_1705_p1;
        end else if ((1'b1 == ap_condition_2019)) begin
            SEQB_address0_local = zext_ln77_5_fu_1610_p1;
        end else if ((1'b1 == ap_condition_1950)) begin
            SEQB_address0_local = zext_ln66_5_fu_1605_p1;
        end else if ((1'b1 == ap_condition_2010)) begin
            SEQB_address0_local = zext_ln77_4_fu_1511_p1;
        end else if ((1'b1 == ap_condition_1937)) begin
            SEQB_address0_local = zext_ln66_4_fu_1506_p1;
        end else if ((1'b1 == ap_condition_2002)) begin
            SEQB_address0_local = zext_ln77_3_fu_1423_p1;
        end else if ((1'b1 == ap_condition_1925)) begin
            SEQB_address0_local = zext_ln66_3_fu_1418_p1;
        end else if ((1'b1 == ap_condition_1995)) begin
            SEQB_address0_local = zext_ln77_2_fu_1324_p1;
        end else if ((1'b1 == ap_condition_1914)) begin
            SEQB_address0_local = zext_ln66_2_fu_1319_p1;
        end else if ((1'b1 == ap_condition_1989)) begin
            SEQB_address0_local = zext_ln77_1_fu_1236_p1;
        end else if ((1'b1 == ap_condition_1904)) begin
            SEQB_address0_local = zext_ln66_1_fu_1231_p1;
        end else if ((1'b1 == ap_condition_1984)) begin
            SEQB_address0_local = zext_ln77_fu_1145_p1;
        end else if ((1'b1 == ap_condition_1895)) begin
            SEQB_address0_local = zext_ln66_fu_1140_p1;
        end else begin
            SEQB_address0_local = 'bx;
        end
    end else begin
        SEQB_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0== 1'b1)) | ((or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local ==8'd60) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 ==ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935== 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd92) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQB_ce0_local = 1'b1;
    end else begin
        SEQB_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state27))) begin
        a_str_idx_0_0_out_ap_vld = 1'b1;
    end else begin
        a_str_idx_0_0_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd92) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd60) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | (~(ptr_load_7_reg_2154 == 8'd92) & ~(ptr_load_7_reg_2154 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) &(1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedA_address0_local = zext_ln71_12_fu_1810_p1;
end else if (((~(ptr_load_6_reg_2121 == 8'd92) & ~(ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd92) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) &(1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_address0_local = zext_ln71_10_fu_1722_p1;
    end else if (((~(ptr_load_5_reg_2088 == 8'd92) & ~(ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd92) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_address0_local = zext_ln71_8_fu_1634_p1;
    end else if (((~(ptr_load_4_reg_2048 == 8'd92) & ~(ptr_load_4_reg_2048 == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd92) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_address0_local = zext_ln71_6_fu_1534_p1;
    end else if (((~(ptr_load_3_reg_2015 == 8'd92) & ~(ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd92) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_address0_local = zext_ln71_4_fu_1435_p1;
    end else if (((~(ptr_load_2_reg_1977 == 8'd92) & ~(ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_address0_local = zext_ln71_2_fu_1347_p1;
    end else if ((((ptr_load_1_reg_1944 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_1_reg_1944 == 8'd60) & ~(ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_address0_local = zext_ln71_fu_1248_p1;
    end else if (((~(ptr_load_reg_1906 == 8'd92) & ~(ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_address0_local = zext_ln18_fu_1150_p1;
    end else begin
        alignedA_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ptr_load_1_reg_1944 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_reg_1906 == 8'd92) & ~(ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd92) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1)& (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd60) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(ptr_load_7_reg_2154 == 8'd92) & ~(ptr_load_7_reg_2154 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(ptr_load_6_reg_2121 == 8'd92) & ~(ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079== 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd92) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_5_reg_2088 == 8'd92)& ~(ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd92) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_4_reg_2048 == 8'd92) & ~(ptr_load_4_reg_2048== 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd92) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_3_reg_2015 == 8'd92) & ~(ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 ==1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd92) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_2_reg_1977 == 8'd92) & ~(ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968== 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_1_reg_1944 == 8'd60) & ~(ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_ce0_local = 1'b1;
    end else begin
        alignedA_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(ptr_load_reg_1906 == 8'd92) & ~(ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_7_reg_2154 == 8'd92) & ~(ptr_load_7_reg_2154 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | (~(ptr_load_6_reg_2121 == 8'd92) & ~(ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_5_reg_2088== 8'd92) & ~(ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_4_reg_2048 == 8'd92) & ~(ptr_load_4_reg_2048 == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_3_reg_2015 == 8'd92) & ~(ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_2_reg_1977 == 8'd92) & ~(ptr_load_2_reg_1977 == 8'd60) & (1'b1== ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_1_reg_1944 == 8'd60) & ~(ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_d0_local = 8'd45;
end else if ((((ptr_load_1_reg_1944 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd92) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd60) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112== 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ptr_load_6_reg_2121 == 8'd92) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd92) & (or_ln62_5_reg_2079 == 1'd1)& (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd92) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 ==1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd92) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897== 1'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_d0_local = SEQA_q0;
    end else begin
        alignedA_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((ptr_load_1_reg_1944 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_reg_1906 == 8'd92) & ~(ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd92) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1)& (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd60) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(ptr_load_7_reg_2154 == 8'd92) & ~(ptr_load_7_reg_2154 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(ptr_load_6_reg_2121 == 8'd92) & ~(ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079== 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd92) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_5_reg_2088 == 8'd92)& ~(ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd92) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_4_reg_2048 == 8'd92) & ~(ptr_load_4_reg_2048== 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd92) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_3_reg_2015 == 8'd92) & ~(ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 ==1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd92) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_2_reg_1977 == 8'd92) & ~(ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968== 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_1_reg_1944 == 8'd60) & ~(ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_we0_local = 1'b1;
    end else begin
        alignedA_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd92) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd60) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | (~(ptr_load_7_reg_2154 == 8'd92) & ~(ptr_load_7_reg_2154 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) &(1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_address0_local = zext_ln71_12_fu_1810_p1;
end else if (((~(ptr_load_6_reg_2121 == 8'd92) & ~(ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd92) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) &(1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_address0_local = zext_ln71_10_fu_1722_p1;
    end else if (((~(ptr_load_5_reg_2088 == 8'd92) & ~(ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd92) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_address0_local = zext_ln71_8_fu_1634_p1;
    end else if (((~(ptr_load_4_reg_2048 == 8'd92) & ~(ptr_load_4_reg_2048 == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd92) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_address0_local = zext_ln71_6_fu_1534_p1;
    end else if (((~(ptr_load_3_reg_2015 == 8'd92) & ~(ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd92) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_address0_local = zext_ln71_4_fu_1435_p1;
    end else if (((~(ptr_load_2_reg_1977 == 8'd92) & ~(ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_address0_local = zext_ln71_2_fu_1347_p1;
    end else if ((((ptr_load_1_reg_1944 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_1_reg_1944 == 8'd60) & ~(ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_address0_local = zext_ln71_fu_1248_p1;
    end else if (((~(ptr_load_reg_1906 == 8'd92) & ~(ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_address0_local = zext_ln18_fu_1150_p1;
    end else begin
        alignedB_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((ptr_load_1_reg_1944 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_reg_1906 == 8'd92) & ~(ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd92) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1)& (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd60) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(ptr_load_7_reg_2154 == 8'd92) & ~(ptr_load_7_reg_2154 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(ptr_load_6_reg_2121 == 8'd92) & ~(ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079== 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd92) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_5_reg_2088 == 8'd92)& ~(ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd92) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_4_reg_2048 == 8'd92) & ~(ptr_load_4_reg_2048== 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd92) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_3_reg_2015 == 8'd92) & ~(ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 ==1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd92) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_2_reg_1977 == 8'd92) & ~(ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968== 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_1_reg_1944 == 8'd60) & ~(ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_ce0_local = 1'b1;
    end else begin
        alignedB_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(ptr_load_reg_1906 == 8'd92) & ~(ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd92) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | (~(ptr_load_7_reg_2154 == 8'd92) & ~(ptr_load_7_reg_2154 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)& (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | (~(ptr_load_6_reg_2121 == 8'd92) & ~(ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd92) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_5_reg_2088 == 8'd92) & ~(ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1)& (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd92) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_4_reg_2048 == 8'd92) & ~(ptr_load_4_reg_2048 == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd92) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935== 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_3_reg_2015 == 8'd92) & ~(ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd92) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_2_reg_1977 == 8'd92) & ~(ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935== 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_1_reg_1944 == 8'd60) & ~(ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_d0_local = SEQB_q0;
end else if ((((ptr_load_1_reg_1944 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd60) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) &(1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968== 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_d0_local = 8'd45;
    end else begin
        alignedB_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((ptr_load_1_reg_1944 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_reg_1906 == 8'd92) & ~(ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_reg_1906 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd92) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1)& (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (ptr_load_7_reg_2154 == 8'd60) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(ptr_load_7_reg_2154 == 8'd92) & ~(ptr_load_7_reg_2154 == 8'd60) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | (~(ptr_load_6_reg_2121 == 8'd92) & ~(ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079== 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd92) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_6_reg_2121 == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_5_reg_2088 == 8'd92)& ~(ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd92) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_5_reg_2088 == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_4_reg_2048 == 8'd92) & ~(ptr_load_4_reg_2048== 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd92) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_4_reg_2048 == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_3_reg_2015 == 8'd92) & ~(ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 ==1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd92) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_3_reg_2015 == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_2_reg_1977 == 8'd92) & ~(ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968== 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_2_reg_1977 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage7) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(ptr_load_1_reg_1944 == 8'd60) & ~(ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ptr_load_1_reg_1944 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_we0_local = 1'b1;
    end else begin
        alignedB_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_subdone) & ((ap_predicate_tran19to26_state18 == 1'b1) | (ap_predicate_tran19to25_state18 == 1'b1) | (ap_predicate_tran19to24_state18 == 1'b1) | (ap_predicate_tran19to23_state18 == 1'b1) | (ap_predicate_tran19to22_state18 == 1'b1) | (ap_predicate_tran19to21_state18 == 1'b1) | (ap_predicate_tran19to20_state18 == 1'b1) | (or_ln62_reg_1897 == 1'd0)))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state28) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((1'b1 == ap_CS_fsm_state28)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        ap_return = UnifiedRetVal_reg_811;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state27))) begin
        b_str_idx_6_out_ap_vld = 1'b1;
    end else begin
        b_str_idx_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15))) begin
            ptr_address0_local = zext_ln64_7_fu_1778_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13))) begin
            ptr_address0_local = zext_ln64_6_fu_1690_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11))) begin
            ptr_address0_local = zext_ln64_5_fu_1590_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9))) begin
            ptr_address0_local = zext_ln64_4_fu_1491_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            ptr_address0_local = zext_ln64_3_fu_1403_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            ptr_address0_local = zext_ln64_2_fu_1304_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            ptr_address0_local = zext_ln64_1_fu_1216_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_address0_local = zext_ln64_fu_1125_p1;
        end else begin
            ptr_address0_local = 'bx;
        end
    end else begin
        ptr_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_ce0_local = 1'b1;
    end else begin
        ptr_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_exit_tran_regpp0 == 8'd7) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_exit_tran_regpp0 == 8'd6) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_exit_tran_regpp0 == 8'd5) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state25;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_exit_tran_regpp0 == 8'd4) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_exit_tran_regpp0 == 8'd3) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_exit_tran_regpp0 == 8'd2) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_exit_tran_regpp0 == 8'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_exit_tran_regpp0 == 8'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
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
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign SEQA_address0 = SEQA_address0_local;
assign SEQA_ce0 = SEQA_ce0_local;
assign SEQB_address0 = SEQB_address0_local;
assign SEQB_ce0 = SEQB_ce0_local;
assign a_str_idx_0_0_out = a_str_idx_0_0_fu_100;
assign add_ln64_1_fu_1210_p2 = (r_1_fu_1204_p2 + trunc_ln17_fu_1166_p1);
assign add_ln64_2_fu_1298_p2 = (r_2_fu_1292_p2 + trunc_ln17_2_fu_1254_p1);
assign add_ln64_3_fu_1397_p2 = (r_3_fu_1391_p2 + trunc_ln17_4_fu_1353_p1);
assign add_ln64_4_fu_1485_p2 = (r_4_fu_1479_p2 + trunc_ln17_6_fu_1441_p1);
assign add_ln64_5_fu_1584_p2 = (r_5_fu_1578_p2 + trunc_ln17_8_fu_1540_p1);
assign add_ln64_6_fu_1684_p2 = (r_6_fu_1678_p2 + trunc_ln17_10_fu_1640_p1);
assign add_ln64_7_fu_1772_p2 = (r_7_fu_1766_p2 + trunc_ln17_12_fu_1728_p1);
assign add_ln64_fu_1119_p2 = (r_fu_1113_p2 + trunc_ln18_fu_1093_p1);
assign add_ln65_fu_1822_p2 = (a_str_idx_fu_104 + 9'd8);
assign alignedA_address0 = alignedA_address0_local;
assign alignedA_ce0 = alignedA_ce0_local;
assign alignedA_d0 = alignedA_d0_local;
assign alignedA_we0 = alignedA_we0_local;
assign alignedB_address0 = alignedB_address0_local;
assign alignedB_ce0 = alignedB_ce0_local;
assign alignedB_d0 = alignedB_d0_local;
assign alignedB_we0 = alignedB_we0_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd26];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1891 = ((1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1895 = ((1'b1 == ap_CS_fsm_pp0_stage2) & (ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1900 = ((1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1904 = ((1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1910 = ((1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage6));
end
always @ (*) begin
    ap_condition_1914 = ((1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage6));
end
always @ (*) begin
    ap_condition_1921 = ((or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1925 = ((or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1933 = ((or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage10));
end
always @ (*) begin
    ap_condition_1937 = ((or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage10));
end
always @ (*) begin
    ap_condition_1946 = ((or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage12));
end
always @ (*) begin
    ap_condition_1950 = ((or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage12));
end
always @ (*) begin
    ap_condition_1960 = ((or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage14));
end
always @ (*) begin
    ap_condition_1964 = ((or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage14));
end
always @ (*) begin
    ap_condition_1975 = ((or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd60) & (1'b0 == ap_block_pp0_stage16));
end
always @ (*) begin
    ap_condition_1979 = ((or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (ptr_q0_local == 8'd92) & (1'b0 == ap_block_pp0_stage16));
end
always @ (*) begin
    ap_condition_1984 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1989 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage4) & (or_ln62_1_reg_1935 == 1'd1) & (1'b0 == ap_block_pp0_stage4));
end
always @ (*) begin
    ap_condition_1995 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (1'b0 == ap_block_pp0_stage6));
end
always @ (*) begin
    ap_condition_2002 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_2010 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (1'b0 == ap_block_pp0_stage10));
end
always @ (*) begin
    ap_condition_2019 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (1'b0 == ap_block_pp0_stage12));
end
always @ (*) begin
    ap_condition_2029 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (1'b0 == ap_block_pp0_stage14));
end
always @ (*) begin
    ap_condition_2040 = (~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_7_reg_2145 == 1'd1) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (1'b0 == ap_block_pp0_stage16));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_phi_reg_pp0_iter0_a_idx_25_reg_787 = 'bx;
assign ap_phi_reg_pp0_iter0_b_idx_25_reg_799 = 'bx;
always @ (*) begin
    ap_predicate_tran19to20_state18 = ((or_ln62_7_reg_2145 == 1'd0) & (or_ln62_6_reg_2112 == 1'd1) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran19to21_state18 = ((or_ln62_6_reg_2112 == 1'd0) & (or_ln62_5_reg_2079 == 1'd1) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran19to22_state18 = ((or_ln62_5_reg_2079 == 1'd0) & (or_ln62_4_reg_2039 == 1'd1) & (or_ln62_3_reg_2006 == 1'd1) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran19to23_state18 = ((or_ln62_4_reg_2039 == 1'd0) & (or_ln62_3_reg_2006 == 1'd1) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran19to24_state18 = ((or_ln62_3_reg_2006 == 1'd0) & (or_ln62_2_reg_1968 == 1'd1) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran19to25_state18 = ((or_ln62_2_reg_1968 == 1'd0) & (or_ln62_1_reg_1935 == 1'd1) & (or_ln62_reg_1897 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran19to26_state18 = ((or_ln62_1_reg_1935 == 1'd0) & (or_ln62_reg_1897 == 1'd1));
end
assign b_str_idx_6_out = a_str_idx_fu_104;
assign b_str_idx_fu_1828_p2 = (a_str_idx_0_0_fu_100 + 32'd8);
assign grp_fu_848_p2 = ($signed(a_idx_1_reg_1891) + $signed(32'd4294967295));
assign grp_fu_853_p2 = ($signed(b_idx_1_reg_1885) + $signed(32'd4294967295));
assign grp_fu_861_p2 = ($signed(a_idx_4_reg_607) + $signed(32'd4294967295));
assign grp_fu_867_p2 = ($signed(b_idx_4_reg_619) + $signed(32'd4294967295));
assign grp_fu_873_p2 = ($signed(a_idx_7_reg_631) + $signed(32'd4294967295));
assign grp_fu_879_p2 = ($signed(b_idx_7_reg_644) + $signed(32'd4294967295));
assign grp_fu_885_p2 = ($signed(a_idx_10_reg_657) + $signed(32'd4294967295));
assign grp_fu_891_p2 = ($signed(b_idx_10_reg_670) + $signed(32'd4294967295));
assign grp_fu_897_p2 = ($signed(a_idx_13_reg_683) + $signed(32'd4294967295));
assign grp_fu_903_p2 = ($signed(b_idx_13_reg_696) + $signed(32'd4294967295));
assign grp_fu_909_p2 = ($signed(a_idx_16_reg_709) + $signed(32'd4294967295));
assign grp_fu_915_p2 = ($signed(b_idx_16_reg_722) + $signed(32'd4294967295));
assign grp_fu_921_p2 = ($signed(a_idx_19_reg_735) + $signed(32'd4294967295));
assign grp_fu_927_p2 = ($signed(b_idx_19_reg_748) + $signed(32'd4294967295));
assign grp_fu_933_p2 = ($signed(a_idx_22_reg_761) + $signed(32'd4294967295));
assign grp_fu_939_p2 = ($signed(b_idx_22_reg_774) + $signed(32'd4294967295));
assign icmp_ln62_10_fu_1548_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_16_reg_709) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_11_fu_1554_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_16_reg_722) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_12_fu_1648_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_19_reg_735) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_13_fu_1654_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_19_reg_748) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_14_fu_1736_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_22_reg_761) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_15_fu_1742_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_22_reg_774) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_1_fu_1081_p2 = (($signed(b_idx_fu_108) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_2_fu_1174_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_4_reg_607) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_3_fu_1180_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_4_reg_619) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_4_fu_1262_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_7_reg_631) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_5_fu_1268_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_7_reg_644) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_6_fu_1361_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_10_reg_657) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_7_fu_1367_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_10_reg_670) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_8_fu_1449_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_13_reg_683) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_9_fu_1455_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_13_reg_696) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_1075_p2 = (($signed(a_idx_fu_112) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign or_ln4_fu_1241_p3 = {{tmp_s_reg_1930}, {1'd1}};
assign or_ln62_1_fu_1186_p2 = (icmp_ln62_3_fu_1180_p2 | icmp_ln62_2_fu_1174_p2);
assign or_ln62_2_fu_1274_p2 = (icmp_ln62_5_fu_1268_p2 | icmp_ln62_4_fu_1262_p2);
assign or_ln62_3_fu_1373_p2 = (icmp_ln62_7_fu_1367_p2 | icmp_ln62_6_fu_1361_p2);
assign or_ln62_4_fu_1461_p2 = (icmp_ln62_9_fu_1455_p2 | icmp_ln62_8_fu_1449_p2);
assign or_ln62_5_fu_1560_p2 = (icmp_ln62_11_fu_1554_p2 | icmp_ln62_10_fu_1548_p2);
assign or_ln62_6_fu_1660_p2 = (icmp_ln62_13_fu_1654_p2 | icmp_ln62_12_fu_1648_p2);
assign or_ln62_7_fu_1748_p2 = (icmp_ln62_15_fu_1742_p2 | icmp_ln62_14_fu_1736_p2);
assign or_ln62_fu_1087_p2 = (icmp_ln62_fu_1075_p2 | icmp_ln62_1_fu_1081_p2);
assign or_ln65_1_fu_1339_p3 = {{tmp_1_fu_1329_p4}, {2'd2}};
assign or_ln65_3_fu_1428_p3 = {{tmp_1_reg_2001}, {2'd3}};
assign or_ln65_5_fu_1526_p3 = {{tmp_2_fu_1516_p4}, {3'd4}};
assign or_ln65_7_fu_1623_p5 = {{{{tmp_2_reg_2072}, {1'd1}}, {tmp_fu_1615_p3}}, {1'd1}};
assign or_ln65_9_fu_1715_p3 = {{tmp_2_reg_2072}, {3'd6}};
assign or_ln65_s_fu_1803_p3 = {{tmp_2_reg_2072}, {3'd7}};
assign p_shl1_fu_1196_p3 = {{trunc_ln16_1_fu_1192_p1}, {7'd0}};
assign p_shl2_fu_1284_p3 = {{trunc_ln16_2_fu_1280_p1}, {7'd0}};
assign p_shl3_fu_1383_p3 = {{trunc_ln16_3_fu_1379_p1}, {7'd0}};
assign p_shl4_fu_1471_p3 = {{trunc_ln16_4_fu_1467_p1}, {7'd0}};
assign p_shl5_fu_1570_p3 = {{trunc_ln16_5_fu_1566_p1}, {7'd0}};
assign p_shl6_fu_1670_p3 = {{trunc_ln16_6_fu_1666_p1}, {7'd0}};
assign p_shl7_fu_1758_p3 = {{trunc_ln16_7_fu_1754_p1}, {7'd0}};
assign p_shl_fu_1105_p3 = {{trunc_ln16_fu_1101_p1}, {7'd0}};
assign ptr_address0 = ptr_address0_local;
assign ptr_ce0 = ptr_ce0_local;
assign ptr_q0_local = ptr_q0;
assign r_1_fu_1204_p2 = (p_shl1_fu_1196_p3 + trunc_ln17_1_fu_1170_p1);
assign r_2_fu_1292_p2 = (p_shl2_fu_1284_p3 + trunc_ln17_3_fu_1258_p1);
assign r_3_fu_1391_p2 = (p_shl3_fu_1383_p3 + trunc_ln17_5_fu_1357_p1);
assign r_4_fu_1479_p2 = (p_shl4_fu_1471_p3 + trunc_ln17_7_fu_1445_p1);
assign r_5_fu_1578_p2 = (p_shl5_fu_1570_p3 + trunc_ln17_9_fu_1544_p1);
assign r_6_fu_1678_p2 = (p_shl6_fu_1670_p3 + trunc_ln17_11_fu_1644_p1);
assign r_7_fu_1766_p2 = (p_shl7_fu_1758_p3 + trunc_ln17_13_fu_1732_p1);
assign r_fu_1113_p2 = (p_shl_fu_1105_p3 + trunc_ln18_1_fu_1097_p1);
assign tmp_1_fu_1329_p4 = {{a_str_idx_fu_104[7:2]}};
assign tmp_2_fu_1516_p4 = {{a_str_idx_fu_104[7:3]}};
assign tmp_fu_1615_p3 = a_str_idx_fu_104[32'd1];
assign trunc_ln16_1_fu_1192_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_619[7:0];
assign trunc_ln16_2_fu_1280_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_644[7:0];
assign trunc_ln16_3_fu_1379_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_670[7:0];
assign trunc_ln16_4_fu_1467_p1 = ap_phi_reg_pp0_iter0_b_idx_13_reg_696[7:0];
assign trunc_ln16_5_fu_1566_p1 = ap_phi_reg_pp0_iter0_b_idx_16_reg_722[7:0];
assign trunc_ln16_6_fu_1666_p1 = ap_phi_reg_pp0_iter0_b_idx_19_reg_748[7:0];
assign trunc_ln16_7_fu_1754_p1 = ap_phi_reg_pp0_iter0_b_idx_22_reg_774[7:0];
assign trunc_ln16_fu_1101_p1 = b_idx_fu_108[7:0];
assign trunc_ln17_10_fu_1640_p1 = ap_phi_reg_pp0_iter0_a_idx_19_reg_735[14:0];
assign trunc_ln17_11_fu_1644_p1 = ap_phi_reg_pp0_iter0_b_idx_19_reg_748[14:0];
assign trunc_ln17_12_fu_1728_p1 = ap_phi_reg_pp0_iter0_a_idx_22_reg_761[14:0];
assign trunc_ln17_13_fu_1732_p1 = ap_phi_reg_pp0_iter0_b_idx_22_reg_774[14:0];
assign trunc_ln17_1_fu_1170_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_619[14:0];
assign trunc_ln17_2_fu_1254_p1 = ap_phi_reg_pp0_iter0_a_idx_7_reg_631[14:0];
assign trunc_ln17_3_fu_1258_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_644[14:0];
assign trunc_ln17_4_fu_1353_p1 = ap_phi_reg_pp0_iter0_a_idx_10_reg_657[14:0];
assign trunc_ln17_5_fu_1357_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_670[14:0];
assign trunc_ln17_6_fu_1441_p1 = ap_phi_reg_pp0_iter0_a_idx_13_reg_683[14:0];
assign trunc_ln17_7_fu_1445_p1 = ap_phi_reg_pp0_iter0_b_idx_13_reg_696[14:0];
assign trunc_ln17_8_fu_1540_p1 = ap_phi_reg_pp0_iter0_a_idx_16_reg_709[14:0];
assign trunc_ln17_9_fu_1544_p1 = ap_phi_reg_pp0_iter0_b_idx_16_reg_722[14:0];
assign trunc_ln17_fu_1166_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_607[14:0];
assign trunc_ln18_1_fu_1097_p1 = b_idx_fu_108[14:0];
assign trunc_ln18_fu_1093_p1 = a_idx_fu_112[14:0];
assign zext_ln18_fu_1150_p1 = a_str_idx_fu_104;
assign zext_ln64_1_fu_1216_p1 = add_ln64_1_fu_1210_p2;
assign zext_ln64_2_fu_1304_p1 = add_ln64_2_fu_1298_p2;
assign zext_ln64_3_fu_1403_p1 = add_ln64_3_fu_1397_p2;
assign zext_ln64_4_fu_1491_p1 = add_ln64_4_fu_1485_p2;
assign zext_ln64_5_fu_1590_p1 = add_ln64_5_fu_1584_p2;
assign zext_ln64_6_fu_1690_p1 = add_ln64_6_fu_1684_p2;
assign zext_ln64_7_fu_1778_p1 = add_ln64_7_fu_1772_p2;
assign zext_ln64_fu_1125_p1 = add_ln64_fu_1119_p2;
assign zext_ln65_1_fu_1226_p1 = grp_fu_861_p2;
assign zext_ln65_2_fu_1314_p1 = grp_fu_873_p2;
assign zext_ln65_3_fu_1413_p1 = grp_fu_885_p2;
assign zext_ln65_4_fu_1501_p1 = grp_fu_897_p2;
assign zext_ln65_5_fu_1600_p1 = grp_fu_909_p2;
assign zext_ln65_6_fu_1700_p1 = grp_fu_921_p2;
assign zext_ln65_7_fu_1788_p1 = grp_fu_933_p2;
assign zext_ln65_fu_1135_p1 = grp_fu_848_p2;
assign zext_ln66_1_fu_1231_p1 = grp_fu_867_p2;
assign zext_ln66_2_fu_1319_p1 = grp_fu_879_p2;
assign zext_ln66_3_fu_1418_p1 = grp_fu_891_p2;
assign zext_ln66_4_fu_1506_p1 = grp_fu_903_p2;
assign zext_ln66_5_fu_1605_p1 = grp_fu_915_p2;
assign zext_ln66_6_fu_1705_p1 = grp_fu_927_p2;
assign zext_ln66_7_fu_1793_p1 = grp_fu_939_p2;
assign zext_ln66_fu_1140_p1 = grp_fu_853_p2;
assign zext_ln71_10_fu_1722_p1 = or_ln65_9_fu_1715_p3;
assign zext_ln71_11_fu_1595_p1 = grp_fu_909_p2;
assign zext_ln71_12_fu_1810_p1 = or_ln65_s_fu_1803_p3;
assign zext_ln71_13_fu_1695_p1 = grp_fu_921_p2;
assign zext_ln71_14_fu_1783_p1 = grp_fu_933_p2;
assign zext_ln71_1_fu_1130_p1 = grp_fu_848_p2;
assign zext_ln71_2_fu_1347_p1 = or_ln65_1_fu_1339_p3;
assign zext_ln71_3_fu_1221_p1 = grp_fu_861_p2;
assign zext_ln71_4_fu_1435_p1 = or_ln65_3_fu_1428_p3;
assign zext_ln71_5_fu_1309_p1 = grp_fu_873_p2;
assign zext_ln71_6_fu_1534_p1 = or_ln65_5_fu_1526_p3;
assign zext_ln71_7_fu_1408_p1 = grp_fu_885_p2;
assign zext_ln71_8_fu_1634_p1 = or_ln65_7_fu_1623_p5;
assign zext_ln71_9_fu_1496_p1 = grp_fu_897_p2;
assign zext_ln71_fu_1248_p1 = or_ln4_fu_1241_p3;
assign zext_ln77_1_fu_1236_p1 = grp_fu_867_p2;
assign zext_ln77_2_fu_1324_p1 = grp_fu_879_p2;
assign zext_ln77_3_fu_1423_p1 = grp_fu_891_p2;
assign zext_ln77_4_fu_1511_p1 = grp_fu_903_p2;
assign zext_ln77_5_fu_1610_p1 = grp_fu_915_p2;
assign zext_ln77_6_fu_1710_p1 = grp_fu_927_p2;
assign zext_ln77_7_fu_1798_p1 = grp_fu_939_p2;
assign zext_ln77_fu_1145_p1 = grp_fu_853_p2;
always @ (posedge ap_clk) begin
    ap_exit_tran_regpp0[7:3] <= 5'b00000;
end
endmodule 