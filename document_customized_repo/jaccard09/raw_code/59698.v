module backprop_backprop_Pipeline_VITIS_LOOP_55_1_mvp_product_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations3_2_load,activations3_load,activations3_1_load,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_8_address0,weights3_8_ce0,weights3_8_q0,weights3_16_address0,weights3_16_ce0,weights3_16_q0,weights3_24_address0,weights3_24_ce0,weights3_24_q0,activations2_address0,activations2_ce0,activations2_q0,activations2_8_address0,activations2_8_ce0,activations2_8_q0,activations2_16_address0,activations2_16_ce0,activations2_16_q0,activations2_24_address0,activations2_24_ce0,activations2_24_q0,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_9_address0,weights3_9_ce0,weights3_9_q0,weights3_17_address0,weights3_17_ce0,weights3_17_q0,weights3_25_address0,weights3_25_ce0,weights3_25_q0,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_9_address0,activations2_9_ce0,activations2_9_q0,activations2_17_address0,activations2_17_ce0,activations2_17_q0,activations2_25_address0,activations2_25_ce0,activations2_25_q0,weights3_2_address0,weights3_2_ce0,weights3_2_q0,weights3_10_address0,weights3_10_ce0,weights3_10_q0,weights3_18_address0,weights3_18_ce0,weights3_18_q0,weights3_26_address0,weights3_26_ce0,weights3_26_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,activations2_10_address0,activations2_10_ce0,activations2_10_q0,activations2_18_address0,activations2_18_ce0,activations2_18_q0,activations2_26_address0,activations2_26_ce0,activations2_26_q0,weights3_3_address0,weights3_3_ce0,weights3_3_q0,weights3_11_address0,weights3_11_ce0,weights3_11_q0,weights3_19_address0,weights3_19_ce0,weights3_19_q0,weights3_27_address0,weights3_27_ce0,weights3_27_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0,activations2_11_address0,activations2_11_ce0,activations2_11_q0,activations2_19_address0,activations2_19_ce0,activations2_19_q0,activations2_27_address0,activations2_27_ce0,activations2_27_q0,weights3_4_address0,weights3_4_ce0,weights3_4_q0,weights3_12_address0,weights3_12_ce0,weights3_12_q0,weights3_20_address0,weights3_20_ce0,weights3_20_q0,weights3_28_address0,weights3_28_ce0,weights3_28_q0,activations2_4_address0,activations2_4_ce0,activations2_4_q0,activations2_12_address0,activations2_12_ce0,activations2_12_q0,activations2_20_address0,activations2_20_ce0,activations2_20_q0,activations2_28_address0,activations2_28_ce0,activations2_28_q0,weights3_5_address0,weights3_5_ce0,weights3_5_q0,weights3_13_address0,weights3_13_ce0,weights3_13_q0,weights3_21_address0,weights3_21_ce0,weights3_21_q0,weights3_29_address0,weights3_29_ce0,weights3_29_q0,activations2_5_address0,activations2_5_ce0,activations2_5_q0,activations2_13_address0,activations2_13_ce0,activations2_13_q0,activations2_21_address0,activations2_21_ce0,activations2_21_q0,activations2_29_address0,activations2_29_ce0,activations2_29_q0,weights3_6_address0,weights3_6_ce0,weights3_6_q0,weights3_14_address0,weights3_14_ce0,weights3_14_q0,weights3_22_address0,weights3_22_ce0,weights3_22_q0,weights3_30_address0,weights3_30_ce0,weights3_30_q0,activations2_6_address0,activations2_6_ce0,activations2_6_q0,activations2_14_address0,activations2_14_ce0,activations2_14_q0,activations2_22_address0,activations2_22_ce0,activations2_22_q0,activations2_30_address0,activations2_30_ce0,activations2_30_q0,weights3_7_address0,weights3_7_ce0,weights3_7_q0,weights3_15_address0,weights3_15_ce0,weights3_15_q0,weights3_23_address0,weights3_23_ce0,weights3_23_q0,weights3_31_address0,weights3_31_ce0,weights3_31_q0,activations2_7_address0,activations2_7_ce0,activations2_7_q0,activations2_15_address0,activations2_15_ce0,activations2_15_q0,activations2_23_address0,activations2_23_ce0,activations2_23_q0,activations2_31_address0,activations2_31_ce0,activations2_31_q0,activations3_10_out_i,activations3_10_out_o,activations3_10_out_o_ap_vld,activations3_9_out_i,activations3_9_out_o,activations3_9_out_o_ap_vld,activations3_8_out_i,activations3_8_out_o,activations3_8_out_o_ap_vld,grp_fu_8393_p_din0,grp_fu_8393_p_din1,grp_fu_8393_p_opcode,grp_fu_8393_p_dout0,grp_fu_8393_p_ce,grp_fu_6440_p_din0,grp_fu_6440_p_din1,grp_fu_6440_p_dout0,grp_fu_6440_p_ce); 
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
input  [63:0] activations3_2_load;
input  [63:0] activations3_load;
input  [63:0] activations3_1_load;
output  [2:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [2:0] weights3_8_address0;
output   weights3_8_ce0;
input  [63:0] weights3_8_q0;
output  [2:0] weights3_16_address0;
output   weights3_16_ce0;
input  [63:0] weights3_16_q0;
output  [2:0] weights3_24_address0;
output   weights3_24_ce0;
input  [63:0] weights3_24_q0;
output  [0:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [0:0] activations2_8_address0;
output   activations2_8_ce0;
input  [63:0] activations2_8_q0;
output  [0:0] activations2_16_address0;
output   activations2_16_ce0;
input  [63:0] activations2_16_q0;
output  [0:0] activations2_24_address0;
output   activations2_24_ce0;
input  [63:0] activations2_24_q0;
output  [2:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [2:0] weights3_9_address0;
output   weights3_9_ce0;
input  [63:0] weights3_9_q0;
output  [2:0] weights3_17_address0;
output   weights3_17_ce0;
input  [63:0] weights3_17_q0;
output  [2:0] weights3_25_address0;
output   weights3_25_ce0;
input  [63:0] weights3_25_q0;
output  [0:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [0:0] activations2_9_address0;
output   activations2_9_ce0;
input  [63:0] activations2_9_q0;
output  [0:0] activations2_17_address0;
output   activations2_17_ce0;
input  [63:0] activations2_17_q0;
output  [0:0] activations2_25_address0;
output   activations2_25_ce0;
input  [63:0] activations2_25_q0;
output  [2:0] weights3_2_address0;
output   weights3_2_ce0;
input  [63:0] weights3_2_q0;
output  [2:0] weights3_10_address0;
output   weights3_10_ce0;
input  [63:0] weights3_10_q0;
output  [2:0] weights3_18_address0;
output   weights3_18_ce0;
input  [63:0] weights3_18_q0;
output  [2:0] weights3_26_address0;
output   weights3_26_ce0;
input  [63:0] weights3_26_q0;
output  [0:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
output  [0:0] activations2_10_address0;
output   activations2_10_ce0;
input  [63:0] activations2_10_q0;
output  [0:0] activations2_18_address0;
output   activations2_18_ce0;
input  [63:0] activations2_18_q0;
output  [0:0] activations2_26_address0;
output   activations2_26_ce0;
input  [63:0] activations2_26_q0;
output  [2:0] weights3_3_address0;
output   weights3_3_ce0;
input  [63:0] weights3_3_q0;
output  [2:0] weights3_11_address0;
output   weights3_11_ce0;
input  [63:0] weights3_11_q0;
output  [2:0] weights3_19_address0;
output   weights3_19_ce0;
input  [63:0] weights3_19_q0;
output  [2:0] weights3_27_address0;
output   weights3_27_ce0;
input  [63:0] weights3_27_q0;
output  [0:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
output  [0:0] activations2_11_address0;
output   activations2_11_ce0;
input  [63:0] activations2_11_q0;
output  [0:0] activations2_19_address0;
output   activations2_19_ce0;
input  [63:0] activations2_19_q0;
output  [0:0] activations2_27_address0;
output   activations2_27_ce0;
input  [63:0] activations2_27_q0;
output  [2:0] weights3_4_address0;
output   weights3_4_ce0;
input  [63:0] weights3_4_q0;
output  [2:0] weights3_12_address0;
output   weights3_12_ce0;
input  [63:0] weights3_12_q0;
output  [2:0] weights3_20_address0;
output   weights3_20_ce0;
input  [63:0] weights3_20_q0;
output  [2:0] weights3_28_address0;
output   weights3_28_ce0;
input  [63:0] weights3_28_q0;
output  [0:0] activations2_4_address0;
output   activations2_4_ce0;
input  [63:0] activations2_4_q0;
output  [0:0] activations2_12_address0;
output   activations2_12_ce0;
input  [63:0] activations2_12_q0;
output  [0:0] activations2_20_address0;
output   activations2_20_ce0;
input  [63:0] activations2_20_q0;
output  [0:0] activations2_28_address0;
output   activations2_28_ce0;
input  [63:0] activations2_28_q0;
output  [2:0] weights3_5_address0;
output   weights3_5_ce0;
input  [63:0] weights3_5_q0;
output  [2:0] weights3_13_address0;
output   weights3_13_ce0;
input  [63:0] weights3_13_q0;
output  [2:0] weights3_21_address0;
output   weights3_21_ce0;
input  [63:0] weights3_21_q0;
output  [2:0] weights3_29_address0;
output   weights3_29_ce0;
input  [63:0] weights3_29_q0;
output  [0:0] activations2_5_address0;
output   activations2_5_ce0;
input  [63:0] activations2_5_q0;
output  [0:0] activations2_13_address0;
output   activations2_13_ce0;
input  [63:0] activations2_13_q0;
output  [0:0] activations2_21_address0;
output   activations2_21_ce0;
input  [63:0] activations2_21_q0;
output  [0:0] activations2_29_address0;
output   activations2_29_ce0;
input  [63:0] activations2_29_q0;
output  [2:0] weights3_6_address0;
output   weights3_6_ce0;
input  [63:0] weights3_6_q0;
output  [2:0] weights3_14_address0;
output   weights3_14_ce0;
input  [63:0] weights3_14_q0;
output  [2:0] weights3_22_address0;
output   weights3_22_ce0;
input  [63:0] weights3_22_q0;
output  [2:0] weights3_30_address0;
output   weights3_30_ce0;
input  [63:0] weights3_30_q0;
output  [0:0] activations2_6_address0;
output   activations2_6_ce0;
input  [63:0] activations2_6_q0;
output  [0:0] activations2_14_address0;
output   activations2_14_ce0;
input  [63:0] activations2_14_q0;
output  [0:0] activations2_22_address0;
output   activations2_22_ce0;
input  [63:0] activations2_22_q0;
output  [0:0] activations2_30_address0;
output   activations2_30_ce0;
input  [63:0] activations2_30_q0;
output  [2:0] weights3_7_address0;
output   weights3_7_ce0;
input  [63:0] weights3_7_q0;
output  [2:0] weights3_15_address0;
output   weights3_15_ce0;
input  [63:0] weights3_15_q0;
output  [2:0] weights3_23_address0;
output   weights3_23_ce0;
input  [63:0] weights3_23_q0;
output  [2:0] weights3_31_address0;
output   weights3_31_ce0;
input  [63:0] weights3_31_q0;
output  [0:0] activations2_7_address0;
output   activations2_7_ce0;
input  [63:0] activations2_7_q0;
output  [0:0] activations2_15_address0;
output   activations2_15_ce0;
input  [63:0] activations2_15_q0;
output  [0:0] activations2_23_address0;
output   activations2_23_ce0;
input  [63:0] activations2_23_q0;
output  [0:0] activations2_31_address0;
output   activations2_31_ce0;
input  [63:0] activations2_31_q0;
input  [63:0] activations3_10_out_i;
output  [63:0] activations3_10_out_o;
output   activations3_10_out_o_ap_vld;
input  [63:0] activations3_9_out_i;
output  [63:0] activations3_9_out_o;
output   activations3_9_out_o_ap_vld;
input  [63:0] activations3_8_out_i;
output  [63:0] activations3_8_out_o;
output   activations3_8_out_o_ap_vld;
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
reg[63:0] activations3_10_out_o;
reg activations3_10_out_o_ap_vld;
reg[63:0] activations3_9_out_o;
reg activations3_9_out_o_ap_vld;
reg[63:0] activations3_8_out_o;
reg activations3_8_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [63:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] icmp_ln55_reg_1985;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
reg   [63:0] reg_1084;
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
wire   [0:0] icmp_ln55_fu_1145_p2;
wire   [0:0] tmp_fu_1163_p3;
reg   [0:0] tmp_reg_1989;
wire   [6:0] select_ln54_fu_1171_p3;
reg   [6:0] select_ln54_reg_1997;
wire   [1:0] select_ln55_3_fu_1185_p3;
reg   [1:0] select_ln55_3_reg_2002;
reg   [1:0] select_ln55_3_reg_2002_pp0_iter1_reg;
wire   [4:0] trunc_ln57_fu_1193_p1;
reg   [4:0] trunc_ln57_reg_2006;
wire   [63:0] tmp_s_fu_1311_p11;
reg   [63:0] tmp_s_reg_2346;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_255_fu_1334_p11;
reg   [63:0] tmp_255_reg_2351;
wire   [63:0] tmp_256_fu_1373_p11;
reg   [63:0] tmp_256_reg_2356;
wire   [63:0] tmp_257_fu_1396_p11;
reg   [63:0] tmp_257_reg_2361;
wire   [63:0] tmp_258_fu_1435_p11;
reg   [63:0] tmp_258_reg_2366;
wire   [63:0] tmp_259_fu_1458_p11;
reg   [63:0] tmp_259_reg_2371;
wire   [63:0] tmp_260_fu_1497_p11;
reg   [63:0] tmp_260_reg_2376;
wire   [63:0] tmp_261_fu_1520_p11;
reg   [63:0] tmp_261_reg_2381;
wire   [63:0] tmp_262_fu_1559_p11;
reg   [63:0] tmp_262_reg_2386;
wire   [63:0] tmp_263_fu_1582_p11;
reg   [63:0] tmp_263_reg_2391;
wire   [63:0] tmp_264_fu_1621_p11;
reg   [63:0] tmp_264_reg_2396;
wire   [63:0] tmp_265_fu_1644_p11;
reg   [63:0] tmp_265_reg_2401;
wire   [63:0] tmp_266_fu_1683_p11;
reg   [63:0] tmp_266_reg_2406;
wire   [63:0] tmp_267_fu_1706_p11;
reg   [63:0] tmp_267_reg_2411;
wire   [63:0] tmp_268_fu_1745_p11;
reg   [63:0] tmp_268_reg_2416;
wire   [63:0] tmp_269_fu_1768_p11;
reg   [63:0] tmp_269_reg_2421;
reg   [63:0] mul8_i1_reg_2426;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] select_ln54_1_fu_1794_p3;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul8_1_i1_reg_2436;
reg   [63:0] mul8_2_i1_reg_2441;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul8_3_i1_reg_2446;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] mul8_4_i1_reg_2451;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] mul8_5_i1_reg_2456;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] mul8_6_i1_reg_2461;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] mul8_7_i1_reg_2466;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [0:0] tmp_26_fu_1849_p3;
reg   [0:0] tmp_26_reg_2471;
wire    ap_block_pp0_stage63_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln58_fu_1249_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_1205_p1;
wire   [63:0] select_ln55_fu_1823_p3;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage63;
wire    ap_loop_init;
wire   [63:0] select_ln55_1_fu_1830_p3;
wire   [63:0] select_ln55_2_fu_1837_p3;
reg   [63:0] add114_i77_fu_198;
wire    ap_block_pp0_stage9;
reg   [6:0] i_fu_202;
wire   [6:0] add_ln57_fu_1844_p2;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [1:0] j_fu_206;
reg   [1:0] ap_sig_allocacmp_j_load;
reg   [63:0] activations3_fu_210;
reg   [63:0] activations3_1_fu_214;
reg   [63:0] activations3_2_fu_218;
reg   [4:0] indvar_flatten_fu_222;
wire   [4:0] add_ln55_fu_1151_p2;
reg   [4:0] ap_sig_allocacmp_indvar_flatten_load;
reg    weights3_0_ce0_local;
reg    weights3_8_ce0_local;
reg    weights3_16_ce0_local;
reg    weights3_24_ce0_local;
reg    activations2_ce0_local;
reg    activations2_8_ce0_local;
reg    activations2_16_ce0_local;
reg    activations2_24_ce0_local;
reg    weights3_1_ce0_local;
reg    weights3_9_ce0_local;
reg    weights3_17_ce0_local;
reg    weights3_25_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_9_ce0_local;
reg    activations2_17_ce0_local;
reg    activations2_25_ce0_local;
reg    weights3_2_ce0_local;
reg    weights3_10_ce0_local;
reg    weights3_18_ce0_local;
reg    weights3_26_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_10_ce0_local;
reg    activations2_18_ce0_local;
reg    activations2_26_ce0_local;
reg    weights3_3_ce0_local;
reg    weights3_11_ce0_local;
reg    weights3_19_ce0_local;
reg    weights3_27_ce0_local;
reg    activations2_3_ce0_local;
reg    activations2_11_ce0_local;
reg    activations2_19_ce0_local;
reg    activations2_27_ce0_local;
reg    weights3_4_ce0_local;
reg    weights3_12_ce0_local;
reg    weights3_20_ce0_local;
reg    weights3_28_ce0_local;
reg    activations2_4_ce0_local;
reg    activations2_12_ce0_local;
reg    activations2_20_ce0_local;
reg    activations2_28_ce0_local;
reg    weights3_5_ce0_local;
reg    weights3_13_ce0_local;
reg    weights3_21_ce0_local;
reg    weights3_29_ce0_local;
reg    activations2_5_ce0_local;
reg    activations2_13_ce0_local;
reg    activations2_21_ce0_local;
reg    activations2_29_ce0_local;
reg    weights3_6_ce0_local;
reg    weights3_14_ce0_local;
reg    weights3_22_ce0_local;
reg    weights3_30_ce0_local;
reg    activations2_6_ce0_local;
reg    activations2_14_ce0_local;
reg    activations2_22_ce0_local;
reg    activations2_30_ce0_local;
reg    weights3_7_ce0_local;
reg    weights3_15_ce0_local;
reg    weights3_23_ce0_local;
reg    weights3_31_ce0_local;
reg    activations2_7_ce0_local;
reg    activations2_15_ce0_local;
reg    activations2_23_ce0_local;
reg    activations2_31_ce0_local;
reg   [63:0] grp_fu_1076_p0;
reg   [63:0] grp_fu_1076_p1;
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
reg   [63:0] grp_fu_1080_p0;
reg   [63:0] grp_fu_1080_p1;
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
wire   [1:0] add_ln55_1_fu_1179_p2;
wire   [0:0] tmp_25_fu_1197_p3;
wire   [2:0] or_ln_fu_1241_p3;
wire   [63:0] tmp_s_fu_1311_p2;
wire   [63:0] tmp_s_fu_1311_p4;
wire   [63:0] tmp_s_fu_1311_p6;
wire   [63:0] tmp_s_fu_1311_p8;
wire   [63:0] tmp_s_fu_1311_p9;
wire   [63:0] tmp_255_fu_1334_p9;
wire   [63:0] tmp_256_fu_1373_p2;
wire   [63:0] tmp_256_fu_1373_p4;
wire   [63:0] tmp_256_fu_1373_p6;
wire   [63:0] tmp_256_fu_1373_p8;
wire   [63:0] tmp_256_fu_1373_p9;
wire   [63:0] tmp_257_fu_1396_p9;
wire   [63:0] tmp_258_fu_1435_p2;
wire   [63:0] tmp_258_fu_1435_p4;
wire   [63:0] tmp_258_fu_1435_p6;
wire   [63:0] tmp_258_fu_1435_p8;
wire   [63:0] tmp_258_fu_1435_p9;
wire   [63:0] tmp_259_fu_1458_p9;
wire   [63:0] tmp_260_fu_1497_p2;
wire   [63:0] tmp_260_fu_1497_p4;
wire   [63:0] tmp_260_fu_1497_p6;
wire   [63:0] tmp_260_fu_1497_p8;
wire   [63:0] tmp_260_fu_1497_p9;
wire   [63:0] tmp_261_fu_1520_p9;
wire   [63:0] tmp_262_fu_1559_p2;
wire   [63:0] tmp_262_fu_1559_p4;
wire   [63:0] tmp_262_fu_1559_p6;
wire   [63:0] tmp_262_fu_1559_p8;
wire   [63:0] tmp_262_fu_1559_p9;
wire   [63:0] tmp_263_fu_1582_p9;
wire   [63:0] tmp_264_fu_1621_p2;
wire   [63:0] tmp_264_fu_1621_p4;
wire   [63:0] tmp_264_fu_1621_p6;
wire   [63:0] tmp_264_fu_1621_p8;
wire   [63:0] tmp_264_fu_1621_p9;
wire   [63:0] tmp_265_fu_1644_p9;
wire   [63:0] tmp_266_fu_1683_p2;
wire   [63:0] tmp_266_fu_1683_p4;
wire   [63:0] tmp_266_fu_1683_p6;
wire   [63:0] tmp_266_fu_1683_p8;
wire   [63:0] tmp_266_fu_1683_p9;
wire   [63:0] tmp_267_fu_1706_p9;
wire   [63:0] tmp_268_fu_1745_p2;
wire   [63:0] tmp_268_fu_1745_p4;
wire   [63:0] tmp_268_fu_1745_p6;
wire   [63:0] tmp_268_fu_1745_p8;
wire   [63:0] tmp_268_fu_1745_p9;
wire   [63:0] tmp_269_fu_1768_p9;
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
wire   [4:0] tmp_s_fu_1311_p1;
wire   [4:0] tmp_s_fu_1311_p3;
wire  signed [4:0] tmp_s_fu_1311_p5;
wire  signed [4:0] tmp_s_fu_1311_p7;
wire   [4:0] tmp_255_fu_1334_p1;
wire   [4:0] tmp_255_fu_1334_p3;
wire  signed [4:0] tmp_255_fu_1334_p5;
wire  signed [4:0] tmp_255_fu_1334_p7;
wire   [4:0] tmp_256_fu_1373_p1;
wire   [4:0] tmp_256_fu_1373_p3;
wire  signed [4:0] tmp_256_fu_1373_p5;
wire  signed [4:0] tmp_256_fu_1373_p7;
wire   [4:0] tmp_257_fu_1396_p1;
wire   [4:0] tmp_257_fu_1396_p3;
wire  signed [4:0] tmp_257_fu_1396_p5;
wire  signed [4:0] tmp_257_fu_1396_p7;
wire   [4:0] tmp_258_fu_1435_p1;
wire   [4:0] tmp_258_fu_1435_p3;
wire  signed [4:0] tmp_258_fu_1435_p5;
wire  signed [4:0] tmp_258_fu_1435_p7;
wire   [4:0] tmp_259_fu_1458_p1;
wire   [4:0] tmp_259_fu_1458_p3;
wire  signed [4:0] tmp_259_fu_1458_p5;
wire  signed [4:0] tmp_259_fu_1458_p7;
wire   [4:0] tmp_260_fu_1497_p1;
wire   [4:0] tmp_260_fu_1497_p3;
wire  signed [4:0] tmp_260_fu_1497_p5;
wire  signed [4:0] tmp_260_fu_1497_p7;
wire   [4:0] tmp_261_fu_1520_p1;
wire   [4:0] tmp_261_fu_1520_p3;
wire  signed [4:0] tmp_261_fu_1520_p5;
wire  signed [4:0] tmp_261_fu_1520_p7;
wire   [4:0] tmp_262_fu_1559_p1;
wire   [4:0] tmp_262_fu_1559_p3;
wire  signed [4:0] tmp_262_fu_1559_p5;
wire  signed [4:0] tmp_262_fu_1559_p7;
wire   [4:0] tmp_263_fu_1582_p1;
wire   [4:0] tmp_263_fu_1582_p3;
wire  signed [4:0] tmp_263_fu_1582_p5;
wire  signed [4:0] tmp_263_fu_1582_p7;
wire   [4:0] tmp_264_fu_1621_p1;
wire   [4:0] tmp_264_fu_1621_p3;
wire  signed [4:0] tmp_264_fu_1621_p5;
wire  signed [4:0] tmp_264_fu_1621_p7;
wire   [4:0] tmp_265_fu_1644_p1;
wire   [4:0] tmp_265_fu_1644_p3;
wire  signed [4:0] tmp_265_fu_1644_p5;
wire  signed [4:0] tmp_265_fu_1644_p7;
wire   [4:0] tmp_266_fu_1683_p1;
wire   [4:0] tmp_266_fu_1683_p3;
wire  signed [4:0] tmp_266_fu_1683_p5;
wire  signed [4:0] tmp_266_fu_1683_p7;
wire   [4:0] tmp_267_fu_1706_p1;
wire   [4:0] tmp_267_fu_1706_p3;
wire  signed [4:0] tmp_267_fu_1706_p5;
wire  signed [4:0] tmp_267_fu_1706_p7;
wire   [4:0] tmp_268_fu_1745_p1;
wire   [4:0] tmp_268_fu_1745_p3;
wire  signed [4:0] tmp_268_fu_1745_p5;
wire  signed [4:0] tmp_268_fu_1745_p7;
wire   [4:0] tmp_269_fu_1768_p1;
wire   [4:0] tmp_269_fu_1768_p3;
wire  signed [4:0] tmp_269_fu_1768_p5;
wire  signed [4:0] tmp_269_fu_1768_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 64'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 add114_i77_fu_198 = 64'd0;
#0 i_fu_202 = 7'd0;
#0 j_fu_206 = 2'd0;
#0 activations3_fu_210 = 64'd0;
#0 activations3_1_fu_214 = 64'd0;
#0 activations3_2_fu_218 = 64'd0;
#0 indvar_flatten_fu_222 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U884(.din0(tmp_s_fu_1311_p2),.din1(tmp_s_fu_1311_p4),.din2(tmp_s_fu_1311_p6),.din3(tmp_s_fu_1311_p8),.def(tmp_s_fu_1311_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_s_fu_1311_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U885(.din0(activations2_q0),.din1(activations2_8_q0),.din2(activations2_16_q0),.din3(activations2_24_q0),.def(tmp_255_fu_1334_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_255_fu_1334_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U886(.din0(tmp_256_fu_1373_p2),.din1(tmp_256_fu_1373_p4),.din2(tmp_256_fu_1373_p6),.din3(tmp_256_fu_1373_p8),.def(tmp_256_fu_1373_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_256_fu_1373_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U887(.din0(activations2_1_q0),.din1(activations2_9_q0),.din2(activations2_17_q0),.din3(activations2_25_q0),.def(tmp_257_fu_1396_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_257_fu_1396_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U888(.din0(tmp_258_fu_1435_p2),.din1(tmp_258_fu_1435_p4),.din2(tmp_258_fu_1435_p6),.din3(tmp_258_fu_1435_p8),.def(tmp_258_fu_1435_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_258_fu_1435_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U889(.din0(activations2_2_q0),.din1(activations2_10_q0),.din2(activations2_18_q0),.din3(activations2_26_q0),.def(tmp_259_fu_1458_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_259_fu_1458_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U890(.din0(tmp_260_fu_1497_p2),.din1(tmp_260_fu_1497_p4),.din2(tmp_260_fu_1497_p6),.din3(tmp_260_fu_1497_p8),.def(tmp_260_fu_1497_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_260_fu_1497_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U891(.din0(activations2_3_q0),.din1(activations2_11_q0),.din2(activations2_19_q0),.din3(activations2_27_q0),.def(tmp_261_fu_1520_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_261_fu_1520_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U892(.din0(tmp_262_fu_1559_p2),.din1(tmp_262_fu_1559_p4),.din2(tmp_262_fu_1559_p6),.din3(tmp_262_fu_1559_p8),.def(tmp_262_fu_1559_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_262_fu_1559_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U893(.din0(activations2_4_q0),.din1(activations2_12_q0),.din2(activations2_20_q0),.din3(activations2_28_q0),.def(tmp_263_fu_1582_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_263_fu_1582_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U894(.din0(tmp_264_fu_1621_p2),.din1(tmp_264_fu_1621_p4),.din2(tmp_264_fu_1621_p6),.din3(tmp_264_fu_1621_p8),.def(tmp_264_fu_1621_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_264_fu_1621_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U895(.din0(activations2_5_q0),.din1(activations2_13_q0),.din2(activations2_21_q0),.din3(activations2_29_q0),.def(tmp_265_fu_1644_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_265_fu_1644_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U896(.din0(tmp_266_fu_1683_p2),.din1(tmp_266_fu_1683_p4),.din2(tmp_266_fu_1683_p6),.din3(tmp_266_fu_1683_p8),.def(tmp_266_fu_1683_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_266_fu_1683_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U897(.din0(activations2_6_q0),.din1(activations2_14_q0),.din2(activations2_22_q0),.din3(activations2_30_q0),.def(tmp_267_fu_1706_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_267_fu_1706_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U898(.din0(tmp_268_fu_1745_p2),.din1(tmp_268_fu_1745_p4),.din2(tmp_268_fu_1745_p6),.din3(tmp_268_fu_1745_p8),.def(tmp_268_fu_1745_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_268_fu_1745_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_5_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 64 ),.CASE1( 5'h8 ),.din1_WIDTH( 64 ),.CASE2( 5'h10 ),.din2_WIDTH( 64 ),.CASE3( 5'h18 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 5 ),.dout_WIDTH( 64 ))
sparsemux_9_5_64_1_1_U899(.din0(activations2_7_q0),.din1(activations2_15_q0),.din2(activations2_23_q0),.din3(activations2_31_q0),.def(tmp_269_fu_1768_p9),.sel(trunc_ln57_reg_2006),.dout(tmp_269_fu_1768_p11));
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
        activations3_1_fu_214 <= activations3_load;
    end else if (((1'b0 == ap_block_pp0_stage63_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0))) begin
        activations3_1_fu_214 <= select_ln55_1_fu_1830_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_2_fu_218 <= activations3_2_load;
    end else if (((1'b0 == ap_block_pp0_stage63_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0))) begin
        activations3_2_fu_218 <= select_ln55_fu_1823_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_fu_210 <= activations3_1_load;
    end else if (((1'b0 == ap_block_pp0_stage63_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0))) begin
        activations3_fu_210 <= select_ln55_2_fu_1837_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add114_i77_fu_198 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add114_i77_fu_198 <= grp_fu_8393_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_202 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage63_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0))) begin
        i_fu_202 <= add_ln57_fu_1844_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln55_fu_1145_p2 == 1'd0))) begin
            indvar_flatten_fu_222 <= add_ln55_fu_1151_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_222 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln55_fu_1145_p2 == 1'd0))) begin
            j_fu_206 <= select_ln55_3_fu_1185_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_206 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln55_reg_1985 <= icmp_ln55_fu_1145_p2;
        select_ln54_reg_1997 <= select_ln54_fu_1171_p3;
        select_ln55_3_reg_2002 <= select_ln55_3_fu_1185_p3;
        select_ln55_3_reg_2002_pp0_iter1_reg <= select_ln55_3_reg_2002;
        tmp_reg_1989 <= ap_sig_allocacmp_i_load[32'd6];
        trunc_ln57_reg_2006 <= trunc_ln57_fu_1193_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul8_1_i1_reg_2436 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul8_2_i1_reg_2441 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul8_3_i1_reg_2446 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul8_4_i1_reg_2451 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul8_5_i1_reg_2456 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        mul8_6_i1_reg_2461 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        mul8_7_i1_reg_2466 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul8_i1_reg_2426 <= grp_fu_6440_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage56_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56)) | ((1'b0 == ap_block_pp0_stage48_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48)) | ((1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_1084 <= grp_fu_8393_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_255_reg_2351 <= tmp_255_fu_1334_p11;
        tmp_256_reg_2356 <= tmp_256_fu_1373_p11;
        tmp_257_reg_2361 <= tmp_257_fu_1396_p11;
        tmp_258_reg_2366 <= tmp_258_fu_1435_p11;
        tmp_259_reg_2371 <= tmp_259_fu_1458_p11;
        tmp_260_reg_2376 <= tmp_260_fu_1497_p11;
        tmp_261_reg_2381 <= tmp_261_fu_1520_p11;
        tmp_262_reg_2386 <= tmp_262_fu_1559_p11;
        tmp_263_reg_2391 <= tmp_263_fu_1582_p11;
        tmp_264_reg_2396 <= tmp_264_fu_1621_p11;
        tmp_265_reg_2401 <= tmp_265_fu_1644_p11;
        tmp_266_reg_2406 <= tmp_266_fu_1683_p11;
        tmp_267_reg_2411 <= tmp_267_fu_1706_p11;
        tmp_268_reg_2416 <= tmp_268_fu_1745_p11;
        tmp_269_reg_2421 <= tmp_269_fu_1768_p11;
        tmp_s_reg_2346 <= tmp_s_fu_1311_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage63_11001) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
        tmp_26_reg_2471 <= add_ln57_fu_1844_p2[32'd6];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_10_ce0_local = 1'b1;
    end else begin
        activations2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_11_ce0_local = 1'b1;
    end else begin
        activations2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_12_ce0_local = 1'b1;
    end else begin
        activations2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_13_ce0_local = 1'b1;
    end else begin
        activations2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_14_ce0_local = 1'b1;
    end else begin
        activations2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_15_ce0_local = 1'b1;
    end else begin
        activations2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_16_ce0_local = 1'b1;
    end else begin
        activations2_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_17_ce0_local = 1'b1;
    end else begin
        activations2_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_18_ce0_local = 1'b1;
    end else begin
        activations2_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_19_ce0_local = 1'b1;
    end else begin
        activations2_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_20_ce0_local = 1'b1;
    end else begin
        activations2_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_21_ce0_local = 1'b1;
    end else begin
        activations2_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_22_ce0_local = 1'b1;
    end else begin
        activations2_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_23_ce0_local = 1'b1;
    end else begin
        activations2_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_24_ce0_local = 1'b1;
    end else begin
        activations2_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_25_ce0_local = 1'b1;
    end else begin
        activations2_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_26_ce0_local = 1'b1;
    end else begin
        activations2_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_27_ce0_local = 1'b1;
    end else begin
        activations2_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_28_ce0_local = 1'b1;
    end else begin
        activations2_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_29_ce0_local = 1'b1;
    end else begin
        activations2_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_2_ce0_local = 1'b1;
    end else begin
        activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_30_ce0_local = 1'b1;
    end else begin
        activations2_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_31_ce0_local = 1'b1;
    end else begin
        activations2_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_3_ce0_local = 1'b1;
    end else begin
        activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_4_ce0_local = 1'b1;
    end else begin
        activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_5_ce0_local = 1'b1;
    end else begin
        activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_6_ce0_local = 1'b1;
    end else begin
        activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_7_ce0_local = 1'b1;
    end else begin
        activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_8_ce0_local = 1'b1;
    end else begin
        activations2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_9_ce0_local = 1'b1;
    end else begin
        activations2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_10_out_o = 'bx;
    end else if ((((1'b0 == ap_block_pp0_stage63) & (tmp_26_fu_1849_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_2002 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0)) | ((1'b0 == ap_block_pp0_stage63) & (tmp_26_fu_1849_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_2002 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0)))) begin
        activations3_10_out_o = select_ln55_fu_1823_p3;
    end else if ((~(select_ln55_3_reg_2002_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_2002_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage8) & (tmp_26_reg_2471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_10_out_o = grp_fu_8393_p_dout0;
    end else begin
        activations3_10_out_o = activations3_10_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_2002_pp0_iter1_reg == 2'd1) & ~(select_ln55_3_reg_2002_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (tmp_26_reg_2471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage63_11001) & (tmp_26_fu_1849_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_2002 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0)) | ((1'b0 == ap_block_pp0_stage63_11001) & (tmp_26_fu_1849_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_2002 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_10_out_o_ap_vld = 1'b1;
    end else begin
        activations3_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_8_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_2002 == 2'd0) & ~(select_ln55_3_reg_2002 == 2'd1) & (1'b0 == ap_block_pp0_stage63) & (tmp_26_fu_1849_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0)) | ((1'b0 == ap_block_pp0_stage63) & (tmp_26_fu_1849_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_2002 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0)))) begin
        activations3_8_out_o = select_ln55_2_fu_1837_p3;
    end else if (((1'b0 == ap_block_pp0_stage8) & (tmp_26_reg_2471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln55_3_reg_2002_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_8_out_o = grp_fu_8393_p_dout0;
    end else begin
        activations3_8_out_o = activations3_8_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_2002 == 2'd0) & ~(select_ln55_3_reg_2002 == 2'd1) & (1'b0 == ap_block_pp0_stage63_11001) & (tmp_26_fu_1849_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0)) | ((1'b0 == ap_block_pp0_stage63_11001) & (tmp_26_fu_1849_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_2002 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (tmp_26_reg_2471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln55_3_reg_2002_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_8_out_o_ap_vld = 1'b1;
    end else begin
        activations3_8_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations3_9_out_o = 'bx;
    end else if (((~(select_ln55_3_reg_2002 == 2'd0) & ~(select_ln55_3_reg_2002 == 2'd1) & (1'b0 == ap_block_pp0_stage63) & (tmp_26_fu_1849_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0)) | ((1'b0 == ap_block_pp0_stage63) & (tmp_26_fu_1849_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_2002 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0)))) begin
        activations3_9_out_o = select_ln55_1_fu_1830_p3;
    end else if (((1'b0 == ap_block_pp0_stage8) & (tmp_26_reg_2471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln55_3_reg_2002_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        activations3_9_out_o = grp_fu_8393_p_dout0;
    end else begin
        activations3_9_out_o = activations3_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln55_3_reg_2002 == 2'd0) & ~(select_ln55_3_reg_2002 == 2'd1) & (1'b0 == ap_block_pp0_stage63_11001) & (tmp_26_fu_1849_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0)) | ((1'b0 == ap_block_pp0_stage63_11001) & (tmp_26_fu_1849_p3 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (select_ln55_3_reg_2002 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln55_reg_1985 == 1'd0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (tmp_26_reg_2471 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (select_ln55_3_reg_2002_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        activations3_9_out_o_ap_vld = 1'b1;
    end else begin
        activations3_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (icmp_ln55_reg_1985 == 1'd1))) begin
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
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_202;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_222;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 2'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_206;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage57) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage57)) | ((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49)) | ((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41)) | ((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        grp_fu_1076_p0 = reg_1084;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1076_p0 = select_ln54_1_fu_1794_p3;
    end else begin
        grp_fu_1076_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1076_p1 = mul8_7_i1_reg_2466;
    end else if (((1'b0 == ap_block_pp0_stage57) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage57))) begin
        grp_fu_1076_p1 = mul8_6_i1_reg_2461;
    end else if (((1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage49))) begin
        grp_fu_1076_p1 = mul8_5_i1_reg_2456;
    end else if (((1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage41))) begin
        grp_fu_1076_p1 = mul8_4_i1_reg_2451;
    end else if (((1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        grp_fu_1076_p1 = mul8_3_i1_reg_2446;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_1076_p1 = mul8_2_i1_reg_2441;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1076_p1 = mul8_1_i1_reg_2436;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1076_p1 = mul8_i1_reg_2426;
    end else begin
        grp_fu_1076_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1080_p0 = tmp_268_reg_2416;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1080_p0 = tmp_266_reg_2406;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1080_p0 = tmp_264_reg_2396;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1080_p0 = tmp_262_reg_2386;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1080_p0 = tmp_260_reg_2376;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1080_p0 = tmp_258_reg_2366;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1080_p0 = tmp_256_reg_2356;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1080_p0 = tmp_s_reg_2346;
        end else begin
            grp_fu_1080_p0 = 'bx;
        end
    end else begin
        grp_fu_1080_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_1080_p1 = tmp_269_reg_2421;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_1080_p1 = tmp_267_reg_2411;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_1080_p1 = tmp_265_reg_2401;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1080_p1 = tmp_263_reg_2391;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1080_p1 = tmp_261_reg_2381;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1080_p1 = tmp_259_reg_2371;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1080_p1 = tmp_257_reg_2361;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1080_p1 = tmp_255_reg_2351;
        end else begin
            grp_fu_1080_p1 = 'bx;
        end
    end else begin
        grp_fu_1080_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_10_ce0_local = 1'b1;
    end else begin
        weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_11_ce0_local = 1'b1;
    end else begin
        weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_12_ce0_local = 1'b1;
    end else begin
        weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_13_ce0_local = 1'b1;
    end else begin
        weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_14_ce0_local = 1'b1;
    end else begin
        weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_15_ce0_local = 1'b1;
    end else begin
        weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_16_ce0_local = 1'b1;
    end else begin
        weights3_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_17_ce0_local = 1'b1;
    end else begin
        weights3_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_18_ce0_local = 1'b1;
    end else begin
        weights3_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_19_ce0_local = 1'b1;
    end else begin
        weights3_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_20_ce0_local = 1'b1;
    end else begin
        weights3_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_21_ce0_local = 1'b1;
    end else begin
        weights3_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_22_ce0_local = 1'b1;
    end else begin
        weights3_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_23_ce0_local = 1'b1;
    end else begin
        weights3_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_24_ce0_local = 1'b1;
    end else begin
        weights3_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_25_ce0_local = 1'b1;
    end else begin
        weights3_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_26_ce0_local = 1'b1;
    end else begin
        weights3_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_27_ce0_local = 1'b1;
    end else begin
        weights3_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_28_ce0_local = 1'b1;
    end else begin
        weights3_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_29_ce0_local = 1'b1;
    end else begin
        weights3_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_30_ce0_local = 1'b1;
    end else begin
        weights3_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_31_ce0_local = 1'b1;
    end else begin
        weights3_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_8_ce0_local = 1'b1;
    end else begin
        weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_9_ce0_local = 1'b1;
    end else begin
        weights3_9_ce0_local = 1'b0;
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
assign activations2_10_address0 = zext_ln54_fu_1205_p1;
assign activations2_10_ce0 = activations2_10_ce0_local;
assign activations2_11_address0 = zext_ln54_fu_1205_p1;
assign activations2_11_ce0 = activations2_11_ce0_local;
assign activations2_12_address0 = zext_ln54_fu_1205_p1;
assign activations2_12_ce0 = activations2_12_ce0_local;
assign activations2_13_address0 = zext_ln54_fu_1205_p1;
assign activations2_13_ce0 = activations2_13_ce0_local;
assign activations2_14_address0 = zext_ln54_fu_1205_p1;
assign activations2_14_ce0 = activations2_14_ce0_local;
assign activations2_15_address0 = zext_ln54_fu_1205_p1;
assign activations2_15_ce0 = activations2_15_ce0_local;
assign activations2_16_address0 = zext_ln54_fu_1205_p1;
assign activations2_16_ce0 = activations2_16_ce0_local;
assign activations2_17_address0 = zext_ln54_fu_1205_p1;
assign activations2_17_ce0 = activations2_17_ce0_local;
assign activations2_18_address0 = zext_ln54_fu_1205_p1;
assign activations2_18_ce0 = activations2_18_ce0_local;
assign activations2_19_address0 = zext_ln54_fu_1205_p1;
assign activations2_19_ce0 = activations2_19_ce0_local;
assign activations2_1_address0 = zext_ln54_fu_1205_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_20_address0 = zext_ln54_fu_1205_p1;
assign activations2_20_ce0 = activations2_20_ce0_local;
assign activations2_21_address0 = zext_ln54_fu_1205_p1;
assign activations2_21_ce0 = activations2_21_ce0_local;
assign activations2_22_address0 = zext_ln54_fu_1205_p1;
assign activations2_22_ce0 = activations2_22_ce0_local;
assign activations2_23_address0 = zext_ln54_fu_1205_p1;
assign activations2_23_ce0 = activations2_23_ce0_local;
assign activations2_24_address0 = zext_ln54_fu_1205_p1;
assign activations2_24_ce0 = activations2_24_ce0_local;
assign activations2_25_address0 = zext_ln54_fu_1205_p1;
assign activations2_25_ce0 = activations2_25_ce0_local;
assign activations2_26_address0 = zext_ln54_fu_1205_p1;
assign activations2_26_ce0 = activations2_26_ce0_local;
assign activations2_27_address0 = zext_ln54_fu_1205_p1;
assign activations2_27_ce0 = activations2_27_ce0_local;
assign activations2_28_address0 = zext_ln54_fu_1205_p1;
assign activations2_28_ce0 = activations2_28_ce0_local;
assign activations2_29_address0 = zext_ln54_fu_1205_p1;
assign activations2_29_ce0 = activations2_29_ce0_local;
assign activations2_2_address0 = zext_ln54_fu_1205_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_30_address0 = zext_ln54_fu_1205_p1;
assign activations2_30_ce0 = activations2_30_ce0_local;
assign activations2_31_address0 = zext_ln54_fu_1205_p1;
assign activations2_31_ce0 = activations2_31_ce0_local;
assign activations2_3_address0 = zext_ln54_fu_1205_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_4_address0 = zext_ln54_fu_1205_p1;
assign activations2_4_ce0 = activations2_4_ce0_local;
assign activations2_5_address0 = zext_ln54_fu_1205_p1;
assign activations2_5_ce0 = activations2_5_ce0_local;
assign activations2_6_address0 = zext_ln54_fu_1205_p1;
assign activations2_6_ce0 = activations2_6_ce0_local;
assign activations2_7_address0 = zext_ln54_fu_1205_p1;
assign activations2_7_ce0 = activations2_7_ce0_local;
assign activations2_8_address0 = zext_ln54_fu_1205_p1;
assign activations2_8_ce0 = activations2_8_ce0_local;
assign activations2_9_address0 = zext_ln54_fu_1205_p1;
assign activations2_9_ce0 = activations2_9_ce0_local;
assign activations2_address0 = zext_ln54_fu_1205_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln55_1_fu_1179_p2 = (ap_sig_allocacmp_j_load + 2'd1);
assign add_ln55_fu_1151_p2 = (ap_sig_allocacmp_indvar_flatten_load + 5'd1);
assign add_ln57_fu_1844_p2 = (select_ln54_reg_1997 + 7'd8);
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
assign grp_fu_6440_p_din0 = grp_fu_1080_p0;
assign grp_fu_6440_p_din1 = grp_fu_1080_p1;
assign grp_fu_8393_p_ce = 1'b1;
assign grp_fu_8393_p_din0 = grp_fu_1076_p0;
assign grp_fu_8393_p_din1 = grp_fu_1076_p1;
assign grp_fu_8393_p_opcode = 2'd0;
assign icmp_ln55_fu_1145_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 5'd24) ? 1'b1 : 1'b0);
assign or_ln_fu_1241_p3 = {{select_ln55_3_fu_1185_p3}, {tmp_25_fu_1197_p3}};
assign select_ln54_1_fu_1794_p3 = ((tmp_reg_1989[0:0] == 1'b1) ? 64'd0 : add114_i77_fu_198);
assign select_ln54_fu_1171_p3 = ((tmp_fu_1163_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_i_load);
assign select_ln55_1_fu_1830_p3 = ((tmp_reg_1989[0:0] == 1'b1) ? activations3_9_out_i : activations3_1_fu_214);
assign select_ln55_2_fu_1837_p3 = ((tmp_reg_1989[0:0] == 1'b1) ? activations3_8_out_i : activations3_fu_210);
assign select_ln55_3_fu_1185_p3 = ((tmp_fu_1163_p3[0:0] == 1'b1) ? add_ln55_1_fu_1179_p2 : ap_sig_allocacmp_j_load);
assign select_ln55_fu_1823_p3 = ((tmp_reg_1989[0:0] == 1'b1) ? activations3_10_out_i : activations3_2_fu_218);
assign tmp_255_fu_1334_p9 = 'bx;
assign tmp_256_fu_1373_p2 = weights3_1_q0;
assign tmp_256_fu_1373_p4 = weights3_9_q0;
assign tmp_256_fu_1373_p6 = weights3_17_q0;
assign tmp_256_fu_1373_p8 = weights3_25_q0;
assign tmp_256_fu_1373_p9 = 'bx;
assign tmp_257_fu_1396_p9 = 'bx;
assign tmp_258_fu_1435_p2 = weights3_2_q0;
assign tmp_258_fu_1435_p4 = weights3_10_q0;
assign tmp_258_fu_1435_p6 = weights3_18_q0;
assign tmp_258_fu_1435_p8 = weights3_26_q0;
assign tmp_258_fu_1435_p9 = 'bx;
assign tmp_259_fu_1458_p9 = 'bx;
assign tmp_25_fu_1197_p3 = select_ln54_fu_1171_p3[32'd5];
assign tmp_260_fu_1497_p2 = weights3_3_q0;
assign tmp_260_fu_1497_p4 = weights3_11_q0;
assign tmp_260_fu_1497_p6 = weights3_19_q0;
assign tmp_260_fu_1497_p8 = weights3_27_q0;
assign tmp_260_fu_1497_p9 = 'bx;
assign tmp_261_fu_1520_p9 = 'bx;
assign tmp_262_fu_1559_p2 = weights3_4_q0;
assign tmp_262_fu_1559_p4 = weights3_12_q0;
assign tmp_262_fu_1559_p6 = weights3_20_q0;
assign tmp_262_fu_1559_p8 = weights3_28_q0;
assign tmp_262_fu_1559_p9 = 'bx;
assign tmp_263_fu_1582_p9 = 'bx;
assign tmp_264_fu_1621_p2 = weights3_5_q0;
assign tmp_264_fu_1621_p4 = weights3_13_q0;
assign tmp_264_fu_1621_p6 = weights3_21_q0;
assign tmp_264_fu_1621_p8 = weights3_29_q0;
assign tmp_264_fu_1621_p9 = 'bx;
assign tmp_265_fu_1644_p9 = 'bx;
assign tmp_266_fu_1683_p2 = weights3_6_q0;
assign tmp_266_fu_1683_p4 = weights3_14_q0;
assign tmp_266_fu_1683_p6 = weights3_22_q0;
assign tmp_266_fu_1683_p8 = weights3_30_q0;
assign tmp_266_fu_1683_p9 = 'bx;
assign tmp_267_fu_1706_p9 = 'bx;
assign tmp_268_fu_1745_p2 = weights3_7_q0;
assign tmp_268_fu_1745_p4 = weights3_15_q0;
assign tmp_268_fu_1745_p6 = weights3_23_q0;
assign tmp_268_fu_1745_p8 = weights3_31_q0;
assign tmp_268_fu_1745_p9 = 'bx;
assign tmp_269_fu_1768_p9 = 'bx;
assign tmp_26_fu_1849_p3 = add_ln57_fu_1844_p2[32'd6];
assign tmp_fu_1163_p3 = ap_sig_allocacmp_i_load[32'd6];
assign tmp_s_fu_1311_p2 = weights3_0_q0;
assign tmp_s_fu_1311_p4 = weights3_8_q0;
assign tmp_s_fu_1311_p6 = weights3_16_q0;
assign tmp_s_fu_1311_p8 = weights3_24_q0;
assign tmp_s_fu_1311_p9 = 'bx;
assign trunc_ln57_fu_1193_p1 = select_ln54_fu_1171_p3[4:0];
assign weights3_0_address0 = zext_ln58_fu_1249_p1;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_10_address0 = zext_ln58_fu_1249_p1;
assign weights3_10_ce0 = weights3_10_ce0_local;
assign weights3_11_address0 = zext_ln58_fu_1249_p1;
assign weights3_11_ce0 = weights3_11_ce0_local;
assign weights3_12_address0 = zext_ln58_fu_1249_p1;
assign weights3_12_ce0 = weights3_12_ce0_local;
assign weights3_13_address0 = zext_ln58_fu_1249_p1;
assign weights3_13_ce0 = weights3_13_ce0_local;
assign weights3_14_address0 = zext_ln58_fu_1249_p1;
assign weights3_14_ce0 = weights3_14_ce0_local;
assign weights3_15_address0 = zext_ln58_fu_1249_p1;
assign weights3_15_ce0 = weights3_15_ce0_local;
assign weights3_16_address0 = zext_ln58_fu_1249_p1;
assign weights3_16_ce0 = weights3_16_ce0_local;
assign weights3_17_address0 = zext_ln58_fu_1249_p1;
assign weights3_17_ce0 = weights3_17_ce0_local;
assign weights3_18_address0 = zext_ln58_fu_1249_p1;
assign weights3_18_ce0 = weights3_18_ce0_local;
assign weights3_19_address0 = zext_ln58_fu_1249_p1;
assign weights3_19_ce0 = weights3_19_ce0_local;
assign weights3_1_address0 = zext_ln58_fu_1249_p1;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_20_address0 = zext_ln58_fu_1249_p1;
assign weights3_20_ce0 = weights3_20_ce0_local;
assign weights3_21_address0 = zext_ln58_fu_1249_p1;
assign weights3_21_ce0 = weights3_21_ce0_local;
assign weights3_22_address0 = zext_ln58_fu_1249_p1;
assign weights3_22_ce0 = weights3_22_ce0_local;
assign weights3_23_address0 = zext_ln58_fu_1249_p1;
assign weights3_23_ce0 = weights3_23_ce0_local;
assign weights3_24_address0 = zext_ln58_fu_1249_p1;
assign weights3_24_ce0 = weights3_24_ce0_local;
assign weights3_25_address0 = zext_ln58_fu_1249_p1;
assign weights3_25_ce0 = weights3_25_ce0_local;
assign weights3_26_address0 = zext_ln58_fu_1249_p1;
assign weights3_26_ce0 = weights3_26_ce0_local;
assign weights3_27_address0 = zext_ln58_fu_1249_p1;
assign weights3_27_ce0 = weights3_27_ce0_local;
assign weights3_28_address0 = zext_ln58_fu_1249_p1;
assign weights3_28_ce0 = weights3_28_ce0_local;
assign weights3_29_address0 = zext_ln58_fu_1249_p1;
assign weights3_29_ce0 = weights3_29_ce0_local;
assign weights3_2_address0 = zext_ln58_fu_1249_p1;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_30_address0 = zext_ln58_fu_1249_p1;
assign weights3_30_ce0 = weights3_30_ce0_local;
assign weights3_31_address0 = zext_ln58_fu_1249_p1;
assign weights3_31_ce0 = weights3_31_ce0_local;
assign weights3_3_address0 = zext_ln58_fu_1249_p1;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_4_address0 = zext_ln58_fu_1249_p1;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_5_address0 = zext_ln58_fu_1249_p1;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_6_address0 = zext_ln58_fu_1249_p1;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_7_address0 = zext_ln58_fu_1249_p1;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_8_address0 = zext_ln58_fu_1249_p1;
assign weights3_8_ce0 = weights3_8_ce0_local;
assign weights3_9_address0 = zext_ln58_fu_1249_p1;
assign weights3_9_ce0 = weights3_9_ce0_local;
assign zext_ln54_fu_1205_p1 = tmp_25_fu_1197_p3;
assign zext_ln58_fu_1249_p1 = or_ln_fu_1241_p3;
endmodule 