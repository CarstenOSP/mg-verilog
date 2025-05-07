module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,p_udiv_cast,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,empty,phi_mul115,v6_address0,v6_ce0,v6_q0,v6_address1,v6_ce1,v6_q1,phi_mul,v29_12_out,v29_12_out_ap_vld,grp_fu_3427_p_din0,grp_fu_3427_p_din1,grp_fu_3427_p_opcode,grp_fu_3427_p_dout0,grp_fu_3427_p_ce,grp_fu_3435_p_din0,grp_fu_3435_p_din1,grp_fu_3435_p_dout0,grp_fu_3435_p_ce); 
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
input  [7:0] p_udiv_cast;
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
input  [1:0] empty;
input  [11:0] phi_mul115;
output  [11:0] v6_address0;
output   v6_ce0;
input  [63:0] v6_q0;
output  [11:0] v6_address1;
output   v6_ce1;
input  [63:0] v6_q1;
input  [9:0] phi_mul;
output  [63:0] v29_12_out;
output   v29_12_out_ap_vld;
output  [63:0] grp_fu_3427_p_din0;
output  [63:0] grp_fu_3427_p_din1;
output  [0:0] grp_fu_3427_p_opcode;
input  [63:0] grp_fu_3427_p_dout0;
output   grp_fu_3427_p_ce;
output  [63:0] grp_fu_3435_p_din0;
output  [63:0] grp_fu_3435_p_din1;
input  [63:0] grp_fu_3435_p_dout0;
output   grp_fu_3435_p_ce;
reg ap_idle;
reg v29_12_out_ap_vld;
(* fsm_encoding = "none" *) reg   [63:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage48;
wire    ap_block_pp0_stage48_subdone;
reg   [0:0] icmp_ln68_reg_1558;
reg    ap_condition_exit_pp0_iter0_stage48;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
reg   [63:0] reg_511;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_515;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_520;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40_11001;
wire    ap_block_pp0_stage48_11001;
wire    ap_CS_fsm_pp0_stage56;
wire    ap_block_pp0_stage56_11001;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] tmp_64_read_fu_134_p2;
wire   [1:0] tmp_64_reg_1352;
reg   [3:0] v24_1_reg_1369;
wire   [1:0] lshr_ln_fu_542_p4;
reg   [1:0] lshr_ln_reg_1375;
wire   [0:0] trunc_ln68_fu_642_p1;
reg   [0:0] trunc_ln68_reg_1431;
reg   [0:0] tmp_65_reg_1436;
wire   [1:0] trunc_ln68_1_fu_654_p1;
reg   [1:0] trunc_ln68_1_reg_1443;
reg   [0:0] tmp_66_reg_1448;
wire   [63:0] v25_fu_682_p11;
reg   [63:0] v25_reg_1453;
wire   [63:0] v25_1_fu_721_p11;
reg   [63:0] v25_1_reg_1458;
wire   [63:0] v26_fu_841_p1;
wire   [63:0] v25_2_fu_862_p11;
reg   [63:0] v25_2_reg_1518;
wire   [63:0] v25_3_fu_901_p11;
reg   [63:0] v25_3_reg_1523;
reg   [63:0] v6_load_3_reg_1528;
wire   [0:0] icmp_ln68_fu_980_p2;
wire   [63:0] v26_1_fu_1056_p1;
wire   [63:0] v25_4_fu_1077_p11;
reg   [63:0] v25_4_reg_1592;
wire   [63:0] v25_5_fu_1116_p11;
reg   [63:0] v25_5_reg_1597;
reg   [63:0] v6_load_5_reg_1602;
wire   [63:0] v26_2_fu_1205_p1;
wire   [63:0] v25_6_fu_1226_p11;
reg   [63:0] v25_6_reg_1662;
wire   [63:0] v25_7_fu_1265_p11;
reg   [63:0] v25_7_reg_1667;
reg   [63:0] v6_load_7_reg_1672;
wire   [63:0] v26_3_fu_1288_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] v26_4_fu_1292_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] v26_5_fu_1297_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] v27_reg_1692;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] v26_6_fu_1301_p1;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] v27_1_reg_1707;
wire   [63:0] v26_7_fu_1310_p1;
reg   [63:0] v27_2_reg_1717;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] v27_3_reg_1722;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] v27_4_reg_1727;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] v27_5_reg_1732;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] v27_6_reg_1737;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] v27_7_reg_1742;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage8_subdone;
wire   [63:0] zext_ln69_1_fu_562_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_fu_576_p1;
wire   [63:0] zext_ln69_4_fu_623_p1;
wire   [63:0] zext_ln70_1_fu_637_p1;
wire   [63:0] zext_ln69_7_fu_775_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln70_2_fu_788_p1;
wire   [63:0] zext_ln69_10_fu_823_p1;
wire   [63:0] zext_ln70_3_fu_836_p1;
wire   [63:0] zext_ln69_13_fu_952_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln70_4_fu_965_p1;
wire   [63:0] zext_ln69_14_fu_1009_p1;
wire   [63:0] zext_ln70_5_fu_1022_p1;
wire   [63:0] zext_ln69_15_fu_1154_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln70_6_fu_1167_p1;
wire   [63:0] zext_ln69_16_fu_1187_p1;
wire   [63:0] zext_ln70_7_fu_1200_p1;
reg   [63:0] v28_fu_114;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [3:0] v24_fu_118;
wire   [3:0] xor_ln_fu_1043_p3;
reg   [3:0] ap_sig_allocacmp_v24_1;
wire    ap_block_pp0_stage48_01001;
reg    v0_0_ce0_local;
reg   [7:0] v0_0_address0_local;
reg    v0_1_ce0_local;
reg   [7:0] v0_1_address0_local;
reg    v0_2_ce0_local;
reg   [7:0] v0_2_address0_local;
reg    v0_3_ce0_local;
reg   [7:0] v0_3_address0_local;
reg    v6_ce1_local;
reg   [11:0] v6_address1_local;
reg    v6_ce0_local;
reg   [11:0] v6_address0_local;
reg   [63:0] grp_fu_502_p0;
reg   [63:0] grp_fu_502_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33;
wire    ap_CS_fsm_pp0_stage41;
wire    ap_block_pp0_stage41;
wire    ap_CS_fsm_pp0_stage49;
wire    ap_block_pp0_stage49;
wire    ap_CS_fsm_pp0_stage57;
wire    ap_block_pp0_stage57;
reg   [63:0] grp_fu_507_p0;
reg   [63:0] grp_fu_507_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire   [7:0] zext_ln69_fu_552_p1;
wire   [7:0] add_ln69_fu_556_p2;
wire   [11:0] zext_ln68_fu_538_p1;
wire   [11:0] add_ln70_fu_570_p2;
wire   [2:0] tmp_fu_581_p4;
wire   [3:0] or_ln_fu_591_p3;
wire   [9:0] zext_ln69_3_fu_603_p1;
wire   [9:0] add_ln69_1_fu_607_p2;
wire   [7:0] lshr_ln69_1_fu_613_p4;
wire   [11:0] zext_ln69_2_fu_599_p1;
wire   [11:0] add_ln70_1_fu_631_p2;
wire   [63:0] v25_fu_682_p2;
wire   [63:0] v25_fu_682_p4;
wire   [63:0] v25_fu_682_p6;
wire   [63:0] v25_fu_682_p8;
wire   [63:0] v25_fu_682_p9;
wire   [63:0] v25_1_fu_721_p2;
wire   [63:0] v25_1_fu_721_p4;
wire   [63:0] v25_1_fu_721_p6;
wire   [63:0] v25_1_fu_721_p8;
wire   [63:0] v25_1_fu_721_p9;
wire   [3:0] or_ln68_1_fu_744_p4;
wire   [9:0] zext_ln69_6_fu_756_p1;
wire   [9:0] add_ln69_2_fu_760_p2;
wire   [7:0] lshr_ln69_2_fu_765_p4;
wire   [11:0] zext_ln69_5_fu_752_p1;
wire   [11:0] add_ln70_2_fu_783_p2;
wire   [3:0] or_ln68_2_fu_793_p3;
wire   [9:0] zext_ln69_9_fu_804_p1;
wire   [9:0] add_ln69_3_fu_808_p2;
wire   [7:0] lshr_ln69_3_fu_813_p4;
wire   [11:0] zext_ln69_8_fu_800_p1;
wire   [11:0] add_ln70_3_fu_831_p2;
wire   [63:0] v25_2_fu_862_p2;
wire   [63:0] v25_2_fu_862_p4;
wire   [63:0] v25_2_fu_862_p6;
wire   [63:0] v25_2_fu_862_p8;
wire   [63:0] v25_2_fu_862_p9;
wire   [63:0] v25_3_fu_901_p2;
wire   [63:0] v25_3_fu_901_p4;
wire   [63:0] v25_3_fu_901_p6;
wire   [63:0] v25_3_fu_901_p8;
wire   [63:0] v25_3_fu_901_p9;
wire   [3:0] or_ln68_3_fu_924_p4;
wire   [1:0] or_ln1_fu_936_p3;
wire   [7:0] zext_ln69_12_fu_943_p1;
wire   [7:0] add_ln69_4_fu_947_p2;
wire   [11:0] zext_ln69_11_fu_932_p1;
wire   [11:0] add_ln70_4_fu_960_p2;
wire   [3:0] or_ln68_4_fu_970_p5;
wire   [9:0] zext_ln68_2_fu_990_p1;
wire   [9:0] add_ln69_5_fu_994_p2;
wire   [7:0] lshr_ln69_4_fu_999_p4;
wire   [11:0] zext_ln68_1_fu_986_p1;
wire   [11:0] add_ln70_5_fu_1017_p2;
wire   [0:0] bit_sel1_fu_1027_p3;
wire   [0:0] xor_ln68_fu_1034_p2;
wire   [2:0] trunc_ln68_2_fu_1040_p1;
wire   [63:0] v25_4_fu_1077_p2;
wire   [63:0] v25_4_fu_1077_p4;
wire   [63:0] v25_4_fu_1077_p6;
wire   [63:0] v25_4_fu_1077_p8;
wire   [63:0] v25_4_fu_1077_p9;
wire   [63:0] v25_5_fu_1116_p2;
wire   [63:0] v25_5_fu_1116_p4;
wire   [63:0] v25_5_fu_1116_p6;
wire   [63:0] v25_5_fu_1116_p8;
wire   [63:0] v25_5_fu_1116_p9;
wire   [9:0] add_ln69_6_fu_1139_p2;
wire   [7:0] lshr_ln69_5_fu_1144_p4;
wire   [11:0] add_ln70_6_fu_1162_p2;
wire   [9:0] add_ln69_7_fu_1172_p2;
wire   [7:0] lshr_ln69_6_fu_1177_p4;
wire   [11:0] add_ln70_7_fu_1195_p2;
wire   [63:0] v25_6_fu_1226_p2;
wire   [63:0] v25_6_fu_1226_p4;
wire   [63:0] v25_6_fu_1226_p6;
wire   [63:0] v25_6_fu_1226_p8;
wire   [63:0] v25_6_fu_1226_p9;
wire   [63:0] v25_7_fu_1265_p2;
wire   [63:0] v25_7_fu_1265_p4;
wire   [63:0] v25_7_fu_1265_p6;
wire   [63:0] v25_7_fu_1265_p8;
wire   [63:0] v25_7_fu_1265_p9;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage33_00001;
wire    ap_block_pp0_stage41_00001;
wire    ap_block_pp0_stage49_00001;
wire    ap_block_pp0_stage57_00001;
wire    ap_block_pp0_stage1_00001;
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
wire    ap_block_pp0_stage61_subdone;
wire    ap_block_pp0_stage62_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1619;
reg    ap_condition_1623;
reg    ap_condition_1627;
reg    ap_condition_1631;
reg    ap_condition_1635;
reg    ap_condition_1640;
reg    ap_condition_1645;
reg    ap_condition_1650;
reg    ap_condition_1654;
reg    ap_condition_1658;
reg    ap_condition_1662;
reg    ap_condition_1666;
reg    ap_condition_1671;
reg    ap_condition_1675;
reg    ap_condition_1679;
reg    ap_condition_1683;
reg    ap_condition_1687;
reg    ap_condition_1692;
reg    ap_condition_1696;
reg    ap_condition_1700;
wire   [1:0] v25_fu_682_p1;
wire   [1:0] v25_fu_682_p3;
wire  signed [1:0] v25_fu_682_p5;
wire  signed [1:0] v25_fu_682_p7;
wire  signed [1:0] v25_1_fu_721_p1;
wire   [1:0] v25_1_fu_721_p3;
wire   [1:0] v25_1_fu_721_p5;
wire  signed [1:0] v25_1_fu_721_p7;
wire  signed [1:0] v25_2_fu_862_p1;
wire  signed [1:0] v25_2_fu_862_p3;
wire   [1:0] v25_2_fu_862_p5;
wire   [1:0] v25_2_fu_862_p7;
wire   [1:0] v25_3_fu_901_p1;
wire  signed [1:0] v25_3_fu_901_p3;
wire  signed [1:0] v25_3_fu_901_p5;
wire   [1:0] v25_3_fu_901_p7;
wire   [1:0] v25_4_fu_1077_p1;
wire   [1:0] v25_4_fu_1077_p3;
wire  signed [1:0] v25_4_fu_1077_p5;
wire  signed [1:0] v25_4_fu_1077_p7;
wire  signed [1:0] v25_5_fu_1116_p1;
wire   [1:0] v25_5_fu_1116_p3;
wire   [1:0] v25_5_fu_1116_p5;
wire  signed [1:0] v25_5_fu_1116_p7;
wire  signed [1:0] v25_6_fu_1226_p1;
wire  signed [1:0] v25_6_fu_1226_p3;
wire   [1:0] v25_6_fu_1226_p5;
wire   [1:0] v25_6_fu_1226_p7;
wire   [1:0] v25_7_fu_1265_p1;
wire  signed [1:0] v25_7_fu_1265_p3;
wire  signed [1:0] v25_7_fu_1265_p5;
wire   [1:0] v25_7_fu_1265_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 64'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_114 = 64'd0;
#0 v24_fu_118 = 4'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U11(.din0(v25_fu_682_p2),.din1(v25_fu_682_p4),.din2(v25_fu_682_p6),.din3(v25_fu_682_p8),.def(v25_fu_682_p9),.sel(empty),.dout(v25_fu_682_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U12(.din0(v25_1_fu_721_p2),.din1(v25_1_fu_721_p4),.din2(v25_1_fu_721_p6),.din3(v25_1_fu_721_p8),.def(v25_1_fu_721_p9),.sel(empty),.dout(v25_1_fu_721_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h3 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.CASE3( 2'h1 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U13(.din0(v25_2_fu_862_p2),.din1(v25_2_fu_862_p4),.din2(v25_2_fu_862_p6),.din3(v25_2_fu_862_p8),.def(v25_2_fu_862_p9),.sel(empty),.dout(v25_2_fu_862_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h3 ),.din2_WIDTH( 64 ),.CASE3( 2'h0 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U14(.din0(v25_3_fu_901_p2),.din1(v25_3_fu_901_p4),.din2(v25_3_fu_901_p6),.din3(v25_3_fu_901_p8),.def(v25_3_fu_901_p9),.sel(empty),.dout(v25_3_fu_901_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U15(.din0(v25_4_fu_1077_p2),.din1(v25_4_fu_1077_p4),.din2(v25_4_fu_1077_p6),.din3(v25_4_fu_1077_p8),.def(v25_4_fu_1077_p9),.sel(empty),.dout(v25_4_fu_1077_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U16(.din0(v25_5_fu_1116_p2),.din1(v25_5_fu_1116_p4),.din2(v25_5_fu_1116_p6),.din3(v25_5_fu_1116_p8),.def(v25_5_fu_1116_p9),.sel(empty),.dout(v25_5_fu_1116_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 64 ),.CASE1( 2'h3 ),.din1_WIDTH( 64 ),.CASE2( 2'h0 ),.din2_WIDTH( 64 ),.CASE3( 2'h1 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U17(.din0(v25_6_fu_1226_p2),.din1(v25_6_fu_1226_p4),.din2(v25_6_fu_1226_p6),.din3(v25_6_fu_1226_p8),.def(v25_6_fu_1226_p9),.sel(empty),.dout(v25_6_fu_1226_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 64 ),.CASE1( 2'h2 ),.din1_WIDTH( 64 ),.CASE2( 2'h3 ),.din2_WIDTH( 64 ),.CASE3( 2'h0 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U18(.din0(v25_7_fu_1265_p2),.din1(v25_7_fu_1265_p4),.din2(v25_7_fu_1265_p6),.din3(v25_7_fu_1265_p8),.def(v25_7_fu_1265_p9),.sel(empty),.dout(v25_7_fu_1265_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage48),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage48_subdone) & (1'b1 == ap_CS_fsm_pp0_stage48) & (ap_loop_exit_ready == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage48)) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_515 <= v6_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_515 <= v6_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_fu_118 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_980_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v24_fu_118 <= xor_ln_fu_1043_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_114 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v28_fu_114 <= grp_fu_3427_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln68_reg_1558 <= icmp_ln68_fu_980_p2;
        v25_2_reg_1518 <= v25_2_fu_862_p11;
        v25_3_reg_1523 <= v25_3_fu_901_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_1375 <= {{ap_sig_allocacmp_v24_1[3:2]}};
        tmp_65_reg_1436 <= ap_sig_allocacmp_v24_1[32'd3];
        tmp_66_reg_1448 <= ap_sig_allocacmp_v24_1[32'd1];
        trunc_ln68_1_reg_1443 <= trunc_ln68_1_fu_654_p1;
        trunc_ln68_reg_1431 <= trunc_ln68_fu_642_p1;
        v24_1_reg_1369 <= ap_sig_allocacmp_v24_1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_511 <= v6_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage56_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56)) | ((1'b0 == ap_block_pp0_stage48_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_520 <= grp_fu_3427_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v25_1_reg_1458 <= v25_1_fu_721_p11;
        v25_reg_1453 <= v25_fu_682_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v25_4_reg_1592 <= v25_4_fu_1077_p11;
        v25_5_reg_1597 <= v25_5_fu_1116_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v25_6_reg_1662 <= v25_6_fu_1226_p11;
        v25_7_reg_1667 <= v25_7_fu_1265_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v27_1_reg_1707 <= grp_fu_3435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v27_2_reg_1717 <= grp_fu_3435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v27_3_reg_1722 <= grp_fu_3435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        v27_4_reg_1727 <= grp_fu_3435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v27_5_reg_1732 <= grp_fu_3435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v27_6_reg_1737 <= grp_fu_3435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v27_7_reg_1742 <= grp_fu_3435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v27_reg_1692 <= grp_fu_3435_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v6_load_3_reg_1528 <= v6_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v6_load_5_reg_1602 <= v6_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v6_load_7_reg_1672 <= v6_q0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage48_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48) & (icmp_ln68_reg_1558 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage48 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage48 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage48_subdone) & (1'b1 == ap_CS_fsm_pp0_stage48) & (ap_loop_exit_ready == 1'b1))) begin
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
        ap_sig_allocacmp_v24_1 = v24_fu_118;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage57) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage57)) | ((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_502_p0 = reg_520;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_502_p0 = v28_fu_114;
    end else begin
        grp_fu_502_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_502_p1 = v27_7_reg_1742;
    end else if (((1'b0 == ap_block_pp0_stage57) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage57))) begin
        grp_fu_502_p1 = v27_6_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49))) begin
        grp_fu_502_p1 = v27_5_reg_1732;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        grp_fu_502_p1 = v27_4_reg_1727;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        grp_fu_502_p1 = v27_3_reg_1722;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_502_p1 = v27_2_reg_1717;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_502_p1 = v27_1_reg_1707;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_502_p1 = v27_reg_1692;
    end else begin
        grp_fu_502_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_507_p0 = v25_7_reg_1667;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_507_p0 = v25_6_reg_1662;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_507_p0 = v25_5_reg_1597;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_507_p0 = v25_4_reg_1592;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_507_p0 = v25_3_reg_1523;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_507_p0 = v25_2_reg_1518;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_507_p0 = v25_1_reg_1458;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_507_p0 = v25_reg_1453;
        end else begin
            grp_fu_507_p0 = 'bx;
        end
    end else begin
        grp_fu_507_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_507_p1 = v26_7_fu_1310_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_507_p1 = v26_6_fu_1301_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_507_p1 = v26_5_fu_1297_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_507_p1 = v26_4_fu_1292_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_507_p1 = v26_3_fu_1288_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_507_p1 = v26_2_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_507_p1 = v26_1_fu_1056_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_507_p1 = v26_fu_841_p1;
        end else begin
            grp_fu_507_p1 = 'bx;
        end
    end else begin
        grp_fu_507_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1650)) begin
            v0_0_address0_local = zext_ln69_16_fu_1187_p1;
        end else if ((1'b1 == ap_condition_1645)) begin
            v0_0_address0_local = zext_ln69_15_fu_1154_p1;
        end else if ((1'b1 == ap_condition_1640)) begin
            v0_0_address0_local = zext_ln69_14_fu_1009_p1;
        end else if ((1'b1 == ap_condition_1635)) begin
            v0_0_address0_local = zext_ln69_13_fu_952_p1;
        end else if ((1'b1 == ap_condition_1631)) begin
            v0_0_address0_local = zext_ln69_10_fu_823_p1;
        end else if ((1'b1 == ap_condition_1627)) begin
            v0_0_address0_local = zext_ln69_7_fu_775_p1;
        end else if ((1'b1 == ap_condition_1623)) begin
            v0_0_address0_local = zext_ln69_4_fu_623_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            v0_0_address0_local = zext_ln69_1_fu_562_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_read_fu_134_p2 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_read_fu_134_p2 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_1558 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_1558 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_980_p2 == 1'd0) & (tmp_64_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd1)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1645)) begin
            v0_1_address0_local = zext_ln69_16_fu_1187_p1;
        end else if ((1'b1 == ap_condition_1671)) begin
            v0_1_address0_local = zext_ln69_15_fu_1154_p1;
        end else if ((1'b1 == ap_condition_1666)) begin
            v0_1_address0_local = zext_ln69_14_fu_1009_p1;
        end else if ((1'b1 == ap_condition_1662)) begin
            v0_1_address0_local = zext_ln69_13_fu_952_p1;
        end else if ((1'b1 == ap_condition_1627)) begin
            v0_1_address0_local = zext_ln69_10_fu_823_p1;
        end else if ((1'b1 == ap_condition_1658)) begin
            v0_1_address0_local = zext_ln69_7_fu_775_p1;
        end else if ((1'b1 == ap_condition_1619)) begin
            v0_1_address0_local = zext_ln69_4_fu_623_p1;
        end else if ((1'b1 == ap_condition_1654)) begin
            v0_1_address0_local = zext_ln69_1_fu_562_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_read_fu_134_p2 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_read_fu_134_p2 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_1558 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_1558 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_980_p2 == 1'd0) & (tmp_64_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd3)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1671)) begin
            v0_2_address0_local = zext_ln69_16_fu_1187_p1;
        end else if ((1'b1 == ap_condition_1692)) begin
            v0_2_address0_local = zext_ln69_15_fu_1154_p1;
        end else if ((1'b1 == ap_condition_1687)) begin
            v0_2_address0_local = zext_ln69_14_fu_1009_p1;
        end else if ((1'b1 == ap_condition_1683)) begin
            v0_2_address0_local = zext_ln69_13_fu_952_p1;
        end else if ((1'b1 == ap_condition_1658)) begin
            v0_2_address0_local = zext_ln69_10_fu_823_p1;
        end else if ((1'b1 == ap_condition_1679)) begin
            v0_2_address0_local = zext_ln69_7_fu_775_p1;
        end else if ((1'b1 == ap_condition_1654)) begin
            v0_2_address0_local = zext_ln69_4_fu_623_p1;
        end else if ((1'b1 == ap_condition_1675)) begin
            v0_2_address0_local = zext_ln69_1_fu_562_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_read_fu_134_p2 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_read_fu_134_p2 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_1558 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_1558 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_980_p2 == 1'd0) & (tmp_64_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd0)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1692)) begin
            v0_3_address0_local = zext_ln69_16_fu_1187_p1;
        end else if ((1'b1 == ap_condition_1650)) begin
            v0_3_address0_local = zext_ln69_15_fu_1154_p1;
        end else if ((1'b1 == ap_condition_1700)) begin
            v0_3_address0_local = zext_ln69_14_fu_1009_p1;
        end else if ((1'b1 == ap_condition_1696)) begin
            v0_3_address0_local = zext_ln69_13_fu_952_p1;
        end else if ((1'b1 == ap_condition_1679)) begin
            v0_3_address0_local = zext_ln69_10_fu_823_p1;
        end else if ((1'b1 == ap_condition_1631)) begin
            v0_3_address0_local = zext_ln69_7_fu_775_p1;
        end else if ((1'b1 == ap_condition_1675)) begin
            v0_3_address0_local = zext_ln69_4_fu_623_p1;
        end else if ((1'b1 == ap_condition_1623)) begin
            v0_3_address0_local = zext_ln69_1_fu_562_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_read_fu_134_p2 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_read_fu_134_p2 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_1558 == 1'd0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_1558 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_980_p2 == 1'd0) & (tmp_64_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd1)& (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_64_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage48_11001) & (1'b1 == ap_CS_fsm_pp0_stage48) & (ap_loop_exit_ready == 1'b1) & (icmp_ln68_reg_1558 == 1'd1))) begin
        v29_12_out_ap_vld = 1'b1;
    end else begin
        v29_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v6_address0_local = zext_ln70_7_fu_1200_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v6_address0_local = zext_ln70_5_fu_1022_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v6_address0_local = zext_ln70_3_fu_836_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v6_address0_local = zext_ln70_1_fu_637_p1;
        end else begin
            v6_address0_local = 'bx;
        end
    end else begin
        v6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v6_address1_local = zext_ln70_6_fu_1167_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v6_address1_local = zext_ln70_4_fu_965_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v6_address1_local = zext_ln70_2_fu_788_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v6_address1_local = zext_ln70_fu_576_p1;
        end else begin
            v6_address1_local = 'bx;
        end
    end else begin
        v6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v6_ce0_local = 1'b1;
    end else begin
        v6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v6_ce1_local = 1'b1;
    end else begin
        v6_ce1_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage48)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage48_subdone)) begin
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
assign add_ln69_1_fu_607_p2 = (zext_ln69_3_fu_603_p1 + phi_mul);
assign add_ln69_2_fu_760_p2 = (zext_ln69_6_fu_756_p1 + phi_mul);
assign add_ln69_3_fu_808_p2 = (zext_ln69_9_fu_804_p1 + phi_mul);
assign add_ln69_4_fu_947_p2 = (zext_ln69_12_fu_943_p1 + p_udiv_cast);
assign add_ln69_5_fu_994_p2 = (zext_ln68_2_fu_990_p1 + phi_mul);
assign add_ln69_6_fu_1139_p2 = (phi_mul + 10'd6);
assign add_ln69_7_fu_1172_p2 = (phi_mul + 10'd7);
assign add_ln69_fu_556_p2 = (zext_ln69_fu_552_p1 + p_udiv_cast);
assign add_ln70_1_fu_631_p2 = (zext_ln69_2_fu_599_p1 + phi_mul115);
assign add_ln70_2_fu_783_p2 = (zext_ln69_5_fu_752_p1 + phi_mul115);
assign add_ln70_3_fu_831_p2 = (zext_ln69_8_fu_800_p1 + phi_mul115);
assign add_ln70_4_fu_960_p2 = (zext_ln69_11_fu_932_p1 + phi_mul115);
assign add_ln70_5_fu_1017_p2 = (zext_ln68_1_fu_986_p1 + phi_mul115);
assign add_ln70_6_fu_1162_p2 = (phi_mul115 + 12'd6);
assign add_ln70_7_fu_1195_p2 = (phi_mul115 + 12'd7);
assign add_ln70_fu_570_p2 = (zext_ln68_fu_538_p1 + phi_mul115);
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
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage33 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage40 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_pp0_stage41 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_pp0_stage48 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_pp0_stage49 = ap_CS_fsm[32'd49];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage56 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_pp0_stage57 = ap_CS_fsm[32'd57];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage63 = ap_CS_fsm[32'd63];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1619 = ((1'b0 == ap_block_pp0_stage0) & (tmp_64_read_fu_134_p2 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1623 = ((1'b0 == ap_block_pp0_stage0) & (tmp_64_read_fu_134_p2 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1627 = ((1'b0 == ap_block_pp0_stage1) & (tmp_64_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1631 = ((1'b0 == ap_block_pp0_stage1) & (tmp_64_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1635 = ((1'b0 == ap_block_pp0_stage2) & (tmp_64_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1640 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln68_fu_980_p2 == 1'd0) & (tmp_64_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1645 = ((1'b0 == ap_block_pp0_stage3) & (tmp_64_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_1558 == 1'd0));
end
always @ (*) begin
    ap_condition_1650 = ((1'b0 == ap_block_pp0_stage3) & (tmp_64_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_1558 == 1'd0));
end
always @ (*) begin
    ap_condition_1654 = ((1'b0 == ap_block_pp0_stage0) & (tmp_64_read_fu_134_p2 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1658 = ((1'b0 == ap_block_pp0_stage1) & (tmp_64_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1662 = ((1'b0 == ap_block_pp0_stage2) & (tmp_64_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1666 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln68_fu_980_p2 == 1'd0) & (tmp_64_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1671 = ((1'b0 == ap_block_pp0_stage3) & (tmp_64_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_1558 == 1'd0));
end
always @ (*) begin
    ap_condition_1675 = ((1'b0 == ap_block_pp0_stage0) & (tmp_64_read_fu_134_p2 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1679 = ((1'b0 == ap_block_pp0_stage1) & (tmp_64_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1));
end
always @ (*) begin
    ap_condition_1683 = ((1'b0 == ap_block_pp0_stage2) & (tmp_64_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1687 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln68_fu_980_p2 == 1'd0) & (tmp_64_reg_1352 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1692 = ((1'b0 == ap_block_pp0_stage3) & (tmp_64_reg_1352 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln68_reg_1558 == 1'd0));
end
always @ (*) begin
    ap_condition_1696 = ((1'b0 == ap_block_pp0_stage2) & (tmp_64_reg_1352 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1700 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln68_fu_980_p2 == 1'd0) & (tmp_64_reg_1352 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage48;
assign ap_ready = ap_ready_sig;
assign bit_sel1_fu_1027_p3 = v24_1_reg_1369[4'd3];
assign grp_fu_3427_p_ce = 1'b1;
assign grp_fu_3427_p_din0 = grp_fu_502_p0;
assign grp_fu_3427_p_din1 = grp_fu_502_p1;
assign grp_fu_3427_p_opcode = 2'd0;
assign grp_fu_3435_p_ce = 1'b1;
assign grp_fu_3435_p_din0 = grp_fu_507_p0;
assign grp_fu_3435_p_din1 = grp_fu_507_p1;
assign icmp_ln68_fu_980_p2 = ((or_ln68_4_fu_970_p5 == 4'd13) ? 1'b1 : 1'b0);
assign lshr_ln69_1_fu_613_p4 = {{add_ln69_1_fu_607_p2[9:2]}};
assign lshr_ln69_2_fu_765_p4 = {{add_ln69_2_fu_760_p2[9:2]}};
assign lshr_ln69_3_fu_813_p4 = {{add_ln69_3_fu_808_p2[9:2]}};
assign lshr_ln69_4_fu_999_p4 = {{add_ln69_5_fu_994_p2[9:2]}};
assign lshr_ln69_5_fu_1144_p4 = {{add_ln69_6_fu_1139_p2[9:2]}};
assign lshr_ln69_6_fu_1177_p4 = {{add_ln69_7_fu_1172_p2[9:2]}};
assign lshr_ln_fu_542_p4 = {{ap_sig_allocacmp_v24_1[3:2]}};
assign or_ln1_fu_936_p3 = {{tmp_65_reg_1436}, {1'd1}};
assign or_ln68_1_fu_744_p4 = {{{lshr_ln_reg_1375}, {1'd1}}, {trunc_ln68_reg_1431}};
assign or_ln68_2_fu_793_p3 = {{lshr_ln_reg_1375}, {2'd3}};
assign or_ln68_3_fu_924_p4 = {{{tmp_65_reg_1436}, {1'd1}}, {trunc_ln68_1_reg_1443}};
assign or_ln68_4_fu_970_p5 = {{{{tmp_65_reg_1436}, {1'd1}}, {tmp_66_reg_1448}}, {1'd1}};
assign or_ln_fu_591_p3 = {{tmp_fu_581_p4}, {1'd1}};
assign tmp_64_read_fu_134_p2 = empty;
assign tmp_64_reg_1352 = empty;
assign tmp_fu_581_p4 = {{ap_sig_allocacmp_v24_1[3:1]}};
assign trunc_ln68_1_fu_654_p1 = ap_sig_allocacmp_v24_1[1:0];
assign trunc_ln68_2_fu_1040_p1 = v24_1_reg_1369[2:0];
assign trunc_ln68_fu_642_p1 = ap_sig_allocacmp_v24_1[0:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v25_1_fu_721_p2 = v0_0_q0;
assign v25_1_fu_721_p4 = v0_1_q0;
assign v25_1_fu_721_p6 = v0_2_q0;
assign v25_1_fu_721_p8 = v0_3_q0;
assign v25_1_fu_721_p9 = 'bx;
assign v25_2_fu_862_p2 = v0_0_q0;
assign v25_2_fu_862_p4 = v0_1_q0;
assign v25_2_fu_862_p6 = v0_2_q0;
assign v25_2_fu_862_p8 = v0_3_q0;
assign v25_2_fu_862_p9 = 'bx;
assign v25_3_fu_901_p2 = v0_0_q0;
assign v25_3_fu_901_p4 = v0_1_q0;
assign v25_3_fu_901_p6 = v0_2_q0;
assign v25_3_fu_901_p8 = v0_3_q0;
assign v25_3_fu_901_p9 = 'bx;
assign v25_4_fu_1077_p2 = v0_0_q0;
assign v25_4_fu_1077_p4 = v0_1_q0;
assign v25_4_fu_1077_p6 = v0_2_q0;
assign v25_4_fu_1077_p8 = v0_3_q0;
assign v25_4_fu_1077_p9 = 'bx;
assign v25_5_fu_1116_p2 = v0_0_q0;
assign v25_5_fu_1116_p4 = v0_1_q0;
assign v25_5_fu_1116_p6 = v0_2_q0;
assign v25_5_fu_1116_p8 = v0_3_q0;
assign v25_5_fu_1116_p9 = 'bx;
assign v25_6_fu_1226_p2 = v0_0_q0;
assign v25_6_fu_1226_p4 = v0_1_q0;
assign v25_6_fu_1226_p6 = v0_2_q0;
assign v25_6_fu_1226_p8 = v0_3_q0;
assign v25_6_fu_1226_p9 = 'bx;
assign v25_7_fu_1265_p2 = v0_0_q0;
assign v25_7_fu_1265_p4 = v0_1_q0;
assign v25_7_fu_1265_p6 = v0_2_q0;
assign v25_7_fu_1265_p8 = v0_3_q0;
assign v25_7_fu_1265_p9 = 'bx;
assign v25_fu_682_p2 = v0_0_q0;
assign v25_fu_682_p4 = v0_1_q0;
assign v25_fu_682_p6 = v0_2_q0;
assign v25_fu_682_p8 = v0_3_q0;
assign v25_fu_682_p9 = 'bx;
assign v26_1_fu_1056_p1 = reg_515;
assign v26_2_fu_1205_p1 = reg_511;
assign v26_3_fu_1288_p1 = v6_load_3_reg_1528;
assign v26_4_fu_1292_p1 = reg_515;
assign v26_5_fu_1297_p1 = v6_load_5_reg_1602;
assign v26_6_fu_1301_p1 = reg_511;
assign v26_7_fu_1310_p1 = v6_load_7_reg_1672;
assign v26_fu_841_p1 = reg_511;
assign v29_12_out = grp_fu_3427_p_dout0;
assign v6_address0 = v6_address0_local;
assign v6_address1 = v6_address1_local;
assign v6_ce0 = v6_ce0_local;
assign v6_ce1 = v6_ce1_local;
assign xor_ln68_fu_1034_p2 = (bit_sel1_fu_1027_p3 ^ 1'd1);
assign xor_ln_fu_1043_p3 = {{xor_ln68_fu_1034_p2}, {trunc_ln68_2_fu_1040_p1}};
assign zext_ln68_1_fu_986_p1 = or_ln68_4_fu_970_p5;
assign zext_ln68_2_fu_990_p1 = or_ln68_4_fu_970_p5;
assign zext_ln68_fu_538_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_10_fu_823_p1 = lshr_ln69_3_fu_813_p4;
assign zext_ln69_11_fu_932_p1 = or_ln68_3_fu_924_p4;
assign zext_ln69_12_fu_943_p1 = or_ln1_fu_936_p3;
assign zext_ln69_13_fu_952_p1 = add_ln69_4_fu_947_p2;
assign zext_ln69_14_fu_1009_p1 = lshr_ln69_4_fu_999_p4;
assign zext_ln69_15_fu_1154_p1 = lshr_ln69_5_fu_1144_p4;
assign zext_ln69_16_fu_1187_p1 = lshr_ln69_6_fu_1177_p4;
assign zext_ln69_1_fu_562_p1 = add_ln69_fu_556_p2;
assign zext_ln69_2_fu_599_p1 = or_ln_fu_591_p3;
assign zext_ln69_3_fu_603_p1 = or_ln_fu_591_p3;
assign zext_ln69_4_fu_623_p1 = lshr_ln69_1_fu_613_p4;
assign zext_ln69_5_fu_752_p1 = or_ln68_1_fu_744_p4;
assign zext_ln69_6_fu_756_p1 = or_ln68_1_fu_744_p4;
assign zext_ln69_7_fu_775_p1 = lshr_ln69_2_fu_765_p4;
assign zext_ln69_8_fu_800_p1 = or_ln68_2_fu_793_p3;
assign zext_ln69_9_fu_804_p1 = or_ln68_2_fu_793_p3;
assign zext_ln69_fu_552_p1 = lshr_ln_fu_542_p4;
assign zext_ln70_1_fu_637_p1 = add_ln70_1_fu_631_p2;
assign zext_ln70_2_fu_788_p1 = add_ln70_2_fu_783_p2;
assign zext_ln70_3_fu_836_p1 = add_ln70_3_fu_831_p2;
assign zext_ln70_4_fu_965_p1 = add_ln70_4_fu_960_p2;
assign zext_ln70_5_fu_1022_p1 = add_ln70_5_fu_1017_p2;
assign zext_ln70_6_fu_1167_p1 = add_ln70_6_fu_1162_p2;
assign zext_ln70_7_fu_1200_p1 = add_ln70_7_fu_1195_p2;
assign zext_ln70_fu_576_p1 = add_ln70_fu_570_p2;
endmodule 