
module backprop_backprop_Pipeline_mvp_product_loop2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,weights2_0_address0,weights2_0_ce0,weights2_0_q0,weights2_8_address0,weights2_8_ce0,weights2_8_q0,weights2_16_address0,weights2_16_ce0,weights2_16_q0,weights2_24_address0,weights2_24_ce0,weights2_24_q0,activations1_address0,activations1_ce0,activations1_q0,activations1_8_address0,activations1_8_ce0,activations1_8_q0,activations1_16_address0,activations1_16_ce0,activations1_16_q0,activations1_24_address0,activations1_24_ce0,activations1_24_q0,weights2_1_address0,weights2_1_ce0,weights2_1_q0,weights2_9_address0,weights2_9_ce0,weights2_9_q0,weights2_17_address0,weights2_17_ce0,weights2_17_q0,weights2_25_address0,weights2_25_ce0,weights2_25_q0,activations1_1_address0,activations1_1_ce0,activations1_1_q0,activations1_9_address0,activations1_9_ce0,activations1_9_q0,activations1_17_address0,activations1_17_ce0,activations1_17_q0,activations1_25_address0,activations1_25_ce0,activations1_25_q0,weights2_2_address0,weights2_2_ce0,weights2_2_q0,weights2_10_address0,weights2_10_ce0,weights2_10_q0,weights2_18_address0,weights2_18_ce0,weights2_18_q0,weights2_26_address0,weights2_26_ce0,weights2_26_q0,activations1_2_address0,activations1_2_ce0,activations1_2_q0,activations1_10_address0,activations1_10_ce0,activations1_10_q0,activations1_18_address0,activations1_18_ce0,activations1_18_q0,activations1_26_address0,activations1_26_ce0,activations1_26_q0,weights2_3_address0,weights2_3_ce0,weights2_3_q0,weights2_11_address0,weights2_11_ce0,weights2_11_q0,weights2_19_address0,weights2_19_ce0,weights2_19_q0,weights2_27_address0,weights2_27_ce0,weights2_27_q0,activations1_3_address0,activations1_3_ce0,activations1_3_q0,activations1_11_address0,activations1_11_ce0,activations1_11_q0,activations1_19_address0,activations1_19_ce0,activations1_19_q0,activations1_27_address0,activations1_27_ce0,activations1_27_q0,weights2_4_address0,weights2_4_ce0,weights2_4_q0,weights2_12_address0,weights2_12_ce0,weights2_12_q0,weights2_20_address0,weights2_20_ce0,weights2_20_q0,weights2_28_address0,weights2_28_ce0,weights2_28_q0,activations1_4_address0,activations1_4_ce0,activations1_4_q0,activations1_12_address0,activations1_12_ce0,activations1_12_q0,activations1_20_address0,activations1_20_ce0,activations1_20_q0,activations1_28_address0,activations1_28_ce0,activations1_28_q0,weights2_5_address0,weights2_5_ce0,weights2_5_q0,weights2_13_address0,weights2_13_ce0,weights2_13_q0,weights2_21_address0,weights2_21_ce0,weights2_21_q0,weights2_29_address0,weights2_29_ce0,weights2_29_q0,activations1_5_address0,activations1_5_ce0,activations1_5_q0,activations1_13_address0,activations1_13_ce0,activations1_13_q0,activations1_21_address0,activations1_21_ce0,activations1_21_q0,activations1_29_address0,activations1_29_ce0,activations1_29_q0,weights2_6_address0,weights2_6_ce0,weights2_6_q0,weights2_14_address0,weights2_14_ce0,weights2_14_q0,weights2_22_address0,weights2_22_ce0,weights2_22_q0,weights2_30_address0,weights2_30_ce0,weights2_30_q0,activations1_6_address0,activations1_6_ce0,activations1_6_q0,activations1_14_address0,activations1_14_ce0,activations1_14_q0,activations1_22_address0,activations1_22_ce0,activations1_22_q0,activations1_30_address0,activations1_30_ce0,activations1_30_q0,weights2_7_address0,weights2_7_ce0,weights2_7_q0,weights2_15_address0,weights2_15_ce0,weights2_15_q0,weights2_23_address0,weights2_23_ce0,weights2_23_q0,weights2_31_address0,weights2_31_ce0,weights2_31_q0,activations1_7_address0,activations1_7_ce0,activations1_7_q0,activations1_15_address0,activations1_15_ce0,activations1_15_q0,activations1_23_address0,activations1_23_ce0,activations1_23_q0,activations1_31_address0,activations1_31_ce0,activations1_31_q0,add114_i_out,add114_i_out_ap_vld,grp_fu_8393_p_din0,grp_fu_8393_p_din1,grp_fu_8393_p_opcode,grp_fu_8393_p_dout0,grp_fu_8393_p_ce,grp_fu_6440_p_din0,grp_fu_6440_p_din1,grp_fu_6440_p_dout0,grp_fu_6440_p_ce);  
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
input  [6:0] empty;
output  [6:0] weights2_0_address0;
output   weights2_0_ce0;
input  [63:0] weights2_0_q0;
output  [6:0] weights2_8_address0;
output   weights2_8_ce0;
input  [63:0] weights2_8_q0;
output  [6:0] weights2_16_address0;
output   weights2_16_ce0;
input  [63:0] weights2_16_q0;
output  [6:0] weights2_24_address0;
output   weights2_24_ce0;
input  [63:0] weights2_24_q0;
output  [0:0] activations1_address0;
output   activations1_ce0;
input  [63:0] activations1_q0;
output  [0:0] activations1_8_address0;
output   activations1_8_ce0;
input  [63:0] activations1_8_q0;
output  [0:0] activations1_16_address0;
output   activations1_16_ce0;
input  [63:0] activations1_16_q0;
output  [0:0] activations1_24_address0;
output   activations1_24_ce0;
input  [63:0] activations1_24_q0;
output  [6:0] weights2_1_address0;
output   weights2_1_ce0;
input  [63:0] weights2_1_q0;
output  [6:0] weights2_9_address0;
output   weights2_9_ce0;
input  [63:0] weights2_9_q0;
output  [6:0] weights2_17_address0;
output   weights2_17_ce0;
input  [63:0] weights2_17_q0;
output  [6:0] weights2_25_address0;
output   weights2_25_ce0;
input  [63:0] weights2_25_q0;
output  [0:0] activations1_1_address0;
output   activations1_1_ce0;
input  [63:0] activations1_1_q0;
output  [0:0] activations1_9_address0;
output   activations1_9_ce0;
input  [63:0] activations1_9_q0;
output  [0:0] activations1_17_address0;
output   activations1_17_ce0;
input  [63:0] activations1_17_q0;
output  [0:0] activations1_25_address0;
output   activations1_25_ce0;
input  [63:0] activations1_25_q0;
output  [6:0] weights2_2_address0;
output   weights2_2_ce0;
input  [63:0] weights2_2_q0;
output  [6:0] weights2_10_address0;
output   weights2_10_ce0;
input  [63:0] weights2_10_q0;
output  [6:0] weights2_18_address0;
output   weights2_18_ce0;
input  [63:0] weights2_18_q0;
output  [6:0] weights2_26_address0;
output   weights2_26_ce0;
input  [63:0] weights2_26_q0;
output  [0:0] activations1_2_address0;
output   activations1_2_ce0;
input  [63:0] activations1_2_q0;
output  [0:0] activations1_10_address0;
output   activations1_10_ce0;
input  [63:0] activations1_10_q0;
output  [0:0] activations1_18_address0;
output   activations1_18_ce0;
input  [63:0] activations1_18_q0;
output  [0:0] activations1_26_address0;
output   activations1_26_ce0;
input  [63:0] activations1_26_q0;
output  [6:0] weights2_3_address0;
output   weights2_3_ce0;
input  [63:0] weights2_3_q0;
output  [6:0] weights2_11_address0;
output   weights2_11_ce0;
input  [63:0] weights2_11_q0;
output  [6:0] weights2_19_address0;
output   weights2_19_ce0;
input  [63:0] weights2_19_q0;
output  [6:0] weights2_27_address0;
output   weights2_27_ce0;
input  [63:0] weights2_27_q0;
output  [0:0] activations1_3_address0;
output   activations1_3_ce0;
input  [63:0] activations1_3_q0;
output  [0:0] activations1_11_address0;
output   activations1_11_ce0;
input  [63:0] activations1_11_q0;
output  [0:0] activations1_19_address0;
output   activations1_19_ce0;
input  [63:0] activations1_19_q0;
output  [0:0] activations1_27_address0;
output   activations1_27_ce0;
input  [63:0] activations1_27_q0;
output  [6:0] weights2_4_address0;
output   weights2_4_ce0;
input  [63:0] weights2_4_q0;
output  [6:0] weights2_12_address0;
output   weights2_12_ce0;
input  [63:0] weights2_12_q0;
output  [6:0] weights2_20_address0;
output   weights2_20_ce0;
input  [63:0] weights2_20_q0;
output  [6:0] weights2_28_address0;
output   weights2_28_ce0;
input  [63:0] weights2_28_q0;
output  [0:0] activations1_4_address0;
output   activations1_4_ce0;
input  [63:0] activations1_4_q0;
output  [0:0] activations1_12_address0;
output   activations1_12_ce0;
input  [63:0] activations1_12_q0;
output  [0:0] activations1_20_address0;
output   activations1_20_ce0;
input  [63:0] activations1_20_q0;
output  [0:0] activations1_28_address0;
output   activations1_28_ce0;
input  [63:0] activations1_28_q0;
output  [6:0] weights2_5_address0;
output   weights2_5_ce0;
input  [63:0] weights2_5_q0;
output  [6:0] weights2_13_address0;
output   weights2_13_ce0;
input  [63:0] weights2_13_q0;
output  [6:0] weights2_21_address0;
output   weights2_21_ce0;
input  [63:0] weights2_21_q0;
output  [6:0] weights2_29_address0;
output   weights2_29_ce0;
input  [63:0] weights2_29_q0;
output  [0:0] activations1_5_address0;
output   activations1_5_ce0;
input  [63:0] activations1_5_q0;
output  [0:0] activations1_13_address0;
output   activations1_13_ce0;
input  [63:0] activations1_13_q0;
output  [0:0] activations1_21_address0;
output   activations1_21_ce0;
input  [63:0] activations1_21_q0;
output  [0:0] activations1_29_address0;
output   activations1_29_ce0;
input  [63:0] activations1_29_q0;
output  [6:0] weights2_6_address0;
output   weights2_6_ce0;
input  [63:0] weights2_6_q0;
output  [6:0] weights2_14_address0;
output   weights2_14_ce0;
input  [63:0] weights2_14_q0;
output  [6:0] weights2_22_address0;
output   weights2_22_ce0;
input  [63:0] weights2_22_q0;
output  [6:0] weights2_30_address0;
output   weights2_30_ce0;
input  [63:0] weights2_30_q0;
output  [0:0] activations1_6_address0;
output   activations1_6_ce0;
input  [63:0] activations1_6_q0;
output  [0:0] activations1_14_address0;
output   activations1_14_ce0;
input  [63:0] activations1_14_q0;
output  [0:0] activations1_22_address0;
output   activations1_22_ce0;
input  [63:0] activations1_22_q0;
output  [0:0] activations1_30_address0;
output   activations1_30_ce0;
input  [63:0] activations1_30_q0;
output  [6:0] weights2_7_address0;
output   weights2_7_ce0;
input  [63:0] weights2_7_q0;
output  [6:0] weights2_15_address0;
output   weights2_15_ce0;
input  [63:0] weights2_15_q0;
output  [6:0] weights2_23_address0;
output   weights2_23_ce0;
input  [63:0] weights2_23_q0;
output  [6:0] weights2_31_address0;
output   weights2_31_ce0;
input  [63:0] weights2_31_q0;
output  [0:0] activations1_7_address0;
output   activations1_7_ce0;
input  [63:0] activations1_7_q0;
output  [0:0] activations1_15_address0;
output   activations1_15_ce0;
input  [63:0] activations1_15_q0;
output  [0:0] activations1_23_address0;
output   activations1_23_ce0;
input  [63:0] activations1_23_q0;
output  [0:0] activations1_31_address0;
output   activations1_31_ce0;
input  [63:0] activations1_31_q0;
output  [63:0] add114_i_out;
output   add114_i_out_ap_vld;
output  [63:0] grp_fu_8393_p_din0;
output  [63:0] grp_fu_8393_p_din1;
output  [0:0] grp_fu_8393_p_opcode;
input  [63:0] grp_fu_8393_p_dout0;
output   grp_fu_8393_p_ce;
output  [63:0] grp_fu_6440_p_din0;
output  [63:0] grp_fu_6440_p_din1;
input  [63:0] grp_fu_6440_p_dout0;
output   grp_fu_6440_p_ce;
reg ap_idle;
reg add114_i_out_ap_vld;
(* fsm_encoding = "none" *) reg   [63:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_16_reg_1724;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
reg   [63:0] reg_1047;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40_11001;
wire    ap_CS_fsm_pp0_stage48;
wire    ap_block_pp0_stage48_11001;
wire    ap_CS_fsm_pp0_stage56;
wire    ap_block_pp0_stage56_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] j_2_reg_1718;
wire   [63:0] tmp_s_fu_1184_p11;
reg   [63:0] tmp_s_reg_2048;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_188_fu_1208_p11;
reg   [63:0] tmp_188_reg_2053;
wire   [63:0] tmp_189_fu_1248_p11;
reg   [63:0] tmp_189_reg_2058;
wire   [63:0] tmp_190_fu_1272_p11;
reg   [63:0] tmp_190_reg_2063;
wire   [63:0] tmp_191_fu_1312_p11;
reg   [63:0] tmp_191_reg_2068;
wire   [63:0] tmp_192_fu_1336_p11;
reg   [63:0] tmp_192_reg_2073;
wire   [63:0] tmp_193_fu_1376_p11;
reg   [63:0] tmp_193_reg_2078;
wire   [63:0] tmp_194_fu_1400_p11;
reg   [63:0] tmp_194_reg_2083;
wire   [63:0] tmp_195_fu_1440_p11;
reg   [63:0] tmp_195_reg_2088;
wire   [63:0] tmp_196_fu_1464_p11;
reg   [63:0] tmp_196_reg_2093;
wire   [63:0] tmp_197_fu_1504_p11;
reg   [63:0] tmp_197_reg_2098;
wire   [63:0] tmp_198_fu_1528_p11;
reg   [63:0] tmp_198_reg_2103;
wire   [63:0] tmp_199_fu_1568_p11;
reg   [63:0] tmp_199_reg_2108;
wire   [63:0] tmp_200_fu_1592_p11;
reg   [63:0] tmp_200_reg_2113;
wire   [63:0] tmp_201_fu_1632_p11;
reg   [63:0] tmp_201_reg_2118;
wire   [63:0] tmp_202_fu_1656_p11;
reg   [63:0] tmp_202_reg_2123;
reg   [63:0] mul8_i_reg_2128;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul8_1_i_reg_2138;
reg   [63:0] mul8_2_i_reg_2143;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul8_3_i_reg_2148;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] mul8_4_i_reg_2153;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] mul8_5_i_reg_2158;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] mul8_6_i_reg_2163;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] mul8_7_i_reg_2168;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln47_fu_1129_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln43_1_fu_1087_p1;
reg   [63:0] add114_i_fu_186;
wire    ap_block_pp0_stage8;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [6:0] j_fu_190;
wire   [6:0] add_ln46_fu_1684_p2;
wire    ap_block_pp0_stage63_11001;
reg   [6:0] ap_sig_allocacmp_j_2;
wire    ap_block_pp0_stage8_01001;
reg    weights2_0_ce0_local;
reg    weights2_8_ce0_local;
reg    weights2_16_ce0_local;
reg    weights2_24_ce0_local;
reg    activations1_ce0_local;
reg    activations1_8_ce0_local;
reg    activations1_16_ce0_local;
reg    activations1_24_ce0_local;
reg    weights2_1_ce0_local;
reg    weights2_9_ce0_local;
reg    weights2_17_ce0_local;
reg    weights2_25_ce0_local;
reg    activations1_1_ce0_local;
reg    activations1_9_ce0_local;
reg    activations1_17_ce0_local;
reg    activations1_25_ce0_local;
reg    weights2_2_ce0_local;
reg    weights2_10_ce0_local;
reg    weights2_18_ce0_local;
reg    weights2_26_ce0_local;
reg    activations1_2_ce0_local;
reg    activations1_10_ce0_local;
reg    activations1_18_ce0_local;
reg    activations1_26_ce0_local;
reg    weights2_3_ce0_local;
reg    weights2_11_ce0_local;
reg    weights2_19_ce0_local;
reg    weights2_27_ce0_local;
reg    activations1_3_ce0_local;
reg    activations1_11_ce0_local;
reg    activations1_19_ce0_local;
reg    activations1_27_ce0_local;
reg    weights2_4_ce0_local;
reg    weights2_12_ce0_local;
reg    weights2_20_ce0_local;
reg    weights2_28_ce0_local;
reg    activations1_4_ce0_local;
reg    activations1_12_ce0_local;
reg    activations1_20_ce0_local;
reg    activations1_28_ce0_local;
reg    weights2_5_ce0_local;
reg    weights2_13_ce0_local;
reg    weights2_21_ce0_local;
reg    weights2_29_ce0_local;
reg    activations1_5_ce0_local;
reg    activations1_13_ce0_local;
reg    activations1_21_ce0_local;
reg    activations1_29_ce0_local;
reg    weights2_6_ce0_local;
reg    weights2_14_ce0_local;
reg    weights2_22_ce0_local;
reg    weights2_30_ce0_local;
reg    activations1_6_ce0_local;
reg    activations1_14_ce0_local;
reg    activations1_22_ce0_local;
reg    activations1_30_ce0_local;
reg    weights2_7_ce0_local;
reg    weights2_15_ce0_local;
reg    weights2_23_ce0_local;
reg    weights2_31_ce0_local;
reg    activations1_7_ce0_local;
reg    activations1_15_ce0_local;
reg    activations1_23_ce0_local;
reg    activations1_31_ce0_local;
reg   [63:0] grp_fu_1039_p0;
reg   [63:0] grp_fu_1039_p1;
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
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_1043_p0;
reg   [63:0] grp_fu_1043_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7;
wire   [1:0] lshr_ln43_1_fu_1073_p4;
wire   [6:0] zext_ln43_fu_1083_p1;
wire   [6:0] add_ln47_fu_1123_p2;
wire   [63:0] tmp_s_fu_1184_p2;
wire   [63:0] tmp_s_fu_1184_p4;
wire   [63:0] tmp_s_fu_1184_p6;
wire   [63:0] tmp_s_fu_1184_p8;
wire   [63:0] tmp_s_fu_1184_p9;
wire   [4:0] trunc_ln46_fu_1165_p1;
wire   [63:0] tmp_188_fu_1208_p9;
wire   [63:0] tmp_189_fu_1248_p2;
wire   [63:0] tmp_189_fu_1248_p4;
wire   [63:0] tmp_189_fu_1248_p6;
wire   [63:0] tmp_189_fu_1248_p8;
wire   [63:0] tmp_189_fu_1248_p9;
wire   [63:0] tmp_190_fu_1272_p9;
wire   [63:0] tmp_191_fu_1312_p2;
wire   [63:0] tmp_191_fu_1312_p4;
wire   [63:0] tmp_191_fu_1312_p6;
wire   [63:0] tmp_191_fu_1312_p8;
wire   [63:0] tmp_191_fu_1312_p9;
wire   [63:0] tmp_192_fu_1336_p9;
wire   [63:0] tmp_193_fu_1376_p2;
wire   [63:0] tmp_193_fu_1376_p4;
wire   [63:0] tmp_193_fu_1376_p6;
wire   [63:0] tmp_193_fu_1376_p8;
wire   [63:0] tmp_193_fu_1376_p9;
wire   [63:0] tmp_194_fu_1400_p9;
wire   [63:0] tmp_195_fu_1440_p2;
wire   [63:0] tmp_195_fu_1440_p4;
wire   [63:0] tmp_195_fu_1440_p6;
wire   [63:0] tmp_195_fu_1440_p8;
wire   [63:0] tmp_195_fu_1440_p9;
wire   [63:0] tmp_196_fu_1464_p9;
wire   [63:0] tmp_197_fu_1504_p2;
wire   [63:0] tmp_197_fu_1504_p4;
wire   [63:0] tmp_197_fu_1504_p6;
wire   [63:0] tmp_197_fu_1504_p8;
wire   [63:0] tmp_197_fu_1504_p9;
wire   [63:0] tmp_198_fu_1528_p9;
wire   [63:0] tmp_199_fu_1568_p2;
wire   [63:0] tmp_199_fu_1568_p4;
wire   [63:0] tmp_199_fu_1568_p6;
wire   [63:0] tmp_199_fu_1568_p8;
wire   [63:0] tmp_199_fu_1568_p9;
wire   [63:0] tmp_200_fu_1592_p9;
wire   [63:0] tmp_201_fu_1632_p2;
wire   [63:0] tmp_201_fu_1632_p4;
wire   [63:0] tmp_201_fu_1632_p6;
wire   [63:0] tmp_201_fu_1632_p8;
wire   [63:0] tmp_201_fu_1632_p9;
wire   [63:0] tmp_202_fu_1656_p9;
wire    ap_block_pp0_stage63;
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
wire   [4:0] tmp_s_fu_1184_p1;
wire   [4:0] tmp_s_fu_1184_p3;
wire  signed [4:0] tmp_s_fu_1184_p5;
wire  signed [4:0] tmp_s_fu_1184_p7;
wire   [4:0] tmp_188_fu_1208_p1;
wire   [4:0] tmp_188_fu_1208_p3;
wire  signed [4:0] tmp_188_fu_1208_p5;
wire  signed [4:0] tmp_188_fu_1208_p7;
wire   [4:0] tmp_189_fu_1248_p1;
wire   [4:0] tmp_189_fu_1248_p3;
wire  signed [4:0] tmp_189_fu_1248_p5;
wire  signed [4:0] tmp_189_fu_1248_p7;
wire   [4:0] tmp_190_fu_1272_p1;
wire   [4:0] tmp_190_fu_1272_p3;
wire  signed [4:0] tmp_190_fu_1272_p5;
wire  signed [4:0] tmp_190_fu_1272_p7;
wire   [4:0] tmp_191_fu_1312_p1;
wire   [4:0] tmp_191_fu_1312_p3;
wire  signed [4:0] tmp_191_fu_1312_p5;
wire  signed [4:0] tmp_191_fu_1312_p7;
wire   [4:0] tmp_192_fu_1336_p1;
wire   [4:0] tmp_192_fu_1336_p3;
wire  signed [4:0] tmp_192_fu_1336_p5;
wire  signed [4:0] tmp_192_fu_1336_p7;
wire   [4:0] tmp_193_fu_1376_p1;
wire   [4:0] tmp_193_fu_1376_p3;
wire  signed [4:0] tmp_193_fu_1376_p5;
wire  signed [4:0] tmp_193_fu_1376_p7;
wire   [4:0] tmp_194_fu_1400_p1;
wire   [4:0] tmp_194_fu_1400_p3;
wire  signed [4:0] tmp_194_fu_1400_p5;
wire  signed [4:0] tmp_194_fu_1400_p7;
wire   [4:0] tmp_195_fu_1440_p1;
wire   [4:0] tmp_195_fu_1440_p3;
wire  signed [4:0] tmp_195_fu_1440_p5;
wire  signed [4:0] tmp_195_fu_1440_p7;
wire   [4:0] tmp_196_fu_1464_p1;
wire   [4:0] tmp_196_fu_1464_p3;
wire  signed [4:0] tmp_196_fu_1464_p5;
wire  signed [4:0] tmp_196_fu_1464_p7;
wire   [4:0] tmp_197_fu_1504_p1;
wire   [4:0] tmp_197_fu_1504_p3;
wire  signed [4:0] tmp_197_fu_1504_p5;
wire  signed [4:0] tmp_197_fu_1504_p7;
wire   [4:0] tmp_198_fu_1528_p1;
wire   [4:0] tmp_198_fu_1528_p3;
wire  signed [4:0] tmp_198_fu_1528_p5;
wire  signed [4:0] tmp_198_fu_1528_p7;
wire   [4:0] tmp_199_fu_1568_p1;
wire   [4:0] tmp_199_fu_1568_p3;
wire  signed [4:0] tmp_199_fu_1568_p5;
wire  signed [4:0] tmp_199_fu_1568_p7;
wire   [4:0] tmp_200_fu_1592_p1;
wire   [4:0] tmp_200_fu_1592_p3;
wire  signed [4:0] tmp_200_fu_1592_p5;
wire  signed [4:0] tmp_200_fu_1592_p7;
wire   [4:0] tmp_201_fu_1632_p1;
wire   [4:0] tmp_201_fu_1632_p3;
wire  signed [4:0] tmp_201_fu_1632_p5;
wire  signed [4:0] tmp_201_fu_1632_p7;
wire   [4:0] tmp_202_fu_1656_p1;
wire   [4:0] tmp_202_fu_1656_p3;
wire  signed [4:0] tmp_202_fu_1656_p5;
wire  signed [4:0] tmp_202_fu_1656_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 64'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 add114_i_fu_186 = 64'd0;
#0 j_fu_190 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U663(.din0(tmp_s_fu_1184_p2),.din1(tmp_s_fu_1184_p4),.din2(tmp_s_fu_1184_p6),.din3(tmp_s_fu_1184_p8),.def(tmp_s_fu_1184_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_s_fu_1184_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U664(.din0(activations1_q0),.din1(activations1_8_q0),.din2(activations1_16_q0),.din3(activations1_24_q0),.def(tmp_188_fu_1208_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_188_fu_1208_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U665(.din0(tmp_189_fu_1248_p2),.din1(tmp_189_fu_1248_p4),.din2(tmp_189_fu_1248_p6),.din3(tmp_189_fu_1248_p8),.def(tmp_189_fu_1248_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_189_fu_1248_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U666(.din0(activations1_1_q0),.din1(activations1_9_q0),.din2(activations1_17_q0),.din3(activations1_25_q0),.def(tmp_190_fu_1272_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_190_fu_1272_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U667(.din0(tmp_191_fu_1312_p2),.din1(tmp_191_fu_1312_p4),.din2(tmp_191_fu_1312_p6),.din3(tmp_191_fu_1312_p8),.def(tmp_191_fu_1312_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_191_fu_1312_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U668(.din0(activations1_2_q0),.din1(activations1_10_q0),.din2(activations1_18_q0),.din3(activations1_26_q0),.def(tmp_192_fu_1336_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_192_fu_1336_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U669(.din0(tmp_193_fu_1376_p2),.din1(tmp_193_fu_1376_p4),.din2(tmp_193_fu_1376_p6),.din3(tmp_193_fu_1376_p8),.def(tmp_193_fu_1376_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_193_fu_1376_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U670(.din0(activations1_3_q0),.din1(activations1_11_q0),.din2(activations1_19_q0),.din3(activations1_27_q0),.def(tmp_194_fu_1400_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_194_fu_1400_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U671(.din0(tmp_195_fu_1440_p2),.din1(tmp_195_fu_1440_p4),.din2(tmp_195_fu_1440_p6),.din3(tmp_195_fu_1440_p8),.def(tmp_195_fu_1440_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_195_fu_1440_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U672(.din0(activations1_4_q0),.din1(activations1_12_q0),.din2(activations1_20_q0),.din3(activations1_28_q0),.def(tmp_196_fu_1464_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_196_fu_1464_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U673(.din0(tmp_197_fu_1504_p2),.din1(tmp_197_fu_1504_p4),.din2(tmp_197_fu_1504_p6),.din3(tmp_197_fu_1504_p8),.def(tmp_197_fu_1504_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_197_fu_1504_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U674(.din0(activations1_5_q0),.din1(activations1_13_q0),.din2(activations1_21_q0),.din3(activations1_29_q0),.def(tmp_198_fu_1528_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_198_fu_1528_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U675(.din0(tmp_199_fu_1568_p2),.din1(tmp_199_fu_1568_p4),.din2(tmp_199_fu_1568_p6),.din3(tmp_199_fu_1568_p8),.def(tmp_199_fu_1568_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_199_fu_1568_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U676(.din0(activations1_6_q0),.din1(activations1_14_q0),.din2(activations1_22_q0),.din3(activations1_30_q0),.def(tmp_200_fu_1592_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_200_fu_1592_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U677(.din0(tmp_201_fu_1632_p2),.din1(tmp_201_fu_1632_p4),.din2(tmp_201_fu_1632_p6),.din3(tmp_201_fu_1632_p8),.def(tmp_201_fu_1632_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_201_fu_1632_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U678(.din0(activations1_7_q0),.din1(activations1_15_q0),.din2(activations1_23_q0),.din3(activations1_31_q0),.def(tmp_202_fu_1656_p9),.sel(trunc_ln46_fu_1165_p1),.dout(tmp_202_fu_1656_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add114_i_fu_186 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add114_i_fu_186 <= grp_fu_8393_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_190 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage63_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (tmp_16_reg_1724 == 1'd0))) begin
        j_fu_190 <= add_ln46_fu_1684_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_2_reg_1718 <= ap_sig_allocacmp_j_2;
        tmp_16_reg_1724 <= ap_sig_allocacmp_j_2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_i_reg_2138 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_2_i_reg_2143 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_3_i_reg_2148 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul8_4_i_reg_2153 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul8_5_i_reg_2158 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        mul8_6_i_reg_2163 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        mul8_7_i_reg_2168 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_i_reg_2128 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage56_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56)) | ((1'b0 == ap_block_pp0_stage48_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_1047 <= grp_fu_8393_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_188_reg_2053 <= tmp_188_fu_1208_p11;
        tmp_189_reg_2058 <= tmp_189_fu_1248_p11;
        tmp_190_reg_2063 <= tmp_190_fu_1272_p11;
        tmp_191_reg_2068 <= tmp_191_fu_1312_p11;
        tmp_192_reg_2073 <= tmp_192_fu_1336_p11;
        tmp_193_reg_2078 <= tmp_193_fu_1376_p11;
        tmp_194_reg_2083 <= tmp_194_fu_1400_p11;
        tmp_195_reg_2088 <= tmp_195_fu_1440_p11;
        tmp_196_reg_2093 <= tmp_196_fu_1464_p11;
        tmp_197_reg_2098 <= tmp_197_fu_1504_p11;
        tmp_198_reg_2103 <= tmp_198_fu_1528_p11;
        tmp_199_reg_2108 <= tmp_199_fu_1568_p11;
        tmp_200_reg_2113 <= tmp_200_fu_1592_p11;
        tmp_201_reg_2118 <= tmp_201_fu_1632_p11;
        tmp_202_reg_2123 <= tmp_202_fu_1656_p11;
        tmp_s_reg_2048 <= tmp_s_fu_1184_p11;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_10_ce0_local = 1'b1;
    end else begin
        activations1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_11_ce0_local = 1'b1;
    end else begin
        activations1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_12_ce0_local = 1'b1;
    end else begin
        activations1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_13_ce0_local = 1'b1;
    end else begin
        activations1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_14_ce0_local = 1'b1;
    end else begin
        activations1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_15_ce0_local = 1'b1;
    end else begin
        activations1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_16_ce0_local = 1'b1;
    end else begin
        activations1_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_17_ce0_local = 1'b1;
    end else begin
        activations1_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_18_ce0_local = 1'b1;
    end else begin
        activations1_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_19_ce0_local = 1'b1;
    end else begin
        activations1_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_1_ce0_local = 1'b1;
    end else begin
        activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_20_ce0_local = 1'b1;
    end else begin
        activations1_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_21_ce0_local = 1'b1;
    end else begin
        activations1_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_22_ce0_local = 1'b1;
    end else begin
        activations1_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_23_ce0_local = 1'b1;
    end else begin
        activations1_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_24_ce0_local = 1'b1;
    end else begin
        activations1_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_25_ce0_local = 1'b1;
    end else begin
        activations1_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_26_ce0_local = 1'b1;
    end else begin
        activations1_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_27_ce0_local = 1'b1;
    end else begin
        activations1_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_28_ce0_local = 1'b1;
    end else begin
        activations1_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_29_ce0_local = 1'b1;
    end else begin
        activations1_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_2_ce0_local = 1'b1;
    end else begin
        activations1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_30_ce0_local = 1'b1;
    end else begin
        activations1_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_31_ce0_local = 1'b1;
    end else begin
        activations1_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_3_ce0_local = 1'b1;
    end else begin
        activations1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_4_ce0_local = 1'b1;
    end else begin
        activations1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_5_ce0_local = 1'b1;
    end else begin
        activations1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_6_ce0_local = 1'b1;
    end else begin
        activations1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_7_ce0_local = 1'b1;
    end else begin
        activations1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_8_ce0_local = 1'b1;
    end else begin
        activations1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_9_ce0_local = 1'b1;
    end else begin
        activations1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_ce0_local = 1'b1;
    end else begin
        activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready == 1'b1) & (tmp_16_reg_1724 == 1'd1))) begin
        add114_i_out_ap_vld = 1'b1;
    end else begin
        add114_i_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (tmp_16_reg_1724 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8) & (ap_loop_exit_ready == 1'b1))) begin
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
        ap_sig_allocacmp_j_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_j_2 = j_fu_190;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage57) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage57)) | ((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_1039_p0 = reg_1047;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1039_p0 = add114_i_fu_186;
    end else begin
        grp_fu_1039_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1039_p1 = mul8_7_i_reg_2168;
    end else if (((1'b0 == ap_block_pp0_stage57) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage57))) begin
        grp_fu_1039_p1 = mul8_6_i_reg_2163;
    end else if (((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49))) begin
        grp_fu_1039_p1 = mul8_5_i_reg_2158;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        grp_fu_1039_p1 = mul8_4_i_reg_2153;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        grp_fu_1039_p1 = mul8_3_i_reg_2148;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1039_p1 = mul8_2_i_reg_2143;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1039_p1 = mul8_1_i_reg_2138;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1039_p1 = mul8_i_reg_2128;
    end else begin
        grp_fu_1039_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1043_p0 = tmp_201_reg_2118;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1043_p0 = tmp_199_reg_2108;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1043_p0 = tmp_197_reg_2098;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1043_p0 = tmp_195_reg_2088;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1043_p0 = tmp_193_reg_2078;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1043_p0 = tmp_191_reg_2068;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1043_p0 = tmp_189_reg_2058;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1043_p0 = tmp_s_reg_2048;
        end else begin
            grp_fu_1043_p0 = 'bx;
        end
    end else begin
        grp_fu_1043_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1043_p1 = tmp_202_reg_2123;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1043_p1 = tmp_200_reg_2113;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1043_p1 = tmp_198_reg_2103;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1043_p1 = tmp_196_reg_2093;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1043_p1 = tmp_194_reg_2083;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1043_p1 = tmp_192_reg_2073;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1043_p1 = tmp_190_reg_2063;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1043_p1 = tmp_188_reg_2053;
        end else begin
            grp_fu_1043_p1 = 'bx;
        end
    end else begin
        grp_fu_1043_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_10_ce0_local = 1'b1;
    end else begin
        weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_11_ce0_local = 1'b1;
    end else begin
        weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_12_ce0_local = 1'b1;
    end else begin
        weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_13_ce0_local = 1'b1;
    end else begin
        weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_14_ce0_local = 1'b1;
    end else begin
        weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_15_ce0_local = 1'b1;
    end else begin
        weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_16_ce0_local = 1'b1;
    end else begin
        weights2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_17_ce0_local = 1'b1;
    end else begin
        weights2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_18_ce0_local = 1'b1;
    end else begin
        weights2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_19_ce0_local = 1'b1;
    end else begin
        weights2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_20_ce0_local = 1'b1;
    end else begin
        weights2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_21_ce0_local = 1'b1;
    end else begin
        weights2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_22_ce0_local = 1'b1;
    end else begin
        weights2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_23_ce0_local = 1'b1;
    end else begin
        weights2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_24_ce0_local = 1'b1;
    end else begin
        weights2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_25_ce0_local = 1'b1;
    end else begin
        weights2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_26_ce0_local = 1'b1;
    end else begin
        weights2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_27_ce0_local = 1'b1;
    end else begin
        weights2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_28_ce0_local = 1'b1;
    end else begin
        weights2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_29_ce0_local = 1'b1;
    end else begin
        weights2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_2_ce0_local = 1'b1;
    end else begin
        weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_30_ce0_local = 1'b1;
    end else begin
        weights2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_31_ce0_local = 1'b1;
    end else begin
        weights2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_3_ce0_local = 1'b1;
    end else begin
        weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_4_ce0_local = 1'b1;
    end else begin
        weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_5_ce0_local = 1'b1;
    end else begin
        weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_6_ce0_local = 1'b1;
    end else begin
        weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_7_ce0_local = 1'b1;
    end else begin
        weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_8_ce0_local = 1'b1;
    end else begin
        weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_9_ce0_local = 1'b1;
    end else begin
        weights2_9_ce0_local = 1'b0;
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
assign activations1_10_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_10_ce0 = activations1_10_ce0_local;
assign activations1_11_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_11_ce0 = activations1_11_ce0_local;
assign activations1_12_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_12_ce0 = activations1_12_ce0_local;
assign activations1_13_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_13_ce0 = activations1_13_ce0_local;
assign activations1_14_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_14_ce0 = activations1_14_ce0_local;
assign activations1_15_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_15_ce0 = activations1_15_ce0_local;
assign activations1_16_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_16_ce0 = activations1_16_ce0_local;
assign activations1_17_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_17_ce0 = activations1_17_ce0_local;
assign activations1_18_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_18_ce0 = activations1_18_ce0_local;
assign activations1_19_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_19_ce0 = activations1_19_ce0_local;
assign activations1_1_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_1_ce0 = activations1_1_ce0_local;
assign activations1_20_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_20_ce0 = activations1_20_ce0_local;
assign activations1_21_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_21_ce0 = activations1_21_ce0_local;
assign activations1_22_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_22_ce0 = activations1_22_ce0_local;
assign activations1_23_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_23_ce0 = activations1_23_ce0_local;
assign activations1_24_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_24_ce0 = activations1_24_ce0_local;
assign activations1_25_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_25_ce0 = activations1_25_ce0_local;
assign activations1_26_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_26_ce0 = activations1_26_ce0_local;
assign activations1_27_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_27_ce0 = activations1_27_ce0_local;
assign activations1_28_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_28_ce0 = activations1_28_ce0_local;
assign activations1_29_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_29_ce0 = activations1_29_ce0_local;
assign activations1_2_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_2_ce0 = activations1_2_ce0_local;
assign activations1_30_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_30_ce0 = activations1_30_ce0_local;
assign activations1_31_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_31_ce0 = activations1_31_ce0_local;
assign activations1_3_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_3_ce0 = activations1_3_ce0_local;
assign activations1_4_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_4_ce0 = activations1_4_ce0_local;
assign activations1_5_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_5_ce0 = activations1_5_ce0_local;
assign activations1_6_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_6_ce0 = activations1_6_ce0_local;
assign activations1_7_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_7_ce0 = activations1_7_ce0_local;
assign activations1_8_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_8_ce0 = activations1_8_ce0_local;
assign activations1_9_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_9_ce0 = activations1_9_ce0_local;
assign activations1_address0 = zext_ln43_1_fu_1087_p1;
assign activations1_ce0 = activations1_ce0_local;
assign add114_i_out = add114_i_fu_186;
assign add_ln46_fu_1684_p2 = (j_2_reg_1718 + 7'd8);
assign add_ln47_fu_1123_p2 = (zext_ln43_fu_1083_p1 + empty);
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
assign ap_block_pp0_stage48_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign grp_fu_6440_p_ce = 1'b1;
assign grp_fu_6440_p_din0 = grp_fu_1043_p0;
assign grp_fu_6440_p_din1 = grp_fu_1043_p1;
assign grp_fu_8393_p_ce = 1'b1;
assign grp_fu_8393_p_din0 = grp_fu_1039_p0;
assign grp_fu_8393_p_din1 = grp_fu_1039_p1;
assign grp_fu_8393_p_opcode = 2'd0;
assign lshr_ln43_1_fu_1073_p4 = {{ap_sig_allocacmp_j_2[6:5]}};
assign tmp_188_fu_1208_p9 = 'bx;
assign tmp_189_fu_1248_p2 = weights2_1_q0;
assign tmp_189_fu_1248_p4 = weights2_9_q0;
assign tmp_189_fu_1248_p6 = weights2_17_q0;
assign tmp_189_fu_1248_p8 = weights2_25_q0;
assign tmp_189_fu_1248_p9 = 'bx;
assign tmp_190_fu_1272_p9 = 'bx;
assign tmp_191_fu_1312_p2 = weights2_2_q0;
assign tmp_191_fu_1312_p4 = weights2_10_q0;
assign tmp_191_fu_1312_p6 = weights2_18_q0;
assign tmp_191_fu_1312_p8 = weights2_26_q0;
assign tmp_191_fu_1312_p9 = 'bx;
assign tmp_192_fu_1336_p9 = 'bx;
assign tmp_193_fu_1376_p2 = weights2_3_q0;
assign tmp_193_fu_1376_p4 = weights2_11_q0;
assign tmp_193_fu_1376_p6 = weights2_19_q0;
assign tmp_193_fu_1376_p8 = weights2_27_q0;
assign tmp_193_fu_1376_p9 = 'bx;
assign tmp_194_fu_1400_p9 = 'bx;
assign tmp_195_fu_1440_p2 = weights2_4_q0;
assign tmp_195_fu_1440_p4 = weights2_12_q0;
assign tmp_195_fu_1440_p6 = weights2_20_q0;
assign tmp_195_fu_1440_p8 = weights2_28_q0;
assign tmp_195_fu_1440_p9 = 'bx;
assign tmp_196_fu_1464_p9 = 'bx;
assign tmp_197_fu_1504_p2 = weights2_5_q0;
assign tmp_197_fu_1504_p4 = weights2_13_q0;
assign tmp_197_fu_1504_p6 = weights2_21_q0;
assign tmp_197_fu_1504_p8 = weights2_29_q0;
assign tmp_197_fu_1504_p9 = 'bx;
assign tmp_198_fu_1528_p9 = 'bx;
assign tmp_199_fu_1568_p2 = weights2_6_q0;
assign tmp_199_fu_1568_p4 = weights2_14_q0;
assign tmp_199_fu_1568_p6 = weights2_22_q0;
assign tmp_199_fu_1568_p8 = weights2_30_q0;
assign tmp_199_fu_1568_p9 = 'bx;
assign tmp_200_fu_1592_p9 = 'bx;
assign tmp_201_fu_1632_p2 = weights2_7_q0;
assign tmp_201_fu_1632_p4 = weights2_15_q0;
assign tmp_201_fu_1632_p6 = weights2_23_q0;
assign tmp_201_fu_1632_p8 = weights2_31_q0;
assign tmp_201_fu_1632_p9 = 'bx;
assign tmp_202_fu_1656_p9 = 'bx;
assign tmp_s_fu_1184_p2 = weights2_0_q0;
assign tmp_s_fu_1184_p4 = weights2_8_q0;
assign tmp_s_fu_1184_p6 = weights2_16_q0;
assign tmp_s_fu_1184_p8 = weights2_24_q0;
assign tmp_s_fu_1184_p9 = 'bx;
assign trunc_ln46_fu_1165_p1 = j_2_reg_1718[4:0];
assign weights2_0_address0 = zext_ln47_fu_1129_p1;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_10_address0 = zext_ln47_fu_1129_p1;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_11_address0 = zext_ln47_fu_1129_p1;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_12_address0 = zext_ln47_fu_1129_p1;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_13_address0 = zext_ln47_fu_1129_p1;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_14_address0 = zext_ln47_fu_1129_p1;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_15_address0 = zext_ln47_fu_1129_p1;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_16_address0 = zext_ln47_fu_1129_p1;
assign weights2_16_ce0 = weights2_16_ce0_local;
assign weights2_17_address0 = zext_ln47_fu_1129_p1;
assign weights2_17_ce0 = weights2_17_ce0_local;
assign weights2_18_address0 = zext_ln47_fu_1129_p1;
assign weights2_18_ce0 = weights2_18_ce0_local;
assign weights2_19_address0 = zext_ln47_fu_1129_p1;
assign weights2_19_ce0 = weights2_19_ce0_local;
assign weights2_1_address0 = zext_ln47_fu_1129_p1;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_20_address0 = zext_ln47_fu_1129_p1;
assign weights2_20_ce0 = weights2_20_ce0_local;
assign weights2_21_address0 = zext_ln47_fu_1129_p1;
assign weights2_21_ce0 = weights2_21_ce0_local;
assign weights2_22_address0 = zext_ln47_fu_1129_p1;
assign weights2_22_ce0 = weights2_22_ce0_local;
assign weights2_23_address0 = zext_ln47_fu_1129_p1;
assign weights2_23_ce0 = weights2_23_ce0_local;
assign weights2_24_address0 = zext_ln47_fu_1129_p1;
assign weights2_24_ce0 = weights2_24_ce0_local;
assign weights2_25_address0 = zext_ln47_fu_1129_p1;
assign weights2_25_ce0 = weights2_25_ce0_local;
assign weights2_26_address0 = zext_ln47_fu_1129_p1;
assign weights2_26_ce0 = weights2_26_ce0_local;
assign weights2_27_address0 = zext_ln47_fu_1129_p1;
assign weights2_27_ce0 = weights2_27_ce0_local;
assign weights2_28_address0 = zext_ln47_fu_1129_p1;
assign weights2_28_ce0 = weights2_28_ce0_local;
assign weights2_29_address0 = zext_ln47_fu_1129_p1;
assign weights2_29_ce0 = weights2_29_ce0_local;
assign weights2_2_address0 = zext_ln47_fu_1129_p1;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_30_address0 = zext_ln47_fu_1129_p1;
assign weights2_30_ce0 = weights2_30_ce0_local;
assign weights2_31_address0 = zext_ln47_fu_1129_p1;
assign weights2_31_ce0 = weights2_31_ce0_local;
assign weights2_3_address0 = zext_ln47_fu_1129_p1;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_4_address0 = zext_ln47_fu_1129_p1;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_5_address0 = zext_ln47_fu_1129_p1;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_6_address0 = zext_ln47_fu_1129_p1;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_7_address0 = zext_ln47_fu_1129_p1;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_8_address0 = zext_ln47_fu_1129_p1;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_9_address0 = zext_ln47_fu_1129_p1;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign zext_ln43_1_fu_1087_p1 = lshr_ln43_1_fu_1073_p4;
assign zext_ln43_fu_1083_p1 = lshr_ln43_1_fu_1073_p4;
assign zext_ln47_fu_1129_p1 = add_ln47_fu_1123_p2;
endmodule 
