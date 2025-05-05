module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_43_reload,B_41_reload,C_54_reload,D_43_reload,E_41_reload,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,W_1_address0,W_1_ce0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,C_38_out,C_38_out_ap_vld,temp_5_out,temp_5_out_ap_vld,C_39_out,C_39_out_ap_vld,temp_6_out,temp_6_out_ap_vld,C_40_out,C_40_out_ap_vld); 
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
input  [31:0] A_43_reload;
input  [31:0] B_41_reload;
input  [31:0] C_54_reload;
input  [31:0] D_43_reload;
input  [31:0] E_41_reload;
output  [5:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [5:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [5:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [5:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [31:0] C_38_out;
output   C_38_out_ap_vld;
output  [31:0] temp_5_out;
output   temp_5_out_ap_vld;
output  [31:0] C_39_out;
output   C_39_out_ap_vld;
output  [31:0] temp_6_out;
output   temp_6_out_ap_vld;
output  [31:0] C_40_out;
output   C_40_out_ap_vld;
reg ap_idle;
reg C_38_out_ap_vld;
reg temp_5_out_ap_vld;
reg C_39_out_ap_vld;
reg temp_6_out_ap_vld;
reg C_40_out_ap_vld;
(* fsm_encoding = "none" *) reg   [30:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln128_reg_1793;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_subdone;
reg   [31:0] reg_329;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_333;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [6:0] i_1_reg_1727;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] lshr_ln100_3_fu_370_p4;
reg   [5:0] lshr_ln100_3_reg_1733;
reg   [31:0] A_reg_1763;
wire   [31:0] add_ln130_2_fu_444_p2;
reg   [31:0] add_ln130_2_reg_1768;
wire   [1:0] trunc_ln130_3_fu_450_p1;
reg   [1:0] trunc_ln130_3_reg_1773;
reg   [29:0] lshr_ln130_3_reg_1778;
reg   [31:0] W_load_1_reg_1783;
reg   [31:0] W_1_load_1_reg_1788;
wire   [0:0] icmp_ln128_fu_469_p2;
reg   [31:0] D_reg_1817;
reg   [31:0] C_reg_1822;
wire   [31:0] temp_fu_534_p2;
reg   [31:0] temp_reg_1828;
wire   [31:0] C_3_fu_553_p3;
reg   [31:0] C_3_reg_1833;
wire   [26:0] trunc_ln130_2_fu_561_p1;
reg   [26:0] trunc_ln130_2_reg_1840;
reg   [4:0] lshr_ln130_2_reg_1845;
wire   [1:0] trunc_ln130_5_fu_575_p1;
reg   [1:0] trunc_ln130_5_reg_1850;
reg   [29:0] lshr_ln130_5_reg_1855;
reg   [31:0] W_1_load_2_reg_1860;
reg   [31:0] W_load_3_reg_1865;
reg   [31:0] W_1_load_3_reg_1870;
wire   [31:0] add_ln130_6_fu_623_p2;
reg   [31:0] add_ln130_6_reg_1895;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] C_4_fu_628_p3;
reg   [31:0] C_4_reg_1900;
wire   [31:0] xor_ln130_5_fu_639_p2;
reg   [31:0] xor_ln130_5_reg_1907;
reg   [31:0] W_load_4_reg_1912;
reg   [31:0] W_1_load_4_reg_1917;
reg   [31:0] W_load_5_reg_1922;
reg   [31:0] W_1_load_5_reg_1927;
wire   [31:0] temp_1_fu_681_p2;
reg   [31:0] temp_1_reg_1952;
wire   [26:0] trunc_ln130_4_fu_686_p1;
reg   [26:0] trunc_ln130_4_reg_1957;
reg   [4:0] lshr_ln130_4_reg_1962;
wire   [1:0] trunc_ln130_7_fu_700_p1;
reg   [1:0] trunc_ln130_7_reg_1967;
reg   [29:0] lshr_ln130_7_reg_1972;
reg   [31:0] W_load_6_reg_1977;
reg   [31:0] W_load_7_reg_1982;
reg   [31:0] W_1_load_7_reg_1987;
wire   [31:0] add_ln130_10_fu_726_p2;
reg   [31:0] add_ln130_10_reg_1992;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_5_fu_731_p3;
reg   [31:0] C_5_reg_1997;
wire   [31:0] xor_ln130_7_fu_741_p2;
reg   [31:0] xor_ln130_7_reg_2004;
wire   [31:0] temp_2_fu_751_p2;
reg   [31:0] temp_2_reg_2009;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln130_6_fu_756_p1;
reg   [26:0] trunc_ln130_6_reg_2017;
reg   [4:0] lshr_ln130_6_reg_2022;
wire   [31:0] add_ln130_14_fu_782_p2;
reg   [31:0] add_ln130_14_reg_2027;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] temp_3_fu_791_p2;
reg   [31:0] temp_3_reg_2032;
wire    ap_block_pp0_stage8_11001;
wire   [31:0] C_6_fu_797_p3;
reg   [31:0] C_6_reg_2041;
wire   [31:0] temp_4_fu_850_p2;
reg   [31:0] temp_4_reg_2048;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] C_7_fu_868_p3;
reg   [31:0] C_7_reg_2053;
wire   [26:0] trunc_ln130_10_fu_876_p1;
reg   [26:0] trunc_ln130_10_reg_2060;
reg   [4:0] lshr_ln130_s_reg_2065;
wire   [1:0] trunc_ln130_13_fu_890_p1;
reg   [1:0] trunc_ln130_13_reg_2070;
reg   [29:0] lshr_ln130_12_reg_2075;
wire   [31:0] add_ln130_22_fu_916_p2;
reg   [31:0] add_ln130_22_reg_2080;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] temp_5_fu_935_p2;
reg   [31:0] temp_5_reg_2085;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [26:0] trunc_ln130_12_fu_940_p1;
reg   [26:0] trunc_ln130_12_reg_2090;
reg   [4:0] lshr_ln130_11_reg_2095;
wire   [31:0] C_10_fu_968_p3;
reg   [31:0] C_10_reg_2100;
wire   [31:0] add_ln130_26_fu_988_p2;
reg   [31:0] add_ln130_26_reg_2107;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [31:0] C_8_fu_1005_p3;
reg   [31:0] C_8_reg_2112;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [31:0] temp_6_fu_1028_p2;
reg   [31:0] temp_6_reg_2118;
wire   [26:0] trunc_ln130_14_fu_1033_p1;
reg   [26:0] trunc_ln130_14_reg_2123;
reg   [4:0] lshr_ln130_13_reg_2128;
wire   [1:0] trunc_ln130_17_fu_1047_p1;
reg   [1:0] trunc_ln130_17_reg_2133;
reg   [29:0] lshr_ln130_16_reg_2138;
wire   [31:0] add_ln130_30_fu_1073_p2;
reg   [31:0] add_ln130_30_reg_2143;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [31:0] C_9_fu_1078_p3;
reg   [31:0] C_9_reg_2148;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [31:0] temp_7_fu_1099_p2;
reg   [31:0] temp_7_reg_2154;
wire   [26:0] trunc_ln130_16_fu_1104_p1;
reg   [26:0] trunc_ln130_16_reg_2159;
reg   [4:0] lshr_ln130_15_reg_2164;
wire   [1:0] trunc_ln130_19_fu_1118_p1;
reg   [1:0] trunc_ln130_19_reg_2169;
reg   [29:0] lshr_ln130_18_reg_2174;
wire   [31:0] add_ln130_34_fu_1144_p2;
reg   [31:0] add_ln130_34_reg_2179;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [31:0] temp_8_fu_1163_p2;
reg   [31:0] temp_8_reg_2184;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [26:0] trunc_ln130_18_fu_1168_p1;
reg   [26:0] trunc_ln130_18_reg_2189;
reg   [4:0] lshr_ln130_17_reg_2194;
wire   [1:0] trunc_ln130_21_fu_1182_p1;
reg   [1:0] trunc_ln130_21_reg_2199;
reg   [29:0] lshr_ln130_20_reg_2204;
wire   [31:0] add_ln130_38_fu_1208_p2;
reg   [31:0] add_ln130_38_reg_2209;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [31:0] C_11_fu_1213_p3;
reg   [31:0] C_11_reg_2214;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [31:0] temp_9_fu_1234_p2;
reg   [31:0] temp_9_reg_2220;
wire   [26:0] trunc_ln130_20_fu_1239_p1;
reg   [26:0] trunc_ln130_20_reg_2225;
reg   [4:0] lshr_ln130_19_reg_2230;
wire   [1:0] trunc_ln130_23_fu_1253_p1;
reg   [1:0] trunc_ln130_23_reg_2235;
reg   [29:0] lshr_ln130_22_reg_2240;
wire   [31:0] add_ln130_42_fu_1279_p2;
reg   [31:0] add_ln130_42_reg_2245;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [31:0] C_12_fu_1284_p3;
reg   [31:0] C_12_reg_2250;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [31:0] temp_10_fu_1305_p2;
reg   [31:0] temp_10_reg_2256;
wire   [26:0] trunc_ln130_22_fu_1310_p1;
reg   [26:0] trunc_ln130_22_reg_2261;
reg   [4:0] lshr_ln130_21_reg_2266;
wire   [1:0] trunc_ln130_25_fu_1324_p1;
reg   [1:0] trunc_ln130_25_reg_2271;
reg   [29:0] lshr_ln130_24_reg_2276;
wire   [31:0] add_ln130_46_fu_1350_p2;
reg   [31:0] add_ln130_46_reg_2281;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [31:0] C_13_fu_1355_p3;
reg   [31:0] C_13_reg_2286;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [31:0] temp_11_fu_1376_p2;
reg   [31:0] temp_11_reg_2292;
wire   [26:0] trunc_ln130_24_fu_1381_p1;
reg   [26:0] trunc_ln130_24_reg_2297;
reg   [4:0] lshr_ln130_23_reg_2302;
wire   [1:0] trunc_ln130_27_fu_1395_p1;
reg   [1:0] trunc_ln130_27_reg_2307;
reg   [29:0] lshr_ln130_26_reg_2312;
wire   [31:0] add_ln130_50_fu_1421_p2;
reg   [31:0] add_ln130_50_reg_2317;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [31:0] C_14_fu_1426_p3;
reg   [31:0] C_14_reg_2322;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [31:0] temp_12_fu_1447_p2;
reg   [31:0] temp_12_reg_2328;
wire   [26:0] trunc_ln130_26_fu_1452_p1;
reg   [26:0] trunc_ln130_26_reg_2333;
reg   [4:0] lshr_ln130_25_reg_2338;
wire   [1:0] trunc_ln130_29_fu_1466_p1;
reg   [1:0] trunc_ln130_29_reg_2343;
reg   [29:0] lshr_ln130_28_reg_2348;
wire   [31:0] add_ln130_54_fu_1492_p2;
reg   [31:0] add_ln130_54_reg_2353;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
wire   [31:0] C_15_fu_1497_p3;
reg   [31:0] C_15_reg_2358;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [31:0] temp_13_fu_1519_p2;
reg   [31:0] temp_13_reg_2364;
wire   [26:0] trunc_ln130_28_fu_1524_p1;
reg   [26:0] trunc_ln130_28_reg_2369;
reg   [4:0] lshr_ln130_27_reg_2374;
wire   [31:0] add_ln130_58_fu_1577_p2;
reg   [31:0] add_ln130_58_reg_2379;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire   [26:0] trunc_ln130_30_fu_1614_p1;
reg   [26:0] trunc_ln130_30_reg_2384;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [4:0] lshr_ln130_29_reg_2389;
wire   [31:0] xor_ln130_31_fu_1633_p2;
reg   [31:0] xor_ln130_31_reg_2394;
wire   [31:0] add_ln130_62_fu_1666_p2;
reg   [31:0] add_ln130_62_reg_2399;
wire    ap_block_pp0_stage30_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_fu_380_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln100_1_fu_404_p1;
wire   [63:0] zext_ln100_2_fu_480_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln100_3_fu_491_p1;
wire   [63:0] zext_ln100_4_fu_594_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln100_5_fu_605_p1;
wire   [63:0] zext_ln100_6_fu_649_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln100_7_fu_660_p1;
reg   [31:0] E_fu_94;
wire   [31:0] C_16_fu_1582_p3;
wire    ap_loop_init;
reg   [31:0] E_1_fu_98;
wire   [31:0] C_17_fu_1608_p3;
reg   [31:0] E_2_fu_102;
wire   [31:0] C_2_fu_1552_p3;
reg   [31:0] B_fu_106;
wire   [31:0] temp_14_fu_1603_p2;
reg   [31:0] B_1_fu_110;
wire   [31:0] temp_15_fu_1675_p2;
reg   [6:0] i_fu_114;
wire   [6:0] add_ln128_1_fu_497_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage8_01001;
reg    W_ce1_local;
reg   [5:0] W_address1_local;
reg    W_ce0_local;
reg   [5:0] W_address0_local;
reg    W_1_ce1_local;
reg   [5:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [5:0] W_1_address0_local;
wire   [4:0] tmp_s_fu_386_p4;
wire   [5:0] or_ln100_3_fu_396_p3;
wire   [26:0] trunc_ln130_fu_416_p1;
wire   [4:0] lshr_ln6_fu_420_p4;
wire   [31:0] or_ln3_fu_430_p3;
wire   [31:0] add_ln130_1_fu_438_p2;
wire   [6:0] add_ln128_fu_464_p2;
wire   [5:0] add_ln100_fu_475_p2;
wire   [5:0] add_ln100_1_fu_486_p2;
wire   [31:0] xor_ln130_fu_516_p2;
wire   [31:0] xor_ln130_1_fu_522_p2;
wire   [31:0] add_ln130_fu_528_p2;
wire   [1:0] trunc_ln130_1_fu_539_p1;
wire   [29:0] lshr_ln130_1_fu_543_p4;
wire   [5:0] add_ln100_2_fu_589_p2;
wire   [5:0] add_ln100_3_fu_600_p2;
wire   [31:0] or_ln130_2_fu_611_p3;
wire   [31:0] add_ln130_5_fu_617_p2;
wire   [31:0] xor_ln130_4_fu_634_p2;
wire   [5:0] add_ln100_4_fu_644_p2;
wire   [5:0] add_ln100_5_fu_655_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] xor_ln130_2_fu_666_p2;
wire   [31:0] xor_ln130_3_fu_670_p2;
wire   [31:0] add_ln130_4_fu_675_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln130_4_fu_714_p3;
wire   [31:0] add_ln130_9_fu_720_p2;
wire   [31:0] xor_ln130_6_fu_737_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] add_ln130_8_fu_747_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln130_6_fu_770_p3;
wire   [31:0] add_ln130_13_fu_776_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] add_ln130_12_fu_787_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] xor_ln130_8_fu_816_p2;
wire   [26:0] trunc_ln130_8_fu_804_p1;
wire   [4:0] lshr_ln130_8_fu_807_p4;
wire   [31:0] add_ln130_17_fu_833_p2;
wire   [31:0] xor_ln130_9_fu_820_p2;
wire   [31:0] or_ln130_8_fu_825_p3;
wire   [31:0] add_ln130_16_fu_844_p2;
wire   [31:0] add_ln130_18_fu_838_p2;
wire   [1:0] trunc_ln130_9_fu_856_p1;
wire   [29:0] lshr_ln130_9_fu_859_p4;
wire    ap_block_pp0_stage10;
wire   [31:0] or_ln130_s_fu_904_p3;
wire   [31:0] add_ln130_21_fu_910_p2;
wire    ap_block_pp0_stage11;
wire   [31:0] xor_ln130_10_fu_921_p2;
wire   [31:0] xor_ln130_11_fu_925_p2;
wire   [31:0] add_ln130_20_fu_930_p2;
wire   [1:0] trunc_ln130_15_fu_954_p1;
wire   [29:0] lshr_ln130_14_fu_958_p4;
wire    ap_block_pp0_stage12;
wire   [31:0] or_ln130_1_fu_976_p3;
wire   [31:0] add_ln130_25_fu_982_p2;
wire    ap_block_pp0_stage13;
wire   [1:0] trunc_ln130_11_fu_993_p1;
wire   [29:0] lshr_ln130_10_fu_996_p4;
wire   [31:0] xor_ln130_12_fu_1013_p2;
wire   [31:0] xor_ln130_13_fu_1017_p2;
wire   [31:0] add_ln130_24_fu_1023_p2;
wire    ap_block_pp0_stage14;
wire   [31:0] or_ln130_3_fu_1061_p3;
wire   [31:0] add_ln130_29_fu_1067_p2;
wire    ap_block_pp0_stage15;
wire   [31:0] xor_ln130_14_fu_1084_p2;
wire   [31:0] xor_ln130_15_fu_1088_p2;
wire   [31:0] add_ln130_28_fu_1094_p2;
wire    ap_block_pp0_stage16;
wire   [31:0] or_ln130_5_fu_1132_p3;
wire   [31:0] add_ln130_33_fu_1138_p2;
wire    ap_block_pp0_stage17;
wire   [31:0] xor_ln130_16_fu_1149_p2;
wire   [31:0] xor_ln130_17_fu_1153_p2;
wire   [31:0] add_ln130_32_fu_1158_p2;
wire    ap_block_pp0_stage18;
wire   [31:0] or_ln130_7_fu_1196_p3;
wire   [31:0] add_ln130_37_fu_1202_p2;
wire    ap_block_pp0_stage19;
wire   [31:0] xor_ln130_18_fu_1219_p2;
wire   [31:0] xor_ln130_19_fu_1223_p2;
wire   [31:0] add_ln130_36_fu_1229_p2;
wire    ap_block_pp0_stage20;
wire   [31:0] or_ln130_9_fu_1267_p3;
wire   [31:0] add_ln130_41_fu_1273_p2;
wire    ap_block_pp0_stage21;
wire   [31:0] xor_ln130_20_fu_1290_p2;
wire   [31:0] xor_ln130_21_fu_1294_p2;
wire   [31:0] add_ln130_40_fu_1300_p2;
wire    ap_block_pp0_stage22;
wire   [31:0] or_ln130_10_fu_1338_p3;
wire   [31:0] add_ln130_45_fu_1344_p2;
wire    ap_block_pp0_stage23;
wire   [31:0] xor_ln130_22_fu_1361_p2;
wire   [31:0] xor_ln130_23_fu_1365_p2;
wire   [31:0] add_ln130_44_fu_1371_p2;
wire    ap_block_pp0_stage24;
wire   [31:0] or_ln130_11_fu_1409_p3;
wire   [31:0] add_ln130_49_fu_1415_p2;
wire    ap_block_pp0_stage25;
wire   [31:0] xor_ln130_24_fu_1432_p2;
wire   [31:0] xor_ln130_25_fu_1436_p2;
wire   [31:0] add_ln130_48_fu_1442_p2;
wire    ap_block_pp0_stage26;
wire   [31:0] or_ln130_12_fu_1480_p3;
wire   [31:0] add_ln130_53_fu_1486_p2;
wire    ap_block_pp0_stage27;
wire   [31:0] xor_ln130_26_fu_1503_p2;
wire   [31:0] xor_ln130_27_fu_1507_p2;
wire   [31:0] add_ln130_52_fu_1513_p2;
wire   [1:0] trunc_ln130_31_fu_1538_p1;
wire   [29:0] lshr_ln130_30_fu_1542_p4;
wire    ap_block_pp0_stage28;
wire   [31:0] or_ln130_13_fu_1565_p3;
wire   [31:0] add_ln130_57_fu_1571_p2;
wire    ap_block_pp0_stage29;
wire   [31:0] xor_ln130_28_fu_1588_p2;
wire   [31:0] xor_ln130_29_fu_1592_p2;
wire   [31:0] add_ln130_56_fu_1598_p2;
wire   [31:0] xor_ln130_30_fu_1628_p2;
wire    ap_block_pp0_stage30;
wire   [31:0] or_ln130_14_fu_1654_p3;
wire   [31:0] add_ln130_61_fu_1660_p2;
wire   [31:0] add_ln130_60_fu_1671_p2;
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
#0 E_fu_94 = 32'd0;
#0 E_1_fu_98 = 32'd0;
#0 E_2_fu_102 = 32'd0;
#0 B_fu_106 = 32'd0;
#0 B_1_fu_110 = 32'd0;
#0 i_fu_114 = 7'd0;
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
            B_1_fu_110 <= A_43_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_110 <= temp_15_fu_1675_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_106 <= B_41_reload;
    end else if (((icmp_ln128_reg_1793 == 1'd1) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        B_fu_106 <= temp_14_fu_1603_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_98 <= D_43_reload;
    end else if (((icmp_ln128_reg_1793 == 1'd1) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        E_1_fu_98 <= C_17_fu_1608_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_102 <= C_54_reload;
    end else if (((icmp_ln128_reg_1793 == 1'd1) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        E_2_fu_102 <= C_2_fu_1552_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_94 <= E_41_reload;
    end else if (((icmp_ln128_reg_1793 == 1'd1) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        E_fu_94 <= C_16_fu_1582_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_114 <= 7'd60;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln128_fu_469_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_114 <= add_ln128_1_fu_497_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_reg_1763 <= B_1_fu_110;
        add_ln130_2_reg_1768 <= add_ln130_2_fu_444_p2;
        icmp_ln128_reg_1793 <= icmp_ln128_fu_469_p2;
        lshr_ln130_3_reg_1778 <= {{B_1_fu_110[31:2]}};
        trunc_ln130_3_reg_1773 <= trunc_ln130_3_fu_450_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        C_10_reg_2100 <= C_10_fu_968_p3;
        lshr_ln130_11_reg_2095 <= {{temp_5_fu_935_p2[31:27]}};
        temp_5_reg_2085 <= temp_5_fu_935_p2;
        trunc_ln130_12_reg_2090 <= trunc_ln130_12_fu_940_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        C_11_reg_2214 <= C_11_fu_1213_p3;
        lshr_ln130_19_reg_2230 <= {{temp_9_fu_1234_p2[31:27]}};
        lshr_ln130_22_reg_2240 <= {{temp_9_fu_1234_p2[31:2]}};
        temp_9_reg_2220 <= temp_9_fu_1234_p2;
        trunc_ln130_20_reg_2225 <= trunc_ln130_20_fu_1239_p1;
        trunc_ln130_23_reg_2235 <= trunc_ln130_23_fu_1253_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        C_12_reg_2250 <= C_12_fu_1284_p3;
        lshr_ln130_21_reg_2266 <= {{temp_10_fu_1305_p2[31:27]}};
        lshr_ln130_24_reg_2276 <= {{temp_10_fu_1305_p2[31:2]}};
        temp_10_reg_2256 <= temp_10_fu_1305_p2;
        trunc_ln130_22_reg_2261 <= trunc_ln130_22_fu_1310_p1;
        trunc_ln130_25_reg_2271 <= trunc_ln130_25_fu_1324_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        C_13_reg_2286 <= C_13_fu_1355_p3;
        lshr_ln130_23_reg_2302 <= {{temp_11_fu_1376_p2[31:27]}};
        lshr_ln130_26_reg_2312 <= {{temp_11_fu_1376_p2[31:2]}};
        temp_11_reg_2292 <= temp_11_fu_1376_p2;
        trunc_ln130_24_reg_2297 <= trunc_ln130_24_fu_1381_p1;
        trunc_ln130_27_reg_2307 <= trunc_ln130_27_fu_1395_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        C_14_reg_2322 <= C_14_fu_1426_p3;
        lshr_ln130_25_reg_2338 <= {{temp_12_fu_1447_p2[31:27]}};
        lshr_ln130_28_reg_2348 <= {{temp_12_fu_1447_p2[31:2]}};
        temp_12_reg_2328 <= temp_12_fu_1447_p2;
        trunc_ln130_26_reg_2333 <= trunc_ln130_26_fu_1452_p1;
        trunc_ln130_29_reg_2343 <= trunc_ln130_29_fu_1466_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        C_15_reg_2358 <= C_15_fu_1497_p3;
        lshr_ln130_27_reg_2374 <= {{temp_13_fu_1519_p2[31:27]}};
        temp_13_reg_2364 <= temp_13_fu_1519_p2;
        trunc_ln130_28_reg_2369 <= trunc_ln130_28_fu_1524_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_3_reg_1833 <= C_3_fu_553_p3;
        C_reg_1822 <= E_2_fu_102;
        D_reg_1817 <= E_1_fu_98;
        lshr_ln130_2_reg_1845 <= {{temp_fu_534_p2[31:27]}};
        lshr_ln130_5_reg_1855 <= {{temp_fu_534_p2[31:2]}};
        temp_reg_1828 <= temp_fu_534_p2;
        trunc_ln130_2_reg_1840 <= trunc_ln130_2_fu_561_p1;
        trunc_ln130_5_reg_1850 <= trunc_ln130_5_fu_575_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_4_reg_1900 <= C_4_fu_628_p3;
        W_1_load_4_reg_1917 <= W_1_q1;
        W_1_load_5_reg_1927 <= W_1_q0;
        W_load_4_reg_1912 <= W_q1;
        W_load_5_reg_1922 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_5_reg_1997 <= C_5_fu_731_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_6_reg_2041 <= C_6_fu_797_p3;
        temp_3_reg_2032 <= temp_3_fu_791_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        C_7_reg_2053 <= C_7_fu_868_p3;
        lshr_ln130_12_reg_2075 <= {{temp_4_fu_850_p2[31:2]}};
        lshr_ln130_s_reg_2065 <= {{temp_4_fu_850_p2[31:27]}};
        temp_4_reg_2048 <= temp_4_fu_850_p2;
        trunc_ln130_10_reg_2060 <= trunc_ln130_10_fu_876_p1;
        trunc_ln130_13_reg_2070 <= trunc_ln130_13_fu_890_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        C_8_reg_2112 <= C_8_fu_1005_p3;
        lshr_ln130_13_reg_2128 <= {{temp_6_fu_1028_p2[31:27]}};
        lshr_ln130_16_reg_2138 <= {{temp_6_fu_1028_p2[31:2]}};
        temp_6_reg_2118 <= temp_6_fu_1028_p2;
        trunc_ln130_14_reg_2123 <= trunc_ln130_14_fu_1033_p1;
        trunc_ln130_17_reg_2133 <= trunc_ln130_17_fu_1047_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        C_9_reg_2148 <= C_9_fu_1078_p3;
        lshr_ln130_15_reg_2164 <= {{temp_7_fu_1099_p2[31:27]}};
        lshr_ln130_18_reg_2174 <= {{temp_7_fu_1099_p2[31:2]}};
        temp_7_reg_2154 <= temp_7_fu_1099_p2;
        trunc_ln130_16_reg_2159 <= trunc_ln130_16_fu_1104_p1;
        trunc_ln130_19_reg_2169 <= trunc_ln130_19_fu_1118_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_load_1_reg_1788 <= W_1_q0;
        W_load_1_reg_1783 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_1_load_2_reg_1860 <= W_1_q1;
        W_1_load_3_reg_1870 <= W_1_q0;
        W_load_3_reg_1865 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        W_1_load_7_reg_1987 <= W_1_q0;
        W_load_6_reg_1977 <= W_q1;
        W_load_7_reg_1982 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln130_10_reg_1992 <= add_ln130_10_fu_726_p2;
        xor_ln130_7_reg_2004 <= xor_ln130_7_fu_741_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln130_14_reg_2027 <= add_ln130_14_fu_782_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln130_22_reg_2080 <= add_ln130_22_fu_916_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln130_26_reg_2107 <= add_ln130_26_fu_988_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln130_30_reg_2143 <= add_ln130_30_fu_1073_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add_ln130_34_reg_2179 <= add_ln130_34_fu_1144_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        add_ln130_38_reg_2209 <= add_ln130_38_fu_1208_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        add_ln130_42_reg_2245 <= add_ln130_42_fu_1279_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        add_ln130_46_reg_2281 <= add_ln130_46_fu_1350_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        add_ln130_50_reg_2317 <= add_ln130_50_fu_1421_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        add_ln130_54_reg_2353 <= add_ln130_54_fu_1492_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        add_ln130_58_reg_2379 <= add_ln130_58_fu_1577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        add_ln130_62_reg_2399 <= add_ln130_62_fu_1666_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln130_6_reg_1895 <= add_ln130_6_fu_623_p2;
        xor_ln130_5_reg_1907 <= xor_ln130_5_fu_639_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_1727 <= ap_sig_allocacmp_i_1;
        lshr_ln100_3_reg_1733 <= {{ap_sig_allocacmp_i_1[6:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        lshr_ln130_17_reg_2194 <= {{temp_8_fu_1163_p2[31:27]}};
        lshr_ln130_20_reg_2204 <= {{temp_8_fu_1163_p2[31:2]}};
        temp_8_reg_2184 <= temp_8_fu_1163_p2;
        trunc_ln130_18_reg_2189 <= trunc_ln130_18_fu_1168_p1;
        trunc_ln130_21_reg_2199 <= trunc_ln130_21_fu_1182_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        lshr_ln130_29_reg_2389 <= {{temp_14_fu_1603_p2[31:27]}};
        trunc_ln130_30_reg_2384 <= trunc_ln130_30_fu_1614_p1;
        xor_ln130_31_reg_2394 <= xor_ln130_31_fu_1633_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln130_4_reg_1962 <= {{temp_1_fu_681_p2[31:27]}};
        lshr_ln130_7_reg_1972 <= {{temp_1_fu_681_p2[31:2]}};
        temp_1_reg_1952 <= temp_1_fu_681_p2;
        trunc_ln130_4_reg_1957 <= trunc_ln130_4_fu_686_p1;
        trunc_ln130_7_reg_1967 <= trunc_ln130_7_fu_700_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln130_6_reg_2022 <= {{temp_2_fu_751_p2[31:27]}};
        trunc_ln130_6_reg_2017 <= trunc_ln130_6_fu_756_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_329 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_333 <= W_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        temp_2_reg_2009 <= temp_2_fu_751_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_38_out_ap_vld = 1'b1;
    end else begin
        C_38_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_39_out_ap_vld = 1'b1;
    end else begin
        C_39_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_40_out_ap_vld = 1'b1;
    end else begin
        C_40_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            W_1_address0_local = zext_ln100_7_fu_660_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            W_1_address0_local = zext_ln100_5_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_1_address0_local = zext_ln100_3_fu_491_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_1_address0_local = zext_ln100_1_fu_404_p1;
        end else begin
            W_1_address0_local = 'bx;
        end
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            W_1_address1_local = zext_ln100_6_fu_649_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            W_1_address1_local = zext_ln100_4_fu_594_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_1_address1_local = zext_ln100_2_fu_480_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_1_address1_local = zext_ln100_fu_380_p1;
        end else begin
            W_1_address1_local = 'bx;
        end
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            W_address0_local = zext_ln100_7_fu_660_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            W_address0_local = zext_ln100_5_fu_605_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_address0_local = zext_ln100_3_fu_491_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_address0_local = zext_ln100_1_fu_404_p1;
        end else begin
            W_address0_local = 'bx;
        end
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            W_address1_local = zext_ln100_6_fu_649_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            W_address1_local = zext_ln100_4_fu_594_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_address1_local = zext_ln100_2_fu_480_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_address1_local = zext_ln100_fu_380_p1;
        end else begin
            W_address1_local = 'bx;
        end
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_114;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        temp_5_out_ap_vld = 1'b1;
    end else begin
        temp_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1793 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        temp_6_out_ap_vld = 1'b1;
    end else begin
        temp_6_out_ap_vld = 1'b0;
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
assign C_10_fu_968_p3 = {{trunc_ln130_15_fu_954_p1}, {lshr_ln130_14_fu_958_p4}};
assign C_11_fu_1213_p3 = {{trunc_ln130_17_reg_2133}, {lshr_ln130_16_reg_2138}};
assign C_12_fu_1284_p3 = {{trunc_ln130_19_reg_2169}, {lshr_ln130_18_reg_2174}};
assign C_13_fu_1355_p3 = {{trunc_ln130_21_reg_2199}, {lshr_ln130_20_reg_2204}};
assign C_14_fu_1426_p3 = {{trunc_ln130_23_reg_2235}, {lshr_ln130_22_reg_2240}};
assign C_15_fu_1497_p3 = {{trunc_ln130_25_reg_2271}, {lshr_ln130_24_reg_2276}};
assign C_16_fu_1582_p3 = {{trunc_ln130_27_reg_2307}, {lshr_ln130_26_reg_2312}};
assign C_17_fu_1608_p3 = {{trunc_ln130_29_reg_2343}, {lshr_ln130_28_reg_2348}};
assign C_2_fu_1552_p3 = {{trunc_ln130_31_fu_1538_p1}, {lshr_ln130_30_fu_1542_p4}};
assign C_38_out = C_4_reg_1900;
assign C_39_out = C_5_reg_1997;
assign C_3_fu_553_p3 = {{trunc_ln130_1_fu_539_p1}, {lshr_ln130_1_fu_543_p4}};
assign C_40_out = {{trunc_ln130_7_reg_1967}, {lshr_ln130_7_reg_1972}};
assign C_4_fu_628_p3 = {{trunc_ln130_3_reg_1773}, {lshr_ln130_3_reg_1778}};
assign C_5_fu_731_p3 = {{trunc_ln130_5_reg_1850}, {lshr_ln130_5_reg_1855}};
assign C_6_fu_797_p3 = {{trunc_ln130_7_reg_1967}, {lshr_ln130_7_reg_1972}};
assign C_7_fu_868_p3 = {{trunc_ln130_9_fu_856_p1}, {lshr_ln130_9_fu_859_p4}};
assign C_8_fu_1005_p3 = {{trunc_ln130_11_fu_993_p1}, {lshr_ln130_10_fu_996_p4}};
assign C_9_fu_1078_p3 = {{trunc_ln130_13_reg_2070}, {lshr_ln130_12_reg_2075}};
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = W_1_address1_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln100_1_fu_486_p2 = (lshr_ln100_3_reg_1733 + 6'd3);
assign add_ln100_2_fu_589_p2 = (lshr_ln100_3_reg_1733 + 6'd4);
assign add_ln100_3_fu_600_p2 = (lshr_ln100_3_reg_1733 + 6'd5);
assign add_ln100_4_fu_644_p2 = (lshr_ln100_3_reg_1733 + 6'd6);
assign add_ln100_5_fu_655_p2 = (lshr_ln100_3_reg_1733 + 6'd7);
assign add_ln100_fu_475_p2 = (lshr_ln100_3_reg_1733 + 6'd2);
assign add_ln128_1_fu_497_p2 = (i_1_reg_1727 + 7'd16);
assign add_ln128_fu_464_p2 = (i_1_reg_1727 + 7'd4);
assign add_ln130_10_fu_726_p2 = (add_ln130_9_fu_720_p2 + C_reg_1822);
assign add_ln130_12_fu_787_p2 = (W_1_load_1_reg_1788 + xor_ln130_7_reg_2004);
assign add_ln130_13_fu_776_p2 = ($signed(or_ln130_6_fu_770_p3) + $signed(32'd3395469782));
assign add_ln130_14_fu_782_p2 = (add_ln130_13_fu_776_p2 + C_3_reg_1833);
assign add_ln130_16_fu_844_p2 = (or_ln130_8_fu_825_p3 + reg_329);
assign add_ln130_17_fu_833_p2 = ($signed(C_4_reg_1900) + $signed(32'd3395469782));
assign add_ln130_18_fu_838_p2 = (add_ln130_17_fu_833_p2 + xor_ln130_9_fu_820_p2);
assign add_ln130_1_fu_438_p2 = ($signed(or_ln3_fu_430_p3) + $signed(32'd3395469782));
assign add_ln130_20_fu_930_p2 = (W_1_load_2_reg_1860 + xor_ln130_11_fu_925_p2);
assign add_ln130_21_fu_910_p2 = ($signed(or_ln130_s_fu_904_p3) + $signed(32'd3395469782));
assign add_ln130_22_fu_916_p2 = (add_ln130_21_fu_910_p2 + C_5_reg_1997);
assign add_ln130_24_fu_1023_p2 = (W_load_3_reg_1865 + xor_ln130_13_fu_1017_p2);
assign add_ln130_25_fu_982_p2 = ($signed(or_ln130_1_fu_976_p3) + $signed(32'd3395469782));
assign add_ln130_26_fu_988_p2 = (add_ln130_25_fu_982_p2 + C_6_reg_2041);
assign add_ln130_28_fu_1094_p2 = (W_1_load_3_reg_1870 + xor_ln130_15_fu_1088_p2);
assign add_ln130_29_fu_1067_p2 = ($signed(or_ln130_3_fu_1061_p3) + $signed(32'd3395469782));
assign add_ln130_2_fu_444_p2 = (add_ln130_1_fu_438_p2 + E_fu_94);
assign add_ln130_30_fu_1073_p2 = (add_ln130_29_fu_1067_p2 + C_7_reg_2053);
assign add_ln130_32_fu_1158_p2 = (W_load_4_reg_1912 + xor_ln130_17_fu_1153_p2);
assign add_ln130_33_fu_1138_p2 = ($signed(or_ln130_5_fu_1132_p3) + $signed(32'd3395469782));
assign add_ln130_34_fu_1144_p2 = (add_ln130_33_fu_1138_p2 + C_8_reg_2112);
assign add_ln130_36_fu_1229_p2 = (W_1_load_4_reg_1917 + xor_ln130_19_fu_1223_p2);
assign add_ln130_37_fu_1202_p2 = ($signed(or_ln130_7_fu_1196_p3) + $signed(32'd3395469782));
assign add_ln130_38_fu_1208_p2 = (add_ln130_37_fu_1202_p2 + C_9_reg_2148);
assign add_ln130_40_fu_1300_p2 = (W_load_5_reg_1922 + xor_ln130_21_fu_1294_p2);
assign add_ln130_41_fu_1273_p2 = ($signed(or_ln130_9_fu_1267_p3) + $signed(32'd3395469782));
assign add_ln130_42_fu_1279_p2 = (add_ln130_41_fu_1273_p2 + C_10_reg_2100);
assign add_ln130_44_fu_1371_p2 = (W_1_load_5_reg_1927 + xor_ln130_23_fu_1365_p2);
assign add_ln130_45_fu_1344_p2 = ($signed(or_ln130_10_fu_1338_p3) + $signed(32'd3395469782));
assign add_ln130_46_fu_1350_p2 = (add_ln130_45_fu_1344_p2 + C_11_reg_2214);
assign add_ln130_48_fu_1442_p2 = (W_load_6_reg_1977 + xor_ln130_25_fu_1436_p2);
assign add_ln130_49_fu_1415_p2 = ($signed(or_ln130_11_fu_1409_p3) + $signed(32'd3395469782));
assign add_ln130_4_fu_675_p2 = (reg_333 + xor_ln130_3_fu_670_p2);
assign add_ln130_50_fu_1421_p2 = (add_ln130_49_fu_1415_p2 + C_12_reg_2250);
assign add_ln130_52_fu_1513_p2 = (reg_333 + xor_ln130_27_fu_1507_p2);
assign add_ln130_53_fu_1486_p2 = ($signed(or_ln130_12_fu_1480_p3) + $signed(32'd3395469782));
assign add_ln130_54_fu_1492_p2 = (add_ln130_53_fu_1486_p2 + C_13_reg_2286);
assign add_ln130_56_fu_1598_p2 = (W_load_7_reg_1982 + xor_ln130_29_fu_1592_p2);
assign add_ln130_57_fu_1571_p2 = ($signed(or_ln130_13_fu_1565_p3) + $signed(32'd3395469782));
assign add_ln130_58_fu_1577_p2 = (add_ln130_57_fu_1571_p2 + C_14_reg_2322);
assign add_ln130_5_fu_617_p2 = ($signed(or_ln130_2_fu_611_p3) + $signed(32'd3395469782));
assign add_ln130_60_fu_1671_p2 = (W_1_load_7_reg_1987 + C_15_reg_2358);
assign add_ln130_61_fu_1660_p2 = ($signed(or_ln130_14_fu_1654_p3) + $signed(32'd3395469782));
assign add_ln130_62_fu_1666_p2 = (add_ln130_61_fu_1660_p2 + xor_ln130_31_reg_2394);
assign add_ln130_6_fu_623_p2 = (add_ln130_5_fu_617_p2 + D_reg_1817);
assign add_ln130_8_fu_747_p2 = (W_load_1_reg_1783 + xor_ln130_5_reg_1907);
assign add_ln130_9_fu_720_p2 = ($signed(or_ln130_4_fu_714_p3) + $signed(32'd3395469782));
assign add_ln130_fu_528_p2 = (reg_329 + xor_ln130_1_fu_522_p2);
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
assign icmp_ln128_fu_469_p2 = ((add_ln128_fu_464_p2 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln100_3_fu_370_p4 = {{ap_sig_allocacmp_i_1[6:1]}};
assign lshr_ln130_10_fu_996_p4 = {{temp_3_reg_2032[31:2]}};
assign lshr_ln130_14_fu_958_p4 = {{temp_5_fu_935_p2[31:2]}};
assign lshr_ln130_1_fu_543_p4 = {{B_fu_106[31:2]}};
assign lshr_ln130_30_fu_1542_p4 = {{temp_13_fu_1519_p2[31:2]}};
assign lshr_ln130_8_fu_807_p4 = {{temp_3_reg_2032[31:27]}};
assign lshr_ln130_9_fu_859_p4 = {{temp_2_reg_2009[31:2]}};
assign lshr_ln6_fu_420_p4 = {{B_1_fu_110[31:27]}};
assign or_ln100_3_fu_396_p3 = {{tmp_s_fu_386_p4}, {1'd1}};
assign or_ln130_10_fu_1338_p3 = {{trunc_ln130_22_reg_2261}, {lshr_ln130_21_reg_2266}};
assign or_ln130_11_fu_1409_p3 = {{trunc_ln130_24_reg_2297}, {lshr_ln130_23_reg_2302}};
assign or_ln130_12_fu_1480_p3 = {{trunc_ln130_26_reg_2333}, {lshr_ln130_25_reg_2338}};
assign or_ln130_13_fu_1565_p3 = {{trunc_ln130_28_reg_2369}, {lshr_ln130_27_reg_2374}};
assign or_ln130_14_fu_1654_p3 = {{trunc_ln130_30_reg_2384}, {lshr_ln130_29_reg_2389}};
assign or_ln130_1_fu_976_p3 = {{trunc_ln130_12_reg_2090}, {lshr_ln130_11_reg_2095}};
assign or_ln130_2_fu_611_p3 = {{trunc_ln130_2_reg_1840}, {lshr_ln130_2_reg_1845}};
assign or_ln130_3_fu_1061_p3 = {{trunc_ln130_14_reg_2123}, {lshr_ln130_13_reg_2128}};
assign or_ln130_4_fu_714_p3 = {{trunc_ln130_4_reg_1957}, {lshr_ln130_4_reg_1962}};
assign or_ln130_5_fu_1132_p3 = {{trunc_ln130_16_reg_2159}, {lshr_ln130_15_reg_2164}};
assign or_ln130_6_fu_770_p3 = {{trunc_ln130_6_reg_2017}, {lshr_ln130_6_reg_2022}};
assign or_ln130_7_fu_1196_p3 = {{trunc_ln130_18_reg_2189}, {lshr_ln130_17_reg_2194}};
assign or_ln130_8_fu_825_p3 = {{trunc_ln130_8_fu_804_p1}, {lshr_ln130_8_fu_807_p4}};
assign or_ln130_9_fu_1267_p3 = {{trunc_ln130_20_reg_2225}, {lshr_ln130_19_reg_2230}};
assign or_ln130_s_fu_904_p3 = {{trunc_ln130_10_reg_2060}, {lshr_ln130_s_reg_2065}};
assign or_ln3_fu_430_p3 = {{trunc_ln130_fu_416_p1}, {lshr_ln6_fu_420_p4}};
assign temp_10_fu_1305_p2 = (add_ln130_42_reg_2245 + add_ln130_40_fu_1300_p2);
assign temp_11_fu_1376_p2 = (add_ln130_46_reg_2281 + add_ln130_44_fu_1371_p2);
assign temp_12_fu_1447_p2 = (add_ln130_50_reg_2317 + add_ln130_48_fu_1442_p2);
assign temp_13_fu_1519_p2 = (add_ln130_54_reg_2353 + add_ln130_52_fu_1513_p2);
assign temp_14_fu_1603_p2 = (add_ln130_58_reg_2379 + add_ln130_56_fu_1598_p2);
assign temp_15_fu_1675_p2 = (add_ln130_62_reg_2399 + add_ln130_60_fu_1671_p2);
assign temp_1_fu_681_p2 = (add_ln130_6_reg_1895 + add_ln130_4_fu_675_p2);
assign temp_2_fu_751_p2 = (add_ln130_10_reg_1992 + add_ln130_8_fu_747_p2);
assign temp_3_fu_791_p2 = (add_ln130_14_reg_2027 + add_ln130_12_fu_787_p2);
assign temp_4_fu_850_p2 = (add_ln130_16_fu_844_p2 + add_ln130_18_fu_838_p2);
assign temp_5_fu_935_p2 = (add_ln130_22_reg_2080 + add_ln130_20_fu_930_p2);
assign temp_5_out = temp_2_reg_2009;
assign temp_6_fu_1028_p2 = (add_ln130_26_reg_2107 + add_ln130_24_fu_1023_p2);
assign temp_6_out = (add_ln130_14_reg_2027 + add_ln130_12_fu_787_p2);
assign temp_7_fu_1099_p2 = (add_ln130_30_reg_2143 + add_ln130_28_fu_1094_p2);
assign temp_8_fu_1163_p2 = (add_ln130_34_reg_2179 + add_ln130_32_fu_1158_p2);
assign temp_9_fu_1234_p2 = (add_ln130_38_reg_2209 + add_ln130_36_fu_1229_p2);
assign temp_fu_534_p2 = (add_ln130_2_reg_1768 + add_ln130_fu_528_p2);
assign tmp_s_fu_386_p4 = {{ap_sig_allocacmp_i_1[6:2]}};
assign trunc_ln130_10_fu_876_p1 = temp_4_fu_850_p2[26:0];
assign trunc_ln130_11_fu_993_p1 = temp_3_reg_2032[1:0];
assign trunc_ln130_12_fu_940_p1 = temp_5_fu_935_p2[26:0];
assign trunc_ln130_13_fu_890_p1 = temp_4_fu_850_p2[1:0];
assign trunc_ln130_14_fu_1033_p1 = temp_6_fu_1028_p2[26:0];
assign trunc_ln130_15_fu_954_p1 = temp_5_fu_935_p2[1:0];
assign trunc_ln130_16_fu_1104_p1 = temp_7_fu_1099_p2[26:0];
assign trunc_ln130_17_fu_1047_p1 = temp_6_fu_1028_p2[1:0];
assign trunc_ln130_18_fu_1168_p1 = temp_8_fu_1163_p2[26:0];
assign trunc_ln130_19_fu_1118_p1 = temp_7_fu_1099_p2[1:0];
assign trunc_ln130_1_fu_539_p1 = B_fu_106[1:0];
assign trunc_ln130_20_fu_1239_p1 = temp_9_fu_1234_p2[26:0];
assign trunc_ln130_21_fu_1182_p1 = temp_8_fu_1163_p2[1:0];
assign trunc_ln130_22_fu_1310_p1 = temp_10_fu_1305_p2[26:0];
assign trunc_ln130_23_fu_1253_p1 = temp_9_fu_1234_p2[1:0];
assign trunc_ln130_24_fu_1381_p1 = temp_11_fu_1376_p2[26:0];
assign trunc_ln130_25_fu_1324_p1 = temp_10_fu_1305_p2[1:0];
assign trunc_ln130_26_fu_1452_p1 = temp_12_fu_1447_p2[26:0];
assign trunc_ln130_27_fu_1395_p1 = temp_11_fu_1376_p2[1:0];
assign trunc_ln130_28_fu_1524_p1 = temp_13_fu_1519_p2[26:0];
assign trunc_ln130_29_fu_1466_p1 = temp_12_fu_1447_p2[1:0];
assign trunc_ln130_2_fu_561_p1 = temp_fu_534_p2[26:0];
assign trunc_ln130_30_fu_1614_p1 = temp_14_fu_1603_p2[26:0];
assign trunc_ln130_31_fu_1538_p1 = temp_13_fu_1519_p2[1:0];
assign trunc_ln130_3_fu_450_p1 = B_1_fu_110[1:0];
assign trunc_ln130_4_fu_686_p1 = temp_1_fu_681_p2[26:0];
assign trunc_ln130_5_fu_575_p1 = temp_fu_534_p2[1:0];
assign trunc_ln130_6_fu_756_p1 = temp_2_fu_751_p2[26:0];
assign trunc_ln130_7_fu_700_p1 = temp_1_fu_681_p2[1:0];
assign trunc_ln130_8_fu_804_p1 = temp_3_reg_2032[26:0];
assign trunc_ln130_9_fu_856_p1 = temp_2_reg_2009[1:0];
assign trunc_ln130_fu_416_p1 = B_1_fu_110[26:0];
assign xor_ln130_10_fu_921_p2 = (temp_3_reg_2032 ^ C_6_reg_2041);
assign xor_ln130_11_fu_925_p2 = (xor_ln130_10_fu_921_p2 ^ C_7_reg_2053);
assign xor_ln130_12_fu_1013_p2 = (temp_4_reg_2048 ^ C_7_reg_2053);
assign xor_ln130_13_fu_1017_p2 = (xor_ln130_12_fu_1013_p2 ^ C_8_fu_1005_p3);
assign xor_ln130_14_fu_1084_p2 = (temp_5_reg_2085 ^ C_8_reg_2112);
assign xor_ln130_15_fu_1088_p2 = (xor_ln130_14_fu_1084_p2 ^ C_9_fu_1078_p3);
assign xor_ln130_16_fu_1149_p2 = (temp_6_reg_2118 ^ C_9_reg_2148);
assign xor_ln130_17_fu_1153_p2 = (xor_ln130_16_fu_1149_p2 ^ C_10_reg_2100);
assign xor_ln130_18_fu_1219_p2 = (temp_7_reg_2154 ^ C_10_reg_2100);
assign xor_ln130_19_fu_1223_p2 = (xor_ln130_18_fu_1219_p2 ^ C_11_fu_1213_p3);
assign xor_ln130_1_fu_522_p2 = (xor_ln130_fu_516_p2 ^ E_2_fu_102);
assign xor_ln130_20_fu_1290_p2 = (temp_8_reg_2184 ^ C_11_reg_2214);
assign xor_ln130_21_fu_1294_p2 = (xor_ln130_20_fu_1290_p2 ^ C_12_fu_1284_p3);
assign xor_ln130_22_fu_1361_p2 = (temp_9_reg_2220 ^ C_12_reg_2250);
assign xor_ln130_23_fu_1365_p2 = (xor_ln130_22_fu_1361_p2 ^ C_13_fu_1355_p3);
assign xor_ln130_24_fu_1432_p2 = (temp_10_reg_2256 ^ C_13_reg_2286);
assign xor_ln130_25_fu_1436_p2 = (xor_ln130_24_fu_1432_p2 ^ C_14_fu_1426_p3);
assign xor_ln130_26_fu_1503_p2 = (temp_11_reg_2292 ^ C_14_reg_2322);
assign xor_ln130_27_fu_1507_p2 = (xor_ln130_26_fu_1503_p2 ^ C_15_fu_1497_p3);
assign xor_ln130_28_fu_1588_p2 = (temp_12_reg_2328 ^ C_15_reg_2358);
assign xor_ln130_29_fu_1592_p2 = (xor_ln130_28_fu_1588_p2 ^ C_16_fu_1582_p3);
assign xor_ln130_2_fu_666_p2 = (C_3_reg_1833 ^ A_reg_1763);
assign xor_ln130_30_fu_1628_p2 = (temp_13_reg_2364 ^ C_16_fu_1582_p3);
assign xor_ln130_31_fu_1633_p2 = (xor_ln130_30_fu_1628_p2 ^ C_17_fu_1608_p3);
assign xor_ln130_3_fu_670_p2 = (xor_ln130_2_fu_666_p2 ^ C_reg_1822);
assign xor_ln130_4_fu_634_p2 = (temp_reg_1828 ^ C_4_fu_628_p3);
assign xor_ln130_5_fu_639_p2 = (xor_ln130_4_fu_634_p2 ^ C_3_reg_1833);
assign xor_ln130_6_fu_737_p2 = (temp_1_reg_1952 ^ C_4_reg_1900);
assign xor_ln130_7_fu_741_p2 = (xor_ln130_6_fu_737_p2 ^ C_5_fu_731_p3);
assign xor_ln130_8_fu_816_p2 = (temp_2_reg_2009 ^ C_5_reg_1997);
assign xor_ln130_9_fu_820_p2 = (xor_ln130_8_fu_816_p2 ^ C_6_reg_2041);
assign xor_ln130_fu_516_p2 = (E_1_fu_98 ^ B_fu_106);
assign zext_ln100_1_fu_404_p1 = or_ln100_3_fu_396_p3;
assign zext_ln100_2_fu_480_p1 = add_ln100_fu_475_p2;
assign zext_ln100_3_fu_491_p1 = add_ln100_1_fu_486_p2;
assign zext_ln100_4_fu_594_p1 = add_ln100_2_fu_589_p2;
assign zext_ln100_5_fu_605_p1 = add_ln100_3_fu_600_p2;
assign zext_ln100_6_fu_649_p1 = add_ln100_4_fu_644_p2;
assign zext_ln100_7_fu_660_p1 = add_ln100_5_fu_655_p2;
assign zext_ln100_fu_380_p1 = lshr_ln100_3_fu_370_p4;
endmodule 