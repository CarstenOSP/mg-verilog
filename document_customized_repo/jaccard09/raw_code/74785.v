module backprop_get_oracle_activations2_62_63_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_0_address0,weights3_0_ce0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_q1,weights3_1_address0,weights3_1_ce0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_q1,output_differences_0_0_val,output_differences_0_1_val,output_differences_0_2_val,oracle_activations_0_address0,oracle_activations_0_ce0,oracle_activations_0_we0,oracle_activations_0_d0,oracle_activations_1_address0,oracle_activations_1_ce0,oracle_activations_1_we0,oracle_activations_1_d0,dactivations_0_address0,dactivations_0_ce0,dactivations_0_q0,dactivations_0_address1,dactivations_0_ce1,dactivations_0_q1,dactivations_1_address0,dactivations_1_ce0,dactivations_1_q0,dactivations_1_address1,dactivations_1_ce1,dactivations_1_q1,grp_fu_2842_p_din0,grp_fu_2842_p_din1,grp_fu_2842_p_opcode,grp_fu_2842_p_dout0,grp_fu_2842_p_ce,grp_fu_2846_p_din0,grp_fu_2846_p_din1,grp_fu_2846_p_opcode,grp_fu_2846_p_dout0,grp_fu_2846_p_ce,grp_fu_2850_p_din0,grp_fu_2850_p_din1,grp_fu_2850_p_opcode,grp_fu_2850_p_dout0,grp_fu_2850_p_ce,grp_fu_2854_p_din0,grp_fu_2854_p_din1,grp_fu_2854_p_opcode,grp_fu_2854_p_dout0,grp_fu_2854_p_ce,grp_fu_2858_p_din0,grp_fu_2858_p_din1,grp_fu_2858_p_opcode,grp_fu_2858_p_dout0,grp_fu_2858_p_ce,grp_fu_2862_p_din0,grp_fu_2862_p_din1,grp_fu_2862_p_opcode,grp_fu_2862_p_dout0,grp_fu_2862_p_ce,grp_fu_2866_p_din0,grp_fu_2866_p_din1,grp_fu_2866_p_opcode,grp_fu_2866_p_dout0,grp_fu_2866_p_ce,grp_fu_2870_p_din0,grp_fu_2870_p_din1,grp_fu_2870_p_opcode,grp_fu_2870_p_dout0,grp_fu_2870_p_ce,grp_fu_2890_p_din0,grp_fu_2890_p_din1,grp_fu_2890_p_dout0,grp_fu_2890_p_ce,grp_fu_2894_p_din0,grp_fu_2894_p_din1,grp_fu_2894_p_dout0,grp_fu_2894_p_ce,grp_fu_2898_p_din0,grp_fu_2898_p_din1,grp_fu_2898_p_dout0,grp_fu_2898_p_ce,grp_fu_2902_p_din0,grp_fu_2902_p_din1,grp_fu_2902_p_dout0,grp_fu_2902_p_ce,grp_fu_2906_p_din0,grp_fu_2906_p_din1,grp_fu_2906_p_dout0,grp_fu_2906_p_ce,grp_fu_2910_p_din0,grp_fu_2910_p_din1,grp_fu_2910_p_dout0,grp_fu_2910_p_ce,grp_fu_2914_p_din0,grp_fu_2914_p_din1,grp_fu_2914_p_dout0,grp_fu_2914_p_ce,grp_fu_2918_p_din0,grp_fu_2918_p_din1,grp_fu_2918_p_dout0,grp_fu_2918_p_ce,grp_fu_2922_p_din0,grp_fu_2922_p_din1,grp_fu_2922_p_dout0,grp_fu_2922_p_ce,grp_fu_2926_p_din0,grp_fu_2926_p_din1,grp_fu_2926_p_dout0,grp_fu_2926_p_ce,grp_fu_2930_p_din0,grp_fu_2930_p_din1,grp_fu_2930_p_dout0,grp_fu_2930_p_ce,grp_fu_2934_p_din0,grp_fu_2934_p_din1,grp_fu_2934_p_dout0,grp_fu_2934_p_ce,grp_fu_2938_p_din0,grp_fu_2938_p_din1,grp_fu_2938_p_dout0,grp_fu_2938_p_ce,grp_fu_2942_p_din0,grp_fu_2942_p_din1,grp_fu_2942_p_dout0,grp_fu_2942_p_ce,grp_fu_2946_p_din0,grp_fu_2946_p_din1,grp_fu_2946_p_dout0,grp_fu_2946_p_ce,grp_fu_2950_p_din0,grp_fu_2950_p_din1,grp_fu_2950_p_dout0,grp_fu_2950_p_ce,grp_fu_2954_p_din0,grp_fu_2954_p_din1,grp_fu_2954_p_dout0,grp_fu_2954_p_ce,grp_fu_2958_p_din0,grp_fu_2958_p_din1,grp_fu_2958_p_dout0,grp_fu_2958_p_ce,grp_fu_2962_p_din0,grp_fu_2962_p_din1,grp_fu_2962_p_dout0,grp_fu_2962_p_ce,grp_fu_2966_p_din0,grp_fu_2966_p_din1,grp_fu_2966_p_dout0,grp_fu_2966_p_ce,grp_fu_2970_p_din0,grp_fu_2970_p_din1,grp_fu_2970_p_dout0,grp_fu_2970_p_ce,grp_fu_2974_p_din0,grp_fu_2974_p_din1,grp_fu_2974_p_dout0,grp_fu_2974_p_ce,grp_fu_2978_p_din0,grp_fu_2978_p_din1,grp_fu_2978_p_dout0,grp_fu_2978_p_ce,grp_fu_2982_p_din0,grp_fu_2982_p_din1,grp_fu_2982_p_dout0,grp_fu_2982_p_ce,grp_fu_2986_p_din0,grp_fu_2986_p_din1,grp_fu_2986_p_dout0,grp_fu_2986_p_ce,grp_fu_2990_p_din0,grp_fu_2990_p_din1,grp_fu_2990_p_dout0,grp_fu_2990_p_ce,grp_fu_2994_p_din0,grp_fu_2994_p_din1,grp_fu_2994_p_dout0,grp_fu_2994_p_ce,grp_fu_2998_p_din0,grp_fu_2998_p_din1,grp_fu_2998_p_dout0,grp_fu_2998_p_ce,grp_fu_3002_p_din0,grp_fu_3002_p_din1,grp_fu_3002_p_dout0,grp_fu_3002_p_ce,grp_fu_3006_p_din0,grp_fu_3006_p_din1,grp_fu_3006_p_dout0,grp_fu_3006_p_ce,grp_fu_3010_p_din0,grp_fu_3010_p_din1,grp_fu_3010_p_dout0,grp_fu_3010_p_ce); 
parameter    ap_ST_fsm_state1 = 88'd1;
parameter    ap_ST_fsm_state2 = 88'd2;
parameter    ap_ST_fsm_state3 = 88'd4;
parameter    ap_ST_fsm_state4 = 88'd8;
parameter    ap_ST_fsm_state5 = 88'd16;
parameter    ap_ST_fsm_state6 = 88'd32;
parameter    ap_ST_fsm_state7 = 88'd64;
parameter    ap_ST_fsm_state8 = 88'd128;
parameter    ap_ST_fsm_state9 = 88'd256;
parameter    ap_ST_fsm_state10 = 88'd512;
parameter    ap_ST_fsm_state11 = 88'd1024;
parameter    ap_ST_fsm_state12 = 88'd2048;
parameter    ap_ST_fsm_state13 = 88'd4096;
parameter    ap_ST_fsm_state14 = 88'd8192;
parameter    ap_ST_fsm_state15 = 88'd16384;
parameter    ap_ST_fsm_state16 = 88'd32768;
parameter    ap_ST_fsm_state17 = 88'd65536;
parameter    ap_ST_fsm_state18 = 88'd131072;
parameter    ap_ST_fsm_state19 = 88'd262144;
parameter    ap_ST_fsm_state20 = 88'd524288;
parameter    ap_ST_fsm_state21 = 88'd1048576;
parameter    ap_ST_fsm_state22 = 88'd2097152;
parameter    ap_ST_fsm_state23 = 88'd4194304;
parameter    ap_ST_fsm_state24 = 88'd8388608;
parameter    ap_ST_fsm_state25 = 88'd16777216;
parameter    ap_ST_fsm_state26 = 88'd33554432;
parameter    ap_ST_fsm_state27 = 88'd67108864;
parameter    ap_ST_fsm_state28 = 88'd134217728;
parameter    ap_ST_fsm_state29 = 88'd268435456;
parameter    ap_ST_fsm_state30 = 88'd536870912;
parameter    ap_ST_fsm_state31 = 88'd1073741824;
parameter    ap_ST_fsm_state32 = 88'd2147483648;
parameter    ap_ST_fsm_state33 = 88'd4294967296;
parameter    ap_ST_fsm_state34 = 88'd8589934592;
parameter    ap_ST_fsm_state35 = 88'd17179869184;
parameter    ap_ST_fsm_state36 = 88'd34359738368;
parameter    ap_ST_fsm_state37 = 88'd68719476736;
parameter    ap_ST_fsm_state38 = 88'd137438953472;
parameter    ap_ST_fsm_state39 = 88'd274877906944;
parameter    ap_ST_fsm_state40 = 88'd549755813888;
parameter    ap_ST_fsm_state41 = 88'd1099511627776;
parameter    ap_ST_fsm_state42 = 88'd2199023255552;
parameter    ap_ST_fsm_state43 = 88'd4398046511104;
parameter    ap_ST_fsm_state44 = 88'd8796093022208;
parameter    ap_ST_fsm_state45 = 88'd17592186044416;
parameter    ap_ST_fsm_state46 = 88'd35184372088832;
parameter    ap_ST_fsm_state47 = 88'd70368744177664;
parameter    ap_ST_fsm_state48 = 88'd140737488355328;
parameter    ap_ST_fsm_state49 = 88'd281474976710656;
parameter    ap_ST_fsm_state50 = 88'd562949953421312;
parameter    ap_ST_fsm_state51 = 88'd1125899906842624;
parameter    ap_ST_fsm_state52 = 88'd2251799813685248;
parameter    ap_ST_fsm_state53 = 88'd4503599627370496;
parameter    ap_ST_fsm_state54 = 88'd9007199254740992;
parameter    ap_ST_fsm_state55 = 88'd18014398509481984;
parameter    ap_ST_fsm_state56 = 88'd36028797018963968;
parameter    ap_ST_fsm_state57 = 88'd72057594037927936;
parameter    ap_ST_fsm_state58 = 88'd144115188075855872;
parameter    ap_ST_fsm_state59 = 88'd288230376151711744;
parameter    ap_ST_fsm_state60 = 88'd576460752303423488;
parameter    ap_ST_fsm_state61 = 88'd1152921504606846976;
parameter    ap_ST_fsm_state62 = 88'd2305843009213693952;
parameter    ap_ST_fsm_state63 = 88'd4611686018427387904;
parameter    ap_ST_fsm_state64 = 88'd9223372036854775808;
parameter    ap_ST_fsm_state65 = 88'd18446744073709551616;
parameter    ap_ST_fsm_state66 = 88'd36893488147419103232;
parameter    ap_ST_fsm_state67 = 88'd73786976294838206464;
parameter    ap_ST_fsm_state68 = 88'd147573952589676412928;
parameter    ap_ST_fsm_state69 = 88'd295147905179352825856;
parameter    ap_ST_fsm_state70 = 88'd590295810358705651712;
parameter    ap_ST_fsm_state71 = 88'd1180591620717411303424;
parameter    ap_ST_fsm_state72 = 88'd2361183241434822606848;
parameter    ap_ST_fsm_state73 = 88'd4722366482869645213696;
parameter    ap_ST_fsm_state74 = 88'd9444732965739290427392;
parameter    ap_ST_fsm_state75 = 88'd18889465931478580854784;
parameter    ap_ST_fsm_state76 = 88'd37778931862957161709568;
parameter    ap_ST_fsm_state77 = 88'd75557863725914323419136;
parameter    ap_ST_fsm_state78 = 88'd151115727451828646838272;
parameter    ap_ST_fsm_state79 = 88'd302231454903657293676544;
parameter    ap_ST_fsm_state80 = 88'd604462909807314587353088;
parameter    ap_ST_fsm_state81 = 88'd1208925819614629174706176;
parameter    ap_ST_fsm_state82 = 88'd2417851639229258349412352;
parameter    ap_ST_fsm_state83 = 88'd4835703278458516698824704;
parameter    ap_ST_fsm_state84 = 88'd9671406556917033397649408;
parameter    ap_ST_fsm_state85 = 88'd19342813113834066795298816;
parameter    ap_ST_fsm_state86 = 88'd38685626227668133590597632;
parameter    ap_ST_fsm_state87 = 88'd77371252455336267181195264;
parameter    ap_ST_fsm_state88 = 88'd154742504910672534362390528;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] weights3_0_address0;
output   weights3_0_ce0;
input  [63:0] weights3_0_q0;
output  [6:0] weights3_0_address1;
output   weights3_0_ce1;
input  [63:0] weights3_0_q1;
output  [6:0] weights3_1_address0;
output   weights3_1_ce0;
input  [63:0] weights3_1_q0;
output  [6:0] weights3_1_address1;
output   weights3_1_ce1;
input  [63:0] weights3_1_q1;
input  [63:0] output_differences_0_0_val;
input  [63:0] output_differences_0_1_val;
input  [63:0] output_differences_0_2_val;
output  [4:0] oracle_activations_0_address0;
output   oracle_activations_0_ce0;
output   oracle_activations_0_we0;
output  [63:0] oracle_activations_0_d0;
output  [4:0] oracle_activations_1_address0;
output   oracle_activations_1_ce0;
output   oracle_activations_1_we0;
output  [63:0] oracle_activations_1_d0;
output  [4:0] dactivations_0_address0;
output   dactivations_0_ce0;
input  [63:0] dactivations_0_q0;
output  [4:0] dactivations_0_address1;
output   dactivations_0_ce1;
input  [63:0] dactivations_0_q1;
output  [4:0] dactivations_1_address0;
output   dactivations_1_ce0;
input  [63:0] dactivations_1_q0;
output  [4:0] dactivations_1_address1;
output   dactivations_1_ce1;
input  [63:0] dactivations_1_q1;
output  [63:0] grp_fu_2842_p_din0;
output  [63:0] grp_fu_2842_p_din1;
output  [0:0] grp_fu_2842_p_opcode;
input  [63:0] grp_fu_2842_p_dout0;
output   grp_fu_2842_p_ce;
output  [63:0] grp_fu_2846_p_din0;
output  [63:0] grp_fu_2846_p_din1;
output  [0:0] grp_fu_2846_p_opcode;
input  [63:0] grp_fu_2846_p_dout0;
output   grp_fu_2846_p_ce;
output  [63:0] grp_fu_2850_p_din0;
output  [63:0] grp_fu_2850_p_din1;
output  [0:0] grp_fu_2850_p_opcode;
input  [63:0] grp_fu_2850_p_dout0;
output   grp_fu_2850_p_ce;
output  [63:0] grp_fu_2854_p_din0;
output  [63:0] grp_fu_2854_p_din1;
output  [0:0] grp_fu_2854_p_opcode;
input  [63:0] grp_fu_2854_p_dout0;
output   grp_fu_2854_p_ce;
output  [63:0] grp_fu_2858_p_din0;
output  [63:0] grp_fu_2858_p_din1;
output  [1:0] grp_fu_2858_p_opcode;
input  [63:0] grp_fu_2858_p_dout0;
output   grp_fu_2858_p_ce;
output  [63:0] grp_fu_2862_p_din0;
output  [63:0] grp_fu_2862_p_din1;
output  [0:0] grp_fu_2862_p_opcode;
input  [63:0] grp_fu_2862_p_dout0;
output   grp_fu_2862_p_ce;
output  [63:0] grp_fu_2866_p_din0;
output  [63:0] grp_fu_2866_p_din1;
output  [1:0] grp_fu_2866_p_opcode;
input  [63:0] grp_fu_2866_p_dout0;
output   grp_fu_2866_p_ce;
output  [63:0] grp_fu_2870_p_din0;
output  [63:0] grp_fu_2870_p_din1;
output  [0:0] grp_fu_2870_p_opcode;
input  [63:0] grp_fu_2870_p_dout0;
output   grp_fu_2870_p_ce;
output  [63:0] grp_fu_2890_p_din0;
output  [63:0] grp_fu_2890_p_din1;
input  [63:0] grp_fu_2890_p_dout0;
output   grp_fu_2890_p_ce;
output  [63:0] grp_fu_2894_p_din0;
output  [63:0] grp_fu_2894_p_din1;
input  [63:0] grp_fu_2894_p_dout0;
output   grp_fu_2894_p_ce;
output  [63:0] grp_fu_2898_p_din0;
output  [63:0] grp_fu_2898_p_din1;
input  [63:0] grp_fu_2898_p_dout0;
output   grp_fu_2898_p_ce;
output  [63:0] grp_fu_2902_p_din0;
output  [63:0] grp_fu_2902_p_din1;
input  [63:0] grp_fu_2902_p_dout0;
output   grp_fu_2902_p_ce;
output  [63:0] grp_fu_2906_p_din0;
output  [63:0] grp_fu_2906_p_din1;
input  [63:0] grp_fu_2906_p_dout0;
output   grp_fu_2906_p_ce;
output  [63:0] grp_fu_2910_p_din0;
output  [63:0] grp_fu_2910_p_din1;
input  [63:0] grp_fu_2910_p_dout0;
output   grp_fu_2910_p_ce;
output  [63:0] grp_fu_2914_p_din0;
output  [63:0] grp_fu_2914_p_din1;
input  [63:0] grp_fu_2914_p_dout0;
output   grp_fu_2914_p_ce;
output  [63:0] grp_fu_2918_p_din0;
output  [63:0] grp_fu_2918_p_din1;
input  [63:0] grp_fu_2918_p_dout0;
output   grp_fu_2918_p_ce;
output  [63:0] grp_fu_2922_p_din0;
output  [63:0] grp_fu_2922_p_din1;
input  [63:0] grp_fu_2922_p_dout0;
output   grp_fu_2922_p_ce;
output  [63:0] grp_fu_2926_p_din0;
output  [63:0] grp_fu_2926_p_din1;
input  [63:0] grp_fu_2926_p_dout0;
output   grp_fu_2926_p_ce;
output  [63:0] grp_fu_2930_p_din0;
output  [63:0] grp_fu_2930_p_din1;
input  [63:0] grp_fu_2930_p_dout0;
output   grp_fu_2930_p_ce;
output  [63:0] grp_fu_2934_p_din0;
output  [63:0] grp_fu_2934_p_din1;
input  [63:0] grp_fu_2934_p_dout0;
output   grp_fu_2934_p_ce;
output  [63:0] grp_fu_2938_p_din0;
output  [63:0] grp_fu_2938_p_din1;
input  [63:0] grp_fu_2938_p_dout0;
output   grp_fu_2938_p_ce;
output  [63:0] grp_fu_2942_p_din0;
output  [63:0] grp_fu_2942_p_din1;
input  [63:0] grp_fu_2942_p_dout0;
output   grp_fu_2942_p_ce;
output  [63:0] grp_fu_2946_p_din0;
output  [63:0] grp_fu_2946_p_din1;
input  [63:0] grp_fu_2946_p_dout0;
output   grp_fu_2946_p_ce;
output  [63:0] grp_fu_2950_p_din0;
output  [63:0] grp_fu_2950_p_din1;
input  [63:0] grp_fu_2950_p_dout0;
output   grp_fu_2950_p_ce;
output  [63:0] grp_fu_2954_p_din0;
output  [63:0] grp_fu_2954_p_din1;
input  [63:0] grp_fu_2954_p_dout0;
output   grp_fu_2954_p_ce;
output  [63:0] grp_fu_2958_p_din0;
output  [63:0] grp_fu_2958_p_din1;
input  [63:0] grp_fu_2958_p_dout0;
output   grp_fu_2958_p_ce;
output  [63:0] grp_fu_2962_p_din0;
output  [63:0] grp_fu_2962_p_din1;
input  [63:0] grp_fu_2962_p_dout0;
output   grp_fu_2962_p_ce;
output  [63:0] grp_fu_2966_p_din0;
output  [63:0] grp_fu_2966_p_din1;
input  [63:0] grp_fu_2966_p_dout0;
output   grp_fu_2966_p_ce;
output  [63:0] grp_fu_2970_p_din0;
output  [63:0] grp_fu_2970_p_din1;
input  [63:0] grp_fu_2970_p_dout0;
output   grp_fu_2970_p_ce;
output  [63:0] grp_fu_2974_p_din0;
output  [63:0] grp_fu_2974_p_din1;
input  [63:0] grp_fu_2974_p_dout0;
output   grp_fu_2974_p_ce;
output  [63:0] grp_fu_2978_p_din0;
output  [63:0] grp_fu_2978_p_din1;
input  [63:0] grp_fu_2978_p_dout0;
output   grp_fu_2978_p_ce;
output  [63:0] grp_fu_2982_p_din0;
output  [63:0] grp_fu_2982_p_din1;
input  [63:0] grp_fu_2982_p_dout0;
output   grp_fu_2982_p_ce;
output  [63:0] grp_fu_2986_p_din0;
output  [63:0] grp_fu_2986_p_din1;
input  [63:0] grp_fu_2986_p_dout0;
output   grp_fu_2986_p_ce;
output  [63:0] grp_fu_2990_p_din0;
output  [63:0] grp_fu_2990_p_din1;
input  [63:0] grp_fu_2990_p_dout0;
output   grp_fu_2990_p_ce;
output  [63:0] grp_fu_2994_p_din0;
output  [63:0] grp_fu_2994_p_din1;
input  [63:0] grp_fu_2994_p_dout0;
output   grp_fu_2994_p_ce;
output  [63:0] grp_fu_2998_p_din0;
output  [63:0] grp_fu_2998_p_din1;
input  [63:0] grp_fu_2998_p_dout0;
output   grp_fu_2998_p_ce;
output  [63:0] grp_fu_3002_p_din0;
output  [63:0] grp_fu_3002_p_din1;
input  [63:0] grp_fu_3002_p_dout0;
output   grp_fu_3002_p_ce;
output  [63:0] grp_fu_3006_p_din0;
output  [63:0] grp_fu_3006_p_din1;
input  [63:0] grp_fu_3006_p_dout0;
output   grp_fu_3006_p_ce;
output  [63:0] grp_fu_3010_p_din0;
output  [63:0] grp_fu_3010_p_din1;
input  [63:0] grp_fu_3010_p_dout0;
output   grp_fu_3010_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [87:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] reg_3354;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
wire    ap_CS_fsm_state27;
wire    ap_CS_fsm_state28;
wire    ap_CS_fsm_state29;
wire    ap_CS_fsm_state30;
wire    ap_CS_fsm_state31;
wire    ap_CS_fsm_state32;
wire    ap_CS_fsm_state33;
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
reg   [63:0] reg_3359;
reg   [63:0] reg_3364;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state12;
reg   [63:0] reg_3369;
reg   [63:0] reg_3374;
reg   [63:0] reg_3379;
reg   [63:0] reg_3384;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state13;
reg   [63:0] reg_3388;
reg   [63:0] reg_3392;
reg   [63:0] reg_3396;
reg   [63:0] reg_3400;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state14;
reg   [63:0] reg_3404;
reg   [63:0] reg_3408;
reg   [63:0] reg_3412;
reg   [63:0] reg_3416;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state15;
reg   [63:0] reg_3420;
reg   [63:0] reg_3424;
reg   [63:0] reg_3428;
reg   [63:0] reg_3432;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state16;
reg   [63:0] reg_3436;
reg   [63:0] reg_3440;
reg   [63:0] reg_3444;
reg   [63:0] reg_3448;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state17;
reg   [63:0] reg_3452;
reg   [63:0] reg_3456;
wire    ap_CS_fsm_state18;
reg   [63:0] reg_3461;
reg   [63:0] reg_3465;
wire    ap_CS_fsm_state9;
reg   [63:0] reg_3470;
reg   [63:0] reg_3474;
reg   [63:0] reg_3478;
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
reg   [63:0] reg_3486;
reg   [63:0] reg_3493;
reg   [63:0] reg_3499;
reg   [63:0] reg_3506;
reg   [63:0] reg_3513;
wire    ap_CS_fsm_state51;
reg   [63:0] reg_3519;
reg   [63:0] reg_3525;
reg   [63:0] reg_3531;
reg   [63:0] reg_3537;
wire    ap_CS_fsm_state53;
reg   [63:0] reg_3543;
wire    ap_CS_fsm_state52;
reg   [63:0] reg_3549;
reg   [63:0] reg_3555;
reg   [63:0] reg_3561;
wire    ap_CS_fsm_state54;
reg   [63:0] reg_3567;
reg   [63:0] reg_3573;
reg   [63:0] reg_3579;
reg   [63:0] reg_3585;
wire    ap_CS_fsm_state55;
reg   [63:0] reg_3591;
reg   [63:0] reg_3597;
reg   [63:0] reg_3603;
reg   [63:0] reg_3609;
wire    ap_CS_fsm_state56;
reg   [63:0] reg_3616;
reg   [63:0] reg_3622;
reg   [63:0] reg_3628;
reg   [63:0] reg_3634;
reg   [63:0] reg_3641;
reg   [63:0] reg_3648;
reg   [63:0] reg_3655;
reg   [63:0] reg_3662;
reg   [63:0] reg_3668;
reg   [63:0] reg_3674;
reg   [63:0] reg_3680;
reg   [63:0] reg_3686;
reg   [63:0] reg_3693;
reg   [63:0] reg_3699;
reg   [63:0] reg_3705;
reg   [63:0] reg_3711;
reg   [63:0] reg_3717;
reg   [63:0] reg_3723;
reg   [63:0] reg_3729;
reg   [63:0] reg_3737;
reg   [63:0] reg_3744;
reg   [63:0] reg_3751;
reg   [63:0] reg_3759;
reg   [63:0] reg_3767;
reg   [63:0] reg_3773;
reg   [63:0] reg_3780;
reg   [63:0] reg_3788;
reg   [63:0] reg_3795;
reg   [63:0] reg_3802;
reg   [63:0] reg_3810;
reg   [63:0] reg_3818;
reg   [63:0] reg_3825;
reg   [63:0] reg_3832;
reg   [63:0] reg_3839;
reg   [63:0] reg_3846;
reg   [63:0] reg_3853;
reg   [63:0] reg_3860;
reg   [63:0] reg_3867;
reg   [63:0] reg_3874;
reg   [63:0] reg_3881;
reg   [63:0] reg_3888;
reg   [63:0] reg_3895;
reg   [63:0] reg_3902;
reg   [63:0] reg_3909;
reg   [63:0] reg_3916;
reg   [63:0] reg_3922;
reg   [63:0] reg_3928;
reg   [63:0] reg_3933;
reg   [63:0] reg_3938;
reg   [63:0] reg_3944;
reg   [63:0] reg_3950;
reg   [63:0] reg_3956;
reg   [63:0] reg_3962;
reg   [63:0] reg_3968;
reg   [63:0] reg_3974;
reg   [63:0] reg_3980;
reg   [63:0] reg_3986;
reg   [63:0] reg_3992;
reg   [63:0] reg_3998;
reg   [63:0] reg_4004;
reg   [63:0] reg_4010;
reg   [63:0] reg_4016;
reg   [63:0] reg_4022;
reg   [63:0] reg_4028;
reg   [63:0] reg_4034;
reg   [63:0] reg_4041;
reg   [63:0] reg_4047;
reg   [63:0] reg_4053;
reg   [63:0] reg_4059;
reg   [63:0] reg_4065;
reg   [63:0] reg_4071;
reg   [63:0] reg_4077;
reg   [63:0] reg_4083;
reg   [63:0] reg_4090;
reg   [63:0] weights3_0_load_119_reg_5200;
reg   [63:0] weights3_0_load_122_reg_5225;
wire    ap_CS_fsm_state10;
reg   [63:0] weights3_1_load_123_reg_5230;
reg   [63:0] weights3_0_load_125_reg_5235;
reg   [63:0] weights3_1_load_126_reg_5240;
wire   [63:0] bitcast_ln85_fu_4097_p1;
wire   [63:0] bitcast_ln85_3_fu_4102_p1;
reg   [63:0] weights3_0_load_131_reg_5314;
reg   [63:0] weights3_1_load_132_reg_5319;
wire   [63:0] bitcast_ln85_6_fu_4107_p1;
wire   [63:0] bitcast_ln85_9_fu_4112_p1;
wire   [63:0] bitcast_ln85_12_fu_4117_p1;
wire   [63:0] bitcast_ln85_15_fu_4122_p1;
wire   [63:0] bitcast_ln85_18_fu_4127_p1;
wire   [63:0] bitcast_ln85_21_fu_4132_p1;
wire   [63:0] bitcast_ln85_24_fu_4137_p1;
wire   [63:0] bitcast_ln85_27_fu_4142_p1;
wire   [63:0] bitcast_ln85_30_fu_4147_p1;
wire   [63:0] bitcast_ln85_33_fu_4152_p1;
wire   [63:0] bitcast_ln85_36_fu_4157_p1;
wire   [63:0] bitcast_ln85_39_fu_4162_p1;
wire   [63:0] bitcast_ln85_42_fu_4167_p1;
wire   [63:0] bitcast_ln85_45_fu_4172_p1;
wire   [63:0] bitcast_ln85_48_fu_4177_p1;
wire   [63:0] bitcast_ln85_51_fu_4182_p1;
wire   [63:0] bitcast_ln85_54_fu_4187_p1;
wire   [63:0] bitcast_ln85_57_fu_4192_p1;
wire   [63:0] bitcast_ln85_60_fu_4197_p1;
wire   [63:0] bitcast_ln85_63_fu_4202_p1;
wire   [63:0] bitcast_ln85_66_fu_4207_p1;
wire   [63:0] bitcast_ln85_69_fu_4212_p1;
wire   [63:0] bitcast_ln85_72_fu_4217_p1;
wire   [63:0] bitcast_ln85_75_fu_4222_p1;
wire   [63:0] bitcast_ln85_78_fu_4227_p1;
wire   [63:0] bitcast_ln85_81_fu_4232_p1;
wire   [63:0] bitcast_ln85_84_fu_4237_p1;
wire   [63:0] bitcast_ln85_87_fu_4241_p1;
wire   [63:0] bitcast_ln85_180_fu_4246_p1;
wire   [63:0] bitcast_ln85_1_fu_4251_p1;
wire   [63:0] bitcast_ln85_4_fu_4256_p1;
wire   [63:0] bitcast_ln85_90_fu_4261_p1;
wire   [63:0] bitcast_ln85_93_fu_4265_p1;
wire   [63:0] bitcast_ln85_96_fu_4269_p1;
wire   [63:0] bitcast_ln85_99_fu_4273_p1;
wire   [63:0] bitcast_ln85_102_fu_4277_p1;
wire   [63:0] bitcast_ln85_105_fu_4282_p1;
wire   [63:0] bitcast_ln85_108_fu_4287_p1;
wire   [63:0] bitcast_ln85_111_fu_4291_p1;
wire   [63:0] bitcast_ln85_114_fu_4295_p1;
wire   [63:0] bitcast_ln85_117_fu_4300_p1;
wire   [63:0] bitcast_ln85_120_fu_4305_p1;
wire   [63:0] bitcast_ln85_123_fu_4310_p1;
wire   [63:0] bitcast_ln85_126_fu_4315_p1;
wire   [63:0] bitcast_ln85_129_fu_4320_p1;
wire   [63:0] bitcast_ln85_132_fu_4325_p1;
wire   [63:0] bitcast_ln85_135_fu_4330_p1;
wire   [63:0] bitcast_ln85_138_fu_4335_p1;
wire   [63:0] bitcast_ln85_141_fu_4340_p1;
wire   [63:0] bitcast_ln85_144_fu_4345_p1;
wire   [63:0] bitcast_ln85_147_fu_4350_p1;
wire   [63:0] bitcast_ln85_150_fu_4355_p1;
wire   [63:0] bitcast_ln85_153_fu_4360_p1;
wire   [63:0] bitcast_ln85_156_fu_4365_p1;
wire   [63:0] bitcast_ln85_159_fu_4370_p1;
wire   [63:0] bitcast_ln85_162_fu_4375_p1;
wire   [63:0] bitcast_ln85_165_fu_4380_p1;
wire   [63:0] bitcast_ln85_168_fu_4385_p1;
wire   [63:0] bitcast_ln85_171_fu_4390_p1;
wire   [63:0] bitcast_ln85_174_fu_4395_p1;
wire   [63:0] bitcast_ln85_7_fu_4420_p1;
wire   [63:0] bitcast_ln85_10_fu_4425_p1;
wire   [63:0] bitcast_ln85_13_fu_4430_p1;
wire   [63:0] bitcast_ln85_16_fu_4435_p1;
wire   [63:0] bitcast_ln85_19_fu_4440_p1;
wire   [63:0] bitcast_ln85_22_fu_4445_p1;
wire   [63:0] bitcast_ln85_25_fu_4450_p1;
wire   [63:0] bitcast_ln85_28_fu_4455_p1;
wire   [63:0] bitcast_ln85_31_fu_4460_p1;
wire   [63:0] bitcast_ln85_34_fu_4465_p1;
wire   [63:0] bitcast_ln85_37_fu_4470_p1;
wire   [63:0] bitcast_ln85_40_fu_4475_p1;
wire   [63:0] bitcast_ln85_43_fu_4480_p1;
wire   [63:0] bitcast_ln85_46_fu_4485_p1;
wire   [63:0] bitcast_ln85_49_fu_4490_p1;
wire   [63:0] bitcast_ln85_52_fu_4495_p1;
wire   [63:0] bitcast_ln85_55_fu_4500_p1;
wire   [63:0] bitcast_ln85_58_fu_4505_p1;
wire   [63:0] bitcast_ln85_61_fu_4510_p1;
wire   [63:0] bitcast_ln85_64_fu_4515_p1;
wire   [63:0] bitcast_ln85_67_fu_4520_p1;
wire   [63:0] bitcast_ln85_70_fu_4525_p1;
wire   [63:0] bitcast_ln85_73_fu_4530_p1;
wire   [63:0] bitcast_ln85_76_fu_4535_p1;
reg   [63:0] mul8_35_reg_6072;
reg   [63:0] mul8_36_reg_6077;
reg   [63:0] mul8_37_reg_6082;
reg   [63:0] mul8_38_reg_6087;
reg   [63:0] mul8_39_reg_6092;
reg   [63:0] mul8_40_reg_6097;
reg   [63:0] mul8_41_reg_6102;
reg   [63:0] mul8_42_reg_6107;
reg   [63:0] mul8_43_reg_6112;
reg   [63:0] mul8_44_reg_6117;
reg   [63:0] mul8_45_reg_6122;
reg   [63:0] mul8_46_reg_6127;
reg   [63:0] mul8_47_reg_6132;
reg   [63:0] mul8_48_reg_6137;
reg   [63:0] mul8_49_reg_6142;
reg   [63:0] mul8_50_reg_6147;
reg   [63:0] mul8_51_reg_6152;
reg   [63:0] mul8_52_reg_6157;
reg   [63:0] mul8_53_reg_6162;
reg   [63:0] mul8_54_reg_6167;
reg   [63:0] mul8_55_reg_6172;
reg   [63:0] mul8_56_reg_6177;
reg   [63:0] mul8_57_reg_6182;
reg   [63:0] mul8_58_reg_6187;
wire   [63:0] grp_fu_3336_p2;
reg   [63:0] mul8_59_reg_6192;
wire   [63:0] grp_fu_3340_p2;
reg   [63:0] mul8_61_reg_6197;
wire   [63:0] grp_fu_3344_p2;
reg   [63:0] mul8_62_reg_6202;
wire   [63:0] grp_fu_3348_p2;
reg   [63:0] mul8_63_reg_6207;
wire   [63:0] bitcast_ln85_79_fu_4540_p1;
wire   [63:0] bitcast_ln85_82_fu_4545_p1;
wire   [63:0] bitcast_ln85_85_fu_4550_p1;
wire   [63:0] bitcast_ln85_88_fu_4555_p1;
wire   [63:0] bitcast_ln85_91_fu_4560_p1;
wire   [63:0] bitcast_ln85_94_fu_4565_p1;
wire   [63:0] bitcast_ln85_97_fu_4570_p1;
wire   [63:0] bitcast_ln85_100_fu_4575_p1;
wire   [63:0] bitcast_ln85_103_fu_4580_p1;
wire   [63:0] bitcast_ln85_106_fu_4585_p1;
wire   [63:0] bitcast_ln85_109_fu_4590_p1;
wire   [63:0] bitcast_ln85_112_fu_4595_p1;
wire   [63:0] bitcast_ln85_115_fu_4600_p1;
wire   [63:0] bitcast_ln85_118_fu_4605_p1;
wire   [63:0] bitcast_ln85_121_fu_4610_p1;
wire   [63:0] bitcast_ln85_124_fu_4615_p1;
wire   [63:0] bitcast_ln85_127_fu_4620_p1;
wire   [63:0] bitcast_ln85_130_fu_4625_p1;
wire   [63:0] bitcast_ln85_133_fu_4630_p1;
wire   [63:0] bitcast_ln85_136_fu_4635_p1;
wire   [63:0] bitcast_ln85_139_fu_4640_p1;
wire   [63:0] bitcast_ln85_142_fu_4645_p1;
wire   [63:0] bitcast_ln85_145_fu_4650_p1;
wire   [63:0] bitcast_ln85_148_fu_4655_p1;
wire   [63:0] bitcast_ln85_151_fu_4660_p1;
wire   [63:0] bitcast_ln85_154_fu_4665_p1;
wire   [63:0] bitcast_ln85_157_fu_4670_p1;
wire   [63:0] bitcast_ln85_160_fu_4675_p1;
reg   [63:0] add11_40_reg_6502;
wire   [63:0] bitcast_ln85_163_fu_4680_p1;
wire   [63:0] bitcast_ln85_166_fu_4685_p1;
wire   [63:0] bitcast_ln85_169_fu_4690_p1;
wire   [63:0] bitcast_ln85_172_fu_4695_p1;
reg   [63:0] add11_34_reg_6552;
reg   [63:0] add11_35_reg_6557;
reg   [63:0] add11_36_reg_6562;
reg   [63:0] add11_37_reg_6567;
wire   [63:0] bitcast_ln85_175_fu_4700_p1;
wire   [63:0] bitcast_ln85_178_fu_4705_p1;
wire   [63:0] bitcast_ln85_181_fu_4710_p1;
wire   [63:0] bitcast_ln85_184_fu_4715_p1;
wire   [63:0] bitcast_ln85_2_fu_4720_p1;
wire   [63:0] bitcast_ln85_5_fu_4725_p1;
reg   [63:0] add11_38_reg_6633;
reg   [63:0] add11_39_reg_6638;
reg   [63:0] add11_41_reg_6643;
wire   [63:0] bitcast_ln85_187_fu_4730_p1;
wire   [63:0] bitcast_ln85_190_fu_4735_p1;
wire   [63:0] bitcast_ln85_8_fu_4740_p1;
wire   [63:0] bitcast_ln85_11_fu_4745_p1;
wire   [63:0] bitcast_ln85_17_fu_4750_p1;
reg   [63:0] add11_42_reg_6688;
reg   [63:0] add11_43_reg_6693;
reg   [63:0] add11_44_reg_6698;
reg   [63:0] add11_45_reg_6703;
wire   [63:0] bitcast_ln85_14_fu_4755_p1;
wire   [63:0] bitcast_ln85_20_fu_4760_p1;
wire   [63:0] bitcast_ln85_23_fu_4765_p1;
wire   [63:0] bitcast_ln85_29_fu_4770_p1;
reg   [63:0] add11_46_reg_6748;
reg   [63:0] add11_47_reg_6753;
reg   [63:0] add11_48_reg_6758;
reg   [63:0] add11_49_reg_6763;
wire   [63:0] bitcast_ln85_26_fu_4775_p1;
wire   [63:0] bitcast_ln85_32_fu_4780_p1;
wire   [63:0] bitcast_ln85_35_fu_4785_p1;
reg   [63:0] add11_50_reg_6803;
reg   [63:0] add11_51_reg_6808;
reg   [63:0] add11_52_reg_6813;
reg   [63:0] add11_53_reg_6818;
wire   [63:0] bitcast_ln85_38_fu_4790_p1;
wire   [63:0] bitcast_ln85_41_fu_4795_p1;
wire   [63:0] bitcast_ln85_44_fu_4800_p1;
wire   [63:0] bitcast_ln85_47_fu_4805_p1;
reg   [63:0] add11_54_reg_6863;
reg   [63:0] add11_55_reg_6868;
reg   [63:0] add11_56_reg_6873;
reg   [63:0] add11_57_reg_6878;
wire   [63:0] bitcast_ln85_50_fu_4810_p1;
wire   [63:0] bitcast_ln85_53_fu_4815_p1;
wire   [63:0] bitcast_ln85_56_fu_4820_p1;
wire   [63:0] bitcast_ln85_59_fu_4825_p1;
reg   [63:0] add11_58_reg_6923;
reg   [63:0] add11_59_reg_6928;
reg   [63:0] add11_60_reg_6933;
reg   [63:0] add11_61_reg_6938;
wire   [63:0] bitcast_ln85_62_fu_4830_p1;
wire   [63:0] bitcast_ln85_65_fu_4835_p1;
wire   [63:0] bitcast_ln85_68_fu_4840_p1;
wire   [63:0] bitcast_ln85_71_fu_4845_p1;
wire   [63:0] bitcast_ln85_74_fu_4850_p1;
wire   [63:0] bitcast_ln85_77_fu_4855_p1;
wire   [63:0] bitcast_ln85_80_fu_4860_p1;
wire   [63:0] bitcast_ln85_83_fu_4865_p1;
wire   [63:0] bitcast_ln85_86_fu_4870_p1;
wire   [63:0] bitcast_ln85_89_fu_4875_p1;
wire   [63:0] bitcast_ln85_92_fu_4880_p1;
wire   [63:0] bitcast_ln85_95_fu_4885_p1;
wire   [63:0] bitcast_ln85_98_fu_4890_p1;
wire   [63:0] bitcast_ln85_101_fu_4895_p1;
wire   [63:0] bitcast_ln85_104_fu_4900_p1;
wire   [63:0] bitcast_ln85_107_fu_4905_p1;
reg   [63:0] add11_42_1_reg_7093;
reg   [63:0] add11_43_1_reg_7103;
wire   [63:0] bitcast_ln85_110_fu_4910_p1;
wire   [63:0] bitcast_ln85_113_fu_4915_p1;
wire   [63:0] bitcast_ln85_116_fu_4920_p1;
wire   [63:0] bitcast_ln85_119_fu_4925_p1;
reg   [63:0] add11_46_1_reg_7143;
reg   [63:0] add11_47_1_reg_7153;
reg   [63:0] add11_48_1_reg_7163;
reg   [63:0] add11_49_1_reg_7168;
wire   [63:0] bitcast_ln85_122_fu_4930_p1;
wire   [63:0] bitcast_ln85_125_fu_4935_p1;
wire   [63:0] bitcast_ln85_128_fu_4940_p1;
wire   [63:0] bitcast_ln85_131_fu_4945_p1;
reg   [63:0] add11_50_1_reg_7203;
reg   [63:0] add11_51_1_reg_7213;
reg   [63:0] add11_52_1_reg_7223;
reg   [63:0] add11_53_1_reg_7228;
wire   [63:0] bitcast_ln85_134_fu_4950_p1;
wire   [63:0] bitcast_ln85_137_fu_4955_p1;
wire   [63:0] bitcast_ln85_140_fu_4960_p1;
wire   [63:0] bitcast_ln85_143_fu_4965_p1;
reg   [63:0] add11_54_1_reg_7263;
reg   [63:0] add11_55_1_reg_7273;
reg   [63:0] add11_56_1_reg_7283;
reg   [63:0] add11_57_1_reg_7288;
wire   [63:0] bitcast_ln85_146_fu_4970_p1;
wire   [63:0] bitcast_ln85_149_fu_4975_p1;
wire   [63:0] bitcast_ln85_152_fu_4980_p1;
wire   [63:0] bitcast_ln85_155_fu_4985_p1;
reg   [63:0] add11_58_1_reg_7333;
reg   [63:0] add11_59_1_reg_7343;
reg   [63:0] add11_60_1_reg_7353;
reg   [63:0] add11_61_1_reg_7358;
wire   [63:0] bitcast_ln85_158_fu_4990_p1;
wire   [63:0] bitcast_ln85_161_fu_4995_p1;
wire   [63:0] bitcast_ln85_164_fu_5000_p1;
wire   [63:0] bitcast_ln85_167_fu_5005_p1;
reg   [63:0] add11_62_1_reg_7408;
reg   [63:0] add11_63_1_reg_7418;
reg   [63:0] add11_5_2_reg_7433;
wire   [63:0] bitcast_ln85_170_fu_5010_p1;
wire   [63:0] bitcast_ln85_173_fu_5015_p1;
wire   [63:0] bitcast_ln85_176_fu_5020_p1;
wire   [63:0] bitcast_ln85_179_fu_5025_p1;
wire   [63:0] bitcast_ln85_182_fu_5030_p1;
wire   [63:0] bitcast_ln85_185_fu_5035_p1;
wire   [63:0] bitcast_ln85_188_fu_5040_p1;
wire   [63:0] bitcast_ln85_191_fu_5045_p1;
reg   [63:0] mul8_62_2_reg_7548;
wire    ap_CS_fsm_state88;
reg    weights3_0_ce0_local;
reg   [6:0] weights3_0_address0_local;
reg    weights3_0_ce1_local;
reg   [6:0] weights3_0_address1_local;
reg    weights3_1_ce0_local;
reg   [6:0] weights3_1_address0_local;
reg    weights3_1_ce1_local;
reg   [6:0] weights3_1_address1_local;
reg    dactivations_0_ce0_local;
reg   [4:0] dactivations_0_address0_local;
reg    dactivations_0_ce1_local;
reg   [4:0] dactivations_0_address1_local;
reg    dactivations_1_ce0_local;
reg   [4:0] dactivations_1_address0_local;
reg    dactivations_1_ce1_local;
reg   [4:0] dactivations_1_address1_local;
reg    oracle_activations_0_we0_local;
reg   [63:0] oracle_activations_0_d0_local;
reg    oracle_activations_0_ce0_local;
reg   [4:0] oracle_activations_0_address0_local;
reg    oracle_activations_1_we0_local;
reg   [63:0] oracle_activations_1_d0_local;
reg    oracle_activations_1_ce0_local;
reg   [4:0] oracle_activations_1_address0_local;
reg   [63:0] grp_fu_3168_p0;
reg   [63:0] grp_fu_3168_p1;
reg   [63:0] grp_fu_3173_p0;
reg   [63:0] grp_fu_3173_p1;
reg   [63:0] grp_fu_3178_p0;
reg   [63:0] grp_fu_3178_p1;
reg   [63:0] grp_fu_3183_p0;
reg   [63:0] grp_fu_3183_p1;
reg   [63:0] grp_fu_3188_p0;
reg   [63:0] grp_fu_3193_p0;
reg   [63:0] grp_fu_3198_p0;
reg   [63:0] grp_fu_3203_p0;
reg   [63:0] grp_fu_3208_p0;
reg   [63:0] grp_fu_3208_p1;
reg   [63:0] grp_fu_3213_p0;
reg   [63:0] grp_fu_3213_p1;
reg   [63:0] grp_fu_3218_p0;
reg   [63:0] grp_fu_3218_p1;
reg   [63:0] grp_fu_3222_p0;
reg   [63:0] grp_fu_3222_p1;
reg   [63:0] grp_fu_3226_p0;
reg   [63:0] grp_fu_3226_p1;
reg   [63:0] grp_fu_3232_p0;
reg   [63:0] grp_fu_3232_p1;
reg   [63:0] grp_fu_3236_p0;
reg   [63:0] grp_fu_3236_p1;
wire   [63:0] grp_fu_3336_p0;
wire   [63:0] grp_fu_3340_p0;
wire   [63:0] grp_fu_3344_p0;
wire   [63:0] grp_fu_3348_p0;
reg   [87:0] ap_NS_fsm;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 88'd1;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U383(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3336_p0),.din1(output_differences_0_0_val),.ce(1'b1),.dout(grp_fu_3336_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U384(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3340_p0),.din1(output_differences_0_0_val),.ce(1'b1),.dout(grp_fu_3340_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U385(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3344_p0),.din1(output_differences_0_0_val),.ce(1'b1),.dout(grp_fu_3344_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U386(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3348_p0),.din1(output_differences_0_0_val),.ce(1'b1),.dout(grp_fu_3348_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35))) begin
        reg_3354 <= weights3_0_q1;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_3354 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37))) begin
        reg_3359 <= weights3_1_q1;
    end else if (((1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2))) begin
        reg_3359 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36))) begin
        reg_3364 <= weights3_0_q0;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        reg_3364 <= weights3_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38))) begin
        reg_3369 <= weights3_1_q0;
    end else if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        reg_3369 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        reg_3374 <= weights3_0_q1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        reg_3374 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        reg_3379 <= weights3_1_q1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        reg_3379 <= weights3_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        reg_3456 <= weights3_0_q0;
    end else if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_3456 <= weights3_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        reg_3465 <= weights3_0_q1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_3465 <= weights3_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state70))) begin
        reg_4010 <= dactivations_0_q1;
    end else if (((1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state49))) begin
        reg_4010 <= dactivations_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state70))) begin
        reg_4016 <= dactivations_1_q1;
    end else if (((1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state49))) begin
        reg_4016 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57))) begin
        reg_4022 <= dactivations_0_q1;
    end else if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state50))) begin
        reg_4022 <= dactivations_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state57))) begin
        reg_4028 <= dactivations_1_q0;
    end else if (((1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state50))) begin
        reg_4028 <= dactivations_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state58))) begin
        reg_4034 <= dactivations_1_q1;
    end else if (((1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state50))) begin
        reg_4034 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state58))) begin
        reg_4041 <= dactivations_0_q1;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state65))) begin
        reg_4041 <= dactivations_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state59))) begin
        reg_4047 <= dactivations_1_q0;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state66))) begin
        reg_4047 <= dactivations_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state59))) begin
        reg_4053 <= dactivations_0_q1;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state73))) begin
        reg_4053 <= dactivations_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state60))) begin
        reg_4059 <= dactivations_1_q1;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state67))) begin
        reg_4059 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state60))) begin
        reg_4065 <= dactivations_0_q1;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state67))) begin
        reg_4065 <= dactivations_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state61))) begin
        reg_4071 <= dactivations_0_q0;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state68))) begin
        reg_4071 <= dactivations_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state61))) begin
        reg_4077 <= dactivations_1_q0;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state68))) begin
        reg_4077 <= dactivations_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state62))) begin
        reg_4083 <= dactivations_0_q1;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state69))) begin
        reg_4083 <= dactivations_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state62))) begin
        reg_4090 <= dactivations_1_q1;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state69))) begin
        reg_4090 <= dactivations_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        add11_34_reg_6552 <= grp_fu_2858_p_dout0;
        add11_35_reg_6557 <= grp_fu_2862_p_dout0;
        add11_36_reg_6562 <= grp_fu_2866_p_dout0;
        add11_37_reg_6567 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state35)) begin
        add11_38_reg_6633 <= grp_fu_2858_p_dout0;
        add11_39_reg_6638 <= grp_fu_2862_p_dout0;
        add11_41_reg_6643 <= grp_fu_2866_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        add11_40_reg_6502 <= grp_fu_2866_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state44)) begin
        add11_42_1_reg_7093 <= grp_fu_2842_p_dout0;
        add11_43_1_reg_7103 <= grp_fu_2846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state36)) begin
        add11_42_reg_6688 <= grp_fu_2858_p_dout0;
        add11_43_reg_6693 <= grp_fu_2862_p_dout0;
        add11_44_reg_6698 <= grp_fu_2866_p_dout0;
        add11_45_reg_6703 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state45)) begin
        add11_46_1_reg_7143 <= grp_fu_2842_p_dout0;
        add11_47_1_reg_7153 <= grp_fu_2846_p_dout0;
        add11_48_1_reg_7163 <= grp_fu_2850_p_dout0;
        add11_49_1_reg_7168 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state37)) begin
        add11_46_reg_6748 <= grp_fu_2858_p_dout0;
        add11_47_reg_6753 <= grp_fu_2862_p_dout0;
        add11_48_reg_6758 <= grp_fu_2866_p_dout0;
        add11_49_reg_6763 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        add11_50_1_reg_7203 <= grp_fu_2842_p_dout0;
        add11_51_1_reg_7213 <= grp_fu_2846_p_dout0;
        add11_52_1_reg_7223 <= grp_fu_2850_p_dout0;
        add11_53_1_reg_7228 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state38)) begin
        add11_50_reg_6803 <= grp_fu_2858_p_dout0;
        add11_51_reg_6808 <= grp_fu_2862_p_dout0;
        add11_52_reg_6813 <= grp_fu_2866_p_dout0;
        add11_53_reg_6818 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state47)) begin
        add11_54_1_reg_7263 <= grp_fu_2842_p_dout0;
        add11_55_1_reg_7273 <= grp_fu_2846_p_dout0;
        add11_56_1_reg_7283 <= grp_fu_2850_p_dout0;
        add11_57_1_reg_7288 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state39)) begin
        add11_54_reg_6863 <= grp_fu_2858_p_dout0;
        add11_55_reg_6868 <= grp_fu_2862_p_dout0;
        add11_56_reg_6873 <= grp_fu_2866_p_dout0;
        add11_57_reg_6878 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state48)) begin
        add11_58_1_reg_7333 <= grp_fu_2842_p_dout0;
        add11_59_1_reg_7343 <= grp_fu_2846_p_dout0;
        add11_60_1_reg_7353 <= grp_fu_2850_p_dout0;
        add11_61_1_reg_7358 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state40)) begin
        add11_58_reg_6923 <= grp_fu_2858_p_dout0;
        add11_59_reg_6928 <= grp_fu_2862_p_dout0;
        add11_60_reg_6933 <= grp_fu_2866_p_dout0;
        add11_61_reg_6938 <= grp_fu_2870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state50)) begin
        add11_5_2_reg_7433 <= grp_fu_2850_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        add11_62_1_reg_7408 <= grp_fu_2850_p_dout0;
        add11_63_1_reg_7418 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        mul8_35_reg_6072 <= grp_fu_2918_p_dout0;
        mul8_36_reg_6077 <= grp_fu_2922_p_dout0;
        mul8_37_reg_6082 <= grp_fu_2926_p_dout0;
        mul8_38_reg_6087 <= grp_fu_2930_p_dout0;
        mul8_39_reg_6092 <= grp_fu_2934_p_dout0;
        mul8_40_reg_6097 <= grp_fu_2938_p_dout0;
        mul8_41_reg_6102 <= grp_fu_2942_p_dout0;
        mul8_42_reg_6107 <= grp_fu_2946_p_dout0;
        mul8_43_reg_6112 <= grp_fu_2950_p_dout0;
        mul8_44_reg_6117 <= grp_fu_2954_p_dout0;
        mul8_45_reg_6122 <= grp_fu_2958_p_dout0;
        mul8_46_reg_6127 <= grp_fu_2962_p_dout0;
        mul8_47_reg_6132 <= grp_fu_2966_p_dout0;
        mul8_48_reg_6137 <= grp_fu_2970_p_dout0;
        mul8_49_reg_6142 <= grp_fu_2974_p_dout0;
        mul8_50_reg_6147 <= grp_fu_2978_p_dout0;
        mul8_51_reg_6152 <= grp_fu_2982_p_dout0;
        mul8_52_reg_6157 <= grp_fu_2986_p_dout0;
        mul8_53_reg_6162 <= grp_fu_2990_p_dout0;
        mul8_54_reg_6167 <= grp_fu_2994_p_dout0;
        mul8_55_reg_6172 <= grp_fu_2998_p_dout0;
        mul8_56_reg_6177 <= grp_fu_3002_p_dout0;
        mul8_57_reg_6182 <= grp_fu_3006_p_dout0;
        mul8_58_reg_6187 <= grp_fu_3010_p_dout0;
        mul8_59_reg_6192 <= grp_fu_3336_p2;
        mul8_61_reg_6197 <= grp_fu_3340_p2;
        mul8_62_reg_6202 <= grp_fu_3344_p2;
        mul8_63_reg_6207 <= grp_fu_3348_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state57)) begin
        mul8_62_2_reg_7548 <= grp_fu_2910_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        reg_3384 <= weights3_0_q0;
        reg_3388 <= weights3_1_q0;
        reg_3392 <= weights3_0_q1;
        reg_3396 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5))) begin
        reg_3400 <= weights3_0_q0;
        reg_3404 <= weights3_1_q0;
        reg_3408 <= weights3_0_q1;
        reg_3412 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6))) begin
        reg_3416 <= weights3_0_q0;
        reg_3420 <= weights3_1_q0;
        reg_3424 <= weights3_0_q1;
        reg_3428 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_3432 <= weights3_0_q0;
        reg_3436 <= weights3_1_q0;
        reg_3440 <= weights3_0_q1;
        reg_3444 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_3448 <= weights3_0_q0;
        reg_3452 <= weights3_1_q0;
        reg_3461 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state18))) begin
        reg_3470 <= weights3_1_q0;
        reg_3474 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
if (((1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41) | (1'b1== ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        reg_3478 <= grp_fu_2890_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        reg_3486 <= grp_fu_2894_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        reg_3493 <= grp_fu_2890_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        reg_3499 <= grp_fu_2894_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        reg_3506 <= grp_fu_2898_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        reg_3513 <= grp_fu_2902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        reg_3519 <= grp_fu_2890_p_dout0;
        reg_3525 <= grp_fu_2894_p_dout0;
        reg_3531 <= grp_fu_2898_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state19))) begin
        reg_3537 <= grp_fu_2902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        reg_3543 <= grp_fu_2890_p_dout0;
        reg_3549 <= grp_fu_2894_p_dout0;
        reg_3555 <= grp_fu_2898_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state20))) begin
        reg_3561 <= grp_fu_2902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        reg_3567 <= grp_fu_2890_p_dout0;
        reg_3573 <= grp_fu_2894_p_dout0;
        reg_3579 <= grp_fu_2898_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state21))) begin
        reg_3585 <= grp_fu_2902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        reg_3591 <= grp_fu_2890_p_dout0;
        reg_3597 <= grp_fu_2894_p_dout0;
        reg_3603 <= grp_fu_2898_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state22))) begin
        reg_3609 <= grp_fu_2902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        reg_3616 <= grp_fu_2890_p_dout0;
        reg_3622 <= grp_fu_2894_p_dout0;
        reg_3628 <= grp_fu_2898_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state23))) begin
        reg_3634 <= grp_fu_2902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        reg_3641 <= grp_fu_2890_p_dout0;
        reg_3648 <= grp_fu_2894_p_dout0;
        reg_3655 <= grp_fu_2898_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state24))) begin
        reg_3662 <= grp_fu_2902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state24))) begin
        reg_3668 <= grp_fu_2906_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        reg_3674 <= grp_fu_2842_p_dout0;
        reg_3680 <= grp_fu_2846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        reg_3686 <= grp_fu_2898_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state25))) begin
        reg_3693 <= grp_fu_2902_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state25))) begin
        reg_3699 <= grp_fu_2906_p_dout0;
        reg_3711 <= grp_fu_2914_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state25))) begin
        reg_3705 <= grp_fu_2910_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        reg_3717 <= grp_fu_2842_p_dout0;
        reg_3723 <= grp_fu_2846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        reg_3729 <= grp_fu_2850_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        reg_3737 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        reg_3744 <= grp_fu_2842_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        reg_3751 <= grp_fu_2846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        reg_3759 <= grp_fu_2850_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        reg_3767 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        reg_3773 <= grp_fu_2842_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        reg_3780 <= grp_fu_2846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        reg_3788 <= grp_fu_2850_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        reg_3795 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        reg_3802 <= grp_fu_2842_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        reg_3810 <= grp_fu_2846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        reg_3818 <= grp_fu_2850_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        reg_3825 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30))) begin
        reg_3832 <= grp_fu_2842_p_dout0;
        reg_3839 <= grp_fu_2846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30))) begin
        reg_3846 <= grp_fu_2850_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30))) begin
        reg_3853 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31))) begin
        reg_3860 <= grp_fu_2842_p_dout0;
        reg_3867 <= grp_fu_2846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31))) begin
        reg_3874 <= grp_fu_2850_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31))) begin
        reg_3881 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32))) begin
        reg_3888 <= grp_fu_2842_p_dout0;
        reg_3909 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32))) begin
        reg_3895 <= grp_fu_2846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32))) begin
        reg_3902 <= grp_fu_2850_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33))) begin
        reg_3916 <= grp_fu_2850_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33))) begin
        reg_3922 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33))) begin
        reg_3928 <= grp_fu_2858_p_dout0;
        reg_3933 <= grp_fu_2862_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state41))) begin
        reg_3938 <= grp_fu_2842_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state41))) begin
        reg_3944 <= grp_fu_2846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state42))) begin
        reg_3950 <= grp_fu_2842_p_dout0;
        reg_3956 <= grp_fu_2846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state42))) begin
        reg_3962 <= grp_fu_2850_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state42))) begin
        reg_3968 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state43))) begin
        reg_3974 <= grp_fu_2842_p_dout0;
        reg_3980 <= grp_fu_2846_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state43))) begin
        reg_3986 <= grp_fu_2850_p_dout0;
        reg_3992 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state44))) begin
        reg_3998 <= grp_fu_2850_p_dout0;
        reg_4004 <= grp_fu_2854_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_0_load_119_reg_5200 <= weights3_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_0_load_122_reg_5225 <= weights3_0_q0;
        weights3_0_load_125_reg_5235 <= weights3_0_q1;
        weights3_1_load_123_reg_5230 <= weights3_1_q0;
        weights3_1_load_126_reg_5240 <= weights3_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_0_load_131_reg_5314 <= weights3_0_q1;
        weights3_1_load_132_reg_5319 <= weights3_1_q1;
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
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state88) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state88)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state78)) begin
        dactivations_0_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        dactivations_0_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state74)) begin
        dactivations_0_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state72)) begin
        dactivations_0_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        dactivations_0_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        dactivations_0_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        dactivations_0_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        dactivations_0_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        dactivations_0_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        dactivations_0_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations_0_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        dactivations_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        dactivations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        dactivations_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        dactivations_0_address0_local = 64'd0;
    end else begin
        dactivations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state79)) begin
        dactivations_0_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        dactivations_0_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        dactivations_0_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        dactivations_0_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        dactivations_0_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        dactivations_0_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        dactivations_0_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        dactivations_0_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        dactivations_0_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        dactivations_0_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        dactivations_0_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        dactivations_0_address1_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        dactivations_0_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        dactivations_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        dactivations_0_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations_0_address1_local = 64'd5;
    end else begin
        dactivations_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48))) begin
        dactivations_0_ce0_local = 1'b1;
    end else begin
        dactivations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57))) begin
        dactivations_0_ce1_local = 1'b1;
    end else begin
        dactivations_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state78)) begin
        dactivations_1_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        dactivations_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state74)) begin
        dactivations_1_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state72)) begin
        dactivations_1_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        dactivations_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        dactivations_1_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        dactivations_1_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        dactivations_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        dactivations_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        dactivations_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        dactivations_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        dactivations_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        dactivations_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        dactivations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        dactivations_1_address0_local = 64'd0;
    end else begin
        dactivations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state79)) begin
        dactivations_1_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        dactivations_1_address1_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        dactivations_1_address1_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        dactivations_1_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        dactivations_1_address1_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        dactivations_1_address1_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        dactivations_1_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        dactivations_1_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        dactivations_1_address1_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        dactivations_1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        dactivations_1_address1_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        dactivations_1_address1_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        dactivations_1_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        dactivations_1_address1_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        dactivations_1_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        dactivations_1_address1_local = 64'd1;
    end else begin
        dactivations_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48))) begin
        dactivations_1_ce0_local = 1'b1;
    end else begin
        dactivations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49))) begin
        dactivations_1_ce1_local = 1'b1;
    end else begin
        dactivations_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_3168_p0 = add11_60_1_reg_7353;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3168_p0 = add11_56_1_reg_7283;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3168_p0 = add11_52_1_reg_7223;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3168_p0 = add11_48_1_reg_7163;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3168_p0 = reg_3998;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3168_p0 = reg_3986;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_3168_p0 = reg_3962;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3168_p0 = reg_3902;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3168_p0 = reg_3874;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3168_p0 = reg_3846;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3168_p0 = reg_3818;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3168_p0 = reg_3788;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3168_p0 = reg_3759;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3168_p0 = reg_3729;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3168_p0 = add11_58_reg_6923;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3168_p0 = add11_54_reg_6863;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3168_p0 = add11_50_reg_6803;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3168_p0 = add11_46_reg_6748;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3168_p0 = add11_42_reg_6688;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3168_p0 = add11_38_reg_6633;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3168_p0 = add11_34_reg_6552;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state34))) begin
        grp_fu_3168_p0 = reg_3916;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3168_p0 = reg_3888;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3168_p0 = reg_3860;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3168_p0 = reg_3832;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3168_p0 = reg_3802;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3168_p0 = reg_3773;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3168_p0 = reg_3744;
    end else if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3168_p0 = reg_3717;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state26))) begin
        grp_fu_3168_p0 = reg_3674;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3168_p0 = reg_3641;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3168_p0 = reg_3616;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3168_p0 = reg_3591;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3168_p0 = reg_3567;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3168_p0 = reg_3543;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3168_p0 = reg_3519;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3168_p0 = reg_3493;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3168_p0 = reg_3478;
    end else begin
        grp_fu_3168_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_3168_p1 = reg_3634;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3168_p1 = reg_3655;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33))) begin
        grp_fu_3168_p1 = reg_3641;
    end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_3168_p1 = reg_3616;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31))) begin
        grp_fu_3168_p1 = reg_3591;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_3168_p1 = reg_3567;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        grp_fu_3168_p1 = reg_3543;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3168_p1 = reg_3519;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3168_p1 = reg_3493;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        grp_fu_3168_p1 = reg_3478;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3168_p1 = 64'd0;
    end else begin
        grp_fu_3168_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_3173_p0 = add11_61_1_reg_7358;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3173_p0 = add11_57_1_reg_7288;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3173_p0 = add11_53_1_reg_7228;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3173_p0 = add11_49_1_reg_7168;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3173_p0 = reg_4004;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3173_p0 = reg_3992;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_3173_p0 = reg_3968;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3173_p0 = reg_3909;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3173_p0 = reg_3881;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3173_p0 = reg_3853;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3173_p0 = reg_3825;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3173_p0 = reg_3795;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3173_p0 = reg_3773;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3173_p0 = reg_3744;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3173_p0 = add11_59_reg_6928;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3173_p0 = add11_55_reg_6868;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3173_p0 = add11_51_reg_6808;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3173_p0 = add11_47_reg_6753;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3173_p0 = add11_43_reg_6693;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3173_p0 = add11_39_reg_6638;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3173_p0 = add11_35_reg_6557;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state34))) begin
        grp_fu_3173_p0 = reg_3922;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3173_p0 = reg_3895;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3173_p0 = reg_3867;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3173_p0 = reg_3839;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3173_p0 = reg_3810;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3173_p0 = reg_3780;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3173_p0 = reg_3751;
    end else if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3173_p0 = reg_3723;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state26))) begin
        grp_fu_3173_p0 = reg_3680;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3173_p0 = reg_3648;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3173_p0 = reg_3622;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3173_p0 = reg_3597;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3173_p0 = reg_3573;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3173_p0 = reg_3549;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3173_p0 = reg_3525;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3173_p0 = reg_3499;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3173_p0 = reg_3486;
    end else begin
        grp_fu_3173_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_3173_p1 = reg_3699;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3173_p1 = reg_3609;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33))) begin
        grp_fu_3173_p1 = reg_3648;
    end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_3173_p1 = reg_3622;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31))) begin
        grp_fu_3173_p1 = reg_3597;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_3173_p1 = reg_3573;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        grp_fu_3173_p1 = reg_3549;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3173_p1 = reg_3525;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3173_p1 = reg_3499;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state26))) begin
        grp_fu_3173_p1 = reg_3486;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3173_p1 = 64'd0;
    end else begin
        grp_fu_3173_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_3178_p0 = add11_62_1_reg_7408;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3178_p0 = add11_58_1_reg_7333;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3178_p0 = add11_54_1_reg_7263;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3178_p0 = add11_50_1_reg_7203;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3178_p0 = add11_46_1_reg_7143;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3178_p0 = add11_42_1_reg_7093;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_3178_p0 = reg_3974;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3178_p0 = reg_3950;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3178_p0 = reg_3938;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3178_p0 = reg_3888;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3178_p0 = reg_3860;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3178_p0 = reg_3832;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3178_p0 = reg_3802;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3178_p0 = reg_3780;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3178_p0 = reg_3751;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3178_p0 = reg_3737;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3178_p0 = add11_60_reg_6933;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3178_p0 = add11_56_reg_6873;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3178_p0 = add11_52_reg_6813;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3178_p0 = add11_48_reg_6758;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3178_p0 = add11_44_reg_6698;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3178_p0 = add11_40_reg_6502;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3178_p0 = add11_36_reg_6562;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34))) begin
        grp_fu_3178_p0 = reg_3928;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3178_p0 = reg_3902;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3178_p0 = reg_3874;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3178_p0 = reg_3846;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3178_p0 = reg_3818;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3178_p0 = reg_3788;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3178_p0 = reg_3759;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3178_p0 = reg_3729;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3178_p0 = reg_3686;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3178_p0 = reg_3655;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3178_p0 = reg_3628;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3178_p0 = reg_3603;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3178_p0 = reg_3579;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3178_p0 = reg_3555;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3178_p0 = reg_3531;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3178_p0 = reg_3506;
    end else begin
        grp_fu_3178_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_3178_p1 = mul8_62_2_reg_7548;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3178_p1 = reg_3668;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34))) begin
        grp_fu_3178_p1 = reg_3686;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33))) begin
        grp_fu_3178_p1 = reg_3655;
    end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_3178_p1 = reg_3628;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31))) begin
        grp_fu_3178_p1 = reg_3603;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_3178_p1 = reg_3579;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        grp_fu_3178_p1 = reg_3555;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3178_p1 = reg_3531;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3178_p1 = reg_3506;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3178_p1 = 64'd0;
    end else begin
        grp_fu_3178_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_3183_p0 = add11_63_1_reg_7418;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3183_p0 = add11_59_1_reg_7343;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3183_p0 = add11_55_1_reg_7273;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3183_p0 = add11_51_1_reg_7213;
    end else if ((1'b1 == ap_CS_fsm_state54)) begin
        grp_fu_3183_p0 = add11_47_1_reg_7153;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3183_p0 = add11_43_1_reg_7103;
    end else if ((1'b1 == ap_CS_fsm_state52)) begin
        grp_fu_3183_p0 = reg_3980;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3183_p0 = reg_3956;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3183_p0 = reg_3944;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3183_p0 = reg_3895;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3183_p0 = reg_3867;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3183_p0 = reg_3839;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3183_p0 = reg_3810;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3183_p0 = add11_61_reg_6938;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3183_p0 = add11_57_reg_6878;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3183_p0 = add11_53_reg_6818;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3183_p0 = add11_49_reg_6763;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3183_p0 = add11_45_reg_6703;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3183_p0 = add11_41_reg_6643;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3183_p0 = add11_37_reg_6567;
    end else if (((1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34))) begin
        grp_fu_3183_p0 = reg_3933;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3183_p0 = reg_3909;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3183_p0 = reg_3881;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3183_p0 = reg_3853;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3183_p0 = reg_3825;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3183_p0 = reg_3795;
    end else if (((1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3183_p0 = reg_3767;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3183_p0 = reg_3737;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3183_p0 = reg_3693;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3183_p0 = reg_3662;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3183_p0 = reg_3634;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3183_p0 = reg_3609;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3183_p0 = reg_3585;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3183_p0 = reg_3561;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3183_p0 = reg_3537;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3183_p0 = reg_3513;
    end else begin
        grp_fu_3183_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state58)) begin
        grp_fu_3183_p1 = reg_3711;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        grp_fu_3183_p1 = reg_3705;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state34))) begin
        grp_fu_3183_p1 = reg_3693;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state33))) begin
        grp_fu_3183_p1 = reg_3662;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state32))) begin
        grp_fu_3183_p1 = reg_3634;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state31))) begin
        grp_fu_3183_p1 = reg_3609;
    end else if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state30))) begin
        grp_fu_3183_p1 = reg_3585;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state29))) begin
        grp_fu_3183_p1 = reg_3561;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state28))) begin
        grp_fu_3183_p1 = reg_3537;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state27))) begin
        grp_fu_3183_p1 = reg_3513;
    end else if (((1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3183_p1 = 64'd0;
    end else begin
        grp_fu_3183_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3188_p0 = mul8_62_reg_6202;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3188_p0 = mul8_58_reg_6187;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3188_p0 = mul8_54_reg_6167;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3188_p0 = mul8_50_reg_6147;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3188_p0 = mul8_46_reg_6127;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3188_p0 = mul8_42_reg_6107;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3188_p0 = mul8_38_reg_6087;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3188_p0 = reg_3711;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3188_p0 = reg_3699;
    end else begin
        grp_fu_3188_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3193_p0 = mul8_63_reg_6207;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3193_p0 = mul8_59_reg_6192;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3193_p0 = mul8_55_reg_6172;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3193_p0 = mul8_51_reg_6152;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3193_p0 = mul8_47_reg_6132;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3193_p0 = mul8_43_reg_6112;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3193_p0 = mul8_39_reg_6092;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3193_p0 = mul8_35_reg_6072;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3193_p0 = reg_3705;
    end else begin
        grp_fu_3193_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3198_p0 = reg_3668;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3198_p0 = mul8_56_reg_6177;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3198_p0 = mul8_52_reg_6157;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3198_p0 = mul8_48_reg_6137;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3198_p0 = mul8_44_reg_6117;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3198_p0 = mul8_41_reg_6102;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3198_p0 = mul8_36_reg_6077;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3198_p0 = mul8_40_reg_6097;
    end else begin
        grp_fu_3198_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3203_p0 = mul8_61_reg_6197;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3203_p0 = mul8_57_reg_6182;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3203_p0 = mul8_53_reg_6162;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3203_p0 = mul8_49_reg_6142;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3203_p0 = mul8_45_reg_6122;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3203_p0 = mul8_37_reg_6082;
    end else begin
        grp_fu_3203_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state80)) begin
        grp_fu_3208_p0 = reg_3974;
    end else if ((1'b1 == ap_CS_fsm_state79)) begin
        grp_fu_3208_p0 = reg_3998;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        grp_fu_3208_p0 = reg_3950;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        grp_fu_3208_p0 = reg_3986;
    end else if ((1'b1 == ap_CS_fsm_state74)) begin
        grp_fu_3208_p0 = reg_3938;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_3208_p0 = reg_3759;
    end else if ((1'b1 == ap_CS_fsm_state72)) begin
        grp_fu_3208_p0 = reg_3802;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        grp_fu_3208_p0 = reg_3962;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        grp_fu_3208_p0 = reg_3729;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3208_p0 = reg_3888;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        grp_fu_3208_p0 = reg_3916;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_3208_p0 = reg_3902;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_3208_p0 = reg_3874;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_3208_p0 = reg_3846;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        grp_fu_3208_p0 = reg_3860;
    end else if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state59))) begin
        grp_fu_3208_p0 = reg_3818;
    end else if (((1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state58))) begin
        grp_fu_3208_p0 = reg_3832;
    end else if (((1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state57))) begin
        grp_fu_3208_p0 = reg_3788;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3208_p0 = reg_3810;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3208_p0 = reg_3780;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state70))) begin
        grp_fu_3208_p0 = reg_3773;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3208_p0 = reg_3751;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state66))) begin
        grp_fu_3208_p0 = reg_3744;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state64))) begin
        grp_fu_3208_p0 = reg_3717;
    end else if (((1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state50))) begin
        grp_fu_3208_p0 = reg_3674;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3208_p0 = bitcast_ln85_158_fu_4990_p1;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3208_p0 = bitcast_ln85_146_fu_4970_p1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3208_p0 = bitcast_ln85_134_fu_4950_p1;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3208_p0 = bitcast_ln85_122_fu_4930_p1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3208_p0 = bitcast_ln85_110_fu_4910_p1;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3208_p0 = bitcast_ln85_98_fu_4890_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3208_p0 = bitcast_ln85_86_fu_4870_p1;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        grp_fu_3208_p0 = bitcast_ln85_74_fu_4850_p1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3208_p0 = bitcast_ln85_62_fu_4830_p1;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3208_p0 = bitcast_ln85_50_fu_4810_p1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3208_p0 = bitcast_ln85_38_fu_4790_p1;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3208_p0 = bitcast_ln85_26_fu_4775_p1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3208_p0 = bitcast_ln85_14_fu_4755_p1;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3208_p0 = bitcast_ln85_8_fu_4740_p1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3208_p0 = bitcast_ln85_2_fu_4720_p1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3208_p0 = bitcast_ln85_175_fu_4700_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3208_p0 = bitcast_ln85_163_fu_4680_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3208_p0 = bitcast_ln85_151_fu_4660_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3208_p0 = bitcast_ln85_139_fu_4640_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3208_p0 = bitcast_ln85_127_fu_4620_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3208_p0 = bitcast_ln85_115_fu_4600_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3208_p0 = bitcast_ln85_103_fu_4580_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3208_p0 = bitcast_ln85_91_fu_4560_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3208_p0 = bitcast_ln85_79_fu_4540_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3208_p0 = bitcast_ln85_67_fu_4520_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3208_p0 = bitcast_ln85_55_fu_4500_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3208_p0 = bitcast_ln85_43_fu_4480_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3208_p0 = bitcast_ln85_31_fu_4460_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3208_p0 = bitcast_ln85_19_fu_4440_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3208_p0 = bitcast_ln85_7_fu_4420_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3208_p0 = bitcast_ln85_1_fu_4251_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3208_p0 = bitcast_ln85_78_fu_4227_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3208_p0 = bitcast_ln85_66_fu_4207_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3208_p0 = bitcast_ln85_54_fu_4187_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3208_p0 = bitcast_ln85_42_fu_4167_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3208_p0 = bitcast_ln85_30_fu_4147_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3208_p0 = bitcast_ln85_18_fu_4127_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3208_p0 = bitcast_ln85_6_fu_4107_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3208_p0 = bitcast_ln85_fu_4097_p1;
    end else begin
        grp_fu_3208_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state63))) begin
        grp_fu_3208_p1 = reg_4083;
    end else if ((1'b1 == ap_CS_fsm_state56)) begin
        grp_fu_3208_p1 = reg_4090;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state62))) begin
        grp_fu_3208_p1 = reg_4071;
    end else if (((1'b1 == ap_CS_fsm_state54) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state61))) begin
        grp_fu_3208_p1 = reg_4065;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state60))) begin
        grp_fu_3208_p1 = reg_4053;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state59))) begin
        grp_fu_3208_p1 = reg_4041;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state58))) begin
        grp_fu_3208_p1 = reg_4022;
    end else if (((1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state50))) begin
        grp_fu_3208_p1 = reg_4010;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35))) begin
        grp_fu_3208_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3208_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3208_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3208_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state80)) begin
        grp_fu_3213_p0 = reg_3980;
    end else if ((1'b1 == ap_CS_fsm_state79)) begin
        grp_fu_3213_p0 = reg_4004;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        grp_fu_3213_p0 = reg_3956;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        grp_fu_3213_p0 = reg_3992;
    end else if ((1'b1 == ap_CS_fsm_state74)) begin
        grp_fu_3213_p0 = reg_3810;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        grp_fu_3213_p0 = reg_3968;
    end else if ((1'b1 == ap_CS_fsm_state72)) begin
        grp_fu_3213_p0 = reg_3780;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        grp_fu_3213_p0 = reg_3922;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        grp_fu_3213_p0 = reg_3944;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        grp_fu_3213_p0 = reg_3909;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        grp_fu_3213_p0 = reg_3751;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        grp_fu_3213_p0 = reg_3895;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        grp_fu_3213_p0 = reg_3881;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        grp_fu_3213_p0 = reg_3853;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        grp_fu_3213_p0 = reg_3825;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        grp_fu_3213_p0 = reg_3867;
    end else if (((1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state59))) begin
        grp_fu_3213_p0 = reg_3795;
    end else if (((1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state58))) begin
        grp_fu_3213_p0 = reg_3839;
    end else if (((1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state57))) begin
        grp_fu_3213_p0 = reg_3767;
    end else if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3213_p0 = reg_3759;
    end else if ((1'b1 == ap_CS_fsm_state53)) begin
        grp_fu_3213_p0 = reg_3729;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state67))) begin
        grp_fu_3213_p0 = reg_3737;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state64))) begin
        grp_fu_3213_p0 = reg_3723;
    end else if (((1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state50))) begin
        grp_fu_3213_p0 = reg_3680;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3213_p0 = bitcast_ln85_161_fu_4995_p1;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3213_p0 = bitcast_ln85_149_fu_4975_p1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3213_p0 = bitcast_ln85_137_fu_4955_p1;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3213_p0 = bitcast_ln85_125_fu_4935_p1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3213_p0 = bitcast_ln85_113_fu_4915_p1;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3213_p0 = bitcast_ln85_101_fu_4895_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3213_p0 = bitcast_ln85_89_fu_4875_p1;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        grp_fu_3213_p0 = bitcast_ln85_77_fu_4855_p1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3213_p0 = bitcast_ln85_65_fu_4835_p1;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3213_p0 = bitcast_ln85_53_fu_4815_p1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3213_p0 = bitcast_ln85_41_fu_4795_p1;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3213_p0 = bitcast_ln85_32_fu_4780_p1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3213_p0 = bitcast_ln85_20_fu_4760_p1;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3213_p0 = bitcast_ln85_11_fu_4745_p1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3213_p0 = bitcast_ln85_5_fu_4725_p1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3213_p0 = bitcast_ln85_178_fu_4705_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3213_p0 = bitcast_ln85_166_fu_4685_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3213_p0 = bitcast_ln85_154_fu_4665_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3213_p0 = bitcast_ln85_142_fu_4645_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3213_p0 = bitcast_ln85_130_fu_4625_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3213_p0 = bitcast_ln85_118_fu_4605_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3213_p0 = bitcast_ln85_106_fu_4585_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3213_p0 = bitcast_ln85_94_fu_4565_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3213_p0 = bitcast_ln85_82_fu_4545_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3213_p0 = bitcast_ln85_70_fu_4525_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3213_p0 = bitcast_ln85_58_fu_4505_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3213_p0 = bitcast_ln85_46_fu_4485_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3213_p0 = bitcast_ln85_34_fu_4465_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3213_p0 = bitcast_ln85_22_fu_4445_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3213_p0 = bitcast_ln85_10_fu_4425_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3213_p0 = bitcast_ln85_4_fu_4256_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3213_p0 = bitcast_ln85_81_fu_4232_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3213_p0 = bitcast_ln85_69_fu_4212_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3213_p0 = bitcast_ln85_57_fu_4192_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3213_p0 = bitcast_ln85_45_fu_4172_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3213_p0 = bitcast_ln85_33_fu_4152_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3213_p0 = bitcast_ln85_21_fu_4132_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3213_p0 = bitcast_ln85_9_fu_4112_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_3213_p0 = bitcast_ln85_3_fu_4102_p1;
    end else begin
        grp_fu_3213_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state63))) begin
        grp_fu_3213_p1 = reg_4090;
    end else if (((1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state59))) begin
        grp_fu_3213_p1 = reg_4034;
    end else if (((1'b1 == ap_CS_fsm_state55) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state62))) begin
        grp_fu_3213_p1 = reg_4077;
    end else if (((1'b1 == ap_CS_fsm_state53) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state61))) begin
        grp_fu_3213_p1 = reg_4059;
    end else if (((1'b1 == ap_CS_fsm_state52) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state60))) begin
        grp_fu_3213_p1 = reg_4047;
    end else if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state58))) begin
        grp_fu_3213_p1 = reg_4028;
    end else if (((1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state50))) begin
        grp_fu_3213_p1 = reg_4016;
    end else if (((1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35))) begin
        grp_fu_3213_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3213_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        grp_fu_3213_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3213_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3218_p0 = reg_3802;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3218_p0 = add11_5_2_reg_7433;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3218_p0 = bitcast_ln85_170_fu_5010_p1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3218_p0 = bitcast_ln85_164_fu_5000_p1;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3218_p0 = bitcast_ln85_152_fu_4980_p1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3218_p0 = bitcast_ln85_140_fu_4960_p1;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3218_p0 = bitcast_ln85_128_fu_4940_p1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3218_p0 = bitcast_ln85_116_fu_4920_p1;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3218_p0 = bitcast_ln85_104_fu_4900_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3218_p0 = bitcast_ln85_92_fu_4880_p1;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        grp_fu_3218_p0 = bitcast_ln85_80_fu_4860_p1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3218_p0 = bitcast_ln85_68_fu_4840_p1;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3218_p0 = bitcast_ln85_56_fu_4820_p1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3218_p0 = bitcast_ln85_44_fu_4800_p1;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        grp_fu_3218_p0 = bitcast_ln85_35_fu_4785_p1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3218_p0 = bitcast_ln85_23_fu_4765_p1;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        grp_fu_3218_p0 = bitcast_ln85_17_fu_4750_p1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3218_p0 = bitcast_ln85_187_fu_4730_p1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3218_p0 = bitcast_ln85_181_fu_4710_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3218_p0 = bitcast_ln85_169_fu_4690_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3218_p0 = bitcast_ln85_157_fu_4670_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3218_p0 = bitcast_ln85_145_fu_4650_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3218_p0 = bitcast_ln85_133_fu_4630_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3218_p0 = bitcast_ln85_121_fu_4610_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3218_p0 = bitcast_ln85_109_fu_4590_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3218_p0 = bitcast_ln85_97_fu_4570_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3218_p0 = bitcast_ln85_85_fu_4550_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3218_p0 = bitcast_ln85_73_fu_4530_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3218_p0 = bitcast_ln85_61_fu_4510_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3218_p0 = bitcast_ln85_49_fu_4490_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3218_p0 = bitcast_ln85_37_fu_4470_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3218_p0 = bitcast_ln85_25_fu_4450_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3218_p0 = bitcast_ln85_13_fu_4430_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3218_p0 = bitcast_ln85_90_fu_4261_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3218_p0 = bitcast_ln85_84_fu_4237_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3218_p0 = bitcast_ln85_72_fu_4217_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3218_p0 = bitcast_ln85_60_fu_4197_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3218_p0 = bitcast_ln85_48_fu_4177_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3218_p0 = bitcast_ln85_36_fu_4157_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3218_p0 = bitcast_ln85_24_fu_4137_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3218_p0 = bitcast_ln85_12_fu_4117_p1;
    end else begin
        grp_fu_3218_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state55)) begin
        grp_fu_3218_p1 = reg_4083;
    end else if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3218_p1 = reg_4034;
    end else if (((1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36))) begin
        grp_fu_3218_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3218_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3218_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3218_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3222_p0 = bitcast_ln85_182_fu_5030_p1;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3222_p0 = bitcast_ln85_173_fu_5015_p1;
    end else if ((1'b1 == ap_CS_fsm_state49)) begin
        grp_fu_3222_p0 = bitcast_ln85_167_fu_5005_p1;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        grp_fu_3222_p0 = bitcast_ln85_155_fu_4985_p1;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        grp_fu_3222_p0 = bitcast_ln85_143_fu_4965_p1;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        grp_fu_3222_p0 = bitcast_ln85_131_fu_4945_p1;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        grp_fu_3222_p0 = bitcast_ln85_119_fu_4925_p1;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        grp_fu_3222_p0 = bitcast_ln85_107_fu_4905_p1;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        grp_fu_3222_p0 = bitcast_ln85_95_fu_4885_p1;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        grp_fu_3222_p0 = bitcast_ln85_83_fu_4865_p1;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        grp_fu_3222_p0 = bitcast_ln85_71_fu_4845_p1;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        grp_fu_3222_p0 = bitcast_ln85_59_fu_4825_p1;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        grp_fu_3222_p0 = bitcast_ln85_47_fu_4805_p1;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        grp_fu_3222_p0 = bitcast_ln85_29_fu_4770_p1;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        grp_fu_3222_p0 = bitcast_ln85_190_fu_4735_p1;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        grp_fu_3222_p0 = bitcast_ln85_184_fu_4715_p1;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        grp_fu_3222_p0 = bitcast_ln85_172_fu_4695_p1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3222_p0 = bitcast_ln85_160_fu_4675_p1;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        grp_fu_3222_p0 = bitcast_ln85_148_fu_4655_p1;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3222_p0 = bitcast_ln85_136_fu_4635_p1;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        grp_fu_3222_p0 = bitcast_ln85_124_fu_4615_p1;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        grp_fu_3222_p0 = bitcast_ln85_112_fu_4595_p1;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_3222_p0 = bitcast_ln85_100_fu_4575_p1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3222_p0 = bitcast_ln85_88_fu_4555_p1;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_3222_p0 = bitcast_ln85_76_fu_4535_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_3222_p0 = bitcast_ln85_64_fu_4515_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_3222_p0 = bitcast_ln85_52_fu_4495_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_3222_p0 = bitcast_ln85_40_fu_4475_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3222_p0 = bitcast_ln85_28_fu_4455_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        grp_fu_3222_p0 = bitcast_ln85_16_fu_4435_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3222_p0 = bitcast_ln85_93_fu_4265_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3222_p0 = bitcast_ln85_87_fu_4241_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3222_p0 = bitcast_ln85_75_fu_4222_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_3222_p0 = bitcast_ln85_63_fu_4202_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        grp_fu_3222_p0 = bitcast_ln85_51_fu_4182_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_3222_p0 = bitcast_ln85_39_fu_4162_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_3222_p0 = bitcast_ln85_27_fu_4142_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_3222_p0 = bitcast_ln85_15_fu_4122_p1;
    end else begin
        grp_fu_3222_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state37))) begin
        grp_fu_3222_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20))) begin
        grp_fu_3222_p1 = output_differences_0_1_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3222_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3222_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3226_p0 = bitcast_ln85_185_fu_5035_p1;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3226_p0 = bitcast_ln85_176_fu_5020_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3226_p0 = bitcast_ln85_96_fu_4269_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3226_p0 = bitcast_ln85_180_fu_4246_p1;
    end else begin
        grp_fu_3226_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50))) begin
        grp_fu_3226_p1 = output_differences_0_2_val;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19))) begin
        grp_fu_3226_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3226_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3232_p0 = bitcast_ln85_188_fu_5040_p1;
    end else if ((1'b1 == ap_CS_fsm_state50)) begin
        grp_fu_3232_p0 = bitcast_ln85_179_fu_5025_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3232_p0 = bitcast_ln85_99_fu_4273_p1;
    end else begin
        grp_fu_3232_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state51) | (1'b1 == ap_CS_fsm_state50))) begin
        grp_fu_3232_p1 = output_differences_0_2_val;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3232_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3232_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3236_p0 = bitcast_ln85_191_fu_5045_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3236_p0 = bitcast_ln85_102_fu_4277_p1;
    end else begin
        grp_fu_3236_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state51)) begin
        grp_fu_3236_p1 = output_differences_0_2_val;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_3236_p1 = output_differences_0_0_val;
    end else begin
        grp_fu_3236_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state88)) begin
        oracle_activations_0_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state87)) begin
        oracle_activations_0_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state86)) begin
        oracle_activations_0_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state85)) begin
        oracle_activations_0_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state84)) begin
        oracle_activations_0_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state83)) begin
        oracle_activations_0_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state82)) begin
        oracle_activations_0_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state81)) begin
        oracle_activations_0_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state80)) begin
        oracle_activations_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state79)) begin
        oracle_activations_0_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state78)) begin
        oracle_activations_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        oracle_activations_0_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        oracle_activations_0_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        oracle_activations_0_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state74)) begin
        oracle_activations_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        oracle_activations_0_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state72)) begin
        oracle_activations_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        oracle_activations_0_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        oracle_activations_0_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        oracle_activations_0_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        oracle_activations_0_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        oracle_activations_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations_0_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        oracle_activations_0_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations_0_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        oracle_activations_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations_0_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        oracle_activations_0_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        oracle_activations_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations_0_address0_local = 64'd0;
    end else begin
        oracle_activations_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state88))) begin
        oracle_activations_0_ce0_local = 1'b1;
    end else begin
        oracle_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations_0_d0_local = reg_3506;
    end else if (((1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state88))) begin
        oracle_activations_0_d0_local = reg_3478;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations_0_d0_local = reg_3641;
    end else begin
        oracle_activations_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state88))) begin
        oracle_activations_0_we0_local = 1'b1;
    end else begin
        oracle_activations_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state88)) begin
        oracle_activations_1_address0_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state87)) begin
        oracle_activations_1_address0_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state86)) begin
        oracle_activations_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state85)) begin
        oracle_activations_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state84)) begin
        oracle_activations_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state83)) begin
        oracle_activations_1_address0_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state82)) begin
        oracle_activations_1_address0_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state81)) begin
        oracle_activations_1_address0_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state80)) begin
        oracle_activations_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state79)) begin
        oracle_activations_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state78)) begin
        oracle_activations_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state77)) begin
        oracle_activations_1_address0_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state76)) begin
        oracle_activations_1_address0_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state75)) begin
        oracle_activations_1_address0_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state74)) begin
        oracle_activations_1_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state73)) begin
        oracle_activations_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state72)) begin
        oracle_activations_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state71)) begin
        oracle_activations_1_address0_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state70)) begin
        oracle_activations_1_address0_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state69)) begin
        oracle_activations_1_address0_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state68)) begin
        oracle_activations_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state67)) begin
        oracle_activations_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state66)) begin
        oracle_activations_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state65)) begin
        oracle_activations_1_address0_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state64)) begin
        oracle_activations_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations_1_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state62)) begin
        oracle_activations_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state61)) begin
        oracle_activations_1_address0_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        oracle_activations_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state58)) begin
        oracle_activations_1_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations_1_address0_local = 64'd0;
    end else begin
        oracle_activations_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state88))) begin
        oracle_activations_1_ce0_local = 1'b1;
    end else begin
        oracle_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state63)) begin
        oracle_activations_1_d0_local = reg_3478;
    end else if ((1'b1 == ap_CS_fsm_state60)) begin
        oracle_activations_1_d0_local = reg_3499;
    end else if ((1'b1 == ap_CS_fsm_state59)) begin
        oracle_activations_1_d0_local = reg_3686;
    end else if (((1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state88))) begin
        oracle_activations_1_d0_local = reg_3486;
    end else if ((1'b1 == ap_CS_fsm_state57)) begin
        oracle_activations_1_d0_local = reg_3648;
    end else begin
        oracle_activations_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state87) | (1'b1 == ap_CS_fsm_state86) | (1'b1 == ap_CS_fsm_state85) | (1'b1 == ap_CS_fsm_state84) | (1'b1 == ap_CS_fsm_state83) | (1'b1 == ap_CS_fsm_state82) | (1'b1 == ap_CS_fsm_state81) | (1'b1 == ap_CS_fsm_state80) | (1'b1 == ap_CS_fsm_state79) | (1'b1 == ap_CS_fsm_state78) | (1'b1 == ap_CS_fsm_state77) | (1'b1 == ap_CS_fsm_state76) | (1'b1 == ap_CS_fsm_state75) | (1'b1 == ap_CS_fsm_state74) | (1'b1 == ap_CS_fsm_state73) | (1'b1 == ap_CS_fsm_state72) | (1'b1 == ap_CS_fsm_state71) | (1'b1 == ap_CS_fsm_state70) | (1'b1 == ap_CS_fsm_state69) | (1'b1 == ap_CS_fsm_state68) | (1'b1 == ap_CS_fsm_state67) | (1'b1 == ap_CS_fsm_state66) | (1'b1 == ap_CS_fsm_state65) | (1'b1 == ap_CS_fsm_state64) | (1'b1 == ap_CS_fsm_state63) | (1'b1 == ap_CS_fsm_state62) | (1'b1 == ap_CS_fsm_state61) | (1'b1 == ap_CS_fsm_state60) | (1'b1 == ap_CS_fsm_state59) | (1'b1 == ap_CS_fsm_state58) | (1'b1 == ap_CS_fsm_state57) | (1'b1 == ap_CS_fsm_state88))) begin
        oracle_activations_1_we0_local = 1'b1;
    end else begin
        oracle_activations_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_0_address0_local = 64'd94;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        weights3_0_address0_local = 64'd88;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        weights3_0_address0_local = 64'd82;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        weights3_0_address0_local = 64'd76;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_0_address0_local = 64'd70;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        weights3_0_address0_local = 64'd64;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        weights3_0_address0_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        weights3_0_address0_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_0_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        weights3_0_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_0_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        weights3_0_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        weights3_0_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        weights3_0_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights3_0_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        weights3_0_address0_local = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        weights3_0_address0_local = 64'd89;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        weights3_0_address0_local = 64'd83;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        weights3_0_address0_local = 64'd77;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_0_address0_local = 64'd71;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        weights3_0_address0_local = 64'd65;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        weights3_0_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        weights3_0_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        weights3_0_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_0_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_0_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_0_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_0_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_0_address0_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_0_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_0_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_0_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_0_address0_local = 64'd87;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_0_address0_local = 64'd81;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_0_address0_local = 64'd75;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_0_address0_local = 64'd69;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_0_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_0_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_0_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_0_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_0_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_0_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_0_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_0_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_0_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_0_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_0_address0_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_0_address0_local = 64'd0;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_0_address1_local = 64'd91;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        weights3_0_address1_local = 64'd85;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        weights3_0_address1_local = 64'd79;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        weights3_0_address1_local = 64'd73;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_0_address1_local = 64'd67;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        weights3_0_address1_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        weights3_0_address1_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        weights3_0_address1_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_0_address1_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        weights3_0_address1_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_0_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        weights3_0_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        weights3_0_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        weights3_0_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights3_0_address1_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        weights3_0_address1_local = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        weights3_0_address1_local = 64'd95;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        weights3_0_address1_local = 64'd92;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        weights3_0_address1_local = 64'd86;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        weights3_0_address1_local = 64'd80;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_0_address1_local = 64'd74;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        weights3_0_address1_local = 64'd68;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        weights3_0_address1_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        weights3_0_address1_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        weights3_0_address1_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_0_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_0_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_0_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_0_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_0_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_0_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_0_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_0_address1_local = 64'd93;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_0_address1_local = 64'd90;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_0_address1_local = 64'd84;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_0_address1_local = 64'd78;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_0_address1_local = 64'd72;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_0_address1_local = 64'd66;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_0_address1_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_0_address1_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_0_address1_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_0_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_0_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_0_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_0_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_0_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_0_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_0_address1_local = 64'd3;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28)| (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state10) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29)| (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state10))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_1_address0_local = 64'd95;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        weights3_1_address0_local = 64'd89;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        weights3_1_address0_local = 64'd83;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        weights3_1_address0_local = 64'd77;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_1_address0_local = 64'd71;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        weights3_1_address0_local = 64'd65;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        weights3_1_address0_local = 64'd59;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        weights3_1_address0_local = 64'd53;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_1_address0_local = 64'd47;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        weights3_1_address0_local = 64'd41;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_1_address0_local = 64'd35;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        weights3_1_address0_local = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        weights3_1_address0_local = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights3_1_address0_local = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        weights3_1_address0_local = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        weights3_1_address0_local = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        weights3_1_address0_local = 64'd87;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        weights3_1_address0_local = 64'd81;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        weights3_1_address0_local = 64'd75;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_1_address0_local = 64'd69;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        weights3_1_address0_local = 64'd63;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        weights3_1_address0_local = 64'd57;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        weights3_1_address0_local = 64'd51;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        weights3_1_address0_local = 64'd45;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_1_address0_local = 64'd39;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_1_address0_local = 64'd33;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_1_address0_local = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_1_address0_local = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_1_address0_local = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_1_address0_local = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_1_address0_local = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_1_address0_local = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_1_address0_local = 64'd88;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_1_address0_local = 64'd82;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_1_address0_local = 64'd76;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_1_address0_local = 64'd70;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_1_address0_local = 64'd64;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_1_address0_local = 64'd58;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_1_address0_local = 64'd52;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_1_address0_local = 64'd46;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_1_address0_local = 64'd40;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_1_address0_local = 64'd34;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_1_address0_local = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_1_address0_local = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_1_address0_local = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_1_address0_local = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_1_address0_local = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        weights3_1_address0_local = 64'd1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state49)) begin
        weights3_1_address1_local = 64'd92;
    end else if ((1'b1 == ap_CS_fsm_state48)) begin
        weights3_1_address1_local = 64'd86;
    end else if ((1'b1 == ap_CS_fsm_state47)) begin
        weights3_1_address1_local = 64'd80;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        weights3_1_address1_local = 64'd74;
    end else if ((1'b1 == ap_CS_fsm_state45)) begin
        weights3_1_address1_local = 64'd68;
    end else if ((1'b1 == ap_CS_fsm_state44)) begin
        weights3_1_address1_local = 64'd62;
    end else if ((1'b1 == ap_CS_fsm_state43)) begin
        weights3_1_address1_local = 64'd56;
    end else if ((1'b1 == ap_CS_fsm_state42)) begin
        weights3_1_address1_local = 64'd50;
    end else if ((1'b1 == ap_CS_fsm_state41)) begin
        weights3_1_address1_local = 64'd44;
    end else if ((1'b1 == ap_CS_fsm_state40)) begin
        weights3_1_address1_local = 64'd38;
    end else if ((1'b1 == ap_CS_fsm_state39)) begin
        weights3_1_address1_local = 64'd32;
    end else if ((1'b1 == ap_CS_fsm_state38)) begin
        weights3_1_address1_local = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state37)) begin
        weights3_1_address1_local = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state36)) begin
        weights3_1_address1_local = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state35)) begin
        weights3_1_address1_local = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state34)) begin
        weights3_1_address1_local = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state33)) begin
        weights3_1_address1_local = 64'd93;
    end else if ((1'b1 == ap_CS_fsm_state32)) begin
        weights3_1_address1_local = 64'd90;
    end else if ((1'b1 == ap_CS_fsm_state31)) begin
        weights3_1_address1_local = 64'd84;
    end else if ((1'b1 == ap_CS_fsm_state30)) begin
        weights3_1_address1_local = 64'd78;
    end else if ((1'b1 == ap_CS_fsm_state29)) begin
        weights3_1_address1_local = 64'd72;
    end else if ((1'b1 == ap_CS_fsm_state28)) begin
        weights3_1_address1_local = 64'd66;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        weights3_1_address1_local = 64'd60;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        weights3_1_address1_local = 64'd54;
    end else if ((1'b1 == ap_CS_fsm_state25)) begin
        weights3_1_address1_local = 64'd48;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        weights3_1_address1_local = 64'd42;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        weights3_1_address1_local = 64'd36;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        weights3_1_address1_local = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        weights3_1_address1_local = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        weights3_1_address1_local = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        weights3_1_address1_local = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        weights3_1_address1_local = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        weights3_1_address1_local = 64'd94;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        weights3_1_address1_local = 64'd91;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        weights3_1_address1_local = 64'd85;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        weights3_1_address1_local = 64'd79;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        weights3_1_address1_local = 64'd73;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        weights3_1_address1_local = 64'd67;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        weights3_1_address1_local = 64'd61;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        weights3_1_address1_local = 64'd55;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        weights3_1_address1_local = 64'd49;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        weights3_1_address1_local = 64'd43;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        weights3_1_address1_local = 64'd37;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        weights3_1_address1_local = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        weights3_1_address1_local = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        weights3_1_address1_local = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        weights3_1_address1_local = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        weights3_1_address1_local = 64'd4;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state28)| (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state10) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state49) | (1'b1 == ap_CS_fsm_state48) | (1'b1 == ap_CS_fsm_state47) | (1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state45) | (1'b1 == ap_CS_fsm_state44) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state42) | (1'b1 == ap_CS_fsm_state41) | (1'b1 == ap_CS_fsm_state40) | (1'b1 == ap_CS_fsm_state39) | (1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state37) | (1'b1 == ap_CS_fsm_state36) | (1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state34) | (1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state32) | (1'b1 == ap_CS_fsm_state31) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state29)| (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state26) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state10))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
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
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign bitcast_ln85_100_fu_4575_p1 = reg_3364;
assign bitcast_ln85_101_fu_4895_p1 = reg_3359;
assign bitcast_ln85_102_fu_4277_p1 = reg_3354;
assign bitcast_ln85_103_fu_4580_p1 = reg_3359;
assign bitcast_ln85_104_fu_4900_p1 = reg_3364;
assign bitcast_ln85_105_fu_4282_p1 = reg_3359;
assign bitcast_ln85_106_fu_4585_p1 = reg_3354;
assign bitcast_ln85_107_fu_4905_p1 = reg_3369;
assign bitcast_ln85_108_fu_4287_p1 = weights3_0_load_131_reg_5314;
assign bitcast_ln85_109_fu_4590_p1 = reg_3369;
assign bitcast_ln85_10_fu_4425_p1 = reg_3354;
assign bitcast_ln85_110_fu_4910_p1 = reg_3354;
assign bitcast_ln85_111_fu_4291_p1 = weights3_1_load_132_reg_5319;
assign bitcast_ln85_112_fu_4595_p1 = reg_3364;
assign bitcast_ln85_113_fu_4915_p1 = reg_3359;
assign bitcast_ln85_114_fu_4295_p1 = reg_3364;
assign bitcast_ln85_115_fu_4600_p1 = reg_3359;
assign bitcast_ln85_116_fu_4920_p1 = reg_3364;
assign bitcast_ln85_117_fu_4300_p1 = reg_3369;
assign bitcast_ln85_118_fu_4605_p1 = reg_3354;
assign bitcast_ln85_119_fu_4925_p1 = reg_3369;
assign bitcast_ln85_11_fu_4745_p1 = reg_3359;
assign bitcast_ln85_120_fu_4305_p1 = reg_3374;
assign bitcast_ln85_121_fu_4610_p1 = reg_3369;
assign bitcast_ln85_122_fu_4930_p1 = reg_3354;
assign bitcast_ln85_123_fu_4310_p1 = reg_3379;
assign bitcast_ln85_124_fu_4615_p1 = reg_3364;
assign bitcast_ln85_125_fu_4935_p1 = reg_3359;
assign bitcast_ln85_126_fu_4315_p1 = reg_3384;
assign bitcast_ln85_127_fu_4620_p1 = reg_3359;
assign bitcast_ln85_128_fu_4940_p1 = reg_3364;
assign bitcast_ln85_129_fu_4320_p1 = reg_3388;
assign bitcast_ln85_12_fu_4117_p1 = reg_3374;
assign bitcast_ln85_130_fu_4625_p1 = reg_3354;
assign bitcast_ln85_131_fu_4945_p1 = reg_3369;
assign bitcast_ln85_132_fu_4325_p1 = reg_3392;
assign bitcast_ln85_133_fu_4630_p1 = reg_3369;
assign bitcast_ln85_134_fu_4950_p1 = reg_3354;
assign bitcast_ln85_135_fu_4330_p1 = reg_3396;
assign bitcast_ln85_136_fu_4635_p1 = reg_3364;
assign bitcast_ln85_137_fu_4955_p1 = reg_3359;
assign bitcast_ln85_138_fu_4335_p1 = reg_3400;
assign bitcast_ln85_139_fu_4640_p1 = reg_3359;
assign bitcast_ln85_13_fu_4430_p1 = reg_3369;
assign bitcast_ln85_140_fu_4960_p1 = reg_3364;
assign bitcast_ln85_141_fu_4340_p1 = reg_3404;
assign bitcast_ln85_142_fu_4645_p1 = reg_3354;
assign bitcast_ln85_143_fu_4965_p1 = reg_3369;
assign bitcast_ln85_144_fu_4345_p1 = reg_3408;
assign bitcast_ln85_145_fu_4650_p1 = reg_3369;
assign bitcast_ln85_146_fu_4970_p1 = reg_3354;
assign bitcast_ln85_147_fu_4350_p1 = reg_3412;
assign bitcast_ln85_148_fu_4655_p1 = reg_3364;
assign bitcast_ln85_149_fu_4975_p1 = reg_3359;
assign bitcast_ln85_14_fu_4755_p1 = reg_3354;
assign bitcast_ln85_150_fu_4355_p1 = reg_3416;
assign bitcast_ln85_151_fu_4660_p1 = reg_3359;
assign bitcast_ln85_152_fu_4980_p1 = reg_3364;
assign bitcast_ln85_153_fu_4360_p1 = reg_3420;
assign bitcast_ln85_154_fu_4665_p1 = reg_3354;
assign bitcast_ln85_155_fu_4985_p1 = reg_3369;
assign bitcast_ln85_156_fu_4365_p1 = reg_3424;
assign bitcast_ln85_157_fu_4670_p1 = reg_3369;
assign bitcast_ln85_158_fu_4990_p1 = reg_3354;
assign bitcast_ln85_159_fu_4370_p1 = reg_3428;
assign bitcast_ln85_15_fu_4122_p1 = reg_3379;
assign bitcast_ln85_160_fu_4675_p1 = reg_3364;
assign bitcast_ln85_161_fu_4995_p1 = reg_3359;
assign bitcast_ln85_162_fu_4375_p1 = reg_3432;
assign bitcast_ln85_163_fu_4680_p1 = reg_3359;
assign bitcast_ln85_164_fu_5000_p1 = reg_3364;
assign bitcast_ln85_165_fu_4380_p1 = reg_3436;
assign bitcast_ln85_166_fu_4685_p1 = reg_3354;
assign bitcast_ln85_167_fu_5005_p1 = reg_3369;
assign bitcast_ln85_168_fu_4385_p1 = reg_3440;
assign bitcast_ln85_169_fu_4690_p1 = reg_3369;
assign bitcast_ln85_16_fu_4435_p1 = reg_3364;
assign bitcast_ln85_170_fu_5010_p1 = reg_3354;
assign bitcast_ln85_171_fu_4390_p1 = reg_3444;
assign bitcast_ln85_172_fu_4695_p1 = reg_3364;
assign bitcast_ln85_173_fu_5015_p1 = reg_3359;
assign bitcast_ln85_174_fu_4395_p1 = reg_3448;
assign bitcast_ln85_175_fu_4700_p1 = reg_3359;
assign bitcast_ln85_176_fu_5020_p1 = reg_3364;
assign bitcast_ln85_178_fu_4705_p1 = reg_3354;
assign bitcast_ln85_179_fu_5025_p1 = reg_3369;
assign bitcast_ln85_17_fu_4750_p1 = reg_3369;
assign bitcast_ln85_180_fu_4246_p1 = reg_3456;
assign bitcast_ln85_181_fu_4710_p1 = reg_3369;
assign bitcast_ln85_182_fu_5030_p1 = reg_3354;
assign bitcast_ln85_184_fu_4715_p1 = reg_3364;
assign bitcast_ln85_185_fu_5035_p1 = reg_3359;
assign bitcast_ln85_187_fu_4730_p1 = reg_3369;
assign bitcast_ln85_188_fu_5040_p1 = reg_3364;
assign bitcast_ln85_18_fu_4127_p1 = reg_3384;
assign bitcast_ln85_190_fu_4735_p1 = reg_3364;
assign bitcast_ln85_191_fu_5045_p1 = reg_3369;
assign bitcast_ln85_19_fu_4440_p1 = reg_3359;
assign bitcast_ln85_1_fu_4251_p1 = reg_3470;
assign bitcast_ln85_20_fu_4760_p1 = reg_3364;
assign bitcast_ln85_21_fu_4132_p1 = reg_3388;
assign bitcast_ln85_22_fu_4445_p1 = reg_3354;
assign bitcast_ln85_23_fu_4765_p1 = reg_3359;
assign bitcast_ln85_24_fu_4137_p1 = reg_3392;
assign bitcast_ln85_25_fu_4450_p1 = reg_3369;
assign bitcast_ln85_26_fu_4775_p1 = reg_3354;
assign bitcast_ln85_27_fu_4142_p1 = reg_3396;
assign bitcast_ln85_28_fu_4455_p1 = reg_3364;
assign bitcast_ln85_29_fu_4770_p1 = reg_3369;
assign bitcast_ln85_2_fu_4720_p1 = reg_3354;
assign bitcast_ln85_30_fu_4147_p1 = reg_3400;
assign bitcast_ln85_31_fu_4460_p1 = reg_3359;
assign bitcast_ln85_32_fu_4780_p1 = reg_3364;
assign bitcast_ln85_33_fu_4152_p1 = reg_3404;
assign bitcast_ln85_34_fu_4465_p1 = reg_3354;
assign bitcast_ln85_35_fu_4785_p1 = reg_3359;
assign bitcast_ln85_36_fu_4157_p1 = reg_3408;
assign bitcast_ln85_37_fu_4470_p1 = reg_3369;
assign bitcast_ln85_38_fu_4790_p1 = reg_3354;
assign bitcast_ln85_39_fu_4162_p1 = reg_3412;
assign bitcast_ln85_3_fu_4102_p1 = reg_3359;
assign bitcast_ln85_40_fu_4475_p1 = reg_3364;
assign bitcast_ln85_41_fu_4795_p1 = reg_3359;
assign bitcast_ln85_42_fu_4167_p1 = reg_3416;
assign bitcast_ln85_43_fu_4480_p1 = reg_3359;
assign bitcast_ln85_44_fu_4800_p1 = reg_3364;
assign bitcast_ln85_45_fu_4172_p1 = reg_3420;
assign bitcast_ln85_46_fu_4485_p1 = reg_3354;
assign bitcast_ln85_47_fu_4805_p1 = reg_3369;
assign bitcast_ln85_48_fu_4177_p1 = reg_3424;
assign bitcast_ln85_49_fu_4490_p1 = reg_3369;
assign bitcast_ln85_4_fu_4256_p1 = reg_3456;
assign bitcast_ln85_50_fu_4810_p1 = reg_3354;
assign bitcast_ln85_51_fu_4182_p1 = reg_3428;
assign bitcast_ln85_52_fu_4495_p1 = reg_3364;
assign bitcast_ln85_53_fu_4815_p1 = reg_3359;
assign bitcast_ln85_54_fu_4187_p1 = reg_3432;
assign bitcast_ln85_55_fu_4500_p1 = reg_3359;
assign bitcast_ln85_56_fu_4820_p1 = reg_3364;
assign bitcast_ln85_57_fu_4192_p1 = reg_3436;
assign bitcast_ln85_58_fu_4505_p1 = reg_3354;
assign bitcast_ln85_59_fu_4825_p1 = reg_3369;
assign bitcast_ln85_5_fu_4725_p1 = reg_3359;
assign bitcast_ln85_60_fu_4197_p1 = reg_3440;
assign bitcast_ln85_61_fu_4510_p1 = reg_3369;
assign bitcast_ln85_62_fu_4830_p1 = reg_3354;
assign bitcast_ln85_63_fu_4202_p1 = reg_3444;
assign bitcast_ln85_64_fu_4515_p1 = reg_3364;
assign bitcast_ln85_65_fu_4835_p1 = reg_3359;
assign bitcast_ln85_66_fu_4207_p1 = reg_3448;
assign bitcast_ln85_67_fu_4520_p1 = reg_3359;
assign bitcast_ln85_68_fu_4840_p1 = reg_3364;
assign bitcast_ln85_69_fu_4212_p1 = reg_3452;
assign bitcast_ln85_6_fu_4107_p1 = reg_3364;
assign bitcast_ln85_70_fu_4525_p1 = reg_3354;
assign bitcast_ln85_71_fu_4845_p1 = reg_3369;
assign bitcast_ln85_72_fu_4217_p1 = reg_3456;
assign bitcast_ln85_73_fu_4530_p1 = reg_3369;
assign bitcast_ln85_74_fu_4850_p1 = reg_3354;
assign bitcast_ln85_75_fu_4222_p1 = reg_3461;
assign bitcast_ln85_76_fu_4535_p1 = reg_3364;
assign bitcast_ln85_77_fu_4855_p1 = reg_3359;
assign bitcast_ln85_78_fu_4227_p1 = reg_3465;
assign bitcast_ln85_79_fu_4540_p1 = reg_3359;
assign bitcast_ln85_7_fu_4420_p1 = reg_3359;
assign bitcast_ln85_80_fu_4860_p1 = reg_3364;
assign bitcast_ln85_81_fu_4232_p1 = reg_3470;
assign bitcast_ln85_82_fu_4545_p1 = reg_3354;
assign bitcast_ln85_83_fu_4865_p1 = reg_3369;
assign bitcast_ln85_84_fu_4237_p1 = weights3_0_load_119_reg_5200;
assign bitcast_ln85_85_fu_4550_p1 = reg_3369;
assign bitcast_ln85_86_fu_4870_p1 = reg_3354;
assign bitcast_ln85_87_fu_4241_p1 = reg_3474;
assign bitcast_ln85_88_fu_4555_p1 = reg_3364;
assign bitcast_ln85_89_fu_4875_p1 = reg_3359;
assign bitcast_ln85_8_fu_4740_p1 = reg_3354;
assign bitcast_ln85_90_fu_4261_p1 = weights3_0_load_122_reg_5225;
assign bitcast_ln85_91_fu_4560_p1 = reg_3359;
assign bitcast_ln85_92_fu_4880_p1 = reg_3364;
assign bitcast_ln85_93_fu_4265_p1 = weights3_1_load_123_reg_5230;
assign bitcast_ln85_94_fu_4565_p1 = reg_3354;
assign bitcast_ln85_95_fu_4885_p1 = reg_3369;
assign bitcast_ln85_96_fu_4269_p1 = weights3_0_load_125_reg_5235;
assign bitcast_ln85_97_fu_4570_p1 = reg_3369;
assign bitcast_ln85_98_fu_4890_p1 = reg_3354;
assign bitcast_ln85_99_fu_4273_p1 = weights3_1_load_126_reg_5240;
assign bitcast_ln85_9_fu_4112_p1 = reg_3369;
assign bitcast_ln85_fu_4097_p1 = reg_3354;
assign dactivations_0_address0 = dactivations_0_address0_local;
assign dactivations_0_address1 = dactivations_0_address1_local;
assign dactivations_0_ce0 = dactivations_0_ce0_local;
assign dactivations_0_ce1 = dactivations_0_ce1_local;
assign dactivations_1_address0 = dactivations_1_address0_local;
assign dactivations_1_address1 = dactivations_1_address1_local;
assign dactivations_1_ce0 = dactivations_1_ce0_local;
assign dactivations_1_ce1 = dactivations_1_ce1_local;
assign grp_fu_2842_p_ce = 1'b1;
assign grp_fu_2842_p_din0 = grp_fu_3168_p0;
assign grp_fu_2842_p_din1 = grp_fu_3168_p1;
assign grp_fu_2842_p_opcode = 2'd0;
assign grp_fu_2846_p_ce = 1'b1;
assign grp_fu_2846_p_din0 = grp_fu_3173_p0;
assign grp_fu_2846_p_din1 = grp_fu_3173_p1;
assign grp_fu_2846_p_opcode = 2'd0;
assign grp_fu_2850_p_ce = 1'b1;
assign grp_fu_2850_p_din0 = grp_fu_3178_p0;
assign grp_fu_2850_p_din1 = grp_fu_3178_p1;
assign grp_fu_2850_p_opcode = 2'd0;
assign grp_fu_2854_p_ce = 1'b1;
assign grp_fu_2854_p_din0 = grp_fu_3183_p0;
assign grp_fu_2854_p_din1 = grp_fu_3183_p1;
assign grp_fu_2854_p_opcode = 2'd0;
assign grp_fu_2858_p_ce = 1'b1;
assign grp_fu_2858_p_din0 = grp_fu_3188_p0;
assign grp_fu_2858_p_din1 = 64'd0;
assign grp_fu_2858_p_opcode = 2'd0;
assign grp_fu_2862_p_ce = 1'b1;
assign grp_fu_2862_p_din0 = grp_fu_3193_p0;
assign grp_fu_2862_p_din1 = 64'd0;
assign grp_fu_2862_p_opcode = 2'd0;
assign grp_fu_2866_p_ce = 1'b1;
assign grp_fu_2866_p_din0 = grp_fu_3198_p0;
assign grp_fu_2866_p_din1 = 64'd0;
assign grp_fu_2866_p_opcode = 2'd0;
assign grp_fu_2870_p_ce = 1'b1;
assign grp_fu_2870_p_din0 = grp_fu_3203_p0;
assign grp_fu_2870_p_din1 = 64'd0;
assign grp_fu_2870_p_opcode = 2'd0;
assign grp_fu_2890_p_ce = 1'b1;
assign grp_fu_2890_p_din0 = grp_fu_3208_p0;
assign grp_fu_2890_p_din1 = grp_fu_3208_p1;
assign grp_fu_2894_p_ce = 1'b1;
assign grp_fu_2894_p_din0 = grp_fu_3213_p0;
assign grp_fu_2894_p_din1 = grp_fu_3213_p1;
assign grp_fu_2898_p_ce = 1'b1;
assign grp_fu_2898_p_din0 = grp_fu_3218_p0;
assign grp_fu_2898_p_din1 = grp_fu_3218_p1;
assign grp_fu_2902_p_ce = 1'b1;
assign grp_fu_2902_p_din0 = grp_fu_3222_p0;
assign grp_fu_2902_p_din1 = grp_fu_3222_p1;
assign grp_fu_2906_p_ce = 1'b1;
assign grp_fu_2906_p_din0 = grp_fu_3226_p0;
assign grp_fu_2906_p_din1 = grp_fu_3226_p1;
assign grp_fu_2910_p_ce = 1'b1;
assign grp_fu_2910_p_din0 = grp_fu_3232_p0;
assign grp_fu_2910_p_din1 = grp_fu_3232_p1;
assign grp_fu_2914_p_ce = 1'b1;
assign grp_fu_2914_p_din0 = grp_fu_3236_p0;
assign grp_fu_2914_p_din1 = grp_fu_3236_p1;
assign grp_fu_2918_p_ce = 1'b1;
assign grp_fu_2918_p_din0 = bitcast_ln85_105_fu_4282_p1;
assign grp_fu_2918_p_din1 = output_differences_0_0_val;
assign grp_fu_2922_p_ce = 1'b1;
assign grp_fu_2922_p_din0 = bitcast_ln85_108_fu_4287_p1;
assign grp_fu_2922_p_din1 = output_differences_0_0_val;
assign grp_fu_2926_p_ce = 1'b1;
assign grp_fu_2926_p_din0 = bitcast_ln85_111_fu_4291_p1;
assign grp_fu_2926_p_din1 = output_differences_0_0_val;
assign grp_fu_2930_p_ce = 1'b1;
assign grp_fu_2930_p_din0 = bitcast_ln85_114_fu_4295_p1;
assign grp_fu_2930_p_din1 = output_differences_0_0_val;
assign grp_fu_2934_p_ce = 1'b1;
assign grp_fu_2934_p_din0 = bitcast_ln85_117_fu_4300_p1;
assign grp_fu_2934_p_din1 = output_differences_0_0_val;
assign grp_fu_2938_p_ce = 1'b1;
assign grp_fu_2938_p_din0 = bitcast_ln85_120_fu_4305_p1;
assign grp_fu_2938_p_din1 = output_differences_0_0_val;
assign grp_fu_2942_p_ce = 1'b1;
assign grp_fu_2942_p_din0 = bitcast_ln85_123_fu_4310_p1;
assign grp_fu_2942_p_din1 = output_differences_0_0_val;
assign grp_fu_2946_p_ce = 1'b1;
assign grp_fu_2946_p_din0 = bitcast_ln85_126_fu_4315_p1;
assign grp_fu_2946_p_din1 = output_differences_0_0_val;
assign grp_fu_2950_p_ce = 1'b1;
assign grp_fu_2950_p_din0 = bitcast_ln85_129_fu_4320_p1;
assign grp_fu_2950_p_din1 = output_differences_0_0_val;
assign grp_fu_2954_p_ce = 1'b1;
assign grp_fu_2954_p_din0 = bitcast_ln85_132_fu_4325_p1;
assign grp_fu_2954_p_din1 = output_differences_0_0_val;
assign grp_fu_2958_p_ce = 1'b1;
assign grp_fu_2958_p_din0 = bitcast_ln85_135_fu_4330_p1;
assign grp_fu_2958_p_din1 = output_differences_0_0_val;
assign grp_fu_2962_p_ce = 1'b1;
assign grp_fu_2962_p_din0 = bitcast_ln85_138_fu_4335_p1;
assign grp_fu_2962_p_din1 = output_differences_0_0_val;
assign grp_fu_2966_p_ce = 1'b1;
assign grp_fu_2966_p_din0 = bitcast_ln85_141_fu_4340_p1;
assign grp_fu_2966_p_din1 = output_differences_0_0_val;
assign grp_fu_2970_p_ce = 1'b1;
assign grp_fu_2970_p_din0 = bitcast_ln85_144_fu_4345_p1;
assign grp_fu_2970_p_din1 = output_differences_0_0_val;
assign grp_fu_2974_p_ce = 1'b1;
assign grp_fu_2974_p_din0 = bitcast_ln85_147_fu_4350_p1;
assign grp_fu_2974_p_din1 = output_differences_0_0_val;
assign grp_fu_2978_p_ce = 1'b1;
assign grp_fu_2978_p_din0 = bitcast_ln85_150_fu_4355_p1;
assign grp_fu_2978_p_din1 = output_differences_0_0_val;
assign grp_fu_2982_p_ce = 1'b1;
assign grp_fu_2982_p_din0 = bitcast_ln85_153_fu_4360_p1;
assign grp_fu_2982_p_din1 = output_differences_0_0_val;
assign grp_fu_2986_p_ce = 1'b1;
assign grp_fu_2986_p_din0 = bitcast_ln85_156_fu_4365_p1;
assign grp_fu_2986_p_din1 = output_differences_0_0_val;
assign grp_fu_2990_p_ce = 1'b1;
assign grp_fu_2990_p_din0 = bitcast_ln85_159_fu_4370_p1;
assign grp_fu_2990_p_din1 = output_differences_0_0_val;
assign grp_fu_2994_p_ce = 1'b1;
assign grp_fu_2994_p_din0 = bitcast_ln85_162_fu_4375_p1;
assign grp_fu_2994_p_din1 = output_differences_0_0_val;
assign grp_fu_2998_p_ce = 1'b1;
assign grp_fu_2998_p_din0 = bitcast_ln85_165_fu_4380_p1;
assign grp_fu_2998_p_din1 = output_differences_0_0_val;
assign grp_fu_3002_p_ce = 1'b1;
assign grp_fu_3002_p_din0 = bitcast_ln85_168_fu_4385_p1;
assign grp_fu_3002_p_din1 = output_differences_0_0_val;
assign grp_fu_3006_p_ce = 1'b1;
assign grp_fu_3006_p_din0 = bitcast_ln85_171_fu_4390_p1;
assign grp_fu_3006_p_din1 = output_differences_0_0_val;
assign grp_fu_3010_p_ce = 1'b1;
assign grp_fu_3010_p_din0 = bitcast_ln85_174_fu_4395_p1;
assign grp_fu_3010_p_din1 = output_differences_0_0_val;
assign grp_fu_3336_p0 = reg_3452;
assign grp_fu_3340_p0 = reg_3461;
assign grp_fu_3344_p0 = reg_3465;
assign grp_fu_3348_p0 = reg_3474;
assign oracle_activations_0_address0 = oracle_activations_0_address0_local;
assign oracle_activations_0_ce0 = oracle_activations_0_ce0_local;
assign oracle_activations_0_d0 = oracle_activations_0_d0_local;
assign oracle_activations_0_we0 = oracle_activations_0_we0_local;
assign oracle_activations_1_address0 = oracle_activations_1_address0_local;
assign oracle_activations_1_ce0 = oracle_activations_1_ce0_local;
assign oracle_activations_1_d0 = oracle_activations_1_d0_local;
assign oracle_activations_1_we0 = oracle_activations_1_we0_local;
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
endmodule 