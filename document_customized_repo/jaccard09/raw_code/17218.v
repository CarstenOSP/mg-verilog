module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,ptr_0_address0,ptr_0_ce0,ptr_0_q0,ptr_1_address0,ptr_1_ce0,ptr_1_q0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,b_str_idx_6_out,b_str_idx_6_out_ap_vld,a_str_idx_0_0_out,a_str_idx_0_0_out_ap_vld,ap_return); 
parameter    ap_ST_fsm_state1 = 34'd1;
parameter    ap_ST_fsm_pp0_stage0 = 34'd2;
parameter    ap_ST_fsm_pp0_stage1 = 34'd4;
parameter    ap_ST_fsm_pp0_stage2 = 34'd8;
parameter    ap_ST_fsm_pp0_stage3 = 34'd16;
parameter    ap_ST_fsm_pp0_stage4 = 34'd32;
parameter    ap_ST_fsm_pp0_stage5 = 34'd64;
parameter    ap_ST_fsm_pp0_stage6 = 34'd128;
parameter    ap_ST_fsm_pp0_stage7 = 34'd256;
parameter    ap_ST_fsm_pp0_stage8 = 34'd512;
parameter    ap_ST_fsm_pp0_stage9 = 34'd1024;
parameter    ap_ST_fsm_pp0_stage10 = 34'd2048;
parameter    ap_ST_fsm_pp0_stage11 = 34'd4096;
parameter    ap_ST_fsm_pp0_stage12 = 34'd8192;
parameter    ap_ST_fsm_pp0_stage13 = 34'd16384;
parameter    ap_ST_fsm_pp0_stage14 = 34'd32768;
parameter    ap_ST_fsm_pp0_stage15 = 34'd65536;
parameter    ap_ST_fsm_pp0_stage16 = 34'd131072;
parameter    ap_ST_fsm_pp0_stage17 = 34'd262144;
parameter    ap_ST_fsm_pp0_stage18 = 34'd524288;
parameter    ap_ST_fsm_pp0_stage19 = 34'd1048576;
parameter    ap_ST_fsm_pp0_stage20 = 34'd2097152;
parameter    ap_ST_fsm_pp0_stage21 = 34'd4194304;
parameter    ap_ST_fsm_pp0_stage22 = 34'd8388608;
parameter    ap_ST_fsm_pp0_stage23 = 34'd16777216;
parameter    ap_ST_fsm_state27 = 34'd33554432;
parameter    ap_ST_fsm_state28 = 34'd67108864;
parameter    ap_ST_fsm_state29 = 34'd134217728;
parameter    ap_ST_fsm_state30 = 34'd268435456;
parameter    ap_ST_fsm_state31 = 34'd536870912;
parameter    ap_ST_fsm_state32 = 34'd1073741824;
parameter    ap_ST_fsm_state33 = 34'd2147483648;
parameter    ap_ST_fsm_state34 = 34'd4294967296;
parameter    ap_ST_fsm_state35 = 34'd8589934592;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [6:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [6:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [6:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [5:0] SEQB_0_address0;
output   SEQB_0_ce0;
input  [7:0] SEQB_0_q0;
output  [5:0] SEQB_1_address0;
output   SEQB_1_ce0;
input  [7:0] SEQB_1_q0;
output  [13:0] ptr_0_address0;
output   ptr_0_ce0;
input  [7:0] ptr_0_q0;
output  [13:0] ptr_1_address0;
output   ptr_1_ce0;
input  [7:0] ptr_1_q0;
output  [5:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
output  [5:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
output  [31:0] b_str_idx_6_out;
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
(* fsm_encoding = "none" *) reg   [33:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] a_idx_4_reg_954;
reg   [31:0] b_idx_4_reg_966;
reg   [31:0] a_idx_7_reg_978;
reg   [31:0] b_idx_7_reg_991;
reg   [31:0] a_idx_10_reg_1004;
reg   [31:0] b_idx_10_reg_1017;
reg   [31:0] a_idx_13_reg_1030;
reg   [31:0] b_idx_13_reg_1043;
reg   [31:0] a_idx_16_reg_1056;
reg   [31:0] b_idx_16_reg_1069;
reg   [31:0] a_idx_19_reg_1082;
reg   [31:0] b_idx_19_reg_1095;
reg   [31:0] a_idx_22_reg_1108;
reg   [31:0] b_idx_22_reg_1121;
wire   [31:0] grp_fu_1195_p2;
reg   [31:0] reg_1581;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] or_ln62_reg_2743;
wire   [7:0] select_ln64_fu_1773_p3;
wire   [31:0] grp_fu_1210_p2;
reg   [31:0] reg_1587;
wire   [31:0] grp_fu_1241_p2;
reg   [31:0] reg_1593;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [0:0] or_ln62_1_reg_2835;
wire   [7:0] select_ln64_1_fu_1913_p3;
wire   [31:0] grp_fu_1257_p2;
reg   [31:0] reg_1599;
wire   [31:0] grp_fu_1289_p2;
reg   [31:0] reg_1605;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [0:0] or_ln62_2_reg_2918;
wire   [7:0] select_ln64_2_fu_2022_p3;
wire   [31:0] grp_fu_1305_p2;
reg   [31:0] reg_1611;
wire   [31:0] grp_fu_1337_p2;
reg   [31:0] reg_1617;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [0:0] or_ln62_3_reg_2997;
wire   [7:0] select_ln64_3_fu_2154_p3;
wire   [31:0] grp_fu_1353_p2;
reg   [31:0] reg_1623;
wire   [31:0] grp_fu_1385_p2;
reg   [31:0] reg_1629;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [0:0] or_ln62_4_reg_3080;
wire   [7:0] select_ln64_4_fu_2263_p3;
wire   [31:0] grp_fu_1401_p2;
reg   [31:0] reg_1635;
wire   [31:0] grp_fu_1433_p2;
reg   [31:0] reg_1641;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [0:0] or_ln62_5_reg_3164;
wire   [7:0] select_ln64_5_fu_2404_p3;
wire   [31:0] grp_fu_1449_p2;
reg   [31:0] reg_1647;
wire   [31:0] grp_fu_1481_p2;
reg   [31:0] reg_1653;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [0:0] or_ln62_6_reg_3247;
wire   [7:0] select_ln64_6_fu_2513_p3;
wire   [31:0] grp_fu_1497_p2;
reg   [31:0] reg_1659;
wire   [31:0] grp_fu_1529_p2;
reg   [31:0] reg_1665;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [0:0] or_ln62_7_reg_3326;
wire   [7:0] select_ln64_7_fu_2638_p3;
wire   [31:0] grp_fu_1545_p2;
reg   [31:0] reg_1671;
reg   [31:0] b_idx_1_reg_2729;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_2736;
wire   [0:0] or_ln62_fu_1715_p2;
wire   [0:0] trunc_ln64_fu_1753_p1;
reg   [0:0] trunc_ln64_reg_2747;
reg   [7:0] select_ln64_reg_2762;
reg   [63:0] b_str_idx_1_reg_2806;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] trunc_ln18_fu_1807_p1;
reg   [31:0] trunc_ln18_reg_2814;
wire   [63:0] zext_ln18_fu_1821_p1;
reg   [63:0] zext_ln18_reg_2819;
wire   [0:0] trunc_ln17_fu_1835_p1;
reg   [0:0] trunc_ln17_reg_2825;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] trunc_ln17_1_fu_1839_p1;
reg   [0:0] trunc_ln17_1_reg_2830;
wire   [0:0] or_ln62_1_fu_1863_p2;
wire   [0:0] trunc_ln64_1_fu_1893_p1;
reg   [0:0] trunc_ln64_1_reg_2839;
reg   [6:0] alignedA_1_addr_reg_2854;
reg   [6:0] alignedB_1_addr_reg_2859;
reg   [7:0] select_ln64_1_reg_2864;
wire   [0:0] trunc_ln17_4_fu_1944_p1;
reg   [0:0] trunc_ln17_4_reg_2908;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] trunc_ln17_5_fu_1948_p1;
reg   [0:0] trunc_ln17_5_reg_2913;
wire   [0:0] or_ln62_2_fu_1972_p2;
wire   [0:0] trunc_ln64_2_fu_2002_p1;
reg   [0:0] trunc_ln64_2_reg_2922;
reg   [7:0] select_ln64_2_reg_2937;
wire   [63:0] zext_ln65_1_fu_2070_p1;
reg   [63:0] zext_ln65_1_reg_2981;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [0:0] trunc_ln17_8_fu_2076_p1;
reg   [0:0] trunc_ln17_8_reg_2987;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [0:0] trunc_ln17_9_fu_2080_p1;
reg   [0:0] trunc_ln17_9_reg_2992;
wire   [0:0] or_ln62_3_fu_2104_p2;
wire   [0:0] trunc_ln64_3_fu_2134_p1;
reg   [0:0] trunc_ln64_3_reg_3001;
reg   [6:0] alignedA_1_addr_1_reg_3016;
reg   [6:0] alignedB_1_addr_1_reg_3021;
reg   [7:0] select_ln64_3_reg_3026;
wire   [0:0] trunc_ln17_12_fu_2185_p1;
reg   [0:0] trunc_ln17_12_reg_3070;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [0:0] trunc_ln17_13_fu_2189_p1;
reg   [0:0] trunc_ln17_13_reg_3075;
wire   [0:0] or_ln62_4_fu_2213_p2;
wire   [0:0] trunc_ln64_4_fu_2243_p1;
reg   [0:0] trunc_ln64_4_reg_3084;
reg   [7:0] select_ln64_4_reg_3099;
wire   [4:0] tmp_1_fu_2294_p4;
reg   [4:0] tmp_1_reg_3143;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] zext_ln65_4_fu_2320_p1;
reg   [63:0] zext_ln65_4_reg_3148;
wire   [0:0] trunc_ln17_16_fu_2326_p1;
reg   [0:0] trunc_ln17_16_reg_3154;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [0:0] trunc_ln17_17_fu_2330_p1;
reg   [0:0] trunc_ln17_17_reg_3159;
wire   [0:0] or_ln62_5_fu_2354_p2;
wire   [0:0] trunc_ln64_5_fu_2384_p1;
reg   [0:0] trunc_ln64_5_reg_3168;
reg   [6:0] alignedA_1_addr_2_reg_3183;
reg   [6:0] alignedB_1_addr_2_reg_3188;
reg   [7:0] select_ln64_5_reg_3193;
wire   [0:0] trunc_ln17_20_fu_2435_p1;
reg   [0:0] trunc_ln17_20_reg_3237;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [0:0] trunc_ln17_21_fu_2439_p1;
reg   [0:0] trunc_ln17_21_reg_3242;
wire   [0:0] or_ln62_6_fu_2463_p2;
wire   [0:0] trunc_ln64_6_fu_2493_p1;
reg   [0:0] trunc_ln64_6_reg_3251;
reg   [7:0] select_ln64_6_reg_3266;
wire   [63:0] zext_ln65_7_fu_2551_p1;
reg   [63:0] zext_ln65_7_reg_3310;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [0:0] trunc_ln17_24_fu_2557_p1;
reg   [0:0] trunc_ln17_24_reg_3316;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [0:0] trunc_ln17_25_fu_2561_p1;
reg   [0:0] trunc_ln17_25_reg_3321;
wire   [0:0] or_ln62_7_fu_2585_p2;
wire   [0:0] trunc_ln64_7_fu_2615_p1;
reg   [0:0] trunc_ln64_7_reg_3330;
reg   [6:0] alignedA_1_addr_3_reg_3345;
reg   [6:0] alignedB_1_addr_3_reg_3350;
reg   [7:0] select_ln64_7_reg_3355;
wire    ap_block_pp0_stage22_subdone;
reg    ap_predicate_tran24to27_state24;
reg    ap_predicate_tran24to28_state24;
reg    ap_predicate_tran24to29_state24;
reg    ap_predicate_tran24to30_state24;
reg    ap_predicate_tran24to31_state24;
reg    ap_predicate_tran24to32_state24;
reg    ap_predicate_tran24to33_state24;
reg    ap_condition_pp0_exit_iter0_state24;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage23_subdone;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_4_reg_954;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_4_reg_966;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_7_reg_978;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_7_reg_991;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_10_reg_1004;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_10_reg_1017;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_13_reg_1030;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_13_reg_1043;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_16_reg_1056;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_16_reg_1069;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_19_reg_1082;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_19_reg_1095;
reg   [31:0] ap_phi_reg_pp0_iter0_a_idx_22_reg_1108;
reg   [31:0] ap_phi_reg_pp0_iter0_b_idx_22_reg_1121;
reg   [31:0] ap_phi_mux_a_idx_25_phi_fu_1137_p6;
wire   [31:0] ap_phi_reg_pp0_iter1_a_idx_25_reg_1134;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] ap_phi_mux_b_idx_25_phi_fu_1149_p6;
wire   [31:0] ap_phi_reg_pp0_iter1_b_idx_25_reg_1146;
reg   [2:0] UnifiedRetVal_reg_1158;
wire    ap_CS_fsm_state34;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state31;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state33;
wire   [63:0] zext_ln64_fu_1767_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln71_fu_1780_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln65_fu_1786_p1;
wire   [63:0] zext_ln66_fu_1792_p1;
wire   [63:0] zext_ln77_fu_1798_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln64_1_fu_1907_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln71_1_fu_1920_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln65_2_fu_1926_p1;
wire   [63:0] zext_ln66_1_fu_1932_p1;
wire   [63:0] zext_ln77_1_fu_1938_p1;
wire   [63:0] zext_ln64_2_fu_2016_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln71_2_fu_2029_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln65_3_fu_2035_p1;
wire   [63:0] zext_ln66_2_fu_2041_p1;
wire   [63:0] zext_ln77_2_fu_2047_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln64_3_fu_2148_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln71_3_fu_2161_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln65_5_fu_2167_p1;
wire   [63:0] zext_ln66_3_fu_2173_p1;
wire   [63:0] zext_ln77_3_fu_2179_p1;
wire   [63:0] zext_ln64_4_fu_2257_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln71_4_fu_2270_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln65_6_fu_2276_p1;
wire   [63:0] zext_ln66_4_fu_2282_p1;
wire   [63:0] zext_ln77_4_fu_2288_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln64_5_fu_2398_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln71_5_fu_2411_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln65_8_fu_2417_p1;
wire   [63:0] zext_ln66_5_fu_2423_p1;
wire   [63:0] zext_ln77_5_fu_2429_p1;
wire   [63:0] zext_ln64_6_fu_2507_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln71_6_fu_2520_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln65_9_fu_2526_p1;
wire   [63:0] zext_ln66_6_fu_2532_p1;
wire   [63:0] zext_ln77_6_fu_2538_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln64_7_fu_2629_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] zext_ln71_7_fu_2656_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] zext_ln65_10_fu_2662_p1;
wire   [63:0] zext_ln66_7_fu_2668_p1;
wire   [63:0] zext_ln77_7_fu_2674_p1;
reg   [31:0] a_str_idx_0_0_fu_110;
wire   [31:0] b_str_idx_fu_2650_p2;
reg   [63:0] a_str_idx_fu_114;
wire   [63:0] add_ln65_fu_2645_p2;
reg   [31:0] b_idx_fu_118;
reg   [31:0] a_idx_fu_122;
reg    ptr_0_ce0_local;
reg   [13:0] ptr_0_address0_local;
reg    ptr_1_ce0_local;
reg   [13:0] ptr_1_address0_local;
reg    SEQA_0_ce0_local;
reg   [5:0] SEQA_0_address0_local;
reg    SEQA_1_ce0_local;
reg   [5:0] SEQA_1_address0_local;
reg    SEQB_0_ce0_local;
reg   [5:0] SEQB_0_address0_local;
reg    SEQB_1_ce0_local;
reg   [5:0] SEQB_1_address0_local;
reg    alignedA_0_we0_local;
reg   [7:0] alignedA_0_d0_local;
wire   [7:0] grp_fu_1225_p3;
reg    alignedA_0_ce0_local;
reg   [6:0] alignedA_0_address0_local;
wire   [7:0] grp_fu_1321_p3;
wire   [7:0] grp_fu_1417_p3;
wire   [7:0] grp_fu_1513_p3;
reg    alignedB_0_we0_local;
reg   [7:0] alignedB_0_d0_local;
reg    alignedB_0_ce0_local;
reg   [6:0] alignedB_0_address0_local;
wire   [7:0] grp_fu_1233_p3;
wire   [7:0] grp_fu_1329_p3;
wire   [7:0] grp_fu_1425_p3;
wire   [7:0] grp_fu_1521_p3;
reg    alignedA_1_we0_local;
reg   [7:0] alignedA_1_d0_local;
wire   [7:0] grp_fu_1273_p3;
wire    ap_block_pp0_stage6;
reg    alignedA_1_ce0_local;
reg   [6:0] alignedA_1_address0_local;
wire   [7:0] grp_fu_1369_p3;
wire    ap_block_pp0_stage12;
wire   [7:0] grp_fu_1465_p3;
wire    ap_block_pp0_stage18;
wire   [7:0] grp_fu_1561_p3;
wire    ap_block_pp0_stage0;
reg    alignedB_1_we0_local;
reg   [7:0] alignedB_1_d0_local;
reg    alignedB_1_ce0_local;
reg   [6:0] alignedB_1_address0_local;
wire   [7:0] grp_fu_1281_p3;
wire   [7:0] grp_fu_1377_p3;
wire   [7:0] grp_fu_1473_p3;
wire   [7:0] grp_fu_1569_p3;
wire   [0:0] trunc_ln18_1_fu_1827_p1;
wire   [0:0] trunc_ln18_2_fu_1831_p1;
wire   [0:0] icmp_ln62_fu_1703_p2;
wire   [0:0] icmp_ln62_1_fu_1709_p2;
wire   [7:0] trunc_ln16_fu_1729_p1;
wire   [14:0] p_shl_fu_1733_p3;
wire   [14:0] trunc_ln18_4_fu_1725_p1;
wire   [14:0] r_7_fu_1741_p2;
wire   [14:0] trunc_ln18_3_fu_1721_p1;
wire   [14:0] add_ln64_fu_1747_p2;
wire   [13:0] lshr_ln7_fu_1757_p4;
wire   [5:0] grp_fu_1200_p4;
wire   [5:0] grp_fu_1215_p4;
wire   [6:0] lshr_ln6_fu_1811_p4;
wire   [0:0] icmp_ln62_2_fu_1851_p2;
wire   [0:0] icmp_ln62_3_fu_1857_p2;
wire   [7:0] trunc_ln16_1_fu_1869_p1;
wire   [14:0] trunc_ln17_2_fu_1843_p1;
wire   [14:0] trunc_ln17_3_fu_1847_p1;
wire   [14:0] r_6_fu_1881_p2;
wire   [14:0] p_shl1_fu_1873_p3;
wire   [14:0] add_ln64_1_fu_1887_p2;
wire   [13:0] lshr_ln64_1_fu_1897_p4;
wire   [5:0] grp_fu_1247_p4;
wire   [5:0] grp_fu_1263_p4;
wire   [0:0] icmp_ln62_4_fu_1960_p2;
wire   [0:0] icmp_ln62_5_fu_1966_p2;
wire   [7:0] trunc_ln16_2_fu_1978_p1;
wire   [14:0] trunc_ln17_6_fu_1952_p1;
wire   [14:0] trunc_ln17_7_fu_1956_p1;
wire   [14:0] r_5_fu_1990_p2;
wire   [14:0] p_shl2_fu_1982_p3;
wire   [14:0] add_ln64_2_fu_1996_p2;
wire   [13:0] lshr_ln64_2_fu_2006_p4;
wire   [5:0] grp_fu_1295_p4;
wire   [5:0] grp_fu_1311_p4;
wire   [5:0] tmp_s_fu_2053_p4;
wire   [6:0] or_ln4_fu_2062_p3;
wire   [0:0] icmp_ln62_6_fu_2092_p2;
wire   [0:0] icmp_ln62_7_fu_2098_p2;
wire   [7:0] trunc_ln16_3_fu_2110_p1;
wire   [14:0] trunc_ln17_10_fu_2084_p1;
wire   [14:0] trunc_ln17_11_fu_2088_p1;
wire   [14:0] r_4_fu_2122_p2;
wire   [14:0] p_shl3_fu_2114_p3;
wire   [14:0] add_ln64_3_fu_2128_p2;
wire   [13:0] lshr_ln64_3_fu_2138_p4;
wire   [5:0] grp_fu_1343_p4;
wire   [5:0] grp_fu_1359_p4;
wire   [0:0] icmp_ln62_8_fu_2201_p2;
wire   [0:0] icmp_ln62_9_fu_2207_p2;
wire   [7:0] trunc_ln16_4_fu_2219_p1;
wire   [14:0] trunc_ln17_14_fu_2193_p1;
wire   [14:0] trunc_ln17_15_fu_2197_p1;
wire   [14:0] r_3_fu_2231_p2;
wire   [14:0] p_shl4_fu_2223_p3;
wire   [14:0] add_ln64_4_fu_2237_p2;
wire   [13:0] lshr_ln64_4_fu_2247_p4;
wire   [5:0] grp_fu_1391_p4;
wire   [5:0] grp_fu_1407_p4;
wire   [0:0] tmp_fu_2303_p3;
wire   [6:0] or_ln65_3_fu_2310_p4;
wire   [0:0] icmp_ln62_10_fu_2342_p2;
wire   [0:0] icmp_ln62_11_fu_2348_p2;
wire   [7:0] trunc_ln16_5_fu_2360_p1;
wire   [14:0] trunc_ln17_18_fu_2334_p1;
wire   [14:0] trunc_ln17_19_fu_2338_p1;
wire   [14:0] r_2_fu_2372_p2;
wire   [14:0] p_shl5_fu_2364_p3;
wire   [14:0] add_ln64_5_fu_2378_p2;
wire   [13:0] lshr_ln64_5_fu_2388_p4;
wire   [5:0] grp_fu_1439_p4;
wire   [5:0] grp_fu_1455_p4;
wire   [0:0] icmp_ln62_12_fu_2451_p2;
wire   [0:0] icmp_ln62_13_fu_2457_p2;
wire   [7:0] trunc_ln16_6_fu_2469_p1;
wire   [14:0] trunc_ln17_22_fu_2443_p1;
wire   [14:0] trunc_ln17_23_fu_2447_p1;
wire   [14:0] r_1_fu_2481_p2;
wire   [14:0] p_shl6_fu_2473_p3;
wire   [14:0] add_ln64_6_fu_2487_p2;
wire   [13:0] lshr_ln64_6_fu_2497_p4;
wire   [5:0] grp_fu_1487_p4;
wire   [5:0] grp_fu_1503_p4;
wire   [6:0] or_ln65_6_fu_2544_p3;
wire   [0:0] icmp_ln62_14_fu_2573_p2;
wire   [0:0] icmp_ln62_15_fu_2579_p2;
wire   [7:0] trunc_ln16_7_fu_2591_p1;
wire   [14:0] trunc_ln17_26_fu_2565_p1;
wire   [14:0] trunc_ln17_27_fu_2569_p1;
wire   [14:0] r_fu_2603_p2;
wire   [14:0] p_shl7_fu_2595_p3;
wire   [14:0] add_ln64_7_fu_2609_p2;
wire   [13:0] lshr_ln64_7_fu_2619_p4;
wire   [5:0] grp_fu_1535_p4;
wire   [5:0] grp_fu_1551_p4;
reg    ap_predicate_pred298_state18;
reg    ap_predicate_pred329_state21;
reg    ap_predicate_pred360_state24;
reg   [2:0] ap_return_preg;
wire    ap_CS_fsm_state35;
reg   [33:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
wire    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
wire    ap_ST_fsm_state35_blk;
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
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_2596;
reg    ap_condition_2600;
reg    ap_condition_2606;
reg    ap_condition_2612;
reg    ap_condition_2619;
reg    ap_condition_2626;
reg    ap_condition_2634;
reg    ap_condition_2642;
reg    ap_condition_2651;
reg    ap_condition_2660;
reg    ap_condition_2670;
reg    ap_condition_2680;
reg    ap_condition_2691;
reg    ap_condition_2702;
reg    ap_condition_2714;
reg    ap_condition_2726;
reg    ap_condition_2732;
reg    ap_condition_2738;
reg    ap_condition_2745;
reg    ap_condition_2752;
reg    ap_condition_2760;
reg    ap_condition_2768;
reg    ap_condition_2777;
reg    ap_condition_2786;
reg    ap_condition_2796;
reg    ap_condition_2806;
reg    ap_condition_2817;
reg    ap_condition_2828;
reg    ap_condition_2840;
reg    ap_condition_2852;
reg    ap_condition_2857;
reg    ap_condition_2863;
reg    ap_condition_2870;
reg    ap_condition_2877;
reg    ap_condition_2885;
reg    ap_condition_2893;
reg    ap_condition_2902;
reg    ap_condition_2911;
reg    ap_condition_2921;
reg    ap_condition_2931;
reg    ap_condition_2942;
reg    ap_condition_2953;
reg    ap_condition_2965;
reg    ap_condition_2977;
reg    ap_condition_2990;
reg    ap_condition_2996;
reg    ap_condition_3002;
reg    ap_condition_3009;
reg    ap_condition_3016;
reg    ap_condition_3024;
reg    ap_condition_3032;
reg    ap_condition_3041;
reg    ap_condition_3050;
reg    ap_condition_3060;
reg    ap_condition_3070;
reg    ap_condition_3081;
reg    ap_condition_3092;
reg    ap_condition_3104;
reg    ap_condition_3116;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 34'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_str_idx_0_0_fu_110 = 32'd0;
#0 a_str_idx_fu_114 = 64'd0;
#0 b_idx_fu_118 = 32'd0;
#0 a_idx_fu_122 = 32'd0;
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
        if (((1'b1 == ap_condition_pp0_exit_iter0_state24) & (1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_subdone))) begin
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
        if ((((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_subdone)))) begin
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
        if ((1'b1 == ap_CS_fsm_state35)) begin
            ap_return_preg <= UnifiedRetVal_reg_1158;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        UnifiedRetVal_reg_1158 <= 3'd7;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        UnifiedRetVal_reg_1158 <= 3'd6;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        UnifiedRetVal_reg_1158 <= 3'd5;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        UnifiedRetVal_reg_1158 <= 3'd4;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        UnifiedRetVal_reg_1158 <= 3'd3;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        UnifiedRetVal_reg_1158 <= 3'd2;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        UnifiedRetVal_reg_1158 <= 3'd1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        UnifiedRetVal_reg_1158 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_idx_fu_122 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        a_idx_fu_122 <= ap_phi_mux_a_idx_25_phi_fu_1137_p6;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_str_idx_0_0_fu_110 <= 32'd0;
    end else if (((or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_str_idx_0_0_fu_110 <= b_str_idx_fu_2650_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        a_str_idx_fu_114 <= 64'd0;
    end else if (((or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_str_idx_fu_114 <= add_ln65_fu_2645_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((~(select_ln64_2_reg_2937 == 8'd60) & ~(select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_10_reg_1004 <= a_idx_7_reg_978;
    end else if ((((select_ln64_2_reg_2937 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_10_reg_1004 <= reg_1605;
    end
end
always @ (posedge ap_clk) begin
    if ((~(select_ln64_3_reg_3026 == 8'd60) & ~(select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_13_reg_1030 <= a_idx_10_reg_1004;
    end else if ((((select_ln64_3_reg_3026 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_13_reg_1030 <= reg_1617;
    end
end
always @ (posedge ap_clk) begin
    if ((~(select_ln64_4_reg_3099 == 8'd60) & ~(select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_16_reg_1056 <= a_idx_13_reg_1030;
    end else if ((((select_ln64_4_reg_3099 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_16_reg_1056 <= reg_1629;
    end
end
always @ (posedge ap_clk) begin
    if ((~(select_ln64_5_reg_3193 == 8'd60) & ~(select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_19_reg_1082 <= a_idx_16_reg_1056;
    end else if ((((select_ln64_5_reg_3193 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_19_reg_1082 <= reg_1641;
    end
end
always @ (posedge ap_clk) begin
    if ((~(select_ln64_6_reg_3266 == 8'd60) & ~(select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_22_reg_1108 <= a_idx_19_reg_1082;
    end else if ((((select_ln64_6_reg_3266 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_22_reg_1108 <= reg_1653;
    end
end
always @ (posedge ap_clk) begin
    if ((~(select_ln64_reg_2762 == 8'd60) & ~(select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_954 <= a_idx_1_reg_2736;
    end else if ((((select_ln64_reg_2762 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_4_reg_954 <= reg_1581;
    end
end
always @ (posedge ap_clk) begin
    if ((~(select_ln64_1_reg_2864 == 8'd60) & ~(select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_a_idx_7_reg_978 <= a_idx_4_reg_954;
    end else if ((((select_ln64_1_reg_2864 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_a_idx_7_reg_978 <= reg_1593;
    end
end
always @ (posedge ap_clk) begin
    if (((select_ln64_2_reg_2937 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_10_reg_1017 <= b_idx_7_reg_991;
    end else if (((~(select_ln64_2_reg_2937 == 8'd60) & ~(select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_10_reg_1017 <= reg_1611;
    end
end
always @ (posedge ap_clk) begin
    if (((select_ln64_3_reg_3026 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_13_reg_1043 <= b_idx_10_reg_1017;
    end else if (((~(select_ln64_3_reg_3026 == 8'd60) & ~(select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_13_reg_1043 <= reg_1623;
    end
end
always @ (posedge ap_clk) begin
    if (((select_ln64_4_reg_3099 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_16_reg_1069 <= b_idx_13_reg_1043;
    end else if (((~(select_ln64_4_reg_3099 == 8'd60) & ~(select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_16_reg_1069 <= reg_1635;
    end
end
always @ (posedge ap_clk) begin
    if (((select_ln64_5_reg_3193 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_19_reg_1095 <= b_idx_16_reg_1069;
    end else if (((~(select_ln64_5_reg_3193 == 8'd60) & ~(select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_19_reg_1095 <= reg_1647;
    end
end
always @ (posedge ap_clk) begin
    if (((select_ln64_6_reg_3266 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_22_reg_1121 <= b_idx_19_reg_1095;
    end else if (((~(select_ln64_6_reg_3266 == 8'd60) & ~(select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_22_reg_1121 <= reg_1659;
    end
end
always @ (posedge ap_clk) begin
    if (((select_ln64_reg_2762 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_966 <= b_idx_1_reg_2729;
    end else if (((~(select_ln64_reg_2762 == 8'd60) & ~(select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_4_reg_966 <= reg_1587;
    end
end
always @ (posedge ap_clk) begin
    if (((select_ln64_1_reg_2864 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_phi_reg_pp0_iter0_b_idx_7_reg_991 <= b_idx_4_reg_966;
    end else if (((~(select_ln64_1_reg_2864 == 8'd60) & ~(select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ap_phi_reg_pp0_iter0_b_idx_7_reg_991 <= reg_1599;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        b_idx_fu_118 <= 32'd128;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        b_idx_fu_118 <= ap_phi_mux_b_idx_25_phi_fu_1149_p6;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_10_reg_1004 <= ap_phi_reg_pp0_iter0_a_idx_10_reg_1004;
        b_idx_10_reg_1017 <= ap_phi_reg_pp0_iter0_b_idx_10_reg_1017;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_13_reg_1030 <= ap_phi_reg_pp0_iter0_a_idx_13_reg_1030;
        b_idx_13_reg_1043 <= ap_phi_reg_pp0_iter0_b_idx_13_reg_1043;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_16_reg_1056 <= ap_phi_reg_pp0_iter0_a_idx_16_reg_1056;
        b_idx_16_reg_1069 <= ap_phi_reg_pp0_iter0_b_idx_16_reg_1069;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_19_reg_1082 <= ap_phi_reg_pp0_iter0_a_idx_19_reg_1082;
        b_idx_19_reg_1095 <= ap_phi_reg_pp0_iter0_b_idx_19_reg_1095;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        a_idx_1_reg_2736 <= a_idx_fu_122;
        b_idx_1_reg_2729 <= b_idx_fu_118;
        or_ln62_reg_2743 <= or_ln62_fu_1715_p2;
        trunc_ln64_reg_2747 <= trunc_ln64_fu_1753_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_22_reg_1108 <= ap_phi_reg_pp0_iter0_a_idx_22_reg_1108;
        b_idx_22_reg_1121 <= ap_phi_reg_pp0_iter0_b_idx_22_reg_1121;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_4_reg_954 <= ap_phi_reg_pp0_iter0_a_idx_4_reg_954;
        b_idx_4_reg_966 <= ap_phi_reg_pp0_iter0_b_idx_4_reg_966;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        a_idx_7_reg_978 <= ap_phi_reg_pp0_iter0_a_idx_7_reg_978;
        b_idx_7_reg_991 <= ap_phi_reg_pp0_iter0_b_idx_7_reg_991;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001))) begin
        alignedA_1_addr_1_reg_3016[6 : 1] <= zext_ln65_1_reg_2981[6 : 1];
        alignedB_1_addr_1_reg_3021[6 : 1] <= zext_ln65_1_reg_2981[6 : 1];
        or_ln62_3_reg_2997 <= or_ln62_3_fu_2104_p2;
        trunc_ln17_8_reg_2987 <= trunc_ln17_8_fu_2076_p1;
        trunc_ln17_9_reg_2992 <= trunc_ln17_9_fu_2080_p1;
        trunc_ln64_3_reg_3001 <= trunc_ln64_3_fu_2134_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001))) begin
        alignedA_1_addr_2_reg_3183[0] <= zext_ln65_4_reg_3148[0];
alignedA_1_addr_2_reg_3183[6 : 2] <= zext_ln65_4_reg_3148[6 : 2];
        alignedB_1_addr_2_reg_3188[0] <= zext_ln65_4_reg_3148[0];
alignedB_1_addr_2_reg_3188[6 : 2] <= zext_ln65_4_reg_3148[6 : 2];
        or_ln62_5_reg_3164 <= or_ln62_5_fu_2354_p2;
        trunc_ln17_16_reg_3154 <= trunc_ln17_16_fu_2326_p1;
        trunc_ln17_17_reg_3159 <= trunc_ln17_17_fu_2330_p1;
        trunc_ln64_5_reg_3168 <= trunc_ln64_5_fu_2384_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001))) begin
        alignedA_1_addr_3_reg_3345[6 : 2] <= zext_ln65_7_reg_3310[6 : 2];
        alignedB_1_addr_3_reg_3350[6 : 2] <= zext_ln65_7_reg_3310[6 : 2];
        or_ln62_7_reg_3326 <= or_ln62_7_fu_2585_p2;
        trunc_ln17_24_reg_3316 <= trunc_ln17_24_fu_2557_p1;
        trunc_ln17_25_reg_3321 <= trunc_ln17_25_fu_2561_p1;
        trunc_ln64_7_reg_3330 <= trunc_ln64_7_fu_2615_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        alignedA_1_addr_reg_2854 <= zext_ln18_reg_2819;
        alignedB_1_addr_reg_2859 <= zext_ln18_reg_2819;
        or_ln62_1_reg_2835 <= or_ln62_1_fu_1863_p2;
        trunc_ln17_1_reg_2830 <= trunc_ln17_1_fu_1839_p1;
        trunc_ln17_reg_2825 <= trunc_ln17_fu_1835_p1;
        trunc_ln64_1_reg_2839 <= trunc_ln64_1_fu_1893_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001))) begin
        ap_predicate_pred298_state18 <= ((or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1));
        tmp_1_reg_3143 <= {{b_str_idx_1_reg_2806[7:3]}};
        zext_ln65_4_reg_3148[0] <= zext_ln65_4_fu_2320_p1[0];
zext_ln65_4_reg_3148[6 : 2] <= zext_ln65_4_fu_2320_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001))) begin
        ap_predicate_pred329_state21 <= ((or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001))) begin
        ap_predicate_pred360_state24 <= ((or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1));
        zext_ln65_7_reg_3310[6 : 2] <= zext_ln65_7_fu_2551_p1[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        b_str_idx_1_reg_2806 <= a_str_idx_fu_114;
        zext_ln18_reg_2819[6 : 0] <= zext_ln18_fu_1821_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        or_ln62_2_reg_2918 <= or_ln62_2_fu_1972_p2;
        trunc_ln17_4_reg_2908 <= trunc_ln17_4_fu_1944_p1;
        trunc_ln17_5_reg_2913 <= trunc_ln17_5_fu_1948_p1;
        trunc_ln64_2_reg_2922 <= trunc_ln64_2_fu_2002_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001))) begin
        or_ln62_4_reg_3080 <= or_ln62_4_fu_2213_p2;
        trunc_ln17_12_reg_3070 <= trunc_ln17_12_fu_2185_p1;
        trunc_ln17_13_reg_3075 <= trunc_ln17_13_fu_2189_p1;
        trunc_ln64_4_reg_3084 <= trunc_ln64_4_fu_2243_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001))) begin
        or_ln62_6_reg_3247 <= or_ln62_6_fu_2463_p2;
        trunc_ln17_20_reg_3237 <= trunc_ln17_20_fu_2435_p1;
        trunc_ln17_21_reg_3242 <= trunc_ln17_21_fu_2439_p1;
        trunc_ln64_6_reg_3251 <= trunc_ln64_6_fu_2493_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1773_p3 == 8'd92) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1773_p3 == 8'd60) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1581 <= grp_fu_1195_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_fu_1773_p3 == 8'd92) & ~(select_ln64_fu_1773_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1773_p3 == 8'd92) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1587 <= grp_fu_1210_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((select_ln64_1_fu_1913_p3 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_fu_1913_p3 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1593 <= grp_fu_1241_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_1_fu_1913_p3 == 8'd92) & ~(select_ln64_1_fu_1913_p3 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_fu_1913_p3 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1599 <= grp_fu_1257_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((select_ln64_2_fu_2022_p3 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_fu_2022_p3 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1605 <= grp_fu_1289_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_2_fu_2022_p3 == 8'd92) & ~(select_ln64_2_fu_2022_p3 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_fu_2022_p3 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1611 <= grp_fu_1305_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((select_ln64_3_fu_2154_p3 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_fu_2154_p3 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1617 <= grp_fu_1337_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_3_fu_2154_p3 == 8'd92) & ~(select_ln64_3_fu_2154_p3 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_fu_2154_p3 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1623 <= grp_fu_1353_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((select_ln64_4_fu_2263_p3 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_fu_2263_p3 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1629 <= grp_fu_1385_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_4_fu_2263_p3 == 8'd92) & ~(select_ln64_4_fu_2263_p3 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_fu_2263_p3 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1635 <= grp_fu_1401_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((select_ln64_5_fu_2404_p3 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_fu_2404_p3 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1641 <= grp_fu_1433_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_5_fu_2404_p3 == 8'd92) & ~(select_ln64_5_fu_2404_p3 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_fu_2404_p3 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1647 <= grp_fu_1449_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((select_ln64_6_fu_2513_p3 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_fu_2513_p3 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1653 <= grp_fu_1481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_6_fu_2513_p3 == 8'd92) & ~(select_ln64_6_fu_2513_p3 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_fu_2513_p3 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1659 <= grp_fu_1497_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((select_ln64_7_fu_2638_p3 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_7_fu_2638_p3 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1665 <= grp_fu_1529_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((~(select_ln64_7_fu_2638_p3 == 8'd92) & ~(select_ln64_7_fu_2638_p3 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_7_fu_2638_p3 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1671 <= grp_fu_1545_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        select_ln64_1_reg_2864 <= select_ln64_1_fu_1913_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        select_ln64_2_reg_2937 <= select_ln64_2_fu_2022_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001))) begin
        select_ln64_3_reg_3026 <= select_ln64_3_fu_2154_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14_11001))) begin
        select_ln64_4_reg_3099 <= select_ln64_4_fu_2263_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001))) begin
        select_ln64_5_reg_3193 <= select_ln64_5_fu_2404_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001))) begin
        select_ln64_6_reg_3266 <= select_ln64_6_fu_2513_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001))) begin
        select_ln64_7_reg_3355 <= select_ln64_7_fu_2638_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        select_ln64_reg_2762 <= select_ln64_fu_1773_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        trunc_ln18_reg_2814 <= trunc_ln18_fu_1807_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001))) begin
        zext_ln65_1_reg_2981[6 : 1] <= zext_ln65_1_fu_2070_p1[6 : 1];
    end
end
always @ (*) begin
    if (((or_ln62_reg_2743 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_2726)) begin
            SEQA_0_address0_local = zext_ln65_10_fu_2662_p1;
        end else if ((1'b1 == ap_condition_2714)) begin
            SEQA_0_address0_local = zext_ln71_7_fu_2656_p1;
        end else if ((1'b1 == ap_condition_2702)) begin
            SEQA_0_address0_local = zext_ln65_9_fu_2526_p1;
        end else if ((1'b1 == ap_condition_2691)) begin
            SEQA_0_address0_local = zext_ln71_6_fu_2520_p1;
        end else if ((1'b1 == ap_condition_2680)) begin
            SEQA_0_address0_local = zext_ln65_8_fu_2417_p1;
        end else if ((1'b1 == ap_condition_2670)) begin
            SEQA_0_address0_local = zext_ln71_5_fu_2411_p1;
        end else if ((1'b1 == ap_condition_2660)) begin
            SEQA_0_address0_local = zext_ln65_6_fu_2276_p1;
        end else if ((1'b1 == ap_condition_2651)) begin
            SEQA_0_address0_local = zext_ln71_4_fu_2270_p1;
        end else if ((1'b1 == ap_condition_2642)) begin
            SEQA_0_address0_local = zext_ln65_5_fu_2167_p1;
        end else if ((1'b1 == ap_condition_2634)) begin
            SEQA_0_address0_local = zext_ln71_3_fu_2161_p1;
        end else if ((1'b1 == ap_condition_2626)) begin
            SEQA_0_address0_local = zext_ln65_3_fu_2035_p1;
        end else if ((1'b1 == ap_condition_2619)) begin
            SEQA_0_address0_local = zext_ln71_2_fu_2029_p1;
        end else if ((1'b1 == ap_condition_2612)) begin
            SEQA_0_address0_local = zext_ln65_2_fu_1926_p1;
        end else if ((1'b1 == ap_condition_2606)) begin
            SEQA_0_address0_local = zext_ln71_1_fu_1920_p1;
        end else if ((1'b1 == ap_condition_2600)) begin
            SEQA_0_address0_local = zext_ln65_fu_1786_p1;
        end else if ((1'b1 == ap_condition_2596)) begin
            SEQA_0_address0_local = zext_ln71_fu_1780_p1;
        end else begin
            SEQA_0_address0_local = 'bx;
        end
    end else begin
        SEQA_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1773_p3 == 8'd92) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1773_p3 == 8'd60) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_24_reg_3316 == 1'd1) & (select_ln64_7_fu_2638_p3 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_24_reg_3316 == 1'd1) & (select_ln64_7_fu_2638_p3 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918== 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_20_reg_3237 == 1'd1) & (select_ln64_6_fu_2513_p3 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_20_reg_3237 == 1'd1) & (select_ln64_6_fu_2513_p3 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_16_reg_3154 == 1'd1) & (select_ln64_5_fu_2404_p3== 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_16_reg_3154 == 1'd1) & (select_ln64_5_fu_2404_p3 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_12_reg_3070 == 1'd1) & (select_ln64_4_fu_2263_p3 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_12_reg_3070== 1'd1) & (select_ln64_4_fu_2263_p3 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_8_reg_2987 == 1'd1) & (select_ln64_3_fu_2154_p3 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_8_reg_2987 == 1'd1) & (select_ln64_3_fu_2154_p3 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_2908 == 1'd1) & (select_ln64_2_fu_2022_p3 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) &(or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_2908 == 1'd1) & (select_ln64_2_fu_2022_p3 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_2825 == 1'd1) & (select_ln64_1_fu_1913_p3 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_2825 == 1'd1) & (select_ln64_1_fu_1913_p3 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2743 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_2852)) begin
            SEQA_1_address0_local = zext_ln65_10_fu_2662_p1;
        end else if ((1'b1 == ap_condition_2840)) begin
            SEQA_1_address0_local = zext_ln71_7_fu_2656_p1;
        end else if ((1'b1 == ap_condition_2828)) begin
            SEQA_1_address0_local = zext_ln65_9_fu_2526_p1;
        end else if ((1'b1 == ap_condition_2817)) begin
            SEQA_1_address0_local = zext_ln71_6_fu_2520_p1;
        end else if ((1'b1 == ap_condition_2806)) begin
            SEQA_1_address0_local = zext_ln65_8_fu_2417_p1;
        end else if ((1'b1 == ap_condition_2796)) begin
            SEQA_1_address0_local = zext_ln71_5_fu_2411_p1;
        end else if ((1'b1 == ap_condition_2786)) begin
            SEQA_1_address0_local = zext_ln65_6_fu_2276_p1;
        end else if ((1'b1 == ap_condition_2777)) begin
            SEQA_1_address0_local = zext_ln71_4_fu_2270_p1;
        end else if ((1'b1 == ap_condition_2768)) begin
            SEQA_1_address0_local = zext_ln65_5_fu_2167_p1;
        end else if ((1'b1 == ap_condition_2760)) begin
            SEQA_1_address0_local = zext_ln71_3_fu_2161_p1;
        end else if ((1'b1 == ap_condition_2752)) begin
            SEQA_1_address0_local = zext_ln65_3_fu_2035_p1;
        end else if ((1'b1 == ap_condition_2745)) begin
            SEQA_1_address0_local = zext_ln71_2_fu_2029_p1;
        end else if ((1'b1 == ap_condition_2738)) begin
            SEQA_1_address0_local = zext_ln65_2_fu_1926_p1;
        end else if ((1'b1 == ap_condition_2732)) begin
            SEQA_1_address0_local = zext_ln71_1_fu_1920_p1;
        end else if ((1'b1 == ap_condition_2600)) begin
            SEQA_1_address0_local = zext_ln65_fu_1786_p1;
        end else if ((1'b1 == ap_condition_2596)) begin
            SEQA_1_address0_local = zext_ln71_fu_1780_p1;
        end else begin
            SEQA_1_address0_local = 'bx;
        end
    end else begin
        SEQA_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1773_p3 == 8'd92) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1773_p3 == 8'd60) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_24_reg_3316 == 1'd0) & (select_ln64_7_fu_2638_p3 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_24_reg_3316 == 1'd0) & (select_ln64_7_fu_2638_p3 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918== 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_20_reg_3237 == 1'd0) & (select_ln64_6_fu_2513_p3 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_20_reg_3237 == 1'd0) & (select_ln64_6_fu_2513_p3 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_16_reg_3154 == 1'd0) & (select_ln64_5_fu_2404_p3== 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_16_reg_3154 == 1'd0) & (select_ln64_5_fu_2404_p3 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_12_reg_3070 == 1'd0) & (select_ln64_4_fu_2263_p3 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_12_reg_3070== 1'd0) & (select_ln64_4_fu_2263_p3 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_8_reg_2987 == 1'd0) & (select_ln64_3_fu_2154_p3 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_8_reg_2987 == 1'd0) & (select_ln64_3_fu_2154_p3 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_2908 == 1'd0) & (select_ln64_2_fu_2022_p3 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) &(or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_4_reg_2908 == 1'd0) & (select_ln64_2_fu_2022_p3 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_2825 == 1'd0) & (select_ln64_1_fu_1913_p3 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_reg_2825 == 1'd0) & (select_ln64_1_fu_1913_p3 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2743 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_2990)) begin
            SEQB_0_address0_local = zext_ln77_7_fu_2674_p1;
        end else if ((1'b1 == ap_condition_2977)) begin
            SEQB_0_address0_local = zext_ln66_7_fu_2668_p1;
        end else if ((1'b1 == ap_condition_2965)) begin
            SEQB_0_address0_local = zext_ln77_6_fu_2538_p1;
        end else if ((1'b1 == ap_condition_2953)) begin
            SEQB_0_address0_local = zext_ln66_6_fu_2532_p1;
        end else if ((1'b1 == ap_condition_2942)) begin
            SEQB_0_address0_local = zext_ln77_5_fu_2429_p1;
        end else if ((1'b1 == ap_condition_2931)) begin
            SEQB_0_address0_local = zext_ln66_5_fu_2423_p1;
        end else if ((1'b1 == ap_condition_2921)) begin
            SEQB_0_address0_local = zext_ln77_4_fu_2288_p1;
        end else if ((1'b1 == ap_condition_2911)) begin
            SEQB_0_address0_local = zext_ln66_4_fu_2282_p1;
        end else if ((1'b1 == ap_condition_2902)) begin
            SEQB_0_address0_local = zext_ln77_3_fu_2179_p1;
        end else if ((1'b1 == ap_condition_2893)) begin
            SEQB_0_address0_local = zext_ln66_3_fu_2173_p1;
        end else if ((1'b1 == ap_condition_2885)) begin
            SEQB_0_address0_local = zext_ln77_2_fu_2047_p1;
        end else if ((1'b1 == ap_condition_2877)) begin
            SEQB_0_address0_local = zext_ln66_2_fu_2041_p1;
        end else if ((1'b1 == ap_condition_2870)) begin
            SEQB_0_address0_local = zext_ln77_1_fu_1938_p1;
        end else if ((1'b1 == ap_condition_2863)) begin
            SEQB_0_address0_local = zext_ln66_1_fu_1932_p1;
        end else if ((1'b1 == ap_condition_2857)) begin
            SEQB_0_address0_local = zext_ln77_fu_1798_p1;
        end else if ((1'b1 == ap_condition_2600)) begin
            SEQB_0_address0_local = zext_ln66_fu_1792_p1;
        end else begin
            SEQB_0_address0_local = 'bx;
        end
    end else begin
        SEQB_0_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_7_fu_2638_p3 == 8'd92) & ~(select_ln64_7_fu_2638_p3 == 8'd60) & (trunc_ln17_25_reg_3321 == 1'd1) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_6_fu_2513_p3 == 8'd92) & ~(select_ln64_6_fu_2513_p3 == 8'd60) & (trunc_ln17_21_reg_3242 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_5_fu_2404_p3 == 8'd92) & ~(select_ln64_5_fu_2404_p3 == 8'd60) & (trunc_ln17_17_reg_3159 == 1'd1) & (or_ln62_5_reg_3164== 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_4_fu_2263_p3 == 8'd92) & ~(select_ln64_4_fu_2263_p3 == 8'd60) & (trunc_ln17_13_reg_3075 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_3_fu_2154_p3 == 8'd92) & ~(select_ln64_3_fu_2154_p3 == 8'd60) & (trunc_ln17_9_reg_2992 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_2_fu_2022_p3 ==8'd92) & ~(select_ln64_2_fu_2022_p3 == 8'd60) & (trunc_ln17_5_reg_2913 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_1_fu_1913_p3 == 8'd92) & ~(select_ln64_1_fu_1913_p3 == 8'd60) & (trunc_ln17_1_reg_2830 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_fu_1773_p3 == 8'd92) & ~(select_ln64_fu_1773_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1773_p3 == 8'd92) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_25_reg_3321 == 1'd1) & (select_ln64_7_fu_2638_p3 == 8'd92) & (or_ln62_7_reg_3326== 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_21_reg_3242 == 1'd1) & (select_ln64_6_fu_2513_p3 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_17_reg_3159 == 1'd1) & (select_ln64_5_fu_2404_p3 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (or_ln62_reg_2743 == 1'd1)& (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_13_reg_3075 == 1'd1) & (select_ln64_4_fu_2263_p3 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_9_reg_2992 == 1'd1) & (select_ln64_3_fu_2154_p3 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_5_reg_2913 == 1'd1) & (select_ln64_2_fu_2022_p3 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_1_reg_2830 == 1'd1)& (select_ln64_1_fu_1913_p3 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_2743 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_3116)) begin
            SEQB_1_address0_local = zext_ln77_7_fu_2674_p1;
        end else if ((1'b1 == ap_condition_3104)) begin
            SEQB_1_address0_local = zext_ln66_7_fu_2668_p1;
        end else if ((1'b1 == ap_condition_3092)) begin
            SEQB_1_address0_local = zext_ln77_6_fu_2538_p1;
        end else if ((1'b1 == ap_condition_3081)) begin
            SEQB_1_address0_local = zext_ln66_6_fu_2532_p1;
        end else if ((1'b1 == ap_condition_3070)) begin
            SEQB_1_address0_local = zext_ln77_5_fu_2429_p1;
        end else if ((1'b1 == ap_condition_3060)) begin
            SEQB_1_address0_local = zext_ln66_5_fu_2423_p1;
        end else if ((1'b1 == ap_condition_3050)) begin
            SEQB_1_address0_local = zext_ln77_4_fu_2288_p1;
        end else if ((1'b1 == ap_condition_3041)) begin
            SEQB_1_address0_local = zext_ln66_4_fu_2282_p1;
        end else if ((1'b1 == ap_condition_3032)) begin
            SEQB_1_address0_local = zext_ln77_3_fu_2179_p1;
        end else if ((1'b1 == ap_condition_3024)) begin
            SEQB_1_address0_local = zext_ln66_3_fu_2173_p1;
        end else if ((1'b1 == ap_condition_3016)) begin
            SEQB_1_address0_local = zext_ln77_2_fu_2047_p1;
        end else if ((1'b1 == ap_condition_3009)) begin
            SEQB_1_address0_local = zext_ln66_2_fu_2041_p1;
        end else if ((1'b1 == ap_condition_3002)) begin
            SEQB_1_address0_local = zext_ln77_1_fu_1938_p1;
        end else if ((1'b1 == ap_condition_2996)) begin
            SEQB_1_address0_local = zext_ln66_1_fu_1932_p1;
        end else if ((1'b1 == ap_condition_2857)) begin
            SEQB_1_address0_local = zext_ln77_fu_1798_p1;
        end else if ((1'b1 == ap_condition_2600)) begin
            SEQB_1_address0_local = zext_ln66_fu_1792_p1;
        end else begin
            SEQB_1_address0_local = 'bx;
        end
    end else begin
        SEQB_1_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_7_fu_2638_p3 == 8'd92) & ~(select_ln64_7_fu_2638_p3 == 8'd60) & (trunc_ln17_25_reg_3321 == 1'd0) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_6_fu_2513_p3 == 8'd92) & ~(select_ln64_6_fu_2513_p3 == 8'd60) & (trunc_ln17_21_reg_3242 == 1'd0) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_5_fu_2404_p3 == 8'd92) & ~(select_ln64_5_fu_2404_p3 == 8'd60) & (trunc_ln17_17_reg_3159 == 1'd0) & (or_ln62_5_reg_3164== 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_4_fu_2263_p3 == 8'd92) & ~(select_ln64_4_fu_2263_p3 == 8'd60) & (trunc_ln17_13_reg_3075 == 1'd0) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_3_fu_2154_p3 == 8'd92) & ~(select_ln64_3_fu_2154_p3 == 8'd60) & (trunc_ln17_9_reg_2992 == 1'd0) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_2_fu_2022_p3 ==8'd92) & ~(select_ln64_2_fu_2022_p3 == 8'd60) & (trunc_ln17_5_reg_2913 == 1'd0) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_1_fu_1913_p3 == 8'd92) & ~(select_ln64_1_fu_1913_p3 == 8'd60) & (trunc_ln17_1_reg_2830 == 1'd0) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_fu_1773_p3 == 8'd92) & ~(select_ln64_fu_1773_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1773_p3 == 8'd92) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_25_reg_3321 == 1'd0) & (select_ln64_7_fu_2638_p3 == 8'd92) & (or_ln62_7_reg_3326== 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_21_reg_3242 == 1'd0) & (select_ln64_6_fu_2513_p3 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_17_reg_3159 == 1'd0) & (select_ln64_5_fu_2404_p3 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (or_ln62_reg_2743 == 1'd1)& (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_13_reg_3075 == 1'd0) & (select_ln64_4_fu_2263_p3 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_9_reg_2992 == 1'd0) & (select_ln64_3_fu_2154_p3 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_5_reg_2913 == 1'd0) & (select_ln64_2_fu_2022_p3 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((trunc_ln17_1_reg_2830 == 1'd0)& (select_ln64_1_fu_1913_p3 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state34))) begin
        a_str_idx_0_0_out_ap_vld = 1'b1;
    end else begin
        a_str_idx_0_0_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
if (((~(select_ln64_6_reg_3266 == 8'd60) & ~(select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743== 1'd1) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_address0_local = zext_ln65_7_fu_2551_p1;
    end else if (((~(select_ln64_4_reg_3099 == 8'd60) & ~(select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_address0_local = zext_ln65_4_fu_2320_p1;
    end else if (((~(select_ln64_2_reg_2937 == 8'd60) & ~(select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_address0_local = zext_ln65_1_fu_2070_p1;
    end else if (((~(select_ln64_reg_2762 == 8'd60) & ~(select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_address0_local = zext_ln18_fu_1821_p1;
    end else begin
        alignedA_0_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_6_reg_3266 == 8'd60) & ~(select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743== 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_4_reg_3099 == 8'd60) & ~(select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) |(~(select_ln64_2_reg_2937 == 8'd60) & ~(select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_reg_2762 == 8'd60) & ~(select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743== 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((select_ln64_6_reg_3266 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_d0_local = grp_fu_1513_p3;
    end else if ((((select_ln64_4_reg_3099 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_d0_local = grp_fu_1417_p3;
    end else if ((((select_ln64_2_reg_2937 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_d0_local = grp_fu_1321_p3;
end else if (((~(select_ln64_6_reg_3266 == 8'd60) & ~(select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_4_reg_3099 == 8'd60) & ~(select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_2_reg_2937 == 8'd60) & ~(select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_reg_2762 == 8'd60)& ~(select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_d0_local = 8'd45;
    end else if ((((select_ln64_reg_2762 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_d0_local = grp_fu_1225_p3;
    end else begin
        alignedA_0_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_6_reg_3266 == 8'd60) & ~(select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743== 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_4_reg_3099 == 8'd60) & ~(select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) |(~(select_ln64_2_reg_2937 == 8'd60) & ~(select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_reg_2762 == 8'd60) & ~(select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743== 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(select_ln64_7_reg_3355 == 8'd60) & ~(select_ln64_7_reg_3355 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997== 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedA_1_address0_local = alignedA_1_addr_3_reg_3345;
    end else if (((~(select_ln64_5_reg_3193 == 8'd60) & ~(select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_address0_local = alignedA_1_addr_2_reg_3183;
    end else if (((~(select_ln64_3_reg_3026 == 8'd60) & ~(select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_address0_local = alignedA_1_addr_1_reg_3016;
    end else if (((~(select_ln64_1_reg_2864 == 8'd60) & ~(select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_address0_local = alignedA_1_addr_reg_2854;
    end else begin
        alignedA_1_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_5_reg_3193 == 8'd60) & ~(select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))| (~(select_ln64_3_reg_3026 == 8'd60) & ~(select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_1_reg_2864 == 8'd60) & ~(select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_7_reg_3355 == 8'd60) & ~(select_ln64_7_reg_3355 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164== 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedA_1_d0_local = grp_fu_1561_p3;
    end else if ((((select_ln64_5_reg_3193 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_d0_local = grp_fu_1465_p3;
    end else if ((((select_ln64_3_reg_3026 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_d0_local = grp_fu_1369_p3;
end else if (((~(select_ln64_5_reg_3193 == 8'd60) & ~(select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_3_reg_3026 == 8'd60) & ~(select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_1_reg_2864 == 8'd60) & ~(select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_7_reg_3355 == 8'd60) & ~(select_ln64_7_reg_3355 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_3326== 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedA_1_d0_local = 8'd45;
    end else if ((((select_ln64_1_reg_2864 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedA_1_d0_local = grp_fu_1273_p3;
    end else begin
        alignedA_1_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_5_reg_3193 == 8'd60) & ~(select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))| (~(select_ln64_3_reg_3026 == 8'd60) & ~(select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_1_reg_2864 == 8'd60) & ~(select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_7_reg_3355 == 8'd60) & ~(select_ln64_7_reg_3355 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164== 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(select_ln64_6_reg_3266 == 8'd60) & ~(select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743== 1'd1) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_address0_local = zext_ln65_7_fu_2551_p1;
    end else if (((~(select_ln64_4_reg_3099 == 8'd60) & ~(select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_address0_local = zext_ln65_4_fu_2320_p1;
    end else if (((~(select_ln64_2_reg_2937 == 8'd60) & ~(select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_address0_local = zext_ln65_1_fu_2070_p1;
    end else if (((~(select_ln64_reg_2762 == 8'd60) & ~(select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_address0_local = zext_ln18_fu_1821_p1;
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_6_reg_3266 == 8'd60) & ~(select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743== 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_4_reg_3099 == 8'd60) & ~(select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) |(~(select_ln64_2_reg_2937 == 8'd60) & ~(select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_reg_2762 == 8'd60) & ~(select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743== 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_6_reg_3266 == 8'd60) & ~(select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_d0_local = grp_fu_1521_p3;
    end else if (((~(select_ln64_4_reg_3099 == 8'd60) & ~(select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_d0_local = grp_fu_1425_p3;
    end else if (((~(select_ln64_2_reg_2937 == 8'd60) & ~(select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_d0_local = grp_fu_1329_p3;
    end else if (((~(select_ln64_reg_2762 == 8'd60) & ~(select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_d0_local = grp_fu_1233_p3;
end else if ((((select_ln64_6_reg_3266 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0== 1'b1)))) begin
        alignedB_0_d0_local = 8'd45;
    end else begin
        alignedB_0_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_6_reg_3266 == 8'd60) & ~(select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_6_reg_3266 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (or_ln62_reg_2743== 1'd1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_4_reg_3099 == 8'd60) & ~(select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_4_reg_3099 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) |(~(select_ln64_2_reg_2937 == 8'd60) & ~(select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_2_reg_2937 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_reg_2762 == 8'd60) & ~(select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743== 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_reg_2762 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage3) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if (((~(select_ln64_7_reg_3355 == 8'd60) & ~(select_ln64_7_reg_3355 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997== 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_1_address0_local = alignedB_1_addr_3_reg_3350;
    end else if (((~(select_ln64_5_reg_3193 == 8'd60) & ~(select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_address0_local = alignedB_1_addr_2_reg_3188;
    end else if (((~(select_ln64_3_reg_3026 == 8'd60) & ~(select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_address0_local = alignedB_1_addr_1_reg_3021;
    end else if (((~(select_ln64_1_reg_2864 == 8'd60) & ~(select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_address0_local = alignedB_1_addr_reg_2859;
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_5_reg_3193 == 8'd60) & ~(select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))| (~(select_ln64_3_reg_3026 == 8'd60) & ~(select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_1_reg_2864 == 8'd60) & ~(select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_7_reg_3355 == 8'd60) & ~(select_ln64_7_reg_3355 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164== 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(select_ln64_7_reg_3355 == 8'd60) & ~(select_ln64_7_reg_3355 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_1_d0_local = grp_fu_1569_p3;
    end else if (((~(select_ln64_5_reg_3193 == 8'd60) & ~(select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_d0_local = grp_fu_1473_p3;
    end else if (((~(select_ln64_3_reg_3026 == 8'd60) & ~(select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_d0_local = grp_fu_1377_p3;
    end else if (((~(select_ln64_1_reg_2864 == 8'd60) & ~(select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        alignedB_1_d0_local = grp_fu_1281_p3;
end else if ((((select_ln64_5_reg_3193 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918== 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0)))) begin
        alignedB_1_d0_local = 8'd45;
    end else begin
        alignedB_1_d0_local = 'bx;
    end
end
always @ (*) begin
if (((~(select_ln64_5_reg_3193 == 8'd60) & ~(select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_5_reg_3193 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))| (~(select_ln64_3_reg_3026 == 8'd60) & ~(select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_3_reg_3026 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_1_reg_2864 == 8'd60) & ~(select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((select_ln64_1_reg_2864 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | (~(select_ln64_7_reg_3355 == 8'd60) & ~(select_ln64_7_reg_3355 == 8'd92) & (ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164== 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln64_7_reg_3355 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_2743 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
assign ap_ST_fsm_state35_blk = 1'b0;
always @ (*) begin
    if (((ap_predicate_tran24to33_state24 == 1'b1) | (ap_predicate_tran24to32_state24 == 1'b1) | (ap_predicate_tran24to31_state24 == 1'b1) | (ap_predicate_tran24to30_state24 == 1'b1) | (ap_predicate_tran24to29_state24 == 1'b1) | (ap_predicate_tran24to28_state24 == 1'b1) | (ap_predicate_tran24to27_state24 == 1'b1) | (or_ln62_reg_2743 == 1'd0))) begin
        ap_condition_pp0_exit_iter0_state24 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state24 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state35) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((~(select_ln64_7_reg_3355 == 8'd60) & ~(select_ln64_7_reg_3355 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1))) begin
        ap_phi_mux_a_idx_25_phi_fu_1137_p6 = a_idx_22_reg_1108;
    end else if ((((select_ln64_7_reg_3355 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1)) | ((select_ln64_7_reg_3355 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1)))) begin
        ap_phi_mux_a_idx_25_phi_fu_1137_p6 = reg_1665;
    end else begin
        ap_phi_mux_a_idx_25_phi_fu_1137_p6 = ap_phi_reg_pp0_iter1_a_idx_25_reg_1134;
    end
end
always @ (*) begin
    if (((select_ln64_7_reg_3355 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1))) begin
        ap_phi_mux_b_idx_25_phi_fu_1149_p6 = b_idx_22_reg_1121;
    end else if (((~(select_ln64_7_reg_3355 == 8'd60) & ~(select_ln64_7_reg_3355 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1)) | ((select_ln64_7_reg_3355 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1)))) begin
        ap_phi_mux_b_idx_25_phi_fu_1149_p6 = reg_1671;
    end else begin
        ap_phi_mux_b_idx_25_phi_fu_1149_p6 = ap_phi_reg_pp0_iter1_b_idx_25_reg_1146;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        ap_return = UnifiedRetVal_reg_1158;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state34))) begin
        b_str_idx_6_out_ap_vld = 1'b1;
    end else begin
        b_str_idx_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22))) begin
            ptr_0_address0_local = zext_ln64_7_fu_2629_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            ptr_0_address0_local = zext_ln64_6_fu_2507_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16))) begin
            ptr_0_address0_local = zext_ln64_5_fu_2398_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13))) begin
            ptr_0_address0_local = zext_ln64_4_fu_2257_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10))) begin
            ptr_0_address0_local = zext_ln64_3_fu_2148_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            ptr_0_address0_local = zext_ln64_2_fu_2016_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            ptr_0_address0_local = zext_ln64_1_fu_1907_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_0_address0_local = zext_ln64_fu_1767_p1;
        end else begin
            ptr_0_address0_local = 'bx;
        end
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22))) begin
            ptr_1_address0_local = zext_ln64_7_fu_2629_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            ptr_1_address0_local = zext_ln64_6_fu_2507_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16))) begin
            ptr_1_address0_local = zext_ln64_5_fu_2398_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13))) begin
            ptr_1_address0_local = zext_ln64_4_fu_2257_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10))) begin
            ptr_1_address0_local = zext_ln64_3_fu_2148_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            ptr_1_address0_local = zext_ln64_2_fu_2016_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            ptr_1_address0_local = zext_ln64_1_fu_1907_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            ptr_1_address0_local = zext_ln64_fu_1767_p1;
        end else begin
            ptr_1_address0_local = 'bx;
        end
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((~(((or_ln62_reg_2743 == 1'd0) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran24to33_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran24to32_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran24to31_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran24to30_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran24to29_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran24to28_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_predicate_tran24to27_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) & (1'b0 == ap_block_pp0_stage22_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else if (((or_ln62_reg_2743 == 1'd0) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state34;
            end else if (((ap_predicate_tran24to33_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state33;
            end else if (((ap_predicate_tran24to32_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end else if (((ap_predicate_tran24to31_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state31;
            end else if (((ap_predicate_tran24to30_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end else if (((ap_predicate_tran24to29_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state29;
            end else if (((ap_predicate_tran24to28_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state28;
            end else if (((ap_predicate_tran24to27_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
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
assign SEQB_0_address0 = SEQB_0_address0_local;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = SEQB_1_address0_local;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign a_str_idx_0_0_out = a_str_idx_0_0_fu_110;
assign add_ln64_1_fu_1887_p2 = (r_6_fu_1881_p2 + p_shl1_fu_1873_p3);
assign add_ln64_2_fu_1996_p2 = (r_5_fu_1990_p2 + p_shl2_fu_1982_p3);
assign add_ln64_3_fu_2128_p2 = (r_4_fu_2122_p2 + p_shl3_fu_2114_p3);
assign add_ln64_4_fu_2237_p2 = (r_3_fu_2231_p2 + p_shl4_fu_2223_p3);
assign add_ln64_5_fu_2378_p2 = (r_2_fu_2372_p2 + p_shl5_fu_2364_p3);
assign add_ln64_6_fu_2487_p2 = (r_1_fu_2481_p2 + p_shl6_fu_2473_p3);
assign add_ln64_7_fu_2609_p2 = (r_fu_2603_p2 + p_shl7_fu_2595_p3);
assign add_ln64_fu_1747_p2 = (r_7_fu_1741_p2 + trunc_ln18_3_fu_1721_p1);
assign add_ln65_fu_2645_p2 = (b_str_idx_1_reg_2806 + 64'd8);
assign alignedA_0_address0 = alignedA_0_address0_local;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_d0 = alignedA_0_d0_local;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_1_address0 = alignedA_1_address0_local;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_d0 = alignedA_1_d0_local;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_d0 = alignedB_0_d0_local;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_d0 = alignedB_1_d0_local;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state35 = ap_CS_fsm[32'd33];
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
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
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
    ap_condition_2596 = ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1773_p3 == 8'd60) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_2600 = ((1'b1 == ap_CS_fsm_pp0_stage2) & (select_ln64_fu_1773_p3 == 8'd92) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_2606 = ((trunc_ln17_reg_2825 == 1'd1) & (select_ln64_1_fu_1913_p3 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_2612 = ((trunc_ln17_reg_2825 == 1'd1) & (select_ln64_1_fu_1913_p3 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_2619 = ((trunc_ln17_4_reg_2908 == 1'd1) & (select_ln64_2_fu_2022_p3 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_2626 = ((trunc_ln17_4_reg_2908 == 1'd1) & (select_ln64_2_fu_2022_p3 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_2634 = ((trunc_ln17_8_reg_2987 == 1'd1) & (select_ln64_3_fu_2154_p3 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_2642 = ((trunc_ln17_8_reg_2987 == 1'd1) & (select_ln64_3_fu_2154_p3 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_2651 = ((trunc_ln17_12_reg_3070 == 1'd1) & (select_ln64_4_fu_2263_p3 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14));
end
always @ (*) begin
    ap_condition_2660 = ((trunc_ln17_12_reg_3070 == 1'd1) & (select_ln64_4_fu_2263_p3 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14));
end
always @ (*) begin
    ap_condition_2670 = ((trunc_ln17_16_reg_3154 == 1'd1) & (select_ln64_5_fu_2404_p3 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17));
end
always @ (*) begin
    ap_condition_2680 = ((trunc_ln17_16_reg_3154 == 1'd1) & (select_ln64_5_fu_2404_p3 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17));
end
always @ (*) begin
    ap_condition_2691 = ((trunc_ln17_20_reg_3237 == 1'd1) & (select_ln64_6_fu_2513_p3 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20));
end
always @ (*) begin
    ap_condition_2702 = ((trunc_ln17_20_reg_3237 == 1'd1) & (select_ln64_6_fu_2513_p3 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20));
end
always @ (*) begin
    ap_condition_2714 = ((trunc_ln17_24_reg_3316 == 1'd1) & (select_ln64_7_fu_2638_p3 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23));
end
always @ (*) begin
    ap_condition_2726 = ((trunc_ln17_24_reg_3316 == 1'd1) & (select_ln64_7_fu_2638_p3 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23));
end
always @ (*) begin
    ap_condition_2732 = ((trunc_ln17_reg_2825 == 1'd0) & (select_ln64_1_fu_1913_p3 == 8'd60) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_2738 = ((trunc_ln17_reg_2825 == 1'd0) & (select_ln64_1_fu_1913_p3 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_2745 = ((trunc_ln17_4_reg_2908 == 1'd0) & (select_ln64_2_fu_2022_p3 == 8'd60) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_2752 = ((trunc_ln17_4_reg_2908 == 1'd0) & (select_ln64_2_fu_2022_p3 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_2760 = ((trunc_ln17_8_reg_2987 == 1'd0) & (select_ln64_3_fu_2154_p3 == 8'd60) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_2768 = ((trunc_ln17_8_reg_2987 == 1'd0) & (select_ln64_3_fu_2154_p3 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_2777 = ((trunc_ln17_12_reg_3070 == 1'd0) & (select_ln64_4_fu_2263_p3 == 8'd60) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14));
end
always @ (*) begin
    ap_condition_2786 = ((trunc_ln17_12_reg_3070 == 1'd0) & (select_ln64_4_fu_2263_p3 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14));
end
always @ (*) begin
    ap_condition_2796 = ((trunc_ln17_16_reg_3154 == 1'd0) & (select_ln64_5_fu_2404_p3 == 8'd60) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17));
end
always @ (*) begin
    ap_condition_2806 = ((trunc_ln17_16_reg_3154 == 1'd0) & (select_ln64_5_fu_2404_p3 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17));
end
always @ (*) begin
    ap_condition_2817 = ((trunc_ln17_20_reg_3237 == 1'd0) & (select_ln64_6_fu_2513_p3 == 8'd60) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20));
end
always @ (*) begin
    ap_condition_2828 = ((trunc_ln17_20_reg_3237 == 1'd0) & (select_ln64_6_fu_2513_p3 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20));
end
always @ (*) begin
    ap_condition_2840 = ((trunc_ln17_24_reg_3316 == 1'd0) & (select_ln64_7_fu_2638_p3 == 8'd60) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23));
end
always @ (*) begin
    ap_condition_2852 = ((trunc_ln17_24_reg_3316 == 1'd0) & (select_ln64_7_fu_2638_p3 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23));
end
always @ (*) begin
    ap_condition_2857 = (~(select_ln64_fu_1773_p3 == 8'd92) & ~(select_ln64_fu_1773_p3 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_2863 = ((trunc_ln17_1_reg_2830 == 1'd1) & (select_ln64_1_fu_1913_p3 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_2870 = (~(select_ln64_1_fu_1913_p3 == 8'd92) & ~(select_ln64_1_fu_1913_p3 == 8'd60) & (trunc_ln17_1_reg_2830 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_2877 = ((trunc_ln17_5_reg_2913 == 1'd1) & (select_ln64_2_fu_2022_p3 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_2885 = (~(select_ln64_2_fu_2022_p3 == 8'd92) & ~(select_ln64_2_fu_2022_p3 == 8'd60) & (trunc_ln17_5_reg_2913 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_2893 = ((trunc_ln17_9_reg_2992 == 1'd1) & (select_ln64_3_fu_2154_p3 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_2902 = (~(select_ln64_3_fu_2154_p3 == 8'd92) & ~(select_ln64_3_fu_2154_p3 == 8'd60) & (trunc_ln17_9_reg_2992 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_2911 = ((trunc_ln17_13_reg_3075 == 1'd1) & (select_ln64_4_fu_2263_p3 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14));
end
always @ (*) begin
    ap_condition_2921 = (~(select_ln64_4_fu_2263_p3 == 8'd92) & ~(select_ln64_4_fu_2263_p3 == 8'd60) & (trunc_ln17_13_reg_3075 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14));
end
always @ (*) begin
    ap_condition_2931 = ((trunc_ln17_17_reg_3159 == 1'd1) & (select_ln64_5_fu_2404_p3 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17));
end
always @ (*) begin
    ap_condition_2942 = (~(select_ln64_5_fu_2404_p3 == 8'd92) & ~(select_ln64_5_fu_2404_p3 == 8'd60) & (trunc_ln17_17_reg_3159 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17));
end
always @ (*) begin
    ap_condition_2953 = ((trunc_ln17_21_reg_3242 == 1'd1) & (select_ln64_6_fu_2513_p3 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20));
end
always @ (*) begin
    ap_condition_2965 = (~(select_ln64_6_fu_2513_p3 == 8'd92) & ~(select_ln64_6_fu_2513_p3 == 8'd60) & (trunc_ln17_21_reg_3242 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20));
end
always @ (*) begin
    ap_condition_2977 = ((trunc_ln17_25_reg_3321 == 1'd1) & (select_ln64_7_fu_2638_p3 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23));
end
always @ (*) begin
    ap_condition_2990 = (~(select_ln64_7_fu_2638_p3 == 8'd92) & ~(select_ln64_7_fu_2638_p3 == 8'd60) & (trunc_ln17_25_reg_3321 == 1'd1) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23));
end
always @ (*) begin
    ap_condition_2996 = ((trunc_ln17_1_reg_2830 == 1'd0) & (select_ln64_1_fu_1913_p3 == 8'd92) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_3002 = (~(select_ln64_1_fu_1913_p3 == 8'd92) & ~(select_ln64_1_fu_1913_p3 == 8'd60) & (trunc_ln17_1_reg_2830 == 1'd0) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5));
end
always @ (*) begin
    ap_condition_3009 = ((trunc_ln17_5_reg_2913 == 1'd0) & (select_ln64_2_fu_2022_p3 == 8'd92) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_3016 = (~(select_ln64_2_fu_2022_p3 == 8'd92) & ~(select_ln64_2_fu_2022_p3 == 8'd60) & (trunc_ln17_5_reg_2913 == 1'd0) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8));
end
always @ (*) begin
    ap_condition_3024 = ((trunc_ln17_9_reg_2992 == 1'd0) & (select_ln64_3_fu_2154_p3 == 8'd92) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_3032 = (~(select_ln64_3_fu_2154_p3 == 8'd92) & ~(select_ln64_3_fu_2154_p3 == 8'd60) & (trunc_ln17_9_reg_2992 == 1'd0) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11));
end
always @ (*) begin
    ap_condition_3041 = ((trunc_ln17_13_reg_3075 == 1'd0) & (select_ln64_4_fu_2263_p3 == 8'd92) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14));
end
always @ (*) begin
    ap_condition_3050 = (~(select_ln64_4_fu_2263_p3 == 8'd92) & ~(select_ln64_4_fu_2263_p3 == 8'd60) & (trunc_ln17_13_reg_3075 == 1'd0) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14));
end
always @ (*) begin
    ap_condition_3060 = ((trunc_ln17_17_reg_3159 == 1'd0) & (select_ln64_5_fu_2404_p3 == 8'd92) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17));
end
always @ (*) begin
    ap_condition_3070 = (~(select_ln64_5_fu_2404_p3 == 8'd92) & ~(select_ln64_5_fu_2404_p3 == 8'd60) & (trunc_ln17_17_reg_3159 == 1'd0) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17));
end
always @ (*) begin
    ap_condition_3081 = ((trunc_ln17_21_reg_3242 == 1'd0) & (select_ln64_6_fu_2513_p3 == 8'd92) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20));
end
always @ (*) begin
    ap_condition_3092 = (~(select_ln64_6_fu_2513_p3 == 8'd92) & ~(select_ln64_6_fu_2513_p3 == 8'd60) & (trunc_ln17_21_reg_3242 == 1'd0) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20));
end
always @ (*) begin
    ap_condition_3104 = ((trunc_ln17_25_reg_3321 == 1'd0) & (select_ln64_7_fu_2638_p3 == 8'd92) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23));
end
always @ (*) begin
    ap_condition_3116 = (~(select_ln64_7_fu_2638_p3 == 8'd92) & ~(select_ln64_7_fu_2638_p3 == 8'd60) & (trunc_ln17_25_reg_3321 == 1'd0) & (or_ln62_7_reg_3326 == 1'd1) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_phi_reg_pp0_iter1_a_idx_25_reg_1134 = 'bx;
assign ap_phi_reg_pp0_iter1_b_idx_25_reg_1146 = 'bx;
always @ (*) begin
    ap_predicate_tran24to27_state24 = ((or_ln62_7_fu_2585_p2 == 1'd0) & (or_ln62_6_reg_3247 == 1'd1) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran24to28_state24 = ((or_ln62_6_reg_3247 == 1'd0) & (or_ln62_5_reg_3164 == 1'd1) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran24to29_state24 = ((or_ln62_5_reg_3164 == 1'd0) & (or_ln62_4_reg_3080 == 1'd1) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran24to30_state24 = ((or_ln62_4_reg_3080 == 1'd0) & (or_ln62_3_reg_2997 == 1'd1) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran24to31_state24 = ((or_ln62_3_reg_2997 == 1'd0) & (or_ln62_2_reg_2918 == 1'd1) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran24to32_state24 = ((or_ln62_2_reg_2918 == 1'd0) & (or_ln62_1_reg_2835 == 1'd1) & (or_ln62_reg_2743 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran24to33_state24 = ((or_ln62_1_reg_2835 == 1'd0) & (or_ln62_reg_2743 == 1'd1));
end
assign b_str_idx_6_out = trunc_ln18_reg_2814;
assign b_str_idx_fu_2650_p2 = (a_str_idx_0_0_fu_110 + 32'd8);
assign grp_fu_1195_p2 = ($signed(a_idx_1_reg_2736) + $signed(32'd4294967295));
assign grp_fu_1200_p4 = {{grp_fu_1195_p2[6:1]}};
assign grp_fu_1210_p2 = ($signed(b_idx_1_reg_2729) + $signed(32'd4294967295));
assign grp_fu_1215_p4 = {{grp_fu_1210_p2[6:1]}};
assign grp_fu_1225_p3 = ((trunc_ln18_1_fu_1827_p1[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_1233_p3 = ((trunc_ln18_2_fu_1831_p1[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign grp_fu_1241_p2 = ($signed(a_idx_4_reg_954) + $signed(32'd4294967295));
assign grp_fu_1247_p4 = {{grp_fu_1241_p2[6:1]}};
assign grp_fu_1257_p2 = ($signed(b_idx_4_reg_966) + $signed(32'd4294967295));
assign grp_fu_1263_p4 = {{grp_fu_1257_p2[6:1]}};
assign grp_fu_1273_p3 = ((trunc_ln17_reg_2825[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_1281_p3 = ((trunc_ln17_1_reg_2830[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign grp_fu_1289_p2 = ($signed(a_idx_7_reg_978) + $signed(32'd4294967295));
assign grp_fu_1295_p4 = {{grp_fu_1289_p2[6:1]}};
assign grp_fu_1305_p2 = ($signed(b_idx_7_reg_991) + $signed(32'd4294967295));
assign grp_fu_1311_p4 = {{grp_fu_1305_p2[6:1]}};
assign grp_fu_1321_p3 = ((trunc_ln17_4_reg_2908[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_1329_p3 = ((trunc_ln17_5_reg_2913[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign grp_fu_1337_p2 = ($signed(a_idx_10_reg_1004) + $signed(32'd4294967295));
assign grp_fu_1343_p4 = {{grp_fu_1337_p2[6:1]}};
assign grp_fu_1353_p2 = ($signed(b_idx_10_reg_1017) + $signed(32'd4294967295));
assign grp_fu_1359_p4 = {{grp_fu_1353_p2[6:1]}};
assign grp_fu_1369_p3 = ((trunc_ln17_8_reg_2987[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_1377_p3 = ((trunc_ln17_9_reg_2992[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign grp_fu_1385_p2 = ($signed(a_idx_13_reg_1030) + $signed(32'd4294967295));
assign grp_fu_1391_p4 = {{grp_fu_1385_p2[6:1]}};
assign grp_fu_1401_p2 = ($signed(b_idx_13_reg_1043) + $signed(32'd4294967295));
assign grp_fu_1407_p4 = {{grp_fu_1401_p2[6:1]}};
assign grp_fu_1417_p3 = ((trunc_ln17_12_reg_3070[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_1425_p3 = ((trunc_ln17_13_reg_3075[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign grp_fu_1433_p2 = ($signed(a_idx_16_reg_1056) + $signed(32'd4294967295));
assign grp_fu_1439_p4 = {{grp_fu_1433_p2[6:1]}};
assign grp_fu_1449_p2 = ($signed(b_idx_16_reg_1069) + $signed(32'd4294967295));
assign grp_fu_1455_p4 = {{grp_fu_1449_p2[6:1]}};
assign grp_fu_1465_p3 = ((trunc_ln17_16_reg_3154[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_1473_p3 = ((trunc_ln17_17_reg_3159[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign grp_fu_1481_p2 = ($signed(a_idx_19_reg_1082) + $signed(32'd4294967295));
assign grp_fu_1487_p4 = {{grp_fu_1481_p2[6:1]}};
assign grp_fu_1497_p2 = ($signed(b_idx_19_reg_1095) + $signed(32'd4294967295));
assign grp_fu_1503_p4 = {{grp_fu_1497_p2[6:1]}};
assign grp_fu_1513_p3 = ((trunc_ln17_20_reg_3237[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_1521_p3 = ((trunc_ln17_21_reg_3242[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign grp_fu_1529_p2 = ($signed(a_idx_22_reg_1108) + $signed(32'd4294967295));
assign grp_fu_1535_p4 = {{grp_fu_1529_p2[6:1]}};
assign grp_fu_1545_p2 = ($signed(b_idx_22_reg_1121) + $signed(32'd4294967295));
assign grp_fu_1551_p4 = {{grp_fu_1545_p2[6:1]}};
assign grp_fu_1561_p3 = ((trunc_ln17_24_reg_3316[0:0] == 1'b1) ? SEQA_0_q0 : SEQA_1_q0);
assign grp_fu_1569_p3 = ((trunc_ln17_25_reg_3321[0:0] == 1'b1) ? SEQB_0_q0 : SEQB_1_q0);
assign icmp_ln62_10_fu_2342_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_16_reg_1056) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_11_fu_2348_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_16_reg_1069) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_12_fu_2451_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_19_reg_1082) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_13_fu_2457_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_19_reg_1095) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_14_fu_2573_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_22_reg_1108) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_15_fu_2579_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_22_reg_1121) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_1_fu_1709_p2 = (($signed(b_idx_fu_118) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_2_fu_1851_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_4_reg_954) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_3_fu_1857_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_4_reg_966) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_4_fu_1960_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_7_reg_978) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_5_fu_1966_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_7_reg_991) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_6_fu_2092_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_10_reg_1004) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_7_fu_2098_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_10_reg_1017) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_8_fu_2201_p2 = (($signed(ap_phi_reg_pp0_iter0_a_idx_13_reg_1030) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_9_fu_2207_p2 = (($signed(ap_phi_reg_pp0_iter0_b_idx_13_reg_1043) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_1703_p2 = (($signed(a_idx_fu_122) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign lshr_ln64_1_fu_1897_p4 = {{add_ln64_1_fu_1887_p2[14:1]}};
assign lshr_ln64_2_fu_2006_p4 = {{add_ln64_2_fu_1996_p2[14:1]}};
assign lshr_ln64_3_fu_2138_p4 = {{add_ln64_3_fu_2128_p2[14:1]}};
assign lshr_ln64_4_fu_2247_p4 = {{add_ln64_4_fu_2237_p2[14:1]}};
assign lshr_ln64_5_fu_2388_p4 = {{add_ln64_5_fu_2378_p2[14:1]}};
assign lshr_ln64_6_fu_2497_p4 = {{add_ln64_6_fu_2487_p2[14:1]}};
assign lshr_ln64_7_fu_2619_p4 = {{add_ln64_7_fu_2609_p2[14:1]}};
assign lshr_ln6_fu_1811_p4 = {{a_str_idx_fu_114[7:1]}};
assign lshr_ln7_fu_1757_p4 = {{add_ln64_fu_1747_p2[14:1]}};
assign or_ln4_fu_2062_p3 = {{tmp_s_fu_2053_p4}, {1'd1}};
assign or_ln62_1_fu_1863_p2 = (icmp_ln62_3_fu_1857_p2 | icmp_ln62_2_fu_1851_p2);
assign or_ln62_2_fu_1972_p2 = (icmp_ln62_5_fu_1966_p2 | icmp_ln62_4_fu_1960_p2);
assign or_ln62_3_fu_2104_p2 = (icmp_ln62_7_fu_2098_p2 | icmp_ln62_6_fu_2092_p2);
assign or_ln62_4_fu_2213_p2 = (icmp_ln62_9_fu_2207_p2 | icmp_ln62_8_fu_2201_p2);
assign or_ln62_5_fu_2354_p2 = (icmp_ln62_11_fu_2348_p2 | icmp_ln62_10_fu_2342_p2);
assign or_ln62_6_fu_2463_p2 = (icmp_ln62_13_fu_2457_p2 | icmp_ln62_12_fu_2451_p2);
assign or_ln62_7_fu_2585_p2 = (icmp_ln62_15_fu_2579_p2 | icmp_ln62_14_fu_2573_p2);
assign or_ln62_fu_1715_p2 = (icmp_ln62_fu_1703_p2 | icmp_ln62_1_fu_1709_p2);
assign or_ln65_3_fu_2310_p4 = {{{tmp_1_fu_2294_p4}, {1'd1}}, {tmp_fu_2303_p3}};
assign or_ln65_6_fu_2544_p3 = {{tmp_1_reg_3143}, {2'd3}};
assign p_shl1_fu_1873_p3 = {{trunc_ln16_1_fu_1869_p1}, {7'd0}};
assign p_shl2_fu_1982_p3 = {{trunc_ln16_2_fu_1978_p1}, {7'd0}};
assign p_shl3_fu_2114_p3 = {{trunc_ln16_3_fu_2110_p1}, {7'd0}};
assign p_shl4_fu_2223_p3 = {{trunc_ln16_4_fu_2219_p1}, {7'd0}};
assign p_shl5_fu_2364_p3 = {{trunc_ln16_5_fu_2360_p1}, {7'd0}};
assign p_shl6_fu_2473_p3 = {{trunc_ln16_6_fu_2469_p1}, {7'd0}};
assign p_shl7_fu_2595_p3 = {{trunc_ln16_7_fu_2591_p1}, {7'd0}};
assign p_shl_fu_1733_p3 = {{trunc_ln16_fu_1729_p1}, {7'd0}};
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign r_1_fu_2481_p2 = (trunc_ln17_22_fu_2443_p1 + trunc_ln17_23_fu_2447_p1);
assign r_2_fu_2372_p2 = (trunc_ln17_18_fu_2334_p1 + trunc_ln17_19_fu_2338_p1);
assign r_3_fu_2231_p2 = (trunc_ln17_14_fu_2193_p1 + trunc_ln17_15_fu_2197_p1);
assign r_4_fu_2122_p2 = (trunc_ln17_10_fu_2084_p1 + trunc_ln17_11_fu_2088_p1);
assign r_5_fu_1990_p2 = (trunc_ln17_6_fu_1952_p1 + trunc_ln17_7_fu_1956_p1);
assign r_6_fu_1881_p2 = (trunc_ln17_2_fu_1843_p1 + trunc_ln17_3_fu_1847_p1);
assign r_7_fu_1741_p2 = (p_shl_fu_1733_p3 + trunc_ln18_4_fu_1725_p1);
assign r_fu_2603_p2 = (trunc_ln17_26_fu_2565_p1 + trunc_ln17_27_fu_2569_p1);
assign select_ln64_1_fu_1913_p3 = ((trunc_ln64_1_reg_2839[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign select_ln64_2_fu_2022_p3 = ((trunc_ln64_2_reg_2922[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign select_ln64_3_fu_2154_p3 = ((trunc_ln64_3_reg_3001[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign select_ln64_4_fu_2263_p3 = ((trunc_ln64_4_reg_3084[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign select_ln64_5_fu_2404_p3 = ((trunc_ln64_5_reg_3168[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign select_ln64_6_fu_2513_p3 = ((trunc_ln64_6_reg_3251[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign select_ln64_7_fu_2638_p3 = ((trunc_ln64_7_reg_3330[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign select_ln64_fu_1773_p3 = ((trunc_ln64_reg_2747[0:0] == 1'b1) ? ptr_1_q0 : ptr_0_q0);
assign tmp_1_fu_2294_p4 = {{b_str_idx_1_reg_2806[7:3]}};
assign tmp_fu_2303_p3 = b_str_idx_1_reg_2806[32'd1];
assign tmp_s_fu_2053_p4 = {{b_str_idx_1_reg_2806[7:2]}};
assign trunc_ln16_1_fu_1869_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_966[7:0];
assign trunc_ln16_2_fu_1978_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_991[7:0];
assign trunc_ln16_3_fu_2110_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_1017[7:0];
assign trunc_ln16_4_fu_2219_p1 = ap_phi_reg_pp0_iter0_b_idx_13_reg_1043[7:0];
assign trunc_ln16_5_fu_2360_p1 = ap_phi_reg_pp0_iter0_b_idx_16_reg_1069[7:0];
assign trunc_ln16_6_fu_2469_p1 = ap_phi_reg_pp0_iter0_b_idx_19_reg_1095[7:0];
assign trunc_ln16_7_fu_2591_p1 = ap_phi_reg_pp0_iter0_b_idx_22_reg_1121[7:0];
assign trunc_ln16_fu_1729_p1 = b_idx_fu_118[7:0];
assign trunc_ln17_10_fu_2084_p1 = ap_phi_reg_pp0_iter0_a_idx_10_reg_1004[14:0];
assign trunc_ln17_11_fu_2088_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_1017[14:0];
assign trunc_ln17_12_fu_2185_p1 = ap_phi_reg_pp0_iter0_a_idx_13_reg_1030[0:0];
assign trunc_ln17_13_fu_2189_p1 = ap_phi_reg_pp0_iter0_b_idx_13_reg_1043[0:0];
assign trunc_ln17_14_fu_2193_p1 = ap_phi_reg_pp0_iter0_a_idx_13_reg_1030[14:0];
assign trunc_ln17_15_fu_2197_p1 = ap_phi_reg_pp0_iter0_b_idx_13_reg_1043[14:0];
assign trunc_ln17_16_fu_2326_p1 = ap_phi_reg_pp0_iter0_a_idx_16_reg_1056[0:0];
assign trunc_ln17_17_fu_2330_p1 = ap_phi_reg_pp0_iter0_b_idx_16_reg_1069[0:0];
assign trunc_ln17_18_fu_2334_p1 = ap_phi_reg_pp0_iter0_a_idx_16_reg_1056[14:0];
assign trunc_ln17_19_fu_2338_p1 = ap_phi_reg_pp0_iter0_b_idx_16_reg_1069[14:0];
assign trunc_ln17_1_fu_1839_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_966[0:0];
assign trunc_ln17_20_fu_2435_p1 = ap_phi_reg_pp0_iter0_a_idx_19_reg_1082[0:0];
assign trunc_ln17_21_fu_2439_p1 = ap_phi_reg_pp0_iter0_b_idx_19_reg_1095[0:0];
assign trunc_ln17_22_fu_2443_p1 = ap_phi_reg_pp0_iter0_a_idx_19_reg_1082[14:0];
assign trunc_ln17_23_fu_2447_p1 = ap_phi_reg_pp0_iter0_b_idx_19_reg_1095[14:0];
assign trunc_ln17_24_fu_2557_p1 = ap_phi_reg_pp0_iter0_a_idx_22_reg_1108[0:0];
assign trunc_ln17_25_fu_2561_p1 = ap_phi_reg_pp0_iter0_b_idx_22_reg_1121[0:0];
assign trunc_ln17_26_fu_2565_p1 = ap_phi_reg_pp0_iter0_a_idx_22_reg_1108[14:0];
assign trunc_ln17_27_fu_2569_p1 = ap_phi_reg_pp0_iter0_b_idx_22_reg_1121[14:0];
assign trunc_ln17_2_fu_1843_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_954[14:0];
assign trunc_ln17_3_fu_1847_p1 = ap_phi_reg_pp0_iter0_b_idx_4_reg_966[14:0];
assign trunc_ln17_4_fu_1944_p1 = ap_phi_reg_pp0_iter0_a_idx_7_reg_978[0:0];
assign trunc_ln17_5_fu_1948_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_991[0:0];
assign trunc_ln17_6_fu_1952_p1 = ap_phi_reg_pp0_iter0_a_idx_7_reg_978[14:0];
assign trunc_ln17_7_fu_1956_p1 = ap_phi_reg_pp0_iter0_b_idx_7_reg_991[14:0];
assign trunc_ln17_8_fu_2076_p1 = ap_phi_reg_pp0_iter0_a_idx_10_reg_1004[0:0];
assign trunc_ln17_9_fu_2080_p1 = ap_phi_reg_pp0_iter0_b_idx_10_reg_1017[0:0];
assign trunc_ln17_fu_1835_p1 = ap_phi_reg_pp0_iter0_a_idx_4_reg_954[0:0];
assign trunc_ln18_1_fu_1827_p1 = a_idx_1_reg_2736[0:0];
assign trunc_ln18_2_fu_1831_p1 = b_idx_1_reg_2729[0:0];
assign trunc_ln18_3_fu_1721_p1 = a_idx_fu_122[14:0];
assign trunc_ln18_4_fu_1725_p1 = b_idx_fu_118[14:0];
assign trunc_ln18_fu_1807_p1 = a_str_idx_fu_114[31:0];
assign trunc_ln64_1_fu_1893_p1 = add_ln64_1_fu_1887_p2[0:0];
assign trunc_ln64_2_fu_2002_p1 = add_ln64_2_fu_1996_p2[0:0];
assign trunc_ln64_3_fu_2134_p1 = add_ln64_3_fu_2128_p2[0:0];
assign trunc_ln64_4_fu_2243_p1 = add_ln64_4_fu_2237_p2[0:0];
assign trunc_ln64_5_fu_2384_p1 = add_ln64_5_fu_2378_p2[0:0];
assign trunc_ln64_6_fu_2493_p1 = add_ln64_6_fu_2487_p2[0:0];
assign trunc_ln64_7_fu_2615_p1 = add_ln64_7_fu_2609_p2[0:0];
assign trunc_ln64_fu_1753_p1 = add_ln64_fu_1747_p2[0:0];
assign zext_ln18_fu_1821_p1 = lshr_ln6_fu_1811_p4;
assign zext_ln64_1_fu_1907_p1 = lshr_ln64_1_fu_1897_p4;
assign zext_ln64_2_fu_2016_p1 = lshr_ln64_2_fu_2006_p4;
assign zext_ln64_3_fu_2148_p1 = lshr_ln64_3_fu_2138_p4;
assign zext_ln64_4_fu_2257_p1 = lshr_ln64_4_fu_2247_p4;
assign zext_ln64_5_fu_2398_p1 = lshr_ln64_5_fu_2388_p4;
assign zext_ln64_6_fu_2507_p1 = lshr_ln64_6_fu_2497_p4;
assign zext_ln64_7_fu_2629_p1 = lshr_ln64_7_fu_2619_p4;
assign zext_ln64_fu_1767_p1 = lshr_ln7_fu_1757_p4;
assign zext_ln65_10_fu_2662_p1 = grp_fu_1535_p4;
assign zext_ln65_1_fu_2070_p1 = or_ln4_fu_2062_p3;
assign zext_ln65_2_fu_1926_p1 = grp_fu_1247_p4;
assign zext_ln65_3_fu_2035_p1 = grp_fu_1295_p4;
assign zext_ln65_4_fu_2320_p1 = or_ln65_3_fu_2310_p4;
assign zext_ln65_5_fu_2167_p1 = grp_fu_1343_p4;
assign zext_ln65_6_fu_2276_p1 = grp_fu_1391_p4;
assign zext_ln65_7_fu_2551_p1 = or_ln65_6_fu_2544_p3;
assign zext_ln65_8_fu_2417_p1 = grp_fu_1439_p4;
assign zext_ln65_9_fu_2526_p1 = grp_fu_1487_p4;
assign zext_ln65_fu_1786_p1 = grp_fu_1200_p4;
assign zext_ln66_1_fu_1932_p1 = grp_fu_1263_p4;
assign zext_ln66_2_fu_2041_p1 = grp_fu_1311_p4;
assign zext_ln66_3_fu_2173_p1 = grp_fu_1359_p4;
assign zext_ln66_4_fu_2282_p1 = grp_fu_1407_p4;
assign zext_ln66_5_fu_2423_p1 = grp_fu_1455_p4;
assign zext_ln66_6_fu_2532_p1 = grp_fu_1503_p4;
assign zext_ln66_7_fu_2668_p1 = grp_fu_1551_p4;
assign zext_ln66_fu_1792_p1 = grp_fu_1215_p4;
assign zext_ln71_1_fu_1920_p1 = grp_fu_1247_p4;
assign zext_ln71_2_fu_2029_p1 = grp_fu_1295_p4;
assign zext_ln71_3_fu_2161_p1 = grp_fu_1343_p4;
assign zext_ln71_4_fu_2270_p1 = grp_fu_1391_p4;
assign zext_ln71_5_fu_2411_p1 = grp_fu_1439_p4;
assign zext_ln71_6_fu_2520_p1 = grp_fu_1487_p4;
assign zext_ln71_7_fu_2656_p1 = grp_fu_1535_p4;
assign zext_ln71_fu_1780_p1 = grp_fu_1200_p4;
assign zext_ln77_1_fu_1938_p1 = grp_fu_1263_p4;
assign zext_ln77_2_fu_2047_p1 = grp_fu_1311_p4;
assign zext_ln77_3_fu_2179_p1 = grp_fu_1359_p4;
assign zext_ln77_4_fu_2288_p1 = grp_fu_1407_p4;
assign zext_ln77_5_fu_2429_p1 = grp_fu_1455_p4;
assign zext_ln77_6_fu_2538_p1 = grp_fu_1503_p4;
assign zext_ln77_7_fu_2674_p1 = grp_fu_1551_p4;
assign zext_ln77_fu_1798_p1 = grp_fu_1215_p4;
always @ (posedge ap_clk) begin
    zext_ln18_reg_2819[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln65_1_reg_2981[0] <= 1'b1;
    zext_ln65_1_reg_2981[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    alignedA_1_addr_1_reg_3016[0] <= 1'b1;
    alignedB_1_addr_1_reg_3021[0] <= 1'b1;
    zext_ln65_4_reg_3148[1] <= 1'b1;
    zext_ln65_4_reg_3148[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    alignedA_1_addr_2_reg_3183[1] <= 1'b1;
    alignedB_1_addr_2_reg_3188[1] <= 1'b1;
    zext_ln65_7_reg_3310[1:0] <= 2'b11;
    zext_ln65_7_reg_3310[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    alignedA_1_addr_3_reg_3345[1:0] <= 2'b11;
    alignedB_1_addr_3_reg_3350[1:0] <= 2'b11;
end
endmodule 