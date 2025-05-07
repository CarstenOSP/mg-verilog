module needwun_needwun_Pipeline_fill_out_fill_in (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ptr_0_address0,ptr_0_ce0,ptr_0_we0,ptr_0_d0,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_q0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1,M_0_q1,SEQA_3_address0,SEQA_3_ce0,SEQA_3_q0,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_q0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_1_q1,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_2_q0,M_2_address1,M_2_ce1,M_2_we1,M_2_d1,M_2_q1,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_3_q0,M_3_address1,M_3_ce1,M_3_we1,M_3_d1,M_3_q1,SEQA_2_address0,SEQA_2_ce0,SEQA_2_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,SEQB_2_address0,SEQB_2_ce0,SEQB_2_q0,SEQB_3_address0,SEQB_3_ce0,SEQB_3_q0,ptr_3_address0,ptr_3_ce0,ptr_3_we0,ptr_3_d0,ptr_2_address0,ptr_2_ce0,ptr_2_we0,ptr_2_d0,ptr_1_address0,ptr_1_ce0,ptr_1_we0,ptr_1_d0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] ptr_0_address0;
output   ptr_0_ce0;
output   ptr_0_we0;
output  [7:0] ptr_0_d0;
output  [12:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
input  [31:0] M_0_q0;
output  [12:0] M_0_address1;
output   M_0_ce1;
output   M_0_we1;
output  [31:0] M_0_d1;
input  [31:0] M_0_q1;
output  [4:0] SEQA_3_address0;
output   SEQA_3_ce0;
input  [7:0] SEQA_3_q0;
output  [12:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
input  [31:0] M_1_q0;
output  [12:0] M_1_address1;
output   M_1_ce1;
output   M_1_we1;
output  [31:0] M_1_d1;
input  [31:0] M_1_q1;
output  [12:0] M_2_address0;
output   M_2_ce0;
output   M_2_we0;
output  [31:0] M_2_d0;
input  [31:0] M_2_q0;
output  [12:0] M_2_address1;
output   M_2_ce1;
output   M_2_we1;
output  [31:0] M_2_d1;
input  [31:0] M_2_q1;
output  [12:0] M_3_address0;
output   M_3_ce0;
output   M_3_we0;
output  [31:0] M_3_d0;
input  [31:0] M_3_q0;
output  [12:0] M_3_address1;
output   M_3_ce1;
output   M_3_we1;
output  [31:0] M_3_d1;
input  [31:0] M_3_q1;
output  [4:0] SEQA_2_address0;
output   SEQA_2_ce0;
input  [7:0] SEQA_2_q0;
output  [4:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
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
output  [12:0] ptr_3_address0;
output   ptr_3_ce0;
output   ptr_3_we0;
output  [7:0] ptr_3_d0;
output  [12:0] ptr_2_address0;
output   ptr_2_ce0;
output   ptr_2_we0;
output  [7:0] ptr_2_d0;
output  [12:0] ptr_1_address0;
output   ptr_1_ce0;
output   ptr_1_we0;
output  [7:0] ptr_1_d0;
output  [4:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln28_reg_1871;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire   [0:0] icmp_ln28_fu_1022_p2;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] select_ln17_fu_1046_p3;
reg   [7:0] select_ln17_reg_1875;
wire   [7:0] select_ln28_fu_1060_p3;
reg   [7:0] select_ln28_reg_1882;
wire   [1:0] trunc_ln28_fu_1068_p1;
reg   [1:0] trunc_ln28_reg_1888;
reg   [4:0] tmp_s_reg_1893;
wire   [6:0] trunc_ln29_fu_1092_p1;
reg   [6:0] trunc_ln29_reg_1898;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [14:0] empty_18_fu_1141_p2;
reg   [14:0] empty_18_reg_1945;
wire   [14:0] empty_19_fu_1147_p2;
reg   [14:0] empty_19_reg_1953;
wire   [6:0] add_ln30_fu_1156_p2;
reg   [6:0] add_ln30_reg_1961;
reg   [7:0] SEQA_0_load_reg_1966;
wire   [1:0] trunc_ln39_fu_1167_p1;
reg   [1:0] trunc_ln39_reg_1971;
reg   [1:0] trunc_ln39_reg_1971_pp0_iter1_reg;
reg   [12:0] lshr_ln3_reg_1981;
reg   [12:0] lshr_ln5_reg_1986;
reg   [7:0] SEQA_1_load_reg_1991;
reg   [7:0] SEQA_2_load_reg_1996;
reg   [7:0] SEQA_3_load_reg_2001;
wire   [0:0] icmp_ln30_fu_1233_p2;
reg   [0:0] icmp_ln30_reg_2006;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln30_1_fu_1291_p2;
reg   [0:0] icmp_ln30_1_reg_2071;
wire   [0:0] icmp_ln30_2_fu_1296_p2;
reg   [0:0] icmp_ln30_2_reg_2076;
wire   [0:0] icmp_ln30_3_fu_1301_p2;
reg   [0:0] icmp_ln30_3_reg_2081;
wire   [31:0] tmp_3_fu_1306_p11;
reg   [31:0] tmp_3_reg_2086;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_4_fu_1329_p11;
reg   [31:0] tmp_4_reg_2091;
wire   [31:0] tmp_5_fu_1352_p11;
reg   [31:0] tmp_5_reg_2097;
wire   [31:0] up_left_fu_1382_p2;
reg   [31:0] up_left_reg_2102;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] up_fu_1387_p2;
reg   [31:0] up_reg_2108;
wire   [31:0] left_fu_1392_p2;
reg   [31:0] left_reg_2113;
wire   [31:0] select_ln43_fu_1403_p3;
reg   [31:0] select_ln43_reg_2118;
wire   [31:0] up_left_1_fu_1418_p2;
reg   [31:0] up_left_1_reg_2124;
wire   [31:0] max_fu_1427_p3;
reg   [31:0] max_reg_2130;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] zext_ln45_fu_1437_p1;
reg   [63:0] zext_ln45_reg_2135;
wire   [0:0] icmp_ln46_fu_1444_p2;
reg   [0:0] icmp_ln46_reg_2151;
wire   [0:0] icmp_ln48_fu_1449_p2;
reg   [0:0] icmp_ln48_reg_2155;
wire   [6:0] add_ln29_fu_1454_p2;
reg   [6:0] add_ln29_reg_2159;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [12:0] lshr_ln45_1_reg_2184;
wire   [31:0] tmp_13_fu_1500_p11;
reg   [31:0] tmp_13_reg_2189;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] up_1_fu_1523_p2;
reg   [31:0] up_1_reg_2195;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] left_1_fu_1528_p2;
reg   [31:0] left_1_reg_2200;
wire   [31:0] select_ln43_2_fu_1539_p3;
reg   [31:0] select_ln43_2_reg_2205;
wire   [31:0] up_left_2_fu_1554_p2;
reg   [31:0] up_left_2_reg_2211;
wire   [31:0] max_1_fu_1563_p3;
reg   [31:0] max_1_reg_2217;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] zext_ln45_1_fu_1573_p1;
reg   [63:0] zext_ln45_1_reg_2222;
wire   [0:0] icmp_ln46_1_fu_1580_p2;
reg   [0:0] icmp_ln46_1_reg_2238;
wire   [0:0] icmp_ln48_1_fu_1585_p2;
reg   [0:0] icmp_ln48_1_reg_2242;
wire   [6:0] add_ln29_1_fu_1590_p2;
reg   [6:0] add_ln29_1_reg_2246;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [12:0] lshr_ln45_2_reg_2271;
reg   [12:0] lshr_ln40_3_reg_2276;
reg   [12:0] lshr_ln45_3_reg_2281;
wire   [31:0] tmp_14_fu_1675_p11;
reg   [31:0] tmp_14_reg_2286;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] up_2_fu_1698_p2;
reg   [31:0] up_2_reg_2292;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [31:0] left_2_fu_1703_p2;
reg   [31:0] left_2_reg_2297;
wire   [31:0] select_ln43_4_fu_1714_p3;
reg   [31:0] select_ln43_4_reg_2302;
wire   [31:0] up_left_3_fu_1729_p2;
reg   [31:0] up_left_3_reg_2308;
wire   [31:0] max_2_fu_1738_p3;
reg   [31:0] max_2_reg_2314;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [63:0] zext_ln45_2_fu_1748_p1;
reg   [63:0] zext_ln45_2_reg_2319;
wire   [0:0] icmp_ln46_2_fu_1755_p2;
reg   [0:0] icmp_ln46_2_reg_2335;
wire   [0:0] icmp_ln48_2_fu_1760_p2;
reg   [0:0] icmp_ln48_2_reg_2339;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [31:0] tmp_15_fu_1772_p11;
reg   [31:0] tmp_15_reg_2363;
wire    ap_block_pp0_stage15_11001;
wire   [31:0] up_3_fu_1795_p2;
reg   [31:0] up_3_reg_2368;
wire   [31:0] left_3_fu_1800_p2;
reg   [31:0] left_3_reg_2373;
wire   [31:0] select_ln43_6_fu_1811_p3;
reg   [31:0] select_ln43_6_reg_2378;
wire   [63:0] zext_ln45_3_fu_1833_p1;
reg   [63:0] zext_ln45_3_reg_2384;
wire   [0:0] icmp_ln46_3_fu_1840_p2;
reg   [0:0] icmp_ln46_3_reg_2400;
wire   [0:0] icmp_ln48_3_fu_1845_p2;
reg   [0:0] icmp_ln48_3_reg_2404;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln17_fu_1106_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast15_fu_1127_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln39_fu_1253_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln40_fu_1261_p1;
wire   [63:0] zext_ln41_fu_1283_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire   [12:0] ptr_2_addr_gep_fu_452_p3;
wire   [12:0] ptr_1_addr_gep_fu_461_p3;
wire   [12:0] ptr_0_addr_gep_fu_470_p3;
wire   [12:0] ptr_3_addr_gep_fu_479_p3;
wire   [12:0] ptr_2_addr_1_gep_fu_488_p3;
wire   [12:0] ptr_1_addr_1_gep_fu_497_p3;
wire   [12:0] ptr_0_addr_1_gep_fu_506_p3;
wire   [12:0] ptr_3_addr_1_gep_fu_515_p3;
wire   [63:0] zext_ln40_1_fu_1477_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire   [12:0] ptr_2_addr_4_gep_fu_620_p3;
wire   [12:0] ptr_1_addr_4_gep_fu_628_p3;
wire   [12:0] ptr_3_addr_4_gep_fu_636_p3;
wire   [12:0] ptr_0_addr_4_gep_fu_644_p3;
wire   [12:0] ptr_2_addr_3_gep_fu_652_p3;
wire   [12:0] ptr_1_addr_3_gep_fu_660_p3;
wire   [12:0] ptr_3_addr_3_gep_fu_668_p3;
wire   [12:0] ptr_0_addr_3_gep_fu_676_p3;
wire   [63:0] zext_ln40_2_fu_1613_p1;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire   [12:0] ptr_2_addr_7_gep_fu_780_p3;
wire   [12:0] ptr_3_addr_7_gep_fu_788_p3;
wire   [12:0] ptr_0_addr_7_gep_fu_796_p3;
wire   [12:0] ptr_1_addr_7_gep_fu_804_p3;
wire   [12:0] ptr_2_addr_6_gep_fu_812_p3;
wire   [12:0] ptr_3_addr_6_gep_fu_820_p3;
wire   [12:0] ptr_0_addr_6_gep_fu_828_p3;
wire   [12:0] ptr_1_addr_6_gep_fu_836_p3;
wire   [63:0] zext_ln40_3_fu_1765_p1;
wire   [12:0] ptr_3_addr_10_gep_fu_940_p3;
wire   [12:0] ptr_1_addr_10_gep_fu_948_p3;
wire   [12:0] ptr_0_addr_10_gep_fu_956_p3;
wire   [12:0] ptr_2_addr_10_gep_fu_964_p3;
wire   [12:0] ptr_3_addr_9_gep_fu_972_p3;
wire   [12:0] ptr_1_addr_9_gep_fu_980_p3;
wire   [12:0] ptr_0_addr_9_gep_fu_988_p3;
wire   [12:0] ptr_2_addr_9_gep_fu_996_p3;
reg   [7:0] a_idx_2_fu_116;
wire   [7:0] add_ln29_3_fu_1197_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_2_load;
reg   [7:0] b_idx_1_fu_120;
reg   [7:0] ap_sig_allocacmp_b_idx_1_load;
reg   [12:0] indvar_flatten_fu_124;
wire   [12:0] add_ln28_fu_1028_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg    SEQA_0_ce0_local;
reg    SEQA_1_ce0_local;
reg    SEQA_2_ce0_local;
reg    SEQA_3_ce0_local;
reg    SEQB_0_ce0_local;
reg    SEQB_1_ce0_local;
reg    SEQB_2_ce0_local;
reg    SEQB_3_ce0_local;
reg    M_0_ce0_local;
reg   [12:0] M_0_address0_local;
reg    M_0_ce1_local;
reg   [12:0] M_0_address1_local;
reg    M_0_we1_local;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
wire   [31:0] max_3_fu_1823_p3;
reg    M_1_ce0_local;
reg   [12:0] M_1_address0_local;
reg    M_1_ce1_local;
reg   [12:0] M_1_address1_local;
reg    M_1_we1_local;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
reg    M_2_ce0_local;
reg   [12:0] M_2_address0_local;
reg    M_2_ce1_local;
reg   [12:0] M_2_address1_local;
reg    M_2_we1_local;
reg    M_2_we0_local;
reg   [31:0] M_2_d0_local;
reg    M_3_ce0_local;
reg   [12:0] M_3_address0_local;
reg    M_3_ce1_local;
reg   [12:0] M_3_address1_local;
reg    M_3_we1_local;
reg    M_3_we0_local;
reg   [31:0] M_3_d0_local;
reg    ptr_2_we0_local;
reg   [7:0] ptr_2_d0_local;
reg    ptr_2_ce0_local;
reg   [12:0] ptr_2_address0_local;
reg    ptr_1_we0_local;
reg   [7:0] ptr_1_d0_local;
reg    ptr_1_ce0_local;
reg   [12:0] ptr_1_address0_local;
reg    ptr_0_we0_local;
reg   [7:0] ptr_0_d0_local;
reg    ptr_0_ce0_local;
reg   [12:0] ptr_0_address0_local;
reg    ptr_3_we0_local;
reg   [7:0] ptr_3_d0_local;
reg    ptr_3_ce0_local;
reg   [12:0] ptr_3_address0_local;
wire   [0:0] icmp_ln29_fu_1040_p2;
wire   [7:0] add_ln28_1_fu_1054_p2;
wire   [6:0] trunc_ln28_1_fu_1072_p1;
wire   [6:0] empty_fu_1076_p2;
wire   [4:0] lshr_ln17_1_fu_1096_p4;
wire   [14:0] p_shl_fu_1134_p3;
wire   [14:0] b_idx_1_cast4_fu_1124_p1;
wire   [14:0] zext_ln29_fu_1153_p1;
wire   [14:0] add_ln39_fu_1161_p2;
wire   [14:0] add_ln40_fu_1171_p2;
wire   [7:0] tmp_fu_1207_p9;
wire   [7:0] tmp_fu_1207_p11;
wire   [14:0] zext_ln30_fu_1230_p1;
wire   [14:0] add_ln39_1_fu_1238_p2;
wire   [12:0] lshr_ln2_fu_1243_p4;
wire   [14:0] add_ln41_fu_1268_p2;
wire   [12:0] lshr_ln4_fu_1273_p4;
wire   [31:0] tmp_3_fu_1306_p9;
wire    ap_block_pp0_stage3;
wire   [31:0] tmp_4_fu_1329_p9;
wire   [31:0] tmp_5_fu_1352_p9;
wire    ap_block_pp0_stage4;
wire   [31:0] select_ln39_fu_1375_p3;
wire   [0:0] icmp_ln43_fu_1397_p2;
wire   [31:0] select_ln39_1_fu_1411_p3;
wire   [0:0] icmp_ln43_1_fu_1423_p2;
wire   [14:0] zext_ln30_1_fu_1459_p1;
wire   [14:0] add_ln40_2_fu_1462_p2;
wire   [12:0] lshr_ln40_1_fu_1467_p4;
wire   [14:0] add_ln45_fu_1485_p2;
wire   [31:0] tmp_13_fu_1500_p9;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire   [0:0] icmp_ln43_2_fu_1533_p2;
wire   [31:0] select_ln39_2_fu_1547_p3;
wire   [0:0] icmp_ln43_3_fu_1559_p2;
wire   [14:0] zext_ln30_2_fu_1595_p1;
wire   [14:0] add_ln40_4_fu_1598_p2;
wire   [12:0] lshr_ln40_2_fu_1603_p4;
wire   [14:0] add_ln45_1_fu_1621_p2;
wire   [7:0] add_ln29_2_fu_1636_p2;
wire   [14:0] zext_ln30_3_fu_1641_p1;
wire   [14:0] add_ln40_6_fu_1645_p2;
wire   [14:0] add_ln45_2_fu_1660_p2;
wire   [31:0] tmp_14_fu_1675_p9;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire   [0:0] icmp_ln43_4_fu_1708_p2;
wire   [31:0] select_ln39_3_fu_1722_p3;
wire   [0:0] icmp_ln43_5_fu_1734_p2;
wire   [31:0] tmp_15_fu_1772_p9;
wire    ap_block_pp0_stage15;
wire   [0:0] icmp_ln43_6_fu_1805_p2;
wire   [0:0] icmp_ln43_7_fu_1819_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
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
wire   [1:0] tmp_fu_1207_p1;
wire  signed [1:0] tmp_fu_1207_p3;
wire  signed [1:0] tmp_fu_1207_p5;
wire   [1:0] tmp_fu_1207_p7;
wire  signed [1:0] tmp_3_fu_1306_p1;
wire  signed [1:0] tmp_3_fu_1306_p3;
wire   [1:0] tmp_3_fu_1306_p5;
wire   [1:0] tmp_3_fu_1306_p7;
wire   [1:0] tmp_4_fu_1329_p1;
wire  signed [1:0] tmp_4_fu_1329_p3;
wire  signed [1:0] tmp_4_fu_1329_p5;
wire   [1:0] tmp_4_fu_1329_p7;
wire   [1:0] tmp_5_fu_1352_p1;
wire  signed [1:0] tmp_5_fu_1352_p3;
wire  signed [1:0] tmp_5_fu_1352_p5;
wire   [1:0] tmp_5_fu_1352_p7;
wire   [1:0] tmp_13_fu_1500_p1;
wire   [1:0] tmp_13_fu_1500_p3;
wire  signed [1:0] tmp_13_fu_1500_p5;
wire  signed [1:0] tmp_13_fu_1500_p7;
wire  signed [1:0] tmp_14_fu_1675_p1;
wire   [1:0] tmp_14_fu_1675_p3;
wire   [1:0] tmp_14_fu_1675_p5;
wire  signed [1:0] tmp_14_fu_1675_p7;
wire  signed [1:0] tmp_15_fu_1772_p1;
wire  signed [1:0] tmp_15_fu_1772_p3;
wire   [1:0] tmp_15_fu_1772_p5;
wire   [1:0] tmp_15_fu_1772_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_idx_2_fu_116 = 8'd0;
#0 b_idx_1_fu_120 = 8'd0;
#0 indvar_flatten_fu_124 = 13'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U9(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.def(tmp_fu_1207_p9),.sel(trunc_ln28_reg_1888),.dout(tmp_fu_1207_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U10(.din0(M_0_q0),.din1(M_1_q0),.din2(M_2_q0),.din3(M_3_q0),.def(tmp_3_fu_1306_p9),.sel(trunc_ln39_reg_1971),.dout(tmp_3_fu_1306_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U11(.din0(M_0_q1),.din1(M_1_q1),.din2(M_2_q1),.din3(M_3_q1),.def(tmp_4_fu_1329_p9),.sel(trunc_ln39_reg_1971),.dout(tmp_4_fu_1329_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U12(.din0(M_0_q0),.din1(M_1_q0),.din2(M_2_q0),.din3(M_3_q0),.def(tmp_5_fu_1352_p9),.sel(trunc_ln39_reg_1971),.dout(tmp_5_fu_1352_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U13(.din0(M_0_q1),.din1(M_1_q1),.din2(M_2_q1),.din3(M_3_q1),.def(tmp_13_fu_1500_p9),.sel(trunc_ln39_reg_1971),.dout(tmp_13_fu_1500_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U14(.din0(M_0_q1),.din1(M_1_q1),.din2(M_2_q1),.din3(M_3_q1),.def(tmp_14_fu_1675_p9),.sel(trunc_ln39_reg_1971),.dout(tmp_14_fu_1675_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U15(.din0(M_0_q1),.din1(M_1_q1),.din2(M_2_q1),.din3(M_3_q1),.def(tmp_15_fu_1772_p9),.sel(trunc_ln39_reg_1971),.dout(tmp_15_fu_1772_p11));
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_fu_116 <= 8'd1;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_2_fu_116 <= add_ln29_3_fu_1197_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_1022_p2 == 1'd0))) begin
            b_idx_1_fu_120 <= select_ln28_fu_1060_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            b_idx_1_fu_120 <= 8'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_1022_p2 == 1'd0))) begin
            indvar_flatten_fu_124 <= add_ln28_fu_1028_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_124 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_0_load_reg_1966 <= SEQA_0_q0;
        SEQA_1_load_reg_1991 <= SEQA_1_q0;
        SEQA_2_load_reg_1996 <= SEQA_2_q0;
        SEQA_3_load_reg_2001 <= SEQA_3_q0;
        add_ln30_reg_1961 <= add_ln30_fu_1156_p2;
        empty_18_reg_1945 <= empty_18_fu_1141_p2;
        empty_19_reg_1953 <= empty_19_fu_1147_p2;
        icmp_ln46_3_reg_2400 <= icmp_ln46_3_fu_1840_p2;
        icmp_ln48_3_reg_2404 <= icmp_ln48_3_fu_1845_p2;
        lshr_ln3_reg_1981 <= {{add_ln40_fu_1171_p2[14:2]}};
        lshr_ln5_reg_1986 <= {{add_ln39_fu_1161_p2[14:2]}};
        trunc_ln39_reg_1971 <= trunc_ln39_fu_1167_p1;
        trunc_ln39_reg_1971_pp0_iter1_reg <= trunc_ln39_reg_1971;
        zext_ln45_3_reg_2384[12 : 0] <= zext_ln45_3_fu_1833_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln29_1_reg_2246 <= add_ln29_1_fu_1590_p2;
        icmp_ln46_1_reg_2238 <= icmp_ln46_1_fu_1580_p2;
        icmp_ln48_1_reg_2242 <= icmp_ln48_1_fu_1585_p2;
        max_1_reg_2217 <= max_1_fu_1563_p3;
        zext_ln45_1_reg_2222[12 : 0] <= zext_ln45_1_fu_1573_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln29_reg_2159 <= add_ln29_fu_1454_p2;
        icmp_ln46_reg_2151 <= icmp_ln46_fu_1444_p2;
        icmp_ln48_reg_2155 <= icmp_ln48_fu_1449_p2;
        max_reg_2130 <= max_fu_1427_p3;
        zext_ln45_reg_2135[12 : 0] <= zext_ln45_fu_1437_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln28_reg_1871 <= icmp_ln28_fu_1022_p2;
        left_3_reg_2373 <= left_3_fu_1800_p2;
        select_ln17_reg_1875 <= select_ln17_fu_1046_p3;
        select_ln28_reg_1882 <= select_ln28_fu_1060_p3;
        select_ln43_6_reg_2378 <= select_ln43_6_fu_1811_p3;
        tmp_s_reg_1893 <= {{empty_fu_1076_p2[6:2]}};
        trunc_ln28_reg_1888 <= trunc_ln28_fu_1068_p1;
        trunc_ln29_reg_1898 <= trunc_ln29_fu_1092_p1;
        up_3_reg_2368 <= up_3_fu_1795_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln30_1_reg_2071 <= icmp_ln30_1_fu_1291_p2;
        icmp_ln30_2_reg_2076 <= icmp_ln30_2_fu_1296_p2;
        icmp_ln30_3_reg_2081 <= icmp_ln30_3_fu_1301_p2;
        icmp_ln30_reg_2006 <= icmp_ln30_fu_1233_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        icmp_ln46_2_reg_2335 <= icmp_ln46_2_fu_1755_p2;
        icmp_ln48_2_reg_2339 <= icmp_ln48_2_fu_1760_p2;
        max_2_reg_2314 <= max_2_fu_1738_p3;
        zext_ln45_2_reg_2319[12 : 0] <= zext_ln45_2_fu_1748_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        left_1_reg_2200 <= left_1_fu_1528_p2;
        select_ln43_2_reg_2205 <= select_ln43_2_fu_1539_p3;
        up_1_reg_2195 <= up_1_fu_1523_p2;
        up_left_2_reg_2211 <= up_left_2_fu_1554_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        left_2_reg_2297 <= left_2_fu_1703_p2;
        select_ln43_4_reg_2302 <= select_ln43_4_fu_1714_p3;
        up_2_reg_2292 <= up_2_fu_1698_p2;
        up_left_3_reg_2308 <= up_left_3_fu_1729_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        left_reg_2113 <= left_fu_1392_p2;
        select_ln43_reg_2118 <= select_ln43_fu_1403_p3;
        up_left_1_reg_2124 <= up_left_1_fu_1418_p2;
        up_left_reg_2102 <= up_left_fu_1382_p2;
        up_reg_2108 <= up_fu_1387_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        lshr_ln40_3_reg_2276 <= {{add_ln40_6_fu_1645_p2[14:2]}};
        lshr_ln45_2_reg_2271 <= {{add_ln45_1_fu_1621_p2[14:2]}};
        lshr_ln45_3_reg_2281 <= {{add_ln45_2_fu_1660_p2[14:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln45_1_reg_2184 <= {{add_ln45_fu_1485_p2[14:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        tmp_13_reg_2189 <= tmp_13_fu_1500_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        tmp_14_reg_2286 <= tmp_14_fu_1675_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tmp_15_reg_2363 <= tmp_15_fu_1772_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_3_reg_2086 <= tmp_3_fu_1306_p11;
        tmp_4_reg_2091 <= tmp_4_fu_1329_p11;
        tmp_5_reg_2097 <= tmp_5_fu_1352_p11;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_address0_local = zext_ln45_3_fu_1833_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        M_0_address0_local = zext_ln45_2_fu_1748_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        M_0_address0_local = zext_ln45_1_fu_1573_p1;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_address0_local = zext_ln41_fu_1283_p1;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_address0_local = zext_ln39_fu_1253_p1;
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            M_0_address1_local = zext_ln40_3_fu_1765_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            M_0_address1_local = zext_ln40_2_fu_1613_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_0_address1_local = zext_ln40_1_fu_1477_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_0_address1_local = zext_ln45_fu_1437_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address1_local = zext_ln40_fu_1261_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_d0_local = max_3_fu_1823_p3;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        M_0_d0_local = max_2_fu_1738_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        M_0_d0_local = max_1_fu_1563_p3;
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_0_we1_local = 1'b1;
    end else begin
        M_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln45_3_fu_1833_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        M_1_address0_local = zext_ln45_2_fu_1748_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        M_1_address0_local = zext_ln45_1_fu_1573_p1;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln41_fu_1283_p1;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln39_fu_1253_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            M_1_address1_local = zext_ln40_3_fu_1765_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            M_1_address1_local = zext_ln40_2_fu_1613_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_1_address1_local = zext_ln40_1_fu_1477_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_1_address1_local = zext_ln45_fu_1437_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_address1_local = zext_ln40_fu_1261_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_d0_local = max_3_fu_1823_p3;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        M_1_d0_local = max_2_fu_1738_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        M_1_d0_local = max_1_fu_1563_p3;
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_1_we1_local = 1'b1;
    end else begin
        M_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_address0_local = zext_ln45_3_fu_1833_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        M_2_address0_local = zext_ln45_2_fu_1748_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        M_2_address0_local = zext_ln45_1_fu_1573_p1;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_address0_local = zext_ln41_fu_1283_p1;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_address0_local = zext_ln39_fu_1253_p1;
    end else begin
        M_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            M_2_address1_local = zext_ln40_3_fu_1765_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            M_2_address1_local = zext_ln40_2_fu_1613_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_2_address1_local = zext_ln40_1_fu_1477_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_2_address1_local = zext_ln45_fu_1437_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_2_address1_local = zext_ln40_fu_1261_p1;
        end else begin
            M_2_address1_local = 'bx;
        end
    end else begin
        M_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_2_ce0_local = 1'b1;
    end else begin
        M_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_2_ce1_local = 1'b1;
    end else begin
        M_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_d0_local = max_3_fu_1823_p3;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        M_2_d0_local = max_2_fu_1738_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        M_2_d0_local = max_1_fu_1563_p3;
    end else begin
        M_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_2_we1_local = 1'b1;
    end else begin
        M_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address0_local = zext_ln45_3_fu_1833_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        M_3_address0_local = zext_ln45_2_fu_1748_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        M_3_address0_local = zext_ln45_1_fu_1573_p1;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_address0_local = zext_ln41_fu_1283_p1;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_address0_local = zext_ln39_fu_1253_p1;
    end else begin
        M_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            M_3_address1_local = zext_ln40_3_fu_1765_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            M_3_address1_local = zext_ln40_2_fu_1613_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            M_3_address1_local = zext_ln40_1_fu_1477_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            M_3_address1_local = zext_ln45_fu_1437_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_3_address1_local = zext_ln40_fu_1261_p1;
        end else begin
            M_3_address1_local = 'bx;
        end
    end else begin
        M_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_3_ce0_local = 1'b1;
    end else begin
        M_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_3_ce1_local = 1'b1;
    end else begin
        M_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_d0_local = max_3_fu_1823_p3;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        M_3_d0_local = max_2_fu_1738_p3;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        M_3_d0_local = max_1_fu_1563_p3;
    end else begin
        M_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        M_3_we1_local = 1'b1;
    end else begin
        M_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_2_ce0_local = 1'b1;
    end else begin
        SEQA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_3_ce0_local = 1'b1;
    end else begin
        SEQA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_2_ce0_local = 1'b1;
    end else begin
        SEQB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_3_ce0_local = 1'b1;
    end else begin
        SEQB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1871 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_a_idx_2_load = 8'd1;
    end else begin
        ap_sig_allocacmp_a_idx_2_load = a_idx_2_fu_116;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_idx_1_load = 8'd1;
    end else begin
        ap_sig_allocacmp_b_idx_1_load = b_idx_1_fu_120;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_0_address0_local = ptr_0_addr_9_gep_fu_988_p3;
    end else if (((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_0_address0_local = ptr_0_addr_10_gep_fu_956_p3;
    end else if (((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_0_address0_local = zext_ln45_3_reg_2384;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ptr_0_address0_local = ptr_0_addr_6_gep_fu_828_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ptr_0_address0_local = ptr_0_addr_7_gep_fu_796_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ptr_0_address0_local = zext_ln45_2_reg_2319;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_0_address0_local = ptr_0_addr_3_gep_fu_676_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_0_address0_local = ptr_0_addr_4_gep_fu_644_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_0_address0_local = zext_ln45_1_reg_2222;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_0_address0_local = ptr_0_addr_1_gep_fu_506_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_0_address0_local = ptr_0_addr_gep_fu_470_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_0_address0_local = zext_ln45_reg_2135;
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0)& (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0)& (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_0_d0_local = 8'd60;
    end else if ((((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_0_d0_local = 8'd94;
    end else if ((((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_0_d0_local = 8'd92;
    end else begin
        ptr_0_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0)& (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0)& (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_0_we0_local = 1'b1;
    end else begin
        ptr_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_1_address0_local = ptr_1_addr_9_gep_fu_980_p3;
    end else if (((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_1_address0_local = ptr_1_addr_10_gep_fu_948_p3;
    end else if (((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_1_address0_local = zext_ln45_3_reg_2384;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ptr_1_address0_local = ptr_1_addr_6_gep_fu_836_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ptr_1_address0_local = ptr_1_addr_7_gep_fu_804_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ptr_1_address0_local = zext_ln45_2_reg_2319;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_1_address0_local = ptr_1_addr_3_gep_fu_660_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_1_address0_local = ptr_1_addr_4_gep_fu_628_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_1_address0_local = zext_ln45_1_reg_2222;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_1_address0_local = ptr_1_addr_1_gep_fu_497_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_1_address0_local = ptr_1_addr_gep_fu_461_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_1_address0_local = zext_ln45_reg_2135;
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0)& (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0)& (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_1_d0_local = 8'd60;
    end else if ((((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_1_d0_local = 8'd94;
    end else if ((((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_1_d0_local = 8'd92;
    end else begin
        ptr_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0)& (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0)& (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_1_we0_local = 1'b1;
    end else begin
        ptr_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_2_address0_local = ptr_2_addr_9_gep_fu_996_p3;
    end else if (((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_2_address0_local = ptr_2_addr_10_gep_fu_964_p3;
    end else if (((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_2_address0_local = zext_ln45_3_reg_2384;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ptr_2_address0_local = ptr_2_addr_6_gep_fu_812_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ptr_2_address0_local = ptr_2_addr_7_gep_fu_780_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ptr_2_address0_local = zext_ln45_2_reg_2319;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_2_address0_local = ptr_2_addr_3_gep_fu_652_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_2_address0_local = ptr_2_addr_4_gep_fu_620_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_2_address0_local = zext_ln45_1_reg_2222;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_2_address0_local = ptr_2_addr_1_gep_fu_488_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_2_address0_local = ptr_2_addr_gep_fu_452_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_2_address0_local = zext_ln45_reg_2135;
    end else begin
        ptr_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0)& (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0)& (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_2_ce0_local = 1'b1;
    end else begin
        ptr_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_2_d0_local = 8'd60;
    end else if ((((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_2_d0_local = 8'd94;
    end else if ((((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_2_d0_local = 8'd92;
    end else begin
        ptr_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0)& (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0)& (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_2_we0_local = 1'b1;
    end else begin
        ptr_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_3_address0_local = ptr_3_addr_9_gep_fu_972_p3;
    end else if (((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_3_address0_local = ptr_3_addr_10_gep_fu_940_p3;
    end else if (((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ptr_3_address0_local = zext_ln45_3_reg_2384;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ptr_3_address0_local = ptr_3_addr_6_gep_fu_820_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ptr_3_address0_local = ptr_3_addr_7_gep_fu_788_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ptr_3_address0_local = zext_ln45_2_reg_2319;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_3_address0_local = ptr_3_addr_3_gep_fu_668_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_3_address0_local = ptr_3_addr_4_gep_fu_636_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ptr_3_address0_local = zext_ln45_1_reg_2222;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_3_address0_local = ptr_3_addr_1_gep_fu_515_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_3_address0_local = ptr_3_addr_gep_fu_479_p3;
    end else if (((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ptr_3_address0_local = zext_ln45_reg_2135;
    end else begin
        ptr_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0)& (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0)& (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_3_ce0_local = 1'b1;
    end else begin
        ptr_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_3_d0_local = 8'd60;
    end else if ((((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_3_d0_local = 8'd94;
    end else if ((((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        ptr_3_d0_local = 8'd92;
    end else begin
        ptr_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln48_3_reg_2404 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_3_reg_2404 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln46_2_reg_2335 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd1) & (icmp_ln46_2_reg_2335 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (icmp_ln48_2_reg_2339 == 1'd0) & (icmp_ln46_2_reg_2335 == 1'd0)& (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln46_1_reg_2238 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd1) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln48_1_reg_2242 == 1'd0) & (icmp_ln46_1_reg_2238 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1971 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln46_reg_2151 == 1'd1) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0)& (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd1) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((icmp_ln28_reg_1871 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln48_reg_2155 == 1'd0) & (icmp_ln46_reg_2151 == 1'd0) & (trunc_ln39_reg_1971 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_3_reg_2400 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1971_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_3_we0_local = 1'b1;
    end else begin
        ptr_3_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_0_address0 = M_0_address0_local;
assign M_0_address1 = M_0_address1_local;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = M_0_d0_local;
assign M_0_d1 = max_fu_1427_p3;
assign M_0_we0 = M_0_we0_local;
assign M_0_we1 = M_0_we1_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = M_1_address1_local;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = M_1_d0_local;
assign M_1_d1 = max_fu_1427_p3;
assign M_1_we0 = M_1_we0_local;
assign M_1_we1 = M_1_we1_local;
assign M_2_address0 = M_2_address0_local;
assign M_2_address1 = M_2_address1_local;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_ce1 = M_2_ce1_local;
assign M_2_d0 = M_2_d0_local;
assign M_2_d1 = max_fu_1427_p3;
assign M_2_we0 = M_2_we0_local;
assign M_2_we1 = M_2_we1_local;
assign M_3_address0 = M_3_address0_local;
assign M_3_address1 = M_3_address1_local;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_ce1 = M_3_ce1_local;
assign M_3_d0 = M_3_d0_local;
assign M_3_d1 = max_fu_1427_p3;
assign M_3_we0 = M_3_we0_local;
assign M_3_we1 = M_3_we1_local;
assign SEQA_0_address0 = zext_ln17_fu_1106_p1;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = zext_ln17_fu_1106_p1;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQA_2_address0 = zext_ln17_fu_1106_p1;
assign SEQA_2_ce0 = SEQA_2_ce0_local;
assign SEQA_3_address0 = zext_ln17_fu_1106_p1;
assign SEQA_3_ce0 = SEQA_3_ce0_local;
assign SEQB_0_address0 = p_cast15_fu_1127_p1;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = p_cast15_fu_1127_p1;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign SEQB_2_address0 = p_cast15_fu_1127_p1;
assign SEQB_2_ce0 = SEQB_2_ce0_local;
assign SEQB_3_address0 = p_cast15_fu_1127_p1;
assign SEQB_3_ce0 = SEQB_3_ce0_local;
assign add_ln28_1_fu_1054_p2 = (ap_sig_allocacmp_b_idx_1_load + 8'd1);
assign add_ln28_fu_1028_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln29_1_fu_1590_p2 = (trunc_ln29_reg_1898 + 7'd2);
assign add_ln29_2_fu_1636_p2 = (select_ln17_reg_1875 + 8'd3);
assign add_ln29_3_fu_1197_p2 = (select_ln17_reg_1875 + 8'd4);
assign add_ln29_fu_1454_p2 = (trunc_ln29_reg_1898 + 7'd1);
assign add_ln30_fu_1156_p2 = ($signed(trunc_ln29_reg_1898) + $signed(7'd127));
assign add_ln39_1_fu_1238_p2 = (zext_ln30_fu_1230_p1 + empty_19_reg_1953);
assign add_ln39_fu_1161_p2 = (zext_ln29_fu_1153_p1 + empty_18_fu_1141_p2);
assign add_ln40_2_fu_1462_p2 = (zext_ln30_1_fu_1459_p1 + empty_19_reg_1953);
assign add_ln40_4_fu_1598_p2 = (zext_ln30_2_fu_1595_p1 + empty_19_reg_1953);
assign add_ln40_6_fu_1645_p2 = (zext_ln30_3_fu_1641_p1 + empty_19_reg_1953);
assign add_ln40_fu_1171_p2 = (zext_ln29_fu_1153_p1 + empty_19_fu_1147_p2);
assign add_ln41_fu_1268_p2 = (zext_ln30_fu_1230_p1 + empty_18_reg_1945);
assign add_ln45_1_fu_1621_p2 = (zext_ln30_2_fu_1595_p1 + empty_18_reg_1945);
assign add_ln45_2_fu_1660_p2 = (zext_ln30_3_fu_1641_p1 + empty_18_reg_1945);
assign add_ln45_fu_1485_p2 = (zext_ln30_1_fu_1459_p1 + empty_18_reg_1945);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign b_idx_1_cast4_fu_1124_p1 = select_ln28_reg_1882;
assign empty_18_fu_1141_p2 = (p_shl_fu_1134_p3 + b_idx_1_cast4_fu_1124_p1);
assign empty_19_fu_1147_p2 = ($signed(empty_18_fu_1141_p2) + $signed(15'd32639));
assign empty_fu_1076_p2 = ($signed(trunc_ln28_1_fu_1072_p1) + $signed(7'd127));
assign icmp_ln28_fu_1022_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1040_p2 = ((ap_sig_allocacmp_a_idx_2_load < 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_1291_p2 = ((SEQA_1_load_reg_1991 == tmp_fu_1207_p11) ? 1'b1 : 1'b0);
assign icmp_ln30_2_fu_1296_p2 = ((SEQA_2_load_reg_1996 == tmp_fu_1207_p11) ? 1'b1 : 1'b0);
assign icmp_ln30_3_fu_1301_p2 = ((SEQA_3_load_reg_2001 == tmp_fu_1207_p11) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_1233_p2 = ((SEQA_0_load_reg_1966 == tmp_fu_1207_p11) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_1423_p2 = (($signed(up_left_reg_2102) > $signed(select_ln43_reg_2118)) ? 1'b1 : 1'b0);
assign icmp_ln43_2_fu_1533_p2 = (($signed(up_1_fu_1523_p2) > $signed(left_1_fu_1528_p2)) ? 1'b1 : 1'b0);
assign icmp_ln43_3_fu_1559_p2 = (($signed(up_left_1_reg_2124) > $signed(select_ln43_2_reg_2205)) ? 1'b1 : 1'b0);
assign icmp_ln43_4_fu_1708_p2 = (($signed(up_2_fu_1698_p2) > $signed(left_2_fu_1703_p2)) ? 1'b1 : 1'b0);
assign icmp_ln43_5_fu_1734_p2 = (($signed(up_left_2_reg_2211) > $signed(select_ln43_4_reg_2302)) ? 1'b1 : 1'b0);
assign icmp_ln43_6_fu_1805_p2 = (($signed(up_3_fu_1795_p2) > $signed(left_3_fu_1800_p2)) ? 1'b1 : 1'b0);
assign icmp_ln43_7_fu_1819_p2 = (($signed(up_left_3_reg_2308) > $signed(select_ln43_6_reg_2378)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_1397_p2 = (($signed(up_fu_1387_p2) > $signed(left_fu_1392_p2)) ? 1'b1 : 1'b0);
assign icmp_ln46_1_fu_1580_p2 = ((max_1_fu_1563_p3 == left_1_reg_2200) ? 1'b1 : 1'b0);
assign icmp_ln46_2_fu_1755_p2 = ((max_2_fu_1738_p3 == left_2_reg_2297) ? 1'b1 : 1'b0);
assign icmp_ln46_3_fu_1840_p2 = ((max_3_fu_1823_p3 == left_3_reg_2373) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_1444_p2 = ((max_fu_1427_p3 == left_reg_2113) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_1585_p2 = ((max_1_fu_1563_p3 == up_1_reg_2195) ? 1'b1 : 1'b0);
assign icmp_ln48_2_fu_1760_p2 = ((max_2_fu_1738_p3 == up_2_reg_2292) ? 1'b1 : 1'b0);
assign icmp_ln48_3_fu_1845_p2 = ((max_3_fu_1823_p3 == up_3_reg_2368) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_1449_p2 = ((max_fu_1427_p3 == up_reg_2108) ? 1'b1 : 1'b0);
assign left_1_fu_1528_p2 = ($signed(max_reg_2130) + $signed(32'd4294967295));
assign left_2_fu_1703_p2 = ($signed(max_1_reg_2217) + $signed(32'd4294967295));
assign left_3_fu_1800_p2 = ($signed(max_2_reg_2314) + $signed(32'd4294967295));
assign left_fu_1392_p2 = ($signed(tmp_5_reg_2097) + $signed(32'd4294967295));
assign lshr_ln17_1_fu_1096_p4 = {{select_ln17_fu_1046_p3[6:2]}};
assign lshr_ln2_fu_1243_p4 = {{add_ln39_1_fu_1238_p2[14:2]}};
assign lshr_ln40_1_fu_1467_p4 = {{add_ln40_2_fu_1462_p2[14:2]}};
assign lshr_ln40_2_fu_1603_p4 = {{add_ln40_4_fu_1598_p2[14:2]}};
assign lshr_ln4_fu_1273_p4 = {{add_ln41_fu_1268_p2[14:2]}};
assign max_1_fu_1563_p3 = ((icmp_ln43_3_fu_1559_p2[0:0] == 1'b1) ? up_left_1_reg_2124 : select_ln43_2_reg_2205);
assign max_2_fu_1738_p3 = ((icmp_ln43_5_fu_1734_p2[0:0] == 1'b1) ? up_left_2_reg_2211 : select_ln43_4_reg_2302);
assign max_3_fu_1823_p3 = ((icmp_ln43_7_fu_1819_p2[0:0] == 1'b1) ? up_left_3_reg_2308 : select_ln43_6_reg_2378);
assign max_fu_1427_p3 = ((icmp_ln43_1_fu_1423_p2[0:0] == 1'b1) ? up_left_reg_2102 : select_ln43_reg_2118);
assign p_cast15_fu_1127_p1 = tmp_s_reg_1893;
assign p_shl_fu_1134_p3 = {{select_ln28_reg_1882}, {7'd0}};
assign ptr_0_addr_10_gep_fu_956_p3 = zext_ln45_3_reg_2384;
assign ptr_0_addr_1_gep_fu_506_p3 = zext_ln45_reg_2135;
assign ptr_0_addr_3_gep_fu_676_p3 = zext_ln45_1_reg_2222;
assign ptr_0_addr_4_gep_fu_644_p3 = zext_ln45_1_reg_2222;
assign ptr_0_addr_6_gep_fu_828_p3 = zext_ln45_2_reg_2319;
assign ptr_0_addr_7_gep_fu_796_p3 = zext_ln45_2_reg_2319;
assign ptr_0_addr_9_gep_fu_988_p3 = zext_ln45_3_reg_2384;
assign ptr_0_addr_gep_fu_470_p3 = zext_ln45_reg_2135;
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_0_d0 = ptr_0_d0_local;
assign ptr_0_we0 = ptr_0_we0_local;
assign ptr_1_addr_10_gep_fu_948_p3 = zext_ln45_3_reg_2384;
assign ptr_1_addr_1_gep_fu_497_p3 = zext_ln45_reg_2135;
assign ptr_1_addr_3_gep_fu_660_p3 = zext_ln45_1_reg_2222;
assign ptr_1_addr_4_gep_fu_628_p3 = zext_ln45_1_reg_2222;
assign ptr_1_addr_6_gep_fu_836_p3 = zext_ln45_2_reg_2319;
assign ptr_1_addr_7_gep_fu_804_p3 = zext_ln45_2_reg_2319;
assign ptr_1_addr_9_gep_fu_980_p3 = zext_ln45_3_reg_2384;
assign ptr_1_addr_gep_fu_461_p3 = zext_ln45_reg_2135;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_1_d0 = ptr_1_d0_local;
assign ptr_1_we0 = ptr_1_we0_local;
assign ptr_2_addr_10_gep_fu_964_p3 = zext_ln45_3_reg_2384;
assign ptr_2_addr_1_gep_fu_488_p3 = zext_ln45_reg_2135;
assign ptr_2_addr_3_gep_fu_652_p3 = zext_ln45_1_reg_2222;
assign ptr_2_addr_4_gep_fu_620_p3 = zext_ln45_1_reg_2222;
assign ptr_2_addr_6_gep_fu_812_p3 = zext_ln45_2_reg_2319;
assign ptr_2_addr_7_gep_fu_780_p3 = zext_ln45_2_reg_2319;
assign ptr_2_addr_9_gep_fu_996_p3 = zext_ln45_3_reg_2384;
assign ptr_2_addr_gep_fu_452_p3 = zext_ln45_reg_2135;
assign ptr_2_address0 = ptr_2_address0_local;
assign ptr_2_ce0 = ptr_2_ce0_local;
assign ptr_2_d0 = ptr_2_d0_local;
assign ptr_2_we0 = ptr_2_we0_local;
assign ptr_3_addr_10_gep_fu_940_p3 = zext_ln45_3_reg_2384;
assign ptr_3_addr_1_gep_fu_515_p3 = zext_ln45_reg_2135;
assign ptr_3_addr_3_gep_fu_668_p3 = zext_ln45_1_reg_2222;
assign ptr_3_addr_4_gep_fu_636_p3 = zext_ln45_1_reg_2222;
assign ptr_3_addr_6_gep_fu_820_p3 = zext_ln45_2_reg_2319;
assign ptr_3_addr_7_gep_fu_788_p3 = zext_ln45_2_reg_2319;
assign ptr_3_addr_9_gep_fu_972_p3 = zext_ln45_3_reg_2384;
assign ptr_3_addr_gep_fu_479_p3 = zext_ln45_reg_2135;
assign ptr_3_address0 = ptr_3_address0_local;
assign ptr_3_ce0 = ptr_3_ce0_local;
assign ptr_3_d0 = ptr_3_d0_local;
assign ptr_3_we0 = ptr_3_we0_local;
assign select_ln17_fu_1046_p3 = ((icmp_ln29_fu_1040_p2[0:0] == 1'b1) ? ap_sig_allocacmp_a_idx_2_load : 8'd1);
assign select_ln28_fu_1060_p3 = ((icmp_ln29_fu_1040_p2[0:0] == 1'b1) ? ap_sig_allocacmp_b_idx_1_load : add_ln28_1_fu_1054_p2);
assign select_ln39_1_fu_1411_p3 = ((icmp_ln30_1_reg_2071[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_2_fu_1547_p3 = ((icmp_ln30_2_reg_2076[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_3_fu_1722_p3 = ((icmp_ln30_3_reg_2081[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_fu_1375_p3 = ((icmp_ln30_reg_2006[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln43_2_fu_1539_p3 = ((icmp_ln43_2_fu_1533_p2[0:0] == 1'b1) ? up_1_fu_1523_p2 : left_1_fu_1528_p2);
assign select_ln43_4_fu_1714_p3 = ((icmp_ln43_4_fu_1708_p2[0:0] == 1'b1) ? up_2_fu_1698_p2 : left_2_fu_1703_p2);
assign select_ln43_6_fu_1811_p3 = ((icmp_ln43_6_fu_1805_p2[0:0] == 1'b1) ? up_3_fu_1795_p2 : left_3_fu_1800_p2);
assign select_ln43_fu_1403_p3 = ((icmp_ln43_fu_1397_p2[0:0] == 1'b1) ? up_fu_1387_p2 : left_fu_1392_p2);
assign tmp_13_fu_1500_p9 = 'bx;
assign tmp_14_fu_1675_p9 = 'bx;
assign tmp_15_fu_1772_p9 = 'bx;
assign tmp_3_fu_1306_p9 = 'bx;
assign tmp_4_fu_1329_p9 = 'bx;
assign tmp_5_fu_1352_p9 = 'bx;
assign tmp_fu_1207_p9 = 'bx;
assign trunc_ln28_1_fu_1072_p1 = select_ln28_fu_1060_p3[6:0];
assign trunc_ln28_fu_1068_p1 = select_ln28_fu_1060_p3[1:0];
assign trunc_ln29_fu_1092_p1 = select_ln17_fu_1046_p3[6:0];
assign trunc_ln39_fu_1167_p1 = add_ln39_fu_1161_p2[1:0];
assign up_1_fu_1523_p2 = ($signed(tmp_13_reg_2189) + $signed(32'd4294967295));
assign up_2_fu_1698_p2 = ($signed(tmp_14_reg_2286) + $signed(32'd4294967295));
assign up_3_fu_1795_p2 = ($signed(tmp_15_reg_2363) + $signed(32'd4294967295));
assign up_fu_1387_p2 = ($signed(tmp_4_reg_2091) + $signed(32'd4294967295));
assign up_left_1_fu_1418_p2 = (select_ln39_1_fu_1411_p3 + tmp_4_reg_2091);
assign up_left_2_fu_1554_p2 = (select_ln39_2_fu_1547_p3 + tmp_13_reg_2189);
assign up_left_3_fu_1729_p2 = (select_ln39_3_fu_1722_p3 + tmp_14_reg_2286);
assign up_left_fu_1382_p2 = (tmp_3_reg_2086 + select_ln39_fu_1375_p3);
assign zext_ln17_fu_1106_p1 = lshr_ln17_1_fu_1096_p4;
assign zext_ln29_fu_1153_p1 = select_ln17_reg_1875;
assign zext_ln30_1_fu_1459_p1 = add_ln29_reg_2159;
assign zext_ln30_2_fu_1595_p1 = add_ln29_1_reg_2246;
assign zext_ln30_3_fu_1641_p1 = add_ln29_2_fu_1636_p2;
assign zext_ln30_fu_1230_p1 = add_ln30_reg_1961;
assign zext_ln39_fu_1253_p1 = lshr_ln2_fu_1243_p4;
assign zext_ln40_1_fu_1477_p1 = lshr_ln40_1_fu_1467_p4;
assign zext_ln40_2_fu_1613_p1 = lshr_ln40_2_fu_1603_p4;
assign zext_ln40_3_fu_1765_p1 = lshr_ln40_3_reg_2276;
assign zext_ln40_fu_1261_p1 = lshr_ln3_reg_1981;
assign zext_ln41_fu_1283_p1 = lshr_ln4_fu_1273_p4;
assign zext_ln45_1_fu_1573_p1 = lshr_ln45_1_reg_2184;
assign zext_ln45_2_fu_1748_p1 = lshr_ln45_2_reg_2271;
assign zext_ln45_3_fu_1833_p1 = lshr_ln45_3_reg_2281;
assign zext_ln45_fu_1437_p1 = lshr_ln5_reg_1986;
always @ (posedge ap_clk) begin
    zext_ln45_reg_2135[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln45_1_reg_2222[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln45_2_reg_2319[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln45_3_reg_2384[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 