
module backprop_update_weights_32_33_1_Pipeline_VITIS_LOOP_166_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_we1,weights2_1_d1,weights2_1_q1,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_we1,weights2_0_d1,weights2_0_q1,norm_66,grp_fu_6246_p_din0,grp_fu_6246_p_din1,grp_fu_6246_p_dout0,grp_fu_6246_p_ce,grp_fu_6250_p_din0,grp_fu_6250_p_din1,grp_fu_6250_p_dout0,grp_fu_6250_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] weights2_1_address0;
output   weights2_1_ce0;
output   weights2_1_we0;
output  [63:0] weights2_1_d0;
input  [63:0] weights2_1_q0;
output  [10:0] weights2_1_address1;
output   weights2_1_ce1;
output   weights2_1_we1;
output  [63:0] weights2_1_d1;
input  [63:0] weights2_1_q1;
output  [10:0] weights2_0_address0;
output   weights2_0_ce0;
output   weights2_0_we0;
output  [63:0] weights2_0_d0;
input  [63:0] weights2_0_q0;
output  [10:0] weights2_0_address1;
output   weights2_0_ce1;
output   weights2_0_we1;
output  [63:0] weights2_0_d1;
input  [63:0] weights2_0_q1;
input  [63:0] norm_66;
output  [63:0] grp_fu_6246_p_din0;
output  [63:0] grp_fu_6246_p_din1;
input  [63:0] grp_fu_6246_p_dout0;
output   grp_fu_6246_p_ce;
output  [63:0] grp_fu_6250_p_din0;
output  [63:0] grp_fu_6250_p_din1;
input  [63:0] grp_fu_6250_p_dout0;
output   grp_fu_6250_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [0:0] icmp_ln166_reg_1858;
reg    ap_condition_exit_pp0_iter0_stage31;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_652;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] reg_656;
reg   [63:0] reg_660;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_665;
reg   [63:0] reg_670;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_675;
reg   [63:0] reg_680;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] reg_685;
reg   [63:0] reg_690;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_695;
reg   [63:0] reg_700;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_705;
reg   [63:0] reg_710;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] reg_715;
reg   [63:0] reg_720;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] reg_725;
reg   [63:0] reg_730;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire    ap_block_pp0_stage31_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_734;
reg   [63:0] reg_738;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_742;
reg   [63:0] reg_746;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_750;
reg   [63:0] reg_754;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_758;
reg   [63:0] reg_762;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_766;
reg   [63:0] reg_770;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_774;
reg   [63:0] reg_778;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_782;
reg   [63:0] reg_786;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_790;
wire   [0:0] icmp_ln166_fu_802_p2;
wire   [5:0] trunc_ln168_fu_814_p1;
reg   [5:0] trunc_ln168_reg_1862;
reg   [10:0] weights2_0_addr_reg_1896;
reg   [10:0] weights2_0_addr_reg_1896_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_reg_1901;
reg   [10:0] weights2_1_addr_reg_1901_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_1_reg_1906;
reg   [10:0] weights2_0_addr_1_reg_1906_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_1_reg_1912;
reg   [10:0] weights2_1_addr_1_reg_1912_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_2_reg_1918;
reg   [10:0] weights2_0_addr_2_reg_1918_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_2_reg_1923;
reg   [10:0] weights2_1_addr_2_reg_1923_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_3_reg_1928;
reg   [10:0] weights2_0_addr_3_reg_1928_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_3_reg_1928_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_3_reg_1934;
reg   [10:0] weights2_1_addr_3_reg_1934_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_3_reg_1934_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_fu_877_p1;
wire   [63:0] bitcast_ln168_2_fu_882_p1;
reg   [10:0] weights2_0_addr_4_reg_1950;
reg   [10:0] weights2_0_addr_4_reg_1950_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_4_reg_1950_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_4_reg_1956;
reg   [10:0] weights2_1_addr_4_reg_1956_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_4_reg_1956_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_5_reg_1962;
reg   [10:0] weights2_0_addr_5_reg_1962_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_5_reg_1962_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_5_reg_1968;
reg   [10:0] weights2_1_addr_5_reg_1968_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_5_reg_1968_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_4_fu_913_p1;
wire   [63:0] bitcast_ln168_6_fu_918_p1;
reg   [10:0] weights2_0_addr_6_reg_1984;
reg   [10:0] weights2_0_addr_6_reg_1984_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_6_reg_1984_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_6_reg_1990;
reg   [10:0] weights2_1_addr_6_reg_1990_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_6_reg_1990_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_7_reg_1996;
reg   [10:0] weights2_0_addr_7_reg_1996_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_7_reg_1996_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_7_reg_2002;
reg   [10:0] weights2_1_addr_7_reg_2002_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_7_reg_2002_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_8_fu_949_p1;
wire   [63:0] bitcast_ln168_10_fu_954_p1;
reg   [10:0] weights2_0_addr_8_reg_2018;
reg   [10:0] weights2_0_addr_8_reg_2018_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_8_reg_2018_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_8_reg_2024;
reg   [10:0] weights2_1_addr_8_reg_2024_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_8_reg_2024_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_9_reg_2030;
reg   [10:0] weights2_0_addr_9_reg_2030_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_9_reg_2030_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_9_reg_2036;
reg   [10:0] weights2_1_addr_9_reg_2036_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_9_reg_2036_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_12_fu_985_p1;
wire   [63:0] bitcast_ln168_14_fu_990_p1;
reg   [10:0] weights2_0_addr_10_reg_2052;
reg   [10:0] weights2_0_addr_10_reg_2052_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_10_reg_2052_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_10_reg_2058;
reg   [10:0] weights2_1_addr_10_reg_2058_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_10_reg_2058_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_11_reg_2064;
reg   [10:0] weights2_0_addr_11_reg_2064_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_11_reg_2064_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_11_reg_2070;
reg   [10:0] weights2_1_addr_11_reg_2070_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_11_reg_2070_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_16_fu_1021_p1;
wire   [63:0] bitcast_ln168_18_fu_1026_p1;
reg   [10:0] weights2_0_addr_12_reg_2086;
reg   [10:0] weights2_0_addr_12_reg_2086_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_12_reg_2086_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_12_reg_2092;
reg   [10:0] weights2_1_addr_12_reg_2092_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_12_reg_2092_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_13_reg_2098;
reg   [10:0] weights2_0_addr_13_reg_2098_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_13_reg_2098_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_13_reg_2104;
reg   [10:0] weights2_1_addr_13_reg_2104_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_13_reg_2104_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_20_fu_1057_p1;
wire   [63:0] bitcast_ln168_22_fu_1062_p1;
reg   [10:0] weights2_0_addr_14_reg_2120;
reg   [10:0] weights2_0_addr_14_reg_2120_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_14_reg_2120_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_14_reg_2126;
reg   [10:0] weights2_1_addr_14_reg_2126_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_14_reg_2126_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_15_reg_2132;
reg   [10:0] weights2_0_addr_15_reg_2132_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_15_reg_2132_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_15_reg_2138;
reg   [10:0] weights2_1_addr_15_reg_2138_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_15_reg_2138_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_24_fu_1093_p1;
wire   [63:0] bitcast_ln168_26_fu_1098_p1;
reg   [63:0] weights2_0_load_15_reg_2154;
reg   [63:0] weights2_1_load_15_reg_2159;
reg   [10:0] weights2_0_addr_16_reg_2164;
reg   [10:0] weights2_0_addr_16_reg_2164_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_16_reg_2164_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_16_reg_2170;
reg   [10:0] weights2_1_addr_16_reg_2170_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_16_reg_2170_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_17_reg_2176;
reg   [10:0] weights2_0_addr_17_reg_2176_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_17_reg_2176_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_17_reg_2182;
reg   [10:0] weights2_1_addr_17_reg_2182_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_17_reg_2182_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_28_fu_1129_p1;
wire   [63:0] bitcast_ln168_30_fu_1134_p1;
reg   [63:0] weights2_0_load_17_reg_2198;
reg   [63:0] weights2_1_load_17_reg_2203;
reg   [10:0] weights2_0_addr_18_reg_2208;
reg   [10:0] weights2_0_addr_18_reg_2208_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_18_reg_2208_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_18_reg_2214;
reg   [10:0] weights2_1_addr_18_reg_2214_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_18_reg_2214_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_19_reg_2220;
reg   [10:0] weights2_0_addr_19_reg_2220_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_19_reg_2220_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_19_reg_2226;
reg   [10:0] weights2_1_addr_19_reg_2226_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_19_reg_2226_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_32_fu_1165_p1;
wire   [63:0] bitcast_ln168_34_fu_1170_p1;
reg   [63:0] weights2_0_load_19_reg_2242;
reg   [63:0] weights2_1_load_19_reg_2247;
reg   [10:0] weights2_0_addr_20_reg_2252;
reg   [10:0] weights2_0_addr_20_reg_2252_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_20_reg_2252_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_20_reg_2258;
reg   [10:0] weights2_1_addr_20_reg_2258_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_20_reg_2258_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_21_reg_2264;
reg   [10:0] weights2_0_addr_21_reg_2264_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_21_reg_2264_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_21_reg_2270;
reg   [10:0] weights2_1_addr_21_reg_2270_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_21_reg_2270_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_36_fu_1201_p1;
wire   [63:0] bitcast_ln168_38_fu_1206_p1;
reg   [63:0] weights2_0_load_21_reg_2286;
reg   [63:0] weights2_1_load_21_reg_2291;
reg   [10:0] weights2_0_addr_22_reg_2296;
reg   [10:0] weights2_0_addr_22_reg_2296_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_22_reg_2296_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_22_reg_2302;
reg   [10:0] weights2_1_addr_22_reg_2302_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_22_reg_2302_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_23_reg_2308;
reg   [10:0] weights2_0_addr_23_reg_2308_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_23_reg_2308_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_23_reg_2314;
reg   [10:0] weights2_1_addr_23_reg_2314_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_23_reg_2314_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_40_fu_1237_p1;
wire   [63:0] bitcast_ln168_42_fu_1242_p1;
reg   [63:0] weights2_0_load_23_reg_2330;
reg   [63:0] weights2_1_load_23_reg_2335;
reg   [10:0] weights2_0_addr_24_reg_2340;
reg   [10:0] weights2_0_addr_24_reg_2340_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_24_reg_2340_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_24_reg_2346;
reg   [10:0] weights2_1_addr_24_reg_2346_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_24_reg_2346_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_25_reg_2352;
reg   [10:0] weights2_0_addr_25_reg_2352_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_25_reg_2352_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_25_reg_2358;
reg   [10:0] weights2_1_addr_25_reg_2358_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_25_reg_2358_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_44_fu_1273_p1;
wire   [63:0] bitcast_ln168_46_fu_1278_p1;
reg   [63:0] weights2_0_load_25_reg_2374;
reg   [63:0] weights2_1_load_25_reg_2379;
reg   [10:0] weights2_0_addr_26_reg_2384;
reg   [10:0] weights2_0_addr_26_reg_2384_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_26_reg_2384_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_26_reg_2390;
reg   [10:0] weights2_1_addr_26_reg_2390_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_26_reg_2390_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_27_reg_2396;
reg   [10:0] weights2_0_addr_27_reg_2396_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_27_reg_2396_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_27_reg_2402;
reg   [10:0] weights2_1_addr_27_reg_2402_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_27_reg_2402_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_48_fu_1309_p1;
wire   [63:0] bitcast_ln168_50_fu_1314_p1;
reg   [63:0] weights2_0_load_27_reg_2418;
reg   [63:0] weights2_1_load_27_reg_2423;
reg   [10:0] weights2_0_addr_28_reg_2428;
reg   [10:0] weights2_0_addr_28_reg_2428_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_28_reg_2428_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_28_reg_2434;
reg   [10:0] weights2_1_addr_28_reg_2434_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_28_reg_2434_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_29_reg_2440;
reg   [10:0] weights2_0_addr_29_reg_2440_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_29_reg_2440_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_29_reg_2445;
reg   [10:0] weights2_1_addr_29_reg_2445_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_29_reg_2445_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_52_fu_1345_p1;
wire   [63:0] bitcast_ln168_54_fu_1350_p1;
reg   [63:0] weights2_0_load_29_reg_2460;
reg   [63:0] weights2_1_load_29_reg_2465;
reg   [10:0] weights2_0_addr_30_reg_2470;
reg   [10:0] weights2_0_addr_30_reg_2470_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_30_reg_2470_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_30_reg_2476;
reg   [10:0] weights2_1_addr_30_reg_2476_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_30_reg_2476_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_31_reg_2482;
reg   [10:0] weights2_0_addr_31_reg_2482_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_31_reg_2482_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_31_reg_2487;
reg   [10:0] weights2_1_addr_31_reg_2487_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_31_reg_2487_pp0_iter2_reg;
wire   [63:0] bitcast_ln168_56_fu_1381_p1;
wire   [63:0] bitcast_ln168_58_fu_1386_p1;
reg   [63:0] weights2_0_load_31_reg_2502;
reg   [63:0] weights2_1_load_31_reg_2507;
wire   [63:0] bitcast_ln168_60_fu_1391_p1;
wire   [63:0] bitcast_ln168_62_fu_1395_p1;
wire   [63:0] bitcast_ln168_64_fu_1399_p1;
wire   [63:0] bitcast_ln168_66_fu_1404_p1;
wire   [63:0] bitcast_ln168_68_fu_1409_p1;
wire   [63:0] bitcast_ln168_70_fu_1413_p1;
wire   [63:0] bitcast_ln168_72_fu_1417_p1;
wire   [63:0] bitcast_ln168_74_fu_1422_p1;
wire   [63:0] bitcast_ln168_76_fu_1427_p1;
wire   [63:0] bitcast_ln168_78_fu_1431_p1;
wire   [63:0] bitcast_ln168_80_fu_1435_p1;
wire   [63:0] bitcast_ln168_82_fu_1440_p1;
wire   [63:0] bitcast_ln168_84_fu_1445_p1;
wire   [63:0] bitcast_ln168_86_fu_1449_p1;
wire   [63:0] bitcast_ln168_88_fu_1453_p1;
wire   [63:0] bitcast_ln168_90_fu_1458_p1;
wire   [63:0] bitcast_ln168_92_fu_1463_p1;
wire   [63:0] bitcast_ln168_94_fu_1467_p1;
wire   [63:0] bitcast_ln168_96_fu_1471_p1;
wire   [63:0] bitcast_ln168_98_fu_1476_p1;
wire   [63:0] bitcast_ln168_100_fu_1481_p1;
wire   [63:0] bitcast_ln168_102_fu_1485_p1;
wire   [63:0] bitcast_ln168_104_fu_1489_p1;
wire   [63:0] bitcast_ln168_106_fu_1494_p1;
wire   [63:0] bitcast_ln168_108_fu_1499_p1;
wire   [63:0] bitcast_ln168_110_fu_1503_p1;
wire   [63:0] bitcast_ln168_112_fu_1507_p1;
wire   [63:0] bitcast_ln168_114_fu_1512_p1;
wire   [63:0] bitcast_ln168_116_fu_1517_p1;
wire   [63:0] bitcast_ln168_118_fu_1521_p1;
wire   [63:0] bitcast_ln168_120_fu_1525_p1;
wire   [63:0] bitcast_ln168_122_fu_1530_p1;
wire   [63:0] bitcast_ln168_124_fu_1535_p1;
wire   [63:0] bitcast_ln168_126_fu_1539_p1;
reg   [63:0] div131_21_reg_2682;
reg   [63:0] div131_22_reg_2687;
reg   [63:0] div131_23_reg_2692;
reg   [63:0] div131_24_reg_2697;
reg   [63:0] div131_25_reg_2702;
reg   [63:0] div131_26_reg_2707;
reg   [63:0] div131_27_reg_2712;
reg   [63:0] div131_28_reg_2717;
reg   [63:0] div131_29_reg_2722;
reg   [63:0] div131_30_reg_2727;
reg   [63:0] div131_31_reg_2732;
reg   [63:0] div131_32_reg_2737;
reg   [63:0] div131_33_reg_2742;
reg   [63:0] div131_34_reg_2747;
reg   [63:0] div131_35_reg_2752;
reg   [63:0] div131_36_reg_2757;
reg   [63:0] div131_37_reg_2762;
reg   [63:0] div131_38_reg_2767;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln168_fu_826_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln168_1_fu_840_p1;
wire   [63:0] zext_ln168_2_fu_858_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln168_3_fu_871_p1;
wire   [63:0] zext_ln168_4_fu_894_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln168_5_fu_907_p1;
wire   [63:0] zext_ln168_6_fu_930_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln168_7_fu_943_p1;
wire   [63:0] zext_ln168_8_fu_966_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln168_9_fu_979_p1;
wire   [63:0] zext_ln168_10_fu_1002_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln168_11_fu_1015_p1;
wire   [63:0] zext_ln168_12_fu_1038_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln168_13_fu_1051_p1;
wire   [63:0] zext_ln168_14_fu_1074_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln168_15_fu_1087_p1;
wire   [63:0] zext_ln168_16_fu_1110_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln168_17_fu_1123_p1;
wire   [63:0] zext_ln168_18_fu_1146_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln168_19_fu_1159_p1;
wire   [63:0] zext_ln168_20_fu_1182_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln168_21_fu_1195_p1;
wire   [63:0] zext_ln168_22_fu_1218_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln168_23_fu_1231_p1;
wire   [63:0] zext_ln168_24_fu_1254_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln168_25_fu_1267_p1;
wire   [63:0] zext_ln168_26_fu_1290_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln168_27_fu_1303_p1;
wire   [63:0] zext_ln168_28_fu_1326_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln168_29_fu_1339_p1;
wire   [63:0] zext_ln168_30_fu_1362_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln168_31_fu_1375_p1;
reg   [6:0] i_fu_104;
wire   [6:0] add_ln166_fu_808_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    weights2_0_ce1_local;
reg   [10:0] weights2_0_address1_local;
reg    weights2_0_ce0_local;
reg   [10:0] weights2_0_address0_local;
reg    weights2_0_we1_local;
reg   [63:0] weights2_0_d1_local;
wire   [63:0] bitcast_ln168_1_fu_1543_p1;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln168_5_fu_1553_p1;
wire    ap_block_pp0_stage30;
wire   [63:0] bitcast_ln168_9_fu_1563_p1;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln168_13_fu_1573_p1;
wire    ap_block_pp0_stage16;
reg    weights2_0_we0_local;
reg   [63:0] weights2_0_d0_local;
wire   [63:0] bitcast_ln168_17_fu_1583_p1;
wire   [63:0] bitcast_ln168_21_fu_1593_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] bitcast_ln168_25_fu_1603_p1;
wire   [63:0] bitcast_ln168_29_fu_1613_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] bitcast_ln168_33_fu_1623_p1;
wire   [63:0] bitcast_ln168_37_fu_1633_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln168_41_fu_1643_p1;
wire   [63:0] bitcast_ln168_45_fu_1653_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] bitcast_ln168_49_fu_1661_p1;
wire   [63:0] bitcast_ln168_53_fu_1669_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln168_57_fu_1677_p1;
wire   [63:0] bitcast_ln168_61_fu_1685_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] bitcast_ln168_65_fu_1693_p1;
wire   [63:0] bitcast_ln168_69_fu_1701_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln168_73_fu_1709_p1;
wire   [63:0] bitcast_ln168_77_fu_1717_p1;
wire    ap_block_pp0_stage24;
wire   [63:0] bitcast_ln168_81_fu_1725_p1;
wire   [63:0] bitcast_ln168_85_fu_1735_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln168_89_fu_1745_p1;
wire   [63:0] bitcast_ln168_93_fu_1755_p1;
wire    ap_block_pp0_stage26;
wire   [63:0] bitcast_ln168_97_fu_1765_p1;
wire   [63:0] bitcast_ln168_101_fu_1775_p1;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln168_105_fu_1785_p1;
wire   [63:0] bitcast_ln168_109_fu_1795_p1;
wire    ap_block_pp0_stage28;
wire   [63:0] bitcast_ln168_113_fu_1805_p1;
wire   [63:0] bitcast_ln168_117_fu_1815_p1;
wire   [63:0] bitcast_ln168_121_fu_1825_p1;
wire   [63:0] bitcast_ln168_125_fu_1835_p1;
reg    weights2_1_ce1_local;
reg   [10:0] weights2_1_address1_local;
reg    weights2_1_ce0_local;
reg   [10:0] weights2_1_address0_local;
reg    weights2_1_we1_local;
reg   [63:0] weights2_1_d1_local;
wire   [63:0] bitcast_ln168_3_fu_1548_p1;
wire   [63:0] bitcast_ln168_7_fu_1558_p1;
wire   [63:0] bitcast_ln168_11_fu_1568_p1;
wire   [63:0] bitcast_ln168_15_fu_1578_p1;
reg    weights2_1_we0_local;
reg   [63:0] weights2_1_d0_local;
wire   [63:0] bitcast_ln168_19_fu_1588_p1;
wire   [63:0] bitcast_ln168_23_fu_1598_p1;
wire   [63:0] bitcast_ln168_27_fu_1608_p1;
wire   [63:0] bitcast_ln168_31_fu_1618_p1;
wire   [63:0] bitcast_ln168_35_fu_1628_p1;
wire   [63:0] bitcast_ln168_39_fu_1638_p1;
wire   [63:0] bitcast_ln168_43_fu_1648_p1;
wire   [63:0] bitcast_ln168_47_fu_1657_p1;
wire   [63:0] bitcast_ln168_51_fu_1665_p1;
wire   [63:0] bitcast_ln168_55_fu_1673_p1;
wire   [63:0] bitcast_ln168_59_fu_1681_p1;
wire   [63:0] bitcast_ln168_63_fu_1689_p1;
wire   [63:0] bitcast_ln168_67_fu_1697_p1;
wire   [63:0] bitcast_ln168_71_fu_1705_p1;
wire   [63:0] bitcast_ln168_75_fu_1713_p1;
wire   [63:0] bitcast_ln168_79_fu_1721_p1;
wire   [63:0] bitcast_ln168_83_fu_1730_p1;
wire   [63:0] bitcast_ln168_87_fu_1740_p1;
wire   [63:0] bitcast_ln168_91_fu_1750_p1;
wire   [63:0] bitcast_ln168_95_fu_1760_p1;
wire   [63:0] bitcast_ln168_99_fu_1770_p1;
wire   [63:0] bitcast_ln168_103_fu_1780_p1;
wire   [63:0] bitcast_ln168_107_fu_1790_p1;
wire   [63:0] bitcast_ln168_111_fu_1800_p1;
wire   [63:0] bitcast_ln168_115_fu_1810_p1;
wire   [63:0] bitcast_ln168_119_fu_1820_p1;
wire   [63:0] bitcast_ln168_123_fu_1830_p1;
wire   [63:0] bitcast_ln168_127_fu_1840_p1;
reg   [63:0] grp_fu_644_p0;
reg   [63:0] grp_fu_648_p0;
wire   [10:0] shl_ln2_fu_818_p3;
wire   [10:0] or_ln3_fu_832_p3;
wire   [10:0] or_ln168_1_fu_851_p3;
wire   [10:0] or_ln168_2_fu_864_p3;
wire   [10:0] or_ln168_3_fu_887_p3;
wire   [10:0] or_ln168_4_fu_900_p3;
wire   [10:0] or_ln168_5_fu_923_p3;
wire   [10:0] or_ln168_6_fu_936_p3;
wire   [10:0] or_ln168_7_fu_959_p3;
wire   [10:0] or_ln168_8_fu_972_p3;
wire   [10:0] or_ln168_9_fu_995_p3;
wire   [10:0] or_ln168_s_fu_1008_p3;
wire   [10:0] or_ln168_10_fu_1031_p3;
wire   [10:0] or_ln168_11_fu_1044_p3;
wire   [10:0] or_ln168_12_fu_1067_p3;
wire   [10:0] or_ln168_13_fu_1080_p3;
wire   [10:0] or_ln168_14_fu_1103_p3;
wire   [10:0] or_ln168_15_fu_1116_p3;
wire   [10:0] or_ln168_16_fu_1139_p3;
wire   [10:0] or_ln168_17_fu_1152_p3;
wire   [10:0] or_ln168_18_fu_1175_p3;
wire   [10:0] or_ln168_19_fu_1188_p3;
wire   [10:0] or_ln168_20_fu_1211_p3;
wire   [10:0] or_ln168_21_fu_1224_p3;
wire   [10:0] or_ln168_22_fu_1247_p3;
wire   [10:0] or_ln168_23_fu_1260_p3;
wire   [10:0] or_ln168_24_fu_1283_p3;
wire   [10:0] or_ln168_25_fu_1296_p3;
wire   [10:0] or_ln168_26_fu_1319_p3;
wire   [10:0] or_ln168_27_fu_1332_p3;
wire   [10:0] or_ln168_28_fu_1355_p3;
wire   [10:0] or_ln168_29_fu_1368_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
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
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_104 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage31),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage31)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln166_fu_802_p2 == 1'd0))) begin
            i_fu_104 <= add_ln166_fu_808_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_104 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_660 <= weights2_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_660 <= weights2_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_665 <= weights2_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_665 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_670 <= weights2_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_670 <= weights2_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_675 <= weights2_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_675 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_680 <= weights2_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_680 <= weights2_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_685 <= weights2_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_685 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            reg_690 <= weights2_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_690 <= weights2_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            reg_695 <= weights2_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_695 <= weights2_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            reg_700 <= weights2_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_700 <= weights2_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            reg_705 <= weights2_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_705 <= weights2_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            reg_710 <= weights2_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_710 <= weights2_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            reg_715 <= weights2_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            reg_715 <= weights2_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            reg_720 <= weights2_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_720 <= weights2_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            reg_725 <= weights2_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            reg_725 <= weights2_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        div131_21_reg_2682 <= grp_fu_6246_p_dout0;
        div131_22_reg_2687 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        div131_23_reg_2692 <= grp_fu_6246_p_dout0;
        div131_24_reg_2697 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        div131_25_reg_2702 <= grp_fu_6246_p_dout0;
        div131_26_reg_2707 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        div131_27_reg_2712 <= grp_fu_6246_p_dout0;
        div131_28_reg_2717 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        div131_29_reg_2722 <= grp_fu_6246_p_dout0;
        div131_30_reg_2727 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        div131_31_reg_2732 <= grp_fu_6246_p_dout0;
        div131_32_reg_2737 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        div131_33_reg_2742 <= grp_fu_6246_p_dout0;
        div131_34_reg_2747 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        div131_35_reg_2752 <= grp_fu_6246_p_dout0;
        div131_36_reg_2757 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        div131_37_reg_2762 <= grp_fu_6246_p_dout0;
        div131_38_reg_2767 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln166_reg_1858 <= icmp_ln166_fu_802_p2;
        trunc_ln168_reg_1862 <= trunc_ln168_fu_814_p1;
        weights2_0_addr_1_reg_1906[10 : 5] <= zext_ln168_1_fu_840_p1[10 : 5];
        weights2_0_addr_1_reg_1906_pp0_iter1_reg[10 : 5] <= weights2_0_addr_1_reg_1906[10 : 5];
        weights2_0_addr_reg_1896[10 : 5] <= zext_ln168_fu_826_p1[10 : 5];
        weights2_0_addr_reg_1896_pp0_iter1_reg[10 : 5] <= weights2_0_addr_reg_1896[10 : 5];
        weights2_1_addr_1_reg_1912[10 : 5] <= zext_ln168_1_fu_840_p1[10 : 5];
        weights2_1_addr_1_reg_1912_pp0_iter1_reg[10 : 5] <= weights2_1_addr_1_reg_1912[10 : 5];
        weights2_1_addr_reg_1901[10 : 5] <= zext_ln168_fu_826_p1[10 : 5];
        weights2_1_addr_reg_1901_pp0_iter1_reg[10 : 5] <= weights2_1_addr_reg_1901[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_652 <= weights2_0_q1;
        reg_656 <= weights2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_730 <= grp_fu_6246_p_dout0;
        reg_734 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_738 <= grp_fu_6246_p_dout0;
        reg_742 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_746 <= grp_fu_6246_p_dout0;
        reg_750 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_754 <= grp_fu_6246_p_dout0;
        reg_758 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_762 <= grp_fu_6246_p_dout0;
        reg_766 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_770 <= grp_fu_6246_p_dout0;
        reg_774 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_778 <= grp_fu_6246_p_dout0;
        reg_782 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_786 <= grp_fu_6246_p_dout0;
        reg_790 <= grp_fu_6250_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_0_addr_10_reg_2052[10 : 5] <= zext_ln168_10_fu_1002_p1[10 : 5];
        weights2_0_addr_10_reg_2052_pp0_iter1_reg[10 : 5] <= weights2_0_addr_10_reg_2052[10 : 5];
        weights2_0_addr_10_reg_2052_pp0_iter2_reg[10 : 5] <= weights2_0_addr_10_reg_2052_pp0_iter1_reg[10 : 5];
        weights2_0_addr_11_reg_2064[10 : 5] <= zext_ln168_11_fu_1015_p1[10 : 5];
        weights2_0_addr_11_reg_2064_pp0_iter1_reg[10 : 5] <= weights2_0_addr_11_reg_2064[10 : 5];
        weights2_0_addr_11_reg_2064_pp0_iter2_reg[10 : 5] <= weights2_0_addr_11_reg_2064_pp0_iter1_reg[10 : 5];
        weights2_1_addr_10_reg_2058[10 : 5] <= zext_ln168_10_fu_1002_p1[10 : 5];
        weights2_1_addr_10_reg_2058_pp0_iter1_reg[10 : 5] <= weights2_1_addr_10_reg_2058[10 : 5];
        weights2_1_addr_10_reg_2058_pp0_iter2_reg[10 : 5] <= weights2_1_addr_10_reg_2058_pp0_iter1_reg[10 : 5];
        weights2_1_addr_11_reg_2070[10 : 5] <= zext_ln168_11_fu_1015_p1[10 : 5];
        weights2_1_addr_11_reg_2070_pp0_iter1_reg[10 : 5] <= weights2_1_addr_11_reg_2070[10 : 5];
        weights2_1_addr_11_reg_2070_pp0_iter2_reg[10 : 5] <= weights2_1_addr_11_reg_2070_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_0_addr_12_reg_2086[10 : 5] <= zext_ln168_12_fu_1038_p1[10 : 5];
        weights2_0_addr_12_reg_2086_pp0_iter1_reg[10 : 5] <= weights2_0_addr_12_reg_2086[10 : 5];
        weights2_0_addr_12_reg_2086_pp0_iter2_reg[10 : 5] <= weights2_0_addr_12_reg_2086_pp0_iter1_reg[10 : 5];
        weights2_0_addr_13_reg_2098[10 : 5] <= zext_ln168_13_fu_1051_p1[10 : 5];
        weights2_0_addr_13_reg_2098_pp0_iter1_reg[10 : 5] <= weights2_0_addr_13_reg_2098[10 : 5];
        weights2_0_addr_13_reg_2098_pp0_iter2_reg[10 : 5] <= weights2_0_addr_13_reg_2098_pp0_iter1_reg[10 : 5];
        weights2_1_addr_12_reg_2092[10 : 5] <= zext_ln168_12_fu_1038_p1[10 : 5];
        weights2_1_addr_12_reg_2092_pp0_iter1_reg[10 : 5] <= weights2_1_addr_12_reg_2092[10 : 5];
        weights2_1_addr_12_reg_2092_pp0_iter2_reg[10 : 5] <= weights2_1_addr_12_reg_2092_pp0_iter1_reg[10 : 5];
        weights2_1_addr_13_reg_2104[10 : 5] <= zext_ln168_13_fu_1051_p1[10 : 5];
        weights2_1_addr_13_reg_2104_pp0_iter1_reg[10 : 5] <= weights2_1_addr_13_reg_2104[10 : 5];
        weights2_1_addr_13_reg_2104_pp0_iter2_reg[10 : 5] <= weights2_1_addr_13_reg_2104_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_0_addr_14_reg_2120[10 : 5] <= zext_ln168_14_fu_1074_p1[10 : 5];
        weights2_0_addr_14_reg_2120_pp0_iter1_reg[10 : 5] <= weights2_0_addr_14_reg_2120[10 : 5];
        weights2_0_addr_14_reg_2120_pp0_iter2_reg[10 : 5] <= weights2_0_addr_14_reg_2120_pp0_iter1_reg[10 : 5];
        weights2_0_addr_15_reg_2132[10 : 5] <= zext_ln168_15_fu_1087_p1[10 : 5];
        weights2_0_addr_15_reg_2132_pp0_iter1_reg[10 : 5] <= weights2_0_addr_15_reg_2132[10 : 5];
        weights2_0_addr_15_reg_2132_pp0_iter2_reg[10 : 5] <= weights2_0_addr_15_reg_2132_pp0_iter1_reg[10 : 5];
        weights2_1_addr_14_reg_2126[10 : 5] <= zext_ln168_14_fu_1074_p1[10 : 5];
        weights2_1_addr_14_reg_2126_pp0_iter1_reg[10 : 5] <= weights2_1_addr_14_reg_2126[10 : 5];
        weights2_1_addr_14_reg_2126_pp0_iter2_reg[10 : 5] <= weights2_1_addr_14_reg_2126_pp0_iter1_reg[10 : 5];
        weights2_1_addr_15_reg_2138[10 : 5] <= zext_ln168_15_fu_1087_p1[10 : 5];
        weights2_1_addr_15_reg_2138_pp0_iter1_reg[10 : 5] <= weights2_1_addr_15_reg_2138[10 : 5];
        weights2_1_addr_15_reg_2138_pp0_iter2_reg[10 : 5] <= weights2_1_addr_15_reg_2138_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_0_addr_16_reg_2164[10 : 5] <= zext_ln168_16_fu_1110_p1[10 : 5];
        weights2_0_addr_16_reg_2164_pp0_iter1_reg[10 : 5] <= weights2_0_addr_16_reg_2164[10 : 5];
        weights2_0_addr_16_reg_2164_pp0_iter2_reg[10 : 5] <= weights2_0_addr_16_reg_2164_pp0_iter1_reg[10 : 5];
        weights2_0_addr_17_reg_2176[10 : 5] <= zext_ln168_17_fu_1123_p1[10 : 5];
        weights2_0_addr_17_reg_2176_pp0_iter1_reg[10 : 5] <= weights2_0_addr_17_reg_2176[10 : 5];
        weights2_0_addr_17_reg_2176_pp0_iter2_reg[10 : 5] <= weights2_0_addr_17_reg_2176_pp0_iter1_reg[10 : 5];
        weights2_1_addr_16_reg_2170[10 : 5] <= zext_ln168_16_fu_1110_p1[10 : 5];
        weights2_1_addr_16_reg_2170_pp0_iter1_reg[10 : 5] <= weights2_1_addr_16_reg_2170[10 : 5];
        weights2_1_addr_16_reg_2170_pp0_iter2_reg[10 : 5] <= weights2_1_addr_16_reg_2170_pp0_iter1_reg[10 : 5];
        weights2_1_addr_17_reg_2182[10 : 5] <= zext_ln168_17_fu_1123_p1[10 : 5];
        weights2_1_addr_17_reg_2182_pp0_iter1_reg[10 : 5] <= weights2_1_addr_17_reg_2182[10 : 5];
        weights2_1_addr_17_reg_2182_pp0_iter2_reg[10 : 5] <= weights2_1_addr_17_reg_2182_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_0_addr_18_reg_2208[10 : 5] <= zext_ln168_18_fu_1146_p1[10 : 5];
        weights2_0_addr_18_reg_2208_pp0_iter1_reg[10 : 5] <= weights2_0_addr_18_reg_2208[10 : 5];
        weights2_0_addr_18_reg_2208_pp0_iter2_reg[10 : 5] <= weights2_0_addr_18_reg_2208_pp0_iter1_reg[10 : 5];
        weights2_0_addr_19_reg_2220[10 : 5] <= zext_ln168_19_fu_1159_p1[10 : 5];
        weights2_0_addr_19_reg_2220_pp0_iter1_reg[10 : 5] <= weights2_0_addr_19_reg_2220[10 : 5];
        weights2_0_addr_19_reg_2220_pp0_iter2_reg[10 : 5] <= weights2_0_addr_19_reg_2220_pp0_iter1_reg[10 : 5];
        weights2_1_addr_18_reg_2214[10 : 5] <= zext_ln168_18_fu_1146_p1[10 : 5];
        weights2_1_addr_18_reg_2214_pp0_iter1_reg[10 : 5] <= weights2_1_addr_18_reg_2214[10 : 5];
        weights2_1_addr_18_reg_2214_pp0_iter2_reg[10 : 5] <= weights2_1_addr_18_reg_2214_pp0_iter1_reg[10 : 5];
        weights2_1_addr_19_reg_2226[10 : 5] <= zext_ln168_19_fu_1159_p1[10 : 5];
        weights2_1_addr_19_reg_2226_pp0_iter1_reg[10 : 5] <= weights2_1_addr_19_reg_2226[10 : 5];
        weights2_1_addr_19_reg_2226_pp0_iter2_reg[10 : 5] <= weights2_1_addr_19_reg_2226_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_0_addr_20_reg_2252[10 : 5] <= zext_ln168_20_fu_1182_p1[10 : 5];
        weights2_0_addr_20_reg_2252_pp0_iter1_reg[10 : 5] <= weights2_0_addr_20_reg_2252[10 : 5];
        weights2_0_addr_20_reg_2252_pp0_iter2_reg[10 : 5] <= weights2_0_addr_20_reg_2252_pp0_iter1_reg[10 : 5];
        weights2_0_addr_21_reg_2264[10 : 5] <= zext_ln168_21_fu_1195_p1[10 : 5];
        weights2_0_addr_21_reg_2264_pp0_iter1_reg[10 : 5] <= weights2_0_addr_21_reg_2264[10 : 5];
        weights2_0_addr_21_reg_2264_pp0_iter2_reg[10 : 5] <= weights2_0_addr_21_reg_2264_pp0_iter1_reg[10 : 5];
        weights2_1_addr_20_reg_2258[10 : 5] <= zext_ln168_20_fu_1182_p1[10 : 5];
        weights2_1_addr_20_reg_2258_pp0_iter1_reg[10 : 5] <= weights2_1_addr_20_reg_2258[10 : 5];
        weights2_1_addr_20_reg_2258_pp0_iter2_reg[10 : 5] <= weights2_1_addr_20_reg_2258_pp0_iter1_reg[10 : 5];
        weights2_1_addr_21_reg_2270[10 : 5] <= zext_ln168_21_fu_1195_p1[10 : 5];
        weights2_1_addr_21_reg_2270_pp0_iter1_reg[10 : 5] <= weights2_1_addr_21_reg_2270[10 : 5];
        weights2_1_addr_21_reg_2270_pp0_iter2_reg[10 : 5] <= weights2_1_addr_21_reg_2270_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_0_addr_22_reg_2296[10 : 5] <= zext_ln168_22_fu_1218_p1[10 : 5];
        weights2_0_addr_22_reg_2296_pp0_iter1_reg[10 : 5] <= weights2_0_addr_22_reg_2296[10 : 5];
        weights2_0_addr_22_reg_2296_pp0_iter2_reg[10 : 5] <= weights2_0_addr_22_reg_2296_pp0_iter1_reg[10 : 5];
        weights2_0_addr_23_reg_2308[10 : 5] <= zext_ln168_23_fu_1231_p1[10 : 5];
        weights2_0_addr_23_reg_2308_pp0_iter1_reg[10 : 5] <= weights2_0_addr_23_reg_2308[10 : 5];
        weights2_0_addr_23_reg_2308_pp0_iter2_reg[10 : 5] <= weights2_0_addr_23_reg_2308_pp0_iter1_reg[10 : 5];
        weights2_1_addr_22_reg_2302[10 : 5] <= zext_ln168_22_fu_1218_p1[10 : 5];
        weights2_1_addr_22_reg_2302_pp0_iter1_reg[10 : 5] <= weights2_1_addr_22_reg_2302[10 : 5];
        weights2_1_addr_22_reg_2302_pp0_iter2_reg[10 : 5] <= weights2_1_addr_22_reg_2302_pp0_iter1_reg[10 : 5];
        weights2_1_addr_23_reg_2314[10 : 5] <= zext_ln168_23_fu_1231_p1[10 : 5];
        weights2_1_addr_23_reg_2314_pp0_iter1_reg[10 : 5] <= weights2_1_addr_23_reg_2314[10 : 5];
        weights2_1_addr_23_reg_2314_pp0_iter2_reg[10 : 5] <= weights2_1_addr_23_reg_2314_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_0_addr_24_reg_2340[10 : 5] <= zext_ln168_24_fu_1254_p1[10 : 5];
        weights2_0_addr_24_reg_2340_pp0_iter1_reg[10 : 5] <= weights2_0_addr_24_reg_2340[10 : 5];
        weights2_0_addr_24_reg_2340_pp0_iter2_reg[10 : 5] <= weights2_0_addr_24_reg_2340_pp0_iter1_reg[10 : 5];
        weights2_0_addr_25_reg_2352[10 : 5] <= zext_ln168_25_fu_1267_p1[10 : 5];
        weights2_0_addr_25_reg_2352_pp0_iter1_reg[10 : 5] <= weights2_0_addr_25_reg_2352[10 : 5];
        weights2_0_addr_25_reg_2352_pp0_iter2_reg[10 : 5] <= weights2_0_addr_25_reg_2352_pp0_iter1_reg[10 : 5];
        weights2_1_addr_24_reg_2346[10 : 5] <= zext_ln168_24_fu_1254_p1[10 : 5];
        weights2_1_addr_24_reg_2346_pp0_iter1_reg[10 : 5] <= weights2_1_addr_24_reg_2346[10 : 5];
        weights2_1_addr_24_reg_2346_pp0_iter2_reg[10 : 5] <= weights2_1_addr_24_reg_2346_pp0_iter1_reg[10 : 5];
        weights2_1_addr_25_reg_2358[10 : 5] <= zext_ln168_25_fu_1267_p1[10 : 5];
        weights2_1_addr_25_reg_2358_pp0_iter1_reg[10 : 5] <= weights2_1_addr_25_reg_2358[10 : 5];
        weights2_1_addr_25_reg_2358_pp0_iter2_reg[10 : 5] <= weights2_1_addr_25_reg_2358_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_0_addr_26_reg_2384[10 : 5] <= zext_ln168_26_fu_1290_p1[10 : 5];
        weights2_0_addr_26_reg_2384_pp0_iter1_reg[10 : 5] <= weights2_0_addr_26_reg_2384[10 : 5];
        weights2_0_addr_26_reg_2384_pp0_iter2_reg[10 : 5] <= weights2_0_addr_26_reg_2384_pp0_iter1_reg[10 : 5];
        weights2_0_addr_27_reg_2396[10 : 5] <= zext_ln168_27_fu_1303_p1[10 : 5];
        weights2_0_addr_27_reg_2396_pp0_iter1_reg[10 : 5] <= weights2_0_addr_27_reg_2396[10 : 5];
        weights2_0_addr_27_reg_2396_pp0_iter2_reg[10 : 5] <= weights2_0_addr_27_reg_2396_pp0_iter1_reg[10 : 5];
        weights2_1_addr_26_reg_2390[10 : 5] <= zext_ln168_26_fu_1290_p1[10 : 5];
        weights2_1_addr_26_reg_2390_pp0_iter1_reg[10 : 5] <= weights2_1_addr_26_reg_2390[10 : 5];
        weights2_1_addr_26_reg_2390_pp0_iter2_reg[10 : 5] <= weights2_1_addr_26_reg_2390_pp0_iter1_reg[10 : 5];
        weights2_1_addr_27_reg_2402[10 : 5] <= zext_ln168_27_fu_1303_p1[10 : 5];
        weights2_1_addr_27_reg_2402_pp0_iter1_reg[10 : 5] <= weights2_1_addr_27_reg_2402[10 : 5];
        weights2_1_addr_27_reg_2402_pp0_iter2_reg[10 : 5] <= weights2_1_addr_27_reg_2402_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_0_addr_28_reg_2428[10 : 5] <= zext_ln168_28_fu_1326_p1[10 : 5];
        weights2_0_addr_28_reg_2428_pp0_iter1_reg[10 : 5] <= weights2_0_addr_28_reg_2428[10 : 5];
        weights2_0_addr_28_reg_2428_pp0_iter2_reg[10 : 5] <= weights2_0_addr_28_reg_2428_pp0_iter1_reg[10 : 5];
        weights2_0_addr_29_reg_2440[10 : 5] <= zext_ln168_29_fu_1339_p1[10 : 5];
        weights2_0_addr_29_reg_2440_pp0_iter1_reg[10 : 5] <= weights2_0_addr_29_reg_2440[10 : 5];
        weights2_0_addr_29_reg_2440_pp0_iter2_reg[10 : 5] <= weights2_0_addr_29_reg_2440_pp0_iter1_reg[10 : 5];
        weights2_1_addr_28_reg_2434[10 : 5] <= zext_ln168_28_fu_1326_p1[10 : 5];
        weights2_1_addr_28_reg_2434_pp0_iter1_reg[10 : 5] <= weights2_1_addr_28_reg_2434[10 : 5];
        weights2_1_addr_28_reg_2434_pp0_iter2_reg[10 : 5] <= weights2_1_addr_28_reg_2434_pp0_iter1_reg[10 : 5];
        weights2_1_addr_29_reg_2445[10 : 5] <= zext_ln168_29_fu_1339_p1[10 : 5];
        weights2_1_addr_29_reg_2445_pp0_iter1_reg[10 : 5] <= weights2_1_addr_29_reg_2445[10 : 5];
        weights2_1_addr_29_reg_2445_pp0_iter2_reg[10 : 5] <= weights2_1_addr_29_reg_2445_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_addr_2_reg_1918[10 : 5] <= zext_ln168_2_fu_858_p1[10 : 5];
        weights2_0_addr_2_reg_1918_pp0_iter1_reg[10 : 5] <= weights2_0_addr_2_reg_1918[10 : 5];
        weights2_0_addr_3_reg_1928[10 : 5] <= zext_ln168_3_fu_871_p1[10 : 5];
        weights2_0_addr_3_reg_1928_pp0_iter1_reg[10 : 5] <= weights2_0_addr_3_reg_1928[10 : 5];
        weights2_0_addr_3_reg_1928_pp0_iter2_reg[10 : 5] <= weights2_0_addr_3_reg_1928_pp0_iter1_reg[10 : 5];
        weights2_1_addr_2_reg_1923[10 : 5] <= zext_ln168_2_fu_858_p1[10 : 5];
        weights2_1_addr_2_reg_1923_pp0_iter1_reg[10 : 5] <= weights2_1_addr_2_reg_1923[10 : 5];
        weights2_1_addr_3_reg_1934[10 : 5] <= zext_ln168_3_fu_871_p1[10 : 5];
        weights2_1_addr_3_reg_1934_pp0_iter1_reg[10 : 5] <= weights2_1_addr_3_reg_1934[10 : 5];
        weights2_1_addr_3_reg_1934_pp0_iter2_reg[10 : 5] <= weights2_1_addr_3_reg_1934_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_0_addr_30_reg_2470[10 : 5] <= zext_ln168_30_fu_1362_p1[10 : 5];
        weights2_0_addr_30_reg_2470_pp0_iter1_reg[10 : 5] <= weights2_0_addr_30_reg_2470[10 : 5];
        weights2_0_addr_30_reg_2470_pp0_iter2_reg[10 : 5] <= weights2_0_addr_30_reg_2470_pp0_iter1_reg[10 : 5];
        weights2_0_addr_31_reg_2482[10 : 5] <= zext_ln168_31_fu_1375_p1[10 : 5];
        weights2_0_addr_31_reg_2482_pp0_iter1_reg[10 : 5] <= weights2_0_addr_31_reg_2482[10 : 5];
        weights2_0_addr_31_reg_2482_pp0_iter2_reg[10 : 5] <= weights2_0_addr_31_reg_2482_pp0_iter1_reg[10 : 5];
        weights2_1_addr_30_reg_2476[10 : 5] <= zext_ln168_30_fu_1362_p1[10 : 5];
        weights2_1_addr_30_reg_2476_pp0_iter1_reg[10 : 5] <= weights2_1_addr_30_reg_2476[10 : 5];
        weights2_1_addr_30_reg_2476_pp0_iter2_reg[10 : 5] <= weights2_1_addr_30_reg_2476_pp0_iter1_reg[10 : 5];
        weights2_1_addr_31_reg_2487[10 : 5] <= zext_ln168_31_fu_1375_p1[10 : 5];
        weights2_1_addr_31_reg_2487_pp0_iter1_reg[10 : 5] <= weights2_1_addr_31_reg_2487[10 : 5];
        weights2_1_addr_31_reg_2487_pp0_iter2_reg[10 : 5] <= weights2_1_addr_31_reg_2487_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_0_addr_4_reg_1950[10 : 5] <= zext_ln168_4_fu_894_p1[10 : 5];
        weights2_0_addr_4_reg_1950_pp0_iter1_reg[10 : 5] <= weights2_0_addr_4_reg_1950[10 : 5];
        weights2_0_addr_4_reg_1950_pp0_iter2_reg[10 : 5] <= weights2_0_addr_4_reg_1950_pp0_iter1_reg[10 : 5];
        weights2_0_addr_5_reg_1962[10 : 5] <= zext_ln168_5_fu_907_p1[10 : 5];
        weights2_0_addr_5_reg_1962_pp0_iter1_reg[10 : 5] <= weights2_0_addr_5_reg_1962[10 : 5];
        weights2_0_addr_5_reg_1962_pp0_iter2_reg[10 : 5] <= weights2_0_addr_5_reg_1962_pp0_iter1_reg[10 : 5];
        weights2_1_addr_4_reg_1956[10 : 5] <= zext_ln168_4_fu_894_p1[10 : 5];
        weights2_1_addr_4_reg_1956_pp0_iter1_reg[10 : 5] <= weights2_1_addr_4_reg_1956[10 : 5];
        weights2_1_addr_4_reg_1956_pp0_iter2_reg[10 : 5] <= weights2_1_addr_4_reg_1956_pp0_iter1_reg[10 : 5];
        weights2_1_addr_5_reg_1968[10 : 5] <= zext_ln168_5_fu_907_p1[10 : 5];
        weights2_1_addr_5_reg_1968_pp0_iter1_reg[10 : 5] <= weights2_1_addr_5_reg_1968[10 : 5];
        weights2_1_addr_5_reg_1968_pp0_iter2_reg[10 : 5] <= weights2_1_addr_5_reg_1968_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_0_addr_6_reg_1984[10 : 5] <= zext_ln168_6_fu_930_p1[10 : 5];
        weights2_0_addr_6_reg_1984_pp0_iter1_reg[10 : 5] <= weights2_0_addr_6_reg_1984[10 : 5];
        weights2_0_addr_6_reg_1984_pp0_iter2_reg[10 : 5] <= weights2_0_addr_6_reg_1984_pp0_iter1_reg[10 : 5];
        weights2_0_addr_7_reg_1996[10 : 5] <= zext_ln168_7_fu_943_p1[10 : 5];
        weights2_0_addr_7_reg_1996_pp0_iter1_reg[10 : 5] <= weights2_0_addr_7_reg_1996[10 : 5];
        weights2_0_addr_7_reg_1996_pp0_iter2_reg[10 : 5] <= weights2_0_addr_7_reg_1996_pp0_iter1_reg[10 : 5];
        weights2_1_addr_6_reg_1990[10 : 5] <= zext_ln168_6_fu_930_p1[10 : 5];
        weights2_1_addr_6_reg_1990_pp0_iter1_reg[10 : 5] <= weights2_1_addr_6_reg_1990[10 : 5];
        weights2_1_addr_6_reg_1990_pp0_iter2_reg[10 : 5] <= weights2_1_addr_6_reg_1990_pp0_iter1_reg[10 : 5];
        weights2_1_addr_7_reg_2002[10 : 5] <= zext_ln168_7_fu_943_p1[10 : 5];
        weights2_1_addr_7_reg_2002_pp0_iter1_reg[10 : 5] <= weights2_1_addr_7_reg_2002[10 : 5];
        weights2_1_addr_7_reg_2002_pp0_iter2_reg[10 : 5] <= weights2_1_addr_7_reg_2002_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_addr_8_reg_2018[10 : 5] <= zext_ln168_8_fu_966_p1[10 : 5];
        weights2_0_addr_8_reg_2018_pp0_iter1_reg[10 : 5] <= weights2_0_addr_8_reg_2018[10 : 5];
        weights2_0_addr_8_reg_2018_pp0_iter2_reg[10 : 5] <= weights2_0_addr_8_reg_2018_pp0_iter1_reg[10 : 5];
        weights2_0_addr_9_reg_2030[10 : 5] <= zext_ln168_9_fu_979_p1[10 : 5];
        weights2_0_addr_9_reg_2030_pp0_iter1_reg[10 : 5] <= weights2_0_addr_9_reg_2030[10 : 5];
        weights2_0_addr_9_reg_2030_pp0_iter2_reg[10 : 5] <= weights2_0_addr_9_reg_2030_pp0_iter1_reg[10 : 5];
        weights2_1_addr_8_reg_2024[10 : 5] <= zext_ln168_8_fu_966_p1[10 : 5];
        weights2_1_addr_8_reg_2024_pp0_iter1_reg[10 : 5] <= weights2_1_addr_8_reg_2024[10 : 5];
        weights2_1_addr_8_reg_2024_pp0_iter2_reg[10 : 5] <= weights2_1_addr_8_reg_2024_pp0_iter1_reg[10 : 5];
        weights2_1_addr_9_reg_2036[10 : 5] <= zext_ln168_9_fu_979_p1[10 : 5];
        weights2_1_addr_9_reg_2036_pp0_iter1_reg[10 : 5] <= weights2_1_addr_9_reg_2036[10 : 5];
        weights2_1_addr_9_reg_2036_pp0_iter2_reg[10 : 5] <= weights2_1_addr_9_reg_2036_pp0_iter1_reg[10 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_0_load_15_reg_2154 <= weights2_0_q0;
        weights2_1_load_15_reg_2159 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_0_load_17_reg_2198 <= weights2_0_q0;
        weights2_1_load_17_reg_2203 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_0_load_19_reg_2242 <= weights2_0_q0;
        weights2_1_load_19_reg_2247 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_0_load_21_reg_2286 <= weights2_0_q0;
        weights2_1_load_21_reg_2291 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_0_load_23_reg_2330 <= weights2_0_q0;
        weights2_1_load_23_reg_2335 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_0_load_25_reg_2374 <= weights2_0_q0;
        weights2_1_load_25_reg_2379 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_0_load_27_reg_2418 <= weights2_0_q0;
        weights2_1_load_27_reg_2423 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_0_load_29_reg_2460 <= weights2_0_q0;
        weights2_1_load_29_reg_2465 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights2_0_load_31_reg_2502 <= weights2_0_q0;
        weights2_1_load_31_reg_2507 <= weights2_1_q0;
    end
end
always @ (*) begin
    if (((icmp_ln166_reg_1858 == 1'd1) & (1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_644_p0 = bitcast_ln168_124_fu_1535_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_644_p0 = bitcast_ln168_120_fu_1525_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_644_p0 = bitcast_ln168_116_fu_1517_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_644_p0 = bitcast_ln168_112_fu_1507_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_644_p0 = bitcast_ln168_108_fu_1499_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_644_p0 = bitcast_ln168_104_fu_1489_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_644_p0 = bitcast_ln168_100_fu_1481_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_644_p0 = bitcast_ln168_96_fu_1471_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_644_p0 = bitcast_ln168_92_fu_1463_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_644_p0 = bitcast_ln168_88_fu_1453_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_644_p0 = bitcast_ln168_84_fu_1445_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_644_p0 = bitcast_ln168_80_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_644_p0 = bitcast_ln168_76_fu_1427_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_644_p0 = bitcast_ln168_72_fu_1417_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_644_p0 = bitcast_ln168_68_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_644_p0 = bitcast_ln168_64_fu_1399_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_644_p0 = bitcast_ln168_60_fu_1391_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_644_p0 = bitcast_ln168_56_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_644_p0 = bitcast_ln168_52_fu_1345_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_644_p0 = bitcast_ln168_48_fu_1309_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_644_p0 = bitcast_ln168_44_fu_1273_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_644_p0 = bitcast_ln168_40_fu_1237_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_644_p0 = bitcast_ln168_36_fu_1201_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_644_p0 = bitcast_ln168_32_fu_1165_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_644_p0 = bitcast_ln168_28_fu_1129_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_644_p0 = bitcast_ln168_24_fu_1093_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_644_p0 = bitcast_ln168_20_fu_1057_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_644_p0 = bitcast_ln168_16_fu_1021_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_644_p0 = bitcast_ln168_12_fu_985_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_644_p0 = bitcast_ln168_8_fu_949_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_644_p0 = bitcast_ln168_4_fu_913_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_644_p0 = bitcast_ln168_fu_877_p1;
    end else begin
        grp_fu_644_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_648_p0 = bitcast_ln168_126_fu_1539_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_648_p0 = bitcast_ln168_122_fu_1530_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        grp_fu_648_p0 = bitcast_ln168_118_fu_1521_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_648_p0 = bitcast_ln168_114_fu_1512_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        grp_fu_648_p0 = bitcast_ln168_110_fu_1503_p1;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        grp_fu_648_p0 = bitcast_ln168_106_fu_1494_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        grp_fu_648_p0 = bitcast_ln168_102_fu_1485_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_648_p0 = bitcast_ln168_98_fu_1476_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_648_p0 = bitcast_ln168_94_fu_1467_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_648_p0 = bitcast_ln168_90_fu_1458_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_648_p0 = bitcast_ln168_86_fu_1449_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_648_p0 = bitcast_ln168_82_fu_1440_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_648_p0 = bitcast_ln168_78_fu_1431_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_648_p0 = bitcast_ln168_74_fu_1422_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_648_p0 = bitcast_ln168_70_fu_1413_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_648_p0 = bitcast_ln168_66_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_648_p0 = bitcast_ln168_62_fu_1395_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_648_p0 = bitcast_ln168_58_fu_1386_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_648_p0 = bitcast_ln168_54_fu_1350_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_648_p0 = bitcast_ln168_50_fu_1314_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_648_p0 = bitcast_ln168_46_fu_1278_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_648_p0 = bitcast_ln168_42_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_648_p0 = bitcast_ln168_38_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_648_p0 = bitcast_ln168_34_fu_1170_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_648_p0 = bitcast_ln168_30_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_648_p0 = bitcast_ln168_26_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_648_p0 = bitcast_ln168_22_fu_1062_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_648_p0 = bitcast_ln168_18_fu_1026_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_648_p0 = bitcast_ln168_14_fu_990_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_648_p0 = bitcast_ln168_10_fu_954_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_648_p0 = bitcast_ln168_6_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_648_p0 = bitcast_ln168_2_fu_882_p1;
    end else begin
        grp_fu_648_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights2_0_address0_local = weights2_0_addr_31_reg_2482_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights2_0_address0_local = weights2_0_addr_30_reg_2470_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights2_0_address0_local = weights2_0_addr_29_reg_2440_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights2_0_address0_local = weights2_0_addr_28_reg_2428_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights2_0_address0_local = weights2_0_addr_26_reg_2384_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights2_0_address0_local = weights2_0_addr_24_reg_2340_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights2_0_address0_local = weights2_0_addr_22_reg_2296_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights2_0_address0_local = weights2_0_addr_20_reg_2252_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights2_0_address0_local = weights2_0_addr_18_reg_2208_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights2_0_address0_local = weights2_0_addr_16_reg_2164_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_0_address0_local = weights2_0_addr_14_reg_2120_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_0_address0_local = weights2_0_addr_12_reg_2086_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_0_address0_local = weights2_0_addr_10_reg_2052_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_0_address0_local = weights2_0_addr_8_reg_2018_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights2_0_address0_local = weights2_0_addr_6_reg_1984_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights2_0_address0_local = weights2_0_addr_4_reg_1950_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_0_address0_local = zext_ln168_31_fu_1375_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_0_address0_local = zext_ln168_29_fu_1339_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_0_address0_local = zext_ln168_27_fu_1303_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_0_address0_local = zext_ln168_25_fu_1267_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_0_address0_local = zext_ln168_23_fu_1231_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_0_address0_local = zext_ln168_21_fu_1195_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_0_address0_local = zext_ln168_19_fu_1159_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_0_address0_local = zext_ln168_17_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_0_address0_local = zext_ln168_15_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_0_address0_local = zext_ln168_13_fu_1051_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_0_address0_local = zext_ln168_11_fu_1015_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_address0_local = zext_ln168_9_fu_979_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_0_address0_local = zext_ln168_7_fu_943_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_0_address0_local = zext_ln168_5_fu_907_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_address0_local = zext_ln168_3_fu_871_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_0_address0_local = zext_ln168_1_fu_840_p1;
    end else begin
        weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights2_0_address1_local = weights2_0_addr_27_reg_2396_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights2_0_address1_local = weights2_0_addr_25_reg_2352_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights2_0_address1_local = weights2_0_addr_23_reg_2308_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights2_0_address1_local = weights2_0_addr_21_reg_2264_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights2_0_address1_local = weights2_0_addr_19_reg_2220_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights2_0_address1_local = weights2_0_addr_17_reg_2176_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights2_0_address1_local = weights2_0_addr_15_reg_2132_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_0_address1_local = weights2_0_addr_13_reg_2098_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_0_address1_local = weights2_0_addr_11_reg_2064_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_0_address1_local = weights2_0_addr_9_reg_2030_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_0_address1_local = weights2_0_addr_7_reg_1996_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights2_0_address1_local = weights2_0_addr_5_reg_1962_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights2_0_address1_local = weights2_0_addr_3_reg_1928_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights2_0_address1_local = weights2_0_addr_2_reg_1918_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights2_0_address1_local = weights2_0_addr_1_reg_1906_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights2_0_address1_local = weights2_0_addr_reg_1896_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_0_address1_local = zext_ln168_30_fu_1362_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_0_address1_local = zext_ln168_28_fu_1326_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_0_address1_local = zext_ln168_26_fu_1290_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_0_address1_local = zext_ln168_24_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_0_address1_local = zext_ln168_22_fu_1218_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_0_address1_local = zext_ln168_20_fu_1182_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_0_address1_local = zext_ln168_18_fu_1146_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_0_address1_local = zext_ln168_16_fu_1110_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_0_address1_local = zext_ln168_14_fu_1074_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_0_address1_local = zext_ln168_12_fu_1038_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_0_address1_local = zext_ln168_10_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_address1_local = zext_ln168_8_fu_966_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_0_address1_local = zext_ln168_6_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_0_address1_local = zext_ln168_4_fu_894_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_address1_local = zext_ln168_2_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_0_address1_local = zext_ln168_fu_826_p1;
    end else begin
        weights2_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))| ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))| ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_0_ce1_local = 1'b1;
    end else begin
        weights2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            weights2_0_d0_local = bitcast_ln168_125_fu_1835_p1;
        end else if (((1'b0 == ap_block_pp0_stage30) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
            weights2_0_d0_local = bitcast_ln168_121_fu_1825_p1;
        end else if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            weights2_0_d0_local = bitcast_ln168_117_fu_1815_p1;
        end else if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            weights2_0_d0_local = bitcast_ln168_113_fu_1805_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            weights2_0_d0_local = bitcast_ln168_105_fu_1785_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            weights2_0_d0_local = bitcast_ln168_97_fu_1765_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            weights2_0_d0_local = bitcast_ln168_89_fu_1745_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights2_0_d0_local = bitcast_ln168_81_fu_1725_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights2_0_d0_local = bitcast_ln168_73_fu_1709_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights2_0_d0_local = bitcast_ln168_65_fu_1693_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_0_d0_local = bitcast_ln168_57_fu_1677_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_0_d0_local = bitcast_ln168_49_fu_1661_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_0_d0_local = bitcast_ln168_41_fu_1643_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_0_d0_local = bitcast_ln168_33_fu_1623_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights2_0_d0_local = bitcast_ln168_25_fu_1603_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            weights2_0_d0_local = bitcast_ln168_17_fu_1583_p1;
        end else begin
            weights2_0_d0_local = 'bx;
        end
    end else begin
        weights2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights2_0_d1_local = bitcast_ln168_109_fu_1795_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights2_0_d1_local = bitcast_ln168_101_fu_1775_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights2_0_d1_local = bitcast_ln168_93_fu_1755_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights2_0_d1_local = bitcast_ln168_85_fu_1735_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights2_0_d1_local = bitcast_ln168_77_fu_1717_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights2_0_d1_local = bitcast_ln168_69_fu_1701_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights2_0_d1_local = bitcast_ln168_61_fu_1685_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_0_d1_local = bitcast_ln168_53_fu_1669_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_0_d1_local = bitcast_ln168_45_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_0_d1_local = bitcast_ln168_37_fu_1633_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_0_d1_local = bitcast_ln168_29_fu_1613_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights2_0_d1_local = bitcast_ln168_21_fu_1593_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights2_0_d1_local = bitcast_ln168_13_fu_1573_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights2_0_d1_local = bitcast_ln168_9_fu_1563_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights2_0_d1_local = bitcast_ln168_5_fu_1553_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights2_0_d1_local = bitcast_ln168_1_fu_1543_p1;
    end else begin
        weights2_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        weights2_0_we0_local = 1'b1;
    end else begin
        weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        weights2_0_we1_local = 1'b1;
    end else begin
        weights2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights2_1_address0_local = weights2_1_addr_31_reg_2487_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights2_1_address0_local = weights2_1_addr_30_reg_2476_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights2_1_address0_local = weights2_1_addr_29_reg_2445_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights2_1_address0_local = weights2_1_addr_28_reg_2434_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights2_1_address0_local = weights2_1_addr_26_reg_2390_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights2_1_address0_local = weights2_1_addr_24_reg_2346_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights2_1_address0_local = weights2_1_addr_22_reg_2302_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights2_1_address0_local = weights2_1_addr_20_reg_2258_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights2_1_address0_local = weights2_1_addr_18_reg_2214_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights2_1_address0_local = weights2_1_addr_16_reg_2170_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_1_address0_local = weights2_1_addr_14_reg_2126_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_1_address0_local = weights2_1_addr_12_reg_2092_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_1_address0_local = weights2_1_addr_10_reg_2058_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_1_address0_local = weights2_1_addr_8_reg_2024_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights2_1_address0_local = weights2_1_addr_6_reg_1990_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights2_1_address0_local = weights2_1_addr_4_reg_1956_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_1_address0_local = zext_ln168_31_fu_1375_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_1_address0_local = zext_ln168_29_fu_1339_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_1_address0_local = zext_ln168_27_fu_1303_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_1_address0_local = zext_ln168_25_fu_1267_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_1_address0_local = zext_ln168_23_fu_1231_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_1_address0_local = zext_ln168_21_fu_1195_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_1_address0_local = zext_ln168_19_fu_1159_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_1_address0_local = zext_ln168_17_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_1_address0_local = zext_ln168_15_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_1_address0_local = zext_ln168_13_fu_1051_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_1_address0_local = zext_ln168_11_fu_1015_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_1_address0_local = zext_ln168_9_fu_979_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_1_address0_local = zext_ln168_7_fu_943_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_1_address0_local = zext_ln168_5_fu_907_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_1_address0_local = zext_ln168_3_fu_871_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_1_address0_local = zext_ln168_1_fu_840_p1;
    end else begin
        weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights2_1_address1_local = weights2_1_addr_27_reg_2402_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights2_1_address1_local = weights2_1_addr_25_reg_2358_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights2_1_address1_local = weights2_1_addr_23_reg_2314_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights2_1_address1_local = weights2_1_addr_21_reg_2270_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights2_1_address1_local = weights2_1_addr_19_reg_2226_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights2_1_address1_local = weights2_1_addr_17_reg_2182_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights2_1_address1_local = weights2_1_addr_15_reg_2138_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_1_address1_local = weights2_1_addr_13_reg_2104_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_1_address1_local = weights2_1_addr_11_reg_2070_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_1_address1_local = weights2_1_addr_9_reg_2036_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_1_address1_local = weights2_1_addr_7_reg_2002_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights2_1_address1_local = weights2_1_addr_5_reg_1968_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights2_1_address1_local = weights2_1_addr_3_reg_1934_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights2_1_address1_local = weights2_1_addr_2_reg_1923_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights2_1_address1_local = weights2_1_addr_1_reg_1912_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights2_1_address1_local = weights2_1_addr_reg_1901_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights2_1_address1_local = zext_ln168_30_fu_1362_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights2_1_address1_local = zext_ln168_28_fu_1326_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights2_1_address1_local = zext_ln168_26_fu_1290_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights2_1_address1_local = zext_ln168_24_fu_1254_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights2_1_address1_local = zext_ln168_22_fu_1218_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights2_1_address1_local = zext_ln168_20_fu_1182_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights2_1_address1_local = zext_ln168_18_fu_1146_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights2_1_address1_local = zext_ln168_16_fu_1110_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_1_address1_local = zext_ln168_14_fu_1074_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_1_address1_local = zext_ln168_12_fu_1038_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_1_address1_local = zext_ln168_10_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_1_address1_local = zext_ln168_8_fu_966_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_1_address1_local = zext_ln168_6_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_1_address1_local = zext_ln168_4_fu_894_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_1_address1_local = zext_ln168_2_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_1_address1_local = zext_ln168_fu_826_p1;
    end else begin
        weights2_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))| ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 ==1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))| ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_1_ce1_local = 1'b1;
    end else begin
        weights2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            weights2_1_d0_local = bitcast_ln168_127_fu_1840_p1;
        end else if (((1'b0 == ap_block_pp0_stage30) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
            weights2_1_d0_local = bitcast_ln168_123_fu_1830_p1;
        end else if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            weights2_1_d0_local = bitcast_ln168_119_fu_1820_p1;
        end else if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            weights2_1_d0_local = bitcast_ln168_115_fu_1810_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            weights2_1_d0_local = bitcast_ln168_107_fu_1790_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            weights2_1_d0_local = bitcast_ln168_99_fu_1770_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            weights2_1_d0_local = bitcast_ln168_91_fu_1750_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            weights2_1_d0_local = bitcast_ln168_83_fu_1730_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            weights2_1_d0_local = bitcast_ln168_75_fu_1713_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            weights2_1_d0_local = bitcast_ln168_67_fu_1697_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_1_d0_local = bitcast_ln168_59_fu_1681_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_1_d0_local = bitcast_ln168_51_fu_1665_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_1_d0_local = bitcast_ln168_43_fu_1648_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_1_d0_local = bitcast_ln168_35_fu_1628_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights2_1_d0_local = bitcast_ln168_27_fu_1608_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            weights2_1_d0_local = bitcast_ln168_19_fu_1588_p1;
        end else begin
            weights2_1_d0_local = 'bx;
        end
    end else begin
        weights2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        weights2_1_d1_local = bitcast_ln168_111_fu_1800_p1;
    end else if (((1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        weights2_1_d1_local = bitcast_ln168_103_fu_1780_p1;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        weights2_1_d1_local = bitcast_ln168_95_fu_1760_p1;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        weights2_1_d1_local = bitcast_ln168_87_fu_1740_p1;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        weights2_1_d1_local = bitcast_ln168_79_fu_1721_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights2_1_d1_local = bitcast_ln168_71_fu_1705_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights2_1_d1_local = bitcast_ln168_63_fu_1689_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_1_d1_local = bitcast_ln168_55_fu_1673_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_1_d1_local = bitcast_ln168_47_fu_1657_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_1_d1_local = bitcast_ln168_39_fu_1638_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_1_d1_local = bitcast_ln168_31_fu_1618_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights2_1_d1_local = bitcast_ln168_23_fu_1598_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights2_1_d1_local = bitcast_ln168_15_fu_1578_p1;
    end else if (((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        weights2_1_d1_local = bitcast_ln168_11_fu_1568_p1;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        weights2_1_d1_local = bitcast_ln168_7_fu_1558_p1;
    end else if (((1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        weights2_1_d1_local = bitcast_ln168_3_fu_1548_p1;
    end else begin
        weights2_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        weights2_1_we0_local = 1'b1;
    end else begin
        weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        weights2_1_we1_local = 1'b1;
    end else begin
        weights2_1_we1_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln166_fu_808_p2 = (ap_sig_allocacmp_i_3 + 7'd1);
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
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
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
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage31;
assign ap_ready = ap_ready_sig;
assign bitcast_ln168_100_fu_1481_p1 = weights2_0_load_25_reg_2374;
assign bitcast_ln168_101_fu_1775_p1 = reg_770;
assign bitcast_ln168_102_fu_1485_p1 = weights2_1_load_25_reg_2379;
assign bitcast_ln168_103_fu_1780_p1 = reg_774;
assign bitcast_ln168_104_fu_1489_p1 = reg_680;
assign bitcast_ln168_105_fu_1785_p1 = reg_778;
assign bitcast_ln168_106_fu_1494_p1 = reg_685;
assign bitcast_ln168_107_fu_1790_p1 = reg_782;
assign bitcast_ln168_108_fu_1499_p1 = weights2_0_load_27_reg_2418;
assign bitcast_ln168_109_fu_1795_p1 = reg_786;
assign bitcast_ln168_10_fu_954_p1 = reg_656;
assign bitcast_ln168_110_fu_1503_p1 = weights2_1_load_27_reg_2423;
assign bitcast_ln168_111_fu_1800_p1 = reg_790;
assign bitcast_ln168_112_fu_1507_p1 = reg_720;
assign bitcast_ln168_113_fu_1805_p1 = reg_730;
assign bitcast_ln168_114_fu_1512_p1 = reg_725;
assign bitcast_ln168_115_fu_1810_p1 = reg_734;
assign bitcast_ln168_116_fu_1517_p1 = weights2_0_load_29_reg_2460;
assign bitcast_ln168_117_fu_1815_p1 = reg_738;
assign bitcast_ln168_118_fu_1521_p1 = weights2_1_load_29_reg_2465;
assign bitcast_ln168_119_fu_1820_p1 = reg_742;
assign bitcast_ln168_11_fu_1568_p1 = reg_734;
assign bitcast_ln168_120_fu_1525_p1 = reg_652;
assign bitcast_ln168_121_fu_1825_p1 = reg_746;
assign bitcast_ln168_122_fu_1530_p1 = reg_656;
assign bitcast_ln168_123_fu_1830_p1 = reg_750;
assign bitcast_ln168_124_fu_1535_p1 = weights2_0_load_31_reg_2502;
assign bitcast_ln168_125_fu_1835_p1 = reg_754;
assign bitcast_ln168_126_fu_1539_p1 = weights2_1_load_31_reg_2507;
assign bitcast_ln168_127_fu_1840_p1 = reg_758;
assign bitcast_ln168_12_fu_985_p1 = reg_670;
assign bitcast_ln168_13_fu_1573_p1 = reg_730;
assign bitcast_ln168_14_fu_990_p1 = reg_675;
assign bitcast_ln168_15_fu_1578_p1 = reg_734;
assign bitcast_ln168_16_fu_1021_p1 = reg_660;
assign bitcast_ln168_17_fu_1583_p1 = reg_738;
assign bitcast_ln168_18_fu_1026_p1 = reg_665;
assign bitcast_ln168_19_fu_1588_p1 = reg_742;
assign bitcast_ln168_1_fu_1543_p1 = reg_730;
assign bitcast_ln168_20_fu_1057_p1 = reg_680;
assign bitcast_ln168_21_fu_1593_p1 = reg_746;
assign bitcast_ln168_22_fu_1062_p1 = reg_685;
assign bitcast_ln168_23_fu_1598_p1 = reg_750;
assign bitcast_ln168_24_fu_1093_p1 = reg_652;
assign bitcast_ln168_25_fu_1603_p1 = reg_754;
assign bitcast_ln168_26_fu_1098_p1 = reg_656;
assign bitcast_ln168_27_fu_1608_p1 = reg_758;
assign bitcast_ln168_28_fu_1129_p1 = reg_690;
assign bitcast_ln168_29_fu_1613_p1 = reg_762;
assign bitcast_ln168_2_fu_882_p1 = reg_656;
assign bitcast_ln168_30_fu_1134_p1 = reg_695;
assign bitcast_ln168_31_fu_1618_p1 = reg_766;
assign bitcast_ln168_32_fu_1165_p1 = reg_670;
assign bitcast_ln168_33_fu_1623_p1 = reg_770;
assign bitcast_ln168_34_fu_1170_p1 = reg_675;
assign bitcast_ln168_35_fu_1628_p1 = reg_774;
assign bitcast_ln168_36_fu_1201_p1 = reg_700;
assign bitcast_ln168_37_fu_1633_p1 = reg_778;
assign bitcast_ln168_38_fu_1206_p1 = reg_705;
assign bitcast_ln168_39_fu_1638_p1 = reg_782;
assign bitcast_ln168_3_fu_1548_p1 = reg_734;
assign bitcast_ln168_40_fu_1237_p1 = reg_660;
assign bitcast_ln168_41_fu_1643_p1 = reg_786;
assign bitcast_ln168_42_fu_1242_p1 = reg_665;
assign bitcast_ln168_43_fu_1648_p1 = reg_790;
assign bitcast_ln168_44_fu_1273_p1 = reg_710;
assign bitcast_ln168_45_fu_1653_p1 = div131_21_reg_2682;
assign bitcast_ln168_46_fu_1278_p1 = reg_715;
assign bitcast_ln168_47_fu_1657_p1 = div131_22_reg_2687;
assign bitcast_ln168_48_fu_1309_p1 = reg_680;
assign bitcast_ln168_49_fu_1661_p1 = div131_23_reg_2692;
assign bitcast_ln168_4_fu_913_p1 = reg_660;
assign bitcast_ln168_50_fu_1314_p1 = reg_685;
assign bitcast_ln168_51_fu_1665_p1 = div131_24_reg_2697;
assign bitcast_ln168_52_fu_1345_p1 = reg_720;
assign bitcast_ln168_53_fu_1669_p1 = div131_25_reg_2702;
assign bitcast_ln168_54_fu_1350_p1 = reg_725;
assign bitcast_ln168_55_fu_1673_p1 = div131_26_reg_2707;
assign bitcast_ln168_56_fu_1381_p1 = reg_652;
assign bitcast_ln168_57_fu_1677_p1 = div131_27_reg_2712;
assign bitcast_ln168_58_fu_1386_p1 = reg_656;
assign bitcast_ln168_59_fu_1681_p1 = div131_28_reg_2717;
assign bitcast_ln168_5_fu_1553_p1 = reg_730;
assign bitcast_ln168_60_fu_1391_p1 = weights2_0_load_15_reg_2154;
assign bitcast_ln168_61_fu_1685_p1 = div131_29_reg_2722;
assign bitcast_ln168_62_fu_1395_p1 = weights2_1_load_15_reg_2159;
assign bitcast_ln168_63_fu_1689_p1 = div131_30_reg_2727;
assign bitcast_ln168_64_fu_1399_p1 = reg_690;
assign bitcast_ln168_65_fu_1693_p1 = div131_31_reg_2732;
assign bitcast_ln168_66_fu_1404_p1 = reg_695;
assign bitcast_ln168_67_fu_1697_p1 = div131_32_reg_2737;
assign bitcast_ln168_68_fu_1409_p1 = weights2_0_load_17_reg_2198;
assign bitcast_ln168_69_fu_1701_p1 = div131_33_reg_2742;
assign bitcast_ln168_6_fu_918_p1 = reg_665;
assign bitcast_ln168_70_fu_1413_p1 = weights2_1_load_17_reg_2203;
assign bitcast_ln168_71_fu_1705_p1 = div131_34_reg_2747;
assign bitcast_ln168_72_fu_1417_p1 = reg_670;
assign bitcast_ln168_73_fu_1709_p1 = div131_35_reg_2752;
assign bitcast_ln168_74_fu_1422_p1 = reg_675;
assign bitcast_ln168_75_fu_1713_p1 = div131_36_reg_2757;
assign bitcast_ln168_76_fu_1427_p1 = weights2_0_load_19_reg_2242;
assign bitcast_ln168_77_fu_1717_p1 = div131_37_reg_2762;
assign bitcast_ln168_78_fu_1431_p1 = weights2_1_load_19_reg_2247;
assign bitcast_ln168_79_fu_1721_p1 = div131_38_reg_2767;
assign bitcast_ln168_7_fu_1558_p1 = reg_734;
assign bitcast_ln168_80_fu_1435_p1 = reg_700;
assign bitcast_ln168_81_fu_1725_p1 = reg_730;
assign bitcast_ln168_82_fu_1440_p1 = reg_705;
assign bitcast_ln168_83_fu_1730_p1 = reg_734;
assign bitcast_ln168_84_fu_1445_p1 = weights2_0_load_21_reg_2286;
assign bitcast_ln168_85_fu_1735_p1 = reg_738;
assign bitcast_ln168_86_fu_1449_p1 = weights2_1_load_21_reg_2291;
assign bitcast_ln168_87_fu_1740_p1 = reg_742;
assign bitcast_ln168_88_fu_1453_p1 = reg_660;
assign bitcast_ln168_89_fu_1745_p1 = reg_746;
assign bitcast_ln168_8_fu_949_p1 = reg_652;
assign bitcast_ln168_90_fu_1458_p1 = reg_665;
assign bitcast_ln168_91_fu_1750_p1 = reg_750;
assign bitcast_ln168_92_fu_1463_p1 = weights2_0_load_23_reg_2330;
assign bitcast_ln168_93_fu_1755_p1 = reg_754;
assign bitcast_ln168_94_fu_1467_p1 = weights2_1_load_23_reg_2335;
assign bitcast_ln168_95_fu_1760_p1 = reg_758;
assign bitcast_ln168_96_fu_1471_p1 = reg_710;
assign bitcast_ln168_97_fu_1765_p1 = reg_762;
assign bitcast_ln168_98_fu_1476_p1 = reg_715;
assign bitcast_ln168_99_fu_1770_p1 = reg_766;
assign bitcast_ln168_9_fu_1563_p1 = reg_730;
assign bitcast_ln168_fu_877_p1 = reg_652;
assign grp_fu_6246_p_ce = 1'b1;
assign grp_fu_6246_p_din0 = grp_fu_644_p0;
assign grp_fu_6246_p_din1 = norm_66;
assign grp_fu_6250_p_ce = 1'b1;
assign grp_fu_6250_p_din0 = grp_fu_648_p0;
assign grp_fu_6250_p_din1 = norm_66;
assign icmp_ln166_fu_802_p2 = ((ap_sig_allocacmp_i_3 == 7'd64) ? 1'b1 : 1'b0);
assign or_ln168_10_fu_1031_p3 = {{trunc_ln168_reg_1862}, {5'd12}};
assign or_ln168_11_fu_1044_p3 = {{trunc_ln168_reg_1862}, {5'd13}};
assign or_ln168_12_fu_1067_p3 = {{trunc_ln168_reg_1862}, {5'd14}};
assign or_ln168_13_fu_1080_p3 = {{trunc_ln168_reg_1862}, {5'd15}};
assign or_ln168_14_fu_1103_p3 = {{trunc_ln168_reg_1862}, {5'd16}};
assign or_ln168_15_fu_1116_p3 = {{trunc_ln168_reg_1862}, {5'd17}};
assign or_ln168_16_fu_1139_p3 = {{trunc_ln168_reg_1862}, {5'd18}};
assign or_ln168_17_fu_1152_p3 = {{trunc_ln168_reg_1862}, {5'd19}};
assign or_ln168_18_fu_1175_p3 = {{trunc_ln168_reg_1862}, {5'd20}};
assign or_ln168_19_fu_1188_p3 = {{trunc_ln168_reg_1862}, {5'd21}};
assign or_ln168_1_fu_851_p3 = {{trunc_ln168_reg_1862}, {5'd2}};
assign or_ln168_20_fu_1211_p3 = {{trunc_ln168_reg_1862}, {5'd22}};
assign or_ln168_21_fu_1224_p3 = {{trunc_ln168_reg_1862}, {5'd23}};
assign or_ln168_22_fu_1247_p3 = {{trunc_ln168_reg_1862}, {5'd24}};
assign or_ln168_23_fu_1260_p3 = {{trunc_ln168_reg_1862}, {5'd25}};
assign or_ln168_24_fu_1283_p3 = {{trunc_ln168_reg_1862}, {5'd26}};
assign or_ln168_25_fu_1296_p3 = {{trunc_ln168_reg_1862}, {5'd27}};
assign or_ln168_26_fu_1319_p3 = {{trunc_ln168_reg_1862}, {5'd28}};
assign or_ln168_27_fu_1332_p3 = {{trunc_ln168_reg_1862}, {5'd29}};
assign or_ln168_28_fu_1355_p3 = {{trunc_ln168_reg_1862}, {5'd30}};
assign or_ln168_29_fu_1368_p3 = {{trunc_ln168_reg_1862}, {5'd31}};
assign or_ln168_2_fu_864_p3 = {{trunc_ln168_reg_1862}, {5'd3}};
assign or_ln168_3_fu_887_p3 = {{trunc_ln168_reg_1862}, {5'd4}};
assign or_ln168_4_fu_900_p3 = {{trunc_ln168_reg_1862}, {5'd5}};
assign or_ln168_5_fu_923_p3 = {{trunc_ln168_reg_1862}, {5'd6}};
assign or_ln168_6_fu_936_p3 = {{trunc_ln168_reg_1862}, {5'd7}};
assign or_ln168_7_fu_959_p3 = {{trunc_ln168_reg_1862}, {5'd8}};
assign or_ln168_8_fu_972_p3 = {{trunc_ln168_reg_1862}, {5'd9}};
assign or_ln168_9_fu_995_p3 = {{trunc_ln168_reg_1862}, {5'd10}};
assign or_ln168_s_fu_1008_p3 = {{trunc_ln168_reg_1862}, {5'd11}};
assign or_ln3_fu_832_p3 = {{trunc_ln168_fu_814_p1}, {5'd1}};
assign shl_ln2_fu_818_p3 = {{trunc_ln168_fu_814_p1}, {5'd0}};
assign trunc_ln168_fu_814_p1 = ap_sig_allocacmp_i_3[5:0];
assign weights2_0_address0 = weights2_0_address0_local;
assign weights2_0_address1 = weights2_0_address1_local;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_0_ce1 = weights2_0_ce1_local;
assign weights2_0_d0 = weights2_0_d0_local;
assign weights2_0_d1 = weights2_0_d1_local;
assign weights2_0_we0 = weights2_0_we0_local;
assign weights2_0_we1 = weights2_0_we1_local;
assign weights2_1_address0 = weights2_1_address0_local;
assign weights2_1_address1 = weights2_1_address1_local;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_1_ce1 = weights2_1_ce1_local;
assign weights2_1_d0 = weights2_1_d0_local;
assign weights2_1_d1 = weights2_1_d1_local;
assign weights2_1_we0 = weights2_1_we0_local;
assign weights2_1_we1 = weights2_1_we1_local;
assign zext_ln168_10_fu_1002_p1 = or_ln168_9_fu_995_p3;
assign zext_ln168_11_fu_1015_p1 = or_ln168_s_fu_1008_p3;
assign zext_ln168_12_fu_1038_p1 = or_ln168_10_fu_1031_p3;
assign zext_ln168_13_fu_1051_p1 = or_ln168_11_fu_1044_p3;
assign zext_ln168_14_fu_1074_p1 = or_ln168_12_fu_1067_p3;
assign zext_ln168_15_fu_1087_p1 = or_ln168_13_fu_1080_p3;
assign zext_ln168_16_fu_1110_p1 = or_ln168_14_fu_1103_p3;
assign zext_ln168_17_fu_1123_p1 = or_ln168_15_fu_1116_p3;
assign zext_ln168_18_fu_1146_p1 = or_ln168_16_fu_1139_p3;
assign zext_ln168_19_fu_1159_p1 = or_ln168_17_fu_1152_p3;
assign zext_ln168_1_fu_840_p1 = or_ln3_fu_832_p3;
assign zext_ln168_20_fu_1182_p1 = or_ln168_18_fu_1175_p3;
assign zext_ln168_21_fu_1195_p1 = or_ln168_19_fu_1188_p3;
assign zext_ln168_22_fu_1218_p1 = or_ln168_20_fu_1211_p3;
assign zext_ln168_23_fu_1231_p1 = or_ln168_21_fu_1224_p3;
assign zext_ln168_24_fu_1254_p1 = or_ln168_22_fu_1247_p3;
assign zext_ln168_25_fu_1267_p1 = or_ln168_23_fu_1260_p3;
assign zext_ln168_26_fu_1290_p1 = or_ln168_24_fu_1283_p3;
assign zext_ln168_27_fu_1303_p1 = or_ln168_25_fu_1296_p3;
assign zext_ln168_28_fu_1326_p1 = or_ln168_26_fu_1319_p3;
assign zext_ln168_29_fu_1339_p1 = or_ln168_27_fu_1332_p3;
assign zext_ln168_2_fu_858_p1 = or_ln168_1_fu_851_p3;
assign zext_ln168_30_fu_1362_p1 = or_ln168_28_fu_1355_p3;
assign zext_ln168_31_fu_1375_p1 = or_ln168_29_fu_1368_p3;
assign zext_ln168_3_fu_871_p1 = or_ln168_2_fu_864_p3;
assign zext_ln168_4_fu_894_p1 = or_ln168_3_fu_887_p3;
assign zext_ln168_5_fu_907_p1 = or_ln168_4_fu_900_p3;
assign zext_ln168_6_fu_930_p1 = or_ln168_5_fu_923_p3;
assign zext_ln168_7_fu_943_p1 = or_ln168_6_fu_936_p3;
assign zext_ln168_8_fu_966_p1 = or_ln168_7_fu_959_p3;
assign zext_ln168_9_fu_979_p1 = or_ln168_8_fu_972_p3;
assign zext_ln168_fu_826_p1 = shl_ln2_fu_818_p3;
always @ (posedge ap_clk) begin
    weights2_0_addr_reg_1896[4:0] <= 5'b00000;
    weights2_0_addr_reg_1896_pp0_iter1_reg[4:0] <= 5'b00000;
    weights2_1_addr_reg_1901[4:0] <= 5'b00000;
    weights2_1_addr_reg_1901_pp0_iter1_reg[4:0] <= 5'b00000;
    weights2_0_addr_1_reg_1906[4:0] <= 5'b00001;
    weights2_0_addr_1_reg_1906_pp0_iter1_reg[4:0] <= 5'b00001;
    weights2_1_addr_1_reg_1912[4:0] <= 5'b00001;
    weights2_1_addr_1_reg_1912_pp0_iter1_reg[4:0] <= 5'b00001;
    weights2_0_addr_2_reg_1918[4:0] <= 5'b00010;
    weights2_0_addr_2_reg_1918_pp0_iter1_reg[4:0] <= 5'b00010;
    weights2_1_addr_2_reg_1923[4:0] <= 5'b00010;
    weights2_1_addr_2_reg_1923_pp0_iter1_reg[4:0] <= 5'b00010;
    weights2_0_addr_3_reg_1928[4:0] <= 5'b00011;
    weights2_0_addr_3_reg_1928_pp0_iter1_reg[4:0] <= 5'b00011;
    weights2_0_addr_3_reg_1928_pp0_iter2_reg[4:0] <= 5'b00011;
    weights2_1_addr_3_reg_1934[4:0] <= 5'b00011;
    weights2_1_addr_3_reg_1934_pp0_iter1_reg[4:0] <= 5'b00011;
    weights2_1_addr_3_reg_1934_pp0_iter2_reg[4:0] <= 5'b00011;
    weights2_0_addr_4_reg_1950[4:0] <= 5'b00100;
    weights2_0_addr_4_reg_1950_pp0_iter1_reg[4:0] <= 5'b00100;
    weights2_0_addr_4_reg_1950_pp0_iter2_reg[4:0] <= 5'b00100;
    weights2_1_addr_4_reg_1956[4:0] <= 5'b00100;
    weights2_1_addr_4_reg_1956_pp0_iter1_reg[4:0] <= 5'b00100;
    weights2_1_addr_4_reg_1956_pp0_iter2_reg[4:0] <= 5'b00100;
    weights2_0_addr_5_reg_1962[4:0] <= 5'b00101;
    weights2_0_addr_5_reg_1962_pp0_iter1_reg[4:0] <= 5'b00101;
    weights2_0_addr_5_reg_1962_pp0_iter2_reg[4:0] <= 5'b00101;
    weights2_1_addr_5_reg_1968[4:0] <= 5'b00101;
    weights2_1_addr_5_reg_1968_pp0_iter1_reg[4:0] <= 5'b00101;
    weights2_1_addr_5_reg_1968_pp0_iter2_reg[4:0] <= 5'b00101;
    weights2_0_addr_6_reg_1984[4:0] <= 5'b00110;
    weights2_0_addr_6_reg_1984_pp0_iter1_reg[4:0] <= 5'b00110;
    weights2_0_addr_6_reg_1984_pp0_iter2_reg[4:0] <= 5'b00110;
    weights2_1_addr_6_reg_1990[4:0] <= 5'b00110;
    weights2_1_addr_6_reg_1990_pp0_iter1_reg[4:0] <= 5'b00110;
    weights2_1_addr_6_reg_1990_pp0_iter2_reg[4:0] <= 5'b00110;
    weights2_0_addr_7_reg_1996[4:0] <= 5'b00111;
    weights2_0_addr_7_reg_1996_pp0_iter1_reg[4:0] <= 5'b00111;
    weights2_0_addr_7_reg_1996_pp0_iter2_reg[4:0] <= 5'b00111;
    weights2_1_addr_7_reg_2002[4:0] <= 5'b00111;
    weights2_1_addr_7_reg_2002_pp0_iter1_reg[4:0] <= 5'b00111;
    weights2_1_addr_7_reg_2002_pp0_iter2_reg[4:0] <= 5'b00111;
    weights2_0_addr_8_reg_2018[4:0] <= 5'b01000;
    weights2_0_addr_8_reg_2018_pp0_iter1_reg[4:0] <= 5'b01000;
    weights2_0_addr_8_reg_2018_pp0_iter2_reg[4:0] <= 5'b01000;
    weights2_1_addr_8_reg_2024[4:0] <= 5'b01000;
    weights2_1_addr_8_reg_2024_pp0_iter1_reg[4:0] <= 5'b01000;
    weights2_1_addr_8_reg_2024_pp0_iter2_reg[4:0] <= 5'b01000;
    weights2_0_addr_9_reg_2030[4:0] <= 5'b01001;
    weights2_0_addr_9_reg_2030_pp0_iter1_reg[4:0] <= 5'b01001;
    weights2_0_addr_9_reg_2030_pp0_iter2_reg[4:0] <= 5'b01001;
    weights2_1_addr_9_reg_2036[4:0] <= 5'b01001;
    weights2_1_addr_9_reg_2036_pp0_iter1_reg[4:0] <= 5'b01001;
    weights2_1_addr_9_reg_2036_pp0_iter2_reg[4:0] <= 5'b01001;
    weights2_0_addr_10_reg_2052[4:0] <= 5'b01010;
    weights2_0_addr_10_reg_2052_pp0_iter1_reg[4:0] <= 5'b01010;
    weights2_0_addr_10_reg_2052_pp0_iter2_reg[4:0] <= 5'b01010;
    weights2_1_addr_10_reg_2058[4:0] <= 5'b01010;
    weights2_1_addr_10_reg_2058_pp0_iter1_reg[4:0] <= 5'b01010;
    weights2_1_addr_10_reg_2058_pp0_iter2_reg[4:0] <= 5'b01010;
    weights2_0_addr_11_reg_2064[4:0] <= 5'b01011;
    weights2_0_addr_11_reg_2064_pp0_iter1_reg[4:0] <= 5'b01011;
    weights2_0_addr_11_reg_2064_pp0_iter2_reg[4:0] <= 5'b01011;
    weights2_1_addr_11_reg_2070[4:0] <= 5'b01011;
    weights2_1_addr_11_reg_2070_pp0_iter1_reg[4:0] <= 5'b01011;
    weights2_1_addr_11_reg_2070_pp0_iter2_reg[4:0] <= 5'b01011;
    weights2_0_addr_12_reg_2086[4:0] <= 5'b01100;
    weights2_0_addr_12_reg_2086_pp0_iter1_reg[4:0] <= 5'b01100;
    weights2_0_addr_12_reg_2086_pp0_iter2_reg[4:0] <= 5'b01100;
    weights2_1_addr_12_reg_2092[4:0] <= 5'b01100;
    weights2_1_addr_12_reg_2092_pp0_iter1_reg[4:0] <= 5'b01100;
    weights2_1_addr_12_reg_2092_pp0_iter2_reg[4:0] <= 5'b01100;
    weights2_0_addr_13_reg_2098[4:0] <= 5'b01101;
    weights2_0_addr_13_reg_2098_pp0_iter1_reg[4:0] <= 5'b01101;
    weights2_0_addr_13_reg_2098_pp0_iter2_reg[4:0] <= 5'b01101;
    weights2_1_addr_13_reg_2104[4:0] <= 5'b01101;
    weights2_1_addr_13_reg_2104_pp0_iter1_reg[4:0] <= 5'b01101;
    weights2_1_addr_13_reg_2104_pp0_iter2_reg[4:0] <= 5'b01101;
    weights2_0_addr_14_reg_2120[4:0] <= 5'b01110;
    weights2_0_addr_14_reg_2120_pp0_iter1_reg[4:0] <= 5'b01110;
    weights2_0_addr_14_reg_2120_pp0_iter2_reg[4:0] <= 5'b01110;
    weights2_1_addr_14_reg_2126[4:0] <= 5'b01110;
    weights2_1_addr_14_reg_2126_pp0_iter1_reg[4:0] <= 5'b01110;
    weights2_1_addr_14_reg_2126_pp0_iter2_reg[4:0] <= 5'b01110;
    weights2_0_addr_15_reg_2132[4:0] <= 5'b01111;
    weights2_0_addr_15_reg_2132_pp0_iter1_reg[4:0] <= 5'b01111;
    weights2_0_addr_15_reg_2132_pp0_iter2_reg[4:0] <= 5'b01111;
    weights2_1_addr_15_reg_2138[4:0] <= 5'b01111;
    weights2_1_addr_15_reg_2138_pp0_iter1_reg[4:0] <= 5'b01111;
    weights2_1_addr_15_reg_2138_pp0_iter2_reg[4:0] <= 5'b01111;
    weights2_0_addr_16_reg_2164[4:0] <= 5'b10000;
    weights2_0_addr_16_reg_2164_pp0_iter1_reg[4:0] <= 5'b10000;
    weights2_0_addr_16_reg_2164_pp0_iter2_reg[4:0] <= 5'b10000;
    weights2_1_addr_16_reg_2170[4:0] <= 5'b10000;
    weights2_1_addr_16_reg_2170_pp0_iter1_reg[4:0] <= 5'b10000;
    weights2_1_addr_16_reg_2170_pp0_iter2_reg[4:0] <= 5'b10000;
    weights2_0_addr_17_reg_2176[4:0] <= 5'b10001;
    weights2_0_addr_17_reg_2176_pp0_iter1_reg[4:0] <= 5'b10001;
    weights2_0_addr_17_reg_2176_pp0_iter2_reg[4:0] <= 5'b10001;
    weights2_1_addr_17_reg_2182[4:0] <= 5'b10001;
    weights2_1_addr_17_reg_2182_pp0_iter1_reg[4:0] <= 5'b10001;
    weights2_1_addr_17_reg_2182_pp0_iter2_reg[4:0] <= 5'b10001;
    weights2_0_addr_18_reg_2208[4:0] <= 5'b10010;
    weights2_0_addr_18_reg_2208_pp0_iter1_reg[4:0] <= 5'b10010;
    weights2_0_addr_18_reg_2208_pp0_iter2_reg[4:0] <= 5'b10010;
    weights2_1_addr_18_reg_2214[4:0] <= 5'b10010;
    weights2_1_addr_18_reg_2214_pp0_iter1_reg[4:0] <= 5'b10010;
    weights2_1_addr_18_reg_2214_pp0_iter2_reg[4:0] <= 5'b10010;
    weights2_0_addr_19_reg_2220[4:0] <= 5'b10011;
    weights2_0_addr_19_reg_2220_pp0_iter1_reg[4:0] <= 5'b10011;
    weights2_0_addr_19_reg_2220_pp0_iter2_reg[4:0] <= 5'b10011;
    weights2_1_addr_19_reg_2226[4:0] <= 5'b10011;
    weights2_1_addr_19_reg_2226_pp0_iter1_reg[4:0] <= 5'b10011;
    weights2_1_addr_19_reg_2226_pp0_iter2_reg[4:0] <= 5'b10011;
    weights2_0_addr_20_reg_2252[4:0] <= 5'b10100;
    weights2_0_addr_20_reg_2252_pp0_iter1_reg[4:0] <= 5'b10100;
    weights2_0_addr_20_reg_2252_pp0_iter2_reg[4:0] <= 5'b10100;
    weights2_1_addr_20_reg_2258[4:0] <= 5'b10100;
    weights2_1_addr_20_reg_2258_pp0_iter1_reg[4:0] <= 5'b10100;
    weights2_1_addr_20_reg_2258_pp0_iter2_reg[4:0] <= 5'b10100;
    weights2_0_addr_21_reg_2264[4:0] <= 5'b10101;
    weights2_0_addr_21_reg_2264_pp0_iter1_reg[4:0] <= 5'b10101;
    weights2_0_addr_21_reg_2264_pp0_iter2_reg[4:0] <= 5'b10101;
    weights2_1_addr_21_reg_2270[4:0] <= 5'b10101;
    weights2_1_addr_21_reg_2270_pp0_iter1_reg[4:0] <= 5'b10101;
    weights2_1_addr_21_reg_2270_pp0_iter2_reg[4:0] <= 5'b10101;
    weights2_0_addr_22_reg_2296[4:0] <= 5'b10110;
    weights2_0_addr_22_reg_2296_pp0_iter1_reg[4:0] <= 5'b10110;
    weights2_0_addr_22_reg_2296_pp0_iter2_reg[4:0] <= 5'b10110;
    weights2_1_addr_22_reg_2302[4:0] <= 5'b10110;
    weights2_1_addr_22_reg_2302_pp0_iter1_reg[4:0] <= 5'b10110;
    weights2_1_addr_22_reg_2302_pp0_iter2_reg[4:0] <= 5'b10110;
    weights2_0_addr_23_reg_2308[4:0] <= 5'b10111;
    weights2_0_addr_23_reg_2308_pp0_iter1_reg[4:0] <= 5'b10111;
    weights2_0_addr_23_reg_2308_pp0_iter2_reg[4:0] <= 5'b10111;
    weights2_1_addr_23_reg_2314[4:0] <= 5'b10111;
    weights2_1_addr_23_reg_2314_pp0_iter1_reg[4:0] <= 5'b10111;
    weights2_1_addr_23_reg_2314_pp0_iter2_reg[4:0] <= 5'b10111;
    weights2_0_addr_24_reg_2340[4:0] <= 5'b11000;
    weights2_0_addr_24_reg_2340_pp0_iter1_reg[4:0] <= 5'b11000;
    weights2_0_addr_24_reg_2340_pp0_iter2_reg[4:0] <= 5'b11000;
    weights2_1_addr_24_reg_2346[4:0] <= 5'b11000;
    weights2_1_addr_24_reg_2346_pp0_iter1_reg[4:0] <= 5'b11000;
    weights2_1_addr_24_reg_2346_pp0_iter2_reg[4:0] <= 5'b11000;
    weights2_0_addr_25_reg_2352[4:0] <= 5'b11001;
    weights2_0_addr_25_reg_2352_pp0_iter1_reg[4:0] <= 5'b11001;
    weights2_0_addr_25_reg_2352_pp0_iter2_reg[4:0] <= 5'b11001;
    weights2_1_addr_25_reg_2358[4:0] <= 5'b11001;
    weights2_1_addr_25_reg_2358_pp0_iter1_reg[4:0] <= 5'b11001;
    weights2_1_addr_25_reg_2358_pp0_iter2_reg[4:0] <= 5'b11001;
    weights2_0_addr_26_reg_2384[4:0] <= 5'b11010;
    weights2_0_addr_26_reg_2384_pp0_iter1_reg[4:0] <= 5'b11010;
    weights2_0_addr_26_reg_2384_pp0_iter2_reg[4:0] <= 5'b11010;
    weights2_1_addr_26_reg_2390[4:0] <= 5'b11010;
    weights2_1_addr_26_reg_2390_pp0_iter1_reg[4:0] <= 5'b11010;
    weights2_1_addr_26_reg_2390_pp0_iter2_reg[4:0] <= 5'b11010;
    weights2_0_addr_27_reg_2396[4:0] <= 5'b11011;
    weights2_0_addr_27_reg_2396_pp0_iter1_reg[4:0] <= 5'b11011;
    weights2_0_addr_27_reg_2396_pp0_iter2_reg[4:0] <= 5'b11011;
    weights2_1_addr_27_reg_2402[4:0] <= 5'b11011;
    weights2_1_addr_27_reg_2402_pp0_iter1_reg[4:0] <= 5'b11011;
    weights2_1_addr_27_reg_2402_pp0_iter2_reg[4:0] <= 5'b11011;
    weights2_0_addr_28_reg_2428[4:0] <= 5'b11100;
    weights2_0_addr_28_reg_2428_pp0_iter1_reg[4:0] <= 5'b11100;
    weights2_0_addr_28_reg_2428_pp0_iter2_reg[4:0] <= 5'b11100;
    weights2_1_addr_28_reg_2434[4:0] <= 5'b11100;
    weights2_1_addr_28_reg_2434_pp0_iter1_reg[4:0] <= 5'b11100;
    weights2_1_addr_28_reg_2434_pp0_iter2_reg[4:0] <= 5'b11100;
    weights2_0_addr_29_reg_2440[4:0] <= 5'b11101;
    weights2_0_addr_29_reg_2440_pp0_iter1_reg[4:0] <= 5'b11101;
    weights2_0_addr_29_reg_2440_pp0_iter2_reg[4:0] <= 5'b11101;
    weights2_1_addr_29_reg_2445[4:0] <= 5'b11101;
    weights2_1_addr_29_reg_2445_pp0_iter1_reg[4:0] <= 5'b11101;
    weights2_1_addr_29_reg_2445_pp0_iter2_reg[4:0] <= 5'b11101;
    weights2_0_addr_30_reg_2470[4:0] <= 5'b11110;
    weights2_0_addr_30_reg_2470_pp0_iter1_reg[4:0] <= 5'b11110;
    weights2_0_addr_30_reg_2470_pp0_iter2_reg[4:0] <= 5'b11110;
    weights2_1_addr_30_reg_2476[4:0] <= 5'b11110;
    weights2_1_addr_30_reg_2476_pp0_iter1_reg[4:0] <= 5'b11110;
    weights2_1_addr_30_reg_2476_pp0_iter2_reg[4:0] <= 5'b11110;
    weights2_0_addr_31_reg_2482[4:0] <= 5'b11111;
    weights2_0_addr_31_reg_2482_pp0_iter1_reg[4:0] <= 5'b11111;
    weights2_0_addr_31_reg_2482_pp0_iter2_reg[4:0] <= 5'b11111;
    weights2_1_addr_31_reg_2487[4:0] <= 5'b11111;
    weights2_1_addr_31_reg_2487_pp0_iter1_reg[4:0] <= 5'b11111;
    weights2_1_addr_31_reg_2487_pp0_iter2_reg[4:0] <= 5'b11111;
end
endmodule 
