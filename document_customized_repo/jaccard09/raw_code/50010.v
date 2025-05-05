module backprop_update_weights_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_we1,weights1_d1,weights1_q1,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_we1,weights2_d1,weights2_q1,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_we1,weights3_d1,weights3_q1,d_weights1_0_address0,d_weights1_0_ce0,d_weights1_0_q0,d_weights1_1_address0,d_weights1_1_ce0,d_weights1_1_q0,d_weights1_2_address0,d_weights1_2_ce0,d_weights1_2_q0,d_weights1_3_address0,d_weights1_3_ce0,d_weights1_3_q0,d_weights1_4_address0,d_weights1_4_ce0,d_weights1_4_q0,d_weights1_5_address0,d_weights1_5_ce0,d_weights1_5_q0,d_weights1_6_address0,d_weights1_6_ce0,d_weights1_6_q0,d_weights1_7_address0,d_weights1_7_ce0,d_weights1_7_q0,d_weights1_8_address0,d_weights1_8_ce0,d_weights1_8_q0,d_weights1_9_address0,d_weights1_9_ce0,d_weights1_9_q0,d_weights1_10_address0,d_weights1_10_ce0,d_weights1_10_q0,d_weights1_11_address0,d_weights1_11_ce0,d_weights1_11_q0,d_weights1_12_address0,d_weights1_12_ce0,d_weights1_12_q0,d_weights1_13_address0,d_weights1_13_ce0,d_weights1_13_q0,d_weights1_14_address0,d_weights1_14_ce0,d_weights1_14_q0,d_weights1_15_address0,d_weights1_15_ce0,d_weights1_15_q0,d_weights2_0_address0,d_weights2_0_ce0,d_weights2_0_q0,d_weights2_1_address0,d_weights2_1_ce0,d_weights2_1_q0,d_weights2_2_address0,d_weights2_2_ce0,d_weights2_2_q0,d_weights2_3_address0,d_weights2_3_ce0,d_weights2_3_q0,d_weights2_4_address0,d_weights2_4_ce0,d_weights2_4_q0,d_weights2_5_address0,d_weights2_5_ce0,d_weights2_5_q0,d_weights2_6_address0,d_weights2_6_ce0,d_weights2_6_q0,d_weights2_7_address0,d_weights2_7_ce0,d_weights2_7_q0,d_weights2_8_address0,d_weights2_8_ce0,d_weights2_8_q0,d_weights2_9_address0,d_weights2_9_ce0,d_weights2_9_q0,d_weights2_10_address0,d_weights2_10_ce0,d_weights2_10_q0,d_weights2_11_address0,d_weights2_11_ce0,d_weights2_11_q0,d_weights2_12_address0,d_weights2_12_ce0,d_weights2_12_q0,d_weights2_13_address0,d_weights2_13_ce0,d_weights2_13_q0,d_weights2_14_address0,d_weights2_14_ce0,d_weights2_14_q0,d_weights2_15_address0,d_weights2_15_ce0,d_weights2_15_q0,p_read,p_read1,p_read2,p_read3,p_read4,p_read5,p_read6,p_read7,p_read8,p_read9,p_read10,p_read11,p_read12,p_read13,p_read14,p_read15,p_read16,p_read17,p_read18,p_read19,p_read20,p_read21,p_read22,p_read23,p_read24,p_read25,p_read26,p_read27,p_read28,p_read29,p_read30,p_read31,p_read32,p_read33,p_read34,p_read35,p_read36,p_read37,p_read38,p_read39,p_read40,p_read41,p_read42,p_read43,p_read44,p_read45,p_read46,p_read47,p_read48,p_read49,p_read50,p_read51,p_read52,p_read53,p_read54,p_read55,p_read56,p_read57,p_read58,p_read59,p_read60,p_read61,p_read62,p_read63,p_read64,p_read65,p_read66,p_read67,p_read68,p_read69,p_read70,p_read71,p_read72,p_read73,p_read74,p_read75,p_read76,p_read77,p_read78,p_read79,p_read80,p_read81,p_read82,p_read83,p_read84,p_read85,p_read86,p_read87,p_read88,p_read89,p_read90,p_read91,p_read92,p_read93,p_read94,p_read95,p_read96,p_read97,p_read98,p_read99,p_read100,p_read101,p_read102,p_read103,p_read104,p_read105,p_read106,p_read107,p_read108,p_read109,p_read110,p_read111,p_read112,p_read113,p_read114,p_read115,p_read116,p_read117,p_read118,p_read119,p_read120,p_read121,p_read122,p_read123,p_read124,p_read125,p_read126,p_read127,p_read128,p_read129,p_read130,p_read131,p_read132,p_read133,p_read134,p_read135,p_read136,p_read137,p_read138,p_read139,p_read140,p_read141,p_read142,p_read143,p_read144,p_read145,p_read146,p_read147,p_read148,p_read149,p_read150,p_read151,p_read152,p_read153,p_read154,p_read155,p_read156,p_read157,p_read158,p_read159,p_read160,p_read161,p_read162,p_read163,p_read164,p_read165,p_read166,p_read167,p_read168,p_read169,p_read170,p_read171,p_read172,p_read173,p_read174,p_read175,p_read176,p_read177,p_read178,p_read179,p_read180,p_read181,p_read182,p_read183,p_read184,p_read185,p_read186,p_read187,p_read188,p_read189,p_read190,p_read191,biases1_address0,biases1_ce0,biases1_we0,biases1_d0,biases1_q0,biases1_address1,biases1_ce1,biases1_we1,biases1_d1,biases1_q1,biases2_address0,biases2_ce0,biases2_we0,biases2_d0,biases2_q0,biases2_address1,biases2_ce1,biases2_we1,biases2_d1,biases2_q1,biases3_address0,biases3_ce0,biases3_we0,biases3_d0,biases3_q0,biases3_address1,biases3_ce1,biases3_q1,p_read192,p_read193,p_read194,p_read195,p_read196,p_read197,p_read198,p_read199,p_read200,p_read201,p_read202,p_read203,p_read204,p_read205,p_read206,p_read207,p_read208,p_read209,p_read210,p_read211,p_read212,p_read213,p_read214,p_read215,p_read216,p_read217,p_read218,p_read219,p_read220,p_read221,p_read222,p_read223,p_read224,p_read225,p_read226,p_read227,p_read228,p_read229,p_read230,p_read231,p_read232,p_read233,p_read234,p_read235,p_read236,p_read237,p_read238,p_read239,p_read240,p_read241,p_read242,p_read243,p_read244,p_read245,p_read246,p_read247,p_read248,p_read249,p_read250,p_read251,p_read252,p_read253,p_read254,p_read255,p_read256,p_read257,p_read258,p_read259,p_read260,p_read261,p_read262,p_read263,p_read264,p_read265,p_read266,p_read267,p_read268,p_read269,p_read270,p_read271,p_read272,p_read273,p_read274,p_read275,p_read276,p_read277,p_read278,p_read279,p_read280,p_read281,p_read282,p_read283,p_read284,p_read285,p_read286,p_read287,p_read288,p_read289,p_read290,p_read291,p_read292,p_read293,p_read294,p_read295,p_read296,p_read297,p_read298,p_read299,p_read300,p_read301,p_read302,p_read303,p_read304,p_read305,p_read306,p_read307,p_read308,p_read309,p_read310,p_read311,p_read312,p_read313,p_read314,p_read315,p_read316,p_read317,p_read318,p_read319,p_read320,p_read321,p_read322,grp_fu_10475_p_din0,grp_fu_10475_p_din1,grp_fu_10475_p_opcode,grp_fu_10475_p_dout0,grp_fu_10475_p_ce,grp_fu_10479_p_din0,grp_fu_10479_p_din1,grp_fu_10479_p_opcode,grp_fu_10479_p_dout0,grp_fu_10479_p_ce,grp_fu_10483_p_din0,grp_fu_10483_p_din1,grp_fu_10483_p_dout0,grp_fu_10483_p_ce,grp_fu_10503_p_din0,grp_fu_10503_p_din1,grp_fu_10503_p_dout0,grp_fu_10503_p_ce,grp_fu_10491_p_din0,grp_fu_10491_p_din1,grp_fu_10491_p_dout0,grp_fu_10491_p_ce,grp_fu_10487_p_din0,grp_fu_10487_p_din1,grp_fu_10487_p_dout0,grp_fu_10487_p_ce,grp_fu_10507_p_din0,grp_fu_10507_p_din1,grp_fu_10507_p_dout0,grp_fu_10507_p_ce,grp_fu_10511_p_din0,grp_fu_10511_p_din1,grp_fu_10511_p_dout0,grp_fu_10511_p_ce,grp_fu_10515_p_din0,grp_fu_10515_p_din1,grp_fu_10515_p_dout0,grp_fu_10515_p_ce,grp_fu_10519_p_din0,grp_fu_10519_p_din1,grp_fu_10519_p_dout0,grp_fu_10519_p_ce,grp_fu_10523_p_din0,grp_fu_10523_p_din1,grp_fu_10523_p_dout0,grp_fu_10523_p_ce,grp_fu_10527_p_din0,grp_fu_10527_p_din1,grp_fu_10527_p_dout0,grp_fu_10527_p_ce,grp_fu_10499_p_din0,grp_fu_10499_p_din1,grp_fu_10499_p_dout0,grp_fu_10499_p_ce); 
parameter    ap_ST_fsm_state1 = 60'd1;
parameter    ap_ST_fsm_state2 = 60'd2;
parameter    ap_ST_fsm_state3 = 60'd4;
parameter    ap_ST_fsm_state4 = 60'd8;
parameter    ap_ST_fsm_state5 = 60'd16;
parameter    ap_ST_fsm_state6 = 60'd32;
parameter    ap_ST_fsm_state7 = 60'd64;
parameter    ap_ST_fsm_state8 = 60'd128;
parameter    ap_ST_fsm_state9 = 60'd256;
parameter    ap_ST_fsm_state10 = 60'd512;
parameter    ap_ST_fsm_state11 = 60'd1024;
parameter    ap_ST_fsm_state12 = 60'd2048;
parameter    ap_ST_fsm_state13 = 60'd4096;
parameter    ap_ST_fsm_state14 = 60'd8192;
parameter    ap_ST_fsm_state15 = 60'd16384;
parameter    ap_ST_fsm_state16 = 60'd32768;
parameter    ap_ST_fsm_state17 = 60'd65536;
parameter    ap_ST_fsm_state18 = 60'd131072;
parameter    ap_ST_fsm_state19 = 60'd262144;
parameter    ap_ST_fsm_state20 = 60'd524288;
parameter    ap_ST_fsm_state21 = 60'd1048576;
parameter    ap_ST_fsm_state22 = 60'd2097152;
parameter    ap_ST_fsm_state23 = 60'd4194304;
parameter    ap_ST_fsm_state24 = 60'd8388608;
parameter    ap_ST_fsm_state25 = 60'd16777216;
parameter    ap_ST_fsm_state26 = 60'd33554432;
parameter    ap_ST_fsm_state27 = 60'd67108864;
parameter    ap_ST_fsm_state28 = 60'd134217728;
parameter    ap_ST_fsm_state29 = 60'd268435456;
parameter    ap_ST_fsm_state30 = 60'd536870912;
parameter    ap_ST_fsm_state31 = 60'd1073741824;
parameter    ap_ST_fsm_state32 = 60'd2147483648;
parameter    ap_ST_fsm_state33 = 60'd4294967296;
parameter    ap_ST_fsm_state34 = 60'd8589934592;
parameter    ap_ST_fsm_state35 = 60'd17179869184;
parameter    ap_ST_fsm_state36 = 60'd34359738368;
parameter    ap_ST_fsm_state37 = 60'd68719476736;
parameter    ap_ST_fsm_state38 = 60'd137438953472;
parameter    ap_ST_fsm_state39 = 60'd274877906944;
parameter    ap_ST_fsm_state40 = 60'd549755813888;
parameter    ap_ST_fsm_state41 = 60'd1099511627776;
parameter    ap_ST_fsm_state42 = 60'd2199023255552;
parameter    ap_ST_fsm_state43 = 60'd4398046511104;
parameter    ap_ST_fsm_state44 = 60'd8796093022208;
parameter    ap_ST_fsm_state45 = 60'd17592186044416;
parameter    ap_ST_fsm_state46 = 60'd35184372088832;
parameter    ap_ST_fsm_state47 = 60'd70368744177664;
parameter    ap_ST_fsm_state48 = 60'd140737488355328;
parameter    ap_ST_fsm_state49 = 60'd281474976710656;
parameter    ap_ST_fsm_state50 = 60'd562949953421312;
parameter    ap_ST_fsm_state51 = 60'd1125899906842624;
parameter    ap_ST_fsm_state52 = 60'd2251799813685248;
parameter    ap_ST_fsm_state53 = 60'd4503599627370496;
parameter    ap_ST_fsm_state54 = 60'd9007199254740992;
parameter    ap_ST_fsm_state55 = 60'd18014398509481984;
parameter    ap_ST_fsm_state56 = 60'd36028797018963968;
parameter    ap_ST_fsm_state57 = 60'd72057594037927936;
parameter    ap_ST_fsm_state58 = 60'd144115188075855872;
parameter    ap_ST_fsm_state59 = 60'd288230376151711744;
parameter    ap_ST_fsm_state60 = 60'd576460752303423488;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
output  [11:0] weights2_address0;
output   weights2_ce0;
output   weights2_we0;
output  [63:0] weights2_d0;
input  [63:0] weights2_q0;
output  [11:0] weights2_address1;
output   weights2_ce1;
output   weights2_we1;
output  [63:0] weights2_d1;
input  [63:0] weights2_q1;
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
output  [5:0] d_weights1_0_address0;
output   d_weights1_0_ce0;
input  [63:0] d_weights1_0_q0;
output  [5:0] d_weights1_1_address0;
output   d_weights1_1_ce0;
input  [63:0] d_weights1_1_q0;
output  [5:0] d_weights1_2_address0;
output   d_weights1_2_ce0;
input  [63:0] d_weights1_2_q0;
output  [5:0] d_weights1_3_address0;
output   d_weights1_3_ce0;
input  [63:0] d_weights1_3_q0;
output  [5:0] d_weights1_4_address0;
output   d_weights1_4_ce0;
input  [63:0] d_weights1_4_q0;
output  [5:0] d_weights1_5_address0;
output   d_weights1_5_ce0;
input  [63:0] d_weights1_5_q0;
output  [5:0] d_weights1_6_address0;
output   d_weights1_6_ce0;
input  [63:0] d_weights1_6_q0;
output  [5:0] d_weights1_7_address0;
output   d_weights1_7_ce0;
input  [63:0] d_weights1_7_q0;
output  [5:0] d_weights1_8_address0;
output   d_weights1_8_ce0;
input  [63:0] d_weights1_8_q0;
output  [5:0] d_weights1_9_address0;
output   d_weights1_9_ce0;
input  [63:0] d_weights1_9_q0;
output  [5:0] d_weights1_10_address0;
output   d_weights1_10_ce0;
input  [63:0] d_weights1_10_q0;
output  [5:0] d_weights1_11_address0;
output   d_weights1_11_ce0;
input  [63:0] d_weights1_11_q0;
output  [5:0] d_weights1_12_address0;
output   d_weights1_12_ce0;
input  [63:0] d_weights1_12_q0;
output  [5:0] d_weights1_13_address0;
output   d_weights1_13_ce0;
input  [63:0] d_weights1_13_q0;
output  [5:0] d_weights1_14_address0;
output   d_weights1_14_ce0;
input  [63:0] d_weights1_14_q0;
output  [5:0] d_weights1_15_address0;
output   d_weights1_15_ce0;
input  [63:0] d_weights1_15_q0;
output  [7:0] d_weights2_0_address0;
output   d_weights2_0_ce0;
input  [63:0] d_weights2_0_q0;
output  [7:0] d_weights2_1_address0;
output   d_weights2_1_ce0;
input  [63:0] d_weights2_1_q0;
output  [7:0] d_weights2_2_address0;
output   d_weights2_2_ce0;
input  [63:0] d_weights2_2_q0;
output  [7:0] d_weights2_3_address0;
output   d_weights2_3_ce0;
input  [63:0] d_weights2_3_q0;
output  [7:0] d_weights2_4_address0;
output   d_weights2_4_ce0;
input  [63:0] d_weights2_4_q0;
output  [7:0] d_weights2_5_address0;
output   d_weights2_5_ce0;
input  [63:0] d_weights2_5_q0;
output  [7:0] d_weights2_6_address0;
output   d_weights2_6_ce0;
input  [63:0] d_weights2_6_q0;
output  [7:0] d_weights2_7_address0;
output   d_weights2_7_ce0;
input  [63:0] d_weights2_7_q0;
output  [7:0] d_weights2_8_address0;
output   d_weights2_8_ce0;
input  [63:0] d_weights2_8_q0;
output  [7:0] d_weights2_9_address0;
output   d_weights2_9_ce0;
input  [63:0] d_weights2_9_q0;
output  [7:0] d_weights2_10_address0;
output   d_weights2_10_ce0;
input  [63:0] d_weights2_10_q0;
output  [7:0] d_weights2_11_address0;
output   d_weights2_11_ce0;
input  [63:0] d_weights2_11_q0;
output  [7:0] d_weights2_12_address0;
output   d_weights2_12_ce0;
input  [63:0] d_weights2_12_q0;
output  [7:0] d_weights2_13_address0;
output   d_weights2_13_ce0;
input  [63:0] d_weights2_13_q0;
output  [7:0] d_weights2_14_address0;
output   d_weights2_14_ce0;
input  [63:0] d_weights2_14_q0;
output  [7:0] d_weights2_15_address0;
output   d_weights2_15_ce0;
input  [63:0] d_weights2_15_q0;
input  [63:0] p_read;
input  [63:0] p_read1;
input  [63:0] p_read2;
input  [63:0] p_read3;
input  [63:0] p_read4;
input  [63:0] p_read5;
input  [63:0] p_read6;
input  [63:0] p_read7;
input  [63:0] p_read8;
input  [63:0] p_read9;
input  [63:0] p_read10;
input  [63:0] p_read11;
input  [63:0] p_read12;
input  [63:0] p_read13;
input  [63:0] p_read14;
input  [63:0] p_read15;
input  [63:0] p_read16;
input  [63:0] p_read17;
input  [63:0] p_read18;
input  [63:0] p_read19;
input  [63:0] p_read20;
input  [63:0] p_read21;
input  [63:0] p_read22;
input  [63:0] p_read23;
input  [63:0] p_read24;
input  [63:0] p_read25;
input  [63:0] p_read26;
input  [63:0] p_read27;
input  [63:0] p_read28;
input  [63:0] p_read29;
input  [63:0] p_read30;
input  [63:0] p_read31;
input  [63:0] p_read32;
input  [63:0] p_read33;
input  [63:0] p_read34;
input  [63:0] p_read35;
input  [63:0] p_read36;
input  [63:0] p_read37;
input  [63:0] p_read38;
input  [63:0] p_read39;
input  [63:0] p_read40;
input  [63:0] p_read41;
input  [63:0] p_read42;
input  [63:0] p_read43;
input  [63:0] p_read44;
input  [63:0] p_read45;
input  [63:0] p_read46;
input  [63:0] p_read47;
input  [63:0] p_read48;
input  [63:0] p_read49;
input  [63:0] p_read50;
input  [63:0] p_read51;
input  [63:0] p_read52;
input  [63:0] p_read53;
input  [63:0] p_read54;
input  [63:0] p_read55;
input  [63:0] p_read56;
input  [63:0] p_read57;
input  [63:0] p_read58;
input  [63:0] p_read59;
input  [63:0] p_read60;
input  [63:0] p_read61;
input  [63:0] p_read62;
input  [63:0] p_read63;
input  [63:0] p_read64;
input  [63:0] p_read65;
input  [63:0] p_read66;
input  [63:0] p_read67;
input  [63:0] p_read68;
input  [63:0] p_read69;
input  [63:0] p_read70;
input  [63:0] p_read71;
input  [63:0] p_read72;
input  [63:0] p_read73;
input  [63:0] p_read74;
input  [63:0] p_read75;
input  [63:0] p_read76;
input  [63:0] p_read77;
input  [63:0] p_read78;
input  [63:0] p_read79;
input  [63:0] p_read80;
input  [63:0] p_read81;
input  [63:0] p_read82;
input  [63:0] p_read83;
input  [63:0] p_read84;
input  [63:0] p_read85;
input  [63:0] p_read86;
input  [63:0] p_read87;
input  [63:0] p_read88;
input  [63:0] p_read89;
input  [63:0] p_read90;
input  [63:0] p_read91;
input  [63:0] p_read92;
input  [63:0] p_read93;
input  [63:0] p_read94;
input  [63:0] p_read95;
input  [63:0] p_read96;
input  [63:0] p_read97;
input  [63:0] p_read98;
input  [63:0] p_read99;
input  [63:0] p_read100;
input  [63:0] p_read101;
input  [63:0] p_read102;
input  [63:0] p_read103;
input  [63:0] p_read104;
input  [63:0] p_read105;
input  [63:0] p_read106;
input  [63:0] p_read107;
input  [63:0] p_read108;
input  [63:0] p_read109;
input  [63:0] p_read110;
input  [63:0] p_read111;
input  [63:0] p_read112;
input  [63:0] p_read113;
input  [63:0] p_read114;
input  [63:0] p_read115;
input  [63:0] p_read116;
input  [63:0] p_read117;
input  [63:0] p_read118;
input  [63:0] p_read119;
input  [63:0] p_read120;
input  [63:0] p_read121;
input  [63:0] p_read122;
input  [63:0] p_read123;
input  [63:0] p_read124;
input  [63:0] p_read125;
input  [63:0] p_read126;
input  [63:0] p_read127;
input  [63:0] p_read128;
input  [63:0] p_read129;
input  [63:0] p_read130;
input  [63:0] p_read131;
input  [63:0] p_read132;
input  [63:0] p_read133;
input  [63:0] p_read134;
input  [63:0] p_read135;
input  [63:0] p_read136;
input  [63:0] p_read137;
input  [63:0] p_read138;
input  [63:0] p_read139;
input  [63:0] p_read140;
input  [63:0] p_read141;
input  [63:0] p_read142;
input  [63:0] p_read143;
input  [63:0] p_read144;
input  [63:0] p_read145;
input  [63:0] p_read146;
input  [63:0] p_read147;
input  [63:0] p_read148;
input  [63:0] p_read149;
input  [63:0] p_read150;
input  [63:0] p_read151;
input  [63:0] p_read152;
input  [63:0] p_read153;
input  [63:0] p_read154;
input  [63:0] p_read155;
input  [63:0] p_read156;
input  [63:0] p_read157;
input  [63:0] p_read158;
input  [63:0] p_read159;
input  [63:0] p_read160;
input  [63:0] p_read161;
input  [63:0] p_read162;
input  [63:0] p_read163;
input  [63:0] p_read164;
input  [63:0] p_read165;
input  [63:0] p_read166;
input  [63:0] p_read167;
input  [63:0] p_read168;
input  [63:0] p_read169;
input  [63:0] p_read170;
input  [63:0] p_read171;
input  [63:0] p_read172;
input  [63:0] p_read173;
input  [63:0] p_read174;
input  [63:0] p_read175;
input  [63:0] p_read176;
input  [63:0] p_read177;
input  [63:0] p_read178;
input  [63:0] p_read179;
input  [63:0] p_read180;
input  [63:0] p_read181;
input  [63:0] p_read182;
input  [63:0] p_read183;
input  [63:0] p_read184;
input  [63:0] p_read185;
input  [63:0] p_read186;
input  [63:0] p_read187;
input  [63:0] p_read188;
input  [63:0] p_read189;
input  [63:0] p_read190;
input  [63:0] p_read191;
output  [5:0] biases1_address0;
output   biases1_ce0;
output   biases1_we0;
output  [63:0] biases1_d0;
input  [63:0] biases1_q0;
output  [5:0] biases1_address1;
output   biases1_ce1;
output   biases1_we1;
output  [63:0] biases1_d1;
input  [63:0] biases1_q1;
output  [5:0] biases2_address0;
output   biases2_ce0;
output   biases2_we0;
output  [63:0] biases2_d0;
input  [63:0] biases2_q0;
output  [5:0] biases2_address1;
output   biases2_ce1;
output   biases2_we1;
output  [63:0] biases2_d1;
input  [63:0] biases2_q1;
output  [1:0] biases3_address0;
output   biases3_ce0;
output   biases3_we0;
output  [63:0] biases3_d0;
input  [63:0] biases3_q0;
output  [1:0] biases3_address1;
output   biases3_ce1;
input  [63:0] biases3_q1;
input  [63:0] p_read192;
input  [63:0] p_read193;
input  [63:0] p_read194;
input  [63:0] p_read195;
input  [63:0] p_read196;
input  [63:0] p_read197;
input  [63:0] p_read198;
input  [63:0] p_read199;
input  [63:0] p_read200;
input  [63:0] p_read201;
input  [63:0] p_read202;
input  [63:0] p_read203;
input  [63:0] p_read204;
input  [63:0] p_read205;
input  [63:0] p_read206;
input  [63:0] p_read207;
input  [63:0] p_read208;
input  [63:0] p_read209;
input  [63:0] p_read210;
input  [63:0] p_read211;
input  [63:0] p_read212;
input  [63:0] p_read213;
input  [63:0] p_read214;
input  [63:0] p_read215;
input  [63:0] p_read216;
input  [63:0] p_read217;
input  [63:0] p_read218;
input  [63:0] p_read219;
input  [63:0] p_read220;
input  [63:0] p_read221;
input  [63:0] p_read222;
input  [63:0] p_read223;
input  [63:0] p_read224;
input  [63:0] p_read225;
input  [63:0] p_read226;
input  [63:0] p_read227;
input  [63:0] p_read228;
input  [63:0] p_read229;
input  [63:0] p_read230;
input  [63:0] p_read231;
input  [63:0] p_read232;
input  [63:0] p_read233;
input  [63:0] p_read234;
input  [63:0] p_read235;
input  [63:0] p_read236;
input  [63:0] p_read237;
input  [63:0] p_read238;
input  [63:0] p_read239;
input  [63:0] p_read240;
input  [63:0] p_read241;
input  [63:0] p_read242;
input  [63:0] p_read243;
input  [63:0] p_read244;
input  [63:0] p_read245;
input  [63:0] p_read246;
input  [63:0] p_read247;
input  [63:0] p_read248;
input  [63:0] p_read249;
input  [63:0] p_read250;
input  [63:0] p_read251;
input  [63:0] p_read252;
input  [63:0] p_read253;
input  [63:0] p_read254;
input  [63:0] p_read255;
input  [63:0] p_read256;
input  [63:0] p_read257;
input  [63:0] p_read258;
input  [63:0] p_read259;
input  [63:0] p_read260;
input  [63:0] p_read261;
input  [63:0] p_read262;
input  [63:0] p_read263;
input  [63:0] p_read264;
input  [63:0] p_read265;
input  [63:0] p_read266;
input  [63:0] p_read267;
input  [63:0] p_read268;
input  [63:0] p_read269;
input  [63:0] p_read270;
input  [63:0] p_read271;
input  [63:0] p_read272;
input  [63:0] p_read273;
input  [63:0] p_read274;
input  [63:0] p_read275;
input  [63:0] p_read276;
input  [63:0] p_read277;
input  [63:0] p_read278;
input  [63:0] p_read279;
input  [63:0] p_read280;
input  [63:0] p_read281;
input  [63:0] p_read282;
input  [63:0] p_read283;
input  [63:0] p_read284;
input  [63:0] p_read285;
input  [63:0] p_read286;
input  [63:0] p_read287;
input  [63:0] p_read288;
input  [63:0] p_read289;
input  [63:0] p_read290;
input  [63:0] p_read291;
input  [63:0] p_read292;
input  [63:0] p_read293;
input  [63:0] p_read294;
input  [63:0] p_read295;
input  [63:0] p_read296;
input  [63:0] p_read297;
input  [63:0] p_read298;
input  [63:0] p_read299;
input  [63:0] p_read300;
input  [63:0] p_read301;
input  [63:0] p_read302;
input  [63:0] p_read303;
input  [63:0] p_read304;
input  [63:0] p_read305;
input  [63:0] p_read306;
input  [63:0] p_read307;
input  [63:0] p_read308;
input  [63:0] p_read309;
input  [63:0] p_read310;
input  [63:0] p_read311;
input  [63:0] p_read312;
input  [63:0] p_read313;
input  [63:0] p_read314;
input  [63:0] p_read315;
input  [63:0] p_read316;
input  [63:0] p_read317;
input  [63:0] p_read318;
input  [63:0] p_read319;
input  [63:0] p_read320;
input  [63:0] p_read321;
input  [63:0] p_read322;
output  [63:0] grp_fu_10475_p_din0;
output  [63:0] grp_fu_10475_p_din1;
output  [1:0] grp_fu_10475_p_opcode;
input  [63:0] grp_fu_10475_p_dout0;
output   grp_fu_10475_p_ce;
output  [63:0] grp_fu_10479_p_din0;
output  [63:0] grp_fu_10479_p_din1;
output  [1:0] grp_fu_10479_p_opcode;
input  [63:0] grp_fu_10479_p_dout0;
output   grp_fu_10479_p_ce;
output  [63:0] grp_fu_10483_p_din0;
output  [63:0] grp_fu_10483_p_din1;
input  [63:0] grp_fu_10483_p_dout0;
output   grp_fu_10483_p_ce;
output  [63:0] grp_fu_10503_p_din0;
output  [63:0] grp_fu_10503_p_din1;
input  [63:0] grp_fu_10503_p_dout0;
output   grp_fu_10503_p_ce;
output  [63:0] grp_fu_10491_p_din0;
output  [63:0] grp_fu_10491_p_din1;
input  [63:0] grp_fu_10491_p_dout0;
output   grp_fu_10491_p_ce;
output  [63:0] grp_fu_10487_p_din0;
output  [63:0] grp_fu_10487_p_din1;
input  [63:0] grp_fu_10487_p_dout0;
output   grp_fu_10487_p_ce;
output  [63:0] grp_fu_10507_p_din0;
output  [63:0] grp_fu_10507_p_din1;
input  [63:0] grp_fu_10507_p_dout0;
output   grp_fu_10507_p_ce;
output  [63:0] grp_fu_10511_p_din0;
output  [63:0] grp_fu_10511_p_din1;
input  [63:0] grp_fu_10511_p_dout0;
output   grp_fu_10511_p_ce;
output  [63:0] grp_fu_10515_p_din0;
output  [63:0] grp_fu_10515_p_din1;
input  [63:0] grp_fu_10515_p_dout0;
output   grp_fu_10515_p_ce;
output  [63:0] grp_fu_10519_p_din0;
output  [63:0] grp_fu_10519_p_din1;
input  [63:0] grp_fu_10519_p_dout0;
output   grp_fu_10519_p_ce;
output  [63:0] grp_fu_10523_p_din0;
output  [63:0] grp_fu_10523_p_din1;
input  [63:0] grp_fu_10523_p_dout0;
output   grp_fu_10523_p_ce;
output  [63:0] grp_fu_10527_p_din0;
output  [63:0] grp_fu_10527_p_din1;
input  [63:0] grp_fu_10527_p_dout0;
output   grp_fu_10527_p_ce;
output  [63:0] grp_fu_10499_p_din0;
output  [63:0] grp_fu_10499_p_din1;
input  [63:0] grp_fu_10499_p_dout0;
output   grp_fu_10499_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] weights1_address0;
reg weights1_ce0;
reg weights1_we0;
reg[63:0] weights1_d0;
reg[9:0] weights1_address1;
reg weights1_ce1;
reg weights1_we1;
reg[63:0] weights1_d1;
reg[11:0] weights2_address0;
reg weights2_ce0;
reg weights2_we0;
reg[63:0] weights2_d0;
reg[11:0] weights2_address1;
reg weights2_ce1;
reg weights2_we1;
reg[63:0] weights2_d1;
reg[7:0] weights3_address0;
reg weights3_ce0;
reg weights3_we0;
reg[63:0] weights3_d0;
reg[7:0] weights3_address1;
reg weights3_ce1;
reg weights3_we1;
reg[63:0] weights3_d1;
reg[5:0] biases1_address0;
reg biases1_ce0;
reg biases1_we0;
reg[63:0] biases1_d0;
reg[5:0] biases1_address1;
reg biases1_ce1;
reg biases1_we1;
reg[63:0] biases1_d1;
reg[5:0] biases2_address0;
reg biases2_ce0;
reg biases2_we0;
reg[63:0] biases2_d0;
reg[5:0] biases2_address1;
reg biases2_ce1;
reg biases2_we1;
reg[63:0] biases2_d1;
reg[1:0] biases3_address0;
reg biases3_ce0;
reg biases3_we0;
reg[63:0] biases3_d0;
reg biases3_ce1;
(* fsm_encoding = "none" *) reg   [59:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] grp_fu_3518_p2;
reg   [63:0] norm_1_reg_5247;
wire    ap_CS_fsm_state59;
wire   [63:0] grp_fu_3524_p2;
reg   [63:0] bias_norm_reg_5252;
wire   [63:0] grp_fu_3530_p2;
reg   [63:0] norm_reg_5257;
wire   [63:0] grp_fu_3536_p2;
reg   [63:0] bias_norm_26_reg_5262;
wire   [63:0] grp_fu_3542_p2;
reg   [63:0] norm_72_reg_5267;
wire   [63:0] grp_fu_3548_p2;
reg   [63:0] bias_norm_1_reg_5272;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_0_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_0_ce0;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_d0;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_we1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_d1;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_1_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_2_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_3_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_3_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_4_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_4_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_5_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_5_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_6_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_6_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_7_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_7_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_8_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_8_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_9_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_9_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_10_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_10_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_11_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_11_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_12_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_12_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_13_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_13_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_14_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_14_ce0;
wire   [5:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_15_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_15_ce0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_norm_2_out;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_norm_2_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5277_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5277_p_din1;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5277_p_opcode;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5277_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5281_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5281_p_din1;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5281_p_opcode;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5281_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5285_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5285_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5285_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_d1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_bias_norm_out;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_bias_norm_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_grp_fu_5289_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_grp_fu_5289_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_grp_fu_5289_p_ce;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_ready;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_0_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_0_ce0;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_d0;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_we1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_d1;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_1_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_2_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_3_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_3_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_4_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_4_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_5_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_5_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_6_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_6_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_7_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_7_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_8_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_8_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_9_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_9_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_10_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_10_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_11_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_11_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_12_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_12_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_13_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_13_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_14_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_14_ce0;
wire   [7:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_15_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_15_ce0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_norm_19_out;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_norm_19_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_grp_fu_5297_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_grp_fu_5297_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_grp_fu_5297_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_d1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_bias_norm_18_out;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_bias_norm_18_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_grp_fu_5301_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_grp_fu_5301_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_grp_fu_5301_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_ready;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_d0;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_d1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_norm_36_out;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_norm_36_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5305_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5305_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5305_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5309_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5309_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5309_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5313_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5313_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5313_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5317_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5317_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5317_p_ce;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5321_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5321_p_din1;
wire    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5321_p_ce;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_ready;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_biases3_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_biases3_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_biases3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_biases3_d0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_bias_norm_25_out;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_bias_norm_25_out_ap_vld;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_grp_fu_5325_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_grp_fu_5325_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_grp_fu_5325_p_ce;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_ready;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_d0;
wire   [9:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_we1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_d1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_grp_fu_5293_p_din0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_grp_fu_5293_p_din1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_grp_fu_5293_p_ce;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_d1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_ready;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_d0;
wire   [11:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_ce1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_we1;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_d1;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_ready;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_d0;
wire   [5:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_d1;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_start;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_done;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_idle;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_ready;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_address0;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_ce0;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_d0;
wire   [7:0] grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_address1;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_ce1;
wire    grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_we1;
wire   [63:0] grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_d1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_start;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_done;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_idle;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_ready;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_address0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_ce0;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_we0;
wire   [63:0] grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_d0;
wire   [1:0] grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_address1;
wire    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_ce1;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_start_reg;
reg   [63:0] norm_36_loc_fu_766;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_start_reg;
wire    ap_CS_fsm_state60;
reg    grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_start_reg;
reg    grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_start_reg;
reg    grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_fu_5277_ce;
reg    grp_fu_5281_ce;
reg    grp_fu_5285_ce;
reg    grp_fu_5289_ce;
reg    grp_fu_5293_ce;
reg    grp_fu_5297_ce;
reg    grp_fu_5301_ce;
reg    grp_fu_5305_ce;
reg    grp_fu_5309_ce;
reg    grp_fu_5313_ce;
reg    grp_fu_5317_ce;
reg    grp_fu_5321_ce;
reg    grp_fu_5325_ce;
reg    ap_block_state60_on_subcall_done;
reg   [59:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_block_state2_on_subcall_done;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
wire    ap_ST_fsm_state32_blk;
wire    ap_ST_fsm_state33_blk;
wire    ap_ST_fsm_state34_blk;
wire    ap_ST_fsm_state35_blk;
wire    ap_ST_fsm_state36_blk;
wire    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
wire    ap_ST_fsm_state39_blk;
wire    ap_ST_fsm_state40_blk;
wire    ap_ST_fsm_state41_blk;
wire    ap_ST_fsm_state42_blk;
wire    ap_ST_fsm_state43_blk;
wire    ap_ST_fsm_state44_blk;
wire    ap_ST_fsm_state45_blk;
wire    ap_ST_fsm_state46_blk;
wire    ap_ST_fsm_state47_blk;
wire    ap_ST_fsm_state48_blk;
wire    ap_ST_fsm_state49_blk;
wire    ap_ST_fsm_state50_blk;
wire    ap_ST_fsm_state51_blk;
wire    ap_ST_fsm_state52_blk;
wire    ap_ST_fsm_state53_blk;
wire    ap_ST_fsm_state54_blk;
wire    ap_ST_fsm_state55_blk;
wire    ap_ST_fsm_state56_blk;
wire    ap_ST_fsm_state57_blk;
wire    ap_ST_fsm_state58_blk;
wire    ap_ST_fsm_state59_blk;
reg    ap_ST_fsm_state60_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 60'd1;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_start_reg = 1'b0;
#0 grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_start_reg = 1'b0;
end
backprop_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1 grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_ready),.d_weights1_0_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_0_address0),.d_weights1_0_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_0_ce0),.d_weights1_0_q0(d_weights1_0_q0),.weights1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_address0),.weights1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_ce0),.weights1_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_we0),.weights1_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_d0),.weights1_q0(weights1_q0),.weights1_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_address1),.weights1_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_ce1),.weights1_we1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_we1),.weights1_d1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_d1),.weights1_q1(weights1_q1),.d_weights1_1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_1_address0),.d_weights1_1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_1_ce0),.d_weights1_1_q0(d_weights1_1_q0),.d_weights1_2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_2_address0),.d_weights1_2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_2_ce0),.d_weights1_2_q0(d_weights1_2_q0),.d_weights1_3_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_3_address0),.d_weights1_3_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_3_ce0),.d_weights1_3_q0(d_weights1_3_q0),.d_weights1_4_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_4_address0),.d_weights1_4_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_4_ce0),.d_weights1_4_q0(d_weights1_4_q0),.d_weights1_5_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_5_address0),.d_weights1_5_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_5_ce0),.d_weights1_5_q0(d_weights1_5_q0),.d_weights1_6_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_6_address0),.d_weights1_6_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_6_ce0),.d_weights1_6_q0(d_weights1_6_q0),.d_weights1_7_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_7_address0),.d_weights1_7_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_7_ce0),.d_weights1_7_q0(d_weights1_7_q0),.d_weights1_8_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_8_address0),.d_weights1_8_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_8_ce0),.d_weights1_8_q0(d_weights1_8_q0),.d_weights1_9_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_9_address0),.d_weights1_9_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_9_ce0),.d_weights1_9_q0(d_weights1_9_q0),.d_weights1_10_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_10_address0),.d_weights1_10_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_10_ce0),.d_weights1_10_q0(d_weights1_10_q0),.d_weights1_11_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_11_address0),.d_weights1_11_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_11_ce0),.d_weights1_11_q0(d_weights1_11_q0),.d_weights1_12_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_12_address0),.d_weights1_12_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_12_ce0),.d_weights1_12_q0(d_weights1_12_q0),.d_weights1_13_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_13_address0),.d_weights1_13_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_13_ce0),.d_weights1_13_q0(d_weights1_13_q0),.d_weights1_14_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_14_address0),.d_weights1_14_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_14_ce0),.d_weights1_14_q0(d_weights1_14_q0),.d_weights1_15_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_15_address0),.d_weights1_15_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_15_ce0),.d_weights1_15_q0(d_weights1_15_q0),.norm_2_out(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_norm_2_out),.norm_2_out_ap_vld(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_norm_2_out_ap_vld),.grp_fu_5277_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5277_p_din0),.grp_fu_5277_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5277_p_din1),.grp_fu_5277_p_opcode(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5277_p_opcode),.grp_fu_5277_p_dout0(grp_fu_10475_p_dout0),.grp_fu_5277_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5277_p_ce),.grp_fu_5281_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5281_p_din0),.grp_fu_5281_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5281_p_din1),.grp_fu_5281_p_opcode(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5281_p_opcode),.grp_fu_5281_p_dout0(grp_fu_10479_p_dout0),.grp_fu_5281_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5281_p_ce),.grp_fu_5285_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5285_p_din0),.grp_fu_5285_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5285_p_din1),.grp_fu_5285_p_dout0(grp_fu_10483_p_dout0),.grp_fu_5285_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5285_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop2 grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_ready),.p_read192(p_read192),.p_read208(p_read208),.p_read224(p_read224),.p_read240(p_read240),.biases1_address0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_address0),.biases1_ce0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_ce0),.biases1_we0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_we0),.biases1_d0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_d0),.biases1_q0(biases1_q0),.biases1_address1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_address1),.biases1_ce1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_ce1),.biases1_we1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_we1),.biases1_d1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_d1),.biases1_q1(biases1_q1),.p_read193(p_read193),.p_read209(p_read209),.p_read225(p_read225),.p_read241(p_read241),.p_read194(p_read194),.p_read210(p_read210),.p_read226(p_read226),.p_read242(p_read242),.p_read195(p_read195),.p_read211(p_read211),.p_read227(p_read227),.p_read243(p_read243),.p_read196(p_read196),.p_read212(p_read212),.p_read228(p_read228),.p_read244(p_read244),.p_read197(p_read197),.p_read213(p_read213),.p_read229(p_read229),.p_read245(p_read245),.p_read198(p_read198),.p_read214(p_read214),.p_read230(p_read230),.p_read246(p_read246),.p_read199(p_read199),.p_read215(p_read215),.p_read231(p_read231),.p_read247(p_read247),.p_read200(p_read200),.p_read216(p_read216),.p_read232(p_read232),.p_read248(p_read248),.p_read201(p_read201),.p_read217(p_read217),.p_read233(p_read233),.p_read249(p_read249),.p_read202(p_read202),.p_read218(p_read218),.p_read234(p_read234),.p_read250(p_read250),.p_read203(p_read203),.p_read219(p_read219),.p_read235(p_read235),.p_read251(p_read251),.p_read204(p_read204),.p_read220(p_read220),.p_read236(p_read236),.p_read252(p_read252),.p_read205(p_read205),.p_read221(p_read221),.p_read237(p_read237),.p_read253(p_read253),.p_read206(p_read206),.p_read222(p_read222),.p_read238(p_read238),.p_read254(p_read254),.p_read207(p_read207),.p_read223(p_read223),.p_read239(p_read239),.p_read255(p_read255),.bias_norm_out(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_bias_norm_out),.bias_norm_out_ap_vld(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_bias_norm_out_ap_vld),.grp_fu_5289_p_din0(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_grp_fu_5289_p_din0),.grp_fu_5289_p_din1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_grp_fu_5289_p_din1),.grp_fu_5289_p_dout0(grp_fu_10503_p_dout0),.grp_fu_5289_p_ce(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_grp_fu_5289_p_ce));
backprop_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_ready),.d_weights2_0_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_0_address0),.d_weights2_0_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_0_ce0),.d_weights2_0_q0(d_weights2_0_q0),.weights2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_address0),.weights2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_ce0),.weights2_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_we0),.weights2_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_d0),.weights2_q0(weights2_q0),.weights2_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_address1),.weights2_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_ce1),.weights2_we1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_we1),.weights2_d1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_d1),.weights2_q1(weights2_q1),.d_weights2_1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_1_address0),.d_weights2_1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_1_ce0),.d_weights2_1_q0(d_weights2_1_q0),.d_weights2_2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_2_address0),.d_weights2_2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_2_ce0),.d_weights2_2_q0(d_weights2_2_q0),.d_weights2_3_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_3_address0),.d_weights2_3_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_3_ce0),.d_weights2_3_q0(d_weights2_3_q0),.d_weights2_4_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_4_address0),.d_weights2_4_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_4_ce0),.d_weights2_4_q0(d_weights2_4_q0),.d_weights2_5_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_5_address0),.d_weights2_5_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_5_ce0),.d_weights2_5_q0(d_weights2_5_q0),.d_weights2_6_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_6_address0),.d_weights2_6_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_6_ce0),.d_weights2_6_q0(d_weights2_6_q0),.d_weights2_7_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_7_address0),.d_weights2_7_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_7_ce0),.d_weights2_7_q0(d_weights2_7_q0),.d_weights2_8_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_8_address0),.d_weights2_8_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_8_ce0),.d_weights2_8_q0(d_weights2_8_q0),.d_weights2_9_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_9_address0),.d_weights2_9_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_9_ce0),.d_weights2_9_q0(d_weights2_9_q0),.d_weights2_10_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_10_address0),.d_weights2_10_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_10_ce0),.d_weights2_10_q0(d_weights2_10_q0),.d_weights2_11_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_11_address0),.d_weights2_11_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_11_ce0),.d_weights2_11_q0(d_weights2_11_q0),.d_weights2_12_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_12_address0),.d_weights2_12_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_12_ce0),.d_weights2_12_q0(d_weights2_12_q0),.d_weights2_13_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_13_address0),.d_weights2_13_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_13_ce0),.d_weights2_13_q0(d_weights2_13_q0),.d_weights2_14_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_14_address0),.d_weights2_14_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_14_ce0),.d_weights2_14_q0(d_weights2_14_q0),.d_weights2_15_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_15_address0),.d_weights2_15_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_15_ce0),.d_weights2_15_q0(d_weights2_15_q0),.norm_19_out(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_norm_19_out),.norm_19_out_ap_vld(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_norm_19_out_ap_vld),.grp_fu_5297_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_grp_fu_5297_p_din0),.grp_fu_5297_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_grp_fu_5297_p_din1),.grp_fu_5297_p_dout0(grp_fu_10487_p_dout0),.grp_fu_5297_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_grp_fu_5297_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop6 grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_ready),.p_read256(p_read256),.p_read272(p_read272),.p_read288(p_read288),.p_read304(p_read304),.biases2_address0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_address0),.biases2_ce0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_ce0),.biases2_we0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_we0),.biases2_d0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_d0),.biases2_q0(biases2_q0),.biases2_address1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_address1),.biases2_ce1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_ce1),.biases2_we1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_we1),.biases2_d1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_d1),.biases2_q1(biases2_q1),.p_read257(p_read257),.p_read273(p_read273),.p_read289(p_read289),.p_read305(p_read305),.p_read258(p_read258),.p_read274(p_read274),.p_read290(p_read290),.p_read306(p_read306),.p_read259(p_read259),.p_read275(p_read275),.p_read291(p_read291),.p_read307(p_read307),.p_read260(p_read260),.p_read276(p_read276),.p_read292(p_read292),.p_read308(p_read308),.p_read261(p_read261),.p_read277(p_read277),.p_read293(p_read293),.p_read309(p_read309),.p_read262(p_read262),.p_read278(p_read278),.p_read294(p_read294),.p_read310(p_read310),.p_read263(p_read263),.p_read279(p_read279),.p_read295(p_read295),.p_read311(p_read311),.p_read264(p_read264),.p_read280(p_read280),.p_read296(p_read296),.p_read312(p_read312),.p_read265(p_read265),.p_read281(p_read281),.p_read297(p_read297),.p_read313(p_read313),.p_read266(p_read266),.p_read282(p_read282),.p_read298(p_read298),.p_read314(p_read314),.p_read267(p_read267),.p_read283(p_read283),.p_read299(p_read299),.p_read315(p_read315),.p_read268(p_read268),.p_read284(p_read284),.p_read300(p_read300),.p_read316(p_read316),.p_read269(p_read269),.p_read285(p_read285),.p_read301(p_read301),.p_read317(p_read317),.p_read270(p_read270),.p_read286(p_read286),.p_read302(p_read302),.p_read318(p_read318),.p_read271(p_read271),.p_read287(p_read287),.p_read303(p_read303),.p_read319(p_read319),.bias_norm_18_out(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_bias_norm_18_out),.bias_norm_18_out_ap_vld(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_bias_norm_18_out_ap_vld),.grp_fu_5301_p_din0(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_grp_fu_5301_p_din0),.grp_fu_5301_p_din1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_grp_fu_5301_p_din1),.grp_fu_5301_p_dout0(grp_fu_10507_p_dout0),.grp_fu_5301_p_ce(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_grp_fu_5301_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop9 grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_ready),.p_read(p_read),.p_read48(p_read48),.p_read96(p_read96),.p_read144(p_read144),.weights3_address0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_address0),.weights3_ce0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_ce0),.weights3_we0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_we0),.weights3_d0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_d0),.weights3_q0(weights3_q0),.weights3_address1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_address1),.weights3_ce1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_ce1),.weights3_we1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_we1),.weights3_d1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_d1),.weights3_q1(weights3_q1),.p_read1(p_read1),.p_read49(p_read49),.p_read97(p_read97),.p_read145(p_read145),.p_read2(p_read2),.p_read50(p_read50),.p_read98(p_read98),.p_read146(p_read146),.p_read3(p_read3),.p_read51(p_read51),.p_read99(p_read99),.p_read147(p_read147),.p_read4(p_read4),.p_read52(p_read52),.p_read100(p_read100),.p_read148(p_read148),.p_read5(p_read5),.p_read53(p_read53),.p_read101(p_read101),.p_read149(p_read149),.p_read6(p_read6),.p_read54(p_read54),.p_read102(p_read102),.p_read150(p_read150),.p_read7(p_read7),.p_read55(p_read55),.p_read103(p_read103),.p_read151(p_read151),.p_read8(p_read8),.p_read56(p_read56),.p_read104(p_read104),.p_read152(p_read152),.p_read9(p_read9),.p_read57(p_read57),.p_read105(p_read105),.p_read153(p_read153),.p_read10(p_read10),.p_read58(p_read58),.p_read106(p_read106),.p_read154(p_read154),.p_read11(p_read11),.p_read59(p_read59),.p_read107(p_read107),.p_read155(p_read155),.p_read12(p_read12),.p_read60(p_read60),.p_read108(p_read108),.p_read156(p_read156),.p_read13(p_read13),.p_read61(p_read61),.p_read109(p_read109),.p_read157(p_read157),.p_read14(p_read14),.p_read62(p_read62),.p_read110(p_read110),.p_read158(p_read158),.p_read15(p_read15),.p_read63(p_read63),.p_read111(p_read111),.p_read159(p_read159),.p_read16(p_read16),.p_read64(p_read64),.p_read112(p_read112),.p_read160(p_read160),.p_read17(p_read17),.p_read65(p_read65),.p_read113(p_read113),.p_read161(p_read161),.p_read18(p_read18),.p_read66(p_read66),.p_read114(p_read114),.p_read162(p_read162),.p_read19(p_read19),.p_read67(p_read67),.p_read115(p_read115),.p_read163(p_read163),.p_read20(p_read20),.p_read68(p_read68),.p_read116(p_read116),.p_read164(p_read164),.p_read21(p_read21),.p_read69(p_read69),.p_read117(p_read117),.p_read165(p_read165),.p_read22(p_read22),.p_read70(p_read70),.p_read118(p_read118),.p_read166(p_read166),.p_read23(p_read23),.p_read71(p_read71),.p_read119(p_read119),.p_read167(p_read167),.p_read24(p_read24),.p_read72(p_read72),.p_read120(p_read120),.p_read168(p_read168),.p_read25(p_read25),.p_read73(p_read73),.p_read121(p_read121),.p_read169(p_read169),.p_read26(p_read26),.p_read74(p_read74),.p_read122(p_read122),.p_read170(p_read170),.p_read27(p_read27),.p_read75(p_read75),.p_read123(p_read123),.p_read171(p_read171),.p_read28(p_read28),.p_read76(p_read76),.p_read124(p_read124),.p_read172(p_read172),.p_read29(p_read29),.p_read77(p_read77),.p_read125(p_read125),.p_read173(p_read173),.p_read30(p_read30),.p_read78(p_read78),.p_read126(p_read126),.p_read174(p_read174),.p_read31(p_read31),.p_read79(p_read79),.p_read127(p_read127),.p_read175(p_read175),.p_read32(p_read32),.p_read80(p_read80),.p_read128(p_read128),.p_read176(p_read176),.p_read33(p_read33),.p_read81(p_read81),.p_read129(p_read129),.p_read177(p_read177),.p_read34(p_read34),.p_read82(p_read82),.p_read130(p_read130),.p_read178(p_read178),.p_read35(p_read35),.p_read83(p_read83),.p_read131(p_read131),.p_read179(p_read179),.p_read36(p_read36),.p_read84(p_read84),.p_read132(p_read132),.p_read180(p_read180),.p_read37(p_read37),.p_read85(p_read85),.p_read133(p_read133),.p_read181(p_read181),.p_read38(p_read38),.p_read86(p_read86),.p_read134(p_read134),.p_read182(p_read182),.p_read39(p_read39),.p_read87(p_read87),.p_read135(p_read135),.p_read183(p_read183),.p_read40(p_read40),.p_read88(p_read88),.p_read136(p_read136),.p_read184(p_read184),.p_read41(p_read41),.p_read89(p_read89),.p_read137(p_read137),.p_read185(p_read185),.p_read42(p_read42),.p_read90(p_read90),.p_read138(p_read138),.p_read186(p_read186),.p_read43(p_read43),.p_read91(p_read91),.p_read139(p_read139),.p_read187(p_read187),.p_read44(p_read44),.p_read92(p_read92),.p_read140(p_read140),.p_read188(p_read188),.p_read45(p_read45),.p_read93(p_read93),.p_read141(p_read141),.p_read189(p_read189),.p_read46(p_read46),.p_read94(p_read94),.p_read142(p_read142),.p_read190(p_read190),.p_read47(p_read47),.p_read95(p_read95),.p_read143(p_read143),.p_read191(p_read191),.norm_36_out(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_norm_36_out),.norm_36_out_ap_vld(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_norm_36_out_ap_vld),.grp_fu_5305_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5305_p_din0),.grp_fu_5305_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5305_p_din1),.grp_fu_5305_p_dout0(grp_fu_10511_p_dout0),.grp_fu_5305_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5305_p_ce),.grp_fu_5309_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5309_p_din0),.grp_fu_5309_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5309_p_din1),.grp_fu_5309_p_dout0(grp_fu_10515_p_dout0),.grp_fu_5309_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5309_p_ce),.grp_fu_5313_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5313_p_din0),.grp_fu_5313_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5313_p_din1),.grp_fu_5313_p_dout0(grp_fu_10519_p_dout0),.grp_fu_5313_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5313_p_ce),.grp_fu_5317_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5317_p_din0),.grp_fu_5317_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5317_p_din1),.grp_fu_5317_p_dout0(grp_fu_10523_p_dout0),.grp_fu_5317_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5317_p_ce),.grp_fu_5321_p_din0(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5321_p_din0),.grp_fu_5321_p_din1(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5321_p_din1),.grp_fu_5321_p_dout0(grp_fu_10527_p_dout0),.grp_fu_5321_p_ce(grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5321_p_ce));
backprop_update_weights_1_Pipeline_VITIS_LOOP_184_6 grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_ready),.p_read320(p_read320),.p_read321(p_read321),.p_read322(p_read322),.biases3_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_biases3_address0),.biases3_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_biases3_ce0),.biases3_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_biases3_we0),.biases3_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_biases3_d0),.biases3_q0(biases3_q0),.bias_norm_25_out(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_bias_norm_25_out),.bias_norm_25_out_ap_vld(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_bias_norm_25_out_ap_vld),.grp_fu_5325_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_grp_fu_5325_p_din0),.grp_fu_5325_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_grp_fu_5325_p_din1),.grp_fu_5325_p_dout0(grp_fu_10499_p_dout0),.grp_fu_5325_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_grp_fu_5325_p_ce));
backprop_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3 grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_ready),.weights1_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_address0),.weights1_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_ce0),.weights1_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_we0),.weights1_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_d0),.weights1_q0(weights1_q0),.weights1_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_address1),.weights1_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_ce1),.weights1_we1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_we1),.weights1_d1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_d1),.weights1_q1(weights1_q1),.norm_1(norm_1_reg_5247),.grp_fu_5293_p_din0(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_grp_fu_5293_p_din0),.grp_fu_5293_p_din1(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_grp_fu_5293_p_din1),.grp_fu_5293_p_dout0(grp_fu_10491_p_dout0),.grp_fu_5293_p_ce(grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_grp_fu_5293_p_ce));
backprop_update_weights_1_Pipeline_up_weight_loop4 grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_ready),.biases1_address0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_address0),.biases1_ce0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_ce0),.biases1_we0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_we0),.biases1_d0(grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_d0),.biases1_q0(biases1_q0),.biases1_address1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_address1),.biases1_ce1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_ce1),.biases1_we1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_we1),.biases1_d1(grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_d1),.biases1_q1(biases1_q1),.bias_norm_39(bias_norm_reg_5252));
backprop_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7 grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_ready),.weights2_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_address0),.weights2_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_ce0),.weights2_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_we0),.weights2_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_d0),.weights2_q0(weights2_q0),.weights2_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_address1),.weights2_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_ce1),.weights2_we1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_we1),.weights2_d1(grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_d1),.weights2_q1(weights2_q1),.norm_18(norm_reg_5257));
backprop_update_weights_1_Pipeline_up_weight_loop8 grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_ready),.biases2_address0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_address0),.biases2_ce0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_ce0),.biases2_we0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_we0),.biases2_d0(grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_d0),.biases2_q0(biases2_q0),.biases2_address1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_address1),.biases2_ce1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_ce1),.biases2_we1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_we1),.biases2_d1(grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_d1),.biases2_q1(biases2_q1),.bias_norm_17(bias_norm_26_reg_5262));
backprop_update_weights_1_Pipeline_up_weight_loop10 grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_start),.ap_done(grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_done),.ap_idle(grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_ready),.weights3_address0(grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_address0),.weights3_ce0(grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_ce0),.weights3_we0(grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_we0),.weights3_d0(grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_d0),.weights3_q0(weights3_q0),.weights3_address1(grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_address1),.weights3_ce1(grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_ce1),.weights3_we1(grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_we1),.weights3_d1(grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_d1),.weights3_q1(weights3_q1),.norm_84(norm_72_reg_5267));
backprop_update_weights_1_Pipeline_VITIS_LOOP_197_8 grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_start),.ap_done(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_done),.ap_idle(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_idle),.ap_ready(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_ready),.biases3_address0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_address0),.biases3_ce0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_ce0),.biases3_we0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_we0),.biases3_d0(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_d0),.biases3_address1(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_address1),.biases3_ce1(grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_ce1),.biases3_q1(biases3_q1),.bias_norm_36(bias_norm_1_reg_5272));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U1803(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_norm_2_out),.ce(1'b1),.dout(grp_fu_3518_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U1804(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_bias_norm_out),.ce(1'b1),.dout(grp_fu_3524_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U1805(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_norm_19_out),.ce(1'b1),.dout(grp_fu_3530_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U1806(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_bias_norm_18_out),.ce(1'b1),.dout(grp_fu_3536_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U1807(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(norm_36_loc_fu_766),.ce(1'b1),.dout(grp_fu_3542_p2));
backprop_dsqrt_64ns_64ns_64_57_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 57 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_57_no_dsp_1_U1808(.clk(ap_clk),.reset(ap_rst),.din0(64'd0),.din1(grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_bias_norm_25_out),.ce(1'b1),.dout(grp_fu_3548_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state59)) begin
            grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_ready == 1'b1)) begin
            grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        bias_norm_1_reg_5272 <= grp_fu_3548_p2;
        bias_norm_26_reg_5262 <= grp_fu_3536_p2;
        bias_norm_reg_5252 <= grp_fu_3524_p2;
        norm_1_reg_5247 <= grp_fu_3518_p2;
        norm_72_reg_5267 <= grp_fu_3542_p2;
        norm_reg_5257 <= grp_fu_3530_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_norm_36_out_ap_vld == 1'b1))) begin
        norm_36_loc_fu_766 <= grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_norm_36_out;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state2_on_subcall_done)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
assign ap_ST_fsm_state35_blk = 1'b0;
assign ap_ST_fsm_state36_blk = 1'b0;
assign ap_ST_fsm_state37_blk = 1'b0;
assign ap_ST_fsm_state38_blk = 1'b0;
assign ap_ST_fsm_state39_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state40_blk = 1'b0;
assign ap_ST_fsm_state41_blk = 1'b0;
assign ap_ST_fsm_state42_blk = 1'b0;
assign ap_ST_fsm_state43_blk = 1'b0;
assign ap_ST_fsm_state44_blk = 1'b0;
assign ap_ST_fsm_state45_blk = 1'b0;
assign ap_ST_fsm_state46_blk = 1'b0;
assign ap_ST_fsm_state47_blk = 1'b0;
assign ap_ST_fsm_state48_blk = 1'b0;
assign ap_ST_fsm_state49_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state50_blk = 1'b0;
assign ap_ST_fsm_state51_blk = 1'b0;
assign ap_ST_fsm_state52_blk = 1'b0;
assign ap_ST_fsm_state53_blk = 1'b0;
assign ap_ST_fsm_state54_blk = 1'b0;
assign ap_ST_fsm_state55_blk = 1'b0;
assign ap_ST_fsm_state56_blk = 1'b0;
assign ap_ST_fsm_state57_blk = 1'b0;
assign ap_ST_fsm_state58_blk = 1'b0;
assign ap_ST_fsm_state59_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state60_on_subcall_done)) begin
        ap_ST_fsm_state60_blk = 1'b1;
    end else begin
        ap_ST_fsm_state60_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b0 == ap_block_state60_on_subcall_done) & (1'b1 == ap_CS_fsm_state60)))) begin
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
    if (((1'b0 == ap_block_state60_on_subcall_done) & (1'b1 == ap_CS_fsm_state60))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_address0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_address0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_address0;
    end else begin
        biases1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_address1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_address1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_address1;
    end else begin
        biases1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_ce0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_ce0;
    end else begin
        biases1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_ce1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_ce1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_ce1;
    end else begin
        biases1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_d0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_d0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_d0;
    end else begin
        biases1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_d1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_d1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_d1;
    end else begin
        biases1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_we0 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_we0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_we0;
    end else begin
        biases1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases1_we1 = grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_biases1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases1_we1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_biases1_we1;
    end else begin
        biases1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_address0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_address0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_address0;
    end else begin
        biases2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_address1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_address1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_address1;
    end else begin
        biases2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_ce0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_ce0;
    end else begin
        biases2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_ce1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_ce1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_ce1;
    end else begin
        biases2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_d0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_d0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_d0;
    end else begin
        biases2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_d1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_d1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_d1;
    end else begin
        biases2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_we0 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_we0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_we0;
    end else begin
        biases2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases2_we1 = grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_biases2_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases2_we1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_biases2_we1;
    end else begin
        biases2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_biases3_address0;
    end else begin
        biases3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_biases3_ce0;
    end else begin
        biases3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_ce1;
    end else begin
        biases3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_biases3_d0;
    end else begin
        biases3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        biases3_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        biases3_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_biases3_we0;
    end else begin
        biases3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_5277_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5277_p_ce;
    end else begin
        grp_fu_5277_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_5281_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5281_p_ce;
    end else begin
        grp_fu_5281_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_5285_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5285_p_ce;
    end else begin
        grp_fu_5285_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_5289_ce = grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_grp_fu_5289_p_ce;
    end else begin
        grp_fu_5289_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        grp_fu_5293_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_grp_fu_5293_p_ce;
    end else begin
        grp_fu_5293_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_5297_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_grp_fu_5297_p_ce;
    end else begin
        grp_fu_5297_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_5301_ce = grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_grp_fu_5301_p_ce;
    end else begin
        grp_fu_5301_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_5305_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5305_p_ce;
    end else begin
        grp_fu_5305_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_5309_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5309_p_ce;
    end else begin
        grp_fu_5309_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_5313_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5313_p_ce;
    end else begin
        grp_fu_5313_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_5317_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5317_p_ce;
    end else begin
        grp_fu_5317_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_5321_ce = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5321_p_ce;
    end else begin
        grp_fu_5321_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_5325_ce = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_grp_fu_5325_p_ce;
    end else begin
        grp_fu_5325_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_address0;
    end else begin
        weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_address1;
    end else begin
        weights1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_ce0;
    end else begin
        weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_ce1;
    end else begin
        weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_d0;
    end else begin
        weights1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_d1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_d1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_d1;
    end else begin
        weights1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_we0;
    end else begin
        weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights1_we1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_weights1_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights1_we1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_weights1_we1;
    end else begin
        weights1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_address0;
    end else begin
        weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_address1;
    end else begin
        weights2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_ce0;
    end else begin
        weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_ce1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_ce1;
    end else begin
        weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_d0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_d0;
    end else begin
        weights2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_d1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_d1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_d1;
    end else begin
        weights2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_we0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_we0;
    end else begin
        weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights2_we1 = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_weights2_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights2_we1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_weights2_we1;
    end else begin
        weights2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_address0 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_address0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_address0;
    end else begin
        weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_address1 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_address1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_address1;
    end else begin
        weights3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_ce0 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_ce0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_ce0;
    end else begin
        weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_ce1 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_ce1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_ce1;
    end else begin
        weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_d0 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_d0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_d0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_d0;
    end else begin
        weights3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_d1 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_d1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_d1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_d1;
    end else begin
        weights3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_we0 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_we0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_we0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_we0;
    end else begin
        weights3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_we1 = grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_weights3_we1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_we1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_weights3_we1;
    end else begin
        weights3_we1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            if (((1'b0 == ap_block_state60_on_subcall_done) & (1'b1 == ap_CS_fsm_state60))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state60;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state59 = ap_CS_fsm[32'd58];
assign ap_CS_fsm_state60 = ap_CS_fsm[32'd59];
always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_done == 1'b0));
end
always @ (*) begin
    ap_block_state60_on_subcall_done = ((grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_done == 1'b0) | (grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_done == 1'b0));
end
assign biases3_address1 = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_biases3_address1;
assign d_weights1_0_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_0_address0;
assign d_weights1_0_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_0_ce0;
assign d_weights1_10_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_10_address0;
assign d_weights1_10_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_10_ce0;
assign d_weights1_11_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_11_address0;
assign d_weights1_11_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_11_ce0;
assign d_weights1_12_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_12_address0;
assign d_weights1_12_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_12_ce0;
assign d_weights1_13_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_13_address0;
assign d_weights1_13_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_13_ce0;
assign d_weights1_14_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_14_address0;
assign d_weights1_14_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_14_ce0;
assign d_weights1_15_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_15_address0;
assign d_weights1_15_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_15_ce0;
assign d_weights1_1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_1_address0;
assign d_weights1_1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_1_ce0;
assign d_weights1_2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_2_address0;
assign d_weights1_2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_2_ce0;
assign d_weights1_3_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_3_address0;
assign d_weights1_3_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_3_ce0;
assign d_weights1_4_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_4_address0;
assign d_weights1_4_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_4_ce0;
assign d_weights1_5_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_5_address0;
assign d_weights1_5_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_5_ce0;
assign d_weights1_6_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_6_address0;
assign d_weights1_6_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_6_ce0;
assign d_weights1_7_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_7_address0;
assign d_weights1_7_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_7_ce0;
assign d_weights1_8_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_8_address0;
assign d_weights1_8_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_8_ce0;
assign d_weights1_9_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_9_address0;
assign d_weights1_9_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_d_weights1_9_ce0;
assign d_weights2_0_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_0_address0;
assign d_weights2_0_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_0_ce0;
assign d_weights2_10_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_10_address0;
assign d_weights2_10_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_10_ce0;
assign d_weights2_11_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_11_address0;
assign d_weights2_11_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_11_ce0;
assign d_weights2_12_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_12_address0;
assign d_weights2_12_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_12_ce0;
assign d_weights2_13_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_13_address0;
assign d_weights2_13_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_13_ce0;
assign d_weights2_14_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_14_address0;
assign d_weights2_14_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_14_ce0;
assign d_weights2_15_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_15_address0;
assign d_weights2_15_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_15_ce0;
assign d_weights2_1_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_1_address0;
assign d_weights2_1_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_1_ce0;
assign d_weights2_2_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_2_address0;
assign d_weights2_2_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_2_ce0;
assign d_weights2_3_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_3_address0;
assign d_weights2_3_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_3_ce0;
assign d_weights2_4_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_4_address0;
assign d_weights2_4_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_4_ce0;
assign d_weights2_5_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_5_address0;
assign d_weights2_5_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_5_ce0;
assign d_weights2_6_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_6_address0;
assign d_weights2_6_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_6_ce0;
assign d_weights2_7_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_7_address0;
assign d_weights2_7_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_7_ce0;
assign d_weights2_8_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_8_address0;
assign d_weights2_8_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_8_ce0;
assign d_weights2_9_address0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_9_address0;
assign d_weights2_9_ce0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_d_weights2_9_ce0;
assign grp_fu_10475_p_ce = grp_fu_5277_ce;
assign grp_fu_10475_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5277_p_din0;
assign grp_fu_10475_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5277_p_din1;
assign grp_fu_10475_p_opcode = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5277_p_opcode;
assign grp_fu_10479_p_ce = grp_fu_5281_ce;
assign grp_fu_10479_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5281_p_din0;
assign grp_fu_10479_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5281_p_din1;
assign grp_fu_10479_p_opcode = 2'd0;
assign grp_fu_10483_p_ce = grp_fu_5285_ce;
assign grp_fu_10483_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5285_p_din0;
assign grp_fu_10483_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_grp_fu_5285_p_din1;
assign grp_fu_10487_p_ce = grp_fu_5297_ce;
assign grp_fu_10487_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_grp_fu_5297_p_din0;
assign grp_fu_10487_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_grp_fu_5297_p_din1;
assign grp_fu_10491_p_ce = grp_fu_5293_ce;
assign grp_fu_10491_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_grp_fu_5293_p_din0;
assign grp_fu_10491_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_grp_fu_5293_p_din1;
assign grp_fu_10499_p_ce = grp_fu_5325_ce;
assign grp_fu_10499_p_din0 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_grp_fu_5325_p_din0;
assign grp_fu_10499_p_din1 = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_grp_fu_5325_p_din1;
assign grp_fu_10503_p_ce = grp_fu_5289_ce;
assign grp_fu_10503_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_grp_fu_5289_p_din0;
assign grp_fu_10503_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_grp_fu_5289_p_din1;
assign grp_fu_10507_p_ce = grp_fu_5301_ce;
assign grp_fu_10507_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_grp_fu_5301_p_din0;
assign grp_fu_10507_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_grp_fu_5301_p_din1;
assign grp_fu_10511_p_ce = grp_fu_5305_ce;
assign grp_fu_10511_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5305_p_din0;
assign grp_fu_10511_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5305_p_din1;
assign grp_fu_10515_p_ce = grp_fu_5309_ce;
assign grp_fu_10515_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5309_p_din0;
assign grp_fu_10515_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5309_p_din1;
assign grp_fu_10519_p_ce = grp_fu_5313_ce;
assign grp_fu_10519_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5313_p_din0;
assign grp_fu_10519_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5313_p_din1;
assign grp_fu_10523_p_ce = grp_fu_5317_ce;
assign grp_fu_10523_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5317_p_din0;
assign grp_fu_10523_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5317_p_din1;
assign grp_fu_10527_p_ce = grp_fu_5321_ce;
assign grp_fu_10527_p_din0 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5321_p_din0;
assign grp_fu_10527_p_din1 = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_grp_fu_5321_p_din1;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_126_1_up_weight_loop1_fu_2724_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3_fu_3476_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5_fu_2898_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7_fu_3490_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_184_6_fu_3463_ap_start_reg;
assign grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_start = grp_update_weights_1_Pipeline_VITIS_LOOP_197_8_fu_3511_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_start = grp_update_weights_1_Pipeline_up_weight_loop10_fu_3504_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_start = grp_update_weights_1_Pipeline_up_weight_loop2_fu_2763_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_start = grp_update_weights_1_Pipeline_up_weight_loop4_fu_3483_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_start = grp_update_weights_1_Pipeline_up_weight_loop6_fu_2937_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_start = grp_update_weights_1_Pipeline_up_weight_loop8_fu_3497_ap_start_reg;
assign grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_start = grp_update_weights_1_Pipeline_up_weight_loop9_fu_3072_ap_start_reg;
endmodule 