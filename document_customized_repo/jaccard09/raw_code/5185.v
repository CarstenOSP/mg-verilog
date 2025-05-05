module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_51_reload,B_47_reload,C_63_reload,D_51_reload,E_47_reload,W_12_address0,W_12_ce0,W_12_q0,W_13_address0,W_13_ce0,W_13_q0,W_14_address0,W_14_ce0,W_14_q0,W_15_address0,W_15_ce0,W_15_q0,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,W_2_address0,W_2_ce0,W_2_q0,W_3_address0,W_3_ce0,W_3_q0,W_4_address0,W_4_ce0,W_4_q0,W_5_address0,W_5_ce0,W_5_q0,W_6_address0,W_6_ce0,W_6_q0,W_7_address0,W_7_ce0,W_7_q0,W_8_address0,W_8_ce0,W_8_q0,W_9_address0,W_9_ce0,W_9_q0,W_10_address0,W_10_ce0,W_10_q0,W_11_address0,W_11_ce0,W_11_q0,C_47_out,C_47_out_ap_vld,temp_58_out,temp_58_out_ap_vld,C_48_out,C_48_out_ap_vld,temp_59_out,temp_59_out_ap_vld,C_49_out,C_49_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 31'd1;
parameter    ap_ST_fsm_pp0_stage1 = 31'd2;
parameter    ap_ST_fsm_pp0_stage2 = 31'd4;
parameter    ap_ST_fsm_pp0_stage3 = 31'd8;
parameter    ap_ST_fsm_pp0_stage4 = 31'd16;
parameter    ap_ST_fsm_pp0_stage5 = 31'd32;
parameter    ap_ST_fsm_pp0_stage6 = 31'd64;
parameter    ap_ST_fsm_pp0_stage7 = 31'd128;
parameter    ap_ST_fsm_pp0_stage8 = 31'd256;
parameter    ap_ST_fsm_pp0_stage9 = 31'd512;
parameter    ap_ST_fsm_pp0_stage10 = 31'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 31'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 31'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 31'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 31'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 31'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 31'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 31'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 31'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 31'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 31'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 31'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 31'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 31'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 31'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 31'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 31'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 31'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 31'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 31'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 31'd1073741824;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_51_reload;
input  [31:0] B_47_reload;
input  [31:0] C_63_reload;
input  [31:0] D_51_reload;
input  [31:0] E_47_reload;
output  [2:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [2:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [2:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [2:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [2:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [2:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [2:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [2:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [2:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [2:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [2:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [2:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [2:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [2:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [2:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [2:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [31:0] C_47_out;
output   C_47_out_ap_vld;
output  [31:0] temp_58_out;
output   temp_58_out_ap_vld;
output  [31:0] C_48_out;
output   C_48_out_ap_vld;
output  [31:0] temp_59_out;
output   temp_59_out_ap_vld;
output  [31:0] C_49_out;
output   C_49_out_ap_vld;
reg ap_idle;
reg C_47_out_ap_vld;
reg temp_58_out_ap_vld;
reg C_48_out_ap_vld;
reg temp_59_out_ap_vld;
reg C_49_out_ap_vld;
(* fsm_encoding = "none" *) reg   [30:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln128_reg_2012;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_subdone;
reg   [31:0] A_reg_1972;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] add_ln130_2_fu_510_p2;
reg   [31:0] add_ln130_2_reg_1982;
wire   [1:0] trunc_ln130_3_fu_516_p1;
reg   [1:0] trunc_ln130_3_reg_1992;
reg   [29:0] lshr_ln130_3_reg_1997;
wire   [0:0] icmp_ln128_fu_536_p2;
reg   [31:0] D_reg_2076;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] C_reg_2081;
wire   [31:0] temp_fu_826_p2;
reg   [31:0] temp_reg_2087;
wire   [1:0] trunc_ln130_1_fu_831_p1;
reg   [1:0] trunc_ln130_1_reg_2092;
reg   [29:0] lshr_ln130_1_reg_2097;
wire   [26:0] trunc_ln130_2_fu_845_p1;
reg   [26:0] trunc_ln130_2_reg_2102;
reg   [4:0] lshr_ln130_2_reg_2107;
reg   [31:0] W_13_load_reg_2112;
reg   [31:0] W_14_load_reg_2117;
wire   [1:0] trunc_ln130_5_fu_859_p1;
reg   [1:0] trunc_ln130_5_reg_2122;
reg   [29:0] lshr_ln130_5_reg_2127;
reg   [31:0] W_15_load_reg_2132;
reg   [31:0] W_load_reg_2137;
reg   [31:0] W_1_load_reg_2142;
reg   [31:0] W_2_load_reg_2147;
reg   [31:0] W_3_load_reg_2152;
reg   [31:0] W_4_load_reg_2157;
reg   [31:0] W_5_load_reg_2162;
reg   [31:0] W_6_load_reg_2167;
reg   [31:0] W_7_load_reg_2172;
reg   [31:0] W_8_load_reg_2177;
reg   [31:0] W_9_load_reg_2182;
reg   [31:0] W_10_load_reg_2187;
reg   [31:0] W_11_load_reg_2192;
wire   [31:0] C_3_fu_873_p3;
reg   [31:0] C_3_reg_2197;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] add_ln130_6_fu_891_p2;
reg   [31:0] add_ln130_6_reg_2203;
wire   [31:0] C_4_fu_896_p3;
reg   [31:0] C_4_reg_2208;
wire   [31:0] xor_ln130_5_fu_907_p2;
reg   [31:0] xor_ln130_5_reg_2215;
wire   [26:0] trunc_ln130_4_fu_932_p1;
reg   [26:0] trunc_ln130_4_reg_2220;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln130_4_reg_2225;
wire   [31:0] C_5_fu_946_p3;
reg   [31:0] C_5_reg_2230;
wire   [31:0] xor_ln130_7_fu_957_p2;
reg   [31:0] xor_ln130_7_reg_2237;
wire   [1:0] trunc_ln130_7_fu_963_p1;
reg   [1:0] trunc_ln130_7_reg_2242;
reg   [29:0] lshr_ln130_7_reg_2247;
wire   [31:0] add_ln130_10_fu_989_p2;
reg   [31:0] add_ln130_10_reg_2252;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] temp_2_fu_998_p2;
reg   [31:0] temp_2_reg_2257;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln130_6_fu_1003_p1;
reg   [26:0] trunc_ln130_6_reg_2265;
reg   [4:0] lshr_ln130_6_reg_2270;
wire   [31:0] add_ln130_14_fu_1029_p2;
reg   [31:0] add_ln130_14_reg_2275;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] temp_3_fu_1038_p2;
reg   [31:0] temp_3_reg_2280;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] C_6_fu_1044_p3;
reg   [31:0] C_6_reg_2289;
wire   [31:0] temp_4_fu_1096_p2;
reg   [31:0] temp_4_reg_2296;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [26:0] trunc_ln130_10_fu_1102_p1;
reg   [26:0] trunc_ln130_10_reg_2301;
reg   [4:0] lshr_ln130_s_reg_2306;
wire   [1:0] trunc_ln130_13_fu_1116_p1;
reg   [1:0] trunc_ln130_13_reg_2311;
reg   [29:0] lshr_ln130_12_reg_2316;
wire   [31:0] add_ln130_22_fu_1142_p2;
reg   [31:0] add_ln130_22_reg_2321;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] C_7_fu_1159_p3;
reg   [31:0] C_7_reg_2326;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] temp_5_fu_1182_p2;
reg   [31:0] temp_5_reg_2332;
wire   [31:0] C_8_fu_1199_p3;
reg   [31:0] C_8_reg_2337;
wire   [26:0] trunc_ln130_12_fu_1207_p1;
reg   [26:0] trunc_ln130_12_reg_2344;
reg   [4:0] lshr_ln130_11_reg_2349;
wire   [1:0] trunc_ln130_15_fu_1221_p1;
reg   [1:0] trunc_ln130_15_reg_2354;
reg   [29:0] lshr_ln130_14_reg_2359;
wire   [31:0] add_ln130_26_fu_1247_p2;
reg   [31:0] add_ln130_26_reg_2364;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [31:0] temp_6_fu_1266_p2;
reg   [31:0] temp_6_reg_2369;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [26:0] trunc_ln130_14_fu_1271_p1;
reg   [26:0] trunc_ln130_14_reg_2374;
reg   [4:0] lshr_ln130_13_reg_2379;
wire   [1:0] trunc_ln130_17_fu_1285_p1;
reg   [1:0] trunc_ln130_17_reg_2384;
reg   [29:0] lshr_ln130_16_reg_2389;
wire   [31:0] add_ln130_30_fu_1311_p2;
reg   [31:0] add_ln130_30_reg_2394;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [31:0] C_9_fu_1316_p3;
reg   [31:0] C_9_reg_2399;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [31:0] C_10_fu_1342_p3;
reg   [31:0] C_10_reg_2405;
wire   [26:0] trunc_ln130_16_fu_1348_p1;
reg   [26:0] trunc_ln130_16_reg_2411;
reg   [4:0] lshr_ln130_15_reg_2416;
wire   [31:0] C_11_fu_1362_p3;
reg   [31:0] C_11_reg_2421;
wire   [31:0] xor_ln130_19_fu_1374_p2;
reg   [31:0] xor_ln130_19_reg_2427;
wire   [31:0] C_12_fu_1394_p3;
reg   [31:0] C_12_reg_2432;
wire   [31:0] add_ln130_34_fu_1414_p2;
reg   [31:0] add_ln130_34_reg_2439;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [31:0] temp_8_fu_1433_p2;
reg   [31:0] temp_8_reg_2444;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [26:0] trunc_ln130_18_fu_1438_p1;
reg   [26:0] trunc_ln130_18_reg_2449;
reg   [4:0] lshr_ln130_17_reg_2454;
wire   [1:0] trunc_ln130_21_fu_1452_p1;
reg   [1:0] trunc_ln130_21_reg_2459;
reg   [29:0] lshr_ln130_20_reg_2464;
wire   [31:0] add_ln130_38_fu_1478_p2;
reg   [31:0] add_ln130_38_reg_2469;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [31:0] temp_9_fu_1487_p2;
reg   [31:0] temp_9_reg_2474;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [26:0] trunc_ln130_20_fu_1492_p1;
reg   [26:0] trunc_ln130_20_reg_2479;
reg   [4:0] lshr_ln130_19_reg_2484;
wire   [1:0] trunc_ln130_23_fu_1506_p1;
reg   [1:0] trunc_ln130_23_reg_2489;
reg   [29:0] lshr_ln130_22_reg_2494;
wire   [31:0] add_ln130_42_fu_1532_p2;
reg   [31:0] add_ln130_42_reg_2499;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [31:0] temp_10_fu_1551_p2;
reg   [31:0] temp_10_reg_2504;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [26:0] trunc_ln130_22_fu_1556_p1;
reg   [26:0] trunc_ln130_22_reg_2509;
reg   [4:0] lshr_ln130_21_reg_2514;
wire   [1:0] trunc_ln130_25_fu_1570_p1;
reg   [1:0] trunc_ln130_25_reg_2519;
reg   [29:0] lshr_ln130_24_reg_2524;
wire   [31:0] add_ln130_46_fu_1596_p2;
reg   [31:0] add_ln130_46_reg_2529;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [31:0] C_13_fu_1601_p3;
reg   [31:0] C_13_reg_2534;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [31:0] temp_11_fu_1622_p2;
reg   [31:0] temp_11_reg_2540;
wire   [26:0] trunc_ln130_24_fu_1627_p1;
reg   [26:0] trunc_ln130_24_reg_2545;
reg   [4:0] lshr_ln130_23_reg_2550;
wire   [1:0] trunc_ln130_27_fu_1641_p1;
reg   [1:0] trunc_ln130_27_reg_2555;
reg   [29:0] lshr_ln130_26_reg_2560;
wire   [31:0] add_ln130_50_fu_1667_p2;
reg   [31:0] add_ln130_50_reg_2565;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [31:0] C_14_fu_1672_p3;
reg   [31:0] C_14_reg_2570;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [31:0] temp_12_fu_1693_p2;
reg   [31:0] temp_12_reg_2576;
wire   [26:0] trunc_ln130_26_fu_1698_p1;
reg   [26:0] trunc_ln130_26_reg_2581;
reg   [4:0] lshr_ln130_25_reg_2586;
wire   [1:0] trunc_ln130_29_fu_1712_p1;
reg   [1:0] trunc_ln130_29_reg_2591;
reg   [29:0] lshr_ln130_28_reg_2596;
wire   [31:0] add_ln130_54_fu_1738_p2;
reg   [31:0] add_ln130_54_reg_2601;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [31:0] C_15_fu_1743_p3;
reg   [31:0] C_15_reg_2606;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [31:0] temp_13_fu_1764_p2;
reg   [31:0] temp_13_reg_2612;
wire   [26:0] trunc_ln130_28_fu_1769_p1;
reg   [26:0] trunc_ln130_28_reg_2617;
reg   [4:0] lshr_ln130_27_reg_2622;
wire   [31:0] add_ln130_58_fu_1822_p2;
reg   [31:0] add_ln130_58_reg_2627;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [26:0] trunc_ln130_30_fu_1859_p1;
reg   [26:0] trunc_ln130_30_reg_2632;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [4:0] lshr_ln130_29_reg_2637;
wire   [31:0] xor_ln130_31_fu_1878_p2;
reg   [31:0] xor_ln130_31_reg_2642;
wire   [31:0] add_ln130_62_fu_1911_p2;
reg   [31:0] add_ln130_62_reg_2647;
wire    ap_block_pp0_stage30_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_fu_474_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln100_1_fu_552_p1;
wire   [63:0] zext_ln100_2_fu_573_p1;
wire   [63:0] zext_ln100_3_fu_594_p1;
wire   [63:0] zext_ln100_4_fu_615_p1;
wire   [63:0] zext_ln100_5_fu_636_p1;
wire   [63:0] zext_ln100_6_fu_657_p1;
wire   [63:0] zext_ln100_7_fu_678_p1;
wire   [63:0] zext_ln100_8_fu_699_p1;
wire   [63:0] zext_ln100_9_fu_720_p1;
wire   [63:0] zext_ln100_10_fu_741_p1;
wire   [63:0] zext_ln100_11_fu_762_p1;
wire   [63:0] zext_ln100_12_fu_783_p1;
reg   [31:0] E_fu_128;
wire   [31:0] C_16_fu_1827_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] E_1_fu_132;
wire   [31:0] C_17_fu_1853_p3;
wire    ap_block_pp0_stage2;
reg   [31:0] E_2_fu_136;
wire   [31:0] C_2_fu_1797_p3;
reg   [31:0] B_fu_140;
wire   [31:0] temp_14_fu_1848_p2;
reg   [31:0] B_1_fu_144;
wire   [31:0] temp_15_fu_1920_p2;
reg   [6:0] i_fu_148;
wire   [6:0] add_ln128_12_fu_788_p2;
wire    ap_block_pp0_stage8_01001;
reg    W_12_ce0_local;
reg    W_13_ce0_local;
reg    W_14_ce0_local;
reg    W_15_ce0_local;
reg    W_ce0_local;
reg    W_1_ce0_local;
reg    W_2_ce0_local;
reg    W_3_ce0_local;
reg    W_4_ce0_local;
reg    W_5_ce0_local;
reg    W_6_ce0_local;
reg    W_7_ce0_local;
reg    W_8_ce0_local;
reg    W_9_ce0_local;
reg    W_10_ce0_local;
reg    W_11_ce0_local;
wire    ap_block_pp0_stage0;
wire   [2:0] lshr_ln100_s_fu_464_p4;
wire   [26:0] trunc_ln130_fu_482_p1;
wire   [4:0] lshr_ln6_fu_486_p4;
wire   [31:0] or_ln2_fu_496_p3;
wire   [31:0] add_ln130_1_fu_504_p2;
wire   [6:0] add_ln128_fu_530_p2;
wire   [2:0] lshr_ln100_1_fu_542_p4;
wire   [6:0] add_ln128_1_fu_557_p2;
wire   [2:0] lshr_ln100_2_fu_563_p4;
wire   [6:0] add_ln128_2_fu_578_p2;
wire   [2:0] lshr_ln100_3_fu_584_p4;
wire   [6:0] add_ln128_3_fu_599_p2;
wire   [2:0] lshr_ln100_4_fu_605_p4;
wire   [6:0] add_ln128_4_fu_620_p2;
wire   [2:0] lshr_ln100_5_fu_626_p4;
wire   [6:0] add_ln128_5_fu_641_p2;
wire   [2:0] lshr_ln100_6_fu_647_p4;
wire   [6:0] add_ln128_6_fu_662_p2;
wire   [2:0] lshr_ln100_7_fu_668_p4;
wire   [6:0] add_ln128_7_fu_683_p2;
wire   [2:0] lshr_ln100_8_fu_689_p4;
wire   [6:0] add_ln128_8_fu_704_p2;
wire   [2:0] lshr_ln100_9_fu_710_p4;
wire   [6:0] add_ln128_9_fu_725_p2;
wire   [2:0] lshr_ln100_10_fu_731_p4;
wire   [6:0] add_ln128_10_fu_746_p2;
wire   [2:0] lshr_ln100_11_fu_752_p4;
wire   [6:0] add_ln128_11_fu_767_p2;
wire   [2:0] lshr_ln100_12_fu_773_p4;
wire   [31:0] xor_ln130_fu_808_p2;
wire   [31:0] xor_ln130_1_fu_814_p2;
wire   [31:0] add_ln130_fu_820_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln130_2_fu_879_p3;
wire   [31:0] add_ln130_5_fu_885_p2;
wire   [31:0] xor_ln130_4_fu_902_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] xor_ln130_2_fu_913_p2;
wire   [31:0] xor_ln130_3_fu_917_p2;
wire   [31:0] add_ln130_4_fu_922_p2;
wire   [31:0] temp_1_fu_927_p2;
wire   [31:0] xor_ln130_6_fu_952_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln130_4_fu_977_p3;
wire   [31:0] add_ln130_9_fu_983_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln130_8_fu_994_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln130_6_fu_1017_p3;
wire   [31:0] add_ln130_13_fu_1023_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln130_12_fu_1034_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] xor_ln130_8_fu_1063_p2;
wire   [26:0] trunc_ln130_8_fu_1051_p1;
wire   [4:0] lshr_ln130_8_fu_1054_p4;
wire   [31:0] add_ln130_17_fu_1080_p2;
wire   [31:0] xor_ln130_9_fu_1067_p2;
wire   [31:0] or_ln130_8_fu_1072_p3;
wire   [31:0] add_ln130_16_fu_1091_p2;
wire   [31:0] add_ln130_18_fu_1085_p2;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln130_s_fu_1130_p3;
wire   [31:0] add_ln130_21_fu_1136_p2;
wire    ap_block_pp0_stage11;
wire   [1:0] trunc_ln130_9_fu_1147_p1;
wire   [29:0] lshr_ln130_9_fu_1150_p4;
wire   [31:0] xor_ln130_10_fu_1167_p2;
wire   [31:0] xor_ln130_11_fu_1171_p2;
wire   [31:0] add_ln130_20_fu_1177_p2;
wire   [1:0] trunc_ln130_11_fu_1187_p1;
wire   [29:0] lshr_ln130_10_fu_1190_p4;
wire    ap_block_pp0_stage12;
wire   [31:0] or_ln130_1_fu_1235_p3;
wire   [31:0] add_ln130_25_fu_1241_p2;
wire    ap_block_pp0_stage13;
wire   [31:0] xor_ln130_12_fu_1252_p2;
wire   [31:0] xor_ln130_13_fu_1256_p2;
wire   [31:0] add_ln130_24_fu_1261_p2;
wire    ap_block_pp0_stage14;
wire   [31:0] or_ln130_3_fu_1299_p3;
wire   [31:0] add_ln130_29_fu_1305_p2;
wire    ap_block_pp0_stage15;
wire   [31:0] xor_ln130_14_fu_1322_p2;
wire   [31:0] xor_ln130_15_fu_1326_p2;
wire   [31:0] add_ln130_28_fu_1332_p2;
wire   [31:0] temp_7_fu_1337_p2;
wire   [31:0] xor_ln130_18_fu_1368_p2;
wire   [1:0] trunc_ln130_19_fu_1380_p1;
wire   [29:0] lshr_ln130_18_fu_1384_p4;
wire    ap_block_pp0_stage16;
wire   [31:0] or_ln130_5_fu_1402_p3;
wire   [31:0] add_ln130_33_fu_1408_p2;
wire    ap_block_pp0_stage17;
wire   [31:0] xor_ln130_16_fu_1419_p2;
wire   [31:0] xor_ln130_17_fu_1423_p2;
wire   [31:0] add_ln130_32_fu_1428_p2;
wire    ap_block_pp0_stage18;
wire   [31:0] or_ln130_7_fu_1466_p3;
wire   [31:0] add_ln130_37_fu_1472_p2;
wire    ap_block_pp0_stage19;
wire   [31:0] add_ln130_36_fu_1483_p2;
wire    ap_block_pp0_stage20;
wire   [31:0] or_ln130_9_fu_1520_p3;
wire   [31:0] add_ln130_41_fu_1526_p2;
wire    ap_block_pp0_stage21;
wire   [31:0] xor_ln130_20_fu_1537_p2;
wire   [31:0] xor_ln130_21_fu_1541_p2;
wire   [31:0] add_ln130_40_fu_1546_p2;
wire    ap_block_pp0_stage22;
wire   [31:0] or_ln130_10_fu_1584_p3;
wire   [31:0] add_ln130_45_fu_1590_p2;
wire    ap_block_pp0_stage23;
wire   [31:0] xor_ln130_22_fu_1607_p2;
wire   [31:0] xor_ln130_23_fu_1611_p2;
wire   [31:0] add_ln130_44_fu_1617_p2;
wire    ap_block_pp0_stage24;
wire   [31:0] or_ln130_11_fu_1655_p3;
wire   [31:0] add_ln130_49_fu_1661_p2;
wire    ap_block_pp0_stage25;
wire   [31:0] xor_ln130_24_fu_1678_p2;
wire   [31:0] xor_ln130_25_fu_1682_p2;
wire   [31:0] add_ln130_48_fu_1688_p2;
wire    ap_block_pp0_stage26;
wire   [31:0] or_ln130_12_fu_1726_p3;
wire   [31:0] add_ln130_53_fu_1732_p2;
wire    ap_block_pp0_stage27;
wire   [31:0] xor_ln130_26_fu_1749_p2;
wire   [31:0] xor_ln130_27_fu_1753_p2;
wire   [31:0] add_ln130_52_fu_1759_p2;
wire   [1:0] trunc_ln130_31_fu_1783_p1;
wire   [29:0] lshr_ln130_30_fu_1787_p4;
wire    ap_block_pp0_stage28;
wire   [31:0] or_ln130_13_fu_1810_p3;
wire   [31:0] add_ln130_57_fu_1816_p2;
wire    ap_block_pp0_stage29;
wire   [31:0] xor_ln130_28_fu_1833_p2;
wire   [31:0] xor_ln130_29_fu_1837_p2;
wire   [31:0] add_ln130_56_fu_1843_p2;
wire   [31:0] xor_ln130_30_fu_1873_p2;
wire    ap_block_pp0_stage30;
wire   [31:0] or_ln130_14_fu_1899_p3;
wire   [31:0] add_ln130_61_fu_1905_p2;
wire   [31:0] add_ln130_60_fu_1916_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [30:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
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
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 31'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_128 = 32'd0;
#0 E_1_fu_132 = 32'd0;
#0 E_2_fu_136 = 32'd0;
#0 B_fu_140 = 32'd0;
#0 B_1_fu_144 = 32'd0;
#0 i_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage30_subdone) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_1_fu_144 <= A_51_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_144 <= temp_15_fu_1920_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_140 <= B_47_reload;
    end else if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        B_fu_140 <= temp_14_fu_1848_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_132 <= D_51_reload;
    end else if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        E_1_fu_132 <= C_17_fu_1853_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_136 <= C_63_reload;
    end else if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        E_2_fu_136 <= C_2_fu_1797_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_128 <= E_47_reload;
    end else if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        E_fu_128 <= C_16_fu_1827_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_148 <= 7'd60;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln128_fu_536_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_148 <= add_ln128_12_fu_788_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_reg_1972 <= B_1_fu_144;
        add_ln130_2_reg_1982 <= add_ln130_2_fu_510_p2;
        icmp_ln128_reg_2012 <= icmp_ln128_fu_536_p2;
        lshr_ln130_3_reg_1997 <= {{B_1_fu_144[31:2]}};
        trunc_ln130_3_reg_1992 <= trunc_ln130_3_fu_516_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        C_10_reg_2405 <= C_10_fu_1342_p3;
        C_11_reg_2421 <= C_11_fu_1362_p3;
        C_12_reg_2432 <= C_12_fu_1394_p3;
        C_9_reg_2399 <= C_9_fu_1316_p3;
        lshr_ln130_15_reg_2416 <= {{temp_7_fu_1337_p2[31:27]}};
        trunc_ln130_16_reg_2411 <= trunc_ln130_16_fu_1348_p1;
        xor_ln130_19_reg_2427 <= xor_ln130_19_fu_1374_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        C_13_reg_2534 <= C_13_fu_1601_p3;
        lshr_ln130_23_reg_2550 <= {{temp_11_fu_1622_p2[31:27]}};
        lshr_ln130_26_reg_2560 <= {{temp_11_fu_1622_p2[31:2]}};
        temp_11_reg_2540 <= temp_11_fu_1622_p2;
        trunc_ln130_24_reg_2545 <= trunc_ln130_24_fu_1627_p1;
        trunc_ln130_27_reg_2555 <= trunc_ln130_27_fu_1641_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        C_14_reg_2570 <= C_14_fu_1672_p3;
        lshr_ln130_25_reg_2586 <= {{temp_12_fu_1693_p2[31:27]}};
        lshr_ln130_28_reg_2596 <= {{temp_12_fu_1693_p2[31:2]}};
        temp_12_reg_2576 <= temp_12_fu_1693_p2;
        trunc_ln130_26_reg_2581 <= trunc_ln130_26_fu_1698_p1;
        trunc_ln130_29_reg_2591 <= trunc_ln130_29_fu_1712_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        C_15_reg_2606 <= C_15_fu_1743_p3;
        lshr_ln130_27_reg_2622 <= {{temp_13_fu_1764_p2[31:27]}};
        temp_13_reg_2612 <= temp_13_fu_1764_p2;
        trunc_ln130_28_reg_2617 <= trunc_ln130_28_fu_1769_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_3_reg_2197 <= C_3_fu_873_p3;
        add_ln130_6_reg_2203 <= add_ln130_6_fu_891_p2;
        xor_ln130_5_reg_2215 <= xor_ln130_5_fu_907_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_4_reg_2208 <= C_4_fu_896_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        C_5_reg_2230 <= C_5_fu_946_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_6_reg_2289 <= C_6_fu_1044_p3;
        temp_3_reg_2280 <= temp_3_fu_1038_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        C_7_reg_2326 <= C_7_fu_1159_p3;
        C_8_reg_2337 <= C_8_fu_1199_p3;
        lshr_ln130_11_reg_2349 <= {{temp_5_fu_1182_p2[31:27]}};
        lshr_ln130_14_reg_2359 <= {{temp_5_fu_1182_p2[31:2]}};
        temp_5_reg_2332 <= temp_5_fu_1182_p2;
        trunc_ln130_12_reg_2344 <= trunc_ln130_12_fu_1207_p1;
        trunc_ln130_15_reg_2354 <= trunc_ln130_15_fu_1221_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_reg_2081 <= E_2_fu_136;
        D_reg_2076 <= E_1_fu_132;
        W_10_load_reg_2187 <= W_10_q0;
        W_11_load_reg_2192 <= W_11_q0;
        W_13_load_reg_2112 <= W_13_q0;
        W_14_load_reg_2117 <= W_14_q0;
        W_15_load_reg_2132 <= W_15_q0;
        W_1_load_reg_2142 <= W_1_q0;
        W_2_load_reg_2147 <= W_2_q0;
        W_3_load_reg_2152 <= W_3_q0;
        W_4_load_reg_2157 <= W_4_q0;
        W_5_load_reg_2162 <= W_5_q0;
        W_6_load_reg_2167 <= W_6_q0;
        W_7_load_reg_2172 <= W_7_q0;
        W_8_load_reg_2177 <= W_8_q0;
        W_9_load_reg_2182 <= W_9_q0;
        W_load_reg_2137 <= W_q0;
        lshr_ln130_1_reg_2097 <= {{B_fu_140[31:2]}};
        lshr_ln130_2_reg_2107 <= {{temp_fu_826_p2[31:27]}};
        lshr_ln130_5_reg_2127 <= {{temp_fu_826_p2[31:2]}};
        temp_reg_2087 <= temp_fu_826_p2;
        trunc_ln130_1_reg_2092 <= trunc_ln130_1_fu_831_p1;
        trunc_ln130_2_reg_2102 <= trunc_ln130_2_fu_845_p1;
        trunc_ln130_5_reg_2122 <= trunc_ln130_5_fu_859_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln130_10_reg_2252 <= add_ln130_10_fu_989_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln130_14_reg_2275 <= add_ln130_14_fu_1029_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln130_22_reg_2321 <= add_ln130_22_fu_1142_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln130_26_reg_2364 <= add_ln130_26_fu_1247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln130_30_reg_2394 <= add_ln130_30_fu_1311_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add_ln130_34_reg_2439 <= add_ln130_34_fu_1414_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        add_ln130_38_reg_2469 <= add_ln130_38_fu_1478_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        add_ln130_42_reg_2499 <= add_ln130_42_fu_1532_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        add_ln130_46_reg_2529 <= add_ln130_46_fu_1596_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        add_ln130_50_reg_2565 <= add_ln130_50_fu_1667_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        add_ln130_54_reg_2601 <= add_ln130_54_fu_1738_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        add_ln130_58_reg_2627 <= add_ln130_58_fu_1822_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        add_ln130_62_reg_2647 <= add_ln130_62_fu_1911_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln130_12_reg_2316 <= {{temp_4_fu_1096_p2[31:2]}};
        lshr_ln130_s_reg_2306 <= {{temp_4_fu_1096_p2[31:27]}};
        temp_4_reg_2296 <= temp_4_fu_1096_p2;
        trunc_ln130_10_reg_2301 <= trunc_ln130_10_fu_1102_p1;
        trunc_ln130_13_reg_2311 <= trunc_ln130_13_fu_1116_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        lshr_ln130_13_reg_2379 <= {{temp_6_fu_1266_p2[31:27]}};
        lshr_ln130_16_reg_2389 <= {{temp_6_fu_1266_p2[31:2]}};
        temp_6_reg_2369 <= temp_6_fu_1266_p2;
        trunc_ln130_14_reg_2374 <= trunc_ln130_14_fu_1271_p1;
        trunc_ln130_17_reg_2384 <= trunc_ln130_17_fu_1285_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        lshr_ln130_17_reg_2454 <= {{temp_8_fu_1433_p2[31:27]}};
        lshr_ln130_20_reg_2464 <= {{temp_8_fu_1433_p2[31:2]}};
        temp_8_reg_2444 <= temp_8_fu_1433_p2;
        trunc_ln130_18_reg_2449 <= trunc_ln130_18_fu_1438_p1;
        trunc_ln130_21_reg_2459 <= trunc_ln130_21_fu_1452_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        lshr_ln130_19_reg_2484 <= {{temp_9_fu_1487_p2[31:27]}};
        lshr_ln130_22_reg_2494 <= {{temp_9_fu_1487_p2[31:2]}};
        temp_9_reg_2474 <= temp_9_fu_1487_p2;
        trunc_ln130_20_reg_2479 <= trunc_ln130_20_fu_1492_p1;
        trunc_ln130_23_reg_2489 <= trunc_ln130_23_fu_1506_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        lshr_ln130_21_reg_2514 <= {{temp_10_fu_1551_p2[31:27]}};
        lshr_ln130_24_reg_2524 <= {{temp_10_fu_1551_p2[31:2]}};
        temp_10_reg_2504 <= temp_10_fu_1551_p2;
        trunc_ln130_22_reg_2509 <= trunc_ln130_22_fu_1556_p1;
        trunc_ln130_25_reg_2519 <= trunc_ln130_25_fu_1570_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        lshr_ln130_29_reg_2637 <= {{temp_14_fu_1848_p2[31:27]}};
        trunc_ln130_30_reg_2632 <= trunc_ln130_30_fu_1859_p1;
        xor_ln130_31_reg_2642 <= xor_ln130_31_fu_1878_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln130_4_reg_2225 <= {{temp_1_fu_927_p2[31:27]}};
        lshr_ln130_7_reg_2247 <= {{temp_1_fu_927_p2[31:2]}};
        trunc_ln130_4_reg_2220 <= trunc_ln130_4_fu_932_p1;
        trunc_ln130_7_reg_2242 <= trunc_ln130_7_fu_963_p1;
        xor_ln130_7_reg_2237 <= xor_ln130_7_fu_957_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln130_6_reg_2270 <= {{temp_2_fu_998_p2[31:27]}};
        trunc_ln130_6_reg_2265 <= trunc_ln130_6_fu_1003_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        temp_2_reg_2257 <= temp_2_fu_998_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_2012 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_47_out_ap_vld = 1'b1;
    end else begin
        C_47_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_2012 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_48_out_ap_vld = 1'b1;
    end else begin
        C_48_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_2012 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_49_out_ap_vld = 1'b1;
    end else begin
        C_49_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_2012 == 1'd0) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((1'b0 == ap_block_pp0_stage30_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_2012 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        temp_58_out_ap_vld = 1'b1;
    end else begin
        temp_58_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_2012 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        temp_59_out_ap_vld = 1'b1;
    end else begin
        temp_59_out_ap_vld = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign C_10_fu_1342_p3 = {{trunc_ln130_15_reg_2354}, {lshr_ln130_14_reg_2359}};
assign C_11_fu_1362_p3 = {{trunc_ln130_17_reg_2384}, {lshr_ln130_16_reg_2389}};
assign C_12_fu_1394_p3 = {{trunc_ln130_19_fu_1380_p1}, {lshr_ln130_18_fu_1384_p4}};
assign C_13_fu_1601_p3 = {{trunc_ln130_21_reg_2459}, {lshr_ln130_20_reg_2464}};
assign C_14_fu_1672_p3 = {{trunc_ln130_23_reg_2489}, {lshr_ln130_22_reg_2494}};
assign C_15_fu_1743_p3 = {{trunc_ln130_25_reg_2519}, {lshr_ln130_24_reg_2524}};
assign C_16_fu_1827_p3 = {{trunc_ln130_27_reg_2555}, {lshr_ln130_26_reg_2560}};
assign C_17_fu_1853_p3 = {{trunc_ln130_29_reg_2591}, {lshr_ln130_28_reg_2596}};
assign C_2_fu_1797_p3 = {{trunc_ln130_31_fu_1783_p1}, {lshr_ln130_30_fu_1787_p4}};
assign C_3_fu_873_p3 = {{trunc_ln130_1_reg_2092}, {lshr_ln130_1_reg_2097}};
assign C_47_out = C_4_reg_2208;
assign C_48_out = C_5_reg_2230;
assign C_49_out = {{trunc_ln130_7_reg_2242}, {lshr_ln130_7_reg_2247}};
assign C_4_fu_896_p3 = {{trunc_ln130_3_reg_1992}, {lshr_ln130_3_reg_1997}};
assign C_5_fu_946_p3 = {{trunc_ln130_5_reg_2122}, {lshr_ln130_5_reg_2127}};
assign C_6_fu_1044_p3 = {{trunc_ln130_7_reg_2242}, {lshr_ln130_7_reg_2247}};
assign C_7_fu_1159_p3 = {{trunc_ln130_9_fu_1147_p1}, {lshr_ln130_9_fu_1150_p4}};
assign C_8_fu_1199_p3 = {{trunc_ln130_11_fu_1187_p1}, {lshr_ln130_10_fu_1190_p4}};
assign C_9_fu_1316_p3 = {{trunc_ln130_13_reg_2311}, {lshr_ln130_12_reg_2316}};
assign W_10_address0 = zext_ln100_11_fu_762_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_12_fu_783_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_474_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_474_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_474_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_474_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_1_address0 = zext_ln100_2_fu_573_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_3_fu_594_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_4_fu_615_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_5_fu_636_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_6_fu_657_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_7_fu_678_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_8_fu_699_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_9_fu_720_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_10_fu_741_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_1_fu_552_p1;
assign W_ce0 = W_ce0_local;
assign add_ln128_10_fu_746_p2 = (i_fu_148 + 7'd14);
assign add_ln128_11_fu_767_p2 = (i_fu_148 + 7'd15);
assign add_ln128_12_fu_788_p2 = (i_fu_148 + 7'd16);
assign add_ln128_1_fu_557_p2 = (i_fu_148 + 7'd5);
assign add_ln128_2_fu_578_p2 = (i_fu_148 + 7'd6);
assign add_ln128_3_fu_599_p2 = (i_fu_148 + 7'd7);
assign add_ln128_4_fu_620_p2 = (i_fu_148 + 7'd8);
assign add_ln128_5_fu_641_p2 = (i_fu_148 + 7'd9);
assign add_ln128_6_fu_662_p2 = (i_fu_148 + 7'd10);
assign add_ln128_7_fu_683_p2 = (i_fu_148 + 7'd11);
assign add_ln128_8_fu_704_p2 = (i_fu_148 + 7'd12);
assign add_ln128_9_fu_725_p2 = (i_fu_148 + 7'd13);
assign add_ln128_fu_530_p2 = (i_fu_148 + 7'd4);
assign add_ln130_10_fu_989_p2 = (add_ln130_9_fu_983_p2 + C_reg_2081);
assign add_ln130_12_fu_1034_p2 = (W_15_load_reg_2132 + xor_ln130_7_reg_2237);
assign add_ln130_13_fu_1023_p2 = ($signed(or_ln130_6_fu_1017_p3) + $signed(32'd3395469782));
assign add_ln130_14_fu_1029_p2 = (add_ln130_13_fu_1023_p2 + C_3_reg_2197);
assign add_ln130_16_fu_1091_p2 = (or_ln130_8_fu_1072_p3 + W_load_reg_2137);
assign add_ln130_17_fu_1080_p2 = ($signed(C_4_reg_2208) + $signed(32'd3395469782));
assign add_ln130_18_fu_1085_p2 = (add_ln130_17_fu_1080_p2 + xor_ln130_9_fu_1067_p2);
assign add_ln130_1_fu_504_p2 = ($signed(or_ln2_fu_496_p3) + $signed(32'd3395469782));
assign add_ln130_20_fu_1177_p2 = (W_1_load_reg_2142 + xor_ln130_11_fu_1171_p2);
assign add_ln130_21_fu_1136_p2 = ($signed(or_ln130_s_fu_1130_p3) + $signed(32'd3395469782));
assign add_ln130_22_fu_1142_p2 = (add_ln130_21_fu_1136_p2 + C_5_reg_2230);
assign add_ln130_24_fu_1261_p2 = (W_2_load_reg_2147 + xor_ln130_13_fu_1256_p2);
assign add_ln130_25_fu_1241_p2 = ($signed(or_ln130_1_fu_1235_p3) + $signed(32'd3395469782));
assign add_ln130_26_fu_1247_p2 = (add_ln130_25_fu_1241_p2 + C_6_reg_2289);
assign add_ln130_28_fu_1332_p2 = (W_3_load_reg_2152 + xor_ln130_15_fu_1326_p2);
assign add_ln130_29_fu_1305_p2 = ($signed(or_ln130_3_fu_1299_p3) + $signed(32'd3395469782));
assign add_ln130_2_fu_510_p2 = (add_ln130_1_fu_504_p2 + E_fu_128);
assign add_ln130_30_fu_1311_p2 = (add_ln130_29_fu_1305_p2 + C_7_reg_2326);
assign add_ln130_32_fu_1428_p2 = (W_4_load_reg_2157 + xor_ln130_17_fu_1423_p2);
assign add_ln130_33_fu_1408_p2 = ($signed(or_ln130_5_fu_1402_p3) + $signed(32'd3395469782));
assign add_ln130_34_fu_1414_p2 = (add_ln130_33_fu_1408_p2 + C_8_reg_2337);
assign add_ln130_36_fu_1483_p2 = (W_5_load_reg_2162 + xor_ln130_19_reg_2427);
assign add_ln130_37_fu_1472_p2 = ($signed(or_ln130_7_fu_1466_p3) + $signed(32'd3395469782));
assign add_ln130_38_fu_1478_p2 = (add_ln130_37_fu_1472_p2 + C_9_reg_2399);
assign add_ln130_40_fu_1546_p2 = (W_6_load_reg_2167 + xor_ln130_21_fu_1541_p2);
assign add_ln130_41_fu_1526_p2 = ($signed(or_ln130_9_fu_1520_p3) + $signed(32'd3395469782));
assign add_ln130_42_fu_1532_p2 = (add_ln130_41_fu_1526_p2 + C_10_reg_2405);
assign add_ln130_44_fu_1617_p2 = (W_7_load_reg_2172 + xor_ln130_23_fu_1611_p2);
assign add_ln130_45_fu_1590_p2 = ($signed(or_ln130_10_fu_1584_p3) + $signed(32'd3395469782));
assign add_ln130_46_fu_1596_p2 = (add_ln130_45_fu_1590_p2 + C_11_reg_2421);
assign add_ln130_48_fu_1688_p2 = (W_8_load_reg_2177 + xor_ln130_25_fu_1682_p2);
assign add_ln130_49_fu_1661_p2 = ($signed(or_ln130_11_fu_1655_p3) + $signed(32'd3395469782));
assign add_ln130_4_fu_922_p2 = (W_13_load_reg_2112 + xor_ln130_3_fu_917_p2);
assign add_ln130_50_fu_1667_p2 = (add_ln130_49_fu_1661_p2 + C_12_reg_2432);
assign add_ln130_52_fu_1759_p2 = (W_9_load_reg_2182 + xor_ln130_27_fu_1753_p2);
assign add_ln130_53_fu_1732_p2 = ($signed(or_ln130_12_fu_1726_p3) + $signed(32'd3395469782));
assign add_ln130_54_fu_1738_p2 = (add_ln130_53_fu_1732_p2 + C_13_reg_2534);
assign add_ln130_56_fu_1843_p2 = (W_10_load_reg_2187 + xor_ln130_29_fu_1837_p2);
assign add_ln130_57_fu_1816_p2 = ($signed(or_ln130_13_fu_1810_p3) + $signed(32'd3395469782));
assign add_ln130_58_fu_1822_p2 = (add_ln130_57_fu_1816_p2 + C_14_reg_2570);
assign add_ln130_5_fu_885_p2 = ($signed(or_ln130_2_fu_879_p3) + $signed(32'd3395469782));
assign add_ln130_60_fu_1916_p2 = (W_11_load_reg_2192 + C_15_reg_2606);
assign add_ln130_61_fu_1905_p2 = ($signed(or_ln130_14_fu_1899_p3) + $signed(32'd3395469782));
assign add_ln130_62_fu_1911_p2 = (add_ln130_61_fu_1905_p2 + xor_ln130_31_reg_2642);
assign add_ln130_6_fu_891_p2 = (add_ln130_5_fu_885_p2 + D_reg_2076);
assign add_ln130_8_fu_994_p2 = (W_14_load_reg_2117 + xor_ln130_5_reg_2215);
assign add_ln130_9_fu_983_p2 = ($signed(or_ln130_4_fu_977_p3) + $signed(32'd3395469782));
assign add_ln130_fu_820_p2 = (W_12_q0 + xor_ln130_1_fu_814_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
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
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign icmp_ln128_fu_536_p2 = ((add_ln128_fu_530_p2 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln100_10_fu_731_p4 = {{add_ln128_9_fu_725_p2[6:4]}};
assign lshr_ln100_11_fu_752_p4 = {{add_ln128_10_fu_746_p2[6:4]}};
assign lshr_ln100_12_fu_773_p4 = {{add_ln128_11_fu_767_p2[6:4]}};
assign lshr_ln100_1_fu_542_p4 = {{add_ln128_fu_530_p2[6:4]}};
assign lshr_ln100_2_fu_563_p4 = {{add_ln128_1_fu_557_p2[6:4]}};
assign lshr_ln100_3_fu_584_p4 = {{add_ln128_2_fu_578_p2[6:4]}};
assign lshr_ln100_4_fu_605_p4 = {{add_ln128_3_fu_599_p2[6:4]}};
assign lshr_ln100_5_fu_626_p4 = {{add_ln128_4_fu_620_p2[6:4]}};
assign lshr_ln100_6_fu_647_p4 = {{add_ln128_5_fu_641_p2[6:4]}};
assign lshr_ln100_7_fu_668_p4 = {{add_ln128_6_fu_662_p2[6:4]}};
assign lshr_ln100_8_fu_689_p4 = {{add_ln128_7_fu_683_p2[6:4]}};
assign lshr_ln100_9_fu_710_p4 = {{add_ln128_8_fu_704_p2[6:4]}};
assign lshr_ln100_s_fu_464_p4 = {{i_fu_148[6:4]}};
assign lshr_ln130_10_fu_1190_p4 = {{temp_3_reg_2280[31:2]}};
assign lshr_ln130_18_fu_1384_p4 = {{temp_7_fu_1337_p2[31:2]}};
assign lshr_ln130_30_fu_1787_p4 = {{temp_13_fu_1764_p2[31:2]}};
assign lshr_ln130_8_fu_1054_p4 = {{temp_3_reg_2280[31:27]}};
assign lshr_ln130_9_fu_1150_p4 = {{temp_2_reg_2257[31:2]}};
assign lshr_ln6_fu_486_p4 = {{B_1_fu_144[31:27]}};
assign or_ln130_10_fu_1584_p3 = {{trunc_ln130_22_reg_2509}, {lshr_ln130_21_reg_2514}};
assign or_ln130_11_fu_1655_p3 = {{trunc_ln130_24_reg_2545}, {lshr_ln130_23_reg_2550}};
assign or_ln130_12_fu_1726_p3 = {{trunc_ln130_26_reg_2581}, {lshr_ln130_25_reg_2586}};
assign or_ln130_13_fu_1810_p3 = {{trunc_ln130_28_reg_2617}, {lshr_ln130_27_reg_2622}};
assign or_ln130_14_fu_1899_p3 = {{trunc_ln130_30_reg_2632}, {lshr_ln130_29_reg_2637}};
assign or_ln130_1_fu_1235_p3 = {{trunc_ln130_12_reg_2344}, {lshr_ln130_11_reg_2349}};
assign or_ln130_2_fu_879_p3 = {{trunc_ln130_2_reg_2102}, {lshr_ln130_2_reg_2107}};
assign or_ln130_3_fu_1299_p3 = {{trunc_ln130_14_reg_2374}, {lshr_ln130_13_reg_2379}};
assign or_ln130_4_fu_977_p3 = {{trunc_ln130_4_reg_2220}, {lshr_ln130_4_reg_2225}};
assign or_ln130_5_fu_1402_p3 = {{trunc_ln130_16_reg_2411}, {lshr_ln130_15_reg_2416}};
assign or_ln130_6_fu_1017_p3 = {{trunc_ln130_6_reg_2265}, {lshr_ln130_6_reg_2270}};
assign or_ln130_7_fu_1466_p3 = {{trunc_ln130_18_reg_2449}, {lshr_ln130_17_reg_2454}};
assign or_ln130_8_fu_1072_p3 = {{trunc_ln130_8_fu_1051_p1}, {lshr_ln130_8_fu_1054_p4}};
assign or_ln130_9_fu_1520_p3 = {{trunc_ln130_20_reg_2479}, {lshr_ln130_19_reg_2484}};
assign or_ln130_s_fu_1130_p3 = {{trunc_ln130_10_reg_2301}, {lshr_ln130_s_reg_2306}};
assign or_ln2_fu_496_p3 = {{trunc_ln130_fu_482_p1}, {lshr_ln6_fu_486_p4}};
assign temp_10_fu_1551_p2 = (add_ln130_42_reg_2499 + add_ln130_40_fu_1546_p2);
assign temp_11_fu_1622_p2 = (add_ln130_46_reg_2529 + add_ln130_44_fu_1617_p2);
assign temp_12_fu_1693_p2 = (add_ln130_50_reg_2565 + add_ln130_48_fu_1688_p2);
assign temp_13_fu_1764_p2 = (add_ln130_54_reg_2601 + add_ln130_52_fu_1759_p2);
assign temp_14_fu_1848_p2 = (add_ln130_58_reg_2627 + add_ln130_56_fu_1843_p2);
assign temp_15_fu_1920_p2 = (add_ln130_62_reg_2647 + add_ln130_60_fu_1916_p2);
assign temp_1_fu_927_p2 = (add_ln130_6_reg_2203 + add_ln130_4_fu_922_p2);
assign temp_2_fu_998_p2 = (add_ln130_10_reg_2252 + add_ln130_8_fu_994_p2);
assign temp_3_fu_1038_p2 = (add_ln130_14_reg_2275 + add_ln130_12_fu_1034_p2);
assign temp_4_fu_1096_p2 = (add_ln130_16_fu_1091_p2 + add_ln130_18_fu_1085_p2);
assign temp_58_out = temp_2_reg_2257;
assign temp_59_out = (add_ln130_14_reg_2275 + add_ln130_12_fu_1034_p2);
assign temp_5_fu_1182_p2 = (add_ln130_22_reg_2321 + add_ln130_20_fu_1177_p2);
assign temp_6_fu_1266_p2 = (add_ln130_26_reg_2364 + add_ln130_24_fu_1261_p2);
assign temp_7_fu_1337_p2 = (add_ln130_30_reg_2394 + add_ln130_28_fu_1332_p2);
assign temp_8_fu_1433_p2 = (add_ln130_34_reg_2439 + add_ln130_32_fu_1428_p2);
assign temp_9_fu_1487_p2 = (add_ln130_38_reg_2469 + add_ln130_36_fu_1483_p2);
assign temp_fu_826_p2 = (add_ln130_2_reg_1982 + add_ln130_fu_820_p2);
assign trunc_ln130_10_fu_1102_p1 = temp_4_fu_1096_p2[26:0];
assign trunc_ln130_11_fu_1187_p1 = temp_3_reg_2280[1:0];
assign trunc_ln130_12_fu_1207_p1 = temp_5_fu_1182_p2[26:0];
assign trunc_ln130_13_fu_1116_p1 = temp_4_fu_1096_p2[1:0];
assign trunc_ln130_14_fu_1271_p1 = temp_6_fu_1266_p2[26:0];
assign trunc_ln130_15_fu_1221_p1 = temp_5_fu_1182_p2[1:0];
assign trunc_ln130_16_fu_1348_p1 = temp_7_fu_1337_p2[26:0];
assign trunc_ln130_17_fu_1285_p1 = temp_6_fu_1266_p2[1:0];
assign trunc_ln130_18_fu_1438_p1 = temp_8_fu_1433_p2[26:0];
assign trunc_ln130_19_fu_1380_p1 = temp_7_fu_1337_p2[1:0];
assign trunc_ln130_1_fu_831_p1 = B_fu_140[1:0];
assign trunc_ln130_20_fu_1492_p1 = temp_9_fu_1487_p2[26:0];
assign trunc_ln130_21_fu_1452_p1 = temp_8_fu_1433_p2[1:0];
assign trunc_ln130_22_fu_1556_p1 = temp_10_fu_1551_p2[26:0];
assign trunc_ln130_23_fu_1506_p1 = temp_9_fu_1487_p2[1:0];
assign trunc_ln130_24_fu_1627_p1 = temp_11_fu_1622_p2[26:0];
assign trunc_ln130_25_fu_1570_p1 = temp_10_fu_1551_p2[1:0];
assign trunc_ln130_26_fu_1698_p1 = temp_12_fu_1693_p2[26:0];
assign trunc_ln130_27_fu_1641_p1 = temp_11_fu_1622_p2[1:0];
assign trunc_ln130_28_fu_1769_p1 = temp_13_fu_1764_p2[26:0];
assign trunc_ln130_29_fu_1712_p1 = temp_12_fu_1693_p2[1:0];
assign trunc_ln130_2_fu_845_p1 = temp_fu_826_p2[26:0];
assign trunc_ln130_30_fu_1859_p1 = temp_14_fu_1848_p2[26:0];
assign trunc_ln130_31_fu_1783_p1 = temp_13_fu_1764_p2[1:0];
assign trunc_ln130_3_fu_516_p1 = B_1_fu_144[1:0];
assign trunc_ln130_4_fu_932_p1 = temp_1_fu_927_p2[26:0];
assign trunc_ln130_5_fu_859_p1 = temp_fu_826_p2[1:0];
assign trunc_ln130_6_fu_1003_p1 = temp_2_fu_998_p2[26:0];
assign trunc_ln130_7_fu_963_p1 = temp_1_fu_927_p2[1:0];
assign trunc_ln130_8_fu_1051_p1 = temp_3_reg_2280[26:0];
assign trunc_ln130_9_fu_1147_p1 = temp_2_reg_2257[1:0];
assign trunc_ln130_fu_482_p1 = B_1_fu_144[26:0];
assign xor_ln130_10_fu_1167_p2 = (temp_3_reg_2280 ^ C_6_reg_2289);
assign xor_ln130_11_fu_1171_p2 = (xor_ln130_10_fu_1167_p2 ^ C_7_fu_1159_p3);
assign xor_ln130_12_fu_1252_p2 = (temp_4_reg_2296 ^ C_7_reg_2326);
assign xor_ln130_13_fu_1256_p2 = (xor_ln130_12_fu_1252_p2 ^ C_8_reg_2337);
assign xor_ln130_14_fu_1322_p2 = (temp_5_reg_2332 ^ C_8_reg_2337);
assign xor_ln130_15_fu_1326_p2 = (xor_ln130_14_fu_1322_p2 ^ C_9_fu_1316_p3);
assign xor_ln130_16_fu_1419_p2 = (temp_6_reg_2369 ^ C_9_reg_2399);
assign xor_ln130_17_fu_1423_p2 = (xor_ln130_16_fu_1419_p2 ^ C_10_reg_2405);
assign xor_ln130_18_fu_1368_p2 = (temp_7_fu_1337_p2 ^ C_10_fu_1342_p3);
assign xor_ln130_19_fu_1374_p2 = (xor_ln130_18_fu_1368_p2 ^ C_11_fu_1362_p3);
assign xor_ln130_1_fu_814_p2 = (xor_ln130_fu_808_p2 ^ E_2_fu_136);
assign xor_ln130_20_fu_1537_p2 = (temp_8_reg_2444 ^ C_11_reg_2421);
assign xor_ln130_21_fu_1541_p2 = (xor_ln130_20_fu_1537_p2 ^ C_12_reg_2432);
assign xor_ln130_22_fu_1607_p2 = (temp_9_reg_2474 ^ C_12_reg_2432);
assign xor_ln130_23_fu_1611_p2 = (xor_ln130_22_fu_1607_p2 ^ C_13_fu_1601_p3);
assign xor_ln130_24_fu_1678_p2 = (temp_10_reg_2504 ^ C_13_reg_2534);
assign xor_ln130_25_fu_1682_p2 = (xor_ln130_24_fu_1678_p2 ^ C_14_fu_1672_p3);
assign xor_ln130_26_fu_1749_p2 = (temp_11_reg_2540 ^ C_14_reg_2570);
assign xor_ln130_27_fu_1753_p2 = (xor_ln130_26_fu_1749_p2 ^ C_15_fu_1743_p3);
assign xor_ln130_28_fu_1833_p2 = (temp_12_reg_2576 ^ C_15_reg_2606);
assign xor_ln130_29_fu_1837_p2 = (xor_ln130_28_fu_1833_p2 ^ C_16_fu_1827_p3);
assign xor_ln130_2_fu_913_p2 = (C_3_reg_2197 ^ A_reg_1972);
assign xor_ln130_30_fu_1873_p2 = (temp_13_reg_2612 ^ C_16_fu_1827_p3);
assign xor_ln130_31_fu_1878_p2 = (xor_ln130_30_fu_1873_p2 ^ C_17_fu_1853_p3);
assign xor_ln130_3_fu_917_p2 = (xor_ln130_2_fu_913_p2 ^ C_reg_2081);
assign xor_ln130_4_fu_902_p2 = (temp_reg_2087 ^ C_4_fu_896_p3);
assign xor_ln130_5_fu_907_p2 = (xor_ln130_4_fu_902_p2 ^ C_3_fu_873_p3);
assign xor_ln130_6_fu_952_p2 = (temp_1_fu_927_p2 ^ C_4_reg_2208);
assign xor_ln130_7_fu_957_p2 = (xor_ln130_6_fu_952_p2 ^ C_5_fu_946_p3);
assign xor_ln130_8_fu_1063_p2 = (temp_2_reg_2257 ^ C_5_reg_2230);
assign xor_ln130_9_fu_1067_p2 = (xor_ln130_8_fu_1063_p2 ^ C_6_reg_2289);
assign xor_ln130_fu_808_p2 = (E_1_fu_132 ^ B_fu_140);
assign zext_ln100_10_fu_741_p1 = lshr_ln100_10_fu_731_p4;
assign zext_ln100_11_fu_762_p1 = lshr_ln100_11_fu_752_p4;
assign zext_ln100_12_fu_783_p1 = lshr_ln100_12_fu_773_p4;
assign zext_ln100_1_fu_552_p1 = lshr_ln100_1_fu_542_p4;
assign zext_ln100_2_fu_573_p1 = lshr_ln100_2_fu_563_p4;
assign zext_ln100_3_fu_594_p1 = lshr_ln100_3_fu_584_p4;
assign zext_ln100_4_fu_615_p1 = lshr_ln100_4_fu_605_p4;
assign zext_ln100_5_fu_636_p1 = lshr_ln100_5_fu_626_p4;
assign zext_ln100_6_fu_657_p1 = lshr_ln100_6_fu_647_p4;
assign zext_ln100_7_fu_678_p1 = lshr_ln100_7_fu_668_p4;
assign zext_ln100_8_fu_699_p1 = lshr_ln100_8_fu_689_p4;
assign zext_ln100_9_fu_720_p1 = lshr_ln100_9_fu_710_p4;
assign zext_ln100_fu_474_p1 = lshr_ln100_s_fu_464_p4;
endmodule 