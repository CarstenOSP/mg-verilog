
module backprop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_address0,weights1_ce0,weights1_we0,weights1_d0,weights1_q0,weights1_address1,weights1_ce1,weights1_we1,weights1_d1,weights1_q1,weights2_address0,weights2_ce0,weights2_we0,weights2_d0,weights2_q0,weights2_address1,weights2_ce1,weights2_we1,weights2_d1,weights2_q1,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,weights3_address1,weights3_ce1,weights3_we1,weights3_d1,weights3_q1,biases1_address0,biases1_ce0,biases1_we0,biases1_d0,biases1_q0,biases1_address1,biases1_ce1,biases1_we1,biases1_d1,biases2_address0,biases2_ce0,biases2_we0,biases2_d0,biases2_q0,biases2_address1,biases2_ce1,biases2_we1,biases2_d1,biases3_address0,biases3_ce0,biases3_we0,biases3_d0,biases3_q0,biases3_address1,biases3_ce1,biases3_q1,training_data_address0,training_data_ce0,training_data_q0,training_data_address1,training_data_ce1,training_data_q1,training_targets_address0,training_targets_ce0,training_targets_q0);  
parameter    ap_ST_fsm_state1 = 163'd1;
parameter    ap_ST_fsm_state2 = 163'd2;
parameter    ap_ST_fsm_state3 = 163'd4;
parameter    ap_ST_fsm_state4 = 163'd8;
parameter    ap_ST_fsm_state5 = 163'd16;
parameter    ap_ST_fsm_state6 = 163'd32;
parameter    ap_ST_fsm_state7 = 163'd64;
parameter    ap_ST_fsm_state8 = 163'd128;
parameter    ap_ST_fsm_state9 = 163'd256;
parameter    ap_ST_fsm_state10 = 163'd512;
parameter    ap_ST_fsm_state11 = 163'd1024;
parameter    ap_ST_fsm_state12 = 163'd2048;
parameter    ap_ST_fsm_state13 = 163'd4096;
parameter    ap_ST_fsm_state14 = 163'd8192;
parameter    ap_ST_fsm_state15 = 163'd16384;
parameter    ap_ST_fsm_state16 = 163'd32768;
parameter    ap_ST_fsm_state17 = 163'd65536;
parameter    ap_ST_fsm_state18 = 163'd131072;
parameter    ap_ST_fsm_state19 = 163'd262144;
parameter    ap_ST_fsm_state20 = 163'd524288;
parameter    ap_ST_fsm_state21 = 163'd1048576;
parameter    ap_ST_fsm_state22 = 163'd2097152;
parameter    ap_ST_fsm_state23 = 163'd4194304;
parameter    ap_ST_fsm_state24 = 163'd8388608;
parameter    ap_ST_fsm_state25 = 163'd16777216;
parameter    ap_ST_fsm_state26 = 163'd33554432;
parameter    ap_ST_fsm_state27 = 163'd67108864;
parameter    ap_ST_fsm_state28 = 163'd134217728;
parameter    ap_ST_fsm_state29 = 163'd268435456;
parameter    ap_ST_fsm_state30 = 163'd536870912;
parameter    ap_ST_fsm_state31 = 163'd1073741824;
parameter    ap_ST_fsm_state32 = 163'd2147483648;
parameter    ap_ST_fsm_state33 = 163'd4294967296;
parameter    ap_ST_fsm_state34 = 163'd8589934592;
parameter    ap_ST_fsm_state35 = 163'd17179869184;
parameter    ap_ST_fsm_state36 = 163'd34359738368;
parameter    ap_ST_fsm_state37 = 163'd68719476736;
parameter    ap_ST_fsm_state38 = 163'd137438953472;
parameter    ap_ST_fsm_state39 = 163'd274877906944;
parameter    ap_ST_fsm_state40 = 163'd549755813888;
parameter    ap_ST_fsm_state41 = 163'd1099511627776;
parameter    ap_ST_fsm_state42 = 163'd2199023255552;
parameter    ap_ST_fsm_state43 = 163'd4398046511104;
parameter    ap_ST_fsm_state44 = 163'd8796093022208;
parameter    ap_ST_fsm_state45 = 163'd17592186044416;
parameter    ap_ST_fsm_state46 = 163'd35184372088832;
parameter    ap_ST_fsm_state47 = 163'd70368744177664;
parameter    ap_ST_fsm_state48 = 163'd140737488355328;
parameter    ap_ST_fsm_state49 = 163'd281474976710656;
parameter    ap_ST_fsm_state50 = 163'd562949953421312;
parameter    ap_ST_fsm_state51 = 163'd1125899906842624;
parameter    ap_ST_fsm_state52 = 163'd2251799813685248;
parameter    ap_ST_fsm_state53 = 163'd4503599627370496;
parameter    ap_ST_fsm_state54 = 163'd9007199254740992;
parameter    ap_ST_fsm_state55 = 163'd18014398509481984;
parameter    ap_ST_fsm_state56 = 163'd36028797018963968;
parameter    ap_ST_fsm_state57 = 163'd72057594037927936;
parameter    ap_ST_fsm_state58 = 163'd144115188075855872;
parameter    ap_ST_fsm_state59 = 163'd288230376151711744;
parameter    ap_ST_fsm_state60 = 163'd576460752303423488;
parameter    ap_ST_fsm_state61 = 163'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 163'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 163'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 163'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 163'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 163'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 163'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 163'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 163'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 163'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 163'd1180591620717411303424;
parameter    ap_ST_fsm_state72 = 163'd2361183241434822606848;
parameter    ap_ST_fsm_state73 = 163'd4722366482869645213696;
parameter    ap_ST_fsm_state74 = 163'd9444732965739290427392;
parameter    ap_ST_fsm_state75 = 163'd18889465931478580854784;
parameter    ap_ST_fsm_state76 = 163'd37778931862957161709568;
parameter    ap_ST_fsm_state77 = 163'd75557863725914323419136;
parameter    ap_ST_fsm_state78 = 163'd151115727451828646838272;
parameter    ap_ST_fsm_state79 = 163'd302231454903657293676544;
parameter    ap_ST_fsm_state80 = 163'd604462909807314587353088;
parameter    ap_ST_fsm_state81 = 163'd1208925819614629174706176;
parameter    ap_ST_fsm_state82 = 163'd2417851639229258349412352;
parameter    ap_ST_fsm_state83 = 163'd4835703278458516698824704;
parameter    ap_ST_fsm_state84 = 163'd9671406556917033397649408;
parameter    ap_ST_fsm_state85 = 163'd19342813113834066795298816;
parameter    ap_ST_fsm_state86 = 163'd38685626227668133590597632;
parameter    ap_ST_fsm_state87 = 163'd77371252455336267181195264;
parameter    ap_ST_fsm_state88 = 163'd154742504910672534362390528;
parameter    ap_ST_fsm_state89 = 163'd309485009821345068724781056;
parameter    ap_ST_fsm_state90 = 163'd618970019642690137449562112;
parameter    ap_ST_fsm_state91 = 163'd1237940039285380274899124224;
parameter    ap_ST_fsm_state92 = 163'd2475880078570760549798248448;
parameter    ap_ST_fsm_state93 = 163'd4951760157141521099596496896;
parameter    ap_ST_fsm_state94 = 163'd9903520314283042199192993792;
parameter    ap_ST_fsm_state95 = 163'd19807040628566084398385987584;
parameter    ap_ST_fsm_state96 = 163'd39614081257132168796771975168;
parameter    ap_ST_fsm_state97 = 163'd79228162514264337593543950336;
parameter    ap_ST_fsm_state98 = 163'd158456325028528675187087900672;
parameter    ap_ST_fsm_state99 = 163'd316912650057057350374175801344;
parameter    ap_ST_fsm_state100 = 163'd633825300114114700748351602688;
parameter    ap_ST_fsm_state101 = 163'd1267650600228229401496703205376;
parameter    ap_ST_fsm_state102 = 163'd2535301200456458802993406410752;
parameter    ap_ST_fsm_state103 = 163'd5070602400912917605986812821504;
parameter    ap_ST_fsm_state104 = 163'd10141204801825835211973625643008;
parameter    ap_ST_fsm_state105 = 163'd20282409603651670423947251286016;
parameter    ap_ST_fsm_state106 = 163'd40564819207303340847894502572032;
parameter    ap_ST_fsm_state107 = 163'd81129638414606681695789005144064;
parameter    ap_ST_fsm_state108 = 163'd162259276829213363391578010288128;
parameter    ap_ST_fsm_state109 = 163'd324518553658426726783156020576256;
parameter    ap_ST_fsm_state110 = 163'd649037107316853453566312041152512;
parameter    ap_ST_fsm_state111 = 163'd1298074214633706907132624082305024;
parameter    ap_ST_fsm_state112 = 163'd2596148429267413814265248164610048;
parameter    ap_ST_fsm_state113 = 163'd5192296858534827628530496329220096;
parameter    ap_ST_fsm_state114 = 163'd10384593717069655257060992658440192;
parameter    ap_ST_fsm_state115 = 163'd20769187434139310514121985316880384;
parameter    ap_ST_fsm_state116 = 163'd41538374868278621028243970633760768;
parameter    ap_ST_fsm_state117 = 163'd83076749736557242056487941267521536;
parameter    ap_ST_fsm_state118 = 163'd166153499473114484112975882535043072;
parameter    ap_ST_fsm_state119 = 163'd332306998946228968225951765070086144;
parameter    ap_ST_fsm_state120 = 163'd664613997892457936451903530140172288;
parameter    ap_ST_fsm_state121 = 163'd1329227995784915872903807060280344576;
parameter    ap_ST_fsm_state122 = 163'd2658455991569831745807614120560689152;
parameter    ap_ST_fsm_state123 = 163'd5316911983139663491615228241121378304;
parameter    ap_ST_fsm_state124 = 163'd10633823966279326983230456482242756608;
parameter    ap_ST_fsm_state125 = 163'd21267647932558653966460912964485513216;
parameter    ap_ST_fsm_state126 = 163'd42535295865117307932921825928971026432;
parameter    ap_ST_fsm_state127 = 163'd85070591730234615865843651857942052864;
parameter    ap_ST_fsm_state128 = 163'd170141183460469231731687303715884105728;
parameter    ap_ST_fsm_state129 = 163'd340282366920938463463374607431768211456;
parameter    ap_ST_fsm_state130 = 163'd680564733841876926926749214863536422912;
parameter    ap_ST_fsm_state131 = 163'd1361129467683753853853498429727072845824;
parameter    ap_ST_fsm_state132 = 163'd2722258935367507707706996859454145691648;
parameter    ap_ST_fsm_state133 = 163'd5444517870735015415413993718908291383296;
parameter    ap_ST_fsm_state134 = 163'd10889035741470030830827987437816582766592;
parameter    ap_ST_fsm_state135 = 163'd21778071482940061661655974875633165533184;
parameter    ap_ST_fsm_state136 = 163'd43556142965880123323311949751266331066368;
parameter    ap_ST_fsm_state137 = 163'd87112285931760246646623899502532662132736;
parameter    ap_ST_fsm_state138 = 163'd174224571863520493293247799005065324265472;
parameter    ap_ST_fsm_state139 = 163'd348449143727040986586495598010130648530944;
parameter    ap_ST_fsm_state140 = 163'd696898287454081973172991196020261297061888;
parameter    ap_ST_fsm_state141 = 163'd1393796574908163946345982392040522594123776;
parameter    ap_ST_fsm_state142 = 163'd2787593149816327892691964784081045188247552;
parameter    ap_ST_fsm_state143 = 163'd5575186299632655785383929568162090376495104;
parameter    ap_ST_fsm_state144 = 163'd11150372599265311570767859136324180752990208;
parameter    ap_ST_fsm_state145 = 163'd22300745198530623141535718272648361505980416;
parameter    ap_ST_fsm_state146 = 163'd44601490397061246283071436545296723011960832;
parameter    ap_ST_fsm_state147 = 163'd89202980794122492566142873090593446023921664;
parameter    ap_ST_fsm_state148 = 163'd178405961588244985132285746181186892047843328;
parameter    ap_ST_fsm_state149 = 163'd356811923176489970264571492362373784095686656;
parameter    ap_ST_fsm_state150 = 163'd713623846352979940529142984724747568191373312;
parameter    ap_ST_fsm_state151 = 163'd1427247692705959881058285969449495136382746624;
parameter    ap_ST_fsm_state152 = 163'd2854495385411919762116571938898990272765493248;
parameter    ap_ST_fsm_state153 = 163'd5708990770823839524233143877797980545530986496;
parameter    ap_ST_fsm_state154 = 163'd11417981541647679048466287755595961091061972992;
parameter    ap_ST_fsm_state155 = 163'd22835963083295358096932575511191922182123945984;
parameter    ap_ST_fsm_state156 = 163'd45671926166590716193865151022383844364247891968;
parameter    ap_ST_fsm_state157 = 163'd91343852333181432387730302044767688728495783936;
parameter    ap_ST_fsm_state158 = 163'd182687704666362864775460604089535377456991567872;
parameter    ap_ST_fsm_state159 = 163'd365375409332725729550921208179070754913983135744;
parameter    ap_ST_fsm_state160 = 163'd730750818665451459101842416358141509827966271488;
parameter    ap_ST_fsm_state161 = 163'd1461501637330902918203684832716283019655932542976;
parameter    ap_ST_fsm_state162 = 163'd2923003274661805836407369665432566039311865085952;
parameter    ap_ST_fsm_state163 = 163'd5846006549323611672814739330865132078623730171904;
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
output  [5:0] biases2_address0;
output   biases2_ce0;
output   biases2_we0;
output  [63:0] biases2_d0;
input  [63:0] biases2_q0;
output  [5:0] biases2_address1;
output   biases2_ce1;
output   biases2_we1;
output  [63:0] biases2_d1;
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
(* fsm_encoding = "none" *) reg   [162:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [11:0] phi_mul40_load_reg_4068;
wire    ap_CS_fsm_state2;
reg   [7:0] i_13_reg_4086;
wire    ap_CS_fsm_state27;
reg   [63:0] training_data_load_reg_4100;
wire    ap_CS_fsm_state28;
reg   [63:0] training_data_load_1_reg_4115;
wire    ap_CS_fsm_state29;
reg   [63:0] training_data_load_2_reg_4120;
reg   [63:0] training_data_load_3_reg_4135;
wire    ap_CS_fsm_state30;
reg   [63:0] training_data_load_4_reg_4140;
reg   [63:0] training_data_load_5_reg_4155;
wire    ap_CS_fsm_state31;
reg   [63:0] training_data_load_6_reg_4160;
reg   [63:0] training_data_load_7_reg_4175;
wire    ap_CS_fsm_state32;
reg   [63:0] training_data_load_8_reg_4180;
reg   [63:0] training_data_load_9_reg_4195;
wire    ap_CS_fsm_state33;
reg   [63:0] training_data_load_10_reg_4200;
wire   [63:0] empty_fu_2668_p1;
reg   [63:0] empty_reg_4215;
wire    ap_CS_fsm_state34;
wire   [63:0] empty_34_fu_2672_p1;
reg   [63:0] empty_34_reg_4220;
wire   [63:0] empty_35_fu_2676_p1;
reg   [63:0] empty_35_reg_4225;
wire   [63:0] empty_36_fu_2680_p1;
reg   [63:0] empty_36_reg_4230;
wire   [63:0] empty_37_fu_2684_p1;
reg   [63:0] empty_37_reg_4235;
wire   [63:0] empty_38_fu_2688_p1;
reg   [63:0] empty_38_reg_4240;
wire   [63:0] empty_39_fu_2692_p1;
reg   [63:0] empty_39_reg_4245;
wire   [63:0] empty_40_fu_2696_p1;
reg   [63:0] empty_40_reg_4250;
wire   [63:0] empty_41_fu_2700_p1;
reg   [63:0] empty_41_reg_4255;
wire   [63:0] empty_42_fu_2704_p1;
reg   [63:0] empty_42_reg_4260;
wire   [63:0] empty_43_fu_2708_p1;
reg   [63:0] empty_43_reg_4265;
wire   [63:0] empty_44_fu_2712_p1;
reg   [63:0] empty_44_reg_4270;
wire   [63:0] empty_45_fu_2717_p1;
reg   [63:0] empty_45_reg_4275;
reg   [63:0] activations1_load_reg_4280;
wire    ap_CS_fsm_state41;
reg   [63:0] activations1_load_1_reg_4285;
reg   [63:0] activations1_load_2_reg_4290;
wire    ap_CS_fsm_state42;
reg   [63:0] activations1_load_3_reg_4295;
reg   [63:0] activations1_load_4_reg_4300;
wire    ap_CS_fsm_state43;
reg   [63:0] activations1_load_5_reg_4305;
reg   [63:0] activations1_load_6_reg_4310;
wire    ap_CS_fsm_state44;
reg   [63:0] activations1_load_7_reg_4315;
reg   [63:0] activations1_load_8_reg_4320;
wire    ap_CS_fsm_state45;
reg   [63:0] activations1_load_9_reg_4325;
reg   [63:0] activations1_load_10_reg_4330;
wire    ap_CS_fsm_state46;
reg   [63:0] activations1_load_11_reg_4335;
reg   [63:0] activations1_load_12_reg_4340;
wire    ap_CS_fsm_state47;
reg   [63:0] activations1_load_13_reg_4345;
reg   [63:0] activations1_load_14_reg_4350;
wire    ap_CS_fsm_state48;
reg   [63:0] activations1_load_15_reg_4355;
reg   [63:0] activations1_load_16_reg_4360;
wire    ap_CS_fsm_state49;
reg   [63:0] activations1_load_17_reg_4365;
reg   [63:0] activations1_load_18_reg_4370;
wire    ap_CS_fsm_state50;
reg   [63:0] activations1_load_19_reg_4375;
reg   [63:0] activations1_load_20_reg_4380;
wire    ap_CS_fsm_state51;
reg   [63:0] activations1_load_21_reg_4385;
reg   [63:0] activations1_load_22_reg_4390;
wire    ap_CS_fsm_state52;
reg   [63:0] activations1_load_23_reg_4395;
reg   [63:0] activations1_load_24_reg_4400;
wire    ap_CS_fsm_state53;
reg   [63:0] activations1_load_25_reg_4405;
reg   [63:0] activations1_load_26_reg_4410;
wire    ap_CS_fsm_state54;
reg   [63:0] activations1_load_27_reg_4415;
reg   [63:0] activations1_load_28_reg_4420;
wire    ap_CS_fsm_state55;
reg   [63:0] activations1_load_29_reg_4425;
reg   [63:0] activations1_load_30_reg_4430;
wire    ap_CS_fsm_state56;
reg   [63:0] activations1_load_31_reg_4435;
reg   [63:0] activations1_load_32_reg_4440;
wire    ap_CS_fsm_state57;
reg   [63:0] activations1_load_33_reg_4445;
reg   [63:0] activations1_load_34_reg_4450;
wire    ap_CS_fsm_state58;
reg   [63:0] activations1_load_35_reg_4455;
reg   [63:0] activations1_load_36_reg_4460;
wire    ap_CS_fsm_state59;
reg   [63:0] activations1_load_37_reg_4465;
reg   [63:0] activations1_load_38_reg_4470;
wire    ap_CS_fsm_state60;
reg   [63:0] activations1_load_39_reg_4475;
reg   [63:0] activations1_load_40_reg_4480;
wire    ap_CS_fsm_state61;
reg   [63:0] activations1_load_41_reg_4485;
reg   [63:0] activations1_load_42_reg_4490;
wire    ap_CS_fsm_state62;
reg   [63:0] activations1_load_43_reg_4495;
reg   [63:0] activations1_load_44_reg_4500;
wire    ap_CS_fsm_state63;
reg   [63:0] activations1_load_45_reg_4505;
reg   [63:0] activations1_load_46_reg_4510;
wire    ap_CS_fsm_state64;
reg   [63:0] activations1_load_47_reg_4515;
reg   [63:0] activations1_load_48_reg_4520;
wire    ap_CS_fsm_state65;
reg   [63:0] activations1_load_49_reg_4525;
reg   [63:0] activations1_load_50_reg_4530;
wire    ap_CS_fsm_state66;
reg   [63:0] activations1_load_51_reg_4535;
reg   [63:0] activations1_load_52_reg_4540;
wire    ap_CS_fsm_state67;
reg   [63:0] activations1_load_53_reg_4545;
reg   [63:0] activations1_load_54_reg_4550;
wire    ap_CS_fsm_state68;
reg   [63:0] activations1_load_55_reg_4555;
reg   [63:0] activations1_load_56_reg_4560;
wire    ap_CS_fsm_state69;
reg   [63:0] activations1_load_57_reg_4565;
reg   [63:0] activations1_load_58_reg_4570;
wire    ap_CS_fsm_state70;
reg   [63:0] activations1_load_59_reg_4575;
reg   [63:0] activations1_load_60_reg_4580;
wire    ap_CS_fsm_state71;
reg   [63:0] activations1_load_61_reg_4585;
reg   [63:0] activations1_load_62_reg_4590;
wire    ap_CS_fsm_state72;
reg   [63:0] activations1_load_63_reg_4595;
reg   [63:0] activations2_load_reg_4600;
wire    ap_CS_fsm_state79;
reg   [63:0] activations2_load_1_reg_4605;
reg   [63:0] activations2_load_2_reg_4610;
wire    ap_CS_fsm_state80;
reg   [63:0] activations2_load_3_reg_4615;
reg   [63:0] activations2_load_4_reg_4620;
wire    ap_CS_fsm_state81;
reg   [63:0] activations2_load_5_reg_4625;
reg   [63:0] activations2_load_6_reg_4630;
wire    ap_CS_fsm_state82;
reg   [63:0] activations2_load_7_reg_4635;
reg   [63:0] activations2_load_8_reg_4640;
wire    ap_CS_fsm_state83;
reg   [63:0] activations2_load_9_reg_4645;
reg   [63:0] activations2_load_10_reg_4650;
wire    ap_CS_fsm_state84;
reg   [63:0] activations2_load_11_reg_4655;
reg   [63:0] activations2_load_12_reg_4660;
wire    ap_CS_fsm_state85;
reg   [63:0] activations2_load_13_reg_4665;
reg   [63:0] activations2_load_14_reg_4670;
wire    ap_CS_fsm_state86;
reg   [63:0] activations2_load_15_reg_4675;
reg   [63:0] activations2_load_16_reg_4680;
wire    ap_CS_fsm_state87;
reg   [63:0] activations2_load_17_reg_4685;
reg   [63:0] activations2_load_18_reg_4690;
wire    ap_CS_fsm_state88;
reg   [63:0] activations2_load_19_reg_4695;
reg   [63:0] activations2_load_20_reg_4700;
wire    ap_CS_fsm_state89;
reg   [63:0] activations2_load_21_reg_4705;
reg   [63:0] activations2_load_22_reg_4710;
wire    ap_CS_fsm_state90;
reg   [63:0] activations2_load_23_reg_4715;
reg   [63:0] activations2_load_24_reg_4720;
wire    ap_CS_fsm_state91;
reg   [63:0] activations2_load_25_reg_4725;
reg   [63:0] activations2_load_26_reg_4730;
wire    ap_CS_fsm_state92;
reg   [63:0] activations2_load_27_reg_4735;
reg   [63:0] activations2_load_28_reg_4740;
wire    ap_CS_fsm_state93;
reg   [63:0] activations2_load_29_reg_4745;
reg   [63:0] activations2_load_30_reg_4750;
wire    ap_CS_fsm_state94;
reg   [63:0] activations2_load_31_reg_4755;
reg   [63:0] activations2_load_32_reg_4760;
wire    ap_CS_fsm_state95;
reg   [63:0] activations2_load_33_reg_4765;
reg   [63:0] activations2_load_34_reg_4770;
wire    ap_CS_fsm_state96;
reg   [63:0] activations2_load_35_reg_4775;
reg   [63:0] activations2_load_36_reg_4780;
wire    ap_CS_fsm_state97;
reg   [63:0] activations2_load_37_reg_4785;
reg   [63:0] activations2_load_38_reg_4790;
wire    ap_CS_fsm_state98;
reg   [63:0] activations2_load_39_reg_4795;
reg   [63:0] activations2_load_40_reg_4800;
wire    ap_CS_fsm_state99;
reg   [63:0] activations2_load_41_reg_4805;
reg   [63:0] activations2_load_42_reg_4810;
wire    ap_CS_fsm_state100;
reg   [63:0] activations2_load_43_reg_4815;
reg   [63:0] activations2_load_44_reg_4820;
wire    ap_CS_fsm_state101;
reg   [63:0] activations2_load_45_reg_4825;
reg   [63:0] activations2_load_46_reg_4830;
wire    ap_CS_fsm_state102;
reg   [63:0] activations2_load_47_reg_4835;
reg   [63:0] activations2_load_48_reg_4840;
wire    ap_CS_fsm_state103;
reg   [63:0] activations2_load_49_reg_4845;
reg   [63:0] activations2_load_50_reg_4850;
wire    ap_CS_fsm_state104;
reg   [63:0] activations2_load_51_reg_4855;
reg   [63:0] activations2_load_52_reg_4860;
wire    ap_CS_fsm_state105;
reg   [63:0] activations2_load_53_reg_4865;
reg   [63:0] activations2_load_54_reg_4870;
wire    ap_CS_fsm_state106;
reg   [63:0] activations2_load_55_reg_4875;
reg   [63:0] activations2_load_56_reg_4880;
wire    ap_CS_fsm_state107;
reg   [63:0] activations2_load_57_reg_4885;
reg   [63:0] activations2_load_58_reg_4890;
wire    ap_CS_fsm_state108;
reg   [63:0] activations2_load_59_reg_4895;
reg   [63:0] activations2_load_60_reg_4900;
wire    ap_CS_fsm_state109;
reg   [63:0] activations2_load_61_reg_4905;
reg   [63:0] activations2_load_62_reg_4910;
wire    ap_CS_fsm_state110;
reg   [63:0] activations2_load_63_reg_4915;
wire   [8:0] sub_ln66_fu_2776_p2;
reg   [8:0] sub_ln66_reg_4950;
wire    ap_CS_fsm_state119;
reg   [63:0] oracle_activations2_load_reg_5000;
wire    ap_CS_fsm_state127;
reg   [63:0] oracle_activations2_load_1_reg_5005;
reg   [63:0] oracle_activations2_load_2_reg_5010;
wire    ap_CS_fsm_state128;
reg   [63:0] oracle_activations2_load_3_reg_5015;
reg   [63:0] oracle_activations2_load_4_reg_5020;
wire    ap_CS_fsm_state129;
reg   [63:0] oracle_activations2_load_5_reg_5025;
reg   [63:0] oracle_activations2_load_6_reg_5030;
wire    ap_CS_fsm_state130;
reg   [63:0] oracle_activations2_load_7_reg_5035;
reg   [63:0] oracle_activations2_load_8_reg_5040;
wire    ap_CS_fsm_state131;
reg   [63:0] oracle_activations2_load_9_reg_5045;
reg   [63:0] oracle_activations2_load_10_reg_5050;
wire    ap_CS_fsm_state132;
reg   [63:0] oracle_activations2_load_11_reg_5055;
reg   [63:0] oracle_activations2_load_12_reg_5060;
wire    ap_CS_fsm_state133;
reg   [63:0] oracle_activations2_load_13_reg_5065;
reg   [63:0] oracle_activations2_load_14_reg_5070;
wire    ap_CS_fsm_state134;
reg   [63:0] oracle_activations2_load_15_reg_5075;
reg   [63:0] oracle_activations2_load_16_reg_5080;
wire    ap_CS_fsm_state135;
reg   [63:0] oracle_activations2_load_17_reg_5085;
reg   [63:0] oracle_activations2_load_18_reg_5090;
wire    ap_CS_fsm_state136;
reg   [63:0] oracle_activations2_load_19_reg_5095;
reg   [63:0] oracle_activations2_load_20_reg_5100;
wire    ap_CS_fsm_state137;
reg   [63:0] oracle_activations2_load_21_reg_5105;
reg   [63:0] oracle_activations2_load_22_reg_5110;
wire    ap_CS_fsm_state138;
reg   [63:0] oracle_activations2_load_23_reg_5115;
reg   [63:0] oracle_activations2_load_24_reg_5120;
wire    ap_CS_fsm_state139;
reg   [63:0] oracle_activations2_load_25_reg_5125;
reg   [63:0] oracle_activations2_load_26_reg_5130;
wire    ap_CS_fsm_state140;
reg   [63:0] oracle_activations2_load_27_reg_5135;
reg   [63:0] oracle_activations2_load_28_reg_5140;
wire    ap_CS_fsm_state141;
reg   [63:0] oracle_activations2_load_29_reg_5145;
reg   [63:0] oracle_activations2_load_30_reg_5150;
wire    ap_CS_fsm_state142;
reg   [63:0] oracle_activations2_load_31_reg_5155;
reg   [63:0] oracle_activations2_load_32_reg_5160;
wire    ap_CS_fsm_state143;
reg   [63:0] oracle_activations2_load_33_reg_5165;
reg   [63:0] oracle_activations2_load_34_reg_5170;
wire    ap_CS_fsm_state144;
reg   [63:0] oracle_activations2_load_35_reg_5175;
reg   [63:0] oracle_activations2_load_36_reg_5180;
wire    ap_CS_fsm_state145;
reg   [63:0] oracle_activations2_load_37_reg_5185;
reg   [63:0] oracle_activations2_load_38_reg_5190;
wire    ap_CS_fsm_state146;
reg   [63:0] oracle_activations2_load_39_reg_5195;
reg   [63:0] oracle_activations2_load_40_reg_5200;
wire    ap_CS_fsm_state147;
reg   [63:0] oracle_activations2_load_41_reg_5205;
reg   [63:0] oracle_activations2_load_42_reg_5210;
wire    ap_CS_fsm_state148;
reg   [63:0] oracle_activations2_load_43_reg_5215;
reg   [63:0] oracle_activations2_load_44_reg_5220;
wire    ap_CS_fsm_state149;
reg   [63:0] oracle_activations2_load_45_reg_5225;
reg   [63:0] oracle_activations2_load_46_reg_5230;
wire    ap_CS_fsm_state150;
reg   [63:0] oracle_activations2_load_47_reg_5235;
reg   [63:0] oracle_activations2_load_48_reg_5240;
wire    ap_CS_fsm_state151;
reg   [63:0] oracle_activations2_load_49_reg_5245;
reg   [63:0] oracle_activations2_load_50_reg_5250;
wire    ap_CS_fsm_state152;
reg   [63:0] oracle_activations2_load_51_reg_5255;
reg   [63:0] oracle_activations2_load_52_reg_5260;
wire    ap_CS_fsm_state153;
reg   [63:0] oracle_activations2_load_53_reg_5265;
reg   [63:0] oracle_activations2_load_54_reg_5270;
wire    ap_CS_fsm_state154;
reg   [63:0] oracle_activations2_load_55_reg_5275;
reg   [63:0] oracle_activations2_load_56_reg_5280;
wire    ap_CS_fsm_state155;
reg   [63:0] oracle_activations2_load_57_reg_5285;
reg   [63:0] oracle_activations2_load_58_reg_5290;
wire    ap_CS_fsm_state156;
reg   [63:0] oracle_activations2_load_59_reg_5295;
reg   [63:0] oracle_activations2_load_60_reg_5300;
wire    ap_CS_fsm_state157;
reg   [63:0] oracle_activations2_load_61_reg_5305;
reg   [63:0] oracle_activations2_load_62_reg_5310;
wire    ap_CS_fsm_state158;
reg   [63:0] oracle_activations2_load_63_reg_5315;
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
reg   [5:0] oracle_activations2_address0;
reg    oracle_activations2_ce0;
reg    oracle_activations2_we0;
wire   [63:0] oracle_activations2_q0;
wire   [63:0] oracle_activations2_q1;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_start;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_done;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_idle;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_ready;
wire   [9:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_weights1_address0;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_weights1_ce0;
wire   [9:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_weights1_address1;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_weights1_ce1;
wire   [5:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_activations1_address0;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_activations1_ce0;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_activations1_d0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5329_p_ce;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5333_p_din0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5333_p_din1;
wire   [0:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5333_p_opcode;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5333_p_ce;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5337_p_din0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5337_p_din1;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5337_p_ce;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5341_p_din0;
wire   [63:0] grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5341_p_din1;
wire    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5341_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_ready;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_d0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_biases1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_biases1_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_grp_fu_5329_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_ready;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_d0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_dactivations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_dactivations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_dactivations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_dactivations1_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5329_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5333_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5333_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5333_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5333_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5337_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5337_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5337_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5345_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5345_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5345_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5349_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5349_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5349_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_ready;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_weights2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_weights2_ce0;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_weights2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_weights2_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_activations2_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5329_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5333_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5333_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5333_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5333_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5337_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5337_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5337_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5341_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5341_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5341_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_ready;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_d0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_biases2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_biases2_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_grp_fu_5329_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_ready;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_d0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_dactivations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_dactivations2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_dactivations2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_dactivations2_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5329_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5333_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5333_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5333_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5333_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5337_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5337_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5337_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5345_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5345_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5345_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5349_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5349_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5349_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_ready;
wire   [7:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_weights3_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_weights3_ce0;
wire   [7:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_weights3_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_weights3_ce1;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_5_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_5_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_4_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_4_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_3_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_3_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5329_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5333_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5333_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5333_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5333_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5337_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5337_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5337_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5341_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5341_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5341_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_2_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_2_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_1_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_1_o_ap_vld;
wire   [1:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_biases3_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_biases3_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_grp_fu_5329_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_2_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_2_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_1_o;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_1_o_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_23057_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_23057_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_12953_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_12953_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_02849_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_02849_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5329_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5333_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5333_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5333_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5333_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5337_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5337_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5337_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5345_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5345_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5345_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5349_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5349_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5349_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_sum_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_sum_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5329_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5349_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5349_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5349_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_ready;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_22745_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_22745_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_12641_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_12641_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_02537_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_02537_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5345_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5345_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5345_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5349_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5349_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5349_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_ready;
wire   [8:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_training_targets_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_training_targets_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_1_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_1_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_2_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_2_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_23372_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_23372_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_13267_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_13267_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_03162_out;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_03162_out_ap_vld;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5329_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5337_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5337_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5337_p_ce;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_start;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_done;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_idle;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_ready;
wire   [5:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_activations2_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_activations2_ce0;
wire   [7:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_delta_weights3_address0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_delta_weights3_ce0;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_delta_weights3_we0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_delta_weights3_d0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_grp_fu_5353_p_din0;
wire   [63:0] grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_grp_fu_5353_p_din1;
wire    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_grp_fu_5353_p_ce;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_ap_start;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_ap_done;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_ap_idle;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_ap_ready;
wire   [7:0] grp_backprop_Pipeline_activations2_loop_fu_2360_weights3_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_weights3_ce0;
wire   [7:0] grp_backprop_Pipeline_activations2_loop_fu_2360_weights3_address1;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_weights3_ce1;
wire   [5:0] grp_backprop_Pipeline_activations2_loop_fu_2360_oracle_activations2_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_oracle_activations2_ce0;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_oracle_activations2_we0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2360_oracle_activations2_d0;
wire   [5:0] grp_backprop_Pipeline_activations2_loop_fu_2360_dactivations2_address0;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_dactivations2_ce0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5329_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5333_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5333_p_din1;
wire   [0:0] grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5333_p_opcode;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5333_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5337_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5337_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5337_p_ce;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5341_p_din0;
wire   [63:0] grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5341_p_din1;
wire    grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5341_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_ready;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_activations1_ce0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_oracle_activations2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_oracle_activations2_ce0;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_delta_weights2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_delta_weights2_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_delta_weights2_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_delta_weights2_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_grp_fu_5337_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_grp_fu_5337_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_grp_fu_5337_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_ready;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_weights2_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_weights2_ce0;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_weights2_address1;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_weights2_ce1;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_oracle_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_oracle_activations1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_oracle_activations1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_oracle_activations1_d0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_dactivations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_dactivations1_ce0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5329_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5329_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5329_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5329_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5333_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5333_p_din1;
wire   [0:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5333_p_opcode;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5333_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5337_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5337_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5337_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5341_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5341_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5341_p_ce;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5353_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5353_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5353_p_ce;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_start;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_done;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_idle;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_ready;
wire   [11:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_training_data_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_training_data_ce0;
wire   [5:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_oracle_activations1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_oracle_activations1_ce0;
wire   [9:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_delta_weights1_address0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_delta_weights1_ce0;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_delta_weights1_we0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_delta_weights1_d0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_grp_fu_5337_p_din0;
wire   [63:0] grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_grp_fu_5337_p_din1;
wire    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_grp_fu_5337_p_ce;
wire    grp_update_weights_1_fu_2461_ap_start;
wire    grp_update_weights_1_fu_2461_ap_done;
wire    grp_update_weights_1_fu_2461_ap_idle;
wire    grp_update_weights_1_fu_2461_ap_ready;
wire   [9:0] grp_update_weights_1_fu_2461_weights1_address0;
wire    grp_update_weights_1_fu_2461_weights1_ce0;
wire    grp_update_weights_1_fu_2461_weights1_we0;
wire   [63:0] grp_update_weights_1_fu_2461_weights1_d0;
wire   [9:0] grp_update_weights_1_fu_2461_weights1_address1;
wire    grp_update_weights_1_fu_2461_weights1_ce1;
wire    grp_update_weights_1_fu_2461_weights1_we1;
wire   [63:0] grp_update_weights_1_fu_2461_weights1_d1;
wire   [11:0] grp_update_weights_1_fu_2461_weights2_address0;
wire    grp_update_weights_1_fu_2461_weights2_ce0;
wire    grp_update_weights_1_fu_2461_weights2_we0;
wire   [63:0] grp_update_weights_1_fu_2461_weights2_d0;
wire   [11:0] grp_update_weights_1_fu_2461_weights2_address1;
wire    grp_update_weights_1_fu_2461_weights2_ce1;
wire    grp_update_weights_1_fu_2461_weights2_we1;
wire   [63:0] grp_update_weights_1_fu_2461_weights2_d1;
wire   [7:0] grp_update_weights_1_fu_2461_weights3_address0;
wire    grp_update_weights_1_fu_2461_weights3_ce0;
wire    grp_update_weights_1_fu_2461_weights3_we0;
wire   [63:0] grp_update_weights_1_fu_2461_weights3_d0;
wire   [7:0] grp_update_weights_1_fu_2461_weights3_address1;
wire    grp_update_weights_1_fu_2461_weights3_ce1;
wire    grp_update_weights_1_fu_2461_weights3_we1;
wire   [63:0] grp_update_weights_1_fu_2461_weights3_d1;
wire   [9:0] grp_update_weights_1_fu_2461_d_weights1_address0;
wire    grp_update_weights_1_fu_2461_d_weights1_ce0;
wire   [9:0] grp_update_weights_1_fu_2461_d_weights1_address1;
wire    grp_update_weights_1_fu_2461_d_weights1_ce1;
wire   [11:0] grp_update_weights_1_fu_2461_d_weights2_address0;
wire    grp_update_weights_1_fu_2461_d_weights2_ce0;
wire   [11:0] grp_update_weights_1_fu_2461_d_weights2_address1;
wire    grp_update_weights_1_fu_2461_d_weights2_ce1;
wire   [7:0] grp_update_weights_1_fu_2461_d_weights3_address0;
wire    grp_update_weights_1_fu_2461_d_weights3_ce0;
wire   [7:0] grp_update_weights_1_fu_2461_d_weights3_address1;
wire    grp_update_weights_1_fu_2461_d_weights3_ce1;
wire   [5:0] grp_update_weights_1_fu_2461_biases1_address0;
wire    grp_update_weights_1_fu_2461_biases1_ce0;
wire    grp_update_weights_1_fu_2461_biases1_we0;
wire   [63:0] grp_update_weights_1_fu_2461_biases1_d0;
wire   [5:0] grp_update_weights_1_fu_2461_biases1_address1;
wire    grp_update_weights_1_fu_2461_biases1_ce1;
wire    grp_update_weights_1_fu_2461_biases1_we1;
wire   [63:0] grp_update_weights_1_fu_2461_biases1_d1;
wire   [5:0] grp_update_weights_1_fu_2461_biases2_address0;
wire    grp_update_weights_1_fu_2461_biases2_ce0;
wire    grp_update_weights_1_fu_2461_biases2_we0;
wire   [63:0] grp_update_weights_1_fu_2461_biases2_d0;
wire   [5:0] grp_update_weights_1_fu_2461_biases2_address1;
wire    grp_update_weights_1_fu_2461_biases2_ce1;
wire    grp_update_weights_1_fu_2461_biases2_we1;
wire   [63:0] grp_update_weights_1_fu_2461_biases2_d1;
wire   [1:0] grp_update_weights_1_fu_2461_biases3_address0;
wire    grp_update_weights_1_fu_2461_biases3_ce0;
wire    grp_update_weights_1_fu_2461_biases3_we0;
wire   [63:0] grp_update_weights_1_fu_2461_biases3_d0;
wire   [1:0] grp_update_weights_1_fu_2461_biases3_address1;
wire    grp_update_weights_1_fu_2461_biases3_ce1;
wire   [5:0] grp_update_weights_1_fu_2461_d_biases1_address0;
wire    grp_update_weights_1_fu_2461_d_biases1_ce0;
wire   [5:0] grp_update_weights_1_fu_2461_d_biases2_address0;
wire    grp_update_weights_1_fu_2461_d_biases2_ce0;
wire   [63:0] grp_update_weights_1_fu_2461_grp_fu_5329_p_din0;
wire   [63:0] grp_update_weights_1_fu_2461_grp_fu_5329_p_din1;
wire   [1:0] grp_update_weights_1_fu_2461_grp_fu_5329_p_opcode;
wire    grp_update_weights_1_fu_2461_grp_fu_5329_p_ce;
wire   [63:0] grp_update_weights_1_fu_2461_grp_fu_5333_p_din0;
wire   [63:0] grp_update_weights_1_fu_2461_grp_fu_5333_p_din1;
wire   [1:0] grp_update_weights_1_fu_2461_grp_fu_5333_p_opcode;
wire    grp_update_weights_1_fu_2461_grp_fu_5333_p_ce;
wire   [63:0] grp_update_weights_1_fu_2461_grp_fu_5337_p_din0;
wire   [63:0] grp_update_weights_1_fu_2461_grp_fu_5337_p_din1;
wire    grp_update_weights_1_fu_2461_grp_fu_5337_p_ce;
wire   [63:0] grp_update_weights_1_fu_2461_grp_fu_5341_p_din0;
wire   [63:0] grp_update_weights_1_fu_2461_grp_fu_5341_p_din1;
wire    grp_update_weights_1_fu_2461_grp_fu_5341_p_ce;
wire   [63:0] grp_update_weights_1_fu_2461_grp_fu_5353_p_din0;
wire   [63:0] grp_update_weights_1_fu_2461_grp_fu_5353_p_din1;
wire    grp_update_weights_1_fu_2461_grp_fu_5353_p_ce;
wire   [63:0] grp_update_weights_1_fu_2461_grp_fu_5345_p_din0;
wire   [63:0] grp_update_weights_1_fu_2461_grp_fu_5345_p_din1;
wire    grp_update_weights_1_fu_2461_grp_fu_5345_p_ce;
reg    grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_start_reg;
wire    ap_CS_fsm_state35;
reg    grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_start_reg;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_start_reg;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state39;
reg    grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_start_reg;
wire    ap_CS_fsm_state73;
reg    grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_start_reg;
wire    ap_CS_fsm_state74;
wire    ap_CS_fsm_state75;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_start_reg;
wire    ap_CS_fsm_state76;
wire    ap_CS_fsm_state77;
reg    grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_start_reg;
wire    ap_CS_fsm_state111;
reg   [63:0] activations3_2_fu_370;
reg   [63:0] activations3_fu_362;
reg   [63:0] activations3_1_fu_366;
reg    grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_start_reg;
wire    ap_CS_fsm_state112;
wire    ap_CS_fsm_state113;
reg    grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_start_reg;
wire    ap_CS_fsm_state114;
wire    ap_CS_fsm_state115;
reg    grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_start_reg;
wire    ap_CS_fsm_state116;
wire    ap_CS_fsm_state117;
reg    grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_start_reg;
wire    ap_CS_fsm_state118;
reg    grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_start_reg;
wire    ap_CS_fsm_state120;
wire    ap_CS_fsm_state121;
reg    grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_start_reg;
wire    ap_CS_fsm_state122;
wire    ap_CS_fsm_state123;
reg    grp_backprop_Pipeline_activations2_loop_fu_2360_ap_start_reg;
reg    grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_start_reg;
wire    ap_CS_fsm_state124;
wire    ap_CS_fsm_state125;
reg    grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_start_reg;
wire    ap_CS_fsm_state159;
reg    grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_start_reg;
wire    ap_CS_fsm_state160;
wire    ap_CS_fsm_state161;
reg    grp_update_weights_1_fu_2461_ap_start_reg;
wire    ap_CS_fsm_state162;
wire    ap_CS_fsm_state163;
wire   [63:0] zext_ln31_fu_2544_p1;
wire   [63:0] arrayidx10_sum_1_cast_fu_2553_p1;
wire   [63:0] arrayidx10_sum_2_cast_fu_2563_p1;
wire   [63:0] arrayidx10_sum_3_cast_fu_2573_p1;
wire   [63:0] arrayidx10_sum_4_cast_fu_2583_p1;
wire   [63:0] arrayidx10_sum_5_cast_fu_2593_p1;
wire   [63:0] arrayidx10_sum_6_cast_fu_2603_p1;
wire   [63:0] arrayidx10_sum_7_cast_fu_2613_p1;
wire   [63:0] arrayidx10_sum_8_cast_fu_2623_p1;
wire   [63:0] arrayidx10_sum_9_cast_fu_2633_p1;
wire   [63:0] arrayidx10_sum_10_cast_fu_2643_p1;
wire   [63:0] arrayidx10_sum_11_cast_fu_2653_p1;
wire   [63:0] arrayidx10_sum_12_cast_fu_2663_p1;
reg   [11:0] phi_mul40_fu_246;
wire   [11:0] add_ln220_1_fu_2501_p2;
wire   [0:0] icmp_ln220_fu_2507_p2;
reg   [7:0] i_fu_250;
wire   [7:0] add_ln220_fu_2513_p2;
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
reg    oracle_activations2_ce1_local;
wire    ap_CS_fsm_state126;
reg   [5:0] oracle_activations2_address1_local;
reg    oracle_activations2_ce0_local;
reg   [5:0] oracle_activations2_address0_local;
wire   [11:0] arrayidx10_sum_1_fu_2548_p2;
wire   [11:0] arrayidx10_sum_2_fu_2558_p2;
wire   [11:0] arrayidx10_sum_3_fu_2568_p2;
wire   [11:0] arrayidx10_sum_4_fu_2578_p2;
wire   [11:0] arrayidx10_sum_5_fu_2588_p2;
wire   [11:0] arrayidx10_sum_6_fu_2598_p2;
wire   [11:0] arrayidx10_sum_7_fu_2608_p2;
wire   [11:0] arrayidx10_sum_8_fu_2618_p2;
wire   [11:0] arrayidx10_sum_9_fu_2628_p2;
wire   [11:0] arrayidx10_sum_10_fu_2638_p2;
wire   [11:0] arrayidx10_sum_11_fu_2648_p2;
wire   [11:0] arrayidx10_sum_12_fu_2658_p2;
wire   [6:0] trunc_ln66_fu_2765_p1;
wire   [8:0] p_shl_fu_2768_p3;
wire   [8:0] zext_ln66_fu_2762_p1;
wire   [63:0] grp_fu_5329_p2;
reg   [63:0] grp_fu_5329_p0;
reg   [63:0] grp_fu_5329_p1;
reg   [1:0] grp_fu_5329_opcode;
reg    grp_fu_5329_ce;
wire   [63:0] grp_fu_5333_p2;
reg   [63:0] grp_fu_5333_p0;
reg   [63:0] grp_fu_5333_p1;
reg   [1:0] grp_fu_5333_opcode;
reg    grp_fu_5333_ce;
wire   [63:0] grp_fu_5337_p2;
reg   [63:0] grp_fu_5337_p0;
reg   [63:0] grp_fu_5337_p1;
reg    grp_fu_5337_ce;
wire   [63:0] grp_fu_5341_p2;
reg   [63:0] grp_fu_5341_p0;
reg   [63:0] grp_fu_5341_p1;
reg    grp_fu_5341_ce;
wire   [63:0] grp_fu_5345_p2;
reg   [63:0] grp_fu_5345_p0;
reg   [63:0] grp_fu_5345_p1;
reg    grp_fu_5345_ce;
wire   [63:0] grp_fu_5349_p2;
reg   [63:0] grp_fu_5349_p0;
reg   [63:0] grp_fu_5349_p1;
reg    grp_fu_5349_ce;
wire   [63:0] grp_fu_5353_p2;
reg   [63:0] grp_fu_5353_p0;
reg   [63:0] grp_fu_5353_p1;
reg    grp_fu_5353_ce;
reg   [162:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state131_blk;
wire    ap_ST_fsm_state132_blk;
wire    ap_ST_fsm_state133_blk;
wire    ap_ST_fsm_state134_blk;
wire    ap_ST_fsm_state135_blk;
wire    ap_ST_fsm_state136_blk;
wire    ap_ST_fsm_state137_blk;
wire    ap_ST_fsm_state138_blk;
wire    ap_ST_fsm_state139_blk;
wire    ap_ST_fsm_state140_blk;
wire    ap_ST_fsm_state141_blk;
wire    ap_ST_fsm_state142_blk;
wire    ap_ST_fsm_state143_blk;
wire    ap_ST_fsm_state144_blk;
wire    ap_ST_fsm_state145_blk;
wire    ap_ST_fsm_state146_blk;
wire    ap_ST_fsm_state147_blk;
wire    ap_ST_fsm_state148_blk;
wire    ap_ST_fsm_state149_blk;
wire    ap_ST_fsm_state150_blk;
wire    ap_ST_fsm_state151_blk;
wire    ap_ST_fsm_state152_blk;
wire    ap_ST_fsm_state153_blk;
wire    ap_ST_fsm_state154_blk;
wire    ap_ST_fsm_state155_blk;
wire    ap_ST_fsm_state156_blk;
wire    ap_ST_fsm_state157_blk;
wire    ap_ST_fsm_state158_blk;
reg    ap_ST_fsm_state159_blk;
wire    ap_ST_fsm_state160_blk;
reg    ap_ST_fsm_state161_blk;
wire    ap_ST_fsm_state162_blk;
reg    ap_ST_fsm_state163_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 163'd1;
#0 grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_start_reg = 1'b0;
#0 activations3_2_fu_370 = 64'd0;
#0 activations3_fu_362 = 64'd0;
#0 activations3_1_fu_366 = 64'd0;
#0 grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_activations2_loop_fu_2360_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_start_reg = 1'b0;
#0 grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_start_reg = 1'b0;
#0 grp_update_weights_1_fu_2461_ap_start_reg = 1'b0;
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
dactivations1_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations1_address0),.ce0(dactivations1_ce0),.we0(dactivations1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_dactivations1_d0),.q0(dactivations1_q0));
backprop_dactivations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 64 ),.AddressWidth( 6 ))
dactivations2_U(.clk(ap_clk),.reset(ap_rst),.address0(dactivations2_address0),.ce0(dactivations2_ce0),.we0(dactivations2_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_dactivations2_d0),.q0(dactivations2_q0));
backprop_delta_weights1_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 832 ),.AddressWidth( 10 ))
delta_weights1_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights1_address0),.ce0(delta_weights1_ce0),.we0(delta_weights1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_delta_weights1_d0),.q0(delta_weights1_q0),.address1(grp_update_weights_1_fu_2461_d_weights1_address1),.ce1(delta_weights1_ce1),.q1(delta_weights1_q1));
backprop_delta_weights2_RAM_1WNR_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 4096 ),.AddressWidth( 12 ))
delta_weights2_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights2_address0),.ce0(delta_weights2_ce0),.we0(delta_weights2_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_delta_weights2_d0),.q0(delta_weights2_q0),.address1(grp_update_weights_1_fu_2461_d_weights2_address1),.ce1(delta_weights2_ce1),.q1(delta_weights2_q1));
backprop_delta_weights3_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 192 ),.AddressWidth( 8 ))
delta_weights3_U(.clk(ap_clk),.reset(ap_rst),.address0(delta_weights3_address0),.ce0(delta_weights3_ce0),.we0(delta_weights3_we0),.d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_delta_weights3_d0),.q0(delta_weights3_q0),.address1(grp_update_weights_1_fu_2461_d_weights3_address1),.ce1(delta_weights3_ce1),.q1(delta_weights3_q1));
backprop_dactivations1_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 64 ),.AddressWidth( 6 ))
oracle_activations1_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations1_address0),.ce0(oracle_activations1_ce0),.we0(oracle_activations1_we0),.d0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_oracle_activations1_d0),.q0(oracle_activations1_q0));
backprop_oracle_activations2_RAM_AUTO_1R1W #(.DataWidth( 64 ),.AddressRange( 64 ),.AddressWidth( 6 ))
oracle_activations2_U(.clk(ap_clk),.reset(ap_rst),.address0(oracle_activations2_address0),.ce0(oracle_activations2_ce0),.we0(oracle_activations2_we0),.d0(grp_backprop_Pipeline_activations2_loop_fu_2360_oracle_activations2_d0),.q0(oracle_activations2_q0),.address1(oracle_activations2_address1_local),.ce1(oracle_activations2_ce1_local),.q1(oracle_activations2_q1));
backprop_backprop_Pipeline_mvp_product_input_loop grp_backprop_Pipeline_mvp_product_input_loop_fu_2082(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_start),.ap_done(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_done),.ap_idle(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_idle),.ap_ready(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_ready),.weights1_address0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_weights1_address0),.weights1_ce0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_weights1_ce0),.weights1_q0(weights1_q0),.weights1_address1(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_weights1_address1),.weights1_ce1(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_weights1_ce1),.weights1_q1(weights1_q1),.empty_22(empty_reg_4215),.empty_23(empty_34_reg_4220),.empty_24(empty_35_reg_4225),.empty_25(empty_36_reg_4230),.empty_26(empty_37_reg_4235),.empty_27(empty_38_reg_4240),.empty_28(empty_39_reg_4245),.empty_29(empty_40_reg_4250),.empty_30(empty_41_reg_4255),.empty_31(empty_42_reg_4260),.empty_32(empty_43_reg_4265),.empty_33(empty_44_reg_4270),.empty(empty_45_reg_4275),.activations1_address0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_activations1_ce0),.activations1_we0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_activations1_we0),.activations1_d0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_activations1_d0),.grp_fu_5329_p_din0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5329_p_ce),.grp_fu_5333_p_din0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5333_p_din0),.grp_fu_5333_p_din1(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5333_p_din1),.grp_fu_5333_p_opcode(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5333_p_opcode),.grp_fu_5333_p_dout0(grp_fu_5333_p2),.grp_fu_5333_p_ce(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5333_p_ce),.grp_fu_5337_p_din0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5337_p_din0),.grp_fu_5337_p_din1(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5337_p_din1),.grp_fu_5337_p_dout0(grp_fu_5337_p2),.grp_fu_5337_p_ce(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5337_p_ce),.grp_fu_5341_p_din0(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5341_p_din0),.grp_fu_5341_p_din1(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5341_p_din1),.grp_fu_5341_p_dout0(grp_fu_5341_p2),.grp_fu_5341_p_ce(grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5341_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_26_1 grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_ready),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_ce0),.activations1_we0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_we0),.activations1_d0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_d0),.activations1_address1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_address1),.activations1_ce1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_ce1),.activations1_q1(activations1_q1),.biases1_address0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_biases1_address0),.biases1_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_biases1_ce0),.biases1_q0(biases1_q0),.grp_fu_5329_p_din0(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_grp_fu_5329_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_1 grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_ready),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_ce0),.activations1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_we0),.activations1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_d0),.activations1_address1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_address1),.activations1_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_ce1),.activations1_q1(activations1_q1),.dactivations1_address0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_dactivations1_address0),.dactivations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_dactivations1_ce0),.dactivations1_we0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_dactivations1_we0),.dactivations1_d0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_dactivations1_d0),.grp_fu_5329_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5329_p_ce),.grp_fu_5333_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5333_p_din0),.grp_fu_5333_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5333_p_din1),.grp_fu_5333_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5333_p_opcode),.grp_fu_5333_p_dout0(grp_fu_5333_p2),.grp_fu_5333_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5333_p_ce),.grp_fu_5337_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5337_p_din0),.grp_fu_5337_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5337_p_din1),.grp_fu_5337_p_dout0(grp_fu_5337_p2),.grp_fu_5337_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5337_p_ce),.grp_fu_5345_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5345_p_din0),.grp_fu_5345_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5345_p_din1),.grp_fu_5345_p_dout0(grp_fu_5345_p2),.grp_fu_5345_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5345_p_ce),.grp_fu_5349_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5349_p_din0),.grp_fu_5349_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5349_p_din1),.grp_fu_5349_p_dout0(grp_fu_5349_p2),.grp_fu_5349_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5349_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_44_1 grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_ready),.weights2_address0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_weights2_address0),.weights2_ce0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_weights2_ce0),.weights2_q0(weights2_q0),.weights2_address1(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_weights2_address1),.weights2_ce1(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_weights2_ce1),.weights2_q1(weights2_q1),.activations1_load_66(activations1_load_reg_4280),.activations1_load_1(activations1_load_1_reg_4285),.activations1_load_2(activations1_load_2_reg_4290),.activations1_load_3(activations1_load_3_reg_4295),.activations1_load_4(activations1_load_4_reg_4300),.activations1_load_5(activations1_load_5_reg_4305),.activations1_load_6(activations1_load_6_reg_4310),.activations1_load_7(activations1_load_7_reg_4315),.activations1_load_8(activations1_load_8_reg_4320),.activations1_load_9(activations1_load_9_reg_4325),.activations1_load_10(activations1_load_10_reg_4330),.activations1_load_11(activations1_load_11_reg_4335),.activations1_load_12(activations1_load_12_reg_4340),.activations1_load_13(activations1_load_13_reg_4345),.activations1_load_14(activations1_load_14_reg_4350),.activations1_load_15(activations1_load_15_reg_4355),.activations1_load_16(activations1_load_16_reg_4360),.activations1_load_17(activations1_load_17_reg_4365),.activations1_load_18(activations1_load_18_reg_4370),.activations1_load_19(activations1_load_19_reg_4375),.activations1_load_20(activations1_load_20_reg_4380),.activations1_load_21(activations1_load_21_reg_4385),.activations1_load_22(activations1_load_22_reg_4390),.activations1_load_23(activations1_load_23_reg_4395),.activations1_load_24(activations1_load_24_reg_4400),.activations1_load_25(activations1_load_25_reg_4405),.activations1_load_26(activations1_load_26_reg_4410),.activations1_load_27(activations1_load_27_reg_4415),.activations1_load_28(activations1_load_28_reg_4420),.activations1_load_29(activations1_load_29_reg_4425),.activations1_load_30(activations1_load_30_reg_4430),.activations1_load_31(activations1_load_31_reg_4435),.activations1_load_32(activations1_load_32_reg_4440),.activations1_load_33(activations1_load_33_reg_4445),.activations1_load_34(activations1_load_34_reg_4450),.activations1_load_35(activations1_load_35_reg_4455),.activations1_load_36(activations1_load_36_reg_4460),.activations1_load_37(activations1_load_37_reg_4465),.activations1_load_38(activations1_load_38_reg_4470),.activations1_load_39(activations1_load_39_reg_4475),.activations1_load_40(activations1_load_40_reg_4480),.activations1_load_41(activations1_load_41_reg_4485),.activations1_load_42(activations1_load_42_reg_4490),.activations1_load_43(activations1_load_43_reg_4495),.activations1_load_44(activations1_load_44_reg_4500),.activations1_load_45(activations1_load_45_reg_4505),.activations1_load_46(activations1_load_46_reg_4510),.activations1_load_47(activations1_load_47_reg_4515),.activations1_load_48(activations1_load_48_reg_4520),.activations1_load_49(activations1_load_49_reg_4525),.activations1_load_50(activations1_load_50_reg_4530),.activations1_load_51(activations1_load_51_reg_4535),.activations1_load_52(activations1_load_52_reg_4540),.activations1_load_53(activations1_load_53_reg_4545),.activations1_load_54(activations1_load_54_reg_4550),.activations1_load_55(activations1_load_55_reg_4555),.activations1_load_56(activations1_load_56_reg_4560),.activations1_load_57(activations1_load_57_reg_4565),.activations1_load_58(activations1_load_58_reg_4570),.activations1_load_59(activations1_load_59_reg_4575),.activations1_load_60(activations1_load_60_reg_4580),.activations1_load_61(activations1_load_61_reg_4585),.activations1_load_62(activations1_load_62_reg_4590),.activations1_load_63(activations1_load_63_reg_4595),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_activations2_d0),.grp_fu_5329_p_din0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5329_p_ce),.grp_fu_5333_p_din0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5333_p_din0),.grp_fu_5333_p_din1(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5333_p_din1),.grp_fu_5333_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5333_p_opcode),.grp_fu_5333_p_dout0(grp_fu_5333_p2),.grp_fu_5333_p_ce(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5333_p_ce),.grp_fu_5337_p_din0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5337_p_din0),.grp_fu_5337_p_din1(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5337_p_din1),.grp_fu_5337_p_dout0(grp_fu_5337_p2),.grp_fu_5337_p_ce(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5337_p_ce),.grp_fu_5341_p_din0(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5341_p_din0),.grp_fu_5341_p_din1(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5341_p_din1),.grp_fu_5341_p_dout0(grp_fu_5341_p2),.grp_fu_5341_p_ce(grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5341_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_26_11 grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_ready),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_d0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_ce1),.activations2_q1(activations2_q1),.biases2_address0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_biases2_address0),.biases2_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_biases2_ce0),.biases2_q0(biases2_q0),.grp_fu_5329_p_din0(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_grp_fu_5329_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_12 grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_ready),.activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_ce0),.activations2_we0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_we0),.activations2_d0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_d0),.activations2_address1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_address1),.activations2_ce1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_ce1),.activations2_q1(activations2_q1),.dactivations2_address0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_dactivations2_address0),.dactivations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_dactivations2_ce0),.dactivations2_we0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_dactivations2_we0),.dactivations2_d0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_dactivations2_d0),.grp_fu_5329_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5329_p_ce),.grp_fu_5333_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5333_p_din0),.grp_fu_5333_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5333_p_din1),.grp_fu_5333_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5333_p_opcode),.grp_fu_5333_p_dout0(grp_fu_5333_p2),.grp_fu_5333_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5333_p_ce),.grp_fu_5337_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5337_p_din0),.grp_fu_5337_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5337_p_din1),.grp_fu_5337_p_dout0(grp_fu_5337_p2),.grp_fu_5337_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5337_p_ce),.grp_fu_5345_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5345_p_din0),.grp_fu_5345_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5345_p_din1),.grp_fu_5345_p_dout0(grp_fu_5345_p2),.grp_fu_5345_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5345_p_ce),.grp_fu_5349_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5349_p_din0),.grp_fu_5349_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5349_p_din1),.grp_fu_5349_p_dout0(grp_fu_5349_p2),.grp_fu_5349_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5349_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_55_1 grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_ready),.activations3_2_load(64'd0),.activations3_load(64'd0),.activations3_1_load(64'd0),.weights3_address0(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_weights3_address0),.weights3_ce0(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_weights3_ce0),.weights3_q0(weights3_q0),.weights3_address1(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_weights3_address1),.weights3_ce1(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_weights3_ce1),.weights3_q1(weights3_q1),.activations2_load_66(activations2_load_reg_4600),.activations2_load_1(activations2_load_1_reg_4605),.activations2_load_2(activations2_load_2_reg_4610),.activations2_load_3(activations2_load_3_reg_4615),.activations2_load_4(activations2_load_4_reg_4620),.activations2_load_5(activations2_load_5_reg_4625),.activations2_load_6(activations2_load_6_reg_4630),.activations2_load_7(activations2_load_7_reg_4635),.activations2_load_8(activations2_load_8_reg_4640),.activations2_load_9(activations2_load_9_reg_4645),.activations2_load_10(activations2_load_10_reg_4650),.activations2_load_11(activations2_load_11_reg_4655),.activations2_load_12(activations2_load_12_reg_4660),.activations2_load_13(activations2_load_13_reg_4665),.activations2_load_14(activations2_load_14_reg_4670),.activations2_load_15(activations2_load_15_reg_4675),.activations2_load_16(activations2_load_16_reg_4680),.activations2_load_17(activations2_load_17_reg_4685),.activations2_load_18(activations2_load_18_reg_4690),.activations2_load_19(activations2_load_19_reg_4695),.activations2_load_20(activations2_load_20_reg_4700),.activations2_load_21(activations2_load_21_reg_4705),.activations2_load_22(activations2_load_22_reg_4710),.activations2_load_23(activations2_load_23_reg_4715),.activations2_load_24(activations2_load_24_reg_4720),.activations2_load_25(activations2_load_25_reg_4725),.activations2_load_26(activations2_load_26_reg_4730),.activations2_load_27(activations2_load_27_reg_4735),.activations2_load_28(activations2_load_28_reg_4740),.activations2_load_29(activations2_load_29_reg_4745),.activations2_load_30(activations2_load_30_reg_4750),.activations2_load_31(activations2_load_31_reg_4755),.activations2_load_32(activations2_load_32_reg_4760),.activations2_load_33(activations2_load_33_reg_4765),.activations2_load_34(activations2_load_34_reg_4770),.activations2_load_35(activations2_load_35_reg_4775),.activations2_load_36(activations2_load_36_reg_4780),.activations2_load_37(activations2_load_37_reg_4785),.activations2_load_38(activations2_load_38_reg_4790),.activations2_load_39(activations2_load_39_reg_4795),.activations2_load_40(activations2_load_40_reg_4800),.activations2_load_41(activations2_load_41_reg_4805),.activations2_load_42(activations2_load_42_reg_4810),.activations2_load_43(activations2_load_43_reg_4815),.activations2_load_44(activations2_load_44_reg_4820),.activations2_load_45(activations2_load_45_reg_4825),.activations2_load_46(activations2_load_46_reg_4830),.activations2_load_47(activations2_load_47_reg_4835),.activations2_load_48(activations2_load_48_reg_4840),.activations2_load_49(activations2_load_49_reg_4845),.activations2_load_50(activations2_load_50_reg_4850),.activations2_load_51(activations2_load_51_reg_4855),.activations2_load_52(activations2_load_52_reg_4860),.activations2_load_53(activations2_load_53_reg_4865),.activations2_load_54(activations2_load_54_reg_4870),.activations2_load_55(activations2_load_55_reg_4875),.activations2_load_56(activations2_load_56_reg_4880),.activations2_load_57(activations2_load_57_reg_4885),.activations2_load_58(activations2_load_58_reg_4890),.activations2_load_59(activations2_load_59_reg_4895),.activations2_load_60(activations2_load_60_reg_4900),.activations2_load_61(activations2_load_61_reg_4905),.activations2_load_62(activations2_load_62_reg_4910),.activations2_load_63(activations2_load_63_reg_4915),.activations3_5_out(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_5_out),.activations3_5_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_5_out_ap_vld),.activations3_4_out(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_4_out),.activations3_4_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_4_out_ap_vld),.activations3_3_out(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_3_out),.activations3_3_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_3_out_ap_vld),.grp_fu_5329_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5329_p_ce),.grp_fu_5333_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5333_p_din0),.grp_fu_5333_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5333_p_din1),.grp_fu_5333_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5333_p_opcode),.grp_fu_5333_p_dout0(grp_fu_5333_p2),.grp_fu_5333_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5333_p_ce),.grp_fu_5337_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5337_p_din0),.grp_fu_5337_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5337_p_din1),.grp_fu_5337_p_dout0(grp_fu_5337_p2),.grp_fu_5337_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5337_p_ce),.grp_fu_5341_p_din0(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5341_p_din0),.grp_fu_5341_p_din1(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5341_p_din1),.grp_fu_5341_p_dout0(grp_fu_5341_p2),.grp_fu_5341_p_ce(grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5341_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_26_13 grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_ready),.activations3_i(activations3_fu_362),.activations3_o(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_o),.activations3_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_o_ap_vld),.activations3_2_i(activations3_2_fu_370),.activations3_2_o(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_2_o),.activations3_2_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_2_o_ap_vld),.activations3_1_i(activations3_1_fu_366),.activations3_1_o(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_1_o),.activations3_1_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_1_o_ap_vld),.biases3_address0(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_biases3_address0),.biases3_ce0(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_biases3_ce0),.biases3_q0(biases3_q0),.grp_fu_5329_p_din0(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_grp_fu_5329_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_18_14 grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_ready),.mux_case_23059(mux_case_23059_fu_274),.mux_case_12955(mux_case_12955_fu_270),.mux_case_02851(mux_case_02851_fu_266),.activations3_i(activations3_fu_362),.activations3_o(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_o),.activations3_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_o_ap_vld),.activations3_2_i(activations3_2_fu_370),.activations3_2_o(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_2_o),.activations3_2_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_2_o_ap_vld),.activations3_1_i(activations3_1_fu_366),.activations3_1_o(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_1_o),.activations3_1_o_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_1_o_ap_vld),.mux_case_23057_out(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_23057_out),.mux_case_23057_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_23057_out_ap_vld),.mux_case_12953_out(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_12953_out),.mux_case_12953_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_12953_out_ap_vld),.mux_case_02849_out(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_02849_out),.mux_case_02849_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_02849_out_ap_vld),.grp_fu_5329_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5329_p_ce),.grp_fu_5333_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5333_p_din0),.grp_fu_5333_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5333_p_din1),.grp_fu_5333_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5333_p_opcode),.grp_fu_5333_p_dout0(grp_fu_5333_p2),.grp_fu_5333_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5333_p_ce),.grp_fu_5337_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5337_p_din0),.grp_fu_5337_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5337_p_din1),.grp_fu_5337_p_dout0(grp_fu_5337_p2),.grp_fu_5337_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5337_p_ce),.grp_fu_5345_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5345_p_din0),.grp_fu_5345_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5345_p_din1),.grp_fu_5345_p_dout0(grp_fu_5345_p2),.grp_fu_5345_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5345_p_ce),.grp_fu_5349_p_din0(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5349_p_din0),.grp_fu_5349_p_din1(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5349_p_din1),.grp_fu_5349_p_dout0(grp_fu_5349_p2),.grp_fu_5349_p_ce(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5349_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_8_1 grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_ready),.activations3_load_2(activations3_fu_362),.activations3_1_load_2(activations3_1_fu_366),.activations3_2_load_2(activations3_2_fu_370),.sum_out(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_sum_out),.sum_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_sum_out_ap_vld),.grp_fu_5329_p_din0(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5329_p_ce),.grp_fu_5349_p_din0(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5349_p_din0),.grp_fu_5349_p_din1(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5349_p_din1),.grp_fu_5349_p_dout0(grp_fu_5349_p2),.grp_fu_5349_p_ce(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5349_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_11_2 grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_ready),.mux_case_22747(mux_case_22747_fu_262),.mux_case_12643(mux_case_12643_fu_258),.mux_case_02539(mux_case_02539_fu_254),.activations3_load_2(activations3_fu_362),.activations3_1_load_2(activations3_1_fu_366),.activations3_2_load_2(activations3_2_fu_370),.sum_reload(grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_sum_out),.mux_case_22745_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_22745_out),.mux_case_22745_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_22745_out_ap_vld),.mux_case_12641_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_12641_out),.mux_case_12641_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_12641_out_ap_vld),.mux_case_02537_out(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_02537_out),.mux_case_02537_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_02537_out_ap_vld),.grp_fu_5345_p_din0(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5345_p_din0),.grp_fu_5345_p_din1(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5345_p_din1),.grp_fu_5345_p_dout0(grp_fu_5345_p2),.grp_fu_5345_p_ce(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5345_p_ce),.grp_fu_5349_p_din0(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5349_p_din0),.grp_fu_5349_p_din1(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5349_p_din1),.grp_fu_5349_p_dout0(grp_fu_5349_p2),.grp_fu_5349_p_ce(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5349_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_66_1 grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_ready),.output_difference_2_promoted(output_difference_2_promoted_fu_298),.output_difference_0_promoted(output_difference_0_promoted_fu_294),.output_difference_1_promoted(output_difference_1_promoted_fu_290),.mux_case_23374(mux_case_23374_fu_286),.mux_case_13269(mux_case_13269_fu_282),.mux_case_03164(mux_case_03164_fu_278),.mux_case_02537_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_02537_out),.mux_case_12641_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_12641_out),.mux_case_22745_reload(grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_22745_out),.mul_ln66(sub_ln66_reg_4950),.training_targets_address0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_training_targets_address0),.training_targets_ce0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_training_targets_ce0),.training_targets_q0(training_targets_q0),.mux_case_02849_reload(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_02849_out),.mux_case_12953_reload(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_12953_out),.mux_case_23057_reload(grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_23057_out),.output_difference_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_out),.output_difference_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_out_ap_vld),.output_difference_1_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_1_out),.output_difference_1_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_1_out_ap_vld),.output_difference_2_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_2_out),.output_difference_2_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_2_out_ap_vld),.mux_case_23372_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_23372_out),.mux_case_23372_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_23372_out_ap_vld),.mux_case_13267_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_13267_out),.mux_case_13267_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_13267_out_ap_vld),.mux_case_03162_out(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_03162_out),.mux_case_03162_out_ap_vld(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_03162_out_ap_vld),.grp_fu_5329_p_din0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5329_p_ce),.grp_fu_5337_p_din0(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5337_p_din0),.grp_fu_5337_p_din1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5337_p_din1),.grp_fu_5337_p_dout0(grp_fu_5337_p2),.grp_fu_5337_p_ce(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5337_p_ce));
backprop_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1 grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_start),.ap_done(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_done),.ap_idle(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_idle),.ap_ready(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_ready),.activations2_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_activations2_address0),.activations2_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_activations2_ce0),.activations2_q0(activations2_q0),.mux_case_03162_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_03162_out),.mux_case_13267_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_13267_out),.mux_case_23372_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_23372_out),.delta_weights3_address0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_delta_weights3_address0),.delta_weights3_ce0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_delta_weights3_ce0),.delta_weights3_we0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_delta_weights3_we0),.delta_weights3_d0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_delta_weights3_d0),.grp_fu_5353_p_din0(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_grp_fu_5353_p_din0),.grp_fu_5353_p_din1(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_grp_fu_5353_p_din1),.grp_fu_5353_p_dout0(grp_fu_5353_p2),.grp_fu_5353_p_ce(grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_grp_fu_5353_p_ce));
backprop_backprop_Pipeline_activations2_loop grp_backprop_Pipeline_activations2_loop_fu_2360(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_activations2_loop_fu_2360_ap_start),.ap_done(grp_backprop_Pipeline_activations2_loop_fu_2360_ap_done),.ap_idle(grp_backprop_Pipeline_activations2_loop_fu_2360_ap_idle),.ap_ready(grp_backprop_Pipeline_activations2_loop_fu_2360_ap_ready),.weights3_address0(grp_backprop_Pipeline_activations2_loop_fu_2360_weights3_address0),.weights3_ce0(grp_backprop_Pipeline_activations2_loop_fu_2360_weights3_ce0),.weights3_q0(weights3_q0),.weights3_address1(grp_backprop_Pipeline_activations2_loop_fu_2360_weights3_address1),.weights3_ce1(grp_backprop_Pipeline_activations2_loop_fu_2360_weights3_ce1),.weights3_q1(weights3_q1),.mux_case_03162_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_03162_out),.mux_case_13267_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_13267_out),.mux_case_23372_reload(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_23372_out),.oracle_activations2_address0(grp_backprop_Pipeline_activations2_loop_fu_2360_oracle_activations2_address0),.oracle_activations2_ce0(grp_backprop_Pipeline_activations2_loop_fu_2360_oracle_activations2_ce0),.oracle_activations2_we0(grp_backprop_Pipeline_activations2_loop_fu_2360_oracle_activations2_we0),.oracle_activations2_d0(grp_backprop_Pipeline_activations2_loop_fu_2360_oracle_activations2_d0),.dactivations2_address0(grp_backprop_Pipeline_activations2_loop_fu_2360_dactivations2_address0),.dactivations2_ce0(grp_backprop_Pipeline_activations2_loop_fu_2360_dactivations2_ce0),.dactivations2_q0(dactivations2_q0),.grp_fu_5329_p_din0(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5329_p_ce),.grp_fu_5333_p_din0(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5333_p_din0),.grp_fu_5333_p_din1(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5333_p_din1),.grp_fu_5333_p_opcode(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5333_p_opcode),.grp_fu_5333_p_dout0(grp_fu_5333_p2),.grp_fu_5333_p_ce(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5333_p_ce),.grp_fu_5337_p_din0(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5337_p_din0),.grp_fu_5337_p_din1(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5337_p_din1),.grp_fu_5337_p_dout0(grp_fu_5337_p2),.grp_fu_5337_p_ce(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5337_p_ce),.grp_fu_5341_p_din0(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5341_p_din0),.grp_fu_5341_p_din1(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5341_p_din1),.grp_fu_5341_p_dout0(grp_fu_5341_p2),.grp_fu_5341_p_ce(grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5341_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_ready),.activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_activations1_address0),.activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_activations1_ce0),.activations1_q0(activations1_q0),.oracle_activations2_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_oracle_activations2_address0),.oracle_activations2_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_oracle_activations2_ce0),.oracle_activations2_q0(oracle_activations2_q0),.delta_weights2_address0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_delta_weights2_address0),.delta_weights2_ce0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_delta_weights2_ce0),.delta_weights2_we0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_delta_weights2_we0),.delta_weights2_d0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_delta_weights2_d0),.grp_fu_5337_p_din0(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_grp_fu_5337_p_din0),.grp_fu_5337_p_din1(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_grp_fu_5337_p_din1),.grp_fu_5337_p_dout0(grp_fu_5337_p2),.grp_fu_5337_p_ce(grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_grp_fu_5337_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_102_1 grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_ready),.weights2_address0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_weights2_address0),.weights2_ce0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_weights2_ce0),.weights2_q0(weights2_q0),.weights2_address1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_weights2_address1),.weights2_ce1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_weights2_ce1),.weights2_q1(weights2_q1),.oracle_activations2_load(oracle_activations2_load_reg_5000),.oracle_activations2_load_1(oracle_activations2_load_1_reg_5005),.oracle_activations2_load_2(oracle_activations2_load_2_reg_5010),.oracle_activations2_load_3(oracle_activations2_load_3_reg_5015),.oracle_activations2_load_4(oracle_activations2_load_4_reg_5020),.oracle_activations2_load_5(oracle_activations2_load_5_reg_5025),.oracle_activations2_load_6(oracle_activations2_load_6_reg_5030),.oracle_activations2_load_7(oracle_activations2_load_7_reg_5035),.oracle_activations2_load_8(oracle_activations2_load_8_reg_5040),.oracle_activations2_load_9(oracle_activations2_load_9_reg_5045),.oracle_activations2_load_10(oracle_activations2_load_10_reg_5050),.oracle_activations2_load_11(oracle_activations2_load_11_reg_5055),.oracle_activations2_load_12(oracle_activations2_load_12_reg_5060),.oracle_activations2_load_13(oracle_activations2_load_13_reg_5065),.oracle_activations2_load_14(oracle_activations2_load_14_reg_5070),.oracle_activations2_load_15(oracle_activations2_load_15_reg_5075),.oracle_activations2_load_16(oracle_activations2_load_16_reg_5080),.oracle_activations2_load_17(oracle_activations2_load_17_reg_5085),.oracle_activations2_load_18(oracle_activations2_load_18_reg_5090),.oracle_activations2_load_19(oracle_activations2_load_19_reg_5095),.oracle_activations2_load_20(oracle_activations2_load_20_reg_5100),.oracle_activations2_load_21(oracle_activations2_load_21_reg_5105),.oracle_activations2_load_22(oracle_activations2_load_22_reg_5110),.oracle_activations2_load_23(oracle_activations2_load_23_reg_5115),.oracle_activations2_load_24(oracle_activations2_load_24_reg_5120),.oracle_activations2_load_25(oracle_activations2_load_25_reg_5125),.oracle_activations2_load_26(oracle_activations2_load_26_reg_5130),.oracle_activations2_load_27(oracle_activations2_load_27_reg_5135),.oracle_activations2_load_28(oracle_activations2_load_28_reg_5140),.oracle_activations2_load_29(oracle_activations2_load_29_reg_5145),.oracle_activations2_load_30(oracle_activations2_load_30_reg_5150),.oracle_activations2_load_31(oracle_activations2_load_31_reg_5155),.oracle_activations2_load_32(oracle_activations2_load_32_reg_5160),.oracle_activations2_load_33(oracle_activations2_load_33_reg_5165),.oracle_activations2_load_34(oracle_activations2_load_34_reg_5170),.oracle_activations2_load_35(oracle_activations2_load_35_reg_5175),.oracle_activations2_load_36(oracle_activations2_load_36_reg_5180),.oracle_activations2_load_37(oracle_activations2_load_37_reg_5185),.oracle_activations2_load_38(oracle_activations2_load_38_reg_5190),.oracle_activations2_load_39(oracle_activations2_load_39_reg_5195),.oracle_activations2_load_40(oracle_activations2_load_40_reg_5200),.oracle_activations2_load_41(oracle_activations2_load_41_reg_5205),.oracle_activations2_load_42(oracle_activations2_load_42_reg_5210),.oracle_activations2_load_43(oracle_activations2_load_43_reg_5215),.oracle_activations2_load_44(oracle_activations2_load_44_reg_5220),.oracle_activations2_load_45(oracle_activations2_load_45_reg_5225),.oracle_activations2_load_46(oracle_activations2_load_46_reg_5230),.oracle_activations2_load_47(oracle_activations2_load_47_reg_5235),.oracle_activations2_load_48(oracle_activations2_load_48_reg_5240),.oracle_activations2_load_49(oracle_activations2_load_49_reg_5245),.oracle_activations2_load_50(oracle_activations2_load_50_reg_5250),.oracle_activations2_load_51(oracle_activations2_load_51_reg_5255),.oracle_activations2_load_52(oracle_activations2_load_52_reg_5260),.oracle_activations2_load_53(oracle_activations2_load_53_reg_5265),.oracle_activations2_load_54(oracle_activations2_load_54_reg_5270),.oracle_activations2_load_55(oracle_activations2_load_55_reg_5275),.oracle_activations2_load_56(oracle_activations2_load_56_reg_5280),.oracle_activations2_load_57(oracle_activations2_load_57_reg_5285),.oracle_activations2_load_58(oracle_activations2_load_58_reg_5290),.oracle_activations2_load_59(oracle_activations2_load_59_reg_5295),.oracle_activations2_load_60(oracle_activations2_load_60_reg_5300),.oracle_activations2_load_61(oracle_activations2_load_61_reg_5305),.oracle_activations2_load_62(oracle_activations2_load_62_reg_5310),.oracle_activations2_load_63(oracle_activations2_load_63_reg_5315),.oracle_activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_oracle_activations1_address0),.oracle_activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_oracle_activations1_ce0),.oracle_activations1_we0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_oracle_activations1_we0),.oracle_activations1_d0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_oracle_activations1_d0),.dactivations1_address0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_dactivations1_address0),.dactivations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_dactivations1_ce0),.dactivations1_q0(dactivations1_q0),.grp_fu_5329_p_din0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5329_p_ce),.grp_fu_5333_p_din0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5333_p_din0),.grp_fu_5333_p_din1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5333_p_din1),.grp_fu_5333_p_opcode(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5333_p_opcode),.grp_fu_5333_p_dout0(grp_fu_5333_p2),.grp_fu_5333_p_ce(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5333_p_ce),.grp_fu_5337_p_din0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5337_p_din0),.grp_fu_5337_p_din1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5337_p_din1),.grp_fu_5337_p_dout0(grp_fu_5337_p2),.grp_fu_5337_p_ce(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5337_p_ce),.grp_fu_5341_p_din0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5341_p_din0),.grp_fu_5341_p_din1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5341_p_din1),.grp_fu_5341_p_dout0(grp_fu_5341_p2),.grp_fu_5341_p_ce(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5341_p_ce),.grp_fu_5353_p_din0(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5353_p_din0),.grp_fu_5353_p_din1(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5353_p_din1),.grp_fu_5353_p_dout0(grp_fu_5353_p2),.grp_fu_5353_p_ce(grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5353_p_ce));
backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_start),.ap_done(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_done),.ap_idle(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_idle),.ap_ready(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_ready),.phi_mul40(phi_mul40_load_reg_4068),.training_data_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_training_data_address0),.training_data_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_training_data_ce0),.training_data_q0(training_data_q0),.oracle_activations1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_oracle_activations1_address0),.oracle_activations1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_oracle_activations1_ce0),.oracle_activations1_q0(oracle_activations1_q0),.delta_weights1_address0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_delta_weights1_address0),.delta_weights1_ce0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_delta_weights1_ce0),.delta_weights1_we0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_delta_weights1_we0),.delta_weights1_d0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_delta_weights1_d0),.grp_fu_5337_p_din0(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_grp_fu_5337_p_din0),.grp_fu_5337_p_din1(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_grp_fu_5337_p_din1),.grp_fu_5337_p_dout0(grp_fu_5337_p2),.grp_fu_5337_p_ce(grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_grp_fu_5337_p_ce));
backprop_update_weights_1 grp_update_weights_1_fu_2461(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_update_weights_1_fu_2461_ap_start),.ap_done(grp_update_weights_1_fu_2461_ap_done),.ap_idle(grp_update_weights_1_fu_2461_ap_idle),.ap_ready(grp_update_weights_1_fu_2461_ap_ready),.weights1_address0(grp_update_weights_1_fu_2461_weights1_address0),.weights1_ce0(grp_update_weights_1_fu_2461_weights1_ce0),.weights1_we0(grp_update_weights_1_fu_2461_weights1_we0),.weights1_d0(grp_update_weights_1_fu_2461_weights1_d0),.weights1_q0(weights1_q0),.weights1_address1(grp_update_weights_1_fu_2461_weights1_address1),.weights1_ce1(grp_update_weights_1_fu_2461_weights1_ce1),.weights1_we1(grp_update_weights_1_fu_2461_weights1_we1),.weights1_d1(grp_update_weights_1_fu_2461_weights1_d1),.weights1_q1(weights1_q1),.weights2_address0(grp_update_weights_1_fu_2461_weights2_address0),.weights2_ce0(grp_update_weights_1_fu_2461_weights2_ce0),.weights2_we0(grp_update_weights_1_fu_2461_weights2_we0),.weights2_d0(grp_update_weights_1_fu_2461_weights2_d0),.weights2_q0(weights2_q0),.weights2_address1(grp_update_weights_1_fu_2461_weights2_address1),.weights2_ce1(grp_update_weights_1_fu_2461_weights2_ce1),.weights2_we1(grp_update_weights_1_fu_2461_weights2_we1),.weights2_d1(grp_update_weights_1_fu_2461_weights2_d1),.weights2_q1(weights2_q1),.weights3_address0(grp_update_weights_1_fu_2461_weights3_address0),.weights3_ce0(grp_update_weights_1_fu_2461_weights3_ce0),.weights3_we0(grp_update_weights_1_fu_2461_weights3_we0),.weights3_d0(grp_update_weights_1_fu_2461_weights3_d0),.weights3_q0(weights3_q0),.weights3_address1(grp_update_weights_1_fu_2461_weights3_address1),.weights3_ce1(grp_update_weights_1_fu_2461_weights3_ce1),.weights3_we1(grp_update_weights_1_fu_2461_weights3_we1),.weights3_d1(grp_update_weights_1_fu_2461_weights3_d1),.weights3_q1(weights3_q1),.d_weights1_address0(grp_update_weights_1_fu_2461_d_weights1_address0),.d_weights1_ce0(grp_update_weights_1_fu_2461_d_weights1_ce0),.d_weights1_q0(delta_weights1_q0),.d_weights1_address1(grp_update_weights_1_fu_2461_d_weights1_address1),.d_weights1_ce1(grp_update_weights_1_fu_2461_d_weights1_ce1),.d_weights1_q1(delta_weights1_q1),.d_weights2_address0(grp_update_weights_1_fu_2461_d_weights2_address0),.d_weights2_ce0(grp_update_weights_1_fu_2461_d_weights2_ce0),.d_weights2_q0(delta_weights2_q0),.d_weights2_address1(grp_update_weights_1_fu_2461_d_weights2_address1),.d_weights2_ce1(grp_update_weights_1_fu_2461_d_weights2_ce1),.d_weights2_q1(delta_weights2_q1),.d_weights3_address0(grp_update_weights_1_fu_2461_d_weights3_address0),.d_weights3_ce0(grp_update_weights_1_fu_2461_d_weights3_ce0),.d_weights3_q0(delta_weights3_q0),.d_weights3_address1(grp_update_weights_1_fu_2461_d_weights3_address1),.d_weights3_ce1(grp_update_weights_1_fu_2461_d_weights3_ce1),.d_weights3_q1(delta_weights3_q1),.biases1_address0(grp_update_weights_1_fu_2461_biases1_address0),.biases1_ce0(grp_update_weights_1_fu_2461_biases1_ce0),.biases1_we0(grp_update_weights_1_fu_2461_biases1_we0),.biases1_d0(grp_update_weights_1_fu_2461_biases1_d0),.biases1_q0(biases1_q0),.biases1_address1(grp_update_weights_1_fu_2461_biases1_address1),.biases1_ce1(grp_update_weights_1_fu_2461_biases1_ce1),.biases1_we1(grp_update_weights_1_fu_2461_biases1_we1),.biases1_d1(grp_update_weights_1_fu_2461_biases1_d1),.biases2_address0(grp_update_weights_1_fu_2461_biases2_address0),.biases2_ce0(grp_update_weights_1_fu_2461_biases2_ce0),.biases2_we0(grp_update_weights_1_fu_2461_biases2_we0),.biases2_d0(grp_update_weights_1_fu_2461_biases2_d0),.biases2_q0(biases2_q0),.biases2_address1(grp_update_weights_1_fu_2461_biases2_address1),.biases2_ce1(grp_update_weights_1_fu_2461_biases2_ce1),.biases2_we1(grp_update_weights_1_fu_2461_biases2_we1),.biases2_d1(grp_update_weights_1_fu_2461_biases2_d1),.biases3_address0(grp_update_weights_1_fu_2461_biases3_address0),.biases3_ce0(grp_update_weights_1_fu_2461_biases3_ce0),.biases3_we0(grp_update_weights_1_fu_2461_biases3_we0),.biases3_d0(grp_update_weights_1_fu_2461_biases3_d0),.biases3_q0(biases3_q0),.biases3_address1(grp_update_weights_1_fu_2461_biases3_address1),.biases3_ce1(grp_update_weights_1_fu_2461_biases3_ce1),.biases3_q1(biases3_q1),.d_biases1_address0(grp_update_weights_1_fu_2461_d_biases1_address0),.d_biases1_ce0(grp_update_weights_1_fu_2461_d_biases1_ce0),.d_biases1_q0(oracle_activations1_q0),.d_biases2_address0(grp_update_weights_1_fu_2461_d_biases2_address0),.d_biases2_ce0(grp_update_weights_1_fu_2461_d_biases2_ce0),.d_biases2_q0(oracle_activations2_q0),.p_read(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_1_out),.p_read1(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_2_out),.p_read2(grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_out),.grp_fu_5329_p_din0(grp_update_weights_1_fu_2461_grp_fu_5329_p_din0),.grp_fu_5329_p_din1(grp_update_weights_1_fu_2461_grp_fu_5329_p_din1),.grp_fu_5329_p_opcode(grp_update_weights_1_fu_2461_grp_fu_5329_p_opcode),.grp_fu_5329_p_dout0(grp_fu_5329_p2),.grp_fu_5329_p_ce(grp_update_weights_1_fu_2461_grp_fu_5329_p_ce),.grp_fu_5333_p_din0(grp_update_weights_1_fu_2461_grp_fu_5333_p_din0),.grp_fu_5333_p_din1(grp_update_weights_1_fu_2461_grp_fu_5333_p_din1),.grp_fu_5333_p_opcode(grp_update_weights_1_fu_2461_grp_fu_5333_p_opcode),.grp_fu_5333_p_dout0(grp_fu_5333_p2),.grp_fu_5333_p_ce(grp_update_weights_1_fu_2461_grp_fu_5333_p_ce),.grp_fu_5337_p_din0(grp_update_weights_1_fu_2461_grp_fu_5337_p_din0),.grp_fu_5337_p_din1(grp_update_weights_1_fu_2461_grp_fu_5337_p_din1),.grp_fu_5337_p_dout0(grp_fu_5337_p2),.grp_fu_5337_p_ce(grp_update_weights_1_fu_2461_grp_fu_5337_p_ce),.grp_fu_5341_p_din0(grp_update_weights_1_fu_2461_grp_fu_5341_p_din0),.grp_fu_5341_p_din1(grp_update_weights_1_fu_2461_grp_fu_5341_p_din1),.grp_fu_5341_p_dout0(grp_fu_5341_p2),.grp_fu_5341_p_ce(grp_update_weights_1_fu_2461_grp_fu_5341_p_ce),.grp_fu_5353_p_din0(grp_update_weights_1_fu_2461_grp_fu_5353_p_din0),.grp_fu_5353_p_din1(grp_update_weights_1_fu_2461_grp_fu_5353_p_din1),.grp_fu_5353_p_dout0(grp_fu_5353_p2),.grp_fu_5353_p_ce(grp_update_weights_1_fu_2461_grp_fu_5353_p_ce),.grp_fu_5345_p_din0(grp_update_weights_1_fu_2461_grp_fu_5345_p_din0),.grp_fu_5345_p_din1(grp_update_weights_1_fu_2461_grp_fu_5345_p_din1),.grp_fu_5345_p_dout0(grp_fu_5345_p2),.grp_fu_5345_p_ce(grp_update_weights_1_fu_2461_grp_fu_5345_p_ce));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U537(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5329_p0),.din1(grp_fu_5329_p1),.opcode(grp_fu_5329_opcode),.ce(grp_fu_5329_ce),.dout(grp_fu_5329_p2));
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U538(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5333_p0),.din1(grp_fu_5333_p1),.opcode(grp_fu_5333_opcode),.ce(grp_fu_5333_ce),.dout(grp_fu_5333_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U539(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5337_p0),.din1(grp_fu_5337_p1),.ce(grp_fu_5337_ce),.dout(grp_fu_5337_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U540(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5341_p0),.din1(grp_fu_5341_p1),.ce(grp_fu_5341_ce),.dout(grp_fu_5341_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U541(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5345_p0),.din1(grp_fu_5345_p1),.ce(grp_fu_5345_ce),.dout(grp_fu_5345_p2));
backprop_dexp_64ns_64ns_64_21_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 21 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dexp_64ns_64ns_64_21_full_dsp_1_U542(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5349_p0),.din1(grp_fu_5349_p1),.ce(grp_fu_5349_ce),.dout(grp_fu_5349_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U543(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_5353_p0),.din1(grp_fu_5353_p1),.ce(grp_fu_5353_ce),.dout(grp_fu_5353_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state158)) begin
            grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state160)) begin
            grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state118)) begin
            grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state76)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state114)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state38)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state74)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state112)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state36)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state72)) begin
            grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state110)) begin
            grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state120)) begin
            grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state116)) begin
            grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state124)) begin
            grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_activations2_loop_fu_2360_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state122)) begin
            grp_backprop_Pipeline_activations2_loop_fu_2360_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_activations2_loop_fu_2360_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_activations2_loop_fu_2360_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state122)) begin
            grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state34)) begin
            grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_start_reg <= 1'b1;
        end else if ((grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_ready == 1'b1)) begin
            grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_update_weights_1_fu_2461_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state162)) begin
            grp_update_weights_1_fu_2461_ap_start_reg <= 1'b1;
        end else if ((grp_update_weights_1_fu_2461_ap_ready == 1'b1)) begin
            grp_update_weights_1_fu_2461_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_2507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_1_fu_366 <= 64'd0;
    end else if (((grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_1_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state115))) begin
        activations3_1_fu_366 <= grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_1_o;
    end else if (((1'b1 == ap_CS_fsm_state113) & (grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_1_o_ap_vld == 1'b1))) begin
        activations3_1_fu_366 <= grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_1_o;
    end else if (((1'b1 == ap_CS_fsm_state111) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_3_out_ap_vld == 1'b1))) begin
        activations3_1_fu_366 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_2507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_2_fu_370 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state115) & (grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_2_o_ap_vld == 1'b1))) begin
        activations3_2_fu_370 <= grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_2_o;
    end else if (((1'b1 == ap_CS_fsm_state113) & (grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_2_o_ap_vld == 1'b1))) begin
        activations3_2_fu_370 <= grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_2_o;
    end else if (((1'b1 == ap_CS_fsm_state111) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_5_out_ap_vld == 1'b1))) begin
        activations3_2_fu_370 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln220_fu_2507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        activations3_fu_362 <= 64'd0;
    end else if (((1'b1 == ap_CS_fsm_state115) & (grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_o_ap_vld == 1'b1))) begin
        activations3_fu_362 <= grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_activations3_o;
    end else if (((1'b1 == ap_CS_fsm_state113) & (grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_o_ap_vld == 1'b1))) begin
        activations3_fu_362 <= grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_activations3_o;
    end else if (((1'b1 == ap_CS_fsm_state111) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_4_out_ap_vld == 1'b1))) begin
        activations3_fu_362 <= grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_activations3_4_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_250 <= 8'd0;
    end else if (((icmp_ln220_fu_2507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_250 <= add_ln220_fu_2513_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_mul40_fu_246 <= 12'd0;
    end else if (((icmp_ln220_fu_2507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        phi_mul40_fu_246 <= add_ln220_1_fu_2501_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        activations1_load_10_reg_4330 <= activations1_q1;
        activations1_load_11_reg_4335 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        activations1_load_12_reg_4340 <= activations1_q1;
        activations1_load_13_reg_4345 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        activations1_load_14_reg_4350 <= activations1_q1;
        activations1_load_15_reg_4355 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        activations1_load_16_reg_4360 <= activations1_q1;
        activations1_load_17_reg_4365 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        activations1_load_18_reg_4370 <= activations1_q1;
        activations1_load_19_reg_4375 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state41)) begin
        activations1_load_1_reg_4285 <= activations1_q0;
        activations1_load_reg_4280 <= activations1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        activations1_load_20_reg_4380 <= activations1_q1;
        activations1_load_21_reg_4385 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state52)) begin
        activations1_load_22_reg_4390 <= activations1_q1;
        activations1_load_23_reg_4395 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state53)) begin
        activations1_load_24_reg_4400 <= activations1_q1;
        activations1_load_25_reg_4405 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state54)) begin
        activations1_load_26_reg_4410 <= activations1_q1;
        activations1_load_27_reg_4415 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        activations1_load_28_reg_4420 <= activations1_q1;
        activations1_load_29_reg_4425 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state42)) begin
        activations1_load_2_reg_4290 <= activations1_q1;
        activations1_load_3_reg_4295 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state56)) begin
        activations1_load_30_reg_4430 <= activations1_q1;
        activations1_load_31_reg_4435 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        activations1_load_32_reg_4440 <= activations1_q1;
        activations1_load_33_reg_4445 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        activations1_load_34_reg_4450 <= activations1_q1;
        activations1_load_35_reg_4455 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        activations1_load_36_reg_4460 <= activations1_q1;
        activations1_load_37_reg_4465 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        activations1_load_38_reg_4470 <= activations1_q1;
        activations1_load_39_reg_4475 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state61)) begin
        activations1_load_40_reg_4480 <= activations1_q1;
        activations1_load_41_reg_4485 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state62)) begin
        activations1_load_42_reg_4490 <= activations1_q1;
        activations1_load_43_reg_4495 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        activations1_load_44_reg_4500 <= activations1_q1;
        activations1_load_45_reg_4505 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state64)) begin
        activations1_load_46_reg_4510 <= activations1_q1;
        activations1_load_47_reg_4515 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        activations1_load_48_reg_4520 <= activations1_q1;
        activations1_load_49_reg_4525 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state43)) begin
        activations1_load_4_reg_4300 <= activations1_q1;
        activations1_load_5_reg_4305 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        activations1_load_50_reg_4530 <= activations1_q1;
        activations1_load_51_reg_4535 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state67)) begin
        activations1_load_52_reg_4540 <= activations1_q1;
        activations1_load_53_reg_4545 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        activations1_load_54_reg_4550 <= activations1_q1;
        activations1_load_55_reg_4555 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state69)) begin
        activations1_load_56_reg_4560 <= activations1_q1;
        activations1_load_57_reg_4565 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state70)) begin
        activations1_load_58_reg_4570 <= activations1_q1;
        activations1_load_59_reg_4575 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state71)) begin
        activations1_load_60_reg_4580 <= activations1_q1;
        activations1_load_61_reg_4585 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state72)) begin
        activations1_load_62_reg_4590 <= activations1_q1;
        activations1_load_63_reg_4595 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        activations1_load_6_reg_4310 <= activations1_q1;
        activations1_load_7_reg_4315 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        activations1_load_8_reg_4320 <= activations1_q1;
        activations1_load_9_reg_4325 <= activations1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state84)) begin
        activations2_load_10_reg_4650 <= activations2_q1;
        activations2_load_11_reg_4655 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state85)) begin
        activations2_load_12_reg_4660 <= activations2_q1;
        activations2_load_13_reg_4665 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state86)) begin
        activations2_load_14_reg_4670 <= activations2_q1;
        activations2_load_15_reg_4675 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state87)) begin
        activations2_load_16_reg_4680 <= activations2_q1;
        activations2_load_17_reg_4685 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state88)) begin
        activations2_load_18_reg_4690 <= activations2_q1;
        activations2_load_19_reg_4695 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state79)) begin
        activations2_load_1_reg_4605 <= activations2_q0;
        activations2_load_reg_4600 <= activations2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state89)) begin
        activations2_load_20_reg_4700 <= activations2_q1;
        activations2_load_21_reg_4705 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state90)) begin
        activations2_load_22_reg_4710 <= activations2_q1;
        activations2_load_23_reg_4715 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state91)) begin
        activations2_load_24_reg_4720 <= activations2_q1;
        activations2_load_25_reg_4725 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state92)) begin
        activations2_load_26_reg_4730 <= activations2_q1;
        activations2_load_27_reg_4735 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state93)) begin
        activations2_load_28_reg_4740 <= activations2_q1;
        activations2_load_29_reg_4745 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state80)) begin
        activations2_load_2_reg_4610 <= activations2_q1;
        activations2_load_3_reg_4615 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state94)) begin
        activations2_load_30_reg_4750 <= activations2_q1;
        activations2_load_31_reg_4755 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state95)) begin
        activations2_load_32_reg_4760 <= activations2_q1;
        activations2_load_33_reg_4765 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state96)) begin
        activations2_load_34_reg_4770 <= activations2_q1;
        activations2_load_35_reg_4775 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state97)) begin
        activations2_load_36_reg_4780 <= activations2_q1;
        activations2_load_37_reg_4785 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state98)) begin
        activations2_load_38_reg_4790 <= activations2_q1;
        activations2_load_39_reg_4795 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state99)) begin
        activations2_load_40_reg_4800 <= activations2_q1;
        activations2_load_41_reg_4805 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state100)) begin
        activations2_load_42_reg_4810 <= activations2_q1;
        activations2_load_43_reg_4815 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state101)) begin
        activations2_load_44_reg_4820 <= activations2_q1;
        activations2_load_45_reg_4825 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state102)) begin
        activations2_load_46_reg_4830 <= activations2_q1;
        activations2_load_47_reg_4835 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state103)) begin
        activations2_load_48_reg_4840 <= activations2_q1;
        activations2_load_49_reg_4845 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state81)) begin
        activations2_load_4_reg_4620 <= activations2_q1;
        activations2_load_5_reg_4625 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state104)) begin
        activations2_load_50_reg_4850 <= activations2_q1;
        activations2_load_51_reg_4855 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state105)) begin
        activations2_load_52_reg_4860 <= activations2_q1;
        activations2_load_53_reg_4865 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state106)) begin
        activations2_load_54_reg_4870 <= activations2_q1;
        activations2_load_55_reg_4875 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state107)) begin
        activations2_load_56_reg_4880 <= activations2_q1;
        activations2_load_57_reg_4885 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state108)) begin
        activations2_load_58_reg_4890 <= activations2_q1;
        activations2_load_59_reg_4895 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state109)) begin
        activations2_load_60_reg_4900 <= activations2_q1;
        activations2_load_61_reg_4905 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state110)) begin
        activations2_load_62_reg_4910 <= activations2_q1;
        activations2_load_63_reg_4915 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state82)) begin
        activations2_load_6_reg_4630 <= activations2_q1;
        activations2_load_7_reg_4635 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state83)) begin
        activations2_load_8_reg_4640 <= activations2_q1;
        activations2_load_9_reg_4645 <= activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        empty_34_reg_4220 <= empty_34_fu_2672_p1;
        empty_35_reg_4225 <= empty_35_fu_2676_p1;
        empty_36_reg_4230 <= empty_36_fu_2680_p1;
        empty_37_reg_4235 <= empty_37_fu_2684_p1;
        empty_38_reg_4240 <= empty_38_fu_2688_p1;
        empty_39_reg_4245 <= empty_39_fu_2692_p1;
        empty_40_reg_4250 <= empty_40_fu_2696_p1;
        empty_41_reg_4255 <= empty_41_fu_2700_p1;
        empty_42_reg_4260 <= empty_42_fu_2704_p1;
        empty_43_reg_4265 <= empty_43_fu_2708_p1;
        empty_44_reg_4270 <= empty_44_fu_2712_p1;
        empty_45_reg_4275 <= empty_45_fu_2717_p1;
        empty_reg_4215 <= empty_fu_2668_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_13_reg_4086 <= i_fu_250;
        phi_mul40_load_reg_4068 <= phi_mul40_fu_246;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state120)) begin
        mux_case_02539_fu_254 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_02537_out;
        mux_case_02851_fu_266 <= grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_02849_out;
        mux_case_12643_fu_258 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_12641_out;
        mux_case_12955_fu_270 <= grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_12953_out;
        mux_case_22747_fu_262 <= grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_mux_case_22745_out;
        mux_case_23059_fu_274 <= grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_mux_case_23057_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state122)) begin
        mux_case_03164_fu_278 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_03162_out;
        mux_case_13269_fu_282 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_13267_out;
        mux_case_23374_fu_286 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_mux_case_23372_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state132)) begin
        oracle_activations2_load_10_reg_5050 <= oracle_activations2_q1;
        oracle_activations2_load_11_reg_5055 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state133)) begin
        oracle_activations2_load_12_reg_5060 <= oracle_activations2_q1;
        oracle_activations2_load_13_reg_5065 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state134)) begin
        oracle_activations2_load_14_reg_5070 <= oracle_activations2_q1;
        oracle_activations2_load_15_reg_5075 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state135)) begin
        oracle_activations2_load_16_reg_5080 <= oracle_activations2_q1;
        oracle_activations2_load_17_reg_5085 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state136)) begin
        oracle_activations2_load_18_reg_5090 <= oracle_activations2_q1;
        oracle_activations2_load_19_reg_5095 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_load_1_reg_5005 <= oracle_activations2_q0;
        oracle_activations2_load_reg_5000 <= oracle_activations2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state137)) begin
        oracle_activations2_load_20_reg_5100 <= oracle_activations2_q1;
        oracle_activations2_load_21_reg_5105 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state138)) begin
        oracle_activations2_load_22_reg_5110 <= oracle_activations2_q1;
        oracle_activations2_load_23_reg_5115 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state139)) begin
        oracle_activations2_load_24_reg_5120 <= oracle_activations2_q1;
        oracle_activations2_load_25_reg_5125 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state140)) begin
        oracle_activations2_load_26_reg_5130 <= oracle_activations2_q1;
        oracle_activations2_load_27_reg_5135 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state141)) begin
        oracle_activations2_load_28_reg_5140 <= oracle_activations2_q1;
        oracle_activations2_load_29_reg_5145 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_load_2_reg_5010 <= oracle_activations2_q1;
        oracle_activations2_load_3_reg_5015 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state142)) begin
        oracle_activations2_load_30_reg_5150 <= oracle_activations2_q1;
        oracle_activations2_load_31_reg_5155 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state143)) begin
        oracle_activations2_load_32_reg_5160 <= oracle_activations2_q1;
        oracle_activations2_load_33_reg_5165 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state144)) begin
        oracle_activations2_load_34_reg_5170 <= oracle_activations2_q1;
        oracle_activations2_load_35_reg_5175 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state145)) begin
        oracle_activations2_load_36_reg_5180 <= oracle_activations2_q1;
        oracle_activations2_load_37_reg_5185 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state146)) begin
        oracle_activations2_load_38_reg_5190 <= oracle_activations2_q1;
        oracle_activations2_load_39_reg_5195 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state147)) begin
        oracle_activations2_load_40_reg_5200 <= oracle_activations2_q1;
        oracle_activations2_load_41_reg_5205 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state148)) begin
        oracle_activations2_load_42_reg_5210 <= oracle_activations2_q1;
        oracle_activations2_load_43_reg_5215 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state149)) begin
        oracle_activations2_load_44_reg_5220 <= oracle_activations2_q1;
        oracle_activations2_load_45_reg_5225 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state150)) begin
        oracle_activations2_load_46_reg_5230 <= oracle_activations2_q1;
        oracle_activations2_load_47_reg_5235 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state151)) begin
        oracle_activations2_load_48_reg_5240 <= oracle_activations2_q1;
        oracle_activations2_load_49_reg_5245 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_load_4_reg_5020 <= oracle_activations2_q1;
        oracle_activations2_load_5_reg_5025 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state152)) begin
        oracle_activations2_load_50_reg_5250 <= oracle_activations2_q1;
        oracle_activations2_load_51_reg_5255 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state153)) begin
        oracle_activations2_load_52_reg_5260 <= oracle_activations2_q1;
        oracle_activations2_load_53_reg_5265 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state154)) begin
        oracle_activations2_load_54_reg_5270 <= oracle_activations2_q1;
        oracle_activations2_load_55_reg_5275 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state155)) begin
        oracle_activations2_load_56_reg_5280 <= oracle_activations2_q1;
        oracle_activations2_load_57_reg_5285 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state156)) begin
        oracle_activations2_load_58_reg_5290 <= oracle_activations2_q1;
        oracle_activations2_load_59_reg_5295 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state157)) begin
        oracle_activations2_load_60_reg_5300 <= oracle_activations2_q1;
        oracle_activations2_load_61_reg_5305 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state158)) begin
        oracle_activations2_load_62_reg_5310 <= oracle_activations2_q1;
        oracle_activations2_load_63_reg_5315 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state130)) begin
        oracle_activations2_load_6_reg_5030 <= oracle_activations2_q1;
        oracle_activations2_load_7_reg_5035 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state131)) begin
        oracle_activations2_load_8_reg_5040 <= oracle_activations2_q1;
        oracle_activations2_load_9_reg_5045 <= oracle_activations2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state162)) begin
        output_difference_0_promoted_fu_294 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_1_out;
        output_difference_1_promoted_fu_290 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_2_out;
        output_difference_2_promoted_fu_298 <= grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_output_difference_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state119)) begin
        sub_ln66_reg_4950 <= sub_ln66_fu_2776_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        training_data_load_10_reg_4200 <= training_data_q1;
        training_data_load_9_reg_4195 <= training_data_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state29)) begin
        training_data_load_1_reg_4115 <= training_data_q1;
        training_data_load_2_reg_4120 <= training_data_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        training_data_load_3_reg_4135 <= training_data_q0;
        training_data_load_4_reg_4140 <= training_data_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        training_data_load_5_reg_4155 <= training_data_q0;
        training_data_load_6_reg_4160 <= training_data_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        training_data_load_7_reg_4175 <= training_data_q0;
        training_data_load_8_reg_4180 <= training_data_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        training_data_load_reg_4100 <= training_data_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state125)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_address0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_activations1_address0;
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
        activations1_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_address1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_address1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_address1;
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
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_ce0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_activations1_ce0;
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
        activations1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_ce1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_ce1;
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
        activations1_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_d0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_d0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_d0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_d0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_activations1_d0;
    end else begin
        activations1_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        activations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_activations1_we0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        activations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_activations1_we0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        activations1_we0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_activations1_we0;
    end else begin
        activations1_we0 = activations1_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_2507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_we0_local = 1'b1;
    end else begin
        activations1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_2507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations1_we1_local = 1'b1;
    end else begin
        activations1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        activations2_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_activations2_address0;
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
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state82))) begin
        activations2_address0_local = 64'd9;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state81))) begin
        activations2_address0_local = 64'd7;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state80))) begin
        activations2_address0_local = 64'd5;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state79))) begin
        activations2_address0_local = 64'd3;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state78))) begin
        activations2_address0_local = 64'd1;
    end else begin
        activations2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state77)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_address1;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        activations2_address1 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_address1;
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
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state82))) begin
        activations2_address1_local = 64'd8;
    end else if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state81))) begin
        activations2_address1_local = 64'd6;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state80))) begin
        activations2_address1_local = 64'd4;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state79))) begin
        activations2_address1_local = 64'd2;
    end else if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state78))) begin
        activations2_address1_local = 64'd0;
    end else begin
        activations2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        activations2_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_activations2_ce0;
    end else begin
        activations2_ce0 = activations2_ce0_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108)| (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state77)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        activations2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_ce1;
    end else begin
        activations2_ce1 = activations2_ce1_local;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108)| (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79))) begin
        activations2_ce1_local = 1'b1;
    end else begin
        activations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state77)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_d0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_d0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        activations2_d0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_activations2_d0;
    end else begin
        activations2_d0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state77)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_activations2_we0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_activations2_we0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        activations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_activations2_we0;
    end else begin
        activations2_we0 = activations2_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_2507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        activations2_we0_local = 1'b1;
    end else begin
        activations2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((icmp_ln220_fu_2507_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if ((grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_done == 1'b0)) begin
        ap_ST_fsm_state111_blk = 1'b1;
    end else begin
        ap_ST_fsm_state111_blk = 1'b0;
    end
end
assign ap_ST_fsm_state112_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_done == 1'b0)) begin
        ap_ST_fsm_state113_blk = 1'b1;
    end else begin
        ap_ST_fsm_state113_blk = 1'b0;
    end
end
assign ap_ST_fsm_state114_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_done == 1'b0)) begin
        ap_ST_fsm_state115_blk = 1'b1;
    end else begin
        ap_ST_fsm_state115_blk = 1'b0;
    end
end
assign ap_ST_fsm_state116_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_done == 1'b0)) begin
        ap_ST_fsm_state117_blk = 1'b1;
    end else begin
        ap_ST_fsm_state117_blk = 1'b0;
    end
end
assign ap_ST_fsm_state118_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_done == 1'b0)) begin
        ap_ST_fsm_state119_blk = 1'b1;
    end else begin
        ap_ST_fsm_state119_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state120_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_done == 1'b0)) begin
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
    if ((grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_done == 1'b0)) begin
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
assign ap_ST_fsm_state131_blk = 1'b0;
assign ap_ST_fsm_state132_blk = 1'b0;
assign ap_ST_fsm_state133_blk = 1'b0;
assign ap_ST_fsm_state134_blk = 1'b0;
assign ap_ST_fsm_state135_blk = 1'b0;
assign ap_ST_fsm_state136_blk = 1'b0;
assign ap_ST_fsm_state137_blk = 1'b0;
assign ap_ST_fsm_state138_blk = 1'b0;
assign ap_ST_fsm_state139_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state140_blk = 1'b0;
assign ap_ST_fsm_state141_blk = 1'b0;
assign ap_ST_fsm_state142_blk = 1'b0;
assign ap_ST_fsm_state143_blk = 1'b0;
assign ap_ST_fsm_state144_blk = 1'b0;
assign ap_ST_fsm_state145_blk = 1'b0;
assign ap_ST_fsm_state146_blk = 1'b0;
assign ap_ST_fsm_state147_blk = 1'b0;
assign ap_ST_fsm_state148_blk = 1'b0;
assign ap_ST_fsm_state149_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state150_blk = 1'b0;
assign ap_ST_fsm_state151_blk = 1'b0;
assign ap_ST_fsm_state152_blk = 1'b0;
assign ap_ST_fsm_state153_blk = 1'b0;
assign ap_ST_fsm_state154_blk = 1'b0;
assign ap_ST_fsm_state155_blk = 1'b0;
assign ap_ST_fsm_state156_blk = 1'b0;
assign ap_ST_fsm_state157_blk = 1'b0;
assign ap_ST_fsm_state158_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_done == 1'b0)) begin
        ap_ST_fsm_state159_blk = 1'b1;
    end else begin
        ap_ST_fsm_state159_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state160_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_done == 1'b0)) begin
        ap_ST_fsm_state161_blk = 1'b1;
    end else begin
        ap_ST_fsm_state161_blk = 1'b0;
    end
end
assign ap_ST_fsm_state162_blk = 1'b0;
always @ (*) begin
    if ((grp_update_weights_1_fu_2461_ap_done == 1'b0)) begin
        ap_ST_fsm_state163_blk = 1'b1;
    end else begin
        ap_ST_fsm_state163_blk = 1'b0;
    end
end
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
    if ((grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_done == 1'b0)) begin
        ap_ST_fsm_state35_blk = 1'b1;
    end else begin
        ap_ST_fsm_state35_blk = 1'b0;
    end
end
assign ap_ST_fsm_state36_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_done == 1'b0)) begin
        ap_ST_fsm_state37_blk = 1'b1;
    end else begin
        ap_ST_fsm_state37_blk = 1'b0;
    end
end
assign ap_ST_fsm_state38_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_done == 1'b0)) begin
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
    if ((grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_done == 1'b0)) begin
        ap_ST_fsm_state73_blk = 1'b1;
    end else begin
        ap_ST_fsm_state73_blk = 1'b0;
    end
end
assign ap_ST_fsm_state74_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_done == 1'b0)) begin
        ap_ST_fsm_state75_blk = 1'b1;
    end else begin
        ap_ST_fsm_state75_blk = 1'b0;
    end
end
assign ap_ST_fsm_state76_blk = 1'b0;
always @ (*) begin
    if ((grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_done == 1'b0)) begin
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
    if (((icmp_ln220_fu_2507_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln220_fu_2507_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases1_address0 = grp_update_weights_1_fu_2461_biases1_address0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        biases1_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_biases1_address0;
    end else begin
        biases1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases1_ce0 = grp_update_weights_1_fu_2461_biases1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        biases1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_biases1_ce0;
    end else begin
        biases1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases1_ce1 = grp_update_weights_1_fu_2461_biases1_ce1;
    end else begin
        biases1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases1_we0 = grp_update_weights_1_fu_2461_biases1_we0;
    end else begin
        biases1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases1_we1 = grp_update_weights_1_fu_2461_biases1_we1;
    end else begin
        biases1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases2_address0 = grp_update_weights_1_fu_2461_biases2_address0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        biases2_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_biases2_address0;
    end else begin
        biases2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases2_ce0 = grp_update_weights_1_fu_2461_biases2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        biases2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_biases2_ce0;
    end else begin
        biases2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases2_ce1 = grp_update_weights_1_fu_2461_biases2_ce1;
    end else begin
        biases2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases2_we0 = grp_update_weights_1_fu_2461_biases2_we0;
    end else begin
        biases2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases2_we1 = grp_update_weights_1_fu_2461_biases2_we1;
    end else begin
        biases2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases3_address0 = grp_update_weights_1_fu_2461_biases3_address0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        biases3_address0 = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_biases3_address0;
    end else begin
        biases3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases3_ce0 = grp_update_weights_1_fu_2461_biases3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        biases3_ce0 = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_biases3_ce0;
    end else begin
        biases3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases3_ce1 = grp_update_weights_1_fu_2461_biases3_ce1;
    end else begin
        biases3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        biases3_we0 = grp_update_weights_1_fu_2461_biases3_we0;
    end else begin
        biases3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state159)) begin
        dactivations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_dactivations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_dactivations1_address0;
    end else begin
        dactivations1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state159)) begin
        dactivations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_dactivations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_dactivations1_ce0;
    end else begin
        dactivations1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        dactivations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_dactivations1_we0;
    end else begin
        dactivations1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        dactivations2_address0 = grp_backprop_Pipeline_activations2_loop_fu_2360_dactivations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        dactivations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_dactivations2_address0;
    end else begin
        dactivations2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        dactivations2_ce0 = grp_backprop_Pipeline_activations2_loop_fu_2360_dactivations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        dactivations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_dactivations2_ce0;
    end else begin
        dactivations2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state77)) begin
        dactivations2_we0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_dactivations2_we0;
    end else begin
        dactivations2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        delta_weights1_address0 = grp_update_weights_1_fu_2461_d_weights1_address0;
    end else if ((1'b1 == ap_CS_fsm_state161)) begin
        delta_weights1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_delta_weights1_address0;
    end else begin
        delta_weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        delta_weights1_ce0 = grp_update_weights_1_fu_2461_d_weights1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state161)) begin
        delta_weights1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_delta_weights1_ce0;
    end else begin
        delta_weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        delta_weights1_ce1 = grp_update_weights_1_fu_2461_d_weights1_ce1;
    end else begin
        delta_weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state161)) begin
        delta_weights1_we0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_delta_weights1_we0;
    end else begin
        delta_weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        delta_weights2_address0 = grp_update_weights_1_fu_2461_d_weights2_address0;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        delta_weights2_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_delta_weights2_address0;
    end else begin
        delta_weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        delta_weights2_ce0 = grp_update_weights_1_fu_2461_d_weights2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        delta_weights2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_delta_weights2_ce0;
    end else begin
        delta_weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        delta_weights2_ce1 = grp_update_weights_1_fu_2461_d_weights2_ce1;
    end else begin
        delta_weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state125)) begin
        delta_weights2_we0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_delta_weights2_we0;
    end else begin
        delta_weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        delta_weights3_address0 = grp_update_weights_1_fu_2461_d_weights3_address0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        delta_weights3_address0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_delta_weights3_address0;
    end else begin
        delta_weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        delta_weights3_ce0 = grp_update_weights_1_fu_2461_d_weights3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        delta_weights3_ce0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_delta_weights3_ce0;
    end else begin
        delta_weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        delta_weights3_ce1 = grp_update_weights_1_fu_2461_d_weights3_ce1;
    end else begin
        delta_weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        delta_weights3_we0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_delta_weights3_we0;
    end else begin
        delta_weights3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5329_ce = grp_update_weights_1_fu_2461_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_grp_fu_5329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5329_ce = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5329_p_ce;
    end else begin
        grp_fu_5329_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5329_opcode = grp_update_weights_1_fu_2461_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_grp_fu_5329_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5329_opcode = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5329_p_opcode;
    end else begin
        grp_fu_5329_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5329_p0 = grp_update_weights_1_fu_2461_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_grp_fu_5329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5329_p0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5329_p_din0;
    end else begin
        grp_fu_5329_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5329_p1 = grp_update_weights_1_fu_2461_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_grp_fu_5329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5329_p1 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5329_p_din1;
    end else begin
        grp_fu_5329_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5333_ce = grp_update_weights_1_fu_2461_grp_fu_5333_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5333_ce = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5333_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5333_ce = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5333_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5333_ce = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5333_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5333_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5333_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5333_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5333_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5333_ce = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5333_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5333_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5333_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5333_ce = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5333_p_ce;
    end else begin
        grp_fu_5333_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5333_opcode = grp_update_weights_1_fu_2461_grp_fu_5333_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5333_opcode = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5333_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5333_opcode = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5333_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5333_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5333_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5333_opcode = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5333_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5333_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5333_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5333_opcode = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5333_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5333_opcode = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5333_p_opcode;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5333_opcode = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5333_p_opcode;
    end else begin
        grp_fu_5333_opcode = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5333_p0 = grp_update_weights_1_fu_2461_grp_fu_5333_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5333_p0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5333_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5333_p0 = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5333_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5333_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5333_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5333_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5333_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5333_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5333_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5333_p0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5333_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5333_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5333_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5333_p0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5333_p_din0;
    end else begin
        grp_fu_5333_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5333_p1 = grp_update_weights_1_fu_2461_grp_fu_5333_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5333_p1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5333_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5333_p1 = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5333_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5333_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5333_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5333_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5333_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5333_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5333_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5333_p1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5333_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5333_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5333_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5333_p1 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5333_p_din1;
    end else begin
        grp_fu_5333_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5337_ce = grp_update_weights_1_fu_2461_grp_fu_5337_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state161)) begin
        grp_fu_5337_ce = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_grp_fu_5337_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5337_ce = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5337_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        grp_fu_5337_ce = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_grp_fu_5337_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5337_ce = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5337_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5337_ce = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5337_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5337_ce = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5337_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5337_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5337_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5337_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5337_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5337_ce = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5337_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5337_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5337_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5337_ce = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5337_p_ce;
    end else begin
        grp_fu_5337_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5337_p0 = grp_update_weights_1_fu_2461_grp_fu_5337_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state161)) begin
        grp_fu_5337_p0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_grp_fu_5337_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5337_p0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5337_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        grp_fu_5337_p0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_grp_fu_5337_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5337_p0 = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5337_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5337_p0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5337_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5337_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5337_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5337_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5337_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5337_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5337_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5337_p0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5337_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5337_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5337_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5337_p0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5337_p_din0;
    end else begin
        grp_fu_5337_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5337_p1 = grp_update_weights_1_fu_2461_grp_fu_5337_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state161)) begin
        grp_fu_5337_p1 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_grp_fu_5337_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5337_p1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5337_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        grp_fu_5337_p1 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_grp_fu_5337_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5337_p1 = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5337_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state121)) begin
        grp_fu_5337_p1 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_grp_fu_5337_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5337_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5337_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5337_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5337_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5337_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5337_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5337_p1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5337_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5337_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5337_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5337_p1 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5337_p_din1;
    end else begin
        grp_fu_5337_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5341_ce = grp_update_weights_1_fu_2461_grp_fu_5341_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5341_ce = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5341_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5341_ce = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5341_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5341_ce = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5341_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5341_ce = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5341_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5341_ce = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5341_p_ce;
    end else begin
        grp_fu_5341_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5341_p0 = grp_update_weights_1_fu_2461_grp_fu_5341_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5341_p0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5341_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5341_p0 = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5341_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5341_p0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5341_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5341_p0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5341_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5341_p0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5341_p_din0;
    end else begin
        grp_fu_5341_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5341_p1 = grp_update_weights_1_fu_2461_grp_fu_5341_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5341_p1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5341_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5341_p1 = grp_backprop_Pipeline_activations2_loop_fu_2360_grp_fu_5341_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        grp_fu_5341_p1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_grp_fu_5341_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_5341_p1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_grp_fu_5341_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_5341_p1 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_grp_fu_5341_p_din1;
    end else begin
        grp_fu_5341_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5345_ce = grp_update_weights_1_fu_2461_grp_fu_5345_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state119)) begin
        grp_fu_5345_ce = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5345_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5345_ce = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5345_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5345_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5345_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5345_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5345_p_ce;
    end else begin
        grp_fu_5345_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5345_p0 = grp_update_weights_1_fu_2461_grp_fu_5345_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state119)) begin
        grp_fu_5345_p0 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5345_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5345_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5345_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5345_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5345_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5345_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5345_p_din0;
    end else begin
        grp_fu_5345_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5345_p1 = grp_update_weights_1_fu_2461_grp_fu_5345_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state119)) begin
        grp_fu_5345_p1 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5345_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5345_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5345_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5345_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5345_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5345_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5345_p_din1;
    end else begin
        grp_fu_5345_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state119)) begin
        grp_fu_5349_ce = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5349_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5349_ce = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5349_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5349_ce = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5349_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5349_ce = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5349_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5349_ce = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5349_p_ce;
    end else begin
        grp_fu_5349_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state119)) begin
        grp_fu_5349_p0 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5349_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5349_p0 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5349_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5349_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5349_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5349_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5349_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5349_p0 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5349_p_din0;
    end else begin
        grp_fu_5349_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state119)) begin
        grp_fu_5349_p1 = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_grp_fu_5349_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        grp_fu_5349_p1 = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_grp_fu_5349_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        grp_fu_5349_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_grp_fu_5349_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_5349_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_grp_fu_5349_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_5349_p1 = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_grp_fu_5349_p_din1;
    end else begin
        grp_fu_5349_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5353_ce = grp_update_weights_1_fu_2461_grp_fu_5353_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5353_ce = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5353_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5353_ce = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_grp_fu_5353_p_ce;
    end else begin
        grp_fu_5353_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5353_p0 = grp_update_weights_1_fu_2461_grp_fu_5353_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5353_p0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5353_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5353_p0 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_grp_fu_5353_p_din0;
    end else begin
        grp_fu_5353_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        grp_fu_5353_p1 = grp_update_weights_1_fu_2461_grp_fu_5353_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        grp_fu_5353_p1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_grp_fu_5353_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        grp_fu_5353_p1 = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_grp_fu_5353_p_din1;
    end else begin
        grp_fu_5353_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        oracle_activations1_address0 = grp_update_weights_1_fu_2461_d_biases1_address0;
    end else if ((1'b1 == ap_CS_fsm_state161)) begin
        oracle_activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_oracle_activations1_address0;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        oracle_activations1_address0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_oracle_activations1_address0;
    end else begin
        oracle_activations1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        oracle_activations1_ce0 = grp_update_weights_1_fu_2461_d_biases1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state161)) begin
        oracle_activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_oracle_activations1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        oracle_activations1_ce0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_oracle_activations1_ce0;
    end else begin
        oracle_activations1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state159)) begin
        oracle_activations1_we0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_oracle_activations1_we0;
    end else begin
        oracle_activations1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        oracle_activations2_address0 = grp_update_weights_1_fu_2461_d_biases2_address0;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        oracle_activations2_address0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_oracle_activations2_address0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        oracle_activations2_address0 = grp_backprop_Pipeline_activations2_loop_fu_2360_oracle_activations2_address0;
    end else begin
        oracle_activations2_address0 = oracle_activations2_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state157)) begin
        oracle_activations2_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state156)) begin
        oracle_activations2_address0_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state155)) begin
        oracle_activations2_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state154)) begin
        oracle_activations2_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state153)) begin
        oracle_activations2_address0_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state152)) begin
        oracle_activations2_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state151)) begin
        oracle_activations2_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state150)) begin
        oracle_activations2_address0_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state149)) begin
        oracle_activations2_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state148)) begin
        oracle_activations2_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state147)) begin
        oracle_activations2_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state146)) begin
        oracle_activations2_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state145)) begin
        oracle_activations2_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state144)) begin
        oracle_activations2_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state143)) begin
        oracle_activations2_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state142)) begin
        oracle_activations2_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state141)) begin
        oracle_activations2_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state140)) begin
        oracle_activations2_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state139)) begin
        oracle_activations2_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state138)) begin
        oracle_activations2_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state137)) begin
        oracle_activations2_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state136)) begin
        oracle_activations2_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state135)) begin
        oracle_activations2_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state134)) begin
        oracle_activations2_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state133)) begin
        oracle_activations2_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state132)) begin
        oracle_activations2_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        oracle_activations2_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state130)) begin
        oracle_activations2_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address0_local = 64'd1;
    end else begin
        oracle_activations2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state157)) begin
        oracle_activations2_address1_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state156)) begin
        oracle_activations2_address1_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state155)) begin
        oracle_activations2_address1_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state154)) begin
        oracle_activations2_address1_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state153)) begin
        oracle_activations2_address1_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state152)) begin
        oracle_activations2_address1_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state151)) begin
        oracle_activations2_address1_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state150)) begin
        oracle_activations2_address1_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state149)) begin
        oracle_activations2_address1_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state148)) begin
        oracle_activations2_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state147)) begin
        oracle_activations2_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state146)) begin
        oracle_activations2_address1_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state145)) begin
        oracle_activations2_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state144)) begin
        oracle_activations2_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state143)) begin
        oracle_activations2_address1_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state142)) begin
        oracle_activations2_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state141)) begin
        oracle_activations2_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state140)) begin
        oracle_activations2_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state139)) begin
        oracle_activations2_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state138)) begin
        oracle_activations2_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state137)) begin
        oracle_activations2_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state136)) begin
        oracle_activations2_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state135)) begin
        oracle_activations2_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state134)) begin
        oracle_activations2_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state133)) begin
        oracle_activations2_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state132)) begin
        oracle_activations2_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state131)) begin
        oracle_activations2_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state130)) begin
        oracle_activations2_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state129)) begin
        oracle_activations2_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state128)) begin
        oracle_activations2_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state127)) begin
        oracle_activations2_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state126)) begin
        oracle_activations2_address1_local = 64'd0;
    end else begin
        oracle_activations2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        oracle_activations2_ce0 = grp_update_weights_1_fu_2461_d_biases2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state125)) begin
        oracle_activations2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_oracle_activations2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        oracle_activations2_ce0 = grp_backprop_Pipeline_activations2_loop_fu_2360_oracle_activations2_ce0;
    end else begin
        oracle_activations2_ce0 = oracle_activations2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state157) | (1'b1 == ap_CS_fsm_state156) | (1'b1 == ap_CS_fsm_state155) | (1'b1 == ap_CS_fsm_state154) | (1'b1 == ap_CS_fsm_state153) | (1'b1 == ap_CS_fsm_state152) | (1'b1 == ap_CS_fsm_state151) | (1'b1 == ap_CS_fsm_state150) | (1'b1 == ap_CS_fsm_state149) | (1'b1 == ap_CS_fsm_state148) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state145) | (1'b1 == ap_CS_fsm_state144) | (1'b1 == ap_CS_fsm_state143) | (1'b1 == ap_CS_fsm_state142) | (1'b1 == ap_CS_fsm_state141) | (1'b1 == ap_CS_fsm_state140) | (1'b1 == ap_CS_fsm_state139) | (1'b1 == ap_CS_fsm_state138) | (1'b1 == ap_CS_fsm_state137) | (1'b1 == ap_CS_fsm_state136) | (1'b1 == ap_CS_fsm_state135) | (1'b1 == ap_CS_fsm_state134) | (1'b1 == ap_CS_fsm_state133) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state130) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state126) | (1'b1 == ap_CS_fsm_state157) | (1'b1 == ap_CS_fsm_state156) | (1'b1 == ap_CS_fsm_state155) | (1'b1 == ap_CS_fsm_state154) | (1'b1 == ap_CS_fsm_state153) | (1'b1 == ap_CS_fsm_state152) | (1'b1 == ap_CS_fsm_state151) | (1'b1 == ap_CS_fsm_state150) | (1'b1 == ap_CS_fsm_state149) | (1'b1 == ap_CS_fsm_state148) | (1'b1 == ap_CS_fsm_state147) | (1'b1 == ap_CS_fsm_state146) | (1'b1 == ap_CS_fsm_state145) | (1'b1 == ap_CS_fsm_state144) | (1'b1 == ap_CS_fsm_state143) | (1'b1 == ap_CS_fsm_state142) | (1'b1 == ap_CS_fsm_state141) | (1'b1 == ap_CS_fsm_state140) | (1'b1 == ap_CS_fsm_state139) | (1'b1 == ap_CS_fsm_state138) | (1'b1 == ap_CS_fsm_state137) | (1'b1 == ap_CS_fsm_state136) | (1'b1 == ap_CS_fsm_state135) | (1'b1 == ap_CS_fsm_state134) | (1'b1 == ap_CS_fsm_state133) | (1'b1 == ap_CS_fsm_state132) | (1'b1 == ap_CS_fsm_state131) | (1'b1 == ap_CS_fsm_state130) | (1'b1 == ap_CS_fsm_state129) | (1'b1 == ap_CS_fsm_state128) | (1'b1 == ap_CS_fsm_state127))) begin
        oracle_activations2_ce1_local = 1'b1;
    end else begin
        oracle_activations2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state123)) begin
        oracle_activations2_we0 = grp_backprop_Pipeline_activations2_loop_fu_2360_oracle_activations2_we0;
    end else begin
        oracle_activations2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state161)) begin
        training_data_address0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_training_data_address0;
    end else begin
        training_data_address0 = training_data_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        training_data_address0_local = arrayidx10_sum_11_cast_fu_2653_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        training_data_address0_local = arrayidx10_sum_9_cast_fu_2633_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        training_data_address0_local = arrayidx10_sum_7_cast_fu_2613_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        training_data_address0_local = arrayidx10_sum_5_cast_fu_2593_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        training_data_address0_local = arrayidx10_sum_3_cast_fu_2573_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        training_data_address0_local = arrayidx10_sum_2_cast_fu_2563_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        training_data_address0_local = zext_ln31_fu_2544_p1;
    end else begin
        training_data_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        training_data_address1_local = arrayidx10_sum_12_cast_fu_2663_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        training_data_address1_local = arrayidx10_sum_10_cast_fu_2643_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        training_data_address1_local = arrayidx10_sum_8_cast_fu_2623_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        training_data_address1_local = arrayidx10_sum_6_cast_fu_2603_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        training_data_address1_local = arrayidx10_sum_4_cast_fu_2583_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        training_data_address1_local = arrayidx10_sum_1_cast_fu_2553_p1;
    end else begin
        training_data_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state161)) begin
        training_data_ce0 = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_training_data_ce0;
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
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights1_address0 = grp_update_weights_1_fu_2461_weights1_address0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights1_address0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_weights1_address0;
    end else begin
        weights1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights1_address1 = grp_update_weights_1_fu_2461_weights1_address1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights1_address1 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_weights1_address1;
    end else begin
        weights1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights1_ce0 = grp_update_weights_1_fu_2461_weights1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights1_ce0 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_weights1_ce0;
    end else begin
        weights1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights1_ce1 = grp_update_weights_1_fu_2461_weights1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights1_ce1 = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_weights1_ce1;
    end else begin
        weights1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights1_we0 = grp_update_weights_1_fu_2461_weights1_we0;
    end else begin
        weights1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights1_we1 = grp_update_weights_1_fu_2461_weights1_we1;
    end else begin
        weights1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights2_address0 = grp_update_weights_1_fu_2461_weights2_address0;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        weights2_address0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_weights2_address0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        weights2_address0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_weights2_address0;
    end else begin
        weights2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights2_address1 = grp_update_weights_1_fu_2461_weights2_address1;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        weights2_address1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_weights2_address1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        weights2_address1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_weights2_address1;
    end else begin
        weights2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights2_ce0 = grp_update_weights_1_fu_2461_weights2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        weights2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_weights2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        weights2_ce0 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_weights2_ce0;
    end else begin
        weights2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights2_ce1 = grp_update_weights_1_fu_2461_weights2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state159)) begin
        weights2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_weights2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        weights2_ce1 = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_weights2_ce1;
    end else begin
        weights2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights2_we0 = grp_update_weights_1_fu_2461_weights2_we0;
    end else begin
        weights2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights2_we1 = grp_update_weights_1_fu_2461_weights2_we1;
    end else begin
        weights2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights3_address0 = grp_update_weights_1_fu_2461_weights3_address0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        weights3_address0 = grp_backprop_Pipeline_activations2_loop_fu_2360_weights3_address0;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        weights3_address0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_weights3_address0;
    end else begin
        weights3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights3_address1 = grp_update_weights_1_fu_2461_weights3_address1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        weights3_address1 = grp_backprop_Pipeline_activations2_loop_fu_2360_weights3_address1;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        weights3_address1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_weights3_address1;
    end else begin
        weights3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights3_ce0 = grp_update_weights_1_fu_2461_weights3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        weights3_ce0 = grp_backprop_Pipeline_activations2_loop_fu_2360_weights3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        weights3_ce0 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_weights3_ce0;
    end else begin
        weights3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights3_ce1 = grp_update_weights_1_fu_2461_weights3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state123)) begin
        weights3_ce1 = grp_backprop_Pipeline_activations2_loop_fu_2360_weights3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        weights3_ce1 = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_weights3_ce1;
    end else begin
        weights3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights3_we0 = grp_update_weights_1_fu_2461_weights3_we0;
    end else begin
        weights3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state163)) begin
        weights3_we1 = grp_update_weights_1_fu_2461_weights3_we1;
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
            if (((icmp_ln220_fu_2507_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((1'b1 == ap_CS_fsm_state35) & (grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state35;
            end
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            if (((1'b1 == ap_CS_fsm_state37) & (grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state37;
            end
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            if (((1'b1 == ap_CS_fsm_state39) & (grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state73) & (grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state74;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state73;
            end
        end
        ap_ST_fsm_state74 : begin
            ap_NS_fsm = ap_ST_fsm_state75;
        end
        ap_ST_fsm_state75 : begin
            if (((1'b1 == ap_CS_fsm_state75) & (grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state76;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state75;
            end
        end
        ap_ST_fsm_state76 : begin
            ap_NS_fsm = ap_ST_fsm_state77;
        end
        ap_ST_fsm_state77 : begin
            if (((1'b1 == ap_CS_fsm_state77) & (grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_done == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state111) & (grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state112;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state111;
            end
        end
        ap_ST_fsm_state112 : begin
            ap_NS_fsm = ap_ST_fsm_state113;
        end
        ap_ST_fsm_state113 : begin
            if (((1'b1 == ap_CS_fsm_state113) & (grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state114;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state113;
            end
        end
        ap_ST_fsm_state114 : begin
            ap_NS_fsm = ap_ST_fsm_state115;
        end
        ap_ST_fsm_state115 : begin
            if (((1'b1 == ap_CS_fsm_state115) & (grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state116;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state115;
            end
        end
        ap_ST_fsm_state116 : begin
            ap_NS_fsm = ap_ST_fsm_state117;
        end
        ap_ST_fsm_state117 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state117))) begin
                ap_NS_fsm = ap_ST_fsm_state118;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state117;
            end
        end
        ap_ST_fsm_state118 : begin
            ap_NS_fsm = ap_ST_fsm_state119;
        end
        ap_ST_fsm_state119 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state119))) begin
                ap_NS_fsm = ap_ST_fsm_state120;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state119;
            end
        end
        ap_ST_fsm_state120 : begin
            ap_NS_fsm = ap_ST_fsm_state121;
        end
        ap_ST_fsm_state121 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state121))) begin
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
            if (((grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state125))) begin
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
            ap_NS_fsm = ap_ST_fsm_state132;
        end
        ap_ST_fsm_state132 : begin
            ap_NS_fsm = ap_ST_fsm_state133;
        end
        ap_ST_fsm_state133 : begin
            ap_NS_fsm = ap_ST_fsm_state134;
        end
        ap_ST_fsm_state134 : begin
            ap_NS_fsm = ap_ST_fsm_state135;
        end
        ap_ST_fsm_state135 : begin
            ap_NS_fsm = ap_ST_fsm_state136;
        end
        ap_ST_fsm_state136 : begin
            ap_NS_fsm = ap_ST_fsm_state137;
        end
        ap_ST_fsm_state137 : begin
            ap_NS_fsm = ap_ST_fsm_state138;
        end
        ap_ST_fsm_state138 : begin
            ap_NS_fsm = ap_ST_fsm_state139;
        end
        ap_ST_fsm_state139 : begin
            ap_NS_fsm = ap_ST_fsm_state140;
        end
        ap_ST_fsm_state140 : begin
            ap_NS_fsm = ap_ST_fsm_state141;
        end
        ap_ST_fsm_state141 : begin
            ap_NS_fsm = ap_ST_fsm_state142;
        end
        ap_ST_fsm_state142 : begin
            ap_NS_fsm = ap_ST_fsm_state143;
        end
        ap_ST_fsm_state143 : begin
            ap_NS_fsm = ap_ST_fsm_state144;
        end
        ap_ST_fsm_state144 : begin
            ap_NS_fsm = ap_ST_fsm_state145;
        end
        ap_ST_fsm_state145 : begin
            ap_NS_fsm = ap_ST_fsm_state146;
        end
        ap_ST_fsm_state146 : begin
            ap_NS_fsm = ap_ST_fsm_state147;
        end
        ap_ST_fsm_state147 : begin
            ap_NS_fsm = ap_ST_fsm_state148;
        end
        ap_ST_fsm_state148 : begin
            ap_NS_fsm = ap_ST_fsm_state149;
        end
        ap_ST_fsm_state149 : begin
            ap_NS_fsm = ap_ST_fsm_state150;
        end
        ap_ST_fsm_state150 : begin
            ap_NS_fsm = ap_ST_fsm_state151;
        end
        ap_ST_fsm_state151 : begin
            ap_NS_fsm = ap_ST_fsm_state152;
        end
        ap_ST_fsm_state152 : begin
            ap_NS_fsm = ap_ST_fsm_state153;
        end
        ap_ST_fsm_state153 : begin
            ap_NS_fsm = ap_ST_fsm_state154;
        end
        ap_ST_fsm_state154 : begin
            ap_NS_fsm = ap_ST_fsm_state155;
        end
        ap_ST_fsm_state155 : begin
            ap_NS_fsm = ap_ST_fsm_state156;
        end
        ap_ST_fsm_state156 : begin
            ap_NS_fsm = ap_ST_fsm_state157;
        end
        ap_ST_fsm_state157 : begin
            ap_NS_fsm = ap_ST_fsm_state158;
        end
        ap_ST_fsm_state158 : begin
            ap_NS_fsm = ap_ST_fsm_state159;
        end
        ap_ST_fsm_state159 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state159))) begin
                ap_NS_fsm = ap_ST_fsm_state160;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state159;
            end
        end
        ap_ST_fsm_state160 : begin
            ap_NS_fsm = ap_ST_fsm_state161;
        end
        ap_ST_fsm_state161 : begin
            if (((grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state161))) begin
                ap_NS_fsm = ap_ST_fsm_state162;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state161;
            end
        end
        ap_ST_fsm_state162 : begin
            ap_NS_fsm = ap_ST_fsm_state163;
        end
        ap_ST_fsm_state163 : begin
            if (((grp_update_weights_1_fu_2461_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state163))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state163;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln220_1_fu_2501_p2 = (phi_mul40_fu_246 + 12'd13);
assign add_ln220_fu_2513_p2 = (i_fu_250 + 8'd1);
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
assign ap_CS_fsm_state136 = ap_CS_fsm[32'd135];
assign ap_CS_fsm_state137 = ap_CS_fsm[32'd136];
assign ap_CS_fsm_state138 = ap_CS_fsm[32'd137];
assign ap_CS_fsm_state139 = ap_CS_fsm[32'd138];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state140 = ap_CS_fsm[32'd139];
assign ap_CS_fsm_state141 = ap_CS_fsm[32'd140];
assign ap_CS_fsm_state142 = ap_CS_fsm[32'd141];
assign ap_CS_fsm_state143 = ap_CS_fsm[32'd142];
assign ap_CS_fsm_state144 = ap_CS_fsm[32'd143];
assign ap_CS_fsm_state145 = ap_CS_fsm[32'd144];
assign ap_CS_fsm_state146 = ap_CS_fsm[32'd145];
assign ap_CS_fsm_state147 = ap_CS_fsm[32'd146];
assign ap_CS_fsm_state148 = ap_CS_fsm[32'd147];
assign ap_CS_fsm_state149 = ap_CS_fsm[32'd148];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state150 = ap_CS_fsm[32'd149];
assign ap_CS_fsm_state151 = ap_CS_fsm[32'd150];
assign ap_CS_fsm_state152 = ap_CS_fsm[32'd151];
assign ap_CS_fsm_state153 = ap_CS_fsm[32'd152];
assign ap_CS_fsm_state154 = ap_CS_fsm[32'd153];
assign ap_CS_fsm_state155 = ap_CS_fsm[32'd154];
assign ap_CS_fsm_state156 = ap_CS_fsm[32'd155];
assign ap_CS_fsm_state157 = ap_CS_fsm[32'd156];
assign ap_CS_fsm_state158 = ap_CS_fsm[32'd157];
assign ap_CS_fsm_state159 = ap_CS_fsm[32'd158];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state160 = ap_CS_fsm[32'd159];
assign ap_CS_fsm_state161 = ap_CS_fsm[32'd160];
assign ap_CS_fsm_state162 = ap_CS_fsm[32'd161];
assign ap_CS_fsm_state163 = ap_CS_fsm[32'd162];
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
    ap_block_state123_on_subcall_done = ((grp_backprop_Pipeline_activations2_loop_fu_2360_ap_done == 1'b0) | (grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_done == 1'b0));
end
assign arrayidx10_sum_10_cast_fu_2643_p1 = arrayidx10_sum_10_fu_2638_p2;
assign arrayidx10_sum_10_fu_2638_p2 = (phi_mul40_load_reg_4068 + 12'd10);
assign arrayidx10_sum_11_cast_fu_2653_p1 = arrayidx10_sum_11_fu_2648_p2;
assign arrayidx10_sum_11_fu_2648_p2 = (phi_mul40_load_reg_4068 + 12'd11);
assign arrayidx10_sum_12_cast_fu_2663_p1 = arrayidx10_sum_12_fu_2658_p2;
assign arrayidx10_sum_12_fu_2658_p2 = (phi_mul40_load_reg_4068 + 12'd12);
assign arrayidx10_sum_1_cast_fu_2553_p1 = arrayidx10_sum_1_fu_2548_p2;
assign arrayidx10_sum_1_fu_2548_p2 = (phi_mul40_load_reg_4068 + 12'd1);
assign arrayidx10_sum_2_cast_fu_2563_p1 = arrayidx10_sum_2_fu_2558_p2;
assign arrayidx10_sum_2_fu_2558_p2 = (phi_mul40_load_reg_4068 + 12'd2);
assign arrayidx10_sum_3_cast_fu_2573_p1 = arrayidx10_sum_3_fu_2568_p2;
assign arrayidx10_sum_3_fu_2568_p2 = (phi_mul40_load_reg_4068 + 12'd3);
assign arrayidx10_sum_4_cast_fu_2583_p1 = arrayidx10_sum_4_fu_2578_p2;
assign arrayidx10_sum_4_fu_2578_p2 = (phi_mul40_load_reg_4068 + 12'd4);
assign arrayidx10_sum_5_cast_fu_2593_p1 = arrayidx10_sum_5_fu_2588_p2;
assign arrayidx10_sum_5_fu_2588_p2 = (phi_mul40_load_reg_4068 + 12'd5);
assign arrayidx10_sum_6_cast_fu_2603_p1 = arrayidx10_sum_6_fu_2598_p2;
assign arrayidx10_sum_6_fu_2598_p2 = (phi_mul40_load_reg_4068 + 12'd6);
assign arrayidx10_sum_7_cast_fu_2613_p1 = arrayidx10_sum_7_fu_2608_p2;
assign arrayidx10_sum_7_fu_2608_p2 = (phi_mul40_load_reg_4068 + 12'd7);
assign arrayidx10_sum_8_cast_fu_2623_p1 = arrayidx10_sum_8_fu_2618_p2;
assign arrayidx10_sum_8_fu_2618_p2 = (phi_mul40_load_reg_4068 + 12'd8);
assign arrayidx10_sum_9_cast_fu_2633_p1 = arrayidx10_sum_9_fu_2628_p2;
assign arrayidx10_sum_9_fu_2628_p2 = (phi_mul40_load_reg_4068 + 12'd9);
assign biases1_address1 = grp_update_weights_1_fu_2461_biases1_address1;
assign biases1_d0 = grp_update_weights_1_fu_2461_biases1_d0;
assign biases1_d1 = grp_update_weights_1_fu_2461_biases1_d1;
assign biases2_address1 = grp_update_weights_1_fu_2461_biases2_address1;
assign biases2_d0 = grp_update_weights_1_fu_2461_biases2_d0;
assign biases2_d1 = grp_update_weights_1_fu_2461_biases2_d1;
assign biases3_address1 = grp_update_weights_1_fu_2461_biases3_address1;
assign biases3_d0 = grp_update_weights_1_fu_2461_biases3_d0;
assign empty_34_fu_2672_p1 = training_data_load_1_reg_4115;
assign empty_35_fu_2676_p1 = training_data_load_2_reg_4120;
assign empty_36_fu_2680_p1 = training_data_load_3_reg_4135;
assign empty_37_fu_2684_p1 = training_data_load_4_reg_4140;
assign empty_38_fu_2688_p1 = training_data_load_5_reg_4155;
assign empty_39_fu_2692_p1 = training_data_load_6_reg_4160;
assign empty_40_fu_2696_p1 = training_data_load_7_reg_4175;
assign empty_41_fu_2700_p1 = training_data_load_8_reg_4180;
assign empty_42_fu_2704_p1 = training_data_load_9_reg_4195;
assign empty_43_fu_2708_p1 = training_data_load_10_reg_4200;
assign empty_44_fu_2712_p1 = training_data_q0;
assign empty_45_fu_2717_p1 = training_data_q1;
assign empty_fu_2668_p1 = training_data_load_reg_4100;
assign grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_start = grp_backprop_Pipeline_VITIS_LOOP_102_1_fu_2378_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_start = grp_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop_fu_2452_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_start = grp_backprop_Pipeline_VITIS_LOOP_11_2_fu_2312_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_12_fu_2195_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_14_fu_2291_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_start = grp_backprop_Pipeline_VITIS_LOOP_18_1_fu_2109_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_start = grp_backprop_Pipeline_VITIS_LOOP_26_11_fu_2188_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_start = grp_backprop_Pipeline_VITIS_LOOP_26_13_fu_2282_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_start = grp_backprop_Pipeline_VITIS_LOOP_26_1_fu_2102_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_start = grp_backprop_Pipeline_VITIS_LOOP_44_1_fu_2115_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_start = grp_backprop_Pipeline_VITIS_LOOP_55_1_fu_2201_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_start = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_start = grp_backprop_Pipeline_VITIS_LOOP_8_1_fu_2304_ap_start_reg;
assign grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_start = grp_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop_fu_2371_ap_start_reg;
assign grp_backprop_Pipeline_activations2_loop_fu_2360_ap_start = grp_backprop_Pipeline_activations2_loop_fu_2360_ap_start_reg;
assign grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_start = grp_backprop_Pipeline_delta_matrix_weights3_loop_VITIS_LOOP_74_1_fu_2351_ap_start_reg;
assign grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_start = grp_backprop_Pipeline_mvp_product_input_loop_fu_2082_ap_start_reg;
assign grp_update_weights_1_fu_2461_ap_start = grp_update_weights_1_fu_2461_ap_start_reg;
assign icmp_ln220_fu_2507_p2 = ((i_fu_250 == 8'd163) ? 1'b1 : 1'b0);
assign p_shl_fu_2768_p3 = {{trunc_ln66_fu_2765_p1}, {2'd0}};
assign sub_ln66_fu_2776_p2 = (p_shl_fu_2768_p3 - zext_ln66_fu_2762_p1);
assign training_data_address1 = training_data_address1_local;
assign training_data_ce1 = training_data_ce1_local;
assign training_targets_address0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_training_targets_address0;
assign training_targets_ce0 = grp_backprop_Pipeline_VITIS_LOOP_66_1_fu_2326_training_targets_ce0;
assign trunc_ln66_fu_2765_p1 = i_13_reg_4086[6:0];
assign weights1_d0 = grp_update_weights_1_fu_2461_weights1_d0;
assign weights1_d1 = grp_update_weights_1_fu_2461_weights1_d1;
assign weights2_d0 = grp_update_weights_1_fu_2461_weights2_d0;
assign weights2_d1 = grp_update_weights_1_fu_2461_weights2_d1;
assign weights3_d0 = grp_update_weights_1_fu_2461_weights3_d0;
assign weights3_d1 = grp_update_weights_1_fu_2461_weights3_d1;
assign zext_ln31_fu_2544_p1 = phi_mul40_load_reg_4068;
assign zext_ln66_fu_2762_p1 = i_13_reg_4086;
endmodule 
