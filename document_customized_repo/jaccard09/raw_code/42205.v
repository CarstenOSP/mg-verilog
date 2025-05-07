module backprop_update_weights_37_38_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,norm_84); 
parameter    ap_ST_fsm_pp0_stage0 = 24'd1;
parameter    ap_ST_fsm_pp0_stage1 = 24'd2;
parameter    ap_ST_fsm_pp0_stage2 = 24'd4;
parameter    ap_ST_fsm_pp0_stage3 = 24'd8;
parameter    ap_ST_fsm_pp0_stage4 = 24'd16;
parameter    ap_ST_fsm_pp0_stage5 = 24'd32;
parameter    ap_ST_fsm_pp0_stage6 = 24'd64;
parameter    ap_ST_fsm_pp0_stage7 = 24'd128;
parameter    ap_ST_fsm_pp0_stage8 = 24'd256;
parameter    ap_ST_fsm_pp0_stage9 = 24'd512;
parameter    ap_ST_fsm_pp0_stage10 = 24'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 24'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 24'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 24'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 24'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 24'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 24'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 24'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 24'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 24'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 24'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 24'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 24'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 24'd8388608;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
input  [63:0] norm_84;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] tmp_reg_1752;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_548;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_552;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_556;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_561;
reg   [63:0] reg_566;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] reg_571;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_576;
reg   [63:0] reg_581;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_586;
reg   [63:0] reg_591;
reg   [63:0] reg_595;
reg   [63:0] reg_599;
wire   [63:0] grp_fu_540_p2;
reg   [63:0] reg_604;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_block_pp0_stage23_11001;
wire   [63:0] grp_fu_544_p2;
reg   [63:0] reg_608;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_4_reg_1747;
reg   [6:0] weights3_0_addr_reg_1756;
reg   [6:0] weights3_0_addr_reg_1756_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_reg_1756_pp0_iter2_reg;
wire   [7:0] empty_fu_715_p2;
reg   [7:0] empty_reg_1761;
wire   [6:0] lshr_ln194_1_fu_721_p4;
reg   [6:0] lshr_ln194_1_reg_1780;
reg   [4:0] tmp_16_reg_1785;
reg   [3:0] tmp_17_reg_1790;
reg   [6:0] weights3_1_addr_reg_1795;
reg   [6:0] weights3_1_addr_reg_1795_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_reg_1795_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_24_reg_1800;
reg   [6:0] weights3_0_addr_24_reg_1800_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_24_reg_1800_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_24_reg_1806;
reg   [6:0] weights3_1_addr_24_reg_1806_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_24_reg_1806_pp0_iter2_reg;
wire   [6:0] or_ln194_1_fu_766_p3;
reg   [6:0] or_ln194_1_reg_1812;
reg   [6:0] lshr_ln194_3_reg_1828;
reg   [6:0] weights3_1_addr_25_reg_1834;
reg   [6:0] weights3_1_addr_25_reg_1834_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_25_reg_1834_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_26_reg_1839;
reg   [6:0] weights3_0_addr_26_reg_1839_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_26_reg_1839_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_26_reg_1844;
reg   [6:0] weights3_1_addr_26_reg_1844_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_26_reg_1844_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_30_reg_1850;
reg   [6:0] weights3_0_addr_30_reg_1850_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_30_reg_1850_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_fu_806_p1;
wire   [63:0] bitcast_ln194_1_fu_855_p1;
reg   [6:0] weights3_0_addr_25_reg_1865;
reg   [6:0] weights3_0_addr_25_reg_1865_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_25_reg_1865_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_27_reg_1870;
reg   [6:0] weights3_0_addr_27_reg_1870_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_27_reg_1870_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_27_reg_1876;
reg   [6:0] weights3_1_addr_27_reg_1876_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_27_reg_1876_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_28_reg_1881;
reg   [6:0] weights3_1_addr_28_reg_1881_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_28_reg_1881_pp0_iter2_reg;
wire   [6:0] lshr_ln194_5_fu_896_p4;
reg   [6:0] lshr_ln194_5_reg_1887;
wire   [63:0] bitcast_ln194_2_fu_911_p1;
wire   [63:0] bitcast_ln194_3_fu_916_p1;
reg   [6:0] weights3_0_addr_28_reg_1902;
reg   [6:0] weights3_0_addr_28_reg_1902_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_28_reg_1902_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_29_reg_1907;
reg   [6:0] weights3_0_addr_29_reg_1907_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_29_reg_1907_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_29_reg_1913;
reg   [6:0] weights3_1_addr_29_reg_1913_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_29_reg_1913_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_30_reg_1918;
reg   [6:0] weights3_1_addr_30_reg_1918_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_30_reg_1918_pp0_iter2_reg;
reg   [6:0] lshr_ln194_7_reg_1923;
wire   [63:0] bitcast_ln194_6_fu_977_p1;
wire   [63:0] bitcast_ln194_7_fu_982_p1;
reg   [6:0] weights3_0_addr_31_reg_1939;
reg   [6:0] weights3_0_addr_31_reg_1939_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_31_reg_1939_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_31_reg_1944;
reg   [6:0] weights3_1_addr_31_reg_1944_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_31_reg_1944_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_32_reg_1949;
reg   [6:0] weights3_0_addr_32_reg_1949_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_32_reg_1949_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_32_reg_1955;
reg   [6:0] weights3_1_addr_32_reg_1955_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_32_reg_1955_pp0_iter2_reg;
wire   [63:0] bitcast_ln194_4_fu_1031_p1;
wire   [63:0] bitcast_ln194_14_fu_1036_p1;
reg   [6:0] weights3_0_addr_33_reg_1971;
reg   [6:0] weights3_0_addr_33_reg_1971_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_33_reg_1971_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_33_reg_1976;
reg   [6:0] weights3_1_addr_33_reg_1976_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_33_reg_1976_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_34_reg_1981;
reg   [6:0] weights3_0_addr_34_reg_1981_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_34_reg_1981_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_34_reg_1981_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_34_reg_1987;
reg   [6:0] weights3_1_addr_34_reg_1987_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_34_reg_1987_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_34_reg_1987_pp0_iter3_reg;
wire   [6:0] lshr_ln194_9_fu_1067_p4;
reg   [6:0] lshr_ln194_9_reg_1993;
wire   [63:0] bitcast_ln194_5_fu_1082_p1;
wire   [63:0] bitcast_ln194_8_fu_1087_p1;
reg   [63:0] weights3_0_load_34_reg_2008;
reg   [63:0] weights3_1_load_34_reg_2013;
reg   [6:0] weights3_0_addr_35_reg_2018;
reg   [6:0] weights3_0_addr_35_reg_2018_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_35_reg_2018_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_35_reg_2018_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_35_reg_2024;
reg   [6:0] weights3_1_addr_35_reg_2024_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_35_reg_2024_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_35_reg_2024_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_36_reg_2030;
reg   [6:0] weights3_0_addr_36_reg_2030_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_36_reg_2030_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_36_reg_2030_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_36_reg_2035;
reg   [6:0] weights3_1_addr_36_reg_2035_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_36_reg_2035_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_36_reg_2035_pp0_iter3_reg;
reg   [6:0] lshr_ln194_10_reg_2040;
wire   [63:0] bitcast_ln194_9_fu_1148_p1;
wire   [63:0] bitcast_ln194_10_fu_1153_p1;
reg   [63:0] weights3_0_load_36_reg_2056;
reg   [63:0] weights3_1_load_36_reg_2061;
reg   [6:0] weights3_0_addr_37_reg_2066;
reg   [6:0] weights3_0_addr_37_reg_2066_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_37_reg_2066_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_37_reg_2066_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_37_reg_2072;
reg   [6:0] weights3_1_addr_37_reg_2072_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_37_reg_2072_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_37_reg_2072_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_38_reg_2078;
reg   [6:0] weights3_0_addr_38_reg_2078_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_38_reg_2078_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_38_reg_2078_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_38_reg_2083;
reg   [6:0] weights3_1_addr_38_reg_2083_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_38_reg_2083_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_38_reg_2083_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_11_fu_1202_p1;
wire   [63:0] bitcast_ln194_12_fu_1207_p1;
reg   [63:0] weights3_0_load_38_reg_2098;
reg   [63:0] weights3_1_load_38_reg_2103;
reg   [6:0] weights3_0_addr_39_reg_2108;
reg   [6:0] weights3_0_addr_39_reg_2108_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_39_reg_2108_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_39_reg_2108_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_39_reg_2114;
reg   [6:0] weights3_1_addr_39_reg_2114_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_39_reg_2114_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_39_reg_2114_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_40_reg_2119;
reg   [6:0] weights3_0_addr_40_reg_2119_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_40_reg_2119_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_40_reg_2119_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_40_reg_2124;
reg   [6:0] weights3_1_addr_40_reg_2124_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_40_reg_2124_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_40_reg_2124_pp0_iter3_reg;
wire   [6:0] lshr_ln194_12_fu_1238_p4;
reg   [6:0] lshr_ln194_12_reg_2129;
wire   [63:0] bitcast_ln194_13_fu_1253_p1;
wire   [63:0] bitcast_ln194_15_fu_1258_p1;
reg   [63:0] weights3_0_load_39_reg_2144;
reg   [63:0] weights3_0_load_40_reg_2149;
reg   [6:0] weights3_0_addr_41_reg_2154;
reg   [6:0] weights3_0_addr_41_reg_2154_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_41_reg_2154_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_41_reg_2154_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_41_reg_2160;
reg   [6:0] weights3_1_addr_41_reg_2160_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_41_reg_2160_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_41_reg_2160_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_42_reg_2166;
reg   [6:0] weights3_0_addr_42_reg_2166_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_42_reg_2166_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_42_reg_2166_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_42_reg_2172;
reg   [6:0] weights3_1_addr_42_reg_2172_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_42_reg_2172_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_42_reg_2172_pp0_iter3_reg;
reg   [6:0] lshr_ln194_14_reg_2177;
reg   [6:0] lshr_ln194_15_reg_2183;
wire   [63:0] bitcast_ln194_16_fu_1334_p1;
wire   [63:0] bitcast_ln194_17_fu_1339_p1;
reg   [63:0] weights3_0_load_42_reg_2198;
reg   [63:0] weights3_1_load_42_reg_2203;
reg   [6:0] weights3_0_addr_43_reg_2208;
reg   [6:0] weights3_0_addr_43_reg_2208_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_43_reg_2208_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_43_reg_2208_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_43_reg_2214;
reg   [6:0] weights3_1_addr_43_reg_2214_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_43_reg_2214_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_43_reg_2214_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_44_reg_2220;
reg   [6:0] weights3_0_addr_44_reg_2220_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_44_reg_2220_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_44_reg_2220_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_44_reg_2225;
reg   [6:0] weights3_1_addr_44_reg_2225_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_44_reg_2225_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_44_reg_2225_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_18_fu_1372_p1;
wire   [63:0] bitcast_ln194_19_fu_1377_p1;
reg   [63:0] weights3_0_load_44_reg_2240;
reg   [63:0] weights3_1_load_44_reg_2245;
reg   [6:0] weights3_0_addr_45_reg_2250;
reg   [6:0] weights3_0_addr_45_reg_2250_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_45_reg_2250_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_45_reg_2250_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_45_reg_2256;
reg   [6:0] weights3_1_addr_45_reg_2256_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_45_reg_2256_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_45_reg_2256_pp0_iter3_reg;
reg   [6:0] weights3_0_addr_46_reg_2262;
reg   [6:0] weights3_0_addr_46_reg_2262_pp0_iter1_reg;
reg   [6:0] weights3_0_addr_46_reg_2262_pp0_iter2_reg;
reg   [6:0] weights3_0_addr_46_reg_2262_pp0_iter3_reg;
reg   [6:0] weights3_1_addr_46_reg_2267;
reg   [6:0] weights3_1_addr_46_reg_2267_pp0_iter1_reg;
reg   [6:0] weights3_1_addr_46_reg_2267_pp0_iter2_reg;
reg   [6:0] weights3_1_addr_46_reg_2267_pp0_iter3_reg;
wire   [63:0] bitcast_ln194_20_fu_1382_p1;
wire   [63:0] bitcast_ln194_21_fu_1387_p1;
reg   [63:0] weights3_0_load_46_reg_2282;
reg   [63:0] weights3_1_load_46_reg_2287;
wire   [63:0] bitcast_ln194_22_fu_1392_p1;
wire   [63:0] bitcast_ln194_23_fu_1396_p1;
wire   [63:0] bitcast_ln194_24_fu_1400_p1;
wire   [63:0] bitcast_ln194_25_fu_1405_p1;
wire   [63:0] bitcast_ln194_26_fu_1410_p1;
wire   [63:0] bitcast_ln194_27_fu_1414_p1;
wire   [63:0] bitcast_ln194_28_fu_1418_p1;
wire   [63:0] bitcast_ln194_29_fu_1423_p1;
wire   [63:0] bitcast_ln194_30_fu_1428_p1;
wire   [63:0] bitcast_ln194_31_fu_1432_p1;
wire   [63:0] bitcast_ln194_32_fu_1436_p1;
wire   [63:0] bitcast_ln194_33_fu_1440_p1;
wire   [63:0] bitcast_ln194_34_fu_1445_p1;
wire   [63:0] bitcast_ln194_35_fu_1449_p1;
wire   [63:0] bitcast_ln194_36_fu_1454_p1;
wire   [63:0] bitcast_ln194_37_fu_1459_p1;
wire   [63:0] bitcast_ln194_38_fu_1464_p1;
wire   [63:0] bitcast_ln194_39_fu_1468_p1;
wire   [63:0] bitcast_ln194_40_fu_1472_p1;
wire   [63:0] bitcast_ln194_41_fu_1477_p1;
wire   [63:0] bitcast_ln194_42_fu_1482_p1;
wire   [63:0] bitcast_ln194_43_fu_1486_p1;
wire   [63:0] bitcast_ln194_44_fu_1500_p1;
wire   [63:0] bitcast_ln194_45_fu_1505_p1;
wire   [63:0] bitcast_ln194_46_fu_1510_p1;
wire   [63:0] bitcast_ln194_47_fu_1514_p1;
reg   [63:0] div213_8_reg_2422;
reg   [63:0] div213_8_1_reg_2427;
reg   [63:0] div213_8_2_reg_2432;
reg   [63:0] div213_9_reg_2437;
reg   [63:0] div213_9_1_reg_2442;
reg   [63:0] div213_9_2_reg_2447;
reg   [63:0] div213_10_reg_2452;
reg   [63:0] div213_10_1_reg_2457;
reg   [63:0] div213_10_2_reg_2462;
reg   [63:0] div213_11_reg_2467;
reg   [63:0] div213_11_1_reg_2472;
reg   [63:0] div213_11_2_reg_2477;
reg   [63:0] div213_12_reg_2482;
reg   [63:0] div213_12_1_reg_2487;
reg   [63:0] div213_12_2_reg_2492;
reg   [63:0] div213_13_reg_2497;
reg   [63:0] div213_13_1_reg_2502;
reg   [63:0] div213_13_2_reg_2507;
reg   [63:0] div213_14_reg_2512;
reg   [63:0] div213_14_1_reg_2517;
reg   [63:0] div213_14_2_reg_2522;
reg   [63:0] div213_15_reg_2527;
reg   [63:0] div213_15_1_reg_2532;
reg   [63:0] div213_15_2_reg_2537;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln194_fu_666_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln192_fu_690_p1;
wire   [63:0] zext_ln194_1_fu_731_p1;
wire   [63:0] zext_ln194_3_fu_761_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln194_4_fu_773_p1;
wire   [63:0] or_ln194_2_cast_fu_801_p1;
wire   [63:0] zext_ln194_2_fu_826_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] add_ln194_2_cast_fu_836_p1;
wire   [63:0] zext_ln194_5_fu_841_p1;
wire   [63:0] zext_ln194_7_fu_850_p1;
wire   [63:0] zext_ln194_6_fu_875_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln194_8_fu_885_p1;
wire   [63:0] zext_ln194_9_fu_906_p1;
wire   [63:0] zext_ln194_10_fu_936_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln194_11_fu_946_p1;
wire   [63:0] zext_ln194_12_fu_956_p1;
wire   [63:0] add_ln194_9_cast_fu_992_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln194_13_fu_997_p1;
wire   [63:0] zext_ln194_14_fu_1016_p1;
wire   [63:0] zext_ln194_15_fu_1026_p1;
wire   [63:0] zext_ln194_16_fu_1046_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] add_ln194_13_cast_fu_1057_p1;
wire   [63:0] zext_ln194_17_fu_1077_p1;
wire   [63:0] zext_ln194_18_fu_1107_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln194_19_fu_1117_p1;
wire   [63:0] zext_ln194_20_fu_1127_p1;
wire   [63:0] add_ln194_17_cast_fu_1163_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln194_21_fu_1168_p1;
wire   [63:0] zext_ln194_22_fu_1187_p1;
wire   [63:0] zext_ln194_23_fu_1197_p1;
wire   [63:0] zext_ln194_24_fu_1217_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] add_ln194_21_cast_fu_1228_p1;
wire   [63:0] zext_ln194_25_fu_1248_p1;
wire   [63:0] zext_ln194_26_fu_1278_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln194_27_fu_1288_p1;
wire   [63:0] zext_ln194_28_fu_1298_p1;
wire   [63:0] add_ln194_25_cast_fu_1349_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln194_29_fu_1354_p1;
wire   [63:0] zext_ln194_30_fu_1358_p1;
wire   [63:0] zext_ln194_31_fu_1367_p1;
reg   [6:0] i_fu_128;
wire   [6:0] add_ln192_fu_1490_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_0_ce1_local;
reg   [6:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [6:0] weights3_0_address0_local;
reg    weights3_0_we1_local;
reg   [63:0] weights3_0_d1_local;
wire   [63:0] bitcast_ln194_48_fu_1518_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] bitcast_ln194_49_fu_1528_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] bitcast_ln194_51_fu_1538_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] bitcast_ln194_50_fu_1548_p1;
wire    ap_block_pp0_stage16;
reg    weights3_0_we0_local;
reg   [63:0] weights3_0_d0_local;
wire   [63:0] bitcast_ln194_55_fu_1553_p1;
wire   [63:0] bitcast_ln194_52_fu_1558_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] bitcast_ln194_53_fu_1568_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] bitcast_ln194_54_fu_1578_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln194_56_fu_1598_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln194_57_fu_1608_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] bitcast_ln194_58_fu_1618_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln194_59_fu_1628_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] bitcast_ln194_60_fu_1633_p1;
wire   [63:0] bitcast_ln194_61_fu_1646_p1;
wire   [63:0] bitcast_ln194_62_fu_1654_p1;
wire   [63:0] bitcast_ln194_63_fu_1662_p1;
wire   [63:0] bitcast_ln194_64_fu_1678_p1;
wire   [63:0] bitcast_ln194_65_fu_1686_p1;
wire   [63:0] bitcast_ln194_66_fu_1694_p1;
wire   [63:0] bitcast_ln194_67_fu_1702_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] bitcast_ln194_68_fu_1706_p1;
wire   [63:0] bitcast_ln194_69_fu_1710_p1;
wire   [63:0] bitcast_ln194_70_fu_1718_p1;
wire   [63:0] bitcast_ln194_71_fu_1726_p1;
reg    weights3_1_ce1_local;
reg   [6:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [6:0] weights3_1_address0_local;
reg    weights3_1_we1_local;
reg   [63:0] weights3_1_d1_local;
wire   [63:0] bitcast_ln194_72_fu_1523_p1;
wire   [63:0] bitcast_ln194_73_fu_1533_p1;
wire   [63:0] bitcast_ln194_75_fu_1543_p1;
wire   [63:0] bitcast_ln194_74_fu_1563_p1;
wire   [63:0] bitcast_ln194_76_fu_1573_p1;
wire   [63:0] bitcast_ln194_77_fu_1583_p1;
wire   [63:0] bitcast_ln194_78_fu_1588_p1;
reg    weights3_1_we0_local;
reg   [63:0] weights3_1_d0_local;
wire   [63:0] bitcast_ln194_79_fu_1593_p1;
wire   [63:0] bitcast_ln194_80_fu_1603_p1;
wire   [63:0] bitcast_ln194_81_fu_1613_p1;
wire   [63:0] bitcast_ln194_82_fu_1623_p1;
wire   [63:0] bitcast_ln194_83_fu_1637_p1;
wire   [63:0] bitcast_ln194_84_fu_1642_p1;
wire   [63:0] bitcast_ln194_85_fu_1650_p1;
wire   [63:0] bitcast_ln194_86_fu_1658_p1;
wire   [63:0] bitcast_ln194_87_fu_1666_p1;
wire   [63:0] bitcast_ln194_88_fu_1670_p1;
wire   [63:0] bitcast_ln194_89_fu_1674_p1;
wire   [63:0] bitcast_ln194_90_fu_1682_p1;
wire   [63:0] bitcast_ln194_91_fu_1690_p1;
wire   [63:0] bitcast_ln194_92_fu_1698_p1;
wire   [63:0] bitcast_ln194_93_fu_1714_p1;
wire   [63:0] bitcast_ln194_94_fu_1722_p1;
wire   [63:0] bitcast_ln194_95_fu_1730_p1;
reg   [63:0] grp_fu_540_p0;
reg   [63:0] grp_fu_544_p0;
wire   [5:0] lshr_ln7_fu_628_p4;
wire   [4:0] tmp_10_fu_642_p4;
wire   [6:0] p_shl1_fu_652_p3;
wire   [6:0] zext_ln194_32_fu_638_p1;
wire   [6:0] sub_ln194_fu_660_p2;
wire   [5:0] tmp_s_fu_672_p4;
wire   [6:0] or_ln5_fu_682_p3;
wire   [5:0] or_ln6_fu_695_p3;
wire   [7:0] p_shl_fu_707_p3;
wire   [7:0] or_ln192_cast_fu_703_p1;
wire   [6:0] add_ln194_1_fu_756_p2;
wire   [7:0] empty_45_fu_779_p2;
wire   [6:0] or_ln194_2_fu_794_p3;
wire   [7:0] add_ln194_fu_811_p2;
wire   [6:0] lshr_ln194_2_fu_816_p4;
wire   [6:0] add_ln194_2_fu_831_p2;
wire   [6:0] add_ln194_4_fu_845_p2;
wire   [7:0] add_ln194_3_fu_860_p2;
wire   [6:0] lshr_ln194_4_fu_865_p4;
wire   [6:0] add_ln194_5_fu_880_p2;
wire   [7:0] empty_46_fu_891_p2;
wire   [7:0] add_ln194_6_fu_921_p2;
wire   [6:0] lshr_ln194_6_fu_926_p4;
wire   [6:0] add_ln194_7_fu_941_p2;
wire   [6:0] add_ln194_8_fu_951_p2;
wire   [7:0] empty_47_fu_962_p2;
wire   [6:0] add_ln194_9_fu_987_p2;
wire   [7:0] add_ln194_10_fu_1001_p2;
wire   [6:0] lshr_ln194_8_fu_1006_p4;
wire   [6:0] add_ln194_11_fu_1021_p2;
wire   [6:0] add_ln194_12_fu_1041_p2;
wire   [6:0] add_ln194_13_fu_1052_p2;
wire   [7:0] empty_48_fu_1062_p2;
wire   [7:0] add_ln194_14_fu_1092_p2;
wire   [6:0] lshr_ln194_s_fu_1097_p4;
wire   [6:0] add_ln194_15_fu_1112_p2;
wire   [6:0] add_ln194_16_fu_1122_p2;
wire   [7:0] empty_49_fu_1133_p2;
wire   [6:0] add_ln194_17_fu_1158_p2;
wire   [7:0] add_ln194_18_fu_1172_p2;
wire   [6:0] lshr_ln194_11_fu_1177_p4;
wire   [6:0] add_ln194_19_fu_1192_p2;
wire   [6:0] add_ln194_20_fu_1212_p2;
wire   [6:0] add_ln194_21_fu_1223_p2;
wire   [7:0] empty_50_fu_1233_p2;
wire   [7:0] add_ln194_22_fu_1263_p2;
wire   [6:0] lshr_ln194_13_fu_1268_p4;
wire   [6:0] add_ln194_23_fu_1283_p2;
wire   [6:0] add_ln194_24_fu_1293_p2;
wire   [7:0] empty_51_fu_1304_p2;
wire   [7:0] add_ln194_26_fu_1319_p2;
wire   [6:0] add_ln194_25_fu_1344_p2;
wire   [6:0] add_ln194_27_fu_1362_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [23:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_128 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U282(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_540_p0),.din1(norm_84),.ce(1'b1),.dout(grp_fu_540_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U283(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_544_p0),.din1(norm_84),.ce(1'b1),.dout(grp_fu_544_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage23),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage23)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_128 <= 7'd0;
    end else if (((tmp_reg_1752 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        i_fu_128 <= add_ln192_fu_1490_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_556 <= weights3_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_556 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_561 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_561 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_566 <= weights3_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_566 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        reg_571 <= weights3_0_q1;
    end else if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_571 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_576 <= weights3_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reg_576 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_581 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_581 <= weights3_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            reg_586 <= weights3_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            reg_586 <= weights3_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            reg_599 <= weights3_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            reg_599 <= weights3_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        div213_10_1_reg_2457 <= grp_fu_544_p2;
        div213_10_reg_2452 <= grp_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        div213_10_2_reg_2462 <= grp_fu_540_p2;
        div213_11_reg_2467 <= grp_fu_544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        div213_11_1_reg_2472 <= grp_fu_540_p2;
        div213_11_2_reg_2477 <= grp_fu_544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        div213_12_1_reg_2487 <= grp_fu_544_p2;
        div213_12_reg_2482 <= grp_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        div213_12_2_reg_2492 <= grp_fu_540_p2;
        div213_13_reg_2497 <= grp_fu_544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        div213_13_1_reg_2502 <= grp_fu_540_p2;
        div213_13_2_reg_2507 <= grp_fu_544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        div213_14_1_reg_2517 <= grp_fu_544_p2;
        div213_14_reg_2512 <= grp_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        div213_14_2_reg_2522 <= grp_fu_540_p2;
        div213_15_reg_2527 <= grp_fu_544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        div213_15_1_reg_2532 <= grp_fu_540_p2;
        div213_15_2_reg_2537 <= grp_fu_544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        div213_8_1_reg_2427 <= grp_fu_544_p2;
        div213_8_reg_2422 <= grp_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div213_8_2_reg_2432 <= grp_fu_540_p2;
        div213_9_reg_2437 <= grp_fu_544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div213_9_1_reg_2442 <= grp_fu_540_p2;
        div213_9_2_reg_2447 <= grp_fu_544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1761[7 : 1] <= empty_fu_715_p2[7 : 1];
        i_4_reg_1747 <= ap_sig_allocacmp_i_4;
        lshr_ln194_1_reg_1780 <= {{empty_fu_715_p2[7:1]}};
        tmp_16_reg_1785 <= {{sub_ln194_fu_660_p2[6:2]}};
        tmp_17_reg_1790 <= {{sub_ln194_fu_660_p2[6:3]}};
        tmp_reg_1752 <= ap_sig_allocacmp_i_4[32'd6];
        weights3_0_addr_24_reg_1800[6 : 1] <= zext_ln192_fu_690_p1[6 : 1];
        weights3_0_addr_24_reg_1800_pp0_iter1_reg[6 : 1] <= weights3_0_addr_24_reg_1800[6 : 1];
        weights3_0_addr_24_reg_1800_pp0_iter2_reg[6 : 1] <= weights3_0_addr_24_reg_1800_pp0_iter1_reg[6 : 1];
        weights3_0_addr_reg_1756 <= zext_ln194_fu_666_p1;
        weights3_0_addr_reg_1756_pp0_iter1_reg <= weights3_0_addr_reg_1756;
        weights3_0_addr_reg_1756_pp0_iter2_reg <= weights3_0_addr_reg_1756_pp0_iter1_reg;
        weights3_1_addr_24_reg_1806 <= zext_ln194_1_fu_731_p1;
        weights3_1_addr_24_reg_1806_pp0_iter1_reg <= weights3_1_addr_24_reg_1806;
        weights3_1_addr_24_reg_1806_pp0_iter2_reg <= weights3_1_addr_24_reg_1806_pp0_iter1_reg;
        weights3_1_addr_reg_1795 <= zext_ln194_fu_666_p1;
        weights3_1_addr_reg_1795_pp0_iter1_reg <= weights3_1_addr_reg_1795;
        weights3_1_addr_reg_1795_pp0_iter2_reg <= weights3_1_addr_reg_1795_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        lshr_ln194_10_reg_2040 <= {{empty_49_fu_1133_p2[7:1]}};
        weights3_0_addr_37_reg_2066 <= zext_ln194_18_fu_1107_p1;
        weights3_0_addr_37_reg_2066_pp0_iter1_reg <= weights3_0_addr_37_reg_2066;
        weights3_0_addr_37_reg_2066_pp0_iter2_reg <= weights3_0_addr_37_reg_2066_pp0_iter1_reg;
        weights3_0_addr_37_reg_2066_pp0_iter3_reg <= weights3_0_addr_37_reg_2066_pp0_iter2_reg;
        weights3_0_addr_38_reg_2078[6 : 2] <= zext_ln194_20_fu_1127_p1[6 : 2];
        weights3_0_addr_38_reg_2078_pp0_iter1_reg[6 : 2] <= weights3_0_addr_38_reg_2078[6 : 2];
        weights3_0_addr_38_reg_2078_pp0_iter2_reg[6 : 2] <= weights3_0_addr_38_reg_2078_pp0_iter1_reg[6 : 2];
        weights3_0_addr_38_reg_2078_pp0_iter3_reg[6 : 2] <= weights3_0_addr_38_reg_2078_pp0_iter2_reg[6 : 2];
        weights3_1_addr_37_reg_2072 <= zext_ln194_19_fu_1117_p1;
        weights3_1_addr_37_reg_2072_pp0_iter1_reg <= weights3_1_addr_37_reg_2072;
        weights3_1_addr_37_reg_2072_pp0_iter2_reg <= weights3_1_addr_37_reg_2072_pp0_iter1_reg;
        weights3_1_addr_37_reg_2072_pp0_iter3_reg <= weights3_1_addr_37_reg_2072_pp0_iter2_reg;
        weights3_1_addr_38_reg_2083[6 : 2] <= zext_ln194_20_fu_1127_p1[6 : 2];
        weights3_1_addr_38_reg_2083_pp0_iter1_reg[6 : 2] <= weights3_1_addr_38_reg_2083[6 : 2];
        weights3_1_addr_38_reg_2083_pp0_iter2_reg[6 : 2] <= weights3_1_addr_38_reg_2083_pp0_iter1_reg[6 : 2];
        weights3_1_addr_38_reg_2083_pp0_iter3_reg[6 : 2] <= weights3_1_addr_38_reg_2083_pp0_iter2_reg[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        lshr_ln194_12_reg_2129 <= {{empty_50_fu_1233_p2[7:1]}};
        weights3_0_addr_41_reg_2154[6 : 2] <= zext_ln194_24_fu_1217_p1[6 : 2];
        weights3_0_addr_41_reg_2154_pp0_iter1_reg[6 : 2] <= weights3_0_addr_41_reg_2154[6 : 2];
        weights3_0_addr_41_reg_2154_pp0_iter2_reg[6 : 2] <= weights3_0_addr_41_reg_2154_pp0_iter1_reg[6 : 2];
        weights3_0_addr_41_reg_2154_pp0_iter3_reg[6 : 2] <= weights3_0_addr_41_reg_2154_pp0_iter2_reg[6 : 2];
        weights3_0_addr_42_reg_2166[6 : 2] <= add_ln194_21_cast_fu_1228_p1[6 : 2];
        weights3_0_addr_42_reg_2166_pp0_iter1_reg[6 : 2] <= weights3_0_addr_42_reg_2166[6 : 2];
        weights3_0_addr_42_reg_2166_pp0_iter2_reg[6 : 2] <= weights3_0_addr_42_reg_2166_pp0_iter1_reg[6 : 2];
        weights3_0_addr_42_reg_2166_pp0_iter3_reg[6 : 2] <= weights3_0_addr_42_reg_2166_pp0_iter2_reg[6 : 2];
        weights3_1_addr_41_reg_2160[6 : 2] <= zext_ln194_24_fu_1217_p1[6 : 2];
        weights3_1_addr_41_reg_2160_pp0_iter1_reg[6 : 2] <= weights3_1_addr_41_reg_2160[6 : 2];
        weights3_1_addr_41_reg_2160_pp0_iter2_reg[6 : 2] <= weights3_1_addr_41_reg_2160_pp0_iter1_reg[6 : 2];
        weights3_1_addr_41_reg_2160_pp0_iter3_reg[6 : 2] <= weights3_1_addr_41_reg_2160_pp0_iter2_reg[6 : 2];
        weights3_1_addr_42_reg_2172 <= zext_ln194_25_fu_1248_p1;
        weights3_1_addr_42_reg_2172_pp0_iter1_reg <= weights3_1_addr_42_reg_2172;
        weights3_1_addr_42_reg_2172_pp0_iter2_reg <= weights3_1_addr_42_reg_2172_pp0_iter1_reg;
        weights3_1_addr_42_reg_2172_pp0_iter3_reg <= weights3_1_addr_42_reg_2172_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        lshr_ln194_14_reg_2177 <= {{empty_51_fu_1304_p2[7:1]}};
        lshr_ln194_15_reg_2183 <= {{add_ln194_26_fu_1319_p2[7:1]}};
        weights3_0_addr_43_reg_2208 <= zext_ln194_26_fu_1278_p1;
        weights3_0_addr_43_reg_2208_pp0_iter1_reg <= weights3_0_addr_43_reg_2208;
        weights3_0_addr_43_reg_2208_pp0_iter2_reg <= weights3_0_addr_43_reg_2208_pp0_iter1_reg;
        weights3_0_addr_43_reg_2208_pp0_iter3_reg <= weights3_0_addr_43_reg_2208_pp0_iter2_reg;
        weights3_0_addr_44_reg_2220[6 : 2] <= zext_ln194_28_fu_1298_p1[6 : 2];
        weights3_0_addr_44_reg_2220_pp0_iter1_reg[6 : 2] <= weights3_0_addr_44_reg_2220[6 : 2];
        weights3_0_addr_44_reg_2220_pp0_iter2_reg[6 : 2] <= weights3_0_addr_44_reg_2220_pp0_iter1_reg[6 : 2];
        weights3_0_addr_44_reg_2220_pp0_iter3_reg[6 : 2] <= weights3_0_addr_44_reg_2220_pp0_iter2_reg[6 : 2];
        weights3_1_addr_43_reg_2214 <= zext_ln194_27_fu_1288_p1;
        weights3_1_addr_43_reg_2214_pp0_iter1_reg <= weights3_1_addr_43_reg_2214;
        weights3_1_addr_43_reg_2214_pp0_iter2_reg <= weights3_1_addr_43_reg_2214_pp0_iter1_reg;
        weights3_1_addr_43_reg_2214_pp0_iter3_reg <= weights3_1_addr_43_reg_2214_pp0_iter2_reg;
        weights3_1_addr_44_reg_2225[6 : 2] <= zext_ln194_28_fu_1298_p1[6 : 2];
        weights3_1_addr_44_reg_2225_pp0_iter1_reg[6 : 2] <= weights3_1_addr_44_reg_2225[6 : 2];
        weights3_1_addr_44_reg_2225_pp0_iter2_reg[6 : 2] <= weights3_1_addr_44_reg_2225_pp0_iter1_reg[6 : 2];
        weights3_1_addr_44_reg_2225_pp0_iter3_reg[6 : 2] <= weights3_1_addr_44_reg_2225_pp0_iter2_reg[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln194_3_reg_1828 <= {{empty_45_fu_779_p2[7:1]}};
        or_ln194_1_reg_1812[6 : 2] <= or_ln194_1_fu_766_p3[6 : 2];
        weights3_0_addr_26_reg_1839[6 : 2] <= zext_ln194_4_fu_773_p1[6 : 2];
        weights3_0_addr_26_reg_1839_pp0_iter1_reg[6 : 2] <= weights3_0_addr_26_reg_1839[6 : 2];
        weights3_0_addr_26_reg_1839_pp0_iter2_reg[6 : 2] <= weights3_0_addr_26_reg_1839_pp0_iter1_reg[6 : 2];
        weights3_0_addr_30_reg_1850[6 : 3] <= or_ln194_2_cast_fu_801_p1[6 : 3];
        weights3_0_addr_30_reg_1850_pp0_iter1_reg[6 : 3] <= weights3_0_addr_30_reg_1850[6 : 3];
        weights3_0_addr_30_reg_1850_pp0_iter2_reg[6 : 3] <= weights3_0_addr_30_reg_1850_pp0_iter1_reg[6 : 3];
        weights3_1_addr_25_reg_1834 <= zext_ln194_3_fu_761_p1;
        weights3_1_addr_25_reg_1834_pp0_iter1_reg <= weights3_1_addr_25_reg_1834;
        weights3_1_addr_25_reg_1834_pp0_iter2_reg <= weights3_1_addr_25_reg_1834_pp0_iter1_reg;
        weights3_1_addr_26_reg_1844[6 : 2] <= zext_ln194_4_fu_773_p1[6 : 2];
        weights3_1_addr_26_reg_1844_pp0_iter1_reg[6 : 2] <= weights3_1_addr_26_reg_1844[6 : 2];
        weights3_1_addr_26_reg_1844_pp0_iter2_reg[6 : 2] <= weights3_1_addr_26_reg_1844_pp0_iter1_reg[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln194_5_reg_1887 <= {{empty_46_fu_891_p2[7:1]}};
        weights3_0_addr_28_reg_1902 <= zext_ln194_6_fu_875_p1;
        weights3_0_addr_28_reg_1902_pp0_iter1_reg <= weights3_0_addr_28_reg_1902;
        weights3_0_addr_28_reg_1902_pp0_iter2_reg <= weights3_0_addr_28_reg_1902_pp0_iter1_reg;
        weights3_0_addr_29_reg_1907[6 : 2] <= zext_ln194_8_fu_885_p1[6 : 2];
        weights3_0_addr_29_reg_1907_pp0_iter1_reg[6 : 2] <= weights3_0_addr_29_reg_1907[6 : 2];
        weights3_0_addr_29_reg_1907_pp0_iter2_reg[6 : 2] <= weights3_0_addr_29_reg_1907_pp0_iter1_reg[6 : 2];
        weights3_1_addr_29_reg_1913[6 : 2] <= zext_ln194_8_fu_885_p1[6 : 2];
        weights3_1_addr_29_reg_1913_pp0_iter1_reg[6 : 2] <= weights3_1_addr_29_reg_1913[6 : 2];
        weights3_1_addr_29_reg_1913_pp0_iter2_reg[6 : 2] <= weights3_1_addr_29_reg_1913_pp0_iter1_reg[6 : 2];
        weights3_1_addr_30_reg_1918 <= zext_ln194_9_fu_906_p1;
        weights3_1_addr_30_reg_1918_pp0_iter1_reg <= weights3_1_addr_30_reg_1918;
        weights3_1_addr_30_reg_1918_pp0_iter2_reg <= weights3_1_addr_30_reg_1918_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln194_7_reg_1923 <= {{empty_47_fu_962_p2[7:1]}};
        weights3_0_addr_31_reg_1939 <= zext_ln194_10_fu_936_p1;
        weights3_0_addr_31_reg_1939_pp0_iter1_reg <= weights3_0_addr_31_reg_1939;
        weights3_0_addr_31_reg_1939_pp0_iter2_reg <= weights3_0_addr_31_reg_1939_pp0_iter1_reg;
        weights3_0_addr_32_reg_1949[6 : 2] <= zext_ln194_12_fu_956_p1[6 : 2];
        weights3_0_addr_32_reg_1949_pp0_iter1_reg[6 : 2] <= weights3_0_addr_32_reg_1949[6 : 2];
        weights3_0_addr_32_reg_1949_pp0_iter2_reg[6 : 2] <= weights3_0_addr_32_reg_1949_pp0_iter1_reg[6 : 2];
        weights3_1_addr_31_reg_1944 <= zext_ln194_11_fu_946_p1;
        weights3_1_addr_31_reg_1944_pp0_iter1_reg <= weights3_1_addr_31_reg_1944;
        weights3_1_addr_31_reg_1944_pp0_iter2_reg <= weights3_1_addr_31_reg_1944_pp0_iter1_reg;
        weights3_1_addr_32_reg_1955[6 : 2] <= zext_ln194_12_fu_956_p1[6 : 2];
        weights3_1_addr_32_reg_1955_pp0_iter1_reg[6 : 2] <= weights3_1_addr_32_reg_1955[6 : 2];
        weights3_1_addr_32_reg_1955_pp0_iter2_reg[6 : 2] <= weights3_1_addr_32_reg_1955_pp0_iter1_reg[6 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln194_9_reg_1993 <= {{empty_48_fu_1062_p2[7:1]}};
        weights3_0_addr_35_reg_2018[6 : 2] <= zext_ln194_16_fu_1046_p1[6 : 2];
        weights3_0_addr_35_reg_2018_pp0_iter1_reg[6 : 2] <= weights3_0_addr_35_reg_2018[6 : 2];
        weights3_0_addr_35_reg_2018_pp0_iter2_reg[6 : 2] <= weights3_0_addr_35_reg_2018_pp0_iter1_reg[6 : 2];
        weights3_0_addr_35_reg_2018_pp0_iter3_reg[6 : 2] <= weights3_0_addr_35_reg_2018_pp0_iter2_reg[6 : 2];
        weights3_0_addr_36_reg_2030[6 : 2] <= add_ln194_13_cast_fu_1057_p1[6 : 2];
        weights3_0_addr_36_reg_2030_pp0_iter1_reg[6 : 2] <= weights3_0_addr_36_reg_2030[6 : 2];
        weights3_0_addr_36_reg_2030_pp0_iter2_reg[6 : 2] <= weights3_0_addr_36_reg_2030_pp0_iter1_reg[6 : 2];
        weights3_0_addr_36_reg_2030_pp0_iter3_reg[6 : 2] <= weights3_0_addr_36_reg_2030_pp0_iter2_reg[6 : 2];
        weights3_1_addr_35_reg_2024[6 : 2] <= zext_ln194_16_fu_1046_p1[6 : 2];
        weights3_1_addr_35_reg_2024_pp0_iter1_reg[6 : 2] <= weights3_1_addr_35_reg_2024[6 : 2];
        weights3_1_addr_35_reg_2024_pp0_iter2_reg[6 : 2] <= weights3_1_addr_35_reg_2024_pp0_iter1_reg[6 : 2];
        weights3_1_addr_35_reg_2024_pp0_iter3_reg[6 : 2] <= weights3_1_addr_35_reg_2024_pp0_iter2_reg[6 : 2];
        weights3_1_addr_36_reg_2035 <= zext_ln194_17_fu_1077_p1;
        weights3_1_addr_36_reg_2035_pp0_iter1_reg <= weights3_1_addr_36_reg_2035;
        weights3_1_addr_36_reg_2035_pp0_iter2_reg <= weights3_1_addr_36_reg_2035_pp0_iter1_reg;
        weights3_1_addr_36_reg_2035_pp0_iter3_reg <= weights3_1_addr_36_reg_2035_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_548 <= weights3_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_552 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_591 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_595 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_604 <= grp_fu_540_p2;
        reg_608 <= grp_fu_544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_addr_25_reg_1865 <= zext_ln194_2_fu_826_p1;
        weights3_0_addr_25_reg_1865_pp0_iter1_reg <= weights3_0_addr_25_reg_1865;
        weights3_0_addr_25_reg_1865_pp0_iter2_reg <= weights3_0_addr_25_reg_1865_pp0_iter1_reg;
        weights3_0_addr_27_reg_1870[6 : 2] <= add_ln194_2_cast_fu_836_p1[6 : 2];
        weights3_0_addr_27_reg_1870_pp0_iter1_reg[6 : 2] <= weights3_0_addr_27_reg_1870[6 : 2];
        weights3_0_addr_27_reg_1870_pp0_iter2_reg[6 : 2] <= weights3_0_addr_27_reg_1870_pp0_iter1_reg[6 : 2];
        weights3_1_addr_27_reg_1876 <= zext_ln194_5_fu_841_p1;
        weights3_1_addr_27_reg_1876_pp0_iter1_reg <= weights3_1_addr_27_reg_1876;
        weights3_1_addr_27_reg_1876_pp0_iter2_reg <= weights3_1_addr_27_reg_1876_pp0_iter1_reg;
        weights3_1_addr_28_reg_1881 <= zext_ln194_7_fu_850_p1;
        weights3_1_addr_28_reg_1881_pp0_iter1_reg <= weights3_1_addr_28_reg_1881;
        weights3_1_addr_28_reg_1881_pp0_iter2_reg <= weights3_1_addr_28_reg_1881_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_addr_33_reg_1971[6 : 2] <= add_ln194_9_cast_fu_992_p1[6 : 2];
        weights3_0_addr_33_reg_1971_pp0_iter1_reg[6 : 2] <= weights3_0_addr_33_reg_1971[6 : 2];
        weights3_0_addr_33_reg_1971_pp0_iter2_reg[6 : 2] <= weights3_0_addr_33_reg_1971_pp0_iter1_reg[6 : 2];
        weights3_0_addr_34_reg_1981 <= zext_ln194_14_fu_1016_p1;
        weights3_0_addr_34_reg_1981_pp0_iter1_reg <= weights3_0_addr_34_reg_1981;
        weights3_0_addr_34_reg_1981_pp0_iter2_reg <= weights3_0_addr_34_reg_1981_pp0_iter1_reg;
        weights3_0_addr_34_reg_1981_pp0_iter3_reg <= weights3_0_addr_34_reg_1981_pp0_iter2_reg;
        weights3_1_addr_33_reg_1976 <= zext_ln194_13_fu_997_p1;
        weights3_1_addr_33_reg_1976_pp0_iter1_reg <= weights3_1_addr_33_reg_1976;
        weights3_1_addr_33_reg_1976_pp0_iter2_reg <= weights3_1_addr_33_reg_1976_pp0_iter1_reg;
        weights3_1_addr_34_reg_1987 <= zext_ln194_15_fu_1026_p1;
        weights3_1_addr_34_reg_1987_pp0_iter1_reg <= weights3_1_addr_34_reg_1987;
        weights3_1_addr_34_reg_1987_pp0_iter2_reg <= weights3_1_addr_34_reg_1987_pp0_iter1_reg;
        weights3_1_addr_34_reg_1987_pp0_iter3_reg <= weights3_1_addr_34_reg_1987_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_addr_39_reg_2108[6 : 2] <= add_ln194_17_cast_fu_1163_p1[6 : 2];
        weights3_0_addr_39_reg_2108_pp0_iter1_reg[6 : 2] <= weights3_0_addr_39_reg_2108[6 : 2];
        weights3_0_addr_39_reg_2108_pp0_iter2_reg[6 : 2] <= weights3_0_addr_39_reg_2108_pp0_iter1_reg[6 : 2];
        weights3_0_addr_39_reg_2108_pp0_iter3_reg[6 : 2] <= weights3_0_addr_39_reg_2108_pp0_iter2_reg[6 : 2];
        weights3_0_addr_40_reg_2119 <= zext_ln194_22_fu_1187_p1;
        weights3_0_addr_40_reg_2119_pp0_iter1_reg <= weights3_0_addr_40_reg_2119;
        weights3_0_addr_40_reg_2119_pp0_iter2_reg <= weights3_0_addr_40_reg_2119_pp0_iter1_reg;
        weights3_0_addr_40_reg_2119_pp0_iter3_reg <= weights3_0_addr_40_reg_2119_pp0_iter2_reg;
        weights3_1_addr_39_reg_2114 <= zext_ln194_21_fu_1168_p1;
        weights3_1_addr_39_reg_2114_pp0_iter1_reg <= weights3_1_addr_39_reg_2114;
        weights3_1_addr_39_reg_2114_pp0_iter2_reg <= weights3_1_addr_39_reg_2114_pp0_iter1_reg;
        weights3_1_addr_39_reg_2114_pp0_iter3_reg <= weights3_1_addr_39_reg_2114_pp0_iter2_reg;
        weights3_1_addr_40_reg_2124 <= zext_ln194_23_fu_1197_p1;
        weights3_1_addr_40_reg_2124_pp0_iter1_reg <= weights3_1_addr_40_reg_2124;
        weights3_1_addr_40_reg_2124_pp0_iter2_reg <= weights3_1_addr_40_reg_2124_pp0_iter1_reg;
        weights3_1_addr_40_reg_2124_pp0_iter3_reg <= weights3_1_addr_40_reg_2124_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_addr_45_reg_2250[6 : 2] <= add_ln194_25_cast_fu_1349_p1[6 : 2];
        weights3_0_addr_45_reg_2250_pp0_iter1_reg[6 : 2] <= weights3_0_addr_45_reg_2250[6 : 2];
        weights3_0_addr_45_reg_2250_pp0_iter2_reg[6 : 2] <= weights3_0_addr_45_reg_2250_pp0_iter1_reg[6 : 2];
        weights3_0_addr_45_reg_2250_pp0_iter3_reg[6 : 2] <= weights3_0_addr_45_reg_2250_pp0_iter2_reg[6 : 2];
        weights3_0_addr_46_reg_2262 <= zext_ln194_30_fu_1358_p1;
        weights3_0_addr_46_reg_2262_pp0_iter1_reg <= weights3_0_addr_46_reg_2262;
        weights3_0_addr_46_reg_2262_pp0_iter2_reg <= weights3_0_addr_46_reg_2262_pp0_iter1_reg;
        weights3_0_addr_46_reg_2262_pp0_iter3_reg <= weights3_0_addr_46_reg_2262_pp0_iter2_reg;
        weights3_1_addr_45_reg_2256 <= zext_ln194_29_fu_1354_p1;
        weights3_1_addr_45_reg_2256_pp0_iter1_reg <= weights3_1_addr_45_reg_2256;
        weights3_1_addr_45_reg_2256_pp0_iter2_reg <= weights3_1_addr_45_reg_2256_pp0_iter1_reg;
        weights3_1_addr_45_reg_2256_pp0_iter3_reg <= weights3_1_addr_45_reg_2256_pp0_iter2_reg;
        weights3_1_addr_46_reg_2267 <= zext_ln194_31_fu_1367_p1;
        weights3_1_addr_46_reg_2267_pp0_iter1_reg <= weights3_1_addr_46_reg_2267;
        weights3_1_addr_46_reg_2267_pp0_iter2_reg <= weights3_1_addr_46_reg_2267_pp0_iter1_reg;
        weights3_1_addr_46_reg_2267_pp0_iter3_reg <= weights3_1_addr_46_reg_2267_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_load_34_reg_2008 <= weights3_0_q0;
        weights3_1_load_34_reg_2013 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_load_36_reg_2056 <= weights3_0_q0;
        weights3_1_load_36_reg_2061 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_load_38_reg_2098 <= weights3_0_q0;
        weights3_1_load_38_reg_2103 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_load_39_reg_2144 <= weights3_0_q1;
        weights3_0_load_40_reg_2149 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_load_42_reg_2198 <= weights3_0_q0;
        weights3_1_load_42_reg_2203 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_load_44_reg_2240 <= weights3_0_q0;
        weights3_1_load_44_reg_2245 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_load_46_reg_2282 <= weights3_0_q0;
        weights3_1_load_46_reg_2287 <= weights3_1_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_1752 == 1'd1) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_540_p0 = bitcast_ln194_46_fu_1510_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_540_p0 = bitcast_ln194_44_fu_1500_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_540_p0 = bitcast_ln194_42_fu_1482_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_540_p0 = bitcast_ln194_40_fu_1472_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_540_p0 = bitcast_ln194_38_fu_1464_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_540_p0 = bitcast_ln194_36_fu_1454_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_540_p0 = bitcast_ln194_34_fu_1445_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_540_p0 = bitcast_ln194_32_fu_1436_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_540_p0 = bitcast_ln194_30_fu_1428_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_540_p0 = bitcast_ln194_28_fu_1418_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_540_p0 = bitcast_ln194_26_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_540_p0 = bitcast_ln194_24_fu_1400_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_540_p0 = bitcast_ln194_22_fu_1392_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_540_p0 = bitcast_ln194_20_fu_1382_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_540_p0 = bitcast_ln194_18_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_540_p0 = bitcast_ln194_16_fu_1334_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_540_p0 = bitcast_ln194_13_fu_1253_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_540_p0 = bitcast_ln194_11_fu_1202_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_540_p0 = bitcast_ln194_9_fu_1148_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_540_p0 = bitcast_ln194_5_fu_1082_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_540_p0 = bitcast_ln194_4_fu_1031_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_540_p0 = bitcast_ln194_6_fu_977_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_540_p0 = bitcast_ln194_2_fu_911_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_540_p0 = bitcast_ln194_fu_806_p1;
    end else begin
        grp_fu_540_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_544_p0 = bitcast_ln194_47_fu_1514_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_544_p0 = bitcast_ln194_45_fu_1505_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_544_p0 = bitcast_ln194_43_fu_1486_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_544_p0 = bitcast_ln194_41_fu_1477_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_544_p0 = bitcast_ln194_39_fu_1468_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_544_p0 = bitcast_ln194_37_fu_1459_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_544_p0 = bitcast_ln194_35_fu_1449_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_544_p0 = bitcast_ln194_33_fu_1440_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_544_p0 = bitcast_ln194_31_fu_1432_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_544_p0 = bitcast_ln194_29_fu_1423_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_544_p0 = bitcast_ln194_27_fu_1414_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_544_p0 = bitcast_ln194_25_fu_1405_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_544_p0 = bitcast_ln194_23_fu_1396_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_544_p0 = bitcast_ln194_21_fu_1387_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_544_p0 = bitcast_ln194_19_fu_1377_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_544_p0 = bitcast_ln194_17_fu_1339_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_544_p0 = bitcast_ln194_15_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_544_p0 = bitcast_ln194_12_fu_1207_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_544_p0 = bitcast_ln194_10_fu_1153_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_544_p0 = bitcast_ln194_8_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_544_p0 = bitcast_ln194_14_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_544_p0 = bitcast_ln194_7_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_544_p0 = bitcast_ln194_3_fu_916_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_544_p0 = bitcast_ln194_1_fu_855_p1;
    end else begin
        grp_fu_544_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_0_address0_local = weights3_0_addr_46_reg_2262_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_0_address0_local = weights3_0_addr_45_reg_2250_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_0_address0_local = weights3_0_addr_44_reg_2220_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_0_address0_local = weights3_0_addr_43_reg_2208_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_0_address0_local = weights3_0_addr_41_reg_2154_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_0_address0_local = weights3_0_addr_40_reg_2119_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_0_address0_local = weights3_0_addr_39_reg_2108_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_0_address0_local = weights3_0_addr_38_reg_2078_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_0_address0_local = weights3_0_addr_37_reg_2066_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_0_address0_local = weights3_0_addr_36_reg_2030_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_address0_local = weights3_0_addr_35_reg_2018_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_0_address0_local = weights3_0_addr_30_reg_1850_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_address0_local = zext_ln194_30_fu_1358_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_address0_local = zext_ln194_28_fu_1298_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_address0_local = add_ln194_21_cast_fu_1228_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_address0_local = zext_ln194_22_fu_1187_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_address0_local = zext_ln194_20_fu_1127_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_address0_local = add_ln194_13_cast_fu_1057_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address0_local = zext_ln194_14_fu_1016_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address0_local = zext_ln194_12_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address0_local = zext_ln194_8_fu_885_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address0_local = add_ln194_2_cast_fu_836_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = or_ln194_2_cast_fu_801_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address0_local = zext_ln192_fu_690_p1;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_0_address1_local = weights3_0_addr_42_reg_2166_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_address1_local = weights3_0_addr_34_reg_1981_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_0_address1_local = weights3_0_addr_33_reg_1971_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_0_address1_local = weights3_0_addr_32_reg_1949_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_0_address1_local = weights3_0_addr_31_reg_1939_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_0_address1_local = weights3_0_addr_29_reg_1907_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_0_address1_local = weights3_0_addr_28_reg_1902_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_0_address1_local = weights3_0_addr_27_reg_1870_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_0_address1_local = weights3_0_addr_25_reg_1865_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_0_address1_local = weights3_0_addr_26_reg_1839_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_0_address1_local = weights3_0_addr_24_reg_1800_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_0_address1_local = weights3_0_addr_reg_1756_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_0_address1_local = add_ln194_25_cast_fu_1349_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_0_address1_local = zext_ln194_26_fu_1278_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_0_address1_local = zext_ln194_24_fu_1217_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_0_address1_local = add_ln194_17_cast_fu_1163_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_0_address1_local = zext_ln194_18_fu_1107_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_0_address1_local = zext_ln194_16_fu_1046_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_0_address1_local = add_ln194_9_cast_fu_992_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_0_address1_local = zext_ln194_10_fu_936_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_0_address1_local = zext_ln194_6_fu_875_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address1_local = zext_ln194_2_fu_826_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address1_local = zext_ln194_4_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address1_local = zext_ln194_fu_666_p1;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_0_d0_local = bitcast_ln194_71_fu_1726_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_0_d0_local = bitcast_ln194_70_fu_1718_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_0_d0_local = bitcast_ln194_69_fu_1710_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_0_d0_local = bitcast_ln194_68_fu_1706_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_0_d0_local = bitcast_ln194_66_fu_1694_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_0_d0_local = bitcast_ln194_65_fu_1686_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_0_d0_local = bitcast_ln194_64_fu_1678_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_0_d0_local = bitcast_ln194_63_fu_1662_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_0_d0_local = bitcast_ln194_62_fu_1654_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_0_d0_local = bitcast_ln194_61_fu_1646_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_d0_local = bitcast_ln194_60_fu_1633_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_0_d0_local = bitcast_ln194_55_fu_1553_p1;
    end else begin
        weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_0_d1_local = bitcast_ln194_67_fu_1702_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_0_d1_local = bitcast_ln194_59_fu_1628_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_0_d1_local = bitcast_ln194_58_fu_1618_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_0_d1_local = bitcast_ln194_57_fu_1608_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_0_d1_local = bitcast_ln194_56_fu_1598_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_0_d1_local = bitcast_ln194_54_fu_1578_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_0_d1_local = bitcast_ln194_53_fu_1568_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_0_d1_local = bitcast_ln194_52_fu_1558_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_0_d1_local = bitcast_ln194_50_fu_1548_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_0_d1_local = bitcast_ln194_51_fu_1538_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_0_d1_local = bitcast_ln194_49_fu_1528_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_0_d1_local = bitcast_ln194_48_fu_1518_p1;
    end else begin
        weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_1_address0_local = weights3_1_addr_46_reg_2267_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_1_address0_local = weights3_1_addr_45_reg_2256_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_1_address0_local = weights3_1_addr_44_reg_2225_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_1_address0_local = weights3_1_addr_43_reg_2214_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_1_address0_local = weights3_1_addr_42_reg_2172_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_1_address0_local = weights3_1_addr_41_reg_2160_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_1_address0_local = weights3_1_addr_40_reg_2124_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_1_address0_local = weights3_1_addr_38_reg_2083_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_1_address0_local = weights3_1_addr_37_reg_2072_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_1_address0_local = weights3_1_addr_36_reg_2035_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_1_address0_local = weights3_1_addr_35_reg_2024_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_1_address0_local = weights3_1_addr_30_reg_1918_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_address0_local = zext_ln194_31_fu_1367_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_address0_local = zext_ln194_28_fu_1298_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_address0_local = zext_ln194_25_fu_1248_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_address0_local = zext_ln194_23_fu_1197_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_address0_local = zext_ln194_20_fu_1127_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_address0_local = zext_ln194_17_fu_1077_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address0_local = zext_ln194_15_fu_1026_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address0_local = zext_ln194_12_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address0_local = zext_ln194_9_fu_906_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address0_local = zext_ln194_7_fu_850_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = zext_ln194_4_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address0_local = zext_ln194_1_fu_731_p1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_1_address1_local = weights3_1_addr_39_reg_2114_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_1_address1_local = weights3_1_addr_34_reg_1987_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_1_address1_local = weights3_1_addr_33_reg_1976_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_1_address1_local = weights3_1_addr_32_reg_1955_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_1_address1_local = weights3_1_addr_31_reg_1944_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_1_address1_local = weights3_1_addr_29_reg_1913_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_1_address1_local = weights3_1_addr_28_reg_1881_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_1_address1_local = weights3_1_addr_27_reg_1876_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_1_address1_local = weights3_1_addr_25_reg_1834_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_1_address1_local = weights3_1_addr_26_reg_1844_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_1_address1_local = weights3_1_addr_24_reg_1806_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_1_address1_local = weights3_1_addr_reg_1795_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        weights3_1_address1_local = zext_ln194_29_fu_1354_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        weights3_1_address1_local = zext_ln194_27_fu_1288_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        weights3_1_address1_local = zext_ln194_24_fu_1217_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        weights3_1_address1_local = zext_ln194_21_fu_1168_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights3_1_address1_local = zext_ln194_19_fu_1117_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights3_1_address1_local = zext_ln194_16_fu_1046_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights3_1_address1_local = zext_ln194_13_fu_997_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_1_address1_local = zext_ln194_11_fu_946_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_1_address1_local = zext_ln194_8_fu_885_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address1_local = zext_ln194_5_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address1_local = zext_ln194_3_fu_761_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address1_local = zext_ln194_fu_666_p1;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)& (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_1_d0_local = bitcast_ln194_95_fu_1730_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_1_d0_local = bitcast_ln194_94_fu_1722_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_1_d0_local = bitcast_ln194_93_fu_1714_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_1_d0_local = bitcast_ln194_92_fu_1698_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_1_d0_local = bitcast_ln194_91_fu_1690_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_1_d0_local = bitcast_ln194_90_fu_1682_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_1_d0_local = bitcast_ln194_89_fu_1674_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_1_d0_local = bitcast_ln194_87_fu_1666_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_1_d0_local = bitcast_ln194_86_fu_1658_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_1_d0_local = bitcast_ln194_85_fu_1650_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_1_d0_local = bitcast_ln194_84_fu_1642_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_1_d0_local = bitcast_ln194_79_fu_1593_p1;
    end else begin
        weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        weights3_1_d1_local = bitcast_ln194_88_fu_1670_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        weights3_1_d1_local = bitcast_ln194_83_fu_1637_p1;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        weights3_1_d1_local = bitcast_ln194_82_fu_1623_p1;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        weights3_1_d1_local = bitcast_ln194_81_fu_1613_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights3_1_d1_local = bitcast_ln194_80_fu_1603_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights3_1_d1_local = bitcast_ln194_78_fu_1588_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights3_1_d1_local = bitcast_ln194_77_fu_1583_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights3_1_d1_local = bitcast_ln194_76_fu_1573_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        weights3_1_d1_local = bitcast_ln194_74_fu_1563_p1;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        weights3_1_d1_local = bitcast_ln194_75_fu_1543_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        weights3_1_d1_local = bitcast_ln194_73_fu_1533_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        weights3_1_d1_local = bitcast_ln194_72_fu_1523_p1;
    end else begin
        weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001)& (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln192_fu_1490_p2 = (i_4_reg_1747 + 7'd16);
assign add_ln194_10_fu_1001_p2 = (empty_reg_1761 + 8'd19);
assign add_ln194_11_fu_1021_p2 = (lshr_ln194_7_reg_1923 + 7'd1);
assign add_ln194_12_fu_1041_p2 = (or_ln194_1_reg_1812 + 7'd9);
assign add_ln194_13_cast_fu_1057_p1 = add_ln194_13_fu_1052_p2;
assign add_ln194_13_fu_1052_p2 = (or_ln194_1_reg_1812 + 7'd10);
assign add_ln194_14_fu_1092_p2 = (empty_reg_1761 + 8'd25);
assign add_ln194_15_fu_1112_p2 = (lshr_ln194_9_reg_1993 + 7'd1);
assign add_ln194_16_fu_1122_p2 = (or_ln194_1_reg_1812 + 7'd12);
assign add_ln194_17_cast_fu_1163_p1 = add_ln194_17_fu_1158_p2;
assign add_ln194_17_fu_1158_p2 = (or_ln194_1_reg_1812 + 7'd13);
assign add_ln194_18_fu_1172_p2 = (empty_reg_1761 + 8'd31);
assign add_ln194_19_fu_1192_p2 = (lshr_ln194_10_reg_2040 + 7'd1);
assign add_ln194_1_fu_756_p2 = (lshr_ln194_1_reg_1780 + 7'd1);
assign add_ln194_20_fu_1212_p2 = (or_ln194_1_reg_1812 + 7'd15);
assign add_ln194_21_cast_fu_1228_p1 = add_ln194_21_fu_1223_p2;
assign add_ln194_21_fu_1223_p2 = (or_ln194_1_reg_1812 + 7'd16);
assign add_ln194_22_fu_1263_p2 = (empty_reg_1761 + 8'd37);
assign add_ln194_23_fu_1283_p2 = (lshr_ln194_12_reg_2129 + 7'd1);
assign add_ln194_24_fu_1293_p2 = (or_ln194_1_reg_1812 + 7'd18);
assign add_ln194_25_cast_fu_1349_p1 = add_ln194_25_fu_1344_p2;
assign add_ln194_25_fu_1344_p2 = (or_ln194_1_reg_1812 + 7'd19);
assign add_ln194_26_fu_1319_p2 = (empty_reg_1761 + 8'd43);
assign add_ln194_27_fu_1362_p2 = (lshr_ln194_14_reg_2177 + 7'd1);
assign add_ln194_2_cast_fu_836_p1 = add_ln194_2_fu_831_p2;
assign add_ln194_2_fu_831_p2 = (or_ln194_1_reg_1812 + 7'd1);
assign add_ln194_3_fu_860_p2 = (empty_reg_1761 + 8'd7);
assign add_ln194_4_fu_845_p2 = (lshr_ln194_3_reg_1828 + 7'd1);
assign add_ln194_5_fu_880_p2 = (or_ln194_1_reg_1812 + 7'd3);
assign add_ln194_6_fu_921_p2 = (empty_reg_1761 + 8'd13);
assign add_ln194_7_fu_941_p2 = (lshr_ln194_5_reg_1887 + 7'd1);
assign add_ln194_8_fu_951_p2 = (or_ln194_1_reg_1812 + 7'd6);
assign add_ln194_9_cast_fu_992_p1 = add_ln194_9_fu_987_p2;
assign add_ln194_9_fu_987_p2 = (or_ln194_1_reg_1812 + 7'd7);
assign add_ln194_fu_811_p2 = (empty_reg_1761 + 8'd1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage23;
assign ap_ready = ap_ready_sig;
assign bitcast_ln194_10_fu_1153_p1 = reg_548;
assign bitcast_ln194_11_fu_1202_p1 = reg_581;
assign bitcast_ln194_12_fu_1207_p1 = reg_586;
assign bitcast_ln194_13_fu_1253_p1 = reg_566;
assign bitcast_ln194_14_fu_1036_p1 = reg_571;
assign bitcast_ln194_15_fu_1258_p1 = reg_591;
assign bitcast_ln194_16_fu_1334_p1 = reg_556;
assign bitcast_ln194_17_fu_1339_p1 = reg_595;
assign bitcast_ln194_18_fu_1372_p1 = reg_571;
assign bitcast_ln194_19_fu_1377_p1 = reg_599;
assign bitcast_ln194_1_fu_855_p1 = reg_552;
assign bitcast_ln194_20_fu_1382_p1 = reg_576;
assign bitcast_ln194_21_fu_1387_p1 = reg_552;
assign bitcast_ln194_22_fu_1392_p1 = weights3_0_load_34_reg_2008;
assign bitcast_ln194_23_fu_1396_p1 = weights3_1_load_34_reg_2013;
assign bitcast_ln194_24_fu_1400_p1 = reg_548;
assign bitcast_ln194_25_fu_1405_p1 = reg_561;
assign bitcast_ln194_26_fu_1410_p1 = weights3_0_load_36_reg_2056;
assign bitcast_ln194_27_fu_1414_p1 = weights3_1_load_36_reg_2061;
assign bitcast_ln194_28_fu_1418_p1 = reg_586;
assign bitcast_ln194_29_fu_1423_p1 = reg_581;
assign bitcast_ln194_2_fu_911_p1 = reg_556;
assign bitcast_ln194_30_fu_1428_p1 = weights3_0_load_38_reg_2098;
assign bitcast_ln194_31_fu_1432_p1 = weights3_1_load_38_reg_2103;
assign bitcast_ln194_32_fu_1436_p1 = weights3_0_load_39_reg_2144;
assign bitcast_ln194_33_fu_1440_p1 = reg_566;
assign bitcast_ln194_34_fu_1445_p1 = weights3_0_load_40_reg_2149;
assign bitcast_ln194_35_fu_1449_p1 = reg_591;
assign bitcast_ln194_36_fu_1454_p1 = reg_556;
assign bitcast_ln194_37_fu_1459_p1 = reg_595;
assign bitcast_ln194_38_fu_1464_p1 = weights3_0_load_42_reg_2198;
assign bitcast_ln194_39_fu_1468_p1 = weights3_1_load_42_reg_2203;
assign bitcast_ln194_3_fu_916_p1 = reg_561;
assign bitcast_ln194_40_fu_1472_p1 = reg_571;
assign bitcast_ln194_41_fu_1477_p1 = reg_599;
assign bitcast_ln194_42_fu_1482_p1 = weights3_0_load_44_reg_2240;
assign bitcast_ln194_43_fu_1486_p1 = weights3_1_load_44_reg_2245;
assign bitcast_ln194_44_fu_1500_p1 = reg_576;
assign bitcast_ln194_45_fu_1505_p1 = reg_552;
assign bitcast_ln194_46_fu_1510_p1 = weights3_0_load_46_reg_2282;
assign bitcast_ln194_47_fu_1514_p1 = weights3_1_load_46_reg_2287;
assign bitcast_ln194_48_fu_1518_p1 = reg_604;
assign bitcast_ln194_49_fu_1528_p1 = reg_604;
assign bitcast_ln194_4_fu_1031_p1 = reg_556;
assign bitcast_ln194_50_fu_1548_p1 = reg_604;
assign bitcast_ln194_51_fu_1538_p1 = reg_604;
assign bitcast_ln194_52_fu_1558_p1 = reg_608;
assign bitcast_ln194_53_fu_1568_p1 = reg_608;
assign bitcast_ln194_54_fu_1578_p1 = reg_608;
assign bitcast_ln194_55_fu_1553_p1 = reg_608;
assign bitcast_ln194_56_fu_1598_p1 = reg_604;
assign bitcast_ln194_57_fu_1608_p1 = reg_604;
assign bitcast_ln194_58_fu_1618_p1 = reg_604;
assign bitcast_ln194_59_fu_1628_p1 = reg_604;
assign bitcast_ln194_5_fu_1082_p1 = reg_552;
assign bitcast_ln194_60_fu_1633_p1 = div213_8_reg_2422;
assign bitcast_ln194_61_fu_1646_p1 = div213_8_2_reg_2432;
assign bitcast_ln194_62_fu_1654_p1 = div213_9_1_reg_2442;
assign bitcast_ln194_63_fu_1662_p1 = div213_10_reg_2452;
assign bitcast_ln194_64_fu_1678_p1 = div213_10_2_reg_2462;
assign bitcast_ln194_65_fu_1686_p1 = div213_11_1_reg_2472;
assign bitcast_ln194_66_fu_1694_p1 = div213_12_reg_2482;
assign bitcast_ln194_67_fu_1702_p1 = div213_12_2_reg_2492;
assign bitcast_ln194_68_fu_1706_p1 = div213_13_1_reg_2502;
assign bitcast_ln194_69_fu_1710_p1 = div213_14_reg_2512;
assign bitcast_ln194_6_fu_977_p1 = reg_548;
assign bitcast_ln194_70_fu_1718_p1 = div213_14_2_reg_2522;
assign bitcast_ln194_71_fu_1726_p1 = div213_15_1_reg_2532;
assign bitcast_ln194_72_fu_1523_p1 = reg_608;
assign bitcast_ln194_73_fu_1533_p1 = reg_608;
assign bitcast_ln194_74_fu_1563_p1 = reg_604;
assign bitcast_ln194_75_fu_1543_p1 = reg_608;
assign bitcast_ln194_76_fu_1573_p1 = reg_604;
assign bitcast_ln194_77_fu_1583_p1 = reg_604;
assign bitcast_ln194_78_fu_1588_p1 = reg_604;
assign bitcast_ln194_79_fu_1593_p1 = reg_608;
assign bitcast_ln194_7_fu_982_p1 = reg_566;
assign bitcast_ln194_80_fu_1603_p1 = reg_608;
assign bitcast_ln194_81_fu_1613_p1 = reg_608;
assign bitcast_ln194_82_fu_1623_p1 = reg_608;
assign bitcast_ln194_83_fu_1637_p1 = reg_608;
assign bitcast_ln194_84_fu_1642_p1 = div213_8_1_reg_2427;
assign bitcast_ln194_85_fu_1650_p1 = div213_9_reg_2437;
assign bitcast_ln194_86_fu_1658_p1 = div213_9_2_reg_2447;
assign bitcast_ln194_87_fu_1666_p1 = div213_10_1_reg_2457;
assign bitcast_ln194_88_fu_1670_p1 = div213_11_reg_2467;
assign bitcast_ln194_89_fu_1674_p1 = div213_11_2_reg_2477;
assign bitcast_ln194_8_fu_1087_p1 = reg_576;
assign bitcast_ln194_90_fu_1682_p1 = div213_12_1_reg_2487;
assign bitcast_ln194_91_fu_1690_p1 = div213_13_reg_2497;
assign bitcast_ln194_92_fu_1698_p1 = div213_13_2_reg_2507;
assign bitcast_ln194_93_fu_1714_p1 = div213_14_1_reg_2517;
assign bitcast_ln194_94_fu_1722_p1 = div213_15_reg_2527;
assign bitcast_ln194_95_fu_1730_p1 = div213_15_2_reg_2537;
assign bitcast_ln194_9_fu_1148_p1 = reg_561;
assign bitcast_ln194_fu_806_p1 = reg_548;
assign empty_45_fu_779_p2 = (empty_reg_1761 + 8'd6);
assign empty_46_fu_891_p2 = (empty_reg_1761 + 8'd12);
assign empty_47_fu_962_p2 = (empty_reg_1761 + 8'd18);
assign empty_48_fu_1062_p2 = (empty_reg_1761 + 8'd24);
assign empty_49_fu_1133_p2 = (empty_reg_1761 + 8'd30);
assign empty_50_fu_1233_p2 = (empty_reg_1761 + 8'd36);
assign empty_51_fu_1304_p2 = (empty_reg_1761 + 8'd42);
assign empty_fu_715_p2 = (p_shl_fu_707_p3 - or_ln192_cast_fu_703_p1);
assign lshr_ln194_11_fu_1177_p4 = {{add_ln194_18_fu_1172_p2[7:1]}};
assign lshr_ln194_12_fu_1238_p4 = {{empty_50_fu_1233_p2[7:1]}};
assign lshr_ln194_13_fu_1268_p4 = {{add_ln194_22_fu_1263_p2[7:1]}};
assign lshr_ln194_1_fu_721_p4 = {{empty_fu_715_p2[7:1]}};
assign lshr_ln194_2_fu_816_p4 = {{add_ln194_fu_811_p2[7:1]}};
assign lshr_ln194_4_fu_865_p4 = {{add_ln194_3_fu_860_p2[7:1]}};
assign lshr_ln194_5_fu_896_p4 = {{empty_46_fu_891_p2[7:1]}};
assign lshr_ln194_6_fu_926_p4 = {{add_ln194_6_fu_921_p2[7:1]}};
assign lshr_ln194_8_fu_1006_p4 = {{add_ln194_10_fu_1001_p2[7:1]}};
assign lshr_ln194_9_fu_1067_p4 = {{empty_48_fu_1062_p2[7:1]}};
assign lshr_ln194_s_fu_1097_p4 = {{add_ln194_14_fu_1092_p2[7:1]}};
assign lshr_ln7_fu_628_p4 = {{ap_sig_allocacmp_i_4[6:1]}};
assign or_ln192_cast_fu_703_p1 = or_ln6_fu_695_p3;
assign or_ln194_1_fu_766_p3 = {{tmp_16_reg_1785}, {2'd3}};
assign or_ln194_2_cast_fu_801_p1 = or_ln194_2_fu_794_p3;
assign or_ln194_2_fu_794_p3 = {{tmp_17_reg_1790}, {3'd7}};
assign or_ln5_fu_682_p3 = {{tmp_s_fu_672_p4}, {1'd1}};
assign or_ln6_fu_695_p3 = {{tmp_10_fu_642_p4}, {1'd1}};
assign p_shl1_fu_652_p3 = {{tmp_10_fu_642_p4}, {2'd0}};
assign p_shl_fu_707_p3 = {{tmp_10_fu_642_p4}, {3'd4}};
assign sub_ln194_fu_660_p2 = (p_shl1_fu_652_p3 - zext_ln194_32_fu_638_p1);
assign tmp_10_fu_642_p4 = {{ap_sig_allocacmp_i_4[5:1]}};
assign tmp_s_fu_672_p4 = {{sub_ln194_fu_660_p2[6:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_0_d0 = weights3_0_d0_local;
assign weights3_0_d1 = weights3_0_d1_local;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_0_we1 = weights3_0_we1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_1_d0 = weights3_1_d0_local;
assign weights3_1_d1 = weights3_1_d1_local;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_1_we1 = weights3_1_we1_local;
assign zext_ln192_fu_690_p1 = or_ln5_fu_682_p3;
assign zext_ln194_10_fu_936_p1 = lshr_ln194_6_fu_926_p4;
assign zext_ln194_11_fu_946_p1 = add_ln194_7_fu_941_p2;
assign zext_ln194_12_fu_956_p1 = add_ln194_8_fu_951_p2;
assign zext_ln194_13_fu_997_p1 = lshr_ln194_7_reg_1923;
assign zext_ln194_14_fu_1016_p1 = lshr_ln194_8_fu_1006_p4;
assign zext_ln194_15_fu_1026_p1 = add_ln194_11_fu_1021_p2;
assign zext_ln194_16_fu_1046_p1 = add_ln194_12_fu_1041_p2;
assign zext_ln194_17_fu_1077_p1 = lshr_ln194_9_fu_1067_p4;
assign zext_ln194_18_fu_1107_p1 = lshr_ln194_s_fu_1097_p4;
assign zext_ln194_19_fu_1117_p1 = add_ln194_15_fu_1112_p2;
assign zext_ln194_1_fu_731_p1 = lshr_ln194_1_fu_721_p4;
assign zext_ln194_20_fu_1127_p1 = add_ln194_16_fu_1122_p2;
assign zext_ln194_21_fu_1168_p1 = lshr_ln194_10_reg_2040;
assign zext_ln194_22_fu_1187_p1 = lshr_ln194_11_fu_1177_p4;
assign zext_ln194_23_fu_1197_p1 = add_ln194_19_fu_1192_p2;
assign zext_ln194_24_fu_1217_p1 = add_ln194_20_fu_1212_p2;
assign zext_ln194_25_fu_1248_p1 = lshr_ln194_12_fu_1238_p4;
assign zext_ln194_26_fu_1278_p1 = lshr_ln194_13_fu_1268_p4;
assign zext_ln194_27_fu_1288_p1 = add_ln194_23_fu_1283_p2;
assign zext_ln194_28_fu_1298_p1 = add_ln194_24_fu_1293_p2;
assign zext_ln194_29_fu_1354_p1 = lshr_ln194_14_reg_2177;
assign zext_ln194_2_fu_826_p1 = lshr_ln194_2_fu_816_p4;
assign zext_ln194_30_fu_1358_p1 = lshr_ln194_15_reg_2183;
assign zext_ln194_31_fu_1367_p1 = add_ln194_27_fu_1362_p2;
assign zext_ln194_32_fu_638_p1 = lshr_ln7_fu_628_p4;
assign zext_ln194_3_fu_761_p1 = add_ln194_1_fu_756_p2;
assign zext_ln194_4_fu_773_p1 = or_ln194_1_fu_766_p3;
assign zext_ln194_5_fu_841_p1 = lshr_ln194_3_reg_1828;
assign zext_ln194_6_fu_875_p1 = lshr_ln194_4_fu_865_p4;
assign zext_ln194_7_fu_850_p1 = add_ln194_4_fu_845_p2;
assign zext_ln194_8_fu_885_p1 = add_ln194_5_fu_880_p2;
assign zext_ln194_9_fu_906_p1 = lshr_ln194_5_fu_896_p4;
assign zext_ln194_fu_666_p1 = sub_ln194_fu_660_p2;
always @ (posedge ap_clk) begin
    empty_reg_1761[0] <= 1'b1;
    weights3_0_addr_24_reg_1800[0] <= 1'b1;
    weights3_0_addr_24_reg_1800_pp0_iter1_reg[0] <= 1'b1;
    weights3_0_addr_24_reg_1800_pp0_iter2_reg[0] <= 1'b1;
    or_ln194_1_reg_1812[1:0] <= 2'b11;
    weights3_0_addr_26_reg_1839[1:0] <= 2'b11;
    weights3_0_addr_26_reg_1839_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_0_addr_26_reg_1839_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_1_addr_26_reg_1844[1:0] <= 2'b11;
    weights3_1_addr_26_reg_1844_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_1_addr_26_reg_1844_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_0_addr_30_reg_1850[2:0] <= 3'b111;
    weights3_0_addr_30_reg_1850_pp0_iter1_reg[2:0] <= 3'b111;
    weights3_0_addr_30_reg_1850_pp0_iter2_reg[2:0] <= 3'b111;
    weights3_0_addr_27_reg_1870[1:0] <= 2'b00;
    weights3_0_addr_27_reg_1870_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_0_addr_27_reg_1870_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_0_addr_29_reg_1907[1:0] <= 2'b10;
    weights3_0_addr_29_reg_1907_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_0_addr_29_reg_1907_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_1_addr_29_reg_1913[1:0] <= 2'b10;
    weights3_1_addr_29_reg_1913_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_1_addr_29_reg_1913_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_0_addr_32_reg_1949[1:0] <= 2'b01;
    weights3_0_addr_32_reg_1949_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_0_addr_32_reg_1949_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_1_addr_32_reg_1955[1:0] <= 2'b01;
    weights3_1_addr_32_reg_1955_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_1_addr_32_reg_1955_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_0_addr_33_reg_1971[1:0] <= 2'b10;
    weights3_0_addr_33_reg_1971_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_0_addr_33_reg_1971_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_0_addr_35_reg_2018[1:0] <= 2'b00;
    weights3_0_addr_35_reg_2018_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_0_addr_35_reg_2018_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_0_addr_35_reg_2018_pp0_iter3_reg[1:0] <= 2'b00;
    weights3_1_addr_35_reg_2024[1:0] <= 2'b00;
    weights3_1_addr_35_reg_2024_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_1_addr_35_reg_2024_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_1_addr_35_reg_2024_pp0_iter3_reg[1:0] <= 2'b00;
    weights3_0_addr_36_reg_2030[1:0] <= 2'b01;
    weights3_0_addr_36_reg_2030_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_0_addr_36_reg_2030_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_0_addr_36_reg_2030_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_0_addr_38_reg_2078[1:0] <= 2'b11;
    weights3_0_addr_38_reg_2078_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_0_addr_38_reg_2078_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_0_addr_38_reg_2078_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_1_addr_38_reg_2083[1:0] <= 2'b11;
    weights3_1_addr_38_reg_2083_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_1_addr_38_reg_2083_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_1_addr_38_reg_2083_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_0_addr_39_reg_2108[1:0] <= 2'b00;
    weights3_0_addr_39_reg_2108_pp0_iter1_reg[1:0] <= 2'b00;
    weights3_0_addr_39_reg_2108_pp0_iter2_reg[1:0] <= 2'b00;
    weights3_0_addr_39_reg_2108_pp0_iter3_reg[1:0] <= 2'b00;
    weights3_0_addr_41_reg_2154[1:0] <= 2'b10;
    weights3_0_addr_41_reg_2154_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_0_addr_41_reg_2154_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_0_addr_41_reg_2154_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_1_addr_41_reg_2160[1:0] <= 2'b10;
    weights3_1_addr_41_reg_2160_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_1_addr_41_reg_2160_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_1_addr_41_reg_2160_pp0_iter3_reg[1:0] <= 2'b10;
    weights3_0_addr_42_reg_2166[1:0] <= 2'b11;
    weights3_0_addr_42_reg_2166_pp0_iter1_reg[1:0] <= 2'b11;
    weights3_0_addr_42_reg_2166_pp0_iter2_reg[1:0] <= 2'b11;
    weights3_0_addr_42_reg_2166_pp0_iter3_reg[1:0] <= 2'b11;
    weights3_0_addr_44_reg_2220[1:0] <= 2'b01;
    weights3_0_addr_44_reg_2220_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_0_addr_44_reg_2220_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_0_addr_44_reg_2220_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_1_addr_44_reg_2225[1:0] <= 2'b01;
    weights3_1_addr_44_reg_2225_pp0_iter1_reg[1:0] <= 2'b01;
    weights3_1_addr_44_reg_2225_pp0_iter2_reg[1:0] <= 2'b01;
    weights3_1_addr_44_reg_2225_pp0_iter3_reg[1:0] <= 2'b01;
    weights3_0_addr_45_reg_2250[1:0] <= 2'b10;
    weights3_0_addr_45_reg_2250_pp0_iter1_reg[1:0] <= 2'b10;
    weights3_0_addr_45_reg_2250_pp0_iter2_reg[1:0] <= 2'b10;
    weights3_0_addr_45_reg_2250_pp0_iter3_reg[1:0] <= 2'b10;
end
endmodule 