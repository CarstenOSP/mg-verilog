
module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_reload,B_46_reload,C_95_reload,D_reload,E_46_reload,W_address0,W_ce0,W_q0,W_4_address0,W_4_ce0,W_4_q0,W_8_address0,W_8_ce0,W_8_q0,W_12_address0,W_12_ce0,W_12_q0,W_16_address0,W_16_ce0,W_16_q0,W_20_address0,W_20_ce0,W_20_q0,W_24_address0,W_24_ce0,W_24_q0,W_28_address0,W_28_ce0,W_28_q0,W_1_address0,W_1_ce0,W_1_q0,W_5_address0,W_5_ce0,W_5_q0,W_9_address0,W_9_ce0,W_9_q0,W_13_address0,W_13_ce0,W_13_q0,W_17_address0,W_17_ce0,W_17_q0,W_21_address0,W_21_ce0,W_21_q0,W_25_address0,W_25_ce0,W_25_q0,W_29_address0,W_29_ce0,W_29_q0,W_2_address0,W_2_ce0,W_2_q0,W_6_address0,W_6_ce0,W_6_q0,W_10_address0,W_10_ce0,W_10_q0,W_14_address0,W_14_ce0,W_14_q0,W_18_address0,W_18_ce0,W_18_q0,W_22_address0,W_22_ce0,W_22_q0,W_26_address0,W_26_ce0,W_26_q0,W_30_address0,W_30_ce0,W_30_q0,W_3_address0,W_3_ce0,W_3_q0,W_7_address0,W_7_ce0,W_7_q0,W_11_address0,W_11_ce0,W_11_q0,W_15_address0,W_15_ce0,W_15_q0,W_19_address0,W_19_ce0,W_19_q0,W_23_address0,W_23_ce0,W_23_q0,W_27_address0,W_27_ce0,W_27_q0,W_31_address0,W_31_ce0,W_31_q0,W_load_5,W_4_load_5,W_8_load_5,W_12_load_5,W_16_load_6,W_20_load_6,W_24_load_6,W_28_load_6,W_1_load_5,W_5_load_5,W_9_load_5,W_13_load_5,W_17_load_6,W_21_load_6,W_25_load_6,W_29_load_6,W_2_load_5,W_6_load_5,W_10_load_5,W_14_load_5,W_18_load_6,W_22_load_6,W_26_load_6,W_30_load_6,W_3_load_5,W_7_load_5,W_11_load_5,W_15_load_5,W_19_load_6,W_23_load_6,W_27_load_6,W_31_load_6,C_98_out,C_98_out_ap_vld,temp_42_out,temp_42_out_ap_vld,C_99_out,C_99_out_ap_vld,temp_43_out,temp_43_out_ap_vld,C_100_out,C_100_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_reload;
input  [31:0] B_46_reload;
input  [31:0] C_95_reload;
input  [31:0] D_reload;
input  [31:0] E_46_reload;
output  [1:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [1:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [1:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [1:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [1:0] W_16_address0;
output   W_16_ce0;
input  [31:0] W_16_q0;
output  [1:0] W_20_address0;
output   W_20_ce0;
input  [31:0] W_20_q0;
output  [1:0] W_24_address0;
output   W_24_ce0;
input  [31:0] W_24_q0;
output  [1:0] W_28_address0;
output   W_28_ce0;
input  [31:0] W_28_q0;
output  [1:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [1:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [1:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [1:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [1:0] W_17_address0;
output   W_17_ce0;
input  [31:0] W_17_q0;
output  [1:0] W_21_address0;
output   W_21_ce0;
input  [31:0] W_21_q0;
output  [1:0] W_25_address0;
output   W_25_ce0;
input  [31:0] W_25_q0;
output  [1:0] W_29_address0;
output   W_29_ce0;
input  [31:0] W_29_q0;
output  [1:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [1:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [1:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [1:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [1:0] W_18_address0;
output   W_18_ce0;
input  [31:0] W_18_q0;
output  [1:0] W_22_address0;
output   W_22_ce0;
input  [31:0] W_22_q0;
output  [1:0] W_26_address0;
output   W_26_ce0;
input  [31:0] W_26_q0;
output  [1:0] W_30_address0;
output   W_30_ce0;
input  [31:0] W_30_q0;
output  [1:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [1:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [1:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [1:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [1:0] W_19_address0;
output   W_19_ce0;
input  [31:0] W_19_q0;
output  [1:0] W_23_address0;
output   W_23_ce0;
input  [31:0] W_23_q0;
output  [1:0] W_27_address0;
output   W_27_ce0;
input  [31:0] W_27_q0;
output  [1:0] W_31_address0;
output   W_31_ce0;
input  [31:0] W_31_q0;
input  [31:0] W_load_5;
input  [31:0] W_4_load_5;
input  [31:0] W_8_load_5;
input  [31:0] W_12_load_5;
input  [31:0] W_16_load_6;
input  [31:0] W_20_load_6;
input  [31:0] W_24_load_6;
input  [31:0] W_28_load_6;
input  [31:0] W_1_load_5;
input  [31:0] W_5_load_5;
input  [31:0] W_9_load_5;
input  [31:0] W_13_load_5;
input  [31:0] W_17_load_6;
input  [31:0] W_21_load_6;
input  [31:0] W_25_load_6;
input  [31:0] W_29_load_6;
input  [31:0] W_2_load_5;
input  [31:0] W_6_load_5;
input  [31:0] W_10_load_5;
input  [31:0] W_14_load_5;
input  [31:0] W_18_load_6;
input  [31:0] W_22_load_6;
input  [31:0] W_26_load_6;
input  [31:0] W_30_load_6;
input  [31:0] W_3_load_5;
input  [31:0] W_7_load_5;
input  [31:0] W_11_load_5;
input  [31:0] W_15_load_5;
input  [31:0] W_19_load_6;
input  [31:0] W_23_load_6;
input  [31:0] W_27_load_6;
input  [31:0] W_31_load_6;
output  [31:0] C_98_out;
output   C_98_out_ap_vld;
output  [31:0] temp_42_out;
output   temp_42_out_ap_vld;
output  [31:0] C_99_out;
output   C_99_out_ap_vld;
output  [31:0] temp_43_out;
output   temp_43_out_ap_vld;
output  [31:0] C_100_out;
output   C_100_out_ap_vld;
reg ap_idle;
reg C_98_out_ap_vld;
reg temp_42_out_ap_vld;
reg C_99_out_ap_vld;
reg temp_43_out_ap_vld;
reg C_100_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln128_reg_2178;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_2005;
wire   [4:0] trunc_ln15_fu_952_p1;
reg   [4:0] trunc_ln15_reg_2010;
wire   [0:0] icmp_ln128_fu_1008_p2;
wire   [31:0] tmp_4_fu_1014_p19;
reg   [31:0] tmp_4_reg_2182;
wire   [31:0] tmp_5_fu_1054_p19;
reg   [31:0] tmp_5_reg_2187;
wire   [31:0] tmp_6_fu_1094_p19;
reg   [31:0] tmp_6_reg_2192;
wire   [31:0] tmp_7_fu_1134_p19;
reg   [31:0] tmp_7_reg_2197;
wire   [31:0] tmp_s_fu_1174_p19;
reg   [31:0] tmp_s_reg_2202;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_1_fu_1213_p19;
reg   [31:0] tmp_1_reg_2207;
wire   [31:0] tmp_2_fu_1252_p19;
reg   [31:0] tmp_2_reg_2212;
wire   [31:0] tmp_3_fu_1291_p19;
reg   [31:0] tmp_3_reg_2217;
reg   [31:0] C_reg_2222;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] temp_fu_1396_p2;
reg   [31:0] temp_reg_2227;
wire   [31:0] C_3_fu_1416_p3;
reg   [31:0] C_3_reg_2232;
wire   [26:0] trunc_ln130_2_fu_1424_p1;
reg   [26:0] trunc_ln130_2_reg_2238;
reg   [4:0] lshr_ln130_2_reg_2243;
wire   [31:0] xor_ln130_3_fu_1444_p2;
reg   [31:0] xor_ln130_3_reg_2248;
wire   [31:0] add_ln130_6_fu_1455_p2;
reg   [31:0] add_ln130_6_reg_2253;
wire   [1:0] trunc_ln130_3_fu_1461_p1;
reg   [1:0] trunc_ln130_3_reg_2258;
reg   [29:0] lshr_ln130_3_reg_2263;
wire   [1:0] trunc_ln130_5_fu_1475_p1;
reg   [1:0] trunc_ln130_5_reg_2268;
reg   [29:0] lshr_ln130_5_reg_2273;
wire   [31:0] temp_1_fu_1499_p2;
reg   [31:0] temp_1_reg_2278;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] C_4_fu_1505_p3;
reg   [31:0] C_4_reg_2283;
wire   [31:0] add_ln130_9_fu_1543_p2;
reg   [31:0] add_ln130_9_reg_2290;
wire   [31:0] add_ln130_8_fu_1548_p2;
reg   [31:0] add_ln130_8_reg_2295;
wire   [31:0] add_ln130_14_fu_1559_p2;
reg   [31:0] add_ln130_14_reg_2300;
wire   [1:0] trunc_ln130_7_fu_1564_p1;
reg   [1:0] trunc_ln130_7_reg_2305;
reg   [29:0] lshr_ln130_7_reg_2310;
wire   [31:0] temp_2_fu_1582_p2;
reg   [31:0] temp_2_reg_2315;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] C_5_fu_1587_p3;
reg   [31:0] C_5_reg_2321;
wire   [26:0] trunc_ln130_6_fu_1593_p1;
reg   [26:0] trunc_ln130_6_reg_2328;
reg   [4:0] lshr_ln130_6_reg_2333;
wire   [31:0] xor_ln130_7_fu_1611_p2;
reg   [31:0] xor_ln130_7_reg_2338;
wire   [31:0] C_7_fu_1631_p3;
reg   [31:0] C_7_reg_2343;
wire   [31:0] add_ln130_28_fu_1639_p2;
reg   [31:0] add_ln130_28_reg_2349;
wire   [31:0] temp_3_fu_1654_p2;
reg   [31:0] temp_3_reg_2354;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_6_fu_1661_p3;
reg   [31:0] C_6_reg_2363;
wire   [31:0] temp_4_fu_1713_p2;
reg   [31:0] temp_4_reg_2370;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln130_10_fu_1719_p1;
reg   [26:0] trunc_ln130_10_reg_2375;
reg   [4:0] lshr_ln130_s_reg_2380;
wire   [31:0] C_9_fu_1747_p3;
reg   [31:0] C_9_reg_2385;
wire   [31:0] xor_ln130_11_fu_1759_p2;
reg   [31:0] xor_ln130_11_reg_2391;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] add_ln130_22_fu_1776_p2;
reg   [31:0] add_ln130_22_reg_2396;
wire   [31:0] C_8_fu_1793_p3;
reg   [31:0] C_8_reg_2401;
wire   [31:0] add_ln130_24_fu_1811_p2;
reg   [31:0] add_ln130_24_reg_2406;
wire   [26:0] trunc_ln130_12_fu_1834_p1;
reg   [26:0] trunc_ln130_12_reg_2411;
wire    ap_block_pp0_stage8_11001;
reg   [4:0] lshr_ln130_11_reg_2416;
wire   [31:0] add_ln130_25_fu_1848_p2;
reg   [31:0] add_ln130_25_reg_2421;
wire   [31:0] xor_ln130_15_fu_1858_p2;
reg   [31:0] xor_ln130_15_reg_2426;
wire   [31:0] add_ln130_29_fu_1938_p2;
reg   [31:0] add_ln130_29_reg_2431;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln100_fu_966_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_222;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [31:0] B_fu_226;
wire   [31:0] temp_6_fu_1910_p2;
reg   [31:0] E_1_fu_230;
reg   [31:0] B_1_fu_234;
wire   [31:0] temp_7_fu_1953_p2;
reg   [31:0] E_2_fu_238;
wire   [31:0] C_2_fu_1877_p3;
reg   [6:0] i_fu_242;
wire   [6:0] add_ln128_1_fu_1885_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage5_01001;
reg    W_ce0_local;
reg    W_4_ce0_local;
reg    W_8_ce0_local;
reg    W_12_ce0_local;
reg    W_16_ce0_local;
reg    W_20_ce0_local;
reg    W_24_ce0_local;
reg    W_28_ce0_local;
reg    W_1_ce0_local;
reg    W_5_ce0_local;
reg    W_9_ce0_local;
reg    W_13_ce0_local;
reg    W_17_ce0_local;
reg    W_21_ce0_local;
reg    W_25_ce0_local;
reg    W_29_ce0_local;
reg    W_2_ce0_local;
reg    W_6_ce0_local;
reg    W_10_ce0_local;
reg    W_14_ce0_local;
reg    W_18_ce0_local;
reg    W_22_ce0_local;
reg    W_26_ce0_local;
reg    W_30_ce0_local;
reg    W_3_ce0_local;
reg    W_7_ce0_local;
reg    W_11_ce0_local;
reg    W_15_ce0_local;
reg    W_19_ce0_local;
reg    W_23_ce0_local;
reg    W_27_ce0_local;
reg    W_31_ce0_local;
wire   [1:0] lshr_ln6_fu_956_p4;
wire   [6:0] add_ln128_fu_1002_p2;
wire   [31:0] tmp_4_fu_1014_p17;
wire   [31:0] tmp_5_fu_1054_p17;
wire   [31:0] tmp_6_fu_1094_p17;
wire   [31:0] tmp_7_fu_1134_p17;
wire   [31:0] tmp_s_fu_1174_p17;
wire    ap_block_pp0_stage1;
wire   [31:0] tmp_1_fu_1213_p17;
wire   [31:0] tmp_2_fu_1252_p17;
wire   [31:0] tmp_3_fu_1291_p17;
wire   [31:0] xor_ln130_fu_1359_p2;
wire   [26:0] trunc_ln130_fu_1345_p1;
wire   [4:0] lshr_ln7_fu_1349_p4;
wire   [31:0] add_ln130_1_fu_1379_p2;
wire   [31:0] or_ln3_fu_1371_p3;
wire   [31:0] xor_ln130_1_fu_1365_p2;
wire   [31:0] add_ln130_fu_1390_p2;
wire   [31:0] add_ln130_2_fu_1384_p2;
wire   [1:0] trunc_ln130_1_fu_1402_p1;
wire   [29:0] lshr_ln130_1_fu_1406_p4;
wire   [31:0] xor_ln130_2_fu_1438_p2;
wire   [31:0] add_ln130_5_fu_1450_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln130_4_fu_1495_p2;
wire   [31:0] or_ln130_2_fu_1489_p3;
wire   [31:0] xor_ln130_4_fu_1525_p2;
wire   [26:0] trunc_ln130_4_fu_1511_p1;
wire   [4:0] lshr_ln130_4_fu_1515_p4;
wire   [31:0] or_ln130_4_fu_1535_p3;
wire   [31:0] xor_ln130_5_fu_1530_p2;
wire   [31:0] add_ln130_13_fu_1554_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln130_10_fu_1578_p2;
wire   [31:0] xor_ln130_6_fu_1607_p2;
wire   [1:0] trunc_ln130_9_fu_1617_p1;
wire   [29:0] lshr_ln130_9_fu_1621_p4;
wire    ap_block_pp0_stage5;
wire   [31:0] add_ln130_12_fu_1650_p2;
wire   [31:0] or_ln130_6_fu_1644_p3;
wire    ap_block_pp0_stage6;
wire   [31:0] xor_ln130_8_fu_1680_p2;
wire   [26:0] trunc_ln130_8_fu_1668_p1;
wire   [4:0] lshr_ln130_8_fu_1671_p4;
wire   [31:0] add_ln130_17_fu_1697_p2;
wire   [31:0] or_ln130_8_fu_1689_p3;
wire   [31:0] xor_ln130_9_fu_1684_p2;
wire   [31:0] add_ln130_16_fu_1707_p2;
wire   [31:0] add_ln130_18_fu_1702_p2;
wire   [1:0] trunc_ln130_13_fu_1733_p1;
wire   [29:0] lshr_ln130_12_fu_1737_p4;
wire    ap_block_pp0_stage7;
wire   [31:0] xor_ln130_10_fu_1755_p2;
wire   [31:0] or_ln130_s_fu_1764_p3;
wire   [31:0] add_ln130_21_fu_1770_p2;
wire   [1:0] trunc_ln130_11_fu_1781_p1;
wire   [29:0] lshr_ln130_10_fu_1784_p4;
wire   [31:0] xor_ln130_12_fu_1801_p2;
wire   [31:0] xor_ln130_13_fu_1805_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln130_20_fu_1825_p2;
wire   [31:0] temp_5_fu_1829_p2;
wire   [31:0] xor_ln130_14_fu_1853_p2;
wire   [1:0] trunc_ln130_15_fu_1863_p1;
wire   [29:0] lshr_ln130_14_fu_1867_p4;
wire   [31:0] add_ln130_26_fu_1906_p2;
wire   [31:0] or_ln130_1_fu_1900_p3;
wire   [26:0] trunc_ln130_14_fu_1916_p1;
wire   [4:0] lshr_ln130_13_fu_1920_p4;
wire   [31:0] or_ln130_3_fu_1930_p3;
wire   [31:0] add_ln130_30_fu_1949_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire  signed [4:0] tmp_4_fu_1014_p1;
wire   [4:0] tmp_4_fu_1014_p3;
wire   [4:0] tmp_4_fu_1014_p5;
wire   [4:0] tmp_4_fu_1014_p7;
wire   [4:0] tmp_4_fu_1014_p9;
wire  signed [4:0] tmp_4_fu_1014_p11;
wire  signed [4:0] tmp_4_fu_1014_p13;
wire  signed [4:0] tmp_4_fu_1014_p15;
wire  signed [4:0] tmp_5_fu_1054_p1;
wire   [4:0] tmp_5_fu_1054_p3;
wire   [4:0] tmp_5_fu_1054_p5;
wire   [4:0] tmp_5_fu_1054_p7;
wire   [4:0] tmp_5_fu_1054_p9;
wire  signed [4:0] tmp_5_fu_1054_p11;
wire  signed [4:0] tmp_5_fu_1054_p13;
wire  signed [4:0] tmp_5_fu_1054_p15;
wire  signed [4:0] tmp_6_fu_1094_p1;
wire   [4:0] tmp_6_fu_1094_p3;
wire   [4:0] tmp_6_fu_1094_p5;
wire   [4:0] tmp_6_fu_1094_p7;
wire   [4:0] tmp_6_fu_1094_p9;
wire  signed [4:0] tmp_6_fu_1094_p11;
wire  signed [4:0] tmp_6_fu_1094_p13;
wire  signed [4:0] tmp_6_fu_1094_p15;
wire  signed [4:0] tmp_7_fu_1134_p1;
wire   [4:0] tmp_7_fu_1134_p3;
wire   [4:0] tmp_7_fu_1134_p5;
wire   [4:0] tmp_7_fu_1134_p7;
wire   [4:0] tmp_7_fu_1134_p9;
wire  signed [4:0] tmp_7_fu_1134_p11;
wire  signed [4:0] tmp_7_fu_1134_p13;
wire  signed [4:0] tmp_7_fu_1134_p15;
wire   [4:0] tmp_s_fu_1174_p1;
wire   [4:0] tmp_s_fu_1174_p3;
wire   [4:0] tmp_s_fu_1174_p5;
wire   [4:0] tmp_s_fu_1174_p7;
wire  signed [4:0] tmp_s_fu_1174_p9;
wire  signed [4:0] tmp_s_fu_1174_p11;
wire  signed [4:0] tmp_s_fu_1174_p13;
wire  signed [4:0] tmp_s_fu_1174_p15;
wire   [4:0] tmp_1_fu_1213_p1;
wire   [4:0] tmp_1_fu_1213_p3;
wire   [4:0] tmp_1_fu_1213_p5;
wire   [4:0] tmp_1_fu_1213_p7;
wire  signed [4:0] tmp_1_fu_1213_p9;
wire  signed [4:0] tmp_1_fu_1213_p11;
wire  signed [4:0] tmp_1_fu_1213_p13;
wire  signed [4:0] tmp_1_fu_1213_p15;
wire   [4:0] tmp_2_fu_1252_p1;
wire   [4:0] tmp_2_fu_1252_p3;
wire   [4:0] tmp_2_fu_1252_p5;
wire   [4:0] tmp_2_fu_1252_p7;
wire  signed [4:0] tmp_2_fu_1252_p9;
wire  signed [4:0] tmp_2_fu_1252_p11;
wire  signed [4:0] tmp_2_fu_1252_p13;
wire  signed [4:0] tmp_2_fu_1252_p15;
wire   [4:0] tmp_3_fu_1291_p1;
wire   [4:0] tmp_3_fu_1291_p3;
wire   [4:0] tmp_3_fu_1291_p5;
wire   [4:0] tmp_3_fu_1291_p7;
wire  signed [4:0] tmp_3_fu_1291_p9;
wire  signed [4:0] tmp_3_fu_1291_p11;
wire  signed [4:0] tmp_3_fu_1291_p13;
wire  signed [4:0] tmp_3_fu_1291_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_222 = 32'd0;
#0 B_fu_226 = 32'd0;
#0 E_1_fu_230 = 32'd0;
#0 B_1_fu_234 = 32'd0;
#0 E_2_fu_238 = 32'd0;
#0 i_fu_242 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1C ),.din0_WIDTH( 32 ),.CASE1( 5'h0 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h8 ),.din3_WIDTH( 32 ),.CASE4( 5'hC ),.din4_WIDTH( 32 ),.CASE5( 5'h10 ),.din5_WIDTH( 32 ),.CASE6( 5'h14 ),.din6_WIDTH( 32 ),.CASE7( 5'h18 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_x_U101(.din0(W_load_5),.din1(W_4_load_5),.din2(W_8_load_5),.din3(W_12_load_5),.din4(W_16_load_6),.din5(W_20_load_6),.din6(W_24_load_6),.din7(W_28_load_6),.def(tmp_4_fu_1014_p17),.sel(trunc_ln15_fu_952_p1),.dout(tmp_4_fu_1014_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1C ),.din0_WIDTH( 32 ),.CASE1( 5'h0 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h8 ),.din3_WIDTH( 32 ),.CASE4( 5'hC ),.din4_WIDTH( 32 ),.CASE5( 5'h10 ),.din5_WIDTH( 32 ),.CASE6( 5'h14 ),.din6_WIDTH( 32 ),.CASE7( 5'h18 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_x_U102(.din0(W_1_load_5),.din1(W_5_load_5),.din2(W_9_load_5),.din3(W_13_load_5),.din4(W_17_load_6),.din5(W_21_load_6),.din6(W_25_load_6),.din7(W_29_load_6),.def(tmp_5_fu_1054_p17),.sel(trunc_ln15_fu_952_p1),.dout(tmp_5_fu_1054_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1C ),.din0_WIDTH( 32 ),.CASE1( 5'h0 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h8 ),.din3_WIDTH( 32 ),.CASE4( 5'hC ),.din4_WIDTH( 32 ),.CASE5( 5'h10 ),.din5_WIDTH( 32 ),.CASE6( 5'h14 ),.din6_WIDTH( 32 ),.CASE7( 5'h18 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_x_U103(.din0(W_2_load_5),.din1(W_6_load_5),.din2(W_10_load_5),.din3(W_14_load_5),.din4(W_18_load_6),.din5(W_22_load_6),.din6(W_26_load_6),.din7(W_30_load_6),.def(tmp_6_fu_1094_p17),.sel(trunc_ln15_fu_952_p1),.dout(tmp_6_fu_1094_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h1C ),.din0_WIDTH( 32 ),.CASE1( 5'h0 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h8 ),.din3_WIDTH( 32 ),.CASE4( 5'hC ),.din4_WIDTH( 32 ),.CASE5( 5'h10 ),.din5_WIDTH( 32 ),.CASE6( 5'h14 ),.din6_WIDTH( 32 ),.CASE7( 5'h18 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_x_U104(.din0(W_3_load_5),.din1(W_7_load_5),.din2(W_11_load_5),.din3(W_15_load_5),.din4(W_19_load_6),.din5(W_23_load_6),.din6(W_27_load_6),.din7(W_31_load_6),.def(tmp_7_fu_1134_p17),.sel(trunc_ln15_fu_952_p1),.dout(tmp_7_fu_1134_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_x_U105(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.din4(W_16_q0),.din5(W_20_q0),.din6(W_24_q0),.din7(W_28_q0),.def(tmp_s_fu_1174_p17),.sel(trunc_ln15_reg_2010),.dout(tmp_s_fu_1174_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_x_U106(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.din4(W_17_q0),.din5(W_21_q0),.din6(W_25_q0),.din7(W_29_q0),.def(tmp_1_fu_1213_p17),.sel(trunc_ln15_reg_2010),.dout(tmp_1_fu_1213_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_x_U107(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.din4(W_18_q0),.din5(W_22_q0),.din6(W_26_q0),.din7(W_30_q0),.def(tmp_2_fu_1252_p17),.sel(trunc_ln15_reg_2010),.dout(tmp_2_fu_1252_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_x_U108(.din0(W_3_q0),.din1(W_7_q0),.din2(W_11_q0),.din3(W_15_q0),.din4(W_19_q0),.din5(W_23_q0),.din6(W_27_q0),.din7(W_31_q0),.def(tmp_3_fu_1291_p17),.sel(trunc_ln15_reg_2010),.dout(tmp_3_fu_1291_p19));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_234 <= A_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_fu_234 <= temp_7_fu_1953_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_226 <= B_46_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_fu_226 <= temp_6_fu_1910_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_230 <= D_reload;
    end else if (((icmp_ln128_reg_2178 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_1_fu_230 <= C_9_reg_2385;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_238 <= C_95_reload;
    end else if (((icmp_ln128_reg_2178 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_2_fu_238 <= C_2_fu_1877_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_222 <= E_46_reload;
    end else if (((icmp_ln128_reg_2178 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_fu_222 <= C_8_fu_1793_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_242 <= 7'd60;
    end else if (((icmp_ln128_reg_2178 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        i_fu_242 <= add_ln128_1_fu_1885_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_3_reg_2232 <= C_3_fu_1416_p3;
        C_reg_2222 <= E_2_fu_238;
        add_ln130_6_reg_2253 <= add_ln130_6_fu_1455_p2;
        lshr_ln130_2_reg_2243 <= {{temp_fu_1396_p2[31:27]}};
        lshr_ln130_3_reg_2263 <= {{B_1_fu_234[31:2]}};
        lshr_ln130_5_reg_2273 <= {{temp_fu_1396_p2[31:2]}};
        temp_reg_2227 <= temp_fu_1396_p2;
        trunc_ln130_2_reg_2238 <= trunc_ln130_2_fu_1424_p1;
        trunc_ln130_3_reg_2258 <= trunc_ln130_3_fu_1461_p1;
        trunc_ln130_5_reg_2268 <= trunc_ln130_5_fu_1475_p1;
        xor_ln130_3_reg_2248 <= xor_ln130_3_fu_1444_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_4_reg_2283 <= C_4_fu_1505_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        C_5_reg_2321 <= C_5_fu_1587_p3;
        temp_2_reg_2315 <= temp_2_fu_1582_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_6_reg_2363 <= C_6_fu_1661_p3;
        temp_3_reg_2354 <= temp_3_fu_1654_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        C_7_reg_2343 <= C_7_fu_1631_p3;
        add_ln130_28_reg_2349 <= add_ln130_28_fu_1639_p2;
        lshr_ln130_6_reg_2333 <= {{temp_2_fu_1582_p2[31:27]}};
        trunc_ln130_6_reg_2328 <= trunc_ln130_6_fu_1593_p1;
        xor_ln130_7_reg_2338 <= xor_ln130_7_fu_1611_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        C_8_reg_2401 <= C_8_fu_1793_p3;
        add_ln130_22_reg_2396 <= add_ln130_22_fu_1776_p2;
        add_ln130_24_reg_2406 <= add_ln130_24_fu_1811_p2;
        xor_ln130_11_reg_2391 <= xor_ln130_11_fu_1759_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        C_9_reg_2385 <= C_9_fu_1747_p3;
        lshr_ln130_s_reg_2380 <= {{temp_4_fu_1713_p2[31:27]}};
        temp_4_reg_2370 <= temp_4_fu_1713_p2;
        trunc_ln130_10_reg_2375 <= trunc_ln130_10_fu_1719_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln130_14_reg_2300 <= add_ln130_14_fu_1559_p2;
        add_ln130_8_reg_2295 <= add_ln130_8_fu_1548_p2;
        add_ln130_9_reg_2290 <= add_ln130_9_fu_1543_p2;
        lshr_ln130_7_reg_2310 <= {{temp_1_fu_1499_p2[31:2]}};
        temp_1_reg_2278 <= temp_1_fu_1499_p2;
        trunc_ln130_7_reg_2305 <= trunc_ln130_7_fu_1564_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln130_25_reg_2421 <= add_ln130_25_fu_1848_p2;
        lshr_ln130_11_reg_2416 <= {{temp_5_fu_1829_p2[31:27]}};
        trunc_ln130_12_reg_2411 <= trunc_ln130_12_fu_1834_p1;
        xor_ln130_15_reg_2426 <= xor_ln130_15_fu_1858_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln130_29_reg_2431 <= add_ln130_29_fu_1938_p2;
        i_1_reg_2005 <= ap_sig_allocacmp_i_1;
        icmp_ln128_reg_2178 <= icmp_ln128_fu_1008_p2;
        tmp_4_reg_2182 <= tmp_4_fu_1014_p19;
        tmp_5_reg_2187 <= tmp_5_fu_1054_p19;
        tmp_6_reg_2192 <= tmp_6_fu_1094_p19;
        tmp_7_reg_2197 <= tmp_7_fu_1134_p19;
        trunc_ln15_reg_2010 <= trunc_ln15_fu_952_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_2207 <= tmp_1_fu_1213_p19;
        tmp_2_reg_2212 <= tmp_2_fu_1252_p19;
        tmp_3_reg_2217 <= tmp_3_fu_1291_p19;
        tmp_s_reg_2202 <= tmp_s_fu_1174_p19;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_2178 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_100_out_ap_vld = 1'b1;
    end else begin
        C_100_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_2178 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_98_out_ap_vld = 1'b1;
    end else begin
        C_98_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_2178 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_99_out_ap_vld = 1'b1;
    end else begin
        C_99_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_16_ce0_local = 1'b1;
    end else begin
        W_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_17_ce0_local = 1'b1;
    end else begin
        W_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_18_ce0_local = 1'b1;
    end else begin
        W_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_19_ce0_local = 1'b1;
    end else begin
        W_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_20_ce0_local = 1'b1;
    end else begin
        W_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_21_ce0_local = 1'b1;
    end else begin
        W_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_22_ce0_local = 1'b1;
    end else begin
        W_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_23_ce0_local = 1'b1;
    end else begin
        W_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_24_ce0_local = 1'b1;
    end else begin
        W_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_25_ce0_local = 1'b1;
    end else begin
        W_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_26_ce0_local = 1'b1;
    end else begin
        W_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_27_ce0_local = 1'b1;
    end else begin
        W_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_28_ce0_local = 1'b1;
    end else begin
        W_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_29_ce0_local = 1'b1;
    end else begin
        W_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_30_ce0_local = 1'b1;
    end else begin
        W_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_31_ce0_local = 1'b1;
    end else begin
        W_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_2178 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_242;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_2178 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        temp_42_out_ap_vld = 1'b1;
    end else begin
        temp_42_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_2178 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        temp_43_out_ap_vld = 1'b1;
    end else begin
        temp_43_out_ap_vld = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign C_100_out = {{trunc_ln130_7_reg_2305}, {lshr_ln130_7_reg_2310}};
assign C_2_fu_1877_p3 = {{trunc_ln130_15_fu_1863_p1}, {lshr_ln130_14_fu_1867_p4}};
assign C_3_fu_1416_p3 = {{trunc_ln130_1_fu_1402_p1}, {lshr_ln130_1_fu_1406_p4}};
assign C_4_fu_1505_p3 = {{trunc_ln130_3_reg_2258}, {lshr_ln130_3_reg_2263}};
assign C_5_fu_1587_p3 = {{trunc_ln130_5_reg_2268}, {lshr_ln130_5_reg_2273}};
assign C_6_fu_1661_p3 = {{trunc_ln130_7_reg_2305}, {lshr_ln130_7_reg_2310}};
assign C_7_fu_1631_p3 = {{trunc_ln130_9_fu_1617_p1}, {lshr_ln130_9_fu_1621_p4}};
assign C_8_fu_1793_p3 = {{trunc_ln130_11_fu_1781_p1}, {lshr_ln130_10_fu_1784_p4}};
assign C_98_out = C_4_reg_2283;
assign C_99_out = C_5_reg_2321;
assign C_9_fu_1747_p3 = {{trunc_ln130_13_fu_1733_p1}, {lshr_ln130_12_fu_1737_p4}};
assign W_10_address0 = zext_ln100_fu_966_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_966_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_966_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_966_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_966_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_966_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_16_address0 = zext_ln100_fu_966_p1;
assign W_16_ce0 = W_16_ce0_local;
assign W_17_address0 = zext_ln100_fu_966_p1;
assign W_17_ce0 = W_17_ce0_local;
assign W_18_address0 = zext_ln100_fu_966_p1;
assign W_18_ce0 = W_18_ce0_local;
assign W_19_address0 = zext_ln100_fu_966_p1;
assign W_19_ce0 = W_19_ce0_local;
assign W_1_address0 = zext_ln100_fu_966_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_20_address0 = zext_ln100_fu_966_p1;
assign W_20_ce0 = W_20_ce0_local;
assign W_21_address0 = zext_ln100_fu_966_p1;
assign W_21_ce0 = W_21_ce0_local;
assign W_22_address0 = zext_ln100_fu_966_p1;
assign W_22_ce0 = W_22_ce0_local;
assign W_23_address0 = zext_ln100_fu_966_p1;
assign W_23_ce0 = W_23_ce0_local;
assign W_24_address0 = zext_ln100_fu_966_p1;
assign W_24_ce0 = W_24_ce0_local;
assign W_25_address0 = zext_ln100_fu_966_p1;
assign W_25_ce0 = W_25_ce0_local;
assign W_26_address0 = zext_ln100_fu_966_p1;
assign W_26_ce0 = W_26_ce0_local;
assign W_27_address0 = zext_ln100_fu_966_p1;
assign W_27_ce0 = W_27_ce0_local;
assign W_28_address0 = zext_ln100_fu_966_p1;
assign W_28_ce0 = W_28_ce0_local;
assign W_29_address0 = zext_ln100_fu_966_p1;
assign W_29_ce0 = W_29_ce0_local;
assign W_2_address0 = zext_ln100_fu_966_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_30_address0 = zext_ln100_fu_966_p1;
assign W_30_ce0 = W_30_ce0_local;
assign W_31_address0 = zext_ln100_fu_966_p1;
assign W_31_ce0 = W_31_ce0_local;
assign W_3_address0 = zext_ln100_fu_966_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_966_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_966_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_966_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_966_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_966_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_966_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_966_p1;
assign W_ce0 = W_ce0_local;
assign add_ln128_1_fu_1885_p2 = (i_1_reg_2005 + 7'd8);
assign add_ln128_fu_1002_p2 = (ap_sig_allocacmp_i_1 + 7'd4);
assign add_ln130_10_fu_1578_p2 = (add_ln130_9_reg_2290 + C_reg_2222);
assign add_ln130_12_fu_1650_p2 = (add_ln130_14_reg_2300 + xor_ln130_7_reg_2338);
assign add_ln130_13_fu_1554_p2 = ($signed(tmp_3_reg_2217) + $signed(32'd3395469782));
assign add_ln130_14_fu_1559_p2 = (add_ln130_13_fu_1554_p2 + C_3_reg_2232);
assign add_ln130_16_fu_1707_p2 = (or_ln130_8_fu_1689_p3 + xor_ln130_9_fu_1684_p2);
assign add_ln130_17_fu_1697_p2 = ($signed(tmp_4_reg_2182) + $signed(32'd3395469782));
assign add_ln130_18_fu_1702_p2 = (add_ln130_17_fu_1697_p2 + C_4_reg_2283);
assign add_ln130_1_fu_1379_p2 = ($signed(tmp_s_reg_2202) + $signed(32'd3395469782));
assign add_ln130_20_fu_1825_p2 = (tmp_5_reg_2187 + xor_ln130_11_reg_2391);
assign add_ln130_21_fu_1770_p2 = ($signed(or_ln130_s_fu_1764_p3) + $signed(32'd3395469782));
assign add_ln130_22_fu_1776_p2 = (add_ln130_21_fu_1770_p2 + C_5_reg_2321);
assign add_ln130_24_fu_1811_p2 = (xor_ln130_13_fu_1805_p2 + tmp_6_reg_2192);
assign add_ln130_25_fu_1848_p2 = ($signed(C_6_reg_2363) + $signed(32'd3395469782));
assign add_ln130_26_fu_1906_p2 = (add_ln130_24_reg_2406 + add_ln130_25_reg_2421);
assign add_ln130_28_fu_1639_p2 = (C_7_fu_1631_p3 + tmp_7_reg_2197);
assign add_ln130_29_fu_1938_p2 = ($signed(or_ln130_3_fu_1930_p3) + $signed(32'd3395469782));
assign add_ln130_2_fu_1384_p2 = (add_ln130_1_fu_1379_p2 + or_ln3_fu_1371_p3);
assign add_ln130_30_fu_1949_p2 = (add_ln130_28_reg_2349 + xor_ln130_15_reg_2426);
assign add_ln130_4_fu_1495_p2 = (add_ln130_6_reg_2253 + xor_ln130_3_reg_2248);
assign add_ln130_5_fu_1450_p2 = ($signed(tmp_1_reg_2207) + $signed(32'd3395469782));
assign add_ln130_6_fu_1455_p2 = (add_ln130_5_fu_1450_p2 + E_1_fu_230);
assign add_ln130_8_fu_1548_p2 = (or_ln130_4_fu_1535_p3 + xor_ln130_5_fu_1530_p2);
assign add_ln130_9_fu_1543_p2 = ($signed(tmp_2_reg_2212) + $signed(32'd3395469782));
assign add_ln130_fu_1390_p2 = (xor_ln130_1_fu_1365_p2 + E_fu_222);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
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
assign ap_block_pp0_stage5_01001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign icmp_ln128_fu_1008_p2 = ((add_ln128_fu_1002_p2 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln130_10_fu_1784_p4 = {{temp_3_reg_2354[31:2]}};
assign lshr_ln130_12_fu_1737_p4 = {{temp_4_fu_1713_p2[31:2]}};
assign lshr_ln130_13_fu_1920_p4 = {{temp_6_fu_1910_p2[31:27]}};
assign lshr_ln130_14_fu_1867_p4 = {{temp_5_fu_1829_p2[31:2]}};
assign lshr_ln130_1_fu_1406_p4 = {{B_fu_226[31:2]}};
assign lshr_ln130_4_fu_1515_p4 = {{temp_1_fu_1499_p2[31:27]}};
assign lshr_ln130_8_fu_1671_p4 = {{temp_3_reg_2354[31:27]}};
assign lshr_ln130_9_fu_1621_p4 = {{temp_2_fu_1582_p2[31:2]}};
assign lshr_ln6_fu_956_p4 = {{ap_sig_allocacmp_i_1[6:5]}};
assign lshr_ln7_fu_1349_p4 = {{B_1_fu_234[31:27]}};
assign or_ln130_1_fu_1900_p3 = {{trunc_ln130_12_reg_2411}, {lshr_ln130_11_reg_2416}};
assign or_ln130_2_fu_1489_p3 = {{trunc_ln130_2_reg_2238}, {lshr_ln130_2_reg_2243}};
assign or_ln130_3_fu_1930_p3 = {{trunc_ln130_14_fu_1916_p1}, {lshr_ln130_13_fu_1920_p4}};
assign or_ln130_4_fu_1535_p3 = {{trunc_ln130_4_fu_1511_p1}, {lshr_ln130_4_fu_1515_p4}};
assign or_ln130_6_fu_1644_p3 = {{trunc_ln130_6_reg_2328}, {lshr_ln130_6_reg_2333}};
assign or_ln130_8_fu_1689_p3 = {{trunc_ln130_8_fu_1668_p1}, {lshr_ln130_8_fu_1671_p4}};
assign or_ln130_s_fu_1764_p3 = {{trunc_ln130_10_reg_2375}, {lshr_ln130_s_reg_2380}};
assign or_ln3_fu_1371_p3 = {{trunc_ln130_fu_1345_p1}, {lshr_ln7_fu_1349_p4}};
assign temp_1_fu_1499_p2 = (add_ln130_4_fu_1495_p2 + or_ln130_2_fu_1489_p3);
assign temp_2_fu_1582_p2 = (add_ln130_8_reg_2295 + add_ln130_10_fu_1578_p2);
assign temp_3_fu_1654_p2 = (add_ln130_12_fu_1650_p2 + or_ln130_6_fu_1644_p3);
assign temp_42_out = temp_2_reg_2315;
assign temp_43_out = (add_ln130_12_fu_1650_p2 + or_ln130_6_fu_1644_p3);
assign temp_4_fu_1713_p2 = (add_ln130_16_fu_1707_p2 + add_ln130_18_fu_1702_p2);
assign temp_5_fu_1829_p2 = (add_ln130_22_reg_2396 + add_ln130_20_fu_1825_p2);
assign temp_6_fu_1910_p2 = (add_ln130_26_fu_1906_p2 + or_ln130_1_fu_1900_p3);
assign temp_7_fu_1953_p2 = (add_ln130_29_reg_2431 + add_ln130_30_fu_1949_p2);
assign temp_fu_1396_p2 = (add_ln130_fu_1390_p2 + add_ln130_2_fu_1384_p2);
assign tmp_1_fu_1213_p17 = 'bx;
assign tmp_2_fu_1252_p17 = 'bx;
assign tmp_3_fu_1291_p17 = 'bx;
assign tmp_4_fu_1014_p17 = 'bx;
assign tmp_5_fu_1054_p17 = 'bx;
assign tmp_6_fu_1094_p17 = 'bx;
assign tmp_7_fu_1134_p17 = 'bx;
assign tmp_s_fu_1174_p17 = 'bx;
assign trunc_ln130_10_fu_1719_p1 = temp_4_fu_1713_p2[26:0];
assign trunc_ln130_11_fu_1781_p1 = temp_3_reg_2354[1:0];
assign trunc_ln130_12_fu_1834_p1 = temp_5_fu_1829_p2[26:0];
assign trunc_ln130_13_fu_1733_p1 = temp_4_fu_1713_p2[1:0];
assign trunc_ln130_14_fu_1916_p1 = temp_6_fu_1910_p2[26:0];
assign trunc_ln130_15_fu_1863_p1 = temp_5_fu_1829_p2[1:0];
assign trunc_ln130_1_fu_1402_p1 = B_fu_226[1:0];
assign trunc_ln130_2_fu_1424_p1 = temp_fu_1396_p2[26:0];
assign trunc_ln130_3_fu_1461_p1 = B_1_fu_234[1:0];
assign trunc_ln130_4_fu_1511_p1 = temp_1_fu_1499_p2[26:0];
assign trunc_ln130_5_fu_1475_p1 = temp_fu_1396_p2[1:0];
assign trunc_ln130_6_fu_1593_p1 = temp_2_fu_1582_p2[26:0];
assign trunc_ln130_7_fu_1564_p1 = temp_1_fu_1499_p2[1:0];
assign trunc_ln130_8_fu_1668_p1 = temp_3_reg_2354[26:0];
assign trunc_ln130_9_fu_1617_p1 = temp_2_fu_1582_p2[1:0];
assign trunc_ln130_fu_1345_p1 = B_1_fu_234[26:0];
assign trunc_ln15_fu_952_p1 = ap_sig_allocacmp_i_1[4:0];
assign xor_ln130_10_fu_1755_p2 = (temp_3_reg_2354 ^ C_6_reg_2363);
assign xor_ln130_11_fu_1759_p2 = (xor_ln130_10_fu_1755_p2 ^ C_7_reg_2343);
assign xor_ln130_12_fu_1801_p2 = (temp_4_reg_2370 ^ C_7_reg_2343);
assign xor_ln130_13_fu_1805_p2 = (xor_ln130_12_fu_1801_p2 ^ C_8_fu_1793_p3);
assign xor_ln130_14_fu_1853_p2 = (temp_5_fu_1829_p2 ^ C_8_reg_2401);
assign xor_ln130_15_fu_1858_p2 = (xor_ln130_14_fu_1853_p2 ^ C_9_reg_2385);
assign xor_ln130_1_fu_1365_p2 = (xor_ln130_fu_1359_p2 ^ E_2_fu_238);
assign xor_ln130_2_fu_1438_p2 = (C_3_fu_1416_p3 ^ B_1_fu_234);
assign xor_ln130_3_fu_1444_p2 = (xor_ln130_2_fu_1438_p2 ^ E_2_fu_238);
assign xor_ln130_4_fu_1525_p2 = (temp_reg_2227 ^ C_4_fu_1505_p3);
assign xor_ln130_5_fu_1530_p2 = (xor_ln130_4_fu_1525_p2 ^ C_3_reg_2232);
assign xor_ln130_6_fu_1607_p2 = (temp_1_reg_2278 ^ C_4_reg_2283);
assign xor_ln130_7_fu_1611_p2 = (xor_ln130_6_fu_1607_p2 ^ C_5_fu_1587_p3);
assign xor_ln130_8_fu_1680_p2 = (temp_2_reg_2315 ^ C_5_reg_2321);
assign xor_ln130_9_fu_1684_p2 = (xor_ln130_8_fu_1680_p2 ^ C_6_reg_2363);
assign xor_ln130_fu_1359_p2 = (E_1_fu_230 ^ B_fu_226);
assign zext_ln100_fu_966_p1 = lshr_ln6_fu_956_p4;
endmodule 
