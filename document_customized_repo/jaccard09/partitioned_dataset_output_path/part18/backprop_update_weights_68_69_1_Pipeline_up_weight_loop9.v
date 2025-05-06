
module backprop_update_weights_68_69_1_Pipeline_up_weight_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_15_address0,weights3_15_ce0,weights3_15_we0,weights3_15_d0,weights3_15_q0,weights3_15_address1,weights3_15_ce1,weights3_15_we1,weights3_15_d1,weights3_15_q1,weights3_14_address0,weights3_14_ce0,weights3_14_we0,weights3_14_d0,weights3_14_q0,weights3_14_address1,weights3_14_ce1,weights3_14_we1,weights3_14_d1,weights3_14_q1,weights3_13_address0,weights3_13_ce0,weights3_13_we0,weights3_13_d0,weights3_13_q0,weights3_13_address1,weights3_13_ce1,weights3_13_we1,weights3_13_d1,weights3_13_q1,weights3_12_address0,weights3_12_ce0,weights3_12_we0,weights3_12_d0,weights3_12_q0,weights3_12_address1,weights3_12_ce1,weights3_12_we1,weights3_12_d1,weights3_12_q1,weights3_11_address0,weights3_11_ce0,weights3_11_we0,weights3_11_d0,weights3_11_q0,weights3_11_address1,weights3_11_ce1,weights3_11_we1,weights3_11_d1,weights3_11_q1,weights3_10_address0,weights3_10_ce0,weights3_10_we0,weights3_10_d0,weights3_10_q0,weights3_10_address1,weights3_10_ce1,weights3_10_we1,weights3_10_d1,weights3_10_q1,weights3_9_address0,weights3_9_ce0,weights3_9_we0,weights3_9_d0,weights3_9_q0,weights3_9_address1,weights3_9_ce1,weights3_9_we1,weights3_9_d1,weights3_9_q1,weights3_8_address0,weights3_8_ce0,weights3_8_we0,weights3_8_d0,weights3_8_q0,weights3_8_address1,weights3_8_ce1,weights3_8_we1,weights3_8_d1,weights3_8_q1,weights3_7_address0,weights3_7_ce0,weights3_7_we0,weights3_7_d0,weights3_7_q0,weights3_7_address1,weights3_7_ce1,weights3_7_we1,weights3_7_d1,weights3_7_q1,weights3_6_address0,weights3_6_ce0,weights3_6_we0,weights3_6_d0,weights3_6_q0,weights3_6_address1,weights3_6_ce1,weights3_6_we1,weights3_6_d1,weights3_6_q1,weights3_5_address0,weights3_5_ce0,weights3_5_we0,weights3_5_d0,weights3_5_q0,weights3_5_address1,weights3_5_ce1,weights3_5_we1,weights3_5_d1,weights3_5_q1,weights3_4_address0,weights3_4_ce0,weights3_4_we0,weights3_4_d0,weights3_4_q0,weights3_4_address1,weights3_4_ce1,weights3_4_we1,weights3_4_d1,weights3_4_q1,weights3_3_address0,weights3_3_ce0,weights3_3_we0,weights3_3_d0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_we1,weights3_3_d1,weights3_3_q1,weights3_2_address0,weights3_2_ce0,weights3_2_we0,weights3_2_d0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_we1,weights3_2_d1,weights3_2_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,d_weights3_0_address0,d_weights3_0_ce0,d_weights3_0_q0,d_weights3_0_address1,d_weights3_0_ce1,d_weights3_0_q1,d_weights3_4_address0,d_weights3_4_ce0,d_weights3_4_q0,d_weights3_4_address1,d_weights3_4_ce1,d_weights3_4_q1,d_weights3_8_address0,d_weights3_8_ce0,d_weights3_8_q0,d_weights3_8_address1,d_weights3_8_ce1,d_weights3_8_q1,d_weights3_12_address0,d_weights3_12_ce0,d_weights3_12_q0,d_weights3_12_address1,d_weights3_12_ce1,d_weights3_12_q1,d_weights3_1_address0,d_weights3_1_ce0,d_weights3_1_q0,d_weights3_1_address1,d_weights3_1_ce1,d_weights3_1_q1,d_weights3_5_address0,d_weights3_5_ce0,d_weights3_5_q0,d_weights3_5_address1,d_weights3_5_ce1,d_weights3_5_q1,d_weights3_9_address0,d_weights3_9_ce0,d_weights3_9_q0,d_weights3_9_address1,d_weights3_9_ce1,d_weights3_9_q1,d_weights3_13_address0,d_weights3_13_ce0,d_weights3_13_q0,d_weights3_13_address1,d_weights3_13_ce1,d_weights3_13_q1,d_weights3_2_address0,d_weights3_2_ce0,d_weights3_2_q0,d_weights3_2_address1,d_weights3_2_ce1,d_weights3_2_q1,d_weights3_6_address0,d_weights3_6_ce0,d_weights3_6_q0,d_weights3_6_address1,d_weights3_6_ce1,d_weights3_6_q1,d_weights3_10_address0,d_weights3_10_ce0,d_weights3_10_q0,d_weights3_10_address1,d_weights3_10_ce1,d_weights3_10_q1,d_weights3_14_address0,d_weights3_14_ce0,d_weights3_14_q0,d_weights3_14_address1,d_weights3_14_ce1,d_weights3_14_q1,d_weights3_3_address0,d_weights3_3_ce0,d_weights3_3_q0,d_weights3_3_address1,d_weights3_3_ce1,d_weights3_3_q1,d_weights3_7_address0,d_weights3_7_ce0,d_weights3_7_q0,d_weights3_7_address1,d_weights3_7_ce1,d_weights3_7_q1,d_weights3_11_address0,d_weights3_11_ce0,d_weights3_11_q0,d_weights3_11_address1,d_weights3_11_ce1,d_weights3_11_q1,d_weights3_15_address0,d_weights3_15_ce0,d_weights3_15_q0,d_weights3_15_address1,d_weights3_15_ce1,d_weights3_15_q1,norm_15_out,norm_15_out_ap_vld,grp_fu_1155_p_din0,grp_fu_1155_p_din1,grp_fu_1155_p_opcode,grp_fu_1155_p_dout0,grp_fu_1155_p_ce,grp_fu_1159_p_din0,grp_fu_1159_p_din1,grp_fu_1159_p_opcode,grp_fu_1159_p_dout0,grp_fu_1159_p_ce,grp_fu_1163_p_din0,grp_fu_1163_p_din1,grp_fu_1163_p_dout0,grp_fu_1163_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 96'd1;
parameter    ap_ST_fsm_pp0_stage1 = 96'd2;
parameter    ap_ST_fsm_pp0_stage2 = 96'd4;
parameter    ap_ST_fsm_pp0_stage3 = 96'd8;
parameter    ap_ST_fsm_pp0_stage4 = 96'd16;
parameter    ap_ST_fsm_pp0_stage5 = 96'd32;
parameter    ap_ST_fsm_pp0_stage6 = 96'd64;
parameter    ap_ST_fsm_pp0_stage7 = 96'd128;
parameter    ap_ST_fsm_pp0_stage8 = 96'd256;
parameter    ap_ST_fsm_pp0_stage9 = 96'd512;
parameter    ap_ST_fsm_pp0_stage10 = 96'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 96'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 96'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 96'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 96'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 96'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 96'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 96'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 96'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 96'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 96'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 96'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 96'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 96'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 96'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 96'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 96'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 96'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 96'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 96'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 96'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 96'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 96'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 96'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 96'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 96'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 96'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 96'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 96'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 96'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 96'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 96'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 96'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 96'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 96'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 96'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 96'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 96'd140737488355328;
parameter    ap_ST_fsm_pp0_stage48 = 96'd281474976710656;
parameter    ap_ST_fsm_pp0_stage49 = 96'd562949953421312;
parameter    ap_ST_fsm_pp0_stage50 = 96'd1125899906842624;
parameter    ap_ST_fsm_pp0_stage51 = 96'd2251799813685248;
parameter    ap_ST_fsm_pp0_stage52 = 96'd4503599627370496;
parameter    ap_ST_fsm_pp0_stage53 = 96'd9007199254740992;
parameter    ap_ST_fsm_pp0_stage54 = 96'd18014398509481984;
parameter    ap_ST_fsm_pp0_stage55 = 96'd36028797018963968;
parameter    ap_ST_fsm_pp0_stage56 = 96'd72057594037927936;
parameter    ap_ST_fsm_pp0_stage57 = 96'd144115188075855872;
parameter    ap_ST_fsm_pp0_stage58 = 96'd288230376151711744;
parameter    ap_ST_fsm_pp0_stage59 = 96'd576460752303423488;
parameter    ap_ST_fsm_pp0_stage60 = 96'd1152921504606846976;
parameter    ap_ST_fsm_pp0_stage61 = 96'd2305843009213693952;
parameter    ap_ST_fsm_pp0_stage62 = 96'd4611686018427387904;
parameter    ap_ST_fsm_pp0_stage63 = 96'd9223372036854775808;
parameter    ap_ST_fsm_pp0_stage64 = 96'd18446744073709551616;
parameter    ap_ST_fsm_pp0_stage65 = 96'd36893488147419103232;
parameter    ap_ST_fsm_pp0_stage66 = 96'd73786976294838206464;
parameter    ap_ST_fsm_pp0_stage67 = 96'd147573952589676412928;
parameter    ap_ST_fsm_pp0_stage68 = 96'd295147905179352825856;
parameter    ap_ST_fsm_pp0_stage69 = 96'd590295810358705651712;
parameter    ap_ST_fsm_pp0_stage70 = 96'd1180591620717411303424;
parameter    ap_ST_fsm_pp0_stage71 = 96'd2361183241434822606848;
parameter    ap_ST_fsm_pp0_stage72 = 96'd4722366482869645213696;
parameter    ap_ST_fsm_pp0_stage73 = 96'd9444732965739290427392;
parameter    ap_ST_fsm_pp0_stage74 = 96'd18889465931478580854784;
parameter    ap_ST_fsm_pp0_stage75 = 96'd37778931862957161709568;
parameter    ap_ST_fsm_pp0_stage76 = 96'd75557863725914323419136;
parameter    ap_ST_fsm_pp0_stage77 = 96'd151115727451828646838272;
parameter    ap_ST_fsm_pp0_stage78 = 96'd302231454903657293676544;
parameter    ap_ST_fsm_pp0_stage79 = 96'd604462909807314587353088;
parameter    ap_ST_fsm_pp0_stage80 = 96'd1208925819614629174706176;
parameter    ap_ST_fsm_pp0_stage81 = 96'd2417851639229258349412352;
parameter    ap_ST_fsm_pp0_stage82 = 96'd4835703278458516698824704;
parameter    ap_ST_fsm_pp0_stage83 = 96'd9671406556917033397649408;
parameter    ap_ST_fsm_pp0_stage84 = 96'd19342813113834066795298816;
parameter    ap_ST_fsm_pp0_stage85 = 96'd38685626227668133590597632;
parameter    ap_ST_fsm_pp0_stage86 = 96'd77371252455336267181195264;
parameter    ap_ST_fsm_pp0_stage87 = 96'd154742504910672534362390528;
parameter    ap_ST_fsm_pp0_stage88 = 96'd309485009821345068724781056;
parameter    ap_ST_fsm_pp0_stage89 = 96'd618970019642690137449562112;
parameter    ap_ST_fsm_pp0_stage90 = 96'd1237940039285380274899124224;
parameter    ap_ST_fsm_pp0_stage91 = 96'd2475880078570760549798248448;
parameter    ap_ST_fsm_pp0_stage92 = 96'd4951760157141521099596496896;
parameter    ap_ST_fsm_pp0_stage93 = 96'd9903520314283042199192993792;
parameter    ap_ST_fsm_pp0_stage94 = 96'd19807040628566084398385987584;
parameter    ap_ST_fsm_pp0_stage95 = 96'd39614081257132168796771975168;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] weights3_15_address0;
output   weights3_15_ce0;
output   weights3_15_we0;
output  [63:0] weights3_15_d0;
input  [63:0] weights3_15_q0;
output  [3:0] weights3_15_address1;
output   weights3_15_ce1;
output   weights3_15_we1;
output  [63:0] weights3_15_d1;
input  [63:0] weights3_15_q1;
output  [3:0] weights3_14_address0;
output   weights3_14_ce0;
output   weights3_14_we0;
output  [63:0] weights3_14_d0;
input  [63:0] weights3_14_q0;
output  [3:0] weights3_14_address1;
output   weights3_14_ce1;
output   weights3_14_we1;
output  [63:0] weights3_14_d1;
input  [63:0] weights3_14_q1;
output  [3:0] weights3_13_address0;
output   weights3_13_ce0;
output   weights3_13_we0;
output  [63:0] weights3_13_d0;
input  [63:0] weights3_13_q0;
output  [3:0] weights3_13_address1;
output   weights3_13_ce1;
output   weights3_13_we1;
output  [63:0] weights3_13_d1;
input  [63:0] weights3_13_q1;
output  [3:0] weights3_12_address0;
output   weights3_12_ce0;
output   weights3_12_we0;
output  [63:0] weights3_12_d0;
input  [63:0] weights3_12_q0;
output  [3:0] weights3_12_address1;
output   weights3_12_ce1;
output   weights3_12_we1;
output  [63:0] weights3_12_d1;
input  [63:0] weights3_12_q1;
output  [3:0] weights3_11_address0;
output   weights3_11_ce0;
output   weights3_11_we0;
output  [63:0] weights3_11_d0;
input  [63:0] weights3_11_q0;
output  [3:0] weights3_11_address1;
output   weights3_11_ce1;
output   weights3_11_we1;
output  [63:0] weights3_11_d1;
input  [63:0] weights3_11_q1;
output  [3:0] weights3_10_address0;
output   weights3_10_ce0;
output   weights3_10_we0;
output  [63:0] weights3_10_d0;
input  [63:0] weights3_10_q0;
output  [3:0] weights3_10_address1;
output   weights3_10_ce1;
output   weights3_10_we1;
output  [63:0] weights3_10_d1;
input  [63:0] weights3_10_q1;
output  [3:0] weights3_9_address0;
output   weights3_9_ce0;
output   weights3_9_we0;
output  [63:0] weights3_9_d0;
input  [63:0] weights3_9_q0;
output  [3:0] weights3_9_address1;
output   weights3_9_ce1;
output   weights3_9_we1;
output  [63:0] weights3_9_d1;
input  [63:0] weights3_9_q1;
output  [3:0] weights3_8_address0;
output   weights3_8_ce0;
output   weights3_8_we0;
output  [63:0] weights3_8_d0;
input  [63:0] weights3_8_q0;
output  [3:0] weights3_8_address1;
output   weights3_8_ce1;
output   weights3_8_we1;
output  [63:0] weights3_8_d1;
input  [63:0] weights3_8_q1;
output  [3:0] weights3_7_address0;
output   weights3_7_ce0;
output   weights3_7_we0;
output  [63:0] weights3_7_d0;
input  [63:0] weights3_7_q0;
output  [3:0] weights3_7_address1;
output   weights3_7_ce1;
output   weights3_7_we1;
output  [63:0] weights3_7_d1;
input  [63:0] weights3_7_q1;
output  [3:0] weights3_6_address0;
output   weights3_6_ce0;
output   weights3_6_we0;
output  [63:0] weights3_6_d0;
input  [63:0] weights3_6_q0;
output  [3:0] weights3_6_address1;
output   weights3_6_ce1;
output   weights3_6_we1;
output  [63:0] weights3_6_d1;
input  [63:0] weights3_6_q1;
output  [3:0] weights3_5_address0;
output   weights3_5_ce0;
output   weights3_5_we0;
output  [63:0] weights3_5_d0;
input  [63:0] weights3_5_q0;
output  [3:0] weights3_5_address1;
output   weights3_5_ce1;
output   weights3_5_we1;
output  [63:0] weights3_5_d1;
input  [63:0] weights3_5_q1;
output  [3:0] weights3_4_address0;
output   weights3_4_ce0;
output   weights3_4_we0;
output  [63:0] weights3_4_d0;
input  [63:0] weights3_4_q0;
output  [3:0] weights3_4_address1;
output   weights3_4_ce1;
output   weights3_4_we1;
output  [63:0] weights3_4_d1;
input  [63:0] weights3_4_q1;
output  [3:0] weights3_3_address0;
output   weights3_3_ce0;
output   weights3_3_we0;
output  [63:0] weights3_3_d0;
input  [63:0] weights3_3_q0;
output  [3:0] weights3_3_address1;
output   weights3_3_ce1;
output   weights3_3_we1;
output  [63:0] weights3_3_d1;
input  [63:0] weights3_3_q1;
output  [3:0] weights3_2_address0;
output   weights3_2_ce0;
output   weights3_2_we0;
output  [63:0] weights3_2_d0;
input  [63:0] weights3_2_q0;
output  [3:0] weights3_2_address1;
output   weights3_2_ce1;
output   weights3_2_we1;
output  [63:0] weights3_2_d1;
input  [63:0] weights3_2_q1;
output  [3:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [3:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [3:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [3:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
output  [3:0] d_weights3_0_address0;
output   d_weights3_0_ce0;
input  [63:0] d_weights3_0_q0;
output  [3:0] d_weights3_0_address1;
output   d_weights3_0_ce1;
input  [63:0] d_weights3_0_q1;
output  [3:0] d_weights3_4_address0;
output   d_weights3_4_ce0;
input  [63:0] d_weights3_4_q0;
output  [3:0] d_weights3_4_address1;
output   d_weights3_4_ce1;
input  [63:0] d_weights3_4_q1;
output  [3:0] d_weights3_8_address0;
output   d_weights3_8_ce0;
input  [63:0] d_weights3_8_q0;
output  [3:0] d_weights3_8_address1;
output   d_weights3_8_ce1;
input  [63:0] d_weights3_8_q1;
output  [3:0] d_weights3_12_address0;
output   d_weights3_12_ce0;
input  [63:0] d_weights3_12_q0;
output  [3:0] d_weights3_12_address1;
output   d_weights3_12_ce1;
input  [63:0] d_weights3_12_q1;
output  [3:0] d_weights3_1_address0;
output   d_weights3_1_ce0;
input  [63:0] d_weights3_1_q0;
output  [3:0] d_weights3_1_address1;
output   d_weights3_1_ce1;
input  [63:0] d_weights3_1_q1;
output  [3:0] d_weights3_5_address0;
output   d_weights3_5_ce0;
input  [63:0] d_weights3_5_q0;
output  [3:0] d_weights3_5_address1;
output   d_weights3_5_ce1;
input  [63:0] d_weights3_5_q1;
output  [3:0] d_weights3_9_address0;
output   d_weights3_9_ce0;
input  [63:0] d_weights3_9_q0;
output  [3:0] d_weights3_9_address1;
output   d_weights3_9_ce1;
input  [63:0] d_weights3_9_q1;
output  [3:0] d_weights3_13_address0;
output   d_weights3_13_ce0;
input  [63:0] d_weights3_13_q0;
output  [3:0] d_weights3_13_address1;
output   d_weights3_13_ce1;
input  [63:0] d_weights3_13_q1;
output  [3:0] d_weights3_2_address0;
output   d_weights3_2_ce0;
input  [63:0] d_weights3_2_q0;
output  [3:0] d_weights3_2_address1;
output   d_weights3_2_ce1;
input  [63:0] d_weights3_2_q1;
output  [3:0] d_weights3_6_address0;
output   d_weights3_6_ce0;
input  [63:0] d_weights3_6_q0;
output  [3:0] d_weights3_6_address1;
output   d_weights3_6_ce1;
input  [63:0] d_weights3_6_q1;
output  [3:0] d_weights3_10_address0;
output   d_weights3_10_ce0;
input  [63:0] d_weights3_10_q0;
output  [3:0] d_weights3_10_address1;
output   d_weights3_10_ce1;
input  [63:0] d_weights3_10_q1;
output  [3:0] d_weights3_14_address0;
output   d_weights3_14_ce0;
input  [63:0] d_weights3_14_q0;
output  [3:0] d_weights3_14_address1;
output   d_weights3_14_ce1;
input  [63:0] d_weights3_14_q1;
output  [3:0] d_weights3_3_address0;
output   d_weights3_3_ce0;
input  [63:0] d_weights3_3_q0;
output  [3:0] d_weights3_3_address1;
output   d_weights3_3_ce1;
input  [63:0] d_weights3_3_q1;
output  [3:0] d_weights3_7_address0;
output   d_weights3_7_ce0;
input  [63:0] d_weights3_7_q0;
output  [3:0] d_weights3_7_address1;
output   d_weights3_7_ce1;
input  [63:0] d_weights3_7_q1;
output  [3:0] d_weights3_11_address0;
output   d_weights3_11_ce0;
input  [63:0] d_weights3_11_q0;
output  [3:0] d_weights3_11_address1;
output   d_weights3_11_ce1;
input  [63:0] d_weights3_11_q1;
output  [3:0] d_weights3_15_address0;
output   d_weights3_15_ce0;
input  [63:0] d_weights3_15_q0;
output  [3:0] d_weights3_15_address1;
output   d_weights3_15_ce1;
input  [63:0] d_weights3_15_q1;
output  [63:0] norm_15_out;
output   norm_15_out_ap_vld;
output  [63:0] grp_fu_1155_p_din0;
output  [63:0] grp_fu_1155_p_din1;
output  [1:0] grp_fu_1155_p_opcode;
input  [63:0] grp_fu_1155_p_dout0;
output   grp_fu_1155_p_ce;
output  [63:0] grp_fu_1159_p_din0;
output  [63:0] grp_fu_1159_p_din1;
output  [1:0] grp_fu_1159_p_opcode;
input  [63:0] grp_fu_1159_p_dout0;
output   grp_fu_1159_p_ce;
output  [63:0] grp_fu_1163_p_din0;
output  [63:0] grp_fu_1163_p_din1;
input  [63:0] grp_fu_1163_p_dout0;
output   grp_fu_1163_p_ce;
reg ap_idle;
reg norm_15_out_ap_vld;
(* fsm_encoding = "none" *) reg   [95:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] tmp_reg_2526;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage95;
wire    ap_block_pp0_stage95_subdone;
reg   [63:0] reg_1232;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_1237;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_1242;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_1247;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_1252;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] reg_1257;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_1262;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [63:0] reg_1267;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
reg   [63:0] reg_1272;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39_11001;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47_11001;
wire    ap_CS_fsm_pp0_stage55;
wire    ap_block_pp0_stage55_11001;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_11001;
wire    ap_CS_fsm_pp0_stage71;
wire    ap_block_pp0_stage71_11001;
wire    ap_CS_fsm_pp0_stage79;
wire    ap_block_pp0_stage79_11001;
wire    ap_CS_fsm_pp0_stage87;
wire    ap_block_pp0_stage87_11001;
wire    ap_block_pp0_stage95_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_1279;
reg   [63:0] reg_1285;
reg   [63:0] reg_1291;
reg   [63:0] reg_1297;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_2520;
reg   [3:0] weights3_0_addr_reg_2550;
reg   [3:0] weights3_4_addr_reg_2556;
reg   [3:0] weights3_8_addr_reg_2562;
reg   [3:0] weights3_12_addr_reg_2568;
reg   [5:0] tmp_2_reg_2614;
reg   [3:0] weights3_1_addr_reg_2639;
reg   [3:0] weights3_5_addr_reg_2645;
reg   [3:0] weights3_9_addr_reg_2651;
reg   [3:0] weights3_13_addr_reg_2657;
reg   [3:0] weights3_2_addr_reg_2663;
reg   [3:0] weights3_6_addr_reg_2669;
reg   [3:0] weights3_10_addr_reg_2675;
reg   [3:0] weights3_14_addr_reg_2681;
reg   [3:0] weights3_3_addr_reg_2687;
reg   [3:0] weights3_7_addr_reg_2693;
reg   [3:0] weights3_11_addr_reg_2699;
reg   [3:0] weights3_15_addr_reg_2705;
wire   [3:0] trunc_ln178_fu_1402_p1;
reg   [3:0] trunc_ln178_reg_2711;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_s_fu_1405_p11;
reg   [63:0] tmp_s_reg_2731;
wire   [63:0] tmp_1_fu_1445_p11;
reg   [63:0] tmp_1_reg_2736;
wire   [63:0] tmp_4_fu_1700_p11;
reg   [63:0] tmp_4_reg_2901;
wire   [63:0] tmp_5_fu_1724_p11;
reg   [63:0] tmp_5_reg_2906;
wire   [63:0] tmp_6_fu_1748_p11;
reg   [63:0] tmp_6_reg_2911;
wire   [63:0] tmp_15_fu_1788_p11;
reg   [63:0] tmp_15_reg_2916;
wire   [63:0] tmp_16_fu_1828_p11;
reg   [63:0] tmp_16_reg_2921;
wire   [63:0] tmp_17_fu_1868_p11;
reg   [63:0] tmp_17_reg_2926;
reg   [3:0] weights3_0_addr_1_reg_2931;
reg   [3:0] weights3_4_addr_1_reg_2937;
reg   [3:0] weights3_8_addr_1_reg_2943;
reg   [3:0] weights3_12_addr_1_reg_2949;
reg   [3:0] weights3_1_addr_1_reg_2955;
reg   [3:0] weights3_5_addr_1_reg_2961;
reg   [3:0] weights3_9_addr_1_reg_2967;
reg   [3:0] weights3_13_addr_1_reg_2973;
reg   [3:0] weights3_2_addr_1_reg_2979;
reg   [3:0] weights3_6_addr_1_reg_2985;
reg   [3:0] weights3_10_addr_1_reg_2991;
reg   [3:0] weights3_14_addr_1_reg_2997;
reg   [3:0] weights3_3_addr_1_reg_3003;
reg   [3:0] weights3_7_addr_1_reg_3009;
reg   [3:0] weights3_11_addr_1_reg_3015;
reg   [3:0] weights3_15_addr_1_reg_3021;
reg   [3:0] weights3_0_addr_2_reg_3027;
reg   [3:0] weights3_4_addr_2_reg_3033;
reg   [3:0] weights3_8_addr_2_reg_3039;
reg   [3:0] weights3_12_addr_2_reg_3045;
reg   [3:0] weights3_1_addr_2_reg_3051;
reg   [3:0] weights3_5_addr_2_reg_3057;
reg   [3:0] weights3_9_addr_2_reg_3063;
reg   [3:0] weights3_13_addr_2_reg_3069;
reg   [3:0] weights3_2_addr_2_reg_3075;
reg   [3:0] weights3_6_addr_2_reg_3081;
reg   [3:0] weights3_10_addr_2_reg_3087;
reg   [3:0] weights3_14_addr_2_reg_3093;
reg   [3:0] weights3_3_addr_2_reg_3099;
reg   [3:0] weights3_7_addr_2_reg_3105;
reg   [3:0] weights3_11_addr_2_reg_3111;
reg   [3:0] weights3_15_addr_2_reg_3117;
wire   [63:0] tmp_7_fu_1892_p11;
reg   [63:0] tmp_7_reg_3123;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_8_fu_1915_p11;
reg   [63:0] tmp_8_reg_3128;
wire   [63:0] tmp_9_fu_1938_p11;
reg   [63:0] tmp_9_reg_3133;
wire   [63:0] tmp_10_fu_1961_p11;
reg   [63:0] tmp_10_reg_3138;
wire   [63:0] tmp_11_fu_1984_p11;
reg   [63:0] tmp_11_reg_3143;
wire   [63:0] tmp_12_fu_2007_p11;
reg   [63:0] tmp_12_reg_3148;
wire   [63:0] tmp_13_fu_2030_p11;
reg   [63:0] tmp_13_reg_3153;
wire   [63:0] tmp_14_fu_2053_p11;
reg   [63:0] tmp_14_reg_3158;
wire   [63:0] tmp_18_fu_2092_p11;
reg   [63:0] tmp_18_reg_3163;
wire   [63:0] tmp_19_fu_2131_p11;
reg   [63:0] tmp_19_reg_3168;
wire   [63:0] tmp_20_fu_2170_p11;
reg   [63:0] tmp_20_reg_3173;
wire   [63:0] tmp_21_fu_2209_p11;
reg   [63:0] tmp_21_reg_3178;
wire   [63:0] tmp_22_fu_2248_p11;
reg   [63:0] tmp_22_reg_3183;
wire   [63:0] tmp_23_fu_2287_p11;
reg   [63:0] tmp_23_reg_3188;
wire   [63:0] tmp_24_fu_2326_p11;
reg   [63:0] tmp_24_reg_3193;
wire   [63:0] tmp_25_fu_2365_p11;
reg   [63:0] tmp_25_reg_3198;
reg   [63:0] sub168_1_2_reg_3203;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] sub168_2_reg_3210;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] mul177_3_reg_3222;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
reg   [63:0] mul177_3_1_reg_3227;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
reg   [63:0] mul177_3_2_reg_3232;
wire    ap_CS_fsm_pp0_stage34;
wire    ap_block_pp0_stage34_11001;
reg   [63:0] norm_10_reg_3237;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln122_1_fu_1356_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln180_fu_1492_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln180_1_fu_1520_p1;
wire   [63:0] zext_ln180_2_fu_1548_p1;
wire   [63:0] zext_ln180_3_fu_1576_p1;
wire   [63:0] zext_ln180_4_fu_1604_p1;
wire   [63:0] zext_ln180_5_fu_1632_p1;
wire   [63:0] zext_ln180_6_fu_1660_p1;
wire   [63:0] zext_ln180_7_fu_1688_p1;
reg   [63:0] norm_fu_148;
wire    ap_block_pp0_stage23;
wire    ap_loop_init;
wire    ap_block_pp0_stage24;
reg   [6:0] i_fu_152;
wire   [6:0] add_ln178_fu_2486_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage23_01001;
reg    d_weights3_0_ce0_local;
reg   [3:0] d_weights3_0_address0_local;
reg    d_weights3_0_ce1_local;
reg    d_weights3_4_ce0_local;
reg   [3:0] d_weights3_4_address0_local;
reg    d_weights3_4_ce1_local;
reg    d_weights3_8_ce0_local;
reg   [3:0] d_weights3_8_address0_local;
reg    d_weights3_8_ce1_local;
reg    d_weights3_12_ce0_local;
reg   [3:0] d_weights3_12_address0_local;
reg    d_weights3_12_ce1_local;
reg    weights3_0_ce0_local;
reg   [3:0] weights3_0_address0_local;
reg    weights3_0_ce1_local;
reg   [3:0] weights3_0_address1_local;
reg    weights3_0_we1_local;
reg    ap_predicate_pred1288_state18;
reg   [63:0] weights3_0_d1_local;
wire   [63:0] bitcast_ln180_48_fu_2388_p1;
wire    ap_block_pp0_stage17;
reg    weights3_0_we0_local;
reg    ap_predicate_pred1303_state22;
wire   [63:0] bitcast_ln180_52_fu_2420_p1;
wire    ap_block_pp0_stage21;
reg    ap_predicate_pred1317_state26;
wire   [63:0] bitcast_ln180_56_fu_2454_p1;
wire    ap_block_pp0_stage25;
reg    weights3_4_ce0_local;
reg   [3:0] weights3_4_address0_local;
reg    weights3_4_ce1_local;
reg   [3:0] weights3_4_address1_local;
reg    weights3_4_we1_local;
reg    ap_predicate_pred1340_state18;
reg   [63:0] weights3_4_d1_local;
reg    weights3_4_we0_local;
reg    ap_predicate_pred1288_state22;
reg    ap_predicate_pred1303_state26;
reg    weights3_8_ce0_local;
reg   [3:0] weights3_8_address0_local;
reg    weights3_8_ce1_local;
reg   [3:0] weights3_8_address1_local;
reg    weights3_8_we1_local;
reg    ap_predicate_pred1317_state18;
reg   [63:0] weights3_8_d1_local;
reg    weights3_8_we0_local;
reg    ap_predicate_pred1340_state22;
reg    ap_predicate_pred1288_state26;
reg    weights3_12_ce0_local;
reg   [3:0] weights3_12_address0_local;
reg    weights3_12_ce1_local;
reg   [3:0] weights3_12_address1_local;
reg    weights3_12_we1_local;
reg    ap_predicate_pred1303_state18;
reg   [63:0] weights3_12_d1_local;
reg    weights3_12_we0_local;
reg    ap_predicate_pred1317_state22;
reg    ap_predicate_pred1340_state26;
reg    d_weights3_1_ce0_local;
reg   [3:0] d_weights3_1_address0_local;
reg    d_weights3_1_ce1_local;
reg    d_weights3_5_ce0_local;
reg   [3:0] d_weights3_5_address0_local;
reg    d_weights3_5_ce1_local;
reg    d_weights3_9_ce0_local;
reg   [3:0] d_weights3_9_address0_local;
reg    d_weights3_9_ce1_local;
reg    d_weights3_13_ce0_local;
reg   [3:0] d_weights3_13_address0_local;
reg    d_weights3_13_ce1_local;
reg    d_weights3_2_ce0_local;
reg   [3:0] d_weights3_2_address0_local;
reg    d_weights3_2_ce1_local;
reg    d_weights3_6_ce0_local;
reg   [3:0] d_weights3_6_address0_local;
reg    d_weights3_6_ce1_local;
reg    d_weights3_10_ce0_local;
reg   [3:0] d_weights3_10_address0_local;
reg    d_weights3_10_ce1_local;
reg    d_weights3_14_ce0_local;
reg   [3:0] d_weights3_14_address0_local;
reg    d_weights3_14_ce1_local;
reg    d_weights3_3_ce0_local;
reg   [3:0] d_weights3_3_address0_local;
reg    d_weights3_3_ce1_local;
reg    d_weights3_7_ce0_local;
reg   [3:0] d_weights3_7_address0_local;
reg    d_weights3_7_ce1_local;
reg    d_weights3_11_ce0_local;
reg   [3:0] d_weights3_11_address0_local;
reg    d_weights3_11_ce1_local;
reg    d_weights3_15_ce0_local;
reg   [3:0] d_weights3_15_address0_local;
reg    d_weights3_15_ce1_local;
reg    weights3_1_ce0_local;
reg   [3:0] weights3_1_address0_local;
reg    weights3_1_ce1_local;
reg   [3:0] weights3_1_address1_local;
reg    weights3_1_we1_local;
reg    ap_predicate_pred1288_state19;
reg   [63:0] weights3_1_d1_local;
wire   [63:0] bitcast_ln180_49_fu_2396_p1;
wire    ap_block_pp0_stage18;
reg    weights3_1_we0_local;
reg    ap_predicate_pred1303_state23;
wire   [63:0] bitcast_ln180_53_fu_2428_p1;
wire    ap_block_pp0_stage22;
reg    ap_predicate_pred1317_state27;
wire   [63:0] bitcast_ln180_57_fu_2462_p1;
wire    ap_block_pp0_stage26;
reg    weights3_5_ce0_local;
reg   [3:0] weights3_5_address0_local;
reg    weights3_5_ce1_local;
reg   [3:0] weights3_5_address1_local;
reg    weights3_5_we1_local;
reg    ap_predicate_pred1340_state19;
reg   [63:0] weights3_5_d1_local;
reg    weights3_5_we0_local;
reg    ap_predicate_pred1288_state23;
reg    ap_predicate_pred1303_state27;
reg    weights3_9_ce0_local;
reg   [3:0] weights3_9_address0_local;
reg    weights3_9_ce1_local;
reg   [3:0] weights3_9_address1_local;
reg    weights3_9_we1_local;
reg    ap_predicate_pred1317_state19;
reg   [63:0] weights3_9_d1_local;
reg    weights3_9_we0_local;
reg    ap_predicate_pred1340_state23;
reg    ap_predicate_pred1288_state27;
reg    weights3_13_ce0_local;
reg   [3:0] weights3_13_address0_local;
reg    weights3_13_ce1_local;
reg   [3:0] weights3_13_address1_local;
reg    weights3_13_we1_local;
reg    ap_predicate_pred1303_state19;
reg   [63:0] weights3_13_d1_local;
reg    weights3_13_we0_local;
reg    ap_predicate_pred1317_state23;
reg    ap_predicate_pred1340_state27;
reg    weights3_2_ce0_local;
reg   [3:0] weights3_2_address0_local;
reg    weights3_2_ce1_local;
reg   [3:0] weights3_2_address1_local;
reg    weights3_2_we1_local;
reg    ap_predicate_pred1288_state20;
reg   [63:0] weights3_2_d1_local;
wire   [63:0] bitcast_ln180_50_fu_2404_p1;
wire    ap_block_pp0_stage19;
reg    weights3_2_we0_local;
reg    ap_predicate_pred1303_state24;
wire   [63:0] bitcast_ln180_54_fu_2435_p1;
reg    ap_predicate_pred1317_state28;
wire   [63:0] bitcast_ln180_58_fu_2470_p1;
wire    ap_block_pp0_stage27;
reg    weights3_6_ce0_local;
reg   [3:0] weights3_6_address0_local;
reg    weights3_6_ce1_local;
reg   [3:0] weights3_6_address1_local;
reg    weights3_6_we1_local;
reg    ap_predicate_pred1340_state20;
reg   [63:0] weights3_6_d1_local;
reg    weights3_6_we0_local;
reg    ap_predicate_pred1288_state24;
reg    ap_predicate_pred1303_state28;
reg    weights3_10_ce0_local;
reg   [3:0] weights3_10_address0_local;
reg    weights3_10_ce1_local;
reg   [3:0] weights3_10_address1_local;
reg    weights3_10_we1_local;
reg    ap_predicate_pred1317_state20;
reg   [63:0] weights3_10_d1_local;
reg    weights3_10_we0_local;
reg    ap_predicate_pred1340_state24;
reg    ap_predicate_pred1288_state28;
reg    weights3_14_ce0_local;
reg   [3:0] weights3_14_address0_local;
reg    weights3_14_ce1_local;
reg   [3:0] weights3_14_address1_local;
reg    weights3_14_we1_local;
reg    ap_predicate_pred1303_state20;
reg   [63:0] weights3_14_d1_local;
reg    weights3_14_we0_local;
reg    ap_predicate_pred1317_state24;
reg    ap_predicate_pred1340_state28;
reg    weights3_3_ce0_local;
reg   [3:0] weights3_3_address0_local;
reg    weights3_3_ce1_local;
reg   [3:0] weights3_3_address1_local;
reg    weights3_3_we1_local;
reg    ap_predicate_pred1288_state21;
reg   [63:0] weights3_3_d1_local;
wire   [63:0] bitcast_ln180_51_fu_2412_p1;
wire    ap_block_pp0_stage20;
reg    weights3_3_we0_local;
reg    ap_predicate_pred1303_state25;
wire   [63:0] bitcast_ln180_55_fu_2446_p1;
reg    ap_predicate_pred1317_state29;
wire   [63:0] bitcast_ln180_59_fu_2478_p1;
wire    ap_block_pp0_stage28;
reg    weights3_7_ce0_local;
reg   [3:0] weights3_7_address0_local;
reg    weights3_7_ce1_local;
reg   [3:0] weights3_7_address1_local;
reg    weights3_7_we1_local;
reg    ap_predicate_pred1340_state21;
reg   [63:0] weights3_7_d1_local;
reg    weights3_7_we0_local;
reg    ap_predicate_pred1288_state25;
reg    ap_predicate_pred1303_state29;
reg    weights3_11_ce0_local;
reg   [3:0] weights3_11_address0_local;
reg    weights3_11_ce1_local;
reg   [3:0] weights3_11_address1_local;
reg    weights3_11_we1_local;
reg    ap_predicate_pred1317_state21;
reg   [63:0] weights3_11_d1_local;
reg    weights3_11_we0_local;
reg    ap_predicate_pred1340_state25;
reg    ap_predicate_pred1288_state29;
reg    weights3_15_ce0_local;
reg   [3:0] weights3_15_address0_local;
reg    weights3_15_ce1_local;
reg   [3:0] weights3_15_address1_local;
reg    weights3_15_we1_local;
reg    ap_predicate_pred1303_state21;
reg   [63:0] weights3_15_d1_local;
reg    weights3_15_we0_local;
reg    ap_predicate_pred1317_state25;
reg    ap_predicate_pred1340_state29;
reg   [63:0] grp_fu_1219_p0;
reg   [63:0] grp_fu_1219_p1;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage32;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40;
wire    ap_CS_fsm_pp0_stage48;
wire    ap_block_pp0_stage48;
wire    ap_CS_fsm_pp0_stage56;
wire    ap_block_pp0_stage56;
wire    ap_CS_fsm_pp0_stage64;
wire    ap_block_pp0_stage64;
wire    ap_CS_fsm_pp0_stage72;
wire    ap_block_pp0_stage72;
wire    ap_CS_fsm_pp0_stage80;
wire    ap_block_pp0_stage80;
wire    ap_CS_fsm_pp0_stage88;
wire    ap_block_pp0_stage88;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_1227_p0;
reg   [63:0] grp_fu_1227_p1;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire   [5:0] trunc_ln122_fu_1328_p1;
wire   [7:0] p_shl_fu_1332_p3;
wire   [7:0] zext_ln122_fu_1324_p1;
wire   [7:0] sub_ln122_fu_1340_p2;
wire   [3:0] lshr_ln5_fu_1346_p4;
wire   [63:0] tmp_s_fu_1405_p9;
wire   [63:0] tmp_1_fu_1445_p2;
wire   [63:0] tmp_1_fu_1445_p4;
wire   [63:0] tmp_1_fu_1445_p6;
wire   [63:0] tmp_1_fu_1445_p8;
wire   [63:0] tmp_1_fu_1445_p9;
wire   [7:0] tmp_3_fu_1469_p3;
wire   [7:0] add_ln180_fu_1476_p2;
wire   [3:0] lshr_ln6_fu_1482_p4;
wire   [7:0] add_ln180_1_fu_1504_p2;
wire   [3:0] lshr_ln180_1_fu_1510_p4;
wire   [7:0] empty_fu_1532_p2;
wire   [3:0] lshr_ln122_1_fu_1538_p4;
wire   [7:0] add_ln180_2_fu_1560_p2;
wire   [3:0] lshr_ln180_2_fu_1566_p4;
wire   [7:0] add_ln180_3_fu_1588_p2;
wire   [3:0] lshr_ln180_3_fu_1594_p4;
wire   [7:0] empty_32_fu_1616_p2;
wire   [3:0] lshr_ln122_2_fu_1622_p4;
wire   [7:0] add_ln180_4_fu_1644_p2;
wire   [3:0] lshr_ln180_4_fu_1650_p4;
wire   [7:0] add_ln180_5_fu_1672_p2;
wire   [3:0] lshr_ln180_5_fu_1678_p4;
wire   [63:0] tmp_4_fu_1700_p9;
wire   [63:0] tmp_5_fu_1724_p9;
wire   [63:0] tmp_6_fu_1748_p9;
wire   [63:0] tmp_15_fu_1788_p2;
wire   [63:0] tmp_15_fu_1788_p4;
wire   [63:0] tmp_15_fu_1788_p6;
wire   [63:0] tmp_15_fu_1788_p8;
wire   [63:0] tmp_15_fu_1788_p9;
wire   [63:0] tmp_16_fu_1828_p2;
wire   [63:0] tmp_16_fu_1828_p4;
wire   [63:0] tmp_16_fu_1828_p6;
wire   [63:0] tmp_16_fu_1828_p8;
wire   [63:0] tmp_16_fu_1828_p9;
wire   [63:0] tmp_17_fu_1868_p2;
wire   [63:0] tmp_17_fu_1868_p4;
wire   [63:0] tmp_17_fu_1868_p6;
wire   [63:0] tmp_17_fu_1868_p8;
wire   [63:0] tmp_17_fu_1868_p9;
wire   [63:0] tmp_7_fu_1892_p9;
wire   [63:0] tmp_8_fu_1915_p9;
wire   [63:0] tmp_9_fu_1938_p9;
wire   [63:0] tmp_10_fu_1961_p9;
wire   [63:0] tmp_11_fu_1984_p9;
wire   [63:0] tmp_12_fu_2007_p9;
wire   [63:0] tmp_13_fu_2030_p9;
wire   [63:0] tmp_14_fu_2053_p9;
wire   [63:0] tmp_18_fu_2092_p2;
wire   [63:0] tmp_18_fu_2092_p4;
wire   [63:0] tmp_18_fu_2092_p6;
wire   [63:0] tmp_18_fu_2092_p8;
wire   [63:0] tmp_18_fu_2092_p9;
wire   [63:0] tmp_19_fu_2131_p2;
wire   [63:0] tmp_19_fu_2131_p4;
wire   [63:0] tmp_19_fu_2131_p6;
wire   [63:0] tmp_19_fu_2131_p8;
wire   [63:0] tmp_19_fu_2131_p9;
wire   [63:0] tmp_20_fu_2170_p2;
wire   [63:0] tmp_20_fu_2170_p4;
wire   [63:0] tmp_20_fu_2170_p6;
wire   [63:0] tmp_20_fu_2170_p8;
wire   [63:0] tmp_20_fu_2170_p9;
wire   [63:0] tmp_21_fu_2209_p2;
wire   [63:0] tmp_21_fu_2209_p4;
wire   [63:0] tmp_21_fu_2209_p6;
wire   [63:0] tmp_21_fu_2209_p8;
wire   [63:0] tmp_21_fu_2209_p9;
wire   [63:0] tmp_22_fu_2248_p2;
wire   [63:0] tmp_22_fu_2248_p4;
wire   [63:0] tmp_22_fu_2248_p6;
wire   [63:0] tmp_22_fu_2248_p8;
wire   [63:0] tmp_22_fu_2248_p9;
wire   [63:0] tmp_23_fu_2287_p2;
wire   [63:0] tmp_23_fu_2287_p4;
wire   [63:0] tmp_23_fu_2287_p6;
wire   [63:0] tmp_23_fu_2287_p8;
wire   [63:0] tmp_23_fu_2287_p9;
wire   [63:0] tmp_24_fu_2326_p2;
wire   [63:0] tmp_24_fu_2326_p4;
wire   [63:0] tmp_24_fu_2326_p6;
wire   [63:0] tmp_24_fu_2326_p8;
wire   [63:0] tmp_24_fu_2326_p9;
wire   [63:0] tmp_25_fu_2365_p2;
wire   [63:0] tmp_25_fu_2365_p4;
wire   [63:0] tmp_25_fu_2365_p6;
wire   [63:0] tmp_25_fu_2365_p8;
wire   [63:0] tmp_25_fu_2365_p9;
wire    ap_block_pp0_stage95;
reg   [1:0] grp_fu_1219_opcode;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage32_00001;
wire    ap_block_pp0_stage40_00001;
wire    ap_block_pp0_stage48_00001;
wire    ap_block_pp0_stage56_00001;
wire    ap_block_pp0_stage64_00001;
wire    ap_block_pp0_stage72_00001;
wire    ap_block_pp0_stage80_00001;
wire    ap_block_pp0_stage88_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_block_pp0_stage18_00001;
wire    ap_block_pp0_stage19_00001;
wire    ap_block_pp0_stage20_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [95:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage63_subdone;
wire    ap_block_pp0_stage64_subdone;
wire    ap_block_pp0_stage65_subdone;
wire    ap_block_pp0_stage66_subdone;
wire    ap_block_pp0_stage67_subdone;
wire    ap_block_pp0_stage68_subdone;
wire    ap_block_pp0_stage69_subdone;
wire    ap_block_pp0_stage70_subdone;
wire    ap_block_pp0_stage71_subdone;
wire    ap_block_pp0_stage72_subdone;
wire    ap_block_pp0_stage73_subdone;
wire    ap_block_pp0_stage74_subdone;
wire    ap_block_pp0_stage75_subdone;
wire    ap_block_pp0_stage76_subdone;
wire    ap_block_pp0_stage77_subdone;
wire    ap_block_pp0_stage78_subdone;
wire    ap_block_pp0_stage79_subdone;
wire    ap_block_pp0_stage80_subdone;
wire    ap_block_pp0_stage81_subdone;
wire    ap_block_pp0_stage82_subdone;
wire    ap_block_pp0_stage83_subdone;
wire    ap_block_pp0_stage84_subdone;
wire    ap_block_pp0_stage85_subdone;
wire    ap_block_pp0_stage86_subdone;
wire    ap_block_pp0_stage87_subdone;
wire    ap_block_pp0_stage88_subdone;
wire    ap_block_pp0_stage89_subdone;
wire    ap_block_pp0_stage90_subdone;
wire    ap_block_pp0_stage91_subdone;
wire    ap_block_pp0_stage92_subdone;
wire    ap_block_pp0_stage93_subdone;
wire    ap_block_pp0_stage94_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_s_fu_1405_p1;
wire  signed [3:0] tmp_s_fu_1405_p3;
wire  signed [3:0] tmp_s_fu_1405_p5;
wire   [3:0] tmp_s_fu_1405_p7;
wire   [3:0] tmp_1_fu_1445_p1;
wire  signed [3:0] tmp_1_fu_1445_p3;
wire  signed [3:0] tmp_1_fu_1445_p5;
wire   [3:0] tmp_1_fu_1445_p7;
wire   [3:0] tmp_4_fu_1700_p1;
wire  signed [3:0] tmp_4_fu_1700_p3;
wire  signed [3:0] tmp_4_fu_1700_p5;
wire   [3:0] tmp_4_fu_1700_p7;
wire   [3:0] tmp_5_fu_1724_p1;
wire  signed [3:0] tmp_5_fu_1724_p3;
wire  signed [3:0] tmp_5_fu_1724_p5;
wire   [3:0] tmp_5_fu_1724_p7;
wire   [3:0] tmp_6_fu_1748_p1;
wire  signed [3:0] tmp_6_fu_1748_p3;
wire  signed [3:0] tmp_6_fu_1748_p5;
wire   [3:0] tmp_6_fu_1748_p7;
wire   [3:0] tmp_15_fu_1788_p1;
wire  signed [3:0] tmp_15_fu_1788_p3;
wire  signed [3:0] tmp_15_fu_1788_p5;
wire   [3:0] tmp_15_fu_1788_p7;
wire   [3:0] tmp_16_fu_1828_p1;
wire  signed [3:0] tmp_16_fu_1828_p3;
wire  signed [3:0] tmp_16_fu_1828_p5;
wire   [3:0] tmp_16_fu_1828_p7;
wire   [3:0] tmp_17_fu_1868_p1;
wire  signed [3:0] tmp_17_fu_1868_p3;
wire  signed [3:0] tmp_17_fu_1868_p5;
wire   [3:0] tmp_17_fu_1868_p7;
wire   [3:0] tmp_7_fu_1892_p1;
wire   [3:0] tmp_7_fu_1892_p3;
wire  signed [3:0] tmp_7_fu_1892_p5;
wire  signed [3:0] tmp_7_fu_1892_p7;
wire   [3:0] tmp_8_fu_1915_p1;
wire   [3:0] tmp_8_fu_1915_p3;
wire  signed [3:0] tmp_8_fu_1915_p5;
wire  signed [3:0] tmp_8_fu_1915_p7;
wire   [3:0] tmp_9_fu_1938_p1;
wire   [3:0] tmp_9_fu_1938_p3;
wire  signed [3:0] tmp_9_fu_1938_p5;
wire  signed [3:0] tmp_9_fu_1938_p7;
wire   [3:0] tmp_10_fu_1961_p1;
wire   [3:0] tmp_10_fu_1961_p3;
wire  signed [3:0] tmp_10_fu_1961_p5;
wire  signed [3:0] tmp_10_fu_1961_p7;
wire  signed [3:0] tmp_11_fu_1984_p1;
wire   [3:0] tmp_11_fu_1984_p3;
wire   [3:0] tmp_11_fu_1984_p5;
wire  signed [3:0] tmp_11_fu_1984_p7;
wire  signed [3:0] tmp_12_fu_2007_p1;
wire   [3:0] tmp_12_fu_2007_p3;
wire   [3:0] tmp_12_fu_2007_p5;
wire  signed [3:0] tmp_12_fu_2007_p7;
wire  signed [3:0] tmp_13_fu_2030_p1;
wire   [3:0] tmp_13_fu_2030_p3;
wire   [3:0] tmp_13_fu_2030_p5;
wire  signed [3:0] tmp_13_fu_2030_p7;
wire  signed [3:0] tmp_14_fu_2053_p1;
wire   [3:0] tmp_14_fu_2053_p3;
wire   [3:0] tmp_14_fu_2053_p5;
wire  signed [3:0] tmp_14_fu_2053_p7;
wire   [3:0] tmp_18_fu_2092_p1;
wire   [3:0] tmp_18_fu_2092_p3;
wire  signed [3:0] tmp_18_fu_2092_p5;
wire  signed [3:0] tmp_18_fu_2092_p7;
wire   [3:0] tmp_19_fu_2131_p1;
wire   [3:0] tmp_19_fu_2131_p3;
wire  signed [3:0] tmp_19_fu_2131_p5;
wire  signed [3:0] tmp_19_fu_2131_p7;
wire   [3:0] tmp_20_fu_2170_p1;
wire   [3:0] tmp_20_fu_2170_p3;
wire  signed [3:0] tmp_20_fu_2170_p5;
wire  signed [3:0] tmp_20_fu_2170_p7;
wire   [3:0] tmp_21_fu_2209_p1;
wire   [3:0] tmp_21_fu_2209_p3;
wire  signed [3:0] tmp_21_fu_2209_p5;
wire  signed [3:0] tmp_21_fu_2209_p7;
wire  signed [3:0] tmp_22_fu_2248_p1;
wire   [3:0] tmp_22_fu_2248_p3;
wire   [3:0] tmp_22_fu_2248_p5;
wire  signed [3:0] tmp_22_fu_2248_p7;
wire  signed [3:0] tmp_23_fu_2287_p1;
wire   [3:0] tmp_23_fu_2287_p3;
wire   [3:0] tmp_23_fu_2287_p5;
wire  signed [3:0] tmp_23_fu_2287_p7;
wire  signed [3:0] tmp_24_fu_2326_p1;
wire   [3:0] tmp_24_fu_2326_p3;
wire   [3:0] tmp_24_fu_2326_p5;
wire  signed [3:0] tmp_24_fu_2326_p7;
wire  signed [3:0] tmp_25_fu_2365_p1;
wire   [3:0] tmp_25_fu_2365_p3;
wire   [3:0] tmp_25_fu_2365_p5;
wire  signed [3:0] tmp_25_fu_2365_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 96'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_148 = 64'd0;
#0 i_fu_152 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2104(.din0(d_weights3_0_q0),.din1(d_weights3_4_q0),.din2(d_weights3_8_q0),.din3(d_weights3_12_q0),.def(tmp_s_fu_1405_p9),.sel(trunc_ln178_fu_1402_p1),.dout(tmp_s_fu_1405_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2105(.din0(tmp_1_fu_1445_p2),.din1(tmp_1_fu_1445_p4),.din2(tmp_1_fu_1445_p6),.din3(tmp_1_fu_1445_p8),.def(tmp_1_fu_1445_p9),.sel(trunc_ln178_fu_1402_p1),.dout(tmp_1_fu_1445_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2106(.din0(d_weights3_1_q0),.din1(d_weights3_5_q0),.din2(d_weights3_9_q0),.din3(d_weights3_13_q0),.def(tmp_4_fu_1700_p9),.sel(trunc_ln178_fu_1402_p1),.dout(tmp_4_fu_1700_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2107(.din0(d_weights3_2_q0),.din1(d_weights3_6_q0),.din2(d_weights3_10_q0),.din3(d_weights3_14_q0),.def(tmp_5_fu_1724_p9),.sel(trunc_ln178_fu_1402_p1),.dout(tmp_5_fu_1724_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2108(.din0(d_weights3_3_q0),.din1(d_weights3_7_q0),.din2(d_weights3_11_q0),.din3(d_weights3_15_q0),.def(tmp_6_fu_1748_p9),.sel(trunc_ln178_fu_1402_p1),.dout(tmp_6_fu_1748_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2109(.din0(tmp_15_fu_1788_p2),.din1(tmp_15_fu_1788_p4),.din2(tmp_15_fu_1788_p6),.din3(tmp_15_fu_1788_p8),.def(tmp_15_fu_1788_p9),.sel(trunc_ln178_fu_1402_p1),.dout(tmp_15_fu_1788_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2110(.din0(tmp_16_fu_1828_p2),.din1(tmp_16_fu_1828_p4),.din2(tmp_16_fu_1828_p6),.din3(tmp_16_fu_1828_p8),.def(tmp_16_fu_1828_p9),.sel(trunc_ln178_fu_1402_p1),.dout(tmp_16_fu_1828_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'hC ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'h4 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2111(.din0(tmp_17_fu_1868_p2),.din1(tmp_17_fu_1868_p4),.din2(tmp_17_fu_1868_p6),.din3(tmp_17_fu_1868_p8),.def(tmp_17_fu_1868_p9),.sel(trunc_ln178_fu_1402_p1),.dout(tmp_17_fu_1868_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U2112(.din0(d_weights3_0_q1),.din1(d_weights3_4_q1),.din2(d_weights3_8_q1),.din3(d_weights3_12_q1),.def(tmp_7_fu_1892_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_7_fu_1892_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U2113(.din0(d_weights3_1_q1),.din1(d_weights3_5_q1),.din2(d_weights3_9_q1),.din3(d_weights3_13_q1),.def(tmp_8_fu_1915_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_8_fu_1915_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U2114(.din0(d_weights3_2_q1),.din1(d_weights3_6_q1),.din2(d_weights3_10_q1),.din3(d_weights3_14_q1),.def(tmp_9_fu_1938_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_9_fu_1938_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U2115(.din0(d_weights3_3_q1),.din1(d_weights3_7_q1),.din2(d_weights3_11_q1),.din3(d_weights3_15_q1),.def(tmp_10_fu_1961_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_10_fu_1961_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2116(.din0(d_weights3_0_q0),.din1(d_weights3_4_q0),.din2(d_weights3_8_q0),.din3(d_weights3_12_q0),.def(tmp_11_fu_1984_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_11_fu_1984_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2117(.din0(d_weights3_1_q0),.din1(d_weights3_5_q0),.din2(d_weights3_9_q0),.din3(d_weights3_13_q0),.def(tmp_12_fu_2007_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_12_fu_2007_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2118(.din0(d_weights3_2_q0),.din1(d_weights3_6_q0),.din2(d_weights3_10_q0),.din3(d_weights3_14_q0),.def(tmp_13_fu_2030_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_13_fu_2030_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2119(.din0(d_weights3_3_q0),.din1(d_weights3_7_q0),.din2(d_weights3_11_q0),.din3(d_weights3_15_q0),.def(tmp_14_fu_2053_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_14_fu_2053_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U2120(.din0(tmp_18_fu_2092_p2),.din1(tmp_18_fu_2092_p4),.din2(tmp_18_fu_2092_p6),.din3(tmp_18_fu_2092_p8),.def(tmp_18_fu_2092_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_18_fu_2092_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U2121(.din0(tmp_19_fu_2131_p2),.din1(tmp_19_fu_2131_p4),.din2(tmp_19_fu_2131_p6),.din3(tmp_19_fu_2131_p8),.def(tmp_19_fu_2131_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_19_fu_2131_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U2122(.din0(tmp_20_fu_2170_p2),.din1(tmp_20_fu_2170_p4),.din2(tmp_20_fu_2170_p6),.din3(tmp_20_fu_2170_p8),.def(tmp_20_fu_2170_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_20_fu_2170_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U2123(.din0(tmp_21_fu_2209_p2),.din1(tmp_21_fu_2209_p4),.din2(tmp_21_fu_2209_p6),.din3(tmp_21_fu_2209_p8),.def(tmp_21_fu_2209_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_21_fu_2209_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2124(.din0(tmp_22_fu_2248_p2),.din1(tmp_22_fu_2248_p4),.din2(tmp_22_fu_2248_p6),.din3(tmp_22_fu_2248_p8),.def(tmp_22_fu_2248_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_22_fu_2248_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2125(.din0(tmp_23_fu_2287_p2),.din1(tmp_23_fu_2287_p4),.din2(tmp_23_fu_2287_p6),.din3(tmp_23_fu_2287_p8),.def(tmp_23_fu_2287_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_23_fu_2287_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2126(.din0(tmp_24_fu_2326_p2),.din1(tmp_24_fu_2326_p4),.din2(tmp_24_fu_2326_p6),.din3(tmp_24_fu_2326_p8),.def(tmp_24_fu_2326_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_24_fu_2326_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_x_U2127(.din0(tmp_25_fu_2365_p2),.din1(tmp_25_fu_2365_p4),.din2(tmp_25_fu_2365_p6),.din3(tmp_25_fu_2365_p8),.def(tmp_25_fu_2365_p9),.sel(trunc_ln178_reg_2711),.dout(tmp_25_fu_2365_p11));
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage23) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage23_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage23)) begin
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
        if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage95) & (1'b0 == ap_block_pp0_stage95_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1))) begin
        i_fu_152 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage95) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage95_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        i_fu_152 <= add_ln178_fu_2486_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1))) begin
        norm_fu_148 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        norm_fu_148 <= grp_fu_1159_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001))) begin
        ap_predicate_pred1288_state18 <= ((trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1303_state18 <= ((trunc_ln178_reg_2711 == 4'd4) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1317_state18 <= ((trunc_ln178_reg_2711 == 4'd8) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1340_state18 <= (~(trunc_ln178_reg_2711 == 4'd8) & ~(trunc_ln178_reg_2711 == 4'd4) & ~(trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001))) begin
        ap_predicate_pred1288_state19 <= ((trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1303_state19 <= ((trunc_ln178_reg_2711 == 4'd4) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1317_state19 <= ((trunc_ln178_reg_2711 == 4'd8) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1340_state19 <= (~(trunc_ln178_reg_2711 == 4'd8) & ~(trunc_ln178_reg_2711 == 4'd4) & ~(trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001))) begin
        ap_predicate_pred1288_state20 <= ((trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1303_state20 <= ((trunc_ln178_reg_2711 == 4'd4) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1317_state20 <= ((trunc_ln178_reg_2711 == 4'd8) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1340_state20 <= (~(trunc_ln178_reg_2711 == 4'd8) & ~(trunc_ln178_reg_2711 == 4'd4) & ~(trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001))) begin
        ap_predicate_pred1288_state21 <= ((trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1303_state21 <= ((trunc_ln178_reg_2711 == 4'd4) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1317_state21 <= ((trunc_ln178_reg_2711 == 4'd8) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1340_state21 <= (~(trunc_ln178_reg_2711 == 4'd8) & ~(trunc_ln178_reg_2711 == 4'd4) & ~(trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001))) begin
        ap_predicate_pred1288_state22 <= ((trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1303_state22 <= ((trunc_ln178_reg_2711 == 4'd4) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1317_state22 <= ((trunc_ln178_reg_2711 == 4'd8) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1340_state22 <= (~(trunc_ln178_reg_2711 == 4'd8) & ~(trunc_ln178_reg_2711 == 4'd4) & ~(trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001))) begin
        ap_predicate_pred1288_state23 <= ((trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1303_state23 <= ((trunc_ln178_reg_2711 == 4'd4) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1317_state23 <= ((trunc_ln178_reg_2711 == 4'd8) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1340_state23 <= (~(trunc_ln178_reg_2711 == 4'd8) & ~(trunc_ln178_reg_2711 == 4'd4) & ~(trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001))) begin
        ap_predicate_pred1288_state24 <= ((trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1303_state24 <= ((trunc_ln178_reg_2711 == 4'd4) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1317_state24 <= ((trunc_ln178_reg_2711 == 4'd8) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1340_state24 <= (~(trunc_ln178_reg_2711 == 4'd8) & ~(trunc_ln178_reg_2711 == 4'd4) & ~(trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001))) begin
        ap_predicate_pred1288_state25 <= ((trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1303_state25 <= ((trunc_ln178_reg_2711 == 4'd4) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1317_state25 <= ((trunc_ln178_reg_2711 == 4'd8) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1340_state25 <= (~(trunc_ln178_reg_2711 == 4'd8) & ~(trunc_ln178_reg_2711 == 4'd4) & ~(trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001))) begin
        ap_predicate_pred1288_state26 <= ((trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1303_state26 <= ((trunc_ln178_reg_2711 == 4'd4) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1317_state26 <= ((trunc_ln178_reg_2711 == 4'd8) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1340_state26 <= (~(trunc_ln178_reg_2711 == 4'd8) & ~(trunc_ln178_reg_2711 == 4'd4) & ~(trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001))) begin
        ap_predicate_pred1288_state27 <= ((trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1303_state27 <= ((trunc_ln178_reg_2711 == 4'd4) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1317_state27 <= ((trunc_ln178_reg_2711 == 4'd8) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1340_state27 <= (~(trunc_ln178_reg_2711 == 4'd8) & ~(trunc_ln178_reg_2711 == 4'd4) & ~(trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001))) begin
        ap_predicate_pred1288_state28 <= ((trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1303_state28 <= ((trunc_ln178_reg_2711 == 4'd4) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1317_state28 <= ((trunc_ln178_reg_2711 == 4'd8) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1340_state28 <= (~(trunc_ln178_reg_2711 == 4'd8) & ~(trunc_ln178_reg_2711 == 4'd4) & ~(trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001))) begin
        ap_predicate_pred1288_state29 <= ((trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1303_state29 <= ((trunc_ln178_reg_2711 == 4'd4) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1317_state29 <= ((trunc_ln178_reg_2711 == 4'd8) & (tmp_reg_2526 == 1'd0));
        ap_predicate_pred1340_state29 <= (~(trunc_ln178_reg_2711 == 4'd8) & ~(trunc_ln178_reg_2711 == 4'd4) & ~(trunc_ln178_reg_2711 == 4'd0) & (tmp_reg_2526 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_1_reg_2520 <= ap_sig_allocacmp_i_1;
        tmp_2_reg_2614 <= {{sub_ln122_fu_1340_p2[7:2]}};
        tmp_reg_2526 <= ap_sig_allocacmp_i_1[32'd6];
        weights3_0_addr_reg_2550 <= zext_ln122_1_fu_1356_p1;
        weights3_10_addr_reg_2675 <= zext_ln122_1_fu_1356_p1;
        weights3_11_addr_reg_2699 <= zext_ln122_1_fu_1356_p1;
        weights3_12_addr_reg_2568 <= zext_ln122_1_fu_1356_p1;
        weights3_13_addr_reg_2657 <= zext_ln122_1_fu_1356_p1;
        weights3_14_addr_reg_2681 <= zext_ln122_1_fu_1356_p1;
        weights3_15_addr_reg_2705 <= zext_ln122_1_fu_1356_p1;
        weights3_1_addr_reg_2639 <= zext_ln122_1_fu_1356_p1;
        weights3_2_addr_reg_2663 <= zext_ln122_1_fu_1356_p1;
        weights3_3_addr_reg_2687 <= zext_ln122_1_fu_1356_p1;
        weights3_4_addr_reg_2556 <= zext_ln122_1_fu_1356_p1;
        weights3_5_addr_reg_2645 <= zext_ln122_1_fu_1356_p1;
        weights3_6_addr_reg_2669 <= zext_ln122_1_fu_1356_p1;
        weights3_7_addr_reg_2693 <= zext_ln122_1_fu_1356_p1;
        weights3_8_addr_reg_2562 <= zext_ln122_1_fu_1356_p1;
        weights3_9_addr_reg_2651 <= zext_ln122_1_fu_1356_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage33) & (1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul177_3_1_reg_3227 <= grp_fu_1163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage34) & (1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul177_3_2_reg_3232 <= grp_fu_1163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul177_3_reg_3222 <= grp_fu_1163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        norm_10_reg_3237 <= grp_fu_1155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1232 <= grp_fu_1163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1237 <= grp_fu_1163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1242 <= grp_fu_1163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1247 <= grp_fu_1163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1252 <= grp_fu_1163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1257 <= grp_fu_1163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage29) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1262 <= grp_fu_1163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage30) & (1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1267 <= grp_fu_1163_p_dout0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage87) & (1'b0 == ap_block_pp0_stage87_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage79) & (1'b0 == ap_block_pp0_stage79_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage71) & (1'b0 == ap_block_pp0_stage71_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage63) & (1'b0 == ap_block_pp0_stage63_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage55) & (1'b0 == ap_block_pp0_stage55_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage47) & (1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage39) & (1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16)& (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage95) & (1'b0 == ap_block_pp0_stage95_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1272 <= grp_fu_1155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1279 <= grp_fu_1155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1285 <= grp_fu_1155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1291 <= grp_fu_1155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1297 <= grp_fu_1155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        sub168_1_2_reg_3203 <= grp_fu_1155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        sub168_2_reg_3210 <= grp_fu_1155_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        tmp_10_reg_3138 <= tmp_10_fu_1961_p11;
        tmp_11_reg_3143 <= tmp_11_fu_1984_p11;
        tmp_12_reg_3148 <= tmp_12_fu_2007_p11;
        tmp_13_reg_3153 <= tmp_13_fu_2030_p11;
        tmp_14_reg_3158 <= tmp_14_fu_2053_p11;
        tmp_18_reg_3163 <= tmp_18_fu_2092_p11;
        tmp_19_reg_3168 <= tmp_19_fu_2131_p11;
        tmp_20_reg_3173 <= tmp_20_fu_2170_p11;
        tmp_21_reg_3178 <= tmp_21_fu_2209_p11;
        tmp_22_reg_3183 <= tmp_22_fu_2248_p11;
        tmp_23_reg_3188 <= tmp_23_fu_2287_p11;
        tmp_24_reg_3193 <= tmp_24_fu_2326_p11;
        tmp_25_reg_3198 <= tmp_25_fu_2365_p11;
        tmp_7_reg_3123 <= tmp_7_fu_1892_p11;
        tmp_8_reg_3128 <= tmp_8_fu_1915_p11;
        tmp_9_reg_3133 <= tmp_9_fu_1938_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        tmp_15_reg_2916 <= tmp_15_fu_1788_p11;
        tmp_16_reg_2921 <= tmp_16_fu_1828_p11;
        tmp_17_reg_2926 <= tmp_17_fu_1868_p11;
        tmp_1_reg_2736 <= tmp_1_fu_1445_p11;
        tmp_4_reg_2901 <= tmp_4_fu_1700_p11;
        tmp_5_reg_2906 <= tmp_5_fu_1724_p11;
        tmp_6_reg_2911 <= tmp_6_fu_1748_p11;
        tmp_s_reg_2731 <= tmp_s_fu_1405_p11;
        trunc_ln178_reg_2711 <= trunc_ln178_fu_1402_p1;
        weights3_0_addr_1_reg_2931 <= zext_ln180_fu_1492_p1;
        weights3_0_addr_2_reg_3027 <= zext_ln180_4_fu_1604_p1;
        weights3_10_addr_1_reg_2991 <= zext_ln180_2_fu_1548_p1;
        weights3_10_addr_2_reg_3087 <= zext_ln180_6_fu_1660_p1;
        weights3_11_addr_1_reg_3015 <= zext_ln180_3_fu_1576_p1;
        weights3_11_addr_2_reg_3111 <= zext_ln180_7_fu_1688_p1;
        weights3_12_addr_1_reg_2949 <= zext_ln180_fu_1492_p1;
        weights3_12_addr_2_reg_3045 <= zext_ln180_4_fu_1604_p1;
        weights3_13_addr_1_reg_2973 <= zext_ln180_1_fu_1520_p1;
        weights3_13_addr_2_reg_3069 <= zext_ln180_5_fu_1632_p1;
        weights3_14_addr_1_reg_2997 <= zext_ln180_2_fu_1548_p1;
        weights3_14_addr_2_reg_3093 <= zext_ln180_6_fu_1660_p1;
        weights3_15_addr_1_reg_3021 <= zext_ln180_3_fu_1576_p1;
        weights3_15_addr_2_reg_3117 <= zext_ln180_7_fu_1688_p1;
        weights3_1_addr_1_reg_2955 <= zext_ln180_1_fu_1520_p1;
        weights3_1_addr_2_reg_3051 <= zext_ln180_5_fu_1632_p1;
        weights3_2_addr_1_reg_2979 <= zext_ln180_2_fu_1548_p1;
        weights3_2_addr_2_reg_3075 <= zext_ln180_6_fu_1660_p1;
        weights3_3_addr_1_reg_3003 <= zext_ln180_3_fu_1576_p1;
        weights3_3_addr_2_reg_3099 <= zext_ln180_7_fu_1688_p1;
        weights3_4_addr_1_reg_2937 <= zext_ln180_fu_1492_p1;
        weights3_4_addr_2_reg_3033 <= zext_ln180_4_fu_1604_p1;
        weights3_5_addr_1_reg_2961 <= zext_ln180_1_fu_1520_p1;
        weights3_5_addr_2_reg_3057 <= zext_ln180_5_fu_1632_p1;
        weights3_6_addr_1_reg_2985 <= zext_ln180_2_fu_1548_p1;
        weights3_6_addr_2_reg_3081 <= zext_ln180_6_fu_1660_p1;
        weights3_7_addr_1_reg_3009 <= zext_ln180_3_fu_1576_p1;
        weights3_7_addr_2_reg_3105 <= zext_ln180_7_fu_1688_p1;
        weights3_8_addr_1_reg_2943 <= zext_ln180_fu_1492_p1;
        weights3_8_addr_2_reg_3039 <= zext_ln180_4_fu_1604_p1;
        weights3_9_addr_1_reg_2967 <= zext_ln180_1_fu_1520_p1;
        weights3_9_addr_2_reg_3063 <= zext_ln180_5_fu_1632_p1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (tmp_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage23 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage23_subdone))) begin
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
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1))) begin
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
    if (((1'b1 == ap_CS_fsm_pp0_stage95) & (1'b0 == ap_block_pp0_stage95_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_152;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_0_address0_local = zext_ln180_4_fu_1604_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_0_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_0_address0_local = 'bx;
        end
    end else begin
        d_weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_0_ce0_local = 1'b1;
    end else begin
        d_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_0_ce1_local = 1'b1;
    end else begin
        d_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_10_address0_local = zext_ln180_6_fu_1660_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_10_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_10_address0_local = 'bx;
        end
    end else begin
        d_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_10_ce0_local = 1'b1;
    end else begin
        d_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_10_ce1_local = 1'b1;
    end else begin
        d_weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_11_address0_local = zext_ln180_7_fu_1688_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_11_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_11_address0_local = 'bx;
        end
    end else begin
        d_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_11_ce0_local = 1'b1;
    end else begin
        d_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_11_ce1_local = 1'b1;
    end else begin
        d_weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_12_address0_local = zext_ln180_4_fu_1604_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_12_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_12_address0_local = 'bx;
        end
    end else begin
        d_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_12_ce0_local = 1'b1;
    end else begin
        d_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_12_ce1_local = 1'b1;
    end else begin
        d_weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_13_address0_local = zext_ln180_5_fu_1632_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_13_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_13_address0_local = 'bx;
        end
    end else begin
        d_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_13_ce0_local = 1'b1;
    end else begin
        d_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_13_ce1_local = 1'b1;
    end else begin
        d_weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_14_address0_local = zext_ln180_6_fu_1660_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_14_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_14_address0_local = 'bx;
        end
    end else begin
        d_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_14_ce0_local = 1'b1;
    end else begin
        d_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_14_ce1_local = 1'b1;
    end else begin
        d_weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_15_address0_local = zext_ln180_7_fu_1688_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_15_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_15_address0_local = 'bx;
        end
    end else begin
        d_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_15_ce0_local = 1'b1;
    end else begin
        d_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_15_ce1_local = 1'b1;
    end else begin
        d_weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_1_address0_local = zext_ln180_5_fu_1632_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_1_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_1_address0_local = 'bx;
        end
    end else begin
        d_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_1_ce0_local = 1'b1;
    end else begin
        d_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_1_ce1_local = 1'b1;
    end else begin
        d_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_2_address0_local = zext_ln180_6_fu_1660_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_2_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_2_address0_local = 'bx;
        end
    end else begin
        d_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_2_ce0_local = 1'b1;
    end else begin
        d_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_2_ce1_local = 1'b1;
    end else begin
        d_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_3_address0_local = zext_ln180_7_fu_1688_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_3_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_3_address0_local = 'bx;
        end
    end else begin
        d_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_3_ce0_local = 1'b1;
    end else begin
        d_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_3_ce1_local = 1'b1;
    end else begin
        d_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_4_address0_local = zext_ln180_4_fu_1604_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_4_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_4_address0_local = 'bx;
        end
    end else begin
        d_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_4_ce0_local = 1'b1;
    end else begin
        d_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_4_ce1_local = 1'b1;
    end else begin
        d_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_5_address0_local = zext_ln180_5_fu_1632_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_5_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_5_address0_local = 'bx;
        end
    end else begin
        d_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_5_ce0_local = 1'b1;
    end else begin
        d_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_5_ce1_local = 1'b1;
    end else begin
        d_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_6_address0_local = zext_ln180_6_fu_1660_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_6_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_6_address0_local = 'bx;
        end
    end else begin
        d_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_6_ce0_local = 1'b1;
    end else begin
        d_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_6_ce1_local = 1'b1;
    end else begin
        d_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_7_address0_local = zext_ln180_7_fu_1688_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_7_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_7_address0_local = 'bx;
        end
    end else begin
        d_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_7_ce0_local = 1'b1;
    end else begin
        d_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_7_ce1_local = 1'b1;
    end else begin
        d_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_8_address0_local = zext_ln180_4_fu_1604_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_8_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_8_address0_local = 'bx;
        end
    end else begin
        d_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_8_ce0_local = 1'b1;
    end else begin
        d_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_8_ce1_local = 1'b1;
    end else begin
        d_weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_9_address0_local = zext_ln180_5_fu_1632_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_9_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            d_weights3_9_address0_local = 'bx;
        end
    end else begin
        d_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        d_weights3_9_ce0_local = 1'b1;
    end else begin
        d_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights3_9_ce1_local = 1'b1;
    end else begin
        d_weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage20_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage13_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage19_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage18_00001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage17_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage16_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1219_opcode = 2'd1;
end else if ((((1'b1 == ap_CS_fsm_pp0_stage24) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage88) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage88_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage80) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage80_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage72) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage72_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage64) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage64_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage56) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage56_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage48) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage48_00001) &(ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage40) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage40_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_2526 == 1'd0) & (1'b0 == ap_block_pp0_stage32_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        grp_fu_1219_opcode = 2'd0;
    end else begin
        grp_fu_1219_opcode = 'bx;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage88) & (1'b0 == ap_block_pp0_stage88) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage80) & (1'b0 == ap_block_pp0_stage80) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage72) & (1'b0 == ap_block_pp0_stage72) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage64) & (1'b0 == ap_block_pp0_stage64) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage56) & (1'b0 == ap_block_pp0_stage56) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage48) & (1'b0 == ap_block_pp0_stage48) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage40) & (1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1== 1'b1)))) begin
        grp_fu_1219_p0 = reg_1272;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = norm_fu_148;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = tmp_25_reg_3198;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = tmp_24_reg_3193;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = tmp_23_reg_3188;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = tmp_22_reg_3183;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = tmp_21_reg_3178;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = tmp_20_reg_3173;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = tmp_19_reg_3168;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = tmp_18_reg_3163;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = tmp_17_reg_2926;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = tmp_16_reg_2921;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = tmp_15_reg_2916;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1219_p0 = tmp_1_reg_2736;
    end else begin
        grp_fu_1219_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        grp_fu_1219_p1 = mul177_3_1_reg_3227;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        grp_fu_1219_p1 = mul177_3_reg_3222;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage80) & (1'b0 == ap_block_pp0_stage80) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1219_p1 = reg_1267;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage72) & (1'b0 == ap_block_pp0_stage72) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1219_p1 = reg_1262;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage64) & (1'b0 == ap_block_pp0_stage64) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1219_p1 = reg_1257;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage88) & (1'b0 == ap_block_pp0_stage88) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1219_p1 = reg_1252;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage56) & (1'b0 == ap_block_pp0_stage56) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1219_p1 = reg_1247;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage48) & (1'b0 == ap_block_pp0_stage48) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1219_p1 = reg_1242;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage40) & (1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1219_p1 = reg_1237;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1219_p1 = reg_1232;
    end else begin
        grp_fu_1219_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = sub168_2_reg_3210;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = sub168_1_2_reg_3203;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1227_p0 = reg_1297;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1227_p0 = reg_1291;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1227_p0 = reg_1285;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1227_p0 = reg_1279;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1227_p0 = reg_1272;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = tmp_14_reg_3158;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = tmp_13_reg_3153;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = tmp_12_reg_3148;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = tmp_11_reg_3143;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = tmp_10_reg_3138;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = tmp_9_reg_3133;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = tmp_8_reg_3128;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = tmp_7_reg_3123;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = tmp_6_reg_2911;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = tmp_5_reg_2906;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = tmp_4_reg_2901;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p0 = tmp_s_reg_2731;
    end else begin
        grp_fu_1227_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p1 = sub168_2_reg_3210;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1227_p1 = sub168_1_2_reg_3203;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1227_p1 = reg_1297;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1227_p1 = reg_1291;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1227_p1 = reg_1285;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1227_p1 = reg_1279;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1227_p1 = reg_1272;
end else if ((((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0== 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1227_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1227_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (ap_loop_exit_ready == 1'b1) & (tmp_reg_2526 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001))) begin
        norm_15_out_ap_vld = 1'b1;
    end else begin
        norm_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21))) begin
            weights3_0_address0_local = weights3_0_addr_1_reg_2931;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln180_4_fu_1604_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_0_address0_local = 'bx;
        end
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25))) begin
            weights3_0_address1_local = weights3_0_addr_2_reg_3027;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_0_address1_local = weights3_0_addr_reg_2550;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_0_address1_local = zext_ln180_fu_1492_p1;
        end else begin
            weights3_0_address1_local = 'bx;
        end
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25))) begin
            weights3_0_d1_local = bitcast_ln180_56_fu_2454_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_0_d1_local = bitcast_ln180_48_fu_2388_p1;
        end else begin
            weights3_0_d1_local = 'bx;
        end
    end else begin
        weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_predicate_pred1303_state22 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_predicate_pred1317_state26 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_predicate_pred1288_state18 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23))) begin
            weights3_10_address0_local = weights3_10_addr_1_reg_2991;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_10_address0_local = zext_ln180_6_fu_1660_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_10_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_10_address0_local = 'bx;
        end
    end else begin
        weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27))) begin
            weights3_10_address1_local = weights3_10_addr_2_reg_3087;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_10_address1_local = weights3_10_addr_reg_2675;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_10_address1_local = zext_ln180_2_fu_1548_p1;
        end else begin
            weights3_10_address1_local = 'bx;
        end
    end else begin
        weights3_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_10_ce0_local = 1'b1;
    end else begin
        weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_10_ce1_local = 1'b1;
    end else begin
        weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27))) begin
            weights3_10_d1_local = bitcast_ln180_58_fu_2470_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_10_d1_local = bitcast_ln180_50_fu_2404_p1;
        end else begin
            weights3_10_d1_local = 'bx;
        end
    end else begin
        weights3_10_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (ap_predicate_pred1340_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_10_we0_local = 1'b1;
    end else begin
        weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage27) & (ap_predicate_pred1288_state28 == 1'b1) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1317_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_10_we1_local = 1'b1;
    end else begin
        weights3_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24))) begin
            weights3_11_address0_local = weights3_11_addr_1_reg_3015;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_11_address0_local = zext_ln180_7_fu_1688_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_11_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_11_address0_local = 'bx;
        end
    end else begin
        weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28))) begin
            weights3_11_address1_local = weights3_11_addr_2_reg_3111;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_11_address1_local = weights3_11_addr_reg_2699;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_11_address1_local = zext_ln180_3_fu_1576_p1;
        end else begin
            weights3_11_address1_local = 'bx;
        end
    end else begin
        weights3_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_11_ce0_local = 1'b1;
    end else begin
        weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_11_ce1_local = 1'b1;
    end else begin
        weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28))) begin
            weights3_11_d1_local = bitcast_ln180_59_fu_2478_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_11_d1_local = bitcast_ln180_51_fu_2412_p1;
        end else begin
            weights3_11_d1_local = 'bx;
        end
    end else begin
        weights3_11_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage24) & (ap_predicate_pred1340_state25 == 1'b1) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_11_we0_local = 1'b1;
    end else begin
        weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1317_state21 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (ap_predicate_pred1288_state29 == 1'b1) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_11_we1_local = 1'b1;
    end else begin
        weights3_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21))) begin
            weights3_12_address0_local = weights3_12_addr_1_reg_2949;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_12_address0_local = zext_ln180_4_fu_1604_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_12_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_12_address0_local = 'bx;
        end
    end else begin
        weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25))) begin
            weights3_12_address1_local = weights3_12_addr_2_reg_3045;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_12_address1_local = weights3_12_addr_reg_2568;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_12_address1_local = zext_ln180_fu_1492_p1;
        end else begin
            weights3_12_address1_local = 'bx;
        end
    end else begin
        weights3_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_12_ce0_local = 1'b1;
    end else begin
        weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_12_ce1_local = 1'b1;
    end else begin
        weights3_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25))) begin
            weights3_12_d1_local = bitcast_ln180_56_fu_2454_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_12_d1_local = bitcast_ln180_48_fu_2388_p1;
        end else begin
            weights3_12_d1_local = 'bx;
        end
    end else begin
        weights3_12_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1317_state22 == 1'b1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_12_we0_local = 1'b1;
    end else begin
        weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage25) & (ap_predicate_pred1340_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1303_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_12_we1_local = 1'b1;
    end else begin
        weights3_12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22))) begin
            weights3_13_address0_local = weights3_13_addr_1_reg_2973;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_13_address0_local = zext_ln180_5_fu_1632_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_13_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_13_address0_local = 'bx;
        end
    end else begin
        weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26))) begin
            weights3_13_address1_local = weights3_13_addr_2_reg_3069;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_13_address1_local = weights3_13_addr_reg_2657;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_13_address1_local = zext_ln180_1_fu_1520_p1;
        end else begin
            weights3_13_address1_local = 'bx;
        end
    end else begin
        weights3_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_13_ce0_local = 1'b1;
    end else begin
        weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_13_ce1_local = 1'b1;
    end else begin
        weights3_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26))) begin
            weights3_13_d1_local = bitcast_ln180_57_fu_2462_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_13_d1_local = bitcast_ln180_49_fu_2396_p1;
        end else begin
            weights3_13_d1_local = 'bx;
        end
    end else begin
        weights3_13_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred1317_state23 == 1'b1) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_13_we0_local = 1'b1;
    end else begin
        weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage26) & (ap_predicate_pred1340_state27 == 1'b1) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1303_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_13_we1_local = 1'b1;
    end else begin
        weights3_13_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23))) begin
            weights3_14_address0_local = weights3_14_addr_1_reg_2997;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_14_address0_local = zext_ln180_6_fu_1660_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_14_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_14_address0_local = 'bx;
        end
    end else begin
        weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27))) begin
            weights3_14_address1_local = weights3_14_addr_2_reg_3093;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_14_address1_local = weights3_14_addr_reg_2681;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_14_address1_local = zext_ln180_2_fu_1548_p1;
        end else begin
            weights3_14_address1_local = 'bx;
        end
    end else begin
        weights3_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_14_ce0_local = 1'b1;
    end else begin
        weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_14_ce1_local = 1'b1;
    end else begin
        weights3_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27))) begin
            weights3_14_d1_local = bitcast_ln180_58_fu_2470_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_14_d1_local = bitcast_ln180_50_fu_2404_p1;
        end else begin
            weights3_14_d1_local = 'bx;
        end
    end else begin
        weights3_14_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (ap_predicate_pred1317_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_14_we0_local = 1'b1;
    end else begin
        weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage27) & (ap_predicate_pred1340_state28 == 1'b1) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1303_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_14_we1_local = 1'b1;
    end else begin
        weights3_14_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24))) begin
            weights3_15_address0_local = weights3_15_addr_1_reg_3021;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_15_address0_local = zext_ln180_7_fu_1688_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_15_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_15_address0_local = 'bx;
        end
    end else begin
        weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28))) begin
            weights3_15_address1_local = weights3_15_addr_2_reg_3117;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_15_address1_local = weights3_15_addr_reg_2705;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_15_address1_local = zext_ln180_3_fu_1576_p1;
        end else begin
            weights3_15_address1_local = 'bx;
        end
    end else begin
        weights3_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_15_ce0_local = 1'b1;
    end else begin
        weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_15_ce1_local = 1'b1;
    end else begin
        weights3_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28))) begin
            weights3_15_d1_local = bitcast_ln180_59_fu_2478_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_15_d1_local = bitcast_ln180_51_fu_2412_p1;
        end else begin
            weights3_15_d1_local = 'bx;
        end
    end else begin
        weights3_15_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage24) & (ap_predicate_pred1317_state25 == 1'b1) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_15_we0_local = 1'b1;
    end else begin
        weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1303_state21 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (ap_predicate_pred1340_state29 == 1'b1) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_15_we1_local = 1'b1;
    end else begin
        weights3_15_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22))) begin
            weights3_1_address0_local = weights3_1_addr_1_reg_2955;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_1_address0_local = zext_ln180_5_fu_1632_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_1_address0_local = 'bx;
        end
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26))) begin
            weights3_1_address1_local = weights3_1_addr_2_reg_3051;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_1_address1_local = weights3_1_addr_reg_2639;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_1_address1_local = zext_ln180_1_fu_1520_p1;
        end else begin
            weights3_1_address1_local = 'bx;
        end
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26))) begin
            weights3_1_d1_local = bitcast_ln180_57_fu_2462_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_1_d1_local = bitcast_ln180_49_fu_2396_p1;
        end else begin
            weights3_1_d1_local = 'bx;
        end
    end else begin
        weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred1303_state23 == 1'b1) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage26) & (ap_predicate_pred1317_state27 == 1'b1) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1288_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23))) begin
            weights3_2_address0_local = weights3_2_addr_1_reg_2979;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_2_address0_local = zext_ln180_6_fu_1660_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_2_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_2_address0_local = 'bx;
        end
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27))) begin
            weights3_2_address1_local = weights3_2_addr_2_reg_3075;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_2_address1_local = weights3_2_addr_reg_2663;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_2_address1_local = zext_ln180_2_fu_1548_p1;
        end else begin
            weights3_2_address1_local = 'bx;
        end
    end else begin
        weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27))) begin
            weights3_2_d1_local = bitcast_ln180_58_fu_2470_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_2_d1_local = bitcast_ln180_50_fu_2404_p1;
        end else begin
            weights3_2_d1_local = 'bx;
        end
    end else begin
        weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (ap_predicate_pred1303_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_2_we0_local = 1'b1;
    end else begin
        weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage27) & (ap_predicate_pred1317_state28 == 1'b1) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1288_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_2_we1_local = 1'b1;
    end else begin
        weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24))) begin
            weights3_3_address0_local = weights3_3_addr_1_reg_3003;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_3_address0_local = zext_ln180_7_fu_1688_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_3_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_3_address0_local = 'bx;
        end
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28))) begin
            weights3_3_address1_local = weights3_3_addr_2_reg_3099;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_3_address1_local = weights3_3_addr_reg_2687;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_3_address1_local = zext_ln180_3_fu_1576_p1;
        end else begin
            weights3_3_address1_local = 'bx;
        end
    end else begin
        weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28))) begin
            weights3_3_d1_local = bitcast_ln180_59_fu_2478_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_3_d1_local = bitcast_ln180_51_fu_2412_p1;
        end else begin
            weights3_3_d1_local = 'bx;
        end
    end else begin
        weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage24) & (ap_predicate_pred1303_state25 == 1'b1) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_3_we0_local = 1'b1;
    end else begin
        weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1288_state21 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (ap_predicate_pred1317_state29 == 1'b1) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_3_we1_local = 1'b1;
    end else begin
        weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21))) begin
            weights3_4_address0_local = weights3_4_addr_1_reg_2937;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_4_address0_local = zext_ln180_4_fu_1604_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_4_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_4_address0_local = 'bx;
        end
    end else begin
        weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25))) begin
            weights3_4_address1_local = weights3_4_addr_2_reg_3033;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_4_address1_local = weights3_4_addr_reg_2556;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_4_address1_local = zext_ln180_fu_1492_p1;
        end else begin
            weights3_4_address1_local = 'bx;
        end
    end else begin
        weights3_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_4_ce0_local = 1'b1;
    end else begin
        weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_4_ce1_local = 1'b1;
    end else begin
        weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25))) begin
            weights3_4_d1_local = bitcast_ln180_56_fu_2454_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_4_d1_local = bitcast_ln180_48_fu_2388_p1;
        end else begin
            weights3_4_d1_local = 'bx;
        end
    end else begin
        weights3_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1288_state22 == 1'b1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_4_we0_local = 1'b1;
    end else begin
        weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage25) & (ap_predicate_pred1303_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1340_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_4_we1_local = 1'b1;
    end else begin
        weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22))) begin
            weights3_5_address0_local = weights3_5_addr_1_reg_2961;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_5_address0_local = zext_ln180_5_fu_1632_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_5_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_5_address0_local = 'bx;
        end
    end else begin
        weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26))) begin
            weights3_5_address1_local = weights3_5_addr_2_reg_3057;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_5_address1_local = weights3_5_addr_reg_2645;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_5_address1_local = zext_ln180_1_fu_1520_p1;
        end else begin
            weights3_5_address1_local = 'bx;
        end
    end else begin
        weights3_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_5_ce0_local = 1'b1;
    end else begin
        weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_5_ce1_local = 1'b1;
    end else begin
        weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26))) begin
            weights3_5_d1_local = bitcast_ln180_57_fu_2462_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_5_d1_local = bitcast_ln180_49_fu_2396_p1;
        end else begin
            weights3_5_d1_local = 'bx;
        end
    end else begin
        weights3_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred1288_state23 == 1'b1) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_5_we0_local = 1'b1;
    end else begin
        weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage26) & (ap_predicate_pred1303_state27 == 1'b1) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1340_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_5_we1_local = 1'b1;
    end else begin
        weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23))) begin
            weights3_6_address0_local = weights3_6_addr_1_reg_2985;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_6_address0_local = zext_ln180_6_fu_1660_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_6_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_6_address0_local = 'bx;
        end
    end else begin
        weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27))) begin
            weights3_6_address1_local = weights3_6_addr_2_reg_3081;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_6_address1_local = weights3_6_addr_reg_2669;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_6_address1_local = zext_ln180_2_fu_1548_p1;
        end else begin
            weights3_6_address1_local = 'bx;
        end
    end else begin
        weights3_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_6_ce0_local = 1'b1;
    end else begin
        weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_6_ce1_local = 1'b1;
    end else begin
        weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27))) begin
            weights3_6_d1_local = bitcast_ln180_58_fu_2470_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_6_d1_local = bitcast_ln180_50_fu_2404_p1;
        end else begin
            weights3_6_d1_local = 'bx;
        end
    end else begin
        weights3_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (ap_predicate_pred1288_state24 == 1'b1) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_6_we0_local = 1'b1;
    end else begin
        weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage27) & (ap_predicate_pred1303_state28 == 1'b1) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (ap_predicate_pred1340_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_6_we1_local = 1'b1;
    end else begin
        weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24))) begin
            weights3_7_address0_local = weights3_7_addr_1_reg_3009;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_7_address0_local = zext_ln180_7_fu_1688_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_7_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_7_address0_local = 'bx;
        end
    end else begin
        weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28))) begin
            weights3_7_address1_local = weights3_7_addr_2_reg_3105;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_7_address1_local = weights3_7_addr_reg_2693;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_7_address1_local = zext_ln180_3_fu_1576_p1;
        end else begin
            weights3_7_address1_local = 'bx;
        end
    end else begin
        weights3_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_7_ce0_local = 1'b1;
    end else begin
        weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_7_ce1_local = 1'b1;
    end else begin
        weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28))) begin
            weights3_7_d1_local = bitcast_ln180_59_fu_2478_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_7_d1_local = bitcast_ln180_51_fu_2412_p1;
        end else begin
            weights3_7_d1_local = 'bx;
        end
    end else begin
        weights3_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage24) & (ap_predicate_pred1288_state25 == 1'b1) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_7_we0_local = 1'b1;
    end else begin
        weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (ap_predicate_pred1340_state21 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (ap_predicate_pred1303_state29 == 1'b1) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_7_we1_local = 1'b1;
    end else begin
        weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21))) begin
            weights3_8_address0_local = weights3_8_addr_1_reg_2943;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_8_address0_local = zext_ln180_4_fu_1604_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_8_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_8_address0_local = 'bx;
        end
    end else begin
        weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25))) begin
            weights3_8_address1_local = weights3_8_addr_2_reg_3039;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_8_address1_local = weights3_8_addr_reg_2562;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_8_address1_local = zext_ln180_fu_1492_p1;
        end else begin
            weights3_8_address1_local = 'bx;
        end
    end else begin
        weights3_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_8_ce0_local = 1'b1;
    end else begin
        weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_8_ce1_local = 1'b1;
    end else begin
        weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25))) begin
            weights3_8_d1_local = bitcast_ln180_56_fu_2454_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_8_d1_local = bitcast_ln180_48_fu_2388_p1;
        end else begin
            weights3_8_d1_local = 'bx;
        end
    end else begin
        weights3_8_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage21) & (ap_predicate_pred1340_state22 == 1'b1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_8_we0_local = 1'b1;
    end else begin
        weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage25) & (ap_predicate_pred1288_state26 == 1'b1) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (ap_predicate_pred1317_state18 == 1'b1) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_8_we1_local = 1'b1;
    end else begin
        weights3_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22))) begin
            weights3_9_address0_local = weights3_9_addr_1_reg_2967;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_9_address0_local = zext_ln180_5_fu_1632_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_9_address0_local = zext_ln122_1_fu_1356_p1;
        end else begin
            weights3_9_address0_local = 'bx;
        end
    end else begin
        weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26))) begin
            weights3_9_address1_local = weights3_9_addr_2_reg_3063;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_9_address1_local = weights3_9_addr_reg_2651;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_9_address1_local = zext_ln180_1_fu_1520_p1;
        end else begin
            weights3_9_address1_local = 'bx;
        end
    end else begin
        weights3_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_9_ce0_local = 1'b1;
    end else begin
        weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_9_ce1_local = 1'b1;
    end else begin
        weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26))) begin
            weights3_9_d1_local = bitcast_ln180_57_fu_2462_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_9_d1_local = bitcast_ln180_49_fu_2396_p1;
        end else begin
            weights3_9_d1_local = 'bx;
        end
    end else begin
        weights3_9_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (ap_predicate_pred1340_state23 == 1'b1) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_9_we0_local = 1'b1;
    end else begin
        weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage26) & (ap_predicate_pred1288_state27 == 1'b1) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (ap_predicate_pred1317_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_9_we1_local = 1'b1;
    end else begin
        weights3_9_we1_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage23)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage64;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage63;
            end
        end
        ap_ST_fsm_pp0_stage64 : begin
            if ((1'b0 == ap_block_pp0_stage64_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage65;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage64;
            end
        end
        ap_ST_fsm_pp0_stage65 : begin
            if ((1'b0 == ap_block_pp0_stage65_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage66;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage65;
            end
        end
        ap_ST_fsm_pp0_stage66 : begin
            if ((1'b0 == ap_block_pp0_stage66_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage67;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage66;
            end
        end
        ap_ST_fsm_pp0_stage67 : begin
            if ((1'b0 == ap_block_pp0_stage67_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage68;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage67;
            end
        end
        ap_ST_fsm_pp0_stage68 : begin
            if ((1'b0 == ap_block_pp0_stage68_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage69;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage68;
            end
        end
        ap_ST_fsm_pp0_stage69 : begin
            if ((1'b0 == ap_block_pp0_stage69_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage70;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage69;
            end
        end
        ap_ST_fsm_pp0_stage70 : begin
            if ((1'b0 == ap_block_pp0_stage70_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage71;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage70;
            end
        end
        ap_ST_fsm_pp0_stage71 : begin
            if ((1'b0 == ap_block_pp0_stage71_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage72;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage71;
            end
        end
        ap_ST_fsm_pp0_stage72 : begin
            if ((1'b0 == ap_block_pp0_stage72_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage73;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage72;
            end
        end
        ap_ST_fsm_pp0_stage73 : begin
            if ((1'b0 == ap_block_pp0_stage73_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage74;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage73;
            end
        end
        ap_ST_fsm_pp0_stage74 : begin
            if ((1'b0 == ap_block_pp0_stage74_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage75;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage74;
            end
        end
        ap_ST_fsm_pp0_stage75 : begin
            if ((1'b0 == ap_block_pp0_stage75_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage76;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage75;
            end
        end
        ap_ST_fsm_pp0_stage76 : begin
            if ((1'b0 == ap_block_pp0_stage76_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage77;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage76;
            end
        end
        ap_ST_fsm_pp0_stage77 : begin
            if ((1'b0 == ap_block_pp0_stage77_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage78;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage77;
            end
        end
        ap_ST_fsm_pp0_stage78 : begin
            if ((1'b0 == ap_block_pp0_stage78_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage79;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage78;
            end
        end
        ap_ST_fsm_pp0_stage79 : begin
            if ((1'b0 == ap_block_pp0_stage79_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage80;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage79;
            end
        end
        ap_ST_fsm_pp0_stage80 : begin
            if ((1'b0 == ap_block_pp0_stage80_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage81;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage80;
            end
        end
        ap_ST_fsm_pp0_stage81 : begin
            if ((1'b0 == ap_block_pp0_stage81_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage82;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage81;
            end
        end
        ap_ST_fsm_pp0_stage82 : begin
            if ((1'b0 == ap_block_pp0_stage82_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage83;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage82;
            end
        end
        ap_ST_fsm_pp0_stage83 : begin
            if ((1'b0 == ap_block_pp0_stage83_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage84;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage83;
            end
        end
        ap_ST_fsm_pp0_stage84 : begin
            if ((1'b0 == ap_block_pp0_stage84_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage85;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage84;
            end
        end
        ap_ST_fsm_pp0_stage85 : begin
            if ((1'b0 == ap_block_pp0_stage85_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage86;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage85;
            end
        end
        ap_ST_fsm_pp0_stage86 : begin
            if ((1'b0 == ap_block_pp0_stage86_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage87;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage86;
            end
        end
        ap_ST_fsm_pp0_stage87 : begin
            if ((1'b0 == ap_block_pp0_stage87_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage88;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage87;
            end
        end
        ap_ST_fsm_pp0_stage88 : begin
            if ((1'b0 == ap_block_pp0_stage88_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage89;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage88;
            end
        end
        ap_ST_fsm_pp0_stage89 : begin
            if ((1'b0 == ap_block_pp0_stage89_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage90;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage89;
            end
        end
        ap_ST_fsm_pp0_stage90 : begin
            if ((1'b0 == ap_block_pp0_stage90_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage91;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage90;
            end
        end
        ap_ST_fsm_pp0_stage91 : begin
            if ((1'b0 == ap_block_pp0_stage91_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage92;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage91;
            end
        end
        ap_ST_fsm_pp0_stage92 : begin
            if ((1'b0 == ap_block_pp0_stage92_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage93;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage92;
            end
        end
        ap_ST_fsm_pp0_stage93 : begin
            if ((1'b0 == ap_block_pp0_stage93_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage94;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage93;
            end
        end
        ap_ST_fsm_pp0_stage94 : begin
            if ((1'b0 == ap_block_pp0_stage94_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage95;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage94;
            end
        end
        ap_ST_fsm_pp0_stage95 : begin
            if ((1'b0 == ap_block_pp0_stage95_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage95;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln178_fu_2486_p2 = (i_1_reg_2520 + 7'd4);
assign add_ln180_1_fu_1504_p2 = (tmp_3_fu_1469_p3 + 8'd2);
assign add_ln180_2_fu_1560_p2 = (tmp_3_fu_1469_p3 + 8'd4);
assign add_ln180_3_fu_1588_p2 = (tmp_3_fu_1469_p3 + 8'd5);
assign add_ln180_4_fu_1644_p2 = (tmp_3_fu_1469_p3 + 8'd7);
assign add_ln180_5_fu_1672_p2 = (tmp_3_fu_1469_p3 + 8'd8);
assign add_ln180_fu_1476_p2 = (tmp_3_fu_1469_p3 + 8'd1);
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
assign ap_CS_fsm_pp0_stage34 = ap_CS_fsm[32'd34];
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
assign ap_CS_fsm_pp0_stage64 = ap_CS_fsm[32'd64];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage71 = ap_CS_fsm[32'd71];
assign ap_CS_fsm_pp0_stage72 = ap_CS_fsm[32'd72];
assign ap_CS_fsm_pp0_stage79 = ap_CS_fsm[32'd79];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage80 = ap_CS_fsm[32'd80];
assign ap_CS_fsm_pp0_stage87 = ap_CS_fsm[32'd87];
assign ap_CS_fsm_pp0_stage88 = ap_CS_fsm[32'd88];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage95 = ap_CS_fsm[32'd95];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_01001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage64 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage64_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage64_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage65_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage66_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage67_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage68_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage69_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage70_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage71_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage71_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage72 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage72_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage72_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage73_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage74_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage75_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage76_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage77_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage78_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage79_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage79_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage80 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage80_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage80_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage81_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage82_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage83_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage84_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage85_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage86_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage87_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage87_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage88 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage88_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage88_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage89_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage90_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage91_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage92_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage93_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage94_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage95 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage95_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage95_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage23;
assign ap_ready = ap_ready_sig;
assign bitcast_ln180_48_fu_2388_p1 = reg_1272;
assign bitcast_ln180_49_fu_2396_p1 = reg_1279;
assign bitcast_ln180_50_fu_2404_p1 = reg_1285;
assign bitcast_ln180_51_fu_2412_p1 = reg_1291;
assign bitcast_ln180_52_fu_2420_p1 = reg_1297;
assign bitcast_ln180_53_fu_2428_p1 = sub168_1_2_reg_3203;
assign bitcast_ln180_54_fu_2435_p1 = sub168_2_reg_3210;
assign bitcast_ln180_55_fu_2446_p1 = reg_1272;
assign bitcast_ln180_56_fu_2454_p1 = reg_1279;
assign bitcast_ln180_57_fu_2462_p1 = reg_1285;
assign bitcast_ln180_58_fu_2470_p1 = reg_1291;
assign bitcast_ln180_59_fu_2478_p1 = reg_1297;
assign d_weights3_0_address0 = d_weights3_0_address0_local;
assign d_weights3_0_address1 = zext_ln180_fu_1492_p1;
assign d_weights3_0_ce0 = d_weights3_0_ce0_local;
assign d_weights3_0_ce1 = d_weights3_0_ce1_local;
assign d_weights3_10_address0 = d_weights3_10_address0_local;
assign d_weights3_10_address1 = zext_ln180_2_fu_1548_p1;
assign d_weights3_10_ce0 = d_weights3_10_ce0_local;
assign d_weights3_10_ce1 = d_weights3_10_ce1_local;
assign d_weights3_11_address0 = d_weights3_11_address0_local;
assign d_weights3_11_address1 = zext_ln180_3_fu_1576_p1;
assign d_weights3_11_ce0 = d_weights3_11_ce0_local;
assign d_weights3_11_ce1 = d_weights3_11_ce1_local;
assign d_weights3_12_address0 = d_weights3_12_address0_local;
assign d_weights3_12_address1 = zext_ln180_fu_1492_p1;
assign d_weights3_12_ce0 = d_weights3_12_ce0_local;
assign d_weights3_12_ce1 = d_weights3_12_ce1_local;
assign d_weights3_13_address0 = d_weights3_13_address0_local;
assign d_weights3_13_address1 = zext_ln180_1_fu_1520_p1;
assign d_weights3_13_ce0 = d_weights3_13_ce0_local;
assign d_weights3_13_ce1 = d_weights3_13_ce1_local;
assign d_weights3_14_address0 = d_weights3_14_address0_local;
assign d_weights3_14_address1 = zext_ln180_2_fu_1548_p1;
assign d_weights3_14_ce0 = d_weights3_14_ce0_local;
assign d_weights3_14_ce1 = d_weights3_14_ce1_local;
assign d_weights3_15_address0 = d_weights3_15_address0_local;
assign d_weights3_15_address1 = zext_ln180_3_fu_1576_p1;
assign d_weights3_15_ce0 = d_weights3_15_ce0_local;
assign d_weights3_15_ce1 = d_weights3_15_ce1_local;
assign d_weights3_1_address0 = d_weights3_1_address0_local;
assign d_weights3_1_address1 = zext_ln180_1_fu_1520_p1;
assign d_weights3_1_ce0 = d_weights3_1_ce0_local;
assign d_weights3_1_ce1 = d_weights3_1_ce1_local;
assign d_weights3_2_address0 = d_weights3_2_address0_local;
assign d_weights3_2_address1 = zext_ln180_2_fu_1548_p1;
assign d_weights3_2_ce0 = d_weights3_2_ce0_local;
assign d_weights3_2_ce1 = d_weights3_2_ce1_local;
assign d_weights3_3_address0 = d_weights3_3_address0_local;
assign d_weights3_3_address1 = zext_ln180_3_fu_1576_p1;
assign d_weights3_3_ce0 = d_weights3_3_ce0_local;
assign d_weights3_3_ce1 = d_weights3_3_ce1_local;
assign d_weights3_4_address0 = d_weights3_4_address0_local;
assign d_weights3_4_address1 = zext_ln180_fu_1492_p1;
assign d_weights3_4_ce0 = d_weights3_4_ce0_local;
assign d_weights3_4_ce1 = d_weights3_4_ce1_local;
assign d_weights3_5_address0 = d_weights3_5_address0_local;
assign d_weights3_5_address1 = zext_ln180_1_fu_1520_p1;
assign d_weights3_5_ce0 = d_weights3_5_ce0_local;
assign d_weights3_5_ce1 = d_weights3_5_ce1_local;
assign d_weights3_6_address0 = d_weights3_6_address0_local;
assign d_weights3_6_address1 = zext_ln180_2_fu_1548_p1;
assign d_weights3_6_ce0 = d_weights3_6_ce0_local;
assign d_weights3_6_ce1 = d_weights3_6_ce1_local;
assign d_weights3_7_address0 = d_weights3_7_address0_local;
assign d_weights3_7_address1 = zext_ln180_3_fu_1576_p1;
assign d_weights3_7_ce0 = d_weights3_7_ce0_local;
assign d_weights3_7_ce1 = d_weights3_7_ce1_local;
assign d_weights3_8_address0 = d_weights3_8_address0_local;
assign d_weights3_8_address1 = zext_ln180_fu_1492_p1;
assign d_weights3_8_ce0 = d_weights3_8_ce0_local;
assign d_weights3_8_ce1 = d_weights3_8_ce1_local;
assign d_weights3_9_address0 = d_weights3_9_address0_local;
assign d_weights3_9_address1 = zext_ln180_1_fu_1520_p1;
assign d_weights3_9_ce0 = d_weights3_9_ce0_local;
assign d_weights3_9_ce1 = d_weights3_9_ce1_local;
assign empty_32_fu_1616_p2 = (tmp_3_fu_1469_p3 + 8'd6);
assign empty_fu_1532_p2 = (tmp_3_fu_1469_p3 + 8'd3);
assign grp_fu_1155_p_ce = 1'b1;
assign grp_fu_1155_p_din0 = grp_fu_1219_p0;
assign grp_fu_1155_p_din1 = grp_fu_1219_p1;
assign grp_fu_1155_p_opcode = grp_fu_1219_opcode;
assign grp_fu_1159_p_ce = 1'b1;
assign grp_fu_1159_p_din0 = norm_10_reg_3237;
assign grp_fu_1159_p_din1 = mul177_3_2_reg_3232;
assign grp_fu_1159_p_opcode = 2'd0;
assign grp_fu_1163_p_ce = 1'b1;
assign grp_fu_1163_p_din0 = grp_fu_1227_p0;
assign grp_fu_1163_p_din1 = grp_fu_1227_p1;
assign lshr_ln122_1_fu_1538_p4 = {{empty_fu_1532_p2[7:4]}};
assign lshr_ln122_2_fu_1622_p4 = {{empty_32_fu_1616_p2[7:4]}};
assign lshr_ln180_1_fu_1510_p4 = {{add_ln180_1_fu_1504_p2[7:4]}};
assign lshr_ln180_2_fu_1566_p4 = {{add_ln180_2_fu_1560_p2[7:4]}};
assign lshr_ln180_3_fu_1594_p4 = {{add_ln180_3_fu_1588_p2[7:4]}};
assign lshr_ln180_4_fu_1650_p4 = {{add_ln180_4_fu_1644_p2[7:4]}};
assign lshr_ln180_5_fu_1678_p4 = {{add_ln180_5_fu_1672_p2[7:4]}};
assign lshr_ln5_fu_1346_p4 = {{sub_ln122_fu_1340_p2[7:4]}};
assign lshr_ln6_fu_1482_p4 = {{add_ln180_fu_1476_p2[7:4]}};
assign norm_15_out = norm_fu_148;
assign p_shl_fu_1332_p3 = {{trunc_ln122_fu_1328_p1}, {2'd0}};
assign sub_ln122_fu_1340_p2 = (p_shl_fu_1332_p3 - zext_ln122_fu_1324_p1);
assign tmp_10_fu_1961_p9 = 'bx;
assign tmp_11_fu_1984_p9 = 'bx;
assign tmp_12_fu_2007_p9 = 'bx;
assign tmp_13_fu_2030_p9 = 'bx;
assign tmp_14_fu_2053_p9 = 'bx;
assign tmp_15_fu_1788_p2 = weights3_1_q0;
assign tmp_15_fu_1788_p4 = weights3_5_q0;
assign tmp_15_fu_1788_p6 = weights3_9_q0;
assign tmp_15_fu_1788_p8 = weights3_13_q0;
assign tmp_15_fu_1788_p9 = 'bx;
assign tmp_16_fu_1828_p2 = weights3_2_q0;
assign tmp_16_fu_1828_p4 = weights3_6_q0;
assign tmp_16_fu_1828_p6 = weights3_10_q0;
assign tmp_16_fu_1828_p8 = weights3_14_q0;
assign tmp_16_fu_1828_p9 = 'bx;
assign tmp_17_fu_1868_p2 = weights3_3_q0;
assign tmp_17_fu_1868_p4 = weights3_7_q0;
assign tmp_17_fu_1868_p6 = weights3_11_q0;
assign tmp_17_fu_1868_p8 = weights3_15_q0;
assign tmp_17_fu_1868_p9 = 'bx;
assign tmp_18_fu_2092_p2 = weights3_0_q1;
assign tmp_18_fu_2092_p4 = weights3_4_q1;
assign tmp_18_fu_2092_p6 = weights3_8_q1;
assign tmp_18_fu_2092_p8 = weights3_12_q1;
assign tmp_18_fu_2092_p9 = 'bx;
assign tmp_19_fu_2131_p2 = weights3_1_q1;
assign tmp_19_fu_2131_p4 = weights3_5_q1;
assign tmp_19_fu_2131_p6 = weights3_9_q1;
assign tmp_19_fu_2131_p8 = weights3_13_q1;
assign tmp_19_fu_2131_p9 = 'bx;
assign tmp_1_fu_1445_p2 = weights3_0_q0;
assign tmp_1_fu_1445_p4 = weights3_4_q0;
assign tmp_1_fu_1445_p6 = weights3_8_q0;
assign tmp_1_fu_1445_p8 = weights3_12_q0;
assign tmp_1_fu_1445_p9 = 'bx;
assign tmp_20_fu_2170_p2 = weights3_2_q1;
assign tmp_20_fu_2170_p4 = weights3_6_q1;
assign tmp_20_fu_2170_p6 = weights3_10_q1;
assign tmp_20_fu_2170_p8 = weights3_14_q1;
assign tmp_20_fu_2170_p9 = 'bx;
assign tmp_21_fu_2209_p2 = weights3_3_q1;
assign tmp_21_fu_2209_p4 = weights3_7_q1;
assign tmp_21_fu_2209_p6 = weights3_11_q1;
assign tmp_21_fu_2209_p8 = weights3_15_q1;
assign tmp_21_fu_2209_p9 = 'bx;
assign tmp_22_fu_2248_p2 = weights3_0_q0;
assign tmp_22_fu_2248_p4 = weights3_4_q0;
assign tmp_22_fu_2248_p6 = weights3_8_q0;
assign tmp_22_fu_2248_p8 = weights3_12_q0;
assign tmp_22_fu_2248_p9 = 'bx;
assign tmp_23_fu_2287_p2 = weights3_1_q0;
assign tmp_23_fu_2287_p4 = weights3_5_q0;
assign tmp_23_fu_2287_p6 = weights3_9_q0;
assign tmp_23_fu_2287_p8 = weights3_13_q0;
assign tmp_23_fu_2287_p9 = 'bx;
assign tmp_24_fu_2326_p2 = weights3_2_q0;
assign tmp_24_fu_2326_p4 = weights3_6_q0;
assign tmp_24_fu_2326_p6 = weights3_10_q0;
assign tmp_24_fu_2326_p8 = weights3_14_q0;
assign tmp_24_fu_2326_p9 = 'bx;
assign tmp_25_fu_2365_p2 = weights3_3_q0;
assign tmp_25_fu_2365_p4 = weights3_7_q0;
assign tmp_25_fu_2365_p6 = weights3_11_q0;
assign tmp_25_fu_2365_p8 = weights3_15_q0;
assign tmp_25_fu_2365_p9 = 'bx;
assign tmp_3_fu_1469_p3 = {{tmp_2_reg_2614}, {2'd3}};
assign tmp_4_fu_1700_p9 = 'bx;
assign tmp_5_fu_1724_p9 = 'bx;
assign tmp_6_fu_1748_p9 = 'bx;
assign tmp_7_fu_1892_p9 = 'bx;
assign tmp_8_fu_1915_p9 = 'bx;
assign tmp_9_fu_1938_p9 = 'bx;
assign tmp_s_fu_1405_p9 = 'bx;
assign trunc_ln122_fu_1328_p1 = ap_sig_allocacmp_i_1[5:0];
assign trunc_ln178_fu_1402_p1 = i_1_reg_2520[3:0];
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_0_d0 = bitcast_ln180_52_fu_2420_p1;
assign weights3_0_d1 = weights3_0_d1_local;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_0_we1 = weights3_0_we1_local;
assign weights3_10_address0 = weights3_10_address0_local;
assign weights3_10_address1 = weights3_10_address1_local;
assign weights3_10_ce0 = weights3_10_ce0_local;
assign weights3_10_ce1 = weights3_10_ce1_local;
assign weights3_10_d0 = bitcast_ln180_54_fu_2435_p1;
assign weights3_10_d1 = weights3_10_d1_local;
assign weights3_10_we0 = weights3_10_we0_local;
assign weights3_10_we1 = weights3_10_we1_local;
assign weights3_11_address0 = weights3_11_address0_local;
assign weights3_11_address1 = weights3_11_address1_local;
assign weights3_11_ce0 = weights3_11_ce0_local;
assign weights3_11_ce1 = weights3_11_ce1_local;
assign weights3_11_d0 = bitcast_ln180_55_fu_2446_p1;
assign weights3_11_d1 = weights3_11_d1_local;
assign weights3_11_we0 = weights3_11_we0_local;
assign weights3_11_we1 = weights3_11_we1_local;
assign weights3_12_address0 = weights3_12_address0_local;
assign weights3_12_address1 = weights3_12_address1_local;
assign weights3_12_ce0 = weights3_12_ce0_local;
assign weights3_12_ce1 = weights3_12_ce1_local;
assign weights3_12_d0 = bitcast_ln180_52_fu_2420_p1;
assign weights3_12_d1 = weights3_12_d1_local;
assign weights3_12_we0 = weights3_12_we0_local;
assign weights3_12_we1 = weights3_12_we1_local;
assign weights3_13_address0 = weights3_13_address0_local;
assign weights3_13_address1 = weights3_13_address1_local;
assign weights3_13_ce0 = weights3_13_ce0_local;
assign weights3_13_ce1 = weights3_13_ce1_local;
assign weights3_13_d0 = bitcast_ln180_53_fu_2428_p1;
assign weights3_13_d1 = weights3_13_d1_local;
assign weights3_13_we0 = weights3_13_we0_local;
assign weights3_13_we1 = weights3_13_we1_local;
assign weights3_14_address0 = weights3_14_address0_local;
assign weights3_14_address1 = weights3_14_address1_local;
assign weights3_14_ce0 = weights3_14_ce0_local;
assign weights3_14_ce1 = weights3_14_ce1_local;
assign weights3_14_d0 = bitcast_ln180_54_fu_2435_p1;
assign weights3_14_d1 = weights3_14_d1_local;
assign weights3_14_we0 = weights3_14_we0_local;
assign weights3_14_we1 = weights3_14_we1_local;
assign weights3_15_address0 = weights3_15_address0_local;
assign weights3_15_address1 = weights3_15_address1_local;
assign weights3_15_ce0 = weights3_15_ce0_local;
assign weights3_15_ce1 = weights3_15_ce1_local;
assign weights3_15_d0 = bitcast_ln180_55_fu_2446_p1;
assign weights3_15_d1 = weights3_15_d1_local;
assign weights3_15_we0 = weights3_15_we0_local;
assign weights3_15_we1 = weights3_15_we1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_1_d0 = bitcast_ln180_53_fu_2428_p1;
assign weights3_1_d1 = weights3_1_d1_local;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_1_we1 = weights3_1_we1_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = weights3_2_address1_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_2_d0 = bitcast_ln180_54_fu_2435_p1;
assign weights3_2_d1 = weights3_2_d1_local;
assign weights3_2_we0 = weights3_2_we0_local;
assign weights3_2_we1 = weights3_2_we1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = weights3_3_address1_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
assign weights3_3_d0 = bitcast_ln180_55_fu_2446_p1;
assign weights3_3_d1 = weights3_3_d1_local;
assign weights3_3_we0 = weights3_3_we0_local;
assign weights3_3_we1 = weights3_3_we1_local;
assign weights3_4_address0 = weights3_4_address0_local;
assign weights3_4_address1 = weights3_4_address1_local;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_4_ce1 = weights3_4_ce1_local;
assign weights3_4_d0 = bitcast_ln180_52_fu_2420_p1;
assign weights3_4_d1 = weights3_4_d1_local;
assign weights3_4_we0 = weights3_4_we0_local;
assign weights3_4_we1 = weights3_4_we1_local;
assign weights3_5_address0 = weights3_5_address0_local;
assign weights3_5_address1 = weights3_5_address1_local;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_5_ce1 = weights3_5_ce1_local;
assign weights3_5_d0 = bitcast_ln180_53_fu_2428_p1;
assign weights3_5_d1 = weights3_5_d1_local;
assign weights3_5_we0 = weights3_5_we0_local;
assign weights3_5_we1 = weights3_5_we1_local;
assign weights3_6_address0 = weights3_6_address0_local;
assign weights3_6_address1 = weights3_6_address1_local;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_6_ce1 = weights3_6_ce1_local;
assign weights3_6_d0 = bitcast_ln180_54_fu_2435_p1;
assign weights3_6_d1 = weights3_6_d1_local;
assign weights3_6_we0 = weights3_6_we0_local;
assign weights3_6_we1 = weights3_6_we1_local;
assign weights3_7_address0 = weights3_7_address0_local;
assign weights3_7_address1 = weights3_7_address1_local;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_7_ce1 = weights3_7_ce1_local;
assign weights3_7_d0 = bitcast_ln180_55_fu_2446_p1;
assign weights3_7_d1 = weights3_7_d1_local;
assign weights3_7_we0 = weights3_7_we0_local;
assign weights3_7_we1 = weights3_7_we1_local;
assign weights3_8_address0 = weights3_8_address0_local;
assign weights3_8_address1 = weights3_8_address1_local;
assign weights3_8_ce0 = weights3_8_ce0_local;
assign weights3_8_ce1 = weights3_8_ce1_local;
assign weights3_8_d0 = bitcast_ln180_52_fu_2420_p1;
assign weights3_8_d1 = weights3_8_d1_local;
assign weights3_8_we0 = weights3_8_we0_local;
assign weights3_8_we1 = weights3_8_we1_local;
assign weights3_9_address0 = weights3_9_address0_local;
assign weights3_9_address1 = weights3_9_address1_local;
assign weights3_9_ce0 = weights3_9_ce0_local;
assign weights3_9_ce1 = weights3_9_ce1_local;
assign weights3_9_d0 = bitcast_ln180_53_fu_2428_p1;
assign weights3_9_d1 = weights3_9_d1_local;
assign weights3_9_we0 = weights3_9_we0_local;
assign weights3_9_we1 = weights3_9_we1_local;
assign zext_ln122_1_fu_1356_p1 = lshr_ln5_fu_1346_p4;
assign zext_ln122_fu_1324_p1 = ap_sig_allocacmp_i_1;
assign zext_ln180_1_fu_1520_p1 = lshr_ln180_1_fu_1510_p4;
assign zext_ln180_2_fu_1548_p1 = lshr_ln122_1_fu_1538_p4;
assign zext_ln180_3_fu_1576_p1 = lshr_ln180_2_fu_1566_p4;
assign zext_ln180_4_fu_1604_p1 = lshr_ln180_3_fu_1594_p4;
assign zext_ln180_5_fu_1632_p1 = lshr_ln122_2_fu_1622_p4;
assign zext_ln180_6_fu_1660_p1 = lshr_ln180_4_fu_1650_p4;
assign zext_ln180_7_fu_1688_p1 = lshr_ln180_5_fu_1678_p4;
assign zext_ln180_fu_1492_p1 = lshr_ln6_fu_1482_p4;
endmodule 
