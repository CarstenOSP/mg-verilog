
module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,phi_mul143,v6_address0,v6_ce0,v6_q0,v6_address1,v6_ce1,v6_q1,v29_12_out,v29_12_out_ap_vld,grp_fu_8156_p_din0,grp_fu_8156_p_din1,grp_fu_8156_p_opcode,grp_fu_8156_p_dout0,grp_fu_8156_p_ce,grp_fu_4418_p_din0,grp_fu_4418_p_din1,grp_fu_4418_p_dout0,grp_fu_4418_p_ce);  
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
output  [8:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [8:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
input  [11:0] phi_mul143;
output  [11:0] v6_address0;
output   v6_ce0;
input  [63:0] v6_q0;
output  [11:0] v6_address1;
output   v6_ce1;
input  [63:0] v6_q1;
output  [63:0] v29_12_out;
output   v29_12_out_ap_vld;
output  [63:0] grp_fu_8156_p_din0;
output  [63:0] grp_fu_8156_p_din1;
output  [0:0] grp_fu_8156_p_opcode;
input  [63:0] grp_fu_8156_p_dout0;
output   grp_fu_8156_p_ce;
output  [63:0] grp_fu_4418_p_din0;
output  [63:0] grp_fu_4418_p_din1;
input  [63:0] grp_fu_4418_p_dout0;
output   grp_fu_4418_p_ce;
reg ap_idle;
reg v29_12_out_ap_vld;
(* fsm_encoding = "none" *) reg   [63:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage61;
wire    ap_block_pp0_stage61_subdone;
reg   [0:0] icmp_ln68_reg_1134;
reg    ap_condition_exit_pp0_iter0_stage61;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
reg   [63:0] reg_341;
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
reg   [3:0] v24_1_reg_1000;
wire   [9:0] add_ln69_fu_367_p2;
reg   [9:0] add_ln69_reg_1006;
wire   [3:0] or_ln_fu_400_p3;
reg   [3:0] or_ln_reg_1017;
reg   [1:0] tmp_2_reg_1027;
wire   [0:0] trunc_ln68_fu_433_p1;
reg   [0:0] trunc_ln68_reg_1033;
reg   [0:0] tmp_reg_1038;
wire   [1:0] trunc_ln68_1_fu_445_p1;
reg   [1:0] trunc_ln68_1_reg_1044;
reg   [0:0] tmp_3_reg_1049;
wire   [0:0] icmp_ln69_fu_462_p2;
reg   [0:0] icmp_ln69_reg_1054;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] v6_load_reg_1059;
wire   [9:0] add_ln69_1_fu_471_p2;
wire   [0:0] icmp_ln69_1_fu_488_p2;
reg   [0:0] icmp_ln69_1_reg_1069;
reg   [63:0] v6_load_1_reg_1074;
wire   [3:0] or_ln68_1_fu_494_p4;
reg   [3:0] or_ln68_1_reg_1079;
wire   [3:0] or_ln68_2_fu_516_p3;
reg   [3:0] or_ln68_2_reg_1089;
wire   [9:0] add_ln69_2_fu_540_p2;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln69_2_fu_557_p2;
reg   [0:0] icmp_ln69_2_reg_1104;
reg   [63:0] v6_load_2_reg_1109;
reg   [63:0] v6_load_3_reg_1114;
wire   [3:0] or_ln68_3_fu_563_p4;
reg   [3:0] or_ln68_3_reg_1119;
wire   [3:0] or_ln68_4_fu_585_p5;
reg   [3:0] or_ln68_4_reg_1129;
wire   [0:0] icmp_ln68_fu_595_p2;
wire   [9:0] add_ln69_3_fu_647_p2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] icmp_ln69_3_fu_664_p2;
reg   [0:0] icmp_ln69_3_reg_1148;
reg   [63:0] v6_load_4_reg_1153;
reg   [63:0] v6_load_5_reg_1158;
wire   [9:0] add_ln69_4_fu_693_p2;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] icmp_ln69_4_fu_710_p2;
reg   [0:0] icmp_ln69_4_reg_1178;
reg   [63:0] v6_load_6_reg_1183;
reg   [63:0] v6_load_7_reg_1188;
wire   [9:0] add_ln69_5_fu_719_p2;
wire   [0:0] icmp_ln69_5_fu_736_p2;
reg   [0:0] icmp_ln69_5_reg_1198;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] icmp_ln69_6_fu_758_p2;
reg   [0:0] icmp_ln69_6_reg_1208;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln69_7_fu_780_p2;
reg   [0:0] icmp_ln69_7_reg_1218;
wire   [63:0] select_ln69_fu_792_p3;
reg   [63:0] select_ln69_reg_1233;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [63:0] v25_fu_805_p1;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] v26_fu_809_p1;
wire   [63:0] select_ln69_1_fu_813_p3;
reg   [63:0] select_ln69_1_reg_1258;
wire   [63:0] v25_1_fu_826_p1;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [63:0] v26_1_fu_830_p1;
wire   [63:0] select_ln69_2_fu_834_p3;
reg   [63:0] select_ln69_2_reg_1283;
wire   [63:0] v25_2_fu_847_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [63:0] v26_2_fu_851_p1;
wire   [63:0] select_ln69_3_fu_855_p3;
reg   [63:0] select_ln69_3_reg_1308;
wire   [63:0] v25_3_fu_868_p1;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [63:0] v26_3_fu_872_p1;
wire   [63:0] select_ln69_4_fu_876_p3;
reg   [63:0] select_ln69_4_reg_1333;
wire   [63:0] v25_4_fu_889_p1;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [63:0] v26_4_fu_893_p1;
wire   [63:0] select_ln69_5_fu_897_p3;
reg   [63:0] select_ln69_5_reg_1358;
wire   [63:0] v25_5_fu_910_p1;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [63:0] v26_5_fu_914_p1;
wire   [63:0] select_ln69_6_fu_918_p3;
reg   [63:0] select_ln69_6_reg_1383;
reg   [63:0] v27_reg_1398;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [63:0] v25_6_fu_931_p1;
wire   [63:0] v26_6_fu_935_p1;
wire   [63:0] select_ln69_7_fu_939_p3;
reg   [63:0] select_ln69_7_reg_1413;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] v27_1_reg_1423;
wire   [63:0] v25_7_fu_950_p1;
wire   [63:0] v26_7_fu_954_p1;
reg   [63:0] v27_2_reg_1438;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] v27_3_reg_1443;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] v27_4_reg_1448;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] v27_5_reg_1453;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] v27_6_reg_1458;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] v27_7_reg_1463;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage21_subdone;
wire   [63:0] zext_ln70_fu_385_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln70_1_fu_418_p1;
wire   [63:0] zext_ln70_2_fu_511_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln70_3_fu_532_p1;
wire   [63:0] zext_ln70_4_fu_580_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln70_5_fu_610_p1;
wire   [63:0] zext_ln70_6_fu_675_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln70_7_fu_685_p1;
wire   [63:0] zext_ln69_fu_786_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln69_3_fu_799_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln69_6_fu_820_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln69_9_fu_841_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln69_12_fu_862_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln69_13_fu_883_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln69_14_fu_904_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln69_15_fu_925_p1;
wire    ap_block_pp0_stage20;
reg   [63:0] v28_fu_94;
wire    ap_loop_init;
wire    ap_block_pp0_stage22;
reg   [3:0] v24_fu_98;
wire   [3:0] xor_ln_fu_631_p3;
reg   [3:0] ap_sig_allocacmp_v24_1;
wire    ap_block_pp0_stage61_01001;
reg    v6_ce1_local;
reg   [11:0] v6_address1_local;
reg    v6_ce0_local;
reg   [11:0] v6_address0_local;
reg    v0_0_ce0_local;
reg   [8:0] v0_0_address0_local;
reg    v0_1_ce0_local;
reg   [8:0] v0_1_address0_local;
reg   [63:0] grp_fu_332_p0;
reg   [63:0] grp_fu_332_p1;
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
reg   [63:0] grp_fu_337_p0;
reg   [63:0] grp_fu_337_p1;
wire    ap_block_pp0_stage21;
wire   [9:0] zext_ln68_1_fu_363_p1;
wire   [9:0] grp_fu_373_p0;
wire   [11:0] zext_ln68_fu_359_p1;
wire   [11:0] add_ln70_fu_379_p2;
wire   [2:0] tmp_1_fu_390_p4;
wire   [11:0] zext_ln69_1_fu_408_p1;
wire   [11:0] add_ln70_1_fu_412_p2;
wire   [9:0] add_ln69_8_fu_457_p2;
wire   [9:0] zext_ln69_2_fu_468_p1;
wire   [9:0] add_ln69_9_fu_482_p2;
wire   [11:0] zext_ln69_4_fu_502_p1;
wire   [11:0] add_ln70_2_fu_506_p2;
wire   [11:0] zext_ln69_7_fu_523_p1;
wire   [11:0] add_ln70_3_fu_527_p2;
wire   [9:0] zext_ln69_5_fu_537_p1;
wire   [9:0] add_ln69_10_fu_551_p2;
wire   [11:0] zext_ln69_10_fu_571_p1;
wire   [11:0] add_ln70_4_fu_575_p2;
wire   [11:0] zext_ln68_2_fu_601_p1;
wire   [11:0] add_ln70_5_fu_605_p2;
wire   [0:0] bit_sel1_fu_615_p3;
wire   [0:0] xor_ln68_fu_622_p2;
wire   [2:0] trunc_ln68_2_fu_628_p1;
wire   [9:0] zext_ln69_8_fu_644_p1;
wire   [9:0] add_ln69_11_fu_658_p2;
wire   [11:0] add_ln70_6_fu_670_p2;
wire   [11:0] add_ln70_7_fu_680_p2;
wire    ap_block_pp0_stage4;
wire   [9:0] zext_ln69_11_fu_690_p1;
wire   [9:0] add_ln69_12_fu_704_p2;
wire    ap_block_pp0_stage5;
wire   [9:0] zext_ln68_3_fu_716_p1;
wire   [9:0] add_ln69_13_fu_730_p2;
wire   [9:0] grp_fu_747_p0;
wire    ap_block_pp0_stage7;
wire   [9:0] add_ln69_14_fu_753_p2;
wire   [9:0] grp_fu_769_p0;
wire   [9:0] add_ln69_15_fu_775_p2;
wire   [9:0] grp_fu_373_p2;
wire   [9:0] grp_fu_476_p2;
wire   [9:0] grp_fu_545_p2;
wire   [9:0] grp_fu_652_p2;
wire   [9:0] grp_fu_698_p2;
wire   [9:0] grp_fu_724_p2;
wire   [9:0] grp_fu_747_p2;
wire   [9:0] grp_fu_769_p2;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 64'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_94 = 64'd0;
#0 v24_fu_98 = 4'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_373_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_373_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_1_fu_471_p2),.din1(10'd416),.ce(1'b1),.dout(grp_fu_476_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_2_fu_540_p2),.din1(10'd416),.ce(1'b1),.dout(grp_fu_545_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_3_fu_647_p2),.din1(10'd416),.ce(1'b1),.dout(grp_fu_652_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_4_fu_693_p2),.din1(10'd416),.ce(1'b1),.dout(grp_fu_698_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_5_fu_719_p2),.din1(10'd416),.ce(1'b1),.dout(grp_fu_724_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_747_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_747_p2));
backprop_urem_10ns_10ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 10 ),.dout_WIDTH( 10 ))
urem_10ns_10ns_10_14_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_769_p0),.din1(10'd416),.ce(1'b1),.dout(grp_fu_769_p2));
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
        v24_fu_98 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_595_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v24_fu_98 <= xor_ln_fu_631_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_94 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        v28_fu_94 <= grp_fu_8156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln69_reg_1006 <= add_ln69_fu_367_p2;
        or_ln_reg_1017[3 : 1] <= or_ln_fu_400_p3[3 : 1];
        tmp_2_reg_1027 <= {{ap_sig_allocacmp_v24_1[3:2]}};
        tmp_3_reg_1049 <= ap_sig_allocacmp_v24_1[32'd1];
        tmp_reg_1038 <= ap_sig_allocacmp_v24_1[32'd3];
        trunc_ln68_1_reg_1044 <= trunc_ln68_1_fu_445_p1;
        trunc_ln68_reg_1033 <= trunc_ln68_fu_433_p1;
        v24_1_reg_1000 <= ap_sig_allocacmp_v24_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln68_reg_1134 <= icmp_ln68_fu_595_p2;
        icmp_ln69_2_reg_1104 <= icmp_ln69_2_fu_557_p2;
        or_ln68_3_reg_1119[1 : 0] <= or_ln68_3_fu_563_p4[1 : 0];
or_ln68_3_reg_1119[3] <= or_ln68_3_fu_563_p4[3];
        or_ln68_4_reg_1129[1] <= or_ln68_4_fu_585_p5[1];
or_ln68_4_reg_1129[3] <= or_ln68_4_fu_585_p5[3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln69_1_reg_1069 <= icmp_ln69_1_fu_488_p2;
        icmp_ln69_reg_1054 <= icmp_ln69_fu_462_p2;
        or_ln68_1_reg_1079[0] <= or_ln68_1_fu_494_p4[0];
or_ln68_1_reg_1079[3 : 2] <= or_ln68_1_fu_494_p4[3 : 2];
        or_ln68_2_reg_1089[3 : 2] <= or_ln68_2_fu_516_p3[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln69_3_reg_1148 <= icmp_ln69_3_fu_664_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln69_4_reg_1178 <= icmp_ln69_4_fu_710_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln69_5_reg_1198 <= icmp_ln69_5_fu_736_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln69_6_reg_1208 <= icmp_ln69_6_fu_758_p2;
        icmp_ln69_7_reg_1218 <= icmp_ln69_7_fu_780_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage61_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage61)) | ((1'b0 == ap_block_pp0_stage53_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage53)) | ((1'b0 == ap_block_pp0_stage45_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage45)) | ((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37)) | ((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)))) begin
        reg_341 <= grp_fu_8156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        select_ln69_1_reg_1258 <= select_ln69_1_fu_813_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        select_ln69_2_reg_1283 <= select_ln69_2_fu_834_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        select_ln69_3_reg_1308 <= select_ln69_3_fu_855_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        select_ln69_4_reg_1333 <= select_ln69_4_fu_876_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        select_ln69_5_reg_1358 <= select_ln69_5_fu_897_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        select_ln69_6_reg_1383 <= select_ln69_6_fu_918_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        select_ln69_7_reg_1413 <= select_ln69_7_fu_939_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        select_ln69_reg_1233 <= select_ln69_fu_792_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        v27_1_reg_1423 <= grp_fu_4418_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        v27_2_reg_1438 <= grp_fu_4418_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        v27_3_reg_1443 <= grp_fu_4418_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        v27_4_reg_1448 <= grp_fu_4418_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        v27_5_reg_1453 <= grp_fu_4418_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        v27_6_reg_1458 <= grp_fu_4418_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        v27_7_reg_1463 <= grp_fu_4418_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        v27_reg_1398 <= grp_fu_4418_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v6_load_1_reg_1074 <= v6_q0;
        v6_load_reg_1059 <= v6_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v6_load_2_reg_1109 <= v6_q1;
        v6_load_3_reg_1114 <= v6_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v6_load_4_reg_1153 <= v6_q1;
        v6_load_5_reg_1158 <= v6_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v6_load_6_reg_1183 <= v6_q1;
        v6_load_7_reg_1188 <= v6_q0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage61_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage61) & (icmp_ln68_reg_1134 == 1'd1))) begin
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
        ap_sig_allocacmp_v24_1 = v24_fu_98;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage62) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage62)) | ((1'b0 == ap_block_pp0_stage54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage54)) | ((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_332_p0 = reg_341;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_332_p0 = v28_fu_94;
    end else begin
        grp_fu_332_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_332_p1 = v27_7_reg_1463;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_332_p1 = v27_6_reg_1458;
    end else if (((1'b0 == ap_block_pp0_stage62) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage62))) begin
        grp_fu_332_p1 = v27_5_reg_1453;
    end else if (((1'b0 == ap_block_pp0_stage54) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage54))) begin
        grp_fu_332_p1 = v27_4_reg_1448;
    end else if (((1'b0 == ap_block_pp0_stage46) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46))) begin
        grp_fu_332_p1 = v27_3_reg_1443;
    end else if (((1'b0 == ap_block_pp0_stage38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38))) begin
        grp_fu_332_p1 = v27_2_reg_1438;
    end else if (((1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        grp_fu_332_p1 = v27_1_reg_1423;
    end else if (((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        grp_fu_332_p1 = v27_reg_1398;
    end else begin
        grp_fu_332_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_337_p0 = v25_7_fu_950_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_337_p0 = v25_6_fu_931_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_337_p0 = v25_5_fu_910_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_337_p0 = v25_4_fu_889_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_337_p0 = v25_3_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_337_p0 = v25_2_fu_847_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_337_p0 = v25_1_fu_826_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_337_p0 = v25_fu_805_p1;
        end else begin
            grp_fu_337_p0 = 'bx;
        end
    end else begin
        grp_fu_337_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_337_p1 = v26_7_fu_954_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_337_p1 = v26_6_fu_935_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_337_p1 = v26_5_fu_914_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_337_p1 = v26_4_fu_893_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_337_p1 = v26_3_fu_872_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_337_p1 = v26_2_fu_851_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_337_p1 = v26_1_fu_830_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_337_p1 = v26_fu_809_p1;
        end else begin
            grp_fu_337_p1 = 'bx;
        end
    end else begin
        grp_fu_337_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_0_address0_local = zext_ln69_15_fu_925_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v0_0_address0_local = zext_ln69_14_fu_904_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_0_address0_local = zext_ln69_13_fu_883_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v0_0_address0_local = zext_ln69_12_fu_862_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_0_address0_local = zext_ln69_9_fu_841_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v0_0_address0_local = zext_ln69_6_fu_820_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_0_address0_local = zext_ln69_3_fu_799_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_0_address0_local = zext_ln69_fu_786_p1;
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
            v0_1_address0_local = zext_ln69_15_fu_925_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v0_1_address0_local = zext_ln69_14_fu_904_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_1_address0_local = zext_ln69_13_fu_883_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v0_1_address0_local = zext_ln69_12_fu_862_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_1_address0_local = zext_ln69_9_fu_841_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v0_1_address0_local = zext_ln69_6_fu_820_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_1_address0_local = zext_ln69_3_fu_799_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_1_address0_local = zext_ln69_fu_786_p1;
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
    if (((1'b0 == ap_block_pp0_stage61_11001) & (1'b1 == ap_CS_fsm_pp0_stage61) & (ap_loop_exit_ready == 1'b1) & (icmp_ln68_reg_1134 == 1'd1))) begin
        v29_12_out_ap_vld = 1'b1;
    end else begin
        v29_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v6_address0_local = zext_ln70_7_fu_685_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v6_address0_local = zext_ln70_5_fu_610_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v6_address0_local = zext_ln70_3_fu_532_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v6_address0_local = zext_ln70_1_fu_418_p1;
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
            v6_address1_local = zext_ln70_6_fu_675_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v6_address1_local = zext_ln70_4_fu_580_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v6_address1_local = zext_ln70_2_fu_511_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v6_address1_local = zext_ln70_fu_385_p1;
        end else begin
            v6_address1_local = 'bx;
        end
    end else begin
        v6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v6_ce0_local = 1'b1;
    end else begin
        v6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
assign add_ln69_10_fu_551_p2 = ($signed(add_ln69_2_fu_540_p2) + $signed(10'd608));
assign add_ln69_11_fu_658_p2 = ($signed(add_ln69_3_fu_647_p2) + $signed(10'd608));
assign add_ln69_12_fu_704_p2 = ($signed(add_ln69_4_fu_693_p2) + $signed(10'd608));
assign add_ln69_13_fu_730_p2 = ($signed(add_ln69_5_fu_719_p2) + $signed(10'd608));
assign add_ln69_14_fu_753_p2 = ($signed(phi_mul) + $signed(10'd614));
assign add_ln69_15_fu_775_p2 = ($signed(phi_mul) + $signed(10'd615));
assign add_ln69_1_fu_471_p2 = (zext_ln69_2_fu_468_p1 + phi_mul);
assign add_ln69_2_fu_540_p2 = (zext_ln69_5_fu_537_p1 + phi_mul);
assign add_ln69_3_fu_647_p2 = (zext_ln69_8_fu_644_p1 + phi_mul);
assign add_ln69_4_fu_693_p2 = (zext_ln69_11_fu_690_p1 + phi_mul);
assign add_ln69_5_fu_719_p2 = (zext_ln68_3_fu_716_p1 + phi_mul);
assign add_ln69_8_fu_457_p2 = ($signed(add_ln69_reg_1006) + $signed(10'd608));
assign add_ln69_9_fu_482_p2 = ($signed(add_ln69_1_fu_471_p2) + $signed(10'd608));
assign add_ln69_fu_367_p2 = (zext_ln68_1_fu_363_p1 + phi_mul);
assign add_ln70_1_fu_412_p2 = (zext_ln69_1_fu_408_p1 + phi_mul143);
assign add_ln70_2_fu_506_p2 = (zext_ln69_4_fu_502_p1 + phi_mul143);
assign add_ln70_3_fu_527_p2 = (zext_ln69_7_fu_523_p1 + phi_mul143);
assign add_ln70_4_fu_575_p2 = (zext_ln69_10_fu_571_p1 + phi_mul143);
assign add_ln70_5_fu_605_p2 = (zext_ln68_2_fu_601_p1 + phi_mul143);
assign add_ln70_6_fu_670_p2 = (phi_mul143 + 12'd6);
assign add_ln70_7_fu_680_p2 = (phi_mul143 + 12'd7);
assign add_ln70_fu_379_p2 = (zext_ln68_fu_359_p1 + phi_mul143);
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
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage61;
assign ap_ready = ap_ready_sig;
assign bit_sel1_fu_615_p3 = v24_1_reg_1000[4'd3];
assign grp_fu_373_p0 = (zext_ln68_1_fu_363_p1 + phi_mul);
assign grp_fu_4418_p_ce = 1'b1;
assign grp_fu_4418_p_din0 = grp_fu_337_p0;
assign grp_fu_4418_p_din1 = grp_fu_337_p1;
assign grp_fu_747_p0 = (phi_mul + 10'd6);
assign grp_fu_769_p0 = (phi_mul + 10'd7);
assign grp_fu_8156_p_ce = 1'b1;
assign grp_fu_8156_p_din0 = grp_fu_332_p0;
assign grp_fu_8156_p_din1 = grp_fu_332_p1;
assign grp_fu_8156_p_opcode = 2'd0;
assign icmp_ln68_fu_595_p2 = ((or_ln68_4_fu_585_p5 == 4'd13) ? 1'b1 : 1'b0);
assign icmp_ln69_1_fu_488_p2 = ((add_ln69_9_fu_482_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_2_fu_557_p2 = ((add_ln69_10_fu_551_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_3_fu_664_p2 = ((add_ln69_11_fu_658_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_4_fu_710_p2 = ((add_ln69_12_fu_704_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_5_fu_736_p2 = ((add_ln69_13_fu_730_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_6_fu_758_p2 = ((add_ln69_14_fu_753_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_7_fu_780_p2 = ((add_ln69_15_fu_775_p2 < 10'd416) ? 1'b1 : 1'b0);
assign icmp_ln69_fu_462_p2 = ((add_ln69_8_fu_457_p2 < 10'd416) ? 1'b1 : 1'b0);
assign or_ln68_1_fu_494_p4 = {{{tmp_2_reg_1027}, {1'd1}}, {trunc_ln68_reg_1033}};
assign or_ln68_2_fu_516_p3 = {{tmp_2_reg_1027}, {2'd3}};
assign or_ln68_3_fu_563_p4 = {{{tmp_reg_1038}, {1'd1}}, {trunc_ln68_1_reg_1044}};
assign or_ln68_4_fu_585_p5 = {{{{tmp_reg_1038}, {1'd1}}, {tmp_3_reg_1049}}, {1'd1}};
assign or_ln_fu_400_p3 = {{tmp_1_fu_390_p4}, {1'd1}};
assign select_ln69_1_fu_813_p3 = ((icmp_ln69_1_reg_1069[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_2_fu_834_p3 = ((icmp_ln69_2_reg_1104[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_3_fu_855_p3 = ((icmp_ln69_3_reg_1148[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_4_fu_876_p3 = ((icmp_ln69_4_reg_1178[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_5_fu_897_p3 = ((icmp_ln69_5_reg_1198[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_6_fu_918_p3 = ((icmp_ln69_6_reg_1208[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_7_fu_939_p3 = ((icmp_ln69_7_reg_1218[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln69_fu_792_p3 = ((icmp_ln69_reg_1054[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign tmp_1_fu_390_p4 = {{ap_sig_allocacmp_v24_1[3:1]}};
assign trunc_ln68_1_fu_445_p1 = ap_sig_allocacmp_v24_1[1:0];
assign trunc_ln68_2_fu_628_p1 = v24_1_reg_1000[2:0];
assign trunc_ln68_fu_433_p1 = ap_sig_allocacmp_v24_1[0:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v25_1_fu_826_p1 = select_ln69_1_reg_1258;
assign v25_2_fu_847_p1 = select_ln69_2_reg_1283;
assign v25_3_fu_868_p1 = select_ln69_3_reg_1308;
assign v25_4_fu_889_p1 = select_ln69_4_reg_1333;
assign v25_5_fu_910_p1 = select_ln69_5_reg_1358;
assign v25_6_fu_931_p1 = select_ln69_6_reg_1383;
assign v25_7_fu_950_p1 = select_ln69_7_reg_1413;
assign v25_fu_805_p1 = select_ln69_reg_1233;
assign v26_1_fu_830_p1 = v6_load_1_reg_1074;
assign v26_2_fu_851_p1 = v6_load_2_reg_1109;
assign v26_3_fu_872_p1 = v6_load_3_reg_1114;
assign v26_4_fu_893_p1 = v6_load_4_reg_1153;
assign v26_5_fu_914_p1 = v6_load_5_reg_1158;
assign v26_6_fu_935_p1 = v6_load_6_reg_1183;
assign v26_7_fu_954_p1 = v6_load_7_reg_1188;
assign v26_fu_809_p1 = v6_load_reg_1059;
assign v29_12_out = grp_fu_8156_p_dout0;
assign v6_address0 = v6_address0_local;
assign v6_address1 = v6_address1_local;
assign v6_ce0 = v6_ce0_local;
assign v6_ce1 = v6_ce1_local;
assign xor_ln68_fu_622_p2 = (bit_sel1_fu_615_p3 ^ 1'd1);
assign xor_ln_fu_631_p3 = {{xor_ln68_fu_622_p2}, {trunc_ln68_2_fu_628_p1}};
assign zext_ln68_1_fu_363_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln68_2_fu_601_p1 = or_ln68_4_fu_585_p5;
assign zext_ln68_3_fu_716_p1 = or_ln68_4_reg_1129;
assign zext_ln68_fu_359_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_10_fu_571_p1 = or_ln68_3_fu_563_p4;
assign zext_ln69_11_fu_690_p1 = or_ln68_3_reg_1119;
assign zext_ln69_12_fu_862_p1 = grp_fu_698_p2;
assign zext_ln69_13_fu_883_p1 = grp_fu_724_p2;
assign zext_ln69_14_fu_904_p1 = grp_fu_747_p2;
assign zext_ln69_15_fu_925_p1 = grp_fu_769_p2;
assign zext_ln69_1_fu_408_p1 = or_ln_fu_400_p3;
assign zext_ln69_2_fu_468_p1 = or_ln_reg_1017;
assign zext_ln69_3_fu_799_p1 = grp_fu_476_p2;
assign zext_ln69_4_fu_502_p1 = or_ln68_1_fu_494_p4;
assign zext_ln69_5_fu_537_p1 = or_ln68_1_reg_1079;
assign zext_ln69_6_fu_820_p1 = grp_fu_545_p2;
assign zext_ln69_7_fu_523_p1 = or_ln68_2_fu_516_p3;
assign zext_ln69_8_fu_644_p1 = or_ln68_2_reg_1089;
assign zext_ln69_9_fu_841_p1 = grp_fu_652_p2;
assign zext_ln69_fu_786_p1 = grp_fu_373_p2;
assign zext_ln70_1_fu_418_p1 = add_ln70_1_fu_412_p2;
assign zext_ln70_2_fu_511_p1 = add_ln70_2_fu_506_p2;
assign zext_ln70_3_fu_532_p1 = add_ln70_3_fu_527_p2;
assign zext_ln70_4_fu_580_p1 = add_ln70_4_fu_575_p2;
assign zext_ln70_5_fu_610_p1 = add_ln70_5_fu_605_p2;
assign zext_ln70_6_fu_675_p1 = add_ln70_6_fu_670_p2;
assign zext_ln70_7_fu_685_p1 = add_ln70_7_fu_680_p2;
assign zext_ln70_fu_385_p1 = add_ln70_fu_379_p2;
always @ (posedge ap_clk) begin
    or_ln_reg_1017[0] <= 1'b1;
    or_ln68_1_reg_1079[1] <= 1'b1;
    or_ln68_2_reg_1089[1:0] <= 2'b11;
    or_ln68_3_reg_1119[2] <= 1'b1;
    or_ln68_4_reg_1129[0] <= 1'b1;
    or_ln68_4_reg_1129[2] <= 1'b1;
end
endmodule 
