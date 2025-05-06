
module backprop_update_weights_1_Pipeline_up_weight_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,p_read,p_read12,p_read24,p_read36,p_read48,p_read60,p_read72,p_read84,p_read96,p_read108,p_read120,p_read132,p_read144,p_read156,p_read168,p_read180,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_we1,weights3_d1,weights3_q1,p_read1,p_read13,p_read25,p_read37,p_read49,p_read61,p_read73,p_read85,p_read97,p_read109,p_read121,p_read133,p_read145,p_read157,p_read169,p_read181,p_read2,p_read14,p_read26,p_read38,p_read50,p_read62,p_read74,p_read86,p_read98,p_read110,p_read122,p_read134,p_read146,p_read158,p_read170,p_read182,p_read3,p_read15,p_read27,p_read39,p_read51,p_read63,p_read75,p_read87,p_read99,p_read111,p_read123,p_read135,p_read147,p_read159,p_read171,p_read183,p_read4,p_read16,p_read28,p_read40,p_read52,p_read64,p_read76,p_read88,p_read100,p_read112,p_read124,p_read136,p_read148,p_read160,p_read172,p_read184,p_read5,p_read17,p_read29,p_read41,p_read53,p_read65,p_read77,p_read89,p_read101,p_read113,p_read125,p_read137,p_read149,p_read161,p_read173,p_read185,p_read6,p_read18,p_read30,p_read42,p_read54,p_read66,p_read78,p_read90,p_read102,p_read114,p_read126,p_read138,p_read150,p_read162,p_read174,p_read186,p_read7,p_read19,p_read31,p_read43,p_read55,p_read67,p_read79,p_read91,p_read103,p_read115,p_read127,p_read139,p_read151,p_read163,p_read175,p_read187,p_read8,p_read20,p_read32,p_read44,p_read56,p_read68,p_read80,p_read92,p_read104,p_read116,p_read128,p_read140,p_read152,p_read164,p_read176,p_read188,p_read9,p_read21,p_read33,p_read45,p_read57,p_read69,p_read81,p_read93,p_read105,p_read117,p_read129,p_read141,p_read153,p_read165,p_read177,p_read189,p_read10,p_read22,p_read34,p_read46,p_read58,p_read70,p_read82,p_read94,p_read106,p_read118,p_read130,p_read142,p_read154,p_read166,p_read178,p_read190,p_read11,p_read23,p_read35,p_read47,p_read59,p_read71,p_read83,p_read95,p_read107,p_read119,p_read131,p_read143,p_read155,p_read167,p_read179,p_read191,norm_12_out,norm_12_out_ap_vld,grp_fu_5305_p_din0,grp_fu_5305_p_din1,grp_fu_5305_p_dout0,grp_fu_5305_p_ce);  
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
input  [63:0] p_read;
input  [63:0] p_read12;
input  [63:0] p_read24;
input  [63:0] p_read36;
input  [63:0] p_read48;
input  [63:0] p_read60;
input  [63:0] p_read72;
input  [63:0] p_read84;
input  [63:0] p_read96;
input  [63:0] p_read108;
input  [63:0] p_read120;
input  [63:0] p_read132;
input  [63:0] p_read144;
input  [63:0] p_read156;
input  [63:0] p_read168;
input  [63:0] p_read180;
output  [7:0] weights3_address0;
output   weights3_ce0;
output   weights3_we0;
output  [63:0] weights3_d0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
output   weights3_we1;
output  [63:0] weights3_d1;
input  [63:0] weights3_q1;
input  [63:0] p_read1;
input  [63:0] p_read13;
input  [63:0] p_read25;
input  [63:0] p_read37;
input  [63:0] p_read49;
input  [63:0] p_read61;
input  [63:0] p_read73;
input  [63:0] p_read85;
input  [63:0] p_read97;
input  [63:0] p_read109;
input  [63:0] p_read121;
input  [63:0] p_read133;
input  [63:0] p_read145;
input  [63:0] p_read157;
input  [63:0] p_read169;
input  [63:0] p_read181;
input  [63:0] p_read2;
input  [63:0] p_read14;
input  [63:0] p_read26;
input  [63:0] p_read38;
input  [63:0] p_read50;
input  [63:0] p_read62;
input  [63:0] p_read74;
input  [63:0] p_read86;
input  [63:0] p_read98;
input  [63:0] p_read110;
input  [63:0] p_read122;
input  [63:0] p_read134;
input  [63:0] p_read146;
input  [63:0] p_read158;
input  [63:0] p_read170;
input  [63:0] p_read182;
input  [63:0] p_read3;
input  [63:0] p_read15;
input  [63:0] p_read27;
input  [63:0] p_read39;
input  [63:0] p_read51;
input  [63:0] p_read63;
input  [63:0] p_read75;
input  [63:0] p_read87;
input  [63:0] p_read99;
input  [63:0] p_read111;
input  [63:0] p_read123;
input  [63:0] p_read135;
input  [63:0] p_read147;
input  [63:0] p_read159;
input  [63:0] p_read171;
input  [63:0] p_read183;
input  [63:0] p_read4;
input  [63:0] p_read16;
input  [63:0] p_read28;
input  [63:0] p_read40;
input  [63:0] p_read52;
input  [63:0] p_read64;
input  [63:0] p_read76;
input  [63:0] p_read88;
input  [63:0] p_read100;
input  [63:0] p_read112;
input  [63:0] p_read124;
input  [63:0] p_read136;
input  [63:0] p_read148;
input  [63:0] p_read160;
input  [63:0] p_read172;
input  [63:0] p_read184;
input  [63:0] p_read5;
input  [63:0] p_read17;
input  [63:0] p_read29;
input  [63:0] p_read41;
input  [63:0] p_read53;
input  [63:0] p_read65;
input  [63:0] p_read77;
input  [63:0] p_read89;
input  [63:0] p_read101;
input  [63:0] p_read113;
input  [63:0] p_read125;
input  [63:0] p_read137;
input  [63:0] p_read149;
input  [63:0] p_read161;
input  [63:0] p_read173;
input  [63:0] p_read185;
input  [63:0] p_read6;
input  [63:0] p_read18;
input  [63:0] p_read30;
input  [63:0] p_read42;
input  [63:0] p_read54;
input  [63:0] p_read66;
input  [63:0] p_read78;
input  [63:0] p_read90;
input  [63:0] p_read102;
input  [63:0] p_read114;
input  [63:0] p_read126;
input  [63:0] p_read138;
input  [63:0] p_read150;
input  [63:0] p_read162;
input  [63:0] p_read174;
input  [63:0] p_read186;
input  [63:0] p_read7;
input  [63:0] p_read19;
input  [63:0] p_read31;
input  [63:0] p_read43;
input  [63:0] p_read55;
input  [63:0] p_read67;
input  [63:0] p_read79;
input  [63:0] p_read91;
input  [63:0] p_read103;
input  [63:0] p_read115;
input  [63:0] p_read127;
input  [63:0] p_read139;
input  [63:0] p_read151;
input  [63:0] p_read163;
input  [63:0] p_read175;
input  [63:0] p_read187;
input  [63:0] p_read8;
input  [63:0] p_read20;
input  [63:0] p_read32;
input  [63:0] p_read44;
input  [63:0] p_read56;
input  [63:0] p_read68;
input  [63:0] p_read80;
input  [63:0] p_read92;
input  [63:0] p_read104;
input  [63:0] p_read116;
input  [63:0] p_read128;
input  [63:0] p_read140;
input  [63:0] p_read152;
input  [63:0] p_read164;
input  [63:0] p_read176;
input  [63:0] p_read188;
input  [63:0] p_read9;
input  [63:0] p_read21;
input  [63:0] p_read33;
input  [63:0] p_read45;
input  [63:0] p_read57;
input  [63:0] p_read69;
input  [63:0] p_read81;
input  [63:0] p_read93;
input  [63:0] p_read105;
input  [63:0] p_read117;
input  [63:0] p_read129;
input  [63:0] p_read141;
input  [63:0] p_read153;
input  [63:0] p_read165;
input  [63:0] p_read177;
input  [63:0] p_read189;
input  [63:0] p_read10;
input  [63:0] p_read22;
input  [63:0] p_read34;
input  [63:0] p_read46;
input  [63:0] p_read58;
input  [63:0] p_read70;
input  [63:0] p_read82;
input  [63:0] p_read94;
input  [63:0] p_read106;
input  [63:0] p_read118;
input  [63:0] p_read130;
input  [63:0] p_read142;
input  [63:0] p_read154;
input  [63:0] p_read166;
input  [63:0] p_read178;
input  [63:0] p_read190;
input  [63:0] p_read11;
input  [63:0] p_read23;
input  [63:0] p_read35;
input  [63:0] p_read47;
input  [63:0] p_read59;
input  [63:0] p_read71;
input  [63:0] p_read83;
input  [63:0] p_read95;
input  [63:0] p_read107;
input  [63:0] p_read119;
input  [63:0] p_read131;
input  [63:0] p_read143;
input  [63:0] p_read155;
input  [63:0] p_read167;
input  [63:0] p_read179;
input  [63:0] p_read191;
output  [63:0] norm_12_out;
output   norm_12_out_ap_vld;
output  [63:0] grp_fu_5305_p_din0;
output  [63:0] grp_fu_5305_p_din1;
input  [63:0] grp_fu_5305_p_dout0;
output   grp_fu_5305_p_ce;
reg ap_idle;
reg norm_12_out_ap_vld;
(* fsm_encoding = "none" *) reg   [95:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_subdone;
reg   [0:0] tmp_reg_3054;
reg    ap_condition_exit_pp0_iter0_stage22;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage95;
wire    ap_block_pp0_stage95_subdone;
reg   [63:0] reg_1785;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_1790;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_1795;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_1800;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] reg_1805;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage22_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
reg   [63:0] reg_1810;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] reg_1815;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] reg_1820;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] grp_fu_1772_p2;
reg   [63:0] reg_1825;
wire    ap_CS_fsm_pp0_stage38;
wire    ap_block_pp0_stage38_11001;
wire    ap_CS_fsm_pp0_stage46;
wire    ap_block_pp0_stage46_11001;
wire    ap_CS_fsm_pp0_stage54;
wire    ap_block_pp0_stage54_11001;
wire    ap_CS_fsm_pp0_stage62;
wire    ap_block_pp0_stage62_11001;
wire    ap_CS_fsm_pp0_stage70;
wire    ap_block_pp0_stage70_11001;
wire    ap_CS_fsm_pp0_stage78;
wire    ap_block_pp0_stage78_11001;
wire    ap_CS_fsm_pp0_stage86;
wire    ap_block_pp0_stage86_11001;
wire    ap_CS_fsm_pp0_stage94;
wire    ap_block_pp0_stage94_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] reg_1832;
reg   [63:0] reg_1838;
reg   [63:0] reg_1844;
reg   [63:0] reg_1850;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_3049;
wire   [63:0] tmp_s_fu_1904_p35;
reg   [63:0] tmp_s_reg_3058;
reg   [7:0] weights3_addr_reg_3063;
wire   [63:0] tmp_2_fu_1999_p35;
reg   [63:0] tmp_2_reg_3069;
reg   [7:0] weights3_addr_1_reg_3074;
reg   [5:0] tmp_3_reg_3080;
wire   [63:0] tmp_4_fu_2081_p35;
reg   [63:0] tmp_4_reg_3086;
wire   [63:0] tmp_6_fu_2153_p35;
reg   [63:0] tmp_6_reg_3091;
wire   [63:0] tmp_7_fu_2225_p35;
reg   [63:0] tmp_7_reg_3096;
wire   [63:0] tmp_8_fu_2297_p35;
reg   [63:0] tmp_8_reg_3101;
wire   [63:0] tmp_9_fu_2369_p35;
reg   [63:0] tmp_9_reg_3106;
wire   [63:0] tmp_10_fu_2441_p35;
reg   [63:0] tmp_10_reg_3111;
wire   [63:0] tmp_11_fu_2513_p35;
reg   [63:0] tmp_11_reg_3116;
wire   [63:0] tmp_12_fu_2585_p35;
reg   [63:0] tmp_12_reg_3121;
wire   [63:0] tmp_13_fu_2657_p35;
reg   [63:0] tmp_13_reg_3126;
wire   [63:0] tmp_14_fu_2729_p35;
reg   [63:0] tmp_14_reg_3131;
reg   [63:0] weights3_load_reg_3136;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] weights3_load_1_reg_3141;
reg   [7:0] weights3_addr_2_reg_3146;
wire   [7:0] tmp_5_fu_2813_p3;
reg   [7:0] tmp_5_reg_3152;
reg   [7:0] weights3_addr_3_reg_3164;
reg   [63:0] weights3_load_2_reg_3170;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] weights3_load_3_reg_3175;
reg   [7:0] weights3_addr_4_reg_3180;
reg   [7:0] weights3_addr_5_reg_3186;
reg   [63:0] weights3_load_4_reg_3192;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] weights3_load_5_reg_3197;
reg   [7:0] weights3_addr_6_reg_3202;
reg   [7:0] weights3_addr_7_reg_3208;
reg   [63:0] weights3_load_6_reg_3214;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] weights3_load_7_reg_3219;
reg   [7:0] weights3_addr_8_reg_3224;
reg   [7:0] weights3_addr_9_reg_3230;
reg   [63:0] weights3_load_8_reg_3236;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] weights3_load_9_reg_3241;
reg   [7:0] weights3_addr_10_reg_3246;
reg   [7:0] weights3_addr_11_reg_3252;
reg   [63:0] weights3_load_10_reg_3258;
reg   [63:0] weights3_load_11_reg_3263;
wire   [63:0] bitcast_ln180_fu_2905_p1;
wire   [63:0] bitcast_ln180_2_fu_2909_p1;
wire   [63:0] bitcast_ln180_4_fu_2913_p1;
wire   [63:0] bitcast_ln180_6_fu_2917_p1;
wire   [63:0] bitcast_ln180_8_fu_2921_p1;
wire   [63:0] bitcast_ln180_10_fu_2925_p1;
wire   [63:0] bitcast_ln180_12_fu_2929_p1;
wire   [63:0] bitcast_ln180_14_fu_2933_p1;
wire   [63:0] bitcast_ln180_16_fu_2942_p1;
wire   [63:0] bitcast_ln180_18_fu_2951_p1;
wire   [63:0] bitcast_ln180_20_fu_2960_p1;
wire   [63:0] bitcast_ln180_22_fu_2969_p1;
reg   [63:0] sub168_1_2_reg_3328;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] sub168_2_reg_3335;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] mul177_3_reg_3347;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] mul177_3_1_reg_3352;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32_11001;
reg   [63:0] mul177_3_2_reg_3357;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
reg   [63:0] norm_11_reg_3362;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln180_fu_1899_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln180_1_fu_1994_p1;
wire   [63:0] zext_ln180_2_fu_2808_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln180_3_fu_2820_p1;
wire   [63:0] zext_ln180_4_fu_2830_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln180_5_fu_2840_p1;
wire   [63:0] zext_ln180_6_fu_2850_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln180_7_fu_2860_p1;
wire   [63:0] zext_ln180_8_fu_2870_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln180_9_fu_2880_p1;
wire   [63:0] zext_ln180_10_fu_2890_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln180_11_fu_2900_p1;
reg   [63:0] norm_fu_500;
wire   [63:0] grp_fu_1776_p2;
wire    ap_block_pp0_stage22;
wire    ap_loop_init;
wire    ap_block_pp0_stage23;
reg   [6:0] i_fu_504;
wire   [6:0] add_ln178_fu_3015_p2;
wire    ap_block_pp0_stage95_11001;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage22_01001;
reg    weights3_ce1_local;
reg   [7:0] weights3_address1_local;
reg    weights3_ce0_local;
reg   [7:0] weights3_address0_local;
reg    weights3_we0_local;
reg   [63:0] weights3_d0_local;
wire   [63:0] bitcast_ln180_1_fu_2937_p1;
wire    ap_block_pp0_stage16;
reg    weights3_we1_local;
reg   [63:0] weights3_d1_local;
wire   [63:0] bitcast_ln180_3_fu_2946_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] bitcast_ln180_5_fu_2955_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] bitcast_ln180_7_fu_2964_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln180_9_fu_2973_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] bitcast_ln180_11_fu_2978_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] bitcast_ln180_13_fu_2982_p1;
wire   [63:0] bitcast_ln180_15_fu_2990_p1;
wire   [63:0] bitcast_ln180_17_fu_2995_p1;
wire    ap_block_pp0_stage24;
wire   [63:0] bitcast_ln180_19_fu_3000_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] bitcast_ln180_21_fu_3005_p1;
wire    ap_block_pp0_stage26;
wire   [63:0] bitcast_ln180_23_fu_3010_p1;
wire    ap_block_pp0_stage27;
reg   [63:0] grp_fu_1772_p0;
reg   [63:0] grp_fu_1772_p1;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage31;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47;
wire    ap_CS_fsm_pp0_stage55;
wire    ap_block_pp0_stage55;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63;
wire    ap_CS_fsm_pp0_stage71;
wire    ap_block_pp0_stage71;
wire    ap_CS_fsm_pp0_stage79;
wire    ap_block_pp0_stage79;
wire    ap_CS_fsm_pp0_stage87;
wire    ap_block_pp0_stage87;
wire    ap_block_pp0_stage95;
wire    ap_block_pp0_stage7;
reg   [63:0] grp_fu_1780_p0;
reg   [63:0] grp_fu_1780_p1;
wire    ap_block_pp0_stage6;
wire   [5:0] trunc_ln178_fu_1881_p1;
wire   [7:0] p_shl_fu_1885_p3;
wire   [7:0] zext_ln178_fu_1877_p1;
wire   [7:0] empty_fu_1893_p2;
wire   [63:0] tmp_s_fu_1904_p33;
wire   [6:0] tmp_1_fu_1976_p4;
wire   [7:0] or_ln5_fu_1986_p3;
wire   [63:0] tmp_2_fu_1999_p33;
wire   [63:0] tmp_4_fu_2081_p33;
wire   [63:0] tmp_6_fu_2153_p33;
wire   [63:0] tmp_7_fu_2225_p33;
wire   [63:0] tmp_8_fu_2297_p33;
wire   [63:0] tmp_9_fu_2369_p33;
wire   [63:0] tmp_10_fu_2441_p33;
wire   [63:0] tmp_11_fu_2513_p33;
wire   [63:0] tmp_12_fu_2585_p33;
wire   [63:0] tmp_13_fu_2657_p33;
wire   [63:0] tmp_14_fu_2729_p33;
wire   [7:0] or_ln180_1_fu_2801_p3;
wire   [7:0] add_ln180_fu_2825_p2;
wire   [7:0] add_ln180_1_fu_2835_p2;
wire   [7:0] empty_40_fu_2845_p2;
wire   [7:0] add_ln180_2_fu_2855_p2;
wire   [7:0] add_ln180_3_fu_2865_p2;
wire   [7:0] empty_41_fu_2875_p2;
wire   [7:0] add_ln180_4_fu_2885_p2;
wire   [7:0] add_ln180_5_fu_2895_p2;
reg   [1:0] grp_fu_1772_opcode;
wire    ap_block_pp0_stage23_00001;
wire    ap_block_pp0_stage31_00001;
wire    ap_block_pp0_stage39_00001;
wire    ap_block_pp0_stage47_00001;
wire    ap_block_pp0_stage55_00001;
wire    ap_block_pp0_stage63_00001;
wire    ap_block_pp0_stage71_00001;
wire    ap_block_pp0_stage79_00001;
wire    ap_block_pp0_stage87_00001;
wire    ap_block_pp0_stage95_00001;
wire    ap_block_pp0_stage7_00001;
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
wire   [5:0] tmp_s_fu_1904_p1;
wire   [5:0] tmp_s_fu_1904_p3;
wire   [5:0] tmp_s_fu_1904_p5;
wire   [5:0] tmp_s_fu_1904_p7;
wire   [5:0] tmp_s_fu_1904_p9;
wire   [5:0] tmp_s_fu_1904_p11;
wire   [5:0] tmp_s_fu_1904_p13;
wire   [5:0] tmp_s_fu_1904_p15;
wire  signed [5:0] tmp_s_fu_1904_p17;
wire  signed [5:0] tmp_s_fu_1904_p19;
wire  signed [5:0] tmp_s_fu_1904_p21;
wire  signed [5:0] tmp_s_fu_1904_p23;
wire  signed [5:0] tmp_s_fu_1904_p25;
wire  signed [5:0] tmp_s_fu_1904_p27;
wire  signed [5:0] tmp_s_fu_1904_p29;
wire  signed [5:0] tmp_s_fu_1904_p31;
wire   [5:0] tmp_2_fu_1999_p1;
wire   [5:0] tmp_2_fu_1999_p3;
wire   [5:0] tmp_2_fu_1999_p5;
wire   [5:0] tmp_2_fu_1999_p7;
wire   [5:0] tmp_2_fu_1999_p9;
wire   [5:0] tmp_2_fu_1999_p11;
wire   [5:0] tmp_2_fu_1999_p13;
wire   [5:0] tmp_2_fu_1999_p15;
wire  signed [5:0] tmp_2_fu_1999_p17;
wire  signed [5:0] tmp_2_fu_1999_p19;
wire  signed [5:0] tmp_2_fu_1999_p21;
wire  signed [5:0] tmp_2_fu_1999_p23;
wire  signed [5:0] tmp_2_fu_1999_p25;
wire  signed [5:0] tmp_2_fu_1999_p27;
wire  signed [5:0] tmp_2_fu_1999_p29;
wire  signed [5:0] tmp_2_fu_1999_p31;
wire   [5:0] tmp_4_fu_2081_p1;
wire   [5:0] tmp_4_fu_2081_p3;
wire   [5:0] tmp_4_fu_2081_p5;
wire   [5:0] tmp_4_fu_2081_p7;
wire   [5:0] tmp_4_fu_2081_p9;
wire   [5:0] tmp_4_fu_2081_p11;
wire   [5:0] tmp_4_fu_2081_p13;
wire   [5:0] tmp_4_fu_2081_p15;
wire  signed [5:0] tmp_4_fu_2081_p17;
wire  signed [5:0] tmp_4_fu_2081_p19;
wire  signed [5:0] tmp_4_fu_2081_p21;
wire  signed [5:0] tmp_4_fu_2081_p23;
wire  signed [5:0] tmp_4_fu_2081_p25;
wire  signed [5:0] tmp_4_fu_2081_p27;
wire  signed [5:0] tmp_4_fu_2081_p29;
wire  signed [5:0] tmp_4_fu_2081_p31;
wire   [5:0] tmp_6_fu_2153_p1;
wire   [5:0] tmp_6_fu_2153_p3;
wire   [5:0] tmp_6_fu_2153_p5;
wire   [5:0] tmp_6_fu_2153_p7;
wire   [5:0] tmp_6_fu_2153_p9;
wire   [5:0] tmp_6_fu_2153_p11;
wire   [5:0] tmp_6_fu_2153_p13;
wire   [5:0] tmp_6_fu_2153_p15;
wire  signed [5:0] tmp_6_fu_2153_p17;
wire  signed [5:0] tmp_6_fu_2153_p19;
wire  signed [5:0] tmp_6_fu_2153_p21;
wire  signed [5:0] tmp_6_fu_2153_p23;
wire  signed [5:0] tmp_6_fu_2153_p25;
wire  signed [5:0] tmp_6_fu_2153_p27;
wire  signed [5:0] tmp_6_fu_2153_p29;
wire  signed [5:0] tmp_6_fu_2153_p31;
wire   [5:0] tmp_7_fu_2225_p1;
wire   [5:0] tmp_7_fu_2225_p3;
wire   [5:0] tmp_7_fu_2225_p5;
wire   [5:0] tmp_7_fu_2225_p7;
wire   [5:0] tmp_7_fu_2225_p9;
wire   [5:0] tmp_7_fu_2225_p11;
wire   [5:0] tmp_7_fu_2225_p13;
wire   [5:0] tmp_7_fu_2225_p15;
wire  signed [5:0] tmp_7_fu_2225_p17;
wire  signed [5:0] tmp_7_fu_2225_p19;
wire  signed [5:0] tmp_7_fu_2225_p21;
wire  signed [5:0] tmp_7_fu_2225_p23;
wire  signed [5:0] tmp_7_fu_2225_p25;
wire  signed [5:0] tmp_7_fu_2225_p27;
wire  signed [5:0] tmp_7_fu_2225_p29;
wire  signed [5:0] tmp_7_fu_2225_p31;
wire   [5:0] tmp_8_fu_2297_p1;
wire   [5:0] tmp_8_fu_2297_p3;
wire   [5:0] tmp_8_fu_2297_p5;
wire   [5:0] tmp_8_fu_2297_p7;
wire   [5:0] tmp_8_fu_2297_p9;
wire   [5:0] tmp_8_fu_2297_p11;
wire   [5:0] tmp_8_fu_2297_p13;
wire   [5:0] tmp_8_fu_2297_p15;
wire  signed [5:0] tmp_8_fu_2297_p17;
wire  signed [5:0] tmp_8_fu_2297_p19;
wire  signed [5:0] tmp_8_fu_2297_p21;
wire  signed [5:0] tmp_8_fu_2297_p23;
wire  signed [5:0] tmp_8_fu_2297_p25;
wire  signed [5:0] tmp_8_fu_2297_p27;
wire  signed [5:0] tmp_8_fu_2297_p29;
wire  signed [5:0] tmp_8_fu_2297_p31;
wire   [5:0] tmp_9_fu_2369_p1;
wire   [5:0] tmp_9_fu_2369_p3;
wire   [5:0] tmp_9_fu_2369_p5;
wire   [5:0] tmp_9_fu_2369_p7;
wire   [5:0] tmp_9_fu_2369_p9;
wire   [5:0] tmp_9_fu_2369_p11;
wire   [5:0] tmp_9_fu_2369_p13;
wire   [5:0] tmp_9_fu_2369_p15;
wire  signed [5:0] tmp_9_fu_2369_p17;
wire  signed [5:0] tmp_9_fu_2369_p19;
wire  signed [5:0] tmp_9_fu_2369_p21;
wire  signed [5:0] tmp_9_fu_2369_p23;
wire  signed [5:0] tmp_9_fu_2369_p25;
wire  signed [5:0] tmp_9_fu_2369_p27;
wire  signed [5:0] tmp_9_fu_2369_p29;
wire  signed [5:0] tmp_9_fu_2369_p31;
wire   [5:0] tmp_10_fu_2441_p1;
wire   [5:0] tmp_10_fu_2441_p3;
wire   [5:0] tmp_10_fu_2441_p5;
wire   [5:0] tmp_10_fu_2441_p7;
wire   [5:0] tmp_10_fu_2441_p9;
wire   [5:0] tmp_10_fu_2441_p11;
wire   [5:0] tmp_10_fu_2441_p13;
wire   [5:0] tmp_10_fu_2441_p15;
wire  signed [5:0] tmp_10_fu_2441_p17;
wire  signed [5:0] tmp_10_fu_2441_p19;
wire  signed [5:0] tmp_10_fu_2441_p21;
wire  signed [5:0] tmp_10_fu_2441_p23;
wire  signed [5:0] tmp_10_fu_2441_p25;
wire  signed [5:0] tmp_10_fu_2441_p27;
wire  signed [5:0] tmp_10_fu_2441_p29;
wire  signed [5:0] tmp_10_fu_2441_p31;
wire   [5:0] tmp_11_fu_2513_p1;
wire   [5:0] tmp_11_fu_2513_p3;
wire   [5:0] tmp_11_fu_2513_p5;
wire   [5:0] tmp_11_fu_2513_p7;
wire   [5:0] tmp_11_fu_2513_p9;
wire   [5:0] tmp_11_fu_2513_p11;
wire   [5:0] tmp_11_fu_2513_p13;
wire   [5:0] tmp_11_fu_2513_p15;
wire  signed [5:0] tmp_11_fu_2513_p17;
wire  signed [5:0] tmp_11_fu_2513_p19;
wire  signed [5:0] tmp_11_fu_2513_p21;
wire  signed [5:0] tmp_11_fu_2513_p23;
wire  signed [5:0] tmp_11_fu_2513_p25;
wire  signed [5:0] tmp_11_fu_2513_p27;
wire  signed [5:0] tmp_11_fu_2513_p29;
wire  signed [5:0] tmp_11_fu_2513_p31;
wire   [5:0] tmp_12_fu_2585_p1;
wire   [5:0] tmp_12_fu_2585_p3;
wire   [5:0] tmp_12_fu_2585_p5;
wire   [5:0] tmp_12_fu_2585_p7;
wire   [5:0] tmp_12_fu_2585_p9;
wire   [5:0] tmp_12_fu_2585_p11;
wire   [5:0] tmp_12_fu_2585_p13;
wire   [5:0] tmp_12_fu_2585_p15;
wire  signed [5:0] tmp_12_fu_2585_p17;
wire  signed [5:0] tmp_12_fu_2585_p19;
wire  signed [5:0] tmp_12_fu_2585_p21;
wire  signed [5:0] tmp_12_fu_2585_p23;
wire  signed [5:0] tmp_12_fu_2585_p25;
wire  signed [5:0] tmp_12_fu_2585_p27;
wire  signed [5:0] tmp_12_fu_2585_p29;
wire  signed [5:0] tmp_12_fu_2585_p31;
wire   [5:0] tmp_13_fu_2657_p1;
wire   [5:0] tmp_13_fu_2657_p3;
wire   [5:0] tmp_13_fu_2657_p5;
wire   [5:0] tmp_13_fu_2657_p7;
wire   [5:0] tmp_13_fu_2657_p9;
wire   [5:0] tmp_13_fu_2657_p11;
wire   [5:0] tmp_13_fu_2657_p13;
wire   [5:0] tmp_13_fu_2657_p15;
wire  signed [5:0] tmp_13_fu_2657_p17;
wire  signed [5:0] tmp_13_fu_2657_p19;
wire  signed [5:0] tmp_13_fu_2657_p21;
wire  signed [5:0] tmp_13_fu_2657_p23;
wire  signed [5:0] tmp_13_fu_2657_p25;
wire  signed [5:0] tmp_13_fu_2657_p27;
wire  signed [5:0] tmp_13_fu_2657_p29;
wire  signed [5:0] tmp_13_fu_2657_p31;
wire   [5:0] tmp_14_fu_2729_p1;
wire   [5:0] tmp_14_fu_2729_p3;
wire   [5:0] tmp_14_fu_2729_p5;
wire   [5:0] tmp_14_fu_2729_p7;
wire   [5:0] tmp_14_fu_2729_p9;
wire   [5:0] tmp_14_fu_2729_p11;
wire   [5:0] tmp_14_fu_2729_p13;
wire   [5:0] tmp_14_fu_2729_p15;
wire  signed [5:0] tmp_14_fu_2729_p17;
wire  signed [5:0] tmp_14_fu_2729_p19;
wire  signed [5:0] tmp_14_fu_2729_p21;
wire  signed [5:0] tmp_14_fu_2729_p23;
wire  signed [5:0] tmp_14_fu_2729_p25;
wire  signed [5:0] tmp_14_fu_2729_p27;
wire  signed [5:0] tmp_14_fu_2729_p29;
wire  signed [5:0] tmp_14_fu_2729_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 96'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_500 = 64'd0;
#0 i_fu_504 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1518(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1772_p0),.din1(grp_fu_1772_p1),.opcode(grp_fu_1772_opcode),.ce(1'b1),.dout(grp_fu_1772_p2));
backprop_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1519(.clk(ap_clk),.reset(ap_rst),.din0(norm_11_reg_3362),.din1(mul177_3_2_reg_3357),.ce(1'b1),.dout(grp_fu_1776_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_U1521(.din0(p_read),.din1(p_read12),.din2(p_read24),.din3(p_read36),.din4(p_read48),.din5(p_read60),.din6(p_read72),.din7(p_read84),.din8(p_read96),.din9(p_read108),.din10(p_read120),.din11(p_read132),.din12(p_read144),.din13(p_read156),.din14(p_read168),.din15(p_read180),.def(tmp_s_fu_1904_p33),.sel(trunc_ln178_fu_1881_p1),.dout(tmp_s_fu_1904_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_U1522(.din0(p_read1),.din1(p_read13),.din2(p_read25),.din3(p_read37),.din4(p_read49),.din5(p_read61),.din6(p_read73),.din7(p_read85),.din8(p_read97),.din9(p_read109),.din10(p_read121),.din11(p_read133),.din12(p_read145),.din13(p_read157),.din14(p_read169),.din15(p_read181),.def(tmp_2_fu_1999_p33),.sel(trunc_ln178_fu_1881_p1),.dout(tmp_2_fu_1999_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_U1523(.din0(p_read2),.din1(p_read14),.din2(p_read26),.din3(p_read38),.din4(p_read50),.din5(p_read62),.din6(p_read74),.din7(p_read86),.din8(p_read98),.din9(p_read110),.din10(p_read122),.din11(p_read134),.din12(p_read146),.din13(p_read158),.din14(p_read170),.din15(p_read182),.def(tmp_4_fu_2081_p33),.sel(trunc_ln178_fu_1881_p1),.dout(tmp_4_fu_2081_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_U1524(.din0(p_read3),.din1(p_read15),.din2(p_read27),.din3(p_read39),.din4(p_read51),.din5(p_read63),.din6(p_read75),.din7(p_read87),.din8(p_read99),.din9(p_read111),.din10(p_read123),.din11(p_read135),.din12(p_read147),.din13(p_read159),.din14(p_read171),.din15(p_read183),.def(tmp_6_fu_2153_p33),.sel(trunc_ln178_fu_1881_p1),.dout(tmp_6_fu_2153_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_U1525(.din0(p_read4),.din1(p_read16),.din2(p_read28),.din3(p_read40),.din4(p_read52),.din5(p_read64),.din6(p_read76),.din7(p_read88),.din8(p_read100),.din9(p_read112),.din10(p_read124),.din11(p_read136),.din12(p_read148),.din13(p_read160),.din14(p_read172),.din15(p_read184),.def(tmp_7_fu_2225_p33),.sel(trunc_ln178_fu_1881_p1),.dout(tmp_7_fu_2225_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_U1526(.din0(p_read5),.din1(p_read17),.din2(p_read29),.din3(p_read41),.din4(p_read53),.din5(p_read65),.din6(p_read77),.din7(p_read89),.din8(p_read101),.din9(p_read113),.din10(p_read125),.din11(p_read137),.din12(p_read149),.din13(p_read161),.din14(p_read173),.din15(p_read185),.def(tmp_8_fu_2297_p33),.sel(trunc_ln178_fu_1881_p1),.dout(tmp_8_fu_2297_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_U1527(.din0(p_read6),.din1(p_read18),.din2(p_read30),.din3(p_read42),.din4(p_read54),.din5(p_read66),.din6(p_read78),.din7(p_read90),.din8(p_read102),.din9(p_read114),.din10(p_read126),.din11(p_read138),.din12(p_read150),.din13(p_read162),.din14(p_read174),.din15(p_read186),.def(tmp_9_fu_2369_p33),.sel(trunc_ln178_fu_1881_p1),.dout(tmp_9_fu_2369_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_U1528(.din0(p_read7),.din1(p_read19),.din2(p_read31),.din3(p_read43),.din4(p_read55),.din5(p_read67),.din6(p_read79),.din7(p_read91),.din8(p_read103),.din9(p_read115),.din10(p_read127),.din11(p_read139),.din12(p_read151),.din13(p_read163),.din14(p_read175),.din15(p_read187),.def(tmp_10_fu_2441_p33),.sel(trunc_ln178_fu_1881_p1),.dout(tmp_10_fu_2441_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_U1529(.din0(p_read8),.din1(p_read20),.din2(p_read32),.din3(p_read44),.din4(p_read56),.din5(p_read68),.din6(p_read80),.din7(p_read92),.din8(p_read104),.din9(p_read116),.din10(p_read128),.din11(p_read140),.din12(p_read152),.din13(p_read164),.din14(p_read176),.din15(p_read188),.def(tmp_11_fu_2513_p33),.sel(trunc_ln178_fu_1881_p1),.dout(tmp_11_fu_2513_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_U1530(.din0(p_read9),.din1(p_read21),.din2(p_read33),.din3(p_read45),.din4(p_read57),.din5(p_read69),.din6(p_read81),.din7(p_read93),.din8(p_read105),.din9(p_read117),.din10(p_read129),.din11(p_read141),.din12(p_read153),.din13(p_read165),.din14(p_read177),.din15(p_read189),.def(tmp_12_fu_2585_p33),.sel(trunc_ln178_fu_1881_p1),.dout(tmp_12_fu_2585_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_U1531(.din0(p_read10),.din1(p_read22),.din2(p_read34),.din3(p_read46),.din4(p_read58),.din5(p_read70),.din6(p_read82),.din7(p_read94),.din8(p_read106),.din9(p_read118),.din10(p_read130),.din11(p_read142),.din12(p_read154),.din13(p_read166),.din14(p_read178),.din15(p_read190),.def(tmp_13_fu_2657_p33),.sel(trunc_ln178_fu_1881_p1),.dout(tmp_13_fu_2657_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h4 ),.din1_WIDTH( 64 ),.CASE2( 6'h8 ),.din2_WIDTH( 64 ),.CASE3( 6'hC ),.din3_WIDTH( 64 ),.CASE4( 6'h10 ),.din4_WIDTH( 64 ),.CASE5( 6'h14 ),.din5_WIDTH( 64 ),.CASE6( 6'h18 ),.din6_WIDTH( 64 ),.CASE7( 6'h1C ),.din7_WIDTH( 64 ),.CASE8( 6'h20 ),.din8_WIDTH( 64 ),.CASE9( 6'h24 ),.din9_WIDTH( 64 ),.CASE10( 6'h28 ),.din10_WIDTH( 64 ),.CASE11( 6'h2C ),.din11_WIDTH( 64 ),.CASE12( 6'h30 ),.din12_WIDTH( 64 ),.CASE13( 6'h34 ),.din13_WIDTH( 64 ),.CASE14( 6'h38 ),.din14_WIDTH( 64 ),.CASE15( 6'h3C ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_33_6_64_1_1_U1532(.din0(p_read11),.din1(p_read23),.din2(p_read35),.din3(p_read47),.din4(p_read59),.din5(p_read71),.din6(p_read83),.din7(p_read95),.din8(p_read107),.din9(p_read119),.din10(p_read131),.din11(p_read143),.din12(p_read155),.din13(p_read167),.din14(p_read179),.din15(p_read191),.def(tmp_14_fu_2729_p33),.sel(trunc_ln178_fu_1881_p1),.dout(tmp_14_fu_2729_p35));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage22),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage22) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage22)) begin
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
        if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage95) & (1'b0 == ap_block_pp0_stage95_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_fu_504 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage95) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage95_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        i_fu_504 <= add_ln178_fu_3015_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        norm_fu_500 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        norm_fu_500 <= grp_fu_1776_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_1_reg_3049 <= ap_sig_allocacmp_i_1;
        tmp_10_reg_3111 <= tmp_10_fu_2441_p35;
        tmp_11_reg_3116 <= tmp_11_fu_2513_p35;
        tmp_12_reg_3121 <= tmp_12_fu_2585_p35;
        tmp_13_reg_3126 <= tmp_13_fu_2657_p35;
        tmp_14_reg_3131 <= tmp_14_fu_2729_p35;
        tmp_2_reg_3069 <= tmp_2_fu_1999_p35;
        tmp_3_reg_3080 <= {{empty_fu_1893_p2[7:2]}};
        tmp_4_reg_3086 <= tmp_4_fu_2081_p35;
        tmp_6_reg_3091 <= tmp_6_fu_2153_p35;
        tmp_7_reg_3096 <= tmp_7_fu_2225_p35;
        tmp_8_reg_3101 <= tmp_8_fu_2297_p35;
        tmp_9_reg_3106 <= tmp_9_fu_2369_p35;
        tmp_reg_3054 <= ap_sig_allocacmp_i_1[32'd6];
        tmp_s_reg_3058 <= tmp_s_fu_1904_p35;
        weights3_addr_1_reg_3074[7 : 1] <= zext_ln180_1_fu_1994_p1[7 : 1];
        weights3_addr_reg_3063 <= zext_ln180_fu_1899_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage32) & (1'b0 == ap_block_pp0_stage32_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul177_3_1_reg_3352 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage33) & (1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul177_3_2_reg_3357 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mul177_3_reg_3347 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        norm_11_reg_3362 <= grp_fu_1772_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1785 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1790 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1795 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1800 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage30) & (1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1805 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1810 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage28) & (1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1815 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage29) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1820 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage94) & (1'b0 == ap_block_pp0_stage94_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage86) & (1'b0 == ap_block_pp0_stage86_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage78) & (1'b0 == ap_block_pp0_stage78_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage70) & (1'b0 == ap_block_pp0_stage70_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage62) & (1'b0 == ap_block_pp0_stage62_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage54) & (1'b0 == ap_block_pp0_stage54_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage46) & (1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage38) & (1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage30)& (1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1825 <= grp_fu_1772_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1832 <= grp_fu_1772_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1838 <= grp_fu_1772_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1844 <= grp_fu_1772_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        reg_1850 <= grp_fu_1772_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        sub168_1_2_reg_3328 <= grp_fu_1772_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        sub168_2_reg_3335 <= grp_fu_1772_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        tmp_5_reg_3152[7 : 2] <= tmp_5_fu_2813_p3[7 : 2];
        weights3_addr_2_reg_3146[7 : 2] <= zext_ln180_2_fu_2808_p1[7 : 2];
        weights3_addr_3_reg_3164[7 : 2] <= zext_ln180_3_fu_2820_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        weights3_addr_10_reg_3246[7 : 2] <= zext_ln180_10_fu_2890_p1[7 : 2];
        weights3_addr_11_reg_3252[7 : 2] <= zext_ln180_11_fu_2900_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        weights3_addr_4_reg_3180[7 : 2] <= zext_ln180_4_fu_2830_p1[7 : 2];
        weights3_addr_5_reg_3186[7 : 2] <= zext_ln180_5_fu_2840_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        weights3_addr_6_reg_3202[7 : 2] <= zext_ln180_6_fu_2850_p1[7 : 2];
        weights3_addr_7_reg_3208[7 : 2] <= zext_ln180_7_fu_2860_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        weights3_addr_8_reg_3224[7 : 2] <= zext_ln180_8_fu_2870_p1[7 : 2];
        weights3_addr_9_reg_3230[7 : 2] <= zext_ln180_9_fu_2880_p1[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_load_10_reg_3258 <= weights3_q1;
        weights3_load_11_reg_3263 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_load_1_reg_3141 <= weights3_q0;
        weights3_load_reg_3136 <= weights3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_load_2_reg_3170 <= weights3_q1;
        weights3_load_3_reg_3175 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_load_4_reg_3192 <= weights3_q1;
        weights3_load_5_reg_3197 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_load_6_reg_3214 <= weights3_q1;
        weights3_load_7_reg_3219 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        weights3_load_8_reg_3236 <= weights3_q1;
        weights3_load_9_reg_3241 <= weights3_q0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (tmp_reg_3054 == 1'd1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        ap_condition_exit_pp0_iter0_stage22 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage22 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone))) begin
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
        ap_sig_allocacmp_i_1 = i_fu_504;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage19_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage14) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage13) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage13_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage18_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage17_00001)& (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage16_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage15) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1772_opcode = 2'd1;
end else if ((((1'b1 == ap_CS_fsm_pp0_stage31) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage31_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage23_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage95) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage95_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage87) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage87_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage79) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage79_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage71) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage71_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage63) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage63_00001) &(ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage55) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage55_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage47) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage47_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage39) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage39_00001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1772_opcode = 2'd0;
    end else begin
        grp_fu_1772_opcode = 'bx;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage95) & (1'b0 == ap_block_pp0_stage95) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage87) & (1'b0 == ap_block_pp0_stage87) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage79) & (1'b0 == ap_block_pp0_stage79) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage71) & (1'b0 == ap_block_pp0_stage71) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage63) & (1'b0 == ap_block_pp0_stage63) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage55) & (1'b0 == ap_block_pp0_stage55) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage47) & (1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage39) & (1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter0== 1'b1)))) begin
        grp_fu_1772_p0 = reg_1825;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = norm_fu_500;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = bitcast_ln180_22_fu_2969_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = bitcast_ln180_20_fu_2960_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = bitcast_ln180_18_fu_2951_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = bitcast_ln180_16_fu_2942_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = bitcast_ln180_14_fu_2933_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = bitcast_ln180_12_fu_2929_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = bitcast_ln180_10_fu_2925_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = bitcast_ln180_8_fu_2921_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = bitcast_ln180_6_fu_2917_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = bitcast_ln180_4_fu_2913_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = bitcast_ln180_2_fu_2909_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p0 = bitcast_ln180_fu_2905_p1;
    end else begin
        grp_fu_1772_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        grp_fu_1772_p1 = mul177_3_1_reg_3352;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage95) & (1'b0 == ap_block_pp0_stage95) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1772_p1 = mul177_3_reg_3347;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage15) & (1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage79) & (1'b0 == ap_block_pp0_stage79) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1772_p1 = reg_1820;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage14) & (1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage71) & (1'b0 == ap_block_pp0_stage71) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1772_p1 = reg_1815;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage13) & (1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage63) & (1'b0 == ap_block_pp0_stage63) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1772_p1 = reg_1810;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage87) & (1'b0 == ap_block_pp0_stage87) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1772_p1 = reg_1805;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage55) & (1'b0 == ap_block_pp0_stage55) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1772_p1 = reg_1800;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage47) & (1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1772_p1 = reg_1795;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage39) & (1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1772_p1 = reg_1790;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage31) & (1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1772_p1 = reg_1785;
    end else begin
        grp_fu_1772_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = sub168_2_reg_3335;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = sub168_1_2_reg_3328;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1780_p0 = reg_1850;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1780_p0 = reg_1844;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1780_p0 = reg_1838;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1780_p0 = reg_1832;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1780_p0 = reg_1825;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = tmp_14_reg_3131;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = tmp_13_reg_3126;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = tmp_12_reg_3121;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = tmp_11_reg_3116;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = tmp_10_reg_3111;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = tmp_9_reg_3106;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = tmp_8_reg_3101;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = tmp_7_reg_3096;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = tmp_6_reg_3091;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = tmp_4_reg_3086;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = tmp_2_reg_3069;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p0 = tmp_s_reg_3058;
    end else begin
        grp_fu_1780_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p1 = sub168_2_reg_3335;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        grp_fu_1780_p1 = sub168_1_2_reg_3328;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1780_p1 = reg_1850;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1780_p1 = reg_1844;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1780_p1 = reg_1838;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1780_p1 = reg_1832;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1780_p1 = reg_1825;
end else if ((((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage12) & (1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage11) & (1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage10) & (1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage9) & (1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0== 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage8) & (1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage7) & (1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        grp_fu_1780_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1780_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage22) & (ap_loop_exit_ready == 1'b1) & (tmp_reg_3054 == 1'd1) & (1'b0 == ap_block_pp0_stage22_11001))) begin
        norm_12_out_ap_vld = 1'b1;
    end else begin
        norm_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26))) begin
            weights3_address0_local = weights3_addr_10_reg_3246;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24))) begin
            weights3_address0_local = weights3_addr_8_reg_3224;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22))) begin
            weights3_address0_local = weights3_addr_6_reg_3202;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_address0_local = weights3_addr_4_reg_3180;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_address0_local = weights3_addr_2_reg_3146;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16))) begin
            weights3_address0_local = weights3_addr_reg_3063;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            weights3_address0_local = zext_ln180_11_fu_2900_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            weights3_address0_local = zext_ln180_9_fu_2880_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            weights3_address0_local = zext_ln180_7_fu_2860_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            weights3_address0_local = zext_ln180_5_fu_2840_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_address0_local = zext_ln180_3_fu_2820_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_address0_local = zext_ln180_1_fu_1994_p1;
        end else begin
            weights3_address0_local = 'bx;
        end
    end else begin
        weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27))) begin
            weights3_address1_local = weights3_addr_11_reg_3252;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25))) begin
            weights3_address1_local = weights3_addr_9_reg_3230;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23))) begin
            weights3_address1_local = weights3_addr_7_reg_3208;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21))) begin
            weights3_address1_local = weights3_addr_5_reg_3186;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_address1_local = weights3_addr_3_reg_3164;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_address1_local = weights3_addr_1_reg_3074;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
            weights3_address1_local = zext_ln180_10_fu_2890_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            weights3_address1_local = zext_ln180_8_fu_2870_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            weights3_address1_local = zext_ln180_6_fu_2850_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            weights3_address1_local = zext_ln180_4_fu_2830_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
            weights3_address1_local = zext_ln180_2_fu_2808_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            weights3_address1_local = zext_ln180_fu_1899_p1;
        end else begin
            weights3_address1_local = 'bx;
        end
    end else begin
        weights3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) &(1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_ce0_local = 1'b1;
    end else begin
        weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) &(1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_ce1_local = 1'b1;
    end else begin
        weights3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage26) & (1'b0 == ap_block_pp0_stage26))) begin
            weights3_d0_local = bitcast_ln180_21_fu_3005_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage24) & (1'b0 == ap_block_pp0_stage24))) begin
            weights3_d0_local = bitcast_ln180_17_fu_2995_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage22) & (1'b0 == ap_block_pp0_stage22))) begin
            weights3_d0_local = bitcast_ln180_13_fu_2982_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage20) & (1'b0 == ap_block_pp0_stage20))) begin
            weights3_d0_local = bitcast_ln180_9_fu_2973_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage18) & (1'b0 == ap_block_pp0_stage18))) begin
            weights3_d0_local = bitcast_ln180_5_fu_2955_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage16) & (1'b0 == ap_block_pp0_stage16))) begin
            weights3_d0_local = bitcast_ln180_1_fu_2937_p1;
        end else begin
            weights3_d0_local = 'bx;
        end
    end else begin
        weights3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage27) & (1'b0 == ap_block_pp0_stage27))) begin
            weights3_d1_local = bitcast_ln180_23_fu_3010_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage25) & (1'b0 == ap_block_pp0_stage25))) begin
            weights3_d1_local = bitcast_ln180_19_fu_3000_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage23) & (1'b0 == ap_block_pp0_stage23))) begin
            weights3_d1_local = bitcast_ln180_15_fu_2990_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage21) & (1'b0 == ap_block_pp0_stage21))) begin
            weights3_d1_local = bitcast_ln180_11_fu_2978_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage19) & (1'b0 == ap_block_pp0_stage19))) begin
            weights3_d1_local = bitcast_ln180_7_fu_2964_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage17) & (1'b0 == ap_block_pp0_stage17))) begin
            weights3_d1_local = bitcast_ln180_3_fu_2946_p1;
        end else begin
            weights3_d1_local = 'bx;
        end
    end else begin
        weights3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage20) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage26) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage18) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage24) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage16) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage22) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_we0_local = 1'b1;
    end else begin
        weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage21) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage19) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage27) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage25) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage17) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage23) & (tmp_reg_3054 == 1'd0) & (1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        weights3_we1_local = 1'b1;
    end else begin
        weights3_we1_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage22)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
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
assign add_ln178_fu_3015_p2 = (i_1_reg_3049 + 7'd4);
assign add_ln180_1_fu_2835_p2 = (tmp_5_reg_3152 + 8'd2);
assign add_ln180_2_fu_2855_p2 = (tmp_5_reg_3152 + 8'd4);
assign add_ln180_3_fu_2865_p2 = (tmp_5_reg_3152 + 8'd5);
assign add_ln180_4_fu_2885_p2 = (tmp_5_reg_3152 + 8'd7);
assign add_ln180_5_fu_2895_p2 = (tmp_5_reg_3152 + 8'd8);
assign add_ln180_fu_2825_p2 = (tmp_5_reg_3152 + 8'd1);
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
assign ap_CS_fsm_pp0_stage38 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_pp0_stage39 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage46 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage54 = ap_CS_fsm[32'd54];
assign ap_CS_fsm_pp0_stage55 = ap_CS_fsm[32'd55];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage62 = ap_CS_fsm[32'd62];
assign ap_CS_fsm_pp0_stage63 = ap_CS_fsm[32'd63];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage70 = ap_CS_fsm[32'd70];
assign ap_CS_fsm_pp0_stage71 = ap_CS_fsm[32'd71];
assign ap_CS_fsm_pp0_stage78 = ap_CS_fsm[32'd78];
assign ap_CS_fsm_pp0_stage79 = ap_CS_fsm[32'd79];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage86 = ap_CS_fsm[32'd86];
assign ap_CS_fsm_pp0_stage87 = ap_CS_fsm[32'd87];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage94 = ap_CS_fsm[32'd94];
assign ap_CS_fsm_pp0_stage95 = ap_CS_fsm[32'd95];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage64_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage65_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage66_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage67_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage68_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage69_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage70_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage70_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage71 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage71_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage71_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage72_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage73_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage74_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage75_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage76_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage77_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage78_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage78_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage79 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage79_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage79_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage80_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage81_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage82_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage83_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage84_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage85_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage86_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage86_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage87 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage87_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage87_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage94_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage94_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage95 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage95_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage95_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage95_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage22;
assign ap_ready = ap_ready_sig;
assign bitcast_ln180_10_fu_2925_p1 = weights3_load_5_reg_3197;
assign bitcast_ln180_11_fu_2978_p1 = sub168_1_2_reg_3328;
assign bitcast_ln180_12_fu_2929_p1 = weights3_load_6_reg_3214;
assign bitcast_ln180_13_fu_2982_p1 = sub168_2_reg_3335;
assign bitcast_ln180_14_fu_2933_p1 = weights3_load_7_reg_3219;
assign bitcast_ln180_15_fu_2990_p1 = reg_1825;
assign bitcast_ln180_16_fu_2942_p1 = weights3_load_8_reg_3236;
assign bitcast_ln180_17_fu_2995_p1 = reg_1832;
assign bitcast_ln180_18_fu_2951_p1 = weights3_load_9_reg_3241;
assign bitcast_ln180_19_fu_3000_p1 = reg_1838;
assign bitcast_ln180_1_fu_2937_p1 = reg_1825;
assign bitcast_ln180_20_fu_2960_p1 = weights3_load_10_reg_3258;
assign bitcast_ln180_21_fu_3005_p1 = reg_1844;
assign bitcast_ln180_22_fu_2969_p1 = weights3_load_11_reg_3263;
assign bitcast_ln180_23_fu_3010_p1 = reg_1850;
assign bitcast_ln180_2_fu_2909_p1 = weights3_load_1_reg_3141;
assign bitcast_ln180_3_fu_2946_p1 = reg_1832;
assign bitcast_ln180_4_fu_2913_p1 = weights3_load_2_reg_3170;
assign bitcast_ln180_5_fu_2955_p1 = reg_1838;
assign bitcast_ln180_6_fu_2917_p1 = weights3_load_3_reg_3175;
assign bitcast_ln180_7_fu_2964_p1 = reg_1844;
assign bitcast_ln180_8_fu_2921_p1 = weights3_load_4_reg_3192;
assign bitcast_ln180_9_fu_2973_p1 = reg_1850;
assign bitcast_ln180_fu_2905_p1 = weights3_load_reg_3136;
assign empty_40_fu_2845_p2 = (tmp_5_reg_3152 + 8'd3);
assign empty_41_fu_2875_p2 = (tmp_5_reg_3152 + 8'd6);
assign empty_fu_1893_p2 = (p_shl_fu_1885_p3 - zext_ln178_fu_1877_p1);
assign grp_fu_5305_p_ce = 1'b1;
assign grp_fu_5305_p_din0 = grp_fu_1780_p0;
assign grp_fu_5305_p_din1 = grp_fu_1780_p1;
assign norm_12_out = norm_fu_500;
assign or_ln180_1_fu_2801_p3 = {{tmp_3_reg_3080}, {2'd2}};
assign or_ln5_fu_1986_p3 = {{tmp_1_fu_1976_p4}, {1'd1}};
assign p_shl_fu_1885_p3 = {{trunc_ln178_fu_1881_p1}, {2'd0}};
assign tmp_10_fu_2441_p33 = 'bx;
assign tmp_11_fu_2513_p33 = 'bx;
assign tmp_12_fu_2585_p33 = 'bx;
assign tmp_13_fu_2657_p33 = 'bx;
assign tmp_14_fu_2729_p33 = 'bx;
assign tmp_1_fu_1976_p4 = {{empty_fu_1893_p2[7:1]}};
assign tmp_2_fu_1999_p33 = 'bx;
assign tmp_4_fu_2081_p33 = 'bx;
assign tmp_5_fu_2813_p3 = {{tmp_3_reg_3080}, {2'd3}};
assign tmp_6_fu_2153_p33 = 'bx;
assign tmp_7_fu_2225_p33 = 'bx;
assign tmp_8_fu_2297_p33 = 'bx;
assign tmp_9_fu_2369_p33 = 'bx;
assign tmp_s_fu_1904_p33 = 'bx;
assign trunc_ln178_fu_1881_p1 = ap_sig_allocacmp_i_1[5:0];
assign weights3_address0 = weights3_address0_local;
assign weights3_address1 = weights3_address1_local;
assign weights3_ce0 = weights3_ce0_local;
assign weights3_ce1 = weights3_ce1_local;
assign weights3_d0 = weights3_d0_local;
assign weights3_d1 = weights3_d1_local;
assign weights3_we0 = weights3_we0_local;
assign weights3_we1 = weights3_we1_local;
assign zext_ln178_fu_1877_p1 = ap_sig_allocacmp_i_1;
assign zext_ln180_10_fu_2890_p1 = add_ln180_4_fu_2885_p2;
assign zext_ln180_11_fu_2900_p1 = add_ln180_5_fu_2895_p2;
assign zext_ln180_1_fu_1994_p1 = or_ln5_fu_1986_p3;
assign zext_ln180_2_fu_2808_p1 = or_ln180_1_fu_2801_p3;
assign zext_ln180_3_fu_2820_p1 = tmp_5_fu_2813_p3;
assign zext_ln180_4_fu_2830_p1 = add_ln180_fu_2825_p2;
assign zext_ln180_5_fu_2840_p1 = add_ln180_1_fu_2835_p2;
assign zext_ln180_6_fu_2850_p1 = empty_40_fu_2845_p2;
assign zext_ln180_7_fu_2860_p1 = add_ln180_2_fu_2855_p2;
assign zext_ln180_8_fu_2870_p1 = add_ln180_3_fu_2865_p2;
assign zext_ln180_9_fu_2880_p1 = empty_41_fu_2875_p2;
assign zext_ln180_fu_1899_p1 = empty_fu_1893_p2;
always @ (posedge ap_clk) begin
    weights3_addr_1_reg_3074[0] <= 1'b1;
    weights3_addr_2_reg_3146[1:0] <= 2'b10;
    tmp_5_reg_3152[1:0] <= 2'b11;
    weights3_addr_3_reg_3164[1:0] <= 2'b11;
    weights3_addr_4_reg_3180[1:0] <= 2'b00;
    weights3_addr_5_reg_3186[1:0] <= 2'b01;
    weights3_addr_6_reg_3202[1:0] <= 2'b10;
    weights3_addr_7_reg_3208[1:0] <= 2'b11;
    weights3_addr_8_reg_3224[1:0] <= 2'b00;
    weights3_addr_9_reg_3230[1:0] <= 2'b01;
    weights3_addr_10_reg_3246[1:0] <= 2'b10;
    weights3_addr_11_reg_3252[1:0] <= 2'b11;
end
endmodule 
