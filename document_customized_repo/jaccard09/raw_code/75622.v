module backprop_update_weights_1_Pipeline_up_weight_loop9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,p_read,p_read6,p_read12,p_read18,p_read24,p_read30,p_read36,p_read42,p_read48,p_read54,p_read60,p_read66,p_read72,p_read78,p_read84,p_read90,p_read96,p_read102,p_read108,p_read114,p_read120,p_read126,p_read132,p_read138,p_read144,p_read150,p_read156,p_read162,p_read168,p_read174,p_read180,p_read186,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_we1,weights3_d1,weights3_q1,p_read1,p_read7,p_read13,p_read19,p_read25,p_read31,p_read37,p_read43,p_read49,p_read55,p_read61,p_read67,p_read73,p_read79,p_read85,p_read91,p_read97,p_read103,p_read109,p_read115,p_read121,p_read127,p_read133,p_read139,p_read145,p_read151,p_read157,p_read163,p_read169,p_read175,p_read181,p_read187,p_read2,p_read8,p_read14,p_read20,p_read26,p_read32,p_read38,p_read44,p_read50,p_read56,p_read62,p_read68,p_read74,p_read80,p_read86,p_read92,p_read98,p_read104,p_read110,p_read116,p_read122,p_read128,p_read134,p_read140,p_read146,p_read152,p_read158,p_read164,p_read170,p_read176,p_read182,p_read188,p_read3,p_read9,p_read15,p_read21,p_read27,p_read33,p_read39,p_read45,p_read51,p_read57,p_read63,p_read69,p_read75,p_read81,p_read87,p_read93,p_read99,p_read105,p_read111,p_read117,p_read123,p_read129,p_read135,p_read141,p_read147,p_read153,p_read159,p_read165,p_read171,p_read177,p_read183,p_read189,p_read4,p_read10,p_read16,p_read22,p_read28,p_read34,p_read40,p_read46,p_read52,p_read58,p_read64,p_read70,p_read76,p_read82,p_read88,p_read94,p_read100,p_read106,p_read112,p_read118,p_read124,p_read130,p_read136,p_read142,p_read148,p_read154,p_read160,p_read166,p_read172,p_read178,p_read184,p_read190,p_read5,p_read11,p_read17,p_read23,p_read29,p_read35,p_read41,p_read47,p_read53,p_read59,p_read65,p_read71,p_read77,p_read83,p_read89,p_read95,p_read101,p_read107,p_read113,p_read119,p_read125,p_read131,p_read137,p_read143,p_read149,p_read155,p_read161,p_read167,p_read173,p_read179,p_read185,p_read191,norm_8_out,norm_8_out_ap_vld,grp_fu_5305_p_din0,grp_fu_5305_p_din1,grp_fu_5305_p_dout0,grp_fu_5305_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 48'd1;
parameter    ap_ST_fsm_pp0_stage1 = 48'd2;
parameter    ap_ST_fsm_pp0_stage2 = 48'd4;
parameter    ap_ST_fsm_pp0_stage3 = 48'd8;
parameter    ap_ST_fsm_pp0_stage4 = 48'd16;
parameter    ap_ST_fsm_pp0_stage5 = 48'd32;
parameter    ap_ST_fsm_pp0_stage6 = 48'd64;
parameter    ap_ST_fsm_pp0_stage7 = 48'd128;
parameter    ap_ST_fsm_pp0_stage8 = 48'd256;
parameter    ap_ST_fsm_pp0_stage9 = 48'd512;
parameter    ap_ST_fsm_pp0_stage10 = 48'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 48'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 48'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 48'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 48'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 48'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 48'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 48'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 48'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 48'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 48'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 48'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 48'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 48'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 48'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 48'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 48'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 48'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 48'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 48'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 48'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 48'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 48'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 48'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 48'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 48'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 48'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 48'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 48'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 48'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 48'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 48'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 48'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 48'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 48'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 48'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 48'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 48'd140737488355328;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] p_read;
input  [63:0] p_read6;
input  [63:0] p_read12;
input  [63:0] p_read18;
input  [63:0] p_read24;
input  [63:0] p_read30;
input  [63:0] p_read36;
input  [63:0] p_read42;
input  [63:0] p_read48;
input  [63:0] p_read54;
input  [63:0] p_read60;
input  [63:0] p_read66;
input  [63:0] p_read72;
input  [63:0] p_read78;
input  [63:0] p_read84;
input  [63:0] p_read90;
input  [63:0] p_read96;
input  [63:0] p_read102;
input  [63:0] p_read108;
input  [63:0] p_read114;
input  [63:0] p_read120;
input  [63:0] p_read126;
input  [63:0] p_read132;
input  [63:0] p_read138;
input  [63:0] p_read144;
input  [63:0] p_read150;
input  [63:0] p_read156;
input  [63:0] p_read162;
input  [63:0] p_read168;
input  [63:0] p_read174;
input  [63:0] p_read180;
input  [63:0] p_read186;
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
input  [63:0] p_read7;
input  [63:0] p_read13;
input  [63:0] p_read19;
input  [63:0] p_read25;
input  [63:0] p_read31;
input  [63:0] p_read37;
input  [63:0] p_read43;
input  [63:0] p_read49;
input  [63:0] p_read55;
input  [63:0] p_read61;
input  [63:0] p_read67;
input  [63:0] p_read73;
input  [63:0] p_read79;
input  [63:0] p_read85;
input  [63:0] p_read91;
input  [63:0] p_read97;
input  [63:0] p_read103;
input  [63:0] p_read109;
input  [63:0] p_read115;
input  [63:0] p_read121;
input  [63:0] p_read127;
input  [63:0] p_read133;
input  [63:0] p_read139;
input  [63:0] p_read145;
input  [63:0] p_read151;
input  [63:0] p_read157;
input  [63:0] p_read163;
input  [63:0] p_read169;
input  [63:0] p_read175;
input  [63:0] p_read181;
input  [63:0] p_read187;
input  [63:0] p_read2;
input  [63:0] p_read8;
input  [63:0] p_read14;
input  [63:0] p_read20;
input  [63:0] p_read26;
input  [63:0] p_read32;
input  [63:0] p_read38;
input  [63:0] p_read44;
input  [63:0] p_read50;
input  [63:0] p_read56;
input  [63:0] p_read62;
input  [63:0] p_read68;
input  [63:0] p_read74;
input  [63:0] p_read80;
input  [63:0] p_read86;
input  [63:0] p_read92;
input  [63:0] p_read98;
input  [63:0] p_read104;
input  [63:0] p_read110;
input  [63:0] p_read116;
input  [63:0] p_read122;
input  [63:0] p_read128;
input  [63:0] p_read134;
input  [63:0] p_read140;
input  [63:0] p_read146;
input  [63:0] p_read152;
input  [63:0] p_read158;
input  [63:0] p_read164;
input  [63:0] p_read170;
input  [63:0] p_read176;
input  [63:0] p_read182;
input  [63:0] p_read188;
input  [63:0] p_read3;
input  [63:0] p_read9;
input  [63:0] p_read15;
input  [63:0] p_read21;
input  [63:0] p_read27;
input  [63:0] p_read33;
input  [63:0] p_read39;
input  [63:0] p_read45;
input  [63:0] p_read51;
input  [63:0] p_read57;
input  [63:0] p_read63;
input  [63:0] p_read69;
input  [63:0] p_read75;
input  [63:0] p_read81;
input  [63:0] p_read87;
input  [63:0] p_read93;
input  [63:0] p_read99;
input  [63:0] p_read105;
input  [63:0] p_read111;
input  [63:0] p_read117;
input  [63:0] p_read123;
input  [63:0] p_read129;
input  [63:0] p_read135;
input  [63:0] p_read141;
input  [63:0] p_read147;
input  [63:0] p_read153;
input  [63:0] p_read159;
input  [63:0] p_read165;
input  [63:0] p_read171;
input  [63:0] p_read177;
input  [63:0] p_read183;
input  [63:0] p_read189;
input  [63:0] p_read4;
input  [63:0] p_read10;
input  [63:0] p_read16;
input  [63:0] p_read22;
input  [63:0] p_read28;
input  [63:0] p_read34;
input  [63:0] p_read40;
input  [63:0] p_read46;
input  [63:0] p_read52;
input  [63:0] p_read58;
input  [63:0] p_read64;
input  [63:0] p_read70;
input  [63:0] p_read76;
input  [63:0] p_read82;
input  [63:0] p_read88;
input  [63:0] p_read94;
input  [63:0] p_read100;
input  [63:0] p_read106;
input  [63:0] p_read112;
input  [63:0] p_read118;
input  [63:0] p_read124;
input  [63:0] p_read130;
input  [63:0] p_read136;
input  [63:0] p_read142;
input  [63:0] p_read148;
input  [63:0] p_read154;
input  [63:0] p_read160;
input  [63:0] p_read166;
input  [63:0] p_read172;
input  [63:0] p_read178;
input  [63:0] p_read184;
input  [63:0] p_read190;
input  [63:0] p_read5;
input  [63:0] p_read11;
input  [63:0] p_read17;
input  [63:0] p_read23;
input  [63:0] p_read29;
input  [63:0] p_read35;
input  [63:0] p_read41;
input  [63:0] p_read47;
input  [63:0] p_read53;
input  [63:0] p_read59;
input  [63:0] p_read65;
input  [63:0] p_read71;
input  [63:0] p_read77;
input  [63:0] p_read83;
input  [63:0] p_read89;
input  [63:0] p_read95;
input  [63:0] p_read101;
input  [63:0] p_read107;
input  [63:0] p_read113;
input  [63:0] p_read119;
input  [63:0] p_read125;
input  [63:0] p_read131;
input  [63:0] p_read137;
input  [63:0] p_read143;
input  [63:0] p_read149;
input  [63:0] p_read155;
input  [63:0] p_read161;
input  [63:0] p_read167;
input  [63:0] p_read173;
input  [63:0] p_read179;
input  [63:0] p_read185;
input  [63:0] p_read191;
output  [63:0] norm_8_out;
output   norm_8_out_ap_vld;
output  [63:0] grp_fu_5305_p_din0;
output  [63:0] grp_fu_5305_p_din1;
input  [63:0] grp_fu_5305_p_dout0;
output   grp_fu_5305_p_ce;
reg ap_idle;
reg norm_8_out_ap_vld;
(* fsm_encoding = "none" *) reg   [47:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_subdone;
reg   [0:0] tmp_reg_2795;
reg    ap_condition_exit_pp0_iter0_stage22;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47_subdone;
reg   [63:0] reg_1749;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] reg_1754;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
reg   [63:0] reg_1759;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_1764;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] grp_fu_1740_p2;
reg   [63:0] reg_1769;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
wire    ap_CS_fsm_pp0_stage38;
wire    ap_block_pp0_stage38_11001;
wire    ap_CS_fsm_pp0_stage46;
wire    ap_block_pp0_stage46_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_2790;
wire   [7:0] sub_ln180_fu_1813_p2;
reg   [7:0] sub_ln180_reg_2799;
wire   [63:0] tmp_s_fu_1824_p67;
reg   [63:0] tmp_s_reg_2807;
reg   [7:0] weights3_addr_reg_2812;
wire   [63:0] tmp_2_fu_1983_p67;
reg   [63:0] tmp_2_reg_2818;
reg   [7:0] weights3_addr_1_reg_2823;
wire   [63:0] tmp_7_fu_2119_p67;
reg   [63:0] tmp_7_reg_2829;
wire   [63:0] tmp_3_fu_2255_p67;
reg   [63:0] tmp_3_reg_2834;
wire   [63:0] tmp_4_fu_2391_p67;
reg   [63:0] tmp_4_reg_2839;
wire   [63:0] tmp_5_fu_2527_p67;
reg   [63:0] tmp_5_reg_2844;
reg   [63:0] weights3_load_reg_2849;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] weights3_load_1_reg_2854;
reg   [7:0] weights3_addr_2_reg_2859;
reg   [7:0] weights3_addr_3_reg_2865;
reg   [63:0] weights3_load_2_reg_2871;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] weights3_load_3_reg_2876;
reg   [7:0] weights3_addr_4_reg_2881;
reg   [7:0] weights3_addr_5_reg_2887;
reg   [63:0] weights3_load_4_reg_2893;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] weights3_load_5_reg_2898;
wire   [63:0] bitcast_ln180_fu_2703_p1;
wire   [63:0] bitcast_ln180_2_fu_2707_p1;
wire   [63:0] bitcast_ln180_4_fu_2711_p1;
wire   [63:0] bitcast_ln180_6_fu_2715_p1;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] mul163_1_1_reg_2923;
wire   [63:0] bitcast_ln180_8_fu_2719_p1;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] mul163_1_2_reg_2933;
wire   [63:0] bitcast_ln180_10_fu_2723_p1;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] sub168_s_reg_2943;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] sub168_2_reg_2950;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [63:0] sub168_1_reg_2957;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] sub168_1_1_reg_2964;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] sub168_1_2_reg_2971;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] mul177_1_1_reg_2983;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] mul177_1_2_reg_2988;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] norm_5_reg_2993;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln180_fu_1819_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln180_1_fu_1978_p1;
wire   [63:0] zext_ln180_2_fu_2668_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln180_3_fu_2678_p1;
wire   [63:0] zext_ln180_4_fu_2688_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln180_5_fu_2698_p1;
reg   [63:0] norm_fu_516;
wire    ap_block_pp0_stage22;
wire    ap_loop_init;
wire    ap_block_pp0_stage23;
reg   [6:0] i_fu_520;
wire   [6:0] add_ln178_fu_2756_p2;
wire    ap_block_pp0_stage47_11001;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage22_01001;
reg    weights3_ce1_local;
reg   [7:0] weights3_address1_local;
reg    weights3_ce0_local;
reg   [7:0] weights3_address0_local;
reg    weights3_we0_local;
reg   [63:0] weights3_d0_local;
wire   [63:0] bitcast_ln180_1_fu_2727_p1;
wire    ap_block_pp0_stage16;
reg    weights3_we1_local;
reg   [63:0] weights3_d1_local;
wire   [63:0] bitcast_ln180_3_fu_2732_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] bitcast_ln180_5_fu_2736_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] bitcast_ln180_7_fu_2740_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] bitcast_ln180_9_fu_2744_p1;
wire    ap_block_pp0_stage20;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [63:0] bitcast_ln180_11_fu_2748_p1;
wire    ap_block_pp0_stage21;
reg   [63:0] grp_fu_1740_p0;
reg   [63:0] grp_fu_1740_p1;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39;
wire    ap_block_pp0_stage47;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage15;
reg   [63:0] grp_fu_1744_p0;
reg   [63:0] grp_fu_1744_p1;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire   [5:0] trunc_ln178_fu_1801_p1;
wire   [7:0] p_shl_fu_1805_p3;
wire   [7:0] zext_ln178_fu_1797_p1;
wire   [63:0] tmp_s_fu_1824_p65;
wire   [6:0] tmp_1_fu_1960_p4;
wire   [7:0] or_ln5_fu_1970_p3;
wire   [63:0] tmp_2_fu_1983_p65;
wire   [63:0] tmp_7_fu_2119_p65;
wire   [63:0] tmp_3_fu_2255_p65;
wire   [63:0] tmp_4_fu_2391_p65;
wire   [63:0] tmp_5_fu_2527_p65;
wire   [7:0] add_ln180_fu_2663_p2;
wire   [7:0] empty_fu_2673_p2;
wire   [7:0] add_ln180_1_fu_2683_p2;
wire   [7:0] add_ln180_2_fu_2693_p2;
reg   [1:0] grp_fu_1740_opcode;
wire    ap_block_pp0_stage23_00001;
wire    ap_block_pp0_stage31_00001;
wire    ap_block_pp0_stage39_00001;
wire    ap_block_pp0_stage47_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [47:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_s_fu_1824_p1;
wire   [5:0] tmp_s_fu_1824_p3;
wire   [5:0] tmp_s_fu_1824_p5;
wire   [5:0] tmp_s_fu_1824_p7;
wire   [5:0] tmp_s_fu_1824_p9;
wire   [5:0] tmp_s_fu_1824_p11;
wire   [5:0] tmp_s_fu_1824_p13;
wire   [5:0] tmp_s_fu_1824_p15;
wire   [5:0] tmp_s_fu_1824_p17;
wire   [5:0] tmp_s_fu_1824_p19;
wire   [5:0] tmp_s_fu_1824_p21;
wire   [5:0] tmp_s_fu_1824_p23;
wire   [5:0] tmp_s_fu_1824_p25;
wire   [5:0] tmp_s_fu_1824_p27;
wire   [5:0] tmp_s_fu_1824_p29;
wire   [5:0] tmp_s_fu_1824_p31;
wire  signed [5:0] tmp_s_fu_1824_p33;
wire  signed [5:0] tmp_s_fu_1824_p35;
wire  signed [5:0] tmp_s_fu_1824_p37;
wire  signed [5:0] tmp_s_fu_1824_p39;
wire  signed [5:0] tmp_s_fu_1824_p41;
wire  signed [5:0] tmp_s_fu_1824_p43;
wire  signed [5:0] tmp_s_fu_1824_p45;
wire  signed [5:0] tmp_s_fu_1824_p47;
wire  signed [5:0] tmp_s_fu_1824_p49;
wire  signed [5:0] tmp_s_fu_1824_p51;
wire  signed [5:0] tmp_s_fu_1824_p53;
wire  signed [5:0] tmp_s_fu_1824_p55;
wire  signed [5:0] tmp_s_fu_1824_p57;
wire  signed [5:0] tmp_s_fu_1824_p59;
wire  signed [5:0] tmp_s_fu_1824_p61;
wire  signed [5:0] tmp_s_fu_1824_p63;
wire   [5:0] tmp_2_fu_1983_p1;
wire   [5:0] tmp_2_fu_1983_p3;
wire   [5:0] tmp_2_fu_1983_p5;
wire   [5:0] tmp_2_fu_1983_p7;
wire   [5:0] tmp_2_fu_1983_p9;
wire   [5:0] tmp_2_fu_1983_p11;
wire   [5:0] tmp_2_fu_1983_p13;
wire   [5:0] tmp_2_fu_1983_p15;
wire   [5:0] tmp_2_fu_1983_p17;
wire   [5:0] tmp_2_fu_1983_p19;
wire   [5:0] tmp_2_fu_1983_p21;
wire   [5:0] tmp_2_fu_1983_p23;
wire   [5:0] tmp_2_fu_1983_p25;
wire   [5:0] tmp_2_fu_1983_p27;
wire   [5:0] tmp_2_fu_1983_p29;
wire   [5:0] tmp_2_fu_1983_p31;
wire  signed [5:0] tmp_2_fu_1983_p33;
wire  signed [5:0] tmp_2_fu_1983_p35;
wire  signed [5:0] tmp_2_fu_1983_p37;
wire  signed [5:0] tmp_2_fu_1983_p39;
wire  signed [5:0] tmp_2_fu_1983_p41;
wire  signed [5:0] tmp_2_fu_1983_p43;
wire  signed [5:0] tmp_2_fu_1983_p45;
wire  signed [5:0] tmp_2_fu_1983_p47;
wire  signed [5:0] tmp_2_fu_1983_p49;
wire  signed [5:0] tmp_2_fu_1983_p51;
wire  signed [5:0] tmp_2_fu_1983_p53;
wire  signed [5:0] tmp_2_fu_1983_p55;
wire  signed [5:0] tmp_2_fu_1983_p57;
wire  signed [5:0] tmp_2_fu_1983_p59;
wire  signed [5:0] tmp_2_fu_1983_p61;
wire  signed [5:0] tmp_2_fu_1983_p63;
wire   [5:0] tmp_7_fu_2119_p1;
wire   [5:0] tmp_7_fu_2119_p3;
wire   [5:0] tmp_7_fu_2119_p5;
wire   [5:0] tmp_7_fu_2119_p7;
wire   [5:0] tmp_7_fu_2119_p9;
wire   [5:0] tmp_7_fu_2119_p11;
wire   [5:0] tmp_7_fu_2119_p13;
wire   [5:0] tmp_7_fu_2119_p15;
wire   [5:0] tmp_7_fu_2119_p17;
wire   [5:0] tmp_7_fu_2119_p19;
wire   [5:0] tmp_7_fu_2119_p21;
wire   [5:0] tmp_7_fu_2119_p23;
wire   [5:0] tmp_7_fu_2119_p25;
wire   [5:0] tmp_7_fu_2119_p27;
wire   [5:0] tmp_7_fu_2119_p29;
wire   [5:0] tmp_7_fu_2119_p31;
wire  signed [5:0] tmp_7_fu_2119_p33;
wire  signed [5:0] tmp_7_fu_2119_p35;
wire  signed [5:0] tmp_7_fu_2119_p37;
wire  signed [5:0] tmp_7_fu_2119_p39;
wire  signed [5:0] tmp_7_fu_2119_p41;
wire  signed [5:0] tmp_7_fu_2119_p43;
wire  signed [5:0] tmp_7_fu_2119_p45;
wire  signed [5:0] tmp_7_fu_2119_p47;
wire  signed [5:0] tmp_7_fu_2119_p49;
wire  signed [5:0] tmp_7_fu_2119_p51;
wire  signed [5:0] tmp_7_fu_2119_p53;
wire  signed [5:0] tmp_7_fu_2119_p55;
wire  signed [5:0] tmp_7_fu_2119_p57;
wire  signed [5:0] tmp_7_fu_2119_p59;
wire  signed [5:0] tmp_7_fu_2119_p61;
wire  signed [5:0] tmp_7_fu_2119_p63;
wire   [5:0] tmp_3_fu_2255_p1;
wire   [5:0] tmp_3_fu_2255_p3;
wire   [5:0] tmp_3_fu_2255_p5;
wire   [5:0] tmp_3_fu_2255_p7;
wire   [5:0] tmp_3_fu_2255_p9;
wire   [5:0] tmp_3_fu_2255_p11;
wire   [5:0] tmp_3_fu_2255_p13;
wire   [5:0] tmp_3_fu_2255_p15;
wire   [5:0] tmp_3_fu_2255_p17;
wire   [5:0] tmp_3_fu_2255_p19;
wire   [5:0] tmp_3_fu_2255_p21;
wire   [5:0] tmp_3_fu_2255_p23;
wire   [5:0] tmp_3_fu_2255_p25;
wire   [5:0] tmp_3_fu_2255_p27;
wire   [5:0] tmp_3_fu_2255_p29;
wire   [5:0] tmp_3_fu_2255_p31;
wire  signed [5:0] tmp_3_fu_2255_p33;
wire  signed [5:0] tmp_3_fu_2255_p35;
wire  signed [5:0] tmp_3_fu_2255_p37;
wire  signed [5:0] tmp_3_fu_2255_p39;
wire  signed [5:0] tmp_3_fu_2255_p41;
wire  signed [5:0] tmp_3_fu_2255_p43;
wire  signed [5:0] tmp_3_fu_2255_p45;
wire  signed [5:0] tmp_3_fu_2255_p47;
wire  signed [5:0] tmp_3_fu_2255_p49;
wire  signed [5:0] tmp_3_fu_2255_p51;
wire  signed [5:0] tmp_3_fu_2255_p53;
wire  signed [5:0] tmp_3_fu_2255_p55;
wire  signed [5:0] tmp_3_fu_2255_p57;
wire  signed [5:0] tmp_3_fu_2255_p59;
wire  signed [5:0] tmp_3_fu_2255_p61;
wire  signed [5:0] tmp_3_fu_2255_p63;
wire   [5:0] tmp_4_fu_2391_p1;
wire   [5:0] tmp_4_fu_2391_p3;
wire   [5:0] tmp_4_fu_2391_p5;
wire   [5:0] tmp_4_fu_2391_p7;
wire   [5:0] tmp_4_fu_2391_p9;
wire   [5:0] tmp_4_fu_2391_p11;
wire   [5:0] tmp_4_fu_2391_p13;
wire   [5:0] tmp_4_fu_2391_p15;
wire   [5:0] tmp_4_fu_2391_p17;
wire   [5:0] tmp_4_fu_2391_p19;
wire   [5:0] tmp_4_fu_2391_p21;
wire   [5:0] tmp_4_fu_2391_p23;
wire   [5:0] tmp_4_fu_2391_p25;
wire   [5:0] tmp_4_fu_2391_p27;
wire   [5:0] tmp_4_fu_2391_p29;
wire   [5:0] tmp_4_fu_2391_p31;
wire  signed [5:0] tmp_4_fu_2391_p33;
wire  signed [5:0] tmp_4_fu_2391_p35;
wire  signed [5:0] tmp_4_fu_2391_p37;
wire  signed [5:0] tmp_4_fu_2391_p39;
wire  signed [5:0] tmp_4_fu_2391_p41;
wire  signed [5:0] tmp_4_fu_2391_p43;
wire  signed [5:0] tmp_4_fu_2391_p45;
wire  signed [5:0] tmp_4_fu_2391_p47;
wire  signed [5:0] tmp_4_fu_2391_p49;
wire  signed [5:0] tmp_4_fu_2391_p51;
wire  signed [5:0] tmp_4_fu_2391_p53;
wire  signed [5:0] tmp_4_fu_2391_p55;
wire  signed [5:0] tmp_4_fu_2391_p57;
wire  signed [5:0] tmp_4_fu_2391_p59;
wire  signed [5:0] tmp_4_fu_2391_p61;
wire  signed [5:0] tmp_4_fu_2391_p63;
wire   [5:0] tmp_5_fu_2527_p1;
wire   [5:0] tmp_5_fu_2527_p3;
wire   [5:0] tmp_5_fu_2527_p5;
wire   [5:0] tmp_5_fu_2527_p7;
wire   [5:0] tmp_5_fu_2527_p9;
wire   [5:0] tmp_5_fu_2527_p11;
wire   [5:0] tmp_5_fu_2527_p13;
wire   [5:0] tmp_5_fu_2527_p15;
wire   [5:0] tmp_5_fu_2527_p17;
wire   [5:0] tmp_5_fu_2527_p19;
wire   [5:0] tmp_5_fu_2527_p21;
wire   [5:0] tmp_5_fu_2527_p23;
wire   [5:0] tmp_5_fu_2527_p25;
wire   [5:0] tmp_5_fu_2527_p27;
wire   [5:0] tmp_5_fu_2527_p29;
wire   [5:0] tmp_5_fu_2527_p31;
wire  signed [5:0] tmp_5_fu_2527_p33;
wire  signed [5:0] tmp_5_fu_2527_p35;
wire  signed [5:0] tmp_5_fu_2527_p37;
wire  signed [5:0] tmp_5_fu_2527_p39;
wire  signed [5:0] tmp_5_fu_2527_p41;
wire  signed [5:0] tmp_5_fu_2527_p43;
wire  signed [5:0] tmp_5_fu_2527_p45;
wire  signed [5:0] tmp_5_fu_2527_p47;
wire  signed [5:0] tmp_5_fu_2527_p49;
wire  signed [5:0] tmp_5_fu_2527_p51;
wire  signed [5:0] tmp_5_fu_2527_p53;
wire  signed [5:0] tmp_5_fu_2527_p55;
wire  signed [5:0] tmp_5_fu_2527_p57;
wire  signed [5:0] tmp_5_fu_2527_p59;
wire  signed [5:0] tmp_5_fu_2527_p61;
wire  signed [5:0] tmp_5_fu_2527_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 48'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_516 = 64'd0;
#0 i_fu_520 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1510(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1740_p0),.din1(grp_fu_1740_p1),.opcode(grp_fu_1740_opcode),.ce(1'b1),.dout(grp_fu_1740_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U1512(.din0(p_read),.din1(p_read6),.din2(p_read12),.din3(p_read18),.din4(p_read24),.din5(p_read30),.din6(p_read36),.din7(p_read42),.din8(p_read48),.din9(p_read54),.din10(p_read60),.din11(p_read66),.din12(p_read72),.din13(p_read78),.din14(p_read84),.din15(p_read90),.din16(p_read96),.din17(p_read102),.din18(p_read108),.din19(p_read114),.din20(p_read120),.din21(p_read126),.din22(p_read132),.din23(p_read138),.din24(p_read144),.din25(p_read150),.din26(p_read156),.din27(p_read162),.din28(p_read168),.din29(p_read174),.din30(p_read180),.din31(p_read186),.def(tmp_s_fu_1824_p65),.sel(trunc_ln178_fu_1801_p1),.dout(tmp_s_fu_1824_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U1513(.din0(p_read1),.din1(p_read7),.din2(p_read13),.din3(p_read19),.din4(p_read25),.din5(p_read31),.din6(p_read37),.din7(p_read43),.din8(p_read49),.din9(p_read55),.din10(p_read61),.din11(p_read67),.din12(p_read73),.din13(p_read79),.din14(p_read85),.din15(p_read91),.din16(p_read97),.din17(p_read103),.din18(p_read109),.din19(p_read115),.din20(p_read121),.din21(p_read127),.din22(p_read133),.din23(p_read139),.din24(p_read145),.din25(p_read151),.din26(p_read157),.din27(p_read163),.din28(p_read169),.din29(p_read175),.din30(p_read181),.din31(p_read187),.def(tmp_2_fu_1983_p65),.sel(trunc_ln178_fu_1801_p1),.dout(tmp_2_fu_1983_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U1514(.din0(p_read2),.din1(p_read8),.din2(p_read14),.din3(p_read20),.din4(p_read26),.din5(p_read32),.din6(p_read38),.din7(p_read44),.din8(p_read50),.din9(p_read56),.din10(p_read62),.din11(p_read68),.din12(p_read74),.din13(p_read80),.din14(p_read86),.din15(p_read92),.din16(p_read98),.din17(p_read104),.din18(p_read110),.din19(p_read116),.din20(p_read122),.din21(p_read128),.din22(p_read134),.din23(p_read140),.din24(p_read146),.din25(p_read152),.din26(p_read158),.din27(p_read164),.din28(p_read170),.din29(p_read176),.din30(p_read182),.din31(p_read188),.def(tmp_7_fu_2119_p65),.sel(trunc_ln178_fu_1801_p1),.dout(tmp_7_fu_2119_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U1515(.din0(p_read3),.din1(p_read9),.din2(p_read15),.din3(p_read21),.din4(p_read27),.din5(p_read33),.din6(p_read39),.din7(p_read45),.din8(p_read51),.din9(p_read57),.din10(p_read63),.din11(p_read69),.din12(p_read75),.din13(p_read81),.din14(p_read87),.din15(p_read93),.din16(p_read99),.din17(p_read105),.din18(p_read111),.din19(p_read117),.din20(p_read123),.din21(p_read129),.din22(p_read135),.din23(p_read141),.din24(p_read147),.din25(p_read153),.din26(p_read159),.din27(p_read165),.din28(p_read171),.din29(p_read177),.din30(p_read183),.din31(p_read189),.def(tmp_3_fu_2255_p65),.sel(trunc_ln178_fu_1801_p1),.dout(tmp_3_fu_2255_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U1516(.din0(p_read4),.din1(p_read10),.din2(p_read16),.din3(p_read22),.din4(p_read28),.din5(p_read34),.din6(p_read40),.din7(p_read46),.din8(p_read52),.din9(p_read58),.din10(p_read64),.din11(p_read70),.din12(p_read76),.din13(p_read82),.din14(p_read88),.din15(p_read94),.din16(p_read100),.din17(p_read106),.din18(p_read112),.din19(p_read118),.din20(p_read124),.din21(p_read130),.din22(p_read136),.din23(p_read142),.din24(p_read148),.din25(p_read154),.din26(p_read160),.din27(p_read166),.din28(p_read172),.din29(p_read178),.din30(p_read184),.din31(p_read190),.def(tmp_4_fu_2391_p65),.sel(trunc_ln178_fu_1801_p1),.dout(tmp_4_fu_2391_p67));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_65_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h2 ),.din1_WIDTH( 64 ),.CASE2( 6'h4 ),.din2_WIDTH( 64 ),.CASE3( 6'h6 ),.din3_WIDTH( 64 ),.CASE4( 6'h8 ),.din4_WIDTH( 64 ),.CASE5( 6'hA ),.din5_WIDTH( 64 ),.CASE6( 6'hC ),.din6_WIDTH( 64 ),.CASE7( 6'hE ),.din7_WIDTH( 64 ),.CASE8( 6'h10 ),.din8_WIDTH( 64 ),.CASE9( 6'h12 ),.din9_WIDTH( 64 ),.CASE10( 6'h14 ),.din10_WIDTH( 64 ),.CASE11( 6'h16 ),.din11_WIDTH( 64 ),.CASE12( 6'h18 ),.din12_WIDTH( 64 ),.CASE13( 6'h1A ),.din13_WIDTH( 64 ),.CASE14( 6'h1C ),.din14_WIDTH( 64 ),.CASE15( 6'h1E ),.din15_WIDTH( 64 ),.CASE16( 6'h20 ),.din16_WIDTH( 64 ),.CASE17( 6'h22 ),.din17_WIDTH( 64 ),.CASE18( 6'h24 ),.din18_WIDTH( 64 ),.CASE19( 6'h26 ),.din19_WIDTH( 64 ),.CASE20( 6'h28 ),.din20_WIDTH( 64 ),.CASE21( 6'h2A ),.din21_WIDTH( 64 ),.CASE22( 6'h2C ),.din22_WIDTH( 64 ),.CASE23( 6'h2E ),.din23_WIDTH( 64 ),.CASE24( 6'h30 ),.din24_WIDTH( 64 ),.CASE25( 6'h32 ),.din25_WIDTH( 64 ),.CASE26( 6'h34 ),.din26_WIDTH( 64 ),.CASE27( 6'h36 ),.din27_WIDTH( 64 ),.CASE28( 6'h38 ),.din28_WIDTH( 64 ),.CASE29( 6'h3A ),.din29_WIDTH( 64 ),.CASE30( 6'h3C ),.din30_WIDTH( 64 ),.CASE31( 6'h3E ),.din31_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_65_6_64_1_1_U1517(.din0(p_read5),.din1(p_read11),.din2(p_read17),.din3(p_read23),.din4(p_read29),.din5(p_read35),.din6(p_read41),.din7(p_read47),.din8(p_read53),.din9(p_read59),.din10(p_read65),.din11(p_read71),.din12(p_read77),.din13(p_read83),.din14(p_read89),.din15(p_read95),.din16(p_read101),.din17(p_read107),.din18(p_read113),.din19(p_read119),.din20(p_read125),.din21(p_read131),.din22(p_read137),.din23(p_read143),.din24(p_read149),.din25(p_read155),.din26(p_read161),.din27(p_read167),.din28(p_read173),.din29(p_read179),.din30(p_read185),.din31(p_read191),.def(tmp_5_fu_2527_p65),.sel(trunc_ln178_fu_1801_p1),.dout(tmp_5_fu_2527_p67));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
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
        if (((1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage47_subdone) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_520 <= 7'd0;
    end else if (((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        i_fu_520 <= add_ln178_fu_2756_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_fu_516 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        norm_fu_516 <= grp_fu_1740_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_reg_2790 <= ap_sig_allocacmp_i_1;
        sub_ln180_reg_2799 <= sub_ln180_fu_1813_p2;
        tmp_2_reg_2818 <= tmp_2_fu_1983_p67;
        tmp_3_reg_2834 <= tmp_3_fu_2255_p67;
        tmp_4_reg_2839 <= tmp_4_fu_2391_p67;
        tmp_5_reg_2844 <= tmp_5_fu_2527_p67;
        tmp_7_reg_2829 <= tmp_7_fu_2119_p67;
        tmp_reg_2795 <= ap_sig_allocacmp_i_1[32'd6];
        tmp_s_reg_2807 <= tmp_s_fu_1824_p67;
        weights3_addr_1_reg_2823[7 : 1] <= zext_ln180_1_fu_1978_p1[7 : 1];
        weights3_addr_reg_2812 <= zext_ln180_fu_1819_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul163_1_1_reg_2923 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul163_1_2_reg_2933 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        mul177_1_1_reg_2983 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        mul177_1_2_reg_2988 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        norm_5_reg_2993 <= grp_fu_1740_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_1749 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_1754 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_1759 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_1764 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage46_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage46)) | ((1'b0 == ap_block_pp0_stage38_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage38)) | ((1'b0 == ap_block_pp0_stage30_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_1769 <= grp_fu_1740_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sub168_1_1_reg_2964 <= grp_fu_1740_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        sub168_1_2_reg_2971 <= grp_fu_1740_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sub168_1_reg_2957 <= grp_fu_1740_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        sub168_2_reg_2950 <= grp_fu_1740_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        sub168_s_reg_2943 <= grp_fu_1740_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_addr_2_reg_2859 <= zext_ln180_2_fu_2668_p1;
        weights3_addr_3_reg_2865 <= zext_ln180_3_fu_2678_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_addr_4_reg_2881 <= zext_ln180_4_fu_2688_p1;
        weights3_addr_5_reg_2887 <= zext_ln180_5_fu_2698_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_load_1_reg_2854 <= weights3_q0;
        weights3_load_reg_2849 <= weights3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_load_2_reg_2871 <= weights3_q1;
        weights3_load_3_reg_2876 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights3_load_4_reg_2893 <= weights3_q1;
        weights3_load_5_reg_2898 <= weights3_q0;
    end
end
always @ (*) begin
    if (((tmp_reg_2795 == 1'd1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        ap_condition_exit_pp0_iter0_stage22 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage22 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage22_subdone) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
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
    if (((1'b0 == ap_block_pp0_stage47_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_520;
    end
end
always @ (*) begin
    if ((((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage13_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage8_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1740_opcode = 2'd1;
    end else if ((((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage47_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage39_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage31_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage23_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage7_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_1740_opcode = 2'd0;
    end else begin
        grp_fu_1740_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1740_p0 = norm_5_reg_2993;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
        grp_fu_1740_p0 = reg_1769;
    end else if (((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        grp_fu_1740_p0 = norm_fu_516;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1740_p0 = bitcast_ln180_10_fu_2723_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1740_p0 = bitcast_ln180_8_fu_2719_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_1740_p0 = bitcast_ln180_6_fu_2715_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_1740_p0 = bitcast_ln180_4_fu_2711_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_1740_p0 = bitcast_ln180_2_fu_2707_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1740_p0 = bitcast_ln180_fu_2703_p1;
    end else begin
        grp_fu_1740_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_1740_p1 = mul177_1_2_reg_2988;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_1740_p1 = mul177_1_1_reg_2983;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_1740_p1 = mul163_1_2_reg_2933;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_1740_p1 = mul163_1_1_reg_2923;
    end else if ((((1'b0 == ap_block_pp0_stage47) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        grp_fu_1740_p1 = reg_1764;
    end else if ((((1'b0 == ap_block_pp0_stage39) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_1740_p1 = reg_1759;
    end else if ((((1'b0 == ap_block_pp0_stage31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_1740_p1 = reg_1754;
    end else if ((((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        grp_fu_1740_p1 = reg_1749;
    end else begin
        grp_fu_1740_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_1744_p0 = sub168_1_2_reg_2971;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_1744_p0 = sub168_1_1_reg_2964;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_1744_p0 = sub168_1_reg_2957;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_1744_p0 = sub168_2_reg_2950;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_1744_p0 = sub168_s_reg_2943;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_fu_1744_p0 = reg_1769;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1744_p0 = tmp_5_reg_2844;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1744_p0 = tmp_4_reg_2839;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1744_p0 = tmp_3_reg_2834;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1744_p0 = tmp_7_reg_2829;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1744_p0 = tmp_2_reg_2818;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1744_p0 = tmp_s_reg_2807;
        end else begin
            grp_fu_1744_p0 = 'bx;
        end
    end else begin
        grp_fu_1744_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_1744_p1 = sub168_1_2_reg_2971;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_1744_p1 = sub168_1_1_reg_2964;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_1744_p1 = sub168_1_reg_2957;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_1744_p1 = sub168_2_reg_2950;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_1744_p1 = sub168_s_reg_2943;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1744_p1 = reg_1769;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_1744_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_1744_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_2795 == 1'd1) & (1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        norm_8_out_ap_vld = 1'b1;
    end else begin
        norm_8_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_address0_local = weights3_addr_4_reg_2881;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_address0_local = weights3_addr_2_reg_2859;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            weights3_address0_local = weights3_addr_reg_2812;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_address0_local = zext_ln180_5_fu_2698_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_address0_local = zext_ln180_3_fu_2678_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_address0_local = zext_ln180_1_fu_1978_p1;
        end else begin
            weights3_address0_local = 'bx;
        end
    end else begin
        weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_address1_local = weights3_addr_5_reg_2887;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_address1_local = weights3_addr_3_reg_2865;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_address1_local = weights3_addr_1_reg_2823;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            weights3_address1_local = zext_ln180_4_fu_2688_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights3_address1_local = zext_ln180_2_fu_2668_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            weights3_address1_local = zext_ln180_fu_1819_p1;
        end else begin
            weights3_address1_local = 'bx;
        end
    end else begin
        weights3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights3_ce0_local = 1'b1;
    end else begin
        weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        weights3_ce1_local = 1'b1;
    end else begin
        weights3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights3_d0_local = bitcast_ln180_9_fu_2744_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights3_d0_local = bitcast_ln180_5_fu_2736_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            weights3_d0_local = bitcast_ln180_1_fu_2727_p1;
        end else begin
            weights3_d0_local = 'bx;
        end
    end else begin
        weights3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights3_d1_local = bitcast_ln180_11_fu_2748_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights3_d1_local = bitcast_ln180_7_fu_2740_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            weights3_d1_local = bitcast_ln180_3_fu_2732_p1;
        end else begin
            weights3_d1_local = 'bx;
        end
    end else begin
        weights3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        weights3_we0_local = 1'b1;
    end else begin
        weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_2795 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln178_fu_2756_p2 = (i_1_reg_2790 + 7'd2);
assign add_ln180_1_fu_2683_p2 = (sub_ln180_reg_2799 + 8'd4);
assign add_ln180_2_fu_2693_p2 = (sub_ln180_reg_2799 + 8'd5);
assign add_ln180_fu_2663_p2 = (sub_ln180_reg_2799 + 8'd2);
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
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage38 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_pp0_stage39 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage46 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
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
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage22_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage47_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage22;
assign ap_ready = ap_ready_sig;
assign bitcast_ln180_10_fu_2723_p1 = weights3_load_5_reg_2898;
assign bitcast_ln180_11_fu_2748_p1 = sub168_1_2_reg_2971;
assign bitcast_ln180_1_fu_2727_p1 = reg_1769;
assign bitcast_ln180_2_fu_2707_p1 = weights3_load_1_reg_2854;
assign bitcast_ln180_3_fu_2732_p1 = sub168_s_reg_2943;
assign bitcast_ln180_4_fu_2711_p1 = weights3_load_2_reg_2871;
assign bitcast_ln180_5_fu_2736_p1 = sub168_2_reg_2950;
assign bitcast_ln180_6_fu_2715_p1 = weights3_load_3_reg_2876;
assign bitcast_ln180_7_fu_2740_p1 = sub168_1_reg_2957;
assign bitcast_ln180_8_fu_2719_p1 = weights3_load_4_reg_2893;
assign bitcast_ln180_9_fu_2744_p1 = sub168_1_1_reg_2964;
assign bitcast_ln180_fu_2703_p1 = weights3_load_reg_2849;
assign empty_fu_2673_p2 = (sub_ln180_reg_2799 + 8'd3);
assign grp_fu_5305_p_ce = 1'b1;
assign grp_fu_5305_p_din0 = grp_fu_1744_p0;
assign grp_fu_5305_p_din1 = grp_fu_1744_p1;
assign norm_8_out = norm_fu_516;
assign or_ln5_fu_1970_p3 = {{tmp_1_fu_1960_p4}, {1'd1}};
assign p_shl_fu_1805_p3 = {{trunc_ln178_fu_1801_p1}, {2'd0}};
assign sub_ln180_fu_1813_p2 = (p_shl_fu_1805_p3 - zext_ln178_fu_1797_p1);
assign tmp_1_fu_1960_p4 = {{sub_ln180_fu_1813_p2[7:1]}};
assign tmp_2_fu_1983_p65 = 'bx;
assign tmp_3_fu_2255_p65 = 'bx;
assign tmp_4_fu_2391_p65 = 'bx;
assign tmp_5_fu_2527_p65 = 'bx;
assign tmp_7_fu_2119_p65 = 'bx;
assign tmp_s_fu_1824_p65 = 'bx;
assign trunc_ln178_fu_1801_p1 = ap_sig_allocacmp_i_1[5:0];
assign weights3_address0 = weights3_address0_local;
assign weights3_address1 = weights3_address1_local;
assign weights3_ce0 = weights3_ce0_local;
assign weights3_ce1 = weights3_ce1_local;
assign weights3_d0 = weights3_d0_local;
assign weights3_d1 = weights3_d1_local;
assign weights3_we0 = weights3_we0_local;
assign weights3_we1 = weights3_we1_local;
assign zext_ln178_fu_1797_p1 = ap_sig_allocacmp_i_1;
assign zext_ln180_1_fu_1978_p1 = or_ln5_fu_1970_p3;
assign zext_ln180_2_fu_2668_p1 = add_ln180_fu_2663_p2;
assign zext_ln180_3_fu_2678_p1 = empty_fu_2673_p2;
assign zext_ln180_4_fu_2688_p1 = add_ln180_1_fu_2683_p2;
assign zext_ln180_5_fu_2698_p1 = add_ln180_2_fu_2693_p2;
assign zext_ln180_fu_1819_p1 = sub_ln180_fu_1813_p2;
always @ (posedge ap_clk) begin
    weights3_addr_1_reg_2823[0] <= 1'b1;
end
endmodule 