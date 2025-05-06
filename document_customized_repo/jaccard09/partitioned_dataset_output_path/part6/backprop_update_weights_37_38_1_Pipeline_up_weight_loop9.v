
module backprop_update_weights_37_38_1_Pipeline_up_weight_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_7_address0,weights3_7_ce0,weights3_7_we0,weights3_7_d0,weights3_7_q0,weights3_7_address1,weights3_7_ce1,weights3_7_we1,weights3_7_d1,weights3_7_q1,weights3_6_address0,weights3_6_ce0,weights3_6_we0,weights3_6_d0,weights3_6_q0,weights3_6_address1,weights3_6_ce1,weights3_6_we1,weights3_6_d1,weights3_6_q1,weights3_5_address0,weights3_5_ce0,weights3_5_we0,weights3_5_d0,weights3_5_q0,weights3_5_address1,weights3_5_ce1,weights3_5_we1,weights3_5_d1,weights3_5_q1,weights3_4_address0,weights3_4_ce0,weights3_4_we0,weights3_4_d0,weights3_4_q0,weights3_4_address1,weights3_4_ce1,weights3_4_we1,weights3_4_d1,weights3_4_q1,weights3_3_address0,weights3_3_ce0,weights3_3_we0,weights3_3_d0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_we1,weights3_3_d1,weights3_3_q1,weights3_2_address0,weights3_2_ce0,weights3_2_we0,weights3_2_d0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_we1,weights3_2_d1,weights3_2_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,d_weights3_0_address0,d_weights3_0_ce0,d_weights3_0_q0,d_weights3_0_address1,d_weights3_0_ce1,d_weights3_0_q1,d_weights3_4_address0,d_weights3_4_ce0,d_weights3_4_q0,d_weights3_4_address1,d_weights3_4_ce1,d_weights3_4_q1,d_weights3_1_address0,d_weights3_1_ce0,d_weights3_1_q0,d_weights3_1_address1,d_weights3_1_ce1,d_weights3_1_q1,d_weights3_5_address0,d_weights3_5_ce0,d_weights3_5_q0,d_weights3_5_address1,d_weights3_5_ce1,d_weights3_5_q1,d_weights3_2_address0,d_weights3_2_ce0,d_weights3_2_q0,d_weights3_2_address1,d_weights3_2_ce1,d_weights3_2_q1,d_weights3_6_address0,d_weights3_6_ce0,d_weights3_6_q0,d_weights3_6_address1,d_weights3_6_ce1,d_weights3_6_q1,d_weights3_3_address0,d_weights3_3_ce0,d_weights3_3_q0,d_weights3_3_address1,d_weights3_3_ce1,d_weights3_3_q1,d_weights3_7_address0,d_weights3_7_ce0,d_weights3_7_q0,d_weights3_7_address1,d_weights3_7_ce1,d_weights3_7_q1,norm_15_out,norm_15_out_ap_vld,grp_fu_755_p_din0,grp_fu_755_p_din1,grp_fu_755_p_opcode,grp_fu_755_p_dout0,grp_fu_755_p_ce,grp_fu_759_p_din0,grp_fu_759_p_din1,grp_fu_759_p_opcode,grp_fu_759_p_dout0,grp_fu_759_p_ce,grp_fu_763_p_din0,grp_fu_763_p_din1,grp_fu_763_p_dout0,grp_fu_763_p_ce);  
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
output  [4:0] weights3_7_address0;
output   weights3_7_ce0;
output   weights3_7_we0;
output  [63:0] weights3_7_d0;
input  [63:0] weights3_7_q0;
output  [4:0] weights3_7_address1;
output   weights3_7_ce1;
output   weights3_7_we1;
output  [63:0] weights3_7_d1;
input  [63:0] weights3_7_q1;
output  [4:0] weights3_6_address0;
output   weights3_6_ce0;
output   weights3_6_we0;
output  [63:0] weights3_6_d0;
input  [63:0] weights3_6_q0;
output  [4:0] weights3_6_address1;
output   weights3_6_ce1;
output   weights3_6_we1;
output  [63:0] weights3_6_d1;
input  [63:0] weights3_6_q1;
output  [4:0] weights3_5_address0;
output   weights3_5_ce0;
output   weights3_5_we0;
output  [63:0] weights3_5_d0;
input  [63:0] weights3_5_q0;
output  [4:0] weights3_5_address1;
output   weights3_5_ce1;
output   weights3_5_we1;
output  [63:0] weights3_5_d1;
input  [63:0] weights3_5_q1;
output  [4:0] weights3_4_address0;
output   weights3_4_ce0;
output   weights3_4_we0;
output  [63:0] weights3_4_d0;
input  [63:0] weights3_4_q0;
output  [4:0] weights3_4_address1;
output   weights3_4_ce1;
output   weights3_4_we1;
output  [63:0] weights3_4_d1;
input  [63:0] weights3_4_q1;
output  [4:0] weights3_3_address0;
output   weights3_3_ce0;
output   weights3_3_we0;
output  [63:0] weights3_3_d0;
input  [63:0] weights3_3_q0;
output  [4:0] weights3_3_address1;
output   weights3_3_ce1;
output   weights3_3_we1;
output  [63:0] weights3_3_d1;
input  [63:0] weights3_3_q1;
output  [4:0] weights3_2_address0;
output   weights3_2_ce0;
output   weights3_2_we0;
output  [63:0] weights3_2_d0;
input  [63:0] weights3_2_q0;
output  [4:0] weights3_2_address1;
output   weights3_2_ce1;
output   weights3_2_we1;
output  [63:0] weights3_2_d1;
input  [63:0] weights3_2_q1;
output  [4:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [4:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [4:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [4:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
output  [4:0] d_weights3_0_address0;
output   d_weights3_0_ce0;
input  [63:0] d_weights3_0_q0;
output  [4:0] d_weights3_0_address1;
output   d_weights3_0_ce1;
input  [63:0] d_weights3_0_q1;
output  [4:0] d_weights3_4_address0;
output   d_weights3_4_ce0;
input  [63:0] d_weights3_4_q0;
output  [4:0] d_weights3_4_address1;
output   d_weights3_4_ce1;
input  [63:0] d_weights3_4_q1;
output  [4:0] d_weights3_1_address0;
output   d_weights3_1_ce0;
input  [63:0] d_weights3_1_q0;
output  [4:0] d_weights3_1_address1;
output   d_weights3_1_ce1;
input  [63:0] d_weights3_1_q1;
output  [4:0] d_weights3_5_address0;
output   d_weights3_5_ce0;
input  [63:0] d_weights3_5_q0;
output  [4:0] d_weights3_5_address1;
output   d_weights3_5_ce1;
input  [63:0] d_weights3_5_q1;
output  [4:0] d_weights3_2_address0;
output   d_weights3_2_ce0;
input  [63:0] d_weights3_2_q0;
output  [4:0] d_weights3_2_address1;
output   d_weights3_2_ce1;
input  [63:0] d_weights3_2_q1;
output  [4:0] d_weights3_6_address0;
output   d_weights3_6_ce0;
input  [63:0] d_weights3_6_q0;
output  [4:0] d_weights3_6_address1;
output   d_weights3_6_ce1;
input  [63:0] d_weights3_6_q1;
output  [4:0] d_weights3_3_address0;
output   d_weights3_3_ce0;
input  [63:0] d_weights3_3_q0;
output  [4:0] d_weights3_3_address1;
output   d_weights3_3_ce1;
input  [63:0] d_weights3_3_q1;
output  [4:0] d_weights3_7_address0;
output   d_weights3_7_ce0;
input  [63:0] d_weights3_7_q0;
output  [4:0] d_weights3_7_address1;
output   d_weights3_7_ce1;
input  [63:0] d_weights3_7_q1;
output  [63:0] norm_15_out;
output   norm_15_out_ap_vld;
output  [63:0] grp_fu_755_p_din0;
output  [63:0] grp_fu_755_p_din1;
output  [1:0] grp_fu_755_p_opcode;
input  [63:0] grp_fu_755_p_dout0;
output   grp_fu_755_p_ce;
output  [63:0] grp_fu_759_p_din0;
output  [63:0] grp_fu_759_p_din1;
output  [1:0] grp_fu_759_p_opcode;
input  [63:0] grp_fu_759_p_dout0;
output   grp_fu_759_p_ce;
output  [63:0] grp_fu_763_p_din0;
output  [63:0] grp_fu_763_p_din1;
input  [63:0] grp_fu_763_p_dout0;
output   grp_fu_763_p_ce;
reg ap_idle;
reg norm_15_out_ap_vld;
(* fsm_encoding = "none" *) reg   [95:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [0:0] tmp_reg_1368;
reg    ap_condition_exit_pp0_iter0_stage23;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage95;
wire    ap_block_pp0_stage95_subdone;
reg   [63:0] reg_662;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_667;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_672;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_677;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_682;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] reg_687;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_692;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [63:0] reg_697;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
reg   [63:0] reg_702;
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
reg   [63:0] reg_709;
reg   [63:0] reg_715;
reg   [63:0] reg_721;
reg   [63:0] reg_727;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_1362;
reg   [4:0] weights3_0_addr_reg_1382;
reg   [4:0] weights3_4_addr_reg_1388;
reg   [5:0] tmp_2_reg_1414;
reg   [4:0] weights3_1_addr_reg_1429;
reg   [4:0] weights3_5_addr_reg_1435;
reg   [4:0] weights3_2_addr_reg_1441;
reg   [4:0] weights3_6_addr_reg_1447;
reg   [4:0] weights3_3_addr_reg_1453;
reg   [4:0] weights3_7_addr_reg_1459;
wire   [0:0] icmp_ln180_1_fu_819_p2;
reg   [0:0] icmp_ln180_1_reg_1465;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] select_ln180_fu_825_p3;
reg   [63:0] select_ln180_reg_1485;
wire   [63:0] select_ln180_1_fu_833_p3;
reg   [63:0] select_ln180_1_reg_1490;
wire   [63:0] select_ln180_2_fu_1040_p3;
reg   [63:0] select_ln180_2_reg_1575;
wire   [63:0] select_ln180_3_fu_1048_p3;
reg   [63:0] select_ln180_3_reg_1580;
wire   [63:0] select_ln180_4_fu_1056_p3;
reg   [63:0] select_ln180_4_reg_1585;
wire   [63:0] select_ln180_13_fu_1064_p3;
reg   [63:0] select_ln180_13_reg_1590;
wire   [63:0] select_ln180_14_fu_1072_p3;
reg   [63:0] select_ln180_14_reg_1595;
wire   [63:0] select_ln180_15_fu_1080_p3;
reg   [63:0] select_ln180_15_reg_1600;
reg   [4:0] weights3_0_addr_1_reg_1605;
reg   [4:0] weights3_4_addr_1_reg_1611;
reg   [4:0] weights3_1_addr_1_reg_1617;
reg   [4:0] weights3_5_addr_1_reg_1623;
reg   [4:0] weights3_2_addr_1_reg_1629;
reg   [4:0] weights3_6_addr_1_reg_1635;
reg   [4:0] weights3_3_addr_1_reg_1641;
reg   [4:0] weights3_7_addr_1_reg_1647;
reg   [4:0] weights3_0_addr_2_reg_1653;
reg   [4:0] weights3_4_addr_2_reg_1659;
reg   [4:0] weights3_1_addr_2_reg_1665;
reg   [4:0] weights3_5_addr_2_reg_1671;
reg   [4:0] weights3_2_addr_2_reg_1677;
reg   [4:0] weights3_6_addr_2_reg_1683;
reg   [4:0] weights3_3_addr_2_reg_1689;
reg   [4:0] weights3_7_addr_2_reg_1695;
wire   [0:0] icmp_ln180_fu_1088_p2;
reg   [0:0] icmp_ln180_reg_1701;
wire   [63:0] select_ln180_5_fu_1094_p3;
reg   [63:0] select_ln180_5_reg_1705;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] select_ln180_6_fu_1101_p3;
reg   [63:0] select_ln180_6_reg_1710;
wire   [63:0] select_ln180_7_fu_1108_p3;
reg   [63:0] select_ln180_7_reg_1715;
wire   [63:0] select_ln180_8_fu_1115_p3;
reg   [63:0] select_ln180_8_reg_1720;
wire   [63:0] select_ln180_9_fu_1122_p3;
reg   [63:0] select_ln180_9_reg_1725;
wire   [63:0] select_ln180_10_fu_1129_p3;
reg   [63:0] select_ln180_10_reg_1730;
wire   [63:0] select_ln180_11_fu_1136_p3;
reg   [63:0] select_ln180_11_reg_1735;
wire   [63:0] select_ln180_12_fu_1143_p3;
reg   [63:0] select_ln180_12_reg_1740;
wire   [63:0] select_ln180_16_fu_1150_p3;
reg   [63:0] select_ln180_16_reg_1745;
wire   [63:0] select_ln180_17_fu_1157_p3;
reg   [63:0] select_ln180_17_reg_1750;
wire   [63:0] select_ln180_18_fu_1164_p3;
reg   [63:0] select_ln180_18_reg_1755;
wire   [63:0] select_ln180_19_fu_1171_p3;
reg   [63:0] select_ln180_19_reg_1760;
wire   [63:0] select_ln180_20_fu_1178_p3;
reg   [63:0] select_ln180_20_reg_1765;
wire   [63:0] select_ln180_21_fu_1185_p3;
reg   [63:0] select_ln180_21_reg_1770;
wire   [63:0] select_ln180_22_fu_1192_p3;
reg   [63:0] select_ln180_22_reg_1775;
wire   [63:0] select_ln180_23_fu_1199_p3;
reg   [63:0] select_ln180_23_reg_1780;
wire   [63:0] bitcast_ln180_fu_1206_p1;
wire   [63:0] bitcast_ln180_1_fu_1210_p1;
wire   [63:0] bitcast_ln180_2_fu_1214_p1;
wire   [63:0] bitcast_ln180_3_fu_1218_p1;
wire   [63:0] bitcast_ln180_4_fu_1222_p1;
wire   [63:0] bitcast_ln180_5_fu_1226_p1;
wire   [63:0] bitcast_ln180_6_fu_1230_p1;
wire   [63:0] bitcast_ln180_7_fu_1234_p1;
wire   [63:0] bitcast_ln180_8_fu_1238_p1;
wire   [63:0] bitcast_ln180_9_fu_1248_p1;
wire   [63:0] bitcast_ln180_10_fu_1258_p1;
wire   [63:0] bitcast_ln180_11_fu_1268_p1;
reg   [63:0] sub168_1_2_reg_1845;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] sub168_2_reg_1852;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] mul177_3_reg_1864;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
reg   [63:0] mul177_3_1_reg_1869;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
reg   [63:0] mul177_3_2_reg_1874;
wire    ap_CS_fsm_pp0_stage34;
wire    ap_block_pp0_stage34_11001;
reg   [63:0] norm_10_reg_1879;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln122_1_fu_786_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln180_fu_864_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln180_1_fu_888_p1;
wire   [63:0] zext_ln180_2_fu_912_p1;
wire   [63:0] zext_ln180_3_fu_936_p1;
wire   [63:0] zext_ln180_4_fu_960_p1;
wire   [63:0] zext_ln180_5_fu_984_p1;
wire   [63:0] zext_ln180_6_fu_1008_p1;
wire   [63:0] zext_ln180_7_fu_1032_p1;
reg   [63:0] norm_fu_106;
wire    ap_block_pp0_stage23;
wire    ap_loop_init;
wire    ap_block_pp0_stage24;
reg   [6:0] i_fu_110;
wire   [6:0] add_ln178_fu_1328_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage23_01001;
reg    d_weights3_0_ce0_local;
reg   [4:0] d_weights3_0_address0_local;
reg    d_weights3_0_ce1_local;
reg    d_weights3_4_ce0_local;
reg   [4:0] d_weights3_4_address0_local;
reg    d_weights3_4_ce1_local;
reg    weights3_0_ce0_local;
reg   [4:0] weights3_0_address0_local;
reg    weights3_0_ce1_local;
reg   [4:0] weights3_0_address1_local;
reg    weights3_0_we1_local;
reg   [63:0] weights3_0_d1_local;
wire   [63:0] bitcast_ln180_16_fu_1242_p1;
wire    ap_block_pp0_stage17;
reg    weights3_0_we0_local;
wire   [63:0] bitcast_ln180_12_fu_1278_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln180_17_fu_1304_p1;
wire    ap_block_pp0_stage25;
reg    weights3_4_ce0_local;
reg   [4:0] weights3_4_address0_local;
reg    weights3_4_ce1_local;
reg   [4:0] weights3_4_address1_local;
reg    weights3_4_we1_local;
reg   [63:0] weights3_4_d1_local;
reg    weights3_4_we0_local;
reg    d_weights3_1_ce0_local;
reg   [4:0] d_weights3_1_address0_local;
reg    d_weights3_1_ce1_local;
reg    d_weights3_5_ce0_local;
reg   [4:0] d_weights3_5_address0_local;
reg    d_weights3_5_ce1_local;
reg    d_weights3_2_ce0_local;
reg   [4:0] d_weights3_2_address0_local;
reg    d_weights3_2_ce1_local;
reg    d_weights3_6_ce0_local;
reg   [4:0] d_weights3_6_address0_local;
reg    d_weights3_6_ce1_local;
reg    d_weights3_3_ce0_local;
reg   [4:0] d_weights3_3_address0_local;
reg    d_weights3_3_ce1_local;
reg    d_weights3_7_ce0_local;
reg   [4:0] d_weights3_7_address0_local;
reg    d_weights3_7_ce1_local;
reg    weights3_1_ce0_local;
reg   [4:0] weights3_1_address0_local;
reg    weights3_1_ce1_local;
reg   [4:0] weights3_1_address1_local;
reg    weights3_1_we1_local;
reg   [63:0] weights3_1_d1_local;
wire   [63:0] bitcast_ln180_18_fu_1252_p1;
wire    ap_block_pp0_stage18;
reg    weights3_1_we0_local;
wire   [63:0] bitcast_ln180_13_fu_1284_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] bitcast_ln180_19_fu_1310_p1;
wire    ap_block_pp0_stage26;
reg    weights3_5_ce0_local;
reg   [4:0] weights3_5_address0_local;
reg    weights3_5_ce1_local;
reg   [4:0] weights3_5_address1_local;
reg    weights3_5_we1_local;
reg   [63:0] weights3_5_d1_local;
reg    weights3_5_we0_local;
reg    weights3_2_ce0_local;
reg   [4:0] weights3_2_address0_local;
reg    weights3_2_ce1_local;
reg   [4:0] weights3_2_address1_local;
reg    weights3_2_we1_local;
reg   [63:0] weights3_2_d1_local;
wire   [63:0] bitcast_ln180_20_fu_1262_p1;
wire    ap_block_pp0_stage19;
reg    weights3_2_we0_local;
wire   [63:0] bitcast_ln180_14_fu_1289_p1;
wire   [63:0] bitcast_ln180_21_fu_1316_p1;
wire    ap_block_pp0_stage27;
reg    weights3_6_ce0_local;
reg   [4:0] weights3_6_address0_local;
reg    weights3_6_ce1_local;
reg   [4:0] weights3_6_address1_local;
reg    weights3_6_we1_local;
reg   [63:0] weights3_6_d1_local;
reg    weights3_6_we0_local;
reg    weights3_3_ce0_local;
reg   [4:0] weights3_3_address0_local;
reg    weights3_3_ce1_local;
reg   [4:0] weights3_3_address1_local;
reg    weights3_3_we1_local;
reg   [63:0] weights3_3_d1_local;
wire   [63:0] bitcast_ln180_22_fu_1272_p1;
wire    ap_block_pp0_stage20;
reg    weights3_3_we0_local;
wire   [63:0] bitcast_ln180_15_fu_1298_p1;
wire   [63:0] bitcast_ln180_23_fu_1322_p1;
wire    ap_block_pp0_stage28;
reg    weights3_7_ce0_local;
reg   [4:0] weights3_7_address0_local;
reg    weights3_7_ce1_local;
reg   [4:0] weights3_7_address1_local;
reg    weights3_7_we1_local;
reg   [63:0] weights3_7_d1_local;
reg    weights3_7_we0_local;
reg   [63:0] grp_fu_649_p0;
reg   [63:0] grp_fu_649_p1;
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
reg   [63:0] grp_fu_657_p0;
reg   [63:0] grp_fu_657_p1;
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
wire   [5:0] trunc_ln122_fu_758_p1;
wire   [7:0] p_shl_fu_762_p3;
wire   [7:0] zext_ln122_fu_754_p1;
wire   [7:0] sub_ln122_fu_770_p2;
wire   [4:0] lshr_ln5_fu_776_p4;
wire   [2:0] trunc_ln178_fu_816_p1;
wire   [7:0] tmp_3_fu_841_p3;
wire   [7:0] add_ln180_fu_848_p2;
wire   [4:0] lshr_ln6_fu_854_p4;
wire   [7:0] add_ln180_1_fu_872_p2;
wire   [4:0] lshr_ln180_1_fu_878_p4;
wire   [7:0] empty_fu_896_p2;
wire   [4:0] lshr_ln122_1_fu_902_p4;
wire   [7:0] add_ln180_2_fu_920_p2;
wire   [4:0] lshr_ln180_2_fu_926_p4;
wire   [7:0] add_ln180_3_fu_944_p2;
wire   [4:0] lshr_ln180_3_fu_950_p4;
wire   [7:0] empty_38_fu_968_p2;
wire   [4:0] lshr_ln122_2_fu_974_p4;
wire   [7:0] add_ln180_4_fu_992_p2;
wire   [4:0] lshr_ln180_4_fu_998_p4;
wire   [7:0] add_ln180_5_fu_1016_p2;
wire   [4:0] lshr_ln180_5_fu_1022_p4;
wire    ap_block_pp0_stage95;
reg   [1:0] grp_fu_649_opcode;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 96'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_106 = 64'd0;
#0 i_fu_110 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_fu_110 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage95) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage95_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        i_fu_110 <= add_ln178_fu_1328_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        norm_fu_106 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        norm_fu_106 <= grp_fu_759_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_1_reg_1362 <= ap_sig_allocacmp_i_1;
        tmp_2_reg_1414 <= {{sub_ln122_fu_770_p2[7:2]}};
        tmp_reg_1368 <= ap_sig_allocacmp_i_1[32'd6];
        weights3_0_addr_reg_1382 <= zext_ln122_1_fu_786_p1;
        weights3_1_addr_reg_1429 <= zext_ln122_1_fu_786_p1;
        weights3_2_addr_reg_1441 <= zext_ln122_1_fu_786_p1;
        weights3_3_addr_reg_1453 <= zext_ln122_1_fu_786_p1;
        weights3_4_addr_reg_1388 <= zext_ln122_1_fu_786_p1;
        weights3_5_addr_reg_1435 <= zext_ln122_1_fu_786_p1;
        weights3_6_addr_reg_1447 <= zext_ln122_1_fu_786_p1;
        weights3_7_addr_reg_1459 <= zext_ln122_1_fu_786_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        icmp_ln180_1_reg_1465 <= icmp_ln180_1_fu_819_p2;
        icmp_ln180_reg_1701 <= icmp_ln180_fu_1088_p2;
        select_ln180_13_reg_1590 <= select_ln180_13_fu_1064_p3;
        select_ln180_14_reg_1595 <= select_ln180_14_fu_1072_p3;
        select_ln180_15_reg_1600 <= select_ln180_15_fu_1080_p3;
        select_ln180_1_reg_1490 <= select_ln180_1_fu_833_p3;
        select_ln180_2_reg_1575 <= select_ln180_2_fu_1040_p3;
        select_ln180_3_reg_1580 <= select_ln180_3_fu_1048_p3;
        select_ln180_4_reg_1585 <= select_ln180_4_fu_1056_p3;
        select_ln180_reg_1485 <= select_ln180_fu_825_p3;
        weights3_0_addr_1_reg_1605 <= zext_ln180_fu_864_p1;
        weights3_0_addr_2_reg_1653 <= zext_ln180_4_fu_960_p1;
        weights3_1_addr_1_reg_1617 <= zext_ln180_1_fu_888_p1;
        weights3_1_addr_2_reg_1665 <= zext_ln180_5_fu_984_p1;
        weights3_2_addr_1_reg_1629 <= zext_ln180_2_fu_912_p1;
        weights3_2_addr_2_reg_1677 <= zext_ln180_6_fu_1008_p1;
        weights3_3_addr_1_reg_1641 <= zext_ln180_3_fu_936_p1;
        weights3_3_addr_2_reg_1689 <= zext_ln180_7_fu_1032_p1;
        weights3_4_addr_1_reg_1611 <= zext_ln180_fu_864_p1;
        weights3_4_addr_2_reg_1659 <= zext_ln180_4_fu_960_p1;
        weights3_5_addr_1_reg_1623 <= zext_ln180_1_fu_888_p1;
        weights3_5_addr_2_reg_1671 <= zext_ln180_5_fu_984_p1;
        weights3_6_addr_1_reg_1635 <= zext_ln180_2_fu_912_p1;
        weights3_6_addr_2_reg_1683 <= zext_ln180_6_fu_1008_p1;
        weights3_7_addr_1_reg_1647 <= zext_ln180_3_fu_936_p1;
        weights3_7_addr_2_reg_1695 <= zext_ln180_7_fu_1032_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage33) & (1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul177_3_1_reg_1869 <= grp_fu_763_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage34) & (1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul177_3_2_reg_1874 <= grp_fu_763_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul177_3_reg_1864 <= grp_fu_763_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        norm_10_reg_1879 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_662 <= grp_fu_763_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_667 <= grp_fu_763_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_672 <= grp_fu_763_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_677 <= grp_fu_763_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_682 <= grp_fu_763_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_687 <= grp_fu_763_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage29) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_692 <= grp_fu_763_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage30) & (1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_697 <= grp_fu_763_p_dout0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage87) & (1'b0 == ap_block_pp0_stage87_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage79) & (1'b0 == ap_block_pp0_stage79_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage71) & (1'b0 == ap_block_pp0_stage71_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage63) & (1'b0 == ap_block_pp0_stage63_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage55) & (1'b0 == ap_block_pp0_stage55_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage47) & (1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage39) & (1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16)& (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage95) & (1'b0 == ap_block_pp0_stage95_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_702 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_709 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_715 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_721 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_727 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        select_ln180_10_reg_1730 <= select_ln180_10_fu_1129_p3;
        select_ln180_11_reg_1735 <= select_ln180_11_fu_1136_p3;
        select_ln180_12_reg_1740 <= select_ln180_12_fu_1143_p3;
        select_ln180_16_reg_1745 <= select_ln180_16_fu_1150_p3;
        select_ln180_17_reg_1750 <= select_ln180_17_fu_1157_p3;
        select_ln180_18_reg_1755 <= select_ln180_18_fu_1164_p3;
        select_ln180_19_reg_1760 <= select_ln180_19_fu_1171_p3;
        select_ln180_20_reg_1765 <= select_ln180_20_fu_1178_p3;
        select_ln180_21_reg_1770 <= select_ln180_21_fu_1185_p3;
        select_ln180_22_reg_1775 <= select_ln180_22_fu_1192_p3;
        select_ln180_23_reg_1780 <= select_ln180_23_fu_1199_p3;
        select_ln180_5_reg_1705 <= select_ln180_5_fu_1094_p3;
        select_ln180_6_reg_1710 <= select_ln180_6_fu_1101_p3;
        select_ln180_7_reg_1715 <= select_ln180_7_fu_1108_p3;
        select_ln180_8_reg_1720 <= select_ln180_8_fu_1115_p3;
        select_ln180_9_reg_1725 <= select_ln180_9_fu_1122_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        sub168_1_2_reg_1845 <= grp_fu_755_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        sub168_2_reg_1852 <= grp_fu_755_p_dout0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (tmp_reg_1368 == 1'd1) & (1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_110;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            d_weights3_0_address0_local = zext_ln180_4_fu_960_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_0_address0_local = zext_ln122_1_fu_786_p1;
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
            d_weights3_1_address0_local = zext_ln180_5_fu_984_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_1_address0_local = zext_ln122_1_fu_786_p1;
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
            d_weights3_2_address0_local = zext_ln180_6_fu_1008_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_2_address0_local = zext_ln122_1_fu_786_p1;
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
            d_weights3_3_address0_local = zext_ln180_7_fu_1032_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_3_address0_local = zext_ln122_1_fu_786_p1;
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
            d_weights3_4_address0_local = zext_ln180_4_fu_960_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_4_address0_local = zext_ln122_1_fu_786_p1;
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
            d_weights3_5_address0_local = zext_ln180_5_fu_984_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_5_address0_local = zext_ln122_1_fu_786_p1;
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
            d_weights3_6_address0_local = zext_ln180_6_fu_1008_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_6_address0_local = zext_ln122_1_fu_786_p1;
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
            d_weights3_7_address0_local = zext_ln180_7_fu_1032_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            d_weights3_7_address0_local = zext_ln122_1_fu_786_p1;
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
if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage20_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage13_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage19_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage18_00001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage17_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage16_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_649_opcode = 2'd1;
end else if ((((1'b1 == ap_CS_fsm_pp0_stage32) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage32_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage88) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage88_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage80) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage80_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage72) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage72_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage64) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage64_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage56) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage56_00001) &(ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage48) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage48_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage40) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage40_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        grp_fu_649_opcode = 2'd0;
    end else begin
        grp_fu_649_opcode = 'bx;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage88) & (1'b0 == ap_block_pp0_stage88) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage80) & (1'b0 == ap_block_pp0_stage80) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage72) & (1'b0 == ap_block_pp0_stage72) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage64) & (1'b0 == ap_block_pp0_stage64) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage56) & (1'b0 == ap_block_pp0_stage56) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage48) & (1'b0 == ap_block_pp0_stage48) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage40) & (1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1== 1'b1)))) begin
        grp_fu_649_p0 = reg_702;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = norm_fu_106;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = bitcast_ln180_11_fu_1268_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = bitcast_ln180_10_fu_1258_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = bitcast_ln180_9_fu_1248_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = bitcast_ln180_8_fu_1238_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = bitcast_ln180_7_fu_1234_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = bitcast_ln180_6_fu_1230_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = bitcast_ln180_5_fu_1226_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = bitcast_ln180_4_fu_1222_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = bitcast_ln180_3_fu_1218_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = bitcast_ln180_2_fu_1214_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = bitcast_ln180_1_fu_1210_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_649_p0 = bitcast_ln180_fu_1206_p1;
    end else begin
        grp_fu_649_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        grp_fu_649_p1 = mul177_3_1_reg_1869;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        grp_fu_649_p1 = mul177_3_reg_1864;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage80) & (1'b0 == ap_block_pp0_stage80) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_649_p1 = reg_697;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage72) & (1'b0 == ap_block_pp0_stage72) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_649_p1 = reg_692;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage64) & (1'b0 == ap_block_pp0_stage64) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_649_p1 = reg_687;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage88) & (1'b0 == ap_block_pp0_stage88) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_649_p1 = reg_682;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage56) & (1'b0 == ap_block_pp0_stage56) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_649_p1 = reg_677;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage48) & (1'b0 == ap_block_pp0_stage48) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_649_p1 = reg_672;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage40) & (1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_649_p1 = reg_667;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_649_p1 = reg_662;
    end else begin
        grp_fu_649_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = sub168_2_reg_1852;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = sub168_1_2_reg_1845;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_657_p0 = reg_727;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_657_p0 = reg_721;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_657_p0 = reg_715;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_657_p0 = reg_709;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_657_p0 = reg_702;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = select_ln180_12_reg_1740;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = select_ln180_11_reg_1735;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = select_ln180_10_reg_1730;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = select_ln180_9_reg_1725;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = select_ln180_8_reg_1720;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = select_ln180_7_reg_1715;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = select_ln180_6_reg_1710;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = select_ln180_5_reg_1705;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = select_ln180_4_reg_1585;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = select_ln180_3_reg_1580;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = select_ln180_2_reg_1575;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p0 = select_ln180_reg_1485;
    end else begin
        grp_fu_657_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p1 = sub168_2_reg_1852;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_657_p1 = sub168_1_2_reg_1845;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_657_p1 = reg_727;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_657_p1 = reg_721;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_657_p1 = reg_715;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_657_p1 = reg_709;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_657_p1 = reg_702;
end else if ((((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0== 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_657_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_657_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage23) & (ap_loop_exit_ready == 1'b1) & (tmp_reg_1368 == 1'd1) & (1'b0 == ap_block_pp0_stage23_11001))) begin
        norm_15_out_ap_vld = 1'b1;
    end else begin
        norm_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21))) begin
            weights3_0_address0_local = weights3_0_addr_1_reg_1605;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_0_address0_local = zext_ln180_4_fu_960_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_0_address0_local = zext_ln122_1_fu_786_p1;
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
            weights3_0_address1_local = weights3_0_addr_2_reg_1653;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_0_address1_local = weights3_0_addr_reg_1382;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_0_address1_local = zext_ln180_fu_864_p1;
        end else begin
            weights3_0_address1_local = 'bx;
        end
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
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
            weights3_0_d1_local = bitcast_ln180_17_fu_1304_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_0_d1_local = bitcast_ln180_16_fu_1242_p1;
        end else begin
            weights3_0_d1_local = 'bx;
        end
    end else begin
        weights3_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln180_reg_1701 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage21) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln180_reg_1701 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage25) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln180_reg_1701 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22))) begin
            weights3_1_address0_local = weights3_1_addr_1_reg_1617;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_1_address0_local = zext_ln180_5_fu_984_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_1_address0_local = zext_ln122_1_fu_786_p1;
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
            weights3_1_address1_local = weights3_1_addr_2_reg_1665;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_1_address1_local = weights3_1_addr_reg_1429;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_1_address1_local = zext_ln180_1_fu_888_p1;
        end else begin
            weights3_1_address1_local = 'bx;
        end
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
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
            weights3_1_d1_local = bitcast_ln180_19_fu_1310_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_1_d1_local = bitcast_ln180_18_fu_1252_p1;
        end else begin
            weights3_1_d1_local = 'bx;
        end
    end else begin
        weights3_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln180_reg_1701 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage22) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln180_reg_1701 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage26) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln180_reg_1701 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23))) begin
            weights3_2_address0_local = weights3_2_addr_1_reg_1629;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_2_address0_local = zext_ln180_6_fu_1008_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_2_address0_local = zext_ln122_1_fu_786_p1;
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
            weights3_2_address1_local = weights3_2_addr_2_reg_1677;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_2_address1_local = weights3_2_addr_reg_1441;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_2_address1_local = zext_ln180_2_fu_912_p1;
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
            weights3_2_d1_local = bitcast_ln180_21_fu_1316_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_2_d1_local = bitcast_ln180_20_fu_1262_p1;
        end else begin
            weights3_2_d1_local = 'bx;
        end
    end else begin
        weights3_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln180_reg_1701 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage23) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_2_we0_local = 1'b1;
    end else begin
        weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln180_reg_1701 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage27) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln180_reg_1701 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage19) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_2_we1_local = 1'b1;
    end else begin
        weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24))) begin
            weights3_3_address0_local = weights3_3_addr_1_reg_1641;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_3_address0_local = zext_ln180_7_fu_1032_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_3_address0_local = zext_ln122_1_fu_786_p1;
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
            weights3_3_address1_local = weights3_3_addr_2_reg_1689;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_3_address1_local = weights3_3_addr_reg_1453;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_3_address1_local = zext_ln180_3_fu_936_p1;
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
            weights3_3_d1_local = bitcast_ln180_23_fu_1322_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_3_d1_local = bitcast_ln180_22_fu_1272_p1;
        end else begin
            weights3_3_d1_local = 'bx;
        end
    end else begin
        weights3_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln180_reg_1701 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage24) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_3_we0_local = 1'b1;
    end else begin
        weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln180_reg_1701 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage20) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln180_reg_1701 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage28) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_3_we1_local = 1'b1;
    end else begin
        weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21))) begin
            weights3_4_address0_local = weights3_4_addr_1_reg_1611;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_4_address0_local = zext_ln180_4_fu_960_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_4_address0_local = zext_ln122_1_fu_786_p1;
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
            weights3_4_address1_local = weights3_4_addr_2_reg_1659;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_4_address1_local = weights3_4_addr_reg_1388;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_4_address1_local = zext_ln180_fu_864_p1;
        end else begin
            weights3_4_address1_local = 'bx;
        end
    end else begin
        weights3_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
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
            weights3_4_d1_local = bitcast_ln180_17_fu_1304_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_4_d1_local = bitcast_ln180_16_fu_1242_p1;
        end else begin
            weights3_4_d1_local = 'bx;
        end
    end else begin
        weights3_4_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln180_reg_1701 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_4_we0_local = 1'b1;
    end else begin
        weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln180_reg_1701 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage25) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln180_reg_1701 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_4_we1_local = 1'b1;
    end else begin
        weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22))) begin
            weights3_5_address0_local = weights3_5_addr_1_reg_1623;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_5_address0_local = zext_ln180_5_fu_984_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_5_address0_local = zext_ln122_1_fu_786_p1;
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
            weights3_5_address1_local = weights3_5_addr_2_reg_1671;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_5_address1_local = weights3_5_addr_reg_1435;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_5_address1_local = zext_ln180_1_fu_888_p1;
        end else begin
            weights3_5_address1_local = 'bx;
        end
    end else begin
        weights3_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
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
            weights3_5_d1_local = bitcast_ln180_19_fu_1310_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_5_d1_local = bitcast_ln180_18_fu_1252_p1;
        end else begin
            weights3_5_d1_local = 'bx;
        end
    end else begin
        weights3_5_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln180_reg_1701 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage22) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_5_we0_local = 1'b1;
    end else begin
        weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln180_reg_1701 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage26) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln180_reg_1701 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage18) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_5_we1_local = 1'b1;
    end else begin
        weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23))) begin
            weights3_6_address0_local = weights3_6_addr_1_reg_1635;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_6_address0_local = zext_ln180_6_fu_1008_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_6_address0_local = zext_ln122_1_fu_786_p1;
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
            weights3_6_address1_local = weights3_6_addr_2_reg_1683;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_6_address1_local = weights3_6_addr_reg_1447;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_6_address1_local = zext_ln180_2_fu_912_p1;
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
            weights3_6_d1_local = bitcast_ln180_21_fu_1316_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_6_d1_local = bitcast_ln180_20_fu_1262_p1;
        end else begin
            weights3_6_d1_local = 'bx;
        end
    end else begin
        weights3_6_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln180_reg_1701 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage23) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_6_we0_local = 1'b1;
    end else begin
        weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln180_reg_1701 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage27) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln180_reg_1701 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage19) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_6_we1_local = 1'b1;
    end else begin
        weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24))) begin
            weights3_7_address0_local = weights3_7_addr_1_reg_1647;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_7_address0_local = zext_ln180_7_fu_1032_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_7_address0_local = zext_ln122_1_fu_786_p1;
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
            weights3_7_address1_local = weights3_7_addr_2_reg_1695;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_7_address1_local = weights3_7_addr_reg_1459;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_7_address1_local = zext_ln180_3_fu_936_p1;
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
            weights3_7_d1_local = bitcast_ln180_23_fu_1322_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_7_d1_local = bitcast_ln180_22_fu_1272_p1;
        end else begin
            weights3_7_d1_local = 'bx;
        end
    end else begin
        weights3_7_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln180_reg_1701 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage24) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_7_we0_local = 1'b1;
    end else begin
        weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln180_reg_1701 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage20) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((icmp_ln180_reg_1701 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage28) & (tmp_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_7_we1_local = 1'b1;
    end else begin
        weights3_7_we1_local = 1'b0;
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
assign add_ln178_fu_1328_p2 = (i_1_reg_1362 + 7'd4);
assign add_ln180_1_fu_872_p2 = (tmp_3_fu_841_p3 + 8'd2);
assign add_ln180_2_fu_920_p2 = (tmp_3_fu_841_p3 + 8'd4);
assign add_ln180_3_fu_944_p2 = (tmp_3_fu_841_p3 + 8'd5);
assign add_ln180_4_fu_992_p2 = (tmp_3_fu_841_p3 + 8'd7);
assign add_ln180_5_fu_1016_p2 = (tmp_3_fu_841_p3 + 8'd8);
assign add_ln180_fu_848_p2 = (tmp_3_fu_841_p3 + 8'd1);
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
assign bitcast_ln180_10_fu_1258_p1 = select_ln180_22_reg_1775;
assign bitcast_ln180_11_fu_1268_p1 = select_ln180_23_reg_1780;
assign bitcast_ln180_12_fu_1278_p1 = reg_727;
assign bitcast_ln180_13_fu_1284_p1 = sub168_1_2_reg_1845;
assign bitcast_ln180_14_fu_1289_p1 = sub168_2_reg_1852;
assign bitcast_ln180_15_fu_1298_p1 = reg_702;
assign bitcast_ln180_16_fu_1242_p1 = reg_702;
assign bitcast_ln180_17_fu_1304_p1 = reg_709;
assign bitcast_ln180_18_fu_1252_p1 = reg_709;
assign bitcast_ln180_19_fu_1310_p1 = reg_715;
assign bitcast_ln180_1_fu_1210_p1 = select_ln180_13_reg_1590;
assign bitcast_ln180_20_fu_1262_p1 = reg_715;
assign bitcast_ln180_21_fu_1316_p1 = reg_721;
assign bitcast_ln180_22_fu_1272_p1 = reg_721;
assign bitcast_ln180_23_fu_1322_p1 = reg_727;
assign bitcast_ln180_2_fu_1214_p1 = select_ln180_14_reg_1595;
assign bitcast_ln180_3_fu_1218_p1 = select_ln180_15_reg_1600;
assign bitcast_ln180_4_fu_1222_p1 = select_ln180_16_reg_1745;
assign bitcast_ln180_5_fu_1226_p1 = select_ln180_17_reg_1750;
assign bitcast_ln180_6_fu_1230_p1 = select_ln180_18_reg_1755;
assign bitcast_ln180_7_fu_1234_p1 = select_ln180_19_reg_1760;
assign bitcast_ln180_8_fu_1238_p1 = select_ln180_20_reg_1765;
assign bitcast_ln180_9_fu_1248_p1 = select_ln180_21_reg_1770;
assign bitcast_ln180_fu_1206_p1 = select_ln180_1_reg_1490;
assign d_weights3_0_address0 = d_weights3_0_address0_local;
assign d_weights3_0_address1 = zext_ln180_fu_864_p1;
assign d_weights3_0_ce0 = d_weights3_0_ce0_local;
assign d_weights3_0_ce1 = d_weights3_0_ce1_local;
assign d_weights3_1_address0 = d_weights3_1_address0_local;
assign d_weights3_1_address1 = zext_ln180_1_fu_888_p1;
assign d_weights3_1_ce0 = d_weights3_1_ce0_local;
assign d_weights3_1_ce1 = d_weights3_1_ce1_local;
assign d_weights3_2_address0 = d_weights3_2_address0_local;
assign d_weights3_2_address1 = zext_ln180_2_fu_912_p1;
assign d_weights3_2_ce0 = d_weights3_2_ce0_local;
assign d_weights3_2_ce1 = d_weights3_2_ce1_local;
assign d_weights3_3_address0 = d_weights3_3_address0_local;
assign d_weights3_3_address1 = zext_ln180_3_fu_936_p1;
assign d_weights3_3_ce0 = d_weights3_3_ce0_local;
assign d_weights3_3_ce1 = d_weights3_3_ce1_local;
assign d_weights3_4_address0 = d_weights3_4_address0_local;
assign d_weights3_4_address1 = zext_ln180_fu_864_p1;
assign d_weights3_4_ce0 = d_weights3_4_ce0_local;
assign d_weights3_4_ce1 = d_weights3_4_ce1_local;
assign d_weights3_5_address0 = d_weights3_5_address0_local;
assign d_weights3_5_address1 = zext_ln180_1_fu_888_p1;
assign d_weights3_5_ce0 = d_weights3_5_ce0_local;
assign d_weights3_5_ce1 = d_weights3_5_ce1_local;
assign d_weights3_6_address0 = d_weights3_6_address0_local;
assign d_weights3_6_address1 = zext_ln180_2_fu_912_p1;
assign d_weights3_6_ce0 = d_weights3_6_ce0_local;
assign d_weights3_6_ce1 = d_weights3_6_ce1_local;
assign d_weights3_7_address0 = d_weights3_7_address0_local;
assign d_weights3_7_address1 = zext_ln180_3_fu_936_p1;
assign d_weights3_7_ce0 = d_weights3_7_ce0_local;
assign d_weights3_7_ce1 = d_weights3_7_ce1_local;
assign empty_38_fu_968_p2 = (tmp_3_fu_841_p3 + 8'd6);
assign empty_fu_896_p2 = (tmp_3_fu_841_p3 + 8'd3);
assign grp_fu_755_p_ce = 1'b1;
assign grp_fu_755_p_din0 = grp_fu_649_p0;
assign grp_fu_755_p_din1 = grp_fu_649_p1;
assign grp_fu_755_p_opcode = grp_fu_649_opcode;
assign grp_fu_759_p_ce = 1'b1;
assign grp_fu_759_p_din0 = norm_10_reg_1879;
assign grp_fu_759_p_din1 = mul177_3_2_reg_1874;
assign grp_fu_759_p_opcode = 2'd0;
assign grp_fu_763_p_ce = 1'b1;
assign grp_fu_763_p_din0 = grp_fu_657_p0;
assign grp_fu_763_p_din1 = grp_fu_657_p1;
assign icmp_ln180_1_fu_819_p2 = ((trunc_ln178_fu_816_p1 != 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln180_fu_1088_p2 = ((trunc_ln178_fu_816_p1 == 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln122_1_fu_902_p4 = {{empty_fu_896_p2[7:3]}};
assign lshr_ln122_2_fu_974_p4 = {{empty_38_fu_968_p2[7:3]}};
assign lshr_ln180_1_fu_878_p4 = {{add_ln180_1_fu_872_p2[7:3]}};
assign lshr_ln180_2_fu_926_p4 = {{add_ln180_2_fu_920_p2[7:3]}};
assign lshr_ln180_3_fu_950_p4 = {{add_ln180_3_fu_944_p2[7:3]}};
assign lshr_ln180_4_fu_998_p4 = {{add_ln180_4_fu_992_p2[7:3]}};
assign lshr_ln180_5_fu_1022_p4 = {{add_ln180_5_fu_1016_p2[7:3]}};
assign lshr_ln5_fu_776_p4 = {{sub_ln122_fu_770_p2[7:3]}};
assign lshr_ln6_fu_854_p4 = {{add_ln180_fu_848_p2[7:3]}};
assign norm_15_out = norm_fu_106;
assign p_shl_fu_762_p3 = {{trunc_ln122_fu_758_p1}, {2'd0}};
assign select_ln180_10_fu_1129_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? d_weights3_5_q0 : d_weights3_1_q0);
assign select_ln180_11_fu_1136_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? d_weights3_6_q0 : d_weights3_2_q0);
assign select_ln180_12_fu_1143_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? d_weights3_7_q0 : d_weights3_3_q0);
assign select_ln180_13_fu_1064_p3 = ((icmp_ln180_1_fu_819_p2[0:0] == 1'b1) ? weights3_5_q0 : weights3_1_q0);
assign select_ln180_14_fu_1072_p3 = ((icmp_ln180_1_fu_819_p2[0:0] == 1'b1) ? weights3_6_q0 : weights3_2_q0);
assign select_ln180_15_fu_1080_p3 = ((icmp_ln180_1_fu_819_p2[0:0] == 1'b1) ? weights3_7_q0 : weights3_3_q0);
assign select_ln180_16_fu_1150_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? weights3_0_q1 : weights3_4_q1);
assign select_ln180_17_fu_1157_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? weights3_1_q1 : weights3_5_q1);
assign select_ln180_18_fu_1164_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? weights3_2_q1 : weights3_6_q1);
assign select_ln180_19_fu_1171_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? weights3_3_q1 : weights3_7_q1);
assign select_ln180_1_fu_833_p3 = ((icmp_ln180_1_fu_819_p2[0:0] == 1'b1) ? weights3_4_q0 : weights3_0_q0);
assign select_ln180_20_fu_1178_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? weights3_4_q0 : weights3_0_q0);
assign select_ln180_21_fu_1185_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? weights3_5_q0 : weights3_1_q0);
assign select_ln180_22_fu_1192_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? weights3_6_q0 : weights3_2_q0);
assign select_ln180_23_fu_1199_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? weights3_7_q0 : weights3_3_q0);
assign select_ln180_2_fu_1040_p3 = ((icmp_ln180_1_fu_819_p2[0:0] == 1'b1) ? d_weights3_5_q0 : d_weights3_1_q0);
assign select_ln180_3_fu_1048_p3 = ((icmp_ln180_1_fu_819_p2[0:0] == 1'b1) ? d_weights3_6_q0 : d_weights3_2_q0);
assign select_ln180_4_fu_1056_p3 = ((icmp_ln180_1_fu_819_p2[0:0] == 1'b1) ? d_weights3_7_q0 : d_weights3_3_q0);
assign select_ln180_5_fu_1094_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? d_weights3_0_q1 : d_weights3_4_q1);
assign select_ln180_6_fu_1101_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? d_weights3_1_q1 : d_weights3_5_q1);
assign select_ln180_7_fu_1108_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? d_weights3_2_q1 : d_weights3_6_q1);
assign select_ln180_8_fu_1115_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? d_weights3_3_q1 : d_weights3_7_q1);
assign select_ln180_9_fu_1122_p3 = ((icmp_ln180_1_reg_1465[0:0] == 1'b1) ? d_weights3_4_q0 : d_weights3_0_q0);
assign select_ln180_fu_825_p3 = ((icmp_ln180_1_fu_819_p2[0:0] == 1'b1) ? d_weights3_4_q0 : d_weights3_0_q0);
assign sub_ln122_fu_770_p2 = (p_shl_fu_762_p3 - zext_ln122_fu_754_p1);
assign tmp_3_fu_841_p3 = {{tmp_2_reg_1414}, {2'd3}};
assign trunc_ln122_fu_758_p1 = ap_sig_allocacmp_i_1[5:0];
assign trunc_ln178_fu_816_p1 = i_1_reg_1362[2:0];
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_0_d0 = bitcast_ln180_12_fu_1278_p1;
assign weights3_0_d1 = weights3_0_d1_local;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_0_we1 = weights3_0_we1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_1_d0 = bitcast_ln180_13_fu_1284_p1;
assign weights3_1_d1 = weights3_1_d1_local;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_1_we1 = weights3_1_we1_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = weights3_2_address1_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_2_d0 = bitcast_ln180_14_fu_1289_p1;
assign weights3_2_d1 = weights3_2_d1_local;
assign weights3_2_we0 = weights3_2_we0_local;
assign weights3_2_we1 = weights3_2_we1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = weights3_3_address1_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
assign weights3_3_d0 = bitcast_ln180_15_fu_1298_p1;
assign weights3_3_d1 = weights3_3_d1_local;
assign weights3_3_we0 = weights3_3_we0_local;
assign weights3_3_we1 = weights3_3_we1_local;
assign weights3_4_address0 = weights3_4_address0_local;
assign weights3_4_address1 = weights3_4_address1_local;
assign weights3_4_ce0 = weights3_4_ce0_local;
assign weights3_4_ce1 = weights3_4_ce1_local;
assign weights3_4_d0 = bitcast_ln180_12_fu_1278_p1;
assign weights3_4_d1 = weights3_4_d1_local;
assign weights3_4_we0 = weights3_4_we0_local;
assign weights3_4_we1 = weights3_4_we1_local;
assign weights3_5_address0 = weights3_5_address0_local;
assign weights3_5_address1 = weights3_5_address1_local;
assign weights3_5_ce0 = weights3_5_ce0_local;
assign weights3_5_ce1 = weights3_5_ce1_local;
assign weights3_5_d0 = bitcast_ln180_13_fu_1284_p1;
assign weights3_5_d1 = weights3_5_d1_local;
assign weights3_5_we0 = weights3_5_we0_local;
assign weights3_5_we1 = weights3_5_we1_local;
assign weights3_6_address0 = weights3_6_address0_local;
assign weights3_6_address1 = weights3_6_address1_local;
assign weights3_6_ce0 = weights3_6_ce0_local;
assign weights3_6_ce1 = weights3_6_ce1_local;
assign weights3_6_d0 = bitcast_ln180_14_fu_1289_p1;
assign weights3_6_d1 = weights3_6_d1_local;
assign weights3_6_we0 = weights3_6_we0_local;
assign weights3_6_we1 = weights3_6_we1_local;
assign weights3_7_address0 = weights3_7_address0_local;
assign weights3_7_address1 = weights3_7_address1_local;
assign weights3_7_ce0 = weights3_7_ce0_local;
assign weights3_7_ce1 = weights3_7_ce1_local;
assign weights3_7_d0 = bitcast_ln180_15_fu_1298_p1;
assign weights3_7_d1 = weights3_7_d1_local;
assign weights3_7_we0 = weights3_7_we0_local;
assign weights3_7_we1 = weights3_7_we1_local;
assign zext_ln122_1_fu_786_p1 = lshr_ln5_fu_776_p4;
assign zext_ln122_fu_754_p1 = ap_sig_allocacmp_i_1;
assign zext_ln180_1_fu_888_p1 = lshr_ln180_1_fu_878_p4;
assign zext_ln180_2_fu_912_p1 = lshr_ln122_1_fu_902_p4;
assign zext_ln180_3_fu_936_p1 = lshr_ln180_2_fu_926_p4;
assign zext_ln180_4_fu_960_p1 = lshr_ln180_3_fu_950_p4;
assign zext_ln180_5_fu_984_p1 = lshr_ln122_2_fu_974_p4;
assign zext_ln180_6_fu_1008_p1 = lshr_ln180_4_fu_998_p4;
assign zext_ln180_7_fu_1032_p1 = lshr_ln180_5_fu_1022_p4;
assign zext_ln180_fu_864_p1 = lshr_ln6_fu_854_p4;
endmodule 
