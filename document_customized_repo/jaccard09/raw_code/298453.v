module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,phi_mul177,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v29_12_out,v29_12_out_ap_vld,grp_fu_4418_p_din0,grp_fu_4418_p_din1,grp_fu_4418_p_opcode,grp_fu_4418_p_dout0,grp_fu_4418_p_ce,grp_fu_4436_p_din0,grp_fu_4436_p_din1,grp_fu_4436_p_dout0,grp_fu_4436_p_ce); 
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
input  [11:0] phi_mul177;
output  [10:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [10:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [63:0] v29_12_out;
output   v29_12_out_ap_vld;
output  [63:0] grp_fu_4418_p_din0;
output  [63:0] grp_fu_4418_p_din1;
output  [0:0] grp_fu_4418_p_opcode;
input  [63:0] grp_fu_4418_p_dout0;
output   grp_fu_4418_p_ce;
output  [63:0] grp_fu_4436_p_din0;
output  [63:0] grp_fu_4436_p_din1;
input  [63:0] grp_fu_4436_p_dout0;
output   grp_fu_4436_p_ce;
reg ap_idle;
reg v29_12_out_ap_vld;
(* fsm_encoding = "none" *) reg   [63:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
reg   [0:0] icmp_ln68_reg_1878;
reg    ap_condition_exit_pp0_iter0_stage63;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_570;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] reg_575;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39_11001;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47_11001;
wire    ap_CS_fsm_pp0_stage55;
wire    ap_block_pp0_stage55_11001;
wire    ap_block_pp0_stage63_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] v24_1_reg_1729;
wire   [9:0] add_ln69_fu_601_p2;
reg   [9:0] add_ln69_reg_1735;
wire   [11:0] add_ln70_fu_607_p2;
reg   [11:0] add_ln70_reg_1741;
reg   [2:0] tmp_3_reg_1747;
reg   [1:0] tmp_5_reg_1752;
wire   [0:0] trunc_ln68_fu_639_p1;
reg   [0:0] trunc_ln68_reg_1758;
reg   [0:0] tmp_reg_1763;
wire   [1:0] trunc_ln68_1_fu_651_p1;
reg   [1:0] trunc_ln68_1_reg_1769;
reg   [0:0] tmp_6_reg_1774;
reg   [1:0] trunc_ln1_reg_1779;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln70_fu_692_p2;
reg   [0:0] icmp_ln70_reg_1784;
wire   [3:0] or_ln_fu_698_p3;
reg   [3:0] or_ln_reg_1789;
wire   [9:0] add_ln69_1_fu_709_p2;
reg   [9:0] add_ln69_1_reg_1794;
reg   [1:0] trunc_ln69_1_reg_1800;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [11:0] add_ln70_1_fu_736_p2;
wire   [0:0] icmp_ln70_1_fu_753_p2;
reg   [0:0] icmp_ln70_1_reg_1810;
wire   [3:0] or_ln68_1_fu_759_p4;
reg   [3:0] or_ln68_1_reg_1815;
wire   [9:0] add_ln69_2_fu_771_p2;
reg   [9:0] add_ln69_2_reg_1820;
reg   [1:0] trunc_ln69_2_reg_1826;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [3:0] or_ln68_2_fu_800_p3;
reg   [3:0] or_ln68_2_reg_1831;
wire   [9:0] add_ln69_3_fu_811_p2;
reg   [9:0] add_ln69_3_reg_1836;
wire   [11:0] add_ln70_2_fu_819_p2;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] icmp_ln70_2_fu_836_p2;
reg   [0:0] icmp_ln70_2_reg_1847;
reg   [1:0] trunc_ln69_3_reg_1852;
wire   [3:0] or_ln68_3_fu_861_p4;
reg   [3:0] or_ln68_3_reg_1857;
wire   [9:0] add_ln69_4_fu_873_p2;
reg   [9:0] add_ln69_4_reg_1862;
reg   [1:0] trunc_ln69_4_reg_1868;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [3:0] or_ln68_4_fu_902_p5;
reg   [3:0] or_ln68_4_reg_1873;
wire   [0:0] icmp_ln68_fu_912_p2;
wire   [9:0] add_ln69_5_fu_922_p2;
reg   [9:0] add_ln69_5_reg_1882;
wire   [11:0] add_ln70_3_fu_959_p2;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] icmp_ln70_3_fu_976_p2;
reg   [0:0] icmp_ln70_3_reg_1893;
reg   [1:0] trunc_ln69_5_reg_1898;
wire   [9:0] add_ln69_6_fu_1001_p2;
reg   [9:0] add_ln69_6_reg_1903;
reg   [1:0] trunc_ln69_6_reg_1909;
wire   [9:0] add_ln69_7_fu_1030_p2;
reg   [9:0] add_ln69_7_reg_1914;
wire   [11:0] add_ln70_4_fu_1038_p2;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln70_4_fu_1055_p2;
reg   [0:0] icmp_ln70_4_reg_1925;
reg   [1:0] trunc_ln69_7_reg_1930;
wire   [11:0] add_ln70_5_fu_1088_p2;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [0:0] icmp_ln70_5_fu_1105_p2;
reg   [0:0] icmp_ln70_5_reg_1940;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [0:0] icmp_ln70_6_fu_1145_p2;
reg   [0:0] icmp_ln70_6_reg_1970;
wire   [0:0] icmp_ln70_7_fu_1167_p2;
reg   [0:0] icmp_ln70_7_reg_1980;
wire   [63:0] v25_fu_1189_p11;
reg   [63:0] v25_reg_1985;
wire   [63:0] select_ln70_fu_1223_p3;
reg   [63:0] select_ln70_reg_2000;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [63:0] v26_fu_1238_p1;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [63:0] v25_1_fu_1258_p11;
reg   [63:0] v25_1_reg_2030;
wire   [63:0] select_ln70_1_fu_1287_p3;
reg   [63:0] select_ln70_1_reg_2045;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [63:0] v26_1_fu_1302_p1;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [63:0] v25_2_fu_1322_p11;
reg   [63:0] v25_2_reg_2075;
wire   [63:0] select_ln70_2_fu_1351_p3;
reg   [63:0] select_ln70_2_reg_2090;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [63:0] v26_2_fu_1366_p1;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [63:0] v25_3_fu_1386_p11;
reg   [63:0] v25_3_reg_2120;
wire   [63:0] select_ln70_3_fu_1415_p3;
reg   [63:0] select_ln70_3_reg_2135;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [63:0] v26_3_fu_1430_p1;
wire   [63:0] v25_4_fu_1450_p11;
reg   [63:0] v25_4_reg_2165;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [63:0] select_ln70_4_fu_1483_p3;
reg   [63:0] select_ln70_4_reg_2185;
reg   [63:0] v27_1_reg_2210;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] v26_4_fu_1498_p1;
wire   [63:0] v25_5_fu_1518_p11;
reg   [63:0] v25_5_reg_2220;
wire   [63:0] select_ln70_5_fu_1547_p3;
reg   [63:0] select_ln70_5_reg_2235;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] v27_2_reg_2260;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] v26_5_fu_1562_p1;
wire   [63:0] v25_6_fu_1582_p11;
reg   [63:0] v25_6_reg_2270;
wire   [63:0] select_ln70_6_fu_1611_p3;
reg   [63:0] select_ln70_6_reg_2285;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] v27_3_reg_2310;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] v26_6_fu_1626_p1;
wire   [63:0] v25_7_fu_1646_p11;
reg   [63:0] v25_7_reg_2320;
wire   [63:0] select_ln70_7_fu_1675_p3;
reg   [63:0] select_ln70_7_reg_2335;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire   [63:0] v26_7_fu_1682_p1;
reg   [63:0] v27_5_reg_2345;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
reg   [63:0] v27_6_reg_2350;
wire    ap_CS_fsm_pp0_stage35;
wire    ap_block_pp0_stage35_11001;
reg   [63:0] v27_7_reg_2355;
wire    ap_CS_fsm_pp0_stage37;
wire    ap_block_pp0_stage37_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage23_subdone;
wire   [63:0] zext_ln69_fu_1132_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln70_fu_1212_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln69_3_fu_1230_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln70_1_fu_1281_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln69_6_fu_1294_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln70_2_fu_1345_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln69_9_fu_1358_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln70_3_fu_1409_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln69_12_fu_1422_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] zext_ln70_4_fu_1473_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] zext_ln69_13_fu_1490_p1;
wire    ap_block_pp0_stage24;
wire   [63:0] zext_ln70_5_fu_1541_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] zext_ln69_14_fu_1554_p1;
wire    ap_block_pp0_stage26;
wire   [63:0] zext_ln70_6_fu_1605_p1;
wire    ap_block_pp0_stage27;
wire   [63:0] zext_ln69_15_fu_1618_p1;
wire    ap_block_pp0_stage28;
wire   [63:0] zext_ln70_7_fu_1669_p1;
wire    ap_block_pp0_stage29;
reg   [63:0] v28_fu_120;
wire    ap_loop_init;
reg   [3:0] v24_fu_124;
wire   [3:0] xor_ln_fu_943_p3;
reg   [3:0] ap_sig_allocacmp_v24_1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage63_01001;
reg    v0_0_ce0_local;
reg   [7:0] v0_0_address0_local;
reg    v0_1_ce0_local;
reg   [7:0] v0_1_address0_local;
reg    v0_2_ce0_local;
reg   [7:0] v0_2_address0_local;
reg    v0_3_ce0_local;
reg   [7:0] v0_3_address0_local;
reg    v6_0_ce0_local;
reg   [10:0] v6_0_address0_local;
reg    v6_1_ce0_local;
reg   [10:0] v6_1_address0_local;
reg   [63:0] grp_fu_561_p0;
reg   [63:0] grp_fu_561_p1;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40;
wire    ap_CS_fsm_pp0_stage48;
wire    ap_block_pp0_stage48;
wire    ap_CS_fsm_pp0_stage56;
wire    ap_block_pp0_stage56;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_566_p0;
reg   [63:0] grp_fu_566_p1;
wire    ap_block_pp0_stage31;
wire   [9:0] zext_ln68_1_fu_597_p1;
wire   [11:0] zext_ln68_fu_593_p1;
wire   [11:0] grp_fu_613_p0;
wire   [8:0] grp_fu_663_p1;
wire    ap_block_pp0_stage1;
wire   [9:0] mul_ln69_fu_671_p0;
wire   [11:0] mul_ln69_fu_671_p1;
wire   [20:0] mul_ln69_fu_671_p2;
wire   [11:0] add_ln70_8_fu_687_p2;
wire   [9:0] zext_ln69_2_fu_705_p1;
wire    ap_block_pp0_stage2;
wire   [9:0] mul_ln69_1_fu_720_p0;
wire   [11:0] mul_ln69_1_fu_720_p1;
wire   [20:0] mul_ln69_1_fu_720_p2;
wire   [11:0] zext_ln69_1_fu_714_p1;
wire   [11:0] add_ln70_9_fu_747_p2;
wire   [9:0] zext_ln69_5_fu_767_p1;
wire   [8:0] grp_fu_776_p1;
wire    ap_block_pp0_stage3;
wire   [9:0] mul_ln69_2_fu_784_p0;
wire   [11:0] mul_ln69_2_fu_784_p1;
wire   [20:0] mul_ln69_2_fu_784_p2;
wire   [9:0] zext_ln69_8_fu_807_p1;
wire    ap_block_pp0_stage4;
wire   [11:0] zext_ln69_4_fu_816_p1;
wire   [11:0] add_ln70_10_fu_830_p2;
wire   [9:0] mul_ln69_3_fu_845_p0;
wire   [11:0] mul_ln69_3_fu_845_p1;
wire   [20:0] mul_ln69_3_fu_845_p2;
wire   [9:0] zext_ln69_11_fu_869_p1;
wire   [8:0] grp_fu_878_p1;
wire    ap_block_pp0_stage5;
wire   [9:0] mul_ln69_4_fu_886_p0;
wire   [11:0] mul_ln69_4_fu_886_p1;
wire   [20:0] mul_ln69_4_fu_886_p2;
wire   [9:0] zext_ln68_3_fu_918_p1;
wire   [0:0] bit_sel1_fu_927_p3;
wire   [0:0] xor_ln68_fu_934_p2;
wire   [2:0] trunc_ln68_2_fu_940_p1;
wire    ap_block_pp0_stage6;
wire   [11:0] zext_ln69_7_fu_956_p1;
wire   [11:0] add_ln70_11_fu_970_p2;
wire   [9:0] mul_ln69_5_fu_985_p0;
wire   [11:0] mul_ln69_5_fu_985_p1;
wire   [20:0] mul_ln69_5_fu_985_p2;
wire   [8:0] grp_fu_1006_p1;
wire    ap_block_pp0_stage7;
wire   [9:0] mul_ln69_6_fu_1014_p0;
wire   [11:0] mul_ln69_6_fu_1014_p1;
wire   [20:0] mul_ln69_6_fu_1014_p2;
wire   [11:0] zext_ln69_10_fu_1035_p1;
wire   [11:0] add_ln70_12_fu_1049_p2;
wire   [9:0] mul_ln69_7_fu_1064_p0;
wire   [11:0] mul_ln69_7_fu_1064_p1;
wire   [20:0] mul_ln69_7_fu_1064_p2;
wire   [8:0] grp_fu_1080_p1;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire   [11:0] zext_ln68_2_fu_1085_p1;
wire   [11:0] add_ln70_13_fu_1099_p2;
wire   [8:0] grp_fu_1111_p1;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire   [11:0] grp_fu_1121_p0;
wire   [8:0] grp_fu_1127_p1;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13;
wire   [9:0] grp_fu_663_p2;
wire   [11:0] add_ln70_14_fu_1140_p2;
wire   [11:0] grp_fu_1156_p0;
wire   [11:0] add_ln70_15_fu_1162_p2;
wire   [63:0] v25_fu_1189_p2;
wire   [63:0] v25_fu_1189_p4;
wire   [63:0] v25_fu_1189_p6;
wire   [63:0] v25_fu_1189_p8;
wire   [63:0] v25_fu_1189_p9;
wire   [11:0] grp_fu_613_p2;
wire   [8:0] grp_fu_1218_p1;
wire   [9:0] grp_fu_776_p2;
wire   [63:0] v25_1_fu_1258_p2;
wire   [63:0] v25_1_fu_1258_p4;
wire   [63:0] v25_1_fu_1258_p6;
wire   [63:0] v25_1_fu_1258_p8;
wire   [63:0] v25_1_fu_1258_p9;
wire   [11:0] grp_fu_741_p2;
wire   [9:0] grp_fu_878_p2;
wire   [63:0] v25_2_fu_1322_p2;
wire   [63:0] v25_2_fu_1322_p4;
wire   [63:0] v25_2_fu_1322_p6;
wire   [63:0] v25_2_fu_1322_p8;
wire   [63:0] v25_2_fu_1322_p9;
wire   [11:0] grp_fu_824_p2;
wire   [9:0] grp_fu_1006_p2;
wire   [63:0] v25_3_fu_1386_p2;
wire   [63:0] v25_3_fu_1386_p4;
wire   [63:0] v25_3_fu_1386_p6;
wire   [63:0] v25_3_fu_1386_p8;
wire   [63:0] v25_3_fu_1386_p9;
wire   [11:0] grp_fu_964_p2;
wire   [9:0] grp_fu_1080_p2;
wire   [63:0] v25_4_fu_1450_p2;
wire   [63:0] v25_4_fu_1450_p4;
wire   [63:0] v25_4_fu_1450_p6;
wire   [63:0] v25_4_fu_1450_p8;
wire   [63:0] v25_4_fu_1450_p9;
wire   [11:0] grp_fu_1043_p2;
wire   [9:0] grp_fu_1111_p2;
wire   [63:0] v25_5_fu_1518_p2;
wire   [63:0] v25_5_fu_1518_p4;
wire   [63:0] v25_5_fu_1518_p6;
wire   [63:0] v25_5_fu_1518_p8;
wire   [63:0] v25_5_fu_1518_p9;
wire   [11:0] grp_fu_1093_p2;
wire   [9:0] grp_fu_1127_p2;
wire   [63:0] v25_6_fu_1582_p2;
wire   [63:0] v25_6_fu_1582_p4;
wire   [63:0] v25_6_fu_1582_p6;
wire   [63:0] v25_6_fu_1582_p8;
wire   [63:0] v25_6_fu_1582_p9;
wire   [11:0] grp_fu_1121_p2;
wire   [9:0] grp_fu_1218_p2;
wire   [63:0] v25_7_fu_1646_p2;
wire   [63:0] v25_7_fu_1646_p4;
wire   [63:0] v25_7_fu_1646_p6;
wire   [63:0] v25_7_fu_1646_p8;
wire   [63:0] v25_7_fu_1646_p9;
wire   [11:0] grp_fu_1156_p2;
wire    ap_block_pp0_stage30;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage32_00001;
wire    ap_block_pp0_stage40_00001;
wire    ap_block_pp0_stage48_00001;
wire    ap_block_pp0_stage56_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage16_00001;
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
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [20:0] mul_ln69_1_fu_720_p00;
wire   [20:0] mul_ln69_2_fu_784_p00;
wire   [20:0] mul_ln69_3_fu_845_p00;
wire   [20:0] mul_ln69_4_fu_886_p00;
wire   [20:0] mul_ln69_5_fu_985_p00;
wire   [20:0] mul_ln69_6_fu_1014_p00;
wire   [20:0] mul_ln69_7_fu_1064_p00;
wire   [20:0] mul_ln69_fu_671_p00;
wire   [1:0] v25_fu_1189_p1;
wire   [1:0] v25_fu_1189_p3;
wire  signed [1:0] v25_fu_1189_p5;
wire  signed [1:0] v25_fu_1189_p7;
wire   [1:0] v25_1_fu_1258_p1;
wire   [1:0] v25_1_fu_1258_p3;
wire  signed [1:0] v25_1_fu_1258_p5;
wire  signed [1:0] v25_1_fu_1258_p7;
wire   [1:0] v25_2_fu_1322_p1;
wire   [1:0] v25_2_fu_1322_p3;
wire  signed [1:0] v25_2_fu_1322_p5;
wire  signed [1:0] v25_2_fu_1322_p7;
wire   [1:0] v25_3_fu_1386_p1;
wire   [1:0] v25_3_fu_1386_p3;
wire  signed [1:0] v25_3_fu_1386_p5;
wire  signed [1:0] v25_3_fu_1386_p7;
wire   [1:0] v25_4_fu_1450_p1;
wire   [1:0] v25_4_fu_1450_p3;
wire  signed [1:0] v25_4_fu_1450_p5;
wire  signed [1:0] v25_4_fu_1450_p7;
wire   [1:0] v25_5_fu_1518_p1;
wire   [1:0] v25_5_fu_1518_p3;
wire  signed [1:0] v25_5_fu_1518_p5;
wire  signed [1:0] v25_5_fu_1518_p7;
wire   [1:0] v25_6_fu_1582_p1;
wire   [1:0] v25_6_fu_1582_p3;
wire  signed [1:0] v25_6_fu_1582_p5;
wire  signed [1:0] v25_6_fu_1582_p7;
wire   [1:0] v25_7_fu_1646_p1;
wire   [1:0] v25_7_fu_1646_p3;
wire  signed [1:0] v25_7_fu_1646_p5;
wire  signed [1:0] v25_7_fu_1646_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 64'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_120 = 64'd0;
#0 v24_fu_124 = 4'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_613_p0),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_613_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_reg_1735),.din1(grp_fu_663_p1),.ce(1'b1),.dout(grp_fu_663_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U17(.din0(mul_ln69_fu_671_p0),.din1(mul_ln69_fu_671_p1),.dout(mul_ln69_fu_671_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U18(.din0(mul_ln69_1_fu_720_p0),.din1(mul_ln69_1_fu_720_p1),.dout(mul_ln69_1_fu_720_p2));
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(add_ln70_1_fu_736_p2),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_741_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_1_reg_1794),.din1(grp_fu_776_p1),.ce(1'b1),.dout(grp_fu_776_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U21(.din0(mul_ln69_2_fu_784_p0),.din1(mul_ln69_2_fu_784_p1),.dout(mul_ln69_2_fu_784_p2));
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(add_ln70_2_fu_819_p2),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_824_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U23(.din0(mul_ln69_3_fu_845_p0),.din1(mul_ln69_3_fu_845_p1),.dout(mul_ln69_3_fu_845_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_2_reg_1820),.din1(grp_fu_878_p1),.ce(1'b1),.dout(grp_fu_878_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U25(.din0(mul_ln69_4_fu_886_p0),.din1(mul_ln69_4_fu_886_p1),.dout(mul_ln69_4_fu_886_p2));
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U26(.clk(ap_clk),.reset(ap_rst),.din0(add_ln70_3_fu_959_p2),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_964_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U27(.din0(mul_ln69_5_fu_985_p0),.din1(mul_ln69_5_fu_985_p1),.dout(mul_ln69_5_fu_985_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_3_reg_1836),.din1(grp_fu_1006_p1),.ce(1'b1),.dout(grp_fu_1006_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U29(.din0(mul_ln69_6_fu_1014_p0),.din1(mul_ln69_6_fu_1014_p1),.dout(mul_ln69_6_fu_1014_p2));
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(add_ln70_4_fu_1038_p2),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_1043_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U31(.din0(mul_ln69_7_fu_1064_p0),.din1(mul_ln69_7_fu_1064_p1),.dout(mul_ln69_7_fu_1064_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_4_reg_1862),.din1(grp_fu_1080_p1),.ce(1'b1),.dout(grp_fu_1080_p2));
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(add_ln70_5_fu_1088_p2),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_1093_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U34(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_5_reg_1882),.din1(grp_fu_1111_p1),.ce(1'b1),.dout(grp_fu_1111_p2));
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U35(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1121_p0),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_1121_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U36(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_6_reg_1903),.din1(grp_fu_1127_p1),.ce(1'b1),.dout(grp_fu_1127_p2));
backprop_urem_12ns_12ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 12 ),.dout_WIDTH( 12 ))
urem_12ns_12ns_12_16_1_U37(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1156_p0),.din1(12'd1060),.ce(1'b1),.dout(grp_fu_1156_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U38(.din0(v25_fu_1189_p2),.din1(v25_fu_1189_p4),.din2(v25_fu_1189_p6),.din3(v25_fu_1189_p8),.def(v25_fu_1189_p9),.sel(trunc_ln1_reg_1779),.dout(v25_fu_1189_p11));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U39(.clk(ap_clk),.reset(ap_rst),.din0(add_ln69_7_reg_1914),.din1(grp_fu_1218_p1),.ce(1'b1),.dout(grp_fu_1218_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U40(.din0(v25_1_fu_1258_p2),.din1(v25_1_fu_1258_p4),.din2(v25_1_fu_1258_p6),.din3(v25_1_fu_1258_p8),.def(v25_1_fu_1258_p9),.sel(trunc_ln69_1_reg_1800),.dout(v25_1_fu_1258_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U41(.din0(v25_2_fu_1322_p2),.din1(v25_2_fu_1322_p4),.din2(v25_2_fu_1322_p6),.din3(v25_2_fu_1322_p8),.def(v25_2_fu_1322_p9),.sel(trunc_ln69_2_reg_1826),.dout(v25_2_fu_1322_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U42(.din0(v25_3_fu_1386_p2),.din1(v25_3_fu_1386_p4),.din2(v25_3_fu_1386_p6),.din3(v25_3_fu_1386_p8),.def(v25_3_fu_1386_p9),.sel(trunc_ln69_3_reg_1852),.dout(v25_3_fu_1386_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U43(.din0(v25_4_fu_1450_p2),.din1(v25_4_fu_1450_p4),.din2(v25_4_fu_1450_p6),.din3(v25_4_fu_1450_p8),.def(v25_4_fu_1450_p9),.sel(trunc_ln69_4_reg_1868),.dout(v25_4_fu_1450_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U44(.din0(v25_5_fu_1518_p2),.din1(v25_5_fu_1518_p4),.din2(v25_5_fu_1518_p6),.din3(v25_5_fu_1518_p8),.def(v25_5_fu_1518_p9),.sel(trunc_ln69_5_reg_1898),.dout(v25_5_fu_1518_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U45(.din0(v25_6_fu_1582_p2),.din1(v25_6_fu_1582_p4),.din2(v25_6_fu_1582_p6),.din3(v25_6_fu_1582_p8),.def(v25_6_fu_1582_p9),.sel(trunc_ln69_6_reg_1909),.dout(v25_6_fu_1582_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U46(.din0(v25_7_fu_1646_p2),.din1(v25_7_fu_1646_p4),.din2(v25_7_fu_1646_p6),.din3(v25_7_fu_1646_p8),.def(v25_7_fu_1646_p9),.sel(trunc_ln69_7_reg_1930),.dout(v25_7_fu_1646_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage63),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63) & (ap_loop_exit_ready == 1'b1))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage63) | ((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_fu_124 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_912_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v24_fu_124 <= xor_ln_fu_943_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_120 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        v28_fu_120 <= grp_fu_4418_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln69_1_reg_1794 <= add_ln69_1_fu_709_p2;
        icmp_ln70_reg_1784 <= icmp_ln70_fu_692_p2;
        or_ln_reg_1789[3 : 1] <= or_ln_fu_698_p3[3 : 1];
        trunc_ln1_reg_1779 <= {{mul_ln69_fu_671_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln69_2_reg_1820 <= add_ln69_2_fu_771_p2;
        icmp_ln70_1_reg_1810 <= icmp_ln70_1_fu_753_p2;
        or_ln68_1_reg_1815[0] <= or_ln68_1_fu_759_p4[0];
or_ln68_1_reg_1815[3 : 2] <= or_ln68_1_fu_759_p4[3 : 2];
        trunc_ln69_1_reg_1800 <= {{mul_ln69_1_fu_720_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln69_3_reg_1836 <= add_ln69_3_fu_811_p2;
        or_ln68_2_reg_1831[3 : 2] <= or_ln68_2_fu_800_p3[3 : 2];
        trunc_ln69_2_reg_1826 <= {{mul_ln69_2_fu_784_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln69_4_reg_1862 <= add_ln69_4_fu_873_p2;
        icmp_ln70_2_reg_1847 <= icmp_ln70_2_fu_836_p2;
        or_ln68_3_reg_1857[1 : 0] <= or_ln68_3_fu_861_p4[1 : 0];
or_ln68_3_reg_1857[3] <= or_ln68_3_fu_861_p4[3];
        trunc_ln69_3_reg_1852 <= {{mul_ln69_3_fu_845_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln69_5_reg_1882 <= add_ln69_5_fu_922_p2;
        icmp_ln68_reg_1878 <= icmp_ln68_fu_912_p2;
        or_ln68_4_reg_1873[1] <= or_ln68_4_fu_902_p5[1];
or_ln68_4_reg_1873[3] <= or_ln68_4_fu_902_p5[3];
        trunc_ln69_4_reg_1868 <= {{mul_ln69_4_fu_886_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln69_6_reg_1903 <= add_ln69_6_fu_1001_p2;
        icmp_ln70_3_reg_1893 <= icmp_ln70_3_fu_976_p2;
        trunc_ln69_5_reg_1898 <= {{mul_ln69_5_fu_985_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln69_7_reg_1914 <= add_ln69_7_fu_1030_p2;
        trunc_ln69_6_reg_1909 <= {{mul_ln69_6_fu_1014_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln69_reg_1735 <= add_ln69_fu_601_p2;
        add_ln70_reg_1741 <= add_ln70_fu_607_p2;
        tmp_3_reg_1747 <= {{ap_sig_allocacmp_v24_1[3:1]}};
        tmp_5_reg_1752 <= {{ap_sig_allocacmp_v24_1[3:2]}};
        tmp_6_reg_1774 <= ap_sig_allocacmp_v24_1[32'd1];
        tmp_reg_1763 <= ap_sig_allocacmp_v24_1[32'd3];
        trunc_ln68_1_reg_1769 <= trunc_ln68_1_fu_651_p1;
        trunc_ln68_reg_1758 <= trunc_ln68_fu_639_p1;
        v24_1_reg_1729 <= ap_sig_allocacmp_v24_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln70_4_reg_1925 <= icmp_ln70_4_fu_1055_p2;
        trunc_ln69_7_reg_1930 <= {{mul_ln69_7_fu_1064_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        icmp_ln70_5_reg_1940 <= icmp_ln70_5_fu_1105_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        icmp_ln70_6_reg_1970 <= icmp_ln70_6_fu_1145_p2;
        icmp_ln70_7_reg_1980 <= icmp_ln70_7_fu_1167_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        reg_570 <= grp_fu_4436_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage63_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63)) | ((1'b0 == ap_block_pp0_stage55_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage55)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
        reg_575 <= grp_fu_4418_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        select_ln70_1_reg_2045 <= select_ln70_1_fu_1287_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        select_ln70_2_reg_2090 <= select_ln70_2_fu_1351_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        select_ln70_3_reg_2135 <= select_ln70_3_fu_1415_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        select_ln70_4_reg_2185 <= select_ln70_4_fu_1483_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        select_ln70_5_reg_2235 <= select_ln70_5_fu_1547_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        select_ln70_6_reg_2285 <= select_ln70_6_fu_1611_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        select_ln70_7_reg_2335 <= select_ln70_7_fu_1675_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        select_ln70_reg_2000 <= select_ln70_fu_1223_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        v25_1_reg_2030 <= v25_1_fu_1258_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        v25_2_reg_2075 <= v25_2_fu_1322_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        v25_3_reg_2120 <= v25_3_fu_1386_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        v25_4_reg_2165 <= v25_4_fu_1450_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        v25_5_reg_2220 <= v25_5_fu_1518_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        v25_6_reg_2270 <= v25_6_fu_1582_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        v25_7_reg_2320 <= v25_7_fu_1646_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v25_reg_1985 <= v25_fu_1189_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        v27_1_reg_2210 <= grp_fu_4436_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        v27_2_reg_2260 <= grp_fu_4436_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        v27_3_reg_2310 <= grp_fu_4436_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        v27_5_reg_2345 <= grp_fu_4436_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        v27_6_reg_2350 <= grp_fu_4436_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        v27_7_reg_2355 <= grp_fu_4436_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage63_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln68_reg_1878 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage63 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage63 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63) & (ap_loop_exit_ready == 1'b1))) begin
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
        ap_sig_allocacmp_v24_1 = v24_fu_124;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage56) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56)) | ((1'b0 == ap_block_pp0_stage48) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48)) | ((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)))) begin
        grp_fu_561_p0 = reg_575;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_561_p0 = v28_fu_120;
    end else begin
        grp_fu_561_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_561_p1 = v27_7_reg_2355;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_561_p1 = v27_6_reg_2350;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_561_p1 = v27_5_reg_2345;
    end else if (((1'b0 == ap_block_pp0_stage48) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48))) begin
        grp_fu_561_p1 = v27_3_reg_2310;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        grp_fu_561_p1 = v27_2_reg_2260;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_561_p1 = v27_1_reg_2210;
    end else if ((((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage56) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56)))) begin
        grp_fu_561_p1 = reg_570;
    end else begin
        grp_fu_561_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            grp_fu_566_p0 = v25_7_reg_2320;
        end else if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            grp_fu_566_p0 = v25_6_reg_2270;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            grp_fu_566_p0 = v25_5_reg_2220;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            grp_fu_566_p0 = v25_4_reg_2165;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            grp_fu_566_p0 = v25_3_reg_2120;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_566_p0 = v25_2_reg_2075;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_566_p0 = v25_1_reg_2030;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_566_p0 = v25_reg_1985;
        end else begin
            grp_fu_566_p0 = 'bx;
        end
    end else begin
        grp_fu_566_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            grp_fu_566_p1 = v26_7_fu_1682_p1;
        end else if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            grp_fu_566_p1 = v26_6_fu_1626_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            grp_fu_566_p1 = v26_5_fu_1562_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            grp_fu_566_p1 = v26_4_fu_1498_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            grp_fu_566_p1 = v26_3_fu_1430_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_566_p1 = v26_2_fu_1366_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_566_p1 = v26_1_fu_1302_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_566_p1 = v26_fu_1238_p1;
        end else begin
            grp_fu_566_p1 = 'bx;
        end
    end else begin
        grp_fu_566_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            v0_0_address0_local = zext_ln69_15_fu_1618_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            v0_0_address0_local = zext_ln69_14_fu_1554_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            v0_0_address0_local = zext_ln69_13_fu_1490_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            v0_0_address0_local = zext_ln69_12_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_0_address0_local = zext_ln69_9_fu_1358_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_0_address0_local = zext_ln69_6_fu_1294_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_0_address0_local = zext_ln69_3_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_0_address0_local = zext_ln69_fu_1132_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            v0_1_address0_local = zext_ln69_15_fu_1618_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            v0_1_address0_local = zext_ln69_14_fu_1554_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            v0_1_address0_local = zext_ln69_13_fu_1490_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            v0_1_address0_local = zext_ln69_12_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_1_address0_local = zext_ln69_9_fu_1358_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_1_address0_local = zext_ln69_6_fu_1294_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_1_address0_local = zext_ln69_3_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_1_address0_local = zext_ln69_fu_1132_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            v0_2_address0_local = zext_ln69_15_fu_1618_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            v0_2_address0_local = zext_ln69_14_fu_1554_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            v0_2_address0_local = zext_ln69_13_fu_1490_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            v0_2_address0_local = zext_ln69_12_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_2_address0_local = zext_ln69_9_fu_1358_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_2_address0_local = zext_ln69_6_fu_1294_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_2_address0_local = zext_ln69_3_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_2_address0_local = zext_ln69_fu_1132_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            v0_3_address0_local = zext_ln69_15_fu_1618_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            v0_3_address0_local = zext_ln69_14_fu_1554_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            v0_3_address0_local = zext_ln69_13_fu_1490_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            v0_3_address0_local = zext_ln69_12_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_3_address0_local = zext_ln69_9_fu_1358_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_3_address0_local = zext_ln69_6_fu_1294_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_3_address0_local = zext_ln69_3_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_3_address0_local = zext_ln69_fu_1132_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage63_11001) & (1'b1 == ap_CS_fsm_pp0_stage63) & (ap_loop_exit_ready == 1'b1) & (icmp_ln68_reg_1878 == 1'd1))) begin
        v29_12_out_ap_vld = 1'b1;
    end else begin
        v29_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            v6_0_address0_local = zext_ln70_7_fu_1669_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            v6_0_address0_local = zext_ln70_6_fu_1605_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            v6_0_address0_local = zext_ln70_5_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            v6_0_address0_local = zext_ln70_4_fu_1473_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_0_address0_local = zext_ln70_3_fu_1409_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_0_address0_local = zext_ln70_2_fu_1345_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_0_address0_local = zext_ln70_1_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_0_address0_local = zext_ln70_fu_1212_p1;
        end else begin
            v6_0_address0_local = 'bx;
        end
    end else begin
        v6_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            v6_1_address0_local = zext_ln70_7_fu_1669_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            v6_1_address0_local = zext_ln70_6_fu_1605_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            v6_1_address0_local = zext_ln70_5_fu_1541_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            v6_1_address0_local = zext_ln70_4_fu_1473_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_1_address0_local = zext_ln70_3_fu_1409_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_1_address0_local = zext_ln70_2_fu_1345_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_1_address0_local = zext_ln70_1_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_1_address0_local = zext_ln70_fu_1212_p1;
        end else begin
            v6_1_address0_local = 'bx;
        end
    end else begin
        v6_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
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
assign add_ln69_1_fu_709_p2 = (zext_ln69_2_fu_705_p1 + phi_mul);
assign add_ln69_2_fu_771_p2 = (zext_ln69_5_fu_767_p1 + phi_mul);
assign add_ln69_3_fu_811_p2 = (zext_ln69_8_fu_807_p1 + phi_mul);
assign add_ln69_4_fu_873_p2 = (zext_ln69_11_fu_869_p1 + phi_mul);
assign add_ln69_5_fu_922_p2 = (zext_ln68_3_fu_918_p1 + phi_mul);
assign add_ln69_6_fu_1001_p2 = (phi_mul + 10'd6);
assign add_ln69_7_fu_1030_p2 = (phi_mul + 10'd7);
assign add_ln69_fu_601_p2 = (zext_ln68_1_fu_597_p1 + phi_mul);
assign add_ln70_10_fu_830_p2 = ($signed(add_ln70_2_fu_819_p2) + $signed(12'd3036));
assign add_ln70_11_fu_970_p2 = ($signed(add_ln70_3_fu_959_p2) + $signed(12'd3036));
assign add_ln70_12_fu_1049_p2 = ($signed(add_ln70_4_fu_1038_p2) + $signed(12'd3036));
assign add_ln70_13_fu_1099_p2 = ($signed(add_ln70_5_fu_1088_p2) + $signed(12'd3036));
assign add_ln70_14_fu_1140_p2 = ($signed(phi_mul177) + $signed(12'd3042));
assign add_ln70_15_fu_1162_p2 = ($signed(phi_mul177) + $signed(12'd3043));
assign add_ln70_1_fu_736_p2 = (zext_ln69_1_fu_714_p1 + phi_mul177);
assign add_ln70_2_fu_819_p2 = (zext_ln69_4_fu_816_p1 + phi_mul177);
assign add_ln70_3_fu_959_p2 = (zext_ln69_7_fu_956_p1 + phi_mul177);
assign add_ln70_4_fu_1038_p2 = (zext_ln69_10_fu_1035_p1 + phi_mul177);
assign add_ln70_5_fu_1088_p2 = (zext_ln68_2_fu_1085_p1 + phi_mul177);
assign add_ln70_8_fu_687_p2 = ($signed(add_ln70_reg_1741) + $signed(12'd3036));
assign add_ln70_9_fu_747_p2 = ($signed(add_ln70_1_fu_736_p2) + $signed(12'd3036));
assign add_ln70_fu_607_p2 = (zext_ln68_fu_593_p1 + phi_mul177);
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
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage33 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_pp0_stage35 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_pp0_stage37 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_pp0_stage39 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage40 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_pp0_stage48 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage55 = ap_CS_fsm[32'd55];
assign ap_CS_fsm_pp0_stage56 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage63 = ap_CS_fsm[32'd63];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage63;
assign ap_ready = ap_ready_sig;
assign bit_sel1_fu_927_p3 = v24_1_reg_1729[4'd3];
assign grp_fu_1006_p1 = 10'd208;
assign grp_fu_1080_p1 = 10'd208;
assign grp_fu_1111_p1 = 10'd208;
assign grp_fu_1121_p0 = (phi_mul177 + 12'd6);
assign grp_fu_1127_p1 = 10'd208;
assign grp_fu_1156_p0 = (phi_mul177 + 12'd7);
assign grp_fu_1218_p1 = 10'd208;
assign grp_fu_4418_p_ce = 1'b1;
assign grp_fu_4418_p_din0 = grp_fu_561_p0;
assign grp_fu_4418_p_din1 = grp_fu_561_p1;
assign grp_fu_4418_p_opcode = 2'd0;
assign grp_fu_4436_p_ce = 1'b1;
assign grp_fu_4436_p_din0 = grp_fu_566_p0;
assign grp_fu_4436_p_din1 = grp_fu_566_p1;
assign grp_fu_613_p0 = (zext_ln68_fu_593_p1 + phi_mul177);
assign grp_fu_663_p1 = 10'd208;
assign grp_fu_776_p1 = 10'd208;
assign grp_fu_878_p1 = 10'd208;
assign icmp_ln68_fu_912_p2 = ((or_ln68_4_fu_902_p5 == 4'd13) ? 1'b1 : 1'b0);
assign icmp_ln70_1_fu_753_p2 = ((add_ln70_9_fu_747_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign icmp_ln70_2_fu_836_p2 = ((add_ln70_10_fu_830_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign icmp_ln70_3_fu_976_p2 = ((add_ln70_11_fu_970_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign icmp_ln70_4_fu_1055_p2 = ((add_ln70_12_fu_1049_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign icmp_ln70_5_fu_1105_p2 = ((add_ln70_13_fu_1099_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign icmp_ln70_6_fu_1145_p2 = ((add_ln70_14_fu_1140_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign icmp_ln70_7_fu_1167_p2 = ((add_ln70_15_fu_1162_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign icmp_ln70_fu_692_p2 = ((add_ln70_8_fu_687_p2 < 12'd1060) ? 1'b1 : 1'b0);
assign mul_ln69_1_fu_720_p0 = mul_ln69_1_fu_720_p00;
assign mul_ln69_1_fu_720_p00 = add_ln69_1_reg_1794;
assign mul_ln69_1_fu_720_p1 = 21'd1261;
assign mul_ln69_2_fu_784_p0 = mul_ln69_2_fu_784_p00;
assign mul_ln69_2_fu_784_p00 = add_ln69_2_reg_1820;
assign mul_ln69_2_fu_784_p1 = 21'd1261;
assign mul_ln69_3_fu_845_p0 = mul_ln69_3_fu_845_p00;
assign mul_ln69_3_fu_845_p00 = add_ln69_3_reg_1836;
assign mul_ln69_3_fu_845_p1 = 21'd1261;
assign mul_ln69_4_fu_886_p0 = mul_ln69_4_fu_886_p00;
assign mul_ln69_4_fu_886_p00 = add_ln69_4_reg_1862;
assign mul_ln69_4_fu_886_p1 = 21'd1261;
assign mul_ln69_5_fu_985_p0 = mul_ln69_5_fu_985_p00;
assign mul_ln69_5_fu_985_p00 = add_ln69_5_reg_1882;
assign mul_ln69_5_fu_985_p1 = 21'd1261;
assign mul_ln69_6_fu_1014_p0 = mul_ln69_6_fu_1014_p00;
assign mul_ln69_6_fu_1014_p00 = add_ln69_6_reg_1903;
assign mul_ln69_6_fu_1014_p1 = 21'd1261;
assign mul_ln69_7_fu_1064_p0 = mul_ln69_7_fu_1064_p00;
assign mul_ln69_7_fu_1064_p00 = add_ln69_7_reg_1914;
assign mul_ln69_7_fu_1064_p1 = 21'd1261;
assign mul_ln69_fu_671_p0 = mul_ln69_fu_671_p00;
assign mul_ln69_fu_671_p00 = add_ln69_reg_1735;
assign mul_ln69_fu_671_p1 = 21'd1261;
assign or_ln68_1_fu_759_p4 = {{{tmp_5_reg_1752}, {1'd1}}, {trunc_ln68_reg_1758}};
assign or_ln68_2_fu_800_p3 = {{tmp_5_reg_1752}, {2'd3}};
assign or_ln68_3_fu_861_p4 = {{{tmp_reg_1763}, {1'd1}}, {trunc_ln68_1_reg_1769}};
assign or_ln68_4_fu_902_p5 = {{{{tmp_reg_1763}, {1'd1}}, {tmp_6_reg_1774}}, {1'd1}};
assign or_ln_fu_698_p3 = {{tmp_3_reg_1747}, {1'd1}};
assign select_ln70_1_fu_1287_p3 = ((icmp_ln70_1_reg_1810[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign select_ln70_2_fu_1351_p3 = ((icmp_ln70_2_reg_1847[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign select_ln70_3_fu_1415_p3 = ((icmp_ln70_3_reg_1893[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign select_ln70_4_fu_1483_p3 = ((icmp_ln70_4_reg_1925[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign select_ln70_5_fu_1547_p3 = ((icmp_ln70_5_reg_1940[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign select_ln70_6_fu_1611_p3 = ((icmp_ln70_6_reg_1970[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign select_ln70_7_fu_1675_p3 = ((icmp_ln70_7_reg_1980[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign select_ln70_fu_1223_p3 = ((icmp_ln70_reg_1784[0:0] == 1'b1) ? v6_1_q0 : v6_0_q0);
assign trunc_ln68_1_fu_651_p1 = ap_sig_allocacmp_v24_1[1:0];
assign trunc_ln68_2_fu_940_p1 = v24_1_reg_1729[2:0];
assign trunc_ln68_fu_639_p1 = ap_sig_allocacmp_v24_1[0:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v25_1_fu_1258_p2 = v0_0_q0;
assign v25_1_fu_1258_p4 = v0_1_q0;
assign v25_1_fu_1258_p6 = v0_2_q0;
assign v25_1_fu_1258_p8 = v0_3_q0;
assign v25_1_fu_1258_p9 = 'bx;
assign v25_2_fu_1322_p2 = v0_0_q0;
assign v25_2_fu_1322_p4 = v0_1_q0;
assign v25_2_fu_1322_p6 = v0_2_q0;
assign v25_2_fu_1322_p8 = v0_3_q0;
assign v25_2_fu_1322_p9 = 'bx;
assign v25_3_fu_1386_p2 = v0_0_q0;
assign v25_3_fu_1386_p4 = v0_1_q0;
assign v25_3_fu_1386_p6 = v0_2_q0;
assign v25_3_fu_1386_p8 = v0_3_q0;
assign v25_3_fu_1386_p9 = 'bx;
assign v25_4_fu_1450_p2 = v0_0_q0;
assign v25_4_fu_1450_p4 = v0_1_q0;
assign v25_4_fu_1450_p6 = v0_2_q0;
assign v25_4_fu_1450_p8 = v0_3_q0;
assign v25_4_fu_1450_p9 = 'bx;
assign v25_5_fu_1518_p2 = v0_0_q0;
assign v25_5_fu_1518_p4 = v0_1_q0;
assign v25_5_fu_1518_p6 = v0_2_q0;
assign v25_5_fu_1518_p8 = v0_3_q0;
assign v25_5_fu_1518_p9 = 'bx;
assign v25_6_fu_1582_p2 = v0_0_q0;
assign v25_6_fu_1582_p4 = v0_1_q0;
assign v25_6_fu_1582_p6 = v0_2_q0;
assign v25_6_fu_1582_p8 = v0_3_q0;
assign v25_6_fu_1582_p9 = 'bx;
assign v25_7_fu_1646_p2 = v0_0_q0;
assign v25_7_fu_1646_p4 = v0_1_q0;
assign v25_7_fu_1646_p6 = v0_2_q0;
assign v25_7_fu_1646_p8 = v0_3_q0;
assign v25_7_fu_1646_p9 = 'bx;
assign v25_fu_1189_p2 = v0_0_q0;
assign v25_fu_1189_p4 = v0_1_q0;
assign v25_fu_1189_p6 = v0_2_q0;
assign v25_fu_1189_p8 = v0_3_q0;
assign v25_fu_1189_p9 = 'bx;
assign v26_1_fu_1302_p1 = select_ln70_1_reg_2045;
assign v26_2_fu_1366_p1 = select_ln70_2_reg_2090;
assign v26_3_fu_1430_p1 = select_ln70_3_reg_2135;
assign v26_4_fu_1498_p1 = select_ln70_4_reg_2185;
assign v26_5_fu_1562_p1 = select_ln70_5_reg_2235;
assign v26_6_fu_1626_p1 = select_ln70_6_reg_2285;
assign v26_7_fu_1682_p1 = select_ln70_7_reg_2335;
assign v26_fu_1238_p1 = select_ln70_reg_2000;
assign v29_12_out = grp_fu_4418_p_dout0;
assign v6_0_address0 = v6_0_address0_local;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = v6_1_address0_local;
assign v6_1_ce0 = v6_1_ce0_local;
assign xor_ln68_fu_934_p2 = (bit_sel1_fu_927_p3 ^ 1'd1);
assign xor_ln_fu_943_p3 = {{xor_ln68_fu_934_p2}, {trunc_ln68_2_fu_940_p1}};
assign zext_ln68_1_fu_597_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln68_2_fu_1085_p1 = or_ln68_4_reg_1873;
assign zext_ln68_3_fu_918_p1 = or_ln68_4_fu_902_p5;
assign zext_ln68_fu_593_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_10_fu_1035_p1 = or_ln68_3_reg_1857;
assign zext_ln69_11_fu_869_p1 = or_ln68_3_fu_861_p4;
assign zext_ln69_12_fu_1422_p1 = grp_fu_1080_p2;
assign zext_ln69_13_fu_1490_p1 = grp_fu_1111_p2;
assign zext_ln69_14_fu_1554_p1 = grp_fu_1127_p2;
assign zext_ln69_15_fu_1618_p1 = grp_fu_1218_p2;
assign zext_ln69_1_fu_714_p1 = or_ln_reg_1789;
assign zext_ln69_2_fu_705_p1 = or_ln_fu_698_p3;
assign zext_ln69_3_fu_1230_p1 = grp_fu_776_p2;
assign zext_ln69_4_fu_816_p1 = or_ln68_1_reg_1815;
assign zext_ln69_5_fu_767_p1 = or_ln68_1_fu_759_p4;
assign zext_ln69_6_fu_1294_p1 = grp_fu_878_p2;
assign zext_ln69_7_fu_956_p1 = or_ln68_2_reg_1831;
assign zext_ln69_8_fu_807_p1 = or_ln68_2_fu_800_p3;
assign zext_ln69_9_fu_1358_p1 = grp_fu_1006_p2;
assign zext_ln69_fu_1132_p1 = grp_fu_663_p2;
assign zext_ln70_1_fu_1281_p1 = grp_fu_741_p2;
assign zext_ln70_2_fu_1345_p1 = grp_fu_824_p2;
assign zext_ln70_3_fu_1409_p1 = grp_fu_964_p2;
assign zext_ln70_4_fu_1473_p1 = grp_fu_1043_p2;
assign zext_ln70_5_fu_1541_p1 = grp_fu_1093_p2;
assign zext_ln70_6_fu_1605_p1 = grp_fu_1121_p2;
assign zext_ln70_7_fu_1669_p1 = grp_fu_1156_p2;
assign zext_ln70_fu_1212_p1 = grp_fu_613_p2;
always @ (posedge ap_clk) begin
    or_ln_reg_1789[0] <= 1'b1;
    or_ln68_1_reg_1815[1] <= 1'b1;
    or_ln68_2_reg_1831[1:0] <= 2'b11;
    or_ln68_3_reg_1857[2] <= 1'b1;
    or_ln68_4_reg_1873[0] <= 1'b1;
    or_ln68_4_reg_1873[2] <= 1'b1;
end
endmodule 