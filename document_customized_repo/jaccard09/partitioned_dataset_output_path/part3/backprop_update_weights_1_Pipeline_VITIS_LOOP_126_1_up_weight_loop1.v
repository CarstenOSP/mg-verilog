
module backprop_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,d_weights1_0_address0,d_weights1_0_ce0,d_weights1_0_q0,d_weights1_0_address1,d_weights1_0_ce1,d_weights1_0_q1,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_we1,weights1_d1,weights1_q1,d_weights1_1_address0,d_weights1_1_ce0,d_weights1_1_q0,d_weights1_1_address1,d_weights1_1_ce1,d_weights1_1_q1,d_weights1_2_address0,d_weights1_2_ce0,d_weights1_2_q0,d_weights1_2_address1,d_weights1_2_ce1,d_weights1_2_q1,d_weights1_3_address0,d_weights1_3_ce0,d_weights1_3_q0,d_weights1_3_address1,d_weights1_3_ce1,d_weights1_3_q1,d_weights1_4_address0,d_weights1_4_ce0,d_weights1_4_q0,d_weights1_4_address1,d_weights1_4_ce1,d_weights1_4_q1,d_weights1_5_address0,d_weights1_5_ce0,d_weights1_5_q0,d_weights1_5_address1,d_weights1_5_ce1,d_weights1_5_q1,d_weights1_6_address0,d_weights1_6_ce0,d_weights1_6_q0,d_weights1_6_address1,d_weights1_6_ce1,d_weights1_6_q1,d_weights1_7_address0,d_weights1_7_ce0,d_weights1_7_q0,d_weights1_7_address1,d_weights1_7_ce1,d_weights1_7_q1,norm_2_out,norm_2_out_ap_vld,grp_fu_573_p_din0,grp_fu_573_p_din1,grp_fu_573_p_opcode,grp_fu_573_p_dout0,grp_fu_573_p_ce,grp_fu_577_p_din0,grp_fu_577_p_din1,grp_fu_577_p_opcode,grp_fu_577_p_dout0,grp_fu_577_p_ce,grp_fu_581_p_din0,grp_fu_581_p_din1,grp_fu_581_p_dout0,grp_fu_581_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 128'd1;
parameter    ap_ST_fsm_pp0_stage1 = 128'd2;
parameter    ap_ST_fsm_pp0_stage2 = 128'd4;
parameter    ap_ST_fsm_pp0_stage3 = 128'd8;
parameter    ap_ST_fsm_pp0_stage4 = 128'd16;
parameter    ap_ST_fsm_pp0_stage5 = 128'd32;
parameter    ap_ST_fsm_pp0_stage6 = 128'd64;
parameter    ap_ST_fsm_pp0_stage7 = 128'd128;
parameter    ap_ST_fsm_pp0_stage8 = 128'd256;
parameter    ap_ST_fsm_pp0_stage9 = 128'd512;
parameter    ap_ST_fsm_pp0_stage10 = 128'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 128'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 128'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 128'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 128'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 128'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 128'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 128'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 128'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 128'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 128'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 128'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 128'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 128'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 128'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 128'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 128'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 128'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 128'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 128'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 128'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 128'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 128'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 128'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 128'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 128'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 128'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 128'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 128'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 128'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 128'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 128'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 128'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 128'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 128'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 128'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 128'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 128'd140737488355328;
parameter    ap_ST_fsm_pp0_stage48 = 128'd281474976710656;
parameter    ap_ST_fsm_pp0_stage49 = 128'd562949953421312;
parameter    ap_ST_fsm_pp0_stage50 = 128'd1125899906842624;
parameter    ap_ST_fsm_pp0_stage51 = 128'd2251799813685248;
parameter    ap_ST_fsm_pp0_stage52 = 128'd4503599627370496;
parameter    ap_ST_fsm_pp0_stage53 = 128'd9007199254740992;
parameter    ap_ST_fsm_pp0_stage54 = 128'd18014398509481984;
parameter    ap_ST_fsm_pp0_stage55 = 128'd36028797018963968;
parameter    ap_ST_fsm_pp0_stage56 = 128'd72057594037927936;
parameter    ap_ST_fsm_pp0_stage57 = 128'd144115188075855872;
parameter    ap_ST_fsm_pp0_stage58 = 128'd288230376151711744;
parameter    ap_ST_fsm_pp0_stage59 = 128'd576460752303423488;
parameter    ap_ST_fsm_pp0_stage60 = 128'd1152921504606846976;
parameter    ap_ST_fsm_pp0_stage61 = 128'd2305843009213693952;
parameter    ap_ST_fsm_pp0_stage62 = 128'd4611686018427387904;
parameter    ap_ST_fsm_pp0_stage63 = 128'd9223372036854775808;
parameter    ap_ST_fsm_pp0_stage64 = 128'd18446744073709551616;
parameter    ap_ST_fsm_pp0_stage65 = 128'd36893488147419103232;
parameter    ap_ST_fsm_pp0_stage66 = 128'd73786976294838206464;
parameter    ap_ST_fsm_pp0_stage67 = 128'd147573952589676412928;
parameter    ap_ST_fsm_pp0_stage68 = 128'd295147905179352825856;
parameter    ap_ST_fsm_pp0_stage69 = 128'd590295810358705651712;
parameter    ap_ST_fsm_pp0_stage70 = 128'd1180591620717411303424;
parameter    ap_ST_fsm_pp0_stage71 = 128'd2361183241434822606848;
parameter    ap_ST_fsm_pp0_stage72 = 128'd4722366482869645213696;
parameter    ap_ST_fsm_pp0_stage73 = 128'd9444732965739290427392;
parameter    ap_ST_fsm_pp0_stage74 = 128'd18889465931478580854784;
parameter    ap_ST_fsm_pp0_stage75 = 128'd37778931862957161709568;
parameter    ap_ST_fsm_pp0_stage76 = 128'd75557863725914323419136;
parameter    ap_ST_fsm_pp0_stage77 = 128'd151115727451828646838272;
parameter    ap_ST_fsm_pp0_stage78 = 128'd302231454903657293676544;
parameter    ap_ST_fsm_pp0_stage79 = 128'd604462909807314587353088;
parameter    ap_ST_fsm_pp0_stage80 = 128'd1208925819614629174706176;
parameter    ap_ST_fsm_pp0_stage81 = 128'd2417851639229258349412352;
parameter    ap_ST_fsm_pp0_stage82 = 128'd4835703278458516698824704;
parameter    ap_ST_fsm_pp0_stage83 = 128'd9671406556917033397649408;
parameter    ap_ST_fsm_pp0_stage84 = 128'd19342813113834066795298816;
parameter    ap_ST_fsm_pp0_stage85 = 128'd38685626227668133590597632;
parameter    ap_ST_fsm_pp0_stage86 = 128'd77371252455336267181195264;
parameter    ap_ST_fsm_pp0_stage87 = 128'd154742504910672534362390528;
parameter    ap_ST_fsm_pp0_stage88 = 128'd309485009821345068724781056;
parameter    ap_ST_fsm_pp0_stage89 = 128'd618970019642690137449562112;
parameter    ap_ST_fsm_pp0_stage90 = 128'd1237940039285380274899124224;
parameter    ap_ST_fsm_pp0_stage91 = 128'd2475880078570760549798248448;
parameter    ap_ST_fsm_pp0_stage92 = 128'd4951760157141521099596496896;
parameter    ap_ST_fsm_pp0_stage93 = 128'd9903520314283042199192993792;
parameter    ap_ST_fsm_pp0_stage94 = 128'd19807040628566084398385987584;
parameter    ap_ST_fsm_pp0_stage95 = 128'd39614081257132168796771975168;
parameter    ap_ST_fsm_pp0_stage96 = 128'd79228162514264337593543950336;
parameter    ap_ST_fsm_pp0_stage97 = 128'd158456325028528675187087900672;
parameter    ap_ST_fsm_pp0_stage98 = 128'd316912650057057350374175801344;
parameter    ap_ST_fsm_pp0_stage99 = 128'd633825300114114700748351602688;
parameter    ap_ST_fsm_pp0_stage100 = 128'd1267650600228229401496703205376;
parameter    ap_ST_fsm_pp0_stage101 = 128'd2535301200456458802993406410752;
parameter    ap_ST_fsm_pp0_stage102 = 128'd5070602400912917605986812821504;
parameter    ap_ST_fsm_pp0_stage103 = 128'd10141204801825835211973625643008;
parameter    ap_ST_fsm_pp0_stage104 = 128'd20282409603651670423947251286016;
parameter    ap_ST_fsm_pp0_stage105 = 128'd40564819207303340847894502572032;
parameter    ap_ST_fsm_pp0_stage106 = 128'd81129638414606681695789005144064;
parameter    ap_ST_fsm_pp0_stage107 = 128'd162259276829213363391578010288128;
parameter    ap_ST_fsm_pp0_stage108 = 128'd324518553658426726783156020576256;
parameter    ap_ST_fsm_pp0_stage109 = 128'd649037107316853453566312041152512;
parameter    ap_ST_fsm_pp0_stage110 = 128'd1298074214633706907132624082305024;
parameter    ap_ST_fsm_pp0_stage111 = 128'd2596148429267413814265248164610048;
parameter    ap_ST_fsm_pp0_stage112 = 128'd5192296858534827628530496329220096;
parameter    ap_ST_fsm_pp0_stage113 = 128'd10384593717069655257060992658440192;
parameter    ap_ST_fsm_pp0_stage114 = 128'd20769187434139310514121985316880384;
parameter    ap_ST_fsm_pp0_stage115 = 128'd41538374868278621028243970633760768;
parameter    ap_ST_fsm_pp0_stage116 = 128'd83076749736557242056487941267521536;
parameter    ap_ST_fsm_pp0_stage117 = 128'd166153499473114484112975882535043072;
parameter    ap_ST_fsm_pp0_stage118 = 128'd332306998946228968225951765070086144;
parameter    ap_ST_fsm_pp0_stage119 = 128'd664613997892457936451903530140172288;
parameter    ap_ST_fsm_pp0_stage120 = 128'd1329227995784915872903807060280344576;
parameter    ap_ST_fsm_pp0_stage121 = 128'd2658455991569831745807614120560689152;
parameter    ap_ST_fsm_pp0_stage122 = 128'd5316911983139663491615228241121378304;
parameter    ap_ST_fsm_pp0_stage123 = 128'd10633823966279326983230456482242756608;
parameter    ap_ST_fsm_pp0_stage124 = 128'd21267647932558653966460912964485513216;
parameter    ap_ST_fsm_pp0_stage125 = 128'd42535295865117307932921825928971026432;
parameter    ap_ST_fsm_pp0_stage126 = 128'd85070591730234615865843651857942052864;
parameter    ap_ST_fsm_pp0_stage127 = 128'd170141183460469231731687303715884105728;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] d_weights1_0_address0;
output   d_weights1_0_ce0;
input  [63:0] d_weights1_0_q0;
output  [6:0] d_weights1_0_address1;
output   d_weights1_0_ce1;
input  [63:0] d_weights1_0_q1;
output  [9:0] weights1_address0;
output   weights1_ce0;
output   weights1_we0;
output  [63:0] weights1_d0;
input  [63:0] weights1_q0;
output  [9:0] weights1_address1;
output   weights1_ce1;
output   weights1_we1;
output  [63:0] weights1_d1;
input  [63:0] weights1_q1;
output  [6:0] d_weights1_1_address0;
output   d_weights1_1_ce0;
input  [63:0] d_weights1_1_q0;
output  [6:0] d_weights1_1_address1;
output   d_weights1_1_ce1;
input  [63:0] d_weights1_1_q1;
output  [6:0] d_weights1_2_address0;
output   d_weights1_2_ce0;
input  [63:0] d_weights1_2_q0;
output  [6:0] d_weights1_2_address1;
output   d_weights1_2_ce1;
input  [63:0] d_weights1_2_q1;
output  [6:0] d_weights1_3_address0;
output   d_weights1_3_ce0;
input  [63:0] d_weights1_3_q0;
output  [6:0] d_weights1_3_address1;
output   d_weights1_3_ce1;
input  [63:0] d_weights1_3_q1;
output  [6:0] d_weights1_4_address0;
output   d_weights1_4_ce0;
input  [63:0] d_weights1_4_q0;
output  [6:0] d_weights1_4_address1;
output   d_weights1_4_ce1;
input  [63:0] d_weights1_4_q1;
output  [6:0] d_weights1_5_address0;
output   d_weights1_5_ce0;
input  [63:0] d_weights1_5_q0;
output  [6:0] d_weights1_5_address1;
output   d_weights1_5_ce1;
input  [63:0] d_weights1_5_q1;
output  [6:0] d_weights1_6_address0;
output   d_weights1_6_ce0;
input  [63:0] d_weights1_6_q0;
output  [6:0] d_weights1_6_address1;
output   d_weights1_6_ce1;
input  [63:0] d_weights1_6_q1;
output  [6:0] d_weights1_7_address0;
output   d_weights1_7_ce0;
input  [63:0] d_weights1_7_q0;
output  [6:0] d_weights1_7_address1;
output   d_weights1_7_ce1;
input  [63:0] d_weights1_7_q1;
output  [63:0] norm_2_out;
output   norm_2_out_ap_vld;
output  [63:0] grp_fu_573_p_din0;
output  [63:0] grp_fu_573_p_din1;
output  [1:0] grp_fu_573_p_opcode;
input  [63:0] grp_fu_573_p_dout0;
output   grp_fu_573_p_ce;
output  [63:0] grp_fu_577_p_din0;
output  [63:0] grp_fu_577_p_din1;
output  [1:0] grp_fu_577_p_opcode;
input  [63:0] grp_fu_577_p_dout0;
output   grp_fu_577_p_ce;
output  [63:0] grp_fu_581_p_din0;
output  [63:0] grp_fu_581_p_din1;
input  [63:0] grp_fu_581_p_dout0;
output   grp_fu_581_p_ce;
reg ap_idle;
reg norm_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [127:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_subdone;
reg   [0:0] icmp_ln126_reg_1250;
reg    ap_condition_exit_pp0_iter0_stage24;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage127;
wire    ap_block_pp0_stage127_subdone;
reg   [63:0] reg_503;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_508;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_513;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_518;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_523;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
reg   [63:0] reg_528;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
reg   [63:0] reg_533;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] reg_538;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage24_11001;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
reg   [63:0] reg_543;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40_11001;
wire    ap_CS_fsm_pp0_stage48;
wire    ap_block_pp0_stage48_11001;
wire    ap_CS_fsm_pp0_stage56;
wire    ap_block_pp0_stage56_11001;
wire    ap_CS_fsm_pp0_stage64;
wire    ap_block_pp0_stage64_11001;
wire    ap_CS_fsm_pp0_stage72;
wire    ap_block_pp0_stage72_11001;
wire    ap_CS_fsm_pp0_stage80;
wire    ap_block_pp0_stage80_11001;
wire    ap_CS_fsm_pp0_stage88;
wire    ap_block_pp0_stage88_11001;
wire    ap_CS_fsm_pp0_stage96;
wire    ap_block_pp0_stage96_11001;
wire    ap_CS_fsm_pp0_stage104;
wire    ap_block_pp0_stage104_11001;
wire    ap_CS_fsm_pp0_stage112;
wire    ap_block_pp0_stage112_11001;
wire    ap_CS_fsm_pp0_stage120;
wire    ap_block_pp0_stage120_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] reg_550;
wire    ap_CS_fsm_pp0_stage46;
wire    ap_block_pp0_stage46_11001;
reg   [63:0] reg_557;
reg   [63:0] reg_563;
reg   [63:0] reg_569;
reg   [63:0] reg_575;
reg   [63:0] reg_581;
reg   [63:0] reg_587;
wire    ap_CS_fsm_pp0_stage38;
wire    ap_block_pp0_stage38_11001;
wire    ap_CS_fsm_pp0_stage53;
wire    ap_block_pp0_stage53_11001;
wire   [0:0] icmp_ln126_fu_616_p2;
reg   [3:0] i_load_reg_1254;
wire   [3:0] add_ln126_1_fu_631_p2;
reg   [3:0] add_ln126_1_reg_1259;
wire   [6:0] select_ln121_fu_653_p3;
reg   [6:0] select_ln121_reg_1264;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [3:0] select_ln126_fu_661_p3;
reg   [3:0] select_ln126_reg_1269;
reg   [9:0] weights1_addr_reg_1292;
reg   [9:0] weights1_addr_1_reg_1303;
reg   [3:0] tmp_4_reg_1309;
wire   [0:0] trunc_ln128_fu_765_p1;
reg   [0:0] trunc_ln128_reg_1315;
reg   [2:0] tmp_7_reg_1333;
wire   [1:0] trunc_ln128_1_fu_779_p1;
reg   [1:0] trunc_ln128_1_reg_1341;
reg   [0:0] tmp_21_reg_1352;
wire   [1:0] tmp_14_fu_791_p4;
reg   [1:0] tmp_14_reg_1373;
wire   [2:0] trunc_ln128_2_fu_801_p1;
reg   [2:0] trunc_ln128_2_reg_1385;
reg   [1:0] tmp_19_reg_1395;
reg   [0:0] tmp_22_reg_1405;
reg   [63:0] d_weights1_0_load_reg_1441;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] weights1_load_reg_1446;
reg   [63:0] d_weights1_1_load_reg_1451;
reg   [63:0] weights1_load_1_reg_1456;
reg   [63:0] d_weights1_2_load_reg_1461;
reg   [9:0] weights1_addr_2_reg_1466;
reg   [63:0] d_weights1_3_load_reg_1472;
reg   [9:0] weights1_addr_3_reg_1477;
reg   [63:0] d_weights1_4_load_reg_1483;
reg   [63:0] d_weights1_5_load_reg_1488;
reg   [63:0] d_weights1_6_load_reg_1493;
reg   [63:0] d_weights1_7_load_reg_1498;
reg   [63:0] d_weights1_0_load_1_reg_1503;
reg   [63:0] d_weights1_1_load_1_reg_1508;
reg   [63:0] d_weights1_2_load_1_reg_1513;
reg   [63:0] d_weights1_3_load_1_reg_1518;
reg   [63:0] d_weights1_4_load_1_reg_1523;
reg   [63:0] d_weights1_5_load_1_reg_1528;
reg   [63:0] d_weights1_6_load_1_reg_1533;
reg   [63:0] d_weights1_7_load_1_reg_1538;
reg   [63:0] weights1_load_2_reg_1543;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] weights1_load_3_reg_1548;
reg   [9:0] weights1_addr_4_reg_1553;
reg   [9:0] weights1_addr_5_reg_1559;
reg   [63:0] weights1_load_4_reg_1565;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] weights1_load_5_reg_1570;
reg   [9:0] weights1_addr_6_reg_1575;
reg   [9:0] weights1_addr_7_reg_1581;
reg   [63:0] weights1_load_6_reg_1587;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] weights1_load_7_reg_1592;
reg   [9:0] weights1_addr_8_reg_1597;
reg   [9:0] weights1_addr_9_reg_1603;
reg   [63:0] weights1_load_8_reg_1609;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] weights1_load_9_reg_1614;
reg   [9:0] weights1_addr_10_reg_1619;
reg   [9:0] weights1_addr_11_reg_1625;
reg   [63:0] weights1_load_10_reg_1631;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] weights1_load_11_reg_1636;
reg   [9:0] weights1_addr_12_reg_1641;
reg   [9:0] weights1_addr_13_reg_1647;
reg   [63:0] weights1_load_12_reg_1653;
reg   [63:0] weights1_load_13_reg_1658;
reg   [9:0] weights1_addr_14_reg_1663;
reg   [9:0] weights1_addr_15_reg_1669;
reg   [63:0] weights1_load_14_reg_1675;
reg   [63:0] weights1_load_15_reg_1680;
wire   [63:0] bitcast_ln128_fu_1054_p1;
wire   [63:0] bitcast_ln128_2_fu_1058_p1;
wire   [63:0] bitcast_ln128_4_fu_1062_p1;
wire   [63:0] bitcast_ln128_6_fu_1066_p1;
wire   [63:0] bitcast_ln128_8_fu_1070_p1;
wire   [63:0] bitcast_ln128_10_fu_1074_p1;
wire   [63:0] bitcast_ln128_12_fu_1078_p1;
wire   [63:0] bitcast_ln128_14_fu_1082_p1;
wire   [63:0] bitcast_ln128_16_fu_1091_p1;
wire   [63:0] bitcast_ln128_18_fu_1100_p1;
wire   [63:0] bitcast_ln128_20_fu_1109_p1;
wire   [63:0] bitcast_ln128_22_fu_1118_p1;
wire   [63:0] bitcast_ln128_24_fu_1127_p1;
wire   [63:0] bitcast_ln128_26_fu_1136_p1;
wire   [63:0] bitcast_ln128_28_fu_1145_p1;
reg   [63:0] mul17_9_reg_1765;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
reg   [63:0] mul17_s_reg_1770;
wire    ap_CS_fsm_pp0_stage34;
wire    ap_block_pp0_stage34_11001;
reg   [63:0] mul17_10_reg_1775;
wire    ap_CS_fsm_pp0_stage35;
wire    ap_block_pp0_stage35_11001;
reg   [63:0] mul17_11_reg_1780;
wire    ap_CS_fsm_pp0_stage36;
wire    ap_block_pp0_stage36_11001;
reg   [63:0] mul17_12_reg_1785;
wire    ap_CS_fsm_pp0_stage37;
wire    ap_block_pp0_stage37_11001;
reg   [63:0] mul17_13_reg_1790;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39_11001;
wire   [63:0] bitcast_ln128_30_fu_1193_p1;
reg   [63:0] norm_71_reg_1800;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln128_1_fu_718_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln128_fu_693_p1;
wire   [63:0] zext_ln128_2_fu_750_p1;
wire   [63:0] zext_ln128_10_fu_815_p1;
wire   [63:0] zext_ln128_3_fu_859_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln128_4_fu_872_p1;
wire   [63:0] zext_ln128_5_fu_886_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln128_6_fu_902_p1;
wire   [63:0] zext_ln128_7_fu_916_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln128_8_fu_929_p1;
wire   [63:0] zext_ln128_9_fu_943_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln128_11_fu_959_p1;
wire   [63:0] zext_ln128_12_fu_976_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln128_13_fu_992_p1;
wire   [63:0] zext_ln128_14_fu_1006_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln128_15_fu_1022_p1;
wire   [63:0] zext_ln128_16_fu_1036_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln128_17_fu_1049_p1;
reg   [63:0] norm_2_fu_130;
wire    ap_block_pp0_stage24;
wire    ap_loop_init;
wire    ap_block_pp0_stage25;
reg   [6:0] j_fu_134;
wire   [6:0] add_ln127_fu_1202_p2;
reg   [3:0] i_fu_138;
reg   [3:0] ap_sig_allocacmp_i_load;
wire    ap_block_pp0_stage0;
reg   [5:0] indvar_flatten_fu_142;
wire   [5:0] add_ln126_fu_622_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten_load;
wire    ap_block_pp0_stage24_01001;
reg    d_weights1_0_ce1_local;
reg    d_weights1_0_ce0_local;
reg    weights1_ce1_local;
reg   [9:0] weights1_address1_local;
reg    weights1_ce0_local;
reg   [9:0] weights1_address0_local;
reg    weights1_we0_local;
reg   [63:0] weights1_d0_local;
wire   [63:0] bitcast_ln128_1_fu_1086_p1;
wire    ap_block_pp0_stage18;
reg    weights1_we1_local;
reg   [63:0] weights1_d1_local;
wire   [63:0] bitcast_ln128_3_fu_1095_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln128_5_fu_1104_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] bitcast_ln128_7_fu_1113_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln128_9_fu_1122_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] bitcast_ln128_11_fu_1131_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] bitcast_ln128_13_fu_1140_p1;
wire   [63:0] bitcast_ln128_15_fu_1153_p1;
wire   [63:0] bitcast_ln128_17_fu_1158_p1;
wire    ap_block_pp0_stage26;
wire   [63:0] bitcast_ln128_19_fu_1163_p1;
wire    ap_block_pp0_stage27;
wire   [63:0] bitcast_ln128_21_fu_1168_p1;
wire    ap_block_pp0_stage28;
wire   [63:0] bitcast_ln128_23_fu_1173_p1;
wire    ap_block_pp0_stage29;
wire   [63:0] bitcast_ln128_25_fu_1178_p1;
wire    ap_block_pp0_stage30;
wire   [63:0] bitcast_ln128_27_fu_1183_p1;
wire    ap_block_pp0_stage31;
wire   [63:0] bitcast_ln128_29_fu_1188_p1;
wire    ap_block_pp0_stage32;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47_11001;
wire   [63:0] bitcast_ln128_31_fu_1197_p1;
wire    ap_block_pp0_stage47;
reg    d_weights1_1_ce1_local;
reg    d_weights1_1_ce0_local;
reg    d_weights1_2_ce1_local;
reg    d_weights1_2_ce0_local;
reg    d_weights1_3_ce1_local;
reg    d_weights1_3_ce0_local;
reg    d_weights1_4_ce1_local;
reg    d_weights1_4_ce0_local;
reg    d_weights1_5_ce1_local;
reg    d_weights1_5_ce0_local;
reg    d_weights1_6_ce1_local;
reg    d_weights1_6_ce0_local;
reg    d_weights1_7_ce1_local;
reg    d_weights1_7_ce0_local;
reg   [63:0] grp_fu_490_p0;
reg   [63:0] grp_fu_490_p1;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage17;
wire    ap_block_pp0_stage33;
wire    ap_block_pp0_stage39;
wire    ap_CS_fsm_pp0_stage41;
wire    ap_block_pp0_stage41;
wire    ap_CS_fsm_pp0_stage49;
wire    ap_block_pp0_stage49;
wire    ap_CS_fsm_pp0_stage57;
wire    ap_block_pp0_stage57;
wire    ap_CS_fsm_pp0_stage65;
wire    ap_block_pp0_stage65;
wire    ap_CS_fsm_pp0_stage73;
wire    ap_block_pp0_stage73;
wire    ap_CS_fsm_pp0_stage81;
wire    ap_block_pp0_stage81;
wire    ap_CS_fsm_pp0_stage89;
wire    ap_block_pp0_stage89;
wire    ap_CS_fsm_pp0_stage97;
wire    ap_block_pp0_stage97;
wire    ap_CS_fsm_pp0_stage105;
wire    ap_block_pp0_stage105;
wire    ap_CS_fsm_pp0_stage113;
wire    ap_block_pp0_stage113;
wire    ap_CS_fsm_pp0_stage121;
wire    ap_block_pp0_stage121;
wire    ap_block_pp0_stage9;
reg   [63:0] grp_fu_498_p0;
reg   [63:0] grp_fu_498_p1;
wire   [0:0] tmp_fu_645_p3;
wire   [9:0] zext_ln127_fu_683_p1;
wire   [9:0] tmp_1_fu_667_p3;
wire   [9:0] add_ln128_fu_687_p2;
wire   [3:0] lshr_ln_fu_698_p4;
wire   [6:0] zext_ln128_18_fu_708_p1;
wire   [6:0] p_udiv2_fu_675_p3;
wire   [6:0] add_ln128_1_fu_712_p2;
wire   [4:0] tmp_3_fu_730_p4;
wire   [9:0] add_ln128_2_fu_740_p4;
wire   [6:0] add_ln128_s_fu_805_p4;
wire   [9:0] add_ln128_3_fu_850_p5;
wire   [9:0] add_ln128_4_fu_864_p4;
wire   [9:0] add_ln128_5_fu_877_p5;
wire   [9:0] add_ln128_6_fu_891_p6;
wire   [9:0] add_ln128_7_fu_907_p5;
wire   [9:0] add_ln128_8_fu_921_p4;
wire   [9:0] add_ln128_9_fu_934_p5;
wire   [9:0] add_ln128_10_fu_948_p6;
wire   [9:0] add_ln128_11_fu_964_p7;
wire   [9:0] add_ln128_12_fu_981_p6;
wire   [9:0] add_ln128_13_fu_997_p5;
wire   [9:0] add_ln128_14_fu_1011_p6;
wire   [9:0] add_ln128_15_fu_1027_p5;
wire   [9:0] add_ln128_16_fu_1041_p4;
reg   [1:0] grp_fu_490_opcode;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage33_00001;
wire    ap_block_pp0_stage41_00001;
wire    ap_block_pp0_stage49_00001;
wire    ap_block_pp0_stage57_00001;
wire    ap_block_pp0_stage65_00001;
wire    ap_block_pp0_stage73_00001;
wire    ap_block_pp0_stage81_00001;
wire    ap_block_pp0_stage89_00001;
wire    ap_block_pp0_stage97_00001;
wire    ap_block_pp0_stage105_00001;
wire    ap_block_pp0_stage113_00001;
wire    ap_block_pp0_stage121_00001;
wire    ap_block_pp0_stage1_00001;
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
wire    ap_block_pp0_stage21_00001;
wire    ap_block_pp0_stage22_00001;
wire    ap_block_pp0_stage23_00001;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage39_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [127:0] ap_NS_fsm;
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
wire    ap_block_pp0_stage23_subdone;
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
wire    ap_block_pp0_stage95_subdone;
wire    ap_block_pp0_stage96_subdone;
wire    ap_block_pp0_stage97_subdone;
wire    ap_block_pp0_stage98_subdone;
wire    ap_block_pp0_stage99_subdone;
wire    ap_block_pp0_stage100_subdone;
wire    ap_block_pp0_stage101_subdone;
wire    ap_block_pp0_stage102_subdone;
wire    ap_block_pp0_stage103_subdone;
wire    ap_block_pp0_stage104_subdone;
wire    ap_block_pp0_stage105_subdone;
wire    ap_block_pp0_stage106_subdone;
wire    ap_block_pp0_stage107_subdone;
wire    ap_block_pp0_stage108_subdone;
wire    ap_block_pp0_stage109_subdone;
wire    ap_block_pp0_stage110_subdone;
wire    ap_block_pp0_stage111_subdone;
wire    ap_block_pp0_stage112_subdone;
wire    ap_block_pp0_stage113_subdone;
wire    ap_block_pp0_stage114_subdone;
wire    ap_block_pp0_stage115_subdone;
wire    ap_block_pp0_stage116_subdone;
wire    ap_block_pp0_stage117_subdone;
wire    ap_block_pp0_stage118_subdone;
wire    ap_block_pp0_stage119_subdone;
wire    ap_block_pp0_stage120_subdone;
wire    ap_block_pp0_stage121_subdone;
wire    ap_block_pp0_stage122_subdone;
wire    ap_block_pp0_stage123_subdone;
wire    ap_block_pp0_stage124_subdone;
wire    ap_block_pp0_stage125_subdone;
wire    ap_block_pp0_stage126_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 128'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_2_fu_130 = 64'd0;
#0 j_fu_134 = 7'd0;
#0 i_fu_138 = 4'd0;
#0 indvar_flatten_fu_142 = 6'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage24),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage24) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage24_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage24)) begin
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
        if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage127) & (1'b0 == ap_block_pp0_stage127_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1))) begin
        i_fu_138 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        i_fu_138 <= select_ln126_fu_661_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((icmp_ln126_fu_616_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_142 <= add_ln126_fu_622_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_142 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_134 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_134 <= add_ln127_fu_1202_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1))) begin
        norm_2_fu_130 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        norm_2_fu_130 <= grp_fu_577_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln126_1_reg_1259 <= add_ln126_1_fu_631_p2;
        i_load_reg_1254 <= ap_sig_allocacmp_i_load;
        icmp_ln126_reg_1250 <= icmp_ln126_fu_616_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_0_load_1_reg_1503 <= d_weights1_0_q0;
        d_weights1_0_load_reg_1441 <= d_weights1_0_q1;
        d_weights1_1_load_1_reg_1508 <= d_weights1_1_q0;
        d_weights1_1_load_reg_1451 <= d_weights1_1_q1;
        d_weights1_2_load_1_reg_1513 <= d_weights1_2_q0;
        d_weights1_2_load_reg_1461 <= d_weights1_2_q1;
        d_weights1_3_load_1_reg_1518 <= d_weights1_3_q0;
        d_weights1_3_load_reg_1472 <= d_weights1_3_q1;
        d_weights1_4_load_1_reg_1523 <= d_weights1_4_q0;
        d_weights1_4_load_reg_1483 <= d_weights1_4_q1;
        d_weights1_5_load_1_reg_1528 <= d_weights1_5_q0;
        d_weights1_5_load_reg_1488 <= d_weights1_5_q1;
        d_weights1_6_load_1_reg_1533 <= d_weights1_6_q0;
        d_weights1_6_load_reg_1493 <= d_weights1_6_q1;
        d_weights1_7_load_1_reg_1538 <= d_weights1_7_q0;
        d_weights1_7_load_reg_1498 <= d_weights1_7_q1;
        weights1_load_1_reg_1456 <= weights1_q0;
        weights1_load_reg_1446 <= weights1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage35) & (1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul17_10_reg_1775 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage36) & (1'b0 == ap_block_pp0_stage36_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul17_11_reg_1780 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage37) & (1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul17_12_reg_1785 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage39) & (1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul17_13_reg_1790 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage33) & (1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul17_9_reg_1765 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage34) & (1'b0 == ap_block_pp0_stage34_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul17_s_reg_1770 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        norm_71_reg_1800 <= grp_fu_573_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_503 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_508 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_513 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_518 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage29) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_523 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage30) & (1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_528 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_533 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_538 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage120) & (1'b0 == ap_block_pp0_stage120_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage112) & (1'b0 == ap_block_pp0_stage112_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage104) & (1'b0 == ap_block_pp0_stage104_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage96) & (1'b0 == ap_block_pp0_stage96_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage88) & (1'b0 == ap_block_pp0_stage88_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage80) & (1'b0 == ap_block_pp0_stage80_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage72) & (1'b0 == ap_block_pp0_stage72_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage64) & (1'b0 == ap_block_pp0_stage64_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage56)& (1'b0 == ap_block_pp0_stage56_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage48) & (1'b0 == ap_block_pp0_stage48_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage40) & (1'b0 == ap_block_pp0_stage40_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        reg_543 <= grp_fu_573_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage46) & (1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_550 <= grp_fu_573_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_557 <= grp_fu_573_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_563 <= grp_fu_573_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_569 <= grp_fu_573_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage29) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_575 <= grp_fu_573_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage30) & (1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_581 <= grp_fu_573_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage53) & (1'b0 == ap_block_pp0_stage53_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage38) & (1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_587 <= grp_fu_581_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        select_ln121_reg_1264 <= select_ln121_fu_653_p3;
        select_ln126_reg_1269 <= select_ln126_fu_661_p3;
        tmp_14_reg_1373 <= {{select_ln121_fu_653_p3[5:4]}};
        tmp_19_reg_1395 <= {{select_ln121_fu_653_p3[2:1]}};
        tmp_21_reg_1352 <= select_ln121_fu_653_p3[32'd1];
        tmp_22_reg_1405 <= select_ln121_fu_653_p3[32'd2];
        tmp_4_reg_1309 <= {{select_ln121_fu_653_p3[5:2]}};
        tmp_7_reg_1333 <= {{select_ln121_fu_653_p3[5:3]}};
        trunc_ln128_1_reg_1341 <= trunc_ln128_1_fu_779_p1;
        trunc_ln128_2_reg_1385 <= trunc_ln128_2_fu_801_p1;
        trunc_ln128_reg_1315 <= trunc_ln128_fu_765_p1;
        weights1_addr_1_reg_1303[9 : 1] <= zext_ln128_2_fu_750_p1[9 : 1];
        weights1_addr_reg_1292 <= zext_ln128_fu_693_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        weights1_addr_10_reg_1619[0] <= zext_ln128_12_fu_976_p1[0];
weights1_addr_10_reg_1619[2] <= zext_ln128_12_fu_976_p1[2];
weights1_addr_10_reg_1619[9 : 4] <= zext_ln128_12_fu_976_p1[9 : 4];
        weights1_addr_11_reg_1625[2] <= zext_ln128_13_fu_992_p1[2];
weights1_addr_11_reg_1625[9 : 4] <= zext_ln128_13_fu_992_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001))) begin
        weights1_addr_12_reg_1641[1 : 0] <= zext_ln128_14_fu_1006_p1[1 : 0];
weights1_addr_12_reg_1641[9 : 4] <= zext_ln128_14_fu_1006_p1[9 : 4];
        weights1_addr_13_reg_1647[1] <= zext_ln128_15_fu_1022_p1[1];
weights1_addr_13_reg_1647[9 : 4] <= zext_ln128_15_fu_1022_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001))) begin
        weights1_addr_14_reg_1663[0] <= zext_ln128_16_fu_1036_p1[0];
weights1_addr_14_reg_1663[9 : 4] <= zext_ln128_16_fu_1036_p1[9 : 4];
        weights1_addr_15_reg_1669[9 : 4] <= zext_ln128_17_fu_1049_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        weights1_addr_2_reg_1466[0] <= zext_ln128_3_fu_859_p1[0];
weights1_addr_2_reg_1466[9 : 2] <= zext_ln128_3_fu_859_p1[9 : 2];
        weights1_addr_3_reg_1477[9 : 2] <= zext_ln128_4_fu_872_p1[9 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        weights1_addr_4_reg_1553[1 : 0] <= zext_ln128_5_fu_886_p1[1 : 0];
weights1_addr_4_reg_1553[9 : 3] <= zext_ln128_5_fu_886_p1[9 : 3];
        weights1_addr_5_reg_1559[1] <= zext_ln128_6_fu_902_p1[1];
weights1_addr_5_reg_1559[9 : 3] <= zext_ln128_6_fu_902_p1[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        weights1_addr_6_reg_1575[0] <= zext_ln128_7_fu_916_p1[0];
weights1_addr_6_reg_1575[9 : 3] <= zext_ln128_7_fu_916_p1[9 : 3];
        weights1_addr_7_reg_1581[9 : 3] <= zext_ln128_8_fu_929_p1[9 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        weights1_addr_8_reg_1597[2 : 0] <= zext_ln128_9_fu_943_p1[2 : 0];
weights1_addr_8_reg_1597[9 : 4] <= zext_ln128_9_fu_943_p1[9 : 4];
        weights1_addr_9_reg_1603[2 : 1] <= zext_ln128_11_fu_959_p1[2 : 1];
weights1_addr_9_reg_1603[9 : 4] <= zext_ln128_11_fu_959_p1[9 : 4];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights1_load_10_reg_1631 <= weights1_q1;
        weights1_load_11_reg_1636 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights1_load_12_reg_1653 <= weights1_q1;
        weights1_load_13_reg_1658 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights1_load_14_reg_1675 <= weights1_q1;
        weights1_load_15_reg_1680 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights1_load_2_reg_1543 <= weights1_q1;
        weights1_load_3_reg_1548 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights1_load_4_reg_1565 <= weights1_q1;
        weights1_load_5_reg_1570 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights1_load_6_reg_1587 <= weights1_q1;
        weights1_load_7_reg_1592 <= weights1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights1_load_8_reg_1609 <= weights1_q1;
        weights1_load_9_reg_1614 <= weights1_q0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage24) & (icmp_ln126_reg_1250 == 1'd1) & (1'b0 == ap_block_pp0_stage24_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_condition_exit_pp0_iter0_stage24 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage24 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage24) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage24_subdone))) begin
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
    if (((1'b1 == ap_CS_fsm_pp0_stage127) & (1'b0 == ap_block_pp0_stage127_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_138;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_142;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_0_ce0_local = 1'b1;
    end else begin
        d_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_0_ce1_local = 1'b1;
    end else begin
        d_weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_1_ce0_local = 1'b1;
    end else begin
        d_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_1_ce1_local = 1'b1;
    end else begin
        d_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_2_ce0_local = 1'b1;
    end else begin
        d_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_2_ce1_local = 1'b1;
    end else begin
        d_weights1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_3_ce0_local = 1'b1;
    end else begin
        d_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_3_ce1_local = 1'b1;
    end else begin
        d_weights1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_4_ce0_local = 1'b1;
    end else begin
        d_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_4_ce1_local = 1'b1;
    end else begin
        d_weights1_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_5_ce0_local = 1'b1;
    end else begin
        d_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_5_ce1_local = 1'b1;
    end else begin
        d_weights1_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_6_ce0_local = 1'b1;
    end else begin
        d_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_6_ce1_local = 1'b1;
    end else begin
        d_weights1_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_7_ce0_local = 1'b1;
    end else begin
        d_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        d_weights1_7_ce1_local = 1'b1;
    end else begin
        d_weights1_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage16) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage16_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage23_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage22) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage22_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage14) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage21) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage21_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage13_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage20)& (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage20_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage19_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage18_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage17_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (icmp_ln126_reg_1250 ==1'd0) & (1'b0 == ap_block_pp0_stage24_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage39) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage39_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_490_opcode = 2'd1;
end else if ((((1'b1 == ap_CS_fsm_pp0_stage33) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage33_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage25_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage121) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage121_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage113) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage113_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage105) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage105_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage97) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage97_00001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage89) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage89_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage81) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage81_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage73) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage73_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage65) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage65_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage57) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage57_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage49) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage49_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage41) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage41_00001) & (ap_enable_reg_pp0_iter0== 1'b1)))) begin
        grp_fu_490_opcode = 2'd0;
    end else begin
        grp_fu_490_opcode = 'bx;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage121) & (1'b0 == ap_block_pp0_stage121) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage113) & (1'b0 == ap_block_pp0_stage113) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage105) & (1'b0 == ap_block_pp0_stage105) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage97) & (1'b0 == ap_block_pp0_stage97) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage89) & (1'b0 == ap_block_pp0_stage89) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage81) & (1'b0 == ap_block_pp0_stage81) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage73) & (1'b0 == ap_block_pp0_stage73) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage65) & (1'b0 == ap_block_pp0_stage65) & (ap_enable_reg_pp0_iter0== 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage57) & (1'b0 == ap_block_pp0_stage57) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage49) & (1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage41) & (1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_490_p0 = reg_543;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage39) & (1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_30_fu_1193_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage33) & (1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = reg_550;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = norm_2_fu_130;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_28_fu_1145_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_26_fu_1136_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_24_fu_1127_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_22_fu_1118_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_20_fu_1109_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_18_fu_1100_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_16_fu_1091_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_14_fu_1082_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_12_fu_1078_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_10_fu_1074_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_8_fu_1070_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_6_fu_1066_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_4_fu_1062_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_2_fu_1058_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p0 = bitcast_ln128_fu_1054_p1;
    end else begin
        grp_fu_490_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        grp_fu_490_p1 = mul17_13_reg_1790;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        grp_fu_490_p1 = mul17_12_reg_1785;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage121) & (1'b0 == ap_block_pp0_stage121) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p1 = mul17_11_reg_1780;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage113) & (1'b0 == ap_block_pp0_stage113) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p1 = mul17_10_reg_1775;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage105) & (1'b0 == ap_block_pp0_stage105) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p1 = mul17_s_reg_1770;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage97) & (1'b0 == ap_block_pp0_stage97) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p1 = mul17_9_reg_1765;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage39) & (1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_490_p1 = reg_587;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage89) & (1'b0 == ap_block_pp0_stage89) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_490_p1 = reg_538;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage81) & (1'b0 == ap_block_pp0_stage81) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_490_p1 = reg_533;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage73) & (1'b0 == ap_block_pp0_stage73) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_490_p1 = reg_528;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage65) & (1'b0 == ap_block_pp0_stage65) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_490_p1 = reg_523;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage57) & (1'b0 == ap_block_pp0_stage57) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_490_p1 = reg_518;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage49) & (1'b0 == ap_block_pp0_stage49) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_490_p1 = reg_513;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage41) & (1'b0 == ap_block_pp0_stage41) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_490_p1 = reg_508;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage33) & (1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_490_p1 = reg_503;
    end else begin
        grp_fu_490_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_7_load_1_reg_1538;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p0 = reg_581;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage30) & (1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p0 = reg_575;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage29) & (1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p0 = reg_569;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p0 = reg_563;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p0 = reg_557;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage47) & (1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p0 = reg_550;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage33) & (1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p0 = reg_543;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_6_load_1_reg_1533;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_5_load_1_reg_1528;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_4_load_1_reg_1523;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_3_load_1_reg_1518;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_2_load_1_reg_1513;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_1_load_1_reg_1508;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_0_load_1_reg_1503;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_7_load_reg_1498;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_6_load_reg_1493;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_5_load_reg_1488;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_4_load_reg_1483;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_3_load_reg_1472;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_2_load_reg_1461;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_1_load_reg_1451;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_498_p0 = d_weights1_0_load_reg_1441;
    end else begin
        grp_fu_498_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p1 = reg_581;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage30) & (1'b0 == ap_block_pp0_stage30) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p1 = reg_575;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage29) & (1'b0 == ap_block_pp0_stage29) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p1 = reg_569;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p1 = reg_563;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p1 = reg_557;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage47) & (1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p1 = reg_550;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage33) & (1'b0 == ap_block_pp0_stage33) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p1 = reg_543;
end else if ((((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0== 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_498_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_498_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage24) & (ap_loop_exit_ready == 1'b1) & (icmp_ln126_reg_1250 == 1'd1) & (1'b0 == ap_block_pp0_stage24_11001))) begin
        norm_2_out_ap_vld = 1'b1;
    end else begin
        norm_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32))) begin
            weights1_address0_local = weights1_addr_14_reg_1663;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage30) & (1'b0 == ap_block_pp0_stage30))) begin
            weights1_address0_local = weights1_addr_12_reg_1641;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28))) begin
            weights1_address0_local = weights1_addr_10_reg_1619;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26))) begin
            weights1_address0_local = weights1_addr_8_reg_1597;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24))) begin
            weights1_address0_local = weights1_addr_6_reg_1575;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22))) begin
            weights1_address0_local = weights1_addr_4_reg_1553;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights1_address0_local = weights1_addr_2_reg_1466;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights1_address0_local = weights1_addr_reg_1292;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8))) begin
            weights1_address0_local = zext_ln128_17_fu_1049_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            weights1_address0_local = zext_ln128_15_fu_1022_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            weights1_address0_local = zext_ln128_13_fu_992_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            weights1_address0_local = zext_ln128_11_fu_959_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            weights1_address0_local = zext_ln128_8_fu_929_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            weights1_address0_local = zext_ln128_6_fu_902_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            weights1_address0_local = zext_ln128_4_fu_872_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights1_address0_local = zext_ln128_2_fu_750_p1;
        end else begin
            weights1_address0_local = 'bx;
        end
    end else begin
        weights1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage47) & (1'b0 == ap_block_pp0_stage47))) begin
            weights1_address1_local = weights1_addr_15_reg_1669;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31))) begin
            weights1_address1_local = weights1_addr_13_reg_1647;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage29) & (1'b0 == ap_block_pp0_stage29))) begin
            weights1_address1_local = weights1_addr_11_reg_1625;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27))) begin
            weights1_address1_local = weights1_addr_9_reg_1603;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25))) begin
            weights1_address1_local = weights1_addr_7_reg_1581;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23))) begin
            weights1_address1_local = weights1_addr_5_reg_1559;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21))) begin
            weights1_address1_local = weights1_addr_3_reg_1477;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights1_address1_local = weights1_addr_1_reg_1303;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8))) begin
            weights1_address1_local = zext_ln128_16_fu_1036_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7))) begin
            weights1_address1_local = zext_ln128_14_fu_1006_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
            weights1_address1_local = zext_ln128_12_fu_976_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            weights1_address1_local = zext_ln128_9_fu_943_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            weights1_address1_local = zext_ln128_7_fu_916_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            weights1_address1_local = zext_ln128_5_fu_886_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            weights1_address1_local = zext_ln128_3_fu_859_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights1_address1_local = zext_ln128_fu_693_p1;
        end else begin
            weights1_address1_local = 'bx;
        end
    end else begin
        weights1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage30) & (1'b0== ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights1_ce0_local = 1'b1;
    end else begin
        weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0== ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage29) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage47) & (1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights1_ce1_local = 1'b1;
    end else begin
        weights1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32))) begin
            weights1_d0_local = bitcast_ln128_29_fu_1188_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage30) & (1'b0 == ap_block_pp0_stage30))) begin
            weights1_d0_local = bitcast_ln128_25_fu_1178_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28))) begin
            weights1_d0_local = bitcast_ln128_21_fu_1168_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26))) begin
            weights1_d0_local = bitcast_ln128_17_fu_1158_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24))) begin
            weights1_d0_local = bitcast_ln128_13_fu_1140_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22))) begin
            weights1_d0_local = bitcast_ln128_9_fu_1122_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights1_d0_local = bitcast_ln128_5_fu_1104_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights1_d0_local = bitcast_ln128_1_fu_1086_p1;
        end else begin
            weights1_d0_local = 'bx;
        end
    end else begin
        weights1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage47) & (1'b0 == ap_block_pp0_stage47))) begin
            weights1_d1_local = bitcast_ln128_31_fu_1197_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31))) begin
            weights1_d1_local = bitcast_ln128_27_fu_1183_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage29) & (1'b0 == ap_block_pp0_stage29))) begin
            weights1_d1_local = bitcast_ln128_23_fu_1173_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27))) begin
            weights1_d1_local = bitcast_ln128_19_fu_1163_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25))) begin
            weights1_d1_local = bitcast_ln128_15_fu_1153_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23))) begin
            weights1_d1_local = bitcast_ln128_11_fu_1131_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21))) begin
            weights1_d1_local = bitcast_ln128_7_fu_1113_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights1_d1_local = bitcast_ln128_3_fu_1095_p1;
        end else begin
            weights1_d1_local = 'bx;
        end
    end else begin
        weights1_d1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage32) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage30) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage22) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage28) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage20) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24)& (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights1_we0_local = 1'b1;
    end else begin
        weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage31) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage29) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage21) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage47)& (icmp_ln126_reg_1250 == 1'd0) & (1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights1_we1_local = 1'b1;
    end else begin
        weights1_we1_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage24)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage96;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage95;
            end
        end
        ap_ST_fsm_pp0_stage96 : begin
            if ((1'b0 == ap_block_pp0_stage96_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage97;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage96;
            end
        end
        ap_ST_fsm_pp0_stage97 : begin
            if ((1'b0 == ap_block_pp0_stage97_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage98;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage97;
            end
        end
        ap_ST_fsm_pp0_stage98 : begin
            if ((1'b0 == ap_block_pp0_stage98_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage99;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage98;
            end
        end
        ap_ST_fsm_pp0_stage99 : begin
            if ((1'b0 == ap_block_pp0_stage99_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage100;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage99;
            end
        end
        ap_ST_fsm_pp0_stage100 : begin
            if ((1'b0 == ap_block_pp0_stage100_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage101;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage100;
            end
        end
        ap_ST_fsm_pp0_stage101 : begin
            if ((1'b0 == ap_block_pp0_stage101_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage102;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage101;
            end
        end
        ap_ST_fsm_pp0_stage102 : begin
            if ((1'b0 == ap_block_pp0_stage102_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage103;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage102;
            end
        end
        ap_ST_fsm_pp0_stage103 : begin
            if ((1'b0 == ap_block_pp0_stage103_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage104;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage103;
            end
        end
        ap_ST_fsm_pp0_stage104 : begin
            if ((1'b0 == ap_block_pp0_stage104_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage105;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage104;
            end
        end
        ap_ST_fsm_pp0_stage105 : begin
            if ((1'b0 == ap_block_pp0_stage105_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage106;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage105;
            end
        end
        ap_ST_fsm_pp0_stage106 : begin
            if ((1'b0 == ap_block_pp0_stage106_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage107;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage106;
            end
        end
        ap_ST_fsm_pp0_stage107 : begin
            if ((1'b0 == ap_block_pp0_stage107_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage108;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage107;
            end
        end
        ap_ST_fsm_pp0_stage108 : begin
            if ((1'b0 == ap_block_pp0_stage108_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage109;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage108;
            end
        end
        ap_ST_fsm_pp0_stage109 : begin
            if ((1'b0 == ap_block_pp0_stage109_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage110;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage109;
            end
        end
        ap_ST_fsm_pp0_stage110 : begin
            if ((1'b0 == ap_block_pp0_stage110_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage111;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage110;
            end
        end
        ap_ST_fsm_pp0_stage111 : begin
            if ((1'b0 == ap_block_pp0_stage111_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage112;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage111;
            end
        end
        ap_ST_fsm_pp0_stage112 : begin
            if ((1'b0 == ap_block_pp0_stage112_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage113;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage112;
            end
        end
        ap_ST_fsm_pp0_stage113 : begin
            if ((1'b0 == ap_block_pp0_stage113_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage114;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage113;
            end
        end
        ap_ST_fsm_pp0_stage114 : begin
            if ((1'b0 == ap_block_pp0_stage114_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage115;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage114;
            end
        end
        ap_ST_fsm_pp0_stage115 : begin
            if ((1'b0 == ap_block_pp0_stage115_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage116;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage115;
            end
        end
        ap_ST_fsm_pp0_stage116 : begin
            if ((1'b0 == ap_block_pp0_stage116_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage117;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage116;
            end
        end
        ap_ST_fsm_pp0_stage117 : begin
            if ((1'b0 == ap_block_pp0_stage117_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage118;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage117;
            end
        end
        ap_ST_fsm_pp0_stage118 : begin
            if ((1'b0 == ap_block_pp0_stage118_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage119;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage118;
            end
        end
        ap_ST_fsm_pp0_stage119 : begin
            if ((1'b0 == ap_block_pp0_stage119_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage120;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage119;
            end
        end
        ap_ST_fsm_pp0_stage120 : begin
            if ((1'b0 == ap_block_pp0_stage120_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage121;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage120;
            end
        end
        ap_ST_fsm_pp0_stage121 : begin
            if ((1'b0 == ap_block_pp0_stage121_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage122;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage121;
            end
        end
        ap_ST_fsm_pp0_stage122 : begin
            if ((1'b0 == ap_block_pp0_stage122_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage123;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage122;
            end
        end
        ap_ST_fsm_pp0_stage123 : begin
            if ((1'b0 == ap_block_pp0_stage123_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage124;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage123;
            end
        end
        ap_ST_fsm_pp0_stage124 : begin
            if ((1'b0 == ap_block_pp0_stage124_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage125;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage124;
            end
        end
        ap_ST_fsm_pp0_stage125 : begin
            if ((1'b0 == ap_block_pp0_stage125_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage126;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage125;
            end
        end
        ap_ST_fsm_pp0_stage126 : begin
            if ((1'b0 == ap_block_pp0_stage126_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage127;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage126;
            end
        end
        ap_ST_fsm_pp0_stage127 : begin
            if ((1'b0 == ap_block_pp0_stage127_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage127;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln126_1_fu_631_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln126_fu_622_p2 = (ap_sig_allocacmp_indvar_flatten_load + 6'd1);
assign add_ln127_fu_1202_p2 = (select_ln121_reg_1264 + 7'd16);
assign add_ln128_10_fu_948_p6 = {{{{{select_ln126_reg_1269}, {tmp_14_reg_1373}}, {1'd1}}, {tmp_19_reg_1395}}, {1'd1}};
assign add_ln128_11_fu_964_p7 = {{{{{{select_ln126_reg_1269}, {tmp_14_reg_1373}}, {1'd1}}, {tmp_22_reg_1405}}, {1'd1}}, {trunc_ln128_reg_1315}};
assign add_ln128_12_fu_981_p6 = {{{{{select_ln126_reg_1269}, {tmp_14_reg_1373}}, {1'd1}}, {tmp_22_reg_1405}}, {2'd3}};
assign add_ln128_13_fu_997_p5 = {{{{select_ln126_reg_1269}, {tmp_14_reg_1373}}, {2'd3}}, {trunc_ln128_1_reg_1341}};
assign add_ln128_14_fu_1011_p6 = {{{{{select_ln126_reg_1269}, {tmp_14_reg_1373}}, {2'd3}}, {tmp_21_reg_1352}}, {1'd1}};
assign add_ln128_15_fu_1027_p5 = {{{{select_ln126_reg_1269}, {tmp_14_reg_1373}}, {3'd7}}, {trunc_ln128_reg_1315}};
assign add_ln128_16_fu_1041_p4 = {{{select_ln126_reg_1269}, {tmp_14_reg_1373}}, {4'd15}};
assign add_ln128_1_fu_712_p2 = (zext_ln128_18_fu_708_p1 + p_udiv2_fu_675_p3);
assign add_ln128_2_fu_740_p4 = {{{select_ln126_fu_661_p3}, {tmp_3_fu_730_p4}}, {1'd1}};
assign add_ln128_3_fu_850_p5 = {{{{select_ln126_reg_1269}, {tmp_4_reg_1309}}, {1'd1}}, {trunc_ln128_reg_1315}};
assign add_ln128_4_fu_864_p4 = {{{select_ln126_reg_1269}, {tmp_4_reg_1309}}, {2'd3}};
assign add_ln128_5_fu_877_p5 = {{{{select_ln126_reg_1269}, {tmp_7_reg_1333}}, {1'd1}}, {trunc_ln128_1_reg_1341}};
assign add_ln128_6_fu_891_p6 = {{{{{select_ln126_reg_1269}, {tmp_7_reg_1333}}, {1'd1}}, {tmp_21_reg_1352}}, {1'd1}};
assign add_ln128_7_fu_907_p5 = {{{{select_ln126_reg_1269}, {tmp_7_reg_1333}}, {2'd3}}, {trunc_ln128_reg_1315}};
assign add_ln128_8_fu_921_p4 = {{{select_ln126_reg_1269}, {tmp_7_reg_1333}}, {3'd7}};
assign add_ln128_9_fu_934_p5 = {{{{select_ln126_reg_1269}, {tmp_14_reg_1373}}, {1'd1}}, {trunc_ln128_2_reg_1385}};
assign add_ln128_fu_687_p2 = (zext_ln127_fu_683_p1 + tmp_1_fu_667_p3);
assign add_ln128_s_fu_805_p4 = {{{select_ln126_fu_661_p3}, {tmp_14_fu_791_p4}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage104 = ap_CS_fsm[32'd104];
assign ap_CS_fsm_pp0_stage105 = ap_CS_fsm[32'd105];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage112 = ap_CS_fsm[32'd112];
assign ap_CS_fsm_pp0_stage113 = ap_CS_fsm[32'd113];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage120 = ap_CS_fsm[32'd120];
assign ap_CS_fsm_pp0_stage121 = ap_CS_fsm[32'd121];
assign ap_CS_fsm_pp0_stage127 = ap_CS_fsm[32'd127];
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
assign ap_CS_fsm_pp0_stage35 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_pp0_stage36 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_pp0_stage37 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_pp0_stage38 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_pp0_stage39 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage40 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_pp0_stage41 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_pp0_stage46 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_pp0_stage48 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_pp0_stage49 = ap_CS_fsm[32'd49];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage53 = ap_CS_fsm[32'd53];
assign ap_CS_fsm_pp0_stage56 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_pp0_stage57 = ap_CS_fsm[32'd57];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage64 = ap_CS_fsm[32'd64];
assign ap_CS_fsm_pp0_stage65 = ap_CS_fsm[32'd65];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage72 = ap_CS_fsm[32'd72];
assign ap_CS_fsm_pp0_stage73 = ap_CS_fsm[32'd73];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage80 = ap_CS_fsm[32'd80];
assign ap_CS_fsm_pp0_stage81 = ap_CS_fsm[32'd81];
assign ap_CS_fsm_pp0_stage88 = ap_CS_fsm[32'd88];
assign ap_CS_fsm_pp0_stage89 = ap_CS_fsm[32'd89];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage96 = ap_CS_fsm[32'd96];
assign ap_CS_fsm_pp0_stage97 = ap_CS_fsm[32'd97];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage100_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage101_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage102_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage103_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage104_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage104_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage105 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage105_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage105_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage106_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage107_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage108_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage109_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage110_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage111_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage112_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage112_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage113 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage113_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage113_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage114_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage115_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage116_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage117_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage118_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage119_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage120_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage120_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage121 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage121_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage121_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage122_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage123_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage124_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage125_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage126_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage127_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage39 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_11001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage46_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage53_11001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage64_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage64_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage65 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage65_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage65_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage66_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage67_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage68_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage69_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage70_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage71_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage72_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage72_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage73 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage73_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage73_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage74_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage75_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage76_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage77_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage78_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage79_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage80_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage80_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage81 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage81_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage81_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage82_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage83_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage84_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage85_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage86_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage87_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage88_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage88_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage89 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage89_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage89_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage90_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage91_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage92_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage93_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage94_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage95_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage96_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage96_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage97 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage97_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage97_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage98_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage99_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage24;
assign ap_ready = ap_ready_sig;
assign bitcast_ln128_10_fu_1074_p1 = weights1_load_5_reg_1570;
assign bitcast_ln128_11_fu_1131_p1 = reg_575;
assign bitcast_ln128_12_fu_1078_p1 = weights1_load_6_reg_1587;
assign bitcast_ln128_13_fu_1140_p1 = reg_581;
assign bitcast_ln128_14_fu_1082_p1 = weights1_load_7_reg_1592;
assign bitcast_ln128_15_fu_1153_p1 = reg_543;
assign bitcast_ln128_16_fu_1091_p1 = weights1_load_8_reg_1609;
assign bitcast_ln128_17_fu_1158_p1 = reg_550;
assign bitcast_ln128_18_fu_1100_p1 = weights1_load_9_reg_1614;
assign bitcast_ln128_19_fu_1163_p1 = reg_557;
assign bitcast_ln128_1_fu_1086_p1 = reg_543;
assign bitcast_ln128_20_fu_1109_p1 = weights1_load_10_reg_1631;
assign bitcast_ln128_21_fu_1168_p1 = reg_563;
assign bitcast_ln128_22_fu_1118_p1 = weights1_load_11_reg_1636;
assign bitcast_ln128_23_fu_1173_p1 = reg_569;
assign bitcast_ln128_24_fu_1127_p1 = weights1_load_12_reg_1653;
assign bitcast_ln128_25_fu_1178_p1 = reg_575;
assign bitcast_ln128_26_fu_1136_p1 = weights1_load_13_reg_1658;
assign bitcast_ln128_27_fu_1183_p1 = reg_581;
assign bitcast_ln128_28_fu_1145_p1 = weights1_load_14_reg_1675;
assign bitcast_ln128_29_fu_1188_p1 = reg_543;
assign bitcast_ln128_2_fu_1058_p1 = weights1_load_1_reg_1456;
assign bitcast_ln128_30_fu_1193_p1 = weights1_load_15_reg_1680;
assign bitcast_ln128_31_fu_1197_p1 = reg_550;
assign bitcast_ln128_3_fu_1095_p1 = reg_550;
assign bitcast_ln128_4_fu_1062_p1 = weights1_load_2_reg_1543;
assign bitcast_ln128_5_fu_1104_p1 = reg_557;
assign bitcast_ln128_6_fu_1066_p1 = weights1_load_3_reg_1548;
assign bitcast_ln128_7_fu_1113_p1 = reg_563;
assign bitcast_ln128_8_fu_1070_p1 = weights1_load_4_reg_1565;
assign bitcast_ln128_9_fu_1122_p1 = reg_569;
assign bitcast_ln128_fu_1054_p1 = weights1_load_reg_1446;
assign d_weights1_0_address0 = zext_ln128_10_fu_815_p1;
assign d_weights1_0_address1 = zext_ln128_1_fu_718_p1;
assign d_weights1_0_ce0 = d_weights1_0_ce0_local;
assign d_weights1_0_ce1 = d_weights1_0_ce1_local;
assign d_weights1_1_address0 = zext_ln128_10_fu_815_p1;
assign d_weights1_1_address1 = zext_ln128_1_fu_718_p1;
assign d_weights1_1_ce0 = d_weights1_1_ce0_local;
assign d_weights1_1_ce1 = d_weights1_1_ce1_local;
assign d_weights1_2_address0 = zext_ln128_10_fu_815_p1;
assign d_weights1_2_address1 = zext_ln128_1_fu_718_p1;
assign d_weights1_2_ce0 = d_weights1_2_ce0_local;
assign d_weights1_2_ce1 = d_weights1_2_ce1_local;
assign d_weights1_3_address0 = zext_ln128_10_fu_815_p1;
assign d_weights1_3_address1 = zext_ln128_1_fu_718_p1;
assign d_weights1_3_ce0 = d_weights1_3_ce0_local;
assign d_weights1_3_ce1 = d_weights1_3_ce1_local;
assign d_weights1_4_address0 = zext_ln128_10_fu_815_p1;
assign d_weights1_4_address1 = zext_ln128_1_fu_718_p1;
assign d_weights1_4_ce0 = d_weights1_4_ce0_local;
assign d_weights1_4_ce1 = d_weights1_4_ce1_local;
assign d_weights1_5_address0 = zext_ln128_10_fu_815_p1;
assign d_weights1_5_address1 = zext_ln128_1_fu_718_p1;
assign d_weights1_5_ce0 = d_weights1_5_ce0_local;
assign d_weights1_5_ce1 = d_weights1_5_ce1_local;
assign d_weights1_6_address0 = zext_ln128_10_fu_815_p1;
assign d_weights1_6_address1 = zext_ln128_1_fu_718_p1;
assign d_weights1_6_ce0 = d_weights1_6_ce0_local;
assign d_weights1_6_ce1 = d_weights1_6_ce1_local;
assign d_weights1_7_address0 = zext_ln128_10_fu_815_p1;
assign d_weights1_7_address1 = zext_ln128_1_fu_718_p1;
assign d_weights1_7_ce0 = d_weights1_7_ce0_local;
assign d_weights1_7_ce1 = d_weights1_7_ce1_local;
assign grp_fu_573_p_ce = 1'b1;
assign grp_fu_573_p_din0 = grp_fu_490_p0;
assign grp_fu_573_p_din1 = grp_fu_490_p1;
assign grp_fu_573_p_opcode = grp_fu_490_opcode;
assign grp_fu_577_p_ce = 1'b1;
assign grp_fu_577_p_din0 = norm_71_reg_1800;
assign grp_fu_577_p_din1 = reg_587;
assign grp_fu_577_p_opcode = 2'd0;
assign grp_fu_581_p_ce = 1'b1;
assign grp_fu_581_p_din0 = grp_fu_498_p0;
assign grp_fu_581_p_din1 = grp_fu_498_p1;
assign icmp_ln126_fu_616_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 6'd52) ? 1'b1 : 1'b0);
assign lshr_ln_fu_698_p4 = {{select_ln121_fu_653_p3[6:3]}};
assign norm_2_out = norm_2_fu_130;
assign p_udiv2_fu_675_p3 = {{select_ln126_fu_661_p3}, {3'd0}};
assign select_ln121_fu_653_p3 = ((tmp_fu_645_p3[0:0] == 1'b1) ? 7'd0 : j_fu_134);
assign select_ln126_fu_661_p3 = ((tmp_fu_645_p3[0:0] == 1'b1) ? add_ln126_1_reg_1259 : i_load_reg_1254);
assign tmp_14_fu_791_p4 = {{select_ln121_fu_653_p3[5:4]}};
assign tmp_1_fu_667_p3 = {{select_ln126_fu_661_p3}, {6'd0}};
assign tmp_3_fu_730_p4 = {{select_ln121_fu_653_p3[5:1]}};
assign tmp_fu_645_p3 = j_fu_134[32'd6];
assign trunc_ln128_1_fu_779_p1 = select_ln121_fu_653_p3[1:0];
assign trunc_ln128_2_fu_801_p1 = select_ln121_fu_653_p3[2:0];
assign trunc_ln128_fu_765_p1 = select_ln121_fu_653_p3[0:0];
assign weights1_address0 = weights1_address0_local;
assign weights1_address1 = weights1_address1_local;
assign weights1_ce0 = weights1_ce0_local;
assign weights1_ce1 = weights1_ce1_local;
assign weights1_d0 = weights1_d0_local;
assign weights1_d1 = weights1_d1_local;
assign weights1_we0 = weights1_we0_local;
assign weights1_we1 = weights1_we1_local;
assign zext_ln127_fu_683_p1 = select_ln121_fu_653_p3;
assign zext_ln128_10_fu_815_p1 = add_ln128_s_fu_805_p4;
assign zext_ln128_11_fu_959_p1 = add_ln128_10_fu_948_p6;
assign zext_ln128_12_fu_976_p1 = add_ln128_11_fu_964_p7;
assign zext_ln128_13_fu_992_p1 = add_ln128_12_fu_981_p6;
assign zext_ln128_14_fu_1006_p1 = add_ln128_13_fu_997_p5;
assign zext_ln128_15_fu_1022_p1 = add_ln128_14_fu_1011_p6;
assign zext_ln128_16_fu_1036_p1 = add_ln128_15_fu_1027_p5;
assign zext_ln128_17_fu_1049_p1 = add_ln128_16_fu_1041_p4;
assign zext_ln128_18_fu_708_p1 = lshr_ln_fu_698_p4;
assign zext_ln128_1_fu_718_p1 = add_ln128_1_fu_712_p2;
assign zext_ln128_2_fu_750_p1 = add_ln128_2_fu_740_p4;
assign zext_ln128_3_fu_859_p1 = add_ln128_3_fu_850_p5;
assign zext_ln128_4_fu_872_p1 = add_ln128_4_fu_864_p4;
assign zext_ln128_5_fu_886_p1 = add_ln128_5_fu_877_p5;
assign zext_ln128_6_fu_902_p1 = add_ln128_6_fu_891_p6;
assign zext_ln128_7_fu_916_p1 = add_ln128_7_fu_907_p5;
assign zext_ln128_8_fu_929_p1 = add_ln128_8_fu_921_p4;
assign zext_ln128_9_fu_943_p1 = add_ln128_9_fu_934_p5;
assign zext_ln128_fu_693_p1 = add_ln128_fu_687_p2;
always @ (posedge ap_clk) begin
    weights1_addr_1_reg_1303[0] <= 1'b1;
    weights1_addr_2_reg_1466[1] <= 1'b1;
    weights1_addr_3_reg_1477[1:0] <= 2'b11;
    weights1_addr_4_reg_1553[2] <= 1'b1;
    weights1_addr_5_reg_1559[0] <= 1'b1;
    weights1_addr_5_reg_1559[2] <= 1'b1;
    weights1_addr_6_reg_1575[2:1] <= 2'b11;
    weights1_addr_7_reg_1581[2:0] <= 3'b111;
    weights1_addr_8_reg_1597[3] <= 1'b1;
    weights1_addr_9_reg_1603[0] <= 1'b1;
    weights1_addr_9_reg_1603[3] <= 1'b1;
    weights1_addr_10_reg_1619[1] <= 1'b1;
    weights1_addr_10_reg_1619[3] <= 1'b1;
    weights1_addr_11_reg_1625[1:0] <= 2'b11;
    weights1_addr_11_reg_1625[3] <= 1'b1;
    weights1_addr_12_reg_1641[3:2] <= 2'b11;
    weights1_addr_13_reg_1647[0] <= 1'b1;
    weights1_addr_13_reg_1647[3:2] <= 2'b11;
    weights1_addr_14_reg_1663[3:1] <= 3'b111;
    weights1_addr_15_reg_1669[3:0] <= 4'b1111;
end
endmodule 
