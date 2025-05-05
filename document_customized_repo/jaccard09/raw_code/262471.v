module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,trunc_ln1,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v6_2_address0,v6_2_ce0,v6_2_q0,v6_3_address0,v6_3_ce0,v6_3_q0,empty_40,empty,v29_12_out,v29_12_out_ap_vld,grp_fu_16517_p_din0,grp_fu_16517_p_din1,grp_fu_16517_p_opcode,grp_fu_16517_p_dout0,grp_fu_16517_p_ce,grp_fu_16529_p_din0,grp_fu_16529_p_din1,grp_fu_16529_p_dout0,grp_fu_16529_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 64'd1;
parameter    ap_ST_fsm_pp0_stage1 = 64'd2;
parameter    ap_ST_fsm_pp0_stage2 = 64'd4;
parameter    ap_ST_fsm_pp0_stage3 = 64'd8;
parameter    ap_ST_fsm_pp0_stage4 = 64'd16;
parameter    ap_ST_fsm_pp0_stage5 = 64'd32;
parameter    ap_ST_fsm_pp0_stage6 = 64'd64;
parameter    ap_ST_fsm_pp0_stage7 = 64'd128;
parameter    ap_ST_fsm_pp0_stage8 = 64'd256;
parameter    ap_ST_fsm_pp0_stage9 = 64'd512;
parameter    ap_ST_fsm_pp0_stage10 = 64'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 64'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 64'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 64'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 64'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 64'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 64'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 64'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 64'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 64'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 64'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 64'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 64'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 64'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 64'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 64'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 64'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 64'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 64'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 64'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 64'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 64'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 64'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 64'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 64'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 64'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 64'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 64'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 64'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 64'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 64'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 64'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 64'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 64'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 64'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 64'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 64'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 64'd140737488355328;
parameter    ap_ST_fsm_pp0_stage48 = 64'd281474976710656;
parameter    ap_ST_fsm_pp0_stage49 = 64'd562949953421312;
parameter    ap_ST_fsm_pp0_stage50 = 64'd1125899906842624;
parameter    ap_ST_fsm_pp0_stage51 = 64'd2251799813685248;
parameter    ap_ST_fsm_pp0_stage52 = 64'd4503599627370496;
parameter    ap_ST_fsm_pp0_stage53 = 64'd9007199254740992;
parameter    ap_ST_fsm_pp0_stage54 = 64'd18014398509481984;
parameter    ap_ST_fsm_pp0_stage55 = 64'd36028797018963968;
parameter    ap_ST_fsm_pp0_stage56 = 64'd72057594037927936;
parameter    ap_ST_fsm_pp0_stage57 = 64'd144115188075855872;
parameter    ap_ST_fsm_pp0_stage58 = 64'd288230376151711744;
parameter    ap_ST_fsm_pp0_stage59 = 64'd576460752303423488;
parameter    ap_ST_fsm_pp0_stage60 = 64'd1152921504606846976;
parameter    ap_ST_fsm_pp0_stage61 = 64'd2305843009213693952;
parameter    ap_ST_fsm_pp0_stage62 = 64'd4611686018427387904;
parameter    ap_ST_fsm_pp0_stage63 = 64'd9223372036854775808;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [9:0] phi_mul;
output  [7:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [7:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
output  [7:0] v0_2_address0;
output   v0_2_ce0;
input  [63:0] v0_2_q0;
output  [7:0] v0_3_address0;
output   v0_3_ce0;
input  [63:0] v0_3_q0;
input  [9:0] trunc_ln1;
output  [9:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [9:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [9:0] v6_2_address0;
output   v6_2_ce0;
input  [63:0] v6_2_q0;
output  [9:0] v6_3_address0;
output   v6_3_ce0;
input  [63:0] v6_3_q0;
input  [1:0] empty_40;
input  [11:0] empty;
output  [63:0] v29_12_out;
output   v29_12_out_ap_vld;
output  [63:0] grp_fu_16517_p_din0;
output  [63:0] grp_fu_16517_p_din1;
output  [0:0] grp_fu_16517_p_opcode;
input  [63:0] grp_fu_16517_p_dout0;
output   grp_fu_16517_p_ce;
output  [63:0] grp_fu_16529_p_din0;
output  [63:0] grp_fu_16529_p_din1;
input  [63:0] grp_fu_16529_p_dout0;
output   grp_fu_16529_p_ce;
reg ap_idle;
reg v29_12_out_ap_vld;
(* fsm_encoding = "none" *) reg   [63:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage61;
wire    ap_block_pp0_stage61_subdone;
reg   [0:0] icmp_ln68_reg_2274;
reg    ap_condition_exit_pp0_iter0_stage61;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
reg   [63:0] reg_728;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire    ap_CS_fsm_pp0_stage37;
wire    ap_block_pp0_stage37_11001;
wire    ap_CS_fsm_pp0_stage45;
wire    ap_block_pp0_stage45_11001;
wire    ap_CS_fsm_pp0_stage53;
wire    ap_block_pp0_stage53_11001;
wire    ap_block_pp0_stage61_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] tmp_4_read_fu_142_p2;
wire   [1:0] tmp_4_reg_2044;
reg   [3:0] v24_1_reg_2072;
wire   [9:0] add_ln69_fu_750_p2;
reg   [9:0] add_ln69_reg_2078;
wire   [1:0] lshr_ln1_fu_762_p4;
reg   [1:0] lshr_ln1_reg_2084;
wire   [3:0] or_ln_fu_800_p3;
reg   [3:0] or_ln_reg_2110;
wire   [0:0] trunc_ln68_fu_836_p1;
reg   [0:0] trunc_ln68_reg_2135;
reg   [0:0] tmp_5_reg_2140;
wire   [1:0] trunc_ln68_1_fu_848_p1;
reg   [1:0] trunc_ln68_1_reg_2147;
reg   [0:0] tmp_6_reg_2152;
reg   [1:0] trunc_ln3_reg_2157;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] v26_fu_895_p11;
reg   [63:0] v26_reg_2162;
wire   [9:0] add_ln69_1_fu_921_p2;
reg   [9:0] add_ln69_1_reg_2167;
wire   [63:0] v26_1_fu_948_p11;
reg   [63:0] v26_1_reg_2173;
wire   [3:0] or_ln68_1_fu_971_p4;
reg   [3:0] or_ln68_1_reg_2178;
wire   [3:0] or_ln68_2_fu_1006_p3;
reg   [3:0] or_ln68_2_reg_2203;
reg   [1:0] trunc_ln69_1_reg_2228;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [9:0] add_ln69_2_fu_1062_p2;
reg   [9:0] add_ln69_2_reg_2233;
wire   [63:0] v26_2_fu_1089_p11;
reg   [63:0] v26_2_reg_2239;
wire   [63:0] v26_3_fu_1128_p11;
reg   [63:0] v26_3_reg_2244;
wire   [3:0] or_ln68_4_fu_1175_p5;
reg   [3:0] or_ln68_4_reg_2269;
wire   [0:0] icmp_ln68_fu_1185_p2;
reg   [1:0] trunc_ln69_2_reg_2298;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [9:0] add_ln69_3_fu_1269_p2;
reg   [9:0] add_ln69_3_reg_2303;
wire   [63:0] v26_4_fu_1296_p11;
reg   [63:0] v26_4_reg_2309;
wire   [63:0] v26_5_fu_1335_p11;
reg   [63:0] v26_5_reg_2314;
reg   [1:0] trunc_ln69_3_reg_2359;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [9:0] add_ln69_4_fu_1435_p2;
reg   [9:0] add_ln69_4_reg_2364;
wire   [63:0] v26_6_fu_1462_p11;
reg   [63:0] v26_6_reg_2370;
wire   [63:0] v26_7_fu_1501_p11;
reg   [63:0] v26_7_reg_2375;
reg   [1:0] trunc_ln69_4_reg_2380;
wire   [9:0] add_ln69_5_fu_1546_p2;
reg   [9:0] add_ln69_5_reg_2385;
reg   [1:0] trunc_ln69_5_reg_2391;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [9:0] add_ln69_6_fu_1576_p2;
reg   [9:0] add_ln69_6_reg_2396;
reg   [1:0] trunc_ln69_6_reg_2402;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [9:0] add_ln69_7_fu_1606_p2;
reg   [9:0] add_ln69_7_reg_2407;
reg   [1:0] trunc_ln69_7_reg_2413;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] v25_fu_1660_p11;
reg   [63:0] v25_reg_2438;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [63:0] v25_1_fu_1707_p11;
reg   [63:0] v25_1_reg_2463;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] v25_2_fu_1754_p11;
reg   [63:0] v25_2_reg_2488;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [63:0] v25_3_fu_1801_p11;
reg   [63:0] v25_3_reg_2513;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [63:0] v25_4_fu_1848_p11;
reg   [63:0] v25_4_reg_2538;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [63:0] v25_5_fu_1895_p11;
reg   [63:0] v25_5_reg_2563;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [63:0] v25_6_fu_1942_p11;
reg   [63:0] v25_6_reg_2588;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] v27_reg_2613;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [63:0] v25_7_fu_1989_p11;
reg   [63:0] v25_7_reg_2618;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] v27_1_reg_2628;
reg   [63:0] v27_2_reg_2633;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] v27_3_reg_2638;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] v27_4_reg_2643;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] v27_5_reg_2648;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] v27_6_reg_2653;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] v27_7_reg_2658;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage21_subdone;
wire   [63:0] zext_ln70_1_fu_782_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_2_fu_828_p1;
wire   [63:0] zext_ln70_3_fu_998_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln70_4_fu_1032_p1;
wire   [63:0] zext_ln70_6_fu_1167_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln70_7_fu_1210_p1;
wire   [63:0] zext_ln70_8_fu_1373_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln70_9_fu_1396_p1;
wire   [63:0] zext_ln69_fu_1636_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln69_3_fu_1683_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln69_6_fu_1730_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln69_9_fu_1777_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln69_11_fu_1824_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln69_12_fu_1871_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln69_13_fu_1918_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln69_14_fu_1965_p1;
wire    ap_block_pp0_stage20;
reg   [63:0] v28_fu_128;
wire    ap_loop_init;
wire    ap_block_pp0_stage22;
reg   [3:0] v24_fu_132;
wire   [3:0] xor_ln_fu_1234_p3;
reg   [3:0] ap_sig_allocacmp_v24_1;
wire    ap_block_pp0_stage61_01001;
reg    v6_0_ce0_local;
reg   [9:0] v6_0_address0_local;
reg    v6_1_ce0_local;
reg   [9:0] v6_1_address0_local;
reg    v6_2_ce0_local;
reg   [9:0] v6_2_address0_local;
reg    v6_3_ce0_local;
reg   [9:0] v6_3_address0_local;
reg    v0_0_ce0_local;
reg   [7:0] v0_0_address0_local;
reg    v0_1_ce0_local;
reg   [7:0] v0_1_address0_local;
reg    v0_2_ce0_local;
reg   [7:0] v0_2_address0_local;
reg    v0_3_ce0_local;
reg   [7:0] v0_3_address0_local;
reg   [63:0] grp_fu_719_p0;
reg   [63:0] grp_fu_719_p1;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30;
wire    ap_CS_fsm_pp0_stage38;
wire    ap_block_pp0_stage38;
wire    ap_CS_fsm_pp0_stage46;
wire    ap_block_pp0_stage46;
wire    ap_CS_fsm_pp0_stage54;
wire    ap_block_pp0_stage54;
wire    ap_CS_fsm_pp0_stage62;
wire    ap_block_pp0_stage62;
wire    ap_block_pp0_stage6;
reg   [63:0] grp_fu_724_p0;
reg   [63:0] grp_fu_724_p1;
wire    ap_block_pp0_stage21;
wire   [9:0] zext_ln68_fu_746_p1;
wire   [9:0] grp_fu_756_p0;
wire   [8:0] grp_fu_756_p1;
wire   [9:0] zext_ln70_fu_772_p1;
wire   [9:0] add_ln70_fu_776_p2;
wire   [2:0] tmp_fu_790_p4;
wire   [11:0] zext_ln69_1_fu_808_p1;
wire   [11:0] add_ln70_1_fu_812_p2;
wire   [9:0] lshr_ln70_1_fu_818_p4;
wire   [9:0] mul_ln69_fu_863_p0;
wire   [11:0] mul_ln69_fu_863_p1;
wire   [20:0] mul_ln69_fu_863_p2;
wire   [63:0] v26_fu_895_p2;
wire   [63:0] v26_fu_895_p4;
wire   [63:0] v26_fu_895_p6;
wire   [63:0] v26_fu_895_p8;
wire   [63:0] v26_fu_895_p9;
wire   [9:0] zext_ln69_2_fu_918_p1;
wire   [9:0] grp_fu_926_p0;
wire   [8:0] grp_fu_926_p1;
wire   [63:0] v26_1_fu_948_p2;
wire   [63:0] v26_1_fu_948_p4;
wire   [63:0] v26_1_fu_948_p6;
wire   [63:0] v26_1_fu_948_p8;
wire   [63:0] v26_1_fu_948_p9;
wire   [11:0] zext_ln69_4_fu_979_p1;
wire   [11:0] add_ln70_2_fu_983_p2;
wire   [9:0] lshr_ln70_2_fu_988_p4;
wire   [11:0] zext_ln69_7_fu_1013_p1;
wire   [11:0] add_ln70_3_fu_1017_p2;
wire   [9:0] lshr_ln70_3_fu_1022_p4;
wire   [9:0] mul_ln69_1_fu_1043_p0;
wire   [11:0] mul_ln69_1_fu_1043_p1;
wire   [20:0] mul_ln69_1_fu_1043_p2;
wire   [9:0] zext_ln69_5_fu_1059_p1;
wire   [9:0] grp_fu_1067_p0;
wire   [8:0] grp_fu_1067_p1;
wire   [63:0] v26_2_fu_1089_p2;
wire   [63:0] v26_2_fu_1089_p4;
wire   [63:0] v26_2_fu_1089_p6;
wire   [63:0] v26_2_fu_1089_p8;
wire   [63:0] v26_2_fu_1089_p9;
wire   [63:0] v26_3_fu_1128_p2;
wire   [63:0] v26_3_fu_1128_p4;
wire   [63:0] v26_3_fu_1128_p6;
wire   [63:0] v26_3_fu_1128_p8;
wire   [63:0] v26_3_fu_1128_p9;
wire   [1:0] or_ln1_fu_1151_p3;
wire   [9:0] zext_ln70_5_fu_1158_p1;
wire   [9:0] add_ln70_4_fu_1162_p2;
wire   [11:0] zext_ln68_1_fu_1191_p1;
wire   [11:0] add_ln70_5_fu_1195_p2;
wire   [9:0] lshr_ln70_4_fu_1200_p4;
wire   [0:0] bit_sel1_fu_1218_p3;
wire   [0:0] xor_ln68_fu_1225_p2;
wire   [2:0] trunc_ln68_2_fu_1231_p1;
wire   [9:0] mul_ln69_2_fu_1250_p0;
wire   [11:0] mul_ln69_2_fu_1250_p1;
wire   [20:0] mul_ln69_2_fu_1250_p2;
wire   [9:0] zext_ln69_8_fu_1266_p1;
wire   [9:0] grp_fu_1274_p0;
wire   [8:0] grp_fu_1274_p1;
wire   [63:0] v26_4_fu_1296_p2;
wire   [63:0] v26_4_fu_1296_p4;
wire   [63:0] v26_4_fu_1296_p6;
wire   [63:0] v26_4_fu_1296_p8;
wire   [63:0] v26_4_fu_1296_p9;
wire   [63:0] v26_5_fu_1335_p2;
wire   [63:0] v26_5_fu_1335_p4;
wire   [63:0] v26_5_fu_1335_p6;
wire   [63:0] v26_5_fu_1335_p8;
wire   [63:0] v26_5_fu_1335_p9;
wire   [11:0] add_ln70_6_fu_1358_p2;
wire   [9:0] lshr_ln70_5_fu_1363_p4;
wire   [11:0] add_ln70_7_fu_1381_p2;
wire   [9:0] lshr_ln70_6_fu_1386_p4;
wire    ap_block_pp0_stage4;
wire   [9:0] mul_ln69_3_fu_1407_p0;
wire   [11:0] mul_ln69_3_fu_1407_p1;
wire   [20:0] mul_ln69_3_fu_1407_p2;
wire   [3:0] or_ln68_3_fu_1423_p4;
wire   [9:0] zext_ln69_10_fu_1431_p1;
wire   [9:0] grp_fu_1440_p0;
wire   [8:0] grp_fu_1440_p1;
wire   [63:0] v26_6_fu_1462_p2;
wire   [63:0] v26_6_fu_1462_p4;
wire   [63:0] v26_6_fu_1462_p6;
wire   [63:0] v26_6_fu_1462_p8;
wire   [63:0] v26_6_fu_1462_p9;
wire   [63:0] v26_7_fu_1501_p2;
wire   [63:0] v26_7_fu_1501_p4;
wire   [63:0] v26_7_fu_1501_p6;
wire   [63:0] v26_7_fu_1501_p8;
wire   [63:0] v26_7_fu_1501_p9;
wire    ap_block_pp0_stage5;
wire   [9:0] mul_ln69_4_fu_1527_p0;
wire   [11:0] mul_ln69_4_fu_1527_p1;
wire   [20:0] mul_ln69_4_fu_1527_p2;
wire   [9:0] zext_ln68_2_fu_1543_p1;
wire   [9:0] grp_fu_1551_p0;
wire   [8:0] grp_fu_1551_p1;
wire   [9:0] mul_ln69_5_fu_1560_p0;
wire   [11:0] mul_ln69_5_fu_1560_p1;
wire   [20:0] mul_ln69_5_fu_1560_p2;
wire   [9:0] grp_fu_1581_p0;
wire   [8:0] grp_fu_1581_p1;
wire    ap_block_pp0_stage7;
wire   [9:0] mul_ln69_6_fu_1590_p0;
wire   [11:0] mul_ln69_6_fu_1590_p1;
wire   [20:0] mul_ln69_6_fu_1590_p2;
wire   [9:0] grp_fu_1611_p0;
wire   [8:0] grp_fu_1611_p1;
wire    ap_block_pp0_stage8;
wire   [9:0] mul_ln69_7_fu_1620_p0;
wire   [11:0] mul_ln69_7_fu_1620_p1;
wire   [20:0] mul_ln69_7_fu_1620_p2;
wire   [9:0] grp_fu_756_p2;
wire   [63:0] v25_fu_1660_p2;
wire   [63:0] v25_fu_1660_p4;
wire   [63:0] v25_fu_1660_p6;
wire   [63:0] v25_fu_1660_p8;
wire   [63:0] v25_fu_1660_p9;
wire   [9:0] grp_fu_926_p2;
wire   [63:0] v25_1_fu_1707_p2;
wire   [63:0] v25_1_fu_1707_p4;
wire   [63:0] v25_1_fu_1707_p6;
wire   [63:0] v25_1_fu_1707_p8;
wire   [63:0] v25_1_fu_1707_p9;
wire   [9:0] grp_fu_1067_p2;
wire   [63:0] v25_2_fu_1754_p2;
wire   [63:0] v25_2_fu_1754_p4;
wire   [63:0] v25_2_fu_1754_p6;
wire   [63:0] v25_2_fu_1754_p8;
wire   [63:0] v25_2_fu_1754_p9;
wire   [9:0] grp_fu_1274_p2;
wire   [63:0] v25_3_fu_1801_p2;
wire   [63:0] v25_3_fu_1801_p4;
wire   [63:0] v25_3_fu_1801_p6;
wire   [63:0] v25_3_fu_1801_p8;
wire   [63:0] v25_3_fu_1801_p9;
wire   [9:0] grp_fu_1440_p2;
wire   [63:0] v25_4_fu_1848_p2;
wire   [63:0] v25_4_fu_1848_p4;
wire   [63:0] v25_4_fu_1848_p6;
wire   [63:0] v25_4_fu_1848_p8;
wire   [63:0] v25_4_fu_1848_p9;
wire   [9:0] grp_fu_1551_p2;
wire   [63:0] v25_5_fu_1895_p2;
wire   [63:0] v25_5_fu_1895_p4;
wire   [63:0] v25_5_fu_1895_p6;
wire   [63:0] v25_5_fu_1895_p8;
wire   [63:0] v25_5_fu_1895_p9;
wire   [9:0] grp_fu_1581_p2;
wire   [63:0] v25_6_fu_1942_p2;
wire   [63:0] v25_6_fu_1942_p4;
wire   [63:0] v25_6_fu_1942_p6;
wire   [63:0] v25_6_fu_1942_p8;
wire   [63:0] v25_6_fu_1942_p9;
wire   [9:0] grp_fu_1611_p2;
wire   [63:0] v25_7_fu_1989_p2;
wire   [63:0] v25_7_fu_1989_p4;
wire   [63:0] v25_7_fu_1989_p6;
wire   [63:0] v25_7_fu_1989_p8;
wire   [63:0] v25_7_fu_1989_p9;
wire    ap_block_pp0_stage22_00001;
wire    ap_block_pp0_stage30_00001;
wire    ap_block_pp0_stage38_00001;
wire    ap_block_pp0_stage46_00001;
wire    ap_block_pp0_stage54_00001;
wire    ap_block_pp0_stage62_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage14_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [63:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
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
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_block_pp0_stage31_subdone;
wire    ap_block_pp0_stage32_subdone;
wire    ap_block_pp0_stage33_subdone;
wire    ap_block_pp0_stage34_subdone;
wire    ap_block_pp0_stage35_subdone;
wire    ap_block_pp0_stage36_subdone;
wire    ap_block_pp0_stage37_subdone;
wire    ap_block_pp0_stage38_subdone;
wire    ap_block_pp0_stage39_subdone;
wire    ap_block_pp0_stage40_subdone;
wire    ap_block_pp0_stage41_subdone;
wire    ap_block_pp0_stage42_subdone;
wire    ap_block_pp0_stage43_subdone;
wire    ap_block_pp0_stage44_subdone;
wire    ap_block_pp0_stage45_subdone;
wire    ap_block_pp0_stage46_subdone;
wire    ap_block_pp0_stage47_subdone;
wire    ap_block_pp0_stage48_subdone;
wire    ap_block_pp0_stage49_subdone;
wire    ap_block_pp0_stage50_subdone;
wire    ap_block_pp0_stage51_subdone;
wire    ap_block_pp0_stage52_subdone;
wire    ap_block_pp0_stage53_subdone;
wire    ap_block_pp0_stage54_subdone;
wire    ap_block_pp0_stage55_subdone;
wire    ap_block_pp0_stage56_subdone;
wire    ap_block_pp0_stage57_subdone;
wire    ap_block_pp0_stage58_subdone;
wire    ap_block_pp0_stage59_subdone;
wire    ap_block_pp0_stage60_subdone;
wire    ap_block_pp0_stage62_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [20:0] mul_ln69_1_fu_1043_p00;
wire   [20:0] mul_ln69_2_fu_1250_p00;
wire   [20:0] mul_ln69_3_fu_1407_p00;
wire   [20:0] mul_ln69_4_fu_1527_p00;
wire   [20:0] mul_ln69_5_fu_1560_p00;
wire   [20:0] mul_ln69_6_fu_1590_p00;
wire   [20:0] mul_ln69_7_fu_1620_p00;
wire   [20:0] mul_ln69_fu_863_p00;
reg    ap_condition_2206;
reg    ap_condition_2210;
reg    ap_condition_2214;
reg    ap_condition_2218;
reg    ap_condition_2222;
reg    ap_condition_2227;
reg    ap_condition_2232;
reg    ap_condition_2237;
reg    ap_condition_2241;
reg    ap_condition_2245;
reg    ap_condition_2249;
reg    ap_condition_2253;
reg    ap_condition_2258;
reg    ap_condition_2262;
reg    ap_condition_2266;
reg    ap_condition_2270;
reg    ap_condition_2274;
reg    ap_condition_2279;
reg    ap_condition_2283;
reg    ap_condition_2287;
wire   [1:0] v26_fu_895_p1;
wire   [1:0] v26_fu_895_p3;
wire  signed [1:0] v26_fu_895_p5;
wire  signed [1:0] v26_fu_895_p7;
wire  signed [1:0] v26_1_fu_948_p1;
wire   [1:0] v26_1_fu_948_p3;
wire   [1:0] v26_1_fu_948_p5;
wire  signed [1:0] v26_1_fu_948_p7;
wire  signed [1:0] v26_2_fu_1089_p1;
wire  signed [1:0] v26_2_fu_1089_p3;
wire   [1:0] v26_2_fu_1089_p5;
wire   [1:0] v26_2_fu_1089_p7;
wire   [1:0] v26_3_fu_1128_p1;
wire  signed [1:0] v26_3_fu_1128_p3;
wire  signed [1:0] v26_3_fu_1128_p5;
wire   [1:0] v26_3_fu_1128_p7;
wire   [1:0] v26_4_fu_1296_p1;
wire   [1:0] v26_4_fu_1296_p3;
wire  signed [1:0] v26_4_fu_1296_p5;
wire  signed [1:0] v26_4_fu_1296_p7;
wire  signed [1:0] v26_5_fu_1335_p1;
wire   [1:0] v26_5_fu_1335_p3;
wire   [1:0] v26_5_fu_1335_p5;
wire  signed [1:0] v26_5_fu_1335_p7;
wire  signed [1:0] v26_6_fu_1462_p1;
wire  signed [1:0] v26_6_fu_1462_p3;
wire   [1:0] v26_6_fu_1462_p5;
wire   [1:0] v26_6_fu_1462_p7;
wire   [1:0] v26_7_fu_1501_p1;
wire  signed [1:0] v26_7_fu_1501_p3;
wire  signed [1:0] v26_7_fu_1501_p5;
wire   [1:0] v26_7_fu_1501_p7;
wire   [1:0] v25_fu_1660_p1;
wire   [1:0] v25_fu_1660_p3;
wire  signed [1:0] v25_fu_1660_p5;
wire  signed [1:0] v25_fu_1660_p7;
wire   [1:0] v25_1_fu_1707_p1;
wire   [1:0] v25_1_fu_1707_p3;
wire  signed [1:0] v25_1_fu_1707_p5;
wire  signed [1:0] v25_1_fu_1707_p7;
wire   [1:0] v25_2_fu_1754_p1;
wire   [1:0] v25_2_fu_1754_p3;
wire  signed [1:0] v25_2_fu_1754_p5;
wire  signed [1:0] v25_2_fu_1754_p7;
wire   [1:0] v25_3_fu_1801_p1;
wire   [1:0] v25_3_fu_1801_p3;
wire  signed [1:0] v25_3_fu_1801_p5;
wire  signed [1:0] v25_3_fu_1801_p7;
wire   [1:0] v25_4_fu_1848_p1;
wire   [1:0] v25_4_fu_1848_p3;
wire  signed [1:0] v25_4_fu_1848_p5;
wire  signed [1:0] v25_4_fu_1848_p7;
wire   [1:0] v25_5_fu_1895_p1;
wire   [1:0] v25_5_fu_1895_p3;
wire  signed [1:0] v25_5_fu_1895_p5;
wire  signed [1:0] v25_5_fu_1895_p7;
wire   [1:0] v25_6_fu_1942_p1;
wire   [1:0] v25_6_fu_1942_p3;
wire  signed [1:0] v25_6_fu_1942_p5;
wire  signed [1:0] v25_6_fu_1942_p7;
wire   [1:0] v25_7_fu_1989_p1;
wire   [1:0] v25_7_fu_1989_p3;
wire  signed [1:0] v25_7_fu_1989_p5;
wire  signed [1:0] v25_7_fu_1989_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 64'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_128 = 64'd0;
#0 v24_fu_132 = 4'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_756_p0),.din1(grp_fu_756_p1),.ce(1'b1),.dout(grp_fu_756_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U19(.din0(mul_ln69_fu_863_p0),.din1(mul_ln69_fu_863_p1),.dout(mul_ln69_fu_863_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U20(.din0(v26_fu_895_p2),.din1(v26_fu_895_p4),.din2(v26_fu_895_p6),.din3(v26_fu_895_p8),.def(v26_fu_895_p9),.sel(empty_40),.dout(v26_fu_895_p11));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_926_p0),.din1(grp_fu_926_p1),.ce(1'b1),.dout(grp_fu_926_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U22(.din0(v26_1_fu_948_p2),.din1(v26_1_fu_948_p4),.din2(v26_1_fu_948_p6),.din3(v26_1_fu_948_p8),.def(v26_1_fu_948_p9),.sel(empty_40),.dout(v26_1_fu_948_p11));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U23(.din0(mul_ln69_1_fu_1043_p0),.din1(mul_ln69_1_fu_1043_p1),.dout(mul_ln69_1_fu_1043_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1067_p0),.din1(grp_fu_1067_p1),.ce(1'b1),.dout(grp_fu_1067_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h3 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.CASE3( 2'h1 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U25(.din0(v26_2_fu_1089_p2),.din1(v26_2_fu_1089_p4),.din2(v26_2_fu_1089_p6),.din3(v26_2_fu_1089_p8),.def(v26_2_fu_1089_p9),.sel(empty_40),.dout(v26_2_fu_1089_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h3 ),.din2_WIDTH( 64 ),.CASE3( 2'h0 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U26(.din0(v26_3_fu_1128_p2),.din1(v26_3_fu_1128_p4),.din2(v26_3_fu_1128_p6),.din3(v26_3_fu_1128_p8),.def(v26_3_fu_1128_p9),.sel(empty_40),.dout(v26_3_fu_1128_p11));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U27(.din0(mul_ln69_2_fu_1250_p0),.din1(mul_ln69_2_fu_1250_p1),.dout(mul_ln69_2_fu_1250_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1274_p0),.din1(grp_fu_1274_p1),.ce(1'b1),.dout(grp_fu_1274_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U29(.din0(v26_4_fu_1296_p2),.din1(v26_4_fu_1296_p4),.din2(v26_4_fu_1296_p6),.din3(v26_4_fu_1296_p8),.def(v26_4_fu_1296_p9),.sel(empty_40),.dout(v26_4_fu_1296_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U30(.din0(v26_5_fu_1335_p2),.din1(v26_5_fu_1335_p4),.din2(v26_5_fu_1335_p6),.din3(v26_5_fu_1335_p8),.def(v26_5_fu_1335_p9),.sel(empty_40),.dout(v26_5_fu_1335_p11));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U31(.din0(mul_ln69_3_fu_1407_p0),.din1(mul_ln69_3_fu_1407_p1),.dout(mul_ln69_3_fu_1407_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1440_p0),.din1(grp_fu_1440_p1),.ce(1'b1),.dout(grp_fu_1440_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h3 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.CASE3( 2'h1 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U33(.din0(v26_6_fu_1462_p2),.din1(v26_6_fu_1462_p4),.din2(v26_6_fu_1462_p6),.din3(v26_6_fu_1462_p8),.def(v26_6_fu_1462_p9),.sel(empty_40),.dout(v26_6_fu_1462_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h3 ),.din2_WIDTH( 64 ),.CASE3( 2'h0 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U34(.din0(v26_7_fu_1501_p2),.din1(v26_7_fu_1501_p4),.din2(v26_7_fu_1501_p6),.din3(v26_7_fu_1501_p8),.def(v26_7_fu_1501_p9),.sel(empty_40),.dout(v26_7_fu_1501_p11));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U35(.din0(mul_ln69_4_fu_1527_p0),.din1(mul_ln69_4_fu_1527_p1),.dout(mul_ln69_4_fu_1527_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U36(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1551_p0),.din1(grp_fu_1551_p1),.ce(1'b1),.dout(grp_fu_1551_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U37(.din0(mul_ln69_5_fu_1560_p0),.din1(mul_ln69_5_fu_1560_p1),.dout(mul_ln69_5_fu_1560_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U38(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1581_p0),.din1(grp_fu_1581_p1),.ce(1'b1),.dout(grp_fu_1581_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U39(.din0(mul_ln69_6_fu_1590_p0),.din1(mul_ln69_6_fu_1590_p1),.dout(mul_ln69_6_fu_1590_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U40(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1611_p0),.din1(grp_fu_1611_p1),.ce(1'b1),.dout(grp_fu_1611_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U41(.din0(mul_ln69_7_fu_1620_p0),.din1(mul_ln69_7_fu_1620_p1),.dout(mul_ln69_7_fu_1620_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U42(.din0(v25_fu_1660_p2),.din1(v25_fu_1660_p4),.din2(v25_fu_1660_p6),.din3(v25_fu_1660_p8),.def(v25_fu_1660_p9),.sel(trunc_ln3_reg_2157),.dout(v25_fu_1660_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U43(.din0(v25_1_fu_1707_p2),.din1(v25_1_fu_1707_p4),.din2(v25_1_fu_1707_p6),.din3(v25_1_fu_1707_p8),.def(v25_1_fu_1707_p9),.sel(trunc_ln69_1_reg_2228),.dout(v25_1_fu_1707_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U44(.din0(v25_2_fu_1754_p2),.din1(v25_2_fu_1754_p4),.din2(v25_2_fu_1754_p6),.din3(v25_2_fu_1754_p8),.def(v25_2_fu_1754_p9),.sel(trunc_ln69_2_reg_2298),.dout(v25_2_fu_1754_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U45(.din0(v25_3_fu_1801_p2),.din1(v25_3_fu_1801_p4),.din2(v25_3_fu_1801_p6),.din3(v25_3_fu_1801_p8),.def(v25_3_fu_1801_p9),.sel(trunc_ln69_3_reg_2359),.dout(v25_3_fu_1801_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U46(.din0(v25_4_fu_1848_p2),.din1(v25_4_fu_1848_p4),.din2(v25_4_fu_1848_p6),.din3(v25_4_fu_1848_p8),.def(v25_4_fu_1848_p9),.sel(trunc_ln69_4_reg_2380),.dout(v25_4_fu_1848_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U47(.din0(v25_5_fu_1895_p2),.din1(v25_5_fu_1895_p4),.din2(v25_5_fu_1895_p6),.din3(v25_5_fu_1895_p8),.def(v25_5_fu_1895_p9),.sel(trunc_ln69_5_reg_2391),.dout(v25_5_fu_1895_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U48(.din0(v25_6_fu_1942_p2),.din1(v25_6_fu_1942_p4),.din2(v25_6_fu_1942_p6),.din3(v25_6_fu_1942_p8),.def(v25_6_fu_1942_p9),.sel(trunc_ln69_6_reg_2402),.dout(v25_6_fu_1942_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U49(.din0(v25_7_fu_1989_p2),.din1(v25_7_fu_1989_p4),.din2(v25_7_fu_1989_p6),.din3(v25_7_fu_1989_p8),.def(v25_7_fu_1989_p9),.sel(trunc_ln69_7_reg_2413),.dout(v25_7_fu_1989_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage61),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage61_subdone) & (1'b1 == ap_CS_fsm_pp0_stage61) & (ap_loop_exit_ready == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage61)) begin
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
        if (((1'b0 == ap_block_pp0_stage21_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_fu_132 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_1185_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v24_fu_132 <= xor_ln_fu_1234_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_128 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        v28_fu_128 <= grp_fu_16517_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln69_1_reg_2167 <= add_ln69_1_fu_921_p2;
        or_ln68_1_reg_2178[0] <= or_ln68_1_fu_971_p4[0];
or_ln68_1_reg_2178[3 : 2] <= or_ln68_1_fu_971_p4[3 : 2];
        or_ln68_2_reg_2203[3 : 2] <= or_ln68_2_fu_1006_p3[3 : 2];
        trunc_ln3_reg_2157 <= {{mul_ln69_fu_863_p2[19:18]}};
        v26_1_reg_2173 <= v26_1_fu_948_p11;
        v26_reg_2162 <= v26_fu_895_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln69_2_reg_2233 <= add_ln69_2_fu_1062_p2;
        icmp_ln68_reg_2274 <= icmp_ln68_fu_1185_p2;
        or_ln68_4_reg_2269[1] <= or_ln68_4_fu_1175_p5[1];
or_ln68_4_reg_2269[3] <= or_ln68_4_fu_1175_p5[3];
        trunc_ln69_1_reg_2228 <= {{mul_ln69_1_fu_1043_p2[19:18]}};
        v26_2_reg_2239 <= v26_2_fu_1089_p11;
        v26_3_reg_2244 <= v26_3_fu_1128_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln69_3_reg_2303 <= add_ln69_3_fu_1269_p2;
        trunc_ln69_2_reg_2298 <= {{mul_ln69_2_fu_1250_p2[19:18]}};
        v26_4_reg_2309 <= v26_4_fu_1296_p11;
        v26_5_reg_2314 <= v26_5_fu_1335_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln69_4_reg_2364 <= add_ln69_4_fu_1435_p2;
        trunc_ln69_3_reg_2359 <= {{mul_ln69_3_fu_1407_p2[19:18]}};
        v26_6_reg_2370 <= v26_6_fu_1462_p11;
        v26_7_reg_2375 <= v26_7_fu_1501_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln69_5_reg_2385 <= add_ln69_5_fu_1546_p2;
        trunc_ln69_4_reg_2380 <= {{mul_ln69_4_fu_1527_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln69_6_reg_2396 <= add_ln69_6_fu_1576_p2;
        trunc_ln69_5_reg_2391 <= {{mul_ln69_5_fu_1560_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln69_7_reg_2407 <= add_ln69_7_fu_1606_p2;
        trunc_ln69_6_reg_2402 <= {{mul_ln69_6_fu_1590_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln69_reg_2078 <= add_ln69_fu_750_p2;
        lshr_ln1_reg_2084 <= {{ap_sig_allocacmp_v24_1[3:2]}};
        or_ln_reg_2110[3 : 1] <= or_ln_fu_800_p3[3 : 1];
        tmp_5_reg_2140 <= ap_sig_allocacmp_v24_1[32'd3];
        tmp_6_reg_2152 <= ap_sig_allocacmp_v24_1[32'd1];
        trunc_ln68_1_reg_2147 <= trunc_ln68_1_fu_848_p1;
        trunc_ln68_reg_2135 <= trunc_ln68_fu_836_p1;
        v24_1_reg_2072 <= ap_sig_allocacmp_v24_1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage61_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage61)) | ((1'b0 == ap_block_pp0_stage53_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage53)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)))) begin
        reg_728 <= grp_fu_16517_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln69_7_reg_2413 <= {{mul_ln69_7_fu_1620_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v25_1_reg_2463 <= v25_1_fu_1707_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        v25_2_reg_2488 <= v25_2_fu_1754_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        v25_3_reg_2513 <= v25_3_fu_1801_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        v25_4_reg_2538 <= v25_4_fu_1848_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        v25_5_reg_2563 <= v25_5_fu_1895_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        v25_6_reg_2588 <= v25_6_fu_1942_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        v25_7_reg_2618 <= v25_7_fu_1989_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v25_reg_2438 <= v25_fu_1660_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        v27_1_reg_2628 <= grp_fu_16529_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        v27_2_reg_2633 <= grp_fu_16529_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        v27_3_reg_2638 <= grp_fu_16529_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        v27_4_reg_2643 <= grp_fu_16529_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        v27_5_reg_2648 <= grp_fu_16529_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        v27_6_reg_2653 <= grp_fu_16529_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        v27_7_reg_2658 <= grp_fu_16529_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        v27_reg_2613 <= grp_fu_16529_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage61_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage61) & (icmp_ln68_reg_2274 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage61 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage61 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage61_subdone) & (1'b1 == ap_CS_fsm_pp0_stage61) & (ap_loop_exit_ready == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage63_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v24_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_v24_1 = v24_fu_132;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage62) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage62)) | ((1'b0 == ap_block_pp0_stage54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage54)) | ((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)))) begin
        grp_fu_719_p0 = reg_728;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_719_p0 = v28_fu_128;
    end else begin
        grp_fu_719_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_719_p1 = v27_7_reg_2658;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_719_p1 = v27_6_reg_2653;
    end else if (((1'b0 == ap_block_pp0_stage62) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage62))) begin
        grp_fu_719_p1 = v27_5_reg_2648;
    end else if (((1'b0 == ap_block_pp0_stage54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage54))) begin
        grp_fu_719_p1 = v27_4_reg_2643;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        grp_fu_719_p1 = v27_3_reg_2638;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        grp_fu_719_p1 = v27_2_reg_2633;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_719_p1 = v27_1_reg_2628;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_719_p1 = v27_reg_2613;
    end else begin
        grp_fu_719_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_724_p0 = v25_7_reg_2618;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_724_p0 = v25_6_reg_2588;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_724_p0 = v25_5_reg_2563;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_724_p0 = v25_4_reg_2538;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_724_p0 = v25_3_reg_2513;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_724_p0 = v25_2_reg_2488;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_724_p0 = v25_1_reg_2463;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_724_p0 = v25_reg_2438;
        end else begin
            grp_fu_724_p0 = 'bx;
        end
    end else begin
        grp_fu_724_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_724_p1 = v26_7_reg_2375;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_724_p1 = v26_6_reg_2370;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_724_p1 = v26_5_reg_2314;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_724_p1 = v26_4_reg_2309;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_724_p1 = v26_3_reg_2244;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_724_p1 = v26_2_reg_2239;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_724_p1 = v26_1_reg_2173;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_724_p1 = v26_reg_2162;
        end else begin
            grp_fu_724_p1 = 'bx;
        end
    end else begin
        grp_fu_724_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_0_address0_local = zext_ln69_14_fu_1965_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v0_0_address0_local = zext_ln69_13_fu_1918_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_0_address0_local = zext_ln69_12_fu_1871_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v0_0_address0_local = zext_ln69_11_fu_1824_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_0_address0_local = zext_ln69_9_fu_1777_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v0_0_address0_local = zext_ln69_6_fu_1730_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_0_address0_local = zext_ln69_3_fu_1683_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_0_address0_local = zext_ln69_fu_1636_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_1_address0_local = zext_ln69_14_fu_1965_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v0_1_address0_local = zext_ln69_13_fu_1918_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_1_address0_local = zext_ln69_12_fu_1871_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v0_1_address0_local = zext_ln69_11_fu_1824_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_1_address0_local = zext_ln69_9_fu_1777_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v0_1_address0_local = zext_ln69_6_fu_1730_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_1_address0_local = zext_ln69_3_fu_1683_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_1_address0_local = zext_ln69_fu_1636_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_2_address0_local = zext_ln69_14_fu_1965_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v0_2_address0_local = zext_ln69_13_fu_1918_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_2_address0_local = zext_ln69_12_fu_1871_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v0_2_address0_local = zext_ln69_11_fu_1824_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_2_address0_local = zext_ln69_9_fu_1777_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v0_2_address0_local = zext_ln69_6_fu_1730_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_2_address0_local = zext_ln69_3_fu_1683_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_2_address0_local = zext_ln69_fu_1636_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_3_address0_local = zext_ln69_14_fu_1965_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v0_3_address0_local = zext_ln69_13_fu_1918_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_3_address0_local = zext_ln69_12_fu_1871_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v0_3_address0_local = zext_ln69_11_fu_1824_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_3_address0_local = zext_ln69_9_fu_1777_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v0_3_address0_local = zext_ln69_6_fu_1730_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_3_address0_local = zext_ln69_3_fu_1683_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_3_address0_local = zext_ln69_fu_1636_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage61_11001) & (1'b1 == ap_CS_fsm_pp0_stage61) & (ap_loop_exit_ready == 1'b1) & (icmp_ln68_reg_2274 == 1'd1))) begin
        v29_12_out_ap_vld = 1'b1;
    end else begin
        v29_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_2237)) begin
            v6_0_address0_local = zext_ln70_9_fu_1396_p1;
        end else if ((1'b1 == ap_condition_2232)) begin
            v6_0_address0_local = zext_ln70_8_fu_1373_p1;
        end else if ((1'b1 == ap_condition_2227)) begin
            v6_0_address0_local = zext_ln70_7_fu_1210_p1;
        end else if ((1'b1 == ap_condition_2222)) begin
            v6_0_address0_local = zext_ln70_6_fu_1167_p1;
        end else if ((1'b1 == ap_condition_2218)) begin
            v6_0_address0_local = zext_ln70_4_fu_1032_p1;
        end else if ((1'b1 == ap_condition_2214)) begin
            v6_0_address0_local = zext_ln70_3_fu_998_p1;
        end else if ((1'b1 == ap_condition_2210)) begin
            v6_0_address0_local = zext_ln70_2_fu_828_p1;
        end else if ((1'b1 == ap_condition_2206)) begin
            v6_0_address0_local = zext_ln70_1_fu_782_p1;
        end else begin
            v6_0_address0_local = 'bx;
        end
    end else begin
        v6_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_2274 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_2274 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_1185_p2 == 1'd0) & (tmp_4_reg_2044 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_read_fu_142_p2 == 2'd3) & (1'b1== ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_read_fu_142_p2 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_2232)) begin
            v6_1_address0_local = zext_ln70_9_fu_1396_p1;
        end else if ((1'b1 == ap_condition_2258)) begin
            v6_1_address0_local = zext_ln70_8_fu_1373_p1;
        end else if ((1'b1 == ap_condition_2253)) begin
            v6_1_address0_local = zext_ln70_7_fu_1210_p1;
        end else if ((1'b1 == ap_condition_2249)) begin
            v6_1_address0_local = zext_ln70_6_fu_1167_p1;
        end else if ((1'b1 == ap_condition_2214)) begin
            v6_1_address0_local = zext_ln70_4_fu_1032_p1;
        end else if ((1'b1 == ap_condition_2245)) begin
            v6_1_address0_local = zext_ln70_3_fu_998_p1;
        end else if ((1'b1 == ap_condition_2206)) begin
            v6_1_address0_local = zext_ln70_2_fu_828_p1;
        end else if ((1'b1 == ap_condition_2241)) begin
            v6_1_address0_local = zext_ln70_1_fu_782_p1;
        end else begin
            v6_1_address0_local = 'bx;
        end
    end else begin
        v6_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_2274 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_2274 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_1185_p2 == 1'd0) & (tmp_4_reg_2044 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_read_fu_142_p2 == 2'd1) & (1'b1== ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_read_fu_142_p2 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_2258)) begin
            v6_2_address0_local = zext_ln70_9_fu_1396_p1;
        end else if ((1'b1 == ap_condition_2279)) begin
            v6_2_address0_local = zext_ln70_8_fu_1373_p1;
        end else if ((1'b1 == ap_condition_2274)) begin
            v6_2_address0_local = zext_ln70_7_fu_1210_p1;
        end else if ((1'b1 == ap_condition_2270)) begin
            v6_2_address0_local = zext_ln70_6_fu_1167_p1;
        end else if ((1'b1 == ap_condition_2245)) begin
            v6_2_address0_local = zext_ln70_4_fu_1032_p1;
        end else if ((1'b1 == ap_condition_2266)) begin
            v6_2_address0_local = zext_ln70_3_fu_998_p1;
        end else if ((1'b1 == ap_condition_2241)) begin
            v6_2_address0_local = zext_ln70_2_fu_828_p1;
        end else if ((1'b1 == ap_condition_2262)) begin
            v6_2_address0_local = zext_ln70_1_fu_782_p1;
        end else begin
            v6_2_address0_local = 'bx;
        end
    end else begin
        v6_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_2274 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_2274 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_1185_p2 == 1'd0) & (tmp_4_reg_2044 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_read_fu_142_p2 == 2'd2) & (1'b1== ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_read_fu_142_p2 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v6_2_ce0_local = 1'b1;
    end else begin
        v6_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_2279)) begin
            v6_3_address0_local = zext_ln70_9_fu_1396_p1;
        end else if ((1'b1 == ap_condition_2237)) begin
            v6_3_address0_local = zext_ln70_8_fu_1373_p1;
        end else if ((1'b1 == ap_condition_2287)) begin
            v6_3_address0_local = zext_ln70_7_fu_1210_p1;
        end else if ((1'b1 == ap_condition_2283)) begin
            v6_3_address0_local = zext_ln70_6_fu_1167_p1;
        end else if ((1'b1 == ap_condition_2266)) begin
            v6_3_address0_local = zext_ln70_4_fu_1032_p1;
        end else if ((1'b1 == ap_condition_2218)) begin
            v6_3_address0_local = zext_ln70_3_fu_998_p1;
        end else if ((1'b1 == ap_condition_2262)) begin
            v6_3_address0_local = zext_ln70_2_fu_828_p1;
        end else if ((1'b1 == ap_condition_2210)) begin
            v6_3_address0_local = zext_ln70_1_fu_782_p1;
        end else begin
            v6_3_address0_local = 'bx;
        end
    end else begin
        v6_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_2274 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_2274 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_1185_p2 == 1'd0) & (tmp_4_reg_2044 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_reg_2044 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_read_fu_142_p2 == 2'd3) & (1'b1== ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_4_read_fu_142_p2 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v6_3_ce0_local = 1'b1;
    end else begin
        v6_3_ce0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_pp0_stage32 : begin
            if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end
        end
        ap_ST_fsm_pp0_stage33 : begin
            if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end
        end
        ap_ST_fsm_pp0_stage34 : begin
            if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end
        end
        ap_ST_fsm_pp0_stage35 : begin
            if ((1'b0 == ap_block_pp0_stage35_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end
        end
        ap_ST_fsm_pp0_stage36 : begin
            if ((1'b0 == ap_block_pp0_stage36_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end
        end
        ap_ST_fsm_pp0_stage37 : begin
            if ((1'b0 == ap_block_pp0_stage37_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end
        end
        ap_ST_fsm_pp0_stage38 : begin
            if ((1'b0 == ap_block_pp0_stage38_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end
        end
        ap_ST_fsm_pp0_stage39 : begin
            if ((1'b0 == ap_block_pp0_stage39_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end
        end
        ap_ST_fsm_pp0_stage40 : begin
            if ((1'b0 == ap_block_pp0_stage40_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end
        end
        ap_ST_fsm_pp0_stage41 : begin
            if ((1'b0 == ap_block_pp0_stage41_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end
        end
        ap_ST_fsm_pp0_stage42 : begin
            if ((1'b0 == ap_block_pp0_stage42_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end
        end
        ap_ST_fsm_pp0_stage43 : begin
            if ((1'b0 == ap_block_pp0_stage43_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end
        end
        ap_ST_fsm_pp0_stage44 : begin
            if ((1'b0 == ap_block_pp0_stage44_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end
        end
        ap_ST_fsm_pp0_stage45 : begin
            if ((1'b0 == ap_block_pp0_stage45_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end
        end
        ap_ST_fsm_pp0_stage46 : begin
            if ((1'b0 == ap_block_pp0_stage46_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end
        end
        ap_ST_fsm_pp0_stage47 : begin
            if ((1'b0 == ap_block_pp0_stage47_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end
        end
        ap_ST_fsm_pp0_stage48 : begin
            if ((1'b0 == ap_block_pp0_stage48_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end
        end
        ap_ST_fsm_pp0_stage49 : begin
            if ((1'b0 == ap_block_pp0_stage49_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end
        end
        ap_ST_fsm_pp0_stage50 : begin
            if ((1'b0 == ap_block_pp0_stage50_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end
        end
        ap_ST_fsm_pp0_stage51 : begin
            if ((1'b0 == ap_block_pp0_stage51_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end
        end
        ap_ST_fsm_pp0_stage52 : begin
            if ((1'b0 == ap_block_pp0_stage52_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end
        end
        ap_ST_fsm_pp0_stage53 : begin
            if ((1'b0 == ap_block_pp0_stage53_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end
        end
        ap_ST_fsm_pp0_stage54 : begin
            if ((1'b0 == ap_block_pp0_stage54_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end
        end
        ap_ST_fsm_pp0_stage55 : begin
            if ((1'b0 == ap_block_pp0_stage55_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end
        end
        ap_ST_fsm_pp0_stage56 : begin
            if ((1'b0 == ap_block_pp0_stage56_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage57;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end
        end
        ap_ST_fsm_pp0_stage57 : begin
            if ((1'b0 == ap_block_pp0_stage57_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage58;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage57;
            end
        end
        ap_ST_fsm_pp0_stage58 : begin
            if ((1'b0 == ap_block_pp0_stage58_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage59;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage58;
            end
        end
        ap_ST_fsm_pp0_stage59 : begin
            if ((1'b0 == ap_block_pp0_stage59_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage60;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage59;
            end
        end
        ap_ST_fsm_pp0_stage60 : begin
            if ((1'b0 == ap_block_pp0_stage60_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage61;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage60;
            end
        end
        ap_ST_fsm_pp0_stage61 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage61)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage61_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage62;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage61;
            end
        end
        ap_ST_fsm_pp0_stage62 : begin
            if ((1'b0 == ap_block_pp0_stage62_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage63;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage62;
            end
        end
        ap_ST_fsm_pp0_stage63 : begin
            if ((1'b0 == ap_block_pp0_stage63_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage63;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln69_1_fu_921_p2 = (zext_ln69_2_fu_918_p1 + phi_mul);
assign add_ln69_2_fu_1062_p2 = (zext_ln69_5_fu_1059_p1 + phi_mul);
assign add_ln69_3_fu_1269_p2 = (zext_ln69_8_fu_1266_p1 + phi_mul);
assign add_ln69_4_fu_1435_p2 = (zext_ln69_10_fu_1431_p1 + phi_mul);
assign add_ln69_5_fu_1546_p2 = (zext_ln68_2_fu_1543_p1 + phi_mul);
assign add_ln69_6_fu_1576_p2 = (phi_mul + 10'd6);
assign add_ln69_7_fu_1606_p2 = (phi_mul + 10'd7);
assign add_ln69_fu_750_p2 = (zext_ln68_fu_746_p1 + phi_mul);
assign add_ln70_1_fu_812_p2 = (zext_ln69_1_fu_808_p1 + empty);
assign add_ln70_2_fu_983_p2 = (zext_ln69_4_fu_979_p1 + empty);
assign add_ln70_3_fu_1017_p2 = (zext_ln69_7_fu_1013_p1 + empty);
assign add_ln70_4_fu_1162_p2 = (zext_ln70_5_fu_1158_p1 + trunc_ln1);
assign add_ln70_5_fu_1195_p2 = (zext_ln68_1_fu_1191_p1 + empty);
assign add_ln70_6_fu_1358_p2 = (empty + 12'd6);
assign add_ln70_7_fu_1381_p2 = (empty + 12'd7);
assign add_ln70_fu_776_p2 = (zext_ln70_fu_772_p1 + trunc_ln1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
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
assign ap_CS_fsm_pp0_stage37 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_pp0_stage38 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage45 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_pp0_stage46 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage53 = ap_CS_fsm[32'd53];
assign ap_CS_fsm_pp0_stage54 = ap_CS_fsm[32'd54];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage61 = ap_CS_fsm[32'd61];
assign ap_CS_fsm_pp0_stage62 = ap_CS_fsm[32'd62];
assign ap_CS_fsm_pp0_stage63 = ap_CS_fsm[32'd63];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage22_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_2206 = ((1'b0 == ap_block_pp0_stage0) & (tmp_4_read_fu_142_p2 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2210 = ((1'b0 == ap_block_pp0_stage0) & (tmp_4_read_fu_142_p2 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2214 = ((1'b0 == ap_block_pp0_stage1) & (tmp_4_reg_2044 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_2218 = ((1'b0 == ap_block_pp0_stage1) & (tmp_4_reg_2044 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_2222 = ((1'b0 == ap_block_pp0_stage2) & (tmp_4_reg_2044 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2227 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln68_fu_1185_p2 == 1'd0) & (tmp_4_reg_2044 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2232 = ((1'b0 == ap_block_pp0_stage3) & (tmp_4_reg_2044 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_2274 == 1'd0));
end
always @ (*) begin
    ap_condition_2237 = ((1'b0 == ap_block_pp0_stage3) & (tmp_4_reg_2044 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_2274 == 1'd0));
end
always @ (*) begin
    ap_condition_2241 = ((1'b0 == ap_block_pp0_stage0) & (tmp_4_read_fu_142_p2 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2245 = ((1'b0 == ap_block_pp0_stage1) & (tmp_4_reg_2044 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_2249 = ((1'b0 == ap_block_pp0_stage2) & (tmp_4_reg_2044 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2253 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln68_fu_1185_p2 == 1'd0) & (tmp_4_reg_2044 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2258 = ((1'b0 == ap_block_pp0_stage3) & (tmp_4_reg_2044 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_2274 == 1'd0));
end
always @ (*) begin
    ap_condition_2262 = ((1'b0 == ap_block_pp0_stage0) & (tmp_4_read_fu_142_p2 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_2266 = ((1'b0 == ap_block_pp0_stage1) & (tmp_4_reg_2044 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_2270 = ((1'b0 == ap_block_pp0_stage2) & (tmp_4_reg_2044 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2274 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln68_fu_1185_p2 == 1'd0) & (tmp_4_reg_2044 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2279 = ((1'b0 == ap_block_pp0_stage3) & (tmp_4_reg_2044 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_2274 == 1'd0));
end
always @ (*) begin
    ap_condition_2283 = ((1'b0 == ap_block_pp0_stage2) & (tmp_4_reg_2044 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_2287 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln68_fu_1185_p2 == 1'd0) & (tmp_4_reg_2044 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage61;
assign ap_ready = ap_ready_sig;
assign bit_sel1_fu_1218_p3 = v24_1_reg_2072[4'd3];
assign grp_fu_1067_p0 = (zext_ln69_5_fu_1059_p1 + phi_mul);
assign grp_fu_1067_p1 = 10'd208;
assign grp_fu_1274_p0 = (zext_ln69_8_fu_1266_p1 + phi_mul);
assign grp_fu_1274_p1 = 10'd208;
assign grp_fu_1440_p0 = (zext_ln69_10_fu_1431_p1 + phi_mul);
assign grp_fu_1440_p1 = 10'd208;
assign grp_fu_1551_p0 = (zext_ln68_2_fu_1543_p1 + phi_mul);
assign grp_fu_1551_p1 = 10'd208;
assign grp_fu_1581_p0 = (phi_mul + 10'd6);
assign grp_fu_1581_p1 = 10'd208;
assign grp_fu_1611_p0 = (phi_mul + 10'd7);
assign grp_fu_1611_p1 = 10'd208;
assign grp_fu_16517_p_ce = 1'b1;
assign grp_fu_16517_p_din0 = grp_fu_719_p0;
assign grp_fu_16517_p_din1 = grp_fu_719_p1;
assign grp_fu_16517_p_opcode = 2'd0;
assign grp_fu_16529_p_ce = 1'b1;
assign grp_fu_16529_p_din0 = grp_fu_724_p0;
assign grp_fu_16529_p_din1 = grp_fu_724_p1;
assign grp_fu_756_p0 = (zext_ln68_fu_746_p1 + phi_mul);
assign grp_fu_756_p1 = 10'd208;
assign grp_fu_926_p0 = (zext_ln69_2_fu_918_p1 + phi_mul);
assign grp_fu_926_p1 = 10'd208;
assign icmp_ln68_fu_1185_p2 = ((or_ln68_4_fu_1175_p5 == 4'd13) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_762_p4 = {{ap_sig_allocacmp_v24_1[3:2]}};
assign lshr_ln70_1_fu_818_p4 = {{add_ln70_1_fu_812_p2[11:2]}};
assign lshr_ln70_2_fu_988_p4 = {{add_ln70_2_fu_983_p2[11:2]}};
assign lshr_ln70_3_fu_1022_p4 = {{add_ln70_3_fu_1017_p2[11:2]}};
assign lshr_ln70_4_fu_1200_p4 = {{add_ln70_5_fu_1195_p2[11:2]}};
assign lshr_ln70_5_fu_1363_p4 = {{add_ln70_6_fu_1358_p2[11:2]}};
assign lshr_ln70_6_fu_1386_p4 = {{add_ln70_7_fu_1381_p2[11:2]}};
assign mul_ln69_1_fu_1043_p0 = mul_ln69_1_fu_1043_p00;
assign mul_ln69_1_fu_1043_p00 = add_ln69_1_reg_2167;
assign mul_ln69_1_fu_1043_p1 = 21'd1261;
assign mul_ln69_2_fu_1250_p0 = mul_ln69_2_fu_1250_p00;
assign mul_ln69_2_fu_1250_p00 = add_ln69_2_reg_2233;
assign mul_ln69_2_fu_1250_p1 = 21'd1261;
assign mul_ln69_3_fu_1407_p0 = mul_ln69_3_fu_1407_p00;
assign mul_ln69_3_fu_1407_p00 = add_ln69_3_reg_2303;
assign mul_ln69_3_fu_1407_p1 = 21'd1261;
assign mul_ln69_4_fu_1527_p0 = mul_ln69_4_fu_1527_p00;
assign mul_ln69_4_fu_1527_p00 = add_ln69_4_reg_2364;
assign mul_ln69_4_fu_1527_p1 = 21'd1261;
assign mul_ln69_5_fu_1560_p0 = mul_ln69_5_fu_1560_p00;
assign mul_ln69_5_fu_1560_p00 = add_ln69_5_reg_2385;
assign mul_ln69_5_fu_1560_p1 = 21'd1261;
assign mul_ln69_6_fu_1590_p0 = mul_ln69_6_fu_1590_p00;
assign mul_ln69_6_fu_1590_p00 = add_ln69_6_reg_2396;
assign mul_ln69_6_fu_1590_p1 = 21'd1261;
assign mul_ln69_7_fu_1620_p0 = mul_ln69_7_fu_1620_p00;
assign mul_ln69_7_fu_1620_p00 = add_ln69_7_reg_2407;
assign mul_ln69_7_fu_1620_p1 = 21'd1261;
assign mul_ln69_fu_863_p0 = mul_ln69_fu_863_p00;
assign mul_ln69_fu_863_p00 = add_ln69_reg_2078;
assign mul_ln69_fu_863_p1 = 21'd1261;
assign or_ln1_fu_1151_p3 = {{tmp_5_reg_2140}, {1'd1}};
assign or_ln68_1_fu_971_p4 = {{{lshr_ln1_reg_2084}, {1'd1}}, {trunc_ln68_reg_2135}};
assign or_ln68_2_fu_1006_p3 = {{lshr_ln1_reg_2084}, {2'd3}};
assign or_ln68_3_fu_1423_p4 = {{{tmp_5_reg_2140}, {1'd1}}, {trunc_ln68_1_reg_2147}};
assign or_ln68_4_fu_1175_p5 = {{{{tmp_5_reg_2140}, {1'd1}}, {tmp_6_reg_2152}}, {1'd1}};
assign or_ln_fu_800_p3 = {{tmp_fu_790_p4}, {1'd1}};
assign tmp_4_read_fu_142_p2 = empty_40;
assign tmp_4_reg_2044 = empty_40;
assign tmp_fu_790_p4 = {{ap_sig_allocacmp_v24_1[3:1]}};
assign trunc_ln68_1_fu_848_p1 = ap_sig_allocacmp_v24_1[1:0];
assign trunc_ln68_2_fu_1231_p1 = v24_1_reg_2072[2:0];
assign trunc_ln68_fu_836_p1 = ap_sig_allocacmp_v24_1[0:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v25_1_fu_1707_p2 = v0_0_q0;
assign v25_1_fu_1707_p4 = v0_1_q0;
assign v25_1_fu_1707_p6 = v0_2_q0;
assign v25_1_fu_1707_p8 = v0_3_q0;
assign v25_1_fu_1707_p9 = 'bx;
assign v25_2_fu_1754_p2 = v0_0_q0;
assign v25_2_fu_1754_p4 = v0_1_q0;
assign v25_2_fu_1754_p6 = v0_2_q0;
assign v25_2_fu_1754_p8 = v0_3_q0;
assign v25_2_fu_1754_p9 = 'bx;
assign v25_3_fu_1801_p2 = v0_0_q0;
assign v25_3_fu_1801_p4 = v0_1_q0;
assign v25_3_fu_1801_p6 = v0_2_q0;
assign v25_3_fu_1801_p8 = v0_3_q0;
assign v25_3_fu_1801_p9 = 'bx;
assign v25_4_fu_1848_p2 = v0_0_q0;
assign v25_4_fu_1848_p4 = v0_1_q0;
assign v25_4_fu_1848_p6 = v0_2_q0;
assign v25_4_fu_1848_p8 = v0_3_q0;
assign v25_4_fu_1848_p9 = 'bx;
assign v25_5_fu_1895_p2 = v0_0_q0;
assign v25_5_fu_1895_p4 = v0_1_q0;
assign v25_5_fu_1895_p6 = v0_2_q0;
assign v25_5_fu_1895_p8 = v0_3_q0;
assign v25_5_fu_1895_p9 = 'bx;
assign v25_6_fu_1942_p2 = v0_0_q0;
assign v25_6_fu_1942_p4 = v0_1_q0;
assign v25_6_fu_1942_p6 = v0_2_q0;
assign v25_6_fu_1942_p8 = v0_3_q0;
assign v25_6_fu_1942_p9 = 'bx;
assign v25_7_fu_1989_p2 = v0_0_q0;
assign v25_7_fu_1989_p4 = v0_1_q0;
assign v25_7_fu_1989_p6 = v0_2_q0;
assign v25_7_fu_1989_p8 = v0_3_q0;
assign v25_7_fu_1989_p9 = 'bx;
assign v25_fu_1660_p2 = v0_0_q0;
assign v25_fu_1660_p4 = v0_1_q0;
assign v25_fu_1660_p6 = v0_2_q0;
assign v25_fu_1660_p8 = v0_3_q0;
assign v25_fu_1660_p9 = 'bx;
assign v26_1_fu_948_p2 = v6_0_q0;
assign v26_1_fu_948_p4 = v6_1_q0;
assign v26_1_fu_948_p6 = v6_2_q0;
assign v26_1_fu_948_p8 = v6_3_q0;
assign v26_1_fu_948_p9 = 'bx;
assign v26_2_fu_1089_p2 = v6_0_q0;
assign v26_2_fu_1089_p4 = v6_1_q0;
assign v26_2_fu_1089_p6 = v6_2_q0;
assign v26_2_fu_1089_p8 = v6_3_q0;
assign v26_2_fu_1089_p9 = 'bx;
assign v26_3_fu_1128_p2 = v6_0_q0;
assign v26_3_fu_1128_p4 = v6_1_q0;
assign v26_3_fu_1128_p6 = v6_2_q0;
assign v26_3_fu_1128_p8 = v6_3_q0;
assign v26_3_fu_1128_p9 = 'bx;
assign v26_4_fu_1296_p2 = v6_0_q0;
assign v26_4_fu_1296_p4 = v6_1_q0;
assign v26_4_fu_1296_p6 = v6_2_q0;
assign v26_4_fu_1296_p8 = v6_3_q0;
assign v26_4_fu_1296_p9 = 'bx;
assign v26_5_fu_1335_p2 = v6_0_q0;
assign v26_5_fu_1335_p4 = v6_1_q0;
assign v26_5_fu_1335_p6 = v6_2_q0;
assign v26_5_fu_1335_p8 = v6_3_q0;
assign v26_5_fu_1335_p9 = 'bx;
assign v26_6_fu_1462_p2 = v6_0_q0;
assign v26_6_fu_1462_p4 = v6_1_q0;
assign v26_6_fu_1462_p6 = v6_2_q0;
assign v26_6_fu_1462_p8 = v6_3_q0;
assign v26_6_fu_1462_p9 = 'bx;
assign v26_7_fu_1501_p2 = v6_0_q0;
assign v26_7_fu_1501_p4 = v6_1_q0;
assign v26_7_fu_1501_p6 = v6_2_q0;
assign v26_7_fu_1501_p8 = v6_3_q0;
assign v26_7_fu_1501_p9 = 'bx;
assign v26_fu_895_p2 = v6_0_q0;
assign v26_fu_895_p4 = v6_1_q0;
assign v26_fu_895_p6 = v6_2_q0;
assign v26_fu_895_p8 = v6_3_q0;
assign v26_fu_895_p9 = 'bx;
assign v29_12_out = grp_fu_16517_p_dout0;
assign v6_0_address0 = v6_0_address0_local;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = v6_1_address0_local;
assign v6_1_ce0 = v6_1_ce0_local;
assign v6_2_address0 = v6_2_address0_local;
assign v6_2_ce0 = v6_2_ce0_local;
assign v6_3_address0 = v6_3_address0_local;
assign v6_3_ce0 = v6_3_ce0_local;
assign xor_ln68_fu_1225_p2 = (bit_sel1_fu_1218_p3 ^ 1'd1);
assign xor_ln_fu_1234_p3 = {{xor_ln68_fu_1225_p2}, {trunc_ln68_2_fu_1231_p1}};
assign zext_ln68_1_fu_1191_p1 = or_ln68_4_fu_1175_p5;
assign zext_ln68_2_fu_1543_p1 = or_ln68_4_reg_2269;
assign zext_ln68_fu_746_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_10_fu_1431_p1 = or_ln68_3_fu_1423_p4;
assign zext_ln69_11_fu_1824_p1 = grp_fu_1440_p2;
assign zext_ln69_12_fu_1871_p1 = grp_fu_1551_p2;
assign zext_ln69_13_fu_1918_p1 = grp_fu_1581_p2;
assign zext_ln69_14_fu_1965_p1 = grp_fu_1611_p2;
assign zext_ln69_1_fu_808_p1 = or_ln_fu_800_p3;
assign zext_ln69_2_fu_918_p1 = or_ln_reg_2110;
assign zext_ln69_3_fu_1683_p1 = grp_fu_926_p2;
assign zext_ln69_4_fu_979_p1 = or_ln68_1_fu_971_p4;
assign zext_ln69_5_fu_1059_p1 = or_ln68_1_reg_2178;
assign zext_ln69_6_fu_1730_p1 = grp_fu_1067_p2;
assign zext_ln69_7_fu_1013_p1 = or_ln68_2_fu_1006_p3;
assign zext_ln69_8_fu_1266_p1 = or_ln68_2_reg_2203;
assign zext_ln69_9_fu_1777_p1 = grp_fu_1274_p2;
assign zext_ln69_fu_1636_p1 = grp_fu_756_p2;
assign zext_ln70_1_fu_782_p1 = add_ln70_fu_776_p2;
assign zext_ln70_2_fu_828_p1 = lshr_ln70_1_fu_818_p4;
assign zext_ln70_3_fu_998_p1 = lshr_ln70_2_fu_988_p4;
assign zext_ln70_4_fu_1032_p1 = lshr_ln70_3_fu_1022_p4;
assign zext_ln70_5_fu_1158_p1 = or_ln1_fu_1151_p3;
assign zext_ln70_6_fu_1167_p1 = add_ln70_4_fu_1162_p2;
assign zext_ln70_7_fu_1210_p1 = lshr_ln70_4_fu_1200_p4;
assign zext_ln70_8_fu_1373_p1 = lshr_ln70_5_fu_1363_p4;
assign zext_ln70_9_fu_1396_p1 = lshr_ln70_6_fu_1386_p4;
assign zext_ln70_fu_772_p1 = lshr_ln1_fu_762_p4;
always @ (posedge ap_clk) begin
    or_ln_reg_2110[0] <= 1'b1;
    or_ln68_1_reg_2178[1] <= 1'b1;
    or_ln68_2_reg_2203[1:0] <= 2'b11;
    or_ln68_4_reg_2269[0] <= 1'b1;
    or_ln68_4_reg_2269[2] <= 1'b1;
end
endmodule 