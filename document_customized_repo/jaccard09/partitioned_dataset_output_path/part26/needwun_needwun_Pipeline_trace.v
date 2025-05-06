
module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alignedB_3_address0,alignedB_3_ce0,alignedB_3_we0,alignedB_3_d0,alignedB_2_address0,alignedB_2_ce0,alignedB_2_we0,alignedB_2_d0,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedA_3_address0,alignedA_3_ce0,alignedA_3_we0,alignedA_3_d0,alignedA_2_address0,alignedA_2_ce0,alignedA_2_we0,alignedA_2_d0,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,SEQB_2_address0,SEQB_2_ce0,SEQB_2_q0,SEQB_3_address0,SEQB_3_ce0,SEQB_3_q0,ptr_0_address0,ptr_0_ce0,ptr_0_q0,ptr_1_address0,ptr_1_ce0,ptr_1_q0,ptr_2_address0,ptr_2_ce0,ptr_2_q0,ptr_3_address0,ptr_3_ce0,ptr_3_q0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,SEQA_2_address0,SEQA_2_ce0,SEQA_2_q0,SEQA_3_address0,SEQA_3_ce0,SEQA_3_q0,b_str_idx_6_out,b_str_idx_6_out_ap_vld,a_str_idx_0_0_out,a_str_idx_0_0_out_ap_vld,ap_return);  
parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_pp0_stage0 = 18'd2;
parameter    ap_ST_fsm_pp0_stage1 = 18'd4;
parameter    ap_ST_fsm_pp0_stage2 = 18'd8;
parameter    ap_ST_fsm_pp0_stage3 = 18'd16;
parameter    ap_ST_fsm_pp0_stage4 = 18'd32;
parameter    ap_ST_fsm_pp0_stage5 = 18'd64;
parameter    ap_ST_fsm_pp0_stage6 = 18'd128;
parameter    ap_ST_fsm_pp0_stage7 = 18'd256;
parameter    ap_ST_fsm_pp0_stage8 = 18'd512;
parameter    ap_ST_fsm_pp0_stage9 = 18'd1024;
parameter    ap_ST_fsm_pp0_stage10 = 18'd2048;
parameter    ap_ST_fsm_pp0_stage11 = 18'd4096;
parameter    ap_ST_fsm_state15 = 18'd8192;
parameter    ap_ST_fsm_state16 = 18'd16384;
parameter    ap_ST_fsm_state17 = 18'd32768;
parameter    ap_ST_fsm_state18 = 18'd65536;
parameter    ap_ST_fsm_state19 = 18'd131072;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] alignedB_3_address0;
output   alignedB_3_ce0;
output   alignedB_3_we0;
output  [7:0] alignedB_3_d0;
output  [5:0] alignedB_2_address0;
output   alignedB_2_ce0;
output   alignedB_2_we0;
output  [7:0] alignedB_2_d0;
output  [5:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [5:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [5:0] alignedA_3_address0;
output   alignedA_3_ce0;
output   alignedA_3_we0;
output  [7:0] alignedA_3_d0;
output  [5:0] alignedA_2_address0;
output   alignedA_2_ce0;
output   alignedA_2_we0;
output  [7:0] alignedA_2_d0;
output  [5:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [5:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [4:0] SEQB_0_address0;
output   SEQB_0_ce0;
input  [7:0] SEQB_0_q0;
output  [4:0] SEQB_1_address0;
output   SEQB_1_ce0;
input  [7:0] SEQB_1_q0;
output  [4:0] SEQB_2_address0;
output   SEQB_2_ce0;
input  [7:0] SEQB_2_q0;
output  [4:0] SEQB_3_address0;
output   SEQB_3_ce0;
input  [7:0] SEQB_3_q0;
output  [12:0] ptr_0_address0;
output   ptr_0_ce0;
input  [7:0] ptr_0_q0;
output  [12:0] ptr_1_address0;
output   ptr_1_ce0;
input  [7:0] ptr_1_q0;
output  [12:0] ptr_2_address0;
output   ptr_2_ce0;
input  [7:0] ptr_2_q0;
output  [12:0] ptr_3_address0;
output   ptr_3_ce0;
input  [7:0] ptr_3_q0;
output  [4:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
output  [4:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
output  [4:0] SEQA_2_address0;
output   SEQA_2_ce0;
input  [7:0] SEQA_2_q0;
output  [4:0] SEQA_3_address0;
output   SEQA_3_ce0;
input  [7:0] SEQA_3_q0;
output  [31:0] b_str_idx_6_out;
output   b_str_idx_6_out_ap_vld;
output  [31:0] a_str_idx_0_0_out;
output   a_str_idx_0_0_out_ap_vld;
output  [1:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg b_str_idx_6_out_ap_vld;
reg a_str_idx_0_0_out_ap_vld;
reg[1:0] ap_return;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] a_idx_4_reg_948;
reg   [31:0] b_idx_4_reg_960;
reg   [31:0] a_idx_7_reg_972;
reg   [31:0] b_idx_7_reg_985;
reg   [31:0] a_idx_10_reg_998;
reg   [31:0] b_idx_10_reg_1011;
wire   [31:0] grp_fu_1069_p2;
reg   [31:0] reg_1391;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] or_ln62_reg_2105;
wire   [7:0] tmp_1_fu_1537_p11;
wire   [31:0] grp_fu_1084_p2;
reg   [31:0] reg_1397;
wire   [31:0] grp_fu_1147_p2;
reg   [31:0] reg_1403;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [0:0] or_ln62_1_reg_2248;
wire   [7:0] tmp_s_fu_1703_p11;
wire   [31:0] grp_fu_1163_p2;
reg   [31:0] reg_1409;
wire   [31:0] grp_fu_1227_p2;
reg   [31:0] reg_1415;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [0:0] or_ln62_2_reg_2371;
wire   [7:0] tmp_10_fu_1838_p11;
wire   [31:0] grp_fu_1243_p2;
reg   [31:0] reg_1421;
wire   [31:0] grp_fu_1307_p2;
reg   [31:0] reg_1427;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [0:0] or_ln62_3_reg_2494;
wire   [7:0] tmp_15_fu_1976_p11;
wire   [31:0] grp_fu_1323_p2;
reg   [31:0] reg_1433;
reg   [31:0] b_idx_1_reg_2091;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_2098;
wire   [0:0] or_ln62_fu_1477_p2;
wire   [1:0] trunc_ln64_fu_1515_p1;
reg   [1:0] trunc_ln64_reg_2109;
reg   [7:0] tmp_1_reg_2134;
reg   [63:0] b_str_idx_1_reg_2218;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] trunc_ln18_fu_1595_p1;
reg   [31:0] trunc_ln18_reg_2223;
wire   [63:0] zext_ln18_fu_1609_p1;
reg   [63:0] zext_ln18_reg_2228;
wire   [1:0] trunc_ln17_fu_1623_p1;
reg   [1:0] trunc_ln17_reg_2238;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [1:0] trunc_ln17_1_fu_1627_p1;
reg   [1:0] trunc_ln17_1_reg_2243;
wire   [0:0] or_ln62_1_fu_1651_p2;
wire   [1:0] trunc_ln64_1_fu_1681_p1;
reg   [1:0] trunc_ln64_1_reg_2252;
reg   [7:0] tmp_s_reg_2277;
wire   [1:0] trunc_ln17_4_fu_1758_p1;
reg   [1:0] trunc_ln17_4_reg_2361;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [1:0] trunc_ln17_5_fu_1762_p1;
reg   [1:0] trunc_ln17_5_reg_2366;
wire   [0:0] or_ln62_2_fu_1786_p2;
wire   [1:0] trunc_ln64_2_fu_1816_p1;
reg   [1:0] trunc_ln64_2_reg_2375;
reg   [7:0] tmp_10_reg_2400;
wire   [1:0] trunc_ln17_8_fu_1893_p1;
reg   [1:0] trunc_ln17_8_reg_2484;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [1:0] trunc_ln17_9_fu_1897_p1;
reg   [1:0] trunc_ln17_9_reg_2489;
wire   [0:0] or_ln62_3_fu_1921_p2;
wire   [1:0] trunc_ln64_3_fu_1951_p1;
reg   [1:0] trunc_ln64_3_reg_2498;
reg   [5:0] alignedA_3_addr_reg_2523;
reg   [5:0] alignedB_3_addr_reg_2528;
reg   [7:0] tmp_15_reg_2533;
wire    ap_block_pp0_stage10_subdone;
reg    ap_predicate_tran12to15_state12;
reg    ap_predicate_tran12to16_state12;
reg    ap_predicate_tran12to17_state12;
reg    ap_condition_pp0_exit_iter0_state12;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage11_subdone;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_4_reg_948;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_4_reg_960;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_7_reg_972;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_7_reg_985;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_10_reg_998;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_10_reg_1011;
reg   [31:0] ap_phi_mux_a_idx_13_phi_fu_1027_p6;
wire   [31:0] ap_phi_reg_pp0_iter1_a_idx_13_reg_1024;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] ap_phi_mux_b_idx_13_phi_fu_1039_p6;
wire   [31:0] ap_phi_reg_pp0_iter1_b_idx_13_reg_1036;
reg   [1:0] UnifiedRetVal_reg_1048;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire   [63:0] zext_ln64_fu_1529_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln71_fu_1560_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln65_fu_1568_p1;
wire   [63:0] zext_ln66_fu_1576_p1;
wire   [63:0] zext_ln77_fu_1584_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln64_1_fu_1695_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln71_1_fu_1726_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln65_1_fu_1734_p1;
wire   [63:0] zext_ln66_1_fu_1742_p1;
wire   [63:0] zext_ln77_1_fu_1750_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln64_2_fu_1830_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln71_2_fu_1861_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln65_2_fu_1869_p1;
wire   [63:0] zext_ln66_2_fu_1877_p1;
wire   [63:0] zext_ln77_2_fu_1885_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln64_3_fu_1965_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln71_3_fu_2010_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln65_3_fu_2018_p1;
wire   [63:0] zext_ln66_3_fu_2026_p1;
wire   [63:0] zext_ln77_3_fu_2034_p1;
reg   [31:0] a_str_idx_0_0_fu_108;
wire   [31:0] b_str_idx_fu_2004_p2;
reg   [63:0] a_str_idx_fu_112;
wire   [63:0] add_ln65_fu_1999_p2;
reg   [31:0] b_idx_fu_116;
reg   [31:0] a_idx_fu_120;
reg    ptr_0_ce0_local;
reg   [12:0] ptr_0_address0_local;
reg    ptr_1_ce0_local;
reg   [12:0] ptr_1_address0_local;
reg    ptr_2_ce0_local;
reg   [12:0] ptr_2_address0_local;
reg    ptr_3_ce0_local;
reg   [12:0] ptr_3_address0_local;
reg    SEQA_0_ce0_local;
reg   [4:0] SEQA_0_address0_local;
reg    SEQA_1_ce0_local;
reg   [4:0] SEQA_1_address0_local;
reg    SEQA_2_ce0_local;
reg   [4:0] SEQA_2_address0_local;
reg    SEQA_3_ce0_local;
reg   [4:0] SEQA_3_address0_local;
reg    SEQB_0_ce0_local;
reg   [4:0] SEQB_0_address0_local;
reg    SEQB_1_ce0_local;
reg   [4:0] SEQB_1_address0_local;
reg    SEQB_2_ce0_local;
reg   [4:0] SEQB_2_address0_local;
reg    SEQB_3_ce0_local;
reg   [4:0] SEQB_3_address0_local;
reg    alignedA_0_we0_local;
reg   [7:0] alignedA_0_d0_local;
wire   [7:0] grp_fu_1099_p11;
reg    alignedA_0_ce0_local;
reg    alignedB_0_we0_local;
reg   [7:0] alignedB_0_d0_local;
reg    alignedB_0_ce0_local;
wire   [7:0] grp_fu_1123_p11;
reg    alignedA_1_we0_local;
reg   [7:0] alignedA_1_d0_local;
wire   [7:0] grp_fu_1179_p11;
reg    alignedA_1_ce0_local;
reg    alignedB_1_we0_local;
reg   [7:0] alignedB_1_d0_local;
reg    alignedB_1_ce0_local;
wire   [7:0] grp_fu_1203_p11;
reg    alignedA_2_we0_local;
reg   [7:0] alignedA_2_d0_local;
wire   [7:0] grp_fu_1259_p11;
reg    alignedA_2_ce0_local;
reg    alignedB_2_we0_local;
reg   [7:0] alignedB_2_d0_local;
reg    alignedB_2_ce0_local;
wire   [7:0] grp_fu_1283_p11;
reg    alignedA_3_we0_local;
reg   [7:0] alignedA_3_d0_local;
wire   [7:0] grp_fu_1339_p11;
wire    ap_block_pp0_stage0;
reg    alignedA_3_ce0_local;
reg    alignedB_3_we0_local;
reg   [7:0] alignedB_3_d0_local;
reg    alignedB_3_ce0_local;
wire   [7:0] grp_fu_1363_p11;
wire   [7:0] grp_fu_1099_p9;
wire   [1:0] grp_fu_1099_p10;
wire   [7:0] grp_fu_1123_p9;
wire   [1:0] grp_fu_1123_p10;
wire   [7:0] grp_fu_1179_p9;
wire   [7:0] grp_fu_1203_p9;
wire   [7:0] grp_fu_1259_p9;
wire   [7:0] grp_fu_1283_p9;
wire   [7:0] grp_fu_1339_p9;
wire   [7:0] grp_fu_1363_p9;
wire   [0:0] icmp_ln62_fu_1465_p2;
wire   [0:0] icmp_ln62_1_fu_1471_p2;
wire   [7:0] trunc_ln16_fu_1491_p1;
wire   [14:0] p_shl_fu_1495_p3;
wire   [14:0] trunc_ln18_4_fu_1487_p1;
wire   [14:0] r_3_fu_1503_p2;
wire   [14:0] trunc_ln18_3_fu_1483_p1;
wire   [14:0] add_ln64_fu_1509_p2;
wire   [12:0] lshr_ln8_fu_1519_p4;
wire   [7:0] tmp_1_fu_1537_p9;
wire   [4:0] grp_fu_1074_p4;
wire   [4:0] grp_fu_1089_p4;
wire   [5:0] lshr_ln7_fu_1599_p4;
wire   [0:0] icmp_ln62_2_fu_1639_p2;
wire   [0:0] icmp_ln62_3_fu_1645_p2;
wire   [7:0] trunc_ln16_1_fu_1657_p1;
wire   [14:0] trunc_ln17_2_fu_1631_p1;
wire   [14:0] trunc_ln17_3_fu_1635_p1;
wire   [14:0] r_2_fu_1669_p2;
wire   [14:0] p_shl1_fu_1661_p3;
wire   [14:0] add_ln64_1_fu_1675_p2;
wire   [12:0] lshr_ln64_1_fu_1685_p4;
wire   [7:0] tmp_s_fu_1703_p9;
wire   [4:0] grp_fu_1153_p4;
wire   [4:0] grp_fu_1169_p4;
wire   [0:0] icmp_ln62_4_fu_1774_p2;
wire   [0:0] icmp_ln62_5_fu_1780_p2;
wire   [7:0] trunc_ln16_2_fu_1792_p1;
wire   [14:0] trunc_ln17_6_fu_1766_p1;
wire   [14:0] trunc_ln17_7_fu_1770_p1;
wire   [14:0] r_1_fu_1804_p2;
wire   [14:0] p_shl2_fu_1796_p3;
wire   [14:0] add_ln64_2_fu_1810_p2;
wire   [12:0] lshr_ln64_2_fu_1820_p4;
wire   [7:0] tmp_10_fu_1838_p9;
wire   [4:0] grp_fu_1233_p4;
wire   [4:0] grp_fu_1249_p4;
wire   [0:0] icmp_ln62_6_fu_1909_p2;
wire   [0:0] icmp_ln62_7_fu_1915_p2;
wire   [7:0] trunc_ln16_3_fu_1927_p1;
wire   [14:0] trunc_ln17_10_fu_1901_p1;
wire   [14:0] trunc_ln17_11_fu_1905_p1;
wire   [14:0] r_fu_1939_p2;
wire   [14:0] p_shl3_fu_1931_p3;
wire   [14:0] add_ln64_3_fu_1945_p2;
wire   [12:0] lshr_ln64_3_fu_1955_p4;
wire   [7:0] tmp_15_fu_1976_p9;
wire   [4:0] grp_fu_1313_p4;
wire   [4:0] grp_fu_1329_p4;
reg   [1:0] ap_return_preg;
wire    ap_CS_fsm_state19;
reg   [17:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_1716;
reg    ap_condition_1720;
reg    ap_condition_1726;
reg    ap_condition_1732;
reg    ap_condition_1739;
reg    ap_condition_1746;
reg    ap_condition_1754;
reg    ap_condition_1762;
reg    ap_condition_1768;
reg    ap_condition_1774;
reg    ap_condition_1781;
reg    ap_condition_1788;
reg    ap_condition_1796;
reg    ap_condition_1804;
reg    ap_condition_1810;
reg    ap_condition_1816;
reg    ap_condition_1823;
reg    ap_condition_1830;
reg    ap_condition_1838;
reg    ap_condition_1846;
reg    ap_condition_1852;
reg    ap_condition_1858;
reg    ap_condition_1865;
reg    ap_condition_1872;
reg    ap_condition_1880;
reg    ap_condition_1888;
reg    ap_condition_1893;
reg    ap_condition_1899;
reg    ap_condition_1906;
reg    ap_condition_1913;
reg    ap_condition_1921;
reg    ap_condition_1929;
reg    ap_condition_1938;
reg    ap_condition_1944;
reg    ap_condition_1950;
reg    ap_condition_1957;
reg    ap_condition_1964;
reg    ap_condition_1972;
reg    ap_condition_1980;
reg    ap_condition_1986;
reg    ap_condition_1992;
reg    ap_condition_1999;
reg    ap_condition_2006;
reg    ap_condition_2014;
reg    ap_condition_2022;
reg    ap_condition_2028;
reg    ap_condition_2034;
reg    ap_condition_2041;
reg    ap_condition_2048;
reg    ap_condition_2056;
reg    ap_condition_2064;
wire   [1:0] grp_fu_1099_p1;
wire  signed [1:0] grp_fu_1099_p3;
wire  signed [1:0] grp_fu_1099_p5;
wire   [1:0] grp_fu_1099_p7;
wire   [1:0] grp_fu_1123_p1;
wire  signed [1:0] grp_fu_1123_p3;
wire  signed [1:0] grp_fu_1123_p5;
wire   [1:0] grp_fu_1123_p7;
wire   [1:0] grp_fu_1179_p1;
wire  signed [1:0] grp_fu_1179_p3;
wire  signed [1:0] grp_fu_1179_p5;
wire   [1:0] grp_fu_1179_p7;
wire   [1:0] grp_fu_1203_p1;
wire  signed [1:0] grp_fu_1203_p3;
wire  signed [1:0] grp_fu_1203_p5;
wire   [1:0] grp_fu_1203_p7;
wire   [1:0] grp_fu_1259_p1;
wire  signed [1:0] grp_fu_1259_p3;
wire  signed [1:0] grp_fu_1259_p5;
wire   [1:0] grp_fu_1259_p7;
wire   [1:0] grp_fu_1283_p1;
wire  signed [1:0] grp_fu_1283_p3;
wire  signed [1:0] grp_fu_1283_p5;
wire   [1:0] grp_fu_1283_p7;
wire   [1:0] grp_fu_1339_p1;
wire  signed [1:0] grp_fu_1339_p3;
wire  signed [1:0] grp_fu_1339_p5;
wire   [1:0] grp_fu_1339_p7;
wire   [1:0] grp_fu_1363_p1;
wire  signed [1:0] grp_fu_1363_p3;
wire  signed [1:0] grp_fu_1363_p5;
wire   [1:0] grp_fu_1363_p7;
wire   [1:0] tmp_1_fu_1537_p1;
wire   [1:0] tmp_1_fu_1537_p3;
wire  signed [1:0] tmp_1_fu_1537_p5;
wire  signed [1:0] tmp_1_fu_1537_p7;
wire   [1:0] tmp_s_fu_1703_p1;
wire   [1:0] tmp_s_fu_1703_p3;
wire  signed [1:0] tmp_s_fu_1703_p5;
wire  signed [1:0] tmp_s_fu_1703_p7;
wire   [1:0] tmp_10_fu_1838_p1;
wire   [1:0] tmp_10_fu_1838_p3;
wire  signed [1:0] tmp_10_fu_1838_p5;
wire  signed [1:0] tmp_10_fu_1838_p7;
wire   [1:0] tmp_15_fu_1976_p1;
wire   [1:0] tmp_15_fu_1976_p3;
wire  signed [1:0] tmp_15_fu_1976_p5;
wire  signed [1:0] tmp_15_fu_1976_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_str_idx_0_0_fu_108 = 32'd0;
#0 a_str_idx_fu_112 = 64'd0;
#0 b_idx_fu_116 = 32'd0;
#0 a_idx_fu_120 = 32'd0;
#0 ap_return_preg = 2'd0;
end
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U37(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.def(grp_fu_1099_p9),.sel(grp_fu_1099_p10),.dout(grp_fu_1099_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U38(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.def(grp_fu_1123_p9),.sel(grp_fu_1123_p10),.dout(grp_fu_1123_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U39(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.def(grp_fu_1179_p9),.sel(trunc_ln17_reg_2238),.dout(grp_fu_1179_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U40(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.def(grp_fu_1203_p9),.sel(trunc_ln17_1_reg_2243),.dout(grp_fu_1203_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U41(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.def(grp_fu_1259_p9),.sel(trunc_ln17_4_reg_2361),.dout(grp_fu_1259_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U42(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.def(grp_fu_1283_p9),.sel(trunc_ln17_5_reg_2366),.dout(grp_fu_1283_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U43(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.def(grp_fu_1339_p9),.sel(trunc_ln17_8_reg_2484),.dout(grp_fu_1339_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U44(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.def(grp_fu_1363_p9),.sel(trunc_ln17_9_reg_2489),.dout(grp_fu_1363_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U45(.din0(ptr_0_q0),.din1(ptr_1_q0),.din2(ptr_2_q0),.din3(ptr_3_q0),.def(tmp_1_fu_1537_p9),.sel(trunc_ln64_reg_2109),.dout(tmp_1_fu_1537_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U46(.din0(ptr_0_q0),.din1(ptr_1_q0),.din2(ptr_2_q0),.din3(ptr_3_q0),.def(tmp_s_fu_1703_p9),.sel(trunc_ln64_1_reg_2252),.dout(tmp_s_fu_1703_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U47(.din0(ptr_0_q0),.din1(ptr_1_q0),.din2(ptr_2_q0),.din3(ptr_3_q0),.def(tmp_10_fu_1838_p9),.sel(trunc_ln64_2_reg_2375),.dout(tmp_10_fu_1838_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U48(.din0(ptr_0_q0),.din1(ptr_1_q0),.din2(ptr_2_q0),.din3(ptr_3_q0),.def(tmp_15_fu_1976_p9),.sel(trunc_ln64_3_reg_2498),.dout(tmp_15_fu_1976_p11));
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
        if (((1'b1 == ap_condition_pp0_exit_iter0_state12) & (1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_subdone))) begin
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
        if ((((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 2'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state19)) begin
            ap_return_preg <= UnifiedRetVal_reg_1048;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        UnifiedRetVal_reg_1048 <= 2'd3;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        UnifiedRetVal_reg_1048 <= 2'd2;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        UnifiedRetVal_reg_1048 <= 2'd1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        UnifiedRetVal_reg_1048 <= 2'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_idx_fu_120 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        a_idx_fu_120 <= ap_phi_mux_a_idx_13_phi_fu_1027_p6;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_str_idx_0_0_fu_108 <= 32'd0;
    end else if (((or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_str_idx_0_0_fu_108 <= b_str_idx_fu_2004_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_str_idx_fu_112 <= 64'd0;
    end else if (((or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_str_idx_fu_112 <= add_ln65_fu_1999_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(tmp_10_reg_2400 == 8'd60) & ~(tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_10_reg_998 <= a_idx_7_reg_972;
    end else if ((((tmp_10_reg_2400 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_10_reg_998 <= reg_1415;
    end
end
always @ (posedge ap_clk) begin
    if ((~(tmp_1_reg_2134 == 8'd60) & ~(tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_948 <= a_idx_1_reg_2098;
    end else if ((((tmp_1_reg_2134 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_948 <= reg_1391;
    end
end
always @ (posedge ap_clk) begin
    if ((~(tmp_s_reg_2277 == 8'd60) & ~(tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_7_reg_972 <= a_idx_4_reg_948;
    end else if ((((tmp_s_reg_2277 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_7_reg_972 <= reg_1403;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_10_reg_2400 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_10_reg_1011 <= b_idx_7_reg_985;
    end else if (((~(tmp_10_reg_2400 == 8'd60) & ~(tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_10_reg_1011 <= reg_1421;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_1_reg_2134 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_960 <= b_idx_1_reg_2091;
    end else if (((~(tmp_1_reg_2134 == 8'd60) & ~(tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_960 <= reg_1397;
    end
end
always @ (posedge ap_clk) begin
    if (((tmp_s_reg_2277 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_7_reg_985 <= b_idx_4_reg_960;
    end else if (((~(tmp_s_reg_2277 == 8'd60) & ~(tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_7_reg_985 <= reg_1409;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        b_idx_fu_116 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        b_idx_fu_116 <= ap_phi_mux_b_idx_13_phi_fu_1039_p6;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_10_reg_998 <= ap_phi_reg_pp0_iter0_a_idx_10_reg_998;
        b_idx_10_reg_1011 <= ap_phi_reg_pp0_iter0_b_idx_10_reg_1011;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        a_idx_1_reg_2098 <= a_idx_fu_120;
        b_idx_1_reg_2091 <= b_idx_fu_116;
        or_ln62_reg_2105 <= or_ln62_fu_1477_p2;
        trunc_ln64_reg_2109 <= trunc_ln64_fu_1515_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_4_reg_948 <= ap_phi_reg_pp0_iter0_a_idx_4_reg_948;
        b_idx_4_reg_960 <= ap_phi_reg_pp0_iter0_b_idx_4_reg_960;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_7_reg_972 <= ap_phi_reg_pp0_iter0_a_idx_7_reg_972;
        b_idx_7_reg_985 <= ap_phi_reg_pp0_iter0_b_idx_7_reg_985;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001))) begin
        alignedA_3_addr_reg_2523 <= zext_ln18_reg_2228;
        alignedB_3_addr_reg_2528 <= zext_ln18_reg_2228;
        or_ln62_3_reg_2494 <= or_ln62_3_fu_1921_p2;
        trunc_ln17_8_reg_2484 <= trunc_ln17_8_fu_1893_p1;
        trunc_ln17_9_reg_2489 <= trunc_ln17_9_fu_1897_p1;
        trunc_ln64_3_reg_2498 <= trunc_ln64_3_fu_1951_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        b_str_idx_1_reg_2218 <= a_str_idx_fu_112;
        zext_ln18_reg_2228[5 : 0] <= zext_ln18_fu_1609_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        or_ln62_1_reg_2248 <= or_ln62_1_fu_1651_p2;
        trunc_ln17_1_reg_2243 <= trunc_ln17_1_fu_1627_p1;
        trunc_ln17_reg_2238 <= trunc_ln17_fu_1623_p1;
        trunc_ln64_1_reg_2252 <= trunc_ln64_1_fu_1681_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        or_ln62_2_reg_2371 <= or_ln62_2_fu_1786_p2;
        trunc_ln17_4_reg_2361 <= trunc_ln17_4_fu_1758_p1;
        trunc_ln17_5_reg_2366 <= trunc_ln17_5_fu_1762_p1;
        trunc_ln64_2_reg_2375 <= trunc_ln64_2_fu_1816_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((tmp_1_fu_1537_p11 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1391 <= grp_fu_1069_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(tmp_1_fu_1537_p11 == 8'd92) & ~(tmp_1_fu_1537_p11 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1397 <= grp_fu_1084_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_fu_1703_p11 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1403 <= grp_fu_1147_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(tmp_s_fu_1703_p11 == 8'd92) & ~(tmp_s_fu_1703_p11 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1409 <= grp_fu_1163_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_fu_1838_p11 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1415 <= grp_fu_1227_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(tmp_10_fu_1838_p11 == 8'd92) & ~(tmp_10_fu_1838_p11 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1421 <= grp_fu_1243_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_15_fu_1976_p11 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1427 <= grp_fu_1307_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(tmp_15_fu_1976_p11 == 8'd92) & ~(tmp_15_fu_1976_p11 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1433 <= grp_fu_1323_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        tmp_10_reg_2400 <= tmp_10_fu_1838_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        tmp_15_reg_2533 <= tmp_15_fu_1976_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        tmp_1_reg_2134 <= tmp_1_fu_1537_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        tmp_s_reg_2277 <= tmp_s_fu_1703_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        trunc_ln18_reg_2223 <= trunc_ln18_fu_1595_p1;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2105 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1762)) begin
            SEQA_0_address0_local = zext_ln65_3_fu_2018_p1;
        end else if ((1'b1 == ap_condition_1754)) begin
            SEQA_0_address0_local = zext_ln71_3_fu_2010_p1;
        end else if ((1'b1 == ap_condition_1746)) begin
            SEQA_0_address0_local = zext_ln65_2_fu_1869_p1;
        end else if ((1'b1 == ap_condition_1739)) begin
            SEQA_0_address0_local = zext_ln71_2_fu_1861_p1;
        end else if ((1'b1 == ap_condition_1732)) begin
            SEQA_0_address0_local = zext_ln65_1_fu_1734_p1;
        end else if ((1'b1 == ap_condition_1726)) begin
            SEQA_0_address0_local = zext_ln71_1_fu_1726_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQA_0_address0_local = zext_ln65_fu_1568_p1;
        end else if ((1'b1 == ap_condition_1716)) begin
            SEQA_0_address0_local = zext_ln71_fu_1560_p1;
        end else begin
            SEQA_0_address0_local = 'bx;
        end
    end else begin
        SEQA_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln17_8_reg_2484 == 2'd1) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_8_reg_2484 == 2'd1) & (tmp_15_fu_1976_p11 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_2361 == 2'd1) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_2361 == 2'd1) & (tmp_10_fu_1838_p11 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1== ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_2238 == 2'd1) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_2238 == 2'd1) & (tmp_s_fu_1703_p11 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2105 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1804)) begin
            SEQA_1_address0_local = zext_ln65_3_fu_2018_p1;
        end else if ((1'b1 == ap_condition_1796)) begin
            SEQA_1_address0_local = zext_ln71_3_fu_2010_p1;
        end else if ((1'b1 == ap_condition_1788)) begin
            SEQA_1_address0_local = zext_ln65_2_fu_1869_p1;
        end else if ((1'b1 == ap_condition_1781)) begin
            SEQA_1_address0_local = zext_ln71_2_fu_1861_p1;
        end else if ((1'b1 == ap_condition_1774)) begin
            SEQA_1_address0_local = zext_ln65_1_fu_1734_p1;
        end else if ((1'b1 == ap_condition_1768)) begin
            SEQA_1_address0_local = zext_ln71_1_fu_1726_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQA_1_address0_local = zext_ln65_fu_1568_p1;
        end else if ((1'b1 == ap_condition_1716)) begin
            SEQA_1_address0_local = zext_ln71_fu_1560_p1;
        end else begin
            SEQA_1_address0_local = 'bx;
        end
    end else begin
        SEQA_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln17_8_reg_2484 == 2'd2) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_8_reg_2484 == 2'd2) & (tmp_15_fu_1976_p11 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_2361 == 2'd2) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_2361 == 2'd2) & (tmp_10_fu_1838_p11 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1== ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_2238 == 2'd2) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_2238 == 2'd2) & (tmp_s_fu_1703_p11 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2105 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1846)) begin
            SEQA_2_address0_local = zext_ln65_3_fu_2018_p1;
        end else if ((1'b1 == ap_condition_1838)) begin
            SEQA_2_address0_local = zext_ln71_3_fu_2010_p1;
        end else if ((1'b1 == ap_condition_1830)) begin
            SEQA_2_address0_local = zext_ln65_2_fu_1869_p1;
        end else if ((1'b1 == ap_condition_1823)) begin
            SEQA_2_address0_local = zext_ln71_2_fu_1861_p1;
        end else if ((1'b1 == ap_condition_1816)) begin
            SEQA_2_address0_local = zext_ln65_1_fu_1734_p1;
        end else if ((1'b1 == ap_condition_1810)) begin
            SEQA_2_address0_local = zext_ln71_1_fu_1726_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQA_2_address0_local = zext_ln65_fu_1568_p1;
        end else if ((1'b1 == ap_condition_1716)) begin
            SEQA_2_address0_local = zext_ln71_fu_1560_p1;
        end else begin
            SEQA_2_address0_local = 'bx;
        end
    end else begin
        SEQA_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln17_8_reg_2484 == 2'd3) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_8_reg_2484 == 2'd3) & (tmp_15_fu_1976_p11 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_2361 == 2'd3) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_2361 == 2'd3) & (tmp_10_fu_1838_p11 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1== ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_2238 == 2'd3) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_2238 == 2'd3) & (tmp_s_fu_1703_p11 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_2_ce0_local = 1'b1;
    end else begin
        SEQA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2105 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1888)) begin
            SEQA_3_address0_local = zext_ln65_3_fu_2018_p1;
        end else if ((1'b1 == ap_condition_1880)) begin
            SEQA_3_address0_local = zext_ln71_3_fu_2010_p1;
        end else if ((1'b1 == ap_condition_1872)) begin
            SEQA_3_address0_local = zext_ln65_2_fu_1869_p1;
        end else if ((1'b1 == ap_condition_1865)) begin
            SEQA_3_address0_local = zext_ln71_2_fu_1861_p1;
        end else if ((1'b1 == ap_condition_1858)) begin
            SEQA_3_address0_local = zext_ln65_1_fu_1734_p1;
        end else if ((1'b1 == ap_condition_1852)) begin
            SEQA_3_address0_local = zext_ln71_1_fu_1726_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQA_3_address0_local = zext_ln65_fu_1568_p1;
        end else if ((1'b1 == ap_condition_1716)) begin
            SEQA_3_address0_local = zext_ln71_fu_1560_p1;
        end else begin
            SEQA_3_address0_local = 'bx;
        end
    end else begin
        SEQA_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln17_8_reg_2484 == 2'd0) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_8_reg_2484 == 2'd0) & (tmp_15_fu_1976_p11 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_2361 == 2'd0) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_2361 == 2'd0) & (tmp_10_fu_1838_p11 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1== ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_2238 == 2'd0) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_2238 == 2'd0) & (tmp_s_fu_1703_p11 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_3_ce0_local = 1'b1;
    end else begin
        SEQA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2105 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1938)) begin
            SEQB_0_address0_local = zext_ln77_3_fu_2034_p1;
        end else if ((1'b1 == ap_condition_1929)) begin
            SEQB_0_address0_local = zext_ln66_3_fu_2026_p1;
        end else if ((1'b1 == ap_condition_1921)) begin
            SEQB_0_address0_local = zext_ln77_2_fu_1885_p1;
        end else if ((1'b1 == ap_condition_1913)) begin
            SEQB_0_address0_local = zext_ln66_2_fu_1877_p1;
        end else if ((1'b1 == ap_condition_1906)) begin
            SEQB_0_address0_local = zext_ln77_1_fu_1750_p1;
        end else if ((1'b1 == ap_condition_1899)) begin
            SEQB_0_address0_local = zext_ln66_1_fu_1742_p1;
        end else if ((1'b1 == ap_condition_1893)) begin
            SEQB_0_address0_local = zext_ln77_fu_1584_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQB_0_address0_local = zext_ln66_fu_1576_p1;
        end else begin
            SEQB_0_address0_local = 'bx;
        end
    end else begin
        SEQB_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln17_9_reg_2489 == 2'd1) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_5_reg_2366 == 2'd1) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_1_reg_2243 == 2'd1) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_15_fu_1976_p11 == 8'd92) & ~(tmp_15_fu_1976_p11 == 8'd60) & (trunc_ln17_9_reg_2489 == 2'd1) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1== ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_10_fu_1838_p11 == 8'd92) & ~(tmp_10_fu_1838_p11 == 8'd60) & (trunc_ln17_5_reg_2366 == 2'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_s_fu_1703_p11 == 8'd92) & ~(tmp_s_fu_1703_p11 == 8'd60) & (trunc_ln17_1_reg_2243 == 2'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_1_fu_1537_p11 == 8'd92) & ~(tmp_1_fu_1537_p11 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1)))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2105 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1980)) begin
            SEQB_1_address0_local = zext_ln77_3_fu_2034_p1;
        end else if ((1'b1 == ap_condition_1972)) begin
            SEQB_1_address0_local = zext_ln66_3_fu_2026_p1;
        end else if ((1'b1 == ap_condition_1964)) begin
            SEQB_1_address0_local = zext_ln77_2_fu_1885_p1;
        end else if ((1'b1 == ap_condition_1957)) begin
            SEQB_1_address0_local = zext_ln66_2_fu_1877_p1;
        end else if ((1'b1 == ap_condition_1950)) begin
            SEQB_1_address0_local = zext_ln77_1_fu_1750_p1;
        end else if ((1'b1 == ap_condition_1944)) begin
            SEQB_1_address0_local = zext_ln66_1_fu_1742_p1;
        end else if ((1'b1 == ap_condition_1893)) begin
            SEQB_1_address0_local = zext_ln77_fu_1584_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQB_1_address0_local = zext_ln66_fu_1576_p1;
        end else begin
            SEQB_1_address0_local = 'bx;
        end
    end else begin
        SEQB_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln17_9_reg_2489 == 2'd2) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_5_reg_2366 == 2'd2) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_1_reg_2243 == 2'd2) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_15_fu_1976_p11 == 8'd92) & ~(tmp_15_fu_1976_p11 == 8'd60) & (trunc_ln17_9_reg_2489 == 2'd2) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1== ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_10_fu_1838_p11 == 8'd92) & ~(tmp_10_fu_1838_p11 == 8'd60) & (trunc_ln17_5_reg_2366 == 2'd2) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_s_fu_1703_p11 == 8'd92) & ~(tmp_s_fu_1703_p11 == 8'd60) & (trunc_ln17_1_reg_2243 == 2'd2) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_1_fu_1537_p11 == 8'd92) & ~(tmp_1_fu_1537_p11 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1)))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2105 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_2022)) begin
            SEQB_2_address0_local = zext_ln77_3_fu_2034_p1;
        end else if ((1'b1 == ap_condition_2014)) begin
            SEQB_2_address0_local = zext_ln66_3_fu_2026_p1;
        end else if ((1'b1 == ap_condition_2006)) begin
            SEQB_2_address0_local = zext_ln77_2_fu_1885_p1;
        end else if ((1'b1 == ap_condition_1999)) begin
            SEQB_2_address0_local = zext_ln66_2_fu_1877_p1;
        end else if ((1'b1 == ap_condition_1992)) begin
            SEQB_2_address0_local = zext_ln77_1_fu_1750_p1;
        end else if ((1'b1 == ap_condition_1986)) begin
            SEQB_2_address0_local = zext_ln66_1_fu_1742_p1;
        end else if ((1'b1 == ap_condition_1893)) begin
            SEQB_2_address0_local = zext_ln77_fu_1584_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQB_2_address0_local = zext_ln66_fu_1576_p1;
        end else begin
            SEQB_2_address0_local = 'bx;
        end
    end else begin
        SEQB_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln17_9_reg_2489 == 2'd3) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_5_reg_2366 == 2'd3) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_1_reg_2243 == 2'd3) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_15_fu_1976_p11 == 8'd92) & ~(tmp_15_fu_1976_p11 == 8'd60) & (trunc_ln17_9_reg_2489 == 2'd3) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1== ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_10_fu_1838_p11 == 8'd92) & ~(tmp_10_fu_1838_p11 == 8'd60) & (trunc_ln17_5_reg_2366 == 2'd3) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_s_fu_1703_p11 == 8'd92) & ~(tmp_s_fu_1703_p11 == 8'd60) & (trunc_ln17_1_reg_2243 == 2'd3) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_1_fu_1537_p11 == 8'd92) & ~(tmp_1_fu_1537_p11 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1)))) begin
        SEQB_2_ce0_local = 1'b1;
    end else begin
        SEQB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2105 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_2064)) begin
            SEQB_3_address0_local = zext_ln77_3_fu_2034_p1;
        end else if ((1'b1 == ap_condition_2056)) begin
            SEQB_3_address0_local = zext_ln66_3_fu_2026_p1;
        end else if ((1'b1 == ap_condition_2048)) begin
            SEQB_3_address0_local = zext_ln77_2_fu_1885_p1;
        end else if ((1'b1 == ap_condition_2041)) begin
            SEQB_3_address0_local = zext_ln66_2_fu_1877_p1;
        end else if ((1'b1 == ap_condition_2034)) begin
            SEQB_3_address0_local = zext_ln77_1_fu_1750_p1;
        end else if ((1'b1 == ap_condition_2028)) begin
            SEQB_3_address0_local = zext_ln66_1_fu_1742_p1;
        end else if ((1'b1 == ap_condition_1893)) begin
            SEQB_3_address0_local = zext_ln77_fu_1584_p1;
        end else if ((1'b1 == ap_condition_1720)) begin
            SEQB_3_address0_local = zext_ln66_fu_1576_p1;
        end else begin
            SEQB_3_address0_local = 'bx;
        end
    end else begin
        SEQB_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((trunc_ln17_9_reg_2489 == 2'd0) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_5_reg_2366 == 2'd0) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_1_reg_2243 == 2'd0) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_15_fu_1976_p11 == 8'd92) & ~(tmp_15_fu_1976_p11 == 8'd60) & (trunc_ln17_9_reg_2489 == 2'd0) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1== ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_10_fu_1838_p11 == 8'd92) & ~(tmp_10_fu_1838_p11 == 8'd60) & (trunc_ln17_5_reg_2366 == 2'd0) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_s_fu_1703_p11 == 8'd92) & ~(tmp_s_fu_1703_p11 == 8'd60) & (trunc_ln17_1_reg_2243 == 2'd0) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(tmp_1_fu_1537_p11 == 8'd92) & ~(tmp_1_fu_1537_p11 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_fu_1537_p11 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0== 1'b1)))) begin
        SEQB_3_ce0_local = 1'b1;
    end else begin
        SEQB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18))) begin
        a_str_idx_0_0_out_ap_vld = 1'b1;
    end else begin
        a_str_idx_0_0_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2134 == 8'd60) & ~(tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_reg_2134 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(tmp_1_reg_2134 == 8'd60) & ~(tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedA_0_d0_local = 8'd45;
    end else if ((((tmp_1_reg_2134 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_d0_local = grp_fu_1099_p11;
    end else begin
        alignedA_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2134 == 8'd60) & ~(tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_reg_2134 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2277 == 8'd60) & ~(tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_reg_2277 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(tmp_s_reg_2277 == 8'd60) & ~(tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedA_1_d0_local = 8'd45;
    end else if ((((tmp_s_reg_2277 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_d0_local = grp_fu_1179_p11;
    end else begin
        alignedA_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2277 == 8'd60) & ~(tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_reg_2277 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_10_reg_2400 == 8'd60) & ~(tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_reg_2400 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_2_ce0_local = 1'b1;
    end else begin
        alignedA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(tmp_10_reg_2400 == 8'd60) & ~(tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedA_2_d0_local = 8'd45;
    end else if ((((tmp_10_reg_2400 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_2_d0_local = grp_fu_1259_p11;
    end else begin
        alignedA_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_10_reg_2400 == 8'd60) & ~(tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_reg_2400 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_2_we0_local = 1'b1;
    end else begin
        alignedA_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_15_reg_2533 == 8'd60) & ~(tmp_15_reg_2533 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_2533 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_2533 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedA_3_ce0_local = 1'b1;
    end else begin
        alignedA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(tmp_15_reg_2533 == 8'd60) & ~(tmp_15_reg_2533 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        alignedA_3_d0_local = 8'd45;
    end else if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_2533 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_2533 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedA_3_d0_local = grp_fu_1339_p11;
    end else begin
        alignedA_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_15_reg_2533 == 8'd60) & ~(tmp_15_reg_2533 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_2533 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_2533 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedA_3_we0_local = 1'b1;
    end else begin
        alignedA_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2134 == 8'd60) & ~(tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_reg_2134 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2134 == 8'd60) & ~(tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_d0_local = grp_fu_1123_p11;
    end else if (((tmp_1_reg_2134 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedB_0_d0_local = 8'd45;
    end else begin
        alignedB_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_2134 == 8'd60) & ~(tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_reg_2134 == 8'd60) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_1_reg_2134 == 8'd92) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2277 == 8'd60) & ~(tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_reg_2277 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2277 == 8'd60) & ~(tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_d0_local = grp_fu_1203_p11;
    end else if (((tmp_s_reg_2277 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedB_1_d0_local = 8'd45;
    end else begin
        alignedB_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_s_reg_2277 == 8'd60) & ~(tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_reg_2277 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_s_reg_2277 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_10_reg_2400 == 8'd60) & ~(tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_reg_2400 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_2_ce0_local = 1'b1;
    end else begin
        alignedB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_10_reg_2400 == 8'd60) & ~(tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_2_d0_local = grp_fu_1283_p11;
    end else if (((tmp_10_reg_2400 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        alignedB_2_d0_local = 8'd45;
    end else begin
        alignedB_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_10_reg_2400 == 8'd60) & ~(tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_reg_2400 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((tmp_10_reg_2400 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_2_we0_local = 1'b1;
    end else begin
        alignedB_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_15_reg_2533 == 8'd60) & ~(tmp_15_reg_2533 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_2533 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_2533 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedB_3_ce0_local = 1'b1;
    end else begin
        alignedB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_15_reg_2533 == 8'd60) & ~(tmp_15_reg_2533 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_2533 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_3_d0_local = grp_fu_1363_p11;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_2533 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        alignedB_3_d0_local = 8'd45;
    end else begin
        alignedB_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_15_reg_2533 == 8'd60) & ~(tmp_15_reg_2533 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_2533 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_15_reg_2533 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedB_3_we0_local = 1'b1;
    end else begin
        alignedB_3_we0_local = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_tran12to17_state12 == 1'b1) | (ap_predicate_tran12to16_state12 == 1'b1) | (ap_predicate_tran12to15_state12 == 1'b1) | (or_ln62_reg_2105 == 1'd0))) begin
        ap_condition_pp0_exit_iter0_state12 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state12 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((~(tmp_15_reg_2533 == 8'd60) & ~(tmp_15_reg_2533 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1))) begin
        ap_phi_mux_a_idx_13_phi_fu_1027_p6 = a_idx_10_reg_998;
    end else if ((((tmp_15_reg_2533 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1)) | ((tmp_15_reg_2533 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1)))) begin
        ap_phi_mux_a_idx_13_phi_fu_1027_p6 = reg_1427;
    end else begin
        ap_phi_mux_a_idx_13_phi_fu_1027_p6 = ap_phi_reg_pp0_iter1_a_idx_13_reg_1024;
    end
end
always @ (*) begin
    if (((tmp_15_reg_2533 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1))) begin
        ap_phi_mux_b_idx_13_phi_fu_1039_p6 = b_idx_10_reg_1011;
    end else if (((~(tmp_15_reg_2533 == 8'd60) & ~(tmp_15_reg_2533 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1)) | ((tmp_15_reg_2533 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1)))) begin
        ap_phi_mux_b_idx_13_phi_fu_1039_p6 = reg_1433;
    end else begin
        ap_phi_mux_b_idx_13_phi_fu_1039_p6 = ap_phi_reg_pp0_iter1_b_idx_13_reg_1036;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        ap_return = UnifiedRetVal_reg_1048;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18))) begin
        b_str_idx_6_out_ap_vld = 1'b1;
    end else begin
        b_str_idx_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10))) begin
            ptr_0_address0_local = zext_ln64_3_fu_1965_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            ptr_0_address0_local = zext_ln64_2_fu_1830_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            ptr_0_address0_local = zext_ln64_1_fu_1695_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_0_address0_local = zext_ln64_fu_1529_p1;
        end else begin
            ptr_0_address0_local = 'bx;
        end
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10))) begin
            ptr_1_address0_local = zext_ln64_3_fu_1965_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            ptr_1_address0_local = zext_ln64_2_fu_1830_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            ptr_1_address0_local = zext_ln64_1_fu_1695_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_1_address0_local = zext_ln64_fu_1529_p1;
        end else begin
            ptr_1_address0_local = 'bx;
        end
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10))) begin
            ptr_2_address0_local = zext_ln64_3_fu_1965_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            ptr_2_address0_local = zext_ln64_2_fu_1830_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            ptr_2_address0_local = zext_ln64_1_fu_1695_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_2_address0_local = zext_ln64_fu_1529_p1;
        end else begin
            ptr_2_address0_local = 'bx;
        end
    end else begin
        ptr_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_2_ce0_local = 1'b1;
    end else begin
        ptr_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10))) begin
            ptr_3_address0_local = zext_ln64_3_fu_1965_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            ptr_3_address0_local = zext_ln64_2_fu_1830_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            ptr_3_address0_local = zext_ln64_1_fu_1695_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_3_address0_local = zext_ln64_fu_1529_p1;
        end else begin
            ptr_3_address0_local = 'bx;
        end
    end else begin
        ptr_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_3_ce0_local = 1'b1;
    end else begin
        ptr_3_ce0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
            if ((~(((or_ln62_reg_2105 == 1'd0) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran12to17_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran12to16_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran12to15_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) & (1'b0 == ap_block_pp0_stage10_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else if (((or_ln62_reg_2105 == 1'd0) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else if (((ap_predicate_tran12to17_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else if (((ap_predicate_tran12to16_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else if (((ap_predicate_tran12to15_state12 == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign SEQA_0_address0 = SEQA_0_address0_local;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = SEQA_1_address0_local;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQA_2_address0 = SEQA_2_address0_local;
assign SEQA_2_ce0 = SEQA_2_ce0_local;
assign SEQA_3_address0 = SEQA_3_address0_local;
assign SEQA_3_ce0 = SEQA_3_ce0_local;
assign SEQB_0_address0 = SEQB_0_address0_local;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = SEQB_1_address0_local;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign SEQB_2_address0 = SEQB_2_address0_local;
assign SEQB_2_ce0 = SEQB_2_ce0_local;
assign SEQB_3_address0 = SEQB_3_address0_local;
assign SEQB_3_ce0 = SEQB_3_ce0_local;
assign a_str_idx_0_0_out = a_str_idx_0_0_fu_108;
assign add_ln64_1_fu_1675_p2 = (r_2_fu_1669_p2 + p_shl1_fu_1661_p3);
assign add_ln64_2_fu_1810_p2 = (r_1_fu_1804_p2 + p_shl2_fu_1796_p3);
assign add_ln64_3_fu_1945_p2 = (r_fu_1939_p2 + p_shl3_fu_1931_p3);
assign add_ln64_fu_1509_p2 = (r_3_fu_1503_p2 + trunc_ln18_3_fu_1483_p1);
assign add_ln65_fu_1999_p2 = (b_str_idx_1_reg_2218 + 64'd4);
assign alignedA_0_address0 = zext_ln18_fu_1609_p1;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_d0 = alignedA_0_d0_local;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_1_address0 = zext_ln18_reg_2228;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_d0 = alignedA_1_d0_local;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedA_2_address0 = zext_ln18_reg_2228;
assign alignedA_2_ce0 = alignedA_2_ce0_local;
assign alignedA_2_d0 = alignedA_2_d0_local;
assign alignedA_2_we0 = alignedA_2_we0_local;
assign alignedA_3_address0 = alignedA_3_addr_reg_2523;
assign alignedA_3_ce0 = alignedA_3_ce0_local;
assign alignedA_3_d0 = alignedA_3_d0_local;
assign alignedA_3_we0 = alignedA_3_we0_local;
assign alignedB_0_address0 = zext_ln18_fu_1609_p1;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_d0 = alignedB_0_d0_local;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_1_address0 = zext_ln18_reg_2228;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_d0 = alignedB_1_d0_local;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign alignedB_2_address0 = zext_ln18_reg_2228;
assign alignedB_2_ce0 = alignedB_2_ce0_local;
assign alignedB_2_d0 = alignedB_2_d0_local;
assign alignedB_2_we0 = alignedB_2_we0_local;
assign alignedB_3_address0 = alignedB_3_addr_reg_2528;
assign alignedB_3_ce0 = alignedB_3_ce0_local;
assign alignedB_3_d0 = alignedB_3_d0_local;
assign alignedB_3_we0 = alignedB_3_we0_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd17];
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
    ap_condition_1716 = ((tmp_1_fu_1537_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1720 = ((tmp_1_fu_1537_p11 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1726 = ((trunc_ln17_reg_2238 == 2'd1) & (tmp_s_fu_1703_p11 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1732 = ((trunc_ln17_reg_2238 == 2'd1) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1739 = ((trunc_ln17_4_reg_2361 == 2'd1) & (tmp_10_fu_1838_p11 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1746 = ((trunc_ln17_4_reg_2361 == 2'd1) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1754 = ((trunc_ln17_8_reg_2484 == 2'd1) & (tmp_15_fu_1976_p11 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1762 = ((trunc_ln17_8_reg_2484 == 2'd1) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1768 = ((trunc_ln17_reg_2238 == 2'd2) & (tmp_s_fu_1703_p11 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1774 = ((trunc_ln17_reg_2238 == 2'd2) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1781 = ((trunc_ln17_4_reg_2361 == 2'd2) & (tmp_10_fu_1838_p11 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1788 = ((trunc_ln17_4_reg_2361 == 2'd2) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1796 = ((trunc_ln17_8_reg_2484 == 2'd2) & (tmp_15_fu_1976_p11 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1804 = ((trunc_ln17_8_reg_2484 == 2'd2) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1810 = ((trunc_ln17_reg_2238 == 2'd3) & (tmp_s_fu_1703_p11 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1816 = ((trunc_ln17_reg_2238 == 2'd3) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1823 = ((trunc_ln17_4_reg_2361 == 2'd3) & (tmp_10_fu_1838_p11 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1830 = ((trunc_ln17_4_reg_2361 == 2'd3) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1838 = ((trunc_ln17_8_reg_2484 == 2'd3) & (tmp_15_fu_1976_p11 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1846 = ((trunc_ln17_8_reg_2484 == 2'd3) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1852 = ((trunc_ln17_reg_2238 == 2'd0) & (tmp_s_fu_1703_p11 == 8'd60) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1858 = ((trunc_ln17_reg_2238 == 2'd0) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1865 = ((trunc_ln17_4_reg_2361 == 2'd0) & (tmp_10_fu_1838_p11 == 8'd60) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1872 = ((trunc_ln17_4_reg_2361 == 2'd0) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1880 = ((trunc_ln17_8_reg_2484 == 2'd0) & (tmp_15_fu_1976_p11 == 8'd60) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1888 = ((trunc_ln17_8_reg_2484 == 2'd0) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1893 = (~(tmp_1_fu_1537_p11 == 8'd92) & ~(tmp_1_fu_1537_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1899 = ((trunc_ln17_1_reg_2243 == 2'd1) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1906 = (~(tmp_s_fu_1703_p11 == 8'd92) & ~(tmp_s_fu_1703_p11 == 8'd60) & (trunc_ln17_1_reg_2243 == 2'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1913 = ((trunc_ln17_5_reg_2366 == 2'd1) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1921 = (~(tmp_10_fu_1838_p11 == 8'd92) & ~(tmp_10_fu_1838_p11 == 8'd60) & (trunc_ln17_5_reg_2366 == 2'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1929 = ((trunc_ln17_9_reg_2489 == 2'd1) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1938 = (~(tmp_15_fu_1976_p11 == 8'd92) & ~(tmp_15_fu_1976_p11 == 8'd60) & (trunc_ln17_9_reg_2489 == 2'd1) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1944 = ((trunc_ln17_1_reg_2243 == 2'd2) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1950 = (~(tmp_s_fu_1703_p11 == 8'd92) & ~(tmp_s_fu_1703_p11 == 8'd60) & (trunc_ln17_1_reg_2243 == 2'd2) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1957 = ((trunc_ln17_5_reg_2366 == 2'd2) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1964 = (~(tmp_10_fu_1838_p11 == 8'd92) & ~(tmp_10_fu_1838_p11 == 8'd60) & (trunc_ln17_5_reg_2366 == 2'd2) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_1972 = ((trunc_ln17_9_reg_2489 == 2'd2) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1980 = (~(tmp_15_fu_1976_p11 == 8'd92) & ~(tmp_15_fu_1976_p11 == 8'd60) & (trunc_ln17_9_reg_2489 == 2'd2) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_1986 = ((trunc_ln17_1_reg_2243 == 2'd3) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1992 = (~(tmp_s_fu_1703_p11 == 8'd92) & ~(tmp_s_fu_1703_p11 == 8'd60) & (trunc_ln17_1_reg_2243 == 2'd3) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_1999 = ((trunc_ln17_5_reg_2366 == 2'd3) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_2006 = (~(tmp_10_fu_1838_p11 == 8'd92) & ~(tmp_10_fu_1838_p11 == 8'd60) & (trunc_ln17_5_reg_2366 == 2'd3) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_2014 = ((trunc_ln17_9_reg_2489 == 2'd3) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_2022 = (~(tmp_15_fu_1976_p11 == 8'd92) & ~(tmp_15_fu_1976_p11 == 8'd60) & (trunc_ln17_9_reg_2489 == 2'd3) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_2028 = ((trunc_ln17_1_reg_2243 == 2'd0) & (tmp_s_fu_1703_p11 == 8'd92) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_2034 = (~(tmp_s_fu_1703_p11 == 8'd92) & ~(tmp_s_fu_1703_p11 == 8'd60) & (trunc_ln17_1_reg_2243 == 2'd0) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_2041 = ((trunc_ln17_5_reg_2366 == 2'd0) & (tmp_10_fu_1838_p11 == 8'd92) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_2048 = (~(tmp_10_fu_1838_p11 == 8'd92) & ~(tmp_10_fu_1838_p11 == 8'd60) & (trunc_ln17_5_reg_2366 == 2'd0) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_2056 = ((trunc_ln17_9_reg_2489 == 2'd0) & (tmp_15_fu_1976_p11 == 8'd92) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_2064 = (~(tmp_15_fu_1976_p11 == 8'd92) & ~(tmp_15_fu_1976_p11 == 8'd60) & (trunc_ln17_9_reg_2489 == 2'd0) & (or_ln62_3_reg_2494 == 1'd1) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_phi_reg_pp0_iter1_a_idx_13_reg_1024 = 'bx;
assign ap_phi_reg_pp0_iter1_b_idx_13_reg_1036 = 'bx;
always @ (*) begin
    ap_predicate_tran12to15_state12 = ((or_ln62_3_fu_1921_p2 == 1'd0) & (or_ln62_2_reg_2371 == 1'd1) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran12to16_state12 = ((or_ln62_2_reg_2371 == 1'd0) & (or_ln62_1_reg_2248 == 1'd1) & (or_ln62_reg_2105 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran12to17_state12 = ((or_ln62_1_reg_2248 == 1'd0) & (or_ln62_reg_2105 == 1'd1));
end
assign b_str_idx_6_out = trunc_ln18_reg_2223;
assign b_str_idx_fu_2004_p2 = (a_str_idx_0_0_fu_108 + 32'd4);
assign grp_fu_1069_p2 = ($signed(a_idx_1_reg_2098) + $signed(32'd4294967295));
assign grp_fu_1074_p4 = {{grp_fu_1069_p2[6:2]}};
assign grp_fu_1084_p2 = ($signed(b_idx_1_reg_2091) + $signed(32'd4294967295));
assign grp_fu_1089_p4 = {{grp_fu_1084_p2[6:2]}};
assign grp_fu_1099_p10 = a_idx_1_reg_2098[1:0];
assign grp_fu_1099_p9 = 'bx;
assign grp_fu_1123_p10 = b_idx_1_reg_2091[1:0];
assign grp_fu_1123_p9 = 'bx;
assign grp_fu_1147_p2 = ($signed(a_idx_4_reg_948) + $signed(32'd4294967295));
assign grp_fu_1153_p4 = {{grp_fu_1147_p2[6:2]}};
assign grp_fu_1163_p2 = ($signed(b_idx_4_reg_960) + $signed(32'd4294967295));
assign grp_fu_1169_p4 = {{grp_fu_1163_p2[6:2]}};
assign grp_fu_1179_p9 = 'bx;
assign grp_fu_1203_p9 = 'bx;
assign grp_fu_1227_p2 = ($signed(a_idx_7_reg_972) + $signed(32'd4294967295));
assign grp_fu_1233_p4 = {{grp_fu_1227_p2[6:2]}};
assign grp_fu_1243_p2 = ($signed(b_idx_7_reg_985) + $signed(32'd4294967295));
assign grp_fu_1249_p4 = {{grp_fu_1243_p2[6:2]}};
assign grp_fu_1259_p9 = 'bx;
assign grp_fu_1283_p9 = 'bx;
assign grp_fu_1307_p2 = ($signed(a_idx_10_reg_998) + $signed(32'd4294967295));
assign grp_fu_1313_p4 = {{grp_fu_1307_p2[6:2]}};
assign grp_fu_1323_p2 = ($signed(b_idx_10_reg_1011) + $signed(32'd4294967295));
assign grp_fu_1329_p4 = {{grp_fu_1323_p2[6:2]}};
assign grp_fu_1339_p9 = 'bx;
assign grp_fu_1363_p9 = 'bx;
assign icmp_ln62_1_fu_1471_p2 = (($signed(b_idx_fu_116) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_2_fu_1639_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_4_reg_948) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_3_fu_1645_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_4_reg_960) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_4_fu_1774_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_7_reg_972) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_5_fu_1780_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_7_reg_985) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_6_fu_1909_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_10_reg_998) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_7_fu_1915_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_10_reg_1011) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_1465_p2 = (($signed(a_idx_fu_120) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign lshr_ln64_1_fu_1685_p4 = {{add_ln64_1_fu_1675_p2[14:2]}};
assign lshr_ln64_2_fu_1820_p4 = {{add_ln64_2_fu_1810_p2[14:2]}};
assign lshr_ln64_3_fu_1955_p4 = {{add_ln64_3_fu_1945_p2[14:2]}};
assign lshr_ln7_fu_1599_p4 = {{a_str_idx_fu_112[7:2]}};
assign lshr_ln8_fu_1519_p4 = {{add_ln64_fu_1509_p2[14:2]}};
assign or_ln62_1_fu_1651_p2 = (icmp_ln62_3_fu_1645_p2 | icmp_ln62_2_fu_1639_p2);
assign or_ln62_2_fu_1786_p2 = (icmp_ln62_5_fu_1780_p2 | icmp_ln62_4_fu_1774_p2);
assign or_ln62_3_fu_1921_p2 = (icmp_ln62_7_fu_1915_p2 | icmp_ln62_6_fu_1909_p2);
assign or_ln62_fu_1477_p2 = (icmp_ln62_fu_1465_p2 | icmp_ln62_1_fu_1471_p2);
assign p_shl1_fu_1661_p3 = {{trunc_ln16_1_fu_1657_p1}, {7'd0}};
assign p_shl2_fu_1796_p3 = {{trunc_ln16_2_fu_1792_p1}, {7'd0}};
assign p_shl3_fu_1931_p3 = {{trunc_ln16_3_fu_1927_p1}, {7'd0}};
assign p_shl_fu_1495_p3 = {{trunc_ln16_fu_1491_p1}, {7'd0}};
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_2_address0 = ptr_2_address0_local;
assign ptr_2_ce0 = ptr_2_ce0_local;
assign ptr_3_address0 = ptr_3_address0_local;
assign ptr_3_ce0 = ptr_3_ce0_local;
assign r_1_fu_1804_p2 = (trunc_ln17_6_fu_1766_p1 + trunc_ln17_7_fu_1770_p1);
assign r_2_fu_1669_p2 = (trunc_ln17_2_fu_1631_p1 + trunc_ln17_3_fu_1635_p1);
assign r_3_fu_1503_p2 = (p_shl_fu_1495_p3 + trunc_ln18_4_fu_1487_p1);
assign r_fu_1939_p2 = (trunc_ln17_10_fu_1901_p1 + trunc_ln17_11_fu_1905_p1);
assign tmp_10_fu_1838_p9 = 'bx;
assign tmp_15_fu_1976_p9 = 'bx;
assign tmp_1_fu_1537_p9 = 'bx;
assign tmp_s_fu_1703_p9 = 'bx;
assign trunc_ln16_1_fu_1657_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_960[7:0];
assign trunc_ln16_2_fu_1792_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_985[7:0];
assign trunc_ln16_3_fu_1927_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_1011[7:0];
assign trunc_ln16_fu_1491_p1 = b_idx_fu_116[7:0];
assign trunc_ln17_10_fu_1901_p1 = ap_phi_reg_pp0_iter0_a_idx_10_reg_998[14:0];
assign trunc_ln17_11_fu_1905_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_1011[14:0];
assign trunc_ln17_1_fu_1627_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_960[1:0];
assign trunc_ln17_2_fu_1631_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_948[14:0];
assign trunc_ln17_3_fu_1635_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_960[14:0];
assign trunc_ln17_4_fu_1758_p1 = ap_phi_reg_pp0_iter0_a_idx_7_reg_972[1:0];
assign trunc_ln17_5_fu_1762_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_985[1:0];
assign trunc_ln17_6_fu_1766_p1 = ap_phi_reg_pp0_iter0_a_idx_7_reg_972[14:0];
assign trunc_ln17_7_fu_1770_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_985[14:0];
assign trunc_ln17_8_fu_1893_p1 = ap_phi_reg_pp0_iter0_a_idx_10_reg_998[1:0];
assign trunc_ln17_9_fu_1897_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_1011[1:0];
assign trunc_ln17_fu_1623_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_948[1:0];
assign trunc_ln18_3_fu_1483_p1 = a_idx_fu_120[14:0];
assign trunc_ln18_4_fu_1487_p1 = b_idx_fu_116[14:0];
assign trunc_ln18_fu_1595_p1 = a_str_idx_fu_112[31:0];
assign trunc_ln64_1_fu_1681_p1 = add_ln64_1_fu_1675_p2[1:0];
assign trunc_ln64_2_fu_1816_p1 = add_ln64_2_fu_1810_p2[1:0];
assign trunc_ln64_3_fu_1951_p1 = add_ln64_3_fu_1945_p2[1:0];
assign trunc_ln64_fu_1515_p1 = add_ln64_fu_1509_p2[1:0];
assign zext_ln18_fu_1609_p1 = lshr_ln7_fu_1599_p4;
assign zext_ln64_1_fu_1695_p1 = lshr_ln64_1_fu_1685_p4;
assign zext_ln64_2_fu_1830_p1 = lshr_ln64_2_fu_1820_p4;
assign zext_ln64_3_fu_1965_p1 = lshr_ln64_3_fu_1955_p4;
assign zext_ln64_fu_1529_p1 = lshr_ln8_fu_1519_p4;
assign zext_ln65_1_fu_1734_p1 = grp_fu_1153_p4;
assign zext_ln65_2_fu_1869_p1 = grp_fu_1233_p4;
assign zext_ln65_3_fu_2018_p1 = grp_fu_1313_p4;
assign zext_ln65_fu_1568_p1 = grp_fu_1074_p4;
assign zext_ln66_1_fu_1742_p1 = grp_fu_1169_p4;
assign zext_ln66_2_fu_1877_p1 = grp_fu_1249_p4;
assign zext_ln66_3_fu_2026_p1 = grp_fu_1329_p4;
assign zext_ln66_fu_1576_p1 = grp_fu_1089_p4;
assign zext_ln71_1_fu_1726_p1 = grp_fu_1153_p4;
assign zext_ln71_2_fu_1861_p1 = grp_fu_1233_p4;
assign zext_ln71_3_fu_2010_p1 = grp_fu_1313_p4;
assign zext_ln71_fu_1560_p1 = grp_fu_1074_p4;
assign zext_ln77_1_fu_1750_p1 = grp_fu_1169_p4;
assign zext_ln77_2_fu_1885_p1 = grp_fu_1249_p4;
assign zext_ln77_3_fu_2034_p1 = grp_fu_1329_p4;
assign zext_ln77_fu_1584_p1 = grp_fu_1089_p4;
always @ (posedge ap_clk) begin
    zext_ln18_reg_2228[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
