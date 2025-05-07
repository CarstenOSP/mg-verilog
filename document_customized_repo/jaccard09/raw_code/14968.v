module needwun_needwun_Pipeline_fill_out_fill_in (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ptr_0_address0,ptr_0_ce0,ptr_0_we0,ptr_0_d0,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_q0,M_0_address1,M_0_ce1,M_0_q1,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_q0,M_1_address1,M_1_ce1,M_1_q1,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_2_q0,M_2_address1,M_2_ce1,M_2_q1,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_3_q0,M_3_address1,M_3_ce1,M_3_q1,M_4_address0,M_4_ce0,M_4_we0,M_4_d0,M_4_q0,M_4_address1,M_4_ce1,M_4_q1,M_5_address0,M_5_ce0,M_5_we0,M_5_d0,M_5_q0,M_5_address1,M_5_ce1,M_5_q1,M_6_address0,M_6_ce0,M_6_we0,M_6_d0,M_6_q0,M_6_address1,M_6_ce1,M_6_q1,M_7_address0,M_7_ce0,M_7_we0,M_7_d0,M_7_q0,M_7_address1,M_7_ce1,M_7_q1,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,SEQB_2_address0,SEQB_2_ce0,SEQB_2_q0,SEQB_3_address0,SEQB_3_ce0,SEQB_3_q0,SEQB_4_address0,SEQB_4_ce0,SEQB_4_q0,SEQB_5_address0,SEQB_5_ce0,SEQB_5_q0,SEQB_6_address0,SEQB_6_ce0,SEQB_6_q0,SEQB_7_address0,SEQB_7_ce0,SEQB_7_q0,ptr_7_address0,ptr_7_ce0,ptr_7_we0,ptr_7_d0,ptr_6_address0,ptr_6_ce0,ptr_6_we0,ptr_6_d0,ptr_5_address0,ptr_5_ce0,ptr_5_we0,ptr_5_d0,ptr_4_address0,ptr_4_ce0,ptr_4_we0,ptr_4_d0,ptr_3_address0,ptr_3_ce0,ptr_3_we0,ptr_3_d0,ptr_2_address0,ptr_2_ce0,ptr_2_we0,ptr_2_d0,ptr_1_address0,ptr_1_ce0,ptr_1_we0,ptr_1_d0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,SEQA_2_address0,SEQA_2_ce0,SEQA_2_q0,SEQA_3_address0,SEQA_3_ce0,SEQA_3_q0,SEQA_4_address0,SEQA_4_ce0,SEQA_4_q0,SEQA_5_address0,SEQA_5_ce0,SEQA_5_q0,SEQA_6_address0,SEQA_6_ce0,SEQA_6_q0,SEQA_7_address0,SEQA_7_ce0,SEQA_7_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] ptr_0_address0;
output   ptr_0_ce0;
output   ptr_0_we0;
output  [7:0] ptr_0_d0;
output  [11:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
input  [31:0] M_0_q0;
output  [11:0] M_0_address1;
output   M_0_ce1;
input  [31:0] M_0_q1;
output  [11:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
input  [31:0] M_1_q0;
output  [11:0] M_1_address1;
output   M_1_ce1;
input  [31:0] M_1_q1;
output  [11:0] M_2_address0;
output   M_2_ce0;
output   M_2_we0;
output  [31:0] M_2_d0;
input  [31:0] M_2_q0;
output  [11:0] M_2_address1;
output   M_2_ce1;
input  [31:0] M_2_q1;
output  [11:0] M_3_address0;
output   M_3_ce0;
output   M_3_we0;
output  [31:0] M_3_d0;
input  [31:0] M_3_q0;
output  [11:0] M_3_address1;
output   M_3_ce1;
input  [31:0] M_3_q1;
output  [11:0] M_4_address0;
output   M_4_ce0;
output   M_4_we0;
output  [31:0] M_4_d0;
input  [31:0] M_4_q0;
output  [11:0] M_4_address1;
output   M_4_ce1;
input  [31:0] M_4_q1;
output  [11:0] M_5_address0;
output   M_5_ce0;
output   M_5_we0;
output  [31:0] M_5_d0;
input  [31:0] M_5_q0;
output  [11:0] M_5_address1;
output   M_5_ce1;
input  [31:0] M_5_q1;
output  [11:0] M_6_address0;
output   M_6_ce0;
output   M_6_we0;
output  [31:0] M_6_d0;
input  [31:0] M_6_q0;
output  [11:0] M_6_address1;
output   M_6_ce1;
input  [31:0] M_6_q1;
output  [11:0] M_7_address0;
output   M_7_ce0;
output   M_7_we0;
output  [31:0] M_7_d0;
input  [31:0] M_7_q0;
output  [11:0] M_7_address1;
output   M_7_ce1;
input  [31:0] M_7_q1;
output  [3:0] SEQB_0_address0;
output   SEQB_0_ce0;
input  [7:0] SEQB_0_q0;
output  [3:0] SEQB_1_address0;
output   SEQB_1_ce0;
input  [7:0] SEQB_1_q0;
output  [3:0] SEQB_2_address0;
output   SEQB_2_ce0;
input  [7:0] SEQB_2_q0;
output  [3:0] SEQB_3_address0;
output   SEQB_3_ce0;
input  [7:0] SEQB_3_q0;
output  [3:0] SEQB_4_address0;
output   SEQB_4_ce0;
input  [7:0] SEQB_4_q0;
output  [3:0] SEQB_5_address0;
output   SEQB_5_ce0;
input  [7:0] SEQB_5_q0;
output  [3:0] SEQB_6_address0;
output   SEQB_6_ce0;
input  [7:0] SEQB_6_q0;
output  [3:0] SEQB_7_address0;
output   SEQB_7_ce0;
input  [7:0] SEQB_7_q0;
output  [11:0] ptr_7_address0;
output   ptr_7_ce0;
output   ptr_7_we0;
output  [7:0] ptr_7_d0;
output  [11:0] ptr_6_address0;
output   ptr_6_ce0;
output   ptr_6_we0;
output  [7:0] ptr_6_d0;
output  [11:0] ptr_5_address0;
output   ptr_5_ce0;
output   ptr_5_we0;
output  [7:0] ptr_5_d0;
output  [11:0] ptr_4_address0;
output   ptr_4_ce0;
output   ptr_4_we0;
output  [7:0] ptr_4_d0;
output  [11:0] ptr_3_address0;
output   ptr_3_ce0;
output   ptr_3_we0;
output  [7:0] ptr_3_d0;
output  [11:0] ptr_2_address0;
output   ptr_2_ce0;
output   ptr_2_we0;
output  [7:0] ptr_2_d0;
output  [11:0] ptr_1_address0;
output   ptr_1_ce0;
output   ptr_1_we0;
output  [7:0] ptr_1_d0;
output  [3:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
output  [3:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
output  [3:0] SEQA_2_address0;
output   SEQA_2_ce0;
input  [7:0] SEQA_2_q0;
output  [3:0] SEQA_3_address0;
output   SEQA_3_ce0;
input  [7:0] SEQA_3_q0;
output  [3:0] SEQA_4_address0;
output   SEQA_4_ce0;
input  [7:0] SEQA_4_q0;
output  [3:0] SEQA_5_address0;
output   SEQA_5_ce0;
input  [7:0] SEQA_5_q0;
output  [3:0] SEQA_6_address0;
output   SEQA_6_ce0;
input  [7:0] SEQA_6_q0;
output  [3:0] SEQA_7_address0;
output   SEQA_7_ce0;
input  [7:0] SEQA_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln28_reg_2073;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
wire   [0:0] icmp_ln28_fu_1292_p2;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] select_ln17_fu_1316_p3;
reg   [7:0] select_ln17_reg_2077;
wire   [7:0] select_ln28_fu_1330_p3;
reg   [7:0] select_ln28_reg_2084;
wire   [2:0] trunc_ln28_fu_1338_p1;
reg   [2:0] trunc_ln28_reg_2090;
reg   [3:0] tmp_s_reg_2095;
wire   [6:0] trunc_ln29_fu_1362_p1;
reg   [6:0] trunc_ln29_reg_2100;
wire   [2:0] trunc_ln29_1_fu_1366_p1;
reg   [2:0] trunc_ln29_1_reg_2105;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [14:0] empty_18_fu_1423_p2;
reg   [14:0] empty_18_reg_2191;
wire   [14:0] empty_19_fu_1429_p2;
reg   [14:0] empty_19_reg_2198;
wire   [6:0] add_ln30_fu_1435_p2;
reg   [6:0] add_ln30_reg_2205;
wire   [7:0] tmp_2_fu_1440_p19;
reg   [7:0] tmp_2_reg_2210;
wire   [7:0] tmp_13_fu_1479_p19;
reg   [7:0] tmp_13_reg_2215;
wire   [0:0] icmp_ln30_fu_1573_p2;
reg   [0:0] icmp_ln30_reg_2220;
wire    ap_block_pp0_stage2_11001;
wire   [2:0] trunc_ln39_fu_1583_p1;
reg   [2:0] trunc_ln39_reg_2225;
reg   [11:0] lshr_ln3_reg_2233;
reg   [11:0] lshr_ln6_reg_2318;
wire   [0:0] icmp_ln30_1_fu_1675_p2;
reg   [0:0] icmp_ln30_1_reg_2323;
reg   [11:0] lshr_ln40_1_reg_2328;
reg   [11:0] lshr_ln45_1_reg_2333;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_4_fu_1721_p19;
reg   [31:0] tmp_4_reg_2378;
wire   [31:0] tmp_5_fu_1760_p19;
reg   [31:0] tmp_5_reg_2384;
wire   [31:0] tmp_3_fu_1810_p19;
reg   [31:0] tmp_3_reg_2429;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] up_fu_1849_p2;
reg   [31:0] up_reg_2434;
wire   [31:0] left_fu_1854_p2;
reg   [31:0] left_reg_2441;
wire   [31:0] up_left_1_fu_1866_p2;
reg   [31:0] up_left_1_reg_2448;
wire   [31:0] tmp_14_fu_1871_p19;
reg   [31:0] tmp_14_reg_2454;
wire   [31:0] max_fu_1938_p3;
reg   [31:0] max_reg_2459;
wire    ap_block_pp0_stage5_11001;
wire   [0:0] icmp_ln46_fu_1981_p2;
wire   [0:0] icmp_ln48_fu_1985_p2;
wire   [31:0] up_1_fu_1989_p2;
reg   [31:0] up_1_reg_2482;
wire   [31:0] left_1_fu_1994_p2;
reg   [31:0] left_1_reg_2487;
wire   [31:0] select_ln43_2_fu_2005_p3;
reg   [31:0] select_ln43_2_reg_2492;
wire   [63:0] zext_ln45_1_fu_2031_p1;
reg   [63:0] zext_ln45_1_reg_2498;
wire   [0:0] icmp_ln46_1_fu_2042_p2;
reg   [0:0] icmp_ln46_1_reg_2526;
wire   [0:0] icmp_ln48_1_fu_2047_p2;
reg   [0:0] icmp_ln48_1_reg_2530;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln30_1_fu_1380_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] p_cast16_fu_1405_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln40_fu_1617_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_1644_p1;
wire   [63:0] zext_ln39_fu_1710_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln40_1_fu_1799_p1;
wire   [63:0] zext_ln45_fu_1946_p1;
wire   [11:0] ptr_6_addr_gep_fu_874_p3;
wire   [11:0] ptr_5_addr_gep_fu_883_p3;
wire   [11:0] ptr_4_addr_gep_fu_892_p3;
wire   [11:0] ptr_3_addr_gep_fu_901_p3;
wire   [11:0] ptr_2_addr_gep_fu_910_p3;
wire   [11:0] ptr_1_addr_gep_fu_919_p3;
wire   [11:0] ptr_0_addr_gep_fu_928_p3;
wire   [11:0] ptr_7_addr_gep_fu_937_p3;
wire   [11:0] ptr_6_addr_1_gep_fu_946_p3;
wire   [11:0] ptr_5_addr_1_gep_fu_955_p3;
wire   [11:0] ptr_4_addr_1_gep_fu_964_p3;
wire   [11:0] ptr_3_addr_1_gep_fu_973_p3;
wire   [11:0] ptr_2_addr_1_gep_fu_982_p3;
wire   [11:0] ptr_1_addr_1_gep_fu_991_p3;
wire   [11:0] ptr_0_addr_1_gep_fu_1000_p3;
wire   [11:0] ptr_7_addr_1_gep_fu_1009_p3;
wire   [11:0] ptr_6_addr_4_gep_fu_1146_p3;
wire   [11:0] ptr_5_addr_4_gep_fu_1154_p3;
wire   [11:0] ptr_4_addr_4_gep_fu_1162_p3;
wire   [11:0] ptr_3_addr_4_gep_fu_1170_p3;
wire   [11:0] ptr_2_addr_4_gep_fu_1178_p3;
wire   [11:0] ptr_1_addr_4_gep_fu_1186_p3;
wire   [11:0] ptr_7_addr_4_gep_fu_1194_p3;
wire   [11:0] ptr_0_addr_4_gep_fu_1202_p3;
wire   [11:0] ptr_6_addr_3_gep_fu_1210_p3;
wire   [11:0] ptr_5_addr_3_gep_fu_1218_p3;
wire   [11:0] ptr_4_addr_3_gep_fu_1226_p3;
wire   [11:0] ptr_3_addr_3_gep_fu_1234_p3;
wire   [11:0] ptr_2_addr_3_gep_fu_1242_p3;
wire   [11:0] ptr_1_addr_3_gep_fu_1250_p3;
wire   [11:0] ptr_7_addr_3_gep_fu_1258_p3;
wire   [11:0] ptr_0_addr_3_gep_fu_1266_p3;
reg   [7:0] a_idx_2_fu_150;
wire   [7:0] add_ln29_1_fu_1518_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_2_load;
reg   [7:0] b_idx_1_fu_154;
reg   [7:0] ap_sig_allocacmp_b_idx_1_load;
reg   [13:0] indvar_flatten_fu_158;
wire   [13:0] add_ln28_fu_1298_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten_load;
reg    SEQA_0_ce0_local;
reg    SEQA_1_ce0_local;
reg    SEQA_2_ce0_local;
reg    SEQA_3_ce0_local;
reg    SEQA_4_ce0_local;
reg    SEQA_5_ce0_local;
reg    SEQA_6_ce0_local;
reg    SEQA_7_ce0_local;
reg    SEQB_0_ce0_local;
reg    SEQB_1_ce0_local;
reg    SEQB_2_ce0_local;
reg    SEQB_3_ce0_local;
reg    SEQB_4_ce0_local;
reg    SEQB_5_ce0_local;
reg    SEQB_6_ce0_local;
reg    SEQB_7_ce0_local;
reg    M_0_ce1_local;
reg   [11:0] M_0_address1_local;
reg    M_0_ce0_local;
reg   [11:0] M_0_address0_local;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
wire   [31:0] max_1_fu_2017_p3;
reg    M_1_ce1_local;
reg   [11:0] M_1_address1_local;
reg    M_1_ce0_local;
reg   [11:0] M_1_address0_local;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
reg    M_2_ce1_local;
reg   [11:0] M_2_address1_local;
reg    M_2_ce0_local;
reg   [11:0] M_2_address0_local;
reg    M_2_we0_local;
reg   [31:0] M_2_d0_local;
reg    M_3_ce1_local;
reg   [11:0] M_3_address1_local;
reg    M_3_ce0_local;
reg   [11:0] M_3_address0_local;
reg    M_3_we0_local;
reg   [31:0] M_3_d0_local;
reg    M_4_ce1_local;
reg   [11:0] M_4_address1_local;
reg    M_4_ce0_local;
reg   [11:0] M_4_address0_local;
reg    M_4_we0_local;
reg   [31:0] M_4_d0_local;
reg    M_5_ce1_local;
reg   [11:0] M_5_address1_local;
reg    M_5_ce0_local;
reg   [11:0] M_5_address0_local;
reg    M_5_we0_local;
reg   [31:0] M_5_d0_local;
reg    M_6_ce1_local;
reg   [11:0] M_6_address1_local;
reg    M_6_ce0_local;
reg   [11:0] M_6_address0_local;
reg    M_6_we0_local;
reg   [31:0] M_6_d0_local;
reg    M_7_ce1_local;
reg   [11:0] M_7_address1_local;
reg    M_7_ce0_local;
reg   [11:0] M_7_address0_local;
reg    M_7_we0_local;
reg   [31:0] M_7_d0_local;
reg    ptr_6_we0_local;
reg   [7:0] ptr_6_d0_local;
reg    ptr_6_ce0_local;
reg   [11:0] ptr_6_address0_local;
reg    ptr_5_we0_local;
reg   [7:0] ptr_5_d0_local;
reg    ptr_5_ce0_local;
reg   [11:0] ptr_5_address0_local;
reg    ptr_4_we0_local;
reg   [7:0] ptr_4_d0_local;
reg    ptr_4_ce0_local;
reg   [11:0] ptr_4_address0_local;
reg    ptr_3_we0_local;
reg   [7:0] ptr_3_d0_local;
reg    ptr_3_ce0_local;
reg   [11:0] ptr_3_address0_local;
reg    ptr_2_we0_local;
reg   [7:0] ptr_2_d0_local;
reg    ptr_2_ce0_local;
reg   [11:0] ptr_2_address0_local;
reg    ptr_1_we0_local;
reg   [7:0] ptr_1_d0_local;
reg    ptr_1_ce0_local;
reg   [11:0] ptr_1_address0_local;
reg    ptr_0_we0_local;
reg   [7:0] ptr_0_d0_local;
reg    ptr_0_ce0_local;
reg   [11:0] ptr_0_address0_local;
reg    ptr_7_we0_local;
reg   [7:0] ptr_7_d0_local;
reg    ptr_7_ce0_local;
reg   [11:0] ptr_7_address0_local;
wire   [0:0] icmp_ln29_fu_1310_p2;
wire   [7:0] add_ln28_1_fu_1324_p2;
wire   [6:0] trunc_ln28_1_fu_1342_p1;
wire   [6:0] empty_fu_1346_p2;
wire   [3:0] lshr_ln2_fu_1370_p4;
wire   [14:0] p_shl_fu_1416_p3;
wire   [14:0] b_idx_1_cast4_fu_1402_p1;
wire   [7:0] tmp_2_fu_1440_p17;
wire   [7:0] tmp_13_fu_1479_p17;
wire   [7:0] tmp_fu_1528_p17;
wire   [7:0] tmp_fu_1528_p19;
wire   [14:0] zext_ln29_fu_1567_p1;
wire   [14:0] add_ln39_fu_1578_p2;
wire   [14:0] zext_ln30_fu_1570_p1;
wire   [14:0] add_ln39_1_fu_1587_p2;
wire   [14:0] add_ln40_fu_1602_p2;
wire   [11:0] lshr_ln4_fu_1607_p4;
wire   [14:0] add_ln41_fu_1629_p2;
wire   [11:0] lshr_ln5_fu_1634_p4;
wire   [7:0] add_ln29_fu_1666_p2;
wire   [14:0] zext_ln30_2_fu_1671_p1;
wire   [14:0] add_ln40_2_fu_1680_p2;
wire   [14:0] add_ln45_fu_1695_p2;
wire   [31:0] tmp_4_fu_1721_p17;
wire   [31:0] tmp_5_fu_1760_p17;
wire   [31:0] tmp_3_fu_1810_p17;
wire    ap_block_pp0_stage4;
wire   [31:0] select_ln39_1_fu_1859_p3;
wire   [31:0] tmp_14_fu_1871_p17;
wire    ap_block_pp0_stage5;
wire   [31:0] select_ln39_fu_1910_p3;
wire   [0:0] icmp_ln43_fu_1922_p2;
wire   [31:0] up_left_fu_1917_p2;
wire   [31:0] select_ln43_fu_1926_p3;
wire   [0:0] icmp_ln43_1_fu_1932_p2;
wire   [0:0] icmp_ln43_2_fu_1999_p2;
wire   [0:0] icmp_ln43_3_fu_2013_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1588;
reg    ap_condition_1592;
reg    ap_condition_1597;
reg    ap_condition_1601;
reg    ap_condition_1605;
reg    ap_condition_1609;
reg    ap_condition_1613;
reg    ap_condition_1617;
reg    ap_condition_1624;
reg    ap_condition_1630;
reg    ap_condition_1635;
reg    ap_condition_1641;
reg    ap_condition_1647;
reg    ap_condition_1652;
reg    ap_condition_1656;
reg    ap_condition_1660;
reg    ap_condition_1664;
reg    ap_condition_1668;
reg    ap_condition_1672;
reg    ap_condition_1676;
reg    ap_condition_1680;
reg    ap_condition_1684;
reg    ap_condition_1688;
reg    ap_condition_1692;
reg    ap_condition_1696;
reg    ap_condition_1700;
reg    ap_condition_1704;
reg    ap_condition_1708;
reg    ap_condition_1712;
reg    ap_condition_1716;
reg    ap_condition_1720;
reg    ap_condition_1724;
reg    ap_condition_1728;
reg    ap_condition_1732;
reg    ap_condition_1736;
reg    ap_condition_1740;
reg    ap_condition_1744;
reg    ap_condition_1748;
reg    ap_condition_1752;
reg    ap_condition_1756;
reg    ap_condition_1760;
reg    ap_condition_1764;
reg    ap_condition_1768;
reg    ap_condition_1772;
reg    ap_condition_1776;
reg    ap_condition_1780;
reg    ap_condition_1784;
reg    ap_condition_1788;
reg    ap_condition_1792;
reg    ap_condition_1796;
reg    ap_condition_1800;
reg    ap_condition_1804;
reg    ap_condition_1808;
reg    ap_condition_1812;
reg    ap_condition_1816;
reg    ap_condition_1820;
wire   [2:0] tmp_2_fu_1440_p1;
wire   [2:0] tmp_2_fu_1440_p3;
wire   [2:0] tmp_2_fu_1440_p5;
wire  signed [2:0] tmp_2_fu_1440_p7;
wire  signed [2:0] tmp_2_fu_1440_p9;
wire  signed [2:0] tmp_2_fu_1440_p11;
wire  signed [2:0] tmp_2_fu_1440_p13;
wire   [2:0] tmp_2_fu_1440_p15;
wire   [2:0] tmp_13_fu_1479_p1;
wire   [2:0] tmp_13_fu_1479_p3;
wire   [2:0] tmp_13_fu_1479_p5;
wire   [2:0] tmp_13_fu_1479_p7;
wire  signed [2:0] tmp_13_fu_1479_p9;
wire  signed [2:0] tmp_13_fu_1479_p11;
wire  signed [2:0] tmp_13_fu_1479_p13;
wire  signed [2:0] tmp_13_fu_1479_p15;
wire   [2:0] tmp_fu_1528_p1;
wire   [2:0] tmp_fu_1528_p3;
wire   [2:0] tmp_fu_1528_p5;
wire  signed [2:0] tmp_fu_1528_p7;
wire  signed [2:0] tmp_fu_1528_p9;
wire  signed [2:0] tmp_fu_1528_p11;
wire  signed [2:0] tmp_fu_1528_p13;
wire   [2:0] tmp_fu_1528_p15;
wire   [2:0] tmp_4_fu_1721_p1;
wire   [2:0] tmp_4_fu_1721_p3;
wire   [2:0] tmp_4_fu_1721_p5;
wire  signed [2:0] tmp_4_fu_1721_p7;
wire  signed [2:0] tmp_4_fu_1721_p9;
wire  signed [2:0] tmp_4_fu_1721_p11;
wire  signed [2:0] tmp_4_fu_1721_p13;
wire   [2:0] tmp_4_fu_1721_p15;
wire   [2:0] tmp_5_fu_1760_p1;
wire   [2:0] tmp_5_fu_1760_p3;
wire   [2:0] tmp_5_fu_1760_p5;
wire  signed [2:0] tmp_5_fu_1760_p7;
wire  signed [2:0] tmp_5_fu_1760_p9;
wire  signed [2:0] tmp_5_fu_1760_p11;
wire  signed [2:0] tmp_5_fu_1760_p13;
wire   [2:0] tmp_5_fu_1760_p15;
wire   [2:0] tmp_3_fu_1810_p1;
wire   [2:0] tmp_3_fu_1810_p3;
wire  signed [2:0] tmp_3_fu_1810_p5;
wire  signed [2:0] tmp_3_fu_1810_p7;
wire  signed [2:0] tmp_3_fu_1810_p9;
wire  signed [2:0] tmp_3_fu_1810_p11;
wire   [2:0] tmp_3_fu_1810_p13;
wire   [2:0] tmp_3_fu_1810_p15;
wire   [2:0] tmp_14_fu_1871_p1;
wire   [2:0] tmp_14_fu_1871_p3;
wire   [2:0] tmp_14_fu_1871_p5;
wire   [2:0] tmp_14_fu_1871_p7;
wire  signed [2:0] tmp_14_fu_1871_p9;
wire  signed [2:0] tmp_14_fu_1871_p11;
wire  signed [2:0] tmp_14_fu_1871_p13;
wire  signed [2:0] tmp_14_fu_1871_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_idx_2_fu_150 = 8'd0;
#0 b_idx_1_fu_154 = 8'd0;
#0 indvar_flatten_fu_158 = 14'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 8 ),.CASE1( 3'h2 ),.din1_WIDTH( 8 ),.CASE2( 3'h3 ),.din2_WIDTH( 8 ),.CASE3( 3'h4 ),.din3_WIDTH( 8 ),.CASE4( 3'h5 ),.din4_WIDTH( 8 ),.CASE5( 3'h6 ),.din5_WIDTH( 8 ),.CASE6( 3'h7 ),.din6_WIDTH( 8 ),.CASE7( 3'h0 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U17(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.din4(SEQA_4_q0),.din5(SEQA_5_q0),.din6(SEQA_6_q0),.din7(SEQA_7_q0),.def(tmp_2_fu_1440_p17),.sel(trunc_ln29_1_reg_2105),.dout(tmp_2_fu_1440_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 8 ),.CASE1( 3'h1 ),.din1_WIDTH( 8 ),.CASE2( 3'h2 ),.din2_WIDTH( 8 ),.CASE3( 3'h3 ),.din3_WIDTH( 8 ),.CASE4( 3'h4 ),.din4_WIDTH( 8 ),.CASE5( 3'h5 ),.din5_WIDTH( 8 ),.CASE6( 3'h6 ),.din6_WIDTH( 8 ),.CASE7( 3'h7 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U18(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.din4(SEQA_4_q0),.din5(SEQA_5_q0),.din6(SEQA_6_q0),.din7(SEQA_7_q0),.def(tmp_13_fu_1479_p17),.sel(trunc_ln29_1_reg_2105),.dout(tmp_13_fu_1479_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 8 ),.CASE1( 3'h2 ),.din1_WIDTH( 8 ),.CASE2( 3'h3 ),.din2_WIDTH( 8 ),.CASE3( 3'h4 ),.din3_WIDTH( 8 ),.CASE4( 3'h5 ),.din4_WIDTH( 8 ),.CASE5( 3'h6 ),.din5_WIDTH( 8 ),.CASE6( 3'h7 ),.din6_WIDTH( 8 ),.CASE7( 3'h0 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U19(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.din4(SEQB_4_q0),.din5(SEQB_5_q0),.din6(SEQB_6_q0),.din7(SEQB_7_q0),.def(tmp_fu_1528_p17),.sel(trunc_ln28_reg_2090),.dout(tmp_fu_1528_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h3 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.CASE4( 3'h5 ),.din4_WIDTH( 32 ),.CASE5( 3'h6 ),.din5_WIDTH( 32 ),.CASE6( 3'h7 ),.din6_WIDTH( 32 ),.CASE7( 3'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U20(.din0(M_0_q1),.din1(M_1_q1),.din2(M_2_q1),.din3(M_3_q1),.din4(M_4_q1),.din5(M_5_q1),.din6(M_6_q1),.din7(M_7_q1),.def(tmp_4_fu_1721_p17),.sel(trunc_ln39_reg_2225),.dout(tmp_4_fu_1721_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h1 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h3 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.CASE4( 3'h5 ),.din4_WIDTH( 32 ),.CASE5( 3'h6 ),.din5_WIDTH( 32 ),.CASE6( 3'h7 ),.din6_WIDTH( 32 ),.CASE7( 3'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U21(.din0(M_0_q0),.din1(M_1_q0),.din2(M_2_q0),.din3(M_3_q0),.din4(M_4_q0),.din5(M_5_q0),.din6(M_6_q0),.din7(M_7_q0),.def(tmp_5_fu_1760_p17),.sel(trunc_ln39_reg_2225),.dout(tmp_5_fu_1760_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 32 ),.CASE1( 3'h3 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h5 ),.din3_WIDTH( 32 ),.CASE4( 3'h6 ),.din4_WIDTH( 32 ),.CASE5( 3'h7 ),.din5_WIDTH( 32 ),.CASE6( 3'h0 ),.din6_WIDTH( 32 ),.CASE7( 3'h1 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U22(.din0(M_0_q1),.din1(M_1_q1),.din2(M_2_q1),.din3(M_3_q1),.din4(M_4_q1),.din5(M_5_q1),.din6(M_6_q1),.din7(M_7_q1),.def(tmp_3_fu_1810_p17),.sel(trunc_ln39_reg_2225),.dout(tmp_3_fu_1810_p19));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U23(.din0(M_0_q1),.din1(M_1_q1),.din2(M_2_q1),.din3(M_3_q1),.din4(M_4_q1),.din5(M_5_q1),.din6(M_6_q1),.din7(M_7_q1),.def(tmp_14_fu_1871_p17),.sel(trunc_ln39_reg_2225),.dout(tmp_14_fu_1871_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_fu_150 <= 8'd1;
    end else if (((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_2_fu_150 <= add_ln29_1_fu_1518_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln28_fu_1292_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            b_idx_1_fu_154 <= select_ln28_fu_1330_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            b_idx_1_fu_154 <= 8'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln28_fu_1292_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_158 <= add_ln28_fu_1298_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_158 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln30_reg_2205 <= add_ln30_fu_1435_p2;
        empty_18_reg_2191 <= empty_18_fu_1423_p2;
        empty_19_reg_2198 <= empty_19_fu_1429_p2;
        icmp_ln46_1_reg_2526 <= icmp_ln46_1_fu_2042_p2;
        icmp_ln48_1_reg_2530 <= icmp_ln48_1_fu_2047_p2;
        tmp_13_reg_2215 <= tmp_13_fu_1479_p19;
        tmp_2_reg_2210 <= tmp_2_fu_1440_p19;
        zext_ln45_1_reg_2498[11 : 0] <= zext_ln45_1_fu_2031_p1[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln28_reg_2073 <= icmp_ln28_fu_1292_p2;
        left_1_reg_2487 <= left_1_fu_1994_p2;
        select_ln17_reg_2077 <= select_ln17_fu_1316_p3;
        select_ln28_reg_2084 <= select_ln28_fu_1330_p3;
        select_ln43_2_reg_2492 <= select_ln43_2_fu_2005_p3;
        tmp_s_reg_2095 <= {{empty_fu_1346_p2[6:3]}};
        trunc_ln28_reg_2090 <= trunc_ln28_fu_1338_p1;
        trunc_ln29_1_reg_2105 <= trunc_ln29_1_fu_1366_p1;
        trunc_ln29_reg_2100 <= trunc_ln29_fu_1362_p1;
        up_1_reg_2482 <= up_1_fu_1989_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln30_1_reg_2323 <= icmp_ln30_1_fu_1675_p2;
        icmp_ln30_reg_2220 <= icmp_ln30_fu_1573_p2;
        lshr_ln3_reg_2233 <= {{add_ln39_1_fu_1587_p2[14:3]}};
        lshr_ln40_1_reg_2328 <= {{add_ln40_2_fu_1680_p2[14:3]}};
        lshr_ln45_1_reg_2333 <= {{add_ln45_fu_1695_p2[14:3]}};
        lshr_ln6_reg_2318 <= {{add_ln39_fu_1578_p2[14:3]}};
        trunc_ln39_reg_2225 <= trunc_ln39_fu_1583_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        left_reg_2441 <= left_fu_1854_p2;
        tmp_14_reg_2454 <= tmp_14_fu_1871_p19;
        tmp_3_reg_2429 <= tmp_3_fu_1810_p19;
        up_left_1_reg_2448 <= up_left_1_fu_1866_p2;
        up_reg_2434 <= up_fu_1849_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        max_reg_2459 <= max_fu_1938_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_4_reg_2378 <= tmp_4_fu_1721_p19;
        tmp_5_reg_2384 <= tmp_5_fu_1760_p19;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_address0_local = zext_ln45_1_fu_2031_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_0_address0_local = zext_ln45_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_address0_local = zext_ln41_fu_1644_p1;
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1592)) begin
            M_0_address1_local = zext_ln40_1_fu_1799_p1;
        end else if ((1'b1 == ap_condition_1588)) begin
            M_0_address1_local = zext_ln39_fu_1710_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_0_address1_local = zext_ln40_fu_1617_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d0_local = max_1_fu_2017_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d0_local = max_reg_2459;
        end else begin
            M_0_d0_local = 'bx;
        end
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln45_1_fu_2031_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_address0_local = zext_ln45_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln41_fu_1644_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1601)) begin
            M_1_address1_local = zext_ln40_1_fu_1799_p1;
        end else if ((1'b1 == ap_condition_1597)) begin
            M_1_address1_local = zext_ln39_fu_1710_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_1_address1_local = zext_ln40_fu_1617_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_d0_local = max_1_fu_2017_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_d0_local = max_reg_2459;
        end else begin
            M_1_d0_local = 'bx;
        end
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_address0_local = zext_ln45_1_fu_2031_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_2_address0_local = zext_ln45_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_address0_local = zext_ln41_fu_1644_p1;
    end else begin
        M_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1588)) begin
            M_2_address1_local = zext_ln40_1_fu_1799_p1;
        end else if ((1'b1 == ap_condition_1605)) begin
            M_2_address1_local = zext_ln39_fu_1710_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_2_address1_local = zext_ln40_fu_1617_p1;
        end else begin
            M_2_address1_local = 'bx;
        end
    end else begin
        M_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_ce0_local = 1'b1;
    end else begin
        M_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_2_ce1_local = 1'b1;
    end else begin
        M_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_2_d0_local = max_1_fu_2017_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_2_d0_local = max_reg_2459;
        end else begin
            M_2_d0_local = 'bx;
        end
    end else begin
        M_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address0_local = zext_ln45_1_fu_2031_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_3_address0_local = zext_ln45_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_address0_local = zext_ln41_fu_1644_p1;
    end else begin
        M_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1597)) begin
            M_3_address1_local = zext_ln40_1_fu_1799_p1;
        end else if ((1'b1 == ap_condition_1609)) begin
            M_3_address1_local = zext_ln39_fu_1710_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_3_address1_local = zext_ln40_fu_1617_p1;
        end else begin
            M_3_address1_local = 'bx;
        end
    end else begin
        M_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_ce0_local = 1'b1;
    end else begin
        M_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_3_ce1_local = 1'b1;
    end else begin
        M_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_3_d0_local = max_1_fu_2017_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_3_d0_local = max_reg_2459;
        end else begin
            M_3_d0_local = 'bx;
        end
    end else begin
        M_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_4_address0_local = zext_ln45_1_fu_2031_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_4_address0_local = zext_ln45_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_4_address0_local = zext_ln41_fu_1644_p1;
    end else begin
        M_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1605)) begin
            M_4_address1_local = zext_ln40_1_fu_1799_p1;
        end else if ((1'b1 == ap_condition_1613)) begin
            M_4_address1_local = zext_ln39_fu_1710_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_4_address1_local = zext_ln40_fu_1617_p1;
        end else begin
            M_4_address1_local = 'bx;
        end
    end else begin
        M_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_4_ce0_local = 1'b1;
    end else begin
        M_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_4_ce1_local = 1'b1;
    end else begin
        M_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_4_d0_local = max_1_fu_2017_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_4_d0_local = max_reg_2459;
        end else begin
            M_4_d0_local = 'bx;
        end
    end else begin
        M_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_4_we0_local = 1'b1;
    end else begin
        M_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_5_address0_local = zext_ln45_1_fu_2031_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_5_address0_local = zext_ln45_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_5_address0_local = zext_ln41_fu_1644_p1;
    end else begin
        M_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1609)) begin
            M_5_address1_local = zext_ln40_1_fu_1799_p1;
        end else if ((1'b1 == ap_condition_1617)) begin
            M_5_address1_local = zext_ln39_fu_1710_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_5_address1_local = zext_ln40_fu_1617_p1;
        end else begin
            M_5_address1_local = 'bx;
        end
    end else begin
        M_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_5_ce0_local = 1'b1;
    end else begin
        M_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_5_ce1_local = 1'b1;
    end else begin
        M_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_5_d0_local = max_1_fu_2017_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_5_d0_local = max_reg_2459;
        end else begin
            M_5_d0_local = 'bx;
        end
    end else begin
        M_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_5_we0_local = 1'b1;
    end else begin
        M_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_6_address0_local = zext_ln45_1_fu_2031_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_6_address0_local = zext_ln45_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_6_address0_local = zext_ln41_fu_1644_p1;
    end else begin
        M_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1613)) begin
            M_6_address1_local = zext_ln40_1_fu_1799_p1;
        end else if ((1'b1 == ap_condition_1592)) begin
            M_6_address1_local = zext_ln39_fu_1710_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_6_address1_local = zext_ln40_fu_1617_p1;
        end else begin
            M_6_address1_local = 'bx;
        end
    end else begin
        M_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_6_ce0_local = 1'b1;
    end else begin
        M_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_6_ce1_local = 1'b1;
    end else begin
        M_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_6_d0_local = max_1_fu_2017_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_6_d0_local = max_reg_2459;
        end else begin
            M_6_d0_local = 'bx;
        end
    end else begin
        M_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_6_we0_local = 1'b1;
    end else begin
        M_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_7_address0_local = zext_ln45_1_fu_2031_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_7_address0_local = zext_ln45_fu_1946_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_7_address0_local = zext_ln41_fu_1644_p1;
    end else begin
        M_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1617)) begin
            M_7_address1_local = zext_ln40_1_fu_1799_p1;
        end else if ((1'b1 == ap_condition_1601)) begin
            M_7_address1_local = zext_ln39_fu_1710_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            M_7_address1_local = zext_ln40_fu_1617_p1;
        end else begin
            M_7_address1_local = 'bx;
        end
    end else begin
        M_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_7_ce0_local = 1'b1;
    end else begin
        M_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        M_7_ce1_local = 1'b1;
    end else begin
        M_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_7_d0_local = max_1_fu_2017_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_7_d0_local = max_reg_2459;
        end else begin
            M_7_d0_local = 'bx;
        end
    end else begin
        M_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_7_we0_local = 1'b1;
    end else begin
        M_7_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_4_ce0_local = 1'b1;
    end else begin
        SEQA_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_5_ce0_local = 1'b1;
    end else begin
        SEQA_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_6_ce0_local = 1'b1;
    end else begin
        SEQA_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        SEQA_7_ce0_local = 1'b1;
    end else begin
        SEQA_7_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_4_ce0_local = 1'b1;
    end else begin
        SEQB_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_5_ce0_local = 1'b1;
    end else begin
        SEQB_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_6_ce0_local = 1'b1;
    end else begin
        SEQB_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_7_ce0_local = 1'b1;
    end else begin
        SEQB_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_2073 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_a_idx_2_load = 8'd1;
    end else begin
        ap_sig_allocacmp_a_idx_2_load = a_idx_2_fu_150;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_idx_1_load = 8'd1;
    end else begin
        ap_sig_allocacmp_b_idx_1_load = b_idx_1_fu_154;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_158;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1652)) begin
            ptr_0_address0_local = ptr_0_addr_3_gep_fu_1266_p3;
        end else if ((1'b1 == ap_condition_1647)) begin
            ptr_0_address0_local = ptr_0_addr_4_gep_fu_1202_p3;
        end else if ((1'b1 == ap_condition_1641)) begin
            ptr_0_address0_local = zext_ln45_1_reg_2498;
        end else if ((1'b1 == ap_condition_1635)) begin
            ptr_0_address0_local = ptr_0_addr_1_gep_fu_1000_p3;
        end else if ((1'b1 == ap_condition_1630)) begin
            ptr_0_address0_local = ptr_0_addr_gep_fu_928_p3;
        end else if ((1'b1 == ap_condition_1624)) begin
            ptr_0_address0_local = zext_ln45_fu_1946_p1;
        end else begin
            ptr_0_address0_local = 'bx;
        end
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_0_d0_local = 8'd60;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_0_d0_local = 8'd94;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_0_d0_local = 8'd92;
    end else begin
        ptr_0_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_0_we0_local = 1'b1;
    end else begin
        ptr_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1676)) begin
            ptr_1_address0_local = ptr_1_addr_3_gep_fu_1250_p3;
        end else if ((1'b1 == ap_condition_1672)) begin
            ptr_1_address0_local = ptr_1_addr_4_gep_fu_1186_p3;
        end else if ((1'b1 == ap_condition_1668)) begin
            ptr_1_address0_local = zext_ln45_1_reg_2498;
        end else if ((1'b1 == ap_condition_1664)) begin
            ptr_1_address0_local = ptr_1_addr_1_gep_fu_991_p3;
        end else if ((1'b1 == ap_condition_1660)) begin
            ptr_1_address0_local = ptr_1_addr_gep_fu_919_p3;
        end else if ((1'b1 == ap_condition_1656)) begin
            ptr_1_address0_local = zext_ln45_fu_1946_p1;
        end else begin
            ptr_1_address0_local = 'bx;
        end
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_1_d0_local = 8'd60;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_1_d0_local = 8'd94;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_1_d0_local = 8'd92;
    end else begin
        ptr_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_1_we0_local = 1'b1;
    end else begin
        ptr_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1700)) begin
            ptr_2_address0_local = ptr_2_addr_3_gep_fu_1242_p3;
        end else if ((1'b1 == ap_condition_1696)) begin
            ptr_2_address0_local = ptr_2_addr_4_gep_fu_1178_p3;
        end else if ((1'b1 == ap_condition_1692)) begin
            ptr_2_address0_local = zext_ln45_1_reg_2498;
        end else if ((1'b1 == ap_condition_1688)) begin
            ptr_2_address0_local = ptr_2_addr_1_gep_fu_982_p3;
        end else if ((1'b1 == ap_condition_1684)) begin
            ptr_2_address0_local = ptr_2_addr_gep_fu_910_p3;
        end else if ((1'b1 == ap_condition_1680)) begin
            ptr_2_address0_local = zext_ln45_fu_1946_p1;
        end else begin
            ptr_2_address0_local = 'bx;
        end
    end else begin
        ptr_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_2_ce0_local = 1'b1;
    end else begin
        ptr_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_2_d0_local = 8'd60;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_2_d0_local = 8'd94;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_2_d0_local = 8'd92;
    end else begin
        ptr_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_2_we0_local = 1'b1;
    end else begin
        ptr_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1724)) begin
            ptr_3_address0_local = ptr_3_addr_3_gep_fu_1234_p3;
        end else if ((1'b1 == ap_condition_1720)) begin
            ptr_3_address0_local = ptr_3_addr_4_gep_fu_1170_p3;
        end else if ((1'b1 == ap_condition_1716)) begin
            ptr_3_address0_local = zext_ln45_1_reg_2498;
        end else if ((1'b1 == ap_condition_1712)) begin
            ptr_3_address0_local = ptr_3_addr_1_gep_fu_973_p3;
        end else if ((1'b1 == ap_condition_1708)) begin
            ptr_3_address0_local = ptr_3_addr_gep_fu_901_p3;
        end else if ((1'b1 == ap_condition_1704)) begin
            ptr_3_address0_local = zext_ln45_fu_1946_p1;
        end else begin
            ptr_3_address0_local = 'bx;
        end
    end else begin
        ptr_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_3_ce0_local = 1'b1;
    end else begin
        ptr_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_3_d0_local = 8'd60;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_3_d0_local = 8'd94;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_3_d0_local = 8'd92;
    end else begin
        ptr_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_3_we0_local = 1'b1;
    end else begin
        ptr_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1748)) begin
            ptr_4_address0_local = ptr_4_addr_3_gep_fu_1226_p3;
        end else if ((1'b1 == ap_condition_1744)) begin
            ptr_4_address0_local = ptr_4_addr_4_gep_fu_1162_p3;
        end else if ((1'b1 == ap_condition_1740)) begin
            ptr_4_address0_local = zext_ln45_1_reg_2498;
        end else if ((1'b1 == ap_condition_1736)) begin
            ptr_4_address0_local = ptr_4_addr_1_gep_fu_964_p3;
        end else if ((1'b1 == ap_condition_1732)) begin
            ptr_4_address0_local = ptr_4_addr_gep_fu_892_p3;
        end else if ((1'b1 == ap_condition_1728)) begin
            ptr_4_address0_local = zext_ln45_fu_1946_p1;
        end else begin
            ptr_4_address0_local = 'bx;
        end
    end else begin
        ptr_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_4_ce0_local = 1'b1;
    end else begin
        ptr_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_4_d0_local = 8'd60;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_4_d0_local = 8'd94;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_4_d0_local = 8'd92;
    end else begin
        ptr_4_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_4_we0_local = 1'b1;
    end else begin
        ptr_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1772)) begin
            ptr_5_address0_local = ptr_5_addr_3_gep_fu_1218_p3;
        end else if ((1'b1 == ap_condition_1768)) begin
            ptr_5_address0_local = ptr_5_addr_4_gep_fu_1154_p3;
        end else if ((1'b1 == ap_condition_1764)) begin
            ptr_5_address0_local = zext_ln45_1_reg_2498;
        end else if ((1'b1 == ap_condition_1760)) begin
            ptr_5_address0_local = ptr_5_addr_1_gep_fu_955_p3;
        end else if ((1'b1 == ap_condition_1756)) begin
            ptr_5_address0_local = ptr_5_addr_gep_fu_883_p3;
        end else if ((1'b1 == ap_condition_1752)) begin
            ptr_5_address0_local = zext_ln45_fu_1946_p1;
        end else begin
            ptr_5_address0_local = 'bx;
        end
    end else begin
        ptr_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_5_ce0_local = 1'b1;
    end else begin
        ptr_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_5_d0_local = 8'd60;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_5_d0_local = 8'd94;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_5_d0_local = 8'd92;
    end else begin
        ptr_5_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_5_we0_local = 1'b1;
    end else begin
        ptr_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1796)) begin
            ptr_6_address0_local = ptr_6_addr_3_gep_fu_1210_p3;
        end else if ((1'b1 == ap_condition_1792)) begin
            ptr_6_address0_local = ptr_6_addr_4_gep_fu_1146_p3;
        end else if ((1'b1 == ap_condition_1788)) begin
            ptr_6_address0_local = zext_ln45_1_reg_2498;
        end else if ((1'b1 == ap_condition_1784)) begin
            ptr_6_address0_local = ptr_6_addr_1_gep_fu_946_p3;
        end else if ((1'b1 == ap_condition_1780)) begin
            ptr_6_address0_local = ptr_6_addr_gep_fu_874_p3;
        end else if ((1'b1 == ap_condition_1776)) begin
            ptr_6_address0_local = zext_ln45_fu_1946_p1;
        end else begin
            ptr_6_address0_local = 'bx;
        end
    end else begin
        ptr_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_6_ce0_local = 1'b1;
    end else begin
        ptr_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_6_d0_local = 8'd60;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_6_d0_local = 8'd94;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_6_d0_local = 8'd92;
    end else begin
        ptr_6_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_6_we0_local = 1'b1;
    end else begin
        ptr_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_1820)) begin
            ptr_7_address0_local = ptr_7_addr_3_gep_fu_1258_p3;
        end else if ((1'b1 == ap_condition_1816)) begin
            ptr_7_address0_local = ptr_7_addr_4_gep_fu_1194_p3;
        end else if ((1'b1 == ap_condition_1812)) begin
            ptr_7_address0_local = zext_ln45_1_reg_2498;
        end else if ((1'b1 == ap_condition_1808)) begin
            ptr_7_address0_local = ptr_7_addr_1_gep_fu_1009_p3;
        end else if ((1'b1 == ap_condition_1804)) begin
            ptr_7_address0_local = ptr_7_addr_gep_fu_937_p3;
        end else if ((1'b1 == ap_condition_1800)) begin
            ptr_7_address0_local = zext_ln45_fu_1946_p1;
        end else begin
            ptr_7_address0_local = 'bx;
        end
    end else begin
        ptr_7_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_7_ce0_local = 1'b1;
    end else begin
        ptr_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_7_d0_local = 8'd60;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_7_d0_local = 8'd94;
    end else if ((((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_7_d0_local = 8'd92;
    end else begin
        ptr_7_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (trunc_ln39_reg_2225 == 3'd6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2== 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln39_reg_2225 == 3'd7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ptr_7_we0_local = 1'b1;
    end else begin
        ptr_7_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
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
assign M_0_we0 = M_0_we0_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = M_1_address1_local;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = M_1_d0_local;
assign M_1_we0 = M_1_we0_local;
assign M_2_address0 = M_2_address0_local;
assign M_2_address1 = M_2_address1_local;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_ce1 = M_2_ce1_local;
assign M_2_d0 = M_2_d0_local;
assign M_2_we0 = M_2_we0_local;
assign M_3_address0 = M_3_address0_local;
assign M_3_address1 = M_3_address1_local;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_ce1 = M_3_ce1_local;
assign M_3_d0 = M_3_d0_local;
assign M_3_we0 = M_3_we0_local;
assign M_4_address0 = M_4_address0_local;
assign M_4_address1 = M_4_address1_local;
assign M_4_ce0 = M_4_ce0_local;
assign M_4_ce1 = M_4_ce1_local;
assign M_4_d0 = M_4_d0_local;
assign M_4_we0 = M_4_we0_local;
assign M_5_address0 = M_5_address0_local;
assign M_5_address1 = M_5_address1_local;
assign M_5_ce0 = M_5_ce0_local;
assign M_5_ce1 = M_5_ce1_local;
assign M_5_d0 = M_5_d0_local;
assign M_5_we0 = M_5_we0_local;
assign M_6_address0 = M_6_address0_local;
assign M_6_address1 = M_6_address1_local;
assign M_6_ce0 = M_6_ce0_local;
assign M_6_ce1 = M_6_ce1_local;
assign M_6_d0 = M_6_d0_local;
assign M_6_we0 = M_6_we0_local;
assign M_7_address0 = M_7_address0_local;
assign M_7_address1 = M_7_address1_local;
assign M_7_ce0 = M_7_ce0_local;
assign M_7_ce1 = M_7_ce1_local;
assign M_7_d0 = M_7_d0_local;
assign M_7_we0 = M_7_we0_local;
assign SEQA_0_address0 = zext_ln30_1_fu_1380_p1;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = zext_ln30_1_fu_1380_p1;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQA_2_address0 = zext_ln30_1_fu_1380_p1;
assign SEQA_2_ce0 = SEQA_2_ce0_local;
assign SEQA_3_address0 = zext_ln30_1_fu_1380_p1;
assign SEQA_3_ce0 = SEQA_3_ce0_local;
assign SEQA_4_address0 = zext_ln30_1_fu_1380_p1;
assign SEQA_4_ce0 = SEQA_4_ce0_local;
assign SEQA_5_address0 = zext_ln30_1_fu_1380_p1;
assign SEQA_5_ce0 = SEQA_5_ce0_local;
assign SEQA_6_address0 = zext_ln30_1_fu_1380_p1;
assign SEQA_6_ce0 = SEQA_6_ce0_local;
assign SEQA_7_address0 = zext_ln30_1_fu_1380_p1;
assign SEQA_7_ce0 = SEQA_7_ce0_local;
assign SEQB_0_address0 = p_cast16_fu_1405_p1;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = p_cast16_fu_1405_p1;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign SEQB_2_address0 = p_cast16_fu_1405_p1;
assign SEQB_2_ce0 = SEQB_2_ce0_local;
assign SEQB_3_address0 = p_cast16_fu_1405_p1;
assign SEQB_3_ce0 = SEQB_3_ce0_local;
assign SEQB_4_address0 = p_cast16_fu_1405_p1;
assign SEQB_4_ce0 = SEQB_4_ce0_local;
assign SEQB_5_address0 = p_cast16_fu_1405_p1;
assign SEQB_5_ce0 = SEQB_5_ce0_local;
assign SEQB_6_address0 = p_cast16_fu_1405_p1;
assign SEQB_6_ce0 = SEQB_6_ce0_local;
assign SEQB_7_address0 = p_cast16_fu_1405_p1;
assign SEQB_7_ce0 = SEQB_7_ce0_local;
assign add_ln28_1_fu_1324_p2 = (ap_sig_allocacmp_b_idx_1_load + 8'd1);
assign add_ln28_fu_1298_p2 = (ap_sig_allocacmp_indvar_flatten_load + 14'd1);
assign add_ln29_1_fu_1518_p2 = (select_ln17_reg_2077 + 8'd2);
assign add_ln29_fu_1666_p2 = (select_ln17_reg_2077 + 8'd1);
assign add_ln30_fu_1435_p2 = ($signed(trunc_ln29_reg_2100) + $signed(7'd127));
assign add_ln39_1_fu_1587_p2 = (zext_ln30_fu_1570_p1 + empty_19_reg_2198);
assign add_ln39_fu_1578_p2 = (zext_ln29_fu_1567_p1 + empty_18_reg_2191);
assign add_ln40_2_fu_1680_p2 = (zext_ln30_2_fu_1671_p1 + empty_19_reg_2198);
assign add_ln40_fu_1602_p2 = (zext_ln29_fu_1567_p1 + empty_19_reg_2198);
assign add_ln41_fu_1629_p2 = (zext_ln30_fu_1570_p1 + empty_18_reg_2191);
assign add_ln45_fu_1695_p2 = (zext_ln30_2_fu_1671_p1 + empty_18_reg_2191);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
always @ (*) begin
    ap_condition_1588 = ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (trunc_ln39_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1592 = ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (trunc_ln39_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1597 = ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (trunc_ln39_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1601 = ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (trunc_ln39_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1605 = ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (trunc_ln39_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1609 = ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (trunc_ln39_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1613 = ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (trunc_ln39_reg_2225 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1617 = ((icmp_ln28_reg_2073 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (trunc_ln39_reg_2225 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_1624 = ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1630 = ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1635 = ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1641 = ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1647 = ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1652 = ((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1656 = ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1660 = ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1664 = ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1668 = ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1672 = ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1676 = ((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1680 = ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1684 = ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1688 = ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1692 = ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1696 = ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1700 = ((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1704 = ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1708 = ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1712 = ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1716 = ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1720 = ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1724 = ((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1728 = ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1732 = ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1736 = ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1740 = ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1744 = ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1748 = ((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1752 = ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1756 = ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1760 = ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1764 = ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1768 = ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1772 = ((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1776 = ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1780 = ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1784 = ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1788 = ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1792 = ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1796 = ((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1800 = ((icmp_ln48_fu_1985_p2 == 1'd0) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1804 = ((icmp_ln48_fu_1985_p2 == 1'd1) & (icmp_ln46_fu_1981_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1808 = ((icmp_ln46_fu_1981_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (trunc_ln39_reg_2225 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1812 = ((icmp_ln48_1_reg_2530 == 1'd0) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1816 = ((icmp_ln48_1_reg_2530 == 1'd1) & (icmp_ln46_1_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1820 = ((icmp_ln46_1_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (trunc_ln39_reg_2225 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign b_idx_1_cast4_fu_1402_p1 = select_ln28_reg_2084;
assign empty_18_fu_1423_p2 = (p_shl_fu_1416_p3 + b_idx_1_cast4_fu_1402_p1);
assign empty_19_fu_1429_p2 = ($signed(empty_18_fu_1423_p2) + $signed(15'd32639));
assign empty_fu_1346_p2 = ($signed(trunc_ln28_1_fu_1342_p1) + $signed(7'd127));
assign icmp_ln28_fu_1292_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 14'd8192) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1310_p2 = ((ap_sig_allocacmp_a_idx_2_load < 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln30_1_fu_1675_p2 = ((tmp_13_reg_2215 == tmp_fu_1528_p19) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_1573_p2 = ((tmp_2_reg_2210 == tmp_fu_1528_p19) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_1932_p2 = (($signed(up_left_fu_1917_p2) > $signed(select_ln43_fu_1926_p3)) ? 1'b1 : 1'b0);
assign icmp_ln43_2_fu_1999_p2 = (($signed(up_1_fu_1989_p2) > $signed(left_1_fu_1994_p2)) ? 1'b1 : 1'b0);
assign icmp_ln43_3_fu_2013_p2 = (($signed(up_left_1_reg_2448) > $signed(select_ln43_2_reg_2492)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_1922_p2 = (($signed(up_reg_2434) > $signed(left_reg_2441)) ? 1'b1 : 1'b0);
assign icmp_ln46_1_fu_2042_p2 = ((max_1_fu_2017_p3 == left_1_reg_2487) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_1981_p2 = ((max_reg_2459 == left_reg_2441) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_2047_p2 = ((max_1_fu_2017_p3 == up_1_reg_2482) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_1985_p2 = ((max_reg_2459 == up_reg_2434) ? 1'b1 : 1'b0);
assign left_1_fu_1994_p2 = ($signed(max_reg_2459) + $signed(32'd4294967295));
assign left_fu_1854_p2 = ($signed(tmp_5_reg_2384) + $signed(32'd4294967295));
assign lshr_ln2_fu_1370_p4 = {{select_ln17_fu_1316_p3[6:3]}};
assign lshr_ln4_fu_1607_p4 = {{add_ln40_fu_1602_p2[14:3]}};
assign lshr_ln5_fu_1634_p4 = {{add_ln41_fu_1629_p2[14:3]}};
assign max_1_fu_2017_p3 = ((icmp_ln43_3_fu_2013_p2[0:0] == 1'b1) ? up_left_1_reg_2448 : select_ln43_2_reg_2492);
assign max_fu_1938_p3 = ((icmp_ln43_1_fu_1932_p2[0:0] == 1'b1) ? up_left_fu_1917_p2 : select_ln43_fu_1926_p3);
assign p_cast16_fu_1405_p1 = tmp_s_reg_2095;
assign p_shl_fu_1416_p3 = {{select_ln28_reg_2084}, {7'd0}};
assign ptr_0_addr_1_gep_fu_1000_p3 = zext_ln45_fu_1946_p1;
assign ptr_0_addr_3_gep_fu_1266_p3 = zext_ln45_1_reg_2498;
assign ptr_0_addr_4_gep_fu_1202_p3 = zext_ln45_1_reg_2498;
assign ptr_0_addr_gep_fu_928_p3 = zext_ln45_fu_1946_p1;
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_0_d0 = ptr_0_d0_local;
assign ptr_0_we0 = ptr_0_we0_local;
assign ptr_1_addr_1_gep_fu_991_p3 = zext_ln45_fu_1946_p1;
assign ptr_1_addr_3_gep_fu_1250_p3 = zext_ln45_1_reg_2498;
assign ptr_1_addr_4_gep_fu_1186_p3 = zext_ln45_1_reg_2498;
assign ptr_1_addr_gep_fu_919_p3 = zext_ln45_fu_1946_p1;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_1_d0 = ptr_1_d0_local;
assign ptr_1_we0 = ptr_1_we0_local;
assign ptr_2_addr_1_gep_fu_982_p3 = zext_ln45_fu_1946_p1;
assign ptr_2_addr_3_gep_fu_1242_p3 = zext_ln45_1_reg_2498;
assign ptr_2_addr_4_gep_fu_1178_p3 = zext_ln45_1_reg_2498;
assign ptr_2_addr_gep_fu_910_p3 = zext_ln45_fu_1946_p1;
assign ptr_2_address0 = ptr_2_address0_local;
assign ptr_2_ce0 = ptr_2_ce0_local;
assign ptr_2_d0 = ptr_2_d0_local;
assign ptr_2_we0 = ptr_2_we0_local;
assign ptr_3_addr_1_gep_fu_973_p3 = zext_ln45_fu_1946_p1;
assign ptr_3_addr_3_gep_fu_1234_p3 = zext_ln45_1_reg_2498;
assign ptr_3_addr_4_gep_fu_1170_p3 = zext_ln45_1_reg_2498;
assign ptr_3_addr_gep_fu_901_p3 = zext_ln45_fu_1946_p1;
assign ptr_3_address0 = ptr_3_address0_local;
assign ptr_3_ce0 = ptr_3_ce0_local;
assign ptr_3_d0 = ptr_3_d0_local;
assign ptr_3_we0 = ptr_3_we0_local;
assign ptr_4_addr_1_gep_fu_964_p3 = zext_ln45_fu_1946_p1;
assign ptr_4_addr_3_gep_fu_1226_p3 = zext_ln45_1_reg_2498;
assign ptr_4_addr_4_gep_fu_1162_p3 = zext_ln45_1_reg_2498;
assign ptr_4_addr_gep_fu_892_p3 = zext_ln45_fu_1946_p1;
assign ptr_4_address0 = ptr_4_address0_local;
assign ptr_4_ce0 = ptr_4_ce0_local;
assign ptr_4_d0 = ptr_4_d0_local;
assign ptr_4_we0 = ptr_4_we0_local;
assign ptr_5_addr_1_gep_fu_955_p3 = zext_ln45_fu_1946_p1;
assign ptr_5_addr_3_gep_fu_1218_p3 = zext_ln45_1_reg_2498;
assign ptr_5_addr_4_gep_fu_1154_p3 = zext_ln45_1_reg_2498;
assign ptr_5_addr_gep_fu_883_p3 = zext_ln45_fu_1946_p1;
assign ptr_5_address0 = ptr_5_address0_local;
assign ptr_5_ce0 = ptr_5_ce0_local;
assign ptr_5_d0 = ptr_5_d0_local;
assign ptr_5_we0 = ptr_5_we0_local;
assign ptr_6_addr_1_gep_fu_946_p3 = zext_ln45_fu_1946_p1;
assign ptr_6_addr_3_gep_fu_1210_p3 = zext_ln45_1_reg_2498;
assign ptr_6_addr_4_gep_fu_1146_p3 = zext_ln45_1_reg_2498;
assign ptr_6_addr_gep_fu_874_p3 = zext_ln45_fu_1946_p1;
assign ptr_6_address0 = ptr_6_address0_local;
assign ptr_6_ce0 = ptr_6_ce0_local;
assign ptr_6_d0 = ptr_6_d0_local;
assign ptr_6_we0 = ptr_6_we0_local;
assign ptr_7_addr_1_gep_fu_1009_p3 = zext_ln45_fu_1946_p1;
assign ptr_7_addr_3_gep_fu_1258_p3 = zext_ln45_1_reg_2498;
assign ptr_7_addr_4_gep_fu_1194_p3 = zext_ln45_1_reg_2498;
assign ptr_7_addr_gep_fu_937_p3 = zext_ln45_fu_1946_p1;
assign ptr_7_address0 = ptr_7_address0_local;
assign ptr_7_ce0 = ptr_7_ce0_local;
assign ptr_7_d0 = ptr_7_d0_local;
assign ptr_7_we0 = ptr_7_we0_local;
assign select_ln17_fu_1316_p3 = ((icmp_ln29_fu_1310_p2[0:0] == 1'b1) ? ap_sig_allocacmp_a_idx_2_load : 8'd1);
assign select_ln28_fu_1330_p3 = ((icmp_ln29_fu_1310_p2[0:0] == 1'b1) ? ap_sig_allocacmp_b_idx_1_load : add_ln28_1_fu_1324_p2);
assign select_ln39_1_fu_1859_p3 = ((icmp_ln30_1_reg_2323[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln39_fu_1910_p3 = ((icmp_ln30_reg_2220[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln43_2_fu_2005_p3 = ((icmp_ln43_2_fu_1999_p2[0:0] == 1'b1) ? up_1_fu_1989_p2 : left_1_fu_1994_p2);
assign select_ln43_fu_1926_p3 = ((icmp_ln43_fu_1922_p2[0:0] == 1'b1) ? up_reg_2434 : left_reg_2441);
assign tmp_13_fu_1479_p17 = 'bx;
assign tmp_14_fu_1871_p17 = 'bx;
assign tmp_2_fu_1440_p17 = 'bx;
assign tmp_3_fu_1810_p17 = 'bx;
assign tmp_4_fu_1721_p17 = 'bx;
assign tmp_5_fu_1760_p17 = 'bx;
assign tmp_fu_1528_p17 = 'bx;
assign trunc_ln28_1_fu_1342_p1 = select_ln28_fu_1330_p3[6:0];
assign trunc_ln28_fu_1338_p1 = select_ln28_fu_1330_p3[2:0];
assign trunc_ln29_1_fu_1366_p1 = select_ln17_fu_1316_p3[2:0];
assign trunc_ln29_fu_1362_p1 = select_ln17_fu_1316_p3[6:0];
assign trunc_ln39_fu_1583_p1 = add_ln39_fu_1578_p2[2:0];
assign up_1_fu_1989_p2 = ($signed(tmp_14_reg_2454) + $signed(32'd4294967295));
assign up_fu_1849_p2 = ($signed(tmp_4_reg_2378) + $signed(32'd4294967295));
assign up_left_1_fu_1866_p2 = (select_ln39_1_fu_1859_p3 + tmp_4_reg_2378);
assign up_left_fu_1917_p2 = (tmp_3_reg_2429 + select_ln39_fu_1910_p3);
assign zext_ln29_fu_1567_p1 = select_ln17_reg_2077;
assign zext_ln30_1_fu_1380_p1 = lshr_ln2_fu_1370_p4;
assign zext_ln30_2_fu_1671_p1 = add_ln29_fu_1666_p2;
assign zext_ln30_fu_1570_p1 = add_ln30_reg_2205;
assign zext_ln39_fu_1710_p1 = lshr_ln3_reg_2233;
assign zext_ln40_1_fu_1799_p1 = lshr_ln40_1_reg_2328;
assign zext_ln40_fu_1617_p1 = lshr_ln4_fu_1607_p4;
assign zext_ln41_fu_1644_p1 = lshr_ln5_fu_1634_p4;
assign zext_ln45_1_fu_2031_p1 = lshr_ln45_1_reg_2333;
assign zext_ln45_fu_1946_p1 = lshr_ln6_reg_2318;
always @ (posedge ap_clk) begin
    zext_ln45_1_reg_2498[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 