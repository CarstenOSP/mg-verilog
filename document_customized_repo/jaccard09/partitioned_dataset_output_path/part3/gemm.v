
module gemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_address0,m1_ce0,m1_q0,m1_address1,m1_ce1,m1_q1,m2_address0,m2_ce0,m2_q0,m2_address1,m2_ce1,m2_q1,prod_address0,prod_ce0,prod_we0,prod_d0);  
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
output  [11:0] m1_address0;
output   m1_ce0;
input  [63:0] m1_q0;
output  [11:0] m1_address1;
output   m1_ce1;
input  [63:0] m1_q1;
output  [11:0] m2_address0;
output   m2_ce0;
input  [63:0] m2_q0;
output  [11:0] m2_address1;
output   m2_ce1;
input  [63:0] m2_q1;
output  [11:0] prod_address0;
output   prod_ce0;
output   prod_we0;
output  [63:0] prod_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [63:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
wire   [0:0] icmp_ln8_fu_944_p2;
reg    ap_condition_exit_pp0_iter0_stage63;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln923_reg_306;
reg   [63:0] reg_335;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_339;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_343;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_347;
wire   [63:0] grp_fu_327_p2;
reg   [63:0] reg_352;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
wire    ap_CS_fsm_pp0_stage41;
wire    ap_block_pp0_stage41_11001;
wire    ap_CS_fsm_pp0_stage49;
wire    ap_block_pp0_stage49_11001;
wire    ap_CS_fsm_pp0_stage57;
wire    ap_block_pp0_stage57_11001;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln4_fu_404_p3;
reg   [6:0] select_ln4_reg_1022;
wire   [0:0] or_ln4_fu_420_p2;
reg   [0:0] or_ln4_reg_1027;
wire   [6:0] add_ln9_fu_434_p2;
reg   [6:0] add_ln9_reg_1033;
wire   [6:0] k_mid2_fu_440_p3;
reg   [6:0] k_mid2_reg_1038;
wire   [5:0] empty_fu_448_p1;
reg   [5:0] empty_reg_1044;
wire   [4:0] tmp_1_fu_452_p4;
reg   [4:0] tmp_1_reg_1054;
wire   [3:0] tmp_6_fu_477_p4;
reg   [3:0] tmp_6_reg_1065;
wire   [0:0] trunc_ln14_fu_487_p1;
reg   [0:0] trunc_ln14_reg_1071;
reg   [2:0] tmp_s_reg_1081;
wire   [1:0] trunc_ln14_1_fu_518_p1;
reg   [1:0] trunc_ln14_1_reg_1090;
reg   [0:0] tmp_reg_1095;
wire   [11:0] zext_ln9_fu_558_p1;
reg   [11:0] zext_ln9_reg_1100;
wire   [11:0] or_ln_fu_588_p3;
reg   [11:0] or_ln_reg_1118;
reg   [63:0] m1_load_2_reg_1128;
reg   [0:0] bit_sel_reg_1133;
wire   [5:0] trunc_ln13_fu_614_p1;
reg   [5:0] trunc_ln13_reg_1138;
wire   [0:0] tmp_2_fu_636_p3;
reg   [0:0] tmp_2_reg_1148;
reg   [0:0] tmp_2_reg_1148_pp0_iter1_reg;
wire   [0:0] xor_ln12_fu_644_p2;
reg   [0:0] xor_ln12_reg_1152;
wire   [11:0] add_ln17_fu_650_p2;
reg   [11:0] add_ln17_reg_1157;
reg   [11:0] add_ln17_reg_1157_pp0_iter1_reg;
wire   [11:0] zext_ln14_5_fu_678_p1;
reg   [11:0] zext_ln14_5_reg_1162;
wire   [11:0] or_ln13_1_fu_692_p3;
reg   [11:0] or_ln13_1_reg_1172;
reg   [63:0] m1_load_3_reg_1179;
wire   [63:0] bitcast_ln14_fu_739_p1;
wire   [63:0] bitcast_ln14_1_fu_744_p1;
reg   [63:0] m2_load_3_reg_1209;
reg   [63:0] m1_load_5_reg_1219;
wire   [11:0] add_ln14_13_fu_792_p2;
reg   [11:0] add_ln14_13_reg_1234;
wire   [11:0] add_ln14_15_fu_817_p2;
reg   [11:0] add_ln14_15_reg_1244;
wire   [63:0] bitcast_ln14_2_fu_822_p1;
wire   [63:0] bitcast_ln14_3_fu_827_p1;
reg   [63:0] m2_load_5_reg_1259;
reg   [63:0] m1_load_7_reg_1269;
wire   [63:0] bitcast_ln14_4_fu_840_p1;
wire   [63:0] bitcast_ln14_5_fu_844_p1;
reg   [63:0] m2_load_7_reg_1289;
wire   [63:0] bitcast_ln14_6_fu_849_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln14_7_fu_853_p1;
wire   [63:0] bitcast_ln14_8_fu_857_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln14_9_fu_862_p1;
wire   [63:0] bitcast_ln14_10_fu_867_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln14_11_fu_871_p1;
wire   [63:0] grp_fu_331_p2;
reg   [63:0] mult_reg_1324;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] bitcast_ln14_12_fu_875_p1;
wire   [63:0] bitcast_ln14_13_fu_880_p1;
wire   [63:0] sum_mid2_fu_896_p3;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mult_1_reg_1344;
wire   [63:0] bitcast_ln14_14_fu_904_p1;
wire   [63:0] bitcast_ln14_15_fu_908_p1;
reg   [63:0] mult_2_reg_1359;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] mult_3_reg_1364;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] mult_4_reg_1369;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] mult_5_reg_1374;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] mult_6_reg_1379;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] mult_7_reg_1384;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [0:0] icmp_ln9_fu_938_p2;
reg   [0:0] icmp_ln9_reg_1389;
wire    ap_block_pp0_stage63_11001;
reg   [0:0] icmp_ln8_reg_1394;
wire   [63:0] bitcast_ln17_fu_964_p1;
reg   [63:0] bitcast_ln17_reg_1398;
reg   [11:0] prod_addr_reg_1403;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] ap_phi_mux_icmp_ln923_phi_fu_309_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1222_phi_fu_320_p4;
wire   [63:0] zext_ln14_2_fu_472_p1;
wire   [63:0] zext_ln14_4_fu_503_p1;
wire   [63:0] zext_ln14_fu_571_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_1_fu_583_p1;
wire   [63:0] zext_ln14_3_fu_601_p1;
wire   [63:0] zext_ln14_7_fu_626_p1;
wire   [63:0] zext_ln14_6_fu_687_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_8_fu_704_p1;
wire   [63:0] zext_ln14_9_fu_718_p1;
wire   [63:0] zext_ln14_11_fu_734_p1;
wire   [63:0] zext_ln14_10_fu_753_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_12_fu_768_p1;
wire   [63:0] zext_ln14_13_fu_782_p1;
wire   [63:0] zext_ln14_15_fu_812_p1;
wire   [63:0] zext_ln14_14_fu_832_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_16_fu_836_p1;
wire   [63:0] zext_ln17_fu_960_p1;
wire    ap_block_pp0_stage9;
reg   [14:0] indvar_flatten1316_fu_120;
wire   [14:0] add_ln8_1_fu_918_p2;
wire    ap_block_pp0_stage63;
reg   [6:0] i17_fu_124;
wire   [6:0] i_fu_426_p3;
reg   [6:0] ap_sig_allocacmp_i17_load;
reg   [10:0] indvar_flatten18_fu_128;
wire   [10:0] select_ln9_1_fu_930_p3;
reg   [6:0] j19_fu_132;
wire   [6:0] j_fu_546_p3;
reg   [6:0] ap_sig_allocacmp_j19_load;
reg   [6:0] k20_fu_136;
wire   [6:0] k_fu_631_p2;
reg   [6:0] ap_sig_allocacmp_k20_load;
reg   [63:0] sum21_fu_140;
wire    ap_block_pp0_stage10;
reg   [6:0] add_ln824_fu_144;
wire   [6:0] add_ln8_fu_530_p2;
reg   [6:0] ap_sig_allocacmp_add_ln824_load;
reg    m1_ce1_local;
reg   [11:0] m1_address1_local;
reg    m1_ce0_local;
reg   [11:0] m1_address0_local;
reg    m2_ce1_local;
reg   [11:0] m2_address1_local;
reg    m2_ce0_local;
reg   [11:0] m2_address0_local;
reg    prod_we0_local;
reg    prod_ce0_local;
reg   [63:0] grp_fu_327_p0;
reg   [63:0] grp_fu_327_p1;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26;
wire    ap_CS_fsm_pp0_stage34;
wire    ap_block_pp0_stage34;
wire    ap_CS_fsm_pp0_stage42;
wire    ap_block_pp0_stage42;
wire    ap_CS_fsm_pp0_stage50;
wire    ap_block_pp0_stage50;
wire    ap_CS_fsm_pp0_stage58;
wire    ap_block_pp0_stage58;
reg   [63:0] grp_fu_331_p0;
reg   [63:0] grp_fu_331_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire   [6:0] select_ln4_1_fu_412_p3;
wire   [11:0] add_ln14_2_fu_462_p4;
wire   [11:0] add_ln14_4_fu_491_p5;
wire   [11:0] zext_ln12_fu_562_p1;
wire   [11:0] tmp_3_fu_551_p3;
wire   [11:0] add_ln14_fu_565_p2;
wire   [11:0] add_ln14_1_fu_576_p3;
wire   [11:0] add_ln14_3_fu_595_p2;
wire   [11:0] add_ln14_6_fu_618_p4;
wire   [0:0] xor_ln13_fu_666_p2;
wire   [6:0] xor_ln_fu_671_p3;
wire   [11:0] add_ln14_5_fu_682_p2;
wire   [11:0] add_ln14_7_fu_699_p2;
wire   [11:0] add_ln14_8_fu_709_p5;
wire   [11:0] add_ln14_s_fu_723_p6;
wire   [11:0] add_ln14_9_fu_749_p2;
wire   [11:0] add_ln14_10_fu_758_p2;
wire   [11:0] add_ln14_11_fu_763_p2;
wire   [11:0] add_ln14_12_fu_773_p5;
wire   [11:0] add_ln14_16_fu_787_p2;
wire   [11:0] add_ln14_14_fu_804_p4;
wire   [11:0] or_ln13_2_fu_797_p3;
wire   [63:0] select_ln4_2_fu_888_p3;
wire   [10:0] add_ln9_1_fu_924_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage10;
reg    ap_idle_pp0_0to0;
reg   [63:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage18_11001;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage19_11001;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage20_11001;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage21_11001;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage22_11001;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage23_11001;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage26_11001;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage27_11001;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage28_11001;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage29_11001;
wire    ap_block_pp0_stage30_subdone;
wire    ap_block_pp0_stage30_11001;
wire    ap_block_pp0_stage31_subdone;
wire    ap_block_pp0_stage31_11001;
wire    ap_block_pp0_stage32_subdone;
wire    ap_block_pp0_stage32_11001;
wire    ap_block_pp0_stage33_subdone;
wire    ap_block_pp0_stage34_subdone;
wire    ap_block_pp0_stage34_11001;
wire    ap_block_pp0_stage35_subdone;
wire    ap_block_pp0_stage35_11001;
wire    ap_block_pp0_stage36_subdone;
wire    ap_block_pp0_stage36_11001;
wire    ap_block_pp0_stage37_subdone;
wire    ap_block_pp0_stage37_11001;
wire    ap_block_pp0_stage38_subdone;
wire    ap_block_pp0_stage38_11001;
wire    ap_block_pp0_stage39_subdone;
wire    ap_block_pp0_stage39_11001;
wire    ap_block_pp0_stage40_subdone;
wire    ap_block_pp0_stage40_11001;
wire    ap_block_pp0_stage41_subdone;
wire    ap_block_pp0_stage42_subdone;
wire    ap_block_pp0_stage42_11001;
wire    ap_block_pp0_stage43_subdone;
wire    ap_block_pp0_stage43_11001;
wire    ap_block_pp0_stage44_subdone;
wire    ap_block_pp0_stage44_11001;
wire    ap_block_pp0_stage45_subdone;
wire    ap_block_pp0_stage45_11001;
wire    ap_block_pp0_stage46_subdone;
wire    ap_block_pp0_stage46_11001;
wire    ap_block_pp0_stage47_subdone;
wire    ap_block_pp0_stage47_11001;
wire    ap_block_pp0_stage48_subdone;
wire    ap_block_pp0_stage48_11001;
wire    ap_block_pp0_stage49_subdone;
wire    ap_block_pp0_stage50_subdone;
wire    ap_block_pp0_stage50_11001;
wire    ap_block_pp0_stage51_subdone;
wire    ap_block_pp0_stage51_11001;
wire    ap_block_pp0_stage52_subdone;
wire    ap_block_pp0_stage52_11001;
wire    ap_block_pp0_stage53_subdone;
wire    ap_block_pp0_stage53_11001;
wire    ap_block_pp0_stage54_subdone;
wire    ap_block_pp0_stage54_11001;
wire    ap_block_pp0_stage55_subdone;
wire    ap_block_pp0_stage55_11001;
wire    ap_block_pp0_stage56_subdone;
wire    ap_block_pp0_stage56_11001;
wire    ap_block_pp0_stage57_subdone;
wire    ap_block_pp0_stage58_subdone;
wire    ap_block_pp0_stage58_11001;
wire    ap_block_pp0_stage59_subdone;
wire    ap_block_pp0_stage59_11001;
wire    ap_block_pp0_stage60_subdone;
wire    ap_block_pp0_stage60_11001;
wire    ap_block_pp0_stage61_subdone;
wire    ap_block_pp0_stage61_11001;
wire    ap_block_pp0_stage62_subdone;
wire    ap_block_pp0_stage62_11001;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_605;
reg    ap_condition_1486;
reg    ap_condition_1499;
reg    ap_condition_1503;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 64'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten1316_fu_120 = 15'd0;
#0 i17_fu_124 = 7'd0;
#0 indvar_flatten18_fu_128 = 11'd0;
#0 j19_fu_132 = 7'd0;
#0 k20_fu_136 = 7'd0;
#0 sum21_fu_140 = 64'd0;
#0 add_ln824_fu_144 = 7'd0;
#0 ap_done_reg = 1'b0;
end
gemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_327_p0),.din1(grp_fu_327_p1),.ce(1'b1),.dout(grp_fu_327_p2));
gemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_331_p0),.din1(grp_fu_331_p1),.ce(1'b1),.dout(grp_fu_331_p2));
gemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage63),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_605)) begin
        add_ln824_fu_144 <= add_ln8_fu_530_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter1_stage10) & (ap_idle_pp0_0to0 == 1'b1)))) begin
    ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
end else if (((1'b0 == ap_block_pp0_stage63_11001) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
    ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_605)) begin
    i17_fu_124 <= i_fu_426_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
    if ((1'b1 == ap_condition_1499)) begin
        icmp_ln923_reg_306 <= icmp_ln9_reg_1389;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
        icmp_ln923_reg_306 <= 1'd0;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_1503)) begin
        indvar_flatten1316_fu_120 <= 15'd0;
    end else if (((1'b0 == ap_block_pp0_stage63_11001) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
        indvar_flatten1316_fu_120 <= add_ln8_1_fu_918_p2;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_1503)) begin
        indvar_flatten18_fu_128 <= 11'd0;
    end else if (((1'b0 == ap_block_pp0_stage63_11001) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
        indvar_flatten18_fu_128 <= select_ln9_1_fu_930_p3;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_1503)) begin
        j19_fu_132 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j19_fu_132 <= j_fu_546_p3;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_1503)) begin
        k20_fu_136 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k20_fu_136 <= k_fu_631_p2;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        reg_347 <= m2_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_347 <= m2_q0;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    sum21_fu_140 <= 64'd0;
end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
    sum21_fu_140 <= grp_fu_327_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln14_13_reg_1234 <= add_ln14_13_fu_792_p2;
        add_ln14_15_reg_1244 <= add_ln14_15_fu_817_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln17_reg_1157 <= add_ln17_fu_650_p2;
        add_ln17_reg_1157_pp0_iter1_reg <= add_ln17_reg_1157;
        bit_sel_reg_1133 <= j_fu_546_p3[7'd6];
        or_ln_reg_1118[11 : 7] <= or_ln_fu_588_p3[11 : 7];
        tmp_2_reg_1148 <= k_fu_631_p2[32'd6];
        tmp_2_reg_1148_pp0_iter1_reg <= tmp_2_reg_1148;
        trunc_ln13_reg_1138 <= trunc_ln13_fu_614_p1;
        zext_ln9_reg_1100[6 : 0] <= zext_ln9_fu_558_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln9_reg_1033 <= add_ln9_fu_434_p2;
        empty_reg_1044 <= empty_fu_448_p1;
        k_mid2_reg_1038 <= k_mid2_fu_440_p3;
        or_ln4_reg_1027 <= or_ln4_fu_420_p2;
        select_ln4_reg_1022 <= select_ln4_fu_404_p3;
        tmp_1_reg_1054 <= {{k_mid2_fu_440_p3[5:1]}};
        tmp_6_reg_1065 <= {{k_mid2_fu_440_p3[5:2]}};
        tmp_reg_1095 <= k_mid2_fu_440_p3[32'd1];
        tmp_s_reg_1081 <= {{k_mid2_fu_440_p3[5:3]}};
        trunc_ln14_1_reg_1090 <= trunc_ln14_1_fu_518_p1;
        trunc_ln14_reg_1071 <= trunc_ln14_fu_487_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bitcast_ln17_reg_1398 <= bitcast_ln17_fu_964_p1;
        prod_addr_reg_1403 <= zext_ln17_fu_960_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage63_11001) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
        icmp_ln8_reg_1394 <= icmp_ln8_fu_944_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage63_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
        icmp_ln9_reg_1389 <= icmp_ln9_fu_938_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_load_2_reg_1128 <= m1_q0;
        xor_ln12_reg_1152 <= xor_ln12_fu_644_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m1_load_3_reg_1179 <= m1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m1_load_5_reg_1219 <= m1_q0;
        m2_load_3_reg_1209 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        m1_load_7_reg_1269 <= m1_q0;
        m2_load_5_reg_1259 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        m2_load_7_reg_1289 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mult_1_reg_1344 <= grp_fu_331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mult_2_reg_1359 <= grp_fu_331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mult_3_reg_1364 <= grp_fu_331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mult_4_reg_1369 <= grp_fu_331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        mult_5_reg_1374 <= grp_fu_331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        mult_6_reg_1379 <= grp_fu_331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        mult_7_reg_1384 <= grp_fu_331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mult_reg_1324 <= grp_fu_331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        or_ln13_1_reg_1172[11 : 8] <= or_ln13_1_fu_692_p3[11 : 8];
        zext_ln14_5_reg_1162[6 : 0] <= zext_ln14_5_fu_678_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_335 <= m1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_339 <= m1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_343 <= m2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage57_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage57)) | ((1'b0 == ap_block_pp0_stage49_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_352 <= grp_fu_327_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage63_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln8_fu_944_p2 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage63 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage63 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_1394 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter1_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1486)) begin
            ap_phi_mux_icmp_ln1222_phi_fu_320_p4 = xor_ln12_reg_1152;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1222_phi_fu_320_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1222_phi_fu_320_p4 = xor_ln12_reg_1152;
        end
    end else begin
        ap_phi_mux_icmp_ln1222_phi_fu_320_p4 = xor_ln12_reg_1152;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1486)) begin
            ap_phi_mux_icmp_ln923_phi_fu_309_p4 = icmp_ln9_reg_1389;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln923_phi_fu_309_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln923_phi_fu_309_p4 = icmp_ln9_reg_1389;
        end
    end else begin
        ap_phi_mux_icmp_ln923_phi_fu_309_p4 = icmp_ln9_reg_1389;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_add_ln824_load = 7'd1;
    end else begin
        ap_sig_allocacmp_add_ln824_load = add_ln824_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i17_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i17_load = i17_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j19_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j19_load = j19_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k20_load = 7'd0;
    end else begin
        ap_sig_allocacmp_k20_load = k20_fu_136;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage58) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage58)) | ((1'b0 == ap_block_pp0_stage50) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50)) | ((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42)) | ((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34)) | ((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_327_p0 = reg_352;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_327_p0 = sum_mid2_fu_896_p3;
    end else begin
        grp_fu_327_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_327_p1 = mult_7_reg_1384;
    end else if (((1'b0 == ap_block_pp0_stage58) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage58))) begin
        grp_fu_327_p1 = mult_6_reg_1379;
    end else if (((1'b0 == ap_block_pp0_stage50) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage50))) begin
        grp_fu_327_p1 = mult_5_reg_1374;
    end else if (((1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage42))) begin
        grp_fu_327_p1 = mult_4_reg_1369;
    end else if (((1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
        grp_fu_327_p1 = mult_3_reg_1364;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_327_p1 = mult_2_reg_1359;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_327_p1 = mult_1_reg_1344;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_327_p1 = mult_reg_1324;
    end else begin
        grp_fu_327_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_331_p0 = bitcast_ln14_14_fu_904_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_331_p0 = bitcast_ln14_12_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_331_p0 = bitcast_ln14_10_fu_867_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_331_p0 = bitcast_ln14_8_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_331_p0 = bitcast_ln14_6_fu_849_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_331_p0 = bitcast_ln14_4_fu_840_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_331_p0 = bitcast_ln14_2_fu_822_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_331_p0 = bitcast_ln14_fu_739_p1;
        end else begin
            grp_fu_331_p0 = 'bx;
        end
    end else begin
        grp_fu_331_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_331_p1 = bitcast_ln14_15_fu_908_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_331_p1 = bitcast_ln14_13_fu_880_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_331_p1 = bitcast_ln14_11_fu_871_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_331_p1 = bitcast_ln14_9_fu_862_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_331_p1 = bitcast_ln14_7_fu_853_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_331_p1 = bitcast_ln14_5_fu_844_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_331_p1 = bitcast_ln14_3_fu_827_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_331_p1 = bitcast_ln14_1_fu_744_p1;
        end else begin
            grp_fu_331_p1 = 'bx;
        end
    end else begin
        grp_fu_331_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m1_address0_local = zext_ln14_15_fu_812_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m1_address0_local = zext_ln14_11_fu_734_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m1_address0_local = zext_ln14_7_fu_626_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m1_address0_local = zext_ln14_4_fu_503_p1;
        end else begin
            m1_address0_local = 'bx;
        end
    end else begin
        m1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m1_address1_local = zext_ln14_13_fu_782_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m1_address1_local = zext_ln14_9_fu_718_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m1_address1_local = zext_ln14_fu_571_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m1_address1_local = zext_ln14_2_fu_472_p1;
        end else begin
            m1_address1_local = 'bx;
        end
    end else begin
        m1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m1_ce0_local = 1'b1;
    end else begin
        m1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m1_ce1_local = 1'b1;
    end else begin
        m1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_address0_local = zext_ln14_16_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_address0_local = zext_ln14_12_fu_768_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_address0_local = zext_ln14_8_fu_704_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_address0_local = zext_ln14_3_fu_601_p1;
        end else begin
            m2_address0_local = 'bx;
        end
    end else begin
        m2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            m2_address1_local = zext_ln14_14_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            m2_address1_local = zext_ln14_10_fu_753_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_address1_local = zext_ln14_6_fu_687_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_address1_local = zext_ln14_1_fu_583_p1;
        end else begin
            m2_address1_local = 'bx;
        end
    end else begin
        m2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m2_ce0_local = 1'b1;
    end else begin
        m2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m2_ce1_local = 1'b1;
    end else begin
        m2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_ce0_local = 1'b1;
    end else begin
        prod_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_2_reg_1148_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_we0_local = 1'b1;
    end else begin
        prod_we0_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage10) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
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
            if ((1'b0 == ap_block_pp0_stage61_subdone)) begin
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
assign add_ln14_10_fu_758_p2 = (or_ln13_1_reg_1172 + 12'd128);
assign add_ln14_11_fu_763_p2 = (add_ln14_10_fu_758_p2 + zext_ln9_reg_1100);
assign add_ln14_12_fu_773_p5 = {{{{empty_reg_1044}, {tmp_s_reg_1081}}, {2'd3}}, {trunc_ln14_reg_1071}};
assign add_ln14_13_fu_792_p2 = (add_ln14_16_fu_787_p2 + zext_ln9_reg_1100);
assign add_ln14_14_fu_804_p4 = {{{empty_reg_1044}, {tmp_s_reg_1081}}, {3'd7}};
assign add_ln14_15_fu_817_p2 = (or_ln13_2_fu_797_p3 + zext_ln9_reg_1100);
assign add_ln14_16_fu_787_p2 = (or_ln13_1_reg_1172 + 12'd192);
assign add_ln14_1_fu_576_p3 = {{tmp_1_reg_1054}, {j_fu_546_p3}};
assign add_ln14_2_fu_462_p4 = {{{empty_fu_448_p1}, {tmp_1_fu_452_p4}}, {1'd1}};
assign add_ln14_3_fu_595_p2 = (or_ln_fu_588_p3 + zext_ln9_fu_558_p1);
assign add_ln14_4_fu_491_p5 = {{{{empty_fu_448_p1}, {tmp_6_fu_477_p4}}, {1'd1}}, {trunc_ln14_fu_487_p1}};
assign add_ln14_5_fu_682_p2 = (or_ln_reg_1118 + zext_ln14_5_fu_678_p1);
assign add_ln14_6_fu_618_p4 = {{{empty_reg_1044}, {tmp_6_reg_1065}}, {2'd3}};
assign add_ln14_7_fu_699_p2 = (or_ln13_1_fu_692_p3 + zext_ln9_reg_1100);
assign add_ln14_8_fu_709_p5 = {{{{empty_reg_1044}, {tmp_s_reg_1081}}, {1'd1}}, {trunc_ln14_1_reg_1090}};
assign add_ln14_9_fu_749_p2 = (or_ln13_1_reg_1172 + zext_ln14_5_reg_1162);
assign add_ln14_fu_565_p2 = (zext_ln12_fu_562_p1 + tmp_3_fu_551_p3);
assign add_ln14_s_fu_723_p6 = {{{{{empty_reg_1044}, {tmp_s_reg_1081}}, {1'd1}}, {tmp_reg_1095}}, {1'd1}};
assign add_ln17_fu_650_p2 = (zext_ln9_fu_558_p1 + tmp_3_fu_551_p3);
assign add_ln8_1_fu_918_p2 = (indvar_flatten1316_fu_120 + 15'd1);
assign add_ln8_fu_530_p2 = (i_fu_426_p3 + 7'd1);
assign add_ln9_1_fu_924_p2 = (indvar_flatten18_fu_128 + 11'd1);
assign add_ln9_fu_434_p2 = (select_ln4_fu_404_p3 + 7'd1);
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
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage33 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_pp0_stage34 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage41 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_pp0_stage42 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_pp0_stage49 = ap_CS_fsm[32'd49];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage50 = ap_CS_fsm[32'd50];
assign ap_CS_fsm_pp0_stage57 = ap_CS_fsm[32'd57];
assign ap_CS_fsm_pp0_stage58 = ap_CS_fsm[32'd58];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage63 = ap_CS_fsm[32'd63];
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
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_subdone = ~(1'b1 == 1'b1);
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
    ap_condition_1486 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_1394 == 1'd0));
end
always @ (*) begin
    ap_condition_1499 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_1394 == 1'd0));
end
always @ (*) begin
    ap_condition_1503 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_605 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage63;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_10_fu_867_p1 = m1_load_5_reg_1219;
assign bitcast_ln14_11_fu_871_p1 = m2_load_5_reg_1259;
assign bitcast_ln14_12_fu_875_p1 = reg_335;
assign bitcast_ln14_13_fu_880_p1 = reg_343;
assign bitcast_ln14_14_fu_904_p1 = m1_load_7_reg_1269;
assign bitcast_ln14_15_fu_908_p1 = m2_load_7_reg_1289;
assign bitcast_ln14_1_fu_744_p1 = reg_343;
assign bitcast_ln14_2_fu_822_p1 = reg_335;
assign bitcast_ln14_3_fu_827_p1 = reg_347;
assign bitcast_ln14_4_fu_840_p1 = m1_load_2_reg_1128;
assign bitcast_ln14_5_fu_844_p1 = reg_343;
assign bitcast_ln14_6_fu_849_p1 = m1_load_3_reg_1179;
assign bitcast_ln14_7_fu_853_p1 = m2_load_3_reg_1209;
assign bitcast_ln14_8_fu_857_p1 = reg_339;
assign bitcast_ln14_9_fu_862_p1 = reg_347;
assign bitcast_ln14_fu_739_p1 = reg_339;
assign bitcast_ln17_fu_964_p1 = grp_fu_327_p2;
assign empty_fu_448_p1 = i_fu_426_p3[5:0];
assign i_fu_426_p3 = ((ap_phi_mux_icmp_ln923_phi_fu_309_p4[0:0] == 1'b1) ? ap_sig_allocacmp_add_ln824_load : ap_sig_allocacmp_i17_load);
assign icmp_ln8_fu_944_p2 = ((indvar_flatten1316_fu_120 == 15'd32767) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_938_p2 = ((select_ln9_1_fu_930_p3 == 11'd512) ? 1'b1 : 1'b0);
assign j_fu_546_p3 = ((or_ln4_reg_1027[0:0] == 1'b1) ? select_ln4_reg_1022 : add_ln9_reg_1033);
assign k_fu_631_p2 = (k_mid2_reg_1038 + 7'd8);
assign k_mid2_fu_440_p3 = ((or_ln4_fu_420_p2[0:0] == 1'b1) ? select_ln4_1_fu_412_p3 : 7'd0);
assign m1_address0 = m1_address0_local;
assign m1_address1 = m1_address1_local;
assign m1_ce0 = m1_ce0_local;
assign m1_ce1 = m1_ce1_local;
assign m2_address0 = m2_address0_local;
assign m2_address1 = m2_address1_local;
assign m2_ce0 = m2_ce0_local;
assign m2_ce1 = m2_ce1_local;
assign or_ln13_1_fu_692_p3 = {{tmp_6_reg_1065}, {8'd192}};
assign or_ln13_2_fu_797_p3 = {{tmp_s_reg_1081}, {9'd448}};
assign or_ln4_fu_420_p2 = (ap_phi_mux_icmp_ln923_phi_fu_309_p4 | ap_phi_mux_icmp_ln1222_phi_fu_320_p4);
assign or_ln_fu_588_p3 = {{tmp_1_reg_1054}, {7'd64}};
assign prod_address0 = prod_addr_reg_1403;
assign prod_ce0 = prod_ce0_local;
assign prod_d0 = bitcast_ln17_reg_1398;
assign prod_we0 = prod_we0_local;
assign select_ln4_1_fu_412_p3 = ((ap_phi_mux_icmp_ln923_phi_fu_309_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_k20_load);
assign select_ln4_2_fu_888_p3 = ((icmp_ln923_reg_306[0:0] == 1'b1) ? 64'd0 : sum21_fu_140);
assign select_ln4_fu_404_p3 = ((ap_phi_mux_icmp_ln923_phi_fu_309_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j19_load);
assign select_ln9_1_fu_930_p3 = ((icmp_ln923_reg_306[0:0] == 1'b1) ? 11'd1 : add_ln9_1_fu_924_p2);
assign sum_mid2_fu_896_p3 = ((or_ln4_reg_1027[0:0] == 1'b1) ? select_ln4_2_fu_888_p3 : 64'd0);
assign tmp_1_fu_452_p4 = {{k_mid2_fu_440_p3[5:1]}};
assign tmp_2_fu_636_p3 = k_fu_631_p2[32'd6];
assign tmp_3_fu_551_p3 = {{empty_reg_1044}, {6'd0}};
assign tmp_6_fu_477_p4 = {{k_mid2_fu_440_p3[5:2]}};
assign trunc_ln13_fu_614_p1 = j_fu_546_p3[5:0];
assign trunc_ln14_1_fu_518_p1 = k_mid2_fu_440_p3[1:0];
assign trunc_ln14_fu_487_p1 = k_mid2_fu_440_p3[0:0];
assign xor_ln12_fu_644_p2 = (tmp_2_fu_636_p3 ^ 1'd1);
assign xor_ln13_fu_666_p2 = (bit_sel_reg_1133 ^ 1'd1);
assign xor_ln_fu_671_p3 = {{xor_ln13_fu_666_p2}, {trunc_ln13_reg_1138}};
assign zext_ln12_fu_562_p1 = k_mid2_reg_1038;
assign zext_ln14_10_fu_753_p1 = add_ln14_9_fu_749_p2;
assign zext_ln14_11_fu_734_p1 = add_ln14_s_fu_723_p6;
assign zext_ln14_12_fu_768_p1 = add_ln14_11_fu_763_p2;
assign zext_ln14_13_fu_782_p1 = add_ln14_12_fu_773_p5;
assign zext_ln14_14_fu_832_p1 = add_ln14_13_reg_1234;
assign zext_ln14_15_fu_812_p1 = add_ln14_14_fu_804_p4;
assign zext_ln14_16_fu_836_p1 = add_ln14_15_reg_1244;
assign zext_ln14_1_fu_583_p1 = add_ln14_1_fu_576_p3;
assign zext_ln14_2_fu_472_p1 = add_ln14_2_fu_462_p4;
assign zext_ln14_3_fu_601_p1 = add_ln14_3_fu_595_p2;
assign zext_ln14_4_fu_503_p1 = add_ln14_4_fu_491_p5;
assign zext_ln14_5_fu_678_p1 = xor_ln_fu_671_p3;
assign zext_ln14_6_fu_687_p1 = add_ln14_5_fu_682_p2;
assign zext_ln14_7_fu_626_p1 = add_ln14_6_fu_618_p4;
assign zext_ln14_8_fu_704_p1 = add_ln14_7_fu_699_p2;
assign zext_ln14_9_fu_718_p1 = add_ln14_8_fu_709_p5;
assign zext_ln14_fu_571_p1 = add_ln14_fu_565_p2;
assign zext_ln17_fu_960_p1 = add_ln17_reg_1157_pp0_iter1_reg;
assign zext_ln9_fu_558_p1 = j_fu_546_p3;
always @ (posedge ap_clk) begin
    zext_ln9_reg_1100[11:7] <= 5'b00000;
    or_ln_reg_1118[6:0] <= 7'b1000000;
    zext_ln14_5_reg_1162[11:7] <= 5'b00000;
    or_ln13_1_reg_1172[7:0] <= 8'b11000000;
end
endmodule 
