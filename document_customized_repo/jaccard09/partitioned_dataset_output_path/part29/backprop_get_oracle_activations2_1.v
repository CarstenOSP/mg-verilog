
module backprop_get_oracle_activations2_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_address0,weights3_ce0,weights3_q0,weights3_address1,weights3_ce1,weights3_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_address0,oracle_activations_ce0,oracle_activations_we0,oracle_activations_d0,oracle_activations_address1,oracle_activations_ce1,oracle_activations_we1,oracle_activations_d1,dactivations_address0,dactivations_ce0,dactivations_q0,dactivations_address1,dactivations_ce1,dactivations_q1,grp_fu_3291_p_din0,grp_fu_3291_p_din1,grp_fu_3291_p_opcode,grp_fu_3291_p_dout0,grp_fu_3291_p_ce,grp_fu_3295_p_din0,grp_fu_3295_p_din1,grp_fu_3295_p_opcode,grp_fu_3295_p_dout0,grp_fu_3295_p_ce,grp_fu_3299_p_din0,grp_fu_3299_p_din1,grp_fu_3299_p_opcode,grp_fu_3299_p_dout0,grp_fu_3299_p_ce,grp_fu_3303_p_din0,grp_fu_3303_p_din1,grp_fu_3303_p_opcode,grp_fu_3303_p_dout0,grp_fu_3303_p_ce,grp_fu_3167_p_din0,grp_fu_3167_p_din1,grp_fu_3167_p_dout0,grp_fu_3167_p_ce,grp_fu_3171_p_din0,grp_fu_3171_p_din1,grp_fu_3171_p_dout0,grp_fu_3171_p_ce,grp_fu_3175_p_din0,grp_fu_3175_p_din1,grp_fu_3175_p_dout0,grp_fu_3175_p_ce,grp_fu_3179_p_din0,grp_fu_3179_p_din1,grp_fu_3179_p_dout0,grp_fu_3179_p_ce,grp_fu_3183_p_din0,grp_fu_3183_p_din1,grp_fu_3183_p_dout0,grp_fu_3183_p_ce,grp_fu_3187_p_din0,grp_fu_3187_p_din1,grp_fu_3187_p_dout0,grp_fu_3187_p_ce,grp_fu_3191_p_din0,grp_fu_3191_p_din1,grp_fu_3191_p_dout0,grp_fu_3191_p_ce,grp_fu_3195_p_din0,grp_fu_3195_p_din1,grp_fu_3195_p_dout0,grp_fu_3195_p_ce,grp_fu_3199_p_din0,grp_fu_3199_p_din1,grp_fu_3199_p_dout0,grp_fu_3199_p_ce,grp_fu_3203_p_din0,grp_fu_3203_p_din1,grp_fu_3203_p_dout0,grp_fu_3203_p_ce,grp_fu_3207_p_din0,grp_fu_3207_p_din1,grp_fu_3207_p_dout0,grp_fu_3207_p_ce,grp_fu_3211_p_din0,grp_fu_3211_p_din1,grp_fu_3211_p_dout0,grp_fu_3211_p_ce,grp_fu_3215_p_din0,grp_fu_3215_p_din1,grp_fu_3215_p_dout0,grp_fu_3215_p_ce,grp_fu_3219_p_din0,grp_fu_3219_p_din1,grp_fu_3219_p_dout0,grp_fu_3219_p_ce,grp_fu_3223_p_din0,grp_fu_3223_p_din1,grp_fu_3223_p_dout0,grp_fu_3223_p_ce,grp_fu_3227_p_din0,grp_fu_3227_p_din1,grp_fu_3227_p_dout0,grp_fu_3227_p_ce,grp_fu_3231_p_din0,grp_fu_3231_p_din1,grp_fu_3231_p_dout0,grp_fu_3231_p_ce,grp_fu_3235_p_din0,grp_fu_3235_p_din1,grp_fu_3235_p_dout0,grp_fu_3235_p_ce,grp_fu_3239_p_din0,grp_fu_3239_p_din1,grp_fu_3239_p_dout0,grp_fu_3239_p_ce,grp_fu_3243_p_din0,grp_fu_3243_p_din1,grp_fu_3243_p_dout0,grp_fu_3243_p_ce,grp_fu_3247_p_din0,grp_fu_3247_p_din1,grp_fu_3247_p_dout0,grp_fu_3247_p_ce,grp_fu_3251_p_din0,grp_fu_3251_p_din1,grp_fu_3251_p_dout0,grp_fu_3251_p_ce,grp_fu_3255_p_din0,grp_fu_3255_p_din1,grp_fu_3255_p_dout0,grp_fu_3255_p_ce,grp_fu_3259_p_din0,grp_fu_3259_p_din1,grp_fu_3259_p_dout0,grp_fu_3259_p_ce,grp_fu_3263_p_din0,grp_fu_3263_p_din1,grp_fu_3263_p_dout0,grp_fu_3263_p_ce,grp_fu_3267_p_din0,grp_fu_3267_p_din1,grp_fu_3267_p_dout0,grp_fu_3267_p_ce,grp_fu_3271_p_din0,grp_fu_3271_p_din1,grp_fu_3271_p_dout0,grp_fu_3271_p_ce,grp_fu_3275_p_din0,grp_fu_3275_p_din1,grp_fu_3275_p_dout0,grp_fu_3275_p_ce,grp_fu_3279_p_din0,grp_fu_3279_p_din1,grp_fu_3279_p_dout0,grp_fu_3279_p_ce,grp_fu_3283_p_din0,grp_fu_3283_p_din1,grp_fu_3283_p_dout0,grp_fu_3283_p_ce,grp_fu_3287_p_din0,grp_fu_3287_p_din1,grp_fu_3287_p_dout0,grp_fu_3287_p_ce,grp_fu_3315_p_din0,grp_fu_3315_p_din1,grp_fu_3315_p_dout0,grp_fu_3315_p_ce,grp_fu_3319_p_din0,grp_fu_3319_p_din1,grp_fu_3319_p_dout0,grp_fu_3319_p_ce,grp_fu_3323_p_din0,grp_fu_3323_p_din1,grp_fu_3323_p_dout0,grp_fu_3323_p_ce,grp_fu_3327_p_din0,grp_fu_3327_p_din1,grp_fu_3327_p_dout0,grp_fu_3327_p_ce,grp_fu_3331_p_din0,grp_fu_3331_p_din1,grp_fu_3331_p_dout0,grp_fu_3331_p_ce,grp_fu_3335_p_din0,grp_fu_3335_p_din1,grp_fu_3335_p_dout0,grp_fu_3335_p_ce,grp_fu_3339_p_din0,grp_fu_3339_p_din1,grp_fu_3339_p_dout0,grp_fu_3339_p_ce,grp_fu_3343_p_din0,grp_fu_3343_p_din1,grp_fu_3343_p_dout0,grp_fu_3343_p_ce,grp_fu_3347_p_din0,grp_fu_3347_p_din1,grp_fu_3347_p_dout0,grp_fu_3347_p_ce,grp_fu_3351_p_din0,grp_fu_3351_p_din1,grp_fu_3351_p_dout0,grp_fu_3351_p_ce,grp_fu_3355_p_din0,grp_fu_3355_p_din1,grp_fu_3355_p_dout0,grp_fu_3355_p_ce,grp_fu_3359_p_din0,grp_fu_3359_p_din1,grp_fu_3359_p_dout0,grp_fu_3359_p_ce,grp_fu_3363_p_din0,grp_fu_3363_p_din1,grp_fu_3363_p_dout0,grp_fu_3363_p_ce,grp_fu_3375_p_din0,grp_fu_3375_p_din1,grp_fu_3375_p_dout0,grp_fu_3375_p_ce,grp_fu_3379_p_din0,grp_fu_3379_p_din1,grp_fu_3379_p_dout0,grp_fu_3379_p_ce,grp_fu_3383_p_din0,grp_fu_3383_p_din1,grp_fu_3383_p_dout0,grp_fu_3383_p_ce,grp_fu_3387_p_din0,grp_fu_3387_p_din1,grp_fu_3387_p_dout0,grp_fu_3387_p_ce);  
parameter    ap_ST_fsm_state1 = 120'd1;
parameter    ap_ST_fsm_state2 = 120'd2;
parameter    ap_ST_fsm_state3 = 120'd4;
parameter    ap_ST_fsm_state4 = 120'd8;
parameter    ap_ST_fsm_state5 = 120'd16;
parameter    ap_ST_fsm_state6 = 120'd32;
parameter    ap_ST_fsm_state7 = 120'd64;
parameter    ap_ST_fsm_state8 = 120'd128;
parameter    ap_ST_fsm_state9 = 120'd256;
parameter    ap_ST_fsm_state10 = 120'd512;
parameter    ap_ST_fsm_state11 = 120'd1024;
parameter    ap_ST_fsm_state12 = 120'd2048;
parameter    ap_ST_fsm_state13 = 120'd4096;
parameter    ap_ST_fsm_state14 = 120'd8192;
parameter    ap_ST_fsm_state15 = 120'd16384;
parameter    ap_ST_fsm_state16 = 120'd32768;
parameter    ap_ST_fsm_state17 = 120'd65536;
parameter    ap_ST_fsm_state18 = 120'd131072;
parameter    ap_ST_fsm_state19 = 120'd262144;
parameter    ap_ST_fsm_state20 = 120'd524288;
parameter    ap_ST_fsm_state21 = 120'd1048576;
parameter    ap_ST_fsm_state22 = 120'd2097152;
parameter    ap_ST_fsm_state23 = 120'd4194304;
parameter    ap_ST_fsm_state24 = 120'd8388608;
parameter    ap_ST_fsm_state25 = 120'd16777216;
parameter    ap_ST_fsm_state26 = 120'd33554432;
parameter    ap_ST_fsm_state27 = 120'd67108864;
parameter    ap_ST_fsm_state28 = 120'd134217728;
parameter    ap_ST_fsm_state29 = 120'd268435456;
parameter    ap_ST_fsm_state30 = 120'd536870912;
parameter    ap_ST_fsm_state31 = 120'd1073741824;
parameter    ap_ST_fsm_state32 = 120'd2147483648;
parameter    ap_ST_fsm_state33 = 120'd4294967296;
parameter    ap_ST_fsm_state34 = 120'd8589934592;
parameter    ap_ST_fsm_state35 = 120'd17179869184;
parameter    ap_ST_fsm_state36 = 120'd34359738368;
parameter    ap_ST_fsm_state37 = 120'd68719476736;
parameter    ap_ST_fsm_state38 = 120'd137438953472;
parameter    ap_ST_fsm_state39 = 120'd274877906944;
parameter    ap_ST_fsm_state40 = 120'd549755813888;
parameter    ap_ST_fsm_state41 = 120'd1099511627776;
parameter    ap_ST_fsm_state42 = 120'd2199023255552;
parameter    ap_ST_fsm_state43 = 120'd4398046511104;
parameter    ap_ST_fsm_state44 = 120'd8796093022208;
parameter    ap_ST_fsm_state45 = 120'd17592186044416;
parameter    ap_ST_fsm_state46 = 120'd35184372088832;
parameter    ap_ST_fsm_state47 = 120'd70368744177664;
parameter    ap_ST_fsm_state48 = 120'd140737488355328;
parameter    ap_ST_fsm_state49 = 120'd281474976710656;
parameter    ap_ST_fsm_state50 = 120'd562949953421312;
parameter    ap_ST_fsm_state51 = 120'd1125899906842624;
parameter    ap_ST_fsm_state52 = 120'd2251799813685248;
parameter    ap_ST_fsm_state53 = 120'd4503599627370496;
parameter    ap_ST_fsm_state54 = 120'd9007199254740992;
parameter    ap_ST_fsm_state55 = 120'd18014398509481984;
parameter    ap_ST_fsm_state56 = 120'd36028797018963968;
parameter    ap_ST_fsm_state57 = 120'd72057594037927936;
parameter    ap_ST_fsm_state58 = 120'd144115188075855872;
parameter    ap_ST_fsm_state59 = 120'd288230376151711744;
parameter    ap_ST_fsm_state60 = 120'd576460752303423488;
parameter    ap_ST_fsm_state61 = 120'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 120'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 120'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 120'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 120'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 120'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 120'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 120'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 120'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 120'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 120'd1180591620717411303424;
parameter    ap_ST_fsm_state72 = 120'd2361183241434822606848;
parameter    ap_ST_fsm_state73 = 120'd4722366482869645213696;
parameter    ap_ST_fsm_state74 = 120'd9444732965739290427392;
parameter    ap_ST_fsm_state75 = 120'd18889465931478580854784;
parameter    ap_ST_fsm_state76 = 120'd37778931862957161709568;
parameter    ap_ST_fsm_state77 = 120'd75557863725914323419136;
parameter    ap_ST_fsm_state78 = 120'd151115727451828646838272;
parameter    ap_ST_fsm_state79 = 120'd302231454903657293676544;
parameter    ap_ST_fsm_state80 = 120'd604462909807314587353088;
parameter    ap_ST_fsm_state81 = 120'd1208925819614629174706176;
parameter    ap_ST_fsm_state82 = 120'd2417851639229258349412352;
parameter    ap_ST_fsm_state83 = 120'd4835703278458516698824704;
parameter    ap_ST_fsm_state84 = 120'd9671406556917033397649408;
parameter    ap_ST_fsm_state85 = 120'd19342813113834066795298816;
parameter    ap_ST_fsm_state86 = 120'd38685626227668133590597632;
parameter    ap_ST_fsm_state87 = 120'd77371252455336267181195264;
parameter    ap_ST_fsm_state88 = 120'd154742504910672534362390528;
parameter    ap_ST_fsm_state89 = 120'd309485009821345068724781056;
parameter    ap_ST_fsm_state90 = 120'd618970019642690137449562112;
parameter    ap_ST_fsm_state91 = 120'd1237940039285380274899124224;
parameter    ap_ST_fsm_state92 = 120'd2475880078570760549798248448;
parameter    ap_ST_fsm_state93 = 120'd4951760157141521099596496896;
parameter    ap_ST_fsm_state94 = 120'd9903520314283042199192993792;
parameter    ap_ST_fsm_state95 = 120'd19807040628566084398385987584;
parameter    ap_ST_fsm_state96 = 120'd39614081257132168796771975168;
parameter    ap_ST_fsm_state97 = 120'd79228162514264337593543950336;
parameter    ap_ST_fsm_state98 = 120'd158456325028528675187087900672;
parameter    ap_ST_fsm_state99 = 120'd316912650057057350374175801344;
parameter    ap_ST_fsm_state100 = 120'd633825300114114700748351602688;
parameter    ap_ST_fsm_state101 = 120'd1267650600228229401496703205376;
parameter    ap_ST_fsm_state102 = 120'd2535301200456458802993406410752;
parameter    ap_ST_fsm_state103 = 120'd5070602400912917605986812821504;
parameter    ap_ST_fsm_state104 = 120'd10141204801825835211973625643008;
parameter    ap_ST_fsm_state105 = 120'd20282409603651670423947251286016;
parameter    ap_ST_fsm_state106 = 120'd40564819207303340847894502572032;
parameter    ap_ST_fsm_state107 = 120'd81129638414606681695789005144064;
parameter    ap_ST_fsm_state108 = 120'd162259276829213363391578010288128;
parameter    ap_ST_fsm_state109 = 120'd324518553658426726783156020576256;
parameter    ap_ST_fsm_state110 = 120'd649037107316853453566312041152512;
parameter    ap_ST_fsm_state111 = 120'd1298074214633706907132624082305024;
parameter    ap_ST_fsm_state112 = 120'd2596148429267413814265248164610048;
parameter    ap_ST_fsm_state113 = 120'd5192296858534827628530496329220096;
parameter    ap_ST_fsm_state114 = 120'd10384593717069655257060992658440192;
parameter    ap_ST_fsm_state115 = 120'd20769187434139310514121985316880384;
parameter    ap_ST_fsm_state116 = 120'd41538374868278621028243970633760768;
parameter    ap_ST_fsm_state117 = 120'd83076749736557242056487941267521536;
parameter    ap_ST_fsm_state118 = 120'd166153499473114484112975882535043072;
parameter    ap_ST_fsm_state119 = 120'd332306998946228968225951765070086144;
parameter    ap_ST_fsm_state120 = 120'd664613997892457936451903530140172288;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] weights3_address0;
output   weights3_ce0;
input  [63:0] weights3_q0;
output  [7:0] weights3_address1;
output   weights3_ce1;
input  [63:0] weights3_q1;
input  [63:0] output_differences_0_0_val;
input  [63:0] output_differences_0_1_val;
input  [63:0] output_differences_0_2_val;
output  [5:0] oracle_activations_address0;
output   oracle_activations_ce0;
output   oracle_activations_we0;
output  [63:0] oracle_activations_d0;
output  [5:0] oracle_activations_address1;
output   oracle_activations_ce1;
output   oracle_activations_we1;
output  [63:0] oracle_activations_d1;
output  [5:0] dactivations_address0;
output   dactivations_ce0;
input  [63:0] dactivations_q0;
output  [5:0] dactivations_address1;
output   dactivations_ce1;
input  [63:0] dactivations_q1;
output  [63:0] grp_fu_3291_p_din0;
output  [63:0] grp_fu_3291_p_din1;
output  [0:0] grp_fu_3291_p_opcode;
input  [63:0] grp_fu_3291_p_dout0;
output   grp_fu_3291_p_ce;
output  [63:0] grp_fu_3295_p_din0;
output  [63:0] grp_fu_3295_p_din1;
output  [0:0] grp_fu_3295_p_opcode;
input  [63:0] grp_fu_3295_p_dout0;
output   grp_fu_3295_p_ce;
output  [63:0] grp_fu_3299_p_din0;
output  [63:0] grp_fu_3299_p_din1;
output  [0:0] grp_fu_3299_p_opcode;
input  [63:0] grp_fu_3299_p_dout0;
output   grp_fu_3299_p_ce;
output  [63:0] grp_fu_3303_p_din0;
output  [63:0] grp_fu_3303_p_din1;
output  [0:0] grp_fu_3303_p_opcode;
input  [63:0] grp_fu_3303_p_dout0;
output   grp_fu_3303_p_ce;
output  [63:0] grp_fu_3167_p_din0;
output  [63:0] grp_fu_3167_p_din1;
input  [63:0] grp_fu_3167_p_dout0;
output   grp_fu_3167_p_ce;
output  [63:0] grp_fu_3171_p_din0;
output  [63:0] grp_fu_3171_p_din1;
input  [63:0] grp_fu_3171_p_dout0;
output   grp_fu_3171_p_ce;
output  [63:0] grp_fu_3175_p_din0;
output  [63:0] grp_fu_3175_p_din1;
input  [63:0] grp_fu_3175_p_dout0;
output   grp_fu_3175_p_ce;
output  [63:0] grp_fu_3179_p_din0;
output  [63:0] grp_fu_3179_p_din1;
input  [63:0] grp_fu_3179_p_dout0;
output   grp_fu_3179_p_ce;
output  [63:0] grp_fu_3183_p_din0;
output  [63:0] grp_fu_3183_p_din1;
input  [63:0] grp_fu_3183_p_dout0;
output   grp_fu_3183_p_ce;
output  [63:0] grp_fu_3187_p_din0;
output  [63:0] grp_fu_3187_p_din1;
input  [63:0] grp_fu_3187_p_dout0;
output   grp_fu_3187_p_ce;
output  [63:0] grp_fu_3191_p_din0;
output  [63:0] grp_fu_3191_p_din1;
input  [63:0] grp_fu_3191_p_dout0;
output   grp_fu_3191_p_ce;
output  [63:0] grp_fu_3195_p_din0;
output  [63:0] grp_fu_3195_p_din1;
input  [63:0] grp_fu_3195_p_dout0;
output   grp_fu_3195_p_ce;
output  [63:0] grp_fu_3199_p_din0;
output  [63:0] grp_fu_3199_p_din1;
input  [63:0] grp_fu_3199_p_dout0;
output   grp_fu_3199_p_ce;
output  [63:0] grp_fu_3203_p_din0;
output  [63:0] grp_fu_3203_p_din1;
input  [63:0] grp_fu_3203_p_dout0;
output   grp_fu_3203_p_ce;
output  [63:0] grp_fu_3207_p_din0;
output  [63:0] grp_fu_3207_p_din1;
input  [63:0] grp_fu_3207_p_dout0;
output   grp_fu_3207_p_ce;
output  [63:0] grp_fu_3211_p_din0;
output  [63:0] grp_fu_3211_p_din1;
input  [63:0] grp_fu_3211_p_dout0;
output   grp_fu_3211_p_ce;
output  [63:0] grp_fu_3215_p_din0;
output  [63:0] grp_fu_3215_p_din1;
input  [63:0] grp_fu_3215_p_dout0;
output   grp_fu_3215_p_ce;
output  [63:0] grp_fu_3219_p_din0;
output  [63:0] grp_fu_3219_p_din1;
input  [63:0] grp_fu_3219_p_dout0;
output   grp_fu_3219_p_ce;
output  [63:0] grp_fu_3223_p_din0;
output  [63:0] grp_fu_3223_p_din1;
input  [63:0] grp_fu_3223_p_dout0;
output   grp_fu_3223_p_ce;
output  [63:0] grp_fu_3227_p_din0;
output  [63:0] grp_fu_3227_p_din1;
input  [63:0] grp_fu_3227_p_dout0;
output   grp_fu_3227_p_ce;
output  [63:0] grp_fu_3231_p_din0;
output  [63:0] grp_fu_3231_p_din1;
input  [63:0] grp_fu_3231_p_dout0;
output   grp_fu_3231_p_ce;
output  [63:0] grp_fu_3235_p_din0;
output  [63:0] grp_fu_3235_p_din1;
input  [63:0] grp_fu_3235_p_dout0;
output   grp_fu_3235_p_ce;
output  [63:0] grp_fu_3239_p_din0;
output  [63:0] grp_fu_3239_p_din1;
input  [63:0] grp_fu_3239_p_dout0;
output   grp_fu_3239_p_ce;
output  [63:0] grp_fu_3243_p_din0;
output  [63:0] grp_fu_3243_p_din1;
input  [63:0] grp_fu_3243_p_dout0;
output   grp_fu_3243_p_ce;
output  [63:0] grp_fu_3247_p_din0;
output  [63:0] grp_fu_3247_p_din1;
input  [63:0] grp_fu_3247_p_dout0;
output   grp_fu_3247_p_ce;
output  [63:0] grp_fu_3251_p_din0;
output  [63:0] grp_fu_3251_p_din1;
input  [63:0] grp_fu_3251_p_dout0;
output   grp_fu_3251_p_ce;
output  [63:0] grp_fu_3255_p_din0;
output  [63:0] grp_fu_3255_p_din1;
input  [63:0] grp_fu_3255_p_dout0;
output   grp_fu_3255_p_ce;
output  [63:0] grp_fu_3259_p_din0;
output  [63:0] grp_fu_3259_p_din1;
input  [63:0] grp_fu_3259_p_dout0;
output   grp_fu_3259_p_ce;
output  [63:0] grp_fu_3263_p_din0;
output  [63:0] grp_fu_3263_p_din1;
input  [63:0] grp_fu_3263_p_dout0;
output   grp_fu_3263_p_ce;
output  [63:0] grp_fu_3267_p_din0;
output  [63:0] grp_fu_3267_p_din1;
input  [63:0] grp_fu_3267_p_dout0;
output   grp_fu_3267_p_ce;
output  [63:0] grp_fu_3271_p_din0;
output  [63:0] grp_fu_3271_p_din1;
input  [63:0] grp_fu_3271_p_dout0;
output   grp_fu_3271_p_ce;
output  [63:0] grp_fu_3275_p_din0;
output  [63:0] grp_fu_3275_p_din1;
input  [63:0] grp_fu_3275_p_dout0;
output   grp_fu_3275_p_ce;
output  [63:0] grp_fu_3279_p_din0;
output  [63:0] grp_fu_3279_p_din1;
input  [63:0] grp_fu_3279_p_dout0;
output   grp_fu_3279_p_ce;
output  [63:0] grp_fu_3283_p_din0;
output  [63:0] grp_fu_3283_p_din1;
input  [63:0] grp_fu_3283_p_dout0;
output   grp_fu_3283_p_ce;
output  [63:0] grp_fu_3287_p_din0;
output  [63:0] grp_fu_3287_p_din1;
input  [63:0] grp_fu_3287_p_dout0;
output   grp_fu_3287_p_ce;
output  [63:0] grp_fu_3315_p_din0;
output  [63:0] grp_fu_3315_p_din1;
input  [63:0] grp_fu_3315_p_dout0;
output   grp_fu_3315_p_ce;
output  [63:0] grp_fu_3319_p_din0;
output  [63:0] grp_fu_3319_p_din1;
input  [63:0] grp_fu_3319_p_dout0;
output   grp_fu_3319_p_ce;
output  [63:0] grp_fu_3323_p_din0;
output  [63:0] grp_fu_3323_p_din1;
input  [63:0] grp_fu_3323_p_dout0;
output   grp_fu_3323_p_ce;
output  [63:0] grp_fu_3327_p_din0;
output  [63:0] grp_fu_3327_p_din1;
input  [63:0] grp_fu_3327_p_dout0;
output   grp_fu_3327_p_ce;
output  [63:0] grp_fu_3331_p_din0;
output  [63:0] grp_fu_3331_p_din1;
input  [63:0] grp_fu_3331_p_dout0;
output   grp_fu_3331_p_ce;
output  [63:0] grp_fu_3335_p_din0;
output  [63:0] grp_fu_3335_p_din1;
input  [63:0] grp_fu_3335_p_dout0;
output   grp_fu_3335_p_ce;
output  [63:0] grp_fu_3339_p_din0;
output  [63:0] grp_fu_3339_p_din1;
input  [63:0] grp_fu_3339_p_dout0;
output   grp_fu_3339_p_ce;
output  [63:0] grp_fu_3343_p_din0;
output  [63:0] grp_fu_3343_p_din1;
input  [63:0] grp_fu_3343_p_dout0;
output   grp_fu_3343_p_ce;
output  [63:0] grp_fu_3347_p_din0;
output  [63:0] grp_fu_3347_p_din1;
input  [63:0] grp_fu_3347_p_dout0;
output   grp_fu_3347_p_ce;
output  [63:0] grp_fu_3351_p_din0;
output  [63:0] grp_fu_3351_p_din1;
input  [63:0] grp_fu_3351_p_dout0;
output   grp_fu_3351_p_ce;
output  [63:0] grp_fu_3355_p_din0;
output  [63:0] grp_fu_3355_p_din1;
input  [63:0] grp_fu_3355_p_dout0;
output   grp_fu_3355_p_ce;
output  [63:0] grp_fu_3359_p_din0;
output  [63:0] grp_fu_3359_p_din1;
input  [63:0] grp_fu_3359_p_dout0;
output   grp_fu_3359_p_ce;
output  [63:0] grp_fu_3363_p_din0;
output  [63:0] grp_fu_3363_p_din1;
input  [63:0] grp_fu_3363_p_dout0;
output   grp_fu_3363_p_ce;
output  [63:0] grp_fu_3375_p_din0;
output  [63:0] grp_fu_3375_p_din1;
input  [63:0] grp_fu_3375_p_dout0;
output   grp_fu_3375_p_ce;
output  [63:0] grp_fu_3379_p_din0;
output  [63:0] grp_fu_3379_p_din1;
input  [63:0] grp_fu_3379_p_dout0;
output   grp_fu_3379_p_ce;
output  [63:0] grp_fu_3383_p_din0;
output  [63:0] grp_fu_3383_p_din1;
input  [63:0] grp_fu_3383_p_dout0;
output   grp_fu_3383_p_ce;
output  [63:0] grp_fu_3387_p_din0;
output  [63:0] grp_fu_3387_p_din1;
input  [63:0] grp_fu_3387_p_dout0;
output   grp_fu_3387_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [119:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_3554;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state34;
wire    ap_CS_fsm_state35;
wire    ap_CS_fsm_state36;
wire    ap_CS_fsm_state37;
wire    ap_CS_fsm_state38;
wire    ap_CS_fsm_state39;
wire    ap_CS_fsm_state40;
wire    ap_CS_fsm_state41;
wire    ap_CS_fsm_state42;
wire    ap_CS_fsm_state43;
wire    ap_CS_fsm_state44;
wire    ap_CS_fsm_state45;
wire    ap_CS_fsm_state46;
wire    ap_CS_fsm_state47;
wire    ap_CS_fsm_state48;
wire    ap_CS_fsm_state49;
wire    ap_CS_fsm_state50;
wire    ap_CS_fsm_state51;
wire    ap_CS_fsm_state52;
wire    ap_CS_fsm_state53;
wire    ap_CS_fsm_state54;
wire    ap_CS_fsm_state55;
wire    ap_CS_fsm_state56;
wire    ap_CS_fsm_state57;
wire    ap_CS_fsm_state58;
wire    ap_CS_fsm_state59;
wire    ap_CS_fsm_state60;
wire    ap_CS_fsm_state61;
wire    ap_CS_fsm_state62;
wire    ap_CS_fsm_state63;
wire    ap_CS_fsm_state64;
wire    ap_CS_fsm_state65;
wire    ap_CS_fsm_state66;
wire    ap_CS_fsm_state67;
wire    ap_CS_fsm_state68;
wire    ap_CS_fsm_state69;
wire    ap_CS_fsm_state70;
wire    ap_CS_fsm_state71;
wire    ap_CS_fsm_state72;
wire    ap_CS_fsm_state73;
wire    ap_CS_fsm_state74;
wire    ap_CS_fsm_state75;
wire    ap_CS_fsm_state76;
wire    ap_CS_fsm_state77;
wire    ap_CS_fsm_state78;
wire    ap_CS_fsm_state79;
wire    ap_CS_fsm_state80;
wire    ap_CS_fsm_state81;
wire    ap_CS_fsm_state82;
wire    ap_CS_fsm_state83;
wire    ap_CS_fsm_state84;
wire    ap_CS_fsm_state85;
wire    ap_CS_fsm_state86;
wire    ap_CS_fsm_state87;
wire    ap_CS_fsm_state88;
wire    ap_CS_fsm_state89;
wire    ap_CS_fsm_state90;
wire    ap_CS_fsm_state91;
wire    ap_CS_fsm_state92;
wire    ap_CS_fsm_state93;
wire    ap_CS_fsm_state94;
wire    ap_CS_fsm_state95;
wire    ap_CS_fsm_state96;
wire    ap_CS_fsm_state97;
reg   [63:0] reg_3558;
reg   [63:0] reg_3562;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state28;
reg   [63:0] reg_3566;
reg   [63:0] reg_3570;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state29;
reg   [63:0] reg_3574;
reg   [63:0] reg_3578;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state30;
reg   [63:0] reg_3582;
reg   [63:0] reg_3586;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state31;
reg   [63:0] reg_3590;
reg   [63:0] reg_3594;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state32;
reg   [63:0] reg_3598;
wire    ap_CS_fsm_state33;
reg   [63:0] reg_3603;
wire    ap_CS_fsm_state8;
reg   [63:0] reg_3608;
wire    ap_CS_fsm_state98;
wire    ap_CS_fsm_state99;
wire    ap_CS_fsm_state100;
wire    ap_CS_fsm_state101;
wire    ap_CS_fsm_state102;
wire    ap_CS_fsm_state103;
wire    ap_CS_fsm_state104;
wire    ap_CS_fsm_state105;
wire    ap_CS_fsm_state106;
wire    ap_CS_fsm_state107;
wire    ap_CS_fsm_state108;
wire    ap_CS_fsm_state109;
wire    ap_CS_fsm_state110;
wire    ap_CS_fsm_state111;
wire    ap_CS_fsm_state112;
wire    ap_CS_fsm_state113;
wire    ap_CS_fsm_state114;
wire    ap_CS_fsm_state115;
wire    ap_CS_fsm_state116;
wire    ap_CS_fsm_state117;
wire    ap_CS_fsm_state118;
wire    ap_CS_fsm_state119;
reg   [63:0] reg_3615;
reg   [63:0] reg_3622;
reg   [63:0] reg_3628;
reg   [63:0] reg_3634;
reg   [63:0] reg_3640;
reg   [63:0] reg_3646;
reg   [63:0] reg_3652;
reg   [63:0] reg_3658;
reg   [63:0] reg_3664;
reg   [63:0] reg_3670;
reg   [63:0] reg_3676;
reg   [63:0] reg_3682;
reg   [63:0] reg_3688;
reg   [63:0] reg_3694;
reg   [63:0] reg_3700;
reg   [63:0] reg_3706;
reg   [63:0] reg_3713;
reg   [63:0] reg_3720;
reg   [63:0] reg_3726;
reg   [63:0] reg_3732;
reg   [63:0] reg_3738;
reg   [63:0] reg_3744;
reg   [63:0] reg_3750;
reg   [63:0] reg_3756;
reg   [63:0] reg_3762;
reg   [63:0] reg_3768;
reg   [63:0] reg_3774;
reg   [63:0] reg_3780;
reg   [63:0] reg_3786;
reg   [63:0] reg_3792;
reg   [63:0] reg_3798;
reg   [63:0] reg_3804;
reg   [63:0] reg_3810;
reg   [63:0] reg_3816;
reg   [63:0] reg_3821;
reg   [63:0] reg_3826;
reg   [63:0] reg_3831;
reg   [63:0] reg_3836;
reg   [63:0] reg_3841;
reg   [63:0] reg_3846;
reg   [63:0] reg_3851;
reg   [63:0] reg_3856;
reg   [63:0] reg_3861;
reg   [63:0] reg_3866;
reg   [63:0] reg_3871;
reg   [63:0] reg_3876;
reg   [63:0] reg_3881;
reg   [63:0] reg_3886;
reg   [63:0] reg_3891;
reg   [63:0] reg_3896;
reg   [63:0] reg_3901;
reg   [63:0] reg_3906;
reg   [63:0] reg_3911;
reg   [63:0] reg_3916;
reg   [63:0] reg_3921;
reg   [63:0] reg_3926;
reg   [63:0] reg_3931;
reg   [63:0] reg_3936;
reg   [63:0] reg_3941;
reg   [63:0] reg_3946;
reg   [63:0] reg_3951;
reg   [63:0] reg_3956;
reg   [63:0] reg_3961;
reg   [63:0] reg_3966;
reg   [63:0] reg_3971;
reg   [63:0] reg_3976;
reg   [63:0] reg_3981;
reg   [63:0] reg_3986;
reg   [63:0] reg_3991;
reg   [63:0] reg_3996;
reg   [63:0] reg_4001;
reg   [63:0] reg_4006;
reg   [63:0] reg_4011;
reg   [63:0] reg_4016;
reg   [63:0] reg_4021;
reg   [63:0] reg_4026;
reg   [63:0] reg_4031;
reg   [63:0] weights3_load_102_reg_5029;
reg   [63:0] weights3_load_105_reg_5044;
wire    ap_CS_fsm_state9;
reg   [63:0] weights3_load_108_reg_5049;
reg   [63:0] weights3_load_111_reg_5064;
wire    ap_CS_fsm_state10;
reg   [63:0] weights3_load_114_reg_5069;
reg   [63:0] weights3_load_117_reg_5084;
wire    ap_CS_fsm_state11;
reg   [63:0] weights3_load_120_reg_5089;
reg   [63:0] weights3_load_123_reg_5104;
wire    ap_CS_fsm_state12;
reg   [63:0] weights3_load_126_reg_5109;
reg   [63:0] weights3_load_129_reg_5124;
wire    ap_CS_fsm_state13;
reg   [63:0] weights3_load_132_reg_5129;
reg   [63:0] weights3_load_135_reg_5144;
wire    ap_CS_fsm_state14;
reg   [63:0] weights3_load_138_reg_5149;
reg   [63:0] weights3_load_141_reg_5164;
wire    ap_CS_fsm_state15;
reg   [63:0] weights3_load_144_reg_5169;
reg   [63:0] weights3_load_147_reg_5184;
wire    ap_CS_fsm_state16;
reg   [63:0] weights3_load_150_reg_5189;
reg   [63:0] weights3_load_153_reg_5204;
wire    ap_CS_fsm_state17;
reg   [63:0] weights3_load_156_reg_5209;
reg   [63:0] weights3_load_159_reg_5224;
wire    ap_CS_fsm_state18;
reg   [63:0] weights3_load_162_reg_5229;
reg   [63:0] weights3_load_165_reg_5244;
wire    ap_CS_fsm_state19;
reg   [63:0] weights3_load_168_reg_5249;
reg   [63:0] weights3_load_171_reg_5264;
wire    ap_CS_fsm_state20;
reg   [63:0] weights3_load_174_reg_5269;
reg   [63:0] weights3_load_177_reg_5284;
wire    ap_CS_fsm_state21;
reg   [63:0] weights3_load_180_reg_5289;
reg   [63:0] weights3_load_183_reg_5304;
wire    ap_CS_fsm_state22;
reg   [63:0] weights3_load_186_reg_5309;
reg   [63:0] weights3_load_189_reg_5324;
wire    ap_CS_fsm_state23;
reg   [63:0] weights3_load_192_reg_5329;
reg   [63:0] weights3_load_195_reg_5344;
wire    ap_CS_fsm_state24;
reg   [63:0] weights3_load_198_reg_5349;
reg   [63:0] weights3_load_201_reg_5364;
wire    ap_CS_fsm_state25;
reg   [63:0] weights3_load_204_reg_5369;
reg   [63:0] weights3_load_207_reg_5384;
wire    ap_CS_fsm_state26;
reg   [63:0] weights3_load_210_reg_5389;
wire   [63:0] bitcast_ln85_fu_4036_p1;
wire   [63:0] bitcast_ln85_3_fu_4041_p1;
wire   [63:0] bitcast_ln85_129_fu_4046_p1;
wire   [63:0] bitcast_ln85_6_fu_4050_p1;
wire   [63:0] bitcast_ln85_9_fu_4055_p1;
wire   [63:0] bitcast_ln85_12_fu_4060_p1;
wire   [63:0] bitcast_ln85_15_fu_4065_p1;
wire   [63:0] bitcast_ln85_18_fu_4070_p1;
wire   [63:0] bitcast_ln85_21_fu_4075_p1;
wire   [63:0] bitcast_ln85_24_fu_4080_p1;
wire   [63:0] bitcast_ln85_27_fu_4085_p1;
wire   [63:0] bitcast_ln85_30_fu_4090_p1;
wire   [63:0] bitcast_ln85_33_fu_4095_p1;
wire   [63:0] bitcast_ln85_36_fu_4100_p1;
wire   [63:0] bitcast_ln85_39_fu_4105_p1;
wire   [63:0] bitcast_ln85_183_fu_4109_p1;
wire   [63:0] bitcast_ln85_42_fu_4114_p1;
wire   [63:0] bitcast_ln85_45_fu_4118_p1;
wire   [63:0] bitcast_ln85_48_fu_4122_p1;
wire   [63:0] bitcast_ln85_51_fu_4126_p1;
wire   [63:0] bitcast_ln85_54_fu_4130_p1;
wire   [63:0] bitcast_ln85_57_fu_4134_p1;
wire   [63:0] bitcast_ln85_60_fu_4138_p1;
wire   [63:0] bitcast_ln85_63_fu_4142_p1;
wire   [63:0] bitcast_ln85_66_fu_4146_p1;
wire   [63:0] bitcast_ln85_69_fu_4150_p1;
wire   [63:0] bitcast_ln85_72_fu_4154_p1;
wire   [63:0] bitcast_ln85_75_fu_4158_p1;
wire   [63:0] bitcast_ln85_78_fu_4162_p1;
wire   [63:0] bitcast_ln85_81_fu_4166_p1;
wire   [63:0] bitcast_ln85_84_fu_4170_p1;
wire   [63:0] bitcast_ln85_87_fu_4174_p1;
wire   [63:0] bitcast_ln85_90_fu_4178_p1;
wire   [63:0] bitcast_ln85_93_fu_4182_p1;
wire   [63:0] bitcast_ln85_96_fu_4186_p1;
wire   [63:0] bitcast_ln85_99_fu_4190_p1;
wire   [63:0] bitcast_ln85_102_fu_4194_p1;
wire   [63:0] bitcast_ln85_105_fu_4198_p1;
wire   [63:0] bitcast_ln85_108_fu_4202_p1;
wire   [63:0] bitcast_ln85_111_fu_4206_p1;
wire   [63:0] bitcast_ln85_114_fu_4210_p1;
wire   [63:0] bitcast_ln85_117_fu_4214_p1;
wire   [63:0] bitcast_ln85_120_fu_4218_p1;
wire   [63:0] bitcast_ln85_123_fu_4222_p1;
wire   [63:0] bitcast_ln85_126_fu_4226_p1;
wire   [63:0] bitcast_ln85_132_fu_4230_p1;
wire   [63:0] bitcast_ln85_135_fu_4234_p1;
wire   [63:0] bitcast_ln85_138_fu_4238_p1;
wire   [63:0] bitcast_ln85_141_fu_4242_p1;
wire   [63:0] bitcast_ln85_144_fu_4246_p1;
wire   [63:0] bitcast_ln85_147_fu_4250_p1;
wire   [63:0] bitcast_ln85_150_fu_4254_p1;
wire   [63:0] bitcast_ln85_153_fu_4259_p1;
wire   [63:0] bitcast_ln85_156_fu_4264_p1;
wire   [63:0] bitcast_ln85_159_fu_4269_p1;
wire   [63:0] bitcast_ln85_162_fu_4274_p1;
wire   [63:0] bitcast_ln85_165_fu_4279_p1;
wire   [63:0] bitcast_ln85_168_fu_4284_p1;
wire   [63:0] bitcast_ln85_171_fu_4289_p1;
wire   [63:0] bitcast_ln85_174_fu_4294_p1;
wire   [63:0] bitcast_ln85_177_fu_4299_p1;
wire   [63:0] bitcast_ln85_180_fu_4304_p1;
wire   [63:0] bitcast_ln85_186_fu_4309_p1;
wire   [63:0] bitcast_ln85_189_fu_4314_p1;
wire   [63:0] bitcast_ln85_1_fu_4319_p1;
wire   [63:0] bitcast_ln85_4_fu_4324_p1;
wire   [63:0] bitcast_ln85_7_fu_4329_p1;
wire   [63:0] bitcast_ln85_10_fu_4334_p1;
wire   [63:0] bitcast_ln85_13_fu_4339_p1;
wire   [63:0] bitcast_ln85_16_fu_4344_p1;
wire   [63:0] bitcast_ln85_19_fu_4349_p1;
wire   [63:0] bitcast_ln85_22_fu_4354_p1;
wire   [63:0] bitcast_ln85_25_fu_4359_p1;
wire   [63:0] bitcast_ln85_28_fu_4364_p1;
wire   [63:0] bitcast_ln85_31_fu_4369_p1;
wire   [63:0] bitcast_ln85_34_fu_4374_p1;
reg   [63:0] mul8_18_reg_5982;
reg   [63:0] mul8_19_reg_5987;
reg   [63:0] mul8_20_reg_5992;
reg   [63:0] mul8_21_reg_5997;
reg   [63:0] mul8_22_reg_6002;
reg   [63:0] mul8_23_reg_6007;
reg   [63:0] mul8_24_reg_6012;
reg   [63:0] mul8_25_reg_6017;
reg   [63:0] mul8_26_reg_6022;
reg   [63:0] mul8_27_reg_6027;
reg   [63:0] mul8_28_reg_6032;
reg   [63:0] mul8_29_reg_6037;
reg   [63:0] mul8_30_reg_6042;
reg   [63:0] mul8_31_reg_6047;
reg   [63:0] mul8_32_reg_6052;
reg   [63:0] mul8_33_reg_6057;
reg   [63:0] mul8_34_reg_6062;
reg   [63:0] mul8_35_reg_6067;
reg   [63:0] mul8_36_reg_6072;
reg   [63:0] mul8_37_reg_6077;
reg   [63:0] mul8_38_reg_6082;
reg   [63:0] mul8_39_reg_6087;
reg   [63:0] mul8_40_reg_6092;
reg   [63:0] mul8_41_reg_6097;
reg   [63:0] mul8_42_reg_6102;
reg   [63:0] mul8_44_reg_6107;
reg   [63:0] mul8_45_reg_6112;
reg   [63:0] mul8_46_reg_6117;
reg   [63:0] mul8_47_reg_6122;
reg   [63:0] mul8_48_reg_6127;
reg   [63:0] mul8_49_reg_6132;
reg   [63:0] mul8_50_reg_6137;
reg   [63:0] mul8_51_reg_6142;
reg   [63:0] mul8_52_reg_6147;
reg   [63:0] mul8_53_reg_6152;
reg   [63:0] mul8_54_reg_6157;
reg   [63:0] mul8_55_reg_6162;
reg   [63:0] mul8_56_reg_6167;
reg   [63:0] mul8_57_reg_6172;
reg   [63:0] mul8_58_reg_6177;
reg   [63:0] mul8_59_reg_6182;
reg   [63:0] mul8_60_reg_6187;
reg   [63:0] mul8_62_reg_6192;
reg   [63:0] mul8_63_reg_6197;
wire   [63:0] bitcast_ln85_37_fu_4379_p1;
wire   [63:0] bitcast_ln85_40_fu_4384_p1;
wire   [63:0] bitcast_ln85_43_fu_4389_p1;
wire   [63:0] bitcast_ln85_46_fu_4394_p1;
wire   [63:0] bitcast_ln85_49_fu_4399_p1;
wire   [63:0] bitcast_ln85_52_fu_4404_p1;
wire   [63:0] bitcast_ln85_55_fu_4409_p1;
wire   [63:0] bitcast_ln85_58_fu_4414_p1;
wire   [63:0] bitcast_ln85_61_fu_4419_p1;
wire   [63:0] bitcast_ln85_64_fu_4424_p1;
wire   [63:0] bitcast_ln85_67_fu_4429_p1;
wire   [63:0] bitcast_ln85_70_fu_4434_p1;
wire   [63:0] bitcast_ln85_73_fu_4439_p1;
wire   [63:0] bitcast_ln85_76_fu_4444_p1;
wire   [63:0] bitcast_ln85_79_fu_4449_p1;
wire   [63:0] bitcast_ln85_82_fu_4454_p1;
wire   [63:0] bitcast_ln85_85_fu_4459_p1;
wire   [63:0] bitcast_ln85_88_fu_4464_p1;
wire   [63:0] bitcast_ln85_91_fu_4469_p1;
wire   [63:0] bitcast_ln85_94_fu_4474_p1;
wire   [63:0] bitcast_ln85_97_fu_4479_p1;
wire   [63:0] bitcast_ln85_100_fu_4484_p1;
wire   [63:0] bitcast_ln85_103_fu_4489_p1;
wire   [63:0] bitcast_ln85_106_fu_4494_p1;
wire   [63:0] bitcast_ln85_109_fu_4499_p1;
wire   [63:0] bitcast_ln85_112_fu_4504_p1;
wire   [63:0] bitcast_ln85_115_fu_4509_p1;
wire   [63:0] bitcast_ln85_118_fu_4514_p1;
wire   [63:0] bitcast_ln85_121_fu_4519_p1;
wire   [63:0] bitcast_ln85_124_fu_4524_p1;
wire   [63:0] bitcast_ln85_127_fu_4529_p1;
wire   [63:0] bitcast_ln85_130_fu_4534_p1;
reg   [63:0] add11_16_1_reg_6522;
reg   [63:0] add11_17_1_reg_6527;
wire   [63:0] bitcast_ln85_133_fu_4539_p1;
wire   [63:0] bitcast_ln85_136_fu_4544_p1;
reg   [63:0] add11_18_1_reg_6552;
reg   [63:0] add11_19_1_reg_6557;
wire   [63:0] bitcast_ln85_139_fu_4549_p1;
wire   [63:0] bitcast_ln85_142_fu_4554_p1;
reg   [63:0] add11_20_1_reg_6582;
reg   [63:0] add11_21_1_reg_6587;
wire   [63:0] bitcast_ln85_145_fu_4559_p1;
wire   [63:0] bitcast_ln85_148_fu_4564_p1;
reg   [63:0] add11_22_1_reg_6612;
reg   [63:0] add11_23_1_reg_6617;
wire   [63:0] bitcast_ln85_151_fu_4569_p1;
wire   [63:0] bitcast_ln85_154_fu_4574_p1;
reg   [63:0] add11_24_1_reg_6642;
reg   [63:0] add11_25_1_reg_6647;
wire   [63:0] bitcast_ln85_157_fu_4579_p1;
wire   [63:0] bitcast_ln85_160_fu_4584_p1;
reg   [63:0] add11_26_1_reg_6672;
reg   [63:0] add11_27_1_reg_6677;
wire   [63:0] bitcast_ln85_163_fu_4589_p1;
wire   [63:0] bitcast_ln85_166_fu_4594_p1;
reg   [63:0] add11_28_1_reg_6702;
reg   [63:0] add11_29_1_reg_6707;
wire   [63:0] bitcast_ln85_169_fu_4599_p1;
wire   [63:0] bitcast_ln85_172_fu_4604_p1;
reg   [63:0] add11_30_1_reg_6732;
reg   [63:0] add11_31_1_reg_6737;
wire   [63:0] bitcast_ln85_175_fu_4609_p1;
wire   [63:0] bitcast_ln85_178_fu_4614_p1;
reg   [63:0] add11_32_1_reg_6772;
reg   [63:0] add11_33_1_reg_6777;
wire   [63:0] bitcast_ln85_181_fu_4619_p1;
wire   [63:0] bitcast_ln85_184_fu_4624_p1;
reg   [63:0] add11_34_1_reg_6802;
reg   [63:0] add11_35_1_reg_6807;
wire   [63:0] bitcast_ln85_187_fu_4629_p1;
wire   [63:0] bitcast_ln85_190_fu_4634_p1;
wire   [63:0] bitcast_ln85_2_fu_4639_p1;
wire   [63:0] bitcast_ln85_5_fu_4644_p1;
reg   [63:0] add11_36_1_reg_6850;
reg   [63:0] add11_37_1_reg_6855;
wire   [63:0] bitcast_ln85_8_fu_4649_p1;
wire   [63:0] bitcast_ln85_11_fu_4654_p1;
reg   [63:0] add11_38_1_reg_6880;
reg   [63:0] add11_39_1_reg_6885;
wire   [63:0] bitcast_ln85_14_fu_4659_p1;
wire   [63:0] bitcast_ln85_17_fu_4664_p1;
reg   [63:0] add11_40_1_reg_6910;
reg   [63:0] add11_41_1_reg_6915;
wire   [63:0] bitcast_ln85_20_fu_4669_p1;
wire   [63:0] bitcast_ln85_23_fu_4674_p1;
reg   [63:0] add11_42_1_reg_6940;
reg   [63:0] add11_43_1_reg_6945;
wire   [63:0] bitcast_ln85_26_fu_4679_p1;
wire   [63:0] bitcast_ln85_29_fu_4684_p1;
reg   [63:0] add11_44_1_reg_6970;
reg   [63:0] add11_45_1_reg_6975;
wire   [63:0] bitcast_ln85_32_fu_4689_p1;
wire   [63:0] bitcast_ln85_35_fu_4694_p1;
reg   [63:0] add11_46_1_reg_7000;
reg   [63:0] add11_47_1_reg_7005;
wire   [63:0] bitcast_ln85_38_fu_4699_p1;
wire   [63:0] bitcast_ln85_41_fu_4704_p1;
reg   [63:0] add11_48_1_reg_7030;
reg   [63:0] add11_49_1_reg_7035;
wire   [63:0] bitcast_ln85_44_fu_4709_p1;
wire   [63:0] bitcast_ln85_47_fu_4714_p1;
reg   [63:0] add11_50_1_reg_7060;
reg   [63:0] add11_51_1_reg_7065;
wire   [63:0] bitcast_ln85_50_fu_4719_p1;
wire   [63:0] bitcast_ln85_53_fu_4724_p1;
reg   [63:0] add11_52_1_reg_7090;
reg   [63:0] add11_53_1_reg_7095;
wire   [63:0] bitcast_ln85_56_fu_4729_p1;
wire   [63:0] bitcast_ln85_59_fu_4734_p1;
reg   [63:0] add11_54_1_reg_7120;
reg   [63:0] add11_55_1_reg_7125;
wire   [63:0] bitcast_ln85_62_fu_4739_p1;
wire   [63:0] bitcast_ln85_65_fu_4744_p1;
reg   [63:0] add11_56_1_reg_7150;
reg   [63:0] add11_57_1_reg_7155;
wire   [63:0] bitcast_ln85_68_fu_4749_p1;
wire   [63:0] bitcast_ln85_71_fu_4754_p1;
reg   [63:0] add11_58_1_reg_7180;
reg   [63:0] add11_59_1_reg_7185;
wire   [63:0] bitcast_ln85_74_fu_4759_p1;
wire   [63:0] bitcast_ln85_77_fu_4764_p1;
reg   [63:0] add11_60_1_reg_7210;
reg   [63:0] add11_61_1_reg_7215;
wire   [63:0] bitcast_ln85_80_fu_4769_p1;
wire   [63:0] bitcast_ln85_83_fu_4774_p1;
reg   [63:0] add11_62_1_reg_7250;
reg   [63:0] add11_63_1_reg_7255;
wire   [63:0] bitcast_ln85_86_fu_4779_p1;
wire   [63:0] bitcast_ln85_89_fu_4784_p1;
wire   [63:0] bitcast_ln85_92_fu_4789_p1;
wire   [63:0] bitcast_ln85_95_fu_4794_p1;
wire   [63:0] bitcast_ln85_98_fu_4799_p1;
wire   [63:0] bitcast_ln85_101_fu_4804_p1;
wire   [63:0] bitcast_ln85_104_fu_4809_p1;
wire   [63:0] bitcast_ln85_107_fu_4814_p1;
wire   [63:0] bitcast_ln85_110_fu_4819_p1;
wire   [63:0] bitcast_ln85_113_fu_4824_p1;
wire   [63:0] bitcast_ln85_116_fu_4829_p1;
wire   [63:0] bitcast_ln85_119_fu_4834_p1;
wire   [63:0] bitcast_ln85_122_fu_4839_p1;
wire   [63:0] bitcast_ln85_125_fu_4844_p1;
wire   [63:0] bitcast_ln85_128_fu_4849_p1;
wire   [63:0] bitcast_ln85_131_fu_4854_p1;
wire   [63:0] bitcast_ln85_134_fu_4859_p1;
wire   [63:0] bitcast_ln85_137_fu_4864_p1;
wire   [63:0] bitcast_ln85_140_fu_4869_p1;
wire   [63:0] bitcast_ln85_143_fu_4874_p1;
wire   [63:0] bitcast_ln85_146_fu_4879_p1;
wire   [63:0] bitcast_ln85_149_fu_4884_p1;
wire   [63:0] bitcast_ln85_152_fu_4889_p1;
wire   [63:0] bitcast_ln85_155_fu_4894_p1;
wire   [63:0] bitcast_ln85_158_fu_4899_p1;
wire   [63:0] bitcast_ln85_161_fu_4904_p1;
wire   [63:0] bitcast_ln85_164_fu_4909_p1;
wire   [63:0] bitcast_ln85_167_fu_4914_p1;
wire   [63:0] bitcast_ln85_170_fu_4919_p1;
wire   [63:0] bitcast_ln85_173_fu_4924_p1;
wire   [63:0] bitcast_ln85_176_fu_4929_p1;
wire   [63:0] bitcast_ln85_179_fu_4934_p1;
wire   [63:0] bitcast_ln85_182_fu_4939_p1;
wire   [63:0] bitcast_ln85_185_fu_4944_p1;
wire   [63:0] bitcast_ln85_188_fu_4949_p1;
wire   [63:0] bitcast_ln85_191_fu_4954_p1;
wire    ap_CS_fsm_state120;
reg    weights3_ce1_local;
reg   [7:0] weights3_address1_local;
reg    weights3_ce0_local;
reg   [7:0] weights3_address0_local;
reg    dactivations_ce1_local;
reg   [5:0] dactivations_address1_local;
reg    dactivations_ce0_local;
reg   [5:0] dactivations_address0_local;
reg    oracle_activations_we1_local;
reg   [63:0] oracle_activations_d1_local;
reg    oracle_activations_ce1_local;
reg   [5:0] oracle_activations_address1_local;
reg    oracle_activations_we0_local;
reg   [63:0] oracle_activations_d0_local;
reg    oracle_activations_ce0_local;
reg   [5:0] oracle_activations_address0_local;
reg   [63:0] grp_fu_3335_p0;
reg   [63:0] grp_fu_3335_p1;
reg   [63:0] grp_fu_3340_p0;
reg   [63:0] grp_fu_3340_p1;
reg   [63:0] grp_fu_3345_p0;
reg   [63:0] grp_fu_3350_p0;
reg   [63:0] grp_fu_3355_p0;
reg   [63:0] grp_fu_3355_p1;
reg   [63:0] grp_fu_3360_p0;
reg   [63:0] grp_fu_3360_p1;
reg   [63:0] grp_fu_3365_p0;
reg   [63:0] grp_fu_3365_p1;
reg   [63:0] grp_fu_3370_p0;
reg   [63:0] grp_fu_3370_p1;
reg   [119:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state73_blk;
wire    ap_ST_fsm_state74_blk;
wire    ap_ST_fsm_state75_blk;
wire    ap_ST_fsm_state76_blk;
wire    ap_ST_fsm_state77_blk;
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
wire    ap_ST_fsm_state111_blk;
wire    ap_ST_fsm_state112_blk;
wire    ap_ST_fsm_state113_blk;
wire    ap_ST_fsm_state114_blk;
wire    ap_ST_fsm_state115_blk;
wire    ap_ST_fsm_state116_blk;
wire    ap_ST_fsm_state117_blk;
wire    ap_ST_fsm_state118_blk;
wire    ap_ST_fsm_state119_blk;
wire    ap_ST_fsm_state120_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 120'd1;
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        reg_3598 <= weights3_q1;
    end else if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_3598 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        reg_3603 <= weights3_q0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        reg_3603 <= weights3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        add11_16_1_reg_6522 <= grp_fu_3291_p_dout0;
        add11_17_1_reg_6527 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        add11_18_1_reg_6552 <= grp_fu_3291_p_dout0;
        add11_19_1_reg_6557 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state59)) begin
        add11_20_1_reg_6582 <= grp_fu_3291_p_dout0;
        add11_21_1_reg_6587 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state60)) begin
        add11_22_1_reg_6612 <= grp_fu_3291_p_dout0;
        add11_23_1_reg_6617 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state61)) begin
        add11_24_1_reg_6642 <= grp_fu_3291_p_dout0;
        add11_25_1_reg_6647 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state62)) begin
        add11_26_1_reg_6672 <= grp_fu_3291_p_dout0;
        add11_27_1_reg_6677 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        add11_28_1_reg_6702 <= grp_fu_3291_p_dout0;
        add11_29_1_reg_6707 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state64)) begin
        add11_30_1_reg_6732 <= grp_fu_3291_p_dout0;
        add11_31_1_reg_6737 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        add11_32_1_reg_6772 <= grp_fu_3291_p_dout0;
        add11_33_1_reg_6777 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state66)) begin
        add11_34_1_reg_6802 <= grp_fu_3291_p_dout0;
        add11_35_1_reg_6807 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state67)) begin
        add11_36_1_reg_6850 <= grp_fu_3291_p_dout0;
        add11_37_1_reg_6855 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state68)) begin
        add11_38_1_reg_6880 <= grp_fu_3291_p_dout0;
        add11_39_1_reg_6885 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state69)) begin
        add11_40_1_reg_6910 <= grp_fu_3291_p_dout0;
        add11_41_1_reg_6915 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state70)) begin
        add11_42_1_reg_6940 <= grp_fu_3291_p_dout0;
        add11_43_1_reg_6945 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state71)) begin
        add11_44_1_reg_6970 <= grp_fu_3291_p_dout0;
        add11_45_1_reg_6975 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state72)) begin
        add11_46_1_reg_7000 <= grp_fu_3291_p_dout0;
        add11_47_1_reg_7005 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state73)) begin
        add11_48_1_reg_7030 <= grp_fu_3291_p_dout0;
        add11_49_1_reg_7035 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state74)) begin
        add11_50_1_reg_7060 <= grp_fu_3291_p_dout0;
        add11_51_1_reg_7065 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state75)) begin
        add11_52_1_reg_7090 <= grp_fu_3291_p_dout0;
        add11_53_1_reg_7095 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state76)) begin
        add11_54_1_reg_7120 <= grp_fu_3291_p_dout0;
        add11_55_1_reg_7125 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state77)) begin
        add11_56_1_reg_7150 <= grp_fu_3291_p_dout0;
        add11_57_1_reg_7155 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state78)) begin
        add11_58_1_reg_7180 <= grp_fu_3291_p_dout0;
        add11_59_1_reg_7185 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state79)) begin
        add11_60_1_reg_7210 <= grp_fu_3291_p_dout0;
        add11_61_1_reg_7215 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state80)) begin
        add11_62_1_reg_7250 <= grp_fu_3291_p_dout0;
        add11_63_1_reg_7255 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        mul8_18_reg_5982 <= grp_fu_3183_p_dout0;
        mul8_19_reg_5987 <= grp_fu_3187_p_dout0;
        mul8_20_reg_5992 <= grp_fu_3191_p_dout0;
        mul8_21_reg_5997 <= grp_fu_3195_p_dout0;
        mul8_22_reg_6002 <= grp_fu_3199_p_dout0;
        mul8_23_reg_6007 <= grp_fu_3203_p_dout0;
        mul8_24_reg_6012 <= grp_fu_3207_p_dout0;
        mul8_25_reg_6017 <= grp_fu_3211_p_dout0;
        mul8_26_reg_6022 <= grp_fu_3215_p_dout0;
        mul8_27_reg_6027 <= grp_fu_3219_p_dout0;
        mul8_28_reg_6032 <= grp_fu_3223_p_dout0;
        mul8_29_reg_6037 <= grp_fu_3227_p_dout0;
        mul8_30_reg_6042 <= grp_fu_3231_p_dout0;
        mul8_31_reg_6047 <= grp_fu_3235_p_dout0;
        mul8_32_reg_6052 <= grp_fu_3239_p_dout0;
        mul8_33_reg_6057 <= grp_fu_3243_p_dout0;
        mul8_34_reg_6062 <= grp_fu_3247_p_dout0;
        mul8_35_reg_6067 <= grp_fu_3251_p_dout0;
        mul8_36_reg_6072 <= grp_fu_3255_p_dout0;
        mul8_37_reg_6077 <= grp_fu_3259_p_dout0;
        mul8_38_reg_6082 <= grp_fu_3263_p_dout0;
        mul8_39_reg_6087 <= grp_fu_3267_p_dout0;
        mul8_40_reg_6092 <= grp_fu_3271_p_dout0;
        mul8_41_reg_6097 <= grp_fu_3275_p_dout0;
        mul8_42_reg_6102 <= grp_fu_3279_p_dout0;
        mul8_44_reg_6107 <= grp_fu_3283_p_dout0;
        mul8_45_reg_6112 <= grp_fu_3287_p_dout0;
        mul8_46_reg_6117 <= grp_fu_3315_p_dout0;
        mul8_47_reg_6122 <= grp_fu_3319_p_dout0;
        mul8_48_reg_6127 <= grp_fu_3323_p_dout0;
        mul8_49_reg_6132 <= grp_fu_3327_p_dout0;
        mul8_50_reg_6137 <= grp_fu_3331_p_dout0;
        mul8_51_reg_6142 <= grp_fu_3335_p_dout0;
        mul8_52_reg_6147 <= grp_fu_3339_p_dout0;
        mul8_53_reg_6152 <= grp_fu_3343_p_dout0;
        mul8_54_reg_6157 <= grp_fu_3347_p_dout0;
        mul8_55_reg_6162 <= grp_fu_3351_p_dout0;
        mul8_56_reg_6167 <= grp_fu_3355_p_dout0;
        mul8_57_reg_6172 <= grp_fu_3359_p_dout0;
        mul8_58_reg_6177 <= grp_fu_3363_p_dout0;
        mul8_59_reg_6182 <= grp_fu_3375_p_dout0;
        mul8_60_reg_6187 <= grp_fu_3379_p_dout0;
        mul8_62_reg_6192 <= grp_fu_3383_p_dout0;
        mul8_63_reg_6197 <= grp_fu_3387_p_dout0;
    end
end
always @ (posedge ap_clk) begin
if (((1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1== ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_3554 <= weights3_q1;
        reg_3558 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state3))) begin
        reg_3562 <= weights3_q1;
        reg_3566 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_3570 <= weights3_q1;
        reg_3574 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state5))) begin
        reg_3578 <= weights3_q1;
        reg_3582 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state6))) begin
        reg_3586 <= weights3_q1;
        reg_3590 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_3594 <= weights3_q1;
    end
end
always @ (posedge ap_clk) begin
if (((1'b1 == ap_CS_fsm_state119) | (1'b1 == ap_CS_fsm_state118) | (1'b1 == ap_CS_fsm_state117) | (1'b1 == ap_CS_fsm_state116) | (1'b1 == ap_CS_fsm_state115) | (1'b1 == ap_CS_fsm_state114) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state73)| (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41))) begin
        reg_3608 <= grp_fu_3167_p_dout0;
        reg_3615 <= grp_fu_3171_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state88))) begin
        reg_3622 <= grp_fu_3175_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34))) begin
        reg_3628 <= grp_fu_3167_p_dout0;
        reg_3634 <= grp_fu_3171_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state35))) begin
        reg_3640 <= grp_fu_3167_p_dout0;
        reg_3646 <= grp_fu_3171_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state36))) begin
        reg_3652 <= grp_fu_3167_p_dout0;
        reg_3658 <= grp_fu_3171_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37))) begin
        reg_3664 <= grp_fu_3167_p_dout0;
        reg_3670 <= grp_fu_3171_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state38))) begin
        reg_3676 <= grp_fu_3167_p_dout0;
        reg_3682 <= grp_fu_3171_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state39))) begin
        reg_3688 <= grp_fu_3167_p_dout0;
        reg_3694 <= grp_fu_3171_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state39))) begin
        reg_3700 <= grp_fu_3175_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state40))) begin
        reg_3706 <= grp_fu_3167_p_dout0;
        reg_3713 <= grp_fu_3171_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state40))) begin
        reg_3720 <= grp_fu_3175_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state40))) begin
        reg_3726 <= grp_fu_3179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41))) begin
        reg_3732 <= grp_fu_3291_p_dout0;
        reg_3738 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42))) begin
        reg_3744 <= grp_fu_3291_p_dout0;
        reg_3750 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43))) begin
        reg_3756 <= grp_fu_3291_p_dout0;
        reg_3762 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44))) begin
        reg_3768 <= grp_fu_3291_p_dout0;
        reg_3774 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45))) begin
        reg_3780 <= grp_fu_3291_p_dout0;
        reg_3786 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46))) begin
        reg_3792 <= grp_fu_3291_p_dout0;
        reg_3798 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47))) begin
        reg_3804 <= grp_fu_3291_p_dout0;
        reg_3810 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48))) begin
        reg_3816 <= grp_fu_3291_p_dout0;
        reg_3821 <= grp_fu_3295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state49))) begin
        reg_3826 <= grp_fu_3299_p_dout0;
        reg_3831 <= grp_fu_3303_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state50))) begin
        reg_3836 <= grp_fu_3299_p_dout0;
        reg_3841 <= grp_fu_3303_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state51))) begin
        reg_3846 <= grp_fu_3299_p_dout0;
        reg_3851 <= grp_fu_3303_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state52))) begin
        reg_3856 <= grp_fu_3299_p_dout0;
        reg_3861 <= grp_fu_3303_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state53))) begin
        reg_3866 <= grp_fu_3299_p_dout0;
        reg_3871 <= grp_fu_3303_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state54))) begin
        reg_3876 <= grp_fu_3299_p_dout0;
        reg_3881 <= grp_fu_3303_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state55))) begin
        reg_3886 <= grp_fu_3299_p_dout0;
        reg_3891 <= grp_fu_3303_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state56))) begin
        reg_3896 <= grp_fu_3299_p_dout0;
        reg_3901 <= grp_fu_3303_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state81))) begin
        reg_3906 <= dactivations_q1;
        reg_3911 <= dactivations_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state82))) begin
        reg_3916 <= dactivations_q1;
        reg_3921 <= dactivations_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state83))) begin
        reg_3926 <= dactivations_q1;
        reg_3931 <= dactivations_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state84))) begin
        reg_3936 <= dactivations_q1;
        reg_3941 <= dactivations_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state85))) begin
        reg_3946 <= dactivations_q1;
        reg_3951 <= dactivations_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state86))) begin
        reg_3956 <= dactivations_q1;
        reg_3961 <= dactivations_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state87))) begin
        reg_3966 <= dactivations_q1;
        reg_3971 <= dactivations_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state89))) begin
        reg_3976 <= grp_fu_3179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state90))) begin
        reg_3981 <= grp_fu_3179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state91))) begin
        reg_3986 <= grp_fu_3175_p_dout0;
        reg_3991 <= grp_fu_3179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state92))) begin
        reg_3996 <= grp_fu_3175_p_dout0;
        reg_4001 <= grp_fu_3179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state93))) begin
        reg_4006 <= grp_fu_3175_p_dout0;
        reg_4011 <= grp_fu_3179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state94))) begin
        reg_4016 <= grp_fu_3175_p_dout0;
        reg_4021 <= grp_fu_3179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state95))) begin
        reg_4026 <= grp_fu_3175_p_dout0;
        reg_4031 <= grp_fu_3179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_load_102_reg_5029 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_load_105_reg_5044 <= weights3_q1;
        weights3_load_108_reg_5049 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_load_111_reg_5064 <= weights3_q1;
        weights3_load_114_reg_5069 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_load_117_reg_5084 <= weights3_q1;
        weights3_load_120_reg_5089 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_load_123_reg_5104 <= weights3_q1;
        weights3_load_126_reg_5109 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_load_129_reg_5124 <= weights3_q1;
        weights3_load_132_reg_5129 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_load_135_reg_5144 <= weights3_q1;
        weights3_load_138_reg_5149 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_load_141_reg_5164 <= weights3_q1;
        weights3_load_144_reg_5169 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_load_147_reg_5184 <= weights3_q1;
        weights3_load_150_reg_5189 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_load_153_reg_5204 <= weights3_q1;
        weights3_load_156_reg_5209 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_load_159_reg_5224 <= weights3_q1;
        weights3_load_162_reg_5229 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_load_165_reg_5244 <= weights3_q1;
        weights3_load_168_reg_5249 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_load_171_reg_5264 <= weights3_q1;
        weights3_load_174_reg_5269 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_load_177_reg_5284 <= weights3_q1;
        weights3_load_180_reg_5289 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_load_183_reg_5304 <= weights3_q1;
        weights3_load_186_reg_5309 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_load_189_reg_5324 <= weights3_q1;
        weights3_load_192_reg_5329 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_load_195_reg_5344 <= weights3_q1;
        weights3_load_198_reg_5349 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        weights3_load_201_reg_5364 <= weights3_q1;
        weights3_load_204_reg_5369 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        weights3_load_207_reg_5384 <= weights3_q1;
        weights3_load_210_reg_5389 <= weights3_q0;
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
assign ap_ST_fsm_state111_blk = 1'b0;
assign ap_ST_fsm_state112_blk = 1'b0;
assign ap_ST_fsm_state113_blk = 1'b0;
assign ap_ST_fsm_state114_blk = 1'b0;
assign ap_ST_fsm_state115_blk = 1'b0;
assign ap_ST_fsm_state116_blk = 1'b0;
assign ap_ST_fsm_state117_blk = 1'b0;
assign ap_ST_fsm_state118_blk = 1'b0;
assign ap_ST_fsm_state119_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state120_blk = 1'b0;
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
assign ap_ST_fsm_state2_blk = 1'b0;
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
assign ap_ST_fsm_state73_blk = 1'b0;
assign ap_ST_fsm_state74_blk = 1'b0;
assign ap_ST_fsm_state75_blk = 1'b0;
assign ap_ST_fsm_state76_blk = 1'b0;
assign ap_ST_fsm_state77_blk = 1'b0;
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
    if (((1'b1 == ap_CS_fsm_state120) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((1'b1 == ap_CS_fsm_state120)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state111)) begin
        dactivations_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state110)) begin
        dactivations_address0_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state109)) begin
        dactivations_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state108)) begin
        dactivations_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state107)) begin
        dactivations_address0_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state106)) begin
        dactivations_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state105)) begin
        dactivations_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state104)) begin
        dactivations_address0_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state103)) begin
        dactivations_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state102)) begin
        dactivations_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state101)) begin
        dactivations_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state100)) begin
        dactivations_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state99)) begin
        dactivations_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state98)) begin
        dactivations_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state97)) begin
        dactivations_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state96)) begin
        dactivations_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        dactivations_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state94)) begin
        dactivations_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state93)) begin
        dactivations_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state92)) begin
        dactivations_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state91)) begin
        dactivations_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state90)) begin
        dactivations_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state89)) begin
        dactivations_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state88)) begin
        dactivations_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state87)) begin
        dactivations_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state86)) begin
        dactivations_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state85)) begin
        dactivations_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state84)) begin
        dactivations_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state83)) begin
        dactivations_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state82)) begin
        dactivations_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state81)) begin
        dactivations_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state80)) begin
        dactivations_address0_local = 64'd1;
    end else begin
        dactivations_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state111)) begin
        dactivations_address1_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state110)) begin
        dactivations_address1_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state109)) begin
        dactivations_address1_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state108)) begin
        dactivations_address1_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state107)) begin
        dactivations_address1_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state106)) begin
        dactivations_address1_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state105)) begin
        dactivations_address1_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state104)) begin
        dactivations_address1_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state103)) begin
        dactivations_address1_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state102)) begin
        dactivations_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state101)) begin
        dactivations_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state100)) begin
        dactivations_address1_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state99)) begin
        dactivations_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state98)) begin
        dactivations_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state97)) begin
        dactivations_address1_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state96)) begin
        dactivations_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        dactivations_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state94)) begin
        dactivations_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state93)) begin
        dactivations_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state92)) begin
        dactivations_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state91)) begin
        dactivations_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state90)) begin
        dactivations_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state89)) begin
        dactivations_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state88)) begin
        dactivations_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state87)) begin
        dactivations_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state86)) begin
        dactivations_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state85)) begin
        dactivations_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state84)) begin
        dactivations_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state83)) begin
        dactivations_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state82)) begin
        dactivations_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state81)) begin
        dactivations_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state80)) begin
        dactivations_address1_local = 64'd0;
    end else begin
        dactivations_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80))) begin
        dactivations_ce0_local = 1'b1;
    end else begin
        dactivations_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80))) begin
        dactivations_ce1_local = 1'b1;
    end else begin
        dactivations_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state105)) begin
        grp_fu_3335_p0 = add11_62_1_reg_7250;
    end else if ((1'b1 == ap_CS_fsm_state104)) begin
        grp_fu_3335_p0 = add11_60_1_reg_7210;
    end else if ((1'b1 == ap_CS_fsm_state103)) begin
        grp_fu_3335_p0 = add11_58_1_reg_7180;
    end else if ((1'b1 == ap_CS_fsm_state102)) begin
        grp_fu_3335_p0 = add11_56_1_reg_7150;
    end else if ((1'b1 == ap_CS_fsm_state101)) begin
        grp_fu_3335_p0 = add11_54_1_reg_7120;
    end else if ((1'b1 == ap_CS_fsm_state100)) begin
        grp_fu_3335_p0 = add11_52_1_reg_7090;
    end else if ((1'b1 == ap_CS_fsm_state99)) begin
        grp_fu_3335_p0 = add11_50_1_reg_7060;
    end else if ((1'b1 == ap_CS_fsm_state98)) begin
        grp_fu_3335_p0 = add11_48_1_reg_7030;
    end else if ((1'b1 == ap_CS_fsm_state97)) begin
        grp_fu_3335_p0 = add11_46_1_reg_7000;
    end else if ((1'b1 == ap_CS_fsm_state96)) begin
        grp_fu_3335_p0 = add11_44_1_reg_6970;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        grp_fu_3335_p0 = add11_42_1_reg_6940;
    end else if ((1'b1 == ap_CS_fsm_state94)) begin
        grp_fu_3335_p0 = add11_40_1_reg_6910;
    end else if ((1'b1 == ap_CS_fsm_state93)) begin
        grp_fu_3335_p0 = add11_38_1_reg_6880;
    end else if ((1'b1 == ap_CS_fsm_state92)) begin
        grp_fu_3335_p0 = add11_36_1_reg_6850;
    end else if ((1'b1 == ap_CS_fsm_state91)) begin
        grp_fu_3335_p0 = add11_34_1_reg_6802;
    end else if ((1'b1 == ap_CS_fsm_state90)) begin
        grp_fu_3335_p0 = add11_32_1_reg_6772;
    end else if ((1'b1 == ap_CS_fsm_state89)) begin
        grp_fu_3335_p0 = add11_30_1_reg_6732;
    end else if ((1'b1 == ap_CS_fsm_state88)) begin
        grp_fu_3335_p0 = add11_28_1_reg_6702;
    end else if ((1'b1 == ap_CS_fsm_state87)) begin
        grp_fu_3335_p0 = add11_26_1_reg_6672;
    end else if ((1'b1 == ap_CS_fsm_state86)) begin
        grp_fu_3335_p0 = add11_24_1_reg_6642;
    end else if ((1'b1 == ap_CS_fsm_state85)) begin
        grp_fu_3335_p0 = add11_22_1_reg_6612;
    end else if ((1'b1 == ap_CS_fsm_state84)) begin
        grp_fu_3335_p0 = add11_20_1_reg_6582;
    end else if ((1'b1 == ap_CS_fsm_state83)) begin
        grp_fu_3335_p0 = add11_18_1_reg_6552;
    end else if ((1'b1 == ap_CS_fsm_state82)) begin
        grp_fu_3335_p0 = add11_16_1_reg_6522;
    end else if (((1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state57))) begin
        grp_fu_3335_p0 = reg_3896;
    end else if (((1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state56))) begin
        grp_fu_3335_p0 = reg_3886;
    end else if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state55))) begin
        grp_fu_3335_p0 = reg_3876;
    end else if (((1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state54))) begin
        grp_fu_3335_p0 = reg_3866;
    end else if (((1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state53))) begin
        grp_fu_3335_p0 = reg_3856;
    end else if (((1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state52))) begin
        grp_fu_3335_p0 = reg_3846;
    end else if (((1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state51))) begin
        grp_fu_3335_p0 = reg_3836;
    end else if (((1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state50))) begin
        grp_fu_3335_p0 = reg_3826;
    end else if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state49))) begin
        grp_fu_3335_p0 = reg_3816;
    end else if (((1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state48))) begin
        grp_fu_3335_p0 = reg_3804;
    end else if (((1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state47))) begin
        grp_fu_3335_p0 = reg_3792;
    end else if (((1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state46))) begin
        grp_fu_3335_p0 = reg_3780;
    end else if (((1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state45))) begin
        grp_fu_3335_p0 = reg_3768;
    end else if (((1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state44))) begin
        grp_fu_3335_p0 = reg_3756;
    end else if (((1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state43))) begin
        grp_fu_3335_p0 = reg_3744;
    end else if (((1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state42))) begin
        grp_fu_3335_p0 = reg_3732;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3335_p0 = reg_3706;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3335_p0 = reg_3688;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3335_p0 = reg_3676;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3335_p0 = reg_3664;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3335_p0 = reg_3652;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3335_p0 = reg_3640;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3335_p0 = reg_3628;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3335_p0 = reg_3608;
    end else begin
        grp_fu_3335_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state96))) begin
        grp_fu_3335_p1 = reg_4026;
    end else if (((1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state95))) begin
        grp_fu_3335_p1 = reg_4016;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state94))) begin
        grp_fu_3335_p1 = reg_4006;
    end else if (((1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state93))) begin
        grp_fu_3335_p1 = reg_3996;
    end else if (((1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state92))) begin
        grp_fu_3335_p1 = reg_3986;
    end else if (((1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state91))) begin
        grp_fu_3335_p1 = reg_3720;
    end else if (((1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state90))) begin
        grp_fu_3335_p1 = reg_3700;
    end else if (((1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state89))) begin
        grp_fu_3335_p1 = reg_3622;
    end else if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state49))) begin
        grp_fu_3335_p1 = reg_3706;
    end else if (((1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48))) begin
        grp_fu_3335_p1 = reg_3688;
    end else if (((1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47))) begin
        grp_fu_3335_p1 = reg_3676;
    end else if (((1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46))) begin
        grp_fu_3335_p1 = reg_3664;
    end else if (((1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45))) begin
        grp_fu_3335_p1 = reg_3652;
    end else if (((1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44))) begin
        grp_fu_3335_p1 = reg_3640;
    end else if (((1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43))) begin
        grp_fu_3335_p1 = reg_3628;
    end else if (((1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42))) begin
        grp_fu_3335_p1 = reg_3608;
    end else if (((1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34))) begin
        grp_fu_3335_p1 = 64'd0;
    end else begin
        grp_fu_3335_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state105)) begin
        grp_fu_3340_p0 = add11_63_1_reg_7255;
    end else if ((1'b1 == ap_CS_fsm_state104)) begin
        grp_fu_3340_p0 = add11_61_1_reg_7215;
    end else if ((1'b1 == ap_CS_fsm_state103)) begin
        grp_fu_3340_p0 = add11_59_1_reg_7185;
    end else if ((1'b1 == ap_CS_fsm_state102)) begin
        grp_fu_3340_p0 = add11_57_1_reg_7155;
    end else if ((1'b1 == ap_CS_fsm_state101)) begin
        grp_fu_3340_p0 = add11_55_1_reg_7125;
    end else if ((1'b1 == ap_CS_fsm_state100)) begin
        grp_fu_3340_p0 = add11_53_1_reg_7095;
    end else if ((1'b1 == ap_CS_fsm_state99)) begin
        grp_fu_3340_p0 = add11_51_1_reg_7065;
    end else if ((1'b1 == ap_CS_fsm_state98)) begin
        grp_fu_3340_p0 = add11_49_1_reg_7035;
    end else if ((1'b1 == ap_CS_fsm_state97)) begin
        grp_fu_3340_p0 = add11_47_1_reg_7005;
    end else if ((1'b1 == ap_CS_fsm_state96)) begin
        grp_fu_3340_p0 = add11_45_1_reg_6975;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        grp_fu_3340_p0 = add11_43_1_reg_6945;
    end else if ((1'b1 == ap_CS_fsm_state94)) begin
        grp_fu_3340_p0 = add11_41_1_reg_6915;
    end else if ((1'b1 == ap_CS_fsm_state93)) begin
        grp_fu_3340_p0 = add11_39_1_reg_6885;
    end else if ((1'b1 == ap_CS_fsm_state92)) begin
        grp_fu_3340_p0 = add11_37_1_reg_6855;
    end else if ((1'b1 == ap_CS_fsm_state91)) begin
        grp_fu_3340_p0 = add11_35_1_reg_6807;
    end else if ((1'b1 == ap_CS_fsm_state90)) begin
        grp_fu_3340_p0 = add11_33_1_reg_6777;
    end else if ((1'b1 == ap_CS_fsm_state89)) begin
        grp_fu_3340_p0 = add11_31_1_reg_6737;
    end else if ((1'b1 == ap_CS_fsm_state88)) begin
        grp_fu_3340_p0 = add11_29_1_reg_6707;
    end else if ((1'b1 == ap_CS_fsm_state87)) begin
        grp_fu_3340_p0 = add11_27_1_reg_6677;
    end else if ((1'b1 == ap_CS_fsm_state86)) begin
        grp_fu_3340_p0 = add11_25_1_reg_6647;
    end else if ((1'b1 == ap_CS_fsm_state85)) begin
        grp_fu_3340_p0 = add11_23_1_reg_6617;
    end else if ((1'b1 == ap_CS_fsm_state84)) begin
        grp_fu_3340_p0 = add11_21_1_reg_6587;
    end else if ((1'b1 == ap_CS_fsm_state83)) begin
        grp_fu_3340_p0 = add11_19_1_reg_6557;
    end else if ((1'b1 == ap_CS_fsm_state82)) begin
        grp_fu_3340_p0 = add11_17_1_reg_6527;
    end else if (((1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state57))) begin
        grp_fu_3340_p0 = reg_3901;
    end else if (((1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state56))) begin
        grp_fu_3340_p0 = reg_3891;
    end else if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state55))) begin
        grp_fu_3340_p0 = reg_3881;
    end else if (((1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state54))) begin
        grp_fu_3340_p0 = reg_3871;
    end else if (((1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state53))) begin
        grp_fu_3340_p0 = reg_3861;
    end else if (((1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state52))) begin
        grp_fu_3340_p0 = reg_3851;
    end else if (((1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state51))) begin
        grp_fu_3340_p0 = reg_3841;
    end else if (((1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state50))) begin
        grp_fu_3340_p0 = reg_3831;
    end else if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state49))) begin
        grp_fu_3340_p0 = reg_3821;
    end else if (((1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state48))) begin
        grp_fu_3340_p0 = reg_3810;
    end else if (((1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state47))) begin
        grp_fu_3340_p0 = reg_3798;
    end else if (((1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state46))) begin
        grp_fu_3340_p0 = reg_3786;
    end else if (((1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state45))) begin
        grp_fu_3340_p0 = reg_3774;
    end else if (((1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state44))) begin
        grp_fu_3340_p0 = reg_3762;
    end else if (((1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state43))) begin
        grp_fu_3340_p0 = reg_3750;
    end else if (((1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state42))) begin
        grp_fu_3340_p0 = reg_3738;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3340_p0 = reg_3713;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3340_p0 = reg_3694;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3340_p0 = reg_3682;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3340_p0 = reg_3670;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3340_p0 = reg_3658;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3340_p0 = reg_3646;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3340_p0 = reg_3634;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3340_p0 = reg_3615;
    end else begin
        grp_fu_3340_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state96))) begin
        grp_fu_3340_p1 = reg_4031;
    end else if (((1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state95))) begin
        grp_fu_3340_p1 = reg_4021;
    end else if (((1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state94))) begin
        grp_fu_3340_p1 = reg_4011;
    end else if (((1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state93))) begin
        grp_fu_3340_p1 = reg_4001;
    end else if (((1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state92))) begin
        grp_fu_3340_p1 = reg_3991;
    end else if (((1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state91))) begin
        grp_fu_3340_p1 = reg_3981;
    end else if (((1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state90))) begin
        grp_fu_3340_p1 = reg_3976;
    end else if (((1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state89))) begin
        grp_fu_3340_p1 = reg_3726;
    end else if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state49))) begin
        grp_fu_3340_p1 = reg_3713;
    end else if (((1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48))) begin
        grp_fu_3340_p1 = reg_3694;
    end else if (((1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47))) begin
        grp_fu_3340_p1 = reg_3682;
    end else if (((1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46))) begin
        grp_fu_3340_p1 = reg_3670;
    end else if (((1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45))) begin
        grp_fu_3340_p1 = reg_3658;
    end else if (((1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44))) begin
        grp_fu_3340_p1 = reg_3646;
    end else if (((1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43))) begin
        grp_fu_3340_p1 = reg_3634;
    end else if (((1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42))) begin
        grp_fu_3340_p1 = reg_3615;
    end else if (((1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34))) begin
        grp_fu_3340_p1 = 64'd0;
    end else begin
        grp_fu_3340_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_3345_p0 = mul8_62_reg_6192;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        grp_fu_3345_p0 = mul8_60_reg_6187;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_3345_p0 = mul8_58_reg_6177;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        grp_fu_3345_p0 = mul8_56_reg_6167;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_3345_p0 = mul8_54_reg_6157;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        grp_fu_3345_p0 = mul8_52_reg_6147;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_3345_p0 = mul8_50_reg_6137;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_3345_p0 = mul8_48_reg_6127;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3345_p0 = mul8_46_reg_6117;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3345_p0 = mul8_44_reg_6107;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3345_p0 = mul8_42_reg_6102;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3345_p0 = mul8_40_reg_6092;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3345_p0 = mul8_38_reg_6082;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_3345_p0 = mul8_36_reg_6072;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3345_p0 = mul8_34_reg_6062;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3345_p0 = mul8_32_reg_6052;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3345_p0 = mul8_30_reg_6042;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3345_p0 = mul8_28_reg_6032;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3345_p0 = mul8_26_reg_6022;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3345_p0 = mul8_24_reg_6012;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3345_p0 = mul8_22_reg_6002;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3345_p0 = mul8_20_reg_5992;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3345_p0 = mul8_18_reg_5982;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        grp_fu_3345_p0 = reg_3720;
    end else begin
        grp_fu_3345_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_3350_p0 = mul8_63_reg_6197;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        grp_fu_3350_p0 = reg_3700;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_3350_p0 = mul8_59_reg_6182;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        grp_fu_3350_p0 = mul8_57_reg_6172;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_3350_p0 = mul8_55_reg_6162;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        grp_fu_3350_p0 = mul8_53_reg_6152;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_3350_p0 = mul8_51_reg_6142;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_3350_p0 = mul8_49_reg_6132;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3350_p0 = mul8_47_reg_6122;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3350_p0 = mul8_45_reg_6112;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3350_p0 = reg_3622;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3350_p0 = mul8_41_reg_6097;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3350_p0 = mul8_39_reg_6087;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_3350_p0 = mul8_37_reg_6077;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3350_p0 = mul8_35_reg_6067;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3350_p0 = mul8_33_reg_6057;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3350_p0 = mul8_31_reg_6047;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3350_p0 = mul8_29_reg_6037;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3350_p0 = mul8_27_reg_6027;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3350_p0 = mul8_25_reg_6017;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3350_p0 = mul8_23_reg_6007;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3350_p0 = mul8_21_reg_5997;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3350_p0 = mul8_19_reg_5987;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        grp_fu_3350_p0 = reg_3726;
    end else begin
        grp_fu_3350_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state88))) begin
        grp_fu_3355_p0 = reg_3804;
    end else if (((1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state87))) begin
        grp_fu_3355_p0 = reg_3792;
    end else if (((1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state86))) begin
        grp_fu_3355_p0 = reg_3780;
    end else if (((1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state85))) begin
        grp_fu_3355_p0 = reg_3768;
    end else if (((1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state84))) begin
        grp_fu_3355_p0 = reg_3756;
    end else if (((1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state83))) begin
        grp_fu_3355_p0 = reg_3744;
    end else if (((1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state82))) begin
        grp_fu_3355_p0 = reg_3732;
    end else if ((1'b1 == ap_CS_fsm_state81)) begin
        grp_fu_3355_p0 = bitcast_ln85_86_fu_4779_p1;
    end else if ((1'b1 == ap_CS_fsm_state80)) begin
        grp_fu_3355_p0 = bitcast_ln85_80_fu_4769_p1;
    end else if ((1'b1 == ap_CS_fsm_state79)) begin
        grp_fu_3355_p0 = bitcast_ln85_74_fu_4759_p1;
    end else if ((1'b1 == ap_CS_fsm_state78)) begin
        grp_fu_3355_p0 = bitcast_ln85_68_fu_4749_p1;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_3355_p0 = bitcast_ln85_62_fu_4739_p1;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        grp_fu_3355_p0 = bitcast_ln85_56_fu_4729_p1;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        grp_fu_3355_p0 = bitcast_ln85_50_fu_4719_p1;
    end else if ((1'b1 == ap_CS_fsm_state74)) begin
        grp_fu_3355_p0 = bitcast_ln85_44_fu_4709_p1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_3355_p0 = bitcast_ln85_38_fu_4699_p1;
    end else if ((1'b1 == ap_CS_fsm_state72)) begin
        grp_fu_3355_p0 = bitcast_ln85_32_fu_4689_p1;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        grp_fu_3355_p0 = bitcast_ln85_26_fu_4679_p1;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        grp_fu_3355_p0 = bitcast_ln85_20_fu_4669_p1;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        grp_fu_3355_p0 = bitcast_ln85_14_fu_4659_p1;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3355_p0 = bitcast_ln85_8_fu_4649_p1;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        grp_fu_3355_p0 = bitcast_ln85_2_fu_4639_p1;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_3355_p0 = bitcast_ln85_187_fu_4629_p1;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_3355_p0 = bitcast_ln85_181_fu_4619_p1;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        grp_fu_3355_p0 = bitcast_ln85_175_fu_4609_p1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_3355_p0 = bitcast_ln85_169_fu_4599_p1;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        grp_fu_3355_p0 = bitcast_ln85_163_fu_4589_p1;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_3355_p0 = bitcast_ln85_157_fu_4579_p1;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        grp_fu_3355_p0 = bitcast_ln85_151_fu_4569_p1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_3355_p0 = bitcast_ln85_145_fu_4559_p1;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_3355_p0 = bitcast_ln85_139_fu_4549_p1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3355_p0 = bitcast_ln85_133_fu_4539_p1;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3355_p0 = bitcast_ln85_127_fu_4529_p1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3355_p0 = bitcast_ln85_121_fu_4519_p1;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3355_p0 = bitcast_ln85_115_fu_4509_p1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3355_p0 = bitcast_ln85_109_fu_4499_p1;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_3355_p0 = bitcast_ln85_103_fu_4489_p1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3355_p0 = bitcast_ln85_97_fu_4479_p1;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3355_p0 = bitcast_ln85_91_fu_4469_p1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3355_p0 = bitcast_ln85_85_fu_4459_p1;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3355_p0 = bitcast_ln85_79_fu_4449_p1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3355_p0 = bitcast_ln85_73_fu_4439_p1;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3355_p0 = bitcast_ln85_67_fu_4429_p1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3355_p0 = bitcast_ln85_61_fu_4419_p1;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3355_p0 = bitcast_ln85_55_fu_4409_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3355_p0 = bitcast_ln85_49_fu_4399_p1;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        grp_fu_3355_p0 = bitcast_ln85_43_fu_4389_p1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3355_p0 = bitcast_ln85_37_fu_4379_p1;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3355_p0 = bitcast_ln85_31_fu_4369_p1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3355_p0 = bitcast_ln85_25_fu_4359_p1;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3355_p0 = bitcast_ln85_19_fu_4349_p1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3355_p0 = bitcast_ln85_13_fu_4339_p1;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3355_p0 = bitcast_ln85_7_fu_4329_p1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3355_p0 = bitcast_ln85_1_fu_4319_p1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3355_p0 = bitcast_ln85_42_fu_4114_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3355_p0 = bitcast_ln85_36_fu_4100_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3355_p0 = bitcast_ln85_30_fu_4090_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3355_p0 = bitcast_ln85_24_fu_4080_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3355_p0 = bitcast_ln85_18_fu_4070_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3355_p0 = bitcast_ln85_12_fu_4060_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3355_p0 = bitcast_ln85_6_fu_4050_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3355_p0 = bitcast_ln85_fu_4036_p1;
    end else begin
        grp_fu_3355_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state88))) begin
        grp_fu_3355_p1 = reg_3966;
    end else if (((1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state87))) begin
        grp_fu_3355_p1 = reg_3956;
    end else if (((1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state86))) begin
        grp_fu_3355_p1 = reg_3946;
    end else if (((1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state85))) begin
        grp_fu_3355_p1 = reg_3936;
    end else if (((1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state84))) begin
        grp_fu_3355_p1 = reg_3926;
    end else if (((1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state83))) begin
        grp_fu_3355_p1 = reg_3916;
    end else if (((1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state82))) begin
        grp_fu_3355_p1 = reg_3906;
    end else if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67))) begin
        grp_fu_3355_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35))) begin
        grp_fu_3355_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3355_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3355_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state88))) begin
        grp_fu_3360_p0 = reg_3810;
    end else if (((1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state87))) begin
        grp_fu_3360_p0 = reg_3798;
    end else if (((1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state86))) begin
        grp_fu_3360_p0 = reg_3786;
    end else if (((1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state85))) begin
        grp_fu_3360_p0 = reg_3774;
    end else if (((1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state84))) begin
        grp_fu_3360_p0 = reg_3762;
    end else if (((1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state83))) begin
        grp_fu_3360_p0 = reg_3750;
    end else if (((1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state82))) begin
        grp_fu_3360_p0 = reg_3738;
    end else if ((1'b1 == ap_CS_fsm_state81)) begin
        grp_fu_3360_p0 = bitcast_ln85_89_fu_4784_p1;
    end else if ((1'b1 == ap_CS_fsm_state80)) begin
        grp_fu_3360_p0 = bitcast_ln85_83_fu_4774_p1;
    end else if ((1'b1 == ap_CS_fsm_state79)) begin
        grp_fu_3360_p0 = bitcast_ln85_77_fu_4764_p1;
    end else if ((1'b1 == ap_CS_fsm_state78)) begin
        grp_fu_3360_p0 = bitcast_ln85_71_fu_4754_p1;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        grp_fu_3360_p0 = bitcast_ln85_65_fu_4744_p1;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        grp_fu_3360_p0 = bitcast_ln85_59_fu_4734_p1;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        grp_fu_3360_p0 = bitcast_ln85_53_fu_4724_p1;
    end else if ((1'b1 == ap_CS_fsm_state74)) begin
        grp_fu_3360_p0 = bitcast_ln85_47_fu_4714_p1;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_3360_p0 = bitcast_ln85_41_fu_4704_p1;
    end else if ((1'b1 == ap_CS_fsm_state72)) begin
        grp_fu_3360_p0 = bitcast_ln85_35_fu_4694_p1;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        grp_fu_3360_p0 = bitcast_ln85_29_fu_4684_p1;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        grp_fu_3360_p0 = bitcast_ln85_23_fu_4674_p1;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        grp_fu_3360_p0 = bitcast_ln85_17_fu_4664_p1;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3360_p0 = bitcast_ln85_11_fu_4654_p1;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        grp_fu_3360_p0 = bitcast_ln85_5_fu_4644_p1;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_3360_p0 = bitcast_ln85_190_fu_4634_p1;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_3360_p0 = bitcast_ln85_184_fu_4624_p1;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        grp_fu_3360_p0 = bitcast_ln85_178_fu_4614_p1;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_3360_p0 = bitcast_ln85_172_fu_4604_p1;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        grp_fu_3360_p0 = bitcast_ln85_166_fu_4594_p1;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_3360_p0 = bitcast_ln85_160_fu_4584_p1;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        grp_fu_3360_p0 = bitcast_ln85_154_fu_4574_p1;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        grp_fu_3360_p0 = bitcast_ln85_148_fu_4564_p1;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_3360_p0 = bitcast_ln85_142_fu_4554_p1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3360_p0 = bitcast_ln85_136_fu_4544_p1;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3360_p0 = bitcast_ln85_130_fu_4534_p1;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3360_p0 = bitcast_ln85_124_fu_4524_p1;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3360_p0 = bitcast_ln85_118_fu_4514_p1;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3360_p0 = bitcast_ln85_112_fu_4504_p1;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_3360_p0 = bitcast_ln85_106_fu_4494_p1;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3360_p0 = bitcast_ln85_100_fu_4484_p1;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3360_p0 = bitcast_ln85_94_fu_4474_p1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3360_p0 = bitcast_ln85_88_fu_4464_p1;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3360_p0 = bitcast_ln85_82_fu_4454_p1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3360_p0 = bitcast_ln85_76_fu_4444_p1;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3360_p0 = bitcast_ln85_70_fu_4434_p1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3360_p0 = bitcast_ln85_64_fu_4424_p1;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3360_p0 = bitcast_ln85_58_fu_4414_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3360_p0 = bitcast_ln85_52_fu_4404_p1;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        grp_fu_3360_p0 = bitcast_ln85_46_fu_4394_p1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3360_p0 = bitcast_ln85_40_fu_4384_p1;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3360_p0 = bitcast_ln85_34_fu_4374_p1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3360_p0 = bitcast_ln85_28_fu_4364_p1;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3360_p0 = bitcast_ln85_22_fu_4354_p1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3360_p0 = bitcast_ln85_16_fu_4344_p1;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3360_p0 = bitcast_ln85_10_fu_4334_p1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3360_p0 = bitcast_ln85_4_fu_4324_p1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3360_p0 = bitcast_ln85_45_fu_4118_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3360_p0 = bitcast_ln85_39_fu_4105_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3360_p0 = bitcast_ln85_33_fu_4095_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3360_p0 = bitcast_ln85_27_fu_4085_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3360_p0 = bitcast_ln85_21_fu_4075_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3360_p0 = bitcast_ln85_15_fu_4065_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3360_p0 = bitcast_ln85_9_fu_4055_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3360_p0 = bitcast_ln85_3_fu_4041_p1;
    end else begin
        grp_fu_3360_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state88))) begin
        grp_fu_3360_p1 = reg_3971;
    end else if (((1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state87))) begin
        grp_fu_3360_p1 = reg_3961;
    end else if (((1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state86))) begin
        grp_fu_3360_p1 = reg_3951;
    end else if (((1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state85))) begin
        grp_fu_3360_p1 = reg_3941;
    end else if (((1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state84))) begin
        grp_fu_3360_p1 = reg_3931;
    end else if (((1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state83))) begin
        grp_fu_3360_p1 = reg_3921;
    end else if (((1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state82))) begin
        grp_fu_3360_p1 = reg_3911;
    end else if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67))) begin
        grp_fu_3360_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35))) begin
        grp_fu_3360_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3360_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3360_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state98)) begin
        grp_fu_3365_p0 = bitcast_ln85_188_fu_4949_p1;
    end else if ((1'b1 == ap_CS_fsm_state97)) begin
        grp_fu_3365_p0 = bitcast_ln85_182_fu_4939_p1;
    end else if ((1'b1 == ap_CS_fsm_state96)) begin
        grp_fu_3365_p0 = bitcast_ln85_176_fu_4929_p1;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        grp_fu_3365_p0 = bitcast_ln85_170_fu_4919_p1;
    end else if ((1'b1 == ap_CS_fsm_state94)) begin
        grp_fu_3365_p0 = bitcast_ln85_164_fu_4909_p1;
    end else if ((1'b1 == ap_CS_fsm_state93)) begin
        grp_fu_3365_p0 = bitcast_ln85_158_fu_4899_p1;
    end else if ((1'b1 == ap_CS_fsm_state92)) begin
        grp_fu_3365_p0 = bitcast_ln85_152_fu_4889_p1;
    end else if ((1'b1 == ap_CS_fsm_state91)) begin
        grp_fu_3365_p0 = bitcast_ln85_146_fu_4879_p1;
    end else if ((1'b1 == ap_CS_fsm_state90)) begin
        grp_fu_3365_p0 = bitcast_ln85_140_fu_4869_p1;
    end else if ((1'b1 == ap_CS_fsm_state89)) begin
        grp_fu_3365_p0 = bitcast_ln85_134_fu_4859_p1;
    end else if ((1'b1 == ap_CS_fsm_state88)) begin
        grp_fu_3365_p0 = bitcast_ln85_128_fu_4849_p1;
    end else if ((1'b1 == ap_CS_fsm_state87)) begin
        grp_fu_3365_p0 = bitcast_ln85_122_fu_4839_p1;
    end else if ((1'b1 == ap_CS_fsm_state86)) begin
        grp_fu_3365_p0 = bitcast_ln85_116_fu_4829_p1;
    end else if ((1'b1 == ap_CS_fsm_state85)) begin
        grp_fu_3365_p0 = bitcast_ln85_110_fu_4819_p1;
    end else if ((1'b1 == ap_CS_fsm_state84)) begin
        grp_fu_3365_p0 = bitcast_ln85_104_fu_4809_p1;
    end else if ((1'b1 == ap_CS_fsm_state83)) begin
        grp_fu_3365_p0 = bitcast_ln85_98_fu_4799_p1;
    end else if ((1'b1 == ap_CS_fsm_state82)) begin
        grp_fu_3365_p0 = bitcast_ln85_92_fu_4789_p1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3365_p0 = bitcast_ln85_48_fu_4122_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3365_p0 = bitcast_ln85_183_fu_4109_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3365_p0 = bitcast_ln85_129_fu_4046_p1;
    end else begin
        grp_fu_3365_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82))) begin
        grp_fu_3365_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3365_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3365_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state98)) begin
        grp_fu_3370_p0 = bitcast_ln85_191_fu_4954_p1;
    end else if ((1'b1 == ap_CS_fsm_state97)) begin
        grp_fu_3370_p0 = bitcast_ln85_185_fu_4944_p1;
    end else if ((1'b1 == ap_CS_fsm_state96)) begin
        grp_fu_3370_p0 = bitcast_ln85_179_fu_4934_p1;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        grp_fu_3370_p0 = bitcast_ln85_173_fu_4924_p1;
    end else if ((1'b1 == ap_CS_fsm_state94)) begin
        grp_fu_3370_p0 = bitcast_ln85_167_fu_4914_p1;
    end else if ((1'b1 == ap_CS_fsm_state93)) begin
        grp_fu_3370_p0 = bitcast_ln85_161_fu_4904_p1;
    end else if ((1'b1 == ap_CS_fsm_state92)) begin
        grp_fu_3370_p0 = bitcast_ln85_155_fu_4894_p1;
    end else if ((1'b1 == ap_CS_fsm_state91)) begin
        grp_fu_3370_p0 = bitcast_ln85_149_fu_4884_p1;
    end else if ((1'b1 == ap_CS_fsm_state90)) begin
        grp_fu_3370_p0 = bitcast_ln85_143_fu_4874_p1;
    end else if ((1'b1 == ap_CS_fsm_state89)) begin
        grp_fu_3370_p0 = bitcast_ln85_137_fu_4864_p1;
    end else if ((1'b1 == ap_CS_fsm_state88)) begin
        grp_fu_3370_p0 = bitcast_ln85_131_fu_4854_p1;
    end else if ((1'b1 == ap_CS_fsm_state87)) begin
        grp_fu_3370_p0 = bitcast_ln85_125_fu_4844_p1;
    end else if ((1'b1 == ap_CS_fsm_state86)) begin
        grp_fu_3370_p0 = bitcast_ln85_119_fu_4834_p1;
    end else if ((1'b1 == ap_CS_fsm_state85)) begin
        grp_fu_3370_p0 = bitcast_ln85_113_fu_4824_p1;
    end else if ((1'b1 == ap_CS_fsm_state84)) begin
        grp_fu_3370_p0 = bitcast_ln85_107_fu_4814_p1;
    end else if ((1'b1 == ap_CS_fsm_state83)) begin
        grp_fu_3370_p0 = bitcast_ln85_101_fu_4804_p1;
    end else if ((1'b1 == ap_CS_fsm_state82)) begin
        grp_fu_3370_p0 = bitcast_ln85_95_fu_4794_p1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3370_p0 = bitcast_ln85_51_fu_4126_p1;
    end else begin
        grp_fu_3370_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82))) begin
        grp_fu_3370_p1 = output_differences_0_2_val;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3370_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3370_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state120)) begin
        oracle_activations_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state119)) begin
        oracle_activations_address0_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state118)) begin
        oracle_activations_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        oracle_activations_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state116)) begin
        oracle_activations_address0_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        oracle_activations_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state114)) begin
        oracle_activations_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        oracle_activations_address0_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state112)) begin
        oracle_activations_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        oracle_activations_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state110)) begin
        oracle_activations_address0_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state109)) begin
        oracle_activations_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state108)) begin
        oracle_activations_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state107)) begin
        oracle_activations_address0_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state106)) begin
        oracle_activations_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state105)) begin
        oracle_activations_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state104)) begin
        oracle_activations_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state103)) begin
        oracle_activations_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state102)) begin
        oracle_activations_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state101)) begin
        oracle_activations_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state100)) begin
        oracle_activations_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state99)) begin
        oracle_activations_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state98)) begin
        oracle_activations_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state97)) begin
        oracle_activations_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state96)) begin
        oracle_activations_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        oracle_activations_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state94)) begin
        oracle_activations_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state93)) begin
        oracle_activations_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state92)) begin
        oracle_activations_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state91)) begin
        oracle_activations_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state90)) begin
        oracle_activations_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state89)) begin
        oracle_activations_address0_local = 64'd1;
    end else begin
        oracle_activations_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state120)) begin
        oracle_activations_address1_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state119)) begin
        oracle_activations_address1_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state118)) begin
        oracle_activations_address1_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state117)) begin
        oracle_activations_address1_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state116)) begin
        oracle_activations_address1_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state115)) begin
        oracle_activations_address1_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state114)) begin
        oracle_activations_address1_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state113)) begin
        oracle_activations_address1_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state112)) begin
        oracle_activations_address1_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state111)) begin
        oracle_activations_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state110)) begin
        oracle_activations_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state109)) begin
        oracle_activations_address1_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state108)) begin
        oracle_activations_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state107)) begin
        oracle_activations_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state106)) begin
        oracle_activations_address1_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state105)) begin
        oracle_activations_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state104)) begin
        oracle_activations_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state103)) begin
        oracle_activations_address1_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state102)) begin
        oracle_activations_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state101)) begin
        oracle_activations_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state100)) begin
        oracle_activations_address1_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state99)) begin
        oracle_activations_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state98)) begin
        oracle_activations_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state97)) begin
        oracle_activations_address1_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state96)) begin
        oracle_activations_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        oracle_activations_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state94)) begin
        oracle_activations_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state93)) begin
        oracle_activations_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state92)) begin
        oracle_activations_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state91)) begin
        oracle_activations_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state90)) begin
        oracle_activations_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state89)) begin
        oracle_activations_address1_local = 64'd0;
    end else begin
        oracle_activations_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state119) | (1'b1 == ap_CS_fsm_state118) | (1'b1 == ap_CS_fsm_state117) | (1'b1 == ap_CS_fsm_state116) | (1'b1 == ap_CS_fsm_state115) | (1'b1 == ap_CS_fsm_state114) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state120))) begin
        oracle_activations_ce0_local = 1'b1;
    end else begin
        oracle_activations_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state119) | (1'b1 == ap_CS_fsm_state118) | (1'b1 == ap_CS_fsm_state117) | (1'b1 == ap_CS_fsm_state116) | (1'b1 == ap_CS_fsm_state115) | (1'b1 == ap_CS_fsm_state114) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state120))) begin
        oracle_activations_ce1_local = 1'b1;
    end else begin
        oracle_activations_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state119) | (1'b1 == ap_CS_fsm_state118) | (1'b1 == ap_CS_fsm_state117) | (1'b1 == ap_CS_fsm_state116) | (1'b1 == ap_CS_fsm_state115) | (1'b1 == ap_CS_fsm_state114) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state120))) begin
        oracle_activations_d0_local = reg_3615;
    end else if ((1'b1 == ap_CS_fsm_state89)) begin
        oracle_activations_d0_local = reg_3713;
    end else begin
        oracle_activations_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state119) | (1'b1 == ap_CS_fsm_state118) | (1'b1 == ap_CS_fsm_state117) | (1'b1 == ap_CS_fsm_state116) | (1'b1 == ap_CS_fsm_state115) | (1'b1 == ap_CS_fsm_state114) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state120))) begin
        oracle_activations_d1_local = reg_3608;
    end else if ((1'b1 == ap_CS_fsm_state89)) begin
        oracle_activations_d1_local = reg_3706;
    end else begin
        oracle_activations_d1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state119) | (1'b1 == ap_CS_fsm_state118) | (1'b1 == ap_CS_fsm_state117) | (1'b1 == ap_CS_fsm_state116) | (1'b1 == ap_CS_fsm_state115) | (1'b1 == ap_CS_fsm_state114) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state120))) begin
        oracle_activations_we0_local = 1'b1;
    end else begin
        oracle_activations_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state119) | (1'b1 == ap_CS_fsm_state118) | (1'b1 == ap_CS_fsm_state117) | (1'b1 == ap_CS_fsm_state116) | (1'b1 == ap_CS_fsm_state115) | (1'b1 == ap_CS_fsm_state114) | (1'b1 == ap_CS_fsm_state113) | (1'b1 == ap_CS_fsm_state112) | (1'b1 == ap_CS_fsm_state111) | (1'b1 == ap_CS_fsm_state110) | (1'b1 == ap_CS_fsm_state109) | (1'b1 == ap_CS_fsm_state108) | (1'b1 == ap_CS_fsm_state107) | (1'b1 == ap_CS_fsm_state106) | (1'b1 == ap_CS_fsm_state105) | (1'b1 == ap_CS_fsm_state104) | (1'b1 == ap_CS_fsm_state103) | (1'b1 == ap_CS_fsm_state102) | (1'b1 == ap_CS_fsm_state101) | (1'b1 == ap_CS_fsm_state100) | (1'b1 == ap_CS_fsm_state99) | (1'b1 == ap_CS_fsm_state98) | (1'b1 == ap_CS_fsm_state97) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state120))) begin
        oracle_activations_we1_local = 1'b1;
    end else begin
        oracle_activations_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state96)) begin
        weights3_address0_local = 64'd191;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        weights3_address0_local = 64'd185;
    end else if ((1'b1 == ap_CS_fsm_state94)) begin
        weights3_address0_local = 64'd179;
    end else if ((1'b1 == ap_CS_fsm_state93)) begin
        weights3_address0_local = 64'd173;
    end else if ((1'b1 == ap_CS_fsm_state92)) begin
        weights3_address0_local = 64'd167;
    end else if ((1'b1 == ap_CS_fsm_state91)) begin
        weights3_address0_local = 64'd161;
    end else if ((1'b1 == ap_CS_fsm_state90)) begin
        weights3_address0_local = 64'd155;
    end else if ((1'b1 == ap_CS_fsm_state89)) begin
        weights3_address0_local = 64'd149;
    end else if ((1'b1 == ap_CS_fsm_state88)) begin
        weights3_address0_local = 64'd143;
    end else if ((1'b1 == ap_CS_fsm_state87)) begin
        weights3_address0_local = 64'd137;
    end else if ((1'b1 == ap_CS_fsm_state86)) begin
        weights3_address0_local = 64'd131;
    end else if ((1'b1 == ap_CS_fsm_state85)) begin
        weights3_address0_local = 64'd125;
    end else if ((1'b1 == ap_CS_fsm_state84)) begin
        weights3_address0_local = 64'd119;
    end else if ((1'b1 == ap_CS_fsm_state83)) begin
        weights3_address0_local = 64'd113;
    end else if ((1'b1 == ap_CS_fsm_state82)) begin
        weights3_address0_local = 64'd107;
    end else if ((1'b1 == ap_CS_fsm_state81)) begin
        weights3_address0_local = 64'd101;
    end else if ((1'b1 == ap_CS_fsm_state80)) begin
        weights3_address0_local = 64'd95;
    end else if ((1'b1 == ap_CS_fsm_state79)) begin
        weights3_address0_local = 64'd89;
    end else if ((1'b1 == ap_CS_fsm_state78)) begin
        weights3_address0_local = 64'd83;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        weights3_address0_local = 64'd77;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        weights3_address0_local = 64'd71;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        weights3_address0_local = 64'd65;
    end else if ((1'b1 == ap_CS_fsm_state74)) begin
        weights3_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        weights3_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state72)) begin
        weights3_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        weights3_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        weights3_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        weights3_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        weights3_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        weights3_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        weights3_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        weights3_address0_local = 64'd190;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        weights3_address0_local = 64'd184;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        weights3_address0_local = 64'd178;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        weights3_address0_local = 64'd172;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_address0_local = 64'd166;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        weights3_address0_local = 64'd160;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        weights3_address0_local = 64'd154;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_address0_local = 64'd148;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_address0_local = 64'd142;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        weights3_address0_local = 64'd136;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        weights3_address0_local = 64'd130;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights3_address0_local = 64'd124;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        weights3_address0_local = 64'd118;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        weights3_address0_local = 64'd112;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        weights3_address0_local = 64'd106;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_address0_local = 64'd100;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        weights3_address0_local = 64'd94;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        weights3_address0_local = 64'd88;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        weights3_address0_local = 64'd82;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_address0_local = 64'd76;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        weights3_address0_local = 64'd70;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        weights3_address0_local = 64'd64;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        weights3_address0_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_address0_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        weights3_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        weights3_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        weights3_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        weights3_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights3_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        weights3_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        weights3_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        weights3_address0_local = 64'd189;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        weights3_address0_local = 64'd183;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        weights3_address0_local = 64'd177;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_address0_local = 64'd171;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        weights3_address0_local = 64'd165;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        weights3_address0_local = 64'd159;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        weights3_address0_local = 64'd153;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        weights3_address0_local = 64'd147;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_address0_local = 64'd141;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_address0_local = 64'd135;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_address0_local = 64'd129;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_address0_local = 64'd123;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_address0_local = 64'd117;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_address0_local = 64'd111;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_address0_local = 64'd105;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_address0_local = 64'd99;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_address0_local = 64'd93;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_address0_local = 64'd87;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_address0_local = 64'd81;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_address0_local = 64'd75;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_address0_local = 64'd69;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_address0_local = 64'd3;
    end else begin
        weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state96)) begin
        weights3_address1_local = 64'd188;
    end else if ((1'b1 == ap_CS_fsm_state95)) begin
        weights3_address1_local = 64'd182;
    end else if ((1'b1 == ap_CS_fsm_state94)) begin
        weights3_address1_local = 64'd176;
    end else if ((1'b1 == ap_CS_fsm_state93)) begin
        weights3_address1_local = 64'd170;
    end else if ((1'b1 == ap_CS_fsm_state92)) begin
        weights3_address1_local = 64'd164;
    end else if ((1'b1 == ap_CS_fsm_state91)) begin
        weights3_address1_local = 64'd158;
    end else if ((1'b1 == ap_CS_fsm_state90)) begin
        weights3_address1_local = 64'd152;
    end else if ((1'b1 == ap_CS_fsm_state89)) begin
        weights3_address1_local = 64'd146;
    end else if ((1'b1 == ap_CS_fsm_state88)) begin
        weights3_address1_local = 64'd140;
    end else if ((1'b1 == ap_CS_fsm_state87)) begin
        weights3_address1_local = 64'd134;
    end else if ((1'b1 == ap_CS_fsm_state86)) begin
        weights3_address1_local = 64'd128;
    end else if ((1'b1 == ap_CS_fsm_state85)) begin
        weights3_address1_local = 64'd122;
    end else if ((1'b1 == ap_CS_fsm_state84)) begin
        weights3_address1_local = 64'd116;
    end else if ((1'b1 == ap_CS_fsm_state83)) begin
        weights3_address1_local = 64'd110;
    end else if ((1'b1 == ap_CS_fsm_state82)) begin
        weights3_address1_local = 64'd104;
    end else if ((1'b1 == ap_CS_fsm_state81)) begin
        weights3_address1_local = 64'd98;
    end else if ((1'b1 == ap_CS_fsm_state80)) begin
        weights3_address1_local = 64'd92;
    end else if ((1'b1 == ap_CS_fsm_state79)) begin
        weights3_address1_local = 64'd86;
    end else if ((1'b1 == ap_CS_fsm_state78)) begin
        weights3_address1_local = 64'd80;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        weights3_address1_local = 64'd74;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        weights3_address1_local = 64'd68;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        weights3_address1_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state74)) begin
        weights3_address1_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        weights3_address1_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state72)) begin
        weights3_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        weights3_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        weights3_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        weights3_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        weights3_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        weights3_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        weights3_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        weights3_address1_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        weights3_address1_local = 64'd187;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        weights3_address1_local = 64'd181;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        weights3_address1_local = 64'd175;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        weights3_address1_local = 64'd169;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        weights3_address1_local = 64'd163;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        weights3_address1_local = 64'd157;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        weights3_address1_local = 64'd151;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        weights3_address1_local = 64'd145;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        weights3_address1_local = 64'd139;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        weights3_address1_local = 64'd133;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        weights3_address1_local = 64'd127;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        weights3_address1_local = 64'd121;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        weights3_address1_local = 64'd115;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        weights3_address1_local = 64'd109;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        weights3_address1_local = 64'd103;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_address1_local = 64'd97;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        weights3_address1_local = 64'd91;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        weights3_address1_local = 64'd85;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        weights3_address1_local = 64'd79;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_address1_local = 64'd73;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        weights3_address1_local = 64'd67;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        weights3_address1_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        weights3_address1_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_address1_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        weights3_address1_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_address1_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        weights3_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        weights3_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        weights3_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights3_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        weights3_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        weights3_address1_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        weights3_address1_local = 64'd186;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        weights3_address1_local = 64'd180;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        weights3_address1_local = 64'd174;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_address1_local = 64'd168;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        weights3_address1_local = 64'd162;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        weights3_address1_local = 64'd156;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        weights3_address1_local = 64'd150;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        weights3_address1_local = 64'd144;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_address1_local = 64'd138;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_address1_local = 64'd132;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_address1_local = 64'd126;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_address1_local = 64'd120;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_address1_local = 64'd114;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_address1_local = 64'd108;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_address1_local = 64'd102;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_address1_local = 64'd96;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_address1_local = 64'd90;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_address1_local = 64'd84;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_address1_local = 64'd78;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_address1_local = 64'd72;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_address1_local = 64'd66;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_address1_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_address1_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_address1_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_address1_local = 64'd0;
    end else begin
        weights3_address1_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74)| (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1== ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        weights3_ce0_local = 1'b1;
    end else begin
        weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state96) | (1'b1 == ap_CS_fsm_state95) | (1'b1 == ap_CS_fsm_state94) | (1'b1 == ap_CS_fsm_state93) | (1'b1 == ap_CS_fsm_state92) | (1'b1 == ap_CS_fsm_state91) | (1'b1 == ap_CS_fsm_state90) | (1'b1 == ap_CS_fsm_state89) | (1'b1 == ap_CS_fsm_state88) | (1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74)| (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1== ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        weights3_ce1_local = 1'b1;
    end else begin
        weights3_ce1_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
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
            ap_NS_fsm = ap_ST_fsm_state74;
        end
        ap_ST_fsm_state74 : begin
            ap_NS_fsm = ap_ST_fsm_state75;
        end
        ap_ST_fsm_state75 : begin
            ap_NS_fsm = ap_ST_fsm_state76;
        end
        ap_ST_fsm_state76 : begin
            ap_NS_fsm = ap_ST_fsm_state77;
        end
        ap_ST_fsm_state77 : begin
            ap_NS_fsm = ap_ST_fsm_state78;
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
            ap_NS_fsm = ap_ST_fsm_state112;
        end
        ap_ST_fsm_state112 : begin
            ap_NS_fsm = ap_ST_fsm_state113;
        end
        ap_ST_fsm_state113 : begin
            ap_NS_fsm = ap_ST_fsm_state114;
        end
        ap_ST_fsm_state114 : begin
            ap_NS_fsm = ap_ST_fsm_state115;
        end
        ap_ST_fsm_state115 : begin
            ap_NS_fsm = ap_ST_fsm_state116;
        end
        ap_ST_fsm_state116 : begin
            ap_NS_fsm = ap_ST_fsm_state117;
        end
        ap_ST_fsm_state117 : begin
            ap_NS_fsm = ap_ST_fsm_state118;
        end
        ap_ST_fsm_state118 : begin
            ap_NS_fsm = ap_ST_fsm_state119;
        end
        ap_ST_fsm_state119 : begin
            ap_NS_fsm = ap_ST_fsm_state120;
        end
        ap_ST_fsm_state120 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
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
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
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
assign bitcast_ln85_100_fu_4484_p1 = reg_3558;
assign bitcast_ln85_101_fu_4804_p1 = reg_3558;
assign bitcast_ln85_102_fu_4194_p1 = weights3_load_165_reg_5244;
assign bitcast_ln85_103_fu_4489_p1 = reg_3554;
assign bitcast_ln85_104_fu_4809_p1 = reg_3554;
assign bitcast_ln85_105_fu_4198_p1 = weights3_load_168_reg_5249;
assign bitcast_ln85_106_fu_4494_p1 = reg_3558;
assign bitcast_ln85_107_fu_4814_p1 = reg_3558;
assign bitcast_ln85_108_fu_4202_p1 = weights3_load_171_reg_5264;
assign bitcast_ln85_109_fu_4499_p1 = reg_3554;
assign bitcast_ln85_10_fu_4334_p1 = reg_3558;
assign bitcast_ln85_110_fu_4819_p1 = reg_3554;
assign bitcast_ln85_111_fu_4206_p1 = weights3_load_174_reg_5269;
assign bitcast_ln85_112_fu_4504_p1 = reg_3558;
assign bitcast_ln85_113_fu_4824_p1 = reg_3558;
assign bitcast_ln85_114_fu_4210_p1 = weights3_load_177_reg_5284;
assign bitcast_ln85_115_fu_4509_p1 = reg_3554;
assign bitcast_ln85_116_fu_4829_p1 = reg_3554;
assign bitcast_ln85_117_fu_4214_p1 = weights3_load_180_reg_5289;
assign bitcast_ln85_118_fu_4514_p1 = reg_3558;
assign bitcast_ln85_119_fu_4834_p1 = reg_3558;
assign bitcast_ln85_11_fu_4654_p1 = reg_3558;
assign bitcast_ln85_120_fu_4218_p1 = weights3_load_183_reg_5304;
assign bitcast_ln85_121_fu_4519_p1 = reg_3554;
assign bitcast_ln85_122_fu_4839_p1 = reg_3554;
assign bitcast_ln85_123_fu_4222_p1 = weights3_load_186_reg_5309;
assign bitcast_ln85_124_fu_4524_p1 = reg_3558;
assign bitcast_ln85_125_fu_4844_p1 = reg_3558;
assign bitcast_ln85_126_fu_4226_p1 = weights3_load_189_reg_5324;
assign bitcast_ln85_127_fu_4529_p1 = reg_3554;
assign bitcast_ln85_128_fu_4849_p1 = reg_3554;
assign bitcast_ln85_129_fu_4046_p1 = weights3_load_192_reg_5329;
assign bitcast_ln85_12_fu_4060_p1 = reg_3570;
assign bitcast_ln85_130_fu_4534_p1 = reg_3558;
assign bitcast_ln85_131_fu_4854_p1 = reg_3558;
assign bitcast_ln85_132_fu_4230_p1 = weights3_load_195_reg_5344;
assign bitcast_ln85_133_fu_4539_p1 = reg_3554;
assign bitcast_ln85_134_fu_4859_p1 = reg_3554;
assign bitcast_ln85_135_fu_4234_p1 = weights3_load_198_reg_5349;
assign bitcast_ln85_136_fu_4544_p1 = reg_3558;
assign bitcast_ln85_137_fu_4864_p1 = reg_3558;
assign bitcast_ln85_138_fu_4238_p1 = weights3_load_201_reg_5364;
assign bitcast_ln85_139_fu_4549_p1 = reg_3554;
assign bitcast_ln85_13_fu_4339_p1 = reg_3554;
assign bitcast_ln85_140_fu_4869_p1 = reg_3554;
assign bitcast_ln85_141_fu_4242_p1 = weights3_load_204_reg_5369;
assign bitcast_ln85_142_fu_4554_p1 = reg_3558;
assign bitcast_ln85_143_fu_4874_p1 = reg_3558;
assign bitcast_ln85_144_fu_4246_p1 = weights3_load_207_reg_5384;
assign bitcast_ln85_145_fu_4559_p1 = reg_3554;
assign bitcast_ln85_146_fu_4879_p1 = reg_3554;
assign bitcast_ln85_147_fu_4250_p1 = weights3_load_210_reg_5389;
assign bitcast_ln85_148_fu_4564_p1 = reg_3558;
assign bitcast_ln85_149_fu_4884_p1 = reg_3558;
assign bitcast_ln85_14_fu_4659_p1 = reg_3554;
assign bitcast_ln85_150_fu_4254_p1 = reg_3554;
assign bitcast_ln85_151_fu_4569_p1 = reg_3554;
assign bitcast_ln85_152_fu_4889_p1 = reg_3554;
assign bitcast_ln85_153_fu_4259_p1 = reg_3558;
assign bitcast_ln85_154_fu_4574_p1 = reg_3558;
assign bitcast_ln85_155_fu_4894_p1 = reg_3558;
assign bitcast_ln85_156_fu_4264_p1 = reg_3562;
assign bitcast_ln85_157_fu_4579_p1 = reg_3554;
assign bitcast_ln85_158_fu_4899_p1 = reg_3554;
assign bitcast_ln85_159_fu_4269_p1 = reg_3566;
assign bitcast_ln85_15_fu_4065_p1 = reg_3574;
assign bitcast_ln85_160_fu_4584_p1 = reg_3558;
assign bitcast_ln85_161_fu_4904_p1 = reg_3558;
assign bitcast_ln85_162_fu_4274_p1 = reg_3570;
assign bitcast_ln85_163_fu_4589_p1 = reg_3554;
assign bitcast_ln85_164_fu_4909_p1 = reg_3554;
assign bitcast_ln85_165_fu_4279_p1 = reg_3574;
assign bitcast_ln85_166_fu_4594_p1 = reg_3558;
assign bitcast_ln85_167_fu_4914_p1 = reg_3558;
assign bitcast_ln85_168_fu_4284_p1 = reg_3578;
assign bitcast_ln85_169_fu_4599_p1 = reg_3554;
assign bitcast_ln85_16_fu_4344_p1 = reg_3558;
assign bitcast_ln85_170_fu_4919_p1 = reg_3554;
assign bitcast_ln85_171_fu_4289_p1 = reg_3582;
assign bitcast_ln85_172_fu_4604_p1 = reg_3558;
assign bitcast_ln85_173_fu_4924_p1 = reg_3558;
assign bitcast_ln85_174_fu_4294_p1 = reg_3586;
assign bitcast_ln85_175_fu_4609_p1 = reg_3554;
assign bitcast_ln85_176_fu_4929_p1 = reg_3554;
assign bitcast_ln85_177_fu_4299_p1 = reg_3590;
assign bitcast_ln85_178_fu_4614_p1 = reg_3558;
assign bitcast_ln85_179_fu_4934_p1 = reg_3558;
assign bitcast_ln85_17_fu_4664_p1 = reg_3558;
assign bitcast_ln85_180_fu_4304_p1 = reg_3594;
assign bitcast_ln85_181_fu_4619_p1 = reg_3554;
assign bitcast_ln85_182_fu_4939_p1 = reg_3554;
assign bitcast_ln85_183_fu_4109_p1 = reg_3598;
assign bitcast_ln85_184_fu_4624_p1 = reg_3558;
assign bitcast_ln85_185_fu_4944_p1 = reg_3558;
assign bitcast_ln85_186_fu_4309_p1 = reg_3598;
assign bitcast_ln85_187_fu_4629_p1 = reg_3554;
assign bitcast_ln85_188_fu_4949_p1 = reg_3554;
assign bitcast_ln85_189_fu_4314_p1 = reg_3603;
assign bitcast_ln85_18_fu_4070_p1 = reg_3578;
assign bitcast_ln85_190_fu_4634_p1 = reg_3558;
assign bitcast_ln85_191_fu_4954_p1 = reg_3558;
assign bitcast_ln85_19_fu_4349_p1 = reg_3554;
assign bitcast_ln85_1_fu_4319_p1 = reg_3554;
assign bitcast_ln85_20_fu_4669_p1 = reg_3554;
assign bitcast_ln85_21_fu_4075_p1 = reg_3582;
assign bitcast_ln85_22_fu_4354_p1 = reg_3558;
assign bitcast_ln85_23_fu_4674_p1 = reg_3558;
assign bitcast_ln85_24_fu_4080_p1 = reg_3586;
assign bitcast_ln85_25_fu_4359_p1 = reg_3554;
assign bitcast_ln85_26_fu_4679_p1 = reg_3554;
assign bitcast_ln85_27_fu_4085_p1 = reg_3590;
assign bitcast_ln85_28_fu_4364_p1 = reg_3558;
assign bitcast_ln85_29_fu_4684_p1 = reg_3558;
assign bitcast_ln85_2_fu_4639_p1 = reg_3554;
assign bitcast_ln85_30_fu_4090_p1 = reg_3594;
assign bitcast_ln85_31_fu_4369_p1 = reg_3554;
assign bitcast_ln85_32_fu_4689_p1 = reg_3554;
assign bitcast_ln85_33_fu_4095_p1 = reg_3598;
assign bitcast_ln85_34_fu_4374_p1 = reg_3558;
assign bitcast_ln85_35_fu_4694_p1 = reg_3558;
assign bitcast_ln85_36_fu_4100_p1 = reg_3603;
assign bitcast_ln85_37_fu_4379_p1 = reg_3554;
assign bitcast_ln85_38_fu_4699_p1 = reg_3554;
assign bitcast_ln85_39_fu_4105_p1 = weights3_load_102_reg_5029;
assign bitcast_ln85_3_fu_4041_p1 = reg_3558;
assign bitcast_ln85_40_fu_4384_p1 = reg_3558;
assign bitcast_ln85_41_fu_4704_p1 = reg_3558;
assign bitcast_ln85_42_fu_4114_p1 = weights3_load_105_reg_5044;
assign bitcast_ln85_43_fu_4389_p1 = reg_3554;
assign bitcast_ln85_44_fu_4709_p1 = reg_3554;
assign bitcast_ln85_45_fu_4118_p1 = weights3_load_108_reg_5049;
assign bitcast_ln85_46_fu_4394_p1 = reg_3558;
assign bitcast_ln85_47_fu_4714_p1 = reg_3558;
assign bitcast_ln85_48_fu_4122_p1 = weights3_load_111_reg_5064;
assign bitcast_ln85_49_fu_4399_p1 = reg_3554;
assign bitcast_ln85_4_fu_4324_p1 = reg_3558;
assign bitcast_ln85_50_fu_4719_p1 = reg_3554;
assign bitcast_ln85_51_fu_4126_p1 = weights3_load_114_reg_5069;
assign bitcast_ln85_52_fu_4404_p1 = reg_3558;
assign bitcast_ln85_53_fu_4724_p1 = reg_3558;
assign bitcast_ln85_54_fu_4130_p1 = weights3_load_117_reg_5084;
assign bitcast_ln85_55_fu_4409_p1 = reg_3554;
assign bitcast_ln85_56_fu_4729_p1 = reg_3554;
assign bitcast_ln85_57_fu_4134_p1 = weights3_load_120_reg_5089;
assign bitcast_ln85_58_fu_4414_p1 = reg_3558;
assign bitcast_ln85_59_fu_4734_p1 = reg_3558;
assign bitcast_ln85_5_fu_4644_p1 = reg_3558;
assign bitcast_ln85_60_fu_4138_p1 = weights3_load_123_reg_5104;
assign bitcast_ln85_61_fu_4419_p1 = reg_3554;
assign bitcast_ln85_62_fu_4739_p1 = reg_3554;
assign bitcast_ln85_63_fu_4142_p1 = weights3_load_126_reg_5109;
assign bitcast_ln85_64_fu_4424_p1 = reg_3558;
assign bitcast_ln85_65_fu_4744_p1 = reg_3558;
assign bitcast_ln85_66_fu_4146_p1 = weights3_load_129_reg_5124;
assign bitcast_ln85_67_fu_4429_p1 = reg_3554;
assign bitcast_ln85_68_fu_4749_p1 = reg_3554;
assign bitcast_ln85_69_fu_4150_p1 = weights3_load_132_reg_5129;
assign bitcast_ln85_6_fu_4050_p1 = reg_3562;
assign bitcast_ln85_70_fu_4434_p1 = reg_3558;
assign bitcast_ln85_71_fu_4754_p1 = reg_3558;
assign bitcast_ln85_72_fu_4154_p1 = weights3_load_135_reg_5144;
assign bitcast_ln85_73_fu_4439_p1 = reg_3554;
assign bitcast_ln85_74_fu_4759_p1 = reg_3554;
assign bitcast_ln85_75_fu_4158_p1 = weights3_load_138_reg_5149;
assign bitcast_ln85_76_fu_4444_p1 = reg_3558;
assign bitcast_ln85_77_fu_4764_p1 = reg_3558;
assign bitcast_ln85_78_fu_4162_p1 = weights3_load_141_reg_5164;
assign bitcast_ln85_79_fu_4449_p1 = reg_3554;
assign bitcast_ln85_7_fu_4329_p1 = reg_3554;
assign bitcast_ln85_80_fu_4769_p1 = reg_3554;
assign bitcast_ln85_81_fu_4166_p1 = weights3_load_144_reg_5169;
assign bitcast_ln85_82_fu_4454_p1 = reg_3558;
assign bitcast_ln85_83_fu_4774_p1 = reg_3558;
assign bitcast_ln85_84_fu_4170_p1 = weights3_load_147_reg_5184;
assign bitcast_ln85_85_fu_4459_p1 = reg_3554;
assign bitcast_ln85_86_fu_4779_p1 = reg_3554;
assign bitcast_ln85_87_fu_4174_p1 = weights3_load_150_reg_5189;
assign bitcast_ln85_88_fu_4464_p1 = reg_3558;
assign bitcast_ln85_89_fu_4784_p1 = reg_3558;
assign bitcast_ln85_8_fu_4649_p1 = reg_3554;
assign bitcast_ln85_90_fu_4178_p1 = weights3_load_153_reg_5204;
assign bitcast_ln85_91_fu_4469_p1 = reg_3554;
assign bitcast_ln85_92_fu_4789_p1 = reg_3554;
assign bitcast_ln85_93_fu_4182_p1 = weights3_load_156_reg_5209;
assign bitcast_ln85_94_fu_4474_p1 = reg_3558;
assign bitcast_ln85_95_fu_4794_p1 = reg_3558;
assign bitcast_ln85_96_fu_4186_p1 = weights3_load_159_reg_5224;
assign bitcast_ln85_97_fu_4479_p1 = reg_3554;
assign bitcast_ln85_98_fu_4799_p1 = reg_3554;
assign bitcast_ln85_99_fu_4190_p1 = weights3_load_162_reg_5229;
assign bitcast_ln85_9_fu_4055_p1 = reg_3566;
assign bitcast_ln85_fu_4036_p1 = reg_3554;
assign dactivations_address0 = dactivations_address0_local;
assign dactivations_address1 = dactivations_address1_local;
assign dactivations_ce0 = dactivations_ce0_local;
assign dactivations_ce1 = dactivations_ce1_local;
assign grp_fu_3167_p_ce = 1'b1;
assign grp_fu_3167_p_din0 = grp_fu_3355_p0;
assign grp_fu_3167_p_din1 = grp_fu_3355_p1;
assign grp_fu_3171_p_ce = 1'b1;
assign grp_fu_3171_p_din0 = grp_fu_3360_p0;
assign grp_fu_3171_p_din1 = grp_fu_3360_p1;
assign grp_fu_3175_p_ce = 1'b1;
assign grp_fu_3175_p_din0 = grp_fu_3365_p0;
assign grp_fu_3175_p_din1 = grp_fu_3365_p1;
assign grp_fu_3179_p_ce = 1'b1;
assign grp_fu_3179_p_din0 = grp_fu_3370_p0;
assign grp_fu_3179_p_din1 = grp_fu_3370_p1;
assign grp_fu_3183_p_ce = 1'b1;
assign grp_fu_3183_p_din0 = bitcast_ln85_54_fu_4130_p1;
assign grp_fu_3183_p_din1 = output_differences_0_0_val;
assign grp_fu_3187_p_ce = 1'b1;
assign grp_fu_3187_p_din0 = bitcast_ln85_57_fu_4134_p1;
assign grp_fu_3187_p_din1 = output_differences_0_0_val;
assign grp_fu_3191_p_ce = 1'b1;
assign grp_fu_3191_p_din0 = bitcast_ln85_60_fu_4138_p1;
assign grp_fu_3191_p_din1 = output_differences_0_0_val;
assign grp_fu_3195_p_ce = 1'b1;
assign grp_fu_3195_p_din0 = bitcast_ln85_63_fu_4142_p1;
assign grp_fu_3195_p_din1 = output_differences_0_0_val;
assign grp_fu_3199_p_ce = 1'b1;
assign grp_fu_3199_p_din0 = bitcast_ln85_66_fu_4146_p1;
assign grp_fu_3199_p_din1 = output_differences_0_0_val;
assign grp_fu_3203_p_ce = 1'b1;
assign grp_fu_3203_p_din0 = bitcast_ln85_69_fu_4150_p1;
assign grp_fu_3203_p_din1 = output_differences_0_0_val;
assign grp_fu_3207_p_ce = 1'b1;
assign grp_fu_3207_p_din0 = bitcast_ln85_72_fu_4154_p1;
assign grp_fu_3207_p_din1 = output_differences_0_0_val;
assign grp_fu_3211_p_ce = 1'b1;
assign grp_fu_3211_p_din0 = bitcast_ln85_75_fu_4158_p1;
assign grp_fu_3211_p_din1 = output_differences_0_0_val;
assign grp_fu_3215_p_ce = 1'b1;
assign grp_fu_3215_p_din0 = bitcast_ln85_78_fu_4162_p1;
assign grp_fu_3215_p_din1 = output_differences_0_0_val;
assign grp_fu_3219_p_ce = 1'b1;
assign grp_fu_3219_p_din0 = bitcast_ln85_81_fu_4166_p1;
assign grp_fu_3219_p_din1 = output_differences_0_0_val;
assign grp_fu_3223_p_ce = 1'b1;
assign grp_fu_3223_p_din0 = bitcast_ln85_84_fu_4170_p1;
assign grp_fu_3223_p_din1 = output_differences_0_0_val;
assign grp_fu_3227_p_ce = 1'b1;
assign grp_fu_3227_p_din0 = bitcast_ln85_87_fu_4174_p1;
assign grp_fu_3227_p_din1 = output_differences_0_0_val;
assign grp_fu_3231_p_ce = 1'b1;
assign grp_fu_3231_p_din0 = bitcast_ln85_90_fu_4178_p1;
assign grp_fu_3231_p_din1 = output_differences_0_0_val;
assign grp_fu_3235_p_ce = 1'b1;
assign grp_fu_3235_p_din0 = bitcast_ln85_93_fu_4182_p1;
assign grp_fu_3235_p_din1 = output_differences_0_0_val;
assign grp_fu_3239_p_ce = 1'b1;
assign grp_fu_3239_p_din0 = bitcast_ln85_96_fu_4186_p1;
assign grp_fu_3239_p_din1 = output_differences_0_0_val;
assign grp_fu_3243_p_ce = 1'b1;
assign grp_fu_3243_p_din0 = bitcast_ln85_99_fu_4190_p1;
assign grp_fu_3243_p_din1 = output_differences_0_0_val;
assign grp_fu_3247_p_ce = 1'b1;
assign grp_fu_3247_p_din0 = bitcast_ln85_102_fu_4194_p1;
assign grp_fu_3247_p_din1 = output_differences_0_0_val;
assign grp_fu_3251_p_ce = 1'b1;
assign grp_fu_3251_p_din0 = bitcast_ln85_105_fu_4198_p1;
assign grp_fu_3251_p_din1 = output_differences_0_0_val;
assign grp_fu_3255_p_ce = 1'b1;
assign grp_fu_3255_p_din0 = bitcast_ln85_108_fu_4202_p1;
assign grp_fu_3255_p_din1 = output_differences_0_0_val;
assign grp_fu_3259_p_ce = 1'b1;
assign grp_fu_3259_p_din0 = bitcast_ln85_111_fu_4206_p1;
assign grp_fu_3259_p_din1 = output_differences_0_0_val;
assign grp_fu_3263_p_ce = 1'b1;
assign grp_fu_3263_p_din0 = bitcast_ln85_114_fu_4210_p1;
assign grp_fu_3263_p_din1 = output_differences_0_0_val;
assign grp_fu_3267_p_ce = 1'b1;
assign grp_fu_3267_p_din0 = bitcast_ln85_117_fu_4214_p1;
assign grp_fu_3267_p_din1 = output_differences_0_0_val;
assign grp_fu_3271_p_ce = 1'b1;
assign grp_fu_3271_p_din0 = bitcast_ln85_120_fu_4218_p1;
assign grp_fu_3271_p_din1 = output_differences_0_0_val;
assign grp_fu_3275_p_ce = 1'b1;
assign grp_fu_3275_p_din0 = bitcast_ln85_123_fu_4222_p1;
assign grp_fu_3275_p_din1 = output_differences_0_0_val;
assign grp_fu_3279_p_ce = 1'b1;
assign grp_fu_3279_p_din0 = bitcast_ln85_126_fu_4226_p1;
assign grp_fu_3279_p_din1 = output_differences_0_0_val;
assign grp_fu_3283_p_ce = 1'b1;
assign grp_fu_3283_p_din0 = bitcast_ln85_132_fu_4230_p1;
assign grp_fu_3283_p_din1 = output_differences_0_0_val;
assign grp_fu_3287_p_ce = 1'b1;
assign grp_fu_3287_p_din0 = bitcast_ln85_135_fu_4234_p1;
assign grp_fu_3287_p_din1 = output_differences_0_0_val;
assign grp_fu_3291_p_ce = 1'b1;
assign grp_fu_3291_p_din0 = grp_fu_3335_p0;
assign grp_fu_3291_p_din1 = grp_fu_3335_p1;
assign grp_fu_3291_p_opcode = 2'd0;
assign grp_fu_3295_p_ce = 1'b1;
assign grp_fu_3295_p_din0 = grp_fu_3340_p0;
assign grp_fu_3295_p_din1 = grp_fu_3340_p1;
assign grp_fu_3295_p_opcode = 2'd0;
assign grp_fu_3299_p_ce = 1'b1;
assign grp_fu_3299_p_din0 = grp_fu_3345_p0;
assign grp_fu_3299_p_din1 = 64'd0;
assign grp_fu_3299_p_opcode = 2'd0;
assign grp_fu_3303_p_ce = 1'b1;
assign grp_fu_3303_p_din0 = grp_fu_3350_p0;
assign grp_fu_3303_p_din1 = 64'd0;
assign grp_fu_3303_p_opcode = 2'd0;
assign grp_fu_3315_p_ce = 1'b1;
assign grp_fu_3315_p_din0 = bitcast_ln85_138_fu_4238_p1;
assign grp_fu_3315_p_din1 = output_differences_0_0_val;
assign grp_fu_3319_p_ce = 1'b1;
assign grp_fu_3319_p_din0 = bitcast_ln85_141_fu_4242_p1;
assign grp_fu_3319_p_din1 = output_differences_0_0_val;
assign grp_fu_3323_p_ce = 1'b1;
assign grp_fu_3323_p_din0 = bitcast_ln85_144_fu_4246_p1;
assign grp_fu_3323_p_din1 = output_differences_0_0_val;
assign grp_fu_3327_p_ce = 1'b1;
assign grp_fu_3327_p_din0 = bitcast_ln85_147_fu_4250_p1;
assign grp_fu_3327_p_din1 = output_differences_0_0_val;
assign grp_fu_3331_p_ce = 1'b1;
assign grp_fu_3331_p_din0 = bitcast_ln85_150_fu_4254_p1;
assign grp_fu_3331_p_din1 = output_differences_0_0_val;
assign grp_fu_3335_p_ce = 1'b1;
assign grp_fu_3335_p_din0 = bitcast_ln85_153_fu_4259_p1;
assign grp_fu_3335_p_din1 = output_differences_0_0_val;
assign grp_fu_3339_p_ce = 1'b1;
assign grp_fu_3339_p_din0 = bitcast_ln85_156_fu_4264_p1;
assign grp_fu_3339_p_din1 = output_differences_0_0_val;
assign grp_fu_3343_p_ce = 1'b1;
assign grp_fu_3343_p_din0 = bitcast_ln85_159_fu_4269_p1;
assign grp_fu_3343_p_din1 = output_differences_0_0_val;
assign grp_fu_3347_p_ce = 1'b1;
assign grp_fu_3347_p_din0 = bitcast_ln85_162_fu_4274_p1;
assign grp_fu_3347_p_din1 = output_differences_0_0_val;
assign grp_fu_3351_p_ce = 1'b1;
assign grp_fu_3351_p_din0 = bitcast_ln85_165_fu_4279_p1;
assign grp_fu_3351_p_din1 = output_differences_0_0_val;
assign grp_fu_3355_p_ce = 1'b1;
assign grp_fu_3355_p_din0 = bitcast_ln85_168_fu_4284_p1;
assign grp_fu_3355_p_din1 = output_differences_0_0_val;
assign grp_fu_3359_p_ce = 1'b1;
assign grp_fu_3359_p_din0 = bitcast_ln85_171_fu_4289_p1;
assign grp_fu_3359_p_din1 = output_differences_0_0_val;
assign grp_fu_3363_p_ce = 1'b1;
assign grp_fu_3363_p_din0 = bitcast_ln85_174_fu_4294_p1;
assign grp_fu_3363_p_din1 = output_differences_0_0_val;
assign grp_fu_3375_p_ce = 1'b1;
assign grp_fu_3375_p_din0 = bitcast_ln85_177_fu_4299_p1;
assign grp_fu_3375_p_din1 = output_differences_0_0_val;
assign grp_fu_3379_p_ce = 1'b1;
assign grp_fu_3379_p_din0 = bitcast_ln85_180_fu_4304_p1;
assign grp_fu_3379_p_din1 = output_differences_0_0_val;
assign grp_fu_3383_p_ce = 1'b1;
assign grp_fu_3383_p_din0 = bitcast_ln85_186_fu_4309_p1;
assign grp_fu_3383_p_din1 = output_differences_0_0_val;
assign grp_fu_3387_p_ce = 1'b1;
assign grp_fu_3387_p_din0 = bitcast_ln85_189_fu_4314_p1;
assign grp_fu_3387_p_din1 = output_differences_0_0_val;
assign oracle_activations_address0 = oracle_activations_address0_local;
assign oracle_activations_address1 = oracle_activations_address1_local;
assign oracle_activations_ce0 = oracle_activations_ce0_local;
assign oracle_activations_ce1 = oracle_activations_ce1_local;
assign oracle_activations_d0 = oracle_activations_d0_local;
assign oracle_activations_d1 = oracle_activations_d1_local;
assign oracle_activations_we0 = oracle_activations_we0_local;
assign oracle_activations_we1 = oracle_activations_we1_local;
assign weights3_address0 = weights3_address0_local;
assign weights3_address1 = weights3_address1_local;
assign weights3_ce0 = weights3_ce0_local;
assign weights3_ce1 = weights3_ce1_local;
endmodule 
