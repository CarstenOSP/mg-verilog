
module spmv_spmv_Pipeline_spmv_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sext_ln16,sext_ln16_1,val_0_address0,val_0_ce0,val_0_q0,val_0_address1,val_0_ce1,val_0_q1,val_1_address0,val_1_ce0,val_1_q0,val_1_address1,val_1_ce1,val_1_q1,cols_address0,cols_ce0,cols_q0,cols_address1,cols_ce1,cols_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,tmp_end,sum_out,sum_out_ap_vld,sum_7_out,sum_7_out_ap_vld,sum_6_out,sum_6_out_ap_vld,sum_5_out,sum_5_out_ap_vld,sum_4_out,sum_4_out_ap_vld,sum_3_out,sum_3_out_ap_vld,sum_2_out,sum_2_out_ap_vld,sum_1_out,sum_1_out_ap_vld,ap_return);  
parameter    ap_ST_fsm_state1 = 74'd1;
parameter    ap_ST_fsm_pp0_stage0 = 74'd2;
parameter    ap_ST_fsm_pp0_stage1 = 74'd4;
parameter    ap_ST_fsm_pp0_stage2 = 74'd8;
parameter    ap_ST_fsm_pp0_stage3 = 74'd16;
parameter    ap_ST_fsm_pp0_stage4 = 74'd32;
parameter    ap_ST_fsm_pp0_stage5 = 74'd64;
parameter    ap_ST_fsm_pp0_stage6 = 74'd128;
parameter    ap_ST_fsm_pp0_stage7 = 74'd256;
parameter    ap_ST_fsm_pp0_stage8 = 74'd512;
parameter    ap_ST_fsm_pp0_stage9 = 74'd1024;
parameter    ap_ST_fsm_pp0_stage10 = 74'd2048;
parameter    ap_ST_fsm_pp0_stage11 = 74'd4096;
parameter    ap_ST_fsm_pp0_stage12 = 74'd8192;
parameter    ap_ST_fsm_pp0_stage13 = 74'd16384;
parameter    ap_ST_fsm_pp0_stage14 = 74'd32768;
parameter    ap_ST_fsm_pp0_stage15 = 74'd65536;
parameter    ap_ST_fsm_pp0_stage16 = 74'd131072;
parameter    ap_ST_fsm_pp0_stage17 = 74'd262144;
parameter    ap_ST_fsm_pp0_stage18 = 74'd524288;
parameter    ap_ST_fsm_pp0_stage19 = 74'd1048576;
parameter    ap_ST_fsm_pp0_stage20 = 74'd2097152;
parameter    ap_ST_fsm_pp0_stage21 = 74'd4194304;
parameter    ap_ST_fsm_pp0_stage22 = 74'd8388608;
parameter    ap_ST_fsm_pp0_stage23 = 74'd16777216;
parameter    ap_ST_fsm_pp0_stage24 = 74'd33554432;
parameter    ap_ST_fsm_pp0_stage25 = 74'd67108864;
parameter    ap_ST_fsm_pp0_stage26 = 74'd134217728;
parameter    ap_ST_fsm_pp0_stage27 = 74'd268435456;
parameter    ap_ST_fsm_pp0_stage28 = 74'd536870912;
parameter    ap_ST_fsm_pp0_stage29 = 74'd1073741824;
parameter    ap_ST_fsm_pp0_stage30 = 74'd2147483648;
parameter    ap_ST_fsm_pp0_stage31 = 74'd4294967296;
parameter    ap_ST_fsm_pp0_stage32 = 74'd8589934592;
parameter    ap_ST_fsm_pp0_stage33 = 74'd17179869184;
parameter    ap_ST_fsm_pp0_stage34 = 74'd34359738368;
parameter    ap_ST_fsm_pp0_stage35 = 74'd68719476736;
parameter    ap_ST_fsm_pp0_stage36 = 74'd137438953472;
parameter    ap_ST_fsm_pp0_stage37 = 74'd274877906944;
parameter    ap_ST_fsm_pp0_stage38 = 74'd549755813888;
parameter    ap_ST_fsm_pp0_stage39 = 74'd1099511627776;
parameter    ap_ST_fsm_pp0_stage40 = 74'd2199023255552;
parameter    ap_ST_fsm_pp0_stage41 = 74'd4398046511104;
parameter    ap_ST_fsm_pp0_stage42 = 74'd8796093022208;
parameter    ap_ST_fsm_pp0_stage43 = 74'd17592186044416;
parameter    ap_ST_fsm_pp0_stage44 = 74'd35184372088832;
parameter    ap_ST_fsm_pp0_stage45 = 74'd70368744177664;
parameter    ap_ST_fsm_pp0_stage46 = 74'd140737488355328;
parameter    ap_ST_fsm_pp0_stage47 = 74'd281474976710656;
parameter    ap_ST_fsm_pp0_stage48 = 74'd562949953421312;
parameter    ap_ST_fsm_pp0_stage49 = 74'd1125899906842624;
parameter    ap_ST_fsm_pp0_stage50 = 74'd2251799813685248;
parameter    ap_ST_fsm_pp0_stage51 = 74'd4503599627370496;
parameter    ap_ST_fsm_pp0_stage52 = 74'd9007199254740992;
parameter    ap_ST_fsm_pp0_stage53 = 74'd18014398509481984;
parameter    ap_ST_fsm_pp0_stage54 = 74'd36028797018963968;
parameter    ap_ST_fsm_pp0_stage55 = 74'd72057594037927936;
parameter    ap_ST_fsm_pp0_stage56 = 74'd144115188075855872;
parameter    ap_ST_fsm_pp0_stage57 = 74'd288230376151711744;
parameter    ap_ST_fsm_pp0_stage58 = 74'd576460752303423488;
parameter    ap_ST_fsm_pp0_stage59 = 74'd1152921504606846976;
parameter    ap_ST_fsm_pp0_stage60 = 74'd2305843009213693952;
parameter    ap_ST_fsm_pp0_stage61 = 74'd4611686018427387904;
parameter    ap_ST_fsm_pp0_stage62 = 74'd9223372036854775808;
parameter    ap_ST_fsm_pp0_stage63 = 74'd18446744073709551616;
parameter    ap_ST_fsm_state76 = 74'd36893488147419103232;
parameter    ap_ST_fsm_state77 = 74'd73786976294838206464;
parameter    ap_ST_fsm_state78 = 74'd147573952589676412928;
parameter    ap_ST_fsm_state79 = 74'd295147905179352825856;
parameter    ap_ST_fsm_state80 = 74'd590295810358705651712;
parameter    ap_ST_fsm_state81 = 74'd1180591620717411303424;
parameter    ap_ST_fsm_state82 = 74'd2361183241434822606848;
parameter    ap_ST_fsm_state83 = 74'd4722366482869645213696;
parameter    ap_ST_fsm_state84 = 74'd9444732965739290427392;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sext_ln16;
input  [31:0] sext_ln16_1;
output  [9:0] val_0_address0;
output   val_0_ce0;
input  [63:0] val_0_q0;
output  [9:0] val_0_address1;
output   val_0_ce1;
input  [63:0] val_0_q1;
output  [9:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [9:0] val_1_address1;
output   val_1_ce1;
input  [63:0] val_1_q1;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [10:0] cols_address1;
output   cols_ce1;
input  [31:0] cols_q1;
output  [7:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [7:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [7:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [7:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
input  [31:0] tmp_end;
output  [63:0] sum_out;
output   sum_out_ap_vld;
output  [63:0] sum_7_out;
output   sum_7_out_ap_vld;
output  [63:0] sum_6_out;
output   sum_6_out_ap_vld;
output  [63:0] sum_5_out;
output   sum_5_out_ap_vld;
output  [63:0] sum_4_out;
output   sum_4_out_ap_vld;
output  [63:0] sum_3_out;
output   sum_3_out_ap_vld;
output  [63:0] sum_2_out;
output   sum_2_out_ap_vld;
output  [63:0] sum_1_out;
output   sum_1_out_ap_vld;
output  [2:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] sum_out;
reg sum_out_ap_vld;
reg sum_7_out_ap_vld;
reg sum_6_out_ap_vld;
reg sum_5_out_ap_vld;
reg sum_4_out_ap_vld;
reg sum_3_out_ap_vld;
reg sum_2_out_ap_vld;
reg sum_1_out_ap_vld;
reg[2:0] ap_return;
(* fsm_encoding = "none" *) reg   [73:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_fu_600_p3;
reg   [63:0] reg_628;
wire    ap_CS_fsm_pp0_stage2;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire  signed [32:0] sext_ln16_1_cast_fu_632_p1;
reg  signed [32:0] sext_ln16_1_cast_reg_1166;
reg   [32:0] j_1_reg_1177;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln16_fu_653_p2;
reg   [0:0] icmp_ln16_reg_1190;
reg   [0:0] icmp_ln16_reg_1190_pp0_iter1_reg;
wire   [0:0] trunc_ln16_1_fu_682_p1;
reg   [0:0] trunc_ln16_1_reg_1209;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] select_ln17_fu_685_p3;
reg   [63:0] select_ln17_reg_1217;
wire   [0:0] trunc_ln17_fu_693_p1;
reg   [0:0] trunc_ln17_reg_1222;
wire   [0:0] icmp_ln16_1_fu_730_p2;
reg   [0:0] icmp_ln16_1_reg_1237;
reg   [0:0] icmp_ln16_1_reg_1237_pp0_iter1_reg;
wire   [0:0] icmp_ln16_2_fu_761_p2;
reg   [0:0] icmp_ln16_2_reg_1256;
reg   [0:0] icmp_ln16_2_reg_1256_pp0_iter1_reg;
wire   [63:0] select_ln17_1_fu_766_p3;
reg   [63:0] select_ln17_1_reg_1275;
wire   [0:0] trunc_ln17_1_fu_773_p1;
reg   [0:0] trunc_ln17_1_reg_1280;
wire   [63:0] grp_fu_617_p3;
reg   [63:0] select_ln17_4_reg_1295;
wire   [0:0] trunc_ln17_2_fu_783_p1;
reg   [0:0] trunc_ln17_2_reg_1300;
wire   [0:0] icmp_ln16_3_fu_819_p2;
reg   [0:0] icmp_ln16_3_reg_1315;
reg   [0:0] icmp_ln16_3_reg_1315_pp0_iter1_reg;
wire   [0:0] icmp_ln16_4_fu_850_p2;
reg   [0:0] icmp_ln16_4_reg_1334;
reg   [0:0] icmp_ln16_4_reg_1334_pp0_iter1_reg;
wire   [63:0] bitcast_ln17_fu_855_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln17_1_fu_859_p1;
wire   [63:0] select_ln17_3_fu_863_p3;
reg   [63:0] select_ln17_3_reg_1363;
wire   [63:0] select_ln17_5_fu_870_p3;
reg   [63:0] select_ln17_5_reg_1368;
reg   [63:0] select_ln17_6_reg_1373;
wire   [0:0] trunc_ln17_3_fu_877_p1;
reg   [0:0] trunc_ln17_3_reg_1378;
wire   [63:0] select_ln17_8_fu_887_p3;
reg   [63:0] select_ln17_8_reg_1393;
wire   [0:0] trunc_ln17_4_fu_894_p1;
reg   [0:0] trunc_ln17_4_reg_1398;
wire   [0:0] icmp_ln16_5_fu_930_p2;
reg   [0:0] icmp_ln16_5_reg_1413;
reg   [0:0] icmp_ln16_5_reg_1413_pp0_iter1_reg;
wire   [0:0] icmp_ln16_6_fu_961_p2;
reg   [0:0] icmp_ln16_6_reg_1432;
reg   [0:0] icmp_ln16_6_reg_1432_pp0_iter1_reg;
wire   [63:0] bitcast_ln17_2_fu_966_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln17_3_fu_971_p1;
wire   [63:0] select_ln17_7_fu_975_p3;
reg   [63:0] select_ln17_7_reg_1461;
wire   [63:0] select_ln17_9_fu_982_p3;
reg   [63:0] select_ln17_9_reg_1466;
wire   [63:0] select_ln17_10_fu_989_p3;
reg   [63:0] select_ln17_10_reg_1471;
wire   [0:0] trunc_ln17_5_fu_996_p1;
reg   [0:0] trunc_ln17_5_reg_1476;
reg   [63:0] select_ln17_12_reg_1491;
wire   [0:0] trunc_ln17_6_fu_1006_p1;
reg   [0:0] trunc_ln17_6_reg_1496;
wire   [0:0] icmp_ln16_7_fu_1042_p2;
reg   [0:0] icmp_ln16_7_reg_1511;
reg   [0:0] icmp_ln16_7_reg_1511_pp0_iter1_reg;
wire   [63:0] bitcast_ln17_4_fu_1047_p1;
wire   [63:0] bitcast_ln17_5_fu_1051_p1;
wire   [63:0] select_ln17_11_fu_1055_p3;
reg   [63:0] select_ln17_11_reg_1540;
wire   [63:0] select_ln17_13_fu_1062_p3;
reg   [63:0] select_ln17_13_reg_1545;
wire   [0:0] trunc_ln17_7_fu_1069_p1;
reg   [0:0] trunc_ln17_7_reg_1550;
wire   [63:0] bitcast_ln17_6_fu_1079_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln17_7_fu_1083_p1;
wire   [63:0] select_ln17_15_fu_1087_p3;
reg   [63:0] select_ln17_15_reg_1575;
wire   [63:0] bitcast_ln17_8_fu_1094_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln17_9_fu_1098_p1;
wire   [63:0] bitcast_ln17_10_fu_1102_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln17_11_fu_1106_p1;
wire   [63:0] grp_fu_586_p2;
reg   [63:0] Si_reg_1600;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] bitcast_ln17_12_fu_1110_p1;
wire   [63:0] bitcast_ln17_13_fu_1114_p1;
reg   [63:0] sum_load_reg_1615;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] Si_1_reg_1621;
wire   [63:0] bitcast_ln17_14_fu_1122_p1;
wire   [63:0] bitcast_ln17_15_fu_1127_p1;
reg   [63:0] Si_2_reg_1636;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] Si_3_reg_1641;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] Si_4_reg_1646;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] Si_5_reg_1651;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] Si_6_reg_1656;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] Si_7_reg_1661;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [63:0] grp_fu_582_p2;
reg   [63:0] sum_1_reg_1666;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] sum_2_reg_1672;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] sum_3_reg_1678;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
reg   [63:0] sum_4_reg_1684;
wire    ap_CS_fsm_pp0_stage41;
wire    ap_block_pp0_stage41_11001;
reg   [63:0] sum_5_reg_1690;
wire    ap_CS_fsm_pp0_stage49;
wire    ap_block_pp0_stage49_11001;
reg   [63:0] sum_6_reg_1696;
wire    ap_CS_fsm_pp0_stage57;
wire    ap_block_pp0_stage57_11001;
reg   [63:0] sum_7_reg_1702;
reg    ap_enable_reg_pp0_iter1;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
reg    ap_predicate_tran67to76_state65;
reg    ap_predicate_tran67to77_state65;
reg    ap_predicate_tran67to78_state65;
reg    ap_predicate_tran67to79_state65;
reg    ap_predicate_tran67to80_state65;
reg    ap_predicate_tran67to81_state65;
reg    ap_predicate_tran67to82_state65;
reg    ap_condition_pp0_flush_enable;
wire    ap_block_pp0_stage1_subdone;
reg   [2:0] UnifiedRetVal_reg_545;
wire    ap_CS_fsm_state83;
wire    ap_CS_fsm_state76;
wire    ap_CS_fsm_state77;
wire    ap_CS_fsm_state78;
wire    ap_CS_fsm_state79;
wire    ap_CS_fsm_state80;
wire    ap_CS_fsm_state81;
wire    ap_CS_fsm_state82;
wire   [63:0] zext_ln9_fu_673_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16_fu_658_p1;
wire   [63:0] zext_ln17_fu_697_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln10_1_fu_724_p1;
wire   [63:0] zext_ln10_fu_709_p1;
wire   [63:0] zext_ln10_3_fu_755_p1;
wire   [63:0] zext_ln10_2_fu_740_p1;
wire   [63:0] zext_ln17_1_fu_777_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln17_2_fu_787_p1;
wire   [63:0] zext_ln10_5_fu_813_p1;
wire   [63:0] zext_ln10_4_fu_798_p1;
wire   [63:0] zext_ln10_7_fu_844_p1;
wire   [63:0] zext_ln10_6_fu_829_p1;
wire   [63:0] zext_ln17_3_fu_881_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln17_4_fu_898_p1;
wire   [63:0] zext_ln10_9_fu_924_p1;
wire   [63:0] zext_ln10_8_fu_909_p1;
wire   [63:0] zext_ln10_11_fu_955_p1;
wire   [63:0] zext_ln10_10_fu_940_p1;
wire   [63:0] zext_ln17_5_fu_1000_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln17_6_fu_1010_p1;
wire   [63:0] zext_ln10_13_fu_1036_p1;
wire   [63:0] zext_ln10_12_fu_1021_p1;
wire   [63:0] zext_ln17_7_fu_1073_p1;
wire    ap_block_pp0_stage5;
reg   [63:0] sum_fu_98;
reg    ap_predicate_pred858_state75;
wire    ap_block_pp0_stage10;
reg   [32:0] j_fu_102;
wire   [32:0] add_ln16_6_fu_1131_p2;
wire  signed [32:0] sext_ln16_cast_fu_636_p1;
reg    ap_predicate_pred838_state12;
reg    val_0_ce0_local;
reg   [9:0] val_0_address0_local;
reg    val_0_ce1_local;
reg   [9:0] val_0_address1_local;
reg    val_1_ce0_local;
reg   [9:0] val_1_address0_local;
reg    val_1_ce1_local;
reg   [9:0] val_1_address1_local;
reg    cols_ce0_local;
reg   [10:0] cols_address0_local;
reg    cols_ce1_local;
reg   [10:0] cols_address1_local;
reg    vec_0_ce0_local;
reg   [7:0] vec_0_address0_local;
reg    vec_0_ce1_local;
reg   [7:0] vec_0_address1_local;
reg    vec_1_ce0_local;
reg   [7:0] vec_1_address0_local;
reg    vec_1_ce1_local;
reg   [7:0] vec_1_address1_local;
reg   [63:0] grp_fu_582_p0;
reg   [63:0] grp_fu_582_p1;
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
reg   [63:0] grp_fu_586_p0;
reg   [63:0] grp_fu_586_p1;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire   [9:0] lshr_ln9_1_fu_663_p4;
wire   [7:0] grp_fu_590_p4;
wire   [31:0] trunc_ln16_fu_679_p1;
wire   [31:0] add_ln10_fu_703_p2;
wire   [9:0] lshr_ln2_fu_714_p4;
wire   [32:0] add_ln16_fu_735_p2;
wire   [9:0] lshr_ln10_1_fu_745_p4;
wire   [7:0] grp_fu_607_p4;
wire   [32:0] add_ln16_1_fu_793_p2;
wire   [9:0] lshr_ln10_2_fu_803_p4;
wire   [32:0] add_ln16_2_fu_824_p2;
wire   [9:0] lshr_ln10_3_fu_834_p4;
wire   [32:0] add_ln16_3_fu_904_p2;
wire   [9:0] lshr_ln10_4_fu_914_p4;
wire   [32:0] add_ln16_4_fu_935_p2;
wire   [9:0] lshr_ln10_5_fu_945_p4;
wire   [32:0] add_ln16_5_fu_1016_p2;
wire   [9:0] lshr_ln10_6_fu_1026_p4;
reg   [2:0] ap_return_preg;
wire    ap_CS_fsm_state84;
reg   [73:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state76_blk;
wire    ap_ST_fsm_state77_blk;
wire    ap_ST_fsm_state78_blk;
wire    ap_ST_fsm_state79_blk;
wire    ap_ST_fsm_state80_blk;
wire    ap_ST_fsm_state81_blk;
wire    ap_ST_fsm_state82_blk;
wire    ap_ST_fsm_state83_blk;
wire    ap_ST_fsm_state84_blk;
wire    ap_block_pp0_stage0_subdone;
reg   [7:0] ap_exit_tran_regpp0;
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
wire    ap_block_pp0_stage61_subdone;
wire    ap_block_pp0_stage62_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_1696;
reg    ap_condition_1706;
reg    ap_condition_1713;
reg    ap_condition_1721;
reg    ap_condition_1726;
reg    ap_condition_1731;
reg    ap_condition_1736;
reg    ap_condition_1741;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 74'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 sum_fu_98 = 64'd0;
#0 j_fu_102 = 33'd0;
#0 ap_return_preg = 3'd0;
end
spmv_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_582_p0),.din1(grp_fu_582_p1),.ce(1'b1),.dout(grp_fu_582_p2));
spmv_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_586_p0),.din1(grp_fu_586_p1),.ce(1'b1),.dout(grp_fu_586_p2));
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
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
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
        if ((((1'b1 == ap_CS_fsm_pp0_stage63) & (1'b0 == ap_block_pp0_stage63_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)))) begin
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
        if ((1'b1 == ap_CS_fsm_state84)) begin
            ap_return_preg <= UnifiedRetVal_reg_545;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state82)) begin
        UnifiedRetVal_reg_545 <= 3'd7;
    end else if ((1'b1 == ap_CS_fsm_state81)) begin
        UnifiedRetVal_reg_545 <= 3'd6;
    end else if ((1'b1 == ap_CS_fsm_state80)) begin
        UnifiedRetVal_reg_545 <= 3'd5;
    end else if ((1'b1 == ap_CS_fsm_state79)) begin
        UnifiedRetVal_reg_545 <= 3'd4;
    end else if ((1'b1 == ap_CS_fsm_state78)) begin
        UnifiedRetVal_reg_545 <= 3'd3;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        UnifiedRetVal_reg_545 <= 3'd2;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        UnifiedRetVal_reg_545 <= 3'd1;
    end else if ((1'b1 == ap_CS_fsm_state83)) begin
        UnifiedRetVal_reg_545 <= 3'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage63_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((icmp_ln16_reg_1190 == 1'd0)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b1;
            ap_exit_tran_regpp0[2] <= 1'b1;
        end else if ((ap_predicate_tran67to82_state65 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b1;
            ap_exit_tran_regpp0[2] <= 1'b1;
        end else if ((ap_predicate_tran67to81_state65 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b0;
            ap_exit_tran_regpp0[2] <= 1'b1;
        end else if ((ap_predicate_tran67to80_state65 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b0;
            ap_exit_tran_regpp0[2] <= 1'b1;
        end else if ((ap_predicate_tran67to79_state65 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b1;
            ap_exit_tran_regpp0[2] <= 1'b0;
        end else if ((ap_predicate_tran67to78_state65 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b1;
            ap_exit_tran_regpp0[2] <= 1'b0;
        end else if ((ap_predicate_tran67to77_state65 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
            ap_exit_tran_regpp0[1] <= 1'b0;
            ap_exit_tran_regpp0[2] <= 1'b0;
        end else if ((ap_predicate_tran67to76_state65 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
            ap_exit_tran_regpp0[1] <= 1'b0;
            ap_exit_tran_regpp0[2] <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_fu_102 <= sext_ln16_cast_fu_636_p1;
    end else if (((ap_predicate_pred838_state12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        j_fu_102 <= add_ln16_6_fu_1131_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_fu_98 <= 64'd0;
    end else if (((ap_predicate_pred858_state75 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001))) begin
        sum_fu_98 <= grp_fu_582_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        Si_1_reg_1621 <= grp_fu_586_p2;
        sum_load_reg_1615 <= sum_fu_98;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        Si_2_reg_1636 <= grp_fu_586_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        Si_3_reg_1641 <= grp_fu_586_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        Si_4_reg_1646 <= grp_fu_586_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        Si_5_reg_1651 <= grp_fu_586_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        Si_6_reg_1656 <= grp_fu_586_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        Si_7_reg_1661 <= grp_fu_586_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        Si_reg_1600 <= grp_fu_586_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001))) begin
        ap_predicate_pred838_state12 <= ((icmp_ln16_7_reg_1511 == 1'd1) & (icmp_ln16_6_reg_1432 == 1'd1) & (icmp_ln16_5_reg_1413 == 1'd1) & (icmp_ln16_4_reg_1334 == 1'd1) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        ap_predicate_pred858_state75 <= ((icmp_ln16_7_reg_1511_pp0_iter1_reg == 1'd1) & (icmp_ln16_6_reg_1432_pp0_iter1_reg == 1'd1) & (icmp_ln16_5_reg_1413_pp0_iter1_reg == 1'd1) & (icmp_ln16_4_reg_1334_pp0_iter1_reg == 1'd1) & (icmp_ln16_3_reg_1315_pp0_iter1_reg == 1'd1) & (icmp_ln16_2_reg_1256_pp0_iter1_reg == 1'd1) & (icmp_ln16_1_reg_1237_pp0_iter1_reg == 1'd1) & (icmp_ln16_reg_1190_pp0_iter1_reg == 1'd1));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        icmp_ln16_1_reg_1237 <= icmp_ln16_1_fu_730_p2;
        icmp_ln16_1_reg_1237_pp0_iter1_reg <= icmp_ln16_1_reg_1237;
        icmp_ln16_2_reg_1256 <= icmp_ln16_2_fu_761_p2;
        icmp_ln16_2_reg_1256_pp0_iter1_reg <= icmp_ln16_2_reg_1256;
        select_ln17_reg_1217 <= select_ln17_fu_685_p3;
        trunc_ln16_1_reg_1209 <= trunc_ln16_1_fu_682_p1;
        trunc_ln17_reg_1222 <= trunc_ln17_fu_693_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        icmp_ln16_3_reg_1315 <= icmp_ln16_3_fu_819_p2;
        icmp_ln16_3_reg_1315_pp0_iter1_reg <= icmp_ln16_3_reg_1315;
        icmp_ln16_4_reg_1334 <= icmp_ln16_4_fu_850_p2;
        icmp_ln16_4_reg_1334_pp0_iter1_reg <= icmp_ln16_4_reg_1334;
        select_ln17_1_reg_1275 <= select_ln17_1_fu_766_p3;
        trunc_ln17_1_reg_1280 <= trunc_ln17_1_fu_773_p1;
        trunc_ln17_2_reg_1300 <= trunc_ln17_2_fu_783_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        icmp_ln16_5_reg_1413 <= icmp_ln16_5_fu_930_p2;
        icmp_ln16_5_reg_1413_pp0_iter1_reg <= icmp_ln16_5_reg_1413;
        icmp_ln16_6_reg_1432 <= icmp_ln16_6_fu_961_p2;
        icmp_ln16_6_reg_1432_pp0_iter1_reg <= icmp_ln16_6_reg_1432;
        select_ln17_3_reg_1363 <= select_ln17_3_fu_863_p3;
        select_ln17_5_reg_1368 <= select_ln17_5_fu_870_p3;
        select_ln17_8_reg_1393 <= select_ln17_8_fu_887_p3;
        trunc_ln17_3_reg_1378 <= trunc_ln17_3_fu_877_p1;
        trunc_ln17_4_reg_1398 <= trunc_ln17_4_fu_894_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        icmp_ln16_7_reg_1511 <= icmp_ln16_7_fu_1042_p2;
        icmp_ln16_7_reg_1511_pp0_iter1_reg <= icmp_ln16_7_reg_1511;
        select_ln17_10_reg_1471 <= select_ln17_10_fu_989_p3;
        select_ln17_7_reg_1461 <= select_ln17_7_fu_975_p3;
        select_ln17_9_reg_1466 <= select_ln17_9_fu_982_p3;
        trunc_ln17_5_reg_1476 <= trunc_ln17_5_fu_996_p1;
        trunc_ln17_6_reg_1496 <= trunc_ln17_6_fu_1006_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln16_reg_1190 <= icmp_ln16_fu_653_p2;
        icmp_ln16_reg_1190_pp0_iter1_reg <= icmp_ln16_reg_1190;
        j_1_reg_1177 <= j_fu_102;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_628 <= grp_fu_600_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        select_ln17_11_reg_1540 <= select_ln17_11_fu_1055_p3;
        select_ln17_13_reg_1545 <= select_ln17_13_fu_1062_p3;
        trunc_ln17_7_reg_1550 <= trunc_ln17_7_fu_1069_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        select_ln17_12_reg_1491 <= grp_fu_617_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        select_ln17_15_reg_1575 <= select_ln17_15_fu_1087_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        select_ln17_4_reg_1295 <= grp_fu_617_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        select_ln17_6_reg_1373 <= grp_fu_600_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sext_ln16_1_cast_reg_1166 <= sext_ln16_1_cast_fu_632_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        sum_1_reg_1666 <= grp_fu_582_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        sum_2_reg_1672 <= grp_fu_582_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage33) & (1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        sum_3_reg_1678 <= grp_fu_582_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage41) & (1'b0 == ap_block_pp0_stage41_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        sum_4_reg_1684 <= grp_fu_582_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage49) & (1'b0 == ap_block_pp0_stage49_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        sum_5_reg_1690 <= grp_fu_582_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage57) & (1'b0 == ap_block_pp0_stage57_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        sum_6_reg_1696 <= grp_fu_582_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        sum_7_reg_1702 <= grp_fu_582_p2;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state76_blk = 1'b0;
assign ap_ST_fsm_state77_blk = 1'b0;
assign ap_ST_fsm_state78_blk = 1'b0;
assign ap_ST_fsm_state79_blk = 1'b0;
assign ap_ST_fsm_state80_blk = 1'b0;
assign ap_ST_fsm_state81_blk = 1'b0;
assign ap_ST_fsm_state82_blk = 1'b0;
assign ap_ST_fsm_state83_blk = 1'b0;
assign ap_ST_fsm_state84_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage63) & (1'b0 == ap_block_pp0_stage63_subdone) & ((ap_predicate_tran67to82_state65 == 1'b1) | (ap_predicate_tran67to81_state65 == 1'b1) | (ap_predicate_tran67to80_state65 == 1'b1) | (ap_predicate_tran67to79_state65 == 1'b1) | (ap_predicate_tran67to78_state65 == 1'b1) | (ap_predicate_tran67to77_state65 == 1'b1) | (ap_predicate_tran67to76_state65 == 1'b1) | (icmp_ln16_reg_1190 == 1'd0)))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state84) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state84)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state84)) begin
        ap_return = UnifiedRetVal_reg_545;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            cols_address0_local = zext_ln10_8_fu_909_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            cols_address0_local = zext_ln10_4_fu_798_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            cols_address0_local = zext_ln10_2_fu_740_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            cols_address0_local = zext_ln16_fu_658_p1;
        end else begin
            cols_address0_local = 'bx;
        end
    end else begin
        cols_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            cols_address1_local = zext_ln10_12_fu_1021_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            cols_address1_local = zext_ln10_10_fu_940_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            cols_address1_local = zext_ln10_6_fu_829_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            cols_address1_local = zext_ln10_fu_709_p1;
        end else begin
            cols_address1_local = 'bx;
        end
    end else begin
        cols_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        cols_ce0_local = 1'b1;
    end else begin
        cols_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        cols_ce1_local = 1'b1;
    end else begin
        cols_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_582_p0 = sum_7_reg_1702;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage58) & (1'b0 == ap_block_pp0_stage58) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p0 = sum_6_reg_1696;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage50) & (1'b0 == ap_block_pp0_stage50) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p0 = sum_5_reg_1690;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage42) & (1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p0 = sum_4_reg_1684;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage34) & (1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p0 = sum_3_reg_1678;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p0 = sum_2_reg_1672;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p0 = sum_1_reg_1666;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p0 = sum_fu_98;
    end else begin
        grp_fu_582_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_582_p1 = Si_7_reg_1661;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage58) & (1'b0 == ap_block_pp0_stage58) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p1 = Si_6_reg_1656;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage50) & (1'b0 == ap_block_pp0_stage50) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p1 = Si_5_reg_1651;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage42) & (1'b0 == ap_block_pp0_stage42) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p1 = Si_4_reg_1646;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage34) & (1'b0 == ap_block_pp0_stage34) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p1 = Si_3_reg_1641;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p1 = Si_2_reg_1636;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p1 = Si_1_reg_1621;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_582_p1 = Si_reg_1600;
    end else begin
        grp_fu_582_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10))) begin
            grp_fu_586_p0 = bitcast_ln17_14_fu_1122_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9))) begin
            grp_fu_586_p0 = bitcast_ln17_12_fu_1110_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8))) begin
            grp_fu_586_p0 = bitcast_ln17_10_fu_1102_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            grp_fu_586_p0 = bitcast_ln17_8_fu_1094_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            grp_fu_586_p0 = bitcast_ln17_6_fu_1079_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            grp_fu_586_p0 = bitcast_ln17_4_fu_1047_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            grp_fu_586_p0 = bitcast_ln17_2_fu_966_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            grp_fu_586_p0 = bitcast_ln17_fu_855_p1;
        end else begin
            grp_fu_586_p0 = 'bx;
        end
    end else begin
        grp_fu_586_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10))) begin
            grp_fu_586_p1 = bitcast_ln17_15_fu_1127_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9))) begin
            grp_fu_586_p1 = bitcast_ln17_13_fu_1114_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8))) begin
            grp_fu_586_p1 = bitcast_ln17_11_fu_1106_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            grp_fu_586_p1 = bitcast_ln17_9_fu_1098_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            grp_fu_586_p1 = bitcast_ln17_7_fu_1083_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            grp_fu_586_p1 = bitcast_ln17_5_fu_1051_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            grp_fu_586_p1 = bitcast_ln17_3_fu_971_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            grp_fu_586_p1 = bitcast_ln17_1_fu_859_p1;
        end else begin
            grp_fu_586_p1 = 'bx;
        end
    end else begin
        grp_fu_586_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76))) begin
        sum_1_out_ap_vld = 1'b1;
    end else begin
        sum_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76))) begin
        sum_2_out_ap_vld = 1'b1;
    end else begin
        sum_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76))) begin
        sum_3_out_ap_vld = 1'b1;
    end else begin
        sum_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76))) begin
        sum_4_out_ap_vld = 1'b1;
    end else begin
        sum_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76))) begin
        sum_5_out_ap_vld = 1'b1;
    end else begin
        sum_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76))) begin
        sum_6_out_ap_vld = 1'b1;
    end else begin
        sum_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state76)) begin
        sum_7_out_ap_vld = 1'b1;
    end else begin
        sum_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state82)) begin
        sum_out = sum_load_reg_1615;
    end else if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state83))) begin
        sum_out = sum_fu_98;
    end else begin
        sum_out = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state83))) begin
        sum_out_ap_vld = 1'b1;
    end else begin
        sum_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1706)) begin
            val_0_address0_local = zext_ln10_11_fu_955_p1;
        end else if ((1'b1 == ap_condition_1696)) begin
            val_0_address0_local = zext_ln10_9_fu_924_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            val_0_address0_local = zext_ln10_3_fu_755_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            val_0_address0_local = zext_ln9_fu_673_p1;
        end else begin
            val_0_address0_local = 'bx;
        end
    end else begin
        val_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            val_0_address1_local = zext_ln10_13_fu_1036_p1;
        end else if ((1'b1 == ap_condition_1721)) begin
            val_0_address1_local = zext_ln10_7_fu_844_p1;
        end else if ((1'b1 == ap_condition_1713)) begin
            val_0_address1_local = zext_ln10_5_fu_813_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            val_0_address1_local = zext_ln10_1_fu_724_p1;
        end else begin
            val_0_address1_local = 'bx;
        end
    end else begin
        val_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln16_6_fu_961_p2 == 1'd1) & (icmp_ln16_5_fu_930_p2 == 1'd1) & (icmp_ln16_4_reg_1334 == 1'd1) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd0) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln16_5_fu_930_p2 == 1'd1) & (icmp_ln16_4_reg_1334 == 1'd1) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        val_0_ce0_local = 1'b1;
    end else begin
        val_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln16_4_fu_850_p2 == 1'd1) & (icmp_ln16_3_fu_819_p2 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd0) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln16_3_fu_819_p2 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        val_0_ce1_local = 1'b1;
    end else begin
        val_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1731)) begin
            val_1_address0_local = zext_ln10_11_fu_955_p1;
        end else if ((1'b1 == ap_condition_1726)) begin
            val_1_address0_local = zext_ln10_9_fu_924_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            val_1_address0_local = zext_ln10_3_fu_755_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            val_1_address0_local = zext_ln9_fu_673_p1;
        end else begin
            val_1_address0_local = 'bx;
        end
    end else begin
        val_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            val_1_address1_local = zext_ln10_13_fu_1036_p1;
        end else if ((1'b1 == ap_condition_1741)) begin
            val_1_address1_local = zext_ln10_7_fu_844_p1;
        end else if ((1'b1 == ap_condition_1736)) begin
            val_1_address1_local = zext_ln10_5_fu_813_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            val_1_address1_local = zext_ln10_1_fu_724_p1;
        end else begin
            val_1_address1_local = 'bx;
        end
    end else begin
        val_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln16_6_fu_961_p2 == 1'd1) & (icmp_ln16_5_fu_930_p2 == 1'd1) & (icmp_ln16_4_reg_1334 == 1'd1) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln16_5_fu_930_p2 == 1'd1) & (icmp_ln16_4_reg_1334 == 1'd1) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd0) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        val_1_ce0_local = 1'b1;
    end else begin
        val_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln16_4_fu_850_p2 == 1'd1) & (icmp_ln16_3_fu_819_p2 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln16_3_fu_819_p2 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd0) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        val_1_ce1_local = 1'b1;
    end else begin
        val_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            vec_0_address0_local = zext_ln17_5_fu_1000_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            vec_0_address0_local = zext_ln17_3_fu_881_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            vec_0_address0_local = zext_ln17_2_fu_787_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            vec_0_address0_local = zext_ln17_fu_697_p1;
        end else begin
            vec_0_address0_local = 'bx;
        end
    end else begin
        vec_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            vec_0_address1_local = zext_ln17_7_fu_1073_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            vec_0_address1_local = zext_ln17_6_fu_1010_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            vec_0_address1_local = zext_ln17_4_fu_898_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            vec_0_address1_local = zext_ln17_1_fu_777_p1;
        end else begin
            vec_0_address1_local = 'bx;
        end
    end else begin
        vec_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        vec_0_ce0_local = 1'b1;
    end else begin
        vec_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        vec_0_ce1_local = 1'b1;
    end else begin
        vec_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            vec_1_address0_local = zext_ln17_5_fu_1000_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            vec_1_address0_local = zext_ln17_3_fu_881_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            vec_1_address0_local = zext_ln17_2_fu_787_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            vec_1_address0_local = zext_ln17_fu_697_p1;
        end else begin
            vec_1_address0_local = 'bx;
        end
    end else begin
        vec_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            vec_1_address1_local = zext_ln17_7_fu_1073_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            vec_1_address1_local = zext_ln17_6_fu_1010_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            vec_1_address1_local = zext_ln17_4_fu_898_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            vec_1_address1_local = zext_ln17_1_fu_777_p1;
        end else begin
            vec_1_address1_local = 'bx;
        end
    end else begin
        vec_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        vec_1_ce0_local = 1'b1;
    end else begin
        vec_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        vec_1_ce1_local = 1'b1;
    end else begin
        vec_1_ce1_local = 1'b0;
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
            if ((~((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 8'd7))) begin
                ap_NS_fsm = ap_ST_fsm_state83;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 8'd6))) begin
                ap_NS_fsm = ap_ST_fsm_state82;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 8'd5))) begin
                ap_NS_fsm = ap_ST_fsm_state81;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 8'd4))) begin
                ap_NS_fsm = ap_ST_fsm_state80;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 8'd3))) begin
                ap_NS_fsm = ap_ST_fsm_state79;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 8'd2))) begin
                ap_NS_fsm = ap_ST_fsm_state78;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 8'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state77;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_exit_tran_regpp0 == 8'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state76;
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
        ap_ST_fsm_state76 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state77 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state78 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state79 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state80 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state81 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state82 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state83 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state84 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln10_fu_703_p2 = (trunc_ln16_fu_679_p1 + 32'd1);
assign add_ln16_1_fu_793_p2 = (j_1_reg_1177 + 33'd3);
assign add_ln16_2_fu_824_p2 = (j_1_reg_1177 + 33'd4);
assign add_ln16_3_fu_904_p2 = (j_1_reg_1177 + 33'd5);
assign add_ln16_4_fu_935_p2 = (j_1_reg_1177 + 33'd6);
assign add_ln16_5_fu_1016_p2 = (j_1_reg_1177 + 33'd7);
assign add_ln16_6_fu_1131_p2 = (j_1_reg_1177 + 33'd8);
assign add_ln16_fu_735_p2 = (j_1_reg_1177 + 33'd2);
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
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage33 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_pp0_stage34 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage41 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_pp0_stage42 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_pp0_stage49 = ap_CS_fsm[32'd50];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage50 = ap_CS_fsm[32'd51];
assign ap_CS_fsm_pp0_stage57 = ap_CS_fsm[32'd58];
assign ap_CS_fsm_pp0_stage58 = ap_CS_fsm[32'd59];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage63 = ap_CS_fsm[32'd64];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state76 = ap_CS_fsm[32'd65];
assign ap_CS_fsm_state77 = ap_CS_fsm[32'd66];
assign ap_CS_fsm_state78 = ap_CS_fsm[32'd67];
assign ap_CS_fsm_state79 = ap_CS_fsm[32'd68];
assign ap_CS_fsm_state80 = ap_CS_fsm[32'd69];
assign ap_CS_fsm_state81 = ap_CS_fsm[32'd70];
assign ap_CS_fsm_state82 = ap_CS_fsm[32'd71];
assign ap_CS_fsm_state83 = ap_CS_fsm[32'd72];
assign ap_CS_fsm_state84 = ap_CS_fsm[32'd73];
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
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1696 = ((icmp_ln16_5_fu_930_p2 == 1'd1) & (icmp_ln16_4_reg_1334 == 1'd1) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3));
end
always @ (*) begin
    ap_condition_1706 = ((icmp_ln16_6_fu_961_p2 == 1'd1) & (icmp_ln16_5_fu_930_p2 == 1'd1) & (icmp_ln16_4_reg_1334 == 1'd1) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd0) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3));
end
always @ (*) begin
    ap_condition_1713 = ((icmp_ln16_3_fu_819_p2 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1721 = ((icmp_ln16_4_fu_850_p2 == 1'd1) & (icmp_ln16_3_fu_819_p2 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd0) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1726 = ((icmp_ln16_5_fu_930_p2 == 1'd1) & (icmp_ln16_4_reg_1334 == 1'd1) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd0) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3));
end
always @ (*) begin
    ap_condition_1731 = ((icmp_ln16_6_fu_961_p2 == 1'd1) & (icmp_ln16_5_fu_930_p2 == 1'd1) & (icmp_ln16_4_reg_1334 == 1'd1) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3));
end
always @ (*) begin
    ap_condition_1736 = ((icmp_ln16_3_fu_819_p2 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd0) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
always @ (*) begin
    ap_condition_1741 = ((icmp_ln16_4_fu_850_p2 == 1'd1) & (icmp_ln16_3_fu_819_p2 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (trunc_ln16_1_reg_1209 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
always @ (*) begin
    ap_predicate_tran67to76_state65 = ((icmp_ln16_7_reg_1511 == 1'd0) & (icmp_ln16_6_reg_1432 == 1'd1) & (icmp_ln16_5_reg_1413 == 1'd1) & (icmp_ln16_4_reg_1334 == 1'd1) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran67to77_state65 = ((icmp_ln16_6_reg_1432 == 1'd0) & (icmp_ln16_5_reg_1413 == 1'd1) & (icmp_ln16_4_reg_1334 == 1'd1) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran67to78_state65 = ((icmp_ln16_5_reg_1413 == 1'd0) & (icmp_ln16_4_reg_1334 == 1'd1) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran67to79_state65 = ((icmp_ln16_4_reg_1334 == 1'd0) & (icmp_ln16_3_reg_1315 == 1'd1) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran67to80_state65 = ((icmp_ln16_3_reg_1315 == 1'd0) & (icmp_ln16_2_reg_1256 == 1'd1) & (icmp_ln16_1_reg_1237 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran67to81_state65 = ((icmp_ln16_2_reg_1256 == 1'd0) & (icmp_ln16_1_reg_1237 == 1'd1) & (icmp_ln16_reg_1190 == 1'd1));
end
always @ (*) begin
    ap_predicate_tran67to82_state65 = ((icmp_ln16_1_reg_1237 == 1'd0) & (icmp_ln16_reg_1190 == 1'd1));
end
assign bitcast_ln17_10_fu_1102_p1 = select_ln17_10_reg_1471;
assign bitcast_ln17_11_fu_1106_p1 = select_ln17_11_reg_1540;
assign bitcast_ln17_12_fu_1110_p1 = select_ln17_12_reg_1491;
assign bitcast_ln17_13_fu_1114_p1 = select_ln17_13_reg_1545;
assign bitcast_ln17_14_fu_1122_p1 = reg_628;
assign bitcast_ln17_15_fu_1127_p1 = select_ln17_15_reg_1575;
assign bitcast_ln17_1_fu_859_p1 = select_ln17_1_reg_1275;
assign bitcast_ln17_2_fu_966_p1 = reg_628;
assign bitcast_ln17_3_fu_971_p1 = select_ln17_3_reg_1363;
assign bitcast_ln17_4_fu_1047_p1 = select_ln17_4_reg_1295;
assign bitcast_ln17_5_fu_1051_p1 = select_ln17_5_reg_1368;
assign bitcast_ln17_6_fu_1079_p1 = select_ln17_6_reg_1373;
assign bitcast_ln17_7_fu_1083_p1 = select_ln17_7_reg_1461;
assign bitcast_ln17_8_fu_1094_p1 = select_ln17_8_reg_1393;
assign bitcast_ln17_9_fu_1098_p1 = select_ln17_9_reg_1466;
assign bitcast_ln17_fu_855_p1 = select_ln17_reg_1217;
assign cols_address0 = cols_address0_local;
assign cols_address1 = cols_address1_local;
assign cols_ce0 = cols_ce0_local;
assign cols_ce1 = cols_ce1_local;
assign grp_fu_590_p4 = {{cols_q0[8:1]}};
assign grp_fu_600_p3 = ((trunc_ln16_1_reg_1209[0:0] == 1'b1) ? val_0_q1 : val_1_q1);
assign grp_fu_607_p4 = {{cols_q1[8:1]}};
assign grp_fu_617_p3 = ((trunc_ln16_1_reg_1209[0:0] == 1'b1) ? val_1_q0 : val_0_q0);
assign icmp_ln16_1_fu_730_p2 = (($signed(add_ln10_fu_703_p2) < $signed(tmp_end)) ? 1'b1 : 1'b0);
assign icmp_ln16_2_fu_761_p2 = (($signed(add_ln16_fu_735_p2) < $signed(sext_ln16_1_cast_reg_1166)) ? 1'b1 : 1'b0);
assign icmp_ln16_3_fu_819_p2 = (($signed(add_ln16_1_fu_793_p2) < $signed(sext_ln16_1_cast_reg_1166)) ? 1'b1 : 1'b0);
assign icmp_ln16_4_fu_850_p2 = (($signed(add_ln16_2_fu_824_p2) < $signed(sext_ln16_1_cast_reg_1166)) ? 1'b1 : 1'b0);
assign icmp_ln16_5_fu_930_p2 = (($signed(add_ln16_3_fu_904_p2) < $signed(sext_ln16_1_cast_reg_1166)) ? 1'b1 : 1'b0);
assign icmp_ln16_6_fu_961_p2 = (($signed(add_ln16_4_fu_935_p2) < $signed(sext_ln16_1_cast_reg_1166)) ? 1'b1 : 1'b0);
assign icmp_ln16_7_fu_1042_p2 = (($signed(add_ln16_5_fu_1016_p2) < $signed(sext_ln16_1_cast_reg_1166)) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_653_p2 = (($signed(j_fu_102) < $signed(sext_ln16_1_cast_reg_1166)) ? 1'b1 : 1'b0);
assign lshr_ln10_1_fu_745_p4 = {{add_ln16_fu_735_p2[10:1]}};
assign lshr_ln10_2_fu_803_p4 = {{add_ln16_1_fu_793_p2[10:1]}};
assign lshr_ln10_3_fu_834_p4 = {{add_ln16_2_fu_824_p2[10:1]}};
assign lshr_ln10_4_fu_914_p4 = {{add_ln16_3_fu_904_p2[10:1]}};
assign lshr_ln10_5_fu_945_p4 = {{add_ln16_4_fu_935_p2[10:1]}};
assign lshr_ln10_6_fu_1026_p4 = {{add_ln16_5_fu_1016_p2[10:1]}};
assign lshr_ln2_fu_714_p4 = {{add_ln10_fu_703_p2[10:1]}};
assign lshr_ln9_1_fu_663_p4 = {{j_fu_102[10:1]}};
assign select_ln17_10_fu_989_p3 = ((trunc_ln16_1_reg_1209[0:0] == 1'b1) ? val_0_q0 : val_1_q0);
assign select_ln17_11_fu_1055_p3 = ((trunc_ln17_5_reg_1476[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_13_fu_1062_p3 = ((trunc_ln17_6_reg_1496[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln17_15_fu_1087_p3 = ((trunc_ln17_7_reg_1550[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln17_1_fu_766_p3 = ((trunc_ln17_reg_1222[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_3_fu_863_p3 = ((trunc_ln17_1_reg_1280[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln17_5_fu_870_p3 = ((trunc_ln17_2_reg_1300[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_7_fu_975_p3 = ((trunc_ln17_3_reg_1378[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln17_8_fu_887_p3 = ((trunc_ln16_1_reg_1209[0:0] == 1'b1) ? val_1_q1 : val_0_q1);
assign select_ln17_9_fu_982_p3 = ((trunc_ln17_4_reg_1398[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln17_fu_685_p3 = ((trunc_ln16_1_fu_682_p1[0:0] == 1'b1) ? val_1_q0 : val_0_q0);
assign sext_ln16_1_cast_fu_632_p1 = $signed(sext_ln16_1);
assign sext_ln16_cast_fu_636_p1 = $signed(sext_ln16);
assign sum_1_out = sum_1_reg_1666;
assign sum_2_out = sum_2_reg_1672;
assign sum_3_out = sum_3_reg_1678;
assign sum_4_out = sum_4_reg_1684;
assign sum_5_out = sum_5_reg_1690;
assign sum_6_out = sum_6_reg_1696;
assign sum_7_out = sum_7_reg_1702;
assign trunc_ln16_1_fu_682_p1 = j_1_reg_1177[0:0];
assign trunc_ln16_fu_679_p1 = j_1_reg_1177[31:0];
assign trunc_ln17_1_fu_773_p1 = cols_q1[0:0];
assign trunc_ln17_2_fu_783_p1 = cols_q0[0:0];
assign trunc_ln17_3_fu_877_p1 = cols_q0[0:0];
assign trunc_ln17_4_fu_894_p1 = cols_q1[0:0];
assign trunc_ln17_5_fu_996_p1 = cols_q0[0:0];
assign trunc_ln17_6_fu_1006_p1 = cols_q1[0:0];
assign trunc_ln17_7_fu_1069_p1 = cols_q1[0:0];
assign trunc_ln17_fu_693_p1 = cols_q0[0:0];
assign val_0_address0 = val_0_address0_local;
assign val_0_address1 = val_0_address1_local;
assign val_0_ce0 = val_0_ce0_local;
assign val_0_ce1 = val_0_ce1_local;
assign val_1_address0 = val_1_address0_local;
assign val_1_address1 = val_1_address1_local;
assign val_1_ce0 = val_1_ce0_local;
assign val_1_ce1 = val_1_ce1_local;
assign vec_0_address0 = vec_0_address0_local;
assign vec_0_address1 = vec_0_address1_local;
assign vec_0_ce0 = vec_0_ce0_local;
assign vec_0_ce1 = vec_0_ce1_local;
assign vec_1_address0 = vec_1_address0_local;
assign vec_1_address1 = vec_1_address1_local;
assign vec_1_ce0 = vec_1_ce0_local;
assign vec_1_ce1 = vec_1_ce1_local;
assign zext_ln10_10_fu_940_p1 = add_ln16_4_fu_935_p2;
assign zext_ln10_11_fu_955_p1 = lshr_ln10_5_fu_945_p4;
assign zext_ln10_12_fu_1021_p1 = add_ln16_5_fu_1016_p2;
assign zext_ln10_13_fu_1036_p1 = lshr_ln10_6_fu_1026_p4;
assign zext_ln10_1_fu_724_p1 = lshr_ln2_fu_714_p4;
assign zext_ln10_2_fu_740_p1 = add_ln16_fu_735_p2;
assign zext_ln10_3_fu_755_p1 = lshr_ln10_1_fu_745_p4;
assign zext_ln10_4_fu_798_p1 = add_ln16_1_fu_793_p2;
assign zext_ln10_5_fu_813_p1 = lshr_ln10_2_fu_803_p4;
assign zext_ln10_6_fu_829_p1 = add_ln16_2_fu_824_p2;
assign zext_ln10_7_fu_844_p1 = lshr_ln10_3_fu_834_p4;
assign zext_ln10_8_fu_909_p1 = add_ln16_3_fu_904_p2;
assign zext_ln10_9_fu_924_p1 = lshr_ln10_4_fu_914_p4;
assign zext_ln10_fu_709_p1 = add_ln10_fu_703_p2;
assign zext_ln16_fu_658_p1 = j_fu_102;
assign zext_ln17_1_fu_777_p1 = grp_fu_607_p4;
assign zext_ln17_2_fu_787_p1 = grp_fu_590_p4;
assign zext_ln17_3_fu_881_p1 = grp_fu_590_p4;
assign zext_ln17_4_fu_898_p1 = grp_fu_607_p4;
assign zext_ln17_5_fu_1000_p1 = grp_fu_590_p4;
assign zext_ln17_6_fu_1010_p1 = grp_fu_607_p4;
assign zext_ln17_7_fu_1073_p1 = grp_fu_607_p4;
assign zext_ln17_fu_697_p1 = grp_fu_590_p4;
assign zext_ln9_fu_673_p1 = lshr_ln9_1_fu_663_p4;
always @ (posedge ap_clk) begin
    ap_exit_tran_regpp0[7:3] <= 5'b00000;
end
endmodule 
