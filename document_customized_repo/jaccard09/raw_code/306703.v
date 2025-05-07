module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,phi_mul154,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v6_2_address0,v6_2_ce0,v6_2_q0,v6_3_address0,v6_3_ce0,v6_3_q0,v6_4_address0,v6_4_ce0,v6_4_q0,v6_5_address0,v6_5_ce0,v6_5_q0,v6_6_address0,v6_6_ce0,v6_6_q0,v6_7_address0,v6_7_ce0,v6_7_q0,v29_4_out,v29_4_out_ap_vld,grp_fu_8957_p_din0,grp_fu_8957_p_din1,grp_fu_8957_p_opcode,grp_fu_8957_p_dout0,grp_fu_8957_p_ce,grp_fu_8969_p_din0,grp_fu_8969_p_din1,grp_fu_8969_p_dout0,grp_fu_8969_p_ce); 
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
input  [11:0] phi_mul154;
output  [8:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [8:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [8:0] v6_2_address0;
output   v6_2_ce0;
input  [63:0] v6_2_q0;
output  [8:0] v6_3_address0;
output   v6_3_ce0;
input  [63:0] v6_3_q0;
output  [8:0] v6_4_address0;
output   v6_4_ce0;
input  [63:0] v6_4_q0;
output  [8:0] v6_5_address0;
output   v6_5_ce0;
input  [63:0] v6_5_q0;
output  [8:0] v6_6_address0;
output   v6_6_ce0;
input  [63:0] v6_6_q0;
output  [8:0] v6_7_address0;
output   v6_7_ce0;
input  [63:0] v6_7_q0;
output  [63:0] v29_4_out;
output   v29_4_out_ap_vld;
output  [63:0] grp_fu_8957_p_din0;
output  [63:0] grp_fu_8957_p_din1;
output  [0:0] grp_fu_8957_p_opcode;
input  [63:0] grp_fu_8957_p_dout0;
output   grp_fu_8957_p_ce;
output  [63:0] grp_fu_8969_p_din0;
output  [63:0] grp_fu_8969_p_din1;
input  [63:0] grp_fu_8969_p_dout0;
output   grp_fu_8969_p_ce;
reg ap_idle;
reg v29_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [0:0] icmp_ln68_reg_1553;
reg    ap_condition_exit_pp0_iter0_stage31;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_612;
wire    ap_block_pp0_stage31_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] v24_1_reg_1514;
wire   [11:0] add_ln70_fu_634_p2;
reg   [11:0] add_ln70_reg_1521;
reg   [2:0] tmp_1_reg_1527;
wire   [9:0] add_ln69_fu_659_p2;
reg   [9:0] add_ln69_reg_1532;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [2:0] trunc_ln2_reg_1538;
reg   [1:0] trunc_ln1_reg_1543;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [3:0] or_ln_fu_708_p3;
reg   [3:0] or_ln_reg_1548;
wire   [0:0] icmp_ln68_fu_715_p2;
wire   [11:0] add_ln70_1_fu_725_p2;
reg   [11:0] add_ln70_1_reg_1557;
wire   [9:0] add_ln69_1_fu_739_p2;
reg   [9:0] add_ln69_1_reg_1563;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [2:0] trunc_ln70_1_reg_1569;
reg   [1:0] trunc_ln69_1_reg_1574;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [1:0] tmp_3_fu_788_p4;
reg   [1:0] tmp_3_reg_1579;
wire   [3:0] or_ln68_1_fu_797_p3;
reg   [3:0] or_ln68_1_reg_1584;
wire   [11:0] add_ln70_2_fu_809_p2;
reg   [11:0] add_ln70_2_reg_1589;
wire   [9:0] add_ln69_2_fu_823_p2;
reg   [9:0] add_ln69_2_reg_1595;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [2:0] trunc_ln70_2_reg_1601;
reg   [1:0] trunc_ln69_2_reg_1606;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [3:0] or_ln68_2_fu_872_p3;
reg   [3:0] or_ln68_2_reg_1611;
wire   [11:0] add_ln70_3_fu_883_p2;
reg   [11:0] add_ln70_3_reg_1616;
wire   [9:0] add_ln69_3_fu_897_p2;
reg   [9:0] add_ln69_3_reg_1622;
reg   [2:0] trunc_ln70_3_reg_1628;
reg   [1:0] trunc_ln69_3_reg_1633;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [63:0] v25_fu_970_p11;
reg   [63:0] v25_reg_1658;
wire   [63:0] v26_fu_1037_p19;
reg   [63:0] v26_reg_1703;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire   [63:0] v25_1_fu_1100_p11;
reg   [63:0] v25_1_reg_1728;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [63:0] v26_1_fu_1167_p19;
reg   [63:0] v26_1_reg_1773;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [63:0] v25_2_fu_1230_p11;
reg   [63:0] v25_2_reg_1798;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [63:0] v26_2_fu_1297_p19;
reg   [63:0] v26_2_reg_1843;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [63:0] v25_3_fu_1360_p11;
reg   [63:0] v25_3_reg_1868;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [63:0] v26_3_fu_1427_p19;
reg   [63:0] v26_3_reg_1913;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] v27_reg_1918;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] v27_1_reg_1928;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] v27_2_reg_1933;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] v27_3_reg_1938;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage23_subdone;
wire   [63:0] zext_ln69_fu_946_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln70_fu_993_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln69_1_fu_1076_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln70_1_fu_1123_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln69_4_fu_1206_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln70_2_fu_1253_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln69_7_fu_1336_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln70_3_fu_1383_p1;
wire    ap_block_pp0_stage21;
reg   [63:0] v28_fu_132;
wire    ap_loop_init;
wire    ap_block_pp0_stage24;
reg   [3:0] v24_fu_136;
wire   [3:0] add_ln68_fu_1470_p2;
reg   [3:0] ap_sig_allocacmp_v24_1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage31_01001;
reg    v0_0_ce0_local;
reg   [7:0] v0_0_address0_local;
reg    v0_1_ce0_local;
reg   [7:0] v0_1_address0_local;
reg    v0_2_ce0_local;
reg   [7:0] v0_2_address0_local;
reg    v0_3_ce0_local;
reg   [7:0] v0_3_address0_local;
reg    v6_0_ce0_local;
reg   [8:0] v6_0_address0_local;
reg    v6_1_ce0_local;
reg   [8:0] v6_1_address0_local;
reg    v6_2_ce0_local;
reg   [8:0] v6_2_address0_local;
reg    v6_3_ce0_local;
reg   [8:0] v6_3_address0_local;
reg    v6_4_ce0_local;
reg   [8:0] v6_4_address0_local;
reg    v6_5_ce0_local;
reg   [8:0] v6_5_address0_local;
reg    v6_6_ce0_local;
reg   [8:0] v6_6_address0_local;
reg    v6_7_ce0_local;
reg   [8:0] v6_7_address0_local;
reg   [63:0] grp_fu_603_p0;
reg   [63:0] grp_fu_603_p1;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_608_p0;
reg   [63:0] grp_fu_608_p1;
wire    ap_block_pp0_stage23;
wire   [11:0] zext_ln68_fu_630_p1;
wire   [11:0] grp_fu_640_p0;
wire   [9:0] grp_fu_640_p1;
wire    ap_block_pp0_stage1;
wire   [9:0] zext_ln68_1_fu_656_p1;
wire   [9:0] grp_fu_664_p0;
wire   [8:0] grp_fu_664_p1;
wire   [11:0] mul_ln70_fu_673_p0;
wire   [13:0] mul_ln70_fu_673_p1;
wire   [24:0] mul_ln70_fu_673_p2;
wire    ap_block_pp0_stage2;
wire   [9:0] mul_ln69_fu_692_p0;
wire   [11:0] mul_ln69_fu_692_p1;
wire   [20:0] mul_ln69_fu_692_p2;
wire   [11:0] zext_ln68_2_fu_721_p1;
wire   [11:0] grp_fu_730_p0;
wire   [9:0] grp_fu_730_p1;
wire    ap_block_pp0_stage3;
wire   [9:0] zext_ln68_3_fu_736_p1;
wire   [9:0] grp_fu_744_p0;
wire   [8:0] grp_fu_744_p1;
wire   [11:0] mul_ln70_1_fu_753_p0;
wire   [13:0] mul_ln70_1_fu_753_p1;
wire   [24:0] mul_ln70_1_fu_753_p2;
wire    ap_block_pp0_stage4;
wire   [9:0] mul_ln69_1_fu_772_p0;
wire   [11:0] mul_ln69_1_fu_772_p1;
wire   [20:0] mul_ln69_1_fu_772_p2;
wire   [11:0] zext_ln69_2_fu_805_p1;
wire   [11:0] grp_fu_814_p0;
wire   [9:0] grp_fu_814_p1;
wire    ap_block_pp0_stage5;
wire   [9:0] zext_ln69_3_fu_820_p1;
wire   [9:0] grp_fu_828_p0;
wire   [8:0] grp_fu_828_p1;
wire   [11:0] mul_ln70_2_fu_837_p0;
wire   [13:0] mul_ln70_2_fu_837_p1;
wire   [24:0] mul_ln70_2_fu_837_p2;
wire    ap_block_pp0_stage6;
wire   [9:0] mul_ln69_2_fu_856_p0;
wire   [11:0] mul_ln69_2_fu_856_p1;
wire   [20:0] mul_ln69_2_fu_856_p2;
wire   [11:0] zext_ln69_5_fu_879_p1;
wire   [11:0] grp_fu_888_p0;
wire   [9:0] grp_fu_888_p1;
wire    ap_block_pp0_stage7;
wire   [9:0] zext_ln69_6_fu_894_p1;
wire   [9:0] grp_fu_902_p0;
wire   [8:0] grp_fu_902_p1;
wire   [11:0] mul_ln70_3_fu_911_p0;
wire   [13:0] mul_ln70_3_fu_911_p1;
wire   [24:0] mul_ln70_3_fu_911_p2;
wire   [9:0] mul_ln69_3_fu_930_p0;
wire   [11:0] mul_ln69_3_fu_930_p1;
wire   [20:0] mul_ln69_3_fu_930_p2;
wire   [9:0] grp_fu_664_p2;
wire   [63:0] v25_fu_970_p2;
wire   [63:0] v25_fu_970_p4;
wire   [63:0] v25_fu_970_p6;
wire   [63:0] v25_fu_970_p8;
wire   [63:0] v25_fu_970_p9;
wire   [11:0] grp_fu_640_p2;
wire   [63:0] v26_fu_1037_p2;
wire   [63:0] v26_fu_1037_p4;
wire   [63:0] v26_fu_1037_p6;
wire   [63:0] v26_fu_1037_p8;
wire   [63:0] v26_fu_1037_p10;
wire   [63:0] v26_fu_1037_p12;
wire   [63:0] v26_fu_1037_p14;
wire   [63:0] v26_fu_1037_p16;
wire   [63:0] v26_fu_1037_p17;
wire   [9:0] grp_fu_744_p2;
wire   [63:0] v25_1_fu_1100_p2;
wire   [63:0] v25_1_fu_1100_p4;
wire   [63:0] v25_1_fu_1100_p6;
wire   [63:0] v25_1_fu_1100_p8;
wire   [63:0] v25_1_fu_1100_p9;
wire   [11:0] grp_fu_730_p2;
wire   [63:0] v26_1_fu_1167_p2;
wire   [63:0] v26_1_fu_1167_p4;
wire   [63:0] v26_1_fu_1167_p6;
wire   [63:0] v26_1_fu_1167_p8;
wire   [63:0] v26_1_fu_1167_p10;
wire   [63:0] v26_1_fu_1167_p12;
wire   [63:0] v26_1_fu_1167_p14;
wire   [63:0] v26_1_fu_1167_p16;
wire   [63:0] v26_1_fu_1167_p17;
wire   [9:0] grp_fu_828_p2;
wire   [63:0] v25_2_fu_1230_p2;
wire   [63:0] v25_2_fu_1230_p4;
wire   [63:0] v25_2_fu_1230_p6;
wire   [63:0] v25_2_fu_1230_p8;
wire   [63:0] v25_2_fu_1230_p9;
wire   [11:0] grp_fu_814_p2;
wire   [63:0] v26_2_fu_1297_p2;
wire   [63:0] v26_2_fu_1297_p4;
wire   [63:0] v26_2_fu_1297_p6;
wire   [63:0] v26_2_fu_1297_p8;
wire   [63:0] v26_2_fu_1297_p10;
wire   [63:0] v26_2_fu_1297_p12;
wire   [63:0] v26_2_fu_1297_p14;
wire   [63:0] v26_2_fu_1297_p16;
wire   [63:0] v26_2_fu_1297_p17;
wire   [9:0] grp_fu_902_p2;
wire   [63:0] v25_3_fu_1360_p2;
wire   [63:0] v25_3_fu_1360_p4;
wire   [63:0] v25_3_fu_1360_p6;
wire   [63:0] v25_3_fu_1360_p8;
wire   [63:0] v25_3_fu_1360_p9;
wire   [11:0] grp_fu_888_p2;
wire    ap_block_pp0_stage22;
wire   [63:0] v26_3_fu_1427_p2;
wire   [63:0] v26_3_fu_1427_p4;
wire   [63:0] v26_3_fu_1427_p6;
wire   [63:0] v26_3_fu_1427_p8;
wire   [63:0] v26_3_fu_1427_p10;
wire   [63:0] v26_3_fu_1427_p12;
wire   [63:0] v26_3_fu_1427_p14;
wire   [63:0] v26_3_fu_1427_p16;
wire   [63:0] v26_3_fu_1427_p17;
wire    ap_block_pp0_stage31;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage16_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [20:0] mul_ln69_1_fu_772_p00;
wire   [20:0] mul_ln69_2_fu_856_p00;
wire   [20:0] mul_ln69_3_fu_930_p00;
wire   [20:0] mul_ln69_fu_692_p00;
wire   [24:0] mul_ln70_1_fu_753_p00;
wire   [24:0] mul_ln70_2_fu_837_p00;
wire   [24:0] mul_ln70_3_fu_911_p00;
wire   [24:0] mul_ln70_fu_673_p00;
wire   [1:0] v25_fu_970_p1;
wire   [1:0] v25_fu_970_p3;
wire  signed [1:0] v25_fu_970_p5;
wire  signed [1:0] v25_fu_970_p7;
wire   [2:0] v26_fu_1037_p1;
wire   [2:0] v26_fu_1037_p3;
wire   [2:0] v26_fu_1037_p5;
wire   [2:0] v26_fu_1037_p7;
wire  signed [2:0] v26_fu_1037_p9;
wire  signed [2:0] v26_fu_1037_p11;
wire  signed [2:0] v26_fu_1037_p13;
wire  signed [2:0] v26_fu_1037_p15;
wire   [1:0] v25_1_fu_1100_p1;
wire   [1:0] v25_1_fu_1100_p3;
wire  signed [1:0] v25_1_fu_1100_p5;
wire  signed [1:0] v25_1_fu_1100_p7;
wire   [2:0] v26_1_fu_1167_p1;
wire   [2:0] v26_1_fu_1167_p3;
wire   [2:0] v26_1_fu_1167_p5;
wire   [2:0] v26_1_fu_1167_p7;
wire  signed [2:0] v26_1_fu_1167_p9;
wire  signed [2:0] v26_1_fu_1167_p11;
wire  signed [2:0] v26_1_fu_1167_p13;
wire  signed [2:0] v26_1_fu_1167_p15;
wire   [1:0] v25_2_fu_1230_p1;
wire   [1:0] v25_2_fu_1230_p3;
wire  signed [1:0] v25_2_fu_1230_p5;
wire  signed [1:0] v25_2_fu_1230_p7;
wire   [2:0] v26_2_fu_1297_p1;
wire   [2:0] v26_2_fu_1297_p3;
wire   [2:0] v26_2_fu_1297_p5;
wire   [2:0] v26_2_fu_1297_p7;
wire  signed [2:0] v26_2_fu_1297_p9;
wire  signed [2:0] v26_2_fu_1297_p11;
wire  signed [2:0] v26_2_fu_1297_p13;
wire  signed [2:0] v26_2_fu_1297_p15;
wire   [1:0] v25_3_fu_1360_p1;
wire   [1:0] v25_3_fu_1360_p3;
wire  signed [1:0] v25_3_fu_1360_p5;
wire  signed [1:0] v25_3_fu_1360_p7;
wire   [2:0] v26_3_fu_1427_p1;
wire   [2:0] v26_3_fu_1427_p3;
wire   [2:0] v26_3_fu_1427_p5;
wire   [2:0] v26_3_fu_1427_p7;
wire  signed [2:0] v26_3_fu_1427_p9;
wire  signed [2:0] v26_3_fu_1427_p11;
wire  signed [2:0] v26_3_fu_1427_p13;
wire  signed [2:0] v26_3_fu_1427_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_132 = 64'd0;
#0 v24_fu_136 = 4'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_640_p0),.din1(grp_fu_640_p1),.ce(1'b1),.dout(grp_fu_640_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_664_p0),.din1(grp_fu_664_p1),.ce(1'b1),.dout(grp_fu_664_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U13(.din0(mul_ln70_fu_673_p0),.din1(mul_ln70_fu_673_p1),.dout(mul_ln70_fu_673_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U14(.din0(mul_ln69_fu_692_p0),.din1(mul_ln69_fu_692_p1),.dout(mul_ln69_fu_692_p2));
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_730_p0),.din1(grp_fu_730_p1),.ce(1'b1),.dout(grp_fu_730_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_744_p0),.din1(grp_fu_744_p1),.ce(1'b1),.dout(grp_fu_744_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U17(.din0(mul_ln70_1_fu_753_p0),.din1(mul_ln70_1_fu_753_p1),.dout(mul_ln70_1_fu_753_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U18(.din0(mul_ln69_1_fu_772_p0),.din1(mul_ln69_1_fu_772_p1),.dout(mul_ln69_1_fu_772_p2));
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_814_p0),.din1(grp_fu_814_p1),.ce(1'b1),.dout(grp_fu_814_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_828_p0),.din1(grp_fu_828_p1),.ce(1'b1),.dout(grp_fu_828_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U21(.din0(mul_ln70_2_fu_837_p0),.din1(mul_ln70_2_fu_837_p1),.dout(mul_ln70_2_fu_837_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U22(.din0(mul_ln69_2_fu_856_p0),.din1(mul_ln69_2_fu_856_p1),.dout(mul_ln69_2_fu_856_p2));
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_888_p0),.din1(grp_fu_888_p1),.ce(1'b1),.dout(grp_fu_888_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_902_p0),.din1(grp_fu_902_p1),.ce(1'b1),.dout(grp_fu_902_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U25(.din0(mul_ln70_3_fu_911_p0),.din1(mul_ln70_3_fu_911_p1),.dout(mul_ln70_3_fu_911_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U26(.din0(mul_ln69_3_fu_930_p0),.din1(mul_ln69_3_fu_930_p1),.dout(mul_ln69_3_fu_930_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U27(.din0(v25_fu_970_p2),.din1(v25_fu_970_p4),.din2(v25_fu_970_p6),.din3(v25_fu_970_p8),.def(v25_fu_970_p9),.sel(trunc_ln1_reg_1543),.dout(v25_fu_970_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U28(.din0(v26_fu_1037_p2),.din1(v26_fu_1037_p4),.din2(v26_fu_1037_p6),.din3(v26_fu_1037_p8),.din4(v26_fu_1037_p10),.din5(v26_fu_1037_p12),.din6(v26_fu_1037_p14),.din7(v26_fu_1037_p16),.def(v26_fu_1037_p17),.sel(trunc_ln2_reg_1538),.dout(v26_fu_1037_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U29(.din0(v25_1_fu_1100_p2),.din1(v25_1_fu_1100_p4),.din2(v25_1_fu_1100_p6),.din3(v25_1_fu_1100_p8),.def(v25_1_fu_1100_p9),.sel(trunc_ln69_1_reg_1574),.dout(v25_1_fu_1100_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U30(.din0(v26_1_fu_1167_p2),.din1(v26_1_fu_1167_p4),.din2(v26_1_fu_1167_p6),.din3(v26_1_fu_1167_p8),.din4(v26_1_fu_1167_p10),.din5(v26_1_fu_1167_p12),.din6(v26_1_fu_1167_p14),.din7(v26_1_fu_1167_p16),.def(v26_1_fu_1167_p17),.sel(trunc_ln70_1_reg_1569),.dout(v26_1_fu_1167_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U31(.din0(v25_2_fu_1230_p2),.din1(v25_2_fu_1230_p4),.din2(v25_2_fu_1230_p6),.din3(v25_2_fu_1230_p8),.def(v25_2_fu_1230_p9),.sel(trunc_ln69_2_reg_1606),.dout(v25_2_fu_1230_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U32(.din0(v26_2_fu_1297_p2),.din1(v26_2_fu_1297_p4),.din2(v26_2_fu_1297_p6),.din3(v26_2_fu_1297_p8),.din4(v26_2_fu_1297_p10),.din5(v26_2_fu_1297_p12),.din6(v26_2_fu_1297_p14),.din7(v26_2_fu_1297_p16),.def(v26_2_fu_1297_p17),.sel(trunc_ln70_2_reg_1601),.dout(v26_2_fu_1297_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U33(.din0(v25_3_fu_1360_p2),.din1(v25_3_fu_1360_p4),.din2(v25_3_fu_1360_p6),.din3(v25_3_fu_1360_p8),.def(v25_3_fu_1360_p9),.sel(trunc_ln69_3_reg_1633),.dout(v25_3_fu_1360_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U34(.din0(v26_3_fu_1427_p2),.din1(v26_3_fu_1427_p4),.din2(v26_3_fu_1427_p6),.din3(v26_3_fu_1427_p8),.din4(v26_3_fu_1427_p10),.din5(v26_3_fu_1427_p12),.din6(v26_3_fu_1427_p14),.din7(v26_3_fu_1427_p16),.def(v26_3_fu_1427_p17),.sel(trunc_ln70_3_reg_1628),.dout(v26_3_fu_1427_p19));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage31) | ((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v24_fu_136 <= 4'd0;
    end else if (((icmp_ln68_reg_1553 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        v24_fu_136 <= add_ln68_fu_1470_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v28_fu_132 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        v28_fu_132 <= grp_fu_8957_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln69_1_reg_1563 <= add_ln69_1_fu_739_p2;
        trunc_ln70_1_reg_1569 <= {{mul_ln70_1_fu_753_p2[23:21]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln69_2_reg_1595 <= add_ln69_2_fu_823_p2;
        trunc_ln70_2_reg_1601 <= {{mul_ln70_2_fu_837_p2[23:21]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln69_3_reg_1622 <= add_ln69_3_fu_897_p2;
        trunc_ln70_3_reg_1628 <= {{mul_ln70_3_fu_911_p2[23:21]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln69_reg_1532 <= add_ln69_fu_659_p2;
        trunc_ln2_reg_1538 <= {{mul_ln70_fu_673_p2[23:21]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln70_1_reg_1557 <= add_ln70_1_fu_725_p2;
        icmp_ln68_reg_1553 <= icmp_ln68_fu_715_p2;
        or_ln_reg_1548[3 : 1] <= or_ln_fu_708_p3[3 : 1];
        trunc_ln1_reg_1543 <= {{mul_ln69_fu_692_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln70_2_reg_1589 <= add_ln70_2_fu_809_p2;
        or_ln68_1_reg_1584[3 : 2] <= or_ln68_1_fu_797_p3[3 : 2];
        tmp_3_reg_1579 <= {{v24_1_reg_1514[3:2]}};
        trunc_ln69_1_reg_1574 <= {{mul_ln69_1_fu_772_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln70_3_reg_1616 <= add_ln70_3_fu_883_p2;
        or_ln68_2_reg_1611[3 : 2] <= or_ln68_2_fu_872_p3[3 : 2];
        trunc_ln69_2_reg_1606 <= {{mul_ln69_2_fu_856_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln70_reg_1521 <= add_ln70_fu_634_p2;
        tmp_1_reg_1527 <= {{ap_sig_allocacmp_v24_1[3:1]}};
        v24_1_reg_1514 <= ap_sig_allocacmp_v24_1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
        reg_612 <= grp_fu_8957_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        trunc_ln69_3_reg_1633 <= {{mul_ln69_3_fu_930_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        v25_1_reg_1728 <= v25_1_fu_1100_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        v25_2_reg_1798 <= v25_2_fu_1230_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        v25_3_reg_1868 <= v25_3_fu_1360_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v25_reg_1658 <= v25_fu_970_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        v26_1_reg_1773 <= v26_1_fu_1167_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        v26_2_reg_1843 <= v26_2_fu_1297_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        v26_3_reg_1913 <= v26_3_fu_1427_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        v26_reg_1703 <= v26_fu_1037_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        v27_1_reg_1928 <= grp_fu_8969_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        v27_2_reg_1933 <= grp_fu_8969_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        v27_3_reg_1938 <= grp_fu_8969_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        v27_reg_1918 <= grp_fu_8969_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln68_reg_1553 == 1'd1) & (1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
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
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v24_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_v24_1 = v24_fu_136;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        grp_fu_603_p0 = reg_612;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_603_p0 = v28_fu_132;
    end else begin
        grp_fu_603_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_603_p1 = v27_3_reg_1938;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_603_p1 = v27_2_reg_1933;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_603_p1 = v27_1_reg_1928;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_603_p1 = v27_reg_1918;
    end else begin
        grp_fu_603_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            grp_fu_608_p0 = v25_3_reg_1868;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_608_p0 = v25_2_reg_1798;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_608_p0 = v25_1_reg_1728;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_608_p0 = v25_reg_1658;
        end else begin
            grp_fu_608_p0 = 'bx;
        end
    end else begin
        grp_fu_608_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            grp_fu_608_p1 = v26_3_reg_1913;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_608_p1 = v26_2_reg_1843;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_608_p1 = v26_1_reg_1773;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_608_p1 = v26_reg_1703;
        end else begin
            grp_fu_608_p1 = 'bx;
        end
    end else begin
        grp_fu_608_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_0_address0_local = zext_ln69_7_fu_1336_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_0_address0_local = zext_ln69_4_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_0_address0_local = zext_ln69_1_fu_1076_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_0_address0_local = zext_ln69_fu_946_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_1_address0_local = zext_ln69_7_fu_1336_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_1_address0_local = zext_ln69_4_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_1_address0_local = zext_ln69_1_fu_1076_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_1_address0_local = zext_ln69_fu_946_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_2_address0_local = zext_ln69_7_fu_1336_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_2_address0_local = zext_ln69_4_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_2_address0_local = zext_ln69_1_fu_1076_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_2_address0_local = zext_ln69_fu_946_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_3_address0_local = zext_ln69_7_fu_1336_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_3_address0_local = zext_ln69_4_fu_1206_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_3_address0_local = zext_ln69_1_fu_1076_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_3_address0_local = zext_ln69_fu_946_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln68_reg_1553 == 1'd1) & (1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        v29_4_out_ap_vld = 1'b1;
    end else begin
        v29_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_0_address0_local = zext_ln70_3_fu_1383_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_0_address0_local = zext_ln70_2_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_0_address0_local = zext_ln70_1_fu_1123_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_0_address0_local = zext_ln70_fu_993_p1;
        end else begin
            v6_0_address0_local = 'bx;
        end
    end else begin
        v6_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_1_address0_local = zext_ln70_3_fu_1383_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_1_address0_local = zext_ln70_2_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_1_address0_local = zext_ln70_1_fu_1123_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_1_address0_local = zext_ln70_fu_993_p1;
        end else begin
            v6_1_address0_local = 'bx;
        end
    end else begin
        v6_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_2_address0_local = zext_ln70_3_fu_1383_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_2_address0_local = zext_ln70_2_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_2_address0_local = zext_ln70_1_fu_1123_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_2_address0_local = zext_ln70_fu_993_p1;
        end else begin
            v6_2_address0_local = 'bx;
        end
    end else begin
        v6_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        v6_2_ce0_local = 1'b1;
    end else begin
        v6_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_3_address0_local = zext_ln70_3_fu_1383_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_3_address0_local = zext_ln70_2_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_3_address0_local = zext_ln70_1_fu_1123_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_3_address0_local = zext_ln70_fu_993_p1;
        end else begin
            v6_3_address0_local = 'bx;
        end
    end else begin
        v6_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        v6_3_ce0_local = 1'b1;
    end else begin
        v6_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_4_address0_local = zext_ln70_3_fu_1383_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_4_address0_local = zext_ln70_2_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_4_address0_local = zext_ln70_1_fu_1123_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_4_address0_local = zext_ln70_fu_993_p1;
        end else begin
            v6_4_address0_local = 'bx;
        end
    end else begin
        v6_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        v6_4_ce0_local = 1'b1;
    end else begin
        v6_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_5_address0_local = zext_ln70_3_fu_1383_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_5_address0_local = zext_ln70_2_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_5_address0_local = zext_ln70_1_fu_1123_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_5_address0_local = zext_ln70_fu_993_p1;
        end else begin
            v6_5_address0_local = 'bx;
        end
    end else begin
        v6_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        v6_5_ce0_local = 1'b1;
    end else begin
        v6_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_6_address0_local = zext_ln70_3_fu_1383_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_6_address0_local = zext_ln70_2_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_6_address0_local = zext_ln70_1_fu_1123_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_6_address0_local = zext_ln70_fu_993_p1;
        end else begin
            v6_6_address0_local = 'bx;
        end
    end else begin
        v6_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        v6_6_ce0_local = 1'b1;
    end else begin
        v6_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_7_address0_local = zext_ln70_3_fu_1383_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_7_address0_local = zext_ln70_2_fu_1253_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_7_address0_local = zext_ln70_1_fu_1123_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_7_address0_local = zext_ln70_fu_993_p1;
        end else begin
            v6_7_address0_local = 'bx;
        end
    end else begin
        v6_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        v6_7_ce0_local = 1'b1;
    end else begin
        v6_7_ce0_local = 1'b0;
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
assign add_ln68_fu_1470_p2 = (v24_1_reg_1514 + 4'd4);
assign add_ln69_1_fu_739_p2 = (zext_ln68_3_fu_736_p1 + phi_mul);
assign add_ln69_2_fu_823_p2 = (zext_ln69_3_fu_820_p1 + phi_mul);
assign add_ln69_3_fu_897_p2 = (zext_ln69_6_fu_894_p1 + phi_mul);
assign add_ln69_fu_659_p2 = (zext_ln68_1_fu_656_p1 + phi_mul);
assign add_ln70_1_fu_725_p2 = (zext_ln68_2_fu_721_p1 + phi_mul154);
assign add_ln70_2_fu_809_p2 = (zext_ln69_2_fu_805_p1 + phi_mul154);
assign add_ln70_3_fu_883_p2 = (zext_ln69_5_fu_879_p1 + phi_mul154);
assign add_ln70_fu_634_p2 = (zext_ln68_fu_630_p1 + phi_mul154);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
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
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_01001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage31;
assign ap_ready = ap_ready_sig;
assign grp_fu_640_p0 = (zext_ln68_fu_630_p1 + phi_mul154);
assign grp_fu_640_p1 = 12'd265;
assign grp_fu_664_p0 = (zext_ln68_1_fu_656_p1 + phi_mul);
assign grp_fu_664_p1 = 10'd208;
assign grp_fu_730_p0 = (zext_ln68_2_fu_721_p1 + phi_mul154);
assign grp_fu_730_p1 = 12'd265;
assign grp_fu_744_p0 = (zext_ln68_3_fu_736_p1 + phi_mul);
assign grp_fu_744_p1 = 10'd208;
assign grp_fu_814_p0 = (zext_ln69_2_fu_805_p1 + phi_mul154);
assign grp_fu_814_p1 = 12'd265;
assign grp_fu_828_p0 = (zext_ln69_3_fu_820_p1 + phi_mul);
assign grp_fu_828_p1 = 10'd208;
assign grp_fu_888_p0 = (zext_ln69_5_fu_879_p1 + phi_mul154);
assign grp_fu_888_p1 = 12'd265;
assign grp_fu_8957_p_ce = 1'b1;
assign grp_fu_8957_p_din0 = grp_fu_603_p0;
assign grp_fu_8957_p_din1 = grp_fu_603_p1;
assign grp_fu_8957_p_opcode = 2'd0;
assign grp_fu_8969_p_ce = 1'b1;
assign grp_fu_8969_p_din0 = grp_fu_608_p0;
assign grp_fu_8969_p_din1 = grp_fu_608_p1;
assign grp_fu_902_p0 = (zext_ln69_6_fu_894_p1 + phi_mul);
assign grp_fu_902_p1 = 10'd208;
assign icmp_ln68_fu_715_p2 = ((or_ln_fu_708_p3 == 4'd13) ? 1'b1 : 1'b0);
assign mul_ln69_1_fu_772_p0 = mul_ln69_1_fu_772_p00;
assign mul_ln69_1_fu_772_p00 = add_ln69_1_reg_1563;
assign mul_ln69_1_fu_772_p1 = 21'd1261;
assign mul_ln69_2_fu_856_p0 = mul_ln69_2_fu_856_p00;
assign mul_ln69_2_fu_856_p00 = add_ln69_2_reg_1595;
assign mul_ln69_2_fu_856_p1 = 21'd1261;
assign mul_ln69_3_fu_930_p0 = mul_ln69_3_fu_930_p00;
assign mul_ln69_3_fu_930_p00 = add_ln69_3_reg_1622;
assign mul_ln69_3_fu_930_p1 = 21'd1261;
assign mul_ln69_fu_692_p0 = mul_ln69_fu_692_p00;
assign mul_ln69_fu_692_p00 = add_ln69_reg_1532;
assign mul_ln69_fu_692_p1 = 21'd1261;
assign mul_ln70_1_fu_753_p0 = mul_ln70_1_fu_753_p00;
assign mul_ln70_1_fu_753_p00 = add_ln70_1_reg_1557;
assign mul_ln70_1_fu_753_p1 = 25'd7914;
assign mul_ln70_2_fu_837_p0 = mul_ln70_2_fu_837_p00;
assign mul_ln70_2_fu_837_p00 = add_ln70_2_reg_1589;
assign mul_ln70_2_fu_837_p1 = 25'd7914;
assign mul_ln70_3_fu_911_p0 = mul_ln70_3_fu_911_p00;
assign mul_ln70_3_fu_911_p00 = add_ln70_3_reg_1616;
assign mul_ln70_3_fu_911_p1 = 25'd7914;
assign mul_ln70_fu_673_p0 = mul_ln70_fu_673_p00;
assign mul_ln70_fu_673_p00 = add_ln70_reg_1521;
assign mul_ln70_fu_673_p1 = 25'd7914;
assign or_ln68_1_fu_797_p3 = {{tmp_3_fu_788_p4}, {2'd2}};
assign or_ln68_2_fu_872_p3 = {{tmp_3_reg_1579}, {2'd3}};
assign or_ln_fu_708_p3 = {{tmp_1_reg_1527}, {1'd1}};
assign tmp_3_fu_788_p4 = {{v24_1_reg_1514[3:2]}};
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v25_1_fu_1100_p2 = v0_0_q0;
assign v25_1_fu_1100_p4 = v0_1_q0;
assign v25_1_fu_1100_p6 = v0_2_q0;
assign v25_1_fu_1100_p8 = v0_3_q0;
assign v25_1_fu_1100_p9 = 'bx;
assign v25_2_fu_1230_p2 = v0_0_q0;
assign v25_2_fu_1230_p4 = v0_1_q0;
assign v25_2_fu_1230_p6 = v0_2_q0;
assign v25_2_fu_1230_p8 = v0_3_q0;
assign v25_2_fu_1230_p9 = 'bx;
assign v25_3_fu_1360_p2 = v0_0_q0;
assign v25_3_fu_1360_p4 = v0_1_q0;
assign v25_3_fu_1360_p6 = v0_2_q0;
assign v25_3_fu_1360_p8 = v0_3_q0;
assign v25_3_fu_1360_p9 = 'bx;
assign v25_fu_970_p2 = v0_0_q0;
assign v25_fu_970_p4 = v0_1_q0;
assign v25_fu_970_p6 = v0_2_q0;
assign v25_fu_970_p8 = v0_3_q0;
assign v25_fu_970_p9 = 'bx;
assign v26_1_fu_1167_p10 = v6_4_q0;
assign v26_1_fu_1167_p12 = v6_5_q0;
assign v26_1_fu_1167_p14 = v6_6_q0;
assign v26_1_fu_1167_p16 = v6_7_q0;
assign v26_1_fu_1167_p17 = 'bx;
assign v26_1_fu_1167_p2 = v6_0_q0;
assign v26_1_fu_1167_p4 = v6_1_q0;
assign v26_1_fu_1167_p6 = v6_2_q0;
assign v26_1_fu_1167_p8 = v6_3_q0;
assign v26_2_fu_1297_p10 = v6_4_q0;
assign v26_2_fu_1297_p12 = v6_5_q0;
assign v26_2_fu_1297_p14 = v6_6_q0;
assign v26_2_fu_1297_p16 = v6_7_q0;
assign v26_2_fu_1297_p17 = 'bx;
assign v26_2_fu_1297_p2 = v6_0_q0;
assign v26_2_fu_1297_p4 = v6_1_q0;
assign v26_2_fu_1297_p6 = v6_2_q0;
assign v26_2_fu_1297_p8 = v6_3_q0;
assign v26_3_fu_1427_p10 = v6_4_q0;
assign v26_3_fu_1427_p12 = v6_5_q0;
assign v26_3_fu_1427_p14 = v6_6_q0;
assign v26_3_fu_1427_p16 = v6_7_q0;
assign v26_3_fu_1427_p17 = 'bx;
assign v26_3_fu_1427_p2 = v6_0_q0;
assign v26_3_fu_1427_p4 = v6_1_q0;
assign v26_3_fu_1427_p6 = v6_2_q0;
assign v26_3_fu_1427_p8 = v6_3_q0;
assign v26_fu_1037_p10 = v6_4_q0;
assign v26_fu_1037_p12 = v6_5_q0;
assign v26_fu_1037_p14 = v6_6_q0;
assign v26_fu_1037_p16 = v6_7_q0;
assign v26_fu_1037_p17 = 'bx;
assign v26_fu_1037_p2 = v6_0_q0;
assign v26_fu_1037_p4 = v6_1_q0;
assign v26_fu_1037_p6 = v6_2_q0;
assign v26_fu_1037_p8 = v6_3_q0;
assign v29_4_out = grp_fu_8957_p_dout0;
assign v6_0_address0 = v6_0_address0_local;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = v6_1_address0_local;
assign v6_1_ce0 = v6_1_ce0_local;
assign v6_2_address0 = v6_2_address0_local;
assign v6_2_ce0 = v6_2_ce0_local;
assign v6_3_address0 = v6_3_address0_local;
assign v6_3_ce0 = v6_3_ce0_local;
assign v6_4_address0 = v6_4_address0_local;
assign v6_4_ce0 = v6_4_ce0_local;
assign v6_5_address0 = v6_5_address0_local;
assign v6_5_ce0 = v6_5_ce0_local;
assign v6_6_address0 = v6_6_address0_local;
assign v6_6_ce0 = v6_6_ce0_local;
assign v6_7_address0 = v6_7_address0_local;
assign v6_7_ce0 = v6_7_ce0_local;
assign zext_ln68_1_fu_656_p1 = v24_1_reg_1514;
assign zext_ln68_2_fu_721_p1 = or_ln_fu_708_p3;
assign zext_ln68_3_fu_736_p1 = or_ln_reg_1548;
assign zext_ln68_fu_630_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_1_fu_1076_p1 = grp_fu_744_p2;
assign zext_ln69_2_fu_805_p1 = or_ln68_1_fu_797_p3;
assign zext_ln69_3_fu_820_p1 = or_ln68_1_reg_1584;
assign zext_ln69_4_fu_1206_p1 = grp_fu_828_p2;
assign zext_ln69_5_fu_879_p1 = or_ln68_2_fu_872_p3;
assign zext_ln69_6_fu_894_p1 = or_ln68_2_reg_1611;
assign zext_ln69_7_fu_1336_p1 = grp_fu_902_p2;
assign zext_ln69_fu_946_p1 = grp_fu_664_p2;
assign zext_ln70_1_fu_1123_p1 = grp_fu_730_p2;
assign zext_ln70_2_fu_1253_p1 = grp_fu_814_p2;
assign zext_ln70_3_fu_1383_p1 = grp_fu_888_p2;
assign zext_ln70_fu_993_p1 = grp_fu_640_p2;
always @ (posedge ap_clk) begin
    or_ln_reg_1548[0] <= 1'b1;
    or_ln68_1_reg_1584[1:0] <= 2'b10;
    or_ln68_2_reg_1611[1:0] <= 2'b11;
end
endmodule 