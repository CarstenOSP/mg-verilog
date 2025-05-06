
module backprop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_we1,weights1_d1,weights1_q1,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_we1,weights2_d1,weights2_q1,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_we1,weights3_d1,weights3_q1,biases1_address0,biases1_ce0,biases1_we0,biases1_d0,biases1_q0,biases1_address1,biases1_ce1,biases1_we1,biases1_d1,biases1_q1,biases2_address0,biases2_ce0,biases2_we0,biases2_d0,biases2_q0,biases2_address1,biases2_ce1,biases2_we1,biases2_d1,biases2_q1,biases3_address0,biases3_ce0,biases3_we0,biases3_d0,biases3_q0,biases3_address1,biases3_ce1,biases3_q1,training_data_address0,training_data_ce0,training_data_q0,training_data_address1,training_data_ce1,training_data_q1,training_targets_address0,training_targets_ce0,training_targets_q0);  
parameter    ap_ST_fsm_state1 = 135'd1;
parameter    ap_ST_fsm_state2 = 135'd2;
parameter    ap_ST_fsm_state3 = 135'd4;
parameter    ap_ST_fsm_state4 = 135'd8;
parameter    ap_ST_fsm_state5 = 135'd16;
parameter    ap_ST_fsm_state6 = 135'd32;
parameter    ap_ST_fsm_state7 = 135'd64;
parameter    ap_ST_fsm_state8 = 135'd128;
parameter    ap_ST_fsm_state9 = 135'd256;
parameter    ap_ST_fsm_state10 = 135'd512;
parameter    ap_ST_fsm_state11 = 135'd1024;
parameter    ap_ST_fsm_state12 = 135'd2048;
parameter    ap_ST_fsm_state13 = 135'd4096;
parameter    ap_ST_fsm_state14 = 135'd8192;
parameter    ap_ST_fsm_state15 = 135'd16384;
parameter    ap_ST_fsm_state16 = 135'd32768;
parameter    ap_ST_fsm_state17 = 135'd65536;
parameter    ap_ST_fsm_state18 = 135'd131072;
parameter    ap_ST_fsm_state19 = 135'd262144;
parameter    ap_ST_fsm_state20 = 135'd524288;
parameter    ap_ST_fsm_state21 = 135'd1048576;
parameter    ap_ST_fsm_state22 = 135'd2097152;
parameter    ap_ST_fsm_state23 = 135'd4194304;
parameter    ap_ST_fsm_state24 = 135'd8388608;
parameter    ap_ST_fsm_state25 = 135'd16777216;
parameter    ap_ST_fsm_state26 = 135'd33554432;
parameter    ap_ST_fsm_state27 = 135'd67108864;
parameter    ap_ST_fsm_state28 = 135'd134217728;
parameter    ap_ST_fsm_state29 = 135'd268435456;
parameter    ap_ST_fsm_state30 = 135'd536870912;
parameter    ap_ST_fsm_state31 = 135'd1073741824;
parameter    ap_ST_fsm_state32 = 135'd2147483648;
parameter    ap_ST_fsm_state33 = 135'd4294967296;
parameter    ap_ST_fsm_state34 = 135'd8589934592;
parameter    ap_ST_fsm_state35 = 135'd17179869184;
parameter    ap_ST_fsm_state36 = 135'd34359738368;
parameter    ap_ST_fsm_state37 = 135'd68719476736;
parameter    ap_ST_fsm_state38 = 135'd137438953472;
parameter    ap_ST_fsm_state39 = 135'd274877906944;
parameter    ap_ST_fsm_state40 = 135'd549755813888;
parameter    ap_ST_fsm_state41 = 135'd1099511627776;
parameter    ap_ST_fsm_state42 = 135'd2199023255552;
parameter    ap_ST_fsm_state43 = 135'd4398046511104;
parameter    ap_ST_fsm_state44 = 135'd8796093022208;
parameter    ap_ST_fsm_state45 = 135'd17592186044416;
parameter    ap_ST_fsm_state46 = 135'd35184372088832;
parameter    ap_ST_fsm_state47 = 135'd70368744177664;
parameter    ap_ST_fsm_state48 = 135'd140737488355328;
parameter    ap_ST_fsm_state49 = 135'd281474976710656;
parameter    ap_ST_fsm_state50 = 135'd562949953421312;
parameter    ap_ST_fsm_state51 = 135'd1125899906842624;
parameter    ap_ST_fsm_state52 = 135'd2251799813685248;
parameter    ap_ST_fsm_state53 = 135'd4503599627370496;
parameter    ap_ST_fsm_state54 = 135'd9007199254740992;
parameter    ap_ST_fsm_state55 = 135'd18014398509481984;
parameter    ap_ST_fsm_state56 = 135'd36028797018963968;
parameter    ap_ST_fsm_state57 = 135'd72057594037927936;
parameter    ap_ST_fsm_state58 = 135'd144115188075855872;
parameter    ap_ST_fsm_state59 = 135'd288230376151711744;
parameter    ap_ST_fsm_state60 = 135'd576460752303423488;
parameter    ap_ST_fsm_state61 = 135'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 135'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 135'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 135'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 135'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 135'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 135'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 135'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 135'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 135'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 135'd1180591620717411303424;
parameter    ap_ST_fsm_state72 = 135'd2361183241434822606848;
parameter    ap_ST_fsm_state73 = 135'd4722366482869645213696;
parameter    ap_ST_fsm_state74 = 135'd9444732965739290427392;
parameter    ap_ST_fsm_state75 = 135'd18889465931478580854784;
parameter    ap_ST_fsm_state76 = 135'd37778931862957161709568;
parameter    ap_ST_fsm_state77 = 135'd75557863725914323419136;
parameter    ap_ST_fsm_state78 = 135'd151115727451828646838272;
parameter    ap_ST_fsm_state79 = 135'd302231454903657293676544;
parameter    ap_ST_fsm_state80 = 135'd604462909807314587353088;
parameter    ap_ST_fsm_state81 = 135'd1208925819614629174706176;
parameter    ap_ST_fsm_state82 = 135'd2417851639229258349412352;
parameter    ap_ST_fsm_state83 = 135'd4835703278458516698824704;
parameter    ap_ST_fsm_state84 = 135'd9671406556917033397649408;
parameter    ap_ST_fsm_state85 = 135'd19342813113834066795298816;
parameter    ap_ST_fsm_state86 = 135'd38685626227668133590597632;
parameter    ap_ST_fsm_state87 = 135'd77371252455336267181195264;
parameter    ap_ST_fsm_state88 = 135'd154742504910672534362390528;
parameter    ap_ST_fsm_state89 = 135'd309485009821345068724781056;
parameter    ap_ST_fsm_state90 = 135'd618970019642690137449562112;
parameter    ap_ST_fsm_state91 = 135'd1237940039285380274899124224;
parameter    ap_ST_fsm_state92 = 135'd2475880078570760549798248448;
parameter    ap_ST_fsm_state93 = 135'd4951760157141521099596496896;
parameter    ap_ST_fsm_state94 = 135'd9903520314283042199192993792;
parameter    ap_ST_fsm_state95 = 135'd19807040628566084398385987584;
parameter    ap_ST_fsm_state96 = 135'd39614081257132168796771975168;
parameter    ap_ST_fsm_state97 = 135'd79228162514264337593543950336;
parameter    ap_ST_fsm_state98 = 135'd158456325028528675187087900672;
parameter    ap_ST_fsm_state99 = 135'd316912650057057350374175801344;
parameter    ap_ST_fsm_state100 = 135'd633825300114114700748351602688;
parameter    ap_ST_fsm_state101 = 135'd1267650600228229401496703205376;
parameter    ap_ST_fsm_state102 = 135'd2535301200456458802993406410752;
parameter    ap_ST_fsm_state103 = 135'd5070602400912917605986812821504;
parameter    ap_ST_fsm_state104 = 135'd10141204801825835211973625643008;
parameter    ap_ST_fsm_state105 = 135'd20282409603651670423947251286016;
parameter    ap_ST_fsm_state106 = 135'd40564819207303340847894502572032;
parameter    ap_ST_fsm_state107 = 135'd81129638414606681695789005144064;
parameter    ap_ST_fsm_state108 = 135'd162259276829213363391578010288128;
parameter    ap_ST_fsm_state109 = 135'd324518553658426726783156020576256;
parameter    ap_ST_fsm_state110 = 135'd649037107316853453566312041152512;
parameter    ap_ST_fsm_state111 = 135'd1298074214633706907132624082305024;
parameter    ap_ST_fsm_state112 = 135'd2596148429267413814265248164610048;
parameter    ap_ST_fsm_state113 = 135'd5192296858534827628530496329220096;
parameter    ap_ST_fsm_state114 = 135'd10384593717069655257060992658440192;
parameter    ap_ST_fsm_state115 = 135'd20769187434139310514121985316880384;
parameter    ap_ST_fsm_state116 = 135'd41538374868278621028243970633760768;
parameter    ap_ST_fsm_state117 = 135'd83076749736557242056487941267521536;
parameter    ap_ST_fsm_state118 = 135'd166153499473114484112975882535043072;
parameter    ap_ST_fsm_state119 = 135'd332306998946228968225951765070086144;
parameter    ap_ST_fsm_state120 = 135'd664613997892457936451903530140172288;
parameter    ap_ST_fsm_state121 = 135'd1329227995784915872903807060280344576;
parameter    ap_ST_fsm_state122 = 135'd2658455991569831745807614120560689152;
parameter    ap_ST_fsm_state123 = 135'd5316911983139663491615228241121378304;
parameter    ap_ST_fsm_state124 = 135'd10633823966279326983230456482242756608;
parameter    ap_ST_fsm_state125 = 135'd21267647932558653966460912964485513216;
parameter    ap_ST_fsm_state126 = 135'd42535295865117307932921825928971026432;
parameter    ap_ST_fsm_state127 = 135'd85070591730234615865843651857942052864;
parameter    ap_ST_fsm_state128 = 135'd170141183460469231731687303715884105728;
parameter    ap_ST_fsm_state129 = 135'd340282366920938463463374607431768211456;
parameter    ap_ST_fsm_state130 = 135'd680564733841876926926749214863536422912;
parameter    ap_ST_fsm_state131 = 135'd1361129467683753853853498429727072845824;
parameter    ap_ST_fsm_state132 = 135'd2722258935367507707706996859454145691648;
parameter    ap_ST_fsm_state133 = 135'd5444517870735015415413993718908291383296;
parameter    ap_ST_fsm_state134 = 135'd10889035741470030830827987437816582766592;
parameter    ap_ST_fsm_state135 = 135'd21778071482940061661655974875633165533184;
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
output  [11:0] training_data_address0;
output   training_data_ce0;
input  [63:0] training_data_q0;
output  [11:0] training_data_address1;
output   training_data_ce1;
input  [63:0] training_data_q1;
output  [8:0] training_targets_address0;
output   training_targets_ce0;
input  [63:0] training_targets_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[9:0] weights1_address0;
reg weights1_ce0;
reg weights1_we0;
reg[9:0] weights1_address1;
reg weights1_ce1;
reg weights1_we1;
reg[11:0] weights2_address0;
reg weights2_ce0;
reg weights2_we0;
reg[11:0] weights2_address1;
reg weights2_ce1;
reg weights2_we1;
reg[7:0] weights3_address0;
reg weights3_ce0;
reg weights3_we0;
reg[7:0] weights3_address1;
reg weights3_ce1;
reg weights3_we1;
reg[5:0] biases1_address0;
reg biases1_ce0;
reg biases1_we0;
reg biases1_ce1;
reg biases1_we1;
reg[5:0] biases2_address0;
reg biases2_ce0;
reg biases2_we0;
reg biases2_ce1;
reg biases2_we1;
reg[1:0] biases3_address0;
reg biases3_ce0;
reg biases3_we0;
reg biases3_ce1;
reg[11:0] training_data_address0;
reg training_data_ce0;
(* fsm_encoding = "none" *) reg   [134:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [11:0] phi_mul40_load_reg_4143;
wire    ap_CS_fsm_state2;
reg   [7:0] i_17_reg_4161;
wire    ap_CS_fsm_state27;
reg   [63:0] training_data_load_reg_4175;
wire    ap_CS_fsm_state28;
reg   [63:0] training_data_load_1_reg_4190;
wire    ap_CS_fsm_state29;
reg   [63:0] training_data_load_2_reg_4195;
reg   [63:0] training_data_load_3_reg_4210;
wire    ap_CS_fsm_state30;
reg   [63:0] training_data_load_4_reg_4215;
reg   [63:0] training_data_load_5_reg_4230;
wire    ap_CS_fsm_state31;
reg   [63:0] training_data_load_6_reg_4235;
reg   [63:0] training_data_load_7_reg_4250;
wire    ap_CS_fsm_state32;
reg   [63:0] training_data_load_8_reg_4255;
reg   [63:0] training_data_load_9_reg_4270;
wire    ap_CS_fsm_state33;
reg   [63:0] training_data_load_10_reg_4275;
wire   [63:0] empty_fu_2743_p1;
reg   [63:0] empty_reg_4290;
wire    ap_CS_fsm_state34;
wire   [63:0] empty_54_fu_2747_p1;
reg   [63:0] empty_54_reg_4295;
wire   [63:0] empty_55_fu_2751_p1;
reg   [63:0] empty_55_reg_4300;
wire   [63:0] empty_56_fu_2755_p1;
reg   [63:0] empty_56_reg_4305;
wire   [63:0] empty_57_fu_2759_p1;
reg   [63:0] empty_57_reg_4310;
wire   [63:0] empty_58_fu_2763_p1;
reg   [63:0] empty_58_reg_4315;
wire   [63:0] empty_59_fu_2767_p1;
reg   [63:0] empty_59_reg_4320;
wire   [63:0] empty_60_fu_2771_p1;
reg   [63:0] empty_60_reg_4325;
wire   [63:0] empty_61_fu_2775_p1;
reg   [63:0] empty_61_reg_4330;
wire   [63:0] empty_62_fu_2779_p1;
reg   [63:0] empty_62_reg_4335;
wire   [63:0] empty_63_fu_2783_p1;
reg   [63:0] empty_63_reg_4340;
wire   [63:0] empty_64_fu_2787_p1;
reg   [63:0] empty_64_reg_4345;
wire   [63:0] empty_65_fu_2792_p1;
reg   [63:0] empty_65_reg_4350;
reg   [63:0] activations1_load_reg_4355;
wire    ap_CS_fsm_state41;
reg   [63:0] activations1_load_1_reg_4360;
reg   [63:0] activations1_load_2_reg_4365;
wire    ap_CS_fsm_state42;
reg   [63:0] activations1_load_3_reg_4370;
reg   [63:0] activations1_load_4_reg_4375;
wire    ap_CS_fsm_state43;
reg   [63:0] activations1_load_5_reg_4380;
reg   [63:0] activations1_load_6_reg_4385;
wire    ap_CS_fsm_state44;
reg   [63:0] activations1_load_7_reg_4390;
reg   [63:0] activations1_load_8_reg_4395;
wire    ap_CS_fsm_state45;
reg   [63:0] activations1_load_9_reg_4400;
reg   [63:0] activations1_load_10_reg_4405;
wire    ap_CS_fsm_state46;
reg   [63:0] activations1_load_11_reg_4410;
reg   [63:0] activations1_load_12_reg_4415;
wire    ap_CS_fsm_state47;
reg   [63:0] activations1_load_13_reg_4420;
reg   [63:0] activations1_load_14_reg_4425;
wire    ap_CS_fsm_state48;
reg   [63:0] activations1_load_15_reg_4430;
reg   [63:0] activations1_load_16_reg_4435;
wire    ap_CS_fsm_state49;
reg   [63:0] activations1_load_17_reg_4440;
reg   [63:0] activations1_load_18_reg_4445;
wire    ap_CS_fsm_state50;
reg   [63:0] activations1_load_19_reg_4450;
reg   [63:0] activations1_load_20_reg_4455;
wire    ap_CS_fsm_state51;
reg   [63:0] activations1_load_21_reg_4460;
reg   [63:0] activations1_load_22_reg_4465;
wire    ap_CS_fsm_state52;
reg   [63:0] activations1_load_23_reg_4470;
reg   [63:0] activations1_load_24_reg_4475;
wire    ap_CS_fsm_state53;
reg   [63:0] activations1_load_25_reg_4480;
reg   [63:0] activations1_load_26_reg_4485;
wire    ap_CS_fsm_state54;
reg   [63:0] activations1_load_27_reg_4490;
reg   [63:0] activations1_load_28_reg_4495;
wire    ap_CS_fsm_state55;
reg   [63:0] activations1_load_29_reg_4500;
reg   [63:0] activations1_load_30_reg_4505;
wire    ap_CS_fsm_state56;
reg   [63:0] activations1_load_31_reg_4510;
reg   [63:0] activations1_load_32_reg_4515;
wire    ap_CS_fsm_state57;
reg   [63:0] activations1_load_33_reg_4520;
reg   [63:0] activations1_load_34_reg_4525;
wire    ap_CS_fsm_state58;
reg   [63:0] activations1_load_35_reg_4530;
reg   [63:0] activations1_load_36_reg_4535;
wire    ap_CS_fsm_state59;
reg   [63:0] activations1_load_37_reg_4540;
reg   [63:0] activations1_load_38_reg_4545;
wire    ap_CS_fsm_state60;
reg   [63:0] activations1_load_39_reg_4550;
reg   [63:0] activations1_load_40_reg_4555;
wire    ap_CS_fsm_state61;
reg   [63:0] activations1_load_41_reg_4560;
reg   [63:0] activations1_load_42_reg_4565;
wire    ap_CS_fsm_state62;
reg   [63:0] activations1_load_43_reg_4570;
reg   [63:0] activations1_load_44_reg_4575;
wire    ap_CS_fsm_state63;
reg   [63:0] activations1_load_45_reg_4580;
reg   [63:0] activations1_load_46_reg_4585;
wire    ap_CS_fsm_state64;
reg   [63:0] activations1_load_47_reg_4590;
reg   [63:0] activations1_load_48_reg_4595;
wire    ap_CS_fsm_state65;
reg   [63:0] activations1_load_49_reg_4600;
reg   [63:0] activations1_load_50_reg_4605;
wire    ap_CS_fsm_state66;
reg   [63:0] activations1_load_51_reg_4610;
reg   [63:0] activations1_load_52_reg_4615;
wire    ap_CS_fsm_state67;
reg   [63:0] activations1_load_53_reg_4620;
reg   [63:0] activations1_load_54_reg_4625;
wire    ap_CS_fsm_state68;
reg   [63:0] activations1_load_55_reg_4630;
reg   [63:0] activations1_load_56_reg_4635;
wire    ap_CS_fsm_state69;
reg   [63:0] activations1_load_57_reg_4640;
reg   [63:0] activations1_load_58_reg_4645;
wire    ap_CS_fsm_state70;
reg   [63:0] activations1_load_59_reg_4650;
reg   [63:0] activations1_load_60_reg_4655;
wire    ap_CS_fsm_state71;
reg   [63:0] activations1_load_61_reg_4660;
reg   [63:0] activations1_load_62_reg_4665;
wire    ap_CS_fsm_state72;
reg   [63:0] activations1_load_63_reg_4670;
reg   [63:0] activations2_load_reg_4675;
wire    ap_CS_fsm_state79;
reg   [63:0] activations2_load_1_reg_4680;
reg   [63:0] activations2_load_2_reg_4685;
wire    ap_CS_fsm_state80;
reg   [63:0] activations2_load_3_reg_4690;
reg   [63:0] activations2_load_4_reg_4695;
wire    ap_CS_fsm_state81;
reg   [63:0] activations2_load_5_reg_4700;
reg   [63:0] activations2_load_6_reg_4705;
wire    ap_CS_fsm_state82;
reg   [63:0] activations2_load_7_reg_4710;
reg   [63:0] activations2_load_8_reg_4715;
wire    ap_CS_fsm_state83;
reg   [63:0] activations2_load_9_reg_4720;
reg   [63:0] activations2_load_10_reg_4725;
wire    ap_CS_fsm_state84;
reg   [63:0] activations2_load_11_reg_4730;
reg   [63:0] activations2_load_12_reg_4735;
wire    ap_CS_fsm_state85;
reg   [63:0] activations2_load_13_reg_4740;
reg   [63:0] activations2_load_14_reg_4745;
wire    ap_CS_fsm_state86;
reg   [63:0] activations2_load_15_reg_4750;
reg   [63:0] activations2_load_16_reg_4755;
wire    ap_CS_fsm_state87;
reg   [63:0] activations2_load_17_reg_4760;
reg   [63:0] activations2_load_18_reg_4765;
wire    ap_CS_fsm_state88;
reg   [63:0] activations2_load_19_reg_4770;
reg   [63:0] activations2_load_20_reg_4775;
wire    ap_CS_fsm_state89;
reg   [63:0] activations2_load_21_reg_4780;
reg   [63:0] activations2_load_22_reg_4785;
wire    ap_CS_fsm_state90;
reg   [63:0] activations2_load_23_reg_4790;
reg   [63:0] activations2_load_24_reg_4795;
wire    ap_CS_fsm_state91;
reg   [63:0] activations2_load_25_reg_4800;
reg   [63:0] activations2_load_26_reg_4805;
wire    ap_CS_fsm_state92;
reg   [63:0] activations2_load_27_reg_4810;
reg   [63:0] activations2_load_28_reg_4815;
wire    ap_CS_fsm_state93;
reg   [63:0] activations2_load_29_reg_4820;
reg   [63:0] activations2_load_30_reg_4825;
wire    ap_CS_fsm_state94;
reg   [63:0] activations2_load_31_reg_4830;
reg   [63:0] activations2_load_32_reg_4835;
wire    ap_CS_fsm_state95;
reg   [63:0] activations2_load_33_reg_4840;
reg   [63:0] activations2_load_34_reg_4845;
wire    ap_CS_fsm_state96;
reg   [63:0] activations2_load_35_reg_4850;
reg   [63:0] activations2_load_36_reg_4855;
wire    ap_CS_fsm_state97;
reg   [63:0] activations2_load_37_reg_4860;
reg   [63:0] activations2_load_38_reg_4865;
wire    ap_CS_fsm_state98;
reg   [63:0] activations2_load_39_reg_4870;
reg   [63:0] activations2_load_40_reg_4875;
wire    ap_CS_fsm_state99;
reg   [63:0] activations2_load_41_reg_4880;
reg   [63:0] activations2_load_42_reg_4885;
wire    ap_CS_fsm_state100;
reg   [63:0] activations2_load_43_reg_4890;
reg   [63:0] activations2_load_44_reg_4895;
wire    ap_CS_fsm_state101;
reg   [63:0] activations2_load_45_reg_4900;
reg   [63:0] activations2_load_46_reg_4905;
wire    ap_CS_fsm_state102;
reg   [63:0] activations2_load_47_reg_4910;
reg   [63:0] activations2_load_48_reg_4915;
wire    ap_CS_fsm_state103;
reg   [63:0] activations2_load_49_reg_4920;
reg   [63:0] activations2_load_50_reg_4925;
wire    ap_CS_fsm_state104;
reg   [63:0] activations2_load_51_reg_4930;
reg   [63:0] activations2_load_52_reg_4935;
wire    ap_CS_fsm_state105;
reg   [63:0] activations2_load_53_reg_4940;
reg   [63:0] activations2_load_54_reg_4945;
wire    ap_CS_fsm_state106;
reg   [63:0] activations2_load_55_reg_4950;
reg   [63:0] activations2_load_56_reg_4955;
wire    ap_CS_fsm_state107;
reg   [63:0] activations2_load_57_reg_4960;
reg   [63:0] activations2_load_58_reg_4965;
wire    ap_CS_fsm_state108;
reg   [63:0] activations2_load_59_reg_4970;
reg   [63:0] activations2_load_60_reg_4975;
wire    ap_CS_fsm_state109;
reg   [63:0] activations2_load_61_reg_4980;
reg   [63:0] activations2_load_62_reg_4985;
wire    ap_CS_fsm_state110;
reg   [63:0] activations2_load_63_reg_4990;
wire   [8:0] sub_ln66_fu_2851_p2;
reg   [8:0] sub_ln66_reg_5025;
wire    ap_CS_fsm_state119;
reg   [63:0] oracle_activations2_load_reg_5075;
wire    ap_CS_fsm_state127;
reg   [63:0] oracle_activations2_load_1_reg_5080;
reg   [63:0] oracle_activations2_load_2_reg_5085;
reg   [63:0] oracle_activations2_load_3_reg_5090;
reg   [63:0] oracle_activations2_load_4_reg_5095;
reg   [63:0] oracle_activations2_load_5_reg_5100;
reg   [63:0] oracle_activations2_load_6_reg_5105;
reg   [63:0] oracle_activations2_load_7_reg_5110;
reg   [63:0] oracle_activations2_load_8_reg_5115;
reg   [63:0] oracle_activations2_load_9_reg_5120;
reg   [63:0] oracle_activations2_load_10_reg_5125;
reg   [63:0] oracle_activations2_load_11_reg_5130;
reg   [63:0] oracle_activations2_load_12_reg_5135;
reg   [63:0] oracle_activations2_load_13_reg_5140;
wire    ap_CS_fsm_state128;
reg   [63:0] oracle_activations2_load_14_reg_5145;
reg   [63:0] oracle_activations2_load_15_reg_5150;
reg   [63:0] oracle_activations2_load_16_reg_5155;
reg   [63:0] oracle_activations2_load_17_reg_5160;
reg   [63:0] oracle_activations2_load_18_reg_5165;
reg   [63:0] oracle_activations2_load_19_reg_5170;
reg   [63:0] oracle_activations2_load_20_reg_5175;
reg   [63:0] oracle_activations2_load_21_reg_5180;
reg   [63:0] oracle_activations2_load_22_reg_5185;
reg   [63:0] oracle_activations2_load_23_reg_5190;
reg   [63:0] oracle_activations2_load_24_reg_5195;
reg   [63:0] oracle_activations2_load_25_reg_5200;
reg   [63:0] oracle_activations2_load_26_reg_5205;
reg   [63:0] oracle_activations2_load_27_reg_5210;
reg   [63:0] oracle_activations2_load_28_reg_5215;
reg   [63:0] oracle_activations2_load_29_reg_5220;
reg   [63:0] oracle_activations2_load_30_reg_5225;
wire    ap_CS_fsm_state129;
reg   [63:0] oracle_activations2_load_31_reg_5230;
reg   [63:0] oracle_activations2_load_32_reg_5235;
reg   [63:0] oracle_activations2_load_33_reg_5240;
reg   [63:0] oracle_activations2_load_34_reg_5245;
reg   [63:0] oracle_activations2_load_35_reg_5250;
reg   [63:0] oracle_activations2_load_36_reg_5255;
reg   [63:0] oracle_activations2_load_37_reg_5260;
reg   [63:0] oracle_activations2_load_38_reg_5265;
reg   [63:0] oracle_activations2_load_39_reg_5270;
reg   [63:0] oracle_activations2_load_40_reg_5275;
reg   [63:0] oracle_activations2_load_41_reg_5280;
reg   [63:0] oracle_activations2_load_42_reg_5285;
reg   [63:0] oracle_activations2_load_43_reg_5290;
reg   [63:0] oracle_activations2_load_44_reg_5295;
reg   [63:0] oracle_activations2_load_45_reg_5300;
reg   [63:0] oracle_activations2_load_46_reg_5305;
reg   [63:0] oracle_activations2_load_47_reg_5310;
wire    ap_CS_fsm_state130;
reg   [63:0] oracle_activations2_load_48_reg_5315;
reg   [63:0] oracle_activations2_load_49_reg_5320;
reg   [63:0] oracle_activations2_load_50_reg_5325;
reg   [63:0] oracle_activations2_load_51_reg_5330;
reg   [63:0] oracle_activations2_load_52_reg_5335;
reg   [63:0] oracle_activations2_load_53_reg_5340;
reg   [63:0] oracle_activations2_load_54_reg_5345;
reg   [63:0] oracle_activations2_load_55_reg_5350;
reg   [63:0] oracle_activations2_load_56_reg_5355;
reg   [63:0] oracle_activations2_load_57_reg_5360;
reg   [63:0] oracle_activations2_load_58_reg_5365;
reg   [63:0] oracle_activations2_load_59_reg_5370;
reg   [63:0] oracle_activations2_load_60_reg_5375;
reg   [63:0] oracle_activations2_load_61_reg_5380;
reg   [63:0] oracle_activations2_load_62_reg_5385;
reg   [63:0] oracle_activations2_load_63_reg_5390;
reg   [5:0] activations1_address0;
reg    activations1_ce0;
reg    activations1_we0;
reg   [63:0] activations1_d0;
wire   [63:0] activations1_q0;
reg   [5:0] activations1_address1;
reg    activations1_ce1;
wire   [63:0] activations1_q1;
reg   [5:0] activations2_address0;
reg    activations2_ce0;
reg    activations2_we0;
reg   [63:0] activations2_d0;
wire   [63:0] activations2_q0;
reg   [5:0] activations2_address1;
reg    activations2_ce1;
wire   [63:0] activations2_q1;
reg   [5:0] dactivations1_address0;
reg    dactivations1_ce0;
reg    dactivations1_we0;
wire   [63:0] dactivations1_q0;
reg   [5:0] dactivations2_address0;
reg    dactivations2_ce0;
reg    dactivations2_we0;
wire   [63:0] dactivations2_q0;
reg   [9:0] delta_weights1_address0;
reg    delta_weights1_ce0;
reg    delta_weights1_we0;
wire   [63:0] delta_weights1_q0;
reg    delta_weights1_ce1;
wire   [63:0] delta_weights1_q1;
reg   [11:0] delta_weights2_address0;
reg    delta_weights2_ce0;
reg    delta_weights2_we0;
wire   [63:0] delta_weights2_q0;
reg    delta_weights2_ce1;
wire   [63:0] delta_weights2_q1;
reg   [7:0] delta_weights3_address0;
reg    delta_weights3_ce0;
reg    delta_weights3_we0;
wire   [63:0] delta_weights3_q0;
reg    delta_weights3_ce1;
wire   [63:0] delta_weights3_q1;
reg   [5:0] oracle_activations1_address0;
reg    oracle_activations1_ce0;
reg    oracle_activations1_we0;
wire   [63:0] oracle_activations1_q0;
reg    oracle_activations1_ce1;
wire   [63:0] oracle_activations1_q1;
reg   [5:0] oracle_activations2_address0;
reg    oracle_activations2_ce0;
reg    oracle_activations2_we0;
wire   [63:0] oracle_activations2_q0;
reg   [5:0] oracle_activations2_address1;
reg    oracle_activations2_ce1;
wire   [63:0] oracle_activations2_q1;
wire   [63:0] oracle_activations2_q2;
wire   [63:0] oracle_activations2_q3;
wire   [63:0] oracle_activations2_q4;
wire   [63:0] oracle_activations2_q5;
wire   [63:0] oracle_activations2_q6;
wire   [63:0] oracle_activations2_q7;
wire   [63:0] oracle_activations2_q8;
wire   [63:0] oracle_activations2_q9;
wire   [63:0] oracle_activations2_q10;
wire   [63:0] oracle_activations2_q11;
wire   [63:0] oracle_activations2_q12;
wire   [63:0] oracle_activations2_q13;
wire   [63:0] oracle_activations2_q14;
wire   [63:0] oracle_activations2_q15;
wire   [63:0] oracle_activations2_q16;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_start;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_done;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_idle;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_ready;
wire   [9:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_weights1_address0;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_weights1_ce0;
wire   [9:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_weights1_address1;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_weights1_ce1;
wire   [5:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_activations1_address0;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_activations1_ce0;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_activations1_d0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5404_p_ce;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5408_p_din0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5408_p_din1;
wire   [1:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5408_p_opcode;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5408_p_ce;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5412_p_din0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5412_p_din1;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5412_p_ce;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5416_p_din0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5416_p_din1;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5416_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_ready;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_d0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_biases1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_biases1_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_grp_fu_5404_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_ready;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_d0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_dactivations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_dactivations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_dactivations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_dactivations1_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5404_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5408_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5408_p_din1;
wire   [1:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5408_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5408_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5412_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5412_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5412_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5420_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5420_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5420_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5424_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5424_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5424_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_ready;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_weights2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_weights2_ce0;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_weights2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_weights2_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_activations2_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5404_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5408_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5408_p_din1;
wire   [1:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5408_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5408_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5412_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5412_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5412_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5416_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5416_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5416_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_ready;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_d0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_biases2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_biases2_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_grp_fu_5404_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_ready;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_d0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_dactivations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_dactivations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_dactivations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_dactivations2_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5404_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5408_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5408_p_din1;
wire   [1:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5408_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5408_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5412_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5412_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5412_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5420_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5420_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5420_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5424_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5424_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5424_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_ready;
wire   [7:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_weights3_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_weights3_ce0;
wire   [7:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_weights3_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_weights3_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_5_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_5_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_4_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_4_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_3_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_3_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5404_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5408_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5408_p_din1;
wire   [1:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5408_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5408_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5412_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5412_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5412_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5416_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5416_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5416_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_2_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_2_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_1_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_1_o_ap_vld;
wire   [1:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_biases3_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_biases3_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_grp_fu_5404_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_2_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_2_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_1_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_1_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_23057_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_23057_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_12953_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_12953_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_02849_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_02849_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5404_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5408_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5408_p_din1;
wire   [1:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5408_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5408_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5412_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5412_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5412_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5420_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5420_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5420_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5424_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5424_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5424_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_sum_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_sum_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5404_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5424_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5424_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5424_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_22745_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_22745_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_12641_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_12641_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_02537_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_02537_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5420_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5420_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5420_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5424_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5424_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5424_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_ready;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_training_targets_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_training_targets_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_1_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_1_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_2_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_2_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_23372_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_23372_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_13267_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_13267_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_03162_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_03162_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5404_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5412_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5412_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5412_p_ce;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_start;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_done;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_idle;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_ready;
wire   [5:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_activations2_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_activations2_ce0;
wire   [7:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_delta_weights3_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_delta_weights3_ce0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_delta_weights3_we0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_delta_weights3_d0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_grp_fu_5428_p_din0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_grp_fu_5428_p_din1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_grp_fu_5428_p_ce;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_ap_start;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_ap_done;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_ap_idle;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_ap_ready;
wire   [7:0] grp_backprop_Pipeline_activations2_loop_fu_2420_weights3_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_weights3_ce0;
wire   [7:0] grp_backprop_Pipeline_activations2_loop_fu_2420_weights3_address1;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_weights3_ce1;
wire   [5:0] grp_backprop_Pipeline_activations2_loop_fu_2420_oracle_activations2_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_oracle_activations2_ce0;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_oracle_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2420_oracle_activations2_d0;
wire   [5:0] grp_backprop_Pipeline_activations2_loop_fu_2420_dactivations2_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_dactivations2_ce0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5404_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5408_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5408_p_din1;
wire   [1:0] grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5408_p_opcode;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5408_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5412_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5412_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5412_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5416_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5416_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5416_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_ready;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_activations1_ce0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_oracle_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_oracle_activations2_ce0;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_delta_weights2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_delta_weights2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_delta_weights2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_delta_weights2_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_grp_fu_5412_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_grp_fu_5412_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_grp_fu_5412_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_ready;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_weights2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_weights2_ce0;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_weights2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_weights2_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_oracle_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_oracle_activations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_oracle_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_oracle_activations1_d0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_dactivations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_dactivations1_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5404_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5404_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5404_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5404_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5408_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5408_p_din1;
wire   [1:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5408_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5408_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5412_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5412_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5412_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5416_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5416_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5416_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5428_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5428_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5428_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_ready;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_training_data_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_training_data_ce0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_oracle_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_oracle_activations1_ce0;
wire   [9:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_delta_weights1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_delta_weights1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_delta_weights1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_delta_weights1_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_grp_fu_5412_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_grp_fu_5412_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_grp_fu_5412_p_ce;
wire    grp_update_weights_1_fu_2536_ap_start;
wire    grp_update_weights_1_fu_2536_ap_done;
wire    grp_update_weights_1_fu_2536_ap_idle;
wire    grp_update_weights_1_fu_2536_ap_ready;
wire   [9:0] grp_update_weights_1_fu_2536_weights1_address0;
wire    grp_update_weights_1_fu_2536_weights1_ce0;
wire    grp_update_weights_1_fu_2536_weights1_we0;
wire   [63:0] grp_update_weights_1_fu_2536_weights1_d0;
wire   [9:0] grp_update_weights_1_fu_2536_weights1_address1;
wire    grp_update_weights_1_fu_2536_weights1_ce1;
wire    grp_update_weights_1_fu_2536_weights1_we1;
wire   [63:0] grp_update_weights_1_fu_2536_weights1_d1;
wire   [11:0] grp_update_weights_1_fu_2536_weights2_address0;
wire    grp_update_weights_1_fu_2536_weights2_ce0;
wire    grp_update_weights_1_fu_2536_weights2_we0;
wire   [63:0] grp_update_weights_1_fu_2536_weights2_d0;
wire   [11:0] grp_update_weights_1_fu_2536_weights2_address1;
wire    grp_update_weights_1_fu_2536_weights2_ce1;
wire    grp_update_weights_1_fu_2536_weights2_we1;
wire   [63:0] grp_update_weights_1_fu_2536_weights2_d1;
wire   [7:0] grp_update_weights_1_fu_2536_weights3_address0;
wire    grp_update_weights_1_fu_2536_weights3_ce0;
wire    grp_update_weights_1_fu_2536_weights3_we0;
wire   [63:0] grp_update_weights_1_fu_2536_weights3_d0;
wire   [7:0] grp_update_weights_1_fu_2536_weights3_address1;
wire    grp_update_weights_1_fu_2536_weights3_ce1;
wire    grp_update_weights_1_fu_2536_weights3_we1;
wire   [63:0] grp_update_weights_1_fu_2536_weights3_d1;
wire   [9:0] grp_update_weights_1_fu_2536_d_weights1_address0;
wire    grp_update_weights_1_fu_2536_d_weights1_ce0;
wire   [9:0] grp_update_weights_1_fu_2536_d_weights1_address1;
wire    grp_update_weights_1_fu_2536_d_weights1_ce1;
wire   [11:0] grp_update_weights_1_fu_2536_d_weights2_address0;
wire    grp_update_weights_1_fu_2536_d_weights2_ce0;
wire   [11:0] grp_update_weights_1_fu_2536_d_weights2_address1;
wire    grp_update_weights_1_fu_2536_d_weights2_ce1;
wire   [7:0] grp_update_weights_1_fu_2536_d_weights3_address0;
wire    grp_update_weights_1_fu_2536_d_weights3_ce0;
wire   [7:0] grp_update_weights_1_fu_2536_d_weights3_address1;
wire    grp_update_weights_1_fu_2536_d_weights3_ce1;
wire   [5:0] grp_update_weights_1_fu_2536_biases1_address0;
wire    grp_update_weights_1_fu_2536_biases1_ce0;
wire    grp_update_weights_1_fu_2536_biases1_we0;
wire   [63:0] grp_update_weights_1_fu_2536_biases1_d0;
wire   [5:0] grp_update_weights_1_fu_2536_biases1_address1;
wire    grp_update_weights_1_fu_2536_biases1_ce1;
wire    grp_update_weights_1_fu_2536_biases1_we1;
wire   [63:0] grp_update_weights_1_fu_2536_biases1_d1;
wire   [5:0] grp_update_weights_1_fu_2536_biases2_address0;
wire    grp_update_weights_1_fu_2536_biases2_ce0;
wire    grp_update_weights_1_fu_2536_biases2_we0;
wire   [63:0] grp_update_weights_1_fu_2536_biases2_d0;
wire   [5:0] grp_update_weights_1_fu_2536_biases2_address1;
wire    grp_update_weights_1_fu_2536_biases2_ce1;
wire    grp_update_weights_1_fu_2536_biases2_we1;
wire   [63:0] grp_update_weights_1_fu_2536_biases2_d1;
wire   [1:0] grp_update_weights_1_fu_2536_biases3_address0;
wire    grp_update_weights_1_fu_2536_biases3_ce0;
wire    grp_update_weights_1_fu_2536_biases3_we0;
wire   [63:0] grp_update_weights_1_fu_2536_biases3_d0;
wire   [1:0] grp_update_weights_1_fu_2536_biases3_address1;
wire    grp_update_weights_1_fu_2536_biases3_ce1;
wire   [5:0] grp_update_weights_1_fu_2536_d_biases1_address0;
wire    grp_update_weights_1_fu_2536_d_biases1_ce0;
wire   [5:0] grp_update_weights_1_fu_2536_d_biases1_address1;
wire    grp_update_weights_1_fu_2536_d_biases1_ce1;
wire   [5:0] grp_update_weights_1_fu_2536_d_biases2_address0;
wire    grp_update_weights_1_fu_2536_d_biases2_ce0;
wire   [5:0] grp_update_weights_1_fu_2536_d_biases2_address1;
wire    grp_update_weights_1_fu_2536_d_biases2_ce1;
wire   [63:0] grp_update_weights_1_fu_2536_grp_fu_5404_p_din0;
wire   [63:0] grp_update_weights_1_fu_2536_grp_fu_5404_p_din1;
wire   [1:0] grp_update_weights_1_fu_2536_grp_fu_5404_p_opcode;
wire    grp_update_weights_1_fu_2536_grp_fu_5404_p_ce;
wire   [63:0] grp_update_weights_1_fu_2536_grp_fu_5408_p_din0;
wire   [63:0] grp_update_weights_1_fu_2536_grp_fu_5408_p_din1;
wire   [1:0] grp_update_weights_1_fu_2536_grp_fu_5408_p_opcode;
wire    grp_update_weights_1_fu_2536_grp_fu_5408_p_ce;
wire   [63:0] grp_update_weights_1_fu_2536_grp_fu_5412_p_din0;
wire   [63:0] grp_update_weights_1_fu_2536_grp_fu_5412_p_din1;
wire    grp_update_weights_1_fu_2536_grp_fu_5412_p_ce;
wire   [63:0] grp_update_weights_1_fu_2536_grp_fu_5420_p_din0;
wire   [63:0] grp_update_weights_1_fu_2536_grp_fu_5420_p_din1;
wire    grp_update_weights_1_fu_2536_grp_fu_5420_p_ce;
wire   [63:0] grp_update_weights_1_fu_2536_grp_fu_5416_p_din0;
wire   [63:0] grp_update_weights_1_fu_2536_grp_fu_5416_p_din1;
wire    grp_update_weights_1_fu_2536_grp_fu_5416_p_ce;
wire   [63:0] grp_update_weights_1_fu_2536_grp_fu_5428_p_din0;
wire   [63:0] grp_update_weights_1_fu_2536_grp_fu_5428_p_din1;
wire    grp_update_weights_1_fu_2536_grp_fu_5428_p_ce;
reg    grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_start_reg;
wire    ap_CS_fsm_state35;
reg    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_start_reg;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_start_reg;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state39;
reg    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_start_reg;
wire    ap_CS_fsm_state73;
reg    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_start_reg;
wire    ap_CS_fsm_state74;
wire    ap_CS_fsm_state75;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_start_reg;
wire    ap_CS_fsm_state76;
wire    ap_CS_fsm_state77;
reg    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_start_reg;
wire    ap_CS_fsm_state111;
reg   [63:0] activations3_2_fu_370;
reg   [63:0] activations3_fu_362;
reg   [63:0] activations3_1_fu_366;
reg    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_start_reg;
wire    ap_CS_fsm_state112;
wire    ap_CS_fsm_state113;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_start_reg;
wire    ap_CS_fsm_state114;
wire    ap_CS_fsm_state115;
reg    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_start_reg;
wire    ap_CS_fsm_state116;
wire    ap_CS_fsm_state117;
reg    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_start_reg;
wire    ap_CS_fsm_state118;
reg    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_start_reg;
wire    ap_CS_fsm_state120;
wire    ap_CS_fsm_state121;
reg    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_start_reg;
wire    ap_CS_fsm_state122;
wire    ap_CS_fsm_state123;
reg    grp_backprop_Pipeline_activations2_loop_fu_2420_ap_start_reg;
reg    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_start_reg;
wire    ap_CS_fsm_state124;
wire    ap_CS_fsm_state125;
reg    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_start_reg;
wire    ap_CS_fsm_state131;
reg    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_start_reg;
wire    ap_CS_fsm_state132;
wire    ap_CS_fsm_state133;
reg    grp_update_weights_1_fu_2536_ap_start_reg;
wire    ap_CS_fsm_state134;
wire    ap_CS_fsm_state135;
wire   [63:0] zext_ln31_fu_2619_p1;
wire   [63:0] arrayidx10_sum_1_cast_fu_2628_p1;
wire   [63:0] arrayidx10_sum_2_cast_fu_2638_p1;
wire   [63:0] arrayidx10_sum_3_cast_fu_2648_p1;
wire   [63:0] arrayidx10_sum_4_cast_fu_2658_p1;
wire   [63:0] arrayidx10_sum_5_cast_fu_2668_p1;
wire   [63:0] arrayidx10_sum_6_cast_fu_2678_p1;
wire   [63:0] arrayidx10_sum_7_cast_fu_2688_p1;
wire   [63:0] arrayidx10_sum_8_cast_fu_2698_p1;
wire   [63:0] arrayidx10_sum_9_cast_fu_2708_p1;
wire   [63:0] arrayidx10_sum_10_cast_fu_2718_p1;
wire   [63:0] arrayidx10_sum_11_cast_fu_2728_p1;
wire   [63:0] arrayidx10_sum_12_cast_fu_2738_p1;
reg   [11:0] phi_mul40_fu_246;
wire   [11:0] add_ln220_1_fu_2576_p2;
wire   [0:0] icmp_ln220_fu_2582_p2;
reg   [7:0] i_fu_250;
wire   [7:0] add_ln220_fu_2588_p2;
reg   [63:0] mux_case_02539_fu_254;
reg   [63:0] mux_case_12643_fu_258;
reg   [63:0] mux_case_22747_fu_262;
reg   [63:0] mux_case_02851_fu_266;
reg   [63:0] mux_case_12955_fu_270;
reg   [63:0] mux_case_23059_fu_274;
reg   [63:0] mux_case_03164_fu_278;
reg   [63:0] mux_case_13269_fu_282;
reg   [63:0] mux_case_23374_fu_286;
reg   [63:0] output_difference_1_promoted_fu_290;
reg   [63:0] output_difference_0_promoted_fu_294;
reg   [63:0] output_difference_2_promoted_fu_298;
reg    activations1_we1_local;
reg    activations1_ce1_local;
reg   [5:0] activations1_address1_local;
reg    activations1_we0_local;
reg    activations1_ce0_local;
reg   [5:0] activations1_address0_local;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
wire    ap_CS_fsm_state40;
reg    activations2_we1_local;
reg    activations2_ce1_local;
reg   [5:0] activations2_address1_local;
reg    activations2_we0_local;
reg    activations2_ce0_local;
reg   [5:0] activations2_address0_local;
wire    ap_CS_fsm_state78;
reg    training_data_ce0_local;
reg   [11:0] training_data_address0_local;
reg    training_data_ce1_local;
reg   [11:0] training_data_address1_local;
reg    oracle_activations2_ce12_local;
wire    ap_CS_fsm_state126;
reg   [5:0] oracle_activations2_address12_local;
reg    oracle_activations2_ce11_local;
reg   [5:0] oracle_activations2_address11_local;
reg    oracle_activations2_ce10_local;
reg   [5:0] oracle_activations2_address10_local;
reg    oracle_activations2_ce9_local;
reg   [5:0] oracle_activations2_address9_local;
reg    oracle_activations2_ce8_local;
reg   [5:0] oracle_activations2_address8_local;
reg    oracle_activations2_ce7_local;
reg   [5:0] oracle_activations2_address7_local;
reg    oracle_activations2_ce6_local;
reg   [5:0] oracle_activations2_address6_local;
reg    oracle_activations2_ce5_local;
reg   [5:0] oracle_activations2_address5_local;
reg    oracle_activations2_ce4_local;
reg   [5:0] oracle_activations2_address4_local;
reg    oracle_activations2_ce3_local;
reg   [5:0] oracle_activations2_address3_local;
reg    oracle_activations2_ce2_local;
reg   [5:0] oracle_activations2_address2_local;
reg    oracle_activations2_ce1_local;
reg   [5:0] oracle_activations2_address1_local;
reg    oracle_activations2_ce0_local;
reg   [5:0] oracle_activations2_address0_local;
reg    oracle_activations2_ce16_local;
reg   [5:0] oracle_activations2_address16_local;
reg    oracle_activations2_ce15_local;
reg   [5:0] oracle_activations2_address15_local;
reg    oracle_activations2_ce14_local;
reg   [5:0] oracle_activations2_address14_local;
reg    oracle_activations2_ce13_local;
reg   [5:0] oracle_activations2_address13_local;
wire   [11:0] arrayidx10_sum_1_fu_2623_p2;
wire   [11:0] arrayidx10_sum_2_fu_2633_p2;
wire   [11:0] arrayidx10_sum_3_fu_2643_p2;
wire   [11:0] arrayidx10_sum_4_fu_2653_p2;
wire   [11:0] arrayidx10_sum_5_fu_2663_p2;
wire   [11:0] arrayidx10_sum_6_fu_2673_p2;
wire   [11:0] arrayidx10_sum_7_fu_2683_p2;
wire   [11:0] arrayidx10_sum_8_fu_2693_p2;
wire   [11:0] arrayidx10_sum_9_fu_2703_p2;
wire   [11:0] arrayidx10_sum_10_fu_2713_p2;
wire   [11:0] arrayidx10_sum_11_fu_2723_p2;
wire   [11:0] arrayidx10_sum_12_fu_2733_p2;
wire   [6:0] trunc_ln66_fu_2840_p1;
wire   [8:0] p_shl_fu_2843_p3;
wire   [8:0] zext_ln66_fu_2837_p1;
wire   [63:0] grp_fu_5404_p2;
reg   [63:0] grp_fu_5404_p0;
reg   [63:0] grp_fu_5404_p1;
reg   [1:0] grp_fu_5404_opcode;
reg    grp_fu_5404_ce;
wire   [63:0] grp_fu_5408_p2;
reg   [63:0] grp_fu_5408_p0;
reg   [63:0] grp_fu_5408_p1;
reg    grp_fu_5408_ce;
wire   [63:0] grp_fu_5412_p2;
reg   [63:0] grp_fu_5412_p0;
reg   [63:0] grp_fu_5412_p1;
reg    grp_fu_5412_ce;
wire   [63:0] grp_fu_5416_p2;
reg   [63:0] grp_fu_5416_p0;
reg   [63:0] grp_fu_5416_p1;
reg    grp_fu_5416_ce;
wire   [63:0] grp_fu_5420_p2;
reg   [63:0] grp_fu_5420_p0;
reg   [63:0] grp_fu_5420_p1;
reg    grp_fu_5420_ce;
wire   [63:0] grp_fu_5424_p2;
reg   [63:0] grp_fu_5424_p0;
reg   [63:0] grp_fu_5424_p1;
reg    grp_fu_5424_ce;
wire   [63:0] grp_fu_5428_p2;
reg   [63:0] grp_fu_5428_p0;
reg   [63:0] grp_fu_5428_p1;
reg    grp_fu_5428_ce;
reg   [134:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
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
reg    ap_ST_fsm_state35_blk;
wire    ap_ST_fsm_state36_blk;
reg    ap_ST_fsm_state37_blk;
wire    ap_ST_fsm_state38_blk;
reg    ap_ST_fsm_state39_blk;
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
wire    ap_ST_fsm_state60_blk;
wire    ap_ST_fsm_state61_blk;
wire    ap_ST_fsm_state62_blk;
wire    ap_ST_fsm_state63_blk;
wire    ap_ST_fsm_state64_blk;
wire    ap_ST_fsm_state65_blk;
wire    ap_ST_fsm_state66_blk;
wire    ap_ST_fsm_state67_blk;
wire    ap_ST_fsm_state68_blk;
wire    ap_ST_fsm_state69_blk;
wire    ap_ST_fsm_state70_blk;
wire    ap_ST_fsm_state71_blk;
wire    ap_ST_fsm_state72_blk;
reg    ap_ST_fsm_state73_blk;
wire    ap_ST_fsm_state74_blk;
reg    ap_ST_fsm_state75_blk;
wire    ap_ST_fsm_state76_blk;
reg    ap_ST_fsm_state77_blk;
wire    ap_ST_fsm_state78_blk;
wire    ap_ST_fsm_state79_blk;
wire    ap_ST_fsm_state80_blk;
wire    ap_ST_fsm_state81_blk;
wire    ap_ST_fsm_state82_blk;
wire    ap_ST_fsm_state83_blk;
wire    ap_ST_fsm_state84_blk;
wire    ap_ST_fsm_state85_blk;
wire    ap_ST_fsm_state86_blk;
wire    ap_ST_fsm_state87_blk;
wire    ap_ST_fsm_state88_blk;
wire    ap_ST_fsm_state89_blk;
wire    ap_ST_fsm_state90_blk;
wire    ap_ST_fsm_state91_blk;
wire    ap_ST_fsm_state92_blk;
wire    ap_ST_fsm_state93_blk;
wire    ap_ST_fsm_state94_blk;
wire    ap_ST_fsm_state95_blk;
wire    ap_ST_fsm_state96_blk;
wire    ap_ST_fsm_state97_blk;
wire    ap_ST_fsm_state98_blk;
wire    ap_ST_fsm_state99_blk;
wire    ap_ST_fsm_state100_blk;
wire    ap_ST_fsm_state101_blk;
wire    ap_ST_fsm_state102_blk;
wire    ap_ST_fsm_state103_blk;
wire    ap_ST_fsm_state104_blk;
wire    ap_ST_fsm_state105_blk;
wire    ap_ST_fsm_state106_blk;
wire    ap_ST_fsm_state107_blk;
wire    ap_ST_fsm_state108_blk;
wire    ap_ST_fsm_state109_blk;
wire    ap_ST_fsm_state110_blk;
reg    ap_ST_fsm_state111_blk;
wire    ap_ST_fsm_state112_blk;
reg    ap_ST_fsm_state113_blk;
wire    ap_ST_fsm_state114_blk;
reg    ap_ST_fsm_state115_blk;
wire    ap_ST_fsm_state116_blk;
reg    ap_ST_fsm_state117_blk;
wire    ap_ST_fsm_state118_blk;
reg    ap_ST_fsm_state119_blk;
wire    ap_ST_fsm_state120_blk;
reg    ap_ST_fsm_state121_blk;
wire    ap_ST_fsm_state122_blk;
reg    ap_block_state123_on_subcall_done;
reg    ap_ST_fsm_state123_blk;
wire    ap_ST_fsm_state124_blk;
reg    ap_ST_fsm_state125_blk;
wire    ap_ST_fsm_state126_blk;
wire    ap_ST_fsm_state127_blk;
wire    ap_ST_fsm_state128_blk;
wire    ap_ST_fsm_state129_blk;
wire    ap_ST_fsm_state130_blk;
reg    ap_ST_fsm_state131_blk;
wire    ap_ST_fsm_state132_blk;
reg    ap_ST_fsm_state133_blk;
wire    ap_ST_fsm_state134_blk;
reg    ap_ST_fsm_state135_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 135'd1;
#0 grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_start_reg = 1'b0;
#0 activations3_2_fu_370 = 64'd0;
#0 activations3_fu_362 = 64'd0;
#0 activations3_1_fu_366 = 64'd0;
#0 grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_activations2_loop_fu_2420_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_start_reg = 1'b0;
#0 grp_update_weights_1_fu_2536_ap_start_reg = 1'b0;
#0 phi_mul40_fu_246 = 12'd0;
#0 i_fu_250 = 8'd0;
#0 mux_case_02539_fu_254 = 64'd0;
#0 mux_case_12643_fu_258 = 64'd0;
#0 mux_case_22747_fu_262 = 64'd0;
#0 mux_case_02851_fu_266 = 64'd0;
#0 mux_case_12955_fu_270 = 64'd0;
#0 mux_case_23059_fu_274 = 64'd0;
#0 mux_case_03164_fu_278 = 64'd0;
#0 mux_case_13269_fu_282 = 64'd0;
#0 mux_case_23374_fu_286 = 64'd0;
#0 output_difference_1_promoted_fu_290 = 64'd0;
#0 output_difference_0_promoted_fu_294 = 64'd0;
#0 output_difference_2_promoted_fu_298 = 64'd0;
end
backprop_activations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 64 ),.AddressWidth( 6 ))
activations1_U(.clk(ap_clk),.reset(ap_rst),.address0(activations1_address0),.ce0(activations1_ce0),.we0(activations1_we0),.d0(activations1_d0),.q0(activations1_q0),.address1(activations1_address1),.ce1(activations1_ce1),.we1(activations1_we1_local),.d1(64'd0),.q1(activations1_q1));
backprop_activations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 64 ),.AddressWidth( 6 ))
activations2_U(.clk(ap_clk),.reset(ap_rst),.address0(activations2_address0),.ce0(activations2_ce0),.we0(activations2_we0),.d0(activations2_d0),.q0(activations2_q0),.address1(activations2_address1),.ce1(activations2_ce1),.we1(activations2_we1_local),.d1(64'd0),.q1(activations2_q1));
backprop_dactivations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 64 ),.AddressWidth( 6 ))
dactivations1_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations1_address0),.ce0(dactivations1_ce0),.we0(dactivations1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_dactivations1_d0),.q0(dactivations1_q0));
backprop_dactivations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 64 ),.AddressWidth( 6 ))
dactivations2_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations2_address0),.ce0(dactivations2_ce0),.we0(dactivations2_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_dactivations2_d0),.q0(dactivations2_q0));
backprop_delta_weights1_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 832 ),.AddressWidth( 10 ))
delta_weights1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights1_address0),.ce0(delta_weights1_ce0),.we0(delta_weights1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_delta_weights1_d0),.q0(delta_weights1_q0),.address1(grp_update_weights_1_fu_2536_d_weights1_address1),.ce1(delta_weights1_ce1),.q1(delta_weights1_q1));
backprop_delta_weights2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4096 ),.AddressWidth( 12 ))
delta_weights2_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights2_address0),.ce0(delta_weights2_ce0),.we0(delta_weights2_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_delta_weights2_d0),.q0(delta_weights2_q0),.address1(grp_update_weights_1_fu_2536_d_weights2_address1),.ce1(delta_weights2_ce1),.q1(delta_weights2_q1));
backprop_delta_weights3_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 192 ),.AddressWidth( 8 ))
delta_weights3_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_address0),.ce0(delta_weights3_ce0),.we0(delta_weights3_we0),.d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_delta_weights3_d0),.q0(delta_weights3_q0),.address1(grp_update_weights_1_fu_2536_d_weights3_address1),.ce1(delta_weights3_ce1),.q1(delta_weights3_q1));
backprop_oracle_activations1_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 64 ),.AddressWidth( 6 ))
oracle_activations1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations1_address0),.ce0(oracle_activations1_ce0),.we0(oracle_activations1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_oracle_activations1_d0),.q0(oracle_activations1_q0),.address1(grp_update_weights_1_fu_2536_d_biases1_address1),.ce1(oracle_activations1_ce1),.q1(oracle_activations1_q1));
backprop_oracle_activations2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 64 ),.AddressWidth( 6 ))
oracle_activations2_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations2_address0),.ce0(oracle_activations2_ce0),.we0(oracle_activations2_we0),.d0(grp_backprop_Pipeline_activations2_loop_fu_2420_oracle_activations2_d0),.q0(oracle_activations2_q0),.address1(oracle_activations2_address1),.ce1(oracle_activations2_ce1),.q1(oracle_activations2_q1),.address2(oracle_activations2_address2_local),.ce2(oracle_activations2_ce2_local),.q2(oracle_activations2_q2),.address3(oracle_activations2_address3_local),.ce3(oracle_activations2_ce3_local),.q3(oracle_activations2_q3),.address4(oracle_activations2_address4_local),.ce4(oracle_activations2_ce4_local),.q4(oracle_activations2_q4),.address5(oracle_activations2_address5_local),.ce5(oracle_activations2_ce5_local),.q5(oracle_activations2_q5),.address6(oracle_activations2_address6_local),.ce6(oracle_activations2_ce6_local),.q6(oracle_activations2_q6),.address7(oracle_activations2_address7_local),.ce7(oracle_activations2_ce7_local),.q7(oracle_activations2_q7),.address8(oracle_activations2_address8_local),.ce8(oracle_activations2_ce8_local),.q8(oracle_activations2_q8),.address9(oracle_activations2_address9_local),.ce9(oracle_activations2_ce9_local),.q9(oracle_activations2_q9),.address10(oracle_activations2_address10_local),.ce10(oracle_activations2_ce10_local),.q10(oracle_activations2_q10),.address11(oracle_activations2_address11_local),.ce11(oracle_activations2_ce11_local),.q11(oracle_activations2_q11),.address12(oracle_activations2_address12_local),.ce12(oracle_activations2_ce12_local),.q12(oracle_activations2_q12),.address13(oracle_activations2_address13_local),.ce13(oracle_activations2_ce13_local),.q13(oracle_activations2_q13),.address14(oracle_activations2_address14_local),.ce14(oracle_activations2_ce14_local),.q14(oracle_activations2_q14),.address15(oracle_activations2_address15_local),.ce15(oracle_activations2_ce15_local),.q15(oracle_activations2_q15),.address16(oracle_activations2_address16_local),.ce16(oracle_activations2_ce16_local),.q16(oracle_activations2_q16));
backprop_backprop_Pipeline_mvp_product_input_loop grp_backprop_Pipeline_mvp_product_input_loop_fu_2142(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_start),.ap_done(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_done),.ap_idle(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_idle),.ap_ready(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_ready),.weights1_address0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_weights1_address0),.weights1_ce0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_weights1_ce0),.weights1_q0(weights1_q0),.weights1_address1(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_weights1_address1),.weights1_ce1(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_weights1_ce1),.weights1_q1(weights1_q1),.empty_28(empty_reg_4290),.empty_29(empty_54_reg_4295),.empty_30(empty_55_reg_4300),.empty_31(empty_56_reg_4305),.empty_32(empty_57_reg_4310),.empty_33(empty_58_reg_4315),.empty_34(empty_59_reg_4320),.empty_35(empty_60_reg_4325),.empty_36(empty_61_reg_4330),.empty_37(empty_62_reg_4335),.empty_38(empty_63_reg_4340),.empty_39(empty_64_reg_4345),.empty(empty_65_reg_4350),.activations1_address0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_activations1_ce0),.activations1_we0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_activations1_we0),.activations1_d0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_activations1_d0),.grp_fu_5404_p_din0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5404_p_ce),.grp_fu_5408_p_din0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5408_p_din0),.grp_fu_5408_p_din1(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5408_p_din1),.grp_fu_5408_p_opcode(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5408_p_opcode),.grp_fu_5408_p_dout0(grp_fu_5408_p2),.grp_fu_5408_p_ce(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5408_p_ce),.grp_fu_5412_p_din0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5412_p_din0),.grp_fu_5412_p_din1(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5412_p_din1),.grp_fu_5412_p_dout0(grp_fu_5412_p2),.grp_fu_5412_p_ce(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5412_p_ce),.grp_fu_5416_p_din0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5416_p_din0),.grp_fu_5416_p_din1(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5416_p_din1),.grp_fu_5416_p_dout0(grp_fu_5416_p2),.grp_fu_5416_p_ce(grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5416_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_26_1 grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_ready),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_ce0),.activations1_we0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_we0),.activations1_d0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_d0),.activations1_address1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_address1),.activations1_ce1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_ce1),.activations1_q1(activations1_q1),.biases1_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_biases1_address0),.biases1_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_biases1_ce0),.biases1_q0(biases1_q0),.grp_fu_5404_p_din0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_grp_fu_5404_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_1 grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_ready),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_ce0),.activations1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_we0),.activations1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_d0),.activations1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_address1),.activations1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_ce1),.activations1_q1(activations1_q1),.dactivations1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_dactivations1_address0),.dactivations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_dactivations1_ce0),.dactivations1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_dactivations1_we0),.dactivations1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_dactivations1_d0),.grp_fu_5404_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5404_p_ce),.grp_fu_5408_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5408_p_din0),.grp_fu_5408_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5408_p_din1),.grp_fu_5408_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5408_p_opcode),.grp_fu_5408_p_dout0(grp_fu_5408_p2),.grp_fu_5408_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5408_p_ce),.grp_fu_5412_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5412_p_din0),.grp_fu_5412_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5412_p_din1),.grp_fu_5412_p_dout0(grp_fu_5412_p2),.grp_fu_5412_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5412_p_ce),.grp_fu_5420_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5420_p_din0),.grp_fu_5420_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5420_p_din1),.grp_fu_5420_p_dout0(grp_fu_5420_p2),.grp_fu_5420_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5420_p_ce),.grp_fu_5424_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5424_p_din0),.grp_fu_5424_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5424_p_din1),.grp_fu_5424_p_dout0(grp_fu_5424_p2),.grp_fu_5424_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5424_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_44_1 grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_ready),.weights2_address0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_weights2_address0),.weights2_ce0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_weights2_ce0),.weights2_q0(weights2_q0),.weights2_address1(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_weights2_address1),.weights2_ce1(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_weights2_ce1),.weights2_q1(weights2_q1),.activations1_load_66(activations1_load_reg_4355),.activations1_load_1(activations1_load_1_reg_4360),.activations1_load_2(activations1_load_2_reg_4365),.activations1_load_3(activations1_load_3_reg_4370),.activations1_load_4(activations1_load_4_reg_4375),.activations1_load_5(activations1_load_5_reg_4380),.activations1_load_6(activations1_load_6_reg_4385),.activations1_load_7(activations1_load_7_reg_4390),.activations1_load_8(activations1_load_8_reg_4395),.activations1_load_9(activations1_load_9_reg_4400),.activations1_load_10(activations1_load_10_reg_4405),.activations1_load_11(activations1_load_11_reg_4410),.activations1_load_12(activations1_load_12_reg_4415),.activations1_load_13(activations1_load_13_reg_4420),.activations1_load_14(activations1_load_14_reg_4425),.activations1_load_15(activations1_load_15_reg_4430),.activations1_load_16(activations1_load_16_reg_4435),.activations1_load_17(activations1_load_17_reg_4440),.activations1_load_18(activations1_load_18_reg_4445),.activations1_load_19(activations1_load_19_reg_4450),.activations1_load_20(activations1_load_20_reg_4455),.activations1_load_21(activations1_load_21_reg_4460),.activations1_load_22(activations1_load_22_reg_4465),.activations1_load_23(activations1_load_23_reg_4470),.activations1_load_24(activations1_load_24_reg_4475),.activations1_load_25(activations1_load_25_reg_4480),.activations1_load_26(activations1_load_26_reg_4485),.activations1_load_27(activations1_load_27_reg_4490),.activations1_load_28(activations1_load_28_reg_4495),.activations1_load_29(activations1_load_29_reg_4500),.activations1_load_30(activations1_load_30_reg_4505),.activations1_load_31(activations1_load_31_reg_4510),.activations1_load_32(activations1_load_32_reg_4515),.activations1_load_33(activations1_load_33_reg_4520),.activations1_load_34(activations1_load_34_reg_4525),.activations1_load_35(activations1_load_35_reg_4530),.activations1_load_36(activations1_load_36_reg_4535),.activations1_load_37(activations1_load_37_reg_4540),.activations1_load_38(activations1_load_38_reg_4545),.activations1_load_39(activations1_load_39_reg_4550),.activations1_load_40(activations1_load_40_reg_4555),.activations1_load_41(activations1_load_41_reg_4560),.activations1_load_42(activations1_load_42_reg_4565),.activations1_load_43(activations1_load_43_reg_4570),.activations1_load_44(activations1_load_44_reg_4575),.activations1_load_45(activations1_load_45_reg_4580),.activations1_load_46(activations1_load_46_reg_4585),.activations1_load_47(activations1_load_47_reg_4590),.activations1_load_48(activations1_load_48_reg_4595),.activations1_load_49(activations1_load_49_reg_4600),.activations1_load_50(activations1_load_50_reg_4605),.activations1_load_51(activations1_load_51_reg_4610),.activations1_load_52(activations1_load_52_reg_4615),.activations1_load_53(activations1_load_53_reg_4620),.activations1_load_54(activations1_load_54_reg_4625),.activations1_load_55(activations1_load_55_reg_4630),.activations1_load_56(activations1_load_56_reg_4635),.activations1_load_57(activations1_load_57_reg_4640),.activations1_load_58(activations1_load_58_reg_4645),.activations1_load_59(activations1_load_59_reg_4650),.activations1_load_60(activations1_load_60_reg_4655),.activations1_load_61(activations1_load_61_reg_4660),.activations1_load_62(activations1_load_62_reg_4665),.activations1_load_63(activations1_load_63_reg_4670),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_activations2_d0),.grp_fu_5404_p_din0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5404_p_ce),.grp_fu_5408_p_din0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5408_p_din0),.grp_fu_5408_p_din1(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5408_p_din1),.grp_fu_5408_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5408_p_opcode),.grp_fu_5408_p_dout0(grp_fu_5408_p2),.grp_fu_5408_p_ce(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5408_p_ce),.grp_fu_5412_p_din0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5412_p_din0),.grp_fu_5412_p_din1(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5412_p_din1),.grp_fu_5412_p_dout0(grp_fu_5412_p2),.grp_fu_5412_p_ce(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5412_p_ce),.grp_fu_5416_p_din0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5416_p_din0),.grp_fu_5416_p_din1(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5416_p_din1),.grp_fu_5416_p_dout0(grp_fu_5416_p2),.grp_fu_5416_p_ce(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5416_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_26_11 grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_ready),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_d0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_ce1),.activations2_q1(activations2_q1),.biases2_address0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_biases2_address0),.biases2_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_biases2_ce0),.biases2_q0(biases2_q0),.grp_fu_5404_p_din0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_grp_fu_5404_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_12 grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_ready),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_d0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_ce1),.activations2_q1(activations2_q1),.dactivations2_address0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_dactivations2_address0),.dactivations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_dactivations2_ce0),.dactivations2_we0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_dactivations2_we0),.dactivations2_d0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_dactivations2_d0),.grp_fu_5404_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5404_p_ce),.grp_fu_5408_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5408_p_din0),.grp_fu_5408_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5408_p_din1),.grp_fu_5408_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5408_p_opcode),.grp_fu_5408_p_dout0(grp_fu_5408_p2),.grp_fu_5408_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5408_p_ce),.grp_fu_5412_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5412_p_din0),.grp_fu_5412_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5412_p_din1),.grp_fu_5412_p_dout0(grp_fu_5412_p2),.grp_fu_5412_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5412_p_ce),.grp_fu_5420_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5420_p_din0),.grp_fu_5420_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5420_p_din1),.grp_fu_5420_p_dout0(grp_fu_5420_p2),.grp_fu_5420_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5420_p_ce),.grp_fu_5424_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5424_p_din0),.grp_fu_5424_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5424_p_din1),.grp_fu_5424_p_dout0(grp_fu_5424_p2),.grp_fu_5424_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5424_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_55_1 grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_ready),.activations3_2_load(64'd0),.activations3_load(64'd0),.activations3_1_load(64'd0),.weights3_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_weights3_address0),.weights3_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_weights3_ce0),.weights3_q0(weights3_q0),.weights3_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_weights3_address1),.weights3_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_weights3_ce1),.weights3_q1(weights3_q1),.activations2_load_66(activations2_load_reg_4675),.activations2_load_1(activations2_load_1_reg_4680),.activations2_load_2(activations2_load_2_reg_4685),.activations2_load_3(activations2_load_3_reg_4690),.activations2_load_4(activations2_load_4_reg_4695),.activations2_load_5(activations2_load_5_reg_4700),.activations2_load_6(activations2_load_6_reg_4705),.activations2_load_7(activations2_load_7_reg_4710),.activations2_load_8(activations2_load_8_reg_4715),.activations2_load_9(activations2_load_9_reg_4720),.activations2_load_10(activations2_load_10_reg_4725),.activations2_load_11(activations2_load_11_reg_4730),.activations2_load_12(activations2_load_12_reg_4735),.activations2_load_13(activations2_load_13_reg_4740),.activations2_load_14(activations2_load_14_reg_4745),.activations2_load_15(activations2_load_15_reg_4750),.activations2_load_16(activations2_load_16_reg_4755),.activations2_load_17(activations2_load_17_reg_4760),.activations2_load_18(activations2_load_18_reg_4765),.activations2_load_19(activations2_load_19_reg_4770),.activations2_load_20(activations2_load_20_reg_4775),.activations2_load_21(activations2_load_21_reg_4780),.activations2_load_22(activations2_load_22_reg_4785),.activations2_load_23(activations2_load_23_reg_4790),.activations2_load_24(activations2_load_24_reg_4795),.activations2_load_25(activations2_load_25_reg_4800),.activations2_load_26(activations2_load_26_reg_4805),.activations2_load_27(activations2_load_27_reg_4810),.activations2_load_28(activations2_load_28_reg_4815),.activations2_load_29(activations2_load_29_reg_4820),.activations2_load_30(activations2_load_30_reg_4825),.activations2_load_31(activations2_load_31_reg_4830),.activations2_load_32(activations2_load_32_reg_4835),.activations2_load_33(activations2_load_33_reg_4840),.activations2_load_34(activations2_load_34_reg_4845),.activations2_load_35(activations2_load_35_reg_4850),.activations2_load_36(activations2_load_36_reg_4855),.activations2_load_37(activations2_load_37_reg_4860),.activations2_load_38(activations2_load_38_reg_4865),.activations2_load_39(activations2_load_39_reg_4870),.activations2_load_40(activations2_load_40_reg_4875),.activations2_load_41(activations2_load_41_reg_4880),.activations2_load_42(activations2_load_42_reg_4885),.activations2_load_43(activations2_load_43_reg_4890),.activations2_load_44(activations2_load_44_reg_4895),.activations2_load_45(activations2_load_45_reg_4900),.activations2_load_46(activations2_load_46_reg_4905),.activations2_load_47(activations2_load_47_reg_4910),.activations2_load_48(activations2_load_48_reg_4915),.activations2_load_49(activations2_load_49_reg_4920),.activations2_load_50(activations2_load_50_reg_4925),.activations2_load_51(activations2_load_51_reg_4930),.activations2_load_52(activations2_load_52_reg_4935),.activations2_load_53(activations2_load_53_reg_4940),.activations2_load_54(activations2_load_54_reg_4945),.activations2_load_55(activations2_load_55_reg_4950),.activations2_load_56(activations2_load_56_reg_4955),.activations2_load_57(activations2_load_57_reg_4960),.activations2_load_58(activations2_load_58_reg_4965),.activations2_load_59(activations2_load_59_reg_4970),.activations2_load_60(activations2_load_60_reg_4975),.activations2_load_61(activations2_load_61_reg_4980),.activations2_load_62(activations2_load_62_reg_4985),.activations2_load_63(activations2_load_63_reg_4990),.activations3_5_out(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_5_out),.activations3_5_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_5_out_ap_vld),.activations3_4_out(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_4_out),.activations3_4_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_4_out_ap_vld),.activations3_3_out(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_3_out),.activations3_3_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_3_out_ap_vld),.grp_fu_5404_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5404_p_ce),.grp_fu_5408_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5408_p_din0),.grp_fu_5408_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5408_p_din1),.grp_fu_5408_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5408_p_opcode),.grp_fu_5408_p_dout0(grp_fu_5408_p2),.grp_fu_5408_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5408_p_ce),.grp_fu_5412_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5412_p_din0),.grp_fu_5412_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5412_p_din1),.grp_fu_5412_p_dout0(grp_fu_5412_p2),.grp_fu_5412_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5412_p_ce),.grp_fu_5416_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5416_p_din0),.grp_fu_5416_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5416_p_din1),.grp_fu_5416_p_dout0(grp_fu_5416_p2),.grp_fu_5416_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5416_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_26_13 grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_ready),.activations3_i(activations3_fu_362),.activations3_o(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_o),.activations3_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_o_ap_vld),.activations3_2_i(activations3_2_fu_370),.activations3_2_o(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_2_o),.activations3_2_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_2_o_ap_vld),.activations3_1_i(activations3_1_fu_366),.activations3_1_o(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_1_o),.activations3_1_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_1_o_ap_vld),.biases3_address0(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_biases3_address0),.biases3_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_biases3_ce0),.biases3_q0(biases3_q0),.grp_fu_5404_p_din0(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_grp_fu_5404_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_14 grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_ready),.mux_case_23059(mux_case_23059_fu_274),.mux_case_12955(mux_case_12955_fu_270),.mux_case_02851(mux_case_02851_fu_266),.activations3_i(activations3_fu_362),.activations3_o(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_o),.activations3_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_o_ap_vld),.activations3_2_i(activations3_2_fu_370),.activations3_2_o(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_2_o),.activations3_2_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_2_o_ap_vld),.activations3_1_i(activations3_1_fu_366),.activations3_1_o(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_1_o),.activations3_1_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_1_o_ap_vld),.mux_case_23057_out(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_23057_out),.mux_case_23057_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_23057_out_ap_vld),.mux_case_12953_out(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_12953_out),.mux_case_12953_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_12953_out_ap_vld),.mux_case_02849_out(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_02849_out),.mux_case_02849_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_02849_out_ap_vld),.grp_fu_5404_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5404_p_ce),.grp_fu_5408_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5408_p_din0),.grp_fu_5408_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5408_p_din1),.grp_fu_5408_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5408_p_opcode),.grp_fu_5408_p_dout0(grp_fu_5408_p2),.grp_fu_5408_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5408_p_ce),.grp_fu_5412_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5412_p_din0),.grp_fu_5412_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5412_p_din1),.grp_fu_5412_p_dout0(grp_fu_5412_p2),.grp_fu_5412_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5412_p_ce),.grp_fu_5420_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5420_p_din0),.grp_fu_5420_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5420_p_din1),.grp_fu_5420_p_dout0(grp_fu_5420_p2),.grp_fu_5420_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5420_p_ce),.grp_fu_5424_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5424_p_din0),.grp_fu_5424_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5424_p_din1),.grp_fu_5424_p_dout0(grp_fu_5424_p2),.grp_fu_5424_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5424_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_8_1 grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_ready),.activations3_load_2(activations3_fu_362),.activations3_1_load_2(activations3_1_fu_366),.activations3_2_load_2(activations3_2_fu_370),.sum_out(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_sum_out),.sum_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_sum_out_ap_vld),.grp_fu_5404_p_din0(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5404_p_ce),.grp_fu_5424_p_din0(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5424_p_din0),.grp_fu_5424_p_din1(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5424_p_din1),.grp_fu_5424_p_dout0(grp_fu_5424_p2),.grp_fu_5424_p_ce(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5424_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_11_2 grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_ready),.mux_case_22747(mux_case_22747_fu_262),.mux_case_12643(mux_case_12643_fu_258),.mux_case_02539(mux_case_02539_fu_254),.activations3_load_2(activations3_fu_362),.activations3_1_load_2(activations3_1_fu_366),.activations3_2_load_2(activations3_2_fu_370),.sum_reload(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_sum_out),.mux_case_22745_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_22745_out),.mux_case_22745_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_22745_out_ap_vld),.mux_case_12641_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_12641_out),.mux_case_12641_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_12641_out_ap_vld),.mux_case_02537_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_02537_out),.mux_case_02537_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_02537_out_ap_vld),.grp_fu_5420_p_din0(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5420_p_din0),.grp_fu_5420_p_din1(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5420_p_din1),.grp_fu_5420_p_dout0(grp_fu_5420_p2),.grp_fu_5420_p_ce(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5420_p_ce),.grp_fu_5424_p_din0(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5424_p_din0),.grp_fu_5424_p_din1(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5424_p_din1),.grp_fu_5424_p_dout0(grp_fu_5424_p2),.grp_fu_5424_p_ce(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5424_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_66_1 grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_ready),.output_difference_2_promoted(output_difference_2_promoted_fu_298),.output_difference_0_promoted(output_difference_0_promoted_fu_294),.output_difference_1_promoted(output_difference_1_promoted_fu_290),.mux_case_23374(mux_case_23374_fu_286),.mux_case_13269(mux_case_13269_fu_282),.mux_case_03164(mux_case_03164_fu_278),.mux_case_02537_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_02537_out),.mux_case_12641_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_12641_out),.mux_case_22745_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_22745_out),.mul_ln66(sub_ln66_reg_5025),.training_targets_address0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_training_targets_address0),.training_targets_ce0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_training_targets_ce0),.training_targets_q0(training_targets_q0),.mux_case_02849_reload(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_02849_out),.mux_case_12953_reload(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_12953_out),.mux_case_23057_reload(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_23057_out),.output_difference_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_out),.output_difference_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_out_ap_vld),.output_difference_1_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_1_out),.output_difference_1_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_1_out_ap_vld),.output_difference_2_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_2_out),.output_difference_2_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_2_out_ap_vld),.mux_case_23372_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_23372_out),.mux_case_23372_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_23372_out_ap_vld),.mux_case_13267_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_13267_out),.mux_case_13267_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_13267_out_ap_vld),.mux_case_03162_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_03162_out),.mux_case_03162_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_03162_out_ap_vld),.grp_fu_5404_p_din0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5404_p_ce),.grp_fu_5412_p_din0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5412_p_din0),.grp_fu_5412_p_din1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5412_p_din1),.grp_fu_5412_p_dout0(grp_fu_5412_p2),.grp_fu_5412_p_ce(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5412_p_ce));
backprop_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1 grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_start),.ap_done(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_done),.ap_idle(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_idle),.ap_ready(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_ready),.activations2_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_activations2_ce0),.activations2_q0(activations2_q0),.mux_case_03162_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_03162_out),.mux_case_13267_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_13267_out),.mux_case_23372_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_23372_out),.delta_weights3_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_delta_weights3_address0),.delta_weights3_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_delta_weights3_ce0),.delta_weights3_we0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_delta_weights3_we0),.delta_weights3_d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_delta_weights3_d0),.grp_fu_5428_p_din0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_grp_fu_5428_p_din0),.grp_fu_5428_p_din1(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_grp_fu_5428_p_din1),.grp_fu_5428_p_dout0(grp_fu_5428_p2),.grp_fu_5428_p_ce(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_grp_fu_5428_p_ce));
backprop_backprop_Pipeline_activations2_loop grp_backprop_Pipeline_activations2_loop_fu_2420(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_activations2_loop_fu_2420_ap_start),.ap_done(grp_backprop_Pipeline_activations2_loop_fu_2420_ap_done),.ap_idle(grp_backprop_Pipeline_activations2_loop_fu_2420_ap_idle),.ap_ready(grp_backprop_Pipeline_activations2_loop_fu_2420_ap_ready),.weights3_address0(grp_backprop_Pipeline_activations2_loop_fu_2420_weights3_address0),.weights3_ce0(grp_backprop_Pipeline_activations2_loop_fu_2420_weights3_ce0),.weights3_q0(weights3_q0),.weights3_address1(grp_backprop_Pipeline_activations2_loop_fu_2420_weights3_address1),.weights3_ce1(grp_backprop_Pipeline_activations2_loop_fu_2420_weights3_ce1),.weights3_q1(weights3_q1),.mux_case_03162_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_03162_out),.mux_case_13267_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_13267_out),.mux_case_23372_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_23372_out),.oracle_activations2_address0(grp_backprop_Pipeline_activations2_loop_fu_2420_oracle_activations2_address0),.oracle_activations2_ce0(grp_backprop_Pipeline_activations2_loop_fu_2420_oracle_activations2_ce0),.oracle_activations2_we0(grp_backprop_Pipeline_activations2_loop_fu_2420_oracle_activations2_we0),.oracle_activations2_d0(grp_backprop_Pipeline_activations2_loop_fu_2420_oracle_activations2_d0),.dactivations2_address0(grp_backprop_Pipeline_activations2_loop_fu_2420_dactivations2_address0),.dactivations2_ce0(grp_backprop_Pipeline_activations2_loop_fu_2420_dactivations2_ce0),.dactivations2_q0(dactivations2_q0),.grp_fu_5404_p_din0(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5404_p_ce),.grp_fu_5408_p_din0(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5408_p_din0),.grp_fu_5408_p_din1(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5408_p_din1),.grp_fu_5408_p_opcode(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5408_p_opcode),.grp_fu_5408_p_dout0(grp_fu_5408_p2),.grp_fu_5408_p_ce(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5408_p_ce),.grp_fu_5412_p_din0(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5412_p_din0),.grp_fu_5412_p_din1(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5412_p_din1),.grp_fu_5412_p_dout0(grp_fu_5412_p2),.grp_fu_5412_p_ce(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5412_p_ce),.grp_fu_5416_p_din0(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5416_p_din0),.grp_fu_5416_p_din1(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5416_p_din1),.grp_fu_5416_p_dout0(grp_fu_5416_p2),.grp_fu_5416_p_ce(grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5416_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_ready),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_activations1_ce0),.activations1_q0(activations1_q0),.oracle_activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_oracle_activations2_address0),.oracle_activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_oracle_activations2_ce0),.oracle_activations2_q0(oracle_activations2_q0),.delta_weights2_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_delta_weights2_address0),.delta_weights2_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_delta_weights2_ce0),.delta_weights2_we0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_delta_weights2_we0),.delta_weights2_d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_delta_weights2_d0),.grp_fu_5412_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_grp_fu_5412_p_din0),.grp_fu_5412_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_grp_fu_5412_p_din1),.grp_fu_5412_p_dout0(grp_fu_5412_p2),.grp_fu_5412_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_grp_fu_5412_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_102_1 grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_ready),.weights2_address0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_weights2_address0),.weights2_ce0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_weights2_ce0),.weights2_q0(weights2_q0),.weights2_address1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_weights2_address1),.weights2_ce1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_weights2_ce1),.weights2_q1(weights2_q1),.oracle_activations2_load(oracle_activations2_load_reg_5075),.oracle_activations2_load_1(oracle_activations2_load_1_reg_5080),.oracle_activations2_load_2(oracle_activations2_load_2_reg_5085),.oracle_activations2_load_3(oracle_activations2_load_3_reg_5090),.oracle_activations2_load_4(oracle_activations2_load_4_reg_5095),.oracle_activations2_load_5(oracle_activations2_load_5_reg_5100),.oracle_activations2_load_6(oracle_activations2_load_6_reg_5105),.oracle_activations2_load_7(oracle_activations2_load_7_reg_5110),.oracle_activations2_load_8(oracle_activations2_load_8_reg_5115),.oracle_activations2_load_9(oracle_activations2_load_9_reg_5120),.oracle_activations2_load_10(oracle_activations2_load_10_reg_5125),.oracle_activations2_load_11(oracle_activations2_load_11_reg_5130),.oracle_activations2_load_12(oracle_activations2_load_12_reg_5135),.oracle_activations2_load_13(oracle_activations2_load_13_reg_5140),.oracle_activations2_load_14(oracle_activations2_load_14_reg_5145),.oracle_activations2_load_15(oracle_activations2_load_15_reg_5150),.oracle_activations2_load_16(oracle_activations2_load_16_reg_5155),.oracle_activations2_load_17(oracle_activations2_load_17_reg_5160),.oracle_activations2_load_18(oracle_activations2_load_18_reg_5165),.oracle_activations2_load_19(oracle_activations2_load_19_reg_5170),.oracle_activations2_load_20(oracle_activations2_load_20_reg_5175),.oracle_activations2_load_21(oracle_activations2_load_21_reg_5180),.oracle_activations2_load_22(oracle_activations2_load_22_reg_5185),.oracle_activations2_load_23(oracle_activations2_load_23_reg_5190),.oracle_activations2_load_24(oracle_activations2_load_24_reg_5195),.oracle_activations2_load_25(oracle_activations2_load_25_reg_5200),.oracle_activations2_load_26(oracle_activations2_load_26_reg_5205),.oracle_activations2_load_27(oracle_activations2_load_27_reg_5210),.oracle_activations2_load_28(oracle_activations2_load_28_reg_5215),.oracle_activations2_load_29(oracle_activations2_load_29_reg_5220),.oracle_activations2_load_30(oracle_activations2_load_30_reg_5225),.oracle_activations2_load_31(oracle_activations2_load_31_reg_5230),.oracle_activations2_load_32(oracle_activations2_load_32_reg_5235),.oracle_activations2_load_33(oracle_activations2_load_33_reg_5240),.oracle_activations2_load_34(oracle_activations2_load_34_reg_5245),.oracle_activations2_load_35(oracle_activations2_load_35_reg_5250),.oracle_activations2_load_36(oracle_activations2_load_36_reg_5255),.oracle_activations2_load_37(oracle_activations2_load_37_reg_5260),.oracle_activations2_load_38(oracle_activations2_load_38_reg_5265),.oracle_activations2_load_39(oracle_activations2_load_39_reg_5270),.oracle_activations2_load_40(oracle_activations2_load_40_reg_5275),.oracle_activations2_load_41(oracle_activations2_load_41_reg_5280),.oracle_activations2_load_42(oracle_activations2_load_42_reg_5285),.oracle_activations2_load_43(oracle_activations2_load_43_reg_5290),.oracle_activations2_load_44(oracle_activations2_load_44_reg_5295),.oracle_activations2_load_45(oracle_activations2_load_45_reg_5300),.oracle_activations2_load_46(oracle_activations2_load_46_reg_5305),.oracle_activations2_load_47(oracle_activations2_load_47_reg_5310),.oracle_activations2_load_48(oracle_activations2_load_48_reg_5315),.oracle_activations2_load_49(oracle_activations2_load_49_reg_5320),.oracle_activations2_load_50(oracle_activations2_load_50_reg_5325),.oracle_activations2_load_51(oracle_activations2_load_51_reg_5330),.oracle_activations2_load_52(oracle_activations2_load_52_reg_5335),.oracle_activations2_load_53(oracle_activations2_load_53_reg_5340),.oracle_activations2_load_54(oracle_activations2_load_54_reg_5345),.oracle_activations2_load_55(oracle_activations2_load_55_reg_5350),.oracle_activations2_load_56(oracle_activations2_load_56_reg_5355),.oracle_activations2_load_57(oracle_activations2_load_57_reg_5360),.oracle_activations2_load_58(oracle_activations2_load_58_reg_5365),.oracle_activations2_load_59(oracle_activations2_load_59_reg_5370),.oracle_activations2_load_60(oracle_activations2_load_60_reg_5375),.oracle_activations2_load_61(oracle_activations2_load_61_reg_5380),.oracle_activations2_load_62(oracle_activations2_load_62_reg_5385),.oracle_activations2_load_63(oracle_activations2_load_63_reg_5390),.oracle_activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_oracle_activations1_address0),.oracle_activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_oracle_activations1_ce0),.oracle_activations1_we0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_oracle_activations1_we0),.oracle_activations1_d0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_oracle_activations1_d0),.dactivations1_address0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_dactivations1_address0),.dactivations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_dactivations1_ce0),.dactivations1_q0(dactivations1_q0),.grp_fu_5404_p_din0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5404_p_ce),.grp_fu_5408_p_din0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5408_p_din0),.grp_fu_5408_p_din1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5408_p_din1),.grp_fu_5408_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5408_p_opcode),.grp_fu_5408_p_dout0(grp_fu_5408_p2),.grp_fu_5408_p_ce(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5408_p_ce),.grp_fu_5412_p_din0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5412_p_din0),.grp_fu_5412_p_din1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5412_p_din1),.grp_fu_5412_p_dout0(grp_fu_5412_p2),.grp_fu_5412_p_ce(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5412_p_ce),.grp_fu_5416_p_din0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5416_p_din0),.grp_fu_5416_p_din1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5416_p_din1),.grp_fu_5416_p_dout0(grp_fu_5416_p2),.grp_fu_5416_p_ce(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5416_p_ce),.grp_fu_5428_p_din0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5428_p_din0),.grp_fu_5428_p_din1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5428_p_din1),.grp_fu_5428_p_dout0(grp_fu_5428_p2),.grp_fu_5428_p_ce(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5428_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_ready),.phi_mul40(phi_mul40_load_reg_4143),.training_data_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_training_data_address0),.training_data_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_training_data_ce0),.training_data_q0(training_data_q0),.oracle_activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_oracle_activations1_address0),.oracle_activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_oracle_activations1_ce0),.oracle_activations1_q0(oracle_activations1_q0),.delta_weights1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_delta_weights1_address0),.delta_weights1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_delta_weights1_ce0),.delta_weights1_we0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_delta_weights1_we0),.delta_weights1_d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_delta_weights1_d0),.grp_fu_5412_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_grp_fu_5412_p_din0),.grp_fu_5412_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_grp_fu_5412_p_din1),.grp_fu_5412_p_dout0(grp_fu_5412_p2),.grp_fu_5412_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_grp_fu_5412_p_ce));
backprop_update_weights_1 grp_update_weights_1_fu_2536(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_fu_2536_ap_start),.ap_done(grp_update_weights_1_fu_2536_ap_done),.ap_idle(grp_update_weights_1_fu_2536_ap_idle),.ap_ready(grp_update_weights_1_fu_2536_ap_ready),.weights1_address0(grp_update_weights_1_fu_2536_weights1_address0),.weights1_ce0(grp_update_weights_1_fu_2536_weights1_ce0),.weights1_we0(grp_update_weights_1_fu_2536_weights1_we0),.weights1_d0(grp_update_weights_1_fu_2536_weights1_d0),.weights1_q0(weights1_q0),.weights1_address1(grp_update_weights_1_fu_2536_weights1_address1),.weights1_ce1(grp_update_weights_1_fu_2536_weights1_ce1),.weights1_we1(grp_update_weights_1_fu_2536_weights1_we1),.weights1_d1(grp_update_weights_1_fu_2536_weights1_d1),.weights1_q1(weights1_q1),.weights2_address0(grp_update_weights_1_fu_2536_weights2_address0),.weights2_ce0(grp_update_weights_1_fu_2536_weights2_ce0),.weights2_we0(grp_update_weights_1_fu_2536_weights2_we0),.weights2_d0(grp_update_weights_1_fu_2536_weights2_d0),.weights2_q0(weights2_q0),.weights2_address1(grp_update_weights_1_fu_2536_weights2_address1),.weights2_ce1(grp_update_weights_1_fu_2536_weights2_ce1),.weights2_we1(grp_update_weights_1_fu_2536_weights2_we1),.weights2_d1(grp_update_weights_1_fu_2536_weights2_d1),.weights2_q1(weights2_q1),.weights3_address0(grp_update_weights_1_fu_2536_weights3_address0),.weights3_ce0(grp_update_weights_1_fu_2536_weights3_ce0),.weights3_we0(grp_update_weights_1_fu_2536_weights3_we0),.weights3_d0(grp_update_weights_1_fu_2536_weights3_d0),.weights3_q0(weights3_q0),.weights3_address1(grp_update_weights_1_fu_2536_weights3_address1),.weights3_ce1(grp_update_weights_1_fu_2536_weights3_ce1),.weights3_we1(grp_update_weights_1_fu_2536_weights3_we1),.weights3_d1(grp_update_weights_1_fu_2536_weights3_d1),.weights3_q1(weights3_q1),.d_weights1_address0(grp_update_weights_1_fu_2536_d_weights1_address0),.d_weights1_ce0(grp_update_weights_1_fu_2536_d_weights1_ce0),.d_weights1_q0(delta_weights1_q0),.d_weights1_address1(grp_update_weights_1_fu_2536_d_weights1_address1),.d_weights1_ce1(grp_update_weights_1_fu_2536_d_weights1_ce1),.d_weights1_q1(delta_weights1_q1),.d_weights2_address0(grp_update_weights_1_fu_2536_d_weights2_address0),.d_weights2_ce0(grp_update_weights_1_fu_2536_d_weights2_ce0),.d_weights2_q0(delta_weights2_q0),.d_weights2_address1(grp_update_weights_1_fu_2536_d_weights2_address1),.d_weights2_ce1(grp_update_weights_1_fu_2536_d_weights2_ce1),.d_weights2_q1(delta_weights2_q1),.d_weights3_address0(grp_update_weights_1_fu_2536_d_weights3_address0),.d_weights3_ce0(grp_update_weights_1_fu_2536_d_weights3_ce0),.d_weights3_q0(delta_weights3_q0),.d_weights3_address1(grp_update_weights_1_fu_2536_d_weights3_address1),.d_weights3_ce1(grp_update_weights_1_fu_2536_d_weights3_ce1),.d_weights3_q1(delta_weights3_q1),.biases1_address0(grp_update_weights_1_fu_2536_biases1_address0),.biases1_ce0(grp_update_weights_1_fu_2536_biases1_ce0),.biases1_we0(grp_update_weights_1_fu_2536_biases1_we0),.biases1_d0(grp_update_weights_1_fu_2536_biases1_d0),.biases1_q0(biases1_q0),.biases1_address1(grp_update_weights_1_fu_2536_biases1_address1),.biases1_ce1(grp_update_weights_1_fu_2536_biases1_ce1),.biases1_we1(grp_update_weights_1_fu_2536_biases1_we1),.biases1_d1(grp_update_weights_1_fu_2536_biases1_d1),.biases1_q1(biases1_q1),.biases2_address0(grp_update_weights_1_fu_2536_biases2_address0),.biases2_ce0(grp_update_weights_1_fu_2536_biases2_ce0),.biases2_we0(grp_update_weights_1_fu_2536_biases2_we0),.biases2_d0(grp_update_weights_1_fu_2536_biases2_d0),.biases2_q0(biases2_q0),.biases2_address1(grp_update_weights_1_fu_2536_biases2_address1),.biases2_ce1(grp_update_weights_1_fu_2536_biases2_ce1),.biases2_we1(grp_update_weights_1_fu_2536_biases2_we1),.biases2_d1(grp_update_weights_1_fu_2536_biases2_d1),.biases2_q1(biases2_q1),.biases3_address0(grp_update_weights_1_fu_2536_biases3_address0),.biases3_ce0(grp_update_weights_1_fu_2536_biases3_ce0),.biases3_we0(grp_update_weights_1_fu_2536_biases3_we0),.biases3_d0(grp_update_weights_1_fu_2536_biases3_d0),.biases3_q0(biases3_q0),.biases3_address1(grp_update_weights_1_fu_2536_biases3_address1),.biases3_ce1(grp_update_weights_1_fu_2536_biases3_ce1),.biases3_q1(biases3_q1),.d_biases1_address0(grp_update_weights_1_fu_2536_d_biases1_address0),.d_biases1_ce0(grp_update_weights_1_fu_2536_d_biases1_ce0),.d_biases1_q0(oracle_activations1_q0),.d_biases1_address1(grp_update_weights_1_fu_2536_d_biases1_address1),.d_biases1_ce1(grp_update_weights_1_fu_2536_d_biases1_ce1),.d_biases1_q1(oracle_activations1_q1),.d_biases2_address0(grp_update_weights_1_fu_2536_d_biases2_address0),.d_biases2_ce0(grp_update_weights_1_fu_2536_d_biases2_ce0),.d_biases2_q0(oracle_activations2_q0),.d_biases2_address1(grp_update_weights_1_fu_2536_d_biases2_address1),.d_biases2_ce1(grp_update_weights_1_fu_2536_d_biases2_ce1),.d_biases2_q1(oracle_activations2_q1),.p_read(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_1_out),.p_read1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_2_out),.p_read2(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_out),.grp_fu_5404_p_din0(grp_update_weights_1_fu_2536_grp_fu_5404_p_din0),.grp_fu_5404_p_din1(grp_update_weights_1_fu_2536_grp_fu_5404_p_din1),.grp_fu_5404_p_opcode(grp_update_weights_1_fu_2536_grp_fu_5404_p_opcode),.grp_fu_5404_p_dout0(grp_fu_5404_p2),.grp_fu_5404_p_ce(grp_update_weights_1_fu_2536_grp_fu_5404_p_ce),.grp_fu_5408_p_din0(grp_update_weights_1_fu_2536_grp_fu_5408_p_din0),.grp_fu_5408_p_din1(grp_update_weights_1_fu_2536_grp_fu_5408_p_din1),.grp_fu_5408_p_opcode(grp_update_weights_1_fu_2536_grp_fu_5408_p_opcode),.grp_fu_5408_p_dout0(grp_fu_5408_p2),.grp_fu_5408_p_ce(grp_update_weights_1_fu_2536_grp_fu_5408_p_ce),.grp_fu_5412_p_din0(grp_update_weights_1_fu_2536_grp_fu_5412_p_din0),.grp_fu_5412_p_din1(grp_update_weights_1_fu_2536_grp_fu_5412_p_din1),.grp_fu_5412_p_dout0(grp_fu_5412_p2),.grp_fu_5412_p_ce(grp_update_weights_1_fu_2536_grp_fu_5412_p_ce),.grp_fu_5420_p_din0(grp_update_weights_1_fu_2536_grp_fu_5420_p_din0),.grp_fu_5420_p_din1(grp_update_weights_1_fu_2536_grp_fu_5420_p_din1),.grp_fu_5420_p_dout0(grp_fu_5420_p2),.grp_fu_5420_p_ce(grp_update_weights_1_fu_2536_grp_fu_5420_p_ce),.grp_fu_5416_p_din0(grp_update_weights_1_fu_2536_grp_fu_5416_p_din0),.grp_fu_5416_p_din1(grp_update_weights_1_fu_2536_grp_fu_5416_p_din1),.grp_fu_5416_p_dout0(grp_fu_5416_p2),.grp_fu_5416_p_ce(grp_update_weights_1_fu_2536_grp_fu_5416_p_ce),.grp_fu_5428_p_din0(grp_update_weights_1_fu_2536_grp_fu_5428_p_din0),.grp_fu_5428_p_din1(grp_update_weights_1_fu_2536_grp_fu_5428_p_din1),.grp_fu_5428_p_dout0(grp_fu_5428_p2),.grp_fu_5428_p_ce(grp_update_weights_1_fu_2536_grp_fu_5428_p_ce));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U432(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5404_p0),.din1(grp_fu_5404_p1),.opcode(grp_fu_5404_opcode),.ce(grp_fu_5404_ce),.dout(grp_fu_5404_p2));
backprop_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U433(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5408_p0),.din1(grp_fu_5408_p1),.ce(grp_fu_5408_ce),.dout(grp_fu_5408_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U434(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5412_p0),.din1(grp_fu_5412_p1),.ce(grp_fu_5412_ce),.dout(grp_fu_5412_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U435(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5416_p0),.din1(grp_fu_5416_p1),.ce(grp_fu_5416_ce),.dout(grp_fu_5416_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U436(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5420_p0),.din1(grp_fu_5420_p1),.ce(grp_fu_5420_ce),.dout(grp_fu_5420_p2));
backprop_dexp_64ns_64ns_64_21_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 21 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dexp_64ns_64ns_64_21_full_dsp_1_U437(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5424_p0),.din1(grp_fu_5424_p1),.ce(grp_fu_5424_ce),.dout(grp_fu_5424_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U438(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5428_p0),.din1(grp_fu_5428_p1),.ce(grp_fu_5428_ce),.dout(grp_fu_5428_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state130)) begin
            grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state132)) begin
            grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state118)) begin
            grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state76)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state114)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state38)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state74)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state112)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state36)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state72)) begin
            grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state110)) begin
            grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state120)) begin
            grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state116)) begin
            grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state124)) begin
            grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_activations2_loop_fu_2420_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state122)) begin
            grp_backprop_Pipeline_activations2_loop_fu_2420_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_activations2_loop_fu_2420_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_activations2_loop_fu_2420_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state122)) begin
            grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state34)) begin
            grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_fu_2536_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state134)) begin
            grp_update_weights_1_fu_2536_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_fu_2536_ap_ready == 1'b1)) begin
            grp_update_weights_1_fu_2536_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_2582_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_1_fu_366 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state115) & (grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_1_o_ap_vld == 1'b1))) begin
        activations3_1_fu_366 <= grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_1_o;
    end else if (((1'b1 == ap_CS_fsm_state113) & (grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_1_o_ap_vld == 1'b1))) begin
        activations3_1_fu_366 <= grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_1_o;
    end else if (((1'b1 == ap_CS_fsm_state111) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_3_out_ap_vld == 1'b1))) begin
        activations3_1_fu_366 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_2582_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_2_fu_370 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state115) & (grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_2_o_ap_vld == 1'b1))) begin
        activations3_2_fu_370 <= grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_2_o;
    end else if (((1'b1 == ap_CS_fsm_state113) & (grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_2_o_ap_vld == 1'b1))) begin
        activations3_2_fu_370 <= grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_2_o;
    end else if (((1'b1 == ap_CS_fsm_state111) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_5_out_ap_vld == 1'b1))) begin
        activations3_2_fu_370 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_2582_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_fu_362 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state115) & (grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_o_ap_vld == 1'b1))) begin
        activations3_fu_362 <= grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_activations3_o;
    end else if (((1'b1 == ap_CS_fsm_state113) & (grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_o_ap_vld == 1'b1))) begin
        activations3_fu_362 <= grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_activations3_o;
    end else if (((1'b1 == ap_CS_fsm_state111) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_4_out_ap_vld == 1'b1))) begin
        activations3_fu_362 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_activations3_4_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_250 <= 8'd0;
    end else if (((icmp_ln220_fu_2582_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_250 <= add_ln220_fu_2588_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_mul40_fu_246 <= 12'd0;
    end else if (((icmp_ln220_fu_2582_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_mul40_fu_246 <= add_ln220_1_fu_2576_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        activations1_load_10_reg_4405 <= activations1_q1;
        activations1_load_11_reg_4410 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        activations1_load_12_reg_4415 <= activations1_q1;
        activations1_load_13_reg_4420 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        activations1_load_14_reg_4425 <= activations1_q1;
        activations1_load_15_reg_4430 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        activations1_load_16_reg_4435 <= activations1_q1;
        activations1_load_17_reg_4440 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        activations1_load_18_reg_4445 <= activations1_q1;
        activations1_load_19_reg_4450 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        activations1_load_1_reg_4360 <= activations1_q0;
        activations1_load_reg_4355 <= activations1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        activations1_load_20_reg_4455 <= activations1_q1;
        activations1_load_21_reg_4460 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state52)) begin
        activations1_load_22_reg_4465 <= activations1_q1;
        activations1_load_23_reg_4470 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        activations1_load_24_reg_4475 <= activations1_q1;
        activations1_load_25_reg_4480 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        activations1_load_26_reg_4485 <= activations1_q1;
        activations1_load_27_reg_4490 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        activations1_load_28_reg_4495 <= activations1_q1;
        activations1_load_29_reg_4500 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state42)) begin
        activations1_load_2_reg_4365 <= activations1_q1;
        activations1_load_3_reg_4370 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        activations1_load_30_reg_4505 <= activations1_q1;
        activations1_load_31_reg_4510 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        activations1_load_32_reg_4515 <= activations1_q1;
        activations1_load_33_reg_4520 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        activations1_load_34_reg_4525 <= activations1_q1;
        activations1_load_35_reg_4530 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        activations1_load_36_reg_4535 <= activations1_q1;
        activations1_load_37_reg_4540 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        activations1_load_38_reg_4545 <= activations1_q1;
        activations1_load_39_reg_4550 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state61)) begin
        activations1_load_40_reg_4555 <= activations1_q1;
        activations1_load_41_reg_4560 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state62)) begin
        activations1_load_42_reg_4565 <= activations1_q1;
        activations1_load_43_reg_4570 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        activations1_load_44_reg_4575 <= activations1_q1;
        activations1_load_45_reg_4580 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state64)) begin
        activations1_load_46_reg_4585 <= activations1_q1;
        activations1_load_47_reg_4590 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        activations1_load_48_reg_4595 <= activations1_q1;
        activations1_load_49_reg_4600 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        activations1_load_4_reg_4375 <= activations1_q1;
        activations1_load_5_reg_4380 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        activations1_load_50_reg_4605 <= activations1_q1;
        activations1_load_51_reg_4610 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state67)) begin
        activations1_load_52_reg_4615 <= activations1_q1;
        activations1_load_53_reg_4620 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        activations1_load_54_reg_4625 <= activations1_q1;
        activations1_load_55_reg_4630 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state69)) begin
        activations1_load_56_reg_4635 <= activations1_q1;
        activations1_load_57_reg_4640 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state70)) begin
        activations1_load_58_reg_4645 <= activations1_q1;
        activations1_load_59_reg_4650 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state71)) begin
        activations1_load_60_reg_4655 <= activations1_q1;
        activations1_load_61_reg_4660 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state72)) begin
        activations1_load_62_reg_4665 <= activations1_q1;
        activations1_load_63_reg_4670 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        activations1_load_6_reg_4385 <= activations1_q1;
        activations1_load_7_reg_4390 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        activations1_load_8_reg_4395 <= activations1_q1;
        activations1_load_9_reg_4400 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state84)) begin
        activations2_load_10_reg_4725 <= activations2_q1;
        activations2_load_11_reg_4730 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state85)) begin
        activations2_load_12_reg_4735 <= activations2_q1;
        activations2_load_13_reg_4740 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state86)) begin
        activations2_load_14_reg_4745 <= activations2_q1;
        activations2_load_15_reg_4750 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state87)) begin
        activations2_load_16_reg_4755 <= activations2_q1;
        activations2_load_17_reg_4760 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state88)) begin
        activations2_load_18_reg_4765 <= activations2_q1;
        activations2_load_19_reg_4770 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state79)) begin
        activations2_load_1_reg_4680 <= activations2_q0;
        activations2_load_reg_4675 <= activations2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state89)) begin
        activations2_load_20_reg_4775 <= activations2_q1;
        activations2_load_21_reg_4780 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state90)) begin
        activations2_load_22_reg_4785 <= activations2_q1;
        activations2_load_23_reg_4790 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state91)) begin
        activations2_load_24_reg_4795 <= activations2_q1;
        activations2_load_25_reg_4800 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state92)) begin
        activations2_load_26_reg_4805 <= activations2_q1;
        activations2_load_27_reg_4810 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state93)) begin
        activations2_load_28_reg_4815 <= activations2_q1;
        activations2_load_29_reg_4820 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state80)) begin
        activations2_load_2_reg_4685 <= activations2_q1;
        activations2_load_3_reg_4690 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state94)) begin
        activations2_load_30_reg_4825 <= activations2_q1;
        activations2_load_31_reg_4830 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state95)) begin
        activations2_load_32_reg_4835 <= activations2_q1;
        activations2_load_33_reg_4840 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state96)) begin
        activations2_load_34_reg_4845 <= activations2_q1;
        activations2_load_35_reg_4850 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state97)) begin
        activations2_load_36_reg_4855 <= activations2_q1;
        activations2_load_37_reg_4860 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state98)) begin
        activations2_load_38_reg_4865 <= activations2_q1;
        activations2_load_39_reg_4870 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state99)) begin
        activations2_load_40_reg_4875 <= activations2_q1;
        activations2_load_41_reg_4880 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state100)) begin
        activations2_load_42_reg_4885 <= activations2_q1;
        activations2_load_43_reg_4890 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state101)) begin
        activations2_load_44_reg_4895 <= activations2_q1;
        activations2_load_45_reg_4900 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state102)) begin
        activations2_load_46_reg_4905 <= activations2_q1;
        activations2_load_47_reg_4910 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state103)) begin
        activations2_load_48_reg_4915 <= activations2_q1;
        activations2_load_49_reg_4920 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state81)) begin
        activations2_load_4_reg_4695 <= activations2_q1;
        activations2_load_5_reg_4700 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state104)) begin
        activations2_load_50_reg_4925 <= activations2_q1;
        activations2_load_51_reg_4930 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state105)) begin
        activations2_load_52_reg_4935 <= activations2_q1;
        activations2_load_53_reg_4940 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state106)) begin
        activations2_load_54_reg_4945 <= activations2_q1;
        activations2_load_55_reg_4950 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state107)) begin
        activations2_load_56_reg_4955 <= activations2_q1;
        activations2_load_57_reg_4960 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state108)) begin
        activations2_load_58_reg_4965 <= activations2_q1;
        activations2_load_59_reg_4970 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state109)) begin
        activations2_load_60_reg_4975 <= activations2_q1;
        activations2_load_61_reg_4980 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state110)) begin
        activations2_load_62_reg_4985 <= activations2_q1;
        activations2_load_63_reg_4990 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state82)) begin
        activations2_load_6_reg_4705 <= activations2_q1;
        activations2_load_7_reg_4710 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state83)) begin
        activations2_load_8_reg_4715 <= activations2_q1;
        activations2_load_9_reg_4720 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        empty_54_reg_4295 <= empty_54_fu_2747_p1;
        empty_55_reg_4300 <= empty_55_fu_2751_p1;
        empty_56_reg_4305 <= empty_56_fu_2755_p1;
        empty_57_reg_4310 <= empty_57_fu_2759_p1;
        empty_58_reg_4315 <= empty_58_fu_2763_p1;
        empty_59_reg_4320 <= empty_59_fu_2767_p1;
        empty_60_reg_4325 <= empty_60_fu_2771_p1;
        empty_61_reg_4330 <= empty_61_fu_2775_p1;
        empty_62_reg_4335 <= empty_62_fu_2779_p1;
        empty_63_reg_4340 <= empty_63_fu_2783_p1;
        empty_64_reg_4345 <= empty_64_fu_2787_p1;
        empty_65_reg_4350 <= empty_65_fu_2792_p1;
        empty_reg_4290 <= empty_fu_2743_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_17_reg_4161 <= i_fu_250;
        phi_mul40_load_reg_4143 <= phi_mul40_fu_246;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state120)) begin
        mux_case_02539_fu_254 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_02537_out;
        mux_case_02851_fu_266 <= grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_02849_out;
        mux_case_12643_fu_258 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_12641_out;
        mux_case_12955_fu_270 <= grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_12953_out;
        mux_case_22747_fu_262 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_mux_case_22745_out;
        mux_case_23059_fu_274 <= grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_mux_case_23057_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        mux_case_03164_fu_278 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_03162_out;
        mux_case_13269_fu_282 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_13267_out;
        mux_case_23374_fu_286 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_mux_case_23372_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_load_10_reg_5125 <= oracle_activations2_q2;
        oracle_activations2_load_11_reg_5130 <= oracle_activations2_q1;
        oracle_activations2_load_12_reg_5135 <= oracle_activations2_q0;
        oracle_activations2_load_1_reg_5080 <= oracle_activations2_q11;
        oracle_activations2_load_2_reg_5085 <= oracle_activations2_q10;
        oracle_activations2_load_3_reg_5090 <= oracle_activations2_q9;
        oracle_activations2_load_4_reg_5095 <= oracle_activations2_q8;
        oracle_activations2_load_5_reg_5100 <= oracle_activations2_q7;
        oracle_activations2_load_6_reg_5105 <= oracle_activations2_q6;
        oracle_activations2_load_7_reg_5110 <= oracle_activations2_q5;
        oracle_activations2_load_8_reg_5115 <= oracle_activations2_q4;
        oracle_activations2_load_9_reg_5120 <= oracle_activations2_q3;
        oracle_activations2_load_reg_5075 <= oracle_activations2_q12;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_load_13_reg_5140 <= oracle_activations2_q16;
        oracle_activations2_load_14_reg_5145 <= oracle_activations2_q15;
        oracle_activations2_load_15_reg_5150 <= oracle_activations2_q14;
        oracle_activations2_load_16_reg_5155 <= oracle_activations2_q13;
        oracle_activations2_load_17_reg_5160 <= oracle_activations2_q12;
        oracle_activations2_load_18_reg_5165 <= oracle_activations2_q11;
        oracle_activations2_load_19_reg_5170 <= oracle_activations2_q10;
        oracle_activations2_load_20_reg_5175 <= oracle_activations2_q9;
        oracle_activations2_load_21_reg_5180 <= oracle_activations2_q8;
        oracle_activations2_load_22_reg_5185 <= oracle_activations2_q7;
        oracle_activations2_load_23_reg_5190 <= oracle_activations2_q6;
        oracle_activations2_load_24_reg_5195 <= oracle_activations2_q5;
        oracle_activations2_load_25_reg_5200 <= oracle_activations2_q4;
        oracle_activations2_load_26_reg_5205 <= oracle_activations2_q3;
        oracle_activations2_load_27_reg_5210 <= oracle_activations2_q2;
        oracle_activations2_load_28_reg_5215 <= oracle_activations2_q1;
        oracle_activations2_load_29_reg_5220 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_load_30_reg_5225 <= oracle_activations2_q1;
        oracle_activations2_load_31_reg_5230 <= oracle_activations2_q2;
        oracle_activations2_load_32_reg_5235 <= oracle_activations2_q3;
        oracle_activations2_load_33_reg_5240 <= oracle_activations2_q4;
        oracle_activations2_load_34_reg_5245 <= oracle_activations2_q5;
        oracle_activations2_load_35_reg_5250 <= oracle_activations2_q6;
        oracle_activations2_load_36_reg_5255 <= oracle_activations2_q7;
        oracle_activations2_load_37_reg_5260 <= oracle_activations2_q0;
        oracle_activations2_load_38_reg_5265 <= oracle_activations2_q9;
        oracle_activations2_load_39_reg_5270 <= oracle_activations2_q10;
        oracle_activations2_load_40_reg_5275 <= oracle_activations2_q11;
        oracle_activations2_load_41_reg_5280 <= oracle_activations2_q12;
        oracle_activations2_load_42_reg_5285 <= oracle_activations2_q8;
        oracle_activations2_load_43_reg_5290 <= oracle_activations2_q13;
        oracle_activations2_load_44_reg_5295 <= oracle_activations2_q14;
        oracle_activations2_load_45_reg_5300 <= oracle_activations2_q15;
        oracle_activations2_load_46_reg_5305 <= oracle_activations2_q16;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state130)) begin
        oracle_activations2_load_47_reg_5310 <= oracle_activations2_q1;
        oracle_activations2_load_48_reg_5315 <= oracle_activations2_q2;
        oracle_activations2_load_49_reg_5320 <= oracle_activations2_q3;
        oracle_activations2_load_50_reg_5325 <= oracle_activations2_q4;
        oracle_activations2_load_51_reg_5330 <= oracle_activations2_q5;
        oracle_activations2_load_52_reg_5335 <= oracle_activations2_q6;
        oracle_activations2_load_53_reg_5340 <= oracle_activations2_q7;
        oracle_activations2_load_54_reg_5345 <= oracle_activations2_q0;
        oracle_activations2_load_55_reg_5350 <= oracle_activations2_q9;
        oracle_activations2_load_56_reg_5355 <= oracle_activations2_q10;
        oracle_activations2_load_57_reg_5360 <= oracle_activations2_q11;
        oracle_activations2_load_58_reg_5365 <= oracle_activations2_q12;
        oracle_activations2_load_59_reg_5370 <= oracle_activations2_q8;
        oracle_activations2_load_60_reg_5375 <= oracle_activations2_q13;
        oracle_activations2_load_61_reg_5380 <= oracle_activations2_q14;
        oracle_activations2_load_62_reg_5385 <= oracle_activations2_q15;
        oracle_activations2_load_63_reg_5390 <= oracle_activations2_q16;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state134)) begin
        output_difference_0_promoted_fu_294 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_1_out;
        output_difference_1_promoted_fu_290 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_2_out;
        output_difference_2_promoted_fu_298 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_output_difference_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state119)) begin
        sub_ln66_reg_5025 <= sub_ln66_fu_2851_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        training_data_load_10_reg_4275 <= training_data_q1;
        training_data_load_9_reg_4270 <= training_data_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        training_data_load_1_reg_4190 <= training_data_q1;
        training_data_load_2_reg_4195 <= training_data_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        training_data_load_3_reg_4210 <= training_data_q0;
        training_data_load_4_reg_4215 <= training_data_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        training_data_load_5_reg_4230 <= training_data_q0;
        training_data_load_6_reg_4235 <= training_data_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        training_data_load_7_reg_4250 <= training_data_q0;
        training_data_load_8_reg_4255 <= training_data_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        training_data_load_reg_4175 <= training_data_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state125)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_address0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_activations1_address0;
    end else begin
        activations1_address0 = activations1_address0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state33))) begin
        activations1_address0_local = 64'd63;
    end else if (((1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state32))) begin
        activations1_address0_local = 64'd61;
    end else if (((1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state31))) begin
        activations1_address0_local = 64'd59;
    end else if (((1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state30))) begin
        activations1_address0_local = 64'd57;
    end else if (((1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state29))) begin
        activations1_address0_local = 64'd55;
    end else if (((1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state28))) begin
        activations1_address0_local = 64'd53;
    end else if (((1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state27))) begin
        activations1_address0_local = 64'd51;
    end else if (((1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state26))) begin
        activations1_address0_local = 64'd49;
    end else if (((1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state25))) begin
        activations1_address0_local = 64'd47;
    end else if (((1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state24))) begin
        activations1_address0_local = 64'd45;
    end else if (((1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state23))) begin
        activations1_address0_local = 64'd43;
    end else if (((1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state22))) begin
        activations1_address0_local = 64'd41;
    end else if (((1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state21))) begin
        activations1_address0_local = 64'd39;
    end else if (((1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state20))) begin
        activations1_address0_local = 64'd37;
    end else if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state19))) begin
        activations1_address0_local = 64'd35;
    end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state18))) begin
        activations1_address0_local = 64'd33;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state17))) begin
        activations1_address0_local = 64'd31;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state16))) begin
        activations1_address0_local = 64'd29;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state15))) begin
        activations1_address0_local = 64'd27;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state14))) begin
        activations1_address0_local = 64'd25;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state13))) begin
        activations1_address0_local = 64'd23;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state12))) begin
        activations1_address0_local = 64'd21;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state11))) begin
        activations1_address0_local = 64'd19;
    end else if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state10))) begin
        activations1_address0_local = 64'd17;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state9))) begin
        activations1_address0_local = 64'd15;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state8))) begin
        activations1_address0_local = 64'd13;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state7))) begin
        activations1_address0_local = 64'd11;
    end else if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state6))) begin
        activations1_address0_local = 64'd9;
    end else if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state5))) begin
        activations1_address0_local = 64'd7;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state4))) begin
        activations1_address0_local = 64'd5;
    end else if (((1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state3))) begin
        activations1_address0_local = 64'd3;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state40))) begin
        activations1_address0_local = 64'd1;
    end else begin
        activations1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_address1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_address1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_address1;
    end else begin
        activations1_address1 = activations1_address1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state33))) begin
        activations1_address1_local = 64'd62;
    end else if (((1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state32))) begin
        activations1_address1_local = 64'd60;
    end else if (((1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state31))) begin
        activations1_address1_local = 64'd58;
    end else if (((1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state30))) begin
        activations1_address1_local = 64'd56;
    end else if (((1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state29))) begin
        activations1_address1_local = 64'd54;
    end else if (((1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state28))) begin
        activations1_address1_local = 64'd52;
    end else if (((1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state27))) begin
        activations1_address1_local = 64'd50;
    end else if (((1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state26))) begin
        activations1_address1_local = 64'd48;
    end else if (((1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state25))) begin
        activations1_address1_local = 64'd46;
    end else if (((1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state24))) begin
        activations1_address1_local = 64'd44;
    end else if (((1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state23))) begin
        activations1_address1_local = 64'd42;
    end else if (((1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state22))) begin
        activations1_address1_local = 64'd40;
    end else if (((1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state21))) begin
        activations1_address1_local = 64'd38;
    end else if (((1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state20))) begin
        activations1_address1_local = 64'd36;
    end else if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state19))) begin
        activations1_address1_local = 64'd34;
    end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state18))) begin
        activations1_address1_local = 64'd32;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state17))) begin
        activations1_address1_local = 64'd30;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state16))) begin
        activations1_address1_local = 64'd28;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state15))) begin
        activations1_address1_local = 64'd26;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state14))) begin
        activations1_address1_local = 64'd24;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state13))) begin
        activations1_address1_local = 64'd22;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state12))) begin
        activations1_address1_local = 64'd20;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state11))) begin
        activations1_address1_local = 64'd18;
    end else if (((1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state10))) begin
        activations1_address1_local = 64'd16;
    end else if (((1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state9))) begin
        activations1_address1_local = 64'd14;
    end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state8))) begin
        activations1_address1_local = 64'd12;
    end else if (((1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state7))) begin
        activations1_address1_local = 64'd10;
    end else if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state6))) begin
        activations1_address1_local = 64'd8;
    end else if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state5))) begin
        activations1_address1_local = 64'd6;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state4))) begin
        activations1_address1_local = 64'd4;
    end else if (((1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state3))) begin
        activations1_address1_local = 64'd2;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state40))) begin
        activations1_address1_local = 64'd0;
    end else begin
        activations1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state125)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_ce0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_activations1_ce0;
    end else begin
        activations1_ce0 = activations1_ce0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1== ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations1_ce0_local = 1'b1;
    end else begin
        activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_ce1;
    end else begin
        activations1_ce1 = activations1_ce1_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1== ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        activations1_ce1_local = 1'b1;
    end else begin
        activations1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_d0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_d0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_d0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_d0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_activations1_d0;
    end else begin
        activations1_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_activations1_we0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_activations1_we0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_we0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_activations1_we0;
    end else begin
        activations1_we0 = activations1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_2582_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_we0_local = 1'b1;
    end else begin
        activations1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_2582_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_we1_local = 1'b1;
    end else begin
        activations1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        activations2_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_activations2_address0;
    end else begin
        activations2_address0 = activations2_address0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state109))) begin
        activations2_address0_local = 64'd63;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state108))) begin
        activations2_address0_local = 64'd61;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state107))) begin
        activations2_address0_local = 64'd59;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state106))) begin
        activations2_address0_local = 64'd57;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state105))) begin
        activations2_address0_local = 64'd55;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state104))) begin
        activations2_address0_local = 64'd53;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state103))) begin
        activations2_address0_local = 64'd51;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state102))) begin
        activations2_address0_local = 64'd49;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state101))) begin
        activations2_address0_local = 64'd47;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state100))) begin
        activations2_address0_local = 64'd45;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state99))) begin
        activations2_address0_local = 64'd43;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state98))) begin
        activations2_address0_local = 64'd41;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state97))) begin
        activations2_address0_local = 64'd39;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state96))) begin
        activations2_address0_local = 64'd37;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state95))) begin
        activations2_address0_local = 64'd35;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state94))) begin
        activations2_address0_local = 64'd33;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state93))) begin
        activations2_address0_local = 64'd31;
    end else if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state92))) begin
        activations2_address0_local = 64'd29;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state91))) begin
        activations2_address0_local = 64'd27;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state90))) begin
        activations2_address0_local = 64'd25;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state89))) begin
        activations2_address0_local = 64'd23;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state88))) begin
        activations2_address0_local = 64'd21;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state87))) begin
        activations2_address0_local = 64'd19;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state86))) begin
        activations2_address0_local = 64'd17;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state85))) begin
        activations2_address0_local = 64'd15;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state84))) begin
        activations2_address0_local = 64'd13;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state83))) begin
        activations2_address0_local = 64'd11;
    end else if (((1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state6))) begin
        activations2_address0_local = 64'd9;
    end else if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state5))) begin
        activations2_address0_local = 64'd7;
    end else if (((1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state4))) begin
        activations2_address0_local = 64'd5;
    end else if (((1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state3))) begin
        activations2_address0_local = 64'd3;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state78))) begin
        activations2_address0_local = 64'd1;
    end else begin
        activations2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state77)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_address1;
    end else begin
        activations2_address1 = activations2_address1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state109))) begin
        activations2_address1_local = 64'd62;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state108))) begin
        activations2_address1_local = 64'd60;
    end else if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state107))) begin
        activations2_address1_local = 64'd58;
    end else if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state106))) begin
        activations2_address1_local = 64'd56;
    end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state105))) begin
        activations2_address1_local = 64'd54;
    end else if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state104))) begin
        activations2_address1_local = 64'd52;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state103))) begin
        activations2_address1_local = 64'd50;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state102))) begin
        activations2_address1_local = 64'd48;
    end else if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state101))) begin
        activations2_address1_local = 64'd46;
    end else if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state100))) begin
        activations2_address1_local = 64'd44;
    end else if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state99))) begin
        activations2_address1_local = 64'd42;
    end else if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state98))) begin
        activations2_address1_local = 64'd40;
    end else if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state97))) begin
        activations2_address1_local = 64'd38;
    end else if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state96))) begin
        activations2_address1_local = 64'd36;
    end else if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state95))) begin
        activations2_address1_local = 64'd34;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state94))) begin
        activations2_address1_local = 64'd32;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state93))) begin
        activations2_address1_local = 64'd30;
    end else if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state92))) begin
        activations2_address1_local = 64'd28;
    end else if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state91))) begin
        activations2_address1_local = 64'd26;
    end else if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state90))) begin
        activations2_address1_local = 64'd24;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state89))) begin
        activations2_address1_local = 64'd22;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state88))) begin
        activations2_address1_local = 64'd20;
    end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state87))) begin
        activations2_address1_local = 64'd18;
    end else if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state86))) begin
        activations2_address1_local = 64'd16;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state85))) begin
        activations2_address1_local = 64'd14;
    end else if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state84))) begin
        activations2_address1_local = 64'd12;
    end else if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state83))) begin
        activations2_address1_local = 64'd10;
    end else if (((1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state6))) begin
        activations2_address1_local = 64'd8;
    end else if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state5))) begin
        activations2_address1_local = 64'd6;
    end else if (((1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state4))) begin
        activations2_address1_local = 64'd4;
    end else if (((1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state3))) begin
        activations2_address1_local = 64'd2;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state78))) begin
        activations2_address1_local = 64'd0;
    end else begin
        activations2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        activations2_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_activations2_ce0;
    end else begin
        activations2_ce0 = activations2_ce0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 ==ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state77)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_ce1;
    end else begin
        activations2_ce1 = activations2_ce1_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 ==ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83))) begin
        activations2_ce1_local = 1'b1;
    end else begin
        activations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state77)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_d0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_d0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_activations2_d0;
    end else begin
        activations2_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state77)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_activations2_we0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_activations2_we0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_activations2_we0;
    end else begin
        activations2_we0 = activations2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_2582_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations2_we0_local = 1'b1;
    end else begin
        activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_2582_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations2_we1_local = 1'b1;
    end else begin
        activations2_we1_local = 1'b0;
    end
end
assign ap_ST_fsm_state100_blk = 1'b0;
assign ap_ST_fsm_state101_blk = 1'b0;
assign ap_ST_fsm_state102_blk = 1'b0;
assign ap_ST_fsm_state103_blk = 1'b0;
assign ap_ST_fsm_state104_blk = 1'b0;
assign ap_ST_fsm_state105_blk = 1'b0;
assign ap_ST_fsm_state106_blk = 1'b0;
assign ap_ST_fsm_state107_blk = 1'b0;
assign ap_ST_fsm_state108_blk = 1'b0;
assign ap_ST_fsm_state109_blk = 1'b0;
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state110_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_done == 1'b0)) begin
        ap_ST_fsm_state111_blk = 1'b1;
    end else begin
        ap_ST_fsm_state111_blk = 1'b0;
    end
end
assign ap_ST_fsm_state112_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_done == 1'b0)) begin
        ap_ST_fsm_state113_blk = 1'b1;
    end else begin
        ap_ST_fsm_state113_blk = 1'b0;
    end
end
assign ap_ST_fsm_state114_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_done == 1'b0)) begin
        ap_ST_fsm_state115_blk = 1'b1;
    end else begin
        ap_ST_fsm_state115_blk = 1'b0;
    end
end
assign ap_ST_fsm_state116_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_done == 1'b0)) begin
        ap_ST_fsm_state117_blk = 1'b1;
    end else begin
        ap_ST_fsm_state117_blk = 1'b0;
    end
end
assign ap_ST_fsm_state118_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_done == 1'b0)) begin
        ap_ST_fsm_state119_blk = 1'b1;
    end else begin
        ap_ST_fsm_state119_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state120_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_done == 1'b0)) begin
        ap_ST_fsm_state121_blk = 1'b1;
    end else begin
        ap_ST_fsm_state121_blk = 1'b0;
    end
end
assign ap_ST_fsm_state122_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state123_on_subcall_done)) begin
        ap_ST_fsm_state123_blk = 1'b1;
    end else begin
        ap_ST_fsm_state123_blk = 1'b0;
    end
end
assign ap_ST_fsm_state124_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_done == 1'b0)) begin
        ap_ST_fsm_state125_blk = 1'b1;
    end else begin
        ap_ST_fsm_state125_blk = 1'b0;
    end
end
assign ap_ST_fsm_state126_blk = 1'b0;
assign ap_ST_fsm_state127_blk = 1'b0;
assign ap_ST_fsm_state128_blk = 1'b0;
assign ap_ST_fsm_state129_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state130_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_done == 1'b0)) begin
        ap_ST_fsm_state131_blk = 1'b1;
    end else begin
        ap_ST_fsm_state131_blk = 1'b0;
    end
end
assign ap_ST_fsm_state132_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_done == 1'b0)) begin
        ap_ST_fsm_state133_blk = 1'b1;
    end else begin
        ap_ST_fsm_state133_blk = 1'b0;
    end
end
assign ap_ST_fsm_state134_blk = 1'b0;
always @ (*) begin
    if ((grp_update_weights_1_fu_2536_ap_done == 1'b0)) begin
        ap_ST_fsm_state135_blk = 1'b1;
    end else begin
        ap_ST_fsm_state135_blk = 1'b0;
    end
end
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
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_done == 1'b0)) begin
        ap_ST_fsm_state35_blk = 1'b1;
    end else begin
        ap_ST_fsm_state35_blk = 1'b0;
    end
end
assign ap_ST_fsm_state36_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_done == 1'b0)) begin
        ap_ST_fsm_state37_blk = 1'b1;
    end else begin
        ap_ST_fsm_state37_blk = 1'b0;
    end
end
assign ap_ST_fsm_state38_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_done == 1'b0)) begin
        ap_ST_fsm_state39_blk = 1'b1;
    end else begin
        ap_ST_fsm_state39_blk = 1'b0;
    end
end
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
assign ap_ST_fsm_state60_blk = 1'b0;
assign ap_ST_fsm_state61_blk = 1'b0;
assign ap_ST_fsm_state62_blk = 1'b0;
assign ap_ST_fsm_state63_blk = 1'b0;
assign ap_ST_fsm_state64_blk = 1'b0;
assign ap_ST_fsm_state65_blk = 1'b0;
assign ap_ST_fsm_state66_blk = 1'b0;
assign ap_ST_fsm_state67_blk = 1'b0;
assign ap_ST_fsm_state68_blk = 1'b0;
assign ap_ST_fsm_state69_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state70_blk = 1'b0;
assign ap_ST_fsm_state71_blk = 1'b0;
assign ap_ST_fsm_state72_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_done == 1'b0)) begin
        ap_ST_fsm_state73_blk = 1'b1;
    end else begin
        ap_ST_fsm_state73_blk = 1'b0;
    end
end
assign ap_ST_fsm_state74_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_done == 1'b0)) begin
        ap_ST_fsm_state75_blk = 1'b1;
    end else begin
        ap_ST_fsm_state75_blk = 1'b0;
    end
end
assign ap_ST_fsm_state76_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_done == 1'b0)) begin
        ap_ST_fsm_state77_blk = 1'b1;
    end else begin
        ap_ST_fsm_state77_blk = 1'b0;
    end
end
assign ap_ST_fsm_state78_blk = 1'b0;
assign ap_ST_fsm_state79_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state80_blk = 1'b0;
assign ap_ST_fsm_state81_blk = 1'b0;
assign ap_ST_fsm_state82_blk = 1'b0;
assign ap_ST_fsm_state83_blk = 1'b0;
assign ap_ST_fsm_state84_blk = 1'b0;
assign ap_ST_fsm_state85_blk = 1'b0;
assign ap_ST_fsm_state86_blk = 1'b0;
assign ap_ST_fsm_state87_blk = 1'b0;
assign ap_ST_fsm_state88_blk = 1'b0;
assign ap_ST_fsm_state89_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state90_blk = 1'b0;
assign ap_ST_fsm_state91_blk = 1'b0;
assign ap_ST_fsm_state92_blk = 1'b0;
assign ap_ST_fsm_state93_blk = 1'b0;
assign ap_ST_fsm_state94_blk = 1'b0;
assign ap_ST_fsm_state95_blk = 1'b0;
assign ap_ST_fsm_state96_blk = 1'b0;
assign ap_ST_fsm_state97_blk = 1'b0;
assign ap_ST_fsm_state98_blk = 1'b0;
assign ap_ST_fsm_state99_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln220_fu_2582_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln220_fu_2582_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases1_address0 = grp_update_weights_1_fu_2536_biases1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        biases1_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_biases1_address0;
    end else begin
        biases1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases1_ce0 = grp_update_weights_1_fu_2536_biases1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        biases1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_biases1_ce0;
    end else begin
        biases1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases1_ce1 = grp_update_weights_1_fu_2536_biases1_ce1;
    end else begin
        biases1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases1_we0 = grp_update_weights_1_fu_2536_biases1_we0;
    end else begin
        biases1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases1_we1 = grp_update_weights_1_fu_2536_biases1_we1;
    end else begin
        biases1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases2_address0 = grp_update_weights_1_fu_2536_biases2_address0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        biases2_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_biases2_address0;
    end else begin
        biases2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases2_ce0 = grp_update_weights_1_fu_2536_biases2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        biases2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_biases2_ce0;
    end else begin
        biases2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases2_ce1 = grp_update_weights_1_fu_2536_biases2_ce1;
    end else begin
        biases2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases2_we0 = grp_update_weights_1_fu_2536_biases2_we0;
    end else begin
        biases2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases2_we1 = grp_update_weights_1_fu_2536_biases2_we1;
    end else begin
        biases2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases3_address0 = grp_update_weights_1_fu_2536_biases3_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        biases3_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_biases3_address0;
    end else begin
        biases3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases3_ce0 = grp_update_weights_1_fu_2536_biases3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        biases3_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_biases3_ce0;
    end else begin
        biases3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases3_ce1 = grp_update_weights_1_fu_2536_biases3_ce1;
    end else begin
        biases3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        biases3_we0 = grp_update_weights_1_fu_2536_biases3_we0;
    end else begin
        biases3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state131)) begin
        dactivations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_dactivations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_dactivations1_address0;
    end else begin
        dactivations1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state131)) begin
        dactivations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_dactivations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_dactivations1_ce0;
    end else begin
        dactivations1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_dactivations1_we0;
    end else begin
        dactivations1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        dactivations2_address0 = grp_backprop_Pipeline_activations2_loop_fu_2420_dactivations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        dactivations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_dactivations2_address0;
    end else begin
        dactivations2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        dactivations2_ce0 = grp_backprop_Pipeline_activations2_loop_fu_2420_dactivations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        dactivations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_dactivations2_ce0;
    end else begin
        dactivations2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state77)) begin
        dactivations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_dactivations2_we0;
    end else begin
        dactivations2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        delta_weights1_address0 = grp_update_weights_1_fu_2536_d_weights1_address0;
    end else if ((1'b1 == ap_CS_fsm_state133)) begin
        delta_weights1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_delta_weights1_address0;
    end else begin
        delta_weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        delta_weights1_ce0 = grp_update_weights_1_fu_2536_d_weights1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state133)) begin
        delta_weights1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_delta_weights1_ce0;
    end else begin
        delta_weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        delta_weights1_ce1 = grp_update_weights_1_fu_2536_d_weights1_ce1;
    end else begin
        delta_weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state133)) begin
        delta_weights1_we0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_delta_weights1_we0;
    end else begin
        delta_weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        delta_weights2_address0 = grp_update_weights_1_fu_2536_d_weights2_address0;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        delta_weights2_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_delta_weights2_address0;
    end else begin
        delta_weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        delta_weights2_ce0 = grp_update_weights_1_fu_2536_d_weights2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        delta_weights2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_delta_weights2_ce0;
    end else begin
        delta_weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        delta_weights2_ce1 = grp_update_weights_1_fu_2536_d_weights2_ce1;
    end else begin
        delta_weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state125)) begin
        delta_weights2_we0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_delta_weights2_we0;
    end else begin
        delta_weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        delta_weights3_address0 = grp_update_weights_1_fu_2536_d_weights3_address0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        delta_weights3_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_delta_weights3_address0;
    end else begin
        delta_weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        delta_weights3_ce0 = grp_update_weights_1_fu_2536_d_weights3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        delta_weights3_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_delta_weights3_ce0;
    end else begin
        delta_weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        delta_weights3_ce1 = grp_update_weights_1_fu_2536_d_weights3_ce1;
    end else begin
        delta_weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        delta_weights3_we0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_delta_weights3_we0;
    end else begin
        delta_weights3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5404_ce = grp_update_weights_1_fu_2536_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_grp_fu_5404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5404_ce = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5404_p_ce;
    end else begin
        grp_fu_5404_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5404_opcode = grp_update_weights_1_fu_2536_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_grp_fu_5404_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5404_opcode = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5404_p_opcode;
    end else begin
        grp_fu_5404_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5404_p0 = grp_update_weights_1_fu_2536_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_grp_fu_5404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5404_p0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5404_p_din0;
    end else begin
        grp_fu_5404_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5404_p1 = grp_update_weights_1_fu_2536_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_grp_fu_5404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5404_p1 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5404_p_din1;
    end else begin
        grp_fu_5404_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5408_ce = grp_update_weights_1_fu_2536_grp_fu_5408_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5408_ce = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5408_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5408_ce = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5408_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5408_ce = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5408_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5408_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5408_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5408_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5408_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5408_ce = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5408_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5408_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5408_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5408_ce = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5408_p_ce;
    end else begin
        grp_fu_5408_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5408_p0 = grp_update_weights_1_fu_2536_grp_fu_5408_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5408_p0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5408_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5408_p0 = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5408_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5408_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5408_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5408_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5408_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5408_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5408_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5408_p0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5408_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5408_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5408_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5408_p0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5408_p_din0;
    end else begin
        grp_fu_5408_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5408_p1 = grp_update_weights_1_fu_2536_grp_fu_5408_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5408_p1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5408_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5408_p1 = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5408_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5408_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5408_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5408_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5408_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5408_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5408_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5408_p1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5408_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5408_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5408_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5408_p1 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5408_p_din1;
    end else begin
        grp_fu_5408_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5412_ce = grp_update_weights_1_fu_2536_grp_fu_5412_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state133)) begin
        grp_fu_5412_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_grp_fu_5412_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5412_ce = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5412_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        grp_fu_5412_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_grp_fu_5412_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5412_ce = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5412_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5412_ce = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5412_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5412_ce = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5412_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5412_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5412_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5412_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5412_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5412_ce = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5412_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5412_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5412_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5412_ce = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5412_p_ce;
    end else begin
        grp_fu_5412_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5412_p0 = grp_update_weights_1_fu_2536_grp_fu_5412_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state133)) begin
        grp_fu_5412_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_grp_fu_5412_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5412_p0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5412_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        grp_fu_5412_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_grp_fu_5412_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5412_p0 = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5412_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5412_p0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5412_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5412_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5412_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5412_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5412_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5412_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5412_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5412_p0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5412_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5412_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5412_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5412_p0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5412_p_din0;
    end else begin
        grp_fu_5412_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5412_p1 = grp_update_weights_1_fu_2536_grp_fu_5412_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state133)) begin
        grp_fu_5412_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_grp_fu_5412_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5412_p1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5412_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        grp_fu_5412_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_grp_fu_5412_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5412_p1 = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5412_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5412_p1 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_grp_fu_5412_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5412_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5412_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5412_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5412_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5412_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5412_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5412_p1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5412_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5412_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5412_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5412_p1 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5412_p_din1;
    end else begin
        grp_fu_5412_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5416_ce = grp_update_weights_1_fu_2536_grp_fu_5416_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5416_ce = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5416_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5416_ce = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5416_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5416_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5416_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5416_ce = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5416_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5416_ce = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5416_p_ce;
    end else begin
        grp_fu_5416_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5416_p0 = grp_update_weights_1_fu_2536_grp_fu_5416_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5416_p0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5416_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5416_p0 = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5416_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5416_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5416_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5416_p0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5416_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5416_p0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5416_p_din0;
    end else begin
        grp_fu_5416_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5416_p1 = grp_update_weights_1_fu_2536_grp_fu_5416_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5416_p1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5416_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5416_p1 = grp_backprop_Pipeline_activations2_loop_fu_2420_grp_fu_5416_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5416_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_grp_fu_5416_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5416_p1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_grp_fu_5416_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5416_p1 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_grp_fu_5416_p_din1;
    end else begin
        grp_fu_5416_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5420_ce = grp_update_weights_1_fu_2536_grp_fu_5420_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state119)) begin
        grp_fu_5420_ce = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5420_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5420_ce = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5420_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5420_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5420_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5420_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5420_p_ce;
    end else begin
        grp_fu_5420_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5420_p0 = grp_update_weights_1_fu_2536_grp_fu_5420_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state119)) begin
        grp_fu_5420_p0 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5420_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5420_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5420_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5420_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5420_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5420_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5420_p_din0;
    end else begin
        grp_fu_5420_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5420_p1 = grp_update_weights_1_fu_2536_grp_fu_5420_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state119)) begin
        grp_fu_5420_p1 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5420_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5420_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5420_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5420_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5420_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5420_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5420_p_din1;
    end else begin
        grp_fu_5420_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state119)) begin
        grp_fu_5424_ce = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5424_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5424_ce = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5424_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5424_ce = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5424_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5424_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5424_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5424_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5424_p_ce;
    end else begin
        grp_fu_5424_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state119)) begin
        grp_fu_5424_p0 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5424_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5424_p0 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5424_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5424_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5424_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5424_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5424_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5424_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5424_p_din0;
    end else begin
        grp_fu_5424_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state119)) begin
        grp_fu_5424_p1 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_grp_fu_5424_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5424_p1 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_grp_fu_5424_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5424_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_grp_fu_5424_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5424_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_grp_fu_5424_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5424_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_grp_fu_5424_p_din1;
    end else begin
        grp_fu_5424_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5428_ce = grp_update_weights_1_fu_2536_grp_fu_5428_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5428_ce = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5428_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5428_ce = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_grp_fu_5428_p_ce;
    end else begin
        grp_fu_5428_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5428_p0 = grp_update_weights_1_fu_2536_grp_fu_5428_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5428_p0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5428_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5428_p0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_grp_fu_5428_p_din0;
    end else begin
        grp_fu_5428_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        grp_fu_5428_p1 = grp_update_weights_1_fu_2536_grp_fu_5428_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        grp_fu_5428_p1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_grp_fu_5428_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5428_p1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_grp_fu_5428_p_din1;
    end else begin
        grp_fu_5428_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        oracle_activations1_address0 = grp_update_weights_1_fu_2536_d_biases1_address0;
    end else if ((1'b1 == ap_CS_fsm_state133)) begin
        oracle_activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_oracle_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        oracle_activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_oracle_activations1_address0;
    end else begin
        oracle_activations1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        oracle_activations1_ce0 = grp_update_weights_1_fu_2536_d_biases1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state133)) begin
        oracle_activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_oracle_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        oracle_activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_oracle_activations1_ce0;
    end else begin
        oracle_activations1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        oracle_activations1_ce1 = grp_update_weights_1_fu_2536_d_biases1_ce1;
    end else begin
        oracle_activations1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state131)) begin
        oracle_activations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_oracle_activations1_we0;
    end else begin
        oracle_activations1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        oracle_activations2_address0 = grp_update_weights_1_fu_2536_d_biases2_address0;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        oracle_activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_oracle_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        oracle_activations2_address0 = grp_backprop_Pipeline_activations2_loop_fu_2420_oracle_activations2_address0;
    end else begin
        oracle_activations2_address0 = oracle_activations2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address0_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address0_local = 64'd12;
    end else begin
        oracle_activations2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        oracle_activations2_address1 = grp_update_weights_1_fu_2536_d_biases2_address1;
    end else begin
        oracle_activations2_address1 = oracle_activations2_address1_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address10_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address10_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address10_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address10_local = 64'd2;
    end else begin
        oracle_activations2_address10_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address11_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address11_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address11_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address11_local = 64'd1;
    end else begin
        oracle_activations2_address11_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address12_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address12_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address12_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address12_local = 64'd0;
    end else begin
        oracle_activations2_address12_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address13_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address13_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address13_local = 64'd16;
    end else begin
        oracle_activations2_address13_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address14_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address14_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address14_local = 64'd15;
    end else begin
        oracle_activations2_address14_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address15_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address15_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address15_local = 64'd14;
    end else begin
        oracle_activations2_address15_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address16_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address16_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address16_local = 64'd13;
    end else begin
        oracle_activations2_address16_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address1_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address1_local = 64'd11;
    end else begin
        oracle_activations2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address2_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address2_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address2_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address2_local = 64'd10;
    end else begin
        oracle_activations2_address2_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address3_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address3_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address3_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address3_local = 64'd9;
    end else begin
        oracle_activations2_address3_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address4_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address4_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address4_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address4_local = 64'd8;
    end else begin
        oracle_activations2_address4_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address5_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address5_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address5_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address5_local = 64'd7;
    end else begin
        oracle_activations2_address5_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address6_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address6_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address6_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address6_local = 64'd6;
    end else begin
        oracle_activations2_address6_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address7_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address7_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address7_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address7_local = 64'd5;
    end else begin
        oracle_activations2_address7_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address8_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address8_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address8_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address8_local = 64'd4;
    end else begin
        oracle_activations2_address8_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address9_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address9_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address9_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address9_local = 64'd3;
    end else begin
        oracle_activations2_address9_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        oracle_activations2_ce0 = grp_update_weights_1_fu_2536_d_biases2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        oracle_activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_oracle_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        oracle_activations2_ce0 = grp_backprop_Pipeline_activations2_loop_fu_2420_oracle_activations2_ce0;
    end else begin
        oracle_activations2_ce0 = oracle_activations2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        oracle_activations2_ce1 = grp_update_weights_1_fu_2536_d_biases2_ce1;
    end else begin
        oracle_activations2_ce1 = oracle_activations2_ce1_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce10_local = 1'b1;
    end else begin
        oracle_activations2_ce10_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce11_local = 1'b1;
    end else begin
        oracle_activations2_ce11_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce12_local = 1'b1;
    end else begin
        oracle_activations2_ce12_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce13_local = 1'b1;
    end else begin
        oracle_activations2_ce13_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce14_local = 1'b1;
    end else begin
        oracle_activations2_ce14_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce15_local = 1'b1;
    end else begin
        oracle_activations2_ce15_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce16_local = 1'b1;
    end else begin
        oracle_activations2_ce16_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce1_local = 1'b1;
    end else begin
        oracle_activations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce2_local = 1'b1;
    end else begin
        oracle_activations2_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce3_local = 1'b1;
    end else begin
        oracle_activations2_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce4_local = 1'b1;
    end else begin
        oracle_activations2_ce4_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce5_local = 1'b1;
    end else begin
        oracle_activations2_ce5_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce6_local = 1'b1;
    end else begin
        oracle_activations2_ce6_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce7_local = 1'b1;
    end else begin
        oracle_activations2_ce7_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce8_local = 1'b1;
    end else begin
        oracle_activations2_ce8_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce9_local = 1'b1;
    end else begin
        oracle_activations2_ce9_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        oracle_activations2_we0 = grp_backprop_Pipeline_activations2_loop_fu_2420_oracle_activations2_we0;
    end else begin
        oracle_activations2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state133)) begin
        training_data_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_training_data_address0;
    end else begin
        training_data_address0 = training_data_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        training_data_address0_local = arrayidx10_sum_11_cast_fu_2728_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        training_data_address0_local = arrayidx10_sum_9_cast_fu_2708_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        training_data_address0_local = arrayidx10_sum_7_cast_fu_2688_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        training_data_address0_local = arrayidx10_sum_5_cast_fu_2668_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        training_data_address0_local = arrayidx10_sum_3_cast_fu_2648_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        training_data_address0_local = arrayidx10_sum_2_cast_fu_2638_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        training_data_address0_local = zext_ln31_fu_2619_p1;
    end else begin
        training_data_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        training_data_address1_local = arrayidx10_sum_12_cast_fu_2738_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        training_data_address1_local = arrayidx10_sum_10_cast_fu_2718_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        training_data_address1_local = arrayidx10_sum_8_cast_fu_2698_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        training_data_address1_local = arrayidx10_sum_6_cast_fu_2678_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        training_data_address1_local = arrayidx10_sum_4_cast_fu_2658_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        training_data_address1_local = arrayidx10_sum_1_cast_fu_2628_p1;
    end else begin
        training_data_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state133)) begin
        training_data_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_training_data_ce0;
    end else begin
        training_data_ce0 = training_data_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27))) begin
        training_data_ce0_local = 1'b1;
    end else begin
        training_data_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28))) begin
        training_data_ce1_local = 1'b1;
    end else begin
        training_data_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights1_address0 = grp_update_weights_1_fu_2536_weights1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights1_address0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_weights1_address0;
    end else begin
        weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights1_address1 = grp_update_weights_1_fu_2536_weights1_address1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights1_address1 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_weights1_address1;
    end else begin
        weights1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights1_ce0 = grp_update_weights_1_fu_2536_weights1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights1_ce0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_weights1_ce0;
    end else begin
        weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights1_ce1 = grp_update_weights_1_fu_2536_weights1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights1_ce1 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_weights1_ce1;
    end else begin
        weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights1_we0 = grp_update_weights_1_fu_2536_weights1_we0;
    end else begin
        weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights1_we1 = grp_update_weights_1_fu_2536_weights1_we1;
    end else begin
        weights1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights2_address0 = grp_update_weights_1_fu_2536_weights2_address0;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        weights2_address0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_weights2_address0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        weights2_address0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_weights2_address0;
    end else begin
        weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights2_address1 = grp_update_weights_1_fu_2536_weights2_address1;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        weights2_address1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_weights2_address1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        weights2_address1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_weights2_address1;
    end else begin
        weights2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights2_ce0 = grp_update_weights_1_fu_2536_weights2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        weights2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_weights2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        weights2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_weights2_ce0;
    end else begin
        weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights2_ce1 = grp_update_weights_1_fu_2536_weights2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        weights2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_weights2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        weights2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_weights2_ce1;
    end else begin
        weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights2_we0 = grp_update_weights_1_fu_2536_weights2_we0;
    end else begin
        weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights2_we1 = grp_update_weights_1_fu_2536_weights2_we1;
    end else begin
        weights2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights3_address0 = grp_update_weights_1_fu_2536_weights3_address0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        weights3_address0 = grp_backprop_Pipeline_activations2_loop_fu_2420_weights3_address0;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        weights3_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_weights3_address0;
    end else begin
        weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights3_address1 = grp_update_weights_1_fu_2536_weights3_address1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        weights3_address1 = grp_backprop_Pipeline_activations2_loop_fu_2420_weights3_address1;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        weights3_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_weights3_address1;
    end else begin
        weights3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights3_ce0 = grp_update_weights_1_fu_2536_weights3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        weights3_ce0 = grp_backprop_Pipeline_activations2_loop_fu_2420_weights3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        weights3_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_weights3_ce0;
    end else begin
        weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights3_ce1 = grp_update_weights_1_fu_2536_weights3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        weights3_ce1 = grp_backprop_Pipeline_activations2_loop_fu_2420_weights3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        weights3_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_weights3_ce1;
    end else begin
        weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights3_we0 = grp_update_weights_1_fu_2536_weights3_we0;
    end else begin
        weights3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        weights3_we1 = grp_update_weights_1_fu_2536_weights3_we1;
    end else begin
        weights3_we1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln220_fu_2582_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
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
            if (((1'b1 == ap_CS_fsm_state35) & (grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state35;
            end
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            if (((1'b1 == ap_CS_fsm_state37) & (grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            if (((1'b1 == ap_CS_fsm_state39) & (grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state39;
            end
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
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state62;
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state66;
        end
        ap_ST_fsm_state66 : begin
            ap_NS_fsm = ap_ST_fsm_state67;
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            ap_NS_fsm = ap_ST_fsm_state69;
        end
        ap_ST_fsm_state69 : begin
            ap_NS_fsm = ap_ST_fsm_state70;
        end
        ap_ST_fsm_state70 : begin
            ap_NS_fsm = ap_ST_fsm_state71;
        end
        ap_ST_fsm_state71 : begin
            ap_NS_fsm = ap_ST_fsm_state72;
        end
        ap_ST_fsm_state72 : begin
            ap_NS_fsm = ap_ST_fsm_state73;
        end
        ap_ST_fsm_state73 : begin
            if (((1'b1 == ap_CS_fsm_state73) & (grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state74;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state73;
            end
        end
        ap_ST_fsm_state74 : begin
            ap_NS_fsm = ap_ST_fsm_state75;
        end
        ap_ST_fsm_state75 : begin
            if (((1'b1 == ap_CS_fsm_state75) & (grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state76;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state75;
            end
        end
        ap_ST_fsm_state76 : begin
            ap_NS_fsm = ap_ST_fsm_state77;
        end
        ap_ST_fsm_state77 : begin
            if (((1'b1 == ap_CS_fsm_state77) & (grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state78;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state77;
            end
        end
        ap_ST_fsm_state78 : begin
            ap_NS_fsm = ap_ST_fsm_state79;
        end
        ap_ST_fsm_state79 : begin
            ap_NS_fsm = ap_ST_fsm_state80;
        end
        ap_ST_fsm_state80 : begin
            ap_NS_fsm = ap_ST_fsm_state81;
        end
        ap_ST_fsm_state81 : begin
            ap_NS_fsm = ap_ST_fsm_state82;
        end
        ap_ST_fsm_state82 : begin
            ap_NS_fsm = ap_ST_fsm_state83;
        end
        ap_ST_fsm_state83 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state84 : begin
            ap_NS_fsm = ap_ST_fsm_state85;
        end
        ap_ST_fsm_state85 : begin
            ap_NS_fsm = ap_ST_fsm_state86;
        end
        ap_ST_fsm_state86 : begin
            ap_NS_fsm = ap_ST_fsm_state87;
        end
        ap_ST_fsm_state87 : begin
            ap_NS_fsm = ap_ST_fsm_state88;
        end
        ap_ST_fsm_state88 : begin
            ap_NS_fsm = ap_ST_fsm_state89;
        end
        ap_ST_fsm_state89 : begin
            ap_NS_fsm = ap_ST_fsm_state90;
        end
        ap_ST_fsm_state90 : begin
            ap_NS_fsm = ap_ST_fsm_state91;
        end
        ap_ST_fsm_state91 : begin
            ap_NS_fsm = ap_ST_fsm_state92;
        end
        ap_ST_fsm_state92 : begin
            ap_NS_fsm = ap_ST_fsm_state93;
        end
        ap_ST_fsm_state93 : begin
            ap_NS_fsm = ap_ST_fsm_state94;
        end
        ap_ST_fsm_state94 : begin
            ap_NS_fsm = ap_ST_fsm_state95;
        end
        ap_ST_fsm_state95 : begin
            ap_NS_fsm = ap_ST_fsm_state96;
        end
        ap_ST_fsm_state96 : begin
            ap_NS_fsm = ap_ST_fsm_state97;
        end
        ap_ST_fsm_state97 : begin
            ap_NS_fsm = ap_ST_fsm_state98;
        end
        ap_ST_fsm_state98 : begin
            ap_NS_fsm = ap_ST_fsm_state99;
        end
        ap_ST_fsm_state99 : begin
            ap_NS_fsm = ap_ST_fsm_state100;
        end
        ap_ST_fsm_state100 : begin
            ap_NS_fsm = ap_ST_fsm_state101;
        end
        ap_ST_fsm_state101 : begin
            ap_NS_fsm = ap_ST_fsm_state102;
        end
        ap_ST_fsm_state102 : begin
            ap_NS_fsm = ap_ST_fsm_state103;
        end
        ap_ST_fsm_state103 : begin
            ap_NS_fsm = ap_ST_fsm_state104;
        end
        ap_ST_fsm_state104 : begin
            ap_NS_fsm = ap_ST_fsm_state105;
        end
        ap_ST_fsm_state105 : begin
            ap_NS_fsm = ap_ST_fsm_state106;
        end
        ap_ST_fsm_state106 : begin
            ap_NS_fsm = ap_ST_fsm_state107;
        end
        ap_ST_fsm_state107 : begin
            ap_NS_fsm = ap_ST_fsm_state108;
        end
        ap_ST_fsm_state108 : begin
            ap_NS_fsm = ap_ST_fsm_state109;
        end
        ap_ST_fsm_state109 : begin
            ap_NS_fsm = ap_ST_fsm_state110;
        end
        ap_ST_fsm_state110 : begin
            ap_NS_fsm = ap_ST_fsm_state111;
        end
        ap_ST_fsm_state111 : begin
            if (((1'b1 == ap_CS_fsm_state111) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state112;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state111;
            end
        end
        ap_ST_fsm_state112 : begin
            ap_NS_fsm = ap_ST_fsm_state113;
        end
        ap_ST_fsm_state113 : begin
            if (((1'b1 == ap_CS_fsm_state113) & (grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state114;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state113;
            end
        end
        ap_ST_fsm_state114 : begin
            ap_NS_fsm = ap_ST_fsm_state115;
        end
        ap_ST_fsm_state115 : begin
            if (((1'b1 == ap_CS_fsm_state115) & (grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state116;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state115;
            end
        end
        ap_ST_fsm_state116 : begin
            ap_NS_fsm = ap_ST_fsm_state117;
        end
        ap_ST_fsm_state117 : begin
            if (((1'b1 == ap_CS_fsm_state117) & (grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state118;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state117;
            end
        end
        ap_ST_fsm_state118 : begin
            ap_NS_fsm = ap_ST_fsm_state119;
        end
        ap_ST_fsm_state119 : begin
            if (((1'b1 == ap_CS_fsm_state119) & (grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state120;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state119;
            end
        end
        ap_ST_fsm_state120 : begin
            ap_NS_fsm = ap_ST_fsm_state121;
        end
        ap_ST_fsm_state121 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state121))) begin
                ap_NS_fsm = ap_ST_fsm_state122;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state121;
            end
        end
        ap_ST_fsm_state122 : begin
            ap_NS_fsm = ap_ST_fsm_state123;
        end
        ap_ST_fsm_state123 : begin
            if (((1'b0 == ap_block_state123_on_subcall_done) & (1'b1 == ap_CS_fsm_state123))) begin
                ap_NS_fsm = ap_ST_fsm_state124;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state123;
            end
        end
        ap_ST_fsm_state124 : begin
            ap_NS_fsm = ap_ST_fsm_state125;
        end
        ap_ST_fsm_state125 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state125))) begin
                ap_NS_fsm = ap_ST_fsm_state126;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state125;
            end
        end
        ap_ST_fsm_state126 : begin
            ap_NS_fsm = ap_ST_fsm_state127;
        end
        ap_ST_fsm_state127 : begin
            ap_NS_fsm = ap_ST_fsm_state128;
        end
        ap_ST_fsm_state128 : begin
            ap_NS_fsm = ap_ST_fsm_state129;
        end
        ap_ST_fsm_state129 : begin
            ap_NS_fsm = ap_ST_fsm_state130;
        end
        ap_ST_fsm_state130 : begin
            ap_NS_fsm = ap_ST_fsm_state131;
        end
        ap_ST_fsm_state131 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state131))) begin
                ap_NS_fsm = ap_ST_fsm_state132;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state131;
            end
        end
        ap_ST_fsm_state132 : begin
            ap_NS_fsm = ap_ST_fsm_state133;
        end
        ap_ST_fsm_state133 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state133))) begin
                ap_NS_fsm = ap_ST_fsm_state134;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state133;
            end
        end
        ap_ST_fsm_state134 : begin
            ap_NS_fsm = ap_ST_fsm_state135;
        end
        ap_ST_fsm_state135 : begin
            if (((grp_update_weights_1_fu_2536_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state135))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state135;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln220_1_fu_2576_p2 = (phi_mul40_fu_246 + 12'd13);
assign add_ln220_fu_2588_p2 = (i_fu_250 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state100 = ap_CS_fsm[32'd99];
assign ap_CS_fsm_state101 = ap_CS_fsm[32'd100];
assign ap_CS_fsm_state102 = ap_CS_fsm[32'd101];
assign ap_CS_fsm_state103 = ap_CS_fsm[32'd102];
assign ap_CS_fsm_state104 = ap_CS_fsm[32'd103];
assign ap_CS_fsm_state105 = ap_CS_fsm[32'd104];
assign ap_CS_fsm_state106 = ap_CS_fsm[32'd105];
assign ap_CS_fsm_state107 = ap_CS_fsm[32'd106];
assign ap_CS_fsm_state108 = ap_CS_fsm[32'd107];
assign ap_CS_fsm_state109 = ap_CS_fsm[32'd108];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state110 = ap_CS_fsm[32'd109];
assign ap_CS_fsm_state111 = ap_CS_fsm[32'd110];
assign ap_CS_fsm_state112 = ap_CS_fsm[32'd111];
assign ap_CS_fsm_state113 = ap_CS_fsm[32'd112];
assign ap_CS_fsm_state114 = ap_CS_fsm[32'd113];
assign ap_CS_fsm_state115 = ap_CS_fsm[32'd114];
assign ap_CS_fsm_state116 = ap_CS_fsm[32'd115];
assign ap_CS_fsm_state117 = ap_CS_fsm[32'd116];
assign ap_CS_fsm_state118 = ap_CS_fsm[32'd117];
assign ap_CS_fsm_state119 = ap_CS_fsm[32'd118];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state120 = ap_CS_fsm[32'd119];
assign ap_CS_fsm_state121 = ap_CS_fsm[32'd120];
assign ap_CS_fsm_state122 = ap_CS_fsm[32'd121];
assign ap_CS_fsm_state123 = ap_CS_fsm[32'd122];
assign ap_CS_fsm_state124 = ap_CS_fsm[32'd123];
assign ap_CS_fsm_state125 = ap_CS_fsm[32'd124];
assign ap_CS_fsm_state126 = ap_CS_fsm[32'd125];
assign ap_CS_fsm_state127 = ap_CS_fsm[32'd126];
assign ap_CS_fsm_state128 = ap_CS_fsm[32'd127];
assign ap_CS_fsm_state129 = ap_CS_fsm[32'd128];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state130 = ap_CS_fsm[32'd129];
assign ap_CS_fsm_state131 = ap_CS_fsm[32'd130];
assign ap_CS_fsm_state132 = ap_CS_fsm[32'd131];
assign ap_CS_fsm_state133 = ap_CS_fsm[32'd132];
assign ap_CS_fsm_state134 = ap_CS_fsm[32'd133];
assign ap_CS_fsm_state135 = ap_CS_fsm[32'd134];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state40 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_state41 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];
assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_state47 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_state48 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_state49 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state50 = ap_CS_fsm[32'd49];
assign ap_CS_fsm_state51 = ap_CS_fsm[32'd50];
assign ap_CS_fsm_state52 = ap_CS_fsm[32'd51];
assign ap_CS_fsm_state53 = ap_CS_fsm[32'd52];
assign ap_CS_fsm_state54 = ap_CS_fsm[32'd53];
assign ap_CS_fsm_state55 = ap_CS_fsm[32'd54];
assign ap_CS_fsm_state56 = ap_CS_fsm[32'd55];
assign ap_CS_fsm_state57 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_state58 = ap_CS_fsm[32'd57];
assign ap_CS_fsm_state59 = ap_CS_fsm[32'd58];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state60 = ap_CS_fsm[32'd59];
assign ap_CS_fsm_state61 = ap_CS_fsm[32'd60];
assign ap_CS_fsm_state62 = ap_CS_fsm[32'd61];
assign ap_CS_fsm_state63 = ap_CS_fsm[32'd62];
assign ap_CS_fsm_state64 = ap_CS_fsm[32'd63];
assign ap_CS_fsm_state65 = ap_CS_fsm[32'd64];
assign ap_CS_fsm_state66 = ap_CS_fsm[32'd65];
assign ap_CS_fsm_state67 = ap_CS_fsm[32'd66];
assign ap_CS_fsm_state68 = ap_CS_fsm[32'd67];
assign ap_CS_fsm_state69 = ap_CS_fsm[32'd68];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state70 = ap_CS_fsm[32'd69];
assign ap_CS_fsm_state71 = ap_CS_fsm[32'd70];
assign ap_CS_fsm_state72 = ap_CS_fsm[32'd71];
assign ap_CS_fsm_state73 = ap_CS_fsm[32'd72];
assign ap_CS_fsm_state74 = ap_CS_fsm[32'd73];
assign ap_CS_fsm_state75 = ap_CS_fsm[32'd74];
assign ap_CS_fsm_state76 = ap_CS_fsm[32'd75];
assign ap_CS_fsm_state77 = ap_CS_fsm[32'd76];
assign ap_CS_fsm_state78 = ap_CS_fsm[32'd77];
assign ap_CS_fsm_state79 = ap_CS_fsm[32'd78];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state80 = ap_CS_fsm[32'd79];
assign ap_CS_fsm_state81 = ap_CS_fsm[32'd80];
assign ap_CS_fsm_state82 = ap_CS_fsm[32'd81];
assign ap_CS_fsm_state83 = ap_CS_fsm[32'd82];
assign ap_CS_fsm_state84 = ap_CS_fsm[32'd83];
assign ap_CS_fsm_state85 = ap_CS_fsm[32'd84];
assign ap_CS_fsm_state86 = ap_CS_fsm[32'd85];
assign ap_CS_fsm_state87 = ap_CS_fsm[32'd86];
assign ap_CS_fsm_state88 = ap_CS_fsm[32'd87];
assign ap_CS_fsm_state89 = ap_CS_fsm[32'd88];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_state90 = ap_CS_fsm[32'd89];
assign ap_CS_fsm_state91 = ap_CS_fsm[32'd90];
assign ap_CS_fsm_state92 = ap_CS_fsm[32'd91];
assign ap_CS_fsm_state93 = ap_CS_fsm[32'd92];
assign ap_CS_fsm_state94 = ap_CS_fsm[32'd93];
assign ap_CS_fsm_state95 = ap_CS_fsm[32'd94];
assign ap_CS_fsm_state96 = ap_CS_fsm[32'd95];
assign ap_CS_fsm_state97 = ap_CS_fsm[32'd96];
assign ap_CS_fsm_state98 = ap_CS_fsm[32'd97];
assign ap_CS_fsm_state99 = ap_CS_fsm[32'd98];
always @ (*) begin
    ap_block_state123_on_subcall_done = ((grp_backprop_Pipeline_activations2_loop_fu_2420_ap_done == 1'b0) | (grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_done == 1'b0));
end
assign arrayidx10_sum_10_cast_fu_2718_p1 = arrayidx10_sum_10_fu_2713_p2;
assign arrayidx10_sum_10_fu_2713_p2 = (phi_mul40_load_reg_4143 + 12'd10);
assign arrayidx10_sum_11_cast_fu_2728_p1 = arrayidx10_sum_11_fu_2723_p2;
assign arrayidx10_sum_11_fu_2723_p2 = (phi_mul40_load_reg_4143 + 12'd11);
assign arrayidx10_sum_12_cast_fu_2738_p1 = arrayidx10_sum_12_fu_2733_p2;
assign arrayidx10_sum_12_fu_2733_p2 = (phi_mul40_load_reg_4143 + 12'd12);
assign arrayidx10_sum_1_cast_fu_2628_p1 = arrayidx10_sum_1_fu_2623_p2;
assign arrayidx10_sum_1_fu_2623_p2 = (phi_mul40_load_reg_4143 + 12'd1);
assign arrayidx10_sum_2_cast_fu_2638_p1 = arrayidx10_sum_2_fu_2633_p2;
assign arrayidx10_sum_2_fu_2633_p2 = (phi_mul40_load_reg_4143 + 12'd2);
assign arrayidx10_sum_3_cast_fu_2648_p1 = arrayidx10_sum_3_fu_2643_p2;
assign arrayidx10_sum_3_fu_2643_p2 = (phi_mul40_load_reg_4143 + 12'd3);
assign arrayidx10_sum_4_cast_fu_2658_p1 = arrayidx10_sum_4_fu_2653_p2;
assign arrayidx10_sum_4_fu_2653_p2 = (phi_mul40_load_reg_4143 + 12'd4);
assign arrayidx10_sum_5_cast_fu_2668_p1 = arrayidx10_sum_5_fu_2663_p2;
assign arrayidx10_sum_5_fu_2663_p2 = (phi_mul40_load_reg_4143 + 12'd5);
assign arrayidx10_sum_6_cast_fu_2678_p1 = arrayidx10_sum_6_fu_2673_p2;
assign arrayidx10_sum_6_fu_2673_p2 = (phi_mul40_load_reg_4143 + 12'd6);
assign arrayidx10_sum_7_cast_fu_2688_p1 = arrayidx10_sum_7_fu_2683_p2;
assign arrayidx10_sum_7_fu_2683_p2 = (phi_mul40_load_reg_4143 + 12'd7);
assign arrayidx10_sum_8_cast_fu_2698_p1 = arrayidx10_sum_8_fu_2693_p2;
assign arrayidx10_sum_8_fu_2693_p2 = (phi_mul40_load_reg_4143 + 12'd8);
assign arrayidx10_sum_9_cast_fu_2708_p1 = arrayidx10_sum_9_fu_2703_p2;
assign arrayidx10_sum_9_fu_2703_p2 = (phi_mul40_load_reg_4143 + 12'd9);
assign biases1_address1 = grp_update_weights_1_fu_2536_biases1_address1;
assign biases1_d0 = grp_update_weights_1_fu_2536_biases1_d0;
assign biases1_d1 = grp_update_weights_1_fu_2536_biases1_d1;
assign biases2_address1 = grp_update_weights_1_fu_2536_biases2_address1;
assign biases2_d0 = grp_update_weights_1_fu_2536_biases2_d0;
assign biases2_d1 = grp_update_weights_1_fu_2536_biases2_d1;
assign biases3_address1 = grp_update_weights_1_fu_2536_biases3_address1;
assign biases3_d0 = grp_update_weights_1_fu_2536_biases3_d0;
assign empty_54_fu_2747_p1 = training_data_load_1_reg_4190;
assign empty_55_fu_2751_p1 = training_data_load_2_reg_4195;
assign empty_56_fu_2755_p1 = training_data_load_3_reg_4210;
assign empty_57_fu_2759_p1 = training_data_load_4_reg_4215;
assign empty_58_fu_2763_p1 = training_data_load_5_reg_4230;
assign empty_59_fu_2767_p1 = training_data_load_6_reg_4235;
assign empty_60_fu_2771_p1 = training_data_load_7_reg_4250;
assign empty_61_fu_2775_p1 = training_data_load_8_reg_4255;
assign empty_62_fu_2779_p1 = training_data_load_9_reg_4270;
assign empty_63_fu_2783_p1 = training_data_load_10_reg_4275;
assign empty_64_fu_2787_p1 = training_data_q0;
assign empty_65_fu_2792_p1 = training_data_q1;
assign empty_fu_2743_p1 = training_data_load_reg_4175;
assign grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_start = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2438_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_start = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2527_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_start = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2372_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2255_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2351_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2169_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_start = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2248_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_start = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2342_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_start = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2162_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_start = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2175_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_start = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2261_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_start = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_start = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2364_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_start = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2431_ap_start_reg;
assign grp_backprop_Pipeline_activations2_loop_fu_2420_ap_start = grp_backprop_Pipeline_activations2_loop_fu_2420_ap_start_reg;
assign grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_start = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2411_ap_start_reg;
assign grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_start = grp_backprop_Pipeline_mvp_product_input_loop_fu_2142_ap_start_reg;
assign grp_update_weights_1_fu_2536_ap_start = grp_update_weights_1_fu_2536_ap_start_reg;
assign icmp_ln220_fu_2582_p2 = ((i_fu_250 == 8'd163) ? 1'b1 : 1'b0);
assign p_shl_fu_2843_p3 = {{trunc_ln66_fu_2840_p1}, {2'd0}};
assign sub_ln66_fu_2851_p2 = (p_shl_fu_2843_p3 - zext_ln66_fu_2837_p1);
assign training_data_address1 = training_data_address1_local;
assign training_data_ce1 = training_data_ce1_local;
assign training_targets_address0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_training_targets_address0;
assign training_targets_ce0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2386_training_targets_ce0;
assign trunc_ln66_fu_2840_p1 = i_17_reg_4161[6:0];
assign weights1_d0 = grp_update_weights_1_fu_2536_weights1_d0;
assign weights1_d1 = grp_update_weights_1_fu_2536_weights1_d1;
assign weights2_d0 = grp_update_weights_1_fu_2536_weights2_d0;
assign weights2_d1 = grp_update_weights_1_fu_2536_weights2_d1;
assign weights3_d0 = grp_update_weights_1_fu_2536_weights3_d0;
assign weights3_d1 = grp_update_weights_1_fu_2536_weights3_d1;
assign zext_ln31_fu_2619_p1 = phi_mul40_load_reg_4143;
assign zext_ln66_fu_2837_p1 = i_17_reg_4161;
endmodule 
